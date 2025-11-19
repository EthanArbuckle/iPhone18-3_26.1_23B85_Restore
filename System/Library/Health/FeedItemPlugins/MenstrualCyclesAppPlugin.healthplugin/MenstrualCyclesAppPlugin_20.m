uint64_t sub_29E0A46A0()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v45 - v5;
  v7 = sub_29E2C33A4();
  IsEventUsed = AnalyticsIsEventUsed();

  if ((IsEventUsed & 1) != 0 || (v9 = [objc_opt_self() hkmc_menstrualCyclesDefaults], v10 = objc_msgSend(v9, sel_hkmc_analyticsDebugModeEnabled), v9, v10)) && (sub_29E2BDEA4(), sub_29E2BDE94(), v11 = sub_29E2BDE84(), , (v11))
  {
    v12 = sub_29E2C33A4();
    v13 = sub_29E2C3864();
    v14 = MEMORY[0x29EDCA198];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v14;
    sub_29E00868C(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    sub_29DE9408C(0, &qword_2A1A619F0);
    v16 = sub_29E2C31F4();

    AnalyticsSendEvent();

    sub_29E2C04B4();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136446466;
      v45 = &type metadata for OpenFactorsMetric;
      sub_29E0A65CC();
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, &v46);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = sub_29E2C3474();
      v26 = sub_29DFAA104(v24, v25, &v46);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Submitted metric: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return 1;
  }

  else
  {
    sub_29E2C04B4();
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446722;
      v45 = &type metadata for OpenFactorsMetric;
      sub_29E0A65CC();
      v32 = sub_29E2C3424();
      v34 = sub_29DFAA104(v32, v33, &v46);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_29E2C33A4();
      LOBYTE(v34) = AnalyticsIsEventUsed();

      v36 = 1702195828;
      v37 = 0xE400000000000000;
      if ((v34 & 1) == 0)
      {
        v38 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
        v39 = [v38 hkmc_analyticsDebugModeEnabled];

        if (v39)
        {
          v36 = 1702195828;
        }

        else
        {
          v36 = 0x65736C6166;
        }

        if (v39)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v37 = 0xE500000000000000;
        }
      }

      v40 = sub_29DFAA104(v36, v37, &v46);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2082;
      sub_29E2BDEA4();
      sub_29E2BDE94();
      v41 = sub_29E2BDE84();

      if (v41)
      {
        v42 = 1702195828;
      }

      else
      {
        v42 = 0x65736C6166;
      }

      if (v41)
      {
        v43 = 0xE400000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v44 = sub_29DFAA104(v42, v43, &v46);

      *(v30 + 24) = v44;
      _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Skipping submitting metric. isEnabled: %{public}s, isAllowed: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t sub_29E0A4C38()
{
  v1 = sub_29E2BF504();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_2A1A612C0;
  if (*(v0 + qword_2A1A612C0))
  {
    v6 = *(v0 + qword_2A1A612C0);
  }

  else
  {
    v7 = v0;
    sub_29E2BF7A4();
    sub_29E2BF4D4();
    (*(v2 + 8))(v4, v1);
    sub_29DE966D4(v12, v12[3]);
    v8 = sub_29E2BF484();
    sub_29DE93B3C(v12);
    type metadata accessor for MenstrualCyclesOnboardingPresentationHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 32) = v8;
    *(v6 + 40) = 0;
    *(v6 + 48) = 2560;
    sub_29E2BE084();
    swift_allocObject();
    v9 = v8;
    *(v6 + 24) = sub_29E2BE064();
    *(v7 + v5) = v6;
  }

  return v6;
}

void *sub_29E0A4DCC()
{
  v1 = v0;
  v2 = sub_29E2BF504();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0A66C4(0, &qword_2A1818EC8, type metadata accessor for MenstrualCyclesOnboardingUserData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - v7;
  v9 = qword_2A1A612C8;
  v10 = *(v0 + qword_2A1A612C8);
  v11 = v10;
  if (v10 == 1)
  {
    sub_29E2BF7A4();
    v12 = type metadata accessor for MenstrualCyclesOnboardingUserData();
    sub_29E0A6728(&qword_2A1818ED8, type metadata accessor for MenstrualCyclesOnboardingUserData);
    sub_29E0A6728(&qword_2A1A61398, type metadata accessor for MenstrualCyclesOnboardingUserData);
    sub_29E2BF4F4();
    (*(v3 + 8))(v5, v2);
    if ((*(*(v12 - 8) + 48))(v8, 1, v12) == 1)
    {
      sub_29E0A6770(v8, &qword_2A1818EC8, type metadata accessor for MenstrualCyclesOnboardingUserData);
      v11 = 0;
    }

    else
    {
      sub_29DF298C4();
      v11 = sub_29E2C2E94();
      sub_29DF2992C(v8);
    }

    v13 = *(v1 + v9);
    *(v1 + v9) = v11;
    v14 = v11;
    sub_29DEA6E70(v13);
  }

  sub_29DEA6E80(v10);
  return v11;
}

uint64_t sub_29E0A5060()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E2C2B34();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B54();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C0514();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v42 - v13;
  v47 = v0;
  v15 = *(sub_29E0A4C38() + 48);

  if (v15)
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446210;
      v20 = sub_29E2C4AE4();
      v22 = sub_29DFAA104(v20, v21, aBlock);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Ignoring onboarding button tap while presentation is in progress", v18, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    return (*(v48 + 8))(v11, v49);
  }

  else
  {
    v44 = v8;
    v45 = v6;
    sub_29E2C04B4();
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v1;
      v28 = v27;
      aBlock[0] = v27;
      *v26 = 136446210;
      v29 = sub_29E2C4AE4();
      v31 = v4;
      v32 = v5;
      v33 = v2;
      v34 = sub_29DFAA104(v29, v30, aBlock);

      *(v26 + 4) = v34;
      v2 = v33;
      v5 = v32;
      v4 = v31;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Onboarding button tapped", v26, 0xCu);
      sub_29DE93B3C(v28);
      v35 = v28;
      v1 = v43;
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    (*(v48 + 8))(v14, v49);
    sub_29DE9408C(0, &qword_2A1A626C0);
    v36 = sub_29E2C3CF4();
    v37 = swift_allocObject();
    v38 = v47;
    *(v37 + 16) = v47;
    aBlock[4] = sub_29E0A66A4;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF49BB8;
    aBlock[3] = &unk_2A24B9DC8;
    v39 = _Block_copy(aBlock);
    v40 = v38;

    v41 = v44;
    sub_29E2C2B44();
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29E0A6728(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
    sub_29E0A66C4(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29DF4B408();
    sub_29E2C43F4();
    MEMORY[0x29ED804D0](0, v41, v4, v39);
    _Block_release(v39);

    (*(v2 + 8))(v4, v1);
    return (*(v45 + 8))(v41, v5);
  }
}

id sub_29E0A55F8()
{
  v12[5] = *MEMORY[0x29EDCA608];
  v0 = sub_29E2BF504();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  (*(v1 + 8))(v3, v0);
  sub_29DE966D4(v12, v12[3]);
  v4 = sub_29E2BF484();
  sub_29DE93B3C(v12);
  v12[0] = 0;
  v5 = [v4 biologicalSexWithError_];

  if (v5)
  {
    v6 = v12[0];
    v7 = [v5 biologicalSex];
  }

  else
  {
    v8 = v12[0];
    v9 = sub_29E2BC7E4();

    swift_willThrow();
    return 0;
  }

  return v7;
}

uint64_t sub_29E0A57A0(uint64_t a1)
{
  v2 = sub_29E2BF504();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17 - v7;
  v9 = sub_29E0A4C38();
  v18 = sub_29E0A4DCC();
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  v10 = *(v3 + 8);
  v10(v8, v2);
  sub_29DE966D4(v22, v22[3]);
  sub_29E2BF4A4();
  v11 = v20;
  v12 = v21;
  v13 = sub_29DE966D4(v19, v20);
  sub_29E2BF7A4();
  v14 = sub_29E2BF4E4();
  v10(v5, v2);
  v15 = v18;
  sub_29DF4D268(v18, v13, v14, a1, &off_2A24B9D68, v9, v11, v12);

  sub_29DE93B3C(v19);
  return sub_29DE93B3C(v22);
}

uint64_t sub_29E0A5970(uint64_t a1)
{
  v3 = sub_29E2BF504();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  *&v7[qword_2A1A612C0] = 0;
  *&v7[qword_2A1A612C8] = 1;
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_29E2BF7B4();
  (*(v4 + 8))(a1, v3);
  return v8;
}

void sub_29E0A5A8C()
{

  v1 = *(v0 + qword_2A1A612C8);

  sub_29DEA6E70(v1);
}

id sub_29E0A5ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E0A5B04(uint64_t a1)
{

  v2 = *(a1 + qword_2A1A612C8);

  sub_29DEA6E70(v2);
}

uint64_t sub_29E0A5B68()
{
  v0 = *(sub_29E0A4C38() + 49);

  return v0;
}

uint64_t sub_29E0A5B94(char a1)
{
  *(sub_29E0A4C38() + 49) = a1;
}

uint64_t sub_29E0A5BCC()
{
  v0 = sub_29E2BF504();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  (*(v1 + 8))(v3, v0);
  sub_29DE966D4(v7, v7[3]);
  v4 = sub_29E2BF484();
  sub_29DE93B3C(v7);
  return v4;
}

uint64_t sub_29E0A5D5C()
{
  sub_29E0A66C4(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v42 = &v36 - v2;
  v43 = sub_29E2BC4D4();
  v41 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BC904();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v38 = &v36 - v7;
  v8 = sub_29E2BE2A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BF504();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v36 - v17;
  v44 = v0;
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  v19 = *(v13 + 8);
  v19(v18, v12);
  sub_29DE966D4(v47, v47[3]);
  sub_29E2BF494();
  v20 = (*(v9 + 88))(v11, v8);
  if (v20 != *MEMORY[0x29EDC1D20])
  {
    if (v20 != *MEMORY[0x29EDC1D18] && v20 != *MEMORY[0x29EDC1D68] && v20 != *MEMORY[0x29EDC1D80])
    {
      if (v20 == *MEMORY[0x29EDC1D60])
      {
        sub_29E2BF7A4();
        v34 = sub_29E2BF4E4();
        v19(v15, v12);
        [v34 dismissViewControllerAnimated:1 completion:0];
      }

      else if (v20 != *MEMORY[0x29EDC1D50] && v20 != *MEMORY[0x29EDC1D30] && v20 != *MEMORY[0x29EDC1D70] && v20 != *MEMORY[0x29EDC1D40] && v20 != *MEMORY[0x29EDC1D28] && v20 != *MEMORY[0x29EDC1D78] && v20 != *MEMORY[0x29EDC1D48] && v20 != *MEMORY[0x29EDC1D38] && v20 != *MEMORY[0x29EDC1D88] && v20 != *MEMORY[0x29EDC1D58])
      {
        (*(v9 + 8))(v11, v8);
      }
    }

    goto LABEL_6;
  }

  v21 = [objc_opt_self() sharedApplication];
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v22 = [qword_2A1A67F80 bundleURL];
  v23 = v36;
  sub_29E2BC8D4();

  sub_29E2BC8B4();
  v25 = v39;
  v24 = v40;
  v26 = *(v39 + 8);
  v26(v23, v40);
  v27 = v37;
  sub_29E2BDF94();

  sub_29DF24A0C(4);
  MEMORY[0x29ED78C70](47, 0xE100000000000000);
  sub_29DF25054(2);
  sub_29DF2544C(0, 1);
  v28 = v42;
  sub_29E2BC474();
  if ((*(v25 + 48))(v28, 1, v24) != 1)
  {
    (*(v41 + 8))(v27, v43);
    v29 = v38;
    (*(v25 + 32))(v38, v28, v24);
    v30 = sub_29E2BC8C4();
    v26(v29, v24);
    sub_29E18628C(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E0A6728(&qword_2A18177A8, type metadata accessor for OpenExternalURLOptionsKey);
    v31 = sub_29E2C31F4();

    [v21 openURL:v30 options:v31 completionHandler:0];

LABEL_6:
    sub_29DE93B3C(v47);
    v32 = sub_29E0A55F8();
    return sub_29E0A307C(0x902u, v32);
  }

  sub_29E0A6770(v28, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_29E2C4584();

  v45 = 0xD00000000000001ALL;
  v46 = 0x800000029E2F6EE0;
  sub_29E0A6728(&qword_2A181A6F0, MEMORY[0x29EDB9940]);
  v35 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v35);

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

unint64_t sub_29E0A6584()
{
  result = qword_2A181BD88;
  if (!qword_2A181BD88)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BD88);
  }

  return result;
}

unint64_t sub_29E0A65CC()
{
  result = qword_2A181BD90;
  if (!qword_2A181BD90)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BD90);
  }

  return result;
}

unint64_t sub_29E0A6614()
{
  result = qword_2A181BD98;
  if (!qword_2A181BD98)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BD98);
  }

  return result;
}

unint64_t sub_29E0A665C()
{
  result = qword_2A181BDA0;
  if (!qword_2A181BDA0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BDA0);
  }

  return result;
}

uint64_t sub_29E0A66AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E0A66C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E0A6728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0A6770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E0A66C4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E0A67E0()
{
  result = qword_2A181BDA8;
  if (!qword_2A181BDA8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BDA8);
  }

  return result;
}

uint64_t type metadata accessor for MenstrualCyclesRoomViewController()
{
  result = qword_2A181BE10;
  if (!qword_2A181BE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0A6874()
{
  result = sub_29E2BF344();
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id sub_29E0A699C()
{
  sub_29E2C3F44();
  v0 = sub_29E2C33A4();

  return v0;
}

uint64_t sub_29E0A69E8()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_2A181BDE8;
  if (*(v0 + qword_2A181BDE8))
  {
    v6 = *(v0 + qword_2A181BDE8);
  }

  else
  {
    v7 = *(v0 + qword_2A181BDB0);
    v8 = v0;
    v9 = sub_29E2BF314();
    v10 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
    type metadata accessor for DeviationsConfirmationFlowCoordinator();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 32) = 0;
    *(v6 + 40) = -1;
    *(v6 + 72) = 0;
    sub_29DF80C94(0, &qword_2A1817C80, &type metadata for CalendarChanges, MEMORY[0x29EDC9C68]);
    memset(v16, 0, sizeof(v16));
    sub_29E2C11D4();
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors) = MEMORY[0x29EDCA190];
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager) = 0;
    v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation;
    v12 = sub_29E2BE2A4();
    (*(*(v12 - 8) + 56))(v6 + v11, 1, 1, v12);
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = 0;
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_openedPDFInConfirmedResult) = 0;
    *(v6 + 48) = v9;
    *(v6 + 56) = v7;
    *(v6 + 64) = v10;
    (*(v2 + 104))(v4, *MEMORY[0x29EDB9C78], v1);
    v13 = v7;
    sub_29E2BCCA4();
    (*(v2 + 8))(v4, v1);
    swift_unknownObjectWeakAssign();
    v14 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];

    *(v6 + 24) = v14;
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v8 + v5) = v6;
  }

  return v6;
}

id sub_29E0A6CC8()
{
  v1 = qword_2A181BDF0;
  v2 = *(v0 + qword_2A181BDF0);
  if (v2)
  {
    v3 = *(v0 + qword_2A181BDF0);
  }

  else
  {
    v4 = HKLogMenstrualCyclesCategory();
    v5 = v0;
    v6 = sub_29E2BF314();
    v7 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v4 healthDataSource:v6];

    v8 = *(v5 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_29E0A6D80(char *a1)
{
  v2 = v1;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C31A4();
  v4 = *(v3 - 8);
  v103 = v3;
  v104 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v96 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v102 = &v90 - v7;
  v8 = sub_29E2BF344();
  v98 = v8;
  v95 = *(v8 - 8);
  v9 = v95;
  MEMORY[0x2A1C7C4A8](v8);
  v105 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0AD360(0, &qword_2A181BF40, sub_29E0ABE94, MEMORY[0x29EDB8B00]);
  v93 = *(v11 - 1);
  v94 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v90 - v12;
  v14 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v15 = sub_29E2BCC94();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BCEA4();
  v20 = MEMORY[0x2A1C7C4A8](v19 - 8);
  *(v1 + qword_2A181BDE8) = 0;
  *(v1 + qword_2A1840F60) = 8;
  *(v1 + qword_2A181BDF0) = 0;
  v92 = qword_2A1840F68;
  (*(v16 + 104))(v18, *MEMORY[0x29EDB9C78], v15, v20);
  sub_29E2BCCA4();
  (*(v16 + 8))(v18, v15);
  sub_29E2BCBA4();
  sub_29E2C3144();
  *(v1 + qword_2A1840F70) = 0;
  *(v1 + qword_2A181BDF8) = 0;
  *(v1 + qword_2A181BE08) = 0;
  *(v1 + qword_2A1840F78) = 0;
  *(v1 + qword_2A1840F80) = 0;
  v21 = *(v9 + 16);
  v99 = v9 + 16;
  v100 = v21;
  v22 = v101;
  v21((v1 + qword_2A181BDE0), v101, v8);
  v23 = sub_29E2BF314();
  v24 = [objc_allocWithZone(MEMORY[0x29EDC3360]) initWithHealthStore_];

  v25 = qword_2A181BDB0;
  *(v2 + qword_2A181BDB0) = v24;
  v26 = sub_29E2BF314();
  v27 = [objc_allocWithZone(MEMORY[0x29EDC33D0]) &selRef:v26 setLeftBarButtonItem:?];

  v91 = qword_2A181BDB8;
  *(v2 + qword_2A181BDB8) = v27;
  v28 = v22;
  v29 = sub_29E2BF314();
  type metadata accessor for FeatureSettingsModel();
  swift_allocObject();
  v30 = sub_29E00460C(v29);
  v31 = qword_2A181BDC0;
  *(v2 + qword_2A181BDC0) = v30;
  v32 = sub_29E2BF314();
  type metadata accessor for DeviationsFeatureStatusModel();
  v33 = swift_allocObject();
  v34 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28DeviationsFeatureStatusModel__deviationDetectionEnabledByType;
  v106 = sub_29E1858FC(MEMORY[0x29EDCA190]);
  sub_29E0ABE94();
  sub_29E2C11D4();
  v93[4](v33 + v34, v13, v94);
  v35 = *MEMORY[0x29EDBA710];
  v36 = sub_29DF688CC(v35, v32);

  v37 = qword_2A181BDC8;
  *(v2 + qword_2A181BDC8) = v36;
  v38 = sub_29E2BF314();
  v39 = [objc_allocWithZone(MEMORY[0x29EDC33E0]) initWithHealthStore_];

  v40 = qword_2A181BDD0;
  *(v2 + qword_2A181BDD0) = v39;
  v41 = *(v2 + v31);
  v42 = *(v2 + v37);
  v43 = *(v2 + v25);

  v44 = v39;
  *(v2 + qword_2A181BDD8) = sub_29E0AC0F0(MEMORY[0x29EDCA190], v43, v41, v42, v44);
  v45 = v98;
  v100(v105, v28, v98);
  v46 = *(v2 + v25);
  v47 = *(v2 + v40);
  v48 = v92;
  v93 = *(v2 + v91);
  v49 = *(v2 + v31);
  v50 = *(v2 + v37);
  swift_beginAccess();
  v51 = *(v104 + 16);
  v91 = v104 + 16;
  v94 = v51;
  v51(v102, (v2 + v48), v103);
  type metadata accessor for MenstrualCyclesRoomDataSourceProvider();
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_pdfProvider) = 0;
  v53 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_calendarCache;
  v54 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
  v55 = v46;
  v56 = v47;
  v93 = v93;
  v57 = v49;

  v58 = v50;

  v59 = [v54 init];
  *(v52 + v53) = v59;
  v100((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_context), v105, v45);
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_analysisProvider) = v55;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_pregnancyModelProvider) = v56;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_featureSettings) = v57;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_deviationsFeatureStatus) = v58;
  v60 = v55;
  v61 = v56;
  v62 = v59;
  v63 = sub_29E2BF314();
  *(v52 + 16) = v63;
  v64 = v63;
  v65 = HKLogMenstrualCyclesCategory();
  v66 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v65 healthDataSource:v64];

  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_eventSubmissionManager) = v66;
  v67 = v61;
  v107.size.width = 500.0;
  v107.size.height = 800.0;
  v107.origin.x = 0.0;
  v107.origin.y = 0.0;
  Width = CGRectGetWidth(v107);
  v69 = v96;
  v71 = v102;
  v70 = v103;
  v94(v96, v102, v103);
  sub_29E0ACD44(v60, v67, v69, v62, Width);
  v73 = v72;

  (*(v104 + 8))(v71, v70);
  v74 = *(v95 + 8);
  v75 = v98;
  v74(v105, v98);
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_cycleLoggingDataProvider) = v73;
  *(v2 + qword_2A181BE00) = v52;

  sub_29E26DBCC();

  v76 = sub_29E2BF974();
  v77 = qword_2A181BDB8;
  v78 = *&v76[qword_2A181BDB8];
  sub_29DE9408C(0, &qword_2A1A626C0);
  v79 = v76;
  v80 = v78;
  v81 = sub_29E2C3CF4();
  [v80 addObserver:v79 queue:v81];

  v82 = [*&v76[v77] isAnyOnboardingVersionCompleted];
  v79[qword_2A1840F78] = v82;
  v83 = *&v79[qword_2A181BDD0];
  [v83 registerObserver:v79 isUserInitiated:1];

  sub_29E0AD360(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_29E2CD7A0;
  v85 = sub_29E2C08C4();
  v86 = MEMORY[0x29EDC7810];
  *(v84 + 32) = v85;
  *(v84 + 40) = v86;
  v87 = sub_29E2C0684();
  v88 = MEMORY[0x29EDC77B0];
  *(v84 + 48) = v87;
  *(v84 + 56) = v88;
  sub_29E2C3C64();

  swift_unknownObjectRelease();
  v74(v101, v75);
  return v79;
}

void sub_29E0A77F8(char a1)
{
  v2 = v1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v23 - v10;
  v12 = *&v1[qword_2A1840F80];
  v13 = v12;
  LOBYTE(v12) = sub_29E0A9EC0(v12);

  if (v12)
  {
    v23[0] = [v2 navigationItem];
    [v23[0] setRightBarButtonItem:0 animated:{0, v23[0]}];
LABEL_10:
    v22 = v23[0];

    return;
  }

  if (*(v2 + qword_2A1840F78) != 1)
  {
    v23[0] = [v2 navigationItem];
    [v23[0] setRightBarButtonItem:0 animated:{a1 & 1, v23[0]}];
    goto LABEL_10;
  }

  v14 = sub_29E2C33A4();
  v15 = [objc_opt_self() systemImageNamed_];

  v16 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithImage:v15 style:0 target:v2 action:sel_presentAddPeriodCalendar_];
  v17 = v16;
  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v6 + 8))(v11, v5);
  v19 = sub_29E2C33A4();

  [v17 setTitle_];

  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v23[1] = qword_2A1A67E58;
  v23[2] = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6F69726550646441, 0xE900000000000064);
  v20 = sub_29E2C33A4();

  [v17 setAccessibilityIdentifier_];

  v21 = [v2 navigationItem];
  [v21 setRightBarButtonItem:v17 animated:a1 & 1];
}

id sub_29E0A7C74()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for MenstrualCyclesRoomViewController();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v11 = [v0 navigationItem];
  [v11 setLargeTitleDisplayMode_];

  v12 = [v0 navigationItem];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v14 = sub_29E2C33A4();

  [v12 setTitle_];

  v15 = [*&v0[qword_2A181BDB8] isAnyOnboardingVersionCompleted];
  v0[qword_2A1840F78] = v15;
  v16 = [*&v0[qword_2A181BDD0] getCurrentPregnancyModel];
  v17 = *&v0[qword_2A1840F80];
  *&v0[qword_2A1840F80] = v16;

  sub_29E0A77F8(0);
  result = [v0 collectionView];
  if (result)
  {
    v19 = result;
    v20 = [objc_opt_self() secondarySystemBackgroundColor];
    [v19 setBackgroundColor_];

    [*&v0[qword_2A181BDB0] registerObserver_];
    LOBYTE(v20) = v0[qword_2A1840F60];
    type metadata accessor for RoomInteractionEvent();
    v21 = swift_allocObject();
    *(v21 + 16) = 0xD00000000000002ALL;
    *(v21 + 24) = 0x800000029E2EEF80;
    *(v21 + 32) = v20;
    *(v21 + 33) = 512;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    v22 = sub_29E0A6CC8();
    v23 = swift_allocObject();
    *(v23 + 16) = ObjectType;
    aBlock[4] = sub_29E0AD814;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24B9EE8;
    v24 = _Block_copy(aBlock);

    [v22 submitEvent:v21 completion:v24];
    _Block_release(v24);

    aBlock[0] = v0;
    v25 = *MEMORY[0x29EDC43C8];
    v26 = sub_29E2BF314();
    v27 = sub_29E0AD81C(&qword_2A181BFC0, type metadata accessor for MenstrualCyclesRoomViewController);
    MEMORY[0x29ED7C1F0](0x617254656C637943, 0xED0000676E696B63, v25, v26, v10, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0A819C(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29E0AD5F4(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_29E0A83CC(void *a1)
{
  v1 = a1;
  sub_29E0A7C74();
}

void sub_29E0A8414(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E2C0624();
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29E2BE2A4();
  v7 = MEMORY[0x2A1C7C4A8](v6);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1D60], v7);
  v10 = a1;
  sub_29E2C3C34();
  sub_29E2C0604();
  sub_29E2C3C44();
  v11 = type metadata accessor for MenstrualCyclesRoomViewController();
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

void sub_29E0A8590(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MenstrualCyclesRoomViewController();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
  sub_29E0A93FC();
  sub_29E0A94E0();
}

id sub_29E0A85FC()
{
  sub_29E2BF9A4();
  v1 = sub_29E2BF9B4();
  v1();
  sub_29E2BF964();
  v2 = sub_29E2BF0C4();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDC27C8];
    v8 = v2;
    while (v5 < *(v2 + 16))
    {
      v11 = *(v2 + 16 * v5 + 32);
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181BFC8);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_29DE8EE78(v9, v12);
        sub_29DE966D4(v12, v12[3]);
        result = [v0 collectionView];
        if (!result)
        {
          goto LABEL_14;
        }

        v7 = result;
        sub_29E2BF444();

        swift_unknownObjectRelease();
        result = sub_29DE93B3C(v12);
        v2 = v8;
        v6 = MEMORY[0x29EDC27C8];
      }

      else
      {
        swift_unknownObjectRelease();
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        result = sub_29E0ADAA4(v9, &unk_2A181BFD0, &qword_2A181BFC8, v6, sub_29E0AD5F4);
      }

      if (v4 == ++v5)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }

  return result;
}

id sub_29E0A8854()
{
  sub_29DF80C94(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E2CE220;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() keyCommandWithInput:v1 modifierFlags:0x100000 action:sel_presentAddPeriodCalendar_];

  *(v0 + 32) = v2;
  sub_29DE9408C(0, &qword_2A181BFB8);
  v3 = sub_29E2C3604();

  return v3;
}

void sub_29E0A8958(void *a1)
{
  v2 = sub_29E2BEDF4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v13 - v7;
  v9 = sub_29E2BCF24();
  v10 = [a1 cellForItemAtIndexPath_];

  if (v10)
  {
    sub_29E2BF964();
    sub_29E2BF134();
    sub_29E2BE764();

    sub_29DE9DC34(v19, v15);
    sub_29DF942BC(0, &qword_2A1819BD0);
    sub_29DF942BC(0, &qword_2A181BFA8);
    if (swift_dynamicCast())
    {
      sub_29DE8EE78(v13, v17);
      sub_29DE966D4(v17, v18);
      sub_29E2BEA84();
      sub_29DE966D4(v17, v18);
      sub_29E2BEA94();
      if ((*(v3 + 88))(v8, v2) != *MEMORY[0x29EDC22C0])
      {
        sub_29DE93B3C(v19);

        (*(v3 + 8))(v8, v2);
        goto LABEL_12;
      }

      (*(v3 + 96))(v8, v2);
      v11 = *v8;
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_29E0ADAA4(v13, &unk_2A181BFB0, &qword_2A181BFA8, MEMORY[0x29EDC21C0], sub_29E0AD5F4);
      *&v13[0] = v10;
      sub_29DE9408C(0, &unk_2A18199D0);
      v10 = v10;
      if ((swift_dynamicCast() & 1) == 0)
      {

        v16 = 0;
        memset(v15, 0, sizeof(v15));
        sub_29DE93B3C(v19);
        sub_29E0ADAA4(v15, &unk_2A181BFB0, &qword_2A181BFA8, MEMORY[0x29EDC21C0], sub_29E0AD5F4);
        return;
      }

      sub_29DE8EE78(v15, v17);
      sub_29DE966D4(v17, v18);
      sub_29E2BEA84();
      sub_29DE966D4(v17, v18);
      sub_29E2BEA94();
      if ((*(v3 + 88))(v5, v2) != *MEMORY[0x29EDC22C0])
      {
        sub_29DE93B3C(v19);

        (*(v3 + 8))(v5, v2);
        goto LABEL_12;
      }

      (*(v3 + 96))(v5, v2);
      v11 = *v5;
    }

    v12 = sub_29E2BCF24();
    [a1 deselectItemAtIndexPath:v12 animated:v11];

    sub_29DE93B3C(v19);
LABEL_12:
    sub_29DE93B3C(v17);
  }
}

uint64_t sub_29E0A8DB4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  sub_29E0A8958(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29E0A8EB0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_29E0A8FB4(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t sub_29E0A8FB4(void *a1)
{
  sub_29E2BF964();
  sub_29E2BF134();
  sub_29E2BE764();

  v2 = sub_29E2BCF24();
  v3 = [a1 cellForItemAtIndexPath_];

  sub_29DE8EE78(&v9, &v6);
  sub_29DF942BC(0, &qword_2A1819BD0);
  sub_29DF942BC(0, &qword_2A181BFA8);
  if (!swift_dynamicCast())
  {
    if (v3)
    {
      v5[0] = v3;
      sub_29DE9408C(0, &unk_2A18199D0);
      if (swift_dynamicCast())
      {
        v3 = *(&v7 + 1) != 0;
LABEL_8:
        sub_29E0ADAA4(&v6, &unk_2A181BFB0, &qword_2A181BFA8, MEMORY[0x29EDC21C0], sub_29E0AD5F4);
        return v3;
      }

      v3 = 0;
    }

    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_8;
  }

  sub_29DE93B3C(v5);
  return 1;
}

void sub_29E0A9158()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = &v16[-v9];
  v11 = [v0 userActivity];
  [v11 invalidate];

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E1A9EEC();
  v13 = sub_29E2BDF74();

  sub_29E2C3314();
  (*(v4 + 16))(v6, v10, v3);
  v14 = v12;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v10, v3);
  v15 = sub_29E2C33A4();

  [v13 setTitle_];

  [v13 setEligibleForSearch_];
  [v13 setEligibleForHandoff_];
  [v1 setUserActivity_];
}

void sub_29E0A93FC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](2003134806, 0xE400000000000000);
    v3 = sub_29E2C33A4();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0A94E0()
{
  swift_getObjectType();
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Reloading widget", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_29E2C31D4();
  sub_29E2C31C4();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C31B4();
}

void sub_29E0A972C()
{

  v1 = qword_2A181BDE0;
  v2 = sub_29E2BF344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_2A1840F68;
  v4 = sub_29E2C31A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + qword_2A1840F80);
}

id sub_29E0A98A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E0A98DC(uint64_t a1)
{

  v2 = qword_2A181BDE0;
  v3 = sub_29E2BF344();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_2A1840F68;
  v5 = sub_29E2C31A4();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = *(a1 + qword_2A1840F80);
}

void sub_29E0A9A60()
{
  v1 = v0;
  v2 = sub_29E2BF314();
  v3 = *&v0[qword_2A181BDB0];
  v4 = *&v1[qword_2A181BDD0];
  v5 = objc_allocWithZone(type metadata accessor for InternalSettingsTableViewController());
  v6 = v3;
  v7 = v4;
  v8 = sub_29E097D94(v2, v3, v4);

  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 showViewController:v9 sender:v1];
}

void sub_29E0A9B60(void *a1)
{
  v1 = a1;
  sub_29E0A9A60();
}

uint64_t sub_29E0A9BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D60];
  v3 = sub_29E2BE2A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29E0A9C1C(uint64_t a1)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[qword_2A1840F78] == 1)
  {
    v7 = *&v1[qword_2A1840F80];
    v8 = v7;
    LOBYTE(v7) = sub_29E0A9EC0(v7);

    if ((v7 & 1) == 0)
    {
      sub_29E2C04B4();
      sub_29DEA6E90(a1, v24);
      v9 = v1;
      v10 = sub_29E2C0504();
      v11 = sub_29E2C3A34();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 136446466;
        v22[0] = swift_getObjectType();
        sub_29E0AD7CC();
        v14 = sub_29E2C3424();
        v16 = sub_29DFAA104(v14, v15, &v23);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2082;
        sub_29DEA6E90(v24, v22);
        v17 = sub_29E2C3424();
        v19 = v18;
        sub_29DE93B3C(v24);
        v20 = sub_29DFAA104(v17, v19, &v23);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] presenting the add period calendar from %{public}s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v13, -1, -1);
        MEMORY[0x29ED82140](v12, -1, -1);
      }

      else
      {

        sub_29DE93B3C(v24);
      }

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_29E0A9EC0(void *a1)
{
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v30 - v12;
  if (!a1)
  {
    return 0;
  }

  v14 = v11;
  v15 = a1;
  if (![v15 state])
  {

    return 0;
  }

  if ([v15 state] == 1)
  {

    return 1;
  }

  v17 = [v15 pregnancyEndDate];
  if (!v17)
  {
    sub_29E2C04B4();
    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_29E2C4AE4();
      v29 = sub_29DFAA104(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%s] Model is missing an end date", v25, 0xCu);
      sub_29DE93B3C(v26);
      MEMORY[0x29ED82140](v26, -1, -1);
      MEMORY[0x29ED82140](v25, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v18 = v17;
  sub_29E2BCB44();

  result = [objc_opt_self() recentPregnancyEndThresholdInDays];
  if ((result * 86400) >> 64 == (86400 * result) >> 63)
  {
    v19 = (86400 * result);
    sub_29E2BCBA4();
    sub_29E2BCAA4();
    v21 = v20;

    v22 = *(v7 + 8);
    v22(v9, v14);
    v22(v13, v14);
    return v21 <= v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E0AA218(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&v3[qword_2A181BDB0];
  v9 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
  v10 = v8;
  v11 = [v9 init];
  v12 = *MEMORY[0x29EDC3280];
  v13 = objc_allocWithZone(type metadata accessor for CalendarViewController());
  v14 = v12;
  v15 = sub_29DF55F94(v10, v11, v14);

  v16 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v16 setModalPresentationStyle_];
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v15;
  v21[4] = sub_29E0AD4A0;
  v21[5] = v17;
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 1107296256;
  v21[2] = sub_29DF49BB8;
  v21[3] = &unk_2A24B9E48;
  v18 = _Block_copy(v21);
  sub_29DE8EE38(a2);
  v19 = v15;

  [v4 presentViewController:v16 animated:a1 & 1 completion:v18];
  _Block_release(v18);

  return v19;
}

uint64_t sub_29E0AA3DC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29E0A9C1C(v4);

  return sub_29DE93B3C(v4);
}

void sub_29E0AA440()
{
  v1 = v0;
  v43[1] = swift_getObjectType();
  v46 = sub_29E2C0514();
  v45 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v44 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v43[0] = v43 - v4;
  v48 = sub_29E2BE2A4();
  v5 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v47 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BF314();
  sub_29E2BF2F4();
  sub_29E2BF324();
  v8 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v9 = *&v0[qword_2A181BDD0];
  v10 = sub_29E2BD184();
  v11 = v9;
  v12 = sub_29E2BD174();
  v49[3] = v10;
  v49[4] = &off_2A24B5E20;
  v49[0] = v12;
  type metadata accessor for PregnancyOnboardingCoordinator();
  v13 = swift_allocObject();
  v14 = sub_29DEF61C0(v49, v10);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  sub_29E0AC3AC(v7, v54, v52, *v17, v8, 6u, 0, v50, v9, 0, 0, 4u, 0, 0, 0, 0, 0, 0, v13);

  sub_29DE93B3C(v49);
  v19 = sub_29E2BF314();
  sub_29E2BF2F4();
  v20 = v47;
  (*(v5 + 104))(v47, *MEMORY[0x29EDC1D80], v48);
  v21 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  type metadata accessor for PregnancyOffboardingCoordinator();
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  swift_allocObject();
  sub_29DFEA410(v19, v54, v20, v21, v52, v9, 0, 0, 0, 0, 0, 0);
  v22 = [v11 getCurrentPregnancyModel];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 state];
    if (v24 == 2)
    {
      goto LABEL_5;
    }

    if (v24 != 1)
    {
      if (v24)
      {
LABEL_11:

        return;
      }

LABEL_5:
      sub_29E27EFEC(v1, 1);
      goto LABEL_11;
    }

    v33 = [v23 sample];
    if (v33)
    {
      v34 = v33;
      sub_29DFE99B4(v1, v33, 1, v1, &off_2A24B9DF0);

      goto LABEL_11;
    }

    v35 = v43[0];
    sub_29E2C04B4();
    v36 = sub_29E2C0504();
    v37 = sub_29E2C3A14();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54[0] = v39;
      *v38 = 136315138;
      v40 = sub_29E2C4AE4();
      v42 = sub_29DFAA104(v40, v41, v54);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29DE74000, v36, v37, "[%s] State doesn't have a sample when it should", v38, 0xCu);
      sub_29DE93B3C(v39);
      MEMORY[0x29ED82140](v39, -1, -1);
      MEMORY[0x29ED82140](v38, -1, -1);
    }

    (*(v45 + 8))(v35, v46);
  }

  else
  {
    v25 = v44;
    sub_29E2C04B4();
    v26 = sub_29E2C0504();
    v27 = sub_29E2C3A34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54[0] = v29;
      *v28 = 136315138;
      v30 = sub_29E2C4AE4();
      v32 = sub_29DFAA104(v30, v31, v54);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29DE74000, v26, v27, "[%s] Could not get cached model", v28, 0xCu);
      sub_29DE93B3C(v29);
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v28, -1, -1);
    }

    (*(v45 + 8))(v25, v46);
    sub_29E27EFEC(v1, 1);
  }
}

uint64_t sub_29E0AAB20()
{
  v1[6] = v0;
  v1[7] = swift_getObjectType();
  v2 = sub_29E2C0514();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_29E2C3714();
  v1[11] = sub_29E2C3704();
  v4 = sub_29E2C36A4();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2A1C73D48](sub_29E0AAC20, v4, v3);
}

uint64_t sub_29E0AAC20()
{
  *(v0 + 112) = sub_29E0A69E8();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_29E0AACBC;

  return sub_29DEE2AE4();
}

uint64_t sub_29E0AACBC(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_29E0AAE68;
  }

  else
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_29E0AADD8;
  }

  return MEMORY[0x2A1C73D48](v6, v4, v5);
}

uint64_t sub_29E0AADD8()
{
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 128);
    [*(v0 + 48) showViewController:v2 sender:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E0AAE68()
{
  v23 = v0;
  v1 = *(v0 + 136);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 72);
    v21 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_29E2C4994();
    v15 = sub_29DFAA104(v13, v14, &v22);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Failed to load analysis when trying to present logging confirmation: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_29E0AB094(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C2B84();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v13 = sub_29E2C3CF4();
  (*(v11 + 104))(v13, *MEMORY[0x29EDCA278], v10);
  v14 = sub_29E2C2BA4();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    sub_29E2C04B4();
    v16 = v3;
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v6;
      v21 = v20;
      v35[0] = v20;
      *v19 = 136446210;
      v34[2] = swift_getObjectType();
      sub_29E0AD7CC();
      v22 = sub_29E2C3424();
      v34[1] = v16;
      v24 = sub_29DFAA104(v22, v23, v35);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Notifying data sources of analysis update", v19, 0xCu);
      sub_29DE93B3C(v21);
      MEMORY[0x29ED82140](v21, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);

      (*(v7 + 8))(v9, v34[0]);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v25 = [a2 ongoingCycleFactors];
    sub_29DE9408C(0, &qword_2A1A61D50);
    v26 = sub_29E2C3614();

    sub_29E066198(v26);

    sub_29E2BF964();
    v27 = sub_29E2BF0C4();

    v28 = *(v27 + 16);
    if (v28)
    {
      for (i = (v27 + 32); ; i += 2)
      {
        v31 = *i;
        v35[2] = &unk_2A25093B8;
        v32 = swift_dynamicCastObjCProtocolConditional();
        if (v32)
        {
          break;
        }

        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v33 = v31 == 0;
        }

        else
        {
          v33 = 1;
        }

        if (v33)
        {
          goto LABEL_10;
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_29E2BE964();
        v35[1] = &unk_2A25093B8;
        v30 = swift_dynamicCastObjCProtocolConditional();
        if (v30)
        {
          goto LABEL_8;
        }

LABEL_9:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_10:
        if (!--v28)
        {
        }
      }

      v30 = v32;
      swift_unknownObjectRetain_n();
LABEL_8:
      [v30 analysisProvider:a1 didUpdateAnalysis:a2];
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0AB504(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_29E0AB094(v6, v7);
}

uint64_t sub_29E0AB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_29E2C0514();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_29E2C3714();
  v6[8] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E0AB678, v9, v8);
}

uint64_t sub_29E0AB678()
{
  v19 = v0;

  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A04();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = sub_29E2C4AE4();
    v11 = sub_29DFAA104(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] model did update", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v13 = v0[2];
  v12 = v0[3];
  v14 = *(v13 + qword_2A1840F80);
  *(v13 + qword_2A1840F80) = v12;
  v15 = v12;

  sub_29E0A77F8(0);

  v16 = v0[1];

  return v16();
}

void sub_29E0AB81C(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_29E0AD360(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_29E2C3734();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29E2C3714();
  v10 = a3;
  v11 = a1;
  v12 = v10;
  v13 = sub_29E2C3704();
  v14 = swift_allocObject();
  v15 = MEMORY[0x29EDCA390];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = ObjectType;
  sub_29E13C63C(0, 0, v8, &unk_29E2DCCA8, v14);
}

uint64_t sub_29E0AB99C(void *a1)
{
  v27 = a1;
  swift_getObjectType();
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B84();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v8 = sub_29E2C3CF4();
  (*(v6 + 104))(v8, *MEMORY[0x29EDCA278], v5);
  v9 = sub_29E2C2BA4();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    sub_29E2C04B4();
    v11 = sub_29E2C0504();
    v12 = sub_29E2C3A34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32[0] = v14;
      *v13 = 136446210;
      v15 = sub_29E2C4AE4();
      v17 = sub_29DFAA104(v15, v16, v32);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Notifying data sources of onboarding change", v13, 0xCu);
      sub_29DE93B3C(v14);
      MEMORY[0x29ED82140](v14, -1, -1);
      MEMORY[0x29ED82140](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v18 = [v27 isAnyOnboardingVersionCompleted];
    v19 = qword_2A1840F78;
    *(v28 + qword_2A1840F78) = v18;
    sub_29E0A77F8(1);
    sub_29E2BF964();
    v20 = sub_29E2BF0C4();

    v26 = v20;
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v26 + 32);
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181BF90);
      do
      {
        v31 = *v22;
        swift_unknownObjectRetain_n();
        if (swift_dynamicCast())
        {
          sub_29DE8EE78(v29, v32);
          v24 = v33;
          v23 = v34;
          sub_29DE966D4(v32, v33);
          (*(v23 + 8))(v27, *(v28 + v19), v24, v23);
          swift_unknownObjectRelease();
          sub_29DE93B3C(v32);
        }

        else
        {
          swift_unknownObjectRelease();
          v30 = 0;
          memset(v29, 0, sizeof(v29));
          sub_29E0ADAA4(v29, &qword_2A181A920, &qword_2A181BF90, &protocol descriptor for HKMCOnboardingCompletionObserver, sub_29E0AD5F4);
        }

        ++v22;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0ABDC8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29E0AB99C(v4);
}

void sub_29E0ABE94()
{
  if (!qword_2A181BF48)
  {
    type metadata accessor for HKMCDeviationType(255);
    sub_29E0AD81C(&qword_2A181BF50, type metadata accessor for HKMCDeviationType);
    v0 = sub_29E2C3234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BF48);
    }
  }
}

id sub_29E0ABF30@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 menstruationLevel];
  *a2 = result == 4;
  return result;
}

void sub_29E0AC008(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for CycleDay() + 20));
  swift_getAtKeyPath();

  *a2 = v4;
}

id sub_29E0AC078@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 bleedingInPregnancyLevel];
  *a2 = result == 1;
  return result;
}

id sub_29E0AC0B4@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 bleedingAfterPregnancyLevel];
  *a2 = result == 1;
  return result;
}

char *sub_29E0AC0F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CycleFactorsImpactNotificationFactory();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA190];
  v10[2] = MEMORY[0x29EDCA190];
  v10[3] = v11;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    swift_beginAccess();
    v10[2] = v11;

LABEL_21:
    v10[3] = v11;
    v10[4] = a2;
    v10[5] = a3;
    v10[6] = a4;
    v10[7] = a5;
    return v10;
  }

  v12 = sub_29E2C4484();
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_3:
  v36 = v12 & ~(v12 >> 63);
  result = sub_29E1813F8(0, v36, 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v30 = v10 + 2;
    v31 = v10;
    v37 = v12;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v16 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    v17 = a1;
    do
    {
      if (v15)
      {
        v18 = MEMORY[0x29ED80D70](v14, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = v16;
      v21 = [v18 v16[80]];

      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_29E1813F8((v22 > 1), v23 + 1, 1);
      }

      ++v14;
      *(v11 + 16) = v23 + 1;
      *(v11 + 8 * v23 + 32) = v21;
      v16 = v20;
      a1 = v17;
    }

    while (v37 != v14);
    swift_beginAccess();
    *v30 = v11;
    sub_29E1813F8(0, v36, 0);
    for (i = 0; i != v37; ++i)
    {
      if (v15)
      {
        v25 = MEMORY[0x29ED80D70](i, v17);
      }

      else
      {
        v25 = *(v17 + 8 * i + 32);
      }

      v26 = v25;
      v27 = [v25 v16 + 3464];

      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_29E1813F8((v28 > 1), v29 + 1, 1);
      }

      *(v11 + 16) = v29 + 1;
      *(v11 + 8 * v29 + 32) = v27;
    }

    a4 = v34;
    a5 = v35;
    a2 = v32;
    a3 = v33;
    v10 = v31;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E0AC3AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  v95 = a8;
  v87 = a7;
  v82 = a6;
  v81 = a11;
  v86 = a17;
  v85 = a16;
  v84 = a15;
  v83 = a14;
  v80[1] = *a19;
  sub_29E0AD360(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v25 - 8);
  v92 = v80 - v26;
  v91 = sub_29E2C0514();
  v90 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v88 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v101[3] = sub_29E2BD184();
  v101[4] = &off_2A24B5E20;
  v101[0] = a4;
  *(a19 + 296) = 0;
  *(a19 + 353) = 1;
  *(a19 + 368) = 2;
  *(a19 + 384) = 0;
  *(a19 + 400) = 0u;
  *(a19 + 416) = 0u;
  *(a19 + 432) = 0u;
  sub_29E2C04B4();
  sub_29E2C03F4();
  *(a19 + 144) = a1;
  v94 = a2;
  sub_29DE9DC34(a2, a19 + 152);
  v93 = a3;
  sub_29DE9DC34(a3, a19 + 192);
  sub_29DE9DC34(v101, a19 + 96);
  sub_29E2C0344();
  v29 = a1;
  v30 = sub_29E2C0334();
  sub_29E2C0384();
  v89 = v30;
  *(a19 + 240) = sub_29E2C0364();
  *(a19 + 360) = a5;
  if (v82 == 7)
  {
    v31 = 0;
  }

  else
  {
    v31 = a6;
  }

  v32 = v81;
  *(a19 + 354) = v31;
  v33 = a5;
  sub_29E0AD4E8(a10, v32, a12);
  sub_29DEA8FEC(0, a10, v32, a12, v102);
  v34 = v102[1];
  *(a19 + 16) = v102[0];
  *(a19 + 32) = v34;
  *(a19 + 48) = v103;
  v35 = *(a19 + 400);
  v36 = v83;
  v37 = v84;
  *(a19 + 400) = v83;
  *(a19 + 408) = v37;
  sub_29DE8EE38(v36);
  sub_29DE8EF50(v35);
  v38 = *(a19 + 416);
  v39 = v85;
  v40 = v86;
  *(a19 + 416) = v85;
  *(a19 + 424) = v40;
  sub_29DE8EE38(v39);
  sub_29DE8EF50(v38);
  type metadata accessor for CountryGatingOnboardingHandler();
  v41 = swift_allocObject();
  *(v41 + 24) = 0u;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0;
  *(v41 + 16) = v29;
  v42 = v29;
  sub_29DFF74A0();
  *(a19 + 304) = v41;
  v43 = v87;
  *(a19 + 232) = [objc_allocWithZone(MEMORY[0x29EDC33D0]) initWithHealthStore_];
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x29EDC33A0]) initWithHealthStore_];
  }

  *(a19 + 136) = v44;
  sub_29E0AD580(v95, &v96, &unk_2A181BF78, &unk_2A181BF80, &protocol descriptor for GuardianFeatureSettingsProvider, sub_29E0AD5F4);
  if (v97)
  {
    sub_29DE8EE78(&v96, &v98);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v45 = sub_29E0D86DC(v42);
    v99 = type metadata accessor for ReviewGuardianFeatureSettingsController();
    v100 = &off_2A24BA638;
    *&v98 = v45;
    if (v97)
    {
      sub_29E0ADAA4(&v96, &unk_2A181BF78, &unk_2A181BF80, &protocol descriptor for GuardianFeatureSettingsProvider, sub_29E0AD5F4);
    }
  }

  sub_29DE8EE78(&v98, a19 + 312);
  *(a19 + 248) = [objc_allocWithZone(MEMORY[0x29EDBAC50]) initWithHealthStore_];
  *(a19 + 56) = a10;
  *(a19 + 64) = v32;
  *(a19 + 72) = a12;
  if (a13)
  {
    sub_29E0AD4E8(a10, v32, a12);
    v46 = a13;
  }

  else
  {
    sub_29E2BDCE4();
    v47 = v42;
    sub_29E0AD4E8(a10, v32, a12);
    v46 = sub_29E2BDCD4();
  }

  *(a19 + 80) = v46;
  v48 = objc_allocWithZone(MEMORY[0x29EDC59A0]);

  *(a19 + 88) = [v48 init];
  v49 = [objc_opt_self() shared];
  v50 = [v49 isMedicalIDAvailable];

  *(a19 + 352) = v50;
  v51 = type metadata accessor for CycleTrackingEducationPromptStore();
  v52 = swift_allocObject();
  v53 = v42;
  v54 = HKLogMenstrualCyclesCategory();
  v55 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v56 = sub_29E2C33A4();
  v57 = [v55 initWithName:v56 loggingCategory:v54];

  v52[2] = v57;
  v52[4] = v53;
  v58 = *MEMORY[0x29EDC32A0];
  v59 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v60 = v53;
  v61 = [v59 initWithCategory:2 domainName:v58 healthStore:v60];
  v52[3] = v61;
  [v61 startObservation_];

  *(a19 + 280) = v51;
  *(a19 + 288) = &off_2A24BFE78;
  *(a19 + 256) = v52;

  sub_29DFF75C8(0);

  if (a9)
  {
    v62 = a9;
  }

  else
  {
    v62 = [objc_allocWithZone(MEMORY[0x29EDC33E0]) initWithHealthStore_];
  }

  v63 = v88;
  *(a19 + 376) = v62;
  swift_unknownObjectRetain();
  if (a18)
  {
    v64 = a18;
  }

  else
  {
    v65 = HKLogMenstrualCyclesCategory();
    v64 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v65 healthDataSource:v60];
  }

  *(a19 + 392) = v64;
  v66 = a18;
  sub_29E2C04B4();
  v67 = sub_29E2C0504();
  v68 = sub_29E2C3A34();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v98 = v70;
    *v69 = 136315138;
    v71 = sub_29DFFF808();
    v73 = sub_29DFAA104(v71, v72, &v98);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_29DE74000, v67, v68, "[%s] Initialized", v69, 0xCu);
    sub_29DE93B3C(v70);
    MEMORY[0x29ED82140](v70, -1, -1);
    MEMORY[0x29ED82140](v69, -1, -1);
  }

  (*(v90 + 8))(v63, v91);
  v74 = sub_29E2C3734();
  v75 = v92;
  (*(*(v74 - 8) + 56))(v92, 1, 1, v74);
  sub_29E2C3714();

  v76 = sub_29E2C3704();
  v77 = swift_allocObject();
  v78 = MEMORY[0x29EDCA390];
  v77[2] = v76;
  v77[3] = v78;
  v77[4] = a19;
  sub_29DFE96C0(0, 0, v75, &unk_29E2DCC98, v77);

  [*(a19 + 376) registerObserver:a19 isUserInitiated:1];

  sub_29E0ADAA4(v95, &unk_2A181BF78, &unk_2A181BF80, &protocol descriptor for GuardianFeatureSettingsProvider, sub_29E0AD5F4);
  sub_29DE93B3C(v93);
  sub_29DE93B3C(v94);
  sub_29DE93B3C(v101);
  return a19;
}

void sub_29E0ACD44(void *a1, void *a2, char *a3, void *a4, double a5)
{
  sub_29E0AD360(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v58 - v14;
  v16 = sub_29E2C31A4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = ceil(a5 / 48.0);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v60 = a4;
  v61 = v17;
  v64 = v12;
  v65 = v15;
  v66 = *(v17 + 16);
  v67 = v20;
  v21 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v19;
  v66(v21, a3, v19);
  type metadata accessor for CycleLoggingDataProvider();
  v23 = swift_allocObject();
  sub_29E0AD3C4();
  v24 = swift_allocObject();
  v59 = a3;
  v25 = v24;
  v26 = HKLogMenstrualCyclesCategory();
  v27 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v28 = sub_29E2C33A4();
  v29 = [v27 initWithName:v28 loggingCategory:v26];

  *(v25 + 16) = v29;
  *(v23 + 16) = v25;
  KeyPath = swift_getKeyPath();
  MEMORY[0x2A1C7C4A8](KeyPath);
  v31 = swift_getKeyPath();
  v32 = MEMORY[0x29EDCA1A0];
  *(v23 + 56) = 0;
  *(v23 + 64) = v31;
  *(v23 + 72) = v32;
  *(v23 + 80) = v32;
  *(v23 + 88) = 2;
  v33 = swift_getKeyPath();
  MEMORY[0x2A1C7C4A8](v33);
  v34 = swift_getKeyPath();
  *(v23 + 96) = 2;
  *(v23 + 104) = v34;
  *(v23 + 112) = v32;
  *(v23 + 120) = v32;
  *(v23 + 128) = 2;
  v35 = swift_getKeyPath();
  MEMORY[0x2A1C7C4A8](v35);
  v36 = swift_getKeyPath();
  *(v23 + 136) = 3;
  *(v23 + 144) = v36;
  *(v23 + 152) = v32;
  *(v23 + 160) = v32;
  *(v23 + 168) = 2;
  v62 = v21;
  v63 = v22;
  v37 = v22;
  v38 = v67;
  v66((v23 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay), v21, v37);
  *(v23 + 24) = a1;
  *(v23 + 32) = a2;
  v39 = a1;
  v40 = a2;
  v41 = [v39 healthStore];
  v42 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

  *(v23 + 48) = v42;
  v43 = [v39 healthStore];
  if ((v38 * 10) >> 64 == (10 * v38) >> 63)
  {
    v44 = v43;
    v45 = objc_allocWithZone(MEMORY[0x29EDC3408]);
    v46 = v39;
    v47 = v60;
    v48 = [v45 initWithHealthStore:v44 analysisProvider:v46 pregnancyModelProvider:v40 maximumActiveDuration:10 * v38 minimumBufferDuration:2 * v38 shouldFetchCycleFactors:1 calendarCache:v60];

    *(v23 + 176) = v48;
    *(v23 + 40) = v47;
    v49 = v47;
    v50 = v65;
    v51 = v62;
    sub_29E2C30B4();
    sub_29DEC65FC();
    (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
    v53 = *(v23 + 176);
    v54 = MEMORY[0x29EDC9C68];
    sub_29E0AD580(v50, v64, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68], sub_29E0AD360);
    v68 = [v53 activeDayRange];
    v69 = v55;
    sub_29E2C3AB4();
    [v53 setActiveDayRange_];
    sub_29E0ADAA4(v50, &qword_2A1A5E2A0, sub_29DEC65FC, v54, sub_29E0AD360);
    [*(v23 + 176) registerObserver_];
    v56 = *(v61 + 8);
    v57 = v63;
    v56(v51, v63);
    v56(v59, v57);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_29E0AD360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E0AD3C4()
{
  if (!qword_2A181BF60)
  {
    sub_29DF942BC(255, &qword_2A181BF68);
    v0 = type metadata accessor for ObserverSet();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BF60);
    }
  }
}

void sub_29E0AD430()
{
  if (!qword_2A181BF70)
  {
    sub_29DE9408C(255, &qword_2A1A5E1D8);
    v0 = sub_29E2C4AB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BF70);
    }
  }
}

uint64_t sub_29E0AD4A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_29E0AD4D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29E0AD4E8(id result, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
LABEL_8:
      sub_29E2BF404();

      return sub_29E2BF404();
    }

    if (a3 != 3)
    {
      return result;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      goto LABEL_8;
    }

    v3 = result;
    result = a2;
  }

  return result;
}

uint64_t sub_29E0AD580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29E0AD5F4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DF942BC(255, a3);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E0AD650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DE9657C;

  return sub_29E28847C(a1, v4, v5, v6);
}

uint64_t sub_29E0AD704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29E0AB580(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_29E0AD7CC()
{
  result = qword_2A181BF98;
  if (!qword_2A181BF98)
  {
    type metadata accessor for MenstrualCyclesRoomViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BF98);
  }

  return result;
}

uint64_t sub_29E0AD81C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E0AD864()
{
  v1 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2BCC94();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  *(v0 + qword_2A181BDE8) = 0;
  *(v0 + qword_2A1840F60) = 8;
  *(v0 + qword_2A181BDF0) = 0;
  (*(v3 + 104))(v5, *MEMORY[0x29EDB9C78], v2, v7);
  sub_29E2BCCA4();
  (*(v3 + 8))(v5, v2);
  sub_29E2BCBA4();
  sub_29E2C3144();
  *(v0 + qword_2A1840F70) = 0;
  *(v0 + qword_2A181BDF8) = 0;
  *(v0 + qword_2A181BE08) = 0;
  *(v0 + qword_2A1840F78) = 0;
  *(v0 + qword_2A1840F80) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E0ADAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29E0ADB14@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_29E2C09F4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0AB4();
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C0A24();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = &v23 - v13;
  v15 = *MEMORY[0x29EDC7848];
  v16 = *(v6 + 104);
  v23 = v6 + 104;
  v16(v8, v15, v5, v12);
  sub_29E2C0A04();
  v17 = *MEMORY[0x29EDC7820];
  v18 = *(v2 + 104);
  v18(v4, v17, v1);
  sub_29E2C09D4();
  v18(v4, v17, v1);
  sub_29E2C09B4();
  (v16)(v8, v15, v24);
  sub_29E2C0AE4();
  v19 = v26;
  v20 = v27;
  (*(v26 + 16))(v25, v14, v27);
  sub_29E2C0AA4();
  v21 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_29E2C0B14();
  return (*(v19 + 8))(v14, v20);
}

uint64_t sub_29E0ADE0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C09F4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0A24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  if (sub_29E2BCF64())
  {
    sub_29E2C0A14();
    sub_29E2C09C4();
    sub_29E2C0A14();
    sub_29E2C09E4();
  }

  else
  {
    v13 = *MEMORY[0x29EDC7820];
    v14 = *(v5 + 104);
    v14(v7, v13, v4);
    sub_29E2C09D4();
    v14(v7, v13, v4);
    sub_29E2C09B4();
  }

  return (*(v9 + 32))(a2, v12, v8);
}

uint64_t sub_29E0ADFF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C0A24();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_29E2C0A14();
  sub_29E2C09C4();
  sub_29E2C0A14();
  return sub_29E2C09E4();
}

void sub_29E0AE114(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = [objc_opt_self() systemGray3Color];
  CGContextSaveGState(a1);
  v12 = [v22 resolvedColorWithTraitCollection_];
  [a2 displayScale];
  v14 = 1.0 / v13;
  v15 = 1.0 / v13 * 0.5;
  sub_29E0AEEA0(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CD7A0;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MaxY = CGRectGetMaxY(v25);
  *(v16 + 32) = MinX;
  *(v16 + 40) = MaxY - v15;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  v20 = CGRectGetMaxY(v27);
  *(v16 + 48) = MaxX;
  *(v16 + 56) = v20 - v15;
  v21 = [v12 CGColor];
  CGContextSetStrokeColorWithColor(a1, v21);

  CGContextSetLineWidth(a1, v14);
  sub_29E2C38F4();

  CGContextRestoreGState(a1);
}

double sub_29E0AE308(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v27 = MEMORY[0x29EDCA190];
    sub_29E181180(0, v2, 0);
    v4 = v27;
    v5 = a1 + 32;
    v6 = v2;
    do
    {
      sub_29DE9DC34(v5, v24);
      v8 = v25;
      v7 = v26;
      sub_29DE966D4(v24, v25);
      v9 = (*(*(v7 + 8) + 8))(v8);
      sub_29DE93B3C(v24);
      v27 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_29E181180((v10 > 1), v11 + 1, 1);
        v4 = v27;
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v9;
      v5 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = MEMORY[0x29EDCA190];
  }

  v12 = sub_29DEE8160(v4);
  v14 = v13;

  if (v14)
  {
    v15 = 50.0;
    if (v2)
    {
      goto LABEL_10;
    }

LABEL_16:
    v16 = MEMORY[0x29EDCA190];
    goto LABEL_17;
  }

  v15 = ceil(*&v12);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_10:
  v27 = v3;
  sub_29E181180(0, v2, 0);
  v16 = v27;
  v17 = a1 + 32;
  do
  {
    sub_29DE9DC34(v17, v24);
    v19 = v25;
    v18 = v26;
    sub_29DE966D4(v24, v25);
    v20 = (*(*(v18 + 8) + 16))(v19);
    sub_29DE93B3C(v24);
    v27 = v16;
    v22 = *(v16 + 16);
    v21 = *(v16 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_29E181180((v21 > 1), v22 + 1, 1);
      v16 = v27;
    }

    *(v16 + 16) = v22 + 1;
    *(v16 + 8 * v22 + 32) = v20;
    v17 += 40;
    --v2;
  }

  while (v2);
LABEL_17:
  sub_29DEE8160(v16);

  return v15;
}

uint64_t sub_29E0AE550(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(result + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v17 = a2 + 32;
  v5 = result + 32;
  v6 = v2 == 0;
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_6:
  v34 = 0;
  v4 = v2;
  v32 = 0u;
  v33 = 0u;
  while (1)
  {
    if (v3 == v2)
    {
      v31 = 0;
      v3 = v2;
      v29 = 0u;
      v30 = 0u;
    }

    else
    {
      if (v3 >= v2)
      {
        goto LABEL_25;
      }

      result = sub_29DE9DC34(v5 + 40 * v3, &v29);
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_27;
      }
    }

    v24[0] = v32;
    v24[1] = v33;
    v25 = v34;
    v28 = v31;
    v27 = v30;
    v26 = v29;
    if (!*(&v33 + 1))
    {
      break;
    }

    if (!*(&v27 + 1))
    {
      sub_29DE93B3C(v24);
      return 0;
    }

    sub_29DE8EE78(v24, v21);
    sub_29DE8EE78(&v26, v18);
    v9 = v22;
    v10 = v23;
    sub_29DE966D4(v21, v22);
    v11 = (*(v10 + 24))(v9, v10);
    v13 = v12;
    v14 = v19;
    v15 = v20;
    sub_29DE966D4(v18, v19);
    if (v11 == (*(v15 + 24))(v14, v15) && v13 == v16)
    {

      sub_29DE93B3C(v18);
      result = sub_29DE93B3C(v21);
      v6 = v4 >= v2;
      if (v4 == v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = sub_29E2C4914();

      sub_29DE93B3C(v18);
      result = sub_29DE93B3C(v21);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      v6 = v4 >= v2;
      if (v4 == v2)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    if (v6)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = sub_29DE9DC34(v17 + 40 * v4, &v32);
    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      goto LABEL_26;
    }
  }

  if (*(&v27 + 1))
  {
    sub_29E0AEE14(&v26);
    return 0;
  }

  return 1;
}

BOOL sub_29E0AE7A0(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_29DE9DC34(a2 + 32, v10);
  if (a1[2])
  {
    v4 = v11;
    v3 = v12;
    sub_29DE966D4(v10, v11);
    v5 = (*(*(v3 + 8) + 24))(v4);
    v7 = a1[7];
    v6 = a1[8];
    sub_29DE966D4(a1 + 4, v7);
    v8 = v5 == (*(*(v6 + 8) + 24))(v7);
  }

  else
  {
    v8 = 0;
  }

  sub_29DE93B3C(v10);
  return v8;
}

uint64_t sub_29E0AE87C(CGContext *a1, void *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = a8 * 0.5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      sub_29E0AEEA0(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_29E2CD7A0;
      v33.origin.x = a4;
      v33.origin.y = a5;
      v33.size.width = a6;
      v33.size.height = a7;
      v20 = CGRectGetMaxX(v33) - v15;
      v34.origin.x = a4;
      v34.origin.y = a5;
      v34.size.width = a6;
      v34.size.height = a7;
      MinY = CGRectGetMinY(v34);
      *(v16 + 32) = v20;
      *(v16 + 40) = MinY;
      v35.origin.x = a4;
      v35.origin.y = a5;
      v35.size.width = a6;
      v35.size.height = a7;
      MaxX = CGRectGetMaxX(v35) - v15;
      goto LABEL_6;
    }

    if (a3 == 3)
    {
      sub_29E0AEEA0(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_29E2CD7A0;
      v41.origin.x = a4;
      v41.origin.y = a5;
      v41.size.width = a6;
      v41.size.height = a7;
      MinX = CGRectGetMinX(v41);
      v42.origin.x = a4;
      v42.origin.y = a5;
      v42.size.width = a6;
      v42.size.height = a7;
      MaxY = CGRectGetMaxY(v42);
      *(v16 + 32) = MinX;
      *(v16 + 40) = MaxY - v15;
      v43.origin.x = a4;
      v43.origin.y = a5;
      v43.size.width = a6;
      v43.size.height = a7;
      MaxX = CGRectGetMaxX(v43);
      v44.origin.x = a4;
      v44.origin.y = a5;
      v44.size.width = a6;
      v44.size.height = a7;
      v22 = CGRectGetMaxY(v44) - v15;
      goto LABEL_11;
    }

LABEL_14:
    type metadata accessor for CGRectEdge(0);
    result = sub_29E2C4944();
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      sub_29E0AEEA0(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_29E2CD7A0;
      v37.origin.x = a4;
      v37.origin.y = a5;
      v37.size.width = a6;
      v37.size.height = a7;
      v23 = CGRectGetMinX(v37);
      v38.origin.x = a4;
      v38.origin.y = a5;
      v38.size.width = a6;
      v38.size.height = a7;
      v24 = CGRectGetMinY(v38);
      *(v16 + 32) = v23;
      *(v16 + 40) = v15 + v24;
      v39.origin.x = a4;
      v39.origin.y = a5;
      v39.size.width = a6;
      v39.size.height = a7;
      MaxX = CGRectGetMaxX(v39);
      v40.origin.x = a4;
      v40.origin.y = a5;
      v40.size.width = a6;
      v40.size.height = a7;
      v22 = v15 + CGRectGetMinY(v40);
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_29E0AEEA0(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CD7A0;
  v30.origin.x = a4;
  v30.origin.y = a5;
  v30.size.width = a6;
  v30.size.height = a7;
  v17 = v15 + CGRectGetMinX(v30);
  v31.origin.x = a4;
  v31.origin.y = a5;
  v31.size.width = a6;
  v31.size.height = a7;
  v18 = CGRectGetMinY(v31);
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v32.origin.x = a4;
  v32.origin.y = a5;
  v32.size.width = a6;
  v32.size.height = a7;
  MaxX = v15 + CGRectGetMinX(v32);
LABEL_6:
  v36.origin.x = a4;
  v36.origin.y = a5;
  v36.size.width = a6;
  v36.size.height = a7;
  v22 = CGRectGetMaxY(v36);
LABEL_11:
  *(v16 + 48) = MaxX;
  *(v16 + 56) = v22;
  v27 = [a2 CGColor];
  CGContextSetStrokeColorWithColor(a1, v27);

  CGContextSetLineWidth(a1, a8);
  sub_29E2C38F4();
}

void sub_29E0AEC58(CGContext *a1, void *a2, int a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGContextSaveGState(a1);
  v16 = [a2 resolvedColorWithTraitCollection_];
  [a4 displayScale];
  sub_29E0AE87C(a1, v16, a3, a5, a6, a7, a8, 1.0 / v17);

  CGContextRestoreGState(a1);
}

void sub_29E0AED48(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, int a9)
{
  v16 = [objc_opt_self() systemGray3Color];
  sub_29E0AEC58(a1, v16, a9, a2, a3, a4, a5, a6);
}

uint64_t sub_29E0AEE14(uint64_t a1)
{
  sub_29E0AEEA0(0, &qword_2A181BFD8, sub_29DEF615C, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E0AEEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CycleChartsModel()
{
  result = qword_2A181BFE0;
  if (!qword_2A181BFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0AEF78()
{
  sub_29E0AF078(319, &qword_2A181BFF0, type metadata accessor for CycleChartCycle);
  if (v0 <= 0x3F)
  {
    sub_29E2C31A4();
    if (v1 <= 0x3F)
    {
      sub_29E0AF078(319, &qword_2A1818D90, sub_29DEF615C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E0AF078(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C3684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E0AF0CC()
{
  v1 = v0;
  v2 = type metadata accessor for CycleChartsModel();
  v3 = *(v0 + *(v2 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = 0.0;
    do
    {
      sub_29DE9DC34(v5, v12);
      v8 = v13;
      v7 = v14;
      sub_29DE966D4(v12, v13);
      v6 = v6 + (*(*(v7 + 8) + 72))(v8);
      v2 = sub_29DE93B3C(v12);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  MEMORY[0x2A1C7C4A8](v2);
  v11[2] = v1;
  *&v11[3] = v6;
  return sub_29E248EF8(sub_29E0AF3FC, v11, v9);
}

double sub_29E0AF1D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v23 - v12;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((a1 + *(v17 + 24)), v16);
  v18 = sub_29E2C31A4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, v16, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v20(v10, 1, 1, v18);
  v21 = sub_29E059C18(v13, v10);
  sub_29DFAB164(v10, sub_29DEDB978);
  sub_29DFAB164(v13, sub_29DEDB978);
  sub_29DFAB164(v16, sub_29DEFCC2C);
  result = *(a2 + *(type metadata accessor for CycleChartsModel() + 40)) * v21;
  *a3 = result;
  a3[1] = a4;
  return result;
}

void sub_29E0AF4F4()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_prepareLayout);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    v5 = sub_29E0AF6C0();
    [v0 setItemSize_];
    if (_UISolariumEnabled())
    {

      [v2 hk_onboardingEdgeInsets];
    }

    else
    {
      [v2 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v15.origin.x = v7;
      v15.origin.y = v9;
      v15.size.width = v11;
      v15.size.height = v13;
      CGRectGetWidth(v15);
      sub_29E2C3E34();
      sub_29E2C3E34();
    }

    [v0 setSectionInset_];
  }
}

double sub_29E0AF6C0()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_29E2C4914();

  if (v5)
  {
    return 103.0;
  }

  v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v8 == v9)
  {
LABEL_13:

    return 103.0;
  }

  v11 = sub_29E2C4914();

  if (v11)
  {
    return 103.0;
  }

  v12 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v14 = v13;
  if (v12 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_29E2C4914();

  if (v17)
  {
    return 103.0;
  }

  v18 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v20 = v19;
  if (v18 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v20 == v21)
  {
    goto LABEL_13;
  }

  v22 = sub_29E2C4914();

  if (v22)
  {
    return 103.0;
  }

  v23 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v25 = v24;
  if (v23 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v25 == v26)
  {
    goto LABEL_13;
  }

  v27 = sub_29E2C4914();

  result = 160.0;
  if (v27)
  {
    return 103.0;
  }

  return result;
}

double sub_29E0AF91C()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_29E2C4914();

  if (v5)
  {
    return 128.0;
  }

  v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v8 == v9)
  {
LABEL_13:

    return 128.0;
  }

  v11 = sub_29E2C4914();

  if (v11)
  {
    return 128.0;
  }

  v12 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v14 = v13;
  if (v12 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v14 == v15)
  {
    goto LABEL_13;
  }

  v18 = sub_29E2C4914();

  if (v18)
  {
    return 128.0;
  }

  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v21 = v20;
  if (v19 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v21 == v22)
  {
    goto LABEL_13;
  }

  v23 = sub_29E2C4914();

  if (v23)
  {
    return 128.0;
  }

  v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v26 = v25;
  if (v24 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v26 == v27)
  {
    goto LABEL_22;
  }

  v28 = sub_29E2C4914();

  if (v28)
  {
    return 150.0;
  }

  v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v31 = v30;
  if (v29 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v31 == v32)
  {
    goto LABEL_22;
  }

  v33 = sub_29E2C4914();

  if (v33)
  {
    return 150.0;
  }

  v34 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v36 = v35;
  if (v34 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v36 == v37)
  {
LABEL_22:

    return 150.0;
  }

  v38 = sub_29E2C4914();

  if (v38)
  {
    return 150.0;
  }

  v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v41 = v40;
  if (v39 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v41 == v42)
  {

    return 180.0;
  }

  v43 = sub_29E2C4914();

  result = 220.0;
  if (v43)
  {
    return 180.0;
  }

  return result;
}

uint64_t sub_29E0AFE70()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTextColor_];

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v2] setNumberOfLines_];
  [*&v1[v2] setTextAlignment_];
  v7 = *&v1[v2];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v8 = v7;
  v9 = sub_29E2C3FD4();
  [v8 setFont_];

  v10 = [v4 tertiarySystemFillColor];
  [v1 setBackgroundColor_];

  v11 = [v1 layer];
  if (qword_2A1816FC0 != -1)
  {
    swift_once();
  }

  [v11 setCornerRadius_];

  v12 = [v1 contentView];
  [v12 addSubview_];

  v13 = [v1 contentView];
  sub_29E2C3E74();
  [v13 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2D2410;
  v15 = [*&v1[v2] topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintGreaterThanOrEqualToAnchor:v17 constant:10.0];
  *(v14 + 32) = v18;
  v19 = [*&v1[v2] leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v14 + 40) = v23;
  v24 = [*&v1[v2] trailingAnchor];
  v25 = [v1 contentView];
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 trailingAnchor];
  v28 = [v24 constraintEqualToAnchor_];

  *(v14 + 48) = v28;
  v29 = [*&v1[v2] centerYAnchor];
  v30 = [v1 contentView];
  v31 = [v30 centerYAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v14 + 56) = v32;
  v33 = [v1 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [*&v1[v2] bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:10.0];

  *(v14 + 64) = v36;
  v37 = [v1 contentView];
  v38 = [v37 heightAnchor];

  v39 = [v38 constraintGreaterThanOrEqualToConstant_];
  *(v14 + 72) = v39;
  v40 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v41 = sub_29E2C3604();

  [v40 activateConstraints_];

  sub_29DEAC750();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_29E2CAB20;
  v43 = sub_29E2C0B54();
  v44 = MEMORY[0x29EDC7870];
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E0B04C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleFactorsNoneCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E0B052C()
{
  result = _UISolariumEnabled();
  v1 = 16.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_2A181BFF8 = *&v1;
  return result;
}

void sub_29E0B055C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = v1;
  v3 = sub_29E2C3FD4();
  [v2 setFont_];
}

uint64_t MicaAnimationView.Animation.pregnancySetup.unsafeMutableAddressor()
{
  if (qword_2A1816FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_29E2BE534();

  return sub_29DEA8E9C(v0, static MicaAnimationView.Animation.pregnancySetup);
}

uint64_t sub_29E0B0684()
{
  v0 = sub_29E2BE514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_29E2BE534();
  sub_29DEEB638(v4, static MicaAnimationView.Animation.pregnancySetup);
  sub_29DEA8E9C(v4, static MicaAnimationView.Animation.pregnancySetup);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A67F80;
  *v3 = xmmword_29E2DCD60;
  (*(v1 + 104))(v3, *MEMORY[0x29EDC1FB0], v0);
  v6 = v5;
  return sub_29E2BE524();
}

uint64_t static MicaAnimationView.Animation.pregnancySetup.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1816FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_29E2BE534();
  v3 = sub_29DEA8E9C(v2, static MicaAnimationView.Animation.pregnancySetup);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_29E0B08C0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a1;
  v37 = a2;
  v35 = a3;
  sub_29DEB2104();
  v34 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v32 = &v32 - v6;
  v7 = sub_29E2BCE84();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCEA4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BCBB4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCE44();
  (*(v8 + 104))(v10, *MEMORY[0x29EDB9CB8], v7);
  [objc_opt_self() estimatedDueDateNumberOfDays];
  sub_29E2BCE04();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v22 = *(v19 + 32);
    v22(v21, v17, v18);
    sub_29DEAAE18();
    v17 = v36;
    if ((sub_29E2C32B4() & 1) == 0)
    {
      (*(v19 + 8))(v21, v18);
      goto LABEL_8;
    }

    if (sub_29E2C32B4())
    {
      v23 = v32;
      (*(v19 + 16))(v32, v17, v18);
      v24 = v34;
      v22((v23 + *(v34 + 48)), v21, v18);
      v25 = v33;
      sub_29DFD4F84(v23, v33);
      v26 = *(v24 + 48);
      v27 = v35;
      v22(v35, v25, v18);
      v28 = *(v19 + 8);
      v28(v25 + v26, v18);
      sub_29DEB2268(v23, v25);
      v29 = *(v24 + 48);
      sub_29DEA8D5C();
      v22(&v27[*(v30 + 36)], (v25 + v29), v18);
      return (v28)(v25, v18);
    }

    __break(1u);
  }

  sub_29DE93920(v17);
LABEL_8:
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E0B0D98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v37 = a2;
  sub_29DEB2104();
  v36 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v35 = &v33 - v5;
  v6 = sub_29E2BCE84();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCEA4();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v33 - v21;
  sub_29E2BCE44();
  (*(v7 + 104))(v9, *MEMORY[0x29EDB9CA0], v6);
  if ([objc_opt_self() maximumNumberOfWeeksPregnant] == 0x8000000000000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_29E2BCE04();
  (*(v7 + 8))(v9, v6);
  (*(v38 + 8))(v12, v39);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v23 = *(v17 + 32);
    v23(v22, v15, v16);
    sub_29DEAAE18();
    if ((sub_29E2C32B4() & 1) == 0)
    {
      (*(v17 + 8))(v22, v16);
      goto LABEL_10;
    }

    sub_29E2BCAB4();
    v24 = sub_29E2C32B4();
    v15 = *(v17 + 8);
    (v15)(v22, v16);
    if (v24)
    {
      v25 = v35;
      v23(v35, v19, v16);
      v26 = v36;
      (*(v17 + 16))(v25 + *(v36 + 48), v40, v16);
      v27 = v34;
      sub_29DFD4F84(v25, v34);
      v28 = *(v26 + 48);
      v29 = v37;
      v23(v37, v27, v16);
      (v15)(v27 + v28, v16);
      sub_29DEB2268(v25, v27);
      v30 = *(v26 + 48);
      sub_29DEA8D5C();
      v23(&v29[*(v31 + 36)], (v27 + v30), v16);
      return (v15)(v27, v16);
    }

    goto LABEL_7;
  }

LABEL_8:
  sub_29DE93920(v15);
LABEL_10:
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E0B12CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v43 = a2;
  sub_29DEB2104();
  v48 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v41 = &v41 - v5;
  v6 = sub_29E2BCE84();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCEA4();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v41 - v21;
  sub_29E2BCE44();
  (*(v7 + 104))(v9, *MEMORY[0x29EDB9CB8], v6);
  sub_29E2BCBA4();
  sub_29E2BCE04();
  v44 = *(v17 + 8);
  v44(v20, v16);
  (*(v7 + 8))(v9, v6);
  (*(v45 + 8))(v12, v46);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v23 = *(v17 + 32);
    v23(v22, v15, v16);
    sub_29DEAAE18();
    v24 = v47;
    if (sub_29E2C32B4())
    {
      v25 = sub_29E2C32B4();
      v15 = v48;
      if (v25)
      {
        v26 = v41;
        (*(v17 + 16))(v41, v24, v16);
        v28 = *(v15 + 12);
        v27 = (v15 + 48);
        v23((v26 + v28), v22, v16);
        v29 = v44;
LABEL_7:
        v34 = v42;
        sub_29DFD4F84(v26, v42);
        v35 = *v27;
        v36 = v26;
        v37 = v43;
        v23(v43, v34, v16);
        v29(v34 + v35, v16);
        sub_29DEB2268(v36, v34);
        v38 = *v27;
        sub_29DEA8D5C();
        v23(&v37[*(v39 + 36)], (v34 + v38), v16);
        return (v29)(v34, v16);
      }

      __break(1u);
    }

    else
    {
      v30 = sub_29E2C32B4();
      v31 = v22;
      v29 = v44;
      v44(v31, v16);
      v15 = v48;
      if (v30)
      {
        v32 = *(v17 + 16);
        v26 = v41;
        v32(v41, v24, v16);
        v33 = *(v15 + 12);
        v27 = (v15 + 48);
        v32((v26 + v33), v24, v16);
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  sub_29DE93920(v15);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E0B1834()
{
  sub_29DEA8D5C();
  v1 = v0;
  sub_29DEEB638(v0, qword_2A1840FB0);
  v2 = sub_29DEA8E9C(v1, qword_2A1840FB0);
  return sub_29E0B1880(v2);
}

uint64_t sub_29E0B1880@<X0>(char *a1@<X8>)
{
  v52 = a1;
  sub_29DEB2104();
  v50 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v49 = &v48 - v4;
  v5 = sub_29E2BCE84();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E2BCEA4();
  v65 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v59 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v48 - v14;
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v60 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v48 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v64 = &v48 - v23;
  sub_29E2BCE44();
  v24 = *MEMORY[0x29EDB9CD0];
  v57 = *(v6 + 104);
  v57(v8, v24, v5);
  sub_29E2BCBA4();
  sub_29E2BCE04();
  v58 = v17[1];
  v58(v22, v16);
  v25 = *(v6 + 8);
  v53 = v8;
  v26 = v8;
  v27 = v15;
  v61 = v6 + 8;
  v62 = v5;
  v56 = v25;
  (v25)(v26);
  v28 = *(v65 + 8);
  v65 += 8;
  v55 = v28;
  v28(v10, v63);
  v54 = v17[6];
  if (v54(v15, 1, v16) != 1)
  {
    v29 = v17[4];
    v29(v64, v27, v16);
    sub_29E2BCE44();
    v30 = v53;
    v31 = v62;
    v57(v53, *MEMORY[0x29EDB9CB8], v62);
    sub_29E2BCBA4();
    v32 = v59;
    sub_29E2BCE04();
    v33 = v22;
    v34 = v58;
    v58(v33, v16);
    v56(v30, v31);
    v55(v10, v63);
    v35 = v54(v32, 1, v16);
    v36 = v32;
    v37 = v34;
    if (v35 != 1)
    {
      v38 = v60;
      v29(v60, v36, v16);
      sub_29DEAAE18();
      if (sub_29E2C32B4())
      {
        v39 = v49;
        v29(v49, v64, v16);
        v40 = v50;
        v29((v39 + *(v50 + 48)), v38, v16);
        v41 = v51;
        sub_29DFD4F84(v39, v51);
        v42 = *(v40 + 48);
        v43 = v37;
        v44 = v52;
        v29(v52, v41, v16);
        v43(v41 + v42, v16);
        sub_29DEB2268(v39, v41);
        v45 = *(v40 + 48);
        sub_29DEA8D5C();
        v29(&v44[*(v46 + 36)], v41 + v45, v16);
        return (v43)(v41, v16);
      }

      __break(1u);
    }

    v27 = v36;
    v37(v64, v16);
  }

  sub_29DE93920(v27);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

id sub_29E0B1EB4()
{
  result = [objc_opt_self() maximumNumberOfWeeksPregnant];
  qword_2A1840FC8 = result;
  return result;
}

unint64_t sub_29E0B1EE8()
{
  result = [objc_opt_self() maximumNumberOfWeeksPregnant];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *&xmmword_2A1840FD0 = 0;
    *(&xmmword_2A1840FD0 + 1) = result;
  }

  return result;
}

uint64_t sub_29E0B1FB8()
{
  v0 = sub_29E2C0AB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0B44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC7848], v0, v6);
  sub_29E2C0AE4();
  v9 = [objc_opt_self() systemBackgroundColor];
  sub_29E2C0B14();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v10 = sub_29E2C3F34();
  (*(v5 + 8))(v8, v4);
  return v10;
}

id sub_29E0B21E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JustOneFeedItemDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E0B225C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CycleLoggingHelpTileDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E0B22A0(uint64_t a1)
{
  sub_29E2BDCA4();
  v2 = MEMORY[0x29ED7A440]();
  v3 = sub_29E2BDC64();

  [v2 setPredicate_];

  v4 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v5 = sub_29E2C33A4();
  v6 = [v4 initWithKey:v5 ascending:0];

  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CE220;
  *(v7 + 32) = v6;
  sub_29DE9408C(0, &qword_2A1A61D48);
  v8 = v6;
  v9 = sub_29E2C3604();

  [v2 setSortDescriptors_];

  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v2 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  v10 = sub_29E2BF6D4();

  return v10;
}

uint64_t sub_29E0B24A4()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

uint64_t sub_29E0B254C()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

void sub_29E0B25EC()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E0B26B4()
{
  sub_29DE99B54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() menstrualFlowType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29DE927B8(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0B2760()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v108 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29E2C3384();
  v121 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106);
  v111 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v101 - v4;
  sub_29DEFFE04();
  v6 = sub_29E2BDD14();
  v7 = *(*(v6 - 8) + 72);
  v119 = *(v6 - 8);
  v120 = v7;
  v8 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_29E2DCE50;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  v10 = sub_29E2C33A4();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

  if (v11)
  {
    v12 = v105 + v8;
    *v12 = v11;
    *(v12 + 8) = 0;
    v13 = *MEMORY[0x29EDC1608];
    v14 = v119 + 104;
    v15 = *(v119 + 104);
    v113 = v6;
    v15(v12, v13, v6);
    v118 = v15;
    v119 = v14;
    v16 = (v12 + v120);
    v17 = v120;
    v116 = v12;
    *v16 = sub_29E2BC6E4();
    v16[1] = v18;
    v15(v16, *MEMORY[0x29EDC1610], v6);
    v104 = (2 * v17);
    v19 = v12 + 2 * v17;
    v107 = 0xD000000000000013;
    sub_29E2C3314();
    v117 = "CycleFactorsArticleLocalizable";
    v20 = v121;
    v21 = *(v121 + 16);
    v114 = v121 + 16;
    v109 = v21;
    v22 = v111;
    v23 = v106;
    v21(v111, v5, v106);
    sub_29E2BCC74();
    v115 = v9;
    v103 = v9;
    v24 = sub_29E2C3414();
    v26 = v25;
    v27 = *(v20 + 8);
    v121 = v20 + 8;
    v112 = v27;
    v27(v5, v23);
    *v19 = v24;
    *(v19 + 8) = v26;
    *(v19 + 16) = 0;
    v110 = *MEMORY[0x29EDC1630];
    v118(v19);
    v28 = v120;
    v29 = v116;
    v30 = &v104[v120 + v116];
    sub_29E2C3314();
    v109(v22, v5, v23);
    sub_29E2BCC74();
    v104 = v103;
    v31 = sub_29E2C3414();
    v33 = v32;
    v112(v5, v23);
    *v30 = v31;
    *(v30 + 1) = v33;
    v30[16] = 0;
    v34 = v118;
    (v118)(v30, v110, v113);
    v102 = (4 * v28);
    v35 = (v29 + 4 * v28);
    sub_29E2C3314();
    v36 = v106;
    v37 = v109;
    v109(v111, v5, v106);
    sub_29E2BCC74();
    v104 = v104;
    v38 = sub_29E2C3414();
    v40 = v39;
    v41 = v112;
    v112(v5, v36);
    *v35 = v38;
    v35[1] = v40;
    v35[2] = 0;
    LODWORD(v103) = *MEMORY[0x29EDC15D0];
    v34(v35);
    v42 = v120;
    v43 = v116;
    v44 = &v102[v120 + v116];
    sub_29E2C3314();
    v37(v111, v5, v36);
    sub_29E2BCC74();
    v104 = v104;
    v45 = sub_29E2C3414();
    v47 = v46;
    v48 = v106;
    v41(v5, v106);
    *v44 = v45;
    *(v44 + 1) = v47;
    v44[16] = 0;
    v49 = v110;
    v118(v44);
    v50 = v43 + 6 * v42;
    sub_29E2C3314();
    v51 = v109;
    v109(v111, v5, v48);
    sub_29E2BCC74();
    v102 = v104;
    v52 = sub_29E2C3414();
    v54 = v53;
    v55 = v106;
    v112(v5, v106);
    *v50 = v52;
    *(v50 + 8) = v54;
    *(v50 + 16) = 0;
    (v118)(v50, v49, v113);
    v104 = (8 * v120);
    v56 = v116 + 7 * v120;
    sub_29E2C3314();
    v51(v111, v5, v55);
    sub_29E2BCC74();
    v102 = v102;
    v57 = sub_29E2C3414();
    v59 = v58;
    v112(v5, v55);
    *v56 = v57;
    *(v56 + 8) = v59;
    *(v56 + 16) = 0;
    v60 = v113;
    (v118)(v56, v110, v113);
    v61 = &v104[v116];
    sub_29E2C3314();
    v62 = v109;
    v109(v111, v5, v55);
    sub_29E2BCC74();
    v102 = v102;
    v63 = sub_29E2C3414();
    v65 = v64;
    v66 = v106;
    v67 = v112;
    v112(v5, v106);
    *v61 = v63;
    *(v61 + 1) = v65;
    v61[16] = 0;
    v68 = v60;
    v69 = v118;
    (v118)(v61, v110, v68);
    v70 = &v104[v120 + v116];
    sub_29E2C3314();
    v71 = v111;
    v62(v111, v5, v66);
    sub_29E2BCC74();
    v104 = v102;
    v72 = v71;
    v73 = sub_29E2C3414();
    v75 = v74;
    v67(v5, v66);
    *v70 = v73;
    v70[1] = v75;
    v70[2] = 0;
    v76 = v113;
    (v69)(v70, v103, v113);
    v77 = v116 + 10 * v120;
    sub_29E2C3314();
    v78 = v66;
    v79 = v66;
    v80 = v109;
    v109(v72, v5, v79);
    sub_29E2BCC74();
    v104 = v104;
    v81 = sub_29E2C3414();
    v83 = v82;
    v112(v5, v78);
    *v77 = v81;
    *(v77 + 8) = v83;
    *(v77 + 16) = 0;
    (v118)(v77, v110, v76);
    v84 = v116 + 11 * v120;
    sub_29E2C3314();
    v80(v72, v5, v78);
    sub_29E2BCC74();
    v104 = v104;
    v85 = sub_29E2C3414();
    v87 = v86;
    v88 = v112;
    v112(v5, v78);
    *v84 = v85;
    *(v84 + 8) = v87;
    *(v84 + 16) = 0;
    (v118)(v84, v110, v113);
    v89 = v116 + 12 * v120;
    sub_29E2C3314();
    v109(v72, v5, v78);
    sub_29E2BCC74();
    v90 = v104;
    v91 = sub_29E2C3414();
    v93 = v92;
    v88(v5, v78);
    *v89 = v91;
    *(v89 + 8) = v93;
    *(v89 + 16) = 0;
    v94 = v110;
    v95 = v113;
    v96 = v118;
    (v118)(v89, v110, v113);
    v97 = v116 + 13 * v120;
    sub_29E2C3314();
    v109(v72, v5, v78);
    sub_29E2BCC74();
    v98 = sub_29E2C3414();
    v100 = v99;
    v112(v5, v78);
    *v97 = v98;
    *(v97 + 8) = v100;
    *(v97 + 16) = 0;
    v96(v97, v94, v95);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E0B357C()
{
  sub_29E2BEF04();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CycleChartCycle(319);
    if (v1 <= 0x3F)
    {
      sub_29E0B8264(319, &qword_2A181C050, type metadata accessor for CycleChartDay, MEMORY[0x29EDC9A40]);
      if (v2 <= 0x3F)
      {
        sub_29E0B8264(319, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          sub_29E2BCEA4();
          if (v4 <= 0x3F)
          {
            sub_29E2C31A4();
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

uint64_t sub_29E0B36C0()
{
  v53 = sub_29E2BC9D4();
  v1 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v52 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E2BCA44();
  v3 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v50 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29E2BCA54();
  v5 = *(v44 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v44);
  v49 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v48 = &v34 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v47 = &v34 - v10;
  v46 = sub_29E2BCBB4();
  v11 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFCBC0();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v41 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v0;
  result = sub_29E0B7730();
  v40 = *(result + 16);
  if (v40)
  {
    v16 = 0;
    v38 = (v3 + 8);
    v37 = (v5 + 8);
    v36 = (v1 + 8);
    v35 = (v11 + 8);
    v17 = MEMORY[0x29EDCA190];
    v39 = result;
    v18 = v41;
    v19 = v48;
    while (v16 < *(result + 16))
    {
      sub_29E0B7B70(result + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v16, v18, sub_29DEFCBC0);
      v55 = *v18;
      type metadata accessor for CycleChartDaysPDFChunk(0);
      v20 = v45;
      v21 = sub_29E2C3194();
      v22 = v49;
      MEMORY[0x29ED78EF0](v21);
      v23 = v50;
      sub_29E2BCA14();
      sub_29E2BC9B4();
      (*v38)(v23, v51);
      v24 = *v37;
      v25 = v44;
      (*v37)(v22, v44);
      v26 = v52;
      sub_29E2BC9C4();
      v56 = v17;
      v27 = v47;
      sub_29E2BC994();
      (*v36)(v26, v53);
      v24(v19, v25);
      sub_29E0B7998(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
      sub_29E2BCB94();
      v28 = v27;
      v17 = v56;
      v24(v28, v25);
      v29 = sub_29E2C33A4();

      (*v35)(v20, v46);
      sub_29E0B7AA8(v18, sub_29DEFCBC0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_29E143958(0, v17[2] + 1, 1, v17);
      }

      v31 = v17[2];
      v30 = v17[3];
      result = v39;
      if (v31 >= v30 >> 1)
      {
        v33 = v39;
        v17 = sub_29E143958((v30 > 1), v31 + 1, 1, v17);
        result = v33;
      }

      ++v16;
      v17[2] = v31 + 1;
      v32 = &v17[2 * v31];
      v32[4] = v55;
      v32[5] = v29;
      if (v40 == v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x29EDCA190];
LABEL_11:

    return v17;
  }

  return result;
}

uint64_t sub_29E0B3C98(void (*a1)(int64_t *), uint64_t a2, int64_t a3, int64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a2;
  v37 = a4;
  v35 = a1;
  sub_29DEFCBC0();
  v34 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = 0;
  v15 = a3;
  while (1)
  {
    v16 = v15 <= v37;
    if (a5 > 0)
    {
      v16 = v15 >= v37;
    }

    if (v16)
    {
      break;
    }

    v17 = __OFADD__(v15, a5);
    v15 += a5;
    if (v17)
    {
      v15 = (v15 >> 63) ^ 0x8000000000000000;
    }

    v17 = __OFADD__(v14++, 1);
    if (v17)
    {
      __break(1u);
      break;
    }
  }

  v33 = &v32 - v13;
  v40 = MEMORY[0x29EDCA190];
  sub_29E181044(0, v14, 0);
  v18 = v40;
  if (v14)
  {
    while (1)
    {
      v19 = a3 <= v37;
      if (a5 > 0)
      {
        v19 = a3 >= v37;
      }

      if (v19)
      {
        break;
      }

      if (__OFADD__(a3, a5))
      {
        v20 = ((a3 + a5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v20 = a3 + a5;
      }

      v38 = a3;
      v39 = 0;
      v21 = v12;
      v35(&v38);
      if (v6)
      {
        goto LABEL_39;
      }

      v6 = 0;
      v40 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_29E181044(v22 > 1, v23 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23;
      v12 = v21;
      sub_29E0B7B08(v21, v24, sub_29DEFCBC0);
      a3 = v20;
      if (!--v14)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:

    __break(1u);
  }

  else
  {
    v20 = a3;
LABEL_23:
    v25 = v20 <= v37;
    if (a5 > 0)
    {
      v25 = v20 >= v37;
    }

    if (v25)
    {
      return v18;
    }

    v27 = v33;
    while (1)
    {
      v28 = __OFADD__(v20, a5) ? ((v20 + a5) >> 63) ^ 0x8000000000000000 : v20 + a5;
      v38 = v20;
      v35(&v38);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v40 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_29E181044(v29 > 1, v30 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v30 + 1;
      sub_29E0B7B08(v27, v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, sub_29DEFCBC0);
      v31 = v28 <= v37;
      if (a5 > 0)
      {
        v31 = v28 >= v37;
      }

      v20 = v28;
      if (v31)
      {
        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E0B3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_29E2C0514();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_29E2BEFD4();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = MEMORY[0x29EDC9C68];
  sub_29E0B8264(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = type metadata accessor for CycleChartPDFModel(0);
  v6[19] = swift_task_alloc();
  v10 = sub_29E2BCEA4();
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for CycleChartCycle(0);
  v6[24] = swift_task_alloc();
  v11 = sub_29E2C31A4();
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v12 = sub_29E2BCBB4();
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  sub_29E0B82C8(0, &qword_2A181A080, MEMORY[0x29EDBA238]);
  v6[34] = v13;
  v6[35] = *(v13 - 8);
  v6[36] = swift_task_alloc();
  sub_29E0B8264(0, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, v9);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E0B4420, 0, 0);
}

uint64_t sub_29E0B4420()
{
  v1 = MEMORY[0x29EDBA210];
  sub_29E0B8338(0, &qword_2A181D9A0, &qword_2A181A090, MEMORY[0x29EDBA210]);
  sub_29E0B82C8(0, &qword_2A181A090, v1);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  sub_29DE9408C(0, &qword_2A1A61D70);
  v28 = [swift_getObjCClassFromMetadata() pregnancyType];
  if (!v28)
  {
    __break(1u);
  }

  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v24 = v0[25];
  v26 = v0[30];
  v6 = *(v0[6] + 8);
  v7 = [v6 menstruationSegment];
  [v7 days];

  sub_29E2C30D4();
  sub_29E2C3194();
  v8 = *(v5 + 8);
  v8(v4, v24);
  v9 = sub_29E2BCB04();
  v10 = *(v3 + 8);
  v10(v2, v26);
  v11 = [v6 lastDayIndex];
  if (v11)
  {
    v25 = v8;
    v12 = v0[32];
    v27 = v0[30];
    v13 = v0[28];
    v14 = v0[25];
    v15 = v11;
    [v11 integerValue];
    sub_29E2C30D4();

    sub_29E2C3194();
    v25(v13, v14);
    v16 = sub_29E2BCB04();
    v10(v12, v27);
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() predicateForSamplesWithStartDate:v9 endDate:v16 options:0];

  sub_29DE9408C(0, &qword_2A1A61D20);
  sub_29E2C2F24();

  v18 = MEMORY[0x29EDB9980];
  sub_29E0B8338(0, &qword_2A181A098, &qword_2A181A0A0, MEMORY[0x29EDB9980]);
  sub_29E0B82C8(0, &qword_2A181A0A0, v18);
  *(swift_allocObject() + 16) = xmmword_29E2CAB20;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED78E10](KeyPath, 1);
  sub_29DE9408C(0, &qword_2A1A61D50);
  sub_29E2C2FA4();
  v20 = swift_task_alloc();
  v0[40] = v20;
  *v20 = v0;
  v20[1] = sub_29E0B48C8;
  v21 = v0[34];
  v22 = v0[5];

  return MEMORY[0x2A1C5B578](v22, v21);
}

uint64_t sub_29E0B48C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_29E0B4F94;
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = sub_29E0B4A18;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E0B4A18()
{
  v1 = v0[42];
  if (v1 >> 62)
  {
    if (sub_29E2C4484())
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v0[38];

    v6 = type metadata accessor for CycleChartPDFPregnancyFactor();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x29ED80D70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = v0[38];

  sub_29DF163DC(v3, v4);
LABEL_9:
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[26];
  v10 = v0[24];
  v48 = v0[25];
  v49 = v0[27];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v14 = v0[8];
  v47 = v0[9];
  v15 = v0[6];
  v50 = v0[5];
  sub_29E0B8390(v0[38], v7);
  sub_29E0B7B70(v15, v10, type metadata accessor for CycleChartCycle);
  sub_29E0B7BD8(v7, v8, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
  (*(v12 + 16))(v11, v14, v13);
  (*(v9 + 16))(v49, v47, v48);
  v0[2] = 0;
  v16 = [v50 dateOfBirthComponentsWithError_];
  v17 = v0[2];
  if (v16)
  {
    v18 = v16;
    sub_29E2BC544();
    v19 = v17;

    v20 = 0;
  }

  else
  {
    v21 = v17;
    v22 = sub_29E2BC7E4();

    swift_willThrow();
    v20 = 1;
  }

  v37 = v0[39];
  v42 = v0[37];
  v32 = v0[35];
  v34 = v0[34];
  v35 = v0[36];
  v44 = v0[26];
  v45 = v0[25];
  v46 = v0[27];
  v41 = v0[22];
  v38 = v0[24];
  v39 = v0[21];
  v23 = v0[19];
  v40 = v0[20];
  v24 = v0[17];
  v33 = v0[18];
  v25 = v0[16];
  v51 = v0[15];
  v26 = v0[14];
  v31 = v0[13];
  v36 = v0[7];
  v43 = v0[4];
  v27 = sub_29E2BC5F4();
  (*(*(v27 - 8) + 56))(v24, v20, 1, v27);
  sub_29E16CCE8();
  v28 = MEMORY[0x29EDB9950];
  sub_29E0B7BD8(v24, v25, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  sub_29E2BCB54();
  sub_29E2BEFC4();
  sub_29E2BEF14();
  (*(v26 + 8))(v51, v31);
  sub_29E0B79E0(v24, &qword_2A1817D40, v28);
  (*(v32 + 8))(v35, v34);
  sub_29E0B79E0(v37, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
  sub_29E0B7B08(v38, v23 + v33[5], type metadata accessor for CycleChartCycle);
  *(v23 + v33[6]) = v36;
  sub_29E0B8390(v42, v23 + v33[7]);
  (*(v39 + 32))(v23 + v33[8], v41, v40);
  (*(v44 + 32))(v23 + v33[9], v46, v45);
  sub_29E0B7B08(v23, v43, type metadata accessor for CycleChartPDFModel);
  sub_29E2BF404();

  v29 = v0[1];

  return v29();
}

uint64_t sub_29E0B4F94()
{
  v71 = v0;
  v70[1] = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 328);
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 328);
    v6 = *(v0 + 88);
    v67 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v70[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_29DFAA104(0xD000000000000012, 0x800000029E2DCEF0, v70);
    *(v8 + 12) = 2082;
    *(v0 + 24) = v5;
    v10 = v5;
    sub_29DE96670();
    v11 = sub_29E2C3424();
    v13 = sub_29DFAA104(v11, v12, v70);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Failed to query for pregnancy cycle factors: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v67, v7);
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = MEMORY[0x29EDCA190];
  v18 = MEMORY[0x29EDCA190] >> 62;
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29E2C4484())
    {
      goto LABEL_6;
    }

LABEL_11:
    v22 = *(v0 + 304);

    v23 = type metadata accessor for CycleChartPDFPregnancyFactor();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    goto LABEL_12;
  }

  if (!*((MEMORY[0x29EDCA190] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v18)
  {
    v19 = MEMORY[0x29ED80D70](0, MEMORY[0x29EDCA190]);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;
  v21 = *(v0 + 304);

  sub_29DF163DC(v20, v21);
LABEL_12:
  v24 = *(v0 + 312);
  v25 = *(v0 + 296);
  v26 = *(v0 + 208);
  v27 = *(v0 + 192);
  v65 = *(v0 + 200);
  v66 = *(v0 + 216);
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);
  v30 = *(v0 + 160);
  v31 = *(v0 + 64);
  v64 = *(v0 + 72);
  v32 = *(v0 + 48);
  v68 = *(v0 + 40);
  sub_29E0B8390(*(v0 + 304), v24);
  sub_29E0B7B70(v32, v27, type metadata accessor for CycleChartCycle);
  sub_29E0B7BD8(v24, v25, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
  (*(v29 + 16))(v28, v31, v30);
  (*(v26 + 16))(v66, v64, v65);
  *(v0 + 16) = 0;
  v33 = [v68 dateOfBirthComponentsWithError_];
  v34 = *(v0 + 16);
  if (v33)
  {
    v35 = v33;
    sub_29E2BC544();
    v36 = v34;

    v37 = 0;
  }

  else
  {
    v38 = v34;
    v39 = sub_29E2BC7E4();

    swift_willThrow();
    v37 = 1;
  }

  v54 = *(v0 + 312);
  v59 = *(v0 + 296);
  v49 = *(v0 + 280);
  v51 = *(v0 + 272);
  v52 = *(v0 + 288);
  v61 = *(v0 + 208);
  v62 = *(v0 + 200);
  v63 = *(v0 + 216);
  v58 = *(v0 + 176);
  v55 = *(v0 + 192);
  v56 = *(v0 + 168);
  v40 = *(v0 + 152);
  v57 = *(v0 + 160);
  v41 = *(v0 + 136);
  v50 = *(v0 + 144);
  v42 = *(v0 + 128);
  v69 = *(v0 + 120);
  v43 = *(v0 + 112);
  v48 = *(v0 + 104);
  v53 = *(v0 + 56);
  v60 = *(v0 + 32);
  v44 = sub_29E2BC5F4();
  (*(*(v44 - 8) + 56))(v41, v37, 1, v44);
  sub_29E16CCE8();
  v45 = MEMORY[0x29EDB9950];
  sub_29E0B7BD8(v41, v42, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  sub_29E2BCB54();
  sub_29E2BEFC4();
  sub_29E2BEF14();
  (*(v43 + 8))(v69, v48);
  sub_29E0B79E0(v41, &qword_2A1817D40, v45);
  (*(v49 + 8))(v52, v51);
  sub_29E0B79E0(v54, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
  sub_29E0B7B08(v55, v40 + v50[5], type metadata accessor for CycleChartCycle);
  *(v40 + v50[6]) = v53;
  sub_29E0B8390(v59, v40 + v50[7]);
  (*(v56 + 32))(v40 + v50[8], v58, v57);
  (*(v61 + 32))(v40 + v50[9], v63, v62);
  sub_29E0B7B08(v40, v60, type metadata accessor for CycleChartPDFModel);
  sub_29E2BF404();

  v46 = *(v0 + 8);

  return v46();
}

void sub_29E0B56B4(id *a1)
{
  v1 = [*a1 endDate];
  sub_29E2BCB44();
}

uint64_t sub_29E0B5714()
{
  sub_29E0B8264(0, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v23 - v2;
  v4 = type metadata accessor for CycleChartPDFPregnancyFactor();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CycleChartPDFModel(0);
  sub_29E0B7BD8(v0 + *(v8 + 28), v3, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29E0B79E0(v3, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
    v23[6] = sub_29E1D0814();
    v24[0] = v9;
    v10 = 0;
    v24[1] = sub_29E059468();
    v24[2] = v11;
    v12 = MEMORY[0x29EDCA190];
LABEL_3:
    v13 = &v24[2 * v10];
    while (++v10 != 3)
    {
      v14 = v13 + 2;
      v15 = *v13;
      v13 += 2;
      if (v15)
      {
        v16 = *(v14 - 3);
        sub_29E2BF404();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_29E143F38(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = sub_29E143F38((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v19 = &v12[16 * v18];
        *(v19 + 4) = v16;
        *(v19 + 5) = v15;
        goto LABEL_3;
      }
    }

    v21 = MEMORY[0x29EDC99B0];
    sub_29E0B87F8(0, &qword_2A1A5E338, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    swift_arrayDestroy();
    v23[1] = v12;
    sub_29E0B87F8(0, &qword_2A1A5E320, v21, MEMORY[0x29EDC9A40]);
    sub_29E0B7C58();
    v20 = sub_29E2C3274();
  }

  else
  {
    sub_29E0B7B08(v3, v7, type metadata accessor for CycleChartPDFPregnancyFactor);
    v20 = sub_29DF15AB8();
    sub_29E0B7AA8(v7, type metadata accessor for CycleChartPDFPregnancyFactor);
  }

  return v20;
}

uint64_t sub_29E0B5A6C()
{
  v1 = MEMORY[0x29EDC9C68];
  sub_29E0B8264(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v58 - v3;
  v5 = sub_29E2BCBB4();
  v58 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CycleChartPDFPregnancyFactor();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0B8264(0, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, v1);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v58 - v12;
  v14 = type metadata accessor for CycleChartPDFModel(0);
  sub_29E0B7BD8(v0 + *(v14 + 28), v13, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor);
  if ((*(v8 + 48))(v13, 1, v7) != 1)
  {
    sub_29E0B7B08(v13, v10, type metadata accessor for CycleChartPDFPregnancyFactor);
    sub_29E0B7BD8(&v10[*(v7 + 24)], v4, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v26 = v58;
    v27 = *(v58 + 48);
    if (v27(v4, 1, v5) == 1)
    {
      v28 = v59;
      sub_29E2BCB54();
      v29 = v0;
      if (v27(v4, 1, v5) != 1)
      {
        sub_29E0B79E0(v4, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
      }
    }

    else
    {
      v28 = v59;
      (*(v26 + 32))(v59, v4, v5);
      v29 = v0;
    }

    v30 = objc_opt_self();
    v16 = v28;
    v31 = sub_29E2BCB04();
    (*(v26 + 8))(v28, v5);
    v32 = [v30 gestationalAgeStringOnDate:v31 pregnancySample:*&v10[*(v7 + 28)]];

    v58 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v59 = v33;

    sub_29E0B7AA8(v10, type metadata accessor for CycleChartPDFPregnancyFactor);
    v34 = [*(v29 + *(v14 + 20) + 8) cycleFactors];
    sub_29DE9408C(0, &qword_2A1A5E0B0);
    v35 = sub_29E2C3614();

    if (v35 >> 62)
    {
      v36 = sub_29E2C4484();
      if (v36)
      {
LABEL_22:
        v37 = 0;
        v38 = MEMORY[0x29EDCA190];
        do
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x29ED80D70](v37, v35);
          }

          else
          {
            if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v39 = *(v35 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_35;
          }

          v42 = [v39 integerValue];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_29E144B60(0, *(v38 + 2) + 1, 1, v38);
          }

          v16 = *(v38 + 2);
          v43 = *(v38 + 3);
          if (v16 >= v43 >> 1)
          {
            v38 = sub_29E144B60((v43 > 1), v16 + 1, 1, v38);
          }

          *(v38 + 2) = v16 + 1;
          *&v38[8 * v16 + 32] = v42;
          ++v37;
        }

        while (v41 != v36);
        goto LABEL_57;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_22;
      }
    }

    v38 = MEMORY[0x29EDCA190];
LABEL_57:

    v51 = *(v38 + 2);
    if (!v51)
    {
      v52 = 0;
LABEL_71:

      v57 = sub_29E0B6B48(v58, v59, v52);

      return v57;
    }

    v52 = 0;
    v53 = (v38 + 32);
    while (1)
    {
      v55 = *v53++;
      v54 = v55;
      if ((v55 - 3) >= 7)
      {
        if (v54 == 1)
        {
          if ((v52 & 4) != 0)
          {
            goto LABEL_60;
          }

          v56 = 4;
        }

        else
        {
          if (v54 != 2 || (v52 & 2) != 0)
          {
            goto LABEL_60;
          }

          v56 = 2;
        }
      }

      else
      {
        if (v52)
        {
          goto LABEL_60;
        }

        v56 = 1;
      }

      v52 |= v56;
LABEL_60:
      if (!--v51)
      {
        goto LABEL_71;
      }
    }
  }

  v15 = [*(v0 + *(v14 + 20) + 8) cycleFactors];
  sub_29DE9408C(0, &qword_2A1A5E0B0);
  v16 = sub_29E2C3614();

  if (v16 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v18 = 0;
    v19 = MEMORY[0x29EDCA190];
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x29ED80D70](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v20 = *(v16 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v23 = [v20 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_29E144B60(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = sub_29E144B60((v24 > 1), v25 + 1, 1, v19);
      }

      *(v19 + 2) = v25 + 1;
      *&v19[8 * v25 + 32] = v23;
      ++v18;
      if (v22 == i)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v19 = MEMORY[0x29EDCA190];
LABEL_40:

  v44 = *(v19 + 2);
  if (v44)
  {
    v45 = 0;
    v46 = (v19 + 32);
    while (1)
    {
      v48 = *v46++;
      v47 = v48;
      if ((v48 - 3) >= 7)
      {
        if (v47 == 1)
        {
          if ((v45 & 4) != 0)
          {
            goto LABEL_43;
          }

          v49 = 4;
        }

        else
        {
          if (v47 != 2 || (v45 & 2) != 0)
          {
            goto LABEL_43;
          }

          v49 = 2;
        }
      }

      else
      {
        if (v45)
        {
          goto LABEL_43;
        }

        v49 = 1;
      }

      v45 |= v49;
LABEL_43:
      if (!--v44)
      {
        goto LABEL_54;
      }
    }
  }

  v45 = 0;
LABEL_54:

  return sub_29E0B68B4(v45);
}

int *sub_29E0B6240(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CycleChartDaysPDFChunk(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for CycleChartPDFModel(0);
  if (!a1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v1 + result[6]);
  v10 = sub_29E0B7FA0(0, v9[2], a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v51 = MEMORY[0x29EDCA190];
    sub_29E181568(0, v11, 0);
    v12 = *(v10 + 16);
    v13 = v51;
    v47 = v9[2];
    v14 = type metadata accessor for CycleChartDay();
    v38 = *(v14 - 8);
    v15 = *(v38 + 80);
    v36[2] = v14;
    v37 = (v15 + 32) & ~v15;
    v36[0] = v15;
    v36[1] = v9 + v37;
    v41 = v2 + v8[5];
    result = type metadata accessor for CycleChartCycle(0);
    v16 = 0;
    v17 = result[8];
    v39 = result[9];
    v40 = v17;
    v45 = a1;
    v46 = v12;
    v43 = v10;
    v44 = v9;
    v42 = v11;
    while (v12 != v16)
    {
      if (v16 >= *(v10 + 16))
      {
        goto LABEL_36;
      }

      v50 = v13;
      v18 = *(v10 + 8 * v16 + 32);
      v19 = v18 + a1;
      if (__OFADD__(v18, a1))
      {
        goto LABEL_37;
      }

      if (v47 >= v19)
      {
        v20 = v18 + a1;
      }

      else
      {
        v20 = v47;
      }

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      v22 = v20 - v18;
      if (v20 < v18 || v20 < v21)
      {
        goto LABEL_39;
      }

      if (v47 < v18)
      {
        goto LABEL_40;
      }

      if (v18 < 0)
      {
        goto LABEL_41;
      }

      if (v19 < 0)
      {
        goto LABEL_42;
      }

      if (v9[2] == v22)
      {
        sub_29E2BF404();
        v24 = v9;
      }

      else
      {
        v24 = MEMORY[0x29EDCA190];
        if (v20 != v18)
        {
          if (v22 >= 1)
          {
            sub_29E0B8264(0, &qword_2A181C060, type metadata accessor for CycleChartDay, MEMORY[0x29EDC9E90]);
            v33 = v37;
            v34 = *(v38 + 72);
            v24 = swift_allocObject();
            result = j__malloc_size(v24);
            if (!v34)
            {
              goto LABEL_44;
            }

            if ((result - v33) == 0x8000000000000000 && v34 == -1)
            {
              goto LABEL_45;
            }

            v24[2] = v22;
            v24[3] = 2 * ((result - v33) / v34);
          }

          swift_arrayInitWithCopy();
        }
      }

      v25 = v49;
      v26 = *(v49 + 32);
      v27 = sub_29E2BCEA4();
      v28 = *(*(v27 - 8) + 16);
      v29 = v6 + v26;
      v30 = v41;
      v28(v29, v41 + v40, v27);
      v28(v6 + *(v25 + 36), v30 + v39, v27);
      v12 = v46;
      *v6 = v16;
      v6[1] = v12;
      v6[2] = v21;
      v6[3] = v20;
      v6[4] = v24;
      v13 = v50;
      v51 = v50;
      v32 = *(v50 + 16);
      v31 = *(v50 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_29E181568(v31 > 1, v32 + 1, 1);
        v12 = v46;
        v13 = v51;
      }

      ++v16;
      *(v13 + 16) = v32 + 1;
      result = sub_29E0B7B08(v6, v13 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32, type metadata accessor for CycleChartDaysPDFChunk);
      v10 = v43;
      v9 = v44;
      a1 = v45;
      if (v42 == v16)
      {

        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E0B665C(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 == 1 || a1 == 4 || (v10 = 0, a1 == 5))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v10 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v10;
}

uint64_t sub_29E0B68B4(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 > 5)
  {
    if (a1 == 6 || a1 == 7)
    {
      goto LABEL_8;
    }

    return sub_29E0B665C(a1);
  }

  if (a1 != 2 && a1 != 3)
  {
    return sub_29E0B665C(a1);
  }

LABEL_8:
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_29E0B6B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v4 = sub_29E2BC9D4();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCA44();
  v37 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCA54();
  v40 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v37 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v37 - v17;
  v19 = sub_29E2BCBB4();
  v38 = *(v19 - 8);
  v39 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29E2C3384();
  v47 = *(v24 - 8);
  v48 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v45 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v49 = &v37 - v27;
  v28 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v28 - 8);
  if (a3 <= 5)
  {
    if (a3 != 2)
    {
      v29 = v49;
      if (a3 == 3)
      {
        goto LABEL_7;
      }

      return sub_29E0B665C(a3);
    }

    v31 = sub_29E2BCB54();
    MEMORY[0x29ED78EF0](v31);
    sub_29E2BCA14();
    sub_29E2BC9B4();
    (*(v37 + 8))(v9, v7);
    v32 = *(v40 + 8);
    v32(v12, v10);
    sub_29E2BC9C4();
    sub_29E2BC994();
    (*(v41 + 8))(v6, v42);
    v32(v15, v10);
    sub_29E0B7998(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
    sub_29E2BCB94();
    v32(v18, v10);
    (*(v38 + 8))(v21, v39);
    sub_29E2C3354();
    sub_29E2C3344();
    sub_29E2C3334();
    sub_29E2C3344();
    sub_29E2C3334();

LABEL_11:
    sub_29E2C3344();
    v29 = v49;
    goto LABEL_12;
  }

  if (a3 == 6)
  {
    sub_29E2C3354();
    sub_29E2C3344();
    sub_29E2C3334();
    goto LABEL_11;
  }

  v29 = v49;
  if (a3 != 7)
  {
    return sub_29E0B665C(a3);
  }

LABEL_7:
  sub_29E2C3354();
  sub_29E2C3344();
  sub_29E2C3334();
  sub_29E2C3344();
LABEL_12:
  sub_29E2C3374();
  v34 = v47;
  v33 = v48;
  (*(v47 + 16))(v45, v29, v48);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v35 = qword_2A1A67F80;
  sub_29E2BCC74();
  v30 = sub_29E2C3414();
  (*(v34 + 8))(v29, v33);
  return v30;
}

uint64_t sub_29E0B7240@<X0>(char *a1@<X8>)
{
  sub_29DEC6594();
  v53 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v52 = &v48 - v7;
  v8 = sub_29E2C31A4();
  v55 = *(v8 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v48 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v48 - v15;
  v17 = type metadata accessor for CycleChartDay() - 8;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v23 = &v48 - v21;
  v24 = *(v1 + 32);
  v25 = *(v24 + 16);
  if (v25)
  {
    v48 = v6;
    v49 = a1;
    v26 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v27 = v22;
    sub_29E0B7B70(v26, &v48 - v21, type metadata accessor for CycleChartDay);
    v54 = v16;
    v50 = v11;
    v51 = v14;
    v28 = v55;
    v29 = *(v55 + 16);
    v29(v16, v23, v8);
    sub_29E0B7B70(v26 + *(v27 + 72) * (v25 - 1), v20, type metadata accessor for CycleChartDay);
    v30 = v50;
    v29(v50, v20, v8);
    v31 = v51;
    sub_29E0B7AA8(v20, type metadata accessor for CycleChartDay);
    v32 = v28;
    v33 = v54;
    v34 = *(v32 + 32);
    v34(v31, v30, v8);
    sub_29E0B7998(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v35 = sub_29E2C32B4();
    result = sub_29E0B7AA8(v23, type metadata accessor for CycleChartDay);
    if (v35)
    {
      v37 = v52;
      v34(v52, v33, v8);
      v38 = v53;
      v34((v37 + *(v53 + 48)), v31, v8);
      v39 = v48;
      sub_29E0B7B70(v37, v48, sub_29DEC6594);
      v40 = *(v38 + 48);
      v41 = v49;
      v34(v49, v39, v8);
      v42 = *(v55 + 8);
      v42(v39 + v40, v8);
      sub_29E0B7B08(v37, v39, sub_29DEC6594);
      v43 = *(v38 + 48);
      sub_29DEFCC2C();
      v45 = v44;
      v34(&v41[*(v44 + 36)], (v39 + v43), v8);
      v42(v39, v8);
      return (*(*(v45 - 8) + 56))(v41, 0, 1, v45);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29DEFCC2C();
    v47 = *(*(v46 - 8) + 56);

    return v47(a1, 1, 1, v46);
  }

  return result;
}

uint64_t sub_29E0B7730()
{
  sub_29E0B8264(0, &qword_2A18187B0, sub_29DEFCC2C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v17[-v2];
  sub_29DEFCC2C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E0B7240(v3);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_29E0B79E0(v3, &qword_2A18187B0, sub_29DEFCC2C);
    return MEMORY[0x29EDCA190];
  }

  sub_29E0B7B08(v3, v8, sub_29DEFCC2C);
  type metadata accessor for CycleChartDaysPDFChunk(0);
  result = sub_29E2BCD54();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v13, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  MEMORY[0x2A1C7C4A8](result);
  *&v17[-16] = v8;
  v16 = sub_29E0B3C98(sub_29E0B7A50, &v17[-32], 0, v14, v15);
  sub_29E0B7AA8(v8, sub_29DEFCC2C);
  return v16;
}

uint64_t sub_29E0B7998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0B79E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E0B8264(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E0B7A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_29DEFCBC0();
  *a2 = v3;
  return sub_29E2C3104();
}

uint64_t sub_29E0B7AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E0B7B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0B7B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0B7BD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E0B8264(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29E0B7C58()
{
  result = qword_2A181C058;
  if (!qword_2A181C058)
  {
    sub_29E0B87F8(255, &qword_2A1A5E320, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C058);
  }

  return result;
}

uint64_t sub_29E0B7CD4(uint64_t result, double a2, double a3, double a4)
{
  if (result < 1)
  {
    LOBYTE(v9) = 0;
    v7 = 0;
    v8 = a2;
  }

  else
  {
    v7 = 0;
    v8 = a2;
    while (1)
    {
      v9 = a4 <= 0.0 ? v8 <= a3 : v8 >= a3;
      if (v9)
      {
        break;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      v8 = a2 + ++v7 * a4;
      if (v7 >= result)
      {
        goto LABEL_26;
      }
    }

    v10 = v8 != a3;
    if (v8 != a3)
    {
      v11 = v8;
LABEL_13:
      v12 = !v10;
      LOBYTE(v9) = v8 == a3 || v12;
      v8 = v11;
      goto LABEL_26;
    }

    if (v7 + 1 < result)
    {
      v11 = v8;
      while (1)
      {
        v13 = v11 <= a3;
        if (a4 > 0.0)
        {
          v13 = v11 >= a3;
        }

        if (v13)
        {
          break;
        }

        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_57;
        }

        v14 = v7 + 1;
        v11 = a2 + (v7 + 1) * a4;
        v15 = v7 + 2;
        ++v7;
        if (v15 >= result)
        {
          v8 = v11;
          v7 = v14;
          goto LABEL_26;
        }
      }

      v10 = v11 != a3;
      goto LABEL_13;
    }

    LOBYTE(v9) = 1;
  }

LABEL_26:
  v16 = 0;
  v17 = MEMORY[0x29EDCA190];
  v18 = (MEMORY[0x29EDCA190] + 32);
  v19 = MEMORY[0x29EDCA210];
  while (1)
  {
    v20 = v8 <= a3;
    if (a4 > 0.0)
    {
      v20 = v8 >= a3;
    }

    if (!v20)
    {
      v22 = __OFADD__(v7++, 1);
      if (v22)
      {
        goto LABEL_55;
      }

      v21 = a2 + v7 * a4;
      if (v16)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    if (v8 != a3 || v9)
    {
      break;
    }

    LOBYTE(v9) = 1;
    v21 = v8;
    if (v16)
    {
      v21 = v8;
      goto LABEL_47;
    }

LABEL_35:
    v23 = v17[3];
    if (((v23 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_56;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    sub_29E0B87F8(0, &qword_2A1818140, v19, MEMORY[0x29EDC9E90]);
    v26 = swift_allocObject();
    v27 = j__malloc_size(v26);
    v28 = v27 - 32;
    if (v27 < 32)
    {
      v28 = v27 - 25;
    }

    v29 = v28 >> 3;
    v26[2] = v25;
    v26[3] = 2 * (v28 >> 3);
    v30 = (v26 + 4);
    v31 = v17[3] >> 1;
    if (v17[2])
    {
      v32 = v17 + 4;
      if (v26 != v17 || v30 >= v32 + 8 * v31)
      {
        memmove(v26 + 4, v32, 8 * v31);
      }

      v17[2] = 0;
    }

    v18 = (v30 + 8 * v31);
    v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

    v17 = v26;
LABEL_47:
    v22 = __OFSUB__(v16--, 1);
    if (v22)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    *v18++ = v8;
    v8 = v21;
  }

  v33 = v17[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v22 = __OFSUB__(v34, v16);
    v35 = v34 - v16;
    if (v22)
    {
      goto LABEL_58;
    }

    v17[2] = v35;
  }

  return v17;
}

uint64_t sub_29E0B7FA0(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    sub_29E0B87F8(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v11 = swift_allocObject();
    result = j__malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x29EDCA190];
  v19 = *(MEMORY[0x29EDCA190] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_29E0B87F8(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
        v26 = swift_allocObject();
        v27 = j__malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

void sub_29E0B8264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E0B82C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DE9408C(255, &qword_2A1A61D50);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E0B8338(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E0B82C8(255, a3, a4);
    v5 = sub_29E2C48E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E0B8390(uint64_t a1, uint64_t a2)
{
  sub_29E0B8264(0, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E0B8424(double a1, double a2, double a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v9 = a1 + v8 * a3;
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_29E0B87F8(0, &qword_2A181C068, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9E90]);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_48;
      }

      v20 = a1 + (v17 + 2) * a3;
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x29EDCA190];
  v21 = *(MEMORY[0x29EDCA190] + 24);

  v8 = 0;
  v15 = v11 + 4;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    v23 = MEMORY[0x29EDC9AD8];
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v24 = *(v11 + 3);
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_49;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_29E0B87F8(0, &qword_2A181C068, v23, MEMORY[0x29EDC9E90]);
        v27 = swift_allocObject();
        v28 = j__malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 25;
        }

        v30 = v29 >> 3;
        *(v27 + 2) = v26;
        *(v27 + 3) = 2 * (v29 >> 3);
        v31 = (v27 + 4);
        v32 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v33 = v11 + 4;
          if (v27 != v11 || v31 >= v33 + 8 * v32)
          {
            memmove(v27 + 4, v33, 8 * v32);
          }

          v11[2] = 0.0;
        }

        v15 = (v31 + 8 * v32);
        v16 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v11 = v27;
      }

      v34 = __OFSUB__(v16--, 1);
      if (v34)
      {
        goto LABEL_47;
      }

      *v15++ = v20;
      v20 = a1 + (v8 + 1) * a3;
      v35 = v20 <= a2;
      if (a3 > 0.0)
      {
        v35 = v20 >= a2;
      }

      ++v8;
      if (v35)
      {
        goto LABEL_41;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_41:
  v36 = *(v11 + 3);
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v34 = __OFSUB__(v37, v16);
    v38 = v37 - v16;
    if (v34)
    {
LABEL_50:
      __break(1u);
      return;
    }

    *(v11 + 2) = v38;
  }
}

void sub_29E0B871C()
{
  sub_29DF9D6E4();
  if (v0 <= 0x3F)
  {
    sub_29E0B8264(319, &qword_2A181C050, type metadata accessor for CycleChartDay, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29E2BCEA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E0B87F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E0B8848(uint64_t a1)
{
  sub_29DEAAD64();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BD4C4();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v55 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0BA96C(0, &qword_2A1A5E040, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
  v13 = *(v10 + 72);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E2CAB20;
  v49 = v14;
  sub_29E2BCA74();
  result = sub_29E0B8DF4(1uLL, a1);
  v48 = v18;
  v51 = v19 >> 1;
  v20 = (v19 >> 1) - v17;
  if (__OFSUB__(v19 >> 1, v17))
  {
    goto LABEL_19;
  }

  v21 = result;
  if (v20)
  {
    v22 = v17;
    v56 = MEMORY[0x29EDCA190];
    sub_29E2BF404();
    result = sub_29E1810E0(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v39 = v21;
    v40 = v15;
    v41 = a1;
    v23 = v11;
    v24 = v56;
    v25 = v53;
    v45 = (v52 + 8);
    v46 = v52 + 16;
    v26 = (v23 + 32);
    v43 = (v23 + 48);
    v44 = (v23 + 56);
    v27 = v51;
    if (v22 > v51)
    {
      v27 = v22;
    }

    v47 = v27;
    v28 = v42;
    while (v47 != v22)
    {
      (*(v52 + 16))(v28, v48 + *(v52 + 72) * v22, v25);
      sub_29E2BD3F4();
      v29 = sub_29E2BD824();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v4, 1, v29) == 1)
      {
        sub_29E0BB9A4(v4, sub_29DEAAD64);
        v31 = v54;
        (*v44)(v54, 1, 1, v9);
        sub_29E2BCA74();
        (*v45)(v28, v25);
        if ((*v43)(v31, 1, v9) != 1)
        {
          sub_29E0BB9A4(v54, sub_29DEB3B00);
        }
      }

      else
      {
        v32 = v54;
        sub_29E2BD7D4();
        (*v45)(v28, v53);
        (*(v30 + 8))(v4, v29);
        (*v44)(v32, 0, 1, v9);
        v33 = v32;
        v25 = v53;
        (*v26)(v55, v33, v9);
      }

      v56 = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_29E1810E0(v34 > 1, v35 + 1, 1);
        v28 = v42;
        v24 = v56;
      }

      *(v24 + 16) = v35 + 1;
      result = (*v26)(v24 + v49 + v35 * v50, v55, v9);
      if (v51 == ++v22)
      {
        swift_unknownObjectRelease();
        v15 = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_29E2BF404();
  swift_unknownObjectRelease();
  v24 = MEMORY[0x29EDCA190];
LABEL_17:
  v56 = v15;
  sub_29DFCB600(v24);
  v36 = v56;
  v37 = sub_29E2BF404();
  v38 = sub_29E0B8E88(v37, v36);

  return v38;
}

unint64_t sub_29E0B8DF4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_29E2BD4C4();
    return a2;
  }

  return result;
}

size_t sub_29E0B8E88(uint64_t a1, uint64_t a2)
{
  v56 = sub_29E2BD4C4();
  v4 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v65 = &v55 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v59 = &v55 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v60 = &v55 - v12;
  sub_29E0BBA04();
  v68 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v58 = &v55 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v57 = &v55 - v18;
  v70 = a2;
  v71 = a1;
  v19 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v20 >= v19)
  {
    v21 = *(a1 + 16);
  }

  else
  {
    v21 = *(a2 + 16);
  }

  v75 = MEMORY[0x29EDCA190];
  result = sub_29E181090(0, v21, 0);
  v74 = v75;
  v69 = v4;
  v66 = v20;
  v67 = v19;
  if (v21)
  {
    v23 = 0;
    v62 = v21;
    v63 = v4 + 16;
    v24 = (v4 + 32);
    v25 = v56;
    v61 = v6;
    while (v19 != v23)
    {
      v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v27 = *(v4 + 72);
      result = (*(v4 + 16))(v6, v71 + v26 + v27 * v23, v25);
      if (v20 == v23)
      {
        goto LABEL_26;
      }

      v73 = v26;
      v28 = sub_29E2BCBB4();
      v29 = v6;
      v30 = v28;
      v31 = *(v28 - 8);
      v32 = v70 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
      v33 = v25;
      v34 = *(v68 + 48);
      v35 = v64;
      v72 = *v24;
      v72(v64, v29, v33);
      (*(v31 + 16))(v35 + v34, v32, v30);
      v36 = v65;
      sub_29DEAA4D4(v35, v35 + v34, v65);
      sub_29E0BB9A4(v35, sub_29E0BBA04);
      v37 = v74;
      v75 = v74;
      v39 = *(v74 + 16);
      v38 = *(v74 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_29E181090(v38 > 1, v39 + 1, 1);
        v37 = v75;
      }

      ++v23;
      *(v37 + 16) = v39 + 1;
      v74 = v37;
      result = (v72)(v37 + v73 + v39 * v27, v36, v33);
      v6 = v61;
      v21 = v62;
      v25 = v33;
      v4 = v69;
      v20 = v66;
      v19 = v67;
      if (v62 == v23)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v25 = v56;
LABEL_13:
    if (v19 <= v20)
    {
      return v74;
    }

    v63 = v4 + 16;
    v40 = (v4 + 32);
    while (v21 < v19)
    {
      v41 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v42 = *(v4 + 72);
      result = (*(v4 + 16))(v60, v71 + v41 + v42 * v21, v25);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_28;
      }

      if (v20 == v21)
      {
        (*(v4 + 8))(v60, v25);
        return v74;
      }

      if (v21 >= v20)
      {
        goto LABEL_29;
      }

      v65 = v21 + 1;
      v72 = v42;
      v73 = v41;
      v43 = sub_29E2BCBB4();
      v44 = *(v43 - 8);
      v45 = v70 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v21;
      v46 = v68;
      v47 = *(v68 + 48);
      v48 = v21;
      v49 = v58;
      v64 = *v40;
      (v64)(v58, v60, v25);
      (*(v44 + 16))(v49 + v47, v45, v43);
      v50 = v59;
      v51 = v57;
      sub_29E0BBA74(v49, v57);
      sub_29DEAA4D4(v51, v51 + *(v46 + 48), v50);
      sub_29E0BB9A4(v51, sub_29E0BBA04);
      v52 = v74;
      v75 = v74;
      v54 = *(v74 + 16);
      v53 = *(v74 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_29E181090(v53 > 1, v54 + 1, 1);
        v25 = v56;
        v52 = v75;
      }

      *(v52 + 16) = v54 + 1;
      v74 = v52;
      result = (v64)(v52 + v73 + v54 * v72, v50, v25);
      v21 = v48 + 1;
      v20 = v66;
      v19 = v67;
      v4 = v69;
      if (v65 == v67)
      {
        return v74;
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_29E0B9494(uint64_t a1, void *a2, char a3, unint64_t a4, uint64_t a5)
{
  v171 = a5;
  sub_29E0BA96C(0, &unk_2A1A61E60, sub_29DF18BF0, MEMORY[0x29EDB8AB0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v134 - v11;
  v13 = sub_29E2BCEA4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v158 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_29E2BCBB4();
  v153 = *(v156 - 8);
  MEMORY[0x2A1C7C4A8](v156);
  v154 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_29E2C31A4();
  v155 = *(v157 - 8);
  MEMORY[0x2A1C7C4A8](v157);
  v152 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_29E2BD304();
  v145 = *(v146 - 8);
  MEMORY[0x2A1C7C4A8](v146);
  v144 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_29E2BD234();
  v148 = *(v149 - 8);
  MEMORY[0x2A1C7C4A8](v149);
  v150 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v169 = (&v134 - v24);
  MEMORY[0x2A1C7C4A8](v25);
  v147 = &v134 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v159 = (&v134 - v28);
  MEMORY[0x2A1C7C4A8](v29);
  v166 = &v134 - v30;
  MEMORY[0x2A1C7C4A8](v31);
  v168 = &v134 - v32;
  v173 = sub_29E2BD4C4();
  v170 = *(v173 - 8);
  MEMORY[0x2A1C7C4A8](v173);
  MEMORY[0x2A1C7C4A8](v33);
  MEMORY[0x2A1C7C4A8](v34);
  MEMORY[0x2A1C7C4A8](v35);
  MEMORY[0x2A1C7C4A8](&v134 - v36);
  v165 = &v134 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v161 = &v134 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v167 = &v134 - v41;
  *&v47 = MEMORY[0x2A1C7C4A8](v42).n128_u64[0];
  v162 = &v134 - v48;
  if ((a3 & 1) == 0)
  {
    v175 = MEMORY[0x29EDCA190];
    sub_29DF18BF0(0);
    sub_29E2C1164();
    sub_29E098D4C();
    v54 = sub_29E2C1274();
    (*(v10 + 8))(v12, v9);
    return v54;
  }

  v141 = v43;
  v136 = v46;
  v135 = v45;
  v140 = v22;
  v134 = v44;
  v142 = v10;
  v143 = v9;
  v49 = [a2 fertileWindowProjections];
  v50 = sub_29DE9408C(0, &qword_2A1A62790);
  v51 = sub_29E2C3614();

  v175 = MEMORY[0x29EDCA190];
  if (v51 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v137 = v14;
    v138 = v13;
    v139 = a4;
    v151 = v12;
    v12 = MEMORY[0x29EDCA190];
    v172 = a2;
    if (i)
    {
      v13 = v50;
      v14 = 0;
      a2 = (v51 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x29ED80D70](v14, v51);
        }

        else
        {
          if (v14 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v53 = *(v51 + 8 * v14 + 32);
        }

        v50 = v53;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ([v53 isPartiallyLogged])
        {
        }

        else
        {
          sub_29E2C4614();
          a4 = *(v175 + 2);
          sub_29E2C4644();
          sub_29E2C4654();
          sub_29E2C4624();
        }

        ++v14;
        if (v12 == i)
        {
          v14 = v175;
          a2 = v172;
          v50 = v13;
          v12 = MEMORY[0x29EDCA190];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v14 = MEMORY[0x29EDCA190];
LABEL_18:

    v55 = [a2 menstruationProjections];
    a4 = sub_29E2C3614();

    v175 = v12;
    if (!(a4 >> 62))
    {
      v51 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        break;
      }

      goto LABEL_20;
    }

    v51 = sub_29E2C4484();
    if (!v51)
    {
      break;
    }

LABEL_20:
    v56 = 0;
    a2 = (a4 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x29ED80D70](v56, a4);
      }

      else
      {
        if (v56 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v57 = *(a4 + 8 * v56 + 32);
      }

      v50 = v57;
      v13 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if ([v57 isPartiallyLogged])
      {
      }

      else
      {
        sub_29E2C4614();
        v12 = *(v175 + 2);
        sub_29E2C4644();
        sub_29E2C4654();
        sub_29E2C4624();
      }

      ++v56;
      if (v13 == v51)
      {
        v160 = v175;
        a2 = v172;
        goto LABEL_38;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v160 = MEMORY[0x29EDCA190];
LABEL_38:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    goto LABEL_57;
  }

  for (j = *(v14 + 2); j; j = sub_29E2C4484())
  {
    v59 = 0;
    v163 = (v170 + 48);
    v164 = v14 & 0xC000000000000001;
    v60 = (v170 + 32);
    v61 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v164)
      {
        v63 = MEMORY[0x29ED80D70](v59, v14);
      }

      else
      {
        if (v59 >= *(v14 + 2))
        {
          goto LABEL_56;
        }

        v63 = *&v14[8 * v59 + 32];
      }

      v64 = v63;
      v65 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v66 = v14;
      v67 = j;
      v68 = [a2 statistics];
      v69 = [v68 cycleLengthMedian];

      v70 = v168;
      sub_29E0BA9D0(v64, 1, v59, v69, v171, v168);

      v71 = v173;
      if ((*v163)(v70, 1, v173) == 1)
      {
        sub_29E0BB9A4(v70, sub_29DF1D934);
        a2 = v172;
      }

      else
      {
        v72 = *v60;
        v73 = v162;
        (*v60)(v162, v70, v71);
        v72(v167, v73, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_29E143AD8(0, *(v61 + 2) + 1, 1, v61);
        }

        a2 = v172;
        v75 = *(v61 + 2);
        v74 = *(v61 + 3);
        if (v75 >= v74 >> 1)
        {
          v61 = sub_29E143AD8(v74 > 1, v75 + 1, 1, v61);
        }

        *(v61 + 2) = v75 + 1;
        v72(&v61[((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v75], v167, v173);
      }

      ++v59;
      j = v67;
      v62 = v65 == v67;
      v14 = v66;
      if (v62)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v61 = MEMORY[0x29EDCA190];
LABEL_59:

  v167 = sub_29E0B8848(v61);

  v76 = v160;
  if ((v160 & 0x8000000000000000) != 0 || (v160 & 0x4000000000000000) != 0)
  {
    goto LABEL_103;
  }

  for (k = *(v160 + 2); ; k = sub_29E2C4484())
  {
    v78 = v169;
    v79 = MEMORY[0x29EDCA190];
    if (!k)
    {
      break;
    }

    v80 = 0;
    v168 = v76 & 0xC000000000000001;
    v81 = (v170 + 48);
    v82 = (v170 + 32);
    while (1)
    {
      if (v168)
      {
        v83 = MEMORY[0x29ED80D70](v80, v76);
      }

      else
      {
        if (v80 >= *(v76 + 2))
        {
          goto LABEL_102;
        }

        v83 = *&v76[8 * v80 + 32];
      }

      v84 = v83;
      v85 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      v86 = [a2 statistics];
      v87 = [v86 cycleLengthMedian];

      v88 = v166;
      sub_29E0BA9D0(v84, 0, v80, v87, v171, v166);

      v89 = v88;
      v90 = v173;
      if ((*v81)(v88, 1, v173) == 1)
      {
        sub_29E0BB9A4(v88, sub_29DF1D934);
      }

      else
      {
        v91 = *v82;
        v92 = v161;
        (*v82)(v161, v89, v90);
        v91(v165, v92, v90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_29E143AD8(0, *(v79 + 2) + 1, 1, v79);
        }

        v94 = *(v79 + 2);
        v93 = *(v79 + 3);
        v76 = v160;
        if (v94 >= v93 >> 1)
        {
          v79 = sub_29E143AD8(v93 > 1, v94 + 1, 1, v79);
        }

        *(v79 + 2) = v94 + 1;
        v91(&v79[((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v94], v165, v173);
      }

      ++v80;
      a2 = v172;
      v78 = v169;
      if (v85 == k)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

LABEL_77:

  v95 = sub_29E0B8848(v79);

  v96 = *(v170 + 56);
  v97 = v159;
  v96(v159, 1, 1, v173);
  v98 = *(v167 + 16);
  v99 = *(v95 + 2);
  v100 = __OFADD__(v98, v99);
  v101 = v98 + v99;
  if (v100)
  {
    __break(1u);
LABEL_105:
    v95 = sub_29E143AD8(0, *(v95 + 2) + 1, 1, v95);
    goto LABEL_86;
  }

  v102 = v151;
  if (v101 > 0)
  {
    type metadata accessor for MenstrualCyclesHighlightsSearchTileViewController();
    sub_29E2BD284();
    (*(v148 + 104))(v150, *MEMORY[0x29EDC3700], v149);
    sub_29E2BD274();
    v103 = v147;
    v97 = v159;
    sub_29E2BD374();
    v104 = v173;
    v96(v103, 0, 1, v173);
    sub_29E0BB7D0(v103, v97);
    v105 = *(v170 + 48);
    if (!v105(v97, 1, v104))
    {
      sub_29E0BBBE8(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29E2CE220;
      sub_29DE9408C(0, &qword_2A1A61D70);
      *(inited + 32) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4A0]);
      sub_29DE927B8(inited);
      swift_setDeallocating();
      v97 = v159;
      v102 = v151;
      swift_arrayDestroy();
      sub_29E2BD3A4();
    }

    v107 = v105(v97, 1, v104);
    v78 = v169;
    if (!v107)
    {
      (*(v145 + 104))(v144, *MEMORY[0x29EDC3808], v146);
      sub_29E2BD324();
    }
  }

  v174 = v95;
  v175 = MEMORY[0x29EDCA190];
  sub_29DFCB62C(v167);
  sub_29DFCB62C(v174);
  sub_29DFA3470(v97, v78);
  v108 = v170;
  v97 = *(v170 + 48);
  v109 = v173;
  if (v97(v78, 1, v173) == 1)
  {
    sub_29E0BB9A4(v78, sub_29DF1D934);
    v110 = v158;
    v111 = v156;
    goto LABEL_89;
  }

  v169 = v96;
  a2 = *(v108 + 32);
  v112 = v141;
  (a2)(v141, v78, v109);
  (*(v108 + 16))(v136, v112, v109);
  v95 = v175;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_86:
  v114 = *(v95 + 2);
  v113 = *(v95 + 3);
  if (v114 >= v113 >> 1)
  {
    v95 = sub_29E143AD8(v113 > 1, v114 + 1, 1, v95);
  }

  v115 = v170 + 8;
  v116 = v173;
  (*(v170 + 8))();
  *(v95 + 2) = v114 + 1;
  (a2)(&v95[((*(v115 + 72) + 32) & ~*(v115 + 72)) + *(v115 + 64) * v114], v136, v116);
  v175 = v95;
  v102 = v151;
  v110 = v158;
  v111 = v156;
  v96 = v169;
LABEL_89:
  (*(v153 + 16))(v154, v171, v111);
  (*(v137 + 2))(v110, v139, v138);
  v117 = v152;
  sub_29E2C3144();
  v118 = sub_29DF3F850();
  (*(v155 + 8))(v117, v157);
  if ((v118 & 1) == 0 || (v119 = sub_29DF3F674()) == 0)
  {
    v120 = v140;
    v96(v140, 1, 1, v173);
    v124 = v143;
    v125 = v142;
    goto LABEL_98;
  }

  v120 = v140;
  v121 = v119;
  sub_29E0BA9D0(v119, 1, -1, 0, v171, v140);

  v122 = v173;
  v123 = v97(v120, 1, v173);
  v124 = v143;
  v125 = v142;
  if (v123 == 1)
  {
LABEL_98:
    sub_29E0BB9A4(v120, sub_29DF1D934);
    v129 = v175;
    goto LABEL_99;
  }

  v126 = v170;
  v127 = *(v170 + 32);
  v128 = v135;
  v127(v135, v120, v122);
  (*(v126 + 16))(v134, v128, v122);
  v129 = v175;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v129 = sub_29E143AD8(0, *(v129 + 2) + 1, 1, v129);
  }

  v131 = *(v129 + 2);
  v130 = *(v129 + 3);
  if (v131 >= v130 >> 1)
  {
    v129 = sub_29E143AD8(v130 > 1, v131 + 1, 1, v129);
  }

  v132 = v170 + 8;
  (*(v170 + 8))();
  *(v129 + 2) = v131 + 1;
  v127(&v129[((*(v132 + 72) + 32) & ~*(v132 + 72)) + *(v132 + 64) * v131], v134, v122);
  v175 = v129;
  v124 = v143;
  v125 = v142;
LABEL_99:
  v174 = v129;
  sub_29DF18BF0(0);
  sub_29E2C1164();
  sub_29E098D4C();
  v54 = sub_29E2C1274();
  (*(v125 + 8))(v102, v124);
  sub_29E0BB9A4(v159, sub_29DF1D934);
  return v54;
}

void sub_29E0BA96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E0BA9D0@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a5;
  v88 = a4;
  *&v94 = a3;
  v110 = a6;
  v116[10] = *MEMORY[0x29EDCA608];
  v105 = sub_29E2C0514();
  v87 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v106 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29E2BD864();
  v101 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103);
  v99 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29E2BDA84();
  v100 = *(v102 - 8);
  MEMORY[0x2A1C7C4A8](v102);
  v98 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEAAD64();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v93 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29E2BD234();
  v90 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v92 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29E2BD4C4();
  v108 = *(v109 - 8);
  MEMORY[0x2A1C7C4A8](v109);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_29E2BD824();
  v95 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96);
  v113 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCBB4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v86 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v84 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v84 - v23;
  v112 = sub_29E2BC3A4();
  v111 = *(v112 - 8);
  MEMORY[0x2A1C7C4A8](v112);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v84 - v28;
  v30 = type metadata accessor for ProjectionHighlightTileViewModelContextData();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projection] = a1;
  v32 = a2 & 1;
  v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projectionKind] = v32;
  v115.receiver = v31;
  v115.super_class = v30;
  v33 = a1;
  v34 = objc_msgSendSuper2(&v115, sel_init);
  v35 = objc_opt_self();
  v116[0] = 0;
  v107 = v34;
  v36 = [v35 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:v116];
  v37 = v116[0];
  if (v36)
  {
    v106 = sub_29E2BC924();
    v105 = v38;

    v87 = v33;
    sub_29E0C2A58(v32, v29);
    sub_29E2BC384();
    v39 = sub_29E2BCB24();
    v104 = v17;
    v40 = *(v17 + 8);
    v40(v24, v16);
    v41 = v32;
    v89 = v32;
    if ((v39 & 1) != 0 && v88)
    {
      v42 = v88;
      sub_29E2BC384();
      v43 = [v42 integerValue];
      v44 = __OFSUB__(0, v43);
      v45 = -v43;
      if (v44)
      {
        __break(1u);
      }

      sub_29E151FB4(v45, v24);
      v40(v21, v16);
      (*(v104 + 16))(v21, v24, v16);
      sub_29E2BC384();
      sub_29E2BC374();
      sub_29E2BC394();

      (*(v111 + 8))(v26, v112);
      v40(v24, v16);
      v41 = v89;
    }

    (*(v111 + 16))(v26, v29, v112);
    sub_29E2BD804();
    v46 = v94;
    v85 = v29;
    if (v94 < 1)
    {
      v47 = sub_29E2BD684();
    }

    else
    {
      v47 = sub_29E2BD674();
    }

    v104 = v47;
    v63 = v48;
    v64 = v92;
    v65 = v91;
    v116[0] = 0;
    v116[1] = 0xE000000000000000;
    MEMORY[0x29ED7FCC0](0xD000000000000022, 0x800000029E2ECD70);
    MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
    LOBYTE(v114) = v41;
    sub_29E2C4664();
    v114 = v46;
    v66 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v66);

    type metadata accessor for ProjectionHighlightTileViewController();
    sub_29E2BD284();
    (*(v90 + 104))(v64, *MEMORY[0x29EDC3788], v65);
    sub_29DF1DE4C(v106, v105);
    sub_29E2BD274();
    v67 = v97;
    sub_29E2BD374();
    v68 = v95;
    v69 = v93;
    v70 = v96;
    (*(v95 + 16))(v93, v113, v96);
    (*(v68 + 56))(v69, 0, 1, v70);
    sub_29E2BD404();
    sub_29E0BBBE8(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    v94 = xmmword_29E2CAB20;
    *(inited + 16) = xmmword_29E2CAB20;
    *(inited + 32) = sub_29E2BD664();
    *(inited + 40) = v72;
    v73 = sub_29E2BD494();
    sub_29DECE164(inited);
    swift_setDeallocating();
    sub_29DECE1D4(inited + 32);
    v73(v116, 0);
    v74 = swift_initStackObject();
    *(v74 + 16) = v94;
    *(v74 + 32) = v104;
    *(v74 + 40) = v63;
    v75 = sub_29E2BD494();
    sub_29DECE164(v74);
    swift_setDeallocating();
    sub_29DECE1D4(v74 + 32);
    v75(v116, 0);
    (*(v101 + 104))(v99, *MEMORY[0x29EDC3A08], v103);
    v76 = v98;
    sub_29E2BDA94();
    v77 = v102;
    sub_29E2BD314();
    (*(v100 + 8))(v76, v77);
    sub_29E0BB834(v87, v89);
    sub_29E2BD474();
    sub_29DEB5BF8(v106, v105);

    (*(v68 + 8))(v113, v70);
    (*(v111 + 8))(v85, v112);
    v78 = v108;
    v79 = v110;
    v80 = v109;
    (*(v108 + 32))(v110, v67, v109);
    v81 = 0;
    v82 = v79;
  }

  else
  {
    v49 = v37;
    v50 = v87;
    v51 = v105;
    v52 = v110;
    v53 = sub_29E2BC7E4();

    swift_willThrow();
    sub_29E2C04B4();
    v54 = v53;
    v55 = sub_29E2C0504();
    v56 = sub_29E2C3A14();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v116[0] = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_29DFAA104(0xD00000000000001CLL, 0x800000029E2DCF60, v116);
      *(v57 + 12) = 2080;
      v114 = v53;
      v59 = v53;
      sub_29DE96670();
      v60 = sub_29E2C3424();
      v62 = sub_29DFAA104(v60, v61, v116);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_29DE74000, v55, v56, "[%s] Failed to encode context data for submitting a feed item with error: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v58, -1, -1);
      MEMORY[0x29ED82140](v57, -1, -1);
    }

    else
    {
    }

    v50[1](v106, v51);
    v81 = 1;
    v80 = v109;
    v78 = v108;
    v82 = v52;
  }

  return (*(v78 + 56))(v82, v81, 1, v80);
}

uint64_t sub_29E0BB7D0(uint64_t a1, uint64_t a2)
{
  sub_29DF1D934(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0BB834(void *a1, char a2)
{
  if (a2)
  {
    if ([a1 predictionPrimarySource] == 3 || objc_msgSend(a1, sel_predictionPrimarySource) == 4)
    {
      if (qword_2A1A60ED8 != -1)
      {
        swift_once();
      }

      v8 = qword_2A1A67E58;
      v3 = "Highlights.OvulationConfirmation";
    }

    else
    {
      if (qword_2A1A60ED8 != -1)
      {
        swift_once();
      }

      v8 = qword_2A1A67E58;
      v3 = "Highlights.FertileWindowEstimate";
    }

    v6 = v3 - 32;
    sub_29E2BF404();
    v5 = v6 | 0x8000000000000000;
    v4 = 0xD000000000000020;
  }

  else
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A67E58;
    sub_29E2BF404();
    v4 = 0xD00000000000001BLL;
    v5 = 0x800000029E2FEAB0;
  }

  MEMORY[0x29ED7FCC0](v4, v5);
  return v8;
}

uint64_t sub_29E0BB9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E0BBA04()
{
  if (!qword_2A1A61690)
  {
    sub_29E2BD4C4();
    sub_29E2BCBB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A61690);
    }
  }
}

uint64_t sub_29E0BBA74(uint64_t a1, uint64_t a2)
{
  sub_29E0BBA04();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProjectionHighlightGenerator()
{
  result = qword_2A1A60B08;
  if (!qword_2A1A60B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0BBB4C()
{
  sub_29DF91330();
  if (v0 <= 0x3F)
  {
    sub_29E2BD594();
    if (v1 <= 0x3F)
    {
      sub_29E2BD624();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E0BBBE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E0BBC38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E0BBCAC()
{
  [*(v0 + 16) unregisterObserver_];
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25PregnancyModeOptionsModel__pregnancyModel;
  sub_29E0BC4EC(0, &qword_2A181C0A0, sub_29DF737B0, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyModeOptionsModel()
{
  result = qword_2A181C090;
  if (!qword_2A181C090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0BBDE8()
{
  sub_29E0BC4EC(319, &qword_2A181C0A0, sub_29DF737B0, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E0BBEB4(void *a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = sub_29E2C2B34();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29E2C2B54();
  v8 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E2C0514();
  v11 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    v42 = v11;
    v44 = v8;
    sub_29E2C04B4();
    v14 = a1;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A34();

    v41 = v16;
    v43 = v15;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v40 = a1;
      v18 = v17;
      v39 = swift_slowAlloc();
      v48 = v39;
      *v18 = 136315650;
      v19 = sub_29E2C4AE4();
      v21 = sub_29DFAA104(v19, v20, &v48);
      v45 = v5;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      aBlock = 0xD00000000000001FLL;
      v50 = 0x800000029E2FEB30;
      v23 = sub_29E2C3464();
      v25 = sub_29DFAA104(v23, v24, &v48);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      aBlock = v14;
      sub_29DE9408C(0, &unk_2A1A5E190);
      v26 = v14;
      v27 = sub_29E2C3464();
      v29 = sub_29DFAA104(v27, v28, &v48);
      v5 = v45;

      *(v18 + 24) = v29;
      v30 = v43;
      _os_log_impl(&dword_29DE74000, v43, v41, "[%s] %s %s", v18, 0x20u);
      v31 = v39;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      v32 = v18;
      a1 = v40;
      MEMORY[0x29ED82140](v32, -1, -1);
    }

    else
    {
    }

    (*(v42 + 8))(v13, v46);
    v8 = v44;
  }

  sub_29DE9408C(0, &qword_2A1A626C0);
  v33 = a1;
  v34 = sub_29E2C3CF4();
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  *(v35 + 24) = v33;
  v53 = sub_29E0BC4CC;
  v54 = v35;
  aBlock = MEMORY[0x29EDCA5F8];
  v50 = 1107296256;
  v51 = sub_29DF49BB8;
  v52 = &unk_2A24B9F58;
  v36 = _Block_copy(&aBlock);
  v37 = v33;

  sub_29E2C2B44();
  v48 = MEMORY[0x29EDCA190];
  sub_29DF4B3B0();
  sub_29E0BC4EC(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v10, v7, v36);
  _Block_release(v36);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v47);
}

uint64_t sub_29E0BC404(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = a2;
  return sub_29E2C1224();
}

uint64_t sub_29E0BC4D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E0BC4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E0BC550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a4;
  v88 = a2;
  v89 = a3;
  v86 = a5;
  v87 = a1;
  sub_29E0BCFF4(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v85 = &v78 - v6;
  sub_29E0BCFF4(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v84 = &v78 - v8;
  v9 = sub_29E2BD844();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v83 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E2C0514();
  v90 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v91 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v78 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v78 - v16;
  v18 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v20 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v21);
  v23 = (&v78 - v22);
  v24 = sub_29E2BE194();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E110B7C(v27);
  v28 = sub_29E2BE184();
  (*(v25 + 8))(v27, v24);
  v29 = sub_29E0BCE8C(v28);

  if (v29)
  {
    sub_29DE9408C(0, &qword_2A1A5E0D8);
    v30 = v93;
    sub_29DE93A10(v93, v23);
    v31 = sub_29E17A218(v23);
    sub_29E2C04B4();
    sub_29DE93A10(v30, v20);
    v32 = sub_29E2C0504();
    v33 = sub_29E2C3A04();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136315138;
      v82 = v14;
      v36 = v29;
      v37 = v31;
      v94 = *v20;
      v38 = v94;
      v95 = v35;
      sub_29E0BD048();
      v39 = v38;
      v40 = sub_29E2C3424();
      v42 = v41;
      sub_29DF46420(v20);
      v43 = sub_29DFAA104(v40, v42, &v95);
      v31 = v37;
      v29 = v36;
      v14 = v82;

      *(v34 + 4) = v43;
      _os_log_impl(&dword_29DE74000, v32, v33, "PluginSharableModel SharedProjectionHighlightTileViewModelContextData projection: %s", v34, 0xCu);
      sub_29DE93B3C(v35);
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    else
    {

      sub_29DF46420(v20);
    }

    isa = v90[1].isa;
    v45 = v92;
    isa(v17, v92);
    sub_29E2C04B4();
    v46 = v31;
    v47 = sub_29E2C0504();
    v48 = sub_29E2C3A04();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = [v46 hasProjection];

      _os_log_impl(&dword_29DE74000, v47, v48, "PluginSharableModel hasProjection: %{BOOL}d", v49, 8u);
      MEMORY[0x29ED82140](v49, -1, -1);
    }

    else
    {

      v47 = v46;
    }

    v50 = v91;

    isa(v14, v45);
    v51 = [v46 projection];
    if (v51)
    {
      v52 = v51;
      sub_29DE9408C(0, &qword_2A1A62790);
      v53 = v52;
      v54 = sub_29E17A408(v53);
      if (v54)
      {
        v55 = v54;
        sub_29E2C04B4();
        v56 = v55;
        v57 = sub_29E2C0504();
        v58 = sub_29E2C3A04();

        LODWORD(v82) = v58;
        v90 = v57;
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v79 = v59;
          v81 = swift_slowAlloc();
          v95 = v81;
          *v59 = 136315138;
          v60 = v56;
          v80 = v60;
          v61 = [v60 description];
          v62 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v64 = v63;

          v65 = sub_29DFAA104(v62, v64, &v95);

          v66 = v79;
          *(v79 + 1) = v65;
          v67 = v90;
          _os_log_impl(&dword_29DE74000, v90, v82, "PluginSharableModel projection: %s", v66, 0xCu);
          v68 = v81;
          sub_29DE93B3C(v81);
          MEMORY[0x29ED82140](v68, -1, -1);
          MEMORY[0x29ED82140](v66, -1, -1);

          v69 = v91;
          v70 = v92;
        }

        else
        {

          v69 = v50;
          v70 = v45;
        }

        isa(v69, v70);
      }

      else
      {
      }
    }

    if (v29 >> 62)
    {
      sub_29DE9408C(0, &qword_2A1A61DB0);
      sub_29E2BF404();
      sub_29E2C4744();
    }

    else
    {
      sub_29E2BF404();
      sub_29E2C4924();
      sub_29DE9408C(0, &qword_2A1A61DB0);
    }

    v71 = [v46 data];
    if (v71)
    {
      v72 = v71;

      sub_29E2BC924();

      sub_29E2BD744();
      v73 = v84;
      sub_29E2BCEF4();
      v74 = sub_29E2BCF04();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v75 = v85;
      sub_29E2BCC74();
      v76 = sub_29E2BCC84();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      sub_29E2BD714();

      return sub_29DF46420(v93);
    }

    __break(1u);
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E0BCE8C(unint64_t a1)
{
  v8 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_29E2C4634();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x29ED80D70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29E2C4484();
    sub_29E2C4634();
  }

  return v8;
}

void sub_29E0BCFF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E0BD048()
{
  if (!qword_2A1A5E1F8)
  {
    sub_29DE9408C(255, &qword_2A1A62790);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E1F8);
    }
  }
}

uint64_t sub_29E0BD1A0()
{
  sub_29E029468(v0 + OBJC_IVAR____TtCE24MenstrualCyclesAppPluginCSo24HKMCAdjacentFlowAnalyzer12ChangeSetDay_cycleDay);

  return swift_deallocClassInstance();
}

uint64_t _s12ChangeSetDayCMa()
{
  result = qword_2A181C108;
  if (!qword_2A181C108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0BD258()
{
  result = type metadata accessor for CycleDay();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29E0BD300(__int128 *a1)
{
  v2 = [objc_opt_self() systemFontOfSize:18.0 weight:*MEMORY[0x29EDC76E0]];
  v3 = [objc_opt_self() configurationWithFont_];

  v4 = sub_29E2C33A4();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v6 = qword_2A1A67F80;
    v7 = sub_29E2C33A4();
    v8 = [objc_opt_self() colorNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

    if (v8)
    {
      v18[3] = sub_29E2BFB34();
      v18[4] = MEMORY[0x29EDC2C28];
      sub_29DEBB7E8(v18);
      sub_29E2BE1A4();
      sub_29E2BFB24();
      v9 = sub_29E2BEA14();
      sub_29DE93B3C(v18);
      v10 = a1[7];
      v25 = a1[6];
      v26 = v10;
      v27 = a1[8];
      v28 = *(a1 + 18);
      v11 = a1[3];
      v21 = a1[2];
      v22 = v11;
      v12 = a1[5];
      v23 = a1[4];
      v24 = v12;
      v13 = a1[1];
      v19 = *a1;
      v20 = v13;
      v17[3] = sub_29E2BFC04();
      v17[4] = MEMORY[0x29EDC2C70];
      v14 = sub_29DEBB7E8(v17);
      MEMORY[0x2A1C7C4A8](v14);
      sub_29E2BFBD4();
      v15 = sub_29E2BEA14();
      sub_29DE93B3C(v17);
      sub_29E0C049C(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_29E2CD7A0;
      *(v16 + 32) = v9;
      *(v16 + 40) = v15;
      MEMORY[0x29ED7B1C0]();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E0BD618(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = sub_29E2BFB54();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29E2BE484();
  v53 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v47 - v12;
  sub_29E2C3314();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  v52 = sub_29E2C3414();
  v16 = v15;
  (*(v8 + 8))(v13, v7);
  v17 = *MEMORY[0x29EDC76E0];
  v18 = objc_opt_self();
  v19 = [v18 darkTextColor];
  v20 = objc_opt_self();
  v21 = [v20 systemFontOfSize:18.0 weight:v17];
  sub_29DE9408C(0, &qword_2A1817B10);
  v22 = sub_29E2C3E84();
  v23 = sub_29DF40374(v21, v22, v19);

  v51 = *MEMORY[0x29EDC1F60];
  v50 = *(v53 + 104);
  v24 = v54;
  v50(v54);
  v49 = sub_29E2BFA64();
  v59 = v49;
  v60 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v58);
  MEMORY[0x29ED7C240](v52, v16, v24, v23);
  v53 = sub_29E2BEA14();
  sub_29DE93B3C(v58);
  v25 = sub_29E2BE564();
  v59 = v25;
  v60 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(v58);
  sub_29E2BE574();
  v52 = sub_29E2BEA14();
  sub_29DE93B3C(v58);
  v26 = v55;
  v27 = v55[1];
  v48 = *v55;
  v28 = *MEMORY[0x29EDC7700];
  sub_29E2BF404();
  v29 = [v18 darkTextColor];
  v30 = [v20 systemFontOfSize:14.0 weight:v28];
  v31 = sub_29E2C3E84();
  v32 = sub_29DF40374(v30, v31, v29);

  (v50)(v24, v51, v57);
  v59 = v49;
  v60 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v58);
  MEMORY[0x29ED7C240](v48, v27, v24, v32);
  v33 = sub_29E2BEA14();
  sub_29DE93B3C(v58);
  v59 = v25;
  v60 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(v58);
  sub_29E2BE574();
  v34 = sub_29E2BEA14();
  sub_29DE93B3C(v58);
  v35 = sub_29E2BFB64();
  MEMORY[0x2A1C7C4A8](v35);
  *(&v47 - 2) = a1;
  *(&v47 - 1) = v26;
  sub_29E2BFB44();
  v36 = swift_allocObject();
  v37 = *(a1 + 112);
  *(v36 + 112) = *(a1 + 96);
  *(v36 + 128) = v37;
  *(v36 + 144) = *(a1 + 128);
  *(v36 + 160) = *(a1 + 144);
  v38 = *(a1 + 48);
  *(v36 + 48) = *(a1 + 32);
  *(v36 + 64) = v38;
  v39 = *(a1 + 80);
  *(v36 + 80) = *(a1 + 64);
  *(v36 + 96) = v39;
  v40 = *(a1 + 16);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v40;
  sub_29E0C0464(a1, v58);
  v41 = sub_29E2BFB74();
  v59 = v35;
  v60 = MEMORY[0x29EDC2C38];
  v58[0] = v41;
  v42 = sub_29E2BEA14();
  sub_29DE93B3C(v58);
  sub_29E0C049C(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29E2D06A0;
  v44 = v52;
  *(v43 + 32) = v53;
  *(v43 + 40) = v44;
  *(v43 + 48) = v33;
  *(v43 + 56) = v34;
  *(v43 + 64) = v42;
  v45 = MEMORY[0x29ED7B1C0]();

  return v45;
}

unint64_t sub_29E0BDD78(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v4 = sub_29E2BC5F4();
  v168 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v172 = type metadata accessor for PDFCoverPageModel.CycleSection();
  v7 = *(v172 - 8);
  MEMORY[0x2A1C7C4A8](v172);
  v9 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = sub_29E2BE234();
  v195 = v186;
  v196 = MEMORY[0x29EDC1CC0];
  v10 = sub_29DEBB7E8(&v193);
  v166 = a1;
  sub_29E0BEFB8(v10);
  v162 = sub_29E2BF3A4();
  sub_29DE93B3C(&v193);
  v167 = a2;
  v11 = *(a2 + 120);
  v12 = *(v11 + 16);
  v173 = v6;
  v174 = v4;
  v171 = v12;
  if (v12)
  {
    v13 = 0;
    v170 = (v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v14 = *MEMORY[0x29EDC76F8];
    v15 = *MEMORY[0x29EDC7638];
    v180 = *MEMORY[0x29EDC7640];
    v181 = v15;
    v179 = *MEMORY[0x29EDC7650];
    v169 = *(v7 + 72);
    v185 = xmmword_29E2CAB20;
    v178 = xmmword_29E2CFE80;
    v177 = xmmword_29E2CE0D0;
    v176 = MEMORY[0x29EDCA190];
    v182 = v9;
    do
    {
      v175 = v13;
      result = sub_29E0C0568(v170 + v169 * v13, v9, type metadata accessor for PDFCoverPageModel.CycleSection);
      v17 = *(v9 + *(v172 + 24));
      *&v184 = *(v17 + 16);
      if (v184)
      {
        v18 = 0;
        v19 = (v17 + 72);
        v20 = MEMORY[0x29EDCA190];
        *&v183 = v17;
        do
        {
          if (v18 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_60;
          }

          v188 = v20;
          v21 = *(v19 - 5);
          v22 = *(v19 - 4);
          v23 = *(v19 - 3);
          v24 = *(v19 - 2);
          v25 = *v19;
          v187 = *(v19 - 1);
          sub_29DFF9A94();
          v26 = swift_allocObject();
          *(v26 + 16) = v178;
          v189 = v18;
          if (v18)
          {
            v27 = 0;
            v28 = 0xE000000000000000;
          }

          else
          {
            v27 = *v9;
            v28 = sub_29E2BF404();
          }

          *(v26 + 32) = v27;
          *(v26 + 40) = v28;
          *(v26 + 48) = v21;
          *(v26 + 56) = v22;
          *(v26 + 64) = v23;
          *(v26 + 72) = v24;
          *(v26 + 80) = v187;
          *(v26 + 88) = v25;
          v29 = objc_opt_self();
          sub_29E2BF404();
          sub_29E2BF404();
          sub_29E2BF404();
          v30 = [v29 darkTextColor];
          v31 = [objc_opt_self() systemFontOfSize:10.0 weight:v14];
          v32 = sub_29DE9408C(0, &qword_2A1817B10);
          v33 = sub_29E2C3E84();
          sub_29DF404B0();
          inited = swift_initStackObject();
          *(inited + 16) = v177;
          v35 = v181;
          *(inited + 32) = v181;
          v36 = sub_29DE9408C(0, &unk_2A1A61A00);
          *(inited + 40) = v31;
          v37 = v180;
          *(inited + 64) = v36;
          *(inited + 72) = v37;
          v38 = sub_29DE9408C(0, &qword_2A1817FE0);
          *(inited + 80) = v30;
          v39 = v179;
          *(inited + 104) = v38;
          *(inited + 112) = v39;
          *(inited + 144) = v32;
          *(inited + 120) = v33;
          v40 = v35;
          v41 = v37;
          v42 = v39;
          sub_29E185054(inited);
          swift_setDeallocating();
          sub_29DEA0430();
          swift_arrayDestroy();
          v195 = v186;
          v196 = MEMORY[0x29EDC1CC0];
          sub_29DEBB7E8(&v193);
          sub_29E2BE244();
          v43 = sub_29E2BF3A4();
          sub_29DE93B3C(&v193);
          sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
          v44 = swift_allocObject();
          *(v44 + 16) = v185;
          *(v44 + 32) = v43;
          v45 = MEMORY[0x29ED7BB50]();

          v20 = v188;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_29E144F70(0, v20[2] + 1, 1, v20);
            v20 = result;
          }

          v9 = v182;
          v17 = v183;
          v46 = v189;
          v48 = v20[2];
          v47 = v20[3];
          if (v48 >= v47 >> 1)
          {
            result = sub_29E144F70((v47 > 1), v48 + 1, 1, v20);
            v20 = result;
          }

          v18 = v46 + 1;
          v20[2] = v48 + 1;
          v20[v48 + 4] = v45;
          v19 += 6;
        }

        while (v184 != v18);
      }

      else
      {
        v20 = MEMORY[0x29EDCA190];
      }

      v49 = MEMORY[0x29ED7BB40](v20);

      sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
      v50 = swift_allocObject();
      *(v50 + 16) = v185;
      *(v50 + 32) = v49;
      v51 = MEMORY[0x29ED7BB50]();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = sub_29E144F70(0, v176[2] + 1, 1, v176);
      }

      v6 = v173;
      v4 = v174;
      v52 = v175;
      v54 = v176[2];
      v53 = v176[3];
      if (v54 >= v53 >> 1)
      {
        v176 = sub_29E144F70((v53 > 1), v54 + 1, 1, v176);
        v52 = v175;
      }

      v55 = (v52 + 1);
      sub_29E0C050C(v9);
      v13 = v55;
      v56 = v176;
      v176[2] = v54 + 1;
      v56[v54 + 4] = v51;
    }

    while (v55 != v171);
  }

  else
  {
    v176 = MEMORY[0x29EDCA190];
  }

  v161 = MEMORY[0x29ED7BB40](v176);

  v57 = *(v167 + 128);
  v58 = MEMORY[0x29EDC1F58];
  if (*(v57 + 16))
  {
    v195 = sub_29E2BE474();
    v196 = v58;
    sub_29DEBB7E8(&v193);
    sub_29E2BE464();
    v59 = sub_29E2BF3A4();
    sub_29DE93B3C(&v193);
    v195 = v186;
    v196 = MEMORY[0x29EDC1CC0];
    v60 = sub_29DEBB7E8(&v193);
    sub_29E0BF534(v60);
    v61 = sub_29E2BF3A4();
    sub_29DE93B3C(&v193);
    sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_29E2CD7A0;
    *(v62 + 32) = v59;
    *(v62 + 40) = v61;
    MEMORY[0x29ED7BB50]();

    v160 = sub_29E2BF394();
  }

  else
  {
    v160 = sub_29E2BF394();
  }

  v63 = *(v167 + 136);
  v171 = *(v63 + 16);
  if (!v171)
  {
    *&v177 = MEMORY[0x29EDCA190];
LABEL_58:
    v155 = MEMORY[0x29ED7BB40](v177);

    sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_29E2CFE80;
    v157 = v161;
    *(v156 + 32) = v162;
    *(v156 + 40) = v157;
    *(v156 + 48) = v160;
    *(v156 + 56) = v155;
    v158 = MEMORY[0x29ED7BB50]();

    return v158;
  }

  v64 = 0;
  v170 = *(v168 + 16);
  v169 = v63 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
  v65 = *MEMORY[0x29EDC76F8];
  v188 = *MEMORY[0x29EDC7638];
  v187 = *MEMORY[0x29EDC7640];
  *&v185 = *MEMORY[0x29EDC7650];
  v168 += 16;
  v66 = *(v168 + 56);
  v166 = (v168 - 8);
  v167 = v66;
  v172 = xmmword_29E2CD7A0;
  v184 = xmmword_29E2CFE80;
  v183 = xmmword_29E2CAB20;
  v163 = xmmword_29E2CE0D0;
  *&v177 = MEMORY[0x29EDCA190];
  v165 = v57;
  while (1)
  {
    v176 = v64;
    v170(v6, v169 + v167 * v64, v4);
    if (*(v57 + 16))
    {
      v67 = sub_29E18464C(v6);
      if (v68)
      {
        v69 = *(*(v57 + 56) + 8 * v67);
        if (v69[2])
        {
          break;
        }
      }
    }

    v175 = sub_29E2BF394();
    if (*(v57 + 16))
    {
      goto LABEL_34;
    }

LABEL_49:
    v145 = sub_29E2BF394();
LABEL_51:
    sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
    v149 = swift_allocObject();
    *(v149 + 16) = v172;
    *(v149 + 32) = v175;
    *(v149 + 40) = v145;
    v150 = MEMORY[0x29ED7BB50]();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v177 = sub_29E144F70(0, *(v177 + 16) + 1, 1, v177);
    }

    v152 = *(v177 + 16);
    v151 = *(v177 + 24);
    if (v152 >= v151 >> 1)
    {
      *&v177 = sub_29E144F70((v151 > 1), v152 + 1, 1, v177);
    }

    v153 = v176 + 1;
    (*v166)(v6, v4);
    v154 = v177;
    *(v177 + 16) = v152 + 1;
    *(v154 + 8 * v152 + 32) = v150;
    v64 = v153;
    if (v153 == v171)
    {
      goto LABEL_58;
    }
  }

  v71 = v69[4];
  v70 = v69[5];
  v73 = v69[6];
  v72 = v69[7];
  v75 = v69[8];
  v74 = v69[9];
  v77 = v69[10];
  v76 = v69[11];
  sub_29DFF9A94();
  v78 = swift_allocObject();
  *(v78 + 16) = v184;
  *(v78 + 32) = v71;
  *(v78 + 40) = v70;
  *(v78 + 48) = v73;
  *(v78 + 56) = v72;
  *(v78 + 64) = v75;
  *(v78 + 72) = v74;
  *(v78 + 80) = v77;
  *(v78 + 88) = v76;
  v79 = objc_opt_self();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  v80 = [v79 darkTextColor];
  v81 = [objc_opt_self() systemFontOfSize:10.0 weight:v65];
  v82 = sub_29DE9408C(0, &qword_2A1817B10);
  v189 = sub_29E2C3E84();
  sub_29DF404B0();
  v83 = swift_initStackObject();
  *(v83 + 16) = v163;
  v84 = v188;
  *(v83 + 32) = v188;
  v85 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(v83 + 40) = v81;
  v86 = v81;
  v87 = v187;
  *(v83 + 64) = v85;
  *(v83 + 72) = v87;
  v88 = sub_29DE9408C(0, &qword_2A1817FE0);
  *(v83 + 80) = v80;
  v89 = v185;
  *(v83 + 104) = v88;
  *(v83 + 112) = v89;
  *(v83 + 144) = v82;
  v90 = v189;
  *(v83 + 120) = v189;
  v91 = v84;
  v92 = v86;
  v93 = v87;
  v94 = v80;
  v95 = v89;
  v96 = v90;
  sub_29E185054(v83);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();

  v57 = v165;
  v195 = v186;
  v196 = MEMORY[0x29EDC1CC0];
  sub_29DEBB7E8(&v193);
  v6 = v173;
  v4 = v174;
  sub_29E2BE244();
  v97 = sub_29E2BF3A4();
  sub_29DE93B3C(&v193);
  sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
  v98 = swift_allocObject();
  *(v98 + 16) = v183;
  *(v98 + 32) = v97;
  MEMORY[0x29ED7BB50]();

  v175 = sub_29E2BF394();

  if (!*(v57 + 16))
  {
    goto LABEL_49;
  }

LABEL_34:
  v99 = sub_29E18464C(v6);
  if ((v100 & 1) == 0)
  {
    goto LABEL_49;
  }

  v101 = *(*(v57 + 56) + 8 * v99);
  v102 = *(v101 + 16);
  v103 = MEMORY[0x29EDCA190];
  if (v102 < 2)
  {
LABEL_50:
    v146 = MEMORY[0x29ED7BB40](v103);

    v195 = sub_29E2BE474();
    v196 = MEMORY[0x29EDC1F58];
    sub_29DEBB7E8(&v193);
    sub_29E2BE464();
    v147 = sub_29E2BF3A4();
    sub_29DE93B3C(&v193);
    sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
    v148 = swift_allocObject();
    *(v148 + 16) = v172;
    *(v148 + 32) = v146;
    *(v148 + 40) = v147;
    MEMORY[0x29ED7BB50]();

    v145 = sub_29E2BF394();

    goto LABEL_51;
  }

  v182 = objc_opt_self();
  v181 = objc_opt_self();
  v180 = sub_29DE9408C(0, &qword_2A1817B10);
  sub_29DEA0390();
  v179 = v104;
  sub_29DFF9A94();
  *&v178 = v105;
  sub_29E2BF404();
  v106 = v102 - 1;
  v164 = v101;
  v107 = (v101 + 152);
  while (1)
  {
    v189 = v103;
    v109 = *(v107 - 5);
    v108 = *(v107 - 4);
    v110 = *(v107 - 3);
    v111 = *(v107 - 2);
    v112 = *(v107 - 1);
    v113 = *v107;
    v114 = swift_allocObject();
    *(v114 + 16) = v184;
    *(v114 + 32) = 0;
    *(v114 + 40) = 0xE000000000000000;
    *(v114 + 48) = v109;
    *(v114 + 56) = v108;
    *(v114 + 64) = v110;
    *(v114 + 72) = v111;
    *(v114 + 80) = v112;
    *(v114 + 88) = v113;
    sub_29E2BF404();
    sub_29E2BF404();
    sub_29E2BF404();
    v115 = [v182 darkTextColor];
    v116 = [v181 systemFontOfSize:10.0 weight:v65];
    v117 = v180;
    v118 = sub_29E2C3E84();
    v119 = v188;
    v190[0] = v188;
    v190[4] = sub_29DE9408C(0, &unk_2A1A61A00);
    v190[1] = v116;
    v120 = v187;
    v191[0] = v187;
    v191[4] = sub_29DE9408C(0, &qword_2A1817FE0);
    v191[1] = v115;
    v192[4] = v117;
    v121 = v185;
    v192[0] = v185;
    v192[1] = v118;
    v122 = sub_29E2C47B4();
    sub_29E0C0568(v190, &v193, sub_29DEA0430);
    v123 = v193;
    v124 = v119;
    v125 = v120;
    v126 = v121;

    result = sub_29E187A6C(v123);
    if (v127)
    {
      break;
    }

    v128 = v122 + 8;
    *(v122 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v122[6] + 8 * result) = v123;
    result = sub_29DEA049C(&v194, (v122[7] + 32 * result));
    v129 = v122[2];
    v130 = __OFADD__(v129, 1);
    v131 = v129 + 1;
    if (v130)
    {
      goto LABEL_61;
    }

    v122[2] = v131;
    sub_29E0C0568(v191, &v193, sub_29DEA0430);
    v132 = v193;
    result = sub_29E187A6C(v193);
    if (v133)
    {
      goto LABEL_62;
    }

    *(v128 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v122[6] + 8 * result) = v132;
    result = sub_29DEA049C(&v194, (v122[7] + 32 * result));
    v134 = v122[2];
    v130 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    if (v130)
    {
      goto LABEL_63;
    }

    v122[2] = v135;
    sub_29E0C0568(v192, &v193, sub_29DEA0430);
    v136 = v193;
    result = sub_29E187A6C(v193);
    if (v137)
    {
      goto LABEL_64;
    }

    *(v128 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v122[6] + 8 * result) = v136;
    result = sub_29DEA049C(&v194, (v122[7] + 32 * result));
    v138 = v122[2];
    v130 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v130)
    {
      goto LABEL_65;
    }

    v122[2] = v139;

    sub_29DEA0430();
    swift_arrayDestroy();
    v195 = v186;
    v196 = MEMORY[0x29EDC1CC0];
    sub_29DEBB7E8(&v193);
    sub_29E2BE244();
    v140 = sub_29E2BF3A4();
    sub_29DE93B3C(&v193);
    sub_29E0C049C(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
    v141 = swift_allocObject();
    *(v141 + 16) = v183;
    *(v141 + 32) = v140;
    v142 = MEMORY[0x29ED7BB50]();

    v103 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_29E144F70(0, v103[2] + 1, 1, v103);
    }

    v144 = v103[2];
    v143 = v103[3];
    if (v144 >= v143 >> 1)
    {
      v103 = sub_29E144F70((v143 > 1), v144 + 1, 1, v103);
    }

    v103[2] = v144 + 1;
    v103[v144 + 4] = v142;
    v107 += 8;
    if (!--v106)
    {

      v6 = v173;
      v4 = v174;
      v57 = v165;
      goto LABEL_50;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}