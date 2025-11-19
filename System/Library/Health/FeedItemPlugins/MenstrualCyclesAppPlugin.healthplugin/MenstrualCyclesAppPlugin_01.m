void sub_29DE95104(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_29DE951F0()
{
  sub_29DE8EDC0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29DE9524C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex);
    if (v3 > 2)
    {
      __break(1u);
      return result;
    }

    v2 = *(&unk_2A24ADCD8 + v3 + 4);
  }

  *(v1 + 32) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_29E21F33C(*MEMORY[0x29EDC3268]);
    [*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setProgesteroneTestResult_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29DE95310(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    return sub_29DF3FCE8(*(&unk_2A24ADCD8 + a2 + 4));
  }

  __break(1u);
  return result;
}

void sub_29DE95334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a1;
  v84 = a2;
  v4 = *v2;
  sub_29DE96438(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  v79 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v80 = &v74 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v78 = &v74 - v11;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v81 = [objc_allocWithZone(MEMORY[0x29EDC33D0]) initWithHealthStore_];

  v86 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
  sub_29E2C04B4();

  v17 = sub_29E2C0504();
  v18 = sub_29E2C3A34();

  LODWORD(v77) = v18;
  v19 = os_log_type_enabled(v17, v18);
  v20 = &off_29F363000;
  v85 = v3;
  v82 = v4;
  if (v19)
  {
    v75 = v12;
    v76 = v7;
    v21 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v21 = 136446978;
    v22 = sub_29E2C4AE4();
    v24 = sub_29DFAA104(v22, v23, aBlock);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = v3[2];
    if (*(v25 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength + 8))
    {
      v26 = 0;
    }

    else
    {
      v27 = *(v25 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength);
      v28 = [objc_opt_self() dayUnit];
      v26 = [objc_opt_self() quantityWithUnit:v28 doubleValue:v27];
    }

    v88 = v26;
    sub_29DE963D0();
    v29 = sub_29E2C3464();
    v31 = sub_29DFAA104(v29, v30, aBlock);

    v32 = 0;
    *(v21 + 14) = v31;
    *(v21 + 22) = 2080;
    if ((*(v25 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength + 8) & 1) == 0)
    {
      v33 = *(v25 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength);
      v34 = [objc_opt_self() dayUnit];
      v32 = [objc_opt_self() quantityWithUnit:v34 doubleValue:v33];
    }

    v88 = v32;
    v35 = sub_29E2C3464();
    v37 = sub_29DFAA104(v35, v36, aBlock);

    *(v21 + 24) = v37;
    *(v21 + 32) = 2080;
    v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
    swift_beginAccess();
    sub_29DE962B4(v25 + v38, v78);
    v39 = sub_29E2C3464();
    v41 = sub_29DFAA104(v39, v40, aBlock);

    *(v21 + 34) = v41;
    _os_log_impl(&dword_29DE74000, v17, v77, "[%{public}s] Setting onboarding completed with cycle length: %s, period length: %s, last period start: %s", v21, 0x2Au);
    v42 = v74;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v42, -1, -1);
    MEMORY[0x29ED82140](v21, -1, -1);

    (*(v13 + 8))(v15, v75);
    v3 = v85;
    v7 = v76;
    v20 = &off_29F363000;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v43 = v3[2];
  v44 = v86;
  [v86 setMenstruationNotificationsEnabled_];
  [v44 setFertileWindowNotificationsEnabled_];
  v78 = sub_29E069038();
  v79 = sub_29E069128();
  if (*(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength + 8))
  {
    v77 = 0;
  }

  else
  {
    v45 = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength);
    v46 = [objc_opt_self() dayUnit];
    v77 = [objc_opt_self() v20[271]];
  }

  v47 = v80;
  if (*(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength + 8))
  {
    v80 = 0;
  }

  else
  {
    v48 = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength);
    v49 = [objc_opt_self() dayUnit];
    v80 = [objc_opt_self() v20[271]];
  }

  v50 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  swift_beginAccess();
  sub_29DE962B4(v43 + v50, v47);
  sub_29DE962B4(v47, v7);
  v51 = sub_29E2C31A4();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v7, 1, v51) == 1)
  {
    sub_29DE96334(v47);
    v53 = 0;
    v47 = v7;
  }

  else
  {
    v54 = sub_29E2C3164();
    (*(v52 + 8))(v7, v51);
    v53 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  }

  sub_29DE96334(v47);
  LODWORD(v76) = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled);
  LODWORD(v75) = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled);
  LODWORD(v74) = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled);
  v55 = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible);
  v56 = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible);
  v57 = *(v43 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler);
  v59 = v57[5];
  v58 = v57[6];
  v60 = v57[7];
  v61 = objc_allocWithZone(MEMORY[0x29EDC33C8]);
  sub_29DE9408C(0, &qword_2A1A61D50);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v62 = sub_29E2C3604();

  v63 = sub_29E2C3604();

  BYTE3(v73) = v56;
  BYTE2(v73) = v55;
  BYTE1(v73) = v74;
  LOBYTE(v73) = v75;
  v64 = v77;
  v65 = v80;
  v66 = [v61 initWithUserEnteredCycleLength:v77 userEnteredPeriodLength:v80 userEnteredLastPeriodStartDay:v53 addedCycleFactors:v62 deletedCycleFactors:v63 menstruationProjectionsEnabled:v76 fertileWindowProjectionsEnabled:v73 deviationDetectionEnabled:v59 fertilityTrackingDisplayTypesVisible:v58 sexualActivityDisplayTypeVisible:v60 heartRateInputSupportedCountryCode:0 deviationDetectionSupportedCountryCode:0 wristTemperatureInputSupportedCountryCode:? heartRateInputEnabled:? wristTemperatureInputEnabled:?];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v67 = swift_allocObject();
  v68 = v84;
  v69 = v82;
  v70 = v83;
  v67[2] = v85;
  v67[3] = v70;
  v67[4] = v68;
  v67[5] = v69;
  aBlock[4] = sub_29DE963AC;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DFE9648;
  aBlock[3] = &unk_2A24B05F0;
  v71 = _Block_copy(aBlock);

  v72 = v81;
  [v81 setOnboardingCompletedWithInfo:v66 completion:v71];
  _Block_release(v71);
}

uint64_t sub_29DE95D4C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29DE96438(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_29E2C3734();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_29E2C3714();
  v16 = a2;

  v17 = sub_29E2C3704();
  v18 = swift_allocObject();
  v19 = MEMORY[0x29EDCA390];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = a5;
  *(v18 + 72) = a6;
  sub_29E13C63C(0, 0, v14, &unk_29E2CD1C8, v18);
}

uint64_t sub_29DE95EC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v14;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 24) = a5;
  *(v8 + 96) = a4;
  v9 = sub_29E2C0514();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  sub_29E2C3714();
  *(v8 + 88) = sub_29E2C3704();
  v11 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DE95FC8, v11, v10);
}

uint64_t sub_29DE95FC8()
{
  v26 = v0;
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = *(v0 + 40);
    sub_29DE966D4((*(v0 + 32) + 40), *(*(v0 + 32) + 64));
    sub_29E2BD884();
    sub_29E0DA4A4(1);
    v2();
  }

  else
  {
    v3 = *(v0 + 24);
    sub_29E2C04B4();
    v4 = v3;
    v5 = sub_29E2C0504();
    v6 = sub_29E2C3A14();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    if (v7)
    {
      v24 = *(v0 + 80);
      v11 = *(v0 + 24);
      v23 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446466;
      v14 = sub_29E2C4AE4();
      v16 = sub_29DFAA104(v14, v15, &v25);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v0 + 16) = v11;
      v17 = v3;
      sub_29DE96438(0, &qword_2A1A5DFD0, sub_29DE96670);
      v18 = sub_29E2C3424();
      v20 = sub_29DFAA104(v18, v19, &v25);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_29DE74000, v5, v6, "[%{public}s] Failed to set onboarding to completed with error: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);

      (*(v8 + 8))(v24, v23);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_29DE96248()
{

  sub_29DE8EDC0(v0 + 24);
  sub_29DE93B3C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_29DE962B4(uint64_t a1, uint64_t a2)
{
  sub_29DE96438(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE96334(uint64_t a1)
{
  sub_29DE96438(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE963B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DE963D0()
{
  if (!qword_2A1A5E288)
  {
    sub_29DE9408C(255, &unk_2A1A5E290);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E288);
    }
  }
}

void sub_29DE96438(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29DE9648C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29DE9657C;

  return sub_29DE95EC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29DE9657C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_29DE96670()
{
  result = qword_2A1A61C90;
  if (!qword_2A1A61C90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A61C90);
  }

  return result;
}

void *sub_29DE966D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29DE96734@<X0>(void *a1@<X8>)
{
  MEMORY[0x29ED7FCC0](*v1, v1[1]);
  sub_29E2C3794();
  result = sub_29E2C3794();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

__n128 sub_29DE967C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29DE967E8(uint64_t *a1, int a2)
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

uint64_t sub_29DE96830(uint64_t result, int a2, int a3)
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

uint64_t sub_29DE968A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  sub_29DE980C4();
  v79 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v78 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29E2C0D34();
  v76 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE981EC(0, &qword_2A1817948);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v63 = &v60 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = sub_29E2C0DE4();
  v68 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE97E04();
  v69 = v14;
  v70 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v64 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE97D34();
  v73 = v16;
  v75 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE97C20();
  v74 = v18;
  v85 = *(v18 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v72 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v83 = &v60 - v21;
  sub_29DE9794C();
  v71 = v22;
  v84 = *(v22 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v22);
  v82 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v81 = &v60 - v25;
  v61 = a1;
  v27 = a1[3];
  v26 = a1[4];
  v87 = *a1;
  sub_29DE97A14();
  sub_29DE97A64();
  sub_29DE982E0(&qword_2A1817910, sub_29DE97A14);
  sub_29DE97B34();
  v29 = v28;
  v30 = sub_29DE97BCC();
  v60 = v30;
  sub_29E2BF404();
  v92 = v11;
  v93 = &type metadata for ChartText;
  v94 = MEMORY[0x29EDB86E0];
  v95 = v30;
  v62 = MEMORY[0x29EDB8578];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = v29;
  v93 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29DE98134();
  sub_29E2C2994();
  sub_29E2C1B34();
  v92 = v27;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v92 = 0;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v92 = v26;
  sub_29E2C0CC4();

  sub_29E2C0DC4();
  sub_29E2C14D4();
  v32 = v64;
  v33 = MEMORY[0x29EDB86E0];
  sub_29E2C0C74();
  sub_29DE98188(&v92);
  (*(v68 + 8))(v13, v11);
  v34 = v66;
  sub_29E2C0D04();
  sub_29E2C2AB4();
  v86 = v61;
  v87 = v11;
  v88 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v60;
  v37 = v67;
  v38 = v69;
  sub_29E2C0C04();
  (*(v76 + 8))(v34, v77);
  (*(v70 + 8))(v32, v38);
  v39 = [objc_opt_self() systemGrayColor];
  v40 = sub_29E2C2654();
  v90 = v36;
  v91 = v40;
  v87 = v38;
  v88 = &type metadata for ChartText;
  v89 = v35;
  swift_getOpaqueTypeConformance2();
  v41 = v83;
  v42 = v73;
  sub_29E2C0C24();

  (*(v75 + 8))(v37, v42);
  v43 = *(v84 + 16);
  v44 = v82;
  v45 = v71;
  v43(v82, v81, v71);
  v46 = *(v85 + 16);
  v47 = v72;
  v48 = v41;
  v49 = v74;
  v46(v72, v48, v74);
  sub_29DE97FD0();
  v50 = v78;
  v43(v78, v44, v45);
  v51 = v79;
  v52 = *(v79 + 56);
  v53 = v49;
  v46(&v50[v52], v47, v49);
  v54 = v84;
  v55 = v80;
  (*(v84 + 32))(v80, v50, v45);
  v56 = v85;
  (*(v85 + 32))(v55 + *(v51 + 56), &v50[v52], v53);
  v57 = *(v56 + 8);
  v57(v83, v53);
  v58 = *(v54 + 8);
  v58(v81, v45);
  v57(v47, v53);
  return (v58)(v82, v45);
}

uint64_t sub_29DE9733C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_29E2C0D34();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE981EC(0, &qword_2A1817958);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29DE981EC(0, &qword_2A1817948);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v8 = sub_29E2C0DE4();
  v27 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE97B34();
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v25 = *a1;
  v24 = v15;
  v16 = a1[2];
  v17 = a1[3];
  sub_29E2C1B34();
  v37 = v16;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v37 = v17;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v37 = 0;
  sub_29E2C0CC4();

  sub_29E2C0DD4();
  v18 = v26;
  v33 = v25;
  v34 = v24;
  v35 = v16;
  v36 = v17;
  sub_29E2C0D24();
  sub_29E2C2AB4();
  v22 = sub_29DE97BCC();
  v19 = MEMORY[0x29EDB86E0];
  sub_29E2C0C04();
  (*(v30 + 8))(v18, v31);
  (*(v27 + 8))(v10, v8);
  v37 = v8;
  v38 = &type metadata for ChartText;
  v39 = v19;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v20 = v28;
  sub_29E2C0C64();
  return (*(v29 + 8))(v14, v20);
}

uint64_t sub_29DE9782C()
{
  sub_29DE978D8();
  sub_29DE97E88();
  return sub_29E2C0D64();
}

void sub_29DE978D8()
{
  if (!qword_2A18178E0)
  {
    sub_29DE9794C();
    sub_29DE97C20();
    v0 = sub_29E2C0BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18178E0);
    }
  }
}

void sub_29DE9794C()
{
  if (!qword_2A18178E8)
  {
    sub_29DE97A14();
    sub_29DE97A64();
    sub_29DE982E0(&qword_2A1817910, sub_29DE97A14);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18178E8);
    }
  }
}

void sub_29DE97A14()
{
  if (!qword_2A18178F0)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18178F0);
    }
  }
}

void sub_29DE97A64()
{
  if (!qword_2A18178F8)
  {
    sub_29DE97B34();
    sub_29E2C0DE4();
    sub_29DE97BCC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18178F8);
    }
  }
}

void sub_29DE97B34()
{
  if (!qword_2A1817900)
  {
    sub_29E2C0DE4();
    sub_29DE97BCC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1817900);
    }
  }
}

unint64_t sub_29DE97BCC()
{
  result = qword_2A1817908;
  if (!qword_2A1817908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817908);
  }

  return result;
}

void sub_29DE97C20()
{
  if (!qword_2A1817918)
  {
    sub_29DE97D34();
    sub_29DE97E04();
    sub_29E2C0DE4();
    swift_getOpaqueTypeConformance2();
    sub_29DE97BCC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1817918);
    }
  }
}

void sub_29DE97D34()
{
  if (!qword_2A1817920)
  {
    sub_29DE97E04();
    sub_29E2C0DE4();
    swift_getOpaqueTypeConformance2();
    sub_29DE97BCC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1817920);
    }
  }
}

void sub_29DE97E04()
{
  if (!qword_2A1817928)
  {
    sub_29E2C0DE4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1817928);
    }
  }
}

unint64_t sub_29DE97E88()
{
  result = qword_2A1817930;
  if (!qword_2A1817930)
  {
    sub_29DE978D8();
    sub_29DE97FD0();
    sub_29DE97D34();
    sub_29DE97E04();
    sub_29E2C0DE4();
    swift_getOpaqueTypeConformance2();
    sub_29DE97BCC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817930);
  }

  return result;
}

unint64_t sub_29DE97FD0()
{
  result = qword_2A1817938;
  if (!qword_2A1817938)
  {
    sub_29DE9794C();
    sub_29DE97B34();
    sub_29E2C0DE4();
    sub_29DE97BCC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817938);
  }

  return result;
}

void sub_29DE980C4()
{
  if (!qword_2A1817940)
  {
    sub_29DE9794C();
    sub_29DE97C20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1817940);
    }
  }
}

unint64_t sub_29DE98134()
{
  result = qword_2A1817950;
  if (!qword_2A1817950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817950);
  }

  return result;
}

uint64_t sub_29DE981DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  *a1 = *(v2 + 8);
  a1[1] = v3;
  return sub_29E2BF404();
}

void sub_29DE981EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E2C0CD4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29DE9823C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_29E2BF404();
}

uint64_t sub_29DE98248(uint64_t a1, int a2)
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

uint64_t sub_29DE98290(uint64_t result, int a2, int a3)
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

uint64_t sub_29DE982E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DE98328()
{
  if (!qword_2A1817968)
  {
    sub_29DE978D8();
    sub_29DE97E88();
    v0 = sub_29E2C0D74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817968);
    }
  }
}

id sub_29DE983A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel;
  *&v4[v9] = [objc_opt_self() unfetchedDayViewModel];
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_isFutureDay] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___fertilityProjectionReversed] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationProjectionHighReversed] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationProjectionLowReversed] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pill] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pillMask] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicator] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___logIndicator] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration];
  *v10 = xmmword_29E2CD380;
  v10[1] = xmmword_29E2CD390;
  v10[2] = xmmword_29E2CD3A0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for StaticPillView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29DE992E4();

  return v11;
}

id sub_29DE98518(void *a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel;
  *&v1[v3] = [objc_opt_self() unfetchedDayViewModel];
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_isFutureDay] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___fertilityProjectionReversed] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationProjectionHighReversed] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationProjectionLowReversed] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pill] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pillMask] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicator] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___logIndicator] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer] = 0;
  v4 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration];
  *v4 = xmmword_29E2CD380;
  v4[1] = xmmword_29E2CD390;
  v4[2] = xmmword_29E2CD3A0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for StaticPillView();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_29DE992E4();
  }

  return v6;
}

id sub_29DE986CC(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_opt_self() *a2];
    v7 = [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithPatternImage_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_29DE98774()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel;
  v3 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel] menstruationLevel];
  if (v3 <= 1)
  {
    if (v3 != 1)
    {
LABEL_7:
      v24 = 0;
      v26 = 0;
      goto LABEL_14;
    }

    v4 = sub_29DE986B8();
  }

  else if ((v3 - 2) < 2)
  {
    v4 = sub_29DE986A4();
  }

  else
  {
    if (v3 != 4)
    {
      goto LABEL_7;
    }

    v5 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_isFutureDay];
    v6 = objc_opt_self();
    if (v5 == 1)
    {
      v7 = [v6 hkmc_menstruationTimelineFutureColor];
    }

    else
    {
      v7 = [v6 hkmc_menstruationColor];
    }

    v4 = v7;
  }

  v24 = v4;
  v26 = v4;
LABEL_14:
  v8 = [v1 traitCollection];
  v9 = [v8 accessibilityContrast];

  v10 = [*&v1[v2] fertileWindowLevel];
  if ((v10 - 1) < 2)
  {
    v13 = sub_29DE98690();
  }

  else
  {
    if (v10 == 3)
    {
      v14 = [objc_opt_self() hkmc_ovulationDayCycleTimelineReversedColor];
    }

    else
    {
      if (v10)
      {
        v11 = objc_opt_self();
        v12 = &selRef_hkmc_highContrastRegularDayColor;
        if (v9 != 1)
        {
          v12 = &selRef_hkmc_regularDayColor;
        }
      }

      else
      {
        v11 = objc_opt_self();
        v12 = &selRef_hkmc_highContrastRegularDayColor;
        if (v9 != 1)
        {
          v12 = &selRef_hkmc_regularDayColor;
        }
      }

      v14 = [v11 *v12];
    }

    v13 = v14;
  }

  v15 = v13;
  v25 = v13;
  if ([*&v1[v2] bleedingInPregnancyLevel] == 1)
  {
    v16 = [objc_opt_self() hkmc_menstruationColor];

    v26 = v16;
    v24 = v16;
  }

  if ([*&v1[v2] bleedingAfterPregnancyLevel] == 1)
  {
    v17 = [objc_opt_self() hkmc_menstruationColor];

    v26 = v17;
    v24 = v17;
  }

  if (([*&v1[v2] pregnancyState] | 4) == 6)
  {
    sub_29DE9408C(0, &qword_2A1817FE0);
    v18 = sub_29E2C4064();

    v25 = v18;
    v15 = v18;
  }

  v19 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_isFutureDay];
  v20 = objc_opt_self();
  v21 = &selRef_hkmc_supplementaryDataTimelineFutureColor;
  if (!v19)
  {
    v21 = &selRef_hkmc_supplementaryDataColor;
  }

  v22 = [v20 *v21];
  v23 = objc_opt_self();
  [v23 begin];
  [v23 setDisableActions_];
  sub_29DE98AD8(v1, &v25, &v26, v22);
  [v23 commit];
}

void sub_29DE98AD8(uint64_t a1, id *a2, id *a3, void *a4)
{
  v8 = sub_29DE98FEC();
  v9 = [*a2 CGColor];
  [v8 setBackgroundColor_];

  v10 = sub_29DE990DC();
  [v10 setHidden_];

  v11 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicator);
  v12 = *a3;
  if (*a3)
  {
    v13 = v11;
    v12 = [v12 CGColor];
  }

  else
  {
    v13 = v11;
  }

  [v13 setBackgroundColor_];

  v14 = sub_29DE991C8();
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel;
  [v14 setHidden_];

  v16 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___logIndicator);
  v17 = [a4 CGColor];
  [v16 setFillColor_];

  sub_29DE98C68([*(a1 + v15) pregnancyState]);
}

void sub_29DE98C68(unint64_t a1)
{
  if (a1 > 6)
  {
    sub_29E2C4724();
    __break(1u);
    return;
  }

  v2 = v1;
  if (((1 << a1) & 0x1C) == 0)
  {
    if (((1 << a1) & 3) != 0)
    {
      v4 = sub_29DE99248();
      [v4 setLineWidth_];

      v5 = (v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer);
      [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer) setLineDashPattern_];
      v6 = &selRef_setFillColor_;
    }

    else
    {
      v18 = sub_29DE99248();
      [v18 setLineWidth_];

      v5 = (v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer);
      v19 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer);
      sub_29DE9408C(0, &qword_2A1817FE0);
      v20 = v19;
      v21 = sub_29E2C4074();
      v22 = [v21 CGColor];

      [v20 setStrokeColor_];
      v6 = &selRef_setLineDashPattern_;
    }

    [*v5 *v6];
    goto LABEL_9;
  }

  v7 = sub_29DE99248();
  sub_29DE9408C(0, &qword_2A1817FE0);
  v8 = sub_29E2C4084();
  v9 = [v8 CGColor];

  [v7 setStrokeColor_];
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer;
  [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer) setLineWidth_];
  v11 = *(v2 + v10);
  sub_29DE99B54();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CD3B0;
  sub_29DE9408C(0, &qword_2A1A5E0B0);
  v13 = v11;
  *(v12 + 32) = sub_29E2C40B4();
  *(v12 + 40) = sub_29E2C40B4();
  v14 = sub_29E2C3604();

  [v13 setLineDashPattern_];

  [*(v2 + v10) setLineCap_];
  if (a1 != 4)
  {
LABEL_9:
    v23 = sub_29DE99248();
    [v23 setFillColor_];
    goto LABEL_10;
  }

  v15 = sub_29DE99248();
  v16 = sub_29E2C4074();
  v17 = [v16 colorWithAlphaComponent_];

  v23 = [v17 CGColor];
  [v15 setFillColor_];

LABEL_10:
}

id sub_29DE99000()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pillMask;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pillMask);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pillMask);
  }

  else
  {
    v4 = [objc_opt_self() blackColor];
    v5 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
    v6 = [v4 CGColor];
    [v5 setFillColor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29DE990F0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
    v5 = [objc_opt_self() blackColor];
    v6 = [v5 CGColor];

    [v4 setFillColor_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29DE991DC(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29DE99248()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pregnancyBorderLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
    [v4 setBackgroundColor_];
    [v4 setFillColor_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29DE992E4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 layer];
  v3 = sub_29DE98FEC();
  [v2 addSublayer_];

  v4 = [v1 layer];
  v5 = sub_29DE990DC();
  [v4 addSublayer_];

  v6 = [v1 layer];
  v7 = sub_29DE991C8();
  [v6 addSublayer_];

  v8 = [v1 layer];
  v9 = sub_29DE99248();
  [v8 addSublayer_];

  v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pill];
  v11 = sub_29DE99000();
  [v10 setMask_];

  v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicator];
  v13 = sub_29DE990F0();
  [v12 setMask_];

  sub_29DE994F4();
  sub_29DE98774();
  sub_29DE9408C(0, &qword_2A181ADA0);
  sub_29E2C3D24();
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29DE994F4()
{
  v1 = sub_29DE990F0();
  v2 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration];
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 16];
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v3;
  v15.size.height = v3;
  v4 = CGPathCreateWithEllipseInRect(v15, 0);
  [v1 setFrame_];
  [v1 setPath_];

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___menstruationIndicatorMask] setAnchorPoint_];
  [*&v0[v5] setPosition_];
  [v0 frame];
  v7 = v6 - v2[5] - v2[3];
  v8 = sub_29DE991C8();
  v9 = v2[3];
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v9;
  v16.size.height = v9;
  v10 = CGPathCreateWithEllipseInRect(v16, 0);
  [v8 setFrame_];
  [v8 setPath_];

  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___logIndicator;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___logIndicator] setAnchorPoint_];
  v12 = *&v0[v11];

  return [v12 setPosition_];
}

id sub_29DE99730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticPillView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DE99854(char *a1)
{
  v2 = sub_29DE98FEC();
  [a1 bounds];
  [v2 setFrame_];

  v3 = sub_29DE99000();
  [*&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pill] frame];
  [v3 setFrame_];

  v4 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView____lazy_storage___pillMask];
  [a1 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v9 = CGRectGetWidth(v32) * 0.5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v10 = CGPathCreateWithRoundedRect(v33, v9, v9, 0);
  [v4 setPath_];

  [a1 bounds];
  v11 = v34.origin.x;
  v12 = v34.origin.y;
  v13 = v34.size.width;
  v14 = v34.size.height;
  v15 = CGRectGetWidth(v34) * 0.5;
  v35.origin.x = v11;
  v35.origin.y = v12;
  v35.size.width = v13;
  v35.size.height = v14;
  v16 = CGPathCreateWithRoundedRect(v35, v15, v15, 0);
  BoundingBox = CGPathGetBoundingBox(v16);
  v17 = BoundingBox.origin.x;
  v18 = BoundingBox.size.width;

  v19 = sub_29DE99BA8(v17);
  v23 = [objc_opt_self() bezierPathWithRoundedRect:v19 cornerRadius:{v20, v21, v22, v18 * 0.5}];
  v24 = sub_29DE99248();
  v25 = [v23 CGPath];
  [v24 setPath_];

  v26 = sub_29DE990DC();
  [a1 bounds];
  [v26 setFrame_];

  v27 = sub_29DE990F0();
  [a1 bounds];
  MidX = CGRectGetMidX(v37);
  [v27 position];
  [v27 setPosition_];

  v30 = sub_29DE991C8();
  [a1 bounds];
  v29 = CGRectGetMidX(v38);
  [v30 position];
  [v30 setPosition_];
}

void sub_29DE99B54()
{
  if (!qword_2A1A619B0)
  {
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A619B0);
    }
  }
}

uint64_t sub_29DE99BC4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_29E2C33A4();

  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    return 1;
  }

  v5 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v6 = [v5 hkmc_analyticsDebugModeEnabled];

  return v6;
}

uint64_t sub_29DE99C60(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    return 1;
  }

  sub_29E2BDEA4();
  sub_29E2BDE94();
  v2 = sub_29E2BDE84();

  return v2 & 1;
}

uint64_t sub_29DE99CC4(uint64_t a1, uint64_t a2)
{
  if ((sub_29DE99BC4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return sub_29DE99C60(a1, a2);
}

uint64_t sub_29DE99D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v75 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v69[-v9];
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v69[-v12];
  MEMORY[0x2A1C7C4A8](v14);
  v71 = &v69[-v15];
  MEMORY[0x2A1C7C4A8](v16);
  v73 = &v69[-v17];
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v69[-v19];
  v21 = sub_29E2C0514();
  v77 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v69[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v24);
  v74 = &v69[-v25];
  swift_getDynamicType();
  v76 = sub_29DE99CC4(a1, a2);
  if (v76)
  {
    v72 = v21;
    (*(a2 + 8))(a1, a2);
    v26 = sub_29E2C33A4();

    (*(a2 + 24))(a1, a2);
    sub_29DE9A5B4();
    v27 = sub_29E2C31F4();

    AnalyticsSendEvent();

    sub_29E2C04B4();
    v28 = *(v6 + 16);
    v28(v20, v3, a1);
    v28(v73, v3, a1);
    v29 = sub_29E2C0504();
    v30 = sub_29E2C3A34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v70 = v30;
      v32 = v31;
      v75 = swift_slowAlloc();
      v79 = v75;
      *v32 = 136446466;
      DynamicType = swift_getDynamicType();
      swift_getMetatypeMetadata();
      v33 = sub_29E2C3424();
      v35 = v34;
      v36 = *(v6 + 8);
      v36(v20, a1);
      v37 = sub_29DFAA104(v33, v35, &v79);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = v73;
      v28(v71, v73, a1);
      v39 = sub_29E2C3474();
      v41 = v40;
      v36(v38, a1);
      v42 = sub_29DFAA104(v39, v41, &v79);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_29DE74000, v29, v70, "[%{public}s] Submitted metric: %{public}s", v32, 0x16u);
      v43 = v75;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v43, -1, -1);
      MEMORY[0x29ED82140](v32, -1, -1);

      (*(v77 + 8))(v74, v72);
    }

    else
    {

      v66 = *(v6 + 8);
      v66(v73, a1);
      (*(v77 + 8))(v74, v72);
      v66(v20, a1);
    }
  }

  else
  {
    sub_29E2C04B4();
    v44 = *(v6 + 16);
    v44(v13, v2, a1);
    v44(v10, v2, a1);
    v44(v75, v2, a1);
    v45 = sub_29E2C0504();
    v46 = sub_29E2C3A34();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v72 = v21;
      v48 = v47;
      v74 = swift_slowAlloc();
      v79 = v74;
      *v48 = 136446722;
      DynamicType = swift_getDynamicType();
      swift_getMetatypeMetadata();
      v49 = sub_29E2C3424();
      v73 = v45;
      v50 = v49;
      v52 = v51;
      LODWORD(v71) = v46;
      v53 = *(v6 + 8);
      v53(v13, a1);
      v54 = sub_29DFAA104(v50, v52, &v79);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2082;
      swift_getDynamicType();
      v55 = sub_29DE99BC4(a1, a2);
      if (v55)
      {
        v56 = 1702195828;
      }

      else
      {
        v56 = 0x65736C6166;
      }

      if (v55)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      v53(v10, a1);
      v58 = sub_29DFAA104(v56, v57, &v79);

      *(v48 + 14) = v58;
      *(v48 + 22) = 2082;
      v59 = v75;
      swift_getDynamicType();
      v60 = sub_29DE99C60(a1, a2);
      if (v60)
      {
        v61 = 1702195828;
      }

      else
      {
        v61 = 0x65736C6166;
      }

      if (v60)
      {
        v62 = 0xE400000000000000;
      }

      else
      {
        v62 = 0xE500000000000000;
      }

      v53(v59, a1);
      v63 = sub_29DFAA104(v61, v62, &v79);

      *(v48 + 24) = v63;
      v64 = v73;
      _os_log_impl(&dword_29DE74000, v73, v71, "[%{public}s] Skipping submitting metric. isEnabled: %{public}s, isAllowed: %{public}s", v48, 0x20u);
      v65 = v74;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v65, -1, -1);
      MEMORY[0x29ED82140](v48, -1, -1);

      (*(v77 + 8))(v23, v72);
    }

    else
    {

      (*(v77 + 8))(v23, v21);
      v67 = *(v6 + 8);
      v67(v13, a1);
      v67(v10, a1);
      v67(v75, a1);
    }
  }

  return v76 & 1;
}

uint64_t sub_29DE9A548()
{
  v0 = sub_29E2C3864();
  v1 = MEMORY[0x29EDCA198];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_29E00868C(v0, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  return v1;
}

unint64_t sub_29DE9A5B4()
{
  result = qword_2A1A619F0;
  if (!qword_2A1A619F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A619F0);
  }

  return result;
}

id sub_29DE9A604(uint64_t a1, void *a2, int a3, int a4)
{
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v32[2] = a1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v32 - v10;
  sub_29E2C3314();
  v12 = *(v6 + 16);
  v37 = v6 + 16;
  v38 = v12;
  v12(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  v15 = v14;
  v32[3] = v13;
  sub_29E2C3414();
  v16 = *(v6 + 8);
  v16(v11, v5);
  v32[0] = v16;
  v32[1] = v6 + 8;
  v17 = sub_29E2C33A4();
  v18 = sub_29E2C33A4();

  v33 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  sub_29E2C3314();
  v38(v8, v11, v5);
  sub_29E2BCC74();
  sub_29E2C3414();
  v16(v11, v5);
  v19 = swift_allocObject();
  v34 &= 1u;
  *(v19 + 16) = v34;
  v35 &= 1u;
  *(v19 + 17) = v35;
  v20 = v36;
  *(v19 + 24) = v36;
  v21 = sub_29E2C33A4();

  v43 = sub_29DE9BCB0;
  v44 = v19;
  aBlock = MEMORY[0x29EDCA5F8];
  v40 = 1107296256;
  v41 = sub_29DF6E81C;
  v42 = &unk_2A24B0940;
  v22 = _Block_copy(&aBlock);

  v23 = objc_opt_self();
  v24 = [v23 actionWithTitle:v21 style:0 handler:v22];
  _Block_release(v22);

  v25 = v33;
  [v33 addAction_];

  sub_29E2C3314();
  v38(v8, v11, v5);
  sub_29E2BCC74();
  sub_29E2C3414();
  (v32[0])(v11, v5);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v34;
  *(v26 + 17) = v27;
  *(v26 + 24) = v20;
  v28 = sub_29E2C33A4();

  v43 = sub_29DE9BCBC;
  v44 = v26;
  aBlock = MEMORY[0x29EDCA5F8];
  v40 = 1107296256;
  v41 = sub_29DF6E81C;
  v42 = &unk_2A24B0990;
  v29 = _Block_copy(&aBlock);

  v30 = [v23 actionWithTitle:v28 style:1 handler:v29];
  _Block_release(v29);

  [v25 addAction_];
  return v25;
}

id sub_29DE9ABAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v30 = a1;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v29 - v8;
  v11 = v10;
  sub_29E2C3314();
  v12 = *(v11 + 16);
  v34 = v11 + 16;
  v35 = v12;
  v12(v6, v9, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  v15 = v14;
  v29[1] = v13;
  sub_29E2C3414();
  v16 = *(v11 + 8);
  v16(v9, v4);
  v17 = sub_29E2C33A4();

  v18 = [objc_opt_self() alertControllerWithTitle:0 message:v17 preferredStyle:0];
  v31 = v18;

  v19 = [v18 popoverPresentationController];
  [v19 setSourceItem_];

  sub_29E2C3314();
  v35(v6, v9, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v16(v9, v4);
  v20 = v32;

  v21 = sub_29E2C33A4();

  aBlock[4] = v33;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24B0850;
  v22 = _Block_copy(aBlock);

  v23 = objc_opt_self();
  v24 = [v23 actionWithTitle:v21 style:0 handler:v22];
  _Block_release(v22);

  sub_29E2C3314();
  v35(v6, v9, v4);
  sub_29E2BCC74();
  sub_29E2C3414();
  v16(v9, v4);
  v25 = sub_29E2C33A4();

  v26 = [v23 actionWithTitle:v25 style:1 handler:0];

  v27 = v31;
  [v31 addAction_];
  [v27 addAction_];

  return v27;
}

uint64_t sub_29DE9B080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29DE9B098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v34 = a1;
  v35 = a2;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v30 - v11;
  sub_29E2C3314();
  v36 = *(v7 + 16);
  v33 = v7 + 16;
  v36(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  v15 = v14;
  v30[1] = v13;
  v30[2] = "MINDER_CANCEL_PROMPT";
  v30[0] = v5;
  sub_29E2C3414();
  v16 = *(v7 + 8);
  v16(v12, v6);
  v17 = sub_29E2C33A4();
  v30[3] = v7 + 8;
  v18 = v17;

  v19 = [objc_opt_self() alertControllerWithTitle:0 message:v18 preferredStyle:0];
  v32 = v19;

  v20 = [v19 popoverPresentationController];
  [v20 setSourceItem_];

  sub_29E2C3314();
  v36(v9, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v16(v12, v6);
  v21 = swift_allocObject();
  *(v21 + 16) = v34;
  *(v21 + 24) = v35;

  v22 = sub_29E2C33A4();

  aBlock[4] = sub_29DE9B5DC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24B08A0;
  v23 = _Block_copy(aBlock);

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v22 style:2 handler:v23];
  _Block_release(v23);

  sub_29E2C3314();
  v36(v9, v12, v6);
  sub_29E2BCC74();
  sub_29E2C3414();
  v16(v12, v6);
  v26 = sub_29E2C33A4();

  v27 = [v24 actionWithTitle:v26 style:1 handler:0];

  v28 = v32;
  [v32 addAction_];
  [v28 addAction_];

  return v28;
}

id sub_29DE9B604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v49 = a3;
  v50 = a2;
  v47 = a1;
  v48 = sub_29E2BCFB4();
  v44 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v45 = v4;
  v46 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v40 - v13;
  sub_29E2C3314();
  v15 = v8;
  v53 = *(v9 + 16);
  v53(v11, v14, v8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  v17 = qword_2A1A67F80;
  v52 = v16;
  v18 = v17;
  sub_29E2BCC74();
  v19 = v18;
  v51 = v11;
  sub_29E2C3414();
  v20 = *(v9 + 8);
  v20(v14, v15);
  v41 = v20;
  v21 = sub_29E2C33A4();
  v42 = v9 + 8;
  v22 = v21;

  v23 = [objc_opt_self() alertControllerWithTitle:0 message:v22 preferredStyle:0];

  v24 = [v23 popoverPresentationController];
  [v24 setSourceItem_];

  sub_29E2C3314();
  v40[0] = v15;
  v53(v51, v14, v15);
  v40[1] = v7;
  sub_29E2BCC74();
  sub_29E2C3414();
  v43 = v9 + 16;
  v20(v14, v15);
  v25 = v44;
  v26 = v46;
  v27 = v48;
  (*(v44 + 16))(v46, v47, v48);
  v28 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v49;
  *(v29 + 2) = v50;
  *(v29 + 3) = v30;
  *(v29 + 4) = v23;
  (*(v25 + 32))(&v29[v28], v26, v27);
  swift_unknownObjectRetain();
  v31 = v23;
  v32 = sub_29E2C33A4();

  aBlock[4] = sub_29DE9BC10;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24B08F0;
  v33 = _Block_copy(aBlock);

  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v32 style:2 handler:v33];
  _Block_release(v33);

  sub_29E2C3314();
  v36 = v40[0];
  v53(v51, v14, v40[0]);
  sub_29E2BCC74();
  sub_29E2C3414();
  v41(v14, v36);
  v37 = sub_29E2C33A4();

  v38 = [v34 actionWithTitle:v37 style:1 handler:0];

  [v31 addAction_];
  [v31 addAction_];

  return v31;
}

uint64_t sub_29DE9BC10()
{
  v1 = sub_29E2BCFB4();
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  if (*(v0 + 2))
  {
    v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v7 = *(v0 + 3);
    v6 = *(v0 + 4);
    ObjectType = swift_getObjectType();
    return (*(v7 + 8))(v6, &v0[v5], ObjectType, v7);
  }

  return result;
}

uint64_t sub_29DE9BCC8(int a1, int a2)
{
  v25 = a2;
  v23 = a1;
  v26 = sub_29E2BF8D4();
  v2 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_29E2BF8E4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_29E2BF904();
  v9 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_29E2BDE04();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 104))(v16, *MEMORY[0x29EDC1718], v12, v14);
  sub_29E2BDDF4();
  (*(v13 + 8))(v16, v12);
  v17 = MEMORY[0x29EDC2AB8];
  if ((v23 & 1) == 0)
  {
    v17 = MEMORY[0x29EDC2AC0];
  }

  (*(v6 + 104))(v8, *v17, v5);
  (*(v2 + 104))(v4, *MEMORY[0x29EDC2AA0], v26);
  sub_29E2BF8F4();
  v18 = sub_29E2BDDE4();
  v19 = sub_29E2BDDD4();
  v27[3] = v18;
  v27[4] = MEMORY[0x29EDC1710];
  v27[0] = v19;
  sub_29DE9C32C();
  v20 = v24;
  sub_29E2BDE14();
  (*(v9 + 8))(v11, v20);
  return sub_29DE93B3C(v27);
}

uint64_t sub_29DE9C05C(char a1, int a2)
{
  v20[1] = a2;
  v3 = sub_29E2BF8D4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BF8E4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BF904();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x29EDC2AB8];
  if ((a1 & 1) == 0)
  {
    v16 = MEMORY[0x29EDC2AC0];
  }

  (*(v8 + 104))(v10, *v16, v7, v13);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC2AA8], v3);
  sub_29E2BF8F4();
  v17 = sub_29E2BDDE4();
  v18 = sub_29E2BDDD4();
  v21[3] = v17;
  v21[4] = MEMORY[0x29EDC1710];
  v21[0] = v18;
  sub_29DE9C32C();
  sub_29E2BDE14();
  (*(v12 + 8))(v15, v11);
  return sub_29DE93B3C(v21);
}

unint64_t sub_29DE9C32C()
{
  result = qword_2A18179D0;
  if (!qword_2A18179D0)
  {
    sub_29E2BF904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18179D0);
  }

  return result;
}

id sub_29DE9C384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v43 - v13;
  sub_29E2C3314();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  v51 = v16;
  v43[2] = sub_29E2C3414();
  v49 = v17;
  v18 = *(v9 + 8);
  v18(v14, v8);
  sub_29E2C3314();
  v15(v11, v14, v8);
  sub_29E2BCC74();
  v43[1] = sub_29E2C3414();
  v48 = v19;
  v52 = v18;
  v53 = v9 + 8;
  v18(v14, v8);
  v47 = v7;
  if ((a1 - 1) >= 2)
  {
    v50 = 0;
    v22 = v11;
    if (a1)
    {
      goto LABEL_8;
    }

    sub_29E2C3314();
    v15(v11, v14, v8);
    v23 = v51;
    sub_29E2BCC74();
    sub_29E2C3414();
    v50 = v24;
  }

  else
  {
    sub_29E2C3314();
    v15(v11, v14, v8);
    v20 = v51;
    sub_29E2BCC74();
    sub_29E2C3414();
    v50 = v21;
    v22 = v11;
  }

  v52(v14, v8);
LABEL_8:
  if ((v46 == 5 || v46 == 4 || v46 == 3) && (sub_29E2C3314(), v15(v22, v14, v8), v25 = v51, sub_29E2BCC74(), sub_29E2C3414(), v27 = v26, v52(v14, v8), v50) && v27)
  {
    v28 = sub_29E2C33A4();

    v29 = sub_29E2C33A4();

    v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:1];

    v31 = swift_allocObject();
    v32 = v44;
    v33 = v45;
    *(v31 + 16) = v44;
    *(v31 + 24) = v33;

    v34 = sub_29E2C33A4();

    v58 = sub_29DE9CB90;
    v59 = v31;
    aBlock = MEMORY[0x29EDCA5F8];
    v55 = 1107296256;
    v56 = sub_29DF6E81C;
    v57 = &unk_2A24B09E0;
    v35 = _Block_copy(&aBlock);

    v36 = objc_opt_self();
    v37 = [v36 actionWithTitle:v34 style:1 handler:v35];
    _Block_release(v35);

    [v30 addAction_];
    v38 = swift_allocObject();
    *(v38 + 16) = v32;
    *(v38 + 24) = v33;

    v39 = sub_29E2C33A4();

    v58 = sub_29DE9CBBC;
    v59 = v38;
    aBlock = MEMORY[0x29EDCA5F8];
    v55 = 1107296256;
    v56 = sub_29DF6E81C;
    v57 = &unk_2A24B0A30;
    v40 = _Block_copy(&aBlock);

    v41 = [v36 actionWithTitle:v39 style:2 handler:v40];
    _Block_release(v40);

    [v30 addAction_];
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_29DE9CC20(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex;
  v12 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex);
  LOBYTE(v9) = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8);
  *v11 = v8;
  *(v11 + 8) = a2 & 1;
  if (v9)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v13 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
  MEMORY[0x29ED79720](v12, 0);
  v14 = sub_29E2BCF24();
  (*(v7 + 8))(v10, v6);
  v15 = [v13 cellForRowAtIndexPath_];

  if (v15)
  {
    type metadata accessor for DataTypeLoggingCell();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      *(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = 0;
      sub_29E02D998();
    }
  }

  if ((*(v11 + 8) & 1) == 0)
  {
    v8 = *v11;
LABEL_10:
    v17 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
    MEMORY[0x29ED79720](v8, 0);
    v18 = sub_29E2BCF24();
    (*(v7 + 8))(v10, v6);
    v19 = [v17 cellForRowAtIndexPath_];

    if (v19)
    {
      type metadata accessor for DataTypeLoggingCell();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        *(v20 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = 1;
        sub_29E02D998();
      }
    }
  }
}

void sub_29DE9CE58()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  type metadata accessor for DataTypeLoggingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_29E2C33A4();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];

  [v1 setDelegate_];
  [v1 setDataSource_];
  [v1 _setSeparatorInsetIsRelativeToCellEdges_];
  [v1 _setSectionContentInsetFollowsLayoutMargins_];
  [v1 setSeparatorInsetReference_];
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v1 setTableHeaderView_];

  v5 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 32))(v0, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = [v8 heightAnchor];
      v10 = [v9 constraintGreaterThanOrEqualToConstant_];

      [v10 setActive_];
      [v1 setTableFooterView_];
    }
  }
}

void sub_29DE9D0BC()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  v2 = [v1 tableFooterView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    [v3 systemLayoutSizeFittingSize_];
    v6 = v5;
    [v3 frame];
    if (v7 != v6)
    {
      [v3 frame];
      [v3 setFrame_];
      [v1 setTableFooterView_];
    }
  }
}

void *sub_29DE9D284(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C33A4();
  v5 = sub_29E2BCF24();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for DataTypeLoggingCell();
  v7 = swift_dynamicCastClassUnconditional();
  *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_editableDaySummarySection) = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_editableDaySummarySection);
  v8 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = sub_29E2BCF64();
    v12 = (*(v9 + 16))(v2, v11, ObjectType, v9);
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = v6;
  v16 = [v7 textLabel];
  if (v16)
  {
    v17 = v16;
    if (v14)
    {
      sub_29E2BF404();
      v18 = sub_29E2C33A4();
    }

    else
    {
      v18 = 0;
    }

    [v17 setText_];
  }

  v19 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
  v20 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
  v56[4] = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
  v56[5] = v20;
  v57 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
  v21 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
  v56[0] = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
  v56[1] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
  v56[2] = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
  v56[3] = v22;
  v54 = &type metadata for LoggingCardCarouselConfiguration;
  v55 = &off_2A24BA1A8;
  v23 = swift_allocObject();
  v52 = v23;
  v24 = *(v19 + 80);
  *(v23 + 80) = *(v19 + 64);
  *(v23 + 96) = v24;
  *(v23 + 112) = *(v19 + 96);
  v25 = *(v19 + 16);
  *(v23 + 16) = *v19;
  *(v23 + 32) = v25;
  v26 = *(v19 + 48);
  *(v23 + 48) = *(v19 + 32);
  *(v23 + 64) = v26;
  sub_29DE9DC34(&v52, &v50);
  v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
  swift_beginAccess();
  sub_29DE9DC98(v56, &v46);
  sub_29DE9DC98(v56, &v46);
  sub_29DE9DCF4(&v50, v7 + v27);
  v28 = swift_endAccess();
  (*((*MEMORY[0x29EDCA1E8] & *v7) + 0x118))(v28);
  sub_29DE9DE14(v56);
  sub_29DE93B3C(&v52);
  *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = (sub_29E2BCF64() == *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex)) & ~*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8);
  sub_29E02D998();
  v46 = HKMCDisplayTypeIdentifier.loggingCardTitle.getter();
  v47 = v29;
  v52 = 32;
  v53 = 0xE100000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  v30 = sub_29DE9DE68();
  v31 = MEMORY[0x29EDC99B0];
  v44 = v30;
  v45 = v30;
  v42 = MEMORY[0x29EDC99B0];
  v43 = v30;
  v32 = sub_29E2C4374();
  v34 = v33;

  v35 = qword_2A1A60ED8;
  v36 = v15;
  if (v35 != -1)
  {
    swift_once();
  }

  v46 = qword_2A1A67E58;
  v47 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6E45646F69726550, 0xEC0000002E797274);
  MEMORY[0x29ED7FCC0](v32, v34);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v37 = 0xE000000000000000;
  if (v14)
  {
    v52 = v12;
    v53 = v14;
    v50 = 32;
    v51 = 0xE100000000000000;
    v48 = 0;
    v49 = 0xE000000000000000;
    v44 = v30;
    v45 = v30;
    v42 = v31;
    v43 = v30;
    v38 = sub_29E2C4374();
    v37 = v39;
  }

  else
  {
    v38 = 0;
  }

  MEMORY[0x29ED7FCC0](v38, v37);

  v40 = sub_29E2C33A4();

  [v7 setAccessibilityIdentifier_];

  return v7;
}

uint64_t sub_29DE9D8B4(void *a1)
{
  v3 = sub_29E2BCF24();
  [a1 deselectRowAtIndexPath:v3 animated:0];

  if ((*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8) & 1) != 0 || (v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex), v4 != sub_29E2BCF64()))
  {
    v5 = sub_29E2BCF64();
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  sub_29DE9CC20(v5, v6);
  v7 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(v1, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_29DE9DBC0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DE9DC34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29DE9DCF4(uint64_t a1, uint64_t a2)
{
  sub_29DE9DD58();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29DE9DD58()
{
  if (!qword_2A181EFA0)
  {
    sub_29DE9DDB0();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EFA0);
    }
  }
}

unint64_t sub_29DE9DDB0()
{
  result = qword_2A18179F0;
  if (!qword_2A18179F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18179F0);
  }

  return result;
}

unint64_t sub_29DE9DE68()
{
  result = qword_2A1A61E10;
  if (!qword_2A1A61E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61E10);
  }

  return result;
}

void sub_29DE9DED0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DE9408C(255, a3);
    v4 = sub_29E2C2EC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for SetupPregnancyModeFeaturesTileUserData()
{
  result = qword_2A1A5F750;
  if (!qword_2A1A5F750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DE9DF88()
{
  sub_29DE9DED0(319, &qword_2A1A5E380, &unk_2A1A5E190);
  if (v0 <= 0x3F)
  {
    sub_29DE9DED0(319, &qword_2A1A5E378, &qword_2A1A5E100);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29DE9E054()
{
  v1 = *v0;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](v1);
  return sub_29E2C4A54();
}

uint64_t sub_29DE9E09C()
{
  v1 = *v0;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](v1);
  return sub_29E2C4A54();
}

uint64_t sub_29DE9E0E0()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x636E616E67657270;
  }
}

uint64_t sub_29DE9E12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E616E67657270 && a2 == 0xEE006C65646F4D79;
  if (v6 || (sub_29E2C4914() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000029E2EBF10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E2C4914();

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

uint64_t sub_29DE9E230(uint64_t a1)
{
  v2 = sub_29DE9E918();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DE9E26C(uint64_t a1)
{
  v2 = sub_29DE9E918();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29DE9E2A8(void *a1)
{
  sub_29DE9EA88(0, &qword_2A1817AE0, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29DE966D4(a1, a1[3]);
  sub_29DE9E918();
  sub_29E2C4AA4();
  v9[15] = 0;
  sub_29DE9DED0(0, &qword_2A1A5E380, &unk_2A1A5E190);
  sub_29DE9EAEC(&qword_2A1817AE8);
  sub_29E2C48A4();
  if (!v1)
  {
    type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
    v9[14] = 1;
    sub_29DE9DED0(0, &qword_2A1A5E378, &qword_2A1A5E100);
    sub_29DE9E96C(&qword_2A1817AF0);
    sub_29E2C48A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29DE9E4C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_29DE9DED0(0, &qword_2A1A5E378, &qword_2A1A5E100);
  v26 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v22 - v5;
  sub_29DE9DED0(0, &qword_2A1A5E380, &unk_2A1A5E190);
  v30 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v28 = &v22 - v8;
  sub_29DE9EA88(0, &qword_2A1817AC0, MEMORY[0x29EDC9E80]);
  v31 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29DE9E918();
  sub_29E2C4A94();
  if (v2)
  {
    return sub_29DE93B3C(a1);
  }

  v15 = v14;
  v16 = v27;
  v33 = 0;
  sub_29DE9EAEC(&qword_2A1817AD0);
  v17 = v28;
  sub_29E2C4844();
  v18 = *(v16 + 32);
  v23 = v15;
  v18(v15, v17, v30);
  v32 = 1;
  sub_29DE9E96C(&qword_2A1817AD8);
  v19 = v26;
  sub_29E2C4844();
  (*(v29 + 8))(v11, v31);
  v20 = v23;
  (*(v24 + 32))(v23 + *(v12 + 20), v6, v19);
  sub_29DE9E9C8(v20, v25);
  sub_29DE93B3C(a1);
  return sub_29DE9EA2C(v20);
}

unint64_t sub_29DE9E918()
{
  result = qword_2A1817AC8;
  if (!qword_2A1817AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817AC8);
  }

  return result;
}

uint64_t sub_29DE9E96C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29DE9DED0(255, &qword_2A1A5E378, &qword_2A1A5E100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DE9E9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE9EA2C(uint64_t a1)
{
  v2 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DE9EA88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DE9E918();
    v7 = a3(a1, &type metadata for SetupPregnancyModeFeaturesTileUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29DE9EAEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29DE9DED0(255, &qword_2A1A5E380, &unk_2A1A5E190);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetupPregnancyModeFeaturesTileUserData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SetupPregnancyModeFeaturesTileUserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29DE9ECB8()
{
  result = qword_2A1817AF8;
  if (!qword_2A1817AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817AF8);
  }

  return result;
}

unint64_t sub_29DE9ED10()
{
  result = qword_2A1817B00;
  if (!qword_2A1817B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817B00);
  }

  return result;
}

unint64_t sub_29DE9ED68()
{
  result = qword_2A1817B08;
  if (!qword_2A1817B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817B08);
  }

  return result;
}

uint64_t sub_29DE9EDBC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29E2BC6A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BD034();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PDFLegend();
  v16 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v70 = *(a3 + 16);
  if (v70)
  {
    v19 = v18;
    v64 = sub_29DE9408C(0, &qword_2A1817B40);
    v20 = v56 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v62 = *(v16 + 72);
    v61 = *MEMORY[0x29EDB9088];
    v59 = (v13 + 8);
    v60 = (v13 + 104);
    v58 = (v9 + 16);
    v21 = 0.0;
    v65 = a1;
    v63 = a2;
    v57 = v15;
    do
    {
      v69 = v21;
      v71 = v20;
      sub_29DEA0708(v20, v19, type metadata accessor for PDFLegend);
      v68 = sub_29E2BE114();
      sub_29E2BE104();
      v22 = [a1 CGContext];
      sub_29E2BE0D4();
      v24 = v23;
      v26 = v25 + 1.0;
      v27 = v25 + 1.0 + 0.5;
      CGContextSaveGState(v22);
      v28 = *(v19 + 8);
      v72.size.height = 6.0;
      v72.origin.x = v24;
      v72.origin.y = v27;
      v72.size.width = v28;
      v67 = CGPathCreateWithRoundedRect(v72, 1.0, 1.0, 0);
      CGContextAddPath(v22, v67);
      v29 = [*v19 CGColor];
      CGContextSetFillColorWithColor(v22, v29);

      (*v60)(v15, v61, v12);
      sub_29E2C3924();
      (*v59)(v15, v12);
      CGContextRestoreGState(v22);
      CGContextSaveGState(v22);
      v30 = v12;
      v31 = v8;
      v32 = *(v66 + 24);
      v33 = *v58;
      (*v58)(v11, v19 + v32, v31);
      v34 = sub_29E2C3D54();
      [v34 drawAtPoint_];
      CGContextRestoreGState(v22);

      v35 = v19 + v32;
      v8 = v31;
      v12 = v30;
      v15 = v57;
      v33(v11, v35, v8);
      a2 = v63;
      a1 = v65;
      v36 = sub_29E2C3D54();
      sub_29E2C3D64();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_29E2BE0D4();
      v46 = v45;
      v47 = a4;
      v49 = v48;
      v73.origin.x = v38;
      v73.origin.y = v40;
      v73.size.width = v42;
      v73.size.height = v44;
      v50 = v28 + CGRectGetWidth(v73) + 3.0;
      v74.origin.x = v38;
      v74.origin.y = v40;
      v74.size.width = v42;
      v74.size.height = v44;
      Height = CGRectGetHeight(v74);

      v75.origin.x = v46;
      v75.origin.y = v49;
      v75.size.width = v50;
      v75.size.height = Height;
      Width = CGRectGetWidth(v75);

      sub_29DEA0770(v19);
      v53 = Width + v47;
      a4 = v47;
      v21 = v69 + v53;
      v20 = v71 + v62;
      --v70;
    }

    while (v70);
  }

  sub_29DE9F5D8(a4, a2, v56);
  CGRectGetHeight(v76);
  return sub_29E2BE104();
}

void sub_29DE9F310(void *a1)
{
  v2 = v1;
  v4 = sub_29E2BC6A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BD034();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 CGContext];
  sub_29E2BE0D4();
  v14 = v13;
  v16 = v15 + 1.0;
  v17 = v15 + 1.0 + 0.5;
  CGContextSaveGState(v12);
  v18 = *(v1 + 8);
  v24.size.height = 6.0;
  v24.origin.x = v14;
  v24.origin.y = v17;
  v24.size.width = v18;
  v19 = CGPathCreateWithRoundedRect(v24, 1.0, 1.0, 0);
  CGContextAddPath(v12, v19);
  v20 = [*v1 CGColor];
  CGContextSetFillColorWithColor(v12, v20);

  (*(v9 + 104))(v11, *MEMORY[0x29EDB9088], v8);
  sub_29E2C3924();
  (*(v9 + 8))(v11, v8);
  CGContextRestoreGState(v12);
  CGContextSaveGState(v12);
  sub_29DE9408C(0, &qword_2A1817B40);
  v21 = type metadata accessor for PDFLegend();
  (*(v5 + 16))(v7, v2 + *(v21 + 24), v4);
  v22 = sub_29E2C3D54();
  [v22 drawAtPoint_];
  CGContextRestoreGState(v12);
}

uint64_t sub_29DE9F5D8(double a1, uint64_t a2, uint64_t a3)
{
  v34 = sub_29E2BC6A4();
  v5 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PDFLegend();
  v8 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = a1;
  v11 = -a1;
  v12 = *(a3 + 16);
  if (v12)
  {
    sub_29DE9408C(0, &qword_2A1817B40);
    v13 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v15 = (v5 + 16);
    v36 = 0.0;
    do
    {
      sub_29DEA0708(v13, v10, type metadata accessor for PDFLegend);
      (*v15)(v7, v10 + *(v33 + 24), v34);
      v16 = sub_29E2C3D54();
      sub_29E2C3D64();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      sub_29E2BE0D4();
      v26 = v25;
      v28 = v27;
      v37.origin.x = v18;
      v37.origin.y = v20;
      v37.size.width = v22;
      v37.size.height = v24;
      v29 = CGRectGetWidth(v37) + v10[1] + 3.0;
      v38.origin.x = v18;
      v38.origin.y = v20;
      v38.size.width = v22;
      v38.size.height = v24;
      Height = CGRectGetHeight(v38);

      v39.origin.x = v26;
      v39.origin.y = v28;
      v39.size.width = v29;
      v39.size.height = Height;
      Width = CGRectGetWidth(v39);
      v40.origin.x = v26;
      v40.origin.y = v28;
      v40.size.width = v29;
      v40.size.height = Height;
      if (v36 < CGRectGetHeight(v40))
      {
        v41.origin.x = v26;
        v41.origin.y = v28;
        v41.size.width = v29;
        v41.size.height = Height;
        v36 = CGRectGetHeight(v41);
      }

      v11 = v11 + Width + v35;
      sub_29DEA0770(v10);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v36 = 0.0;
  }

  return sub_29E2BE0D4();
}

uint64_t sub_29DE9F8F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29DEA0814();
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29DE9F99C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

double sub_29DE9FAA0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_29E2BC6A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1817B40);
  (*(v6 + 16))(v8, v4 + *(a2 + 24), v5);
  v9 = sub_29E2C3D54();
  sub_29E2C3D64();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_29E2BE0D4();
  v19 = v18;
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  CGRectGetWidth(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  CGRectGetHeight(v23);

  return v19;
}

uint64_t sub_29DE9FC44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29DEA07CC(&qword_2A1817B48, type metadata accessor for PDFLegend);
  *v3 = v1;
  v3[1] = sub_29DEA0870;

  return MEMORY[0x2A1C61D30](a1, v4);
}

void sub_29DE9FD20(uint64_t a1)
{
  v60 = type metadata accessor for PDFLegend();
  v59 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 16);
  if (v4)
  {
    v69 = MEMORY[0x29EDCA190];
    sub_29E180FF4(0, v4, 0);
    v5 = v69;
    v58 = objc_opt_self();
    v6 = *MEMORY[0x29EDC7700];
    v57 = sub_29DE9408C(0, &qword_2A1817B10);
    v56 = *MEMORY[0x29EDC7638];
    v55 = *MEMORY[0x29EDC7640];
    v54 = *MEMORY[0x29EDC7650];
    sub_29DEA0390();
    v53 = v7;
    v8 = 0;
    v9 = a1 + 56;
    v52 = a1;
    v51 = v3;
    v50 = v4;
    while (v8 < *(a1 + 16))
    {
      v63 = v5;
      v10 = *(v9 - 24);
      v11 = *(v9 - 16);
      v61 = *(v9 - 8);
      *v3 = v10;
      v3[1] = v11;
      v62 = v10;
      sub_29E2BF404();
      v12 = [v58 systemFontOfSize:6.0 weight:v6];
      v13 = sub_29E2BE1E4();
      v14 = v57;
      v15 = sub_29E2C3E84();
      v16 = v56;
      v66[0] = v56;
      v17 = sub_29DE9408C(0, &unk_2A1A61A00);
      v66[1] = v12;
      v18 = v55;
      v66[4] = v17;
      v67[0] = v55;
      v19 = sub_29DE9408C(0, &qword_2A1817FE0);
      v67[1] = v13;
      v68[4] = v14;
      v20 = v54;
      v67[4] = v19;
      v68[0] = v54;
      v68[1] = v15;
      v21 = sub_29E2C47B4();
      v22 = v16;
      v23 = v12;
      v24 = v18;
      v25 = v13;
      v26 = v20;
      v27 = v15;
      sub_29DEA0708(v66, &v64, sub_29DEA0430);
      v28 = v64;
      v29 = sub_29E187A6C(v64);
      if (v30)
      {
        goto LABEL_15;
      }

      v31 = v21 + 8;
      *(v21 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
      *(v21[6] + 8 * v29) = v28;
      sub_29DEA049C(v65, (v21[7] + 32 * v29));
      v32 = v21[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      v21[2] = v34;
      sub_29DEA0708(v67, &v64, sub_29DEA0430);
      v35 = v64;
      v36 = sub_29E187A6C(v64);
      if (v37)
      {
        goto LABEL_15;
      }

      *(v31 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(v21[6] + 8 * v36) = v35;
      sub_29DEA049C(v65, (v21[7] + 32 * v36));
      v38 = v21[2];
      v33 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      v21[2] = v39;
      sub_29DEA0708(v68, &v64, sub_29DEA0430);
      v40 = v64;
      v41 = sub_29E187A6C(v64);
      if (v42)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        break;
      }

      *(v31 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      *(v21[6] + 8 * v41) = v40;
      sub_29DEA049C(v65, (v21[7] + 32 * v41));
      v43 = v21[2];
      v33 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      v21[2] = v44;
      sub_29DEA0430();
      swift_arrayDestroy();

      v45 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v46 = sub_29E2C33A4();
      type metadata accessor for Key(0);
      sub_29DEA07CC(&qword_2A18177F0, type metadata accessor for Key);
      v47 = sub_29E2C31F4();

      [v45 initWithString:v46 attributes:v47];

      v3 = v51;
      sub_29E2BC6D4();

      v5 = v63;
      v69 = v63;
      v49 = *(v63 + 16);
      v48 = *(v63 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_29E180FF4(v48 > 1, v49 + 1, 1);
        v5 = v69;
      }

      ++v8;
      *(v5 + 16) = v49 + 1;
      sub_29DEA04AC(v3, v5 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49);
      v9 += 32;
      a1 = v52;
      if (v50 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t type metadata accessor for PDFLegend()
{
  result = qword_2A1817B20;
  if (!qword_2A1817B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEA0390()
{
  if (!qword_2A1817B18)
  {
    type metadata accessor for Key(255);
    sub_29DEA07CC(&qword_2A18177F0, type metadata accessor for Key);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817B18);
    }
  }
}

void sub_29DEA0430()
{
  if (!qword_2A181CDD0)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181CDD0);
    }
  }
}

_OWORD *sub_29DEA049C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29DEA04AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFLegend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEA0538()
{
  result = sub_29DE9408C(319, &qword_2A1817FE0);
  if (v1 <= 0x3F)
  {
    result = sub_29E2BC6A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29DEA05D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29DEA061C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29DEA06B4()
{
  result = qword_2A1817B38;
  if (!qword_2A1817B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817B38);
  }

  return result;
}

uint64_t sub_29DEA0708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DEA0770(uint64_t a1)
{
  v2 = type metadata accessor for PDFLegend();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DEA07CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DEA0814()
{
  result = qword_2A1817B50[0];
  if (!qword_2A1817B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1817B50);
  }

  return result;
}

uint64_t sub_29DEA087C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_29DEA08D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 3;
  v7 = *(v4 + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 4)
        {
          return v18 - 3;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_29DEA0AAC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 3;
  if (v6 <= 2)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 3) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_29DEA0D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = *(a3 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  v8 = type metadata accessor for Determined();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v30 = &v26 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2);
  v15 = &v26 - v14;
  v16 = *(v13 + 48);
  v29 = v9;
  v17 = *(v9 + 16);
  v17(&v26 - v14, a1, v8);
  v17(&v15[v16], v31, v8);
  v31 = v5;
  v18 = *(v5 + 48);
  v19 = v18(v15, 3, a3);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      if (v18(&v15[v16], 3, a3) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v18(&v15[v16], 3, a3) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_12;
  }

  if (!v19)
  {
    v17(v30, v15, v8);
    if (!v18(&v15[v16], 3, a3))
    {
      v22 = v31;
      v23 = v27;
      (*(v31 + 32))(v27, &v15[v16], a3);
      v24 = v30;
      v20 = sub_29E2C3304();
      v25 = *(v22 + 8);
      v25(v23, a3);
      v25(v24, a3);
      v12 = v29;
      goto LABEL_12;
    }

    (*(v31 + 8))(v30, a3);
    goto LABEL_11;
  }

  if (v18(&v15[v16], 3, a3) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20 = 1;
  v12 = v29;
LABEL_12:
  (*(v12 + 8))(v15, v8);
  return v20 & 1;
}

uint64_t type metadata accessor for DeviationsCalendarViewController()
{
  result = qword_2A1817C08;
  if (!qword_2A1817C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEA114C()
{
  sub_29DEA6AB4(319, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29DEA6AB4(319, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

BOOL sub_29DEA12B0()
{
  if (*(v0[2] + 16))
  {
    return 1;
  }

  if (*(v0[3] + 16))
  {
    return 1;
  }

  if (*(v0[7] + 16))
  {
    return 1;
  }

  return *(v0[8] + 16) != 0;
}

id sub_29DEA1300()
{
  v1 = qword_2A1817C00;
  v2 = *&v0[qword_2A1817C00];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_29DEA1370(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_29DEA6E70(v4);
  }

  sub_29DEA6E80(v2);
  return v3;
}

id sub_29DEA1370(void *a1)
{
  result = [a1 collectionView];
  if (result)
  {
    v2 = result;
    v3 = sub_29E2C33A4();
    v4 = [v2 _visibleDecorationViewsOfKind_];

    if (v4)
    {
      v5 = sub_29E2C3614();

      if (*(v5 + 16))
      {
        sub_29DEA6E90(v5 + 32, v7);

        type metadata accessor for CalendarLogOverlayView();
        if (swift_dynamicCast())
        {
          *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_delegate + 8) = &off_2A24B0C80;
          swift_unknownObjectWeakAssign();
          return v6;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29DEA14A4(uint64_t a1)
{
  v2 = qword_2A1817BF0;
  v3 = sub_29E2BCFB4();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  v4 = qword_2A1817BF8;
  v5 = sub_29E2BCBB4();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + qword_2A1817C00) = 1;
  sub_29E2C4724();
  __break(1u);
}

void sub_29DEA15AC()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_29DEA172C();
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x29EDC7940]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_cancelButtonTapped];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v3 action:sel_doneButtonTapped];

  [v5 setRightBarButtonItem_];
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = sub_29E2C2DB4();
    [v8 setDataSource_];

    sub_29DEA1954();
  }

  else
  {
    __break(1u);
  }
}

void sub_29DEA172C()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  sub_29E2C2DA4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = *MEMORY[0x29EDC8048];
  sub_29E2C2D94();
  v6 = sub_29E2C33A4();

  [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v5 withReuseIdentifier:v6];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  type metadata accessor for CalendarSpacerCell();
  v9 = swift_getObjCClassFromMetadata();
  v10 = sub_29E2C33A4();
  [v8 registerClass:v9 forCellWithReuseIdentifier:v10];

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  type metadata accessor for DeviationCalendarCell();
  v13 = swift_getObjCClassFromMetadata();
  v14 = sub_29E2C33A4();
  [v12 registerClass:v13 forCellWithReuseIdentifier:v14];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for CalendarFutureCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = sub_29E2C33A4();
  [v16 registerClass:v17 forCellWithReuseIdentifier:v18];
}

void sub_29DEA1954()
{
  [v0 setClearsSelectionOnViewWillAppear_];
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 setShowsVerticalScrollIndicator_];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (HKUICalendarLocaleIsRightToLeft())
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  [v7 setSemanticContentAttribute_];
}

void sub_29DEA1A80(void *a1)
{
  v1 = a1;
  sub_29DEA15AC();
}

id sub_29DEA1AC8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCFB4();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDB9BC8];
  sub_29DEA6AB4(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v22 - v10;
  v12 = sub_29E2BCBB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_viewDidLayoutSubviews);
  v16 = qword_2A1817BF8;
  swift_beginAccess();
  sub_29DEA6BC4(v0 + v16, v11, &unk_2A1A62850, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_29DEA6C44(v11, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  }

  (*(v13 + 32))(v15, v11, v12);
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = result;
  v19 = v0;
  result = sub_29E2C2DB4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v20 = result;
  sub_29E2C2D54();

  v21 = sub_29E2BCF24();
  (*(v22 + 8))(v4, v23);
  [v18 scrollToItemAtIndexPath:v21 atScrollPosition:2 animated:0];

  (*(v13 + 56))(v9, 1, 1, v12);
  swift_beginAccess();
  sub_29DEA6DF0(v9, v19 + v16, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  swift_endAccess();
  sub_29DEA1E6C();
  return (*(v13 + 8))(v15, v12);
}

void sub_29DEA1E6C()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v26[-v8];
  v10 = sub_29E2C2DE4();
  sub_29E2C2C14();

  v11 = [v1 navigationItem];
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v27.origin.x = v16;
    v27.origin.y = v18;
    v27.size.width = v20;
    v27.size.height = v22;
    CGRectGetWidth(v27);
    v23 = objc_allocWithZone(sub_29E2C2E64());
    v24 = sub_29E2C2E54();
    [v24 layoutMargins];
    [v24 setLayoutMargins_];
    [v24 layoutMargins];
    [v24 setLayoutMargins_];
    v25 = [objc_allocWithZone(MEMORY[0x29EDC7E48]) initWithContentView_];

    [v11 _setBottomPalette_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29DEA21B4(void *a1)
{
  v1 = a1;
  sub_29DEA1AC8();
}

void sub_29DEA21FC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v13.receiver = v4;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v8 = [v4 collectionViewLayout];
  [v8 invalidateLayout];

  v9 = sub_29E2C2DE4();
  sub_29E2C2C14();

  v10 = [v4 navigationItem];
  v11 = [v10 _bottomPalette];

  if (v11)
  {
    v12 = [v11 contentView];

    if (v12)
    {
      [v12 layoutMargins];
      [v12 setLayoutMargins_];
      [v12 layoutMargins];
      [v12 setLayoutMargins_];
    }
  }
}

void sub_29DEA2350(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_29DEA21FC(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_29DEA23D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Exiting period/spotting calendar editing", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_29DEA259C(void *a1)
{
  v1 = a1;
  sub_29DEA23D0();
}

id sub_29DEA25E4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v20[0] = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Done editing period and spotting", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *&v1[qword_2A18409A8];
  v14 = &v1[qword_2A1817BD8];
  swift_beginAccess();
  v15 = *(v14 + 3);
  v20[2] = *(v14 + 2);
  v20[3] = v15;
  v20[4] = *(v14 + 4);
  v16 = *(v14 + 1);
  v20[0] = *v14;
  v20[1] = v16;

  sub_29DEA6EEC(v20, v19);
  v13(v20);
  sub_29DEA6F24(v20);

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_29DEA2830(void *a1)
{
  v1 = a1;
  sub_29DEA25E4();
}

uint64_t sub_29DEA2878(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v63 = a2;
  v7 = sub_29E2BCFB4();
  v61 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA6D14();
  v60 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA6AB4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v62 = &v56 - v15;
  v16 = sub_29E2C31A4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CycleDay();
  result = MEMORY[0x2A1C7C4A8](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day);
  v25 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 16);
  if (v25)
  {
    v57 = a1;
    v58 = a3;
    v27 = v24[4];
    v26 = v24[5];
    v28 = v24[3];
    v29 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 8);
    v64[0] = *v24;
    v64[1] = v29;
    v64[2] = v25;
    v64[3] = v28;
    v64[4] = v27;
    v64[5] = v26;
    LOBYTE(v65) = v64[0];
    *(&v65 + 1) = v29;
    *&v66 = v25;
    WORD4(v66) = v28 & 0x101;
    BYTE10(v66) = BYTE2(v28);
    *&v67 = v27;
    *(&v67 + 1) = v26;
    sub_29DEA6950(v64, v68);
    result = sub_29E2C2DB4();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = result;
    sub_29E2C2D44();

    v31 = [*(v4 + qword_2A1817BE0) dayViewModelAtIndex_];
    (*(v17 + 32))(v23, v19, v16);
    *&v23[*(v20 + 20)] = v31;
    v32 = (v4 + qword_2A1817BD8);
    swift_beginAccess();
    v33 = v32[2];
    v34 = v32[3];

    sub_29E2BF404();
    sub_29E2BF404();
    swift_getAtKeyPath();
    if (LOBYTE(v68[0]) == 1)
    {
      v35 = sub_29E091D88(v23, v34);

      v36 = v35 ^ 1;
    }

    else
    {
      v36 = sub_29E091D88(v23, v33);
    }

    v37 = v62;

    BYTE8(v66) = v36 & 1;
    v38 = v32[7];
    v39 = v32[8];

    sub_29E2BF404();
    sub_29E2BF404();
    swift_getAtKeyPath();
    v40 = v61;
    if (LOBYTE(v68[0]) == 1)
    {
      v41 = sub_29E091D88(v23, v39);

      v42 = v41 ^ 1;
    }

    else
    {
      v42 = sub_29E091D88(v23, v38);
    }

    BYTE10(v66) = v42 & 1;
    sub_29E224528();
    (*(v40 + 16))(v37, v63, v7);
    (*(v40 + 56))(v37, 0, 1, v7);
    v43 = qword_2A1817BF0;
    swift_beginAccess();
    v44 = *(v60 + 48);
    v45 = MEMORY[0x29EDB9D70];
    sub_29DEA6BC4(v37, v11, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    sub_29DEA6BC4(v4 + v43, &v11[v44], &unk_2A1A61BA0, v45);
    v46 = *(v40 + 48);
    if (v46(v11, 1, v7) == 1)
    {
      sub_29DEA6C44(v37, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      v47 = v46(&v11[v44], 1, v7);
      v48 = v58;
      v49 = v57;
      if (v47 == 1)
      {
        sub_29DEA6C44(v11, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        v50 = 1;
LABEL_16:
        BYTE9(v66) = v50 & 1;
        v68[1] = v66;
        v68[2] = v67;
        v68[0] = v65;
        (*((*MEMORY[0x29EDCA1E8] & *v49) + 0x118))(v68, v48 & 1);
        sub_29DEA69AC(v68);
        return sub_29DEA6CB4(v23, type metadata accessor for CycleDay);
      }
    }

    else
    {
      v51 = v59;
      sub_29DEA6BC4(v11, v59, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      if (v46(&v11[v44], 1, v7) != 1)
      {
        v52 = &v11[v44];
        v53 = v56;
        (*(v40 + 32))(v56, v52, v7);
        sub_29DEA6DA8(&unk_2A181DBB0, MEMORY[0x29EDB9D70]);
        v50 = sub_29E2C3304();
        v54 = *(v40 + 8);
        v54(v53, v7);
        v55 = MEMORY[0x29EDB9D70];
        sub_29DEA6C44(v37, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        v54(v51, v7);
        sub_29DEA6C44(v11, &unk_2A1A61BA0, v55);
        v48 = v58;
        v49 = v57;
        goto LABEL_16;
      }

      sub_29DEA6C44(v37, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      (*(v40 + 8))(v51, v7);
      v48 = v58;
      v49 = v57;
    }

    sub_29DEA6CB4(v11, sub_29DEA6D14);
    v50 = 0;
    goto LABEL_16;
  }

  return result;
}

void sub_29DEA30EC()
{
  v1 = v0;
  v2 = sub_29E2C31A4();
  v53 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v51);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA6AB4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v49 - v13;
  v15 = sub_29DEA1300();
  if (v15)
  {
    v16 = v15;
    v50 = v2;
    v17 = qword_2A1817BF0;
    swift_beginAccess();
    v18 = v8;
    v19 = v6;
    v20 = v5;
    v21 = MEMORY[0x29EDB9D70];
    sub_29DEA6BC4(v1 + v17, v14, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    v22 = (*(v19 + 48))(v14, 1, v20) != 1;
    sub_29DEA6C44(v14, &unk_2A1A61BA0, v21);
    [*(*&v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setUserInteractionEnabled_];
    v5 = v20;
    v6 = v19;
    v8 = v18;
    v23 = v22;
    v2 = v50;
    [*(*&v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setUserInteractionEnabled_];
  }

  v24 = qword_2A1817BF0;
  swift_beginAccess();
  sub_29DEA6BC4(v1 + v24, v12, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_29DEA6C44(v12, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    v25 = *(v1 + qword_2A1817C00);
    if (!v25)
    {
      return;
    }

    v26 = *&v25[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle];
    *(v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) = 0;
    v27 = *(v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton);
    v28 = v25;
    [v27 setNeedsUpdateConfiguration];
    v29 = *&v28[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle];
    *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) = 0;
    [*(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setNeedsUpdateConfiguration];
    v30 = v25;
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    v31 = sub_29E2C2DB4();
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = v52;
    sub_29E2C2D44();

    v34 = [*(v1 + qword_2A1817BE0) dayViewModelAtIndex_];
    v35 = v54;
    (*(v53 + 32))(v54, v33, v2);
    *(v35 + *(v51 + 20)) = v34;
    v36 = *(v1 + qword_2A1817C00);
    if (!v36)
    {
      sub_29DEA6CB4(v35, type metadata accessor for CycleDay);
      (*(v6 + 8))(v8, v5);
      return;
    }

    v37 = v8;
    v53 = v5;
    v38 = (v1 + qword_2A1817BD8);
    swift_beginAccess();
    v39 = v38[2];
    v40 = v38[3];
    sub_29DEA6E80(v36);

    sub_29E2BF404();
    sub_29E2BF404();
    swift_getAtKeyPath();
    if (v55 == 1)
    {
      v41 = sub_29E091D88(v35, v40);

      v42 = v41 ^ 1;
    }

    else
    {
      v42 = sub_29E091D88(v35, v39);
    }

    v43 = v38[7];
    v44 = v38[8];

    sub_29E2BF404();
    sub_29E2BF404();
    swift_getAtKeyPath();
    if (v55 == 1)
    {
      v45 = sub_29E091D88(v35, v44);

      v46 = v45 ^ 1;
    }

    else
    {
      v46 = sub_29E091D88(v35, v43);
    }

    v47 = *&v36[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle];
    *(v47 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) = v42 & 1;
    [*(v47 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setNeedsUpdateConfiguration];
    v48 = *&v36[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle];
    *(v48 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_isChecked) = v46 & 1;
    [*(v48 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_61BF7A68BF04E2E624D5FFBA5D55F26621ToggleButtonWithLabel_toggleButton) setNeedsUpdateConfiguration];
    sub_29DEA6CB4(v35, type metadata accessor for CycleDay);
    (*(v6 + 8))(v37, v53);
    v30 = v36;
  }

  sub_29DEA6E70(v30);
}

uint64_t sub_29DEA37DC()
{
  v1 = v0;
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2C2DB4();
  if (result)
  {
    v10 = result;
    sub_29E2C2D44();

    v11 = [*(v1 + qword_2A1817BE0) dayViewModelAtIndex_];
    (*(v3 + 32))(v8, v5, v2);
    *&v8[*(v6 + 20)] = v11;
    swift_beginAccess();
    sub_29E0EF0BC(v8);
    swift_endAccess();
    return sub_29DEA6CB4(v8, type metadata accessor for CycleDay);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29DEA3A08()
{

  sub_29DEA6C44(v0 + qword_2A1817BF0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  sub_29DEA6C44(v0 + qword_2A1817BF8, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);

  v1 = *(v0 + qword_2A1817C00);

  sub_29DEA6E70(v1);
}

void sub_29DEA3B24(uint64_t a1)
{

  sub_29DEA6C44(a1 + qword_2A1817BF0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  sub_29DEA6C44(a1 + qword_2A1817BF8, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);

  v2 = *(a1 + qword_2A1817C00);

  sub_29DEA6E70(v2);
}

uint64_t sub_29DEA3C4C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  type metadata accessor for CalendarDayCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a4;
    v13 = a1;
    sub_29DEA2878(v11, v9, 0);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29DEA3D68(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCF24();
  v12 = [a1 cellForItemAtIndexPath_];

  if (v12)
  {
    type metadata accessor for CalendarDayCell();
    v13 = swift_dynamicCastClass();
    if (!v13 || *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 16) && (sub_29E2BFC24() & 1) != 0)
    {
    }

    else
    {
      result = sub_29E2C2DB4();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      sub_29E2C2D44();

      v16 = [*(v2 + qword_2A1817BE0) dayViewModelAtIndex_];
      (*(v5 + 32))(v10, v7, v4);
      *&v10[*(v8 + 20)] = v16;
      v17 = v16;
      sub_29DEA6CB4(v10, type metadata accessor for CycleDay);
      LOBYTE(v16) = [v17 isFetched];

      if (v16)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_29DEA3FC0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_29DEA3D68(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_29DEA40C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v38 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA6AB4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = v35 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = v35 - v16;
  v18 = sub_29E2BCF24();
  v19 = [a1 cellForItemAtIndexPath_];

  if (v19)
  {
    v20 = type metadata accessor for DeviationCalendarCell();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v35[1] = v20;
      v36 = v21;
      v37 = a1;
      v39 = v7;
      v22 = qword_2A1817BF0;
      swift_beginAccess();
      v23 = MEMORY[0x29EDB9D70];
      sub_29DEA6BC4(v3 + v22, v17, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      (*(v39 + 16))(v15, a2, v6);
      (*(v39 + 56))(v15, 0, 1, v6);
      swift_beginAccess();
      v24 = v3 + v22;
      v25 = v39;
      sub_29DEA6DF0(v15, v24, &unk_2A1A61BA0, v23);
      swift_endAccess();
      sub_29DEA6BC4(v17, v12, &unk_2A1A61BA0, v23);
      if ((*(v25 + 48))(v12, 1, v6) == 1)
      {
        sub_29DEA6C44(v12, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
        v26 = v37;
      }

      else
      {
        v28 = v38;
        (*(v25 + 32))(v38, v12, v6);
        sub_29DEA6DA8(&unk_2A181DBB0, MEMORY[0x29EDB9D70]);
        v29 = sub_29E2C3304();
        v30 = v25;
        v26 = v37;
        if ((v29 & 1) == 0)
        {
          v31 = sub_29E2BCF24();
          v32 = [v26 cellForItemAtIndexPath_];

          if (v32)
          {
            v33 = swift_dynamicCastClass();
            if (v33)
            {
              sub_29DEA2878(v33, v28, 1);
            }
          }

          v30 = v39;
        }

        (*(v30 + 8))(v28, v6);
      }

      sub_29DEA37DC();
      sub_29DEA2878(v36, a2, 1);
      sub_29DEA30EC();

      sub_29DEA6C44(v17, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      v34 = sub_29E2BCF24();
      [v26 deselectItemAtIndexPath:v34 animated:1];

      return;
    }
  }

  v39 = sub_29E2BCF24();
  [a1 deselectItemAtIndexPath:v39 animated:1];
  v27 = v39;
}

uint64_t sub_29DEA4588(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = a1;
  sub_29DEA40C4(v9, v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_29DEA4684(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29DEA62D8();
}

id sub_29DEA46F8(uint64_t a1, void *a2)
{
  v3 = sub_29E2C33A4();
  v4 = sub_29E2BCF24();
  v5 = [a2 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:v4];

  return v5;
}

id sub_29DEA4790(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_29E2C31A4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v24);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDB9D70];
  sub_29DEA6AB4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_29E2BCFB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_2A1817BF0;
  swift_beginAccess();
  sub_29DEA6BC4(&v2[v16], v11, &unk_2A1A61BA0, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_29DEA6C44(v11, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  (*(v13 + 32))(v15, v11, v12);
  result = sub_29E2C2DB4();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  sub_29E2C2D44();

  v19 = [*&v2[qword_2A1817BE0] dayViewModelAtIndex_];
  (*(v25 + 32))(v7, v5, v26);
  *&v7[*(v24 + 20)] = v19;
  swift_beginAccess();
  sub_29E0EF2DC(v27 & 1, v7);
  swift_endAccess();
  result = [v2 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_29E2BCF24();
  v22 = [v20 cellForItemAtIndexPath_];

  if (v22)
  {
    type metadata accessor for DeviationCalendarCell();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      sub_29DEA2878(v23, v15, 1);
    }
  }

  sub_29DEA6CB4(v7, type metadata accessor for CycleDay);
  return (*(v13 + 8))(v15, v12);
}

id sub_29DEA4BA0(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_29E2C31A4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v24);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDB9D70];
  sub_29DEA6AB4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_29E2BCFB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_2A1817BF0;
  swift_beginAccess();
  sub_29DEA6BC4(&v2[v16], v11, &unk_2A1A61BA0, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_29DEA6C44(v11, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  }

  (*(v13 + 32))(v15, v11, v12);
  result = sub_29E2C2DB4();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  sub_29E2C2D44();

  v19 = [*&v2[qword_2A1817BE0] dayViewModelAtIndex_];
  (*(v25 + 32))(v7, v5, v26);
  *&v7[*(v24 + 20)] = v19;
  swift_beginAccess();
  sub_29E0EF2DC(v27 & 1, v7);
  swift_endAccess();
  result = [v2 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_29E2BCF24();
  v22 = [v20 cellForItemAtIndexPath_];

  if (v22)
  {
    type metadata accessor for DeviationCalendarCell();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      sub_29DEA2878(v23, v15, 1);
    }
  }

  sub_29DEA6CB4(v7, type metadata accessor for CycleDay);
  return (*(v13 + 8))(v15, v12);
}

id sub_29DEA50A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarSpacerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_29DEA5104(uint64_t a1, uint64_t a2)
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

uint64_t sub_29DEA5120(uint64_t a1, int a2)
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

uint64_t sub_29DEA5168(uint64_t result, int a2, int a3)
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

void sub_29DEA51CC(void *a1)
{
  v1 = [a1 collectionViewLayout];
  [v1 invalidateLayout];
}

uint64_t sub_29DEA5220(uint64_t a1, unsigned __int8 *a2, void *a3, char *a4, void *a5, void (*a6)(void, void))
{
  v7 = v6;
  v112 = a6;
  v110 = a5;
  v129 = a4;
  v126 = a3;
  v130 = a1;
  ObjectType = swift_getObjectType();
  v103 = *a2;
  v108 = *(a2 + 1);
  v106 = *(a2 + 1);
  v104 = *(a2 + 4);
  v105 = a2[40];
  v107 = *(a2 + 6);
  v102 = *(a2 + 56);
  v9 = *(a2 + 9);
  v123 = sub_29E2C0514();
  v122 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123);
  v125 = &v102.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = sub_29E2BCE84();
  v117 = *(v118 - 8);
  MEMORY[0x2A1C7C4A8](v118);
  v116 = &v102.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_29E2C31A4();
  v114 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v113 = &v102.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v121 = &v102.i8[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v16);
  v120 = &v102.i8[-v17];
  MEMORY[0x2A1C7C4A8](v18);
  v119 = &v102.i8[-v19];
  MEMORY[0x2A1C7C4A8](v20);
  v127 = &v102.i8[-v21];
  MEMORY[0x2A1C7C4A8](v22);
  v124 = &v102.i8[-v23];
  v24 = sub_29E2BCFB4();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v109 = &v102.i8[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = sub_29E2BCEA4();
  v132 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131);
  v28 = &v102.i8[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DEA6AB4(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v111 = &v102.i8[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x2A1C7C4A8](v31);
  v34 = &v102.i8[-v33];
  (*(v25 + 56))(&v7[qword_2A1817BF0], 1, 1, v24, v32);
  v35 = &v7[qword_2A1817BF8];
  v133 = v14;
  v134 = v13;
  v36 = *(v14 + 56);
  v36(&v7[qword_2A1817BF8], 1, 1, v13);
  v37 = v7;
  *&v7[qword_2A1817C00] = 1;
  if (*(a2 + 1))
  {
    v38 = v108;
    v39 = v107;
    v40 = v106;
    v41 = v105;
    v42 = v104;
    v43 = v103;
    v44 = v102;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath);
    v38 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](v46);
    v39 = swift_getKeyPath();
    v40 = vdupq_n_s64(MEMORY[0x29EDCA1A0]);
    v41 = 1;
    v42 = 2;
    v43 = 0;
    v9 = 2;
    v44 = v40;
  }

  v47 = &v37[qword_2A1817BD8];
  *v47 = v43;
  *(v47 + 1) = v38;
  *(v47 + 1) = v40;
  *(v47 + 4) = v42;
  v47[40] = v41;
  *(v47 + 6) = v39;
  *(v47 + 56) = v44;
  *(v47 + 9) = v9;
  v48 = v126;
  *&v37[qword_2A1817BE0] = v126;
  v49 = v134;
  v50 = *(v133 + 16);
  v108 = v133 + 16;
  v107 = v50;
  v50(v34, v129, v134);
  v36(v34, 0, 1, v49);
  swift_beginAccess();
  sub_29DEA6A00(a2, v136);
  v126 = v48;
  sub_29DEA6DF0(v34, v35, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  swift_endAccess();
  v51 = &v37[qword_2A18409A8];
  v52 = v112;
  *v51 = v110;
  *(v51 + 1) = v52;
  v53 = v132;
  v54 = *(v132 + 16);
  v55 = v130;
  v56 = v131;
  v54(v28, v130, v131);
  v57 = objc_allocWithZone(MEMORY[0x29EDC4658]);

  v58 = sub_29E2BCD84();
  v59 = [v57 initWithCalendar_];

  v60 = *(v53 + 8);
  v132 = v53 + 8;
  v112 = v60;
  v60(v28, v56);
  *&v37[qword_2A1817BE8] = v59;
  v106.i64[0] = v54;
  v54(v28, v55, v56);
  sub_29DEA6AB4(0, &qword_2A1817C88, MEMORY[0x29EDC4370], MEMORY[0x29EDC9E90]);
  sub_29E2C2D04();
  *(swift_allocObject() + 16) = xmmword_29E2CD7A0;
  type metadata accessor for CalendarLogOverlayView();
  sub_29DEA6DA8(&qword_2A1817C90, type metadata accessor for CalendarLogOverlayView);
  MEMORY[0x29ED79740](0, 0);
  v61 = v55;
  sub_29E2C2CF4();
  sub_29E2C2CE4();
  v62 = objc_allocWithZone(sub_29E2C2C44());
  v63 = sub_29E2C2C34();
  v135.receiver = v37;
  v135.super_class = ObjectType;
  v110 = v63;
  v109 = objc_msgSendSuper2(&v135, sel_initWithCollectionViewLayout_);
  v64 = v126;
  [v126 activeDayRange];
  v65 = v113;
  sub_29E2C30D4();
  v66 = v124;
  sub_29E2C3194();
  (*(v114 + 8))(v65, v115);
  v67 = v117;
  v68 = v116;
  v69 = v118;
  (*(v117 + 104))(v116, *MEMORY[0x29EDB9CB8], v118);
  [v64 activeDayRange];
  v70 = v111;
  sub_29E2BCE04();
  v71 = v68;
  v72 = v133;
  v73 = v134;
  (*(v67 + 8))(v71, v69);
  if ((*(v72 + 48))(v70, 1, v73) == 1)
  {
    sub_29DEA6C44(v70, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v136[0] = 0;
    v136[1] = 0xE000000000000000;
    sub_29E2C4584();

    strcpy(v136, "Unable to add ");
    HIBYTE(v136[1]) = -18;
    [v126 activeDayRange];
    v136[10] = v99;
    v100 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v100);

    MEMORY[0x29ED7FCC0](0x6F74207379616420, 0xE900000000000020);
    sub_29DEA6DA8(&qword_2A1817C98, MEMORY[0x29EDB9BC8]);
    v101 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v101);

    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v74 = v127;
    (*(v72 + 32))(v127, v70, v73);
    sub_29DEA6DA8(&qword_2A1817CA0, type metadata accessor for DeviationsCalendarViewController);
    v75 = v73;
    v76 = v131;
    (v106.i64[0])(v28, v61, v131);
    v77 = v107;
    v107(v119, v66, v75);
    v77(v120, v74, v75);
    v78 = v109;
    sub_29E2BCBA4();
    v79 = objc_allocWithZone(sub_29E2C2D74());
    v121 = sub_29E2C2D24();
    sub_29E2C2DC4();
    v80 = v125;
    sub_29E2C04B4();
    v81 = sub_29E2C0504();
    v82 = sub_29E2C3A34();
    v83 = v66;
    if (os_log_type_enabled(v81, v82))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v136[0] = v85;
      *v84 = 136446210;
      v86 = v66;
      v87 = sub_29E2C4AE4();
      v89 = sub_29DFAA104(v87, v88, v136);
      v90 = v134;

      *(v84 + 4) = v89;
      v83 = v86;
      v91 = v130;
      _os_log_impl(&dword_29DE74000, v81, v82, "[%{public}s] initializing", v84, 0xCu);
      sub_29DE93B3C(v85);
      v92 = v85;
      v93 = v131;
      MEMORY[0x29ED82140](v92, -1, -1);
      MEMORY[0x29ED82140](v84, -1, -1);

      (*(v122 + 8))(v125, v123);
    }

    else
    {
      v93 = v76;

      (*(v122 + 8))(v80, v123);
      v91 = v130;
      v90 = v134;
    }

    [v126 registerObserver_];
    sub_29DEA6AB4(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_29E2CAB20;
    v95 = sub_29E2C0B54();
    v96 = MEMORY[0x29EDC7870];
    *(v94 + 32) = v95;
    *(v94 + 40) = v96;
    sub_29E2C3C64();

    swift_unknownObjectRelease();

    v97 = *(v133 + 8);
    v97(v129, v90);
    v112(v91, v93);
    v97(v127, v90);
    v97(v83, v90);
    return v78;
  }

  return result;
}

uint64_t sub_29DEA62D8()
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
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Received a viewModelProvider update", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void *sub_29DEA6488(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29DF9B104(a2);
  v20[0] = a3;
  sub_29DEA68FC();
  v13[0] = v5;
  v14 = sub_29E2C43C4();
  v15 = v6;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v20[0]) = v5;
  v20[1] = v14;
  v20[2] = v6;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_29DEA6950(v13, &v12);
  sub_29DEA69AC(v20);
  v7 = sub_29E2C33A4();

  v8 = sub_29E2BCF24();
  v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8];

  type metadata accessor for CalendarDayCell();
  v10 = swift_dynamicCastClassUnconditional();
  (*((*MEMORY[0x29EDCA1E8] & *v10) + 0x118))(v13, 0);
  sub_29DEA69AC(v13);
  return v10;
}

uint64_t sub_29DEA6638(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v22 = a1;
  v3 = sub_29E2BCA44();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCA54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v21 - v11;
  v13 = *MEMORY[0x29EDC8048];
  sub_29E2C2DA4();
  v14 = v13;
  sub_29E2C2D94();
  v15 = sub_29E2C33A4();

  v16 = sub_29E2BCF24();
  v17 = [v22 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v15 forIndexPath:v16];

  v18 = swift_dynamicCastClassUnconditional();
  MEMORY[0x29ED78A30]();
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v23 + 8))(v5, v24);
  v19 = *(v7 + 8);
  v19(v10, v6);
  sub_29DEA6DA8(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29E2BCB94();
  v19(v12, v6);
  sub_29E2C2D84();

  return v18;
}

unint64_t sub_29DEA68FC()
{
  result = qword_2A1A61DF8;
  if (!qword_2A1A61DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61DF8);
  }

  return result;
}

uint64_t sub_29DEA6A00(uint64_t a1, uint64_t a2)
{
  sub_29DEA6A64();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29DEA6A64()
{
  if (!qword_2A1817C80)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817C80);
    }
  }
}

void sub_29DEA6AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DEA6B18()
{
  result = qword_2A1818E90;
  if (!qword_2A1818E90)
  {
    sub_29DEA6B60();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1818E90);
  }

  return result;
}

unint64_t sub_29DEA6B60()
{
  result = qword_2A1818000;
  if (!qword_2A1818000)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1818000);
  }

  return result;
}

uint64_t sub_29DEA6BC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DEA6AB4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29DEA6C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DEA6AB4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DEA6CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DEA6D14()
{
  if (!qword_2A1817CA8)
  {
    sub_29DEA6AB4(255, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1817CA8);
    }
  }
}

uint64_t sub_29DEA6DA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DEA6DF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DEA6AB4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_29DEA6E70(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_29DEA6E80(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_29DEA6E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_29DEA6F54()
{
  v0 = [objc_opt_self() uniformAcrossSiblingsWithEstimate_];
  v1 = [objc_opt_self() fixedSpacing_];
  sub_29DEA7110();
  v2 = sub_29E2BF7E4();

  v3 = [objc_opt_self() sectionWithGroup_];
  [v3 setContentInsetsReference_];
  [v3 setInterGroupSpacing_];

  return v3;
}

uint64_t sub_29DEA7088()
{
  sub_29DE8EDC0(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_29DEA7110()
{
  result = qword_2A1817CB0;
  if (!qword_2A1817CB0)
  {
    type metadata accessor for CycleLogLayoutEngine();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817CB0);
  }

  return result;
}

unint64_t sub_29DEA7184(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = sub_29E0B36C0();
  v10 = *(v9 + 16);
  if (v10)
  {
    v45 = objc_opt_self();
    v44 = *MEMORY[0x29EDC7700];
    v42 = sub_29DE9408C(0, &qword_2A1817B10);
    v43 = *MEMORY[0x29EDC7638];
    v41 = *MEMORY[0x29EDC7640];
    v11 = *MEMORY[0x29EDC7650];
    sub_29DEA0390();
    for (i = (v9 + 40); ; i += 2)
    {
      v13 = *(i - 1);
      v14 = *i;
      v53.origin.x = a1;
      v53.origin.y = a2;
      v53.size.width = a3;
      v53.size.height = a4;
      MinX = CGRectGetMinX(v53);
      v54.origin.x = a1;
      v54.origin.y = a2;
      v54.size.width = a3;
      v54.size.height = a4;
      MinY = CGRectGetMinY(v54);
      v17 = [v45 systemFontOfSize:6.0 weight:v44];
      v18 = sub_29E2BE1E4();
      v19 = sub_29E2C3E84();
      v49[0] = v43;
      v20 = sub_29DE9408C(0, &unk_2A1A61A00);
      v49[1] = v17;
      v49[4] = v20;
      v50[0] = v41;
      v50[4] = sub_29DE9408C(0, &qword_2A1817FE0);
      v51[0] = v11;
      v50[1] = v18;
      v51[4] = v42;
      v51[1] = v19;
      v21 = sub_29E2C47B4();
      v22 = v43;
      v23 = v41;
      v24 = v11;
      sub_29DEA7608(v49, &v47);
      v25 = v47;
      result = sub_29E187A6C(v47);
      if (v27)
      {
        break;
      }

      v28 = v21 + 8;
      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v21[6] + 8 * result) = v25;
      result = sub_29DEA049C(v48, (v21[7] + 32 * result));
      v29 = v21[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      v21[2] = v31;
      sub_29DEA7608(v50, &v47);
      v32 = v47;
      result = sub_29E187A6C(v47);
      if (v33)
      {
        break;
      }

      *(v28 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(v21[6] + 8 * result) = v32;
      result = sub_29DEA049C(v48, (v21[7] + 32 * result));
      v34 = v21[2];
      v30 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      v21[2] = v35;
      sub_29DEA7608(v51, &v47);
      v36 = v47;
      result = sub_29E187A6C(v47);
      if (v37)
      {
        break;
      }

      *(v28 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(v21[6] + 8 * result) = v36;
      result = sub_29DEA049C(v48, (v21[7] + 32 * result));
      v38 = v21[2];
      v30 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      v21[2] = v39;
      sub_29DEA0430();
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      sub_29DEA75B0();
      v40 = sub_29E2C31F4();

      [v14 drawAtPoint:v40 withAttributes:{v13 * a5 + MinX + 110.0 + 4.0, MinY + 4.0}];

      if (!--v10)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_29DEA75B0()
{
  result = qword_2A18177F0;
  if (!qword_2A18177F0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18177F0);
  }

  return result;
}

uint64_t sub_29DEA7608(uint64_t a1, uint64_t a2)
{
  sub_29DEA0430();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AboutTextDataSource()
{
  result = qword_2A1817CC8;
  if (!qword_2A1817CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEA7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a3;
  v24 = sub_29E2BCC24();
  v10 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v5 + qword_2A1817CC0);
  *v13 = a1;
  v13[1] = a2;
  v14 = (v5 + qword_2A1817CB8);
  *v14 = a3;
  v14[1] = a4;
  sub_29DEA7DD8(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
  sub_29E2BEBB4();
  v15 = swift_allocObject();
  v22 = xmmword_29E2CAB20;
  *(v15 + 16) = xmmword_29E2CAB20;
  sub_29DEA7DD8(0, &unk_2A181B3C0, sub_29DEA7E2C);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  type metadata accessor for AboutTextCollectionViewCell();
  sub_29DEA7D90(&qword_2A1817CD8, type metadata accessor for AboutTextCollectionViewCell);
  sub_29E2BF404();
  v17 = sub_29E2BE2B4();
  v19 = v18;
  *(v16 + 56) = &type metadata for AboutTextDataSourceItem;
  *(v16 + 64) = sub_29DEA7E90();
  v20 = swift_allocObject();
  *(v16 + 32) = v20;
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = 0xD000000000000017;
  v20[5] = 0x800000029E2EC2D0;
  v20[6] = v23;
  v20[7] = a4;
  sub_29E2BCC14();
  sub_29E2BCBD4();
  (*(v10 + 8))(v12, v24);
  sub_29E2BEBA4();
  return sub_29E2BF634();
}

uint64_t sub_29DEA79FC()
{
  v0 = sub_29E2BE814();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BE7D4();
  v4 = sub_29E2BE7B4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29DEA7B28()
{
}

uint64_t sub_29DEA7B70()
{
  sub_29E2BF644();

  return swift_deallocClassInstance();
}

uint64_t sub_29DEA7BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E2BF404();
  sub_29E2C0844();
  v3 = sub_29E2BE0B4();
  swift_allocObject();
  v4 = sub_29E2BE094();
  a1[3] = v3;
  result = sub_29DEA7D90(&unk_2A181CC00, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_29DEA7D20()
{
  type metadata accessor for AboutTextCollectionViewCell();
  sub_29DEA7D90(&qword_2A1817CD8, type metadata accessor for AboutTextCollectionViewCell);
  return sub_29E2C3B74();
}

uint64_t sub_29DEA7D90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DEA7DD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29DEA7E2C()
{
  result = qword_2A1819BD0;
  if (!qword_2A1819BD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1819BD0);
  }

  return result;
}

unint64_t sub_29DEA7E90()
{
  result = qword_2A1817CE0;
  if (!qword_2A1817CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817CE0);
  }

  return result;
}

uint64_t type metadata accessor for PastPregnancyStartDatePickerRow()
{
  result = qword_2A1817CF0;
  if (!qword_2A1817CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEA7F58()
{
  sub_29DEA8E38(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29E2BEFA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29DEA8028@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for PastPregnancyStartDatePickerRow();
  v3 = *(started - 8);
  v39 = started;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](started);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v14, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  v18 = sub_29E2C3414();
  v37 = v19;
  (*(v11 + 8))(v16, v10);
  v20 = v43;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v38 + 8))(v8, v6);
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = *(v39 + 20);
  sub_29DEA8ABC();
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29DEA8ED4(v29, v42, type metadata accessor for PastPregnancyStartDatePickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29DEA8C88(v30, v32 + v31);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD000000000000018;
  v35[1] = 0x800000029E2EC3E0;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29DEA8CEC;
  v36[1] = v32;
  return result;
}

__n128 sub_29DEA84B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8D5C();
  v39 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v38 = &v35 - v7;
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v35 - v11;
  v13 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v14 = sub_29E2C3384();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v35 - v19;
  sub_29DEA8B80();
  v37 = v21;
  v36 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v35 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v15 + 16))(v18, v20, v14);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A67F80;
  sub_29E2BCC74();
  v24 = sub_29E2C3414();
  v26 = v25;
  (*(v15 + 8))(v20, v14);
  *&v44 = v24;
  *(&v44 + 1) = v26;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v10 + 8))(v12, v9);
  sub_29E2C2A24();

  if (qword_2A1816FD0 != -1)
  {
    swift_once();
  }

  v27 = sub_29DEA8E9C(v39, qword_2A1840FB0);
  sub_29DEA8ED4(v27, v41, sub_29DEA8D5C);
  sub_29E2C1C94();
  sub_29DE9DE68();
  v28 = v35;
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v29 = v43;
  (*(v36 + 32))(v43, v28, v37);
  sub_29DEA8B20();
  v31 = v29 + *(v30 + 36);
  v32 = v49;
  *(v31 + 64) = v48;
  *(v31 + 80) = v32;
  *(v31 + 96) = v50;
  v33 = v45;
  *v31 = v44;
  *(v31 + 16) = v33;
  result = v47;
  *(v31 + 32) = v46;
  *(v31 + 48) = result;
  return result;
}

void sub_29DEA8ABC()
{
  if (!qword_2A1817D00)
  {
    sub_29DEA8B20();
    sub_29DEA8BD8();
    v0 = type metadata accessor for PregnancyInteractivePickerRow();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817D00);
    }
  }
}

void sub_29DEA8B20()
{
  if (!qword_2A1817D08)
  {
    sub_29DEA8B80();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817D08);
    }
  }
}

void sub_29DEA8B80()
{
  if (!qword_2A1817D10)
  {
    v0 = sub_29E2C1414();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817D10);
    }
  }
}

unint64_t sub_29DEA8BD8()
{
  result = qword_2A1817D18;
  if (!qword_2A1817D18)
  {
    sub_29DEA8B20();
    sub_29DEA8DF0(&qword_2A1817D20, sub_29DEA8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817D18);
  }

  return result;
}

uint64_t sub_29DEA8C88(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PastPregnancyStartDatePickerRow();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

double sub_29DEA8CEC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PastPregnancyStartDatePickerRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_29DEA84B0(v4, a1).n128_u64[0];
  return result;
}

void sub_29DEA8D5C()
{
  if (!qword_2A1817D28)
  {
    sub_29E2BCBB4();
    sub_29DEA8DF0(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
    v0 = sub_29E2C32E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817D28);
    }
  }
}

uint64_t sub_29DEA8DF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DEA8E38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DEA8E9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29DEA8ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_29DEA8F3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29DEA8F50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_29DEA8F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_29DEA8FEC@<D0>(int a1@<W0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v125 = a1;
  v129 = a5;
  v135 = sub_29E2BCF04();
  v139 = *(v135 - 8);
  MEMORY[0x2A1C7C4A8](v135);
  v134 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEAA140(0, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v121 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v120 = &v109 - v12;
  v132 = sub_29E2BCE84();
  v118 = *(v132 - 1);
  MEMORY[0x2A1C7C4A8](v132);
  v115 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_29E2BCEA4();
  v116 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117);
  v114 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_29E2BCBB4();
  v15 = *(v144 - 8);
  MEMORY[0x2A1C7C4A8](v144);
  v122 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v110 = &v109 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v109 = &v109 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v143 = &v109 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v146 = &v109 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v145 = &v109 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v109 - v28;
  MEMORY[0x2A1C7C4A8](v30);
  v142 = &v109 - v31;
  sub_29DEAA140(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v119 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v113 = &v109 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v38 = &v109 - v37;
  MEMORY[0x2A1C7C4A8](v39);
  v41 = &v109 - v40;
  MEMORY[0x2A1C7C4A8](v42);
  v136 = &v109 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v141 = &v109 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v140 = &v109 - v47;
  v128 = a4;
  v127 = a3;
  v126 = a2;
  if ((a4 - 1) > 1u)
  {
    v124 = MEMORY[0x29EDCA190];
    v123 = MEMORY[0x29EDCA190];
  }

  else
  {
    sub_29E2BF404();
    sub_29E2BF404();
    v124 = a3;
    v123 = a2;
  }

  v48 = *(v15 + 56);
  v49 = v144;
  v48(v140, 1, 1, v144);
  v48(v141, 1, 1, v49);
  v50 = v15;
  v51 = v136;
  v48(v136, 1, 1, v49);
  sub_29E2BCA84();
  type metadata accessor for PregnancyDatesInputViewModel();
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput) = 0;
  v53 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod) = 4;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEstimatedDueDate) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedLastMenstrualPeriodDate) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryoTransferDate) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryonicAgeDays) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAgeDate) = 0;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge) = 0;
  sub_29E2BD014();
  *(v52 + 16) = 1;
  sub_29E2BCA84();
  v54 = sub_29E2BCB34();
  v55 = *(v50 + 8);
  v131 = v50 + 8;
  v130 = v55;
  v55(v29, v49);
  *(v52 + 18) = v54 & 1;
  sub_29DEAA194(v51, v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__unitTestTodayOverride);
  v56 = v51;
  v57 = v50;
  sub_29DEAA194(v56, v41);
  v58 = *(v50 + 48);
  v59 = v58(v41, 1, v49);
  v138 = v50 + 48;
  v137 = v58;
  if (v59 == 1)
  {
    sub_29E2BCBA4();
    if (v58(v41, 1, v49) != 1)
    {
      sub_29DEAA260(v41, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    (*(v50 + 32))(v145, v41, v49);
  }

  *(v52 + v53) = 4;
  sub_29DEAA194(v140, v38);
  v60 = v137;
  if (v137(v38, 1, v49) == 1)
  {
    v61 = *(v50 + 16);
    v62 = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v63 = v146;
    v61(v146, v145, v49);
    if (v60(v38, 1, v49) != 1)
    {
      sub_29DEAA260(v38, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }

    v64 = v144;
  }

  else
  {
    v63 = v146;
    (*(v50 + 32))(v146, v38, v49);
    v61 = *(v50 + 16);
    v62 = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64 = v49;
  }

  v61((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate), v63, v64);
  v61((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pastPregnancyStartDate), v63, v64);
  v61((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate), v142, v64);
  v111 = sub_29DEAA214();
  sub_29E2C3EC4();
  v65 = *(v57 + 32);
  v65(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate, v29, v64);
  v61((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__lastMenstrualPeriodDate), v63, v64);
  v66 = v114;
  sub_29E2BCE44();
  v67 = v118;
  v68 = v115;
  v69 = v132;
  (*(v118 + 104))(v115, *MEMORY[0x29EDB9CA8], v132);
  [objc_opt_self() maximumNumberOfWeeksPregnant];
  v70 = v61;
  v71 = v113;
  sub_29E2BCE04();
  (*(v67 + 8))(v68, v69);
  v72 = v144;
  (*(v116 + 8))(v66, v117);
  v73 = v137(v71, 1, v72);
  v132 = v70;
  v133 = v57 + 32;
  v112 = v65;
  if (v73 == 1)
  {
    sub_29DEAA260(v71, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v74 = v143;
    v70(v143, v145, v72);
    v75 = v120;
  }

  else
  {
    v76 = v109;
    v65(v109, v71, v72);
    v77 = v145;
    v78 = sub_29E2BCB24();
    v75 = v120;
    if (v78)
    {
      v130(v76, v72);
      v79 = v110;
      v70 = v132;
      (v132)(v110, v77, v72);
      v74 = v143;
    }

    else
    {
      v79 = v110;
      v65(v110, v76, v72);
      v74 = v143;
      v70 = v132;
    }

    v65(v74, v79, v72);
  }

  v118 = v62;
  v70((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__gestationalAgeDate), v74, v72);
  v80 = v134;
  sub_29E2BCEF4();
  sub_29E2BCED4();
  v81 = *(v139 + 8);
  v139 += 8;
  v81(v80, v135);
  sub_29E2C3F14();

  v82 = sub_29E2BC5F4();
  v83 = *(v82 - 8);
  v84 = *(v83 + 48);
  if (v84(v75, 1, v82) == 1)
  {
    sub_29DEAA260(v75, &qword_2A1817D40, MEMORY[0x29EDB9950]);
    v85 = 0;
  }

  else
  {
    v86 = sub_29E2BC554();
    v88 = v87;
    (*(v83 + 8))(v75, v82);
    if (v88)
    {
      v85 = 0;
    }

    else
    {
      v85 = v86;
    }
  }

  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays) = v85;
  v89 = v134;
  sub_29E2BCEF4();
  sub_29E2BCED4();
  v81(v89, v135);
  v90 = v121;
  sub_29E2C3F14();

  if (v84(v90, 1, v82) == 1)
  {
    sub_29DEAA260(v90, &qword_2A1817D40, MEMORY[0x29EDB9950]);
    v91 = 0;
  }

  else
  {
    v92 = sub_29E2BC514();
    v94 = v93;
    (*(v83 + 8))(v90, v82);
    if (v94)
    {
      v91 = 0;
    }

    else
    {
      v91 = v92;
    }
  }

  v95 = v126;
  v96 = v122;
  v97 = v137;
  v98 = v132;
  v99 = v112;
  v100 = v144;
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks) = v91;
  v101 = v119;
  sub_29DEAA194(v141, v119);
  if (v97(v101, 1, v100) == 1)
  {
    v98(v96, v145, v100);
    if (v97(v101, 1, v100) != 1)
    {
      sub_29DEAA260(v101, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    v99(v96, v101, v100);
  }

  v99((v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryoTransferDate), v96, v100);
  *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays) = 3;
  if ((*(v52 + 18) & 1) == 0)
  {
    if (*(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate))
    {
      *(v52 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate) = 1;
      sub_29E0421F0(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath);
      *(&v109 - 2) = v52;
      *(&v109 - 8) = 1;
      v151 = v52;
      sub_29DEAA2DC();
      sub_29E2BCFD4();
    }
  }

  v103 = v125 & 1;
  sub_29E0ED658();
  sub_29DEAA334(v95, v127, v128);
  v104 = v130;
  v130(v143, v100);
  v104(v146, v100);
  v104(v145, v100);
  v104(v142, v100);
  v105 = MEMORY[0x29EDB9BC8];
  sub_29DEAA260(v136, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  sub_29DEAA260(v141, &unk_2A1A62850, v105);
  sub_29DEAA260(v140, &unk_2A1A62850, v105);
  *&v148 = v52;
  BYTE8(v148) = v103;
  *(&v148 + 9) = *v157;
  HIDWORD(v148) = *&v157[3];
  *&v149 = v124;
  *(&v149 + 1) = v123;
  v150 = 0;
  v151 = v52;
  v152 = v103;
  *v153 = *v157;
  *&v153[3] = *&v157[3];
  v154 = v124;
  v155 = v123;
  v156 = 0;
  sub_29DEAA3CC(&v148, v147);
  sub_29DEAA404(&v151);
  result = *&v148;
  v107 = v149;
  v108 = v129;
  *v129 = v148;
  v108[1] = v107;
  *(v108 + 8) = v150;
  return result;
}

void sub_29DEAA140(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29DEAA194(uint64_t a1, uint64_t a2)
{
  sub_29DEAA140(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29DEAA214()
{
  result = qword_2A1817D48;
  if (!qword_2A1817D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1817D48);
  }

  return result;
}

uint64_t sub_29DEAA260(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29DEAA140(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29DEAA2DC()
{
  result = qword_2A1817D50;
  if (!qword_2A1817D50)
  {
    type metadata accessor for PregnancyDatesInputViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817D50);
  }

  return result;
}

void sub_29DEAA334(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
LABEL_8:

      return;
    }

    if (a3 != 3)
    {
      return;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      goto LABEL_8;
    }

    a1 = a2;
  }
}

void sub_29DEAA434(char a1)
{
  if (a1 == 51)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_29E2C4904();
  }

  v3 = sub_29E2C33A4();
  [v1 setObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

uint64_t sub_29DEAA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v96 = a1;
  v102 = sub_29E2BCBB4();
  v95 = *(v102 - 8);
  MEMORY[0x2A1C7C4A8](v102);
  v93 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v94 = &v80 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v101 = &v80 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v90 = &v80 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v87 = &v80 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v80 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v86 = &v80 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v88 = &v80 - v19;
  v97 = sub_29E2BC3A4();
  v20 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v89 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v100 = &v80 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v80 - v25;
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v80 - v28;
  MEMORY[0x2A1C7C4A8](v30);
  v85 = &v80 - v31;
  sub_29DEAAD64();
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v92 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v36 = &v80 - v35;
  v37 = sub_29E2BD824();
  v38 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v91 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  v99 = &v80 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v44 = &v80 - v43;
  v45 = sub_29E2BD4C4();
  (*(*(v45 - 8) + 16))(a3, v96, v45);
  v96 = a3;
  sub_29E2BD3F4();
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    return sub_29DEAADBC(v36);
  }

  v81 = v38;
  (*(v38 + 32))(v44, v36, v37);
  sub_29E2BD7F4();
  sub_29E2BC384();
  v47 = v97;
  v83 = *(v20 + 8);
  v83(v29, v97);
  v48 = sub_29DEAAE18();
  v49 = v98;
  v84 = v48;
  v50 = sub_29E2C32A4();
  v82 = v37;
  if (v50)
  {
    v51 = v49;
    v52 = v95;
    v53 = v102;
    (*(v95 + 8))(v15, v102);
    v54 = v86;
    (*(v52 + 16))(v86, v51, v53);
  }

  else
  {
    v52 = v95;
    v54 = v86;
    (*(v95 + 32))(v86, v15, v102);
  }

  sub_29E2BD7F4();
  v55 = v87;
  sub_29E2BC364();
  v83(v26, v47);
  v56 = v102;
  v57 = sub_29E2C3294();
  v58 = *(v52 + 8);
  v59 = (v57 & 1) == 0;
  if (v57)
  {
    v60 = v54;
  }

  else
  {
    v60 = v55;
  }

  if (v59)
  {
    v61 = v54;
  }

  else
  {
    v61 = v55;
  }

  v87 = *(v52 + 8);
  v58(v60, v56);
  v86 = *(v52 + 32);
  (v86)(v88, v61, v56);
  v62 = v100;
  sub_29E2BD7F4();
  sub_29E2BC364();
  v63 = v83;
  v83(v62, v47);
  sub_29E2BC374();
  sub_29E2BD7B4();
  v90 = v44;
  sub_29E2BD7C4();
  sub_29E2BD804();
  v64 = v89;
  sub_29E2BD7F4();
  sub_29E2BC384();
  v63(v64, v97);
  v65 = v93;
  sub_29E2BD7E4();
  v66 = v98;
  if (sub_29E2C32A4())
  {
    v67 = v65;
    v68 = v94;
    (v86)(v94, v67, v102);
    v69 = v82;
    v70 = v87;
  }

  else
  {
    v71 = v66;
    v72 = v102;
    v70 = v87;
    (v87)(v65, v102);
    v68 = v94;
    (*(v95 + 16))(v94, v71, v72);
    v69 = v82;
  }

  v73 = v101;
  sub_29E2BCAA4();
  v74 = v102;
  v70(v68, v102);
  v70(v73, v74);
  v75 = v99;
  sub_29E2BD7F4();
  sub_29E2BD7C4();
  v76 = v91;
  sub_29E2BD804();
  v77 = v81;
  v78 = v92;
  (*(v81 + 16))(v92, v76, v69);
  (*(v77 + 56))(v78, 0, 1, v69);
  sub_29E2BD404();
  v79 = *(v77 + 8);
  v79(v76, v69);
  v79(v75, v69);
  return (v79)(v90, v69);
}

void sub_29DEAAD64()
{
  if (!qword_2A1A62688)
  {
    sub_29E2BD824();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A62688);
    }
  }
}

uint64_t sub_29DEAADBC(uint64_t a1)
{
  sub_29DEAAD64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29DEAAE18()
{
  result = qword_2A1A616E0;
  if (!qword_2A1A616E0)
  {
    sub_29E2BCBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A616E0);
  }

  return result;
}

char *sub_29DEAAE70(void *a1, char a2, char a3)
{
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v8 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize];
  *v8 = 0;
  v8[1] = 0;
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold] = a2;
  v9 = [objc_opt_self() blackColor];
  v10 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  v11 = [v9 CGColor];
  [v10 setFillColor_];

  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask] = v10;
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isMaskVisible] = a3;
  v39.receiver = v3;
  v39.super_class = type metadata accessor for CalendarDayLabel();
  v12 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setOpaque_];
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label;
  [*&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label] setTextColor_];
  [*&v12[v13] setTextAlignment_];
  [*&v12[v13] setAdjustsFontSizeToFitWidth_];
  sub_29DEAB558();
  v14 = v12[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isMaskVisible];
  if (v14 == 1)
  {
    v15 = *(MEMORY[0x29EDBBA70] + 80);
    *&v40.m31 = *(MEMORY[0x29EDBBA70] + 64);
    *&v40.m33 = v15;
    v16 = *(MEMORY[0x29EDBBA70] + 112);
    *&v40.m41 = *(MEMORY[0x29EDBBA70] + 96);
    *&v40.m43 = v16;
    v17 = *(MEMORY[0x29EDBBA70] + 16);
    *&v40.m11 = *MEMORY[0x29EDBBA70];
    *&v40.m13 = v17;
    v18 = *(MEMORY[0x29EDBBA70] + 48);
    *&v40.m21 = *(MEMORY[0x29EDBBA70] + 32);
    *&v40.m23 = v18;
  }

  else
  {
    CATransform3DMakeScale(&v40, 0.0001, 0.0001, 1.0);
  }

  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask;
  v20 = *&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask];
  v38 = v40;
  [v20 setTransform_];
  [*&v12[v19] setHidden_];
  [v12 addSubview_];
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *&v12[v13];
  sub_29E2C3FF4();

  v22 = objc_opt_self();
  sub_29DE99B54();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E2CDBD0;
  v24 = [*&v12[v13] leadingAnchor];
  v25 = [v12 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v23 + 32) = v26;
  v27 = [v12 trailingAnchor];
  v28 = [*&v12[v13] trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v23 + 40) = v29;
  v30 = [*&v12[v13] centerYAnchor];
  v31 = [v12 centerYAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v23 + 48) = v32;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v33 = sub_29E2C3604();

  [v22 activateConstraints_];

  sub_29DEAC750();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29E2CAB20;
  v35 = sub_29E2C0B54();
  v36 = MEMORY[0x29EDC7870];
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v12;
}

id sub_29DEAB320(id result, char a2)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isMaskVisible;
  if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isMaskVisible) != (result & 1))
  {
    *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isMaskVisible) = result & 1;
    if (a2)
    {
      if ((result & 1) != 0 || (v4 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask), v5 = sub_29DEAC808(), v6 = sub_29E2C33A4(), [v4 addAnimation:v5 forKey:v6], v5, v6, *(v2 + v3) == 1))
      {
        v7 = 0;
        v8 = *(MEMORY[0x29EDBBA70] + 80);
        *&v21.m31 = *(MEMORY[0x29EDBBA70] + 64);
        *&v21.m33 = v8;
        v9 = *(MEMORY[0x29EDBBA70] + 112);
        *&v21.m41 = *(MEMORY[0x29EDBBA70] + 96);
        *&v21.m43 = v9;
        v10 = *(MEMORY[0x29EDBBA70] + 16);
        *&v21.m11 = *MEMORY[0x29EDBBA70];
        *&v21.m13 = v10;
        v11 = *(MEMORY[0x29EDBBA70] + 48);
        *&v21.m21 = *(MEMORY[0x29EDBBA70] + 32);
        *&v21.m23 = v11;
      }

      else
      {
        CATransform3DMakeScale(&v21, 0.0001, 0.0001, 1.0);
        v7 = 1;
      }

      v19 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask);
      v20 = v21;
      [v19 setTransform_];
      return [v19 setHidden_];
    }

    else
    {
      v12 = objc_opt_self();
      [v12 begin];
      [v12 setDisableActions_];
      v13 = *(v2 + v3) ^ 1;
      if (v13)
      {
        CATransform3DMakeScale(&v21, 0.0001, 0.0001, 1.0);
      }

      else
      {
        v14 = *(MEMORY[0x29EDBBA70] + 80);
        *&v21.m31 = *(MEMORY[0x29EDBBA70] + 64);
        *&v21.m33 = v14;
        v15 = *(MEMORY[0x29EDBBA70] + 112);
        *&v21.m41 = *(MEMORY[0x29EDBBA70] + 96);
        *&v21.m43 = v15;
        v16 = *(MEMORY[0x29EDBBA70] + 16);
        *&v21.m11 = *MEMORY[0x29EDBBA70];
        *&v21.m13 = v16;
        v17 = *(MEMORY[0x29EDBBA70] + 48);
        *&v21.m21 = *(MEMORY[0x29EDBBA70] + 32);
        *&v21.m23 = v17;
      }

      v18 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask);
      v20 = v21;
      [v18 setTransform_];
      [v18 setHidden_];
      return [v12 commit];
    }
  }

  return result;
}

void sub_29DEAB558()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 preferredContentSizeCategory];
    v5 = *MEMORY[0x29EDC8070];
    v6 = sub_29E2C3E24();

    if (v6)
    {
      sub_29E2C0B54();
      sub_29DEAC8E4();
      v7 = v5;
      v8 = sub_29E2C3D44();

      v3 = v8;
    }

    else
    {
    }
  }

  else
  {
    v3 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  }

  v9 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold];
  v10 = objc_opt_self();
  v11 = &selRef_boldSystemFontOfSize_;
  if (!v9)
  {
    v11 = &selRef_systemFontOfSize_;
  }

  v12 = [v10 *v11];
  v13 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label];
  v14 = qword_2A1816F70;
  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  v17 = [v16 scaledFontForFont:v15 compatibleWithTraitCollection:v3];

  [v13 setFont_];
}

id sub_29DEAB85C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CalendarDayLabel();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize);
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize);
  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize + 8);
  result = [v0 bounds];
  if (v2 != v6 || v3 != v5)
  {
    [v0 bounds];
    *v1 = v8;
    v1[1] = v9;
    v10 = objc_opt_self();
    [v10 begin];
    v11 = [v10 setDisableActions_];
    (*((*MEMORY[0x29EDCA1E8] & *v0) + 0x108))(v11);
    return [v10 commit];
  }

  return result;
}

id sub_29DEAB9B4()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_circleMask];
  v20 = *(MEMORY[0x29EDBBA70] + 80);
  v21 = *(MEMORY[0x29EDBBA70] + 64);
  *&v23.m31 = v21;
  *&v23.m33 = v20;
  v18 = *(MEMORY[0x29EDBBA70] + 112);
  v19 = *(MEMORY[0x29EDBBA70] + 96);
  *&v23.m41 = v19;
  *&v23.m43 = v18;
  v16 = *(MEMORY[0x29EDBBA70] + 16);
  v17 = *MEMORY[0x29EDBBA70];
  *&v23.m11 = *MEMORY[0x29EDBBA70];
  *&v23.m13 = v16;
  v14 = *(MEMORY[0x29EDBBA70] + 48);
  v15 = *(MEMORY[0x29EDBBA70] + 32);
  *&v23.m21 = v15;
  *&v23.m23 = v14;
  [v1 setTransform_];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_29E2C3E24();

  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize];
  if (v4)
  {
    [v1 setFrame_];
    [v1 frame];
    v6 = CGPathCreateWithRoundedRect(v24, 8.0, 8.0, 0);
  }

  else
  {
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize];
    v25.size.height = v25.size.width;
    v6 = CGPathCreateWithEllipseInRect(v25, 0);
    [v1 setFrame_];
  }

  [v1 setPath_];

  [v1 setAnchorPoint_];
  [v0 bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  [v1 setPosition_];
  v12 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isMaskVisible];
  if (v12 == 1)
  {
    *&v23.m31 = v21;
    *&v23.m33 = v20;
    *&v23.m41 = v19;
    *&v23.m43 = v18;
    *&v23.m11 = v17;
    *&v23.m13 = v16;
    *&v23.m21 = v15;
    *&v23.m23 = v14;
  }

  else
  {
    CATransform3DMakeScale(&v23, 0.0001, 0.0001, 1.0);
  }

  v22 = v23;
  [v1 setTransform_];
  return [v1 setHidden_];
}

void sub_29DEABDC0()
{
  v0 = objc_opt_self();
  v1 = sub_29DEAAE70([v0 tertiaryLabelColor], 1, 1);
  v2 = qword_2A1A62788;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_2A1A67F80;
  v5 = sub_29E2C33A4();
  v6 = [v0 colorNamed:v5 inBundle:v4 compatibleWithTraitCollection:0];

  if (v6)
  {
    [v3 setBackgroundColor_];

    v7 = [v3 layer];
    [v7 setMask_];

    v8 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label];
    v9 = [v8 layer];

    v10 = [objc_allocWithZone(MEMORY[0x29EDBBA98]) initWithType_];
    [v9 setCompositingFilter_];
  }

  else
  {
    __break(1u);
  }
}

char *sub_29DEAC0AC()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18CalendarTodayLabel_ring;
  v2 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  [v2 setLineWidth_];
  [v2 setFillColor_];
  *(v0 + v1) = v2;
  v3 = objc_opt_self();
  v4 = sub_29DEAAE70([v3 whiteColor], 1, 1);
  v5 = [v3 hkmc_menstruationColor];
  [v4 setBackgroundColor_];

  v6 = [v4 layer];
  [v6 setMask_];

  v7 = [v4 layer];
  [v7 addSublayer_];

  sub_29DEAC52C();
  sub_29DE9408C(0, &qword_2A181ADA0);
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v4;
}

id sub_29DEAC288()
{
  sub_29DEAB9B4();
  [v0 bounds];
  v1 = CGRectGetWidth(v16) + -1.0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_29E2C3E24();

  if (v4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v17);
    v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18CalendarTodayLabel_ring];
    [v6 setFrame_];
    [v6 frame];
    v7 = CGPathCreateWithRoundedRect(v18, 8.0, 8.0, 0);
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18CalendarTodayLabel_ring];
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v1;
    v19.size.height = v1;
    v7 = CGPathCreateWithEllipseInRect(v19, 0);
    [v6 setFrame_];
  }

  [v6 setPath_];

  [v6 setAnchorPoint_];
  [v0 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  v11 = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = v11;
  MidY = CGRectGetMidY(v21);

  return [v6 setPosition_];
}

void sub_29DEAC52C()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18CalendarTodayLabel_ring];
  v2 = [objc_opt_self() labelColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v3 CGColor];
  [v1 setStrokeColor_];

  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 < 2)
  {
    v7 = MEMORY[0x29EDBBB08];
LABEL_5:
    v8 = [objc_allocWithZone(MEMORY[0x29EDBBA98]) initWithType_];
    [v1 setCompositingFilter_];

    return;
  }

  if (v6 == 2)
  {
    v7 = MEMORY[0x29EDBBB10];
    goto LABEL_5;
  }

  [v1 setCompositingFilter_];
}

id sub_29DEAC6E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29DEAC750()
{
  if (!qword_2A1817FF0)
  {
    sub_29DEA6B18();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817FF0);
    }
  }
}

id sub_29DEAC808()
{
  v0 = sub_29E2C33A4();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_29E2C3694();
  [v1 setFromValue_];

  v3 = sub_29E2C3694();
  [v1 setToValue_];

  v4 = v1;
  [v4 setDuration_];
  [v4 setTimeOffset_];

  return v4;
}

unint64_t sub_29DEAC8E4()
{
  result = qword_2A18175E0;
  if (!qword_2A18175E0)
  {
    type metadata accessor for UIContentSizeCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18175E0);
  }

  return result;
}

id sub_29DEAC960@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v51 = a2;
  v9 = sub_29E2C0514();
  v50 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEAE474(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_29E2BDF14();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, a3, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x29EDC1A68] || v20 == *MEMORY[0x29EDC1A60])
  {
LABEL_6:
    (*(v16 + 8))(v19, v15);
    goto LABEL_7;
  }

  if (v20 != *MEMORY[0x29EDC1A70])
  {
    if (v20 == *MEMORY[0x29EDC1A78])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (*(v16 + 96))(v19, v15);
  v28 = *v19;
  v29 = [*v19 syncEnabled];
  v30 = [v28 restoreCompletionDate];
  if (v30)
  {
    sub_29E2BCB44();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = sub_29E2BCBB4();
  (*(*(v32 - 8) + 56))(v14, v31, 1, v32);
  sub_29DE93920(v14);
  v33 = [v28 errorRequiringUserAction];
  v49 = a1;
  if (v33)
  {

    v34 = 1;
  }

  else
  {
    v34 = v29 ^ 1;
    if (v30)
    {
      v34 = 1;
    }
  }

  v48 = v34;
  sub_29E2C04B4();
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A34();
  if (os_log_type_enabled(v35, v36))
  {
    v47 = v30 != 0;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52 = v5;
    v53 = v38;
    *v37 = 136446978;
    sub_29DEAE5B4();
    v39 = sub_29E2C3424();
    v41 = sub_29DFAA104(v39, v40, &v53);
    v46 = v28;
    v42 = v29;
    v43 = v41;

    *(v37 + 4) = v43;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v42;
    *(v37 + 18) = 1024;
    LODWORD(v43) = v48;
    *(v37 + 20) = v47;
    *(v37 + 24) = 1024;
    *(v37 + 26) = v43;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Received cloud sync status update, syncEnabled: %{BOOL}d, restoreCompleted: %{BOOL}d, shouldProceed: %{BOOL}d", v37, 0x1Eu);
    sub_29DE93B3C(v38);
    MEMORY[0x29ED82140](v38, -1, -1);
    MEMORY[0x29ED82140](v37, -1, -1);

    (*(v50 + 8))(v11, v9);
    a1 = v49;
    if ((v43 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {

    (*(v50 + 8))(v11, v9);
    a1 = v49;
    if ((v48 & 1) == 0)
    {
LABEL_24:
      sub_29DEAE4D8();
      return (*(*(v44 - 8) + 56))(a4, 1, 1, v44);
    }
  }

LABEL_7:
  sub_29DEAE4D8();
  v23 = v22;
  v24 = *(v22 + 48);
  v25 = sub_29E2BFC94();
  (*(*(v25 - 8) + 16))(a4, a1, v25);
  *(a4 + v24) = v51;
  (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  v26 = v51;

  return v26;
}

id sub_29DEACF40(uint64_t a1, void *a2, uint64_t a3)
{
  v122 = a3;
  v125 = a2;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  v123 = v4;
  v124 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v121 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v120 = &v117 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v118 = &v117 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v117 = &v117 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v119 = &v117 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v117 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v117 - v19;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v117 - v22;
  v24 = sub_29E2BFC74();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E2BFC94();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, a1, v28, v30);
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == *MEMORY[0x29EDC2D70])
  {
    (*(v29 + 96))(v32, v28);
    (*(v25 + 32))(v27, v32, v24);
    v34 = sub_29E2BFC64();
    v35 = [v34 menstruationProjectionsEnabled];

    if (v35)
    {
      (*(v25 + 8))(v27, v24);
      v36 = v125;
      if (v125)
      {
        v37 = v125;
        v38 = [v37 lastMenstrualFlowDayIndex];
        if (v38)
        {
          v39 = v38;
          sub_29E2BD5A4();
          sub_29DE966D4(v127, v127[3]);
          v40 = sub_29E2BD4E4();
          v41 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

          sub_29DE93B3C(v127);
          v42 = [v41 lastMenstrualPeriodDismissalDay];

          if (!v42)
          {
            goto LABEL_8;
          }

          v43 = [v42 integerValue];
          if (v43 < [v39 integerValue])
          {

LABEL_8:
            if ([v37 isPeriodLogLate])
            {
              v44 = v118;
              sub_29E2C04B4();
              v45 = sub_29E2C0504();
              v46 = sub_29E2C3A34();
              if (os_log_type_enabled(v45, v46))
              {
                v47 = swift_slowAlloc();
                v48 = swift_slowAlloc();
                v127[0] = v48;
                *v47 = 136446210;
                v49 = sub_29E2C4AE4();
                v51 = sub_29DFAA104(v49, v50, v127);

                *(v47 + 4) = v51;
                _os_log_impl(&dword_29DE74000, v45, v46, "[%{public}s] Should display", v47, 0xCu);
                sub_29DE93B3C(v48);
                MEMORY[0x29ED82140](v48, -1, -1);
                MEMORY[0x29ED82140](v47, -1, -1);

LABEL_33:
                (*(v124 + 8))(v44, v123);
                return v36;
              }
            }

            else
            {
              v44 = v117;
              sub_29E2C04B4();
              v45 = sub_29E2C0504();
              v92 = sub_29E2C3A34();
              if (os_log_type_enabled(v45, v92))
              {
                v93 = swift_slowAlloc();
                v94 = swift_slowAlloc();
                v127[0] = v94;
                *v93 = 136446210;
                v95 = sub_29E2C4AE4();
                v97 = sub_29DFAA104(v95, v96, v127);

                *(v93 + 4) = v97;
                _os_log_impl(&dword_29DE74000, v45, v92, "[%{public}s] Should not display because period log isn't late", v93, 0xCu);
                sub_29DE93B3C(v94);
                MEMORY[0x29ED82140](v94, -1, -1);
                MEMORY[0x29ED82140](v93, -1, -1);

                goto LABEL_33;
              }
            }

            goto LABEL_33;
          }

          v98 = v119;
          sub_29E2C04B4();
          v99 = v42;
          v100 = v39;
          v101 = sub_29E2C0504();
          v102 = sub_29E2C3A34();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v127[0] = v104;
            *v103 = 136446722;
            v105 = sub_29E2C4AE4();
            v107 = sub_29DFAA104(v105, v106, v127);

            *(v103 + 4) = v107;
            *(v103 + 12) = 2080;
            v126 = v99;
            sub_29DE9408C(0, &qword_2A1A5E0B0);
            v108 = v99;
            v109 = sub_29E2C3464();
            v111 = sub_29DFAA104(v109, v110, v127);

            *(v103 + 14) = v111;
            *(v103 + 22) = 2080;
            v126 = v100;
            v112 = v100;
            v113 = sub_29E2C3464();
            v115 = sub_29DFAA104(v113, v114, v127);
            v36 = v125;

            *(v103 + 24) = v115;
            _os_log_impl(&dword_29DE74000, v101, v102, "[%{public}s] Should not display because dismissal day index (%s) is more recent than last menstrual flow day index (%s)", v103, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x29ED82140](v104, -1, -1);
            MEMORY[0x29ED82140](v103, -1, -1);

            (*(v124 + 8))(v119, v123);
          }

          else
          {

            (*(v124 + 8))(v98, v123);
          }
        }

        else
        {
          v84 = v120;
          sub_29E2C04B4();
          v85 = sub_29E2C0504();
          v86 = sub_29E2C3A34();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v127[0] = v88;
            *v87 = 136446210;
            v89 = sub_29E2C4AE4();
            v91 = sub_29DFAA104(v89, v90, v127);

            *(v87 + 4) = v91;
            _os_log_impl(&dword_29DE74000, v85, v86, "[%{public}s] Should not display because no last menstrual flow day index", v87, 0xCu);
            sub_29DE93B3C(v88);
            MEMORY[0x29ED82140](v88, -1, -1);
            MEMORY[0x29ED82140](v87, -1, -1);
          }

          (*(v124 + 8))(v84, v123);
        }
      }

      else
      {
        v76 = v121;
        sub_29E2C04B4();
        v77 = sub_29E2C0504();
        v78 = sub_29E2C3A34();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v127[0] = v80;
          *v79 = 136446210;
          v81 = sub_29E2C4AE4();
          v83 = sub_29DFAA104(v81, v82, v127);

          *(v79 + 4) = v83;
          v36 = v125;
          _os_log_impl(&dword_29DE74000, v77, v78, "[%{public}s] Should not display because no analysis", v79, 0xCu);
          sub_29DE93B3C(v80);
          MEMORY[0x29ED82140](v80, -1, -1);
          MEMORY[0x29ED82140](v79, -1, -1);
        }

        (*(v124 + 8))(v76, v123);
      }
    }

    else
    {
      sub_29E2C04B4();
      v59 = sub_29E2C0504();
      v60 = sub_29E2C3A34();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v127[0] = v62;
        *v61 = 136446210;
        v63 = sub_29E2C4AE4();
        v65 = sub_29DFAA104(v63, v64, v127);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_29DE74000, v59, v60, "[%{public}s] Should not display because period predictions not enabled", v61, 0xCu);
        sub_29DE93B3C(v62);
        MEMORY[0x29ED82140](v62, -1, -1);
        MEMORY[0x29ED82140](v61, -1, -1);
      }

      (*(v124 + 8))(v23, v123);
      (*(v25 + 8))(v27, v24);
      v36 = v125;
      v66 = v125;
    }
  }

  else
  {
    if (v33 == *MEMORY[0x29EDC2D68])
    {
      sub_29E2C04B4();
      v52 = sub_29E2C0504();
      v53 = sub_29E2C3A34();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v127[0] = v55;
        *v54 = 136446210;
        v56 = sub_29E2C4AE4();
        v58 = sub_29DFAA104(v56, v57, v127);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_29DE74000, v52, v53, "[%{public}s] Should not display because onboarding not completed", v54, 0xCu);
        sub_29DE93B3C(v55);
        MEMORY[0x29ED82140](v55, -1, -1);
        MEMORY[0x29ED82140](v54, -1, -1);
      }

      (*(v124 + 8))(v20, v123);
    }

    else
    {
      sub_29E2C04B4();
      v67 = sub_29E2C0504();
      v68 = sub_29E2C3A34();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v127[0] = v70;
        *v69 = 136446210;
        v71 = sub_29E2C4AE4();
        v73 = sub_29DFAA104(v71, v72, v127);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_29DE74000, v67, v68, "[%{public}s] Should not display because onboarding in unknown state", v69, 0xCu);
        sub_29DE93B3C(v70);
        MEMORY[0x29ED82140](v70, -1, -1);
        MEMORY[0x29ED82140](v69, -1, -1);
      }

      (*(v124 + 8))(v17, v123);
    }

    v36 = v125;
    v74 = *(v29 + 8);
    v75 = v125;
    v74(v32, v28);
  }

  return v36;
}

unint64_t sub_29DEADC60@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v33 = a2;
  v32 = a1;
  v34 = a4;
  v31 = sub_29E2BD564();
  v5 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E2BE194();
  v8 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BD594();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BD624();
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a3, v15);
  v29 = sub_29E2BD274();
  sub_29DEAE474(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29E2BD234();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CAB20;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDC3730], v19);
  sub_29E110B7C(v10);
  sub_29E2BE184();
  (*(v8 + 8))(v10, v30);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC3898], v31);
  sub_29E2BD574();
  MenstrualPeriodGenerator = type metadata accessor for LastMenstrualPeriodGenerator();
  swift_allocObject();
  v24 = v32;
  v25 = v32;
  v26 = sub_29E0C05D4(v17, v13, v24, v33);
  v27 = v34;
  v34[3] = MenstrualPeriodGenerator;
  result = sub_29DEAE41C();
  v27[4] = result;
  *v27 = v26;
  return result;
}

uint64_t sub_29DEAE010()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Deallocated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36LastMenstrualPeriodGeneratorPipeline_domain;
  v14 = sub_29E2BD594();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  return v1;
}

uint64_t sub_29DEAE23C()
{
  sub_29DEAE010();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LastMenstrualPeriodGeneratorPipeline()
{
  result = qword_2A1A62560;
  if (!qword_2A1A62560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEAE2E8()
{
  result = sub_29E2BD594();
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

uint64_t sub_29DEAE3A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36LastMenstrualPeriodGeneratorPipeline_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_29DEAE41C()
{
  result = qword_2A1A62668;
  if (!qword_2A1A62668)
  {
    type metadata accessor for LastMenstrualPeriodGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62668);
  }

  return result;
}

void sub_29DEAE474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DEAE4D8()
{
  if (!qword_2A1A615D8)
  {
    sub_29E2BFC94();
    sub_29DEAE54C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A615D8);
    }
  }
}

void sub_29DEAE54C()
{
  if (!qword_2A1A5E270)
  {
    sub_29DE9408C(255, &qword_2A1A61DC0);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E270);
    }
  }
}

unint64_t sub_29DEAE5B4()
{
  result = qword_2A1A624A8[0];
  if (!qword_2A1A624A8[0])
  {
    type metadata accessor for LastMenstrualPeriodGeneratorPipeline();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A624A8);
  }

  return result;
}

uint64_t sub_29DEAE5FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();
}

uint64_t sub_29DEAE674(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7)
{
  v8 = v7;
  v105 = a3;
  v106 = a7;
  LODWORD(v104) = a6;
  v107 = a2;
  v108 = a5;
  v109 = a1;
  v86 = *v7;
  sub_29DEB0F6C(0, &qword_2A1817DD0, sub_29DEB0F38, MEMORY[0x29EDB8AF0]);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v98 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v99 = &v80 - v13;
  sub_29DEB0F6C(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v95 = &v80 - v15;
  sub_29DEB1A98();
  v85 = v16;
  v84 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v83 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB1C20();
  v90 = v18;
  v89 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v87 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB1D74();
  v93 = v20;
  v91 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v88 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB1EAC();
  v96 = *(v22 - 8);
  v97 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v94 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E2C0514();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB0F6C(0, &qword_2A1817DC8, sub_29DEB0F38, MEMORY[0x29EDB8B00]);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v80 - v29;
  sub_29DEB0F38(0);
  v32 = v31;
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v37 = &v80 - v36;
  sub_29E2BCE44();
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel__displayName;
  v39 = sub_29E2BD704();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  sub_29DEB2200(v37, v34, sub_29DEB0F38);
  v40 = v107;
  v102 = v32;
  sub_29E2C11D4();
  sub_29DEB22CC(v37, sub_29DEB0F38);
  v41 = *(v28 + 32);
  v92 = v27;
  v41(&v8[v38], v30, v27);
  v42 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_startDate;
  v43 = sub_29E2BCBB4();
  v44 = *(v43 - 8);
  v45 = *(v44 + 16);
  v46 = &v8[v42];
  v47 = v104;
  v45(v46, v109, v43);
  v45(&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_endDate], v40, v43);
  v48 = v105;
  v103 = a4;
  v49 = v108;
  *(v8 + 2) = a4;
  *(v8 + 3) = v49;
  v8[32] = v47;
  if (v48 >= 4)
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v8[33] = 0x2030100u >> (8 * v48);
    v50 = v106;
    v45(&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_referenceDateForPDFExport], v106, v43);
    if (v47)
    {
      v51 = *(v44 + 8);
      v51(v50, v43);
      v51(v40, v43);
      v51(v109, v43);
    }

    else
    {
      v52 = v103;
      v53 = v108;
      sub_29DEB1F58(v103, v108, 0);
      v105 = v52;
      v104 = v53;
      sub_29E2C04B4();
      v54 = sub_29E2C0504();
      v55 = sub_29E2C3A34();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v110 = v80;
        *v56 = 136446210;
        v57 = v86;
        v58 = sub_29E2C4AE4();
        v60 = sub_29DFAA104(v58, v59, &v110);

        *(v56 + 4) = v60;
        v61 = v55;
        v62 = v57;
        _os_log_impl(&dword_29DE74000, v54, v61, "[%{public}s] firing ProfileDisplayNamePublisher", v56, 0xCu);
        v63 = v80;
        sub_29DE93B3C(v80);
        MEMORY[0x29ED82140](v63, -1, -1);
        MEMORY[0x29ED82140](v56, -1, -1);

        (*(v81 + 8))(v25, v82);
      }

      else
      {

        (*(v81 + 8))(v25, v82);
        v62 = v86;
      }

      sub_29E2BFD34();
      sub_29DEB1D2C(&qword_2A1817E20, MEMORY[0x29EDC3D08]);
      v110 = sub_29E2BD4D4();
      sub_29DEB1B44();
      sub_29DEB1D2C(&qword_2A1A5E748, sub_29DEB1B44);
      v64 = v83;
      sub_29E2C12A4();

      *(swift_allocObject() + 16) = v62;
      sub_29DEB1D0C(0);
      sub_29DEB1D2C(&qword_2A1817DF0, sub_29DEB1A98);
      sub_29DEB1D2C(&qword_2A1817DF8, sub_29DEB1D0C);
      v65 = v87;
      v66 = v85;
      sub_29E2C12C4();

      (*(v84 + 8))(v64, v66);
      sub_29DEB1E60();
      v67 = sub_29E2C3CF4();
      v110 = v67;
      v68 = sub_29E2C3CE4();
      v69 = v95;
      (*(*(v68 - 8) + 56))(v95, 1, 1, v68);
      sub_29DEB1D2C(&qword_2A1817E08, sub_29DEB1C20);
      sub_29DEB1D2C(&qword_2A1A61D38, sub_29DEB1E60);
      v70 = v88;
      v71 = v90;
      sub_29E2C1354();
      sub_29DEB1FA4(v69);

      (*(v89 + 8))(v65, v71);
      sub_29DEB1D2C(&qword_2A1817E18, sub_29DEB1D74);
      v72 = v93;
      v73 = v94;
      sub_29E2C1284();
      (*(v91 + 8))(v70, v72);
      swift_beginAccess();
      v74 = v99;
      sub_29E2C11E4();
      swift_endAccess();
      sub_29DEB1D2C(&qword_2A1817E28, sub_29DEB1EAC);
      v75 = v97;
      sub_29E2C13A4();
      (*(v96 + 8))(v73, v75);
      v77 = v100;
      v76 = v101;
      (*(v100 + 16))(v98, v74, v101);
      swift_beginAccess();
      sub_29E2C11F4();
      swift_endAccess();

      sub_29DEB2030(v103, v108, 0);
      v78 = *(v44 + 8);
      v78(v106, v43);
      v78(v107, v43);
      v78(v109, v43);
      (*(v77 + 8))(v74, v76);
    }

    return v8;
  }

  return result;
}

uint64_t sub_29DEAF464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BD704();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_29DEAF534@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29DEB2074(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E2C0514();
  v9 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_29E2C04B4();
  v13 = v12;
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v6;
    v19 = v18;
    v37 = v18;
    *v17 = 136446466;
    v20 = sub_29E2C4AE4();
    v22 = sub_29DFAA104(v20, v21, &v37);
    v34 = a2;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v36 = v12;
    v24 = v12;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v25 = sub_29E2C3424();
    v27 = sub_29DFAA104(v25, v26, &v37);

    *(v17 + 14) = v27;
    a2 = v34;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] ProfileDisplayNamePublisher encountered an error: %s", v17, 0x16u);
    swift_arrayDestroy();
    v28 = v19;
    v6 = v32;
    MEMORY[0x29ED82140](v28, -1, -1);
    v29 = v17;
    v5 = v33;
    MEMORY[0x29ED82140](v29, -1, -1);
  }

  (*(v9 + 8))(v11, v35);
  sub_29DEB0F38(0);
  sub_29E2C1174();
  sub_29DEB1D2C(&qword_2A1817E38, sub_29DEB2074);
  v30 = sub_29E2C1274();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v30;
  return result;
}

uint64_t sub_29DEAF878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29DEB2200(a1, a2, sub_29DEB0F38);
  sub_29DEB0F38(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_29DEAF900()
{
  v1 = v0;
  sub_29DEB2104();
  v3 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v26 - v7;
  sub_29DEB216C();
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_startDate;
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_endDate;
  v15 = sub_29E2BCBB4();
  sub_29DEB1D2C(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  result = sub_29E2C32B4();
  if (result)
  {
    v17 = *(v15 - 8);
    v18 = v13;
    v19 = v14;
    v20 = v17;
    v27 = v10;
    v21 = *(v17 + 16);
    v21(v8, v1 + v18, v15);
    v21(&v8[*(v3 + 48)], v1 + v19, v15);
    sub_29DEB2200(v8, v5, sub_29DEB2104);
    v22 = *(v3 + 48);
    v23 = *(v20 + 32);
    v23(v12, v5, v15);
    v24 = *(v20 + 8);
    v24(&v5[v22], v15);
    sub_29DEB2268(v8, v5);
    v23(&v12[*(v27 + 36)], &v5[*(v3 + 48)], v15);
    v24(v5, v15);
    v25 = sub_29E1BA23C();
    sub_29DEB22CC(v12, sub_29DEB216C);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DEAFBC8()
{
  v35 = sub_29E2BCBB4();
  v0 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v32 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29E2C31A4();
  v36 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCC94();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCEA4();
  v31 = *(v8 - 8);
  v9 = v31;
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = v27 - v14;
  (*(v5 + 104))(v7, *MEMORY[0x29EDB9C78], v4, v13);
  sub_29E2BCCA4();
  (*(v5 + 8))(v7, v4);
  v16 = *(v0 + 16);
  v27[1] = v0 + 16;
  v28 = v16;
  v17 = v34;
  v18 = v32;
  v16(v32, v34 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_startDate, v35);
  v27[0] = *(v9 + 16);
  v30 = v8;
  (v27[0])(v11, v15, v8);
  sub_29E2C3144();
  v29 = sub_29E2C3164();
  v19 = *(v36 + 8);
  v36 += 8;
  v20 = v33;
  v19(v3, v33);
  v28(v18, v17 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_endDate, v35);
  v21 = v15;
  (v27[0])(v11, v15, v8);
  sub_29E2C3144();
  v22 = sub_29E2C3164();
  v19(v3, v20);
  v37 = v29;
  v38 = sub_29E2C48D4();
  v39 = v23;
  MEMORY[0x29ED7FCC0](2108704, 0xE300000000000000);
  v37 = v22;
  v24 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v24);

  v25 = v38;
  (*(v31 + 8))(v21, v30);
  return v25;
}

uint64_t sub_29DEAFFF8()
{
  v1 = *v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BC5F4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 32))
  {
    return 0;
  }

  v32 = v1;
  v33 = v5;
  v34 = v3;
  v35 = v2;
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_userCalendar;
  v38 = v12;
  sub_29DEB0F6C(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v15 = sub_29E2BCE84();
  v36 = v6;
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E2CAB20;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x29EDB9CB8], v16);
  sub_29DE924A4(v19);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  swift_deallocClassInstance();
  sub_29E2BCB54();
  sub_29E2BCD04();

  (*(v7 + 8))(v9, v36);
  v20 = sub_29E2BC554();
  v22 = v21;
  result = (*(v11 + 8))(v14, v38);
  if (v22)
  {
    v24 = v33;
    sub_29E2C04B4();
    v25 = sub_29E2C0504();
    v26 = sub_29E2C3A14();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136446210;
      v29 = sub_29E2C4AE4();
      v31 = sub_29DFAA104(v29, v30, &v39);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_29DE74000, v25, v26, "[%{public}s] Failed to calculate the days from the deviation endDate til reference date", v27, 0xCu);
      sub_29DE93B3C(v28);
      MEMORY[0x29ED82140](v28, -1, -1);
      MEMORY[0x29ED82140](v27, -1, -1);
    }

    (*(v34 + 8))(v24, v35);
    return 0;
  }

  if (!__OFADD__(v20, 1))
  {
    return v20 + 1 < 180;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DEB0488()
{
  v1 = sub_29E2BD704();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB0F38(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {

    return sub_29DEB0994();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_29DEB22CC(v7, sub_29DEB0F38);
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_29DEB22CC(v7, sub_29DEB0F38);
      v9 = sub_29E2BD6F4();
      v10 = v11;
      (*(v2 + 8))(v4, v1);
    }

    sub_29DEB072C();
    sub_29DEB19DC();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29E2CAB20;
    *(v12 + 56) = MEMORY[0x29EDC99B0];
    *(v12 + 64) = sub_29DEB1A44();
    *(v12 + 32) = v9;
    *(v12 + 40) = v10;
    v13 = sub_29E2C33B4();

    return v13;
  }
}

uint64_t sub_29DEB072C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DEB0994()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DEB0BF8()
{
  sub_29DEB2030(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_startDate;
  v2 = sub_29E2BCBB4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_endDate, v2);
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_userCalendar;
  v5 = sub_29E2BCEA4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel_referenceDateForPDFExport, v2);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDetailViewModel__displayName;
  sub_29DEB0F6C(0, &qword_2A1817DC8, sub_29DEB0F38, MEMORY[0x29EDB8B00]);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviationDetailViewModel()
{
  result = qword_2A1817DB8;
  if (!qword_2A1817DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEB0DF0()
{
  sub_29E2BCBB4();
  if (v0 <= 0x3F)
  {
    sub_29E2BCEA4();
    if (v1 <= 0x3F)
    {
      sub_29DEB0F6C(319, &qword_2A1817DC8, sub_29DEB0F38, MEMORY[0x29EDB8B00]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29DEB0F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DEB0FD0(uint64_t a1)
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

__n128 initializeBufferWithCopyOfBuffer for MenstrualCyclesOnboardingPickerViewController.OnboardingPickerType(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29DEB1000(uint64_t a1, unsigned int a2)
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

uint64_t sub_29DEB1048(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29DEB108C(uint64_t result, unsigned int a2)
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

void sub_29DEB10B4(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_12;
    }

    v2 = objc_opt_self();
    v3 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v4 = [v2 imageNamed:v3 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    if (v4)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
LABEL_16:
    v11 = objc_opt_self();
    v12 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v13 = [v11 imageNamed:v12 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    if (!v13)
    {
      __break(1u);
    }

    return;
  }

  v5 = objc_opt_self();
  v6 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v7 = [v5 imageNamed:v6 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (!v7)
  {
    __break(1u);
LABEL_12:
    v8 = objc_opt_self();
    v9 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = [v8 imageNamed:v9 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    if (!v10)
    {
      __break(1u);
      goto LABEL_16;
    }
  }
}

uint64_t sub_29DEB1368()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DEB15CC()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DEB1834()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();
}

uint64_t sub_29DEB18B0(uint64_t a1)
{
  sub_29DEB0F38(0);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9 - v6;
  sub_29DEB2200(a1, &v9 - v6, sub_29DEB0F38);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29DEB2200(v7, v5, sub_29DEB0F38);

  sub_29E2C1224();
  return sub_29DEB22CC(v7, sub_29DEB0F38);
}

void sub_29DEB19DC()
{
  if (!qword_2A1A61CA0)
  {
    sub_29DEB1BC4(255, &qword_2A1A61C60);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61CA0);
    }
  }
}

unint64_t sub_29DEB1A44()
{
  result = qword_2A1A61E00;
  if (!qword_2A1A61E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61E00);
  }

  return result;
}

void sub_29DEB1A98()
{
  if (!qword_2A1817DD8)
  {
    sub_29DEB1B44();
    sub_29DEB0F38(255);
    sub_29DEB1D2C(&qword_2A1A5E748, sub_29DEB1B44);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817DD8);
    }
  }
}

void sub_29DEB1B44()
{
  if (!qword_2A1A5E740)
  {
    sub_29E2BD704();
    sub_29DEB1BC4(255, &qword_2A1A61C90);
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E740);
    }
  }
}

uint64_t sub_29DEB1BC4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29DEB1C20()
{
  if (!qword_2A1817DE0)
  {
    sub_29DEB1A98();
    sub_29DEB1D0C(255);
    sub_29DEB1D2C(&qword_2A1817DF0, sub_29DEB1A98);
    sub_29DEB1D2C(&qword_2A1817DF8, sub_29DEB1D0C);
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817DE0);
    }
  }
}