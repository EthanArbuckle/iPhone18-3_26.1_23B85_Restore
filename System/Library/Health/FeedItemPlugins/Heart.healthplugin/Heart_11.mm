void sub_29D7B072C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &qword_2A1A221D0, 0x29EDC51F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D7B079C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D7B07FC()
{
  if (!qword_2A1A21F38)
  {
    sub_29D6B7370(255, &qword_2A1A246B0);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21F38);
    }
  }
}

void sub_29D7B0864()
{
  if (!qword_2A17B4C70)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_29D7B08FC(&qword_2A17B13E8, 255, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4C70);
    }
  }
}

uint64_t sub_29D7B08FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29D7B0944()
{
  if (!qword_2A17B4C98)
  {
    sub_29D9339F8();
    sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4C98);
    }
  }
}

void *sub_29D7B09F4()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_29D7B0A9C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v10);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
    sub_29D933E08();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_29D7B2810();
  v5 = v4;
  v6 = a1;
  v7 = sub_29D93A708();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void *sub_29D7B0C1C()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_29D7B0CC4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v10);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
    sub_29D933E08();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_29D7B2810();
  v5 = v4;
  v6 = a1;
  v7 = sub_29D93A708();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

uint64_t sub_29D7B0E44@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v3 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v4 = sub_29D9339F8();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_29D7B0F3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v2 + v10, v4);
  sub_29D7B2AFC(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
  v17[0] = a1;
  LOBYTE(a1) = sub_29D939CF8();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v17[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v10, v9, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v14);
    v15 = v17[0];
    v17[-2] = v2;
    v17[-1] = v15;
    v17[1] = v2;
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
    sub_29D933E08();
  }

  return (v12)(v17[0], v4);
}

uint64_t sub_29D7B11DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v5 = sub_29D9339F8();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_29D7B1278()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  return *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
}

uint64_t sub_29D7B1320(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v4);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
    sub_29D933E08();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis) = result;
  return result;
}

void *sub_29D7B145C()
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v1 = *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
  v2 = v1;
  return v1;
}

void sub_29D7B150C(void *a1)
{
  v3 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory;
  if (*(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory))
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v4 = sub_29D939D68();
    v6 = v5;
    if (v4 != sub_29D939D68() || v6 != v7)
    {
      v9 = sub_29D93AD78();

      if (v9)
      {
        goto LABEL_12;
      }

LABEL_10:
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath, v11);
      sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
      sub_29D933E08();

      return;
    }
  }

  else if (a1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v12 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_29D7B16B8()
{
  v1 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities;
  if (*(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities);
  }

  else
  {
    v3 = *(v0 + 16);
    type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v3;
    type metadata accessor for BloodPressureJournalAnalyticsUtilities();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v2[5] = v4;
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

uint64_t sub_29D7B17B0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  return *(v2 + *a2);
}

uint64_t sub_29D7B1850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didTapLearnMore);
  return result;
}

uint64_t sub_29D7B1928(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v4);
    sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
    sub_29D933E08();
  }

  return result;
}

uint64_t sub_29D7B1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D7B1BA8();
  v12 = v11;
  v13 = 0;
  v14 = *(a2 + 40);
  if ((v11 & 1) == 0)
  {
    v13 = sub_29D93A138();
  }

  v15 = [v14 hypertensiveEscalationForClassificationGuidelines:a1 systolic:a3 diastolic:a4 age:{v13, a5}];

  sub_29D7B1320(v15);
  if (a1 == 2)
  {
    if (v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_29D93A138();
    }

    v17 = sub_29D93A618();

    sub_29D7B150C(v17);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  *(v18 + 24) = a6;

  sub_29D7B1EA8(sub_29D7B2894, v18);
}

id sub_29D7B1BA8()
{
  v1 = v0;
  v29[1] = *MEMORY[0x29EDCA608];
  v2 = *v0;
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[2];
  v29[0] = 0;
  v10 = [v9 dateOfBirthComponentsWithError_];
  if (v10)
  {
    v11 = v29[0];
    sub_29D9339E8();
    v12 = sub_29D933958();
    (*(v4 + 8))(v8, v3);
    v13 = [v10 hk:v12 ageWithCurrentDate:?];
  }

  else
  {
    v14 = v29[0];
    v15 = sub_29D933598();

    swift_willThrow();
    v16 = sub_29D933588();
    v17 = [v16 hk_isDatabaseAccessibilityError];

    if (v17)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v18 = sub_29D937898();
      sub_29D69C6C0(v18, qword_2A1A2C008);
      v19 = sub_29D937878();
      v20 = sub_29D93A288();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29[0] = v22;
        *v21 = 136315138;
        v23 = sub_29D93AF08();
        v25 = sub_29D6C2364(v23, v24, v29);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_29D677000, v19, v20, "[%s] database is inaccessible; unable to determine user age", v21, 0xCu);
        sub_29D69417C(v22);
        MEMORY[0x29ED6BE30](v22, -1, -1);
        MEMORY[0x29ED6BE30](v21, -1, -1);
      }
    }

    else
    {
    }

    v13 = 0;
  }

  v26 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29D7B1EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = *v2;
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28[0] = v2;
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v12 = v2[6];
  if (v12)
  {
    v26 = a2;
    swift_getKeyPath();
    v28[0] = v3;
    v13 = v12;
    sub_29D933E18();

    v14 = *(v3 + 56);
    if (v14)
    {
      v25 = *(v3 + 32);
      swift_getKeyPath();
      v28[0] = v3;
      v15 = v14;
      sub_29D933E18();

      v16 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
      swift_beginAccess();
      (*(v7 + 16))(v11, v3 + v16, v6);
      sub_29D7C6DCC(v13, v15, v11, v27, v26);

      (*(v7 + 8))(v11, v6);
      return;
    }
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v17 = sub_29D937898();
  sub_29D69C6C0(v17, qword_2A1A2C008);
  v18 = sub_29D937878();
  v19 = sub_29D93A288();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28[0] = v21;
    *v20 = 136315138;
    v22 = sub_29D93AF08();
    v24 = sub_29D6C2364(v22, v23, v28);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_29D677000, v18, v19, "[%s] Cannot save blood pressure sample because no value was found", v20, 0xCu);
    sub_29D69417C(v21);
    MEMORY[0x29ED6BE30](v21, -1, -1);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }
}

uint64_t sub_29D7B2224(char a1, int a2)
{
  v3 = v2;
  v16 = a2;
  sub_29D6A08F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B16B8();
  v10 = *(v2 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel_provenance);
  swift_getKeyPath();
  v18 = v2;
  sub_29D7B2AFC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v11 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v12 = sub_29D9339F8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, v3 + v11, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  swift_getKeyPath();
  v17 = v3;
  sub_29D933E18();

  LODWORD(v11) = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate);
  swift_getKeyPath();
  v17 = v3;
  sub_29D933E18();

  sub_29D8D1130(a1, v16, v10, v9, v11, *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didTapLearnMore));

  return sub_29D6A0D34(v9);
}

uint64_t sub_29D7B2470()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  v4 = sub_29D9339F8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities);

  v6 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel___observationRegistrar;
  v7 = sub_29D933E38();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_29D7B2570()
{
  sub_29D7B2470();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalLoggingModel()
{
  result = qword_2A17B4CE0;
  if (!qword_2A17B4CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7B261C()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29D933E38();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_29D7B2764()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory);
  *(v1 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory) = v2;
  v4 = v2;
}

void sub_29D7B27D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

unint64_t sub_29D7B2810()
{
  result = qword_2A17B4700;
  if (!qword_2A17B4700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B4700);
  }

  return result;
}

void sub_29D7B285C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_29D7B2894(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v2(v4);
}

uint64_t sub_29D7B28C8(void *a1, uint64_t a2, char a3)
{
  v7 = sub_29D9339F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis) = 2;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__bloodPressureClassificationCategory) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___eventSubmissionManager) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel____lazy_storage___analyticsUtilities) = 0;
  sub_29D933E28();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel_provenance) = a3;
  type metadata accessor for BloodPressureSampleManager();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v3 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v15 = a1;

  *(v3 + 40) = [v14 initWithHealthStore_];

  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  sub_29D9339A8();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate, v12, v7);
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate) = 0;
  *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didTapLearnMore) = 0;
  return v3;
}

uint64_t sub_29D7B2AFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7B2B44()
{
  if (!qword_2A17B4CF8)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4CF8);
    }
  }
}

unint64_t sub_29D7B2B98()
{
  result = qword_2A17B4D00;
  if (!qword_2A17B4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D00);
  }

  return result;
}

unint64_t sub_29D7B2BF0()
{
  result = qword_2A17B4D08;
  if (!qword_2A17B4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D08);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenChartSection()
{
  result = qword_2A17B4D18;
  if (!qword_2A17B4D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7B2CDC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_29D936BE8();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D935C78();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B4084(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v27 - v12;
  v14 = sub_29D937B88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9379F8();
  sub_29D935E88();
  sub_29D937B48();
  v20 = [objc_opt_self() preferredFontForTextStyle_];
  v21 = sub_29D937A98();
  sub_29D937A58();
  v21(v36, 0);
  v22 = [objc_opt_self() labelColor];
  v23 = sub_29D937A98();
  sub_29D937A68();
  v23(v36, 0);
  v36[3] = v14;
  v36[4] = MEMORY[0x29EDC7800];
  v24 = sub_29D693F78(v36);
  (*(v15 + 16))(v24, v19, v14);
  sub_29D9379C8();
  v25 = sub_29D9379E8();
  (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_29D93AA18();

  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v34 = qword_2A17B1B70;
  v35 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D9594E0);
  (*(v27 + 104))(v29, *MEMORY[0x29EDC22C8], v28);
  (*(v31 + 104))(v30, *MEMORY[0x29EDC2A38], v32);
  sub_29D935D98();
  return (*(v15 + 8))(v19, v14);
}

id sub_29D7B31F0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29D933A58();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D9359D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v51 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = v45 - v19;
  v49 = v3;
  *(v3 + qword_2A17B4D10) = 0;
  sub_29D7B4084(0, &qword_2A17B1138, sub_29D6FC5F4, MEMORY[0x29EDC9E90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D93F680;
  v22 = objc_opt_self();
  v50 = a1;
  result = [v22 _quantityTypeWithCode_];
  if (result)
  {
    v24 = result;
    *(v21 + 56) = &type metadata for AFibBurdenChartItem;
    *(v21 + 64) = sub_29D7B3EC8();
    *(v21 + 32) = v24;
    *(v21 + 40) = a1;
    *(v21 + 48) = 0;
    type metadata accessor for AFibBurdenChartSection();
    *(v21 + 96) = sub_29D935DA8();
    *(v21 + 104) = sub_29D7B403C(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
    v25 = sub_29D693F78((v21 + 72));
    sub_29D7B2CDC(v25);
    sub_29D9359C8();
    ObjectType = swift_getObjectType();
    v27 = *(a3 + 8);
    v45[1] = a2;
    v28 = v27(ObjectType, a3);
    v45[0] = v20;
    if (v28)
    {
      sub_29D7B4084(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v29 = *(v13 + 72);
      v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_29D93DDB0;
      (*(v13 + 16))(v31 + v30, v20, v12);
    }

    v32 = v12;
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    sub_29D93AA18();

    strcpy(v52, "MutableArray<");
    HIWORD(v52[1]) = -4864;
    sub_29D933A48();
    v33 = sub_29D933A18();
    v35 = v34;
    (*(v46 + 8))(v11, v47);
    MEMORY[0x29ED6A240](v33, v35);

    MEMORY[0x29ED6A240](62, 0xE100000000000000);
    v36 = sub_29D935B28();
    v37 = *(a3 + 16);

    v52[0] = v37(ObjectType, a3);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v51;
    v40 = v45[0];
    (*(v13 + 16))(v51, v45[0], v32);
    v41 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    (*(v13 + 32))(v42 + v41, v39, v32);
    sub_29D6AD548();
    sub_29D7B403C(&qword_2A1A223E0, sub_29D6AD548);
    v43 = sub_29D938588();

    sub_29D936978();

    (*(v13 + 8))(v40, v32);
    v44 = *(v36 + qword_2A17B4D10);
    *(v36 + qword_2A17B4D10) = v43;

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7B37A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v4)
    {
      sub_29D7B4084(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v6 = sub_29D9359D8();
      v7 = *(v6 - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_29D93DDB0;
      (*(v7 + 16))(v10 + v9, a3, v6);
    }

    sub_29D935B38();
  }

  return result;
}

uint64_t sub_29D7B3918()
{
  if (*(v0 + qword_2A17B4D10))
  {
    v1 = *(v0 + qword_2A17B4D10);

    sub_29D938268();
  }

  v2 = *(sub_29D935BA8() + qword_2A17B4D10);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7B39D4()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935678();
  v6 = sub_29D935608();
  (*(v1 + 8))(v5, v0);
  return v6;
}

void *sub_29D7B3B0C()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_29D7B3B34()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_29D7B3B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[0] = a2;
  v9 = sub_29D933CE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_29D933C08();

  sub_29D933B08();
  v16 = objc_allocWithZone(MEMORY[0x29EDC4668]);
  v17 = sub_29D933BB8();
  v18 = sub_29D939D28();
  v19 = [v16 initWithCalendar:v17 queryIdentifier:v18];

  [a1 setSleepDataSourceProvider_];
  v20 = [a1 healthStore];
  v21 = [objc_allocWithZone(MEMORY[0x29EDC6C20]) initWithHealthStore_];

  [a1 setSleepChartFormatter_];
  v22 = [a1 healthStore];
  v23 = sub_29D936528();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  [a1 setAddDataViewControllerProvider_];

  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  sub_29D7B40E8();
  v26 = sub_29D935FC8();
  (*(v10 + 8))(v14, v9);
  return v26;
}

uint64_t sub_29D7B3E40(uint64_t a1)
{
  v2 = sub_29D7B3F64();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D7B3EC8()
{
  result = qword_2A17B4D28;
  if (!qword_2A17B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D28);
  }

  return result;
}

unint64_t sub_29D7B3F64()
{
  result = qword_2A17B4D38;
  if (!qword_2A17B4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D38);
  }

  return result;
}

uint64_t sub_29D7B3FC8(unsigned __int8 *a1)
{
  v3 = *(sub_29D9359D8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29D7B37A4(a1, v4, v5);
}

uint64_t sub_29D7B403C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7B4084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D7B40E8()
{
  result = qword_2A17B4D40;
  if (!qword_2A17B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4D40);
  }

  return result;
}

id sub_29D7B413C()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = [v2 bundleForClass_];
  sub_29D9334A8();

  v6 = sub_29D939D28();

  v9.receiver = v0;
  v9.super_class = type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v4, v6, 0, 2, 0xE000000000000000);

  return v7;
}

void sub_29D7B42E0()
{
  v65.receiver = v0;
  v65.super_class = type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController();
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  sub_29D6A0C58();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D943A10;
  v2 = v1;
  v59 = v1;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v6 = sub_29D9334A8();
  v8 = v7;

  v9 = [v4 bundleForClass_];
  v10 = sub_29D9334A8();
  v12 = v11;

  v60 = type metadata accessor for TitleDetailsView();
  v13 = objc_allocWithZone(v60);
  *&v13[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v13[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v14 = &v13[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v14 = v6;
  v14[1] = v8;
  v15 = &v13[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v15 = v10;
  v15[1] = v12;
  v64.receiver = v13;
  v64.super_class = v60;
  v16 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  *(v2 + 32) = v16;
  v17 = [v4 bundleForClass_];
  v18 = sub_29D9334A8();
  v20 = v19;

  v21 = [v4 bundleForClass_];
  v22 = sub_29D9334A8();
  v24 = v23;

  v25 = objc_allocWithZone(v60);
  *&v25[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v25[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v26 = &v25[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v26 = v18;
  v26[1] = v20;
  v27 = &v25[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v27 = v22;
  v27[1] = v24;
  v63.receiver = v25;
  v63.super_class = v60;
  v28 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  v59[5] = v28;
  v29 = [v4 bundleForClass_];
  v30 = sub_29D9334A8();
  v32 = v31;

  v33 = [v4 bundleForClass_];
  v34 = sub_29D9334A8();
  v36 = v35;

  v37 = objc_allocWithZone(v60);
  *&v37[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v37[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v38 = &v37[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v38 = v30;
  v38[1] = v32;
  v39 = &v37[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v39 = v34;
  v39[1] = v36;
  v62.receiver = v37;
  v62.super_class = v60;
  v40 = objc_msgSendSuper2(&v62, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  v59[6] = v40;
  v41 = [v4 bundleForClass_];
  v42 = sub_29D9334A8();
  v44 = v43;

  v45 = [v4 bundleForClass_];
  v46 = sub_29D9334A8();
  v48 = v47;

  v49 = objc_allocWithZone(v60);
  *&v49[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] = 0;
  *&v49[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] = 0;
  v50 = &v49[OBJC_IVAR____TtC5Heart16TitleDetailsView_title];
  *v50 = v42;
  v50[1] = v44;
  v51 = &v49[OBJC_IVAR____TtC5Heart16TitleDetailsView_details];
  *v51 = v46;
  v51[1] = v48;
  v61.receiver = v49;
  v61.super_class = v60;
  v52 = objc_msgSendSuper2(&v61, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, 0xE000000000000000);
  sub_29D6B24BC();

  v59[7] = v52;
  v53 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  sub_29D7B4B44();
  v54 = sub_29D939F18();

  v55 = [v53 initWithArrangedSubviews_];

  [v55 setTranslatesAutoresizingMaskIntoConstraints_];
  [v55 setAxis_];
  [v55 setAlignment_];
  [v55 setDistribution_];
  [v55 setSpacing_];
  v56 = [v58 contentView];
  [v56 addSubview_];

  v57 = [v58 contentView];
  [v55 hk:v57 alignConstraintsWithView:?];
}

id sub_29D7B4AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingAboutHealthDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D7B4B44()
{
  result = qword_2A17B2978;
  if (!qword_2A17B2978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B2978);
  }

  return result;
}

uint64_t sub_29D7B4C44(void *a1)
{
  v2 = v1;
  v3 = [a1 healthDataSource];
  if (!v3)
  {
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v4 = v3;
  v5 = sub_29D73F010(MEMORY[0x29EDCA190]);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (*(v2 + 24))
  {
    if (v7 == 1)
    {
      v8 = 0xE600000000000000;
      v9 = 0x6E6F69676572;
    }

    else if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v8 = 0xEC00000066664F65;
          v9 = 0x7461527472616568;
        }

        else
        {
          v8 = 0x800000029D9626D0;
          v9 = 0xD000000000000011;
        }
      }

      else
      {
        v8 = 0xE300000000000000;
        v9 = 6645601;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        v9 = 0xD000000000000013;
        v8 = 0x800000029D962690;
      }

      else
      {
        v8 = 0xEE0066664F746365;
        v9 = 0x7465447473697277;
      }
    }

    else if (v6 == 3)
    {
      v8 = 0xEF7369736F6E6761;
      v9 = 0x6944626946416F6ELL;
    }

    else
    {
      v8 = 0x800000029D9626B0;
      v9 = 0xD000000000000014;
    }
  }

  else
  {
    v8 = 0xEB00000000656C62;
    v9 = 0x616C696176616E75;
  }

  v10 = MEMORY[0x29EDC99B0];
  v68 = MEMORY[0x29EDC99B0];
  *&v67 = v9;
  *(&v67 + 1) = v8;
  sub_29D6940E0(&v67, v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v5;
  sub_29D69242C(v66, 0x616552726F727265, 0xEB000000006E6F73, isUniquelyReferenced_nonNull_native);
  v12 = v69;
  v13 = *(v2 + 25);
  if (v13 <= 2)
  {
    if (*(v2 + 25))
    {
      if (v13 == 1)
      {
        v15 = 0x7472617453746567;
        v14 = 0xEA00000000006465;
      }

      else
      {
        v14 = 0xEA0000000000736BLL;
        v15 = 0x726F577449776F68;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      v15 = 0x7472617473;
    }
  }

  else if (*(v2 + 25) > 4u)
  {
    if (v13 == 5)
    {
      v15 = 0xD000000000000013;
      v14 = 0x800000029D95A400;
    }

    else
    {
      v14 = 0xEA00000000006E6FLL;
      v15 = 0x6974656C706D6F63;
    }
  }

  else if (v13 == 3)
  {
    v14 = 0x800000029D95A420;
    v15 = 0xD000000000000010;
  }

  else
  {
    v14 = 0xEB0000000073726FLL;
    v15 = 0x746361466566696CLL;
  }

  v68 = v10;
  *&v67 = v15;
  *(&v67 + 1) = v14;
  sub_29D6940E0(&v67, v66);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v66, 1885697139, 0xE400000000000000, v16);
  v69 = v12;
  v17 = *(v2 + 32);
  if (!v17)
  {
    sub_29D8C42F8(0x437972746E756F63, 0xEB0000000065646FLL, &v67);
    sub_29D6FE6B0(&v67);
    if (v7 <= 1)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_29D8C42F8(0x746544726F727265, 0xEB000000006C6961, &v67);
    sub_29D6FE6B0(&v67);
    goto LABEL_28;
  }

  v18 = [v17 ISOCode];
  v19 = sub_29D939D68();
  v21 = v20;

  v10 = MEMORY[0x29EDC99B0];
  v68 = MEMORY[0x29EDC99B0];
  *&v67 = v19;
  *(&v67 + 1) = v21;
  sub_29D6940E0(&v67, v66);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v66, 0x437972746E756F63, 0xEB0000000065646FLL, v22);
  v69 = v12;
  if (v7 > 1)
  {
    goto LABEL_27;
  }

LABEL_25:
  v23 = HKAnalyticsErrorDetailsForFeatureAvailabilityOnboardingIneligibilityReasons();
  v24 = sub_29D939D68();
  v26 = v25;

  v68 = v10;
  *&v67 = v24;
  *(&v67 + 1) = v26;
  sub_29D6940E0(&v67, v66);
  v27 = v69;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v66, 0x746544726F727265, 0xEB000000006C6961, v28);
  v69 = v27;
LABEL_28:
  v29 = *MEMORY[0x29EDBA370];
  v30 = sub_29D939D68();
  v32 = v31;
  v33 = [a1 environmentDataSource];
  v34 = [v33 activePairedDeviceProductType];

  if (v34)
  {
    v35 = sub_29D939D68();
    v37 = v36;

    v68 = MEMORY[0x29EDC99B0];
    *&v67 = v35;
    *(&v67 + 1) = v37;
    sub_29D6940E0(&v67, v66);
    v38 = v69;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v66, v30, v32, v39);

    v69 = v38;
  }

  else
  {
    sub_29D8C42F8(v30, v32, &v67);

    sub_29D6FE6B0(&v67);
  }

  v40 = *MEMORY[0x29EDBA380];
  v41 = sub_29D939D68();
  v43 = v42;
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v44 = sub_29D937898();
  v45 = sub_29D69C6C0(v44, qword_2A1A2BF28);
  type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent();
  v46 = sub_29D93A308();
  v47 = v4;
  v48 = MEMORY[0x29EDC99B0];
  v68 = MEMORY[0x29EDC99B0];
  *&v67 = v46;
  *(&v67 + 1) = v49;
  sub_29D6940E0(&v67, v66);
  v50 = v69;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v66, v41, v43, v51);

  v69 = v50;
  v52 = *MEMORY[0x29EDBA378];
  v53 = sub_29D939D68();
  v55 = v54;
  v56 = [a1 environmentDataSource];
  v57 = sub_29D8A3520(v47, v56, v45);

  v68 = sub_29D6B73CC();
  *&v67 = v57;
  sub_29D6940E0(&v67, v66);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v66, v53, v55, v58);

  v59 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
  v60 = sub_29D939D68();
  v62 = v61;

  v68 = v48;
  *&v67 = v60;
  *(&v67 + 1) = v62;
  sub_29D6940E0(&v67, v66);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v66, 0x5665727574616566, 0xEE006E6F69737265, v63);
  sub_29D936978();
  return v50;
}

uint64_t sub_29D7B54C8()
{
  v1 = *(v0 + 32);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LowHeartRateNotificationsFeatureStatusActionHandler()
{
  result = qword_2A1A244C0;
  if (!qword_2A1A244C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7B55B0()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9346E8();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934C58();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v62 = &v58 - v16;
  v17 = sub_29D936638();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D9369E8();
  v23 = MEMORY[0x29EDC2970];
  sub_29D7B5F98(&qword_2A17B1E40, MEMORY[0x29EDC2970]);
  sub_29D7B5F98(&qword_2A17B3920, v23);
  sub_29D936628();
  v24 = *(v18 + 8);
  v24(v22, v17);
  if (!v67[0])
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v41 = sub_29D937898();
    sub_29D69C6C0(v41, qword_2A1A2C008);
    v37 = sub_29D937878();
    v42 = sub_29D93A298();
    if (os_log_type_enabled(v37, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67[0] = v44;
      *v43 = 136315138;
      v45 = sub_29D93AF08();
      v47 = sub_29D6C2364(v45, v46, v67);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_29D677000, v37, v42, "[%s] Could not access action handler user data!", v43, 0xCu);
      sub_29D69417C(v44);
      MEMORY[0x29ED6BE30](v44, -1, -1);
      MEMORY[0x29ED6BE30](v43, -1, -1);
    }

LABEL_16:

    return;
  }

  v59 = v4;
  sub_29D936B88();
  sub_29D936608();
  v24(v22, v17);
  sub_29D693E2C(v67, v67[3]);
  v25 = sub_29D936588();
  sub_29D69417C(v67);
  sub_29D936B88();
  v26 = sub_29D936618();
  v24(v22, v17);
  sub_29D936B88();
  v27 = v62;
  sub_29D9347B8();
  v24(v22, v17);
  sub_29D9369B8();
  v29 = v63;
  v28 = v64;
  v30 = (*(v63 + 88))(v9, v64);
  v31 = v27;
  if (v30 == *MEMORY[0x29EDC1760])
  {
    v33 = v65;
    v32 = v66;
    v34 = v25;
    v35 = v61;
    (*(v65 + 16))(v61, v31, v66);
    v36 = objc_allocWithZone(type metadata accessor for BradycardiaSettingsViewController(0));
    v37 = v34;
    v38 = sub_29D87FB10(v37, v35);

    v39 = [v26 navigationController];
    if (v39)
    {
      v40 = v39;
      [v39 pushViewController:v38 animated:1];

LABEL_11:
      (*(v33 + 8))(v31, v32);
      return;
    }

    (*(v33 + 8))(v31, v32);

    goto LABEL_16;
  }

  v48 = v25;
  v33 = v65;
  v32 = v66;
  if (v30 == *MEMORY[0x29EDC1768])
  {
    v49 = v61;
    (*(v65 + 16))(v61, v31, v66);
    v50 = objc_allocWithZone(type metadata accessor for BradycardiaSettingsViewController(0));
    v51 = v48;
    v52 = sub_29D87FB10(v51, v49);

    sub_29D6CC038();
    v53 = v52;
    sub_29D9365C8();

    v54 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v26 presentViewController:v54 animated:1 completion:0];

    goto LABEL_11;
  }

  if (v30 == *MEMORY[0x29EDC1758] || v30 == *MEMORY[0x29EDC1750])
  {
    v55 = v59;
    sub_29D9369D8();
    v56 = sub_29D9336F8();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      (*(v33 + 8))(v31, v32);

      sub_29D6D96C0(v55);
    }

    else
    {
      sub_29D9336A8();

      (*(v33 + 8))(v31, v32);
      (*(v57 + 8))(v55, v56);
    }
  }

  else
  {
    (*(v65 + 8))(v31, v66);

    (*(v29 + 8))(v9, v28);
  }
}

uint64_t sub_29D7B5DC4(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D7B5EC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LowHeartRateNotificationsFeatureStatusActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7B5F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D7B6010(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38 = a3;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D7B7CD8(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v35 - v8;
  sub_29D7B7CD8(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v35 - v13;
  v37 = sub_29D933318();
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v37, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D933CE8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B7CD8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v4);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8, v28);
  v30 = &v35 - v29;
  v31 = sub_29D9339F8();
  sub_29D6FD494(v31, a2);
  v36 = sub_29D69C6C0(v31, a2);
  sub_29D933C88();
  (*(v21 + 56))(v14, 1, 1, v20);
  v32 = sub_29D933D38();
  (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  sub_29D933308();
  sub_29D933C18();
  (*(v15 + 8))(v19, v37);
  (*(v21 + 8))(v25, v20);
  v33 = *(v31 - 8);
  result = (*(v33 + 48))(v30, 1, v31);
  if (result != 1)
  {
    return (*(v33 + 32))(v36, v30, v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7B6450()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v1;
}

void *sub_29D7B64C8()
{
  v1 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities;
  if (*(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore);
    type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v3;
    type metadata accessor for BloodPressureJournalAnalyticsUtilities();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v2[5] = v4;
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

uint64_t sub_29D7B6568(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29D939968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D939998();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v23, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v18 = sub_29D93A468();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  aBlock[4] = sub_29D7B7F00;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2445CA0;
  v20 = _Block_copy(aBlock);

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D7B7F38(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D7B7F38(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v12, v20);
  _Block_release(v20);

  (*(v8 + 8))(v12, v7);
  return (*(v13 + 8))(v17, v23);
}

uint64_t sub_29D7B6860(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29D933A58();
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v109 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v114 = v11;
  v115 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v113 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_29D933318();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v105 = &v87[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v87[-v23];
  v25 = sub_29D933CE8();
  v112 = *(v25 - 8);
  v26 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v116 = &v87[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  if (v118)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v29 = sub_29D937898();
    sub_29D69C6C0(v29, qword_2A1A2BF10);
    v30 = sub_29D937878();
    v31 = sub_29D93A288();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v32 = 136315138;
      v34 = sub_29D93AF08();
      v36 = sub_29D6C2364(v34, v35, &aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_29D677000, v30, v31, "[%s] Journal type must be selected to save a journal", v32, 0xCu);
      sub_29D69417C(v33);
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    return a1(0, 0);
  }

  else
  {
    v100 = v25;
    v106 = v17;
    v107 = v16;
    v101 = v6;
    v102 = a1;
    v103 = a2;
    v108 = aBlock;
    v38 = [objc_opt_self() hk_gregorianCalendar];
    sub_29D933C08();

    sub_29D7B7CD8(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
    v40 = v39;
    v41 = sub_29D933CC8();
    v42 = *(v41 - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v96 = v40;
    v93 = v44 + 2 * v43;
    v45 = swift_allocObject();
    v89 = xmmword_29D93F680;
    *(v45 + 16) = xmmword_29D93F680;
    v94 = v44;
    v46 = v45 + v44;
    v47 = *(v42 + 104);
    v90 = *MEMORY[0x29EDB9CC8];
    v47(v46);
    v48 = *MEMORY[0x29EDB9CE0];
    v95 = v43;
    v88 = v48;
    v92 = v47;
    v47(v46 + v43);
    sub_29D6E3748(v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v49 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
    swift_beginAccess();
    v50 = v115;
    v51 = *(v115 + 16);
    v98 = v3;
    v52 = v113;
    v53 = v114;
    v91 = v51;
    v51(v113, v3 + v49, v114);
    sub_29D933B48();

    v104 = *(v50 + 8);
    v115 = v50 + 8;
    v104(v52, v53);
    v54 = objc_allocWithZone(MEMORY[0x29EDC5208]);
    v99 = v24;
    v55 = sub_29D933288();
    v56 = [v54 initWithDayWindowType:0 scheduledTime:v55];

    sub_29D7B8020(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_29D940030;
    *(v57 + 32) = v56;
    v123 = v57;
    v97 = v56;
    if (v108)
    {
      v58 = v56;
      v59 = v98;
      v60 = v113;
      v61 = v114;
    }

    else
    {
      v62 = swift_allocObject();
      *(v62 + 16) = v89;
      v63 = v62 + v94;
      v64 = v92;
      (v92)(v62 + v94, v90, v41);
      (v64)(v63 + v95, v88, v41);
      v65 = v56;
      sub_29D6E3748(v62);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v66 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime;
      v67 = v98;
      swift_beginAccess();
      v60 = v113;
      v68 = v114;
      v91(v113, &v67[v66], v114);
      v69 = v105;
      sub_29D933B48();

      v104(v60, v68);
      v70 = objc_allocWithZone(MEMORY[0x29EDC5208]);
      v71 = sub_29D933288();
      v72 = [v70 initWithDayWindowType:1 scheduledTime:v71];

      v73 = v72;
      MEMORY[0x29ED6A300]();
      v59 = v67;
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v86 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();

      (*(v106 + 8))(v69, v107);
      v61 = v68;
    }

    v74 = v109;
    sub_29D933A48();
    sub_29D9339A8();
    v75 = objc_allocWithZone(MEMORY[0x29EDC51F0]);
    v76 = sub_29D933A28();
    v77 = v60;
    v78 = sub_29D933958();
    sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
    v79 = sub_29D939F18();

    v80 = [v75 initWithUUID:v76 startDate:v78 journalType:v108 scheduleType:0 journalState:0 timeIntervals:v79];

    v104(v77, v61);
    (*(v110 + 8))(v74, v111);
    v81 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v82 = swift_allocObject();
    v82[2] = v59;
    v82[3] = v80;
    v83 = v103;
    v82[4] = v102;
    v82[5] = v83;
    v82[6] = v101;
    v121 = sub_29D7B7D3C;
    v122 = v82;
    aBlock = MEMORY[0x29EDCA5F8];
    v118 = 1107296256;
    v119 = sub_29D6C1F54;
    v120 = &unk_2A2445B88;
    v84 = _Block_copy(&aBlock);

    v85 = v80;

    [v81 fetchActiveJournalWithCompletion_];
    _Block_release(v84);

    (*(v106 + 8))(v99, v107);
    return (*(v112 + 8))(v116, v100);
  }
}

uint64_t sub_29D7B73D8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
  swift_beginAccess();
  sub_29D7B7D64(a3 + v13, v33);
  if (!v34)
  {
    return sub_29D7B7E5C(v33);
  }

  sub_29D6945AC(v33, v32);
  sub_29D7B7E5C(v33);
  v14 = sub_29D693E2C(v32, v32[3]);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v16 = *v14;

  if (a1)
  {
    v17 = a1;
    v18 = sub_29D73C368();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = sub_29D7B7EE8;
    v20[3] = v15;
    v20[4] = v19;
    v20[5] = a4;
    v30 = sub_29D7B7EF4;
    v31 = v20;
    aBlock = MEMORY[0x29EDCA5F8];
    v27 = 1107296256;
    v28 = sub_29D8E44F0;
    v29 = &unk_2A2445C50;
    v21 = _Block_copy(&aBlock);

    v22 = a4;

    [v18 closeJournal:v17 completion:v21];
    _Block_release(v21);
  }

  else
  {
    v24 = sub_29D73C368();
    v30 = sub_29D7B7EE8;
    v31 = v15;
    aBlock = MEMORY[0x29EDCA5F8];
    v27 = 1107296256;
    v28 = sub_29D8E44F0;
    v29 = &unk_2A2445BD8;
    v25 = _Block_copy(&aBlock);

    [v24 saveJournal:a4 completion:v25];
    _Block_release(v25);
  }

  return sub_29D69417C(v32);
}

uint64_t sub_29D7B7684(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2BF10);
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (a1)
    {
      v14 = 0x6673736563637573;
    }

    else
    {
      v14 = 0x7365636375736E75;
    }

    if (a1)
    {
      v15 = 0xEA00000000006C75;
    }

    else
    {
      v15 = 0xEC0000006C756673;
    }

    v16 = sub_29D6C2364(v14, v15, &v18);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%s] Closing existing journal and saving a new journal was %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_29D7B7874(char a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = *(v3 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_flowType);
  v9 = *(v3 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_provenance);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v6;
  sub_29D9383C8();

  sub_29D8B530C(a1, a2, v9, v8, v13 & 1 | (v12 != 0));
}

uint64_t sub_29D7B7984()
{
  v1 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel__journalType;
  sub_29D7B7CD8(0, &qword_2A17B4DB0, sub_29D7B7CA4, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
  v4 = sub_29D9339F8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime, v4);
  sub_29D7B7E5C(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate);
  v6 = *(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager);

  v7 = *(v0 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalCreationModel()
{
  result = qword_2A17B4DA0;
  if (!qword_2A17B4DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7B7B64()
{
  sub_29D7B7CD8(319, &qword_2A17B4DB0, sub_29D7B7CA4, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_29D9339F8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D7B7CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7B7D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7B7D64(uint64_t a1, uint64_t a2)
{
  sub_29D7B7CD8(0, &qword_2A17B4DC0, sub_29D7B7DF8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D7B7DF8()
{
  result = qword_2A17B73B0;
  if (!qword_2A17B73B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B73B0);
  }

  return result;
}

uint64_t sub_29D7B7E5C(uint64_t a1)
{
  sub_29D7B7CD8(0, &qword_2A17B4DC0, sub_29D7B7DF8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D7B7EE8(char a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_29D7B7684(a1, a2, *(v2 + 16));
}

uint64_t sub_29D7B7F00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v2(v4);
}

uint64_t sub_29D7B7F38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D7B7FA4()
{
  result = qword_2A17B4DC8;
  if (!qword_2A17B4DC8)
  {
    sub_29D7B8020(255, &qword_2A17B4DD0, &type metadata for BloodPressureJournalCreationStage, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4DC8);
  }

  return result;
}

void sub_29D7B8020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D7B8074()
{
  result = qword_2A17B4DD8;
  if (!qword_2A17B4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4DD8);
  }

  return result;
}

unint64_t sub_29D7B80CC()
{
  result = qword_2A17B4DE0;
  if (!qword_2A17B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4DE0);
  }

  return result;
}

id sub_29D7B8138(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v10 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolColor;
  *&v4[v10] = [objc_opt_self() systemPinkColor];
  v11 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig;
  v12 = objc_opt_self();
  v13 = [v12 configurationWithPointSize_];
  v14 = [v12 configurationPreferringMulticolor];
  v15 = [v13 configurationByApplyingConfiguration_];

  v16 = [v12 configurationWithColorRenderingMode_];
  v17 = [v15 configurationByApplyingConfiguration_];

  *&v4[v11] = v17;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29D7B84CC();

  return v18;
}

id sub_29D7B8310(void *a1)
{
  v3 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v4 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolColor;
  *&v1[v4] = [objc_opt_self() systemPinkColor];
  v5 = OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig;
  v6 = objc_opt_self();
  v7 = [v6 configurationWithPointSize_];
  v8 = [v6 configurationPreferringMulticolor];
  v9 = [v7 configurationByApplyingConfiguration_];

  v10 = [v6 configurationWithColorRenderingMode_];
  v11 = [v9 configurationByApplyingConfiguration_];

  *&v1[v5] = v11;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_29D7B84CC();
  }

  return v13;
}

void sub_29D7B84CC()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView];
  v2 = *&v0[OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig];
  v3 = sub_29D939D28();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v1 setImage_];
  [v1 setContentMode_];
  [v1 setTintColor_];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  sub_29D6A0C58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D943A10;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  sub_29D6D37A4();
  v19 = sub_29D939F18();

  [v5 activateConstraints_];
}

void sub_29D7B87DC()
{
  v1 = v0;
  v2 = sub_29D939958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D939938();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_imageView);
  v15 = *(v1 + OBJC_IVAR____TtC5Heart46CardioFitnessOnboardingSetupCompleteSymbolView_symbolConfig);
  v16 = sub_29D939D28();
  v17 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v17)
  {
    sub_29D939928();
    sub_29D939948();
    sub_29D7B8ABC();
    sub_29D93A1D8();

    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }
}

id sub_29D7B8A08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D7B8ABC()
{
  result = qword_2A17B4E00;
  if (!qword_2A17B4E00)
  {
    sub_29D939938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4E00);
  }

  return result;
}

id sub_29D7B8B34(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = a1 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title;
  v4 = *(a1 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title);
  v5 = *(v3 + 8);
  sub_29D935E88();
  v6 = sub_29D939D28();

  [v2 setText_];

  v7 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  v8 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

id sub_29D7B8CAC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D7B8D10(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = (a1 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details);
  if (*(a1 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details + 8))
  {
    v4 = *v3;
    sub_29D935E88();
    v5 = sub_29D939D28();
  }

  else
  {
    v5 = 0;
  }

  [v2 setText_];

  [v2 setHidden_];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  return v2;
}

uint64_t sub_29D7B8E94()
{
  v1 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints;
  if (*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints];
  }

  else
  {
    sub_29D6A0C58();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29D940030;
    v3 = sub_29D7B8B14();
    v4 = [v3 bottomAnchor];

    v5 = [v0 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    v7 = *&v0[v1];
    *&v0[v1] = v2;
    sub_29D935E88();
  }

  sub_29D935E88();
  return v2;
}

uint64_t sub_29D7B8F84()
{
  v1 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints;
  if (*(v0 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints);
  }

  else
  {
    sub_29D6A0C58();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29D940030;
    v3 = sub_29D7B8C8C();
    v4 = [v3 topAnchor];

    v5 = sub_29D7B8B14();
    v6 = [v5 bottomAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:0.0];
    *(v2 + 32) = v7;
    v8 = *(v0 + v1);
    *(v0 + v1) = v2;
    sub_29D935E88();
  }

  sub_29D935E88();
  return v2;
}

id sub_29D7B9084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___noDetailsConstraints] = 0;
  *&v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailsConstraints] = 0;
  v6 = &v4[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title];
  *v6 = a1;
  *(v6 + 1) = a2;
  *v5 = a3;
  *(v5 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for TitleOptionalDetailsView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D7B91D8();

  return v7;
}

void sub_29D7B91D8()
{
  v1 = sub_29D7B8B14();
  [v0 addSubview_];

  v2 = sub_29D7B8C8C();
  [v0 addSubview_];

  if (*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details + 8])
  {
    v3 = sub_29D7B8F84();
  }

  else
  {
    v3 = sub_29D7B8E94();
  }

  v26 = v3;
  v25 = objc_opt_self();
  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D940A00;
  v5 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___titleLabel;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___titleLabel] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v0[v5] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

  *(v4 + 40) = v11;
  v12 = [*&v0[v5] trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-0.0];

  *(v4 + 48) = v14;
  v15 = OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel;
  v16 = [*&v0[OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel] leadingAnchor];
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v4 + 56) = v18;
  v19 = [*&v0[v15] trailingAnchor];
  v20 = [*&v0[v5] trailingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v4 + 64) = v21;
  v22 = [*&v0[v15] bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v4 + 72) = v24;
  sub_29D88BCBC(v26);
  sub_29D6D37A4();
  v27 = sub_29D939F18();

  [v25 activateConstraints_];
}

void sub_29D7B954C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29D7B8B14();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x656C7469542ELL, 0xE600000000000000);
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_29D7B8C8C();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x6C69617465442ELL, 0xE700000000000000);
    v5 = sub_29D939D28();

    [v4 setAccessibilityIdentifier_];
  }
}

void sub_29D7B9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title);
  v8 = *(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_title + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_29D935E88();

  v9 = (v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details);
  v10 = *(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView_details + 8);
  *v9 = a3;
  v9[1] = a4;
  sub_29D935E88();

  v11 = sub_29D7B8B14();
  v12 = sub_29D939D28();
  [v11 setText_];

  v13 = sub_29D7B8C8C();
  v14 = v13;
  if (a4)
  {
    v15 = sub_29D939D28();
    [v14 setText_];

    [*(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel) setHidden_];
    if (v10)
    {
      return;
    }

    v16 = objc_opt_self();
    sub_29D7B8E94();
    sub_29D6D37A4();
    v17 = sub_29D939F18();

    [v16 deactivateConstraints_];

    sub_29D7B8F84();
  }

  else
  {
    [v13 setText_];

    [*(v4 + OBJC_IVAR____TtC5Heart24TitleOptionalDetailsView____lazy_storage___detailLabel) setHidden_];
    if (!v10)
    {
      return;
    }

    v16 = objc_opt_self();
    sub_29D7B8F84();
    sub_29D6D37A4();
    v18 = sub_29D939F18();

    [v16 deactivateConstraints_];

    sub_29D7B8E94();
  }

  v19 = sub_29D939F18();

  [v16 activateConstraints_];
}

id sub_29D7B9918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleOptionalDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7B9A28(uint64_t a1)
{
  sub_29D7BAF88(0, &qword_2A17B4E38, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v15[-v5];
  v7 = sub_29D937068();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v10 = sub_29D937048();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_29D937058();
  v16 = a1;
  v17[3] = sub_29D937088();
  v17[4] = MEMORY[0x29EDC2C50];
  sub_29D693F78(v17);
  sub_29D937078();
  v11 = sub_29D935808();
  sub_29D69417C(v17);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93DDB0;
  *(v12 + 32) = v11;
  v13 = MEMORY[0x29ED65BE0]();

  return v13;
}

uint64_t sub_29D7B9C10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 33);
  if (([*a1 isClassificationAgeGated] & 1) != 0 || (v1 & 1) == 0)
  {
    v7 = sub_29D9357F8();
    if ((v2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_29D7BA048(1, &v20);
    MEMORY[0x2A1C7C4A8](v9, v10);
    v16[3] = sub_29D9370F8();
    v16[4] = MEMORY[0x29EDC2C70];
    sub_29D693F78(v16);
    sub_29D9370E8();
    v27 = v20;
    sub_29D6AA360(&v27);
    v26 = v21;
    sub_29D6AA360(&v26);
    v25 = v22;
    sub_29D7BAFEC(&v25, &qword_2A17B4E40, type metadata accessor for HKBloodPressureClassificationCategory, MEMORY[0x29EDC9A40]);
    v24 = v23;
    sub_29D7BA7A8(&v24);
    v11 = sub_29D935808();
    sub_29D69417C(v16);
    sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93DDB0;
    *(v12 + 32) = v11;
    MEMORY[0x29ED65BE0]();

    v8 = sub_29D9357F8();

    goto LABEL_7;
  }

  sub_29D7BA048(0, v17);
  MEMORY[0x2A1C7C4A8](v3, v4);
  *(&v21 + 1) = sub_29D9370F8();
  v22 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v20);
  sub_29D9370E8();
  v31 = v17[0];
  sub_29D6AA360(&v31);
  v30 = v17[1];
  sub_29D6AA360(&v30);
  v29 = v18;
  sub_29D7BAFEC(&v29, &qword_2A17B4E40, type metadata accessor for HKBloodPressureClassificationCategory, MEMORY[0x29EDC9A40]);
  v28 = v19;
  sub_29D7BA7A8(&v28);
  v5 = sub_29D935808();
  sub_29D69417C(&v20);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  *(v6 + 32) = v5;
  MEMORY[0x29ED65BE0]();

  v7 = sub_29D9357F8();

  if (v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = sub_29D9357F8();
LABEL_7:
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D93F680;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  v14 = MEMORY[0x29ED65BE0]();

  return v14;
}

void sub_29D7B9FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_29D7BA048@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = 4271950;
  sub_29D7BAF88(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v43 - v13;
  if (a1)
  {
    if (qword_2A17B0D98 != -1)
    {
      swift_once();
    }

    v15 = sub_29D9334A8();
    v43 = v16;
    v44 = v15;
    v17 = sub_29D933AA8();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    sub_29D7B9FE0(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29D93DDB0;
    v19 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:2 abbreviated:1];
    if (v19)
    {
      v20 = v19;
      v5 = sub_29D939D68();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    *(v18 + 56) = MEMORY[0x29EDC99B0];
    *(v18 + 64) = sub_29D69AD24();
    *(v18 + 32) = v5;
    *(v18 + 40) = v22;
    v32 = sub_29D9334A8();
    v34 = v33;
    if (*(v18 + 16))
    {
      v32 = sub_29D939D78();
      v36 = v35;

      v34 = v36;
    }

    else
    {
    }

    sub_29D7BAFEC(v11, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
    v40 = *(v2 + 40);
  }

  else
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v23 = sub_29D9334A8();
    v43 = v24;
    v44 = v23;
    v25 = sub_29D933AA8();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    sub_29D7B9FE0(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29D93DDB0;
    v27 = *(v2 + 8);
    v45 = *(v2 + 16);
    v28 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:v27 abbreviated:1];
    if (v28)
    {
      v29 = v28;
      v5 = sub_29D939D68();
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    *(v26 + 56) = MEMORY[0x29EDC99B0];
    *(v26 + 64) = sub_29D69AD24();
    *(v26 + 32) = v5;
    *(v26 + 40) = v31;
    v32 = sub_29D9334A8();
    v34 = v37;
    if (*(v26 + 16))
    {
      v32 = sub_29D939D78();
      v39 = v38;

      v34 = v39;
    }

    else
    {
    }

    sub_29D7BAFEC(v14, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
    v40 = v45;
  }

  v45 = v40;
  sub_29D935E88();
  sub_29D935E88();
  v41 = v43;
  *a2 = v44;
  *(a2 + 8) = v41;
  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  result = *&v45;
  *(a2 + 32) = v45;
  return result;
}

uint64_t sub_29D7BA618(uint64_t a1)
{
  v12 = sub_29D9370F8();
  v13 = MEMORY[0x29EDC2C70];
  sub_29D693F78(v11);
  sub_29D9370E8();
  v2 = sub_29D935808();
  sub_29D69417C(v11);
  sub_29D7BAABC(*(a1 + 32), *(a1 + 40));
  v4 = v3;
  v5 = type metadata accessor for BloodPressurePDFClassificationsTable();
  swift_allocObject();
  v6 = sub_29D906EC4(v4, &unk_2A243DEC8, 30.0, 10.0, 10.0);

  v12 = v5;
  v13 = sub_29D7BAE7C(&qword_2A17B4E50, type metadata accessor for BloodPressurePDFClassificationsTable);
  v11[0] = v6;
  v7 = sub_29D935808();
  sub_29D69417C(v11);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93F680;
  *(v8 + 32) = v2;
  *(v8 + 40) = v7;
  v9 = MEMORY[0x29ED65BE0]();

  return v9;
}

uint64_t sub_29D7BA7A8(uint64_t a1)
{
  sub_29D7BA804();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7BA804()
{
  if (!qword_2A17B4E48)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    sub_29D7BAE7C(&qword_2A17B10B0, type metadata accessor for HKBloodPressureClassificationCategory);
    v0 = sub_29D939C78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4E48);
    }
  }
}

uint64_t sub_29D7BA8A0(uint64_t *a1)
{
  v2 = sub_29D935378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  sub_29D935E88();
  v10 = sub_29D934FC8();
  v11 = *MEMORY[0x29EDC1F60];
  v12 = *(v3 + 104);
  v12(v7, v11, v2);
  v13 = sub_29D936FD8();
  v24 = v13;
  v25 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v23);
  MEMORY[0x29ED673E0](v8, v9, v7, v10);
  v14 = sub_29D935808();
  sub_29D69417C(v23);
  v16 = a1[2];
  v15 = a1[3];
  sub_29D935E88();
  v17 = sub_29D934F68();
  v12(v7, v11, v2);
  v24 = v13;
  v25 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v23);
  MEMORY[0x29ED673E0](v16, v15, v7, v17);
  v18 = sub_29D935808();
  sub_29D69417C(v23);
  sub_29D7BAF18(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D93F680;
  *(v19 + 32) = v14;
  *(v19 + 40) = v18;
  v20 = MEMORY[0x29ED65BE0]();

  return v20;
}

void sub_29D7BAABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = &off_29D93D000;
  if (v2)
  {
    v5 = (a1 + 32);
    v21 = objc_opt_self();
    v6 = MEMORY[0x29EDCA190];
    v22 = a2;
    while (*(a2 + 16))
    {
      v7 = *v5;
      v8 = sub_29D6959E0(v7);
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

      v10 = *(*(a2 + 56) + 8 * v8);
      v11 = [v21 localizedStringForBloodPressureClassificationCategoryTitle_];
      if (v11)
      {
        v12 = v11;
        sub_29D939D68();
      }

      v23[0] = v10;
      sub_29D93AD38();
      if (qword_2A1A242C0 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      if (v10 > 0)
      {

        sub_29D9334A8();
      }

      v13 = sub_29D7DB1E4();
      v23[3] = &type metadata for BloodPressurePDFClassificationsTableRow;
      v23[4] = sub_29D7BAEC4();
      v23[0] = v13;
      v14 = sub_29D936418();
      sub_29D69417C(v23);
      sub_29D7BAF18(0, &qword_2A17B1390, &qword_2A17B1398, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_29D93DDB0;
      *(v15 + 32) = v14;
      v16 = MEMORY[0x29ED66800](v15);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_29D68FDF4(0, v6[2] + 1, 1, v6);
      }

      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        v6 = sub_29D68FDF4((v17 > 1), v18 + 1, 1, v6);
      }

      v6[2] = v18 + 1;
      v6[v18 + 4] = v16;
      ++v5;
      --v2;
      v3 = &off_29D93D000;
      a2 = v22;
      if (!v2)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
LABEL_18:
    v19 = MEMORY[0x29ED667F0](v6);

    sub_29D7BAF18(0, &qword_2A17B1390, &qword_2A17B1398, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
    v20 = swift_allocObject();
    *(v20 + 16) = *(v3 + 219);
    *(v20 + 32) = v19;
    MEMORY[0x29ED66800](v20);
  }
}

uint64_t sub_29D7BAE7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D7BAEC4()
{
  result = qword_2A17B4E58;
  if (!qword_2A17B4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4E58);
  }

  return result;
}

void sub_29D7BAF18(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D7B9FE0(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D7BAF88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7BAFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_29D7BAF88(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata accessor for BloodPressureDayCoordinate()
{
  result = qword_2A17B4E60;
  if (!qword_2A17B4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29D7BB0BC()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    result = sub_29D7B2810();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D7BB168()
{
  sub_29D7BE708(319, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_29D7BE708(319, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_29D9346E8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_29D7BB2F4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_29D9346E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v1 + v19, v12, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v3 + 48))(v12, 1, v2))
  {
    sub_29D7BEECC(v12, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return (*(v14 + 16))(v21, v1 + qword_2A17B4EA8, v13);
  }

  else
  {
    sub_29D7BEE3C(v12, v7);
    sub_29D7BEECC(v12, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    (*(v14 + 16))(v18, v7, v13);
    sub_29D7BEFFC(v7, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return (*(v14 + 32))(v21, v18, v13);
  }
}

char *sub_29D7BB5B4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D7BE708(0, &unk_2A1A248F0, MEMORY[0x29EDCA298]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v59 = &v55 - v10;
  sub_29D710880();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v19 = &v55 - v18;
  v20 = sub_29D934C58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = qword_2A17B4E88;
  v27 = sub_29D9371A8();
  (*(*(v27 - 8) + 56))(v3 + v26, 1, 1, v27);
  v28 = qword_2A17B4E98;
  v29 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  *(v3 + qword_2A17D0AA0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17D0AA8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_2A17B4EA0) = 0;
  v30 = qword_2A17B4EA8;
  v31 = sub_29D9346E8();
  v57 = *(v31 - 8);
  v58 = v31;
  v32 = *(v57 + 16);
  v63 = a1;
  v32(v3 + v30, a1);
  *(v3 + qword_2A17B4E70) = a3;
  v33 = *MEMORY[0x29EDBA6F0];
  v34 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v35 = a3;
  v36 = v20;
  v37 = v35;
  v38 = [v34 initWithFeatureIdentifier:v33 healthStore:v35];
  *(v3 + qword_2A17B4E80) = v38;
  v39 = (v3 + qword_2A17B4E90);
  *v39 = sub_29D67BF28;
  v39[1] = 0;
  v40 = HKLogHeartRateCategory();
  v41 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
  v64 = v37;
  v42 = [v41 initWithLoggingCategory:v40 healthDataSource:v37];

  *(v3 + qword_2A17B4EB0) = v42;
  v43 = *(v21 + 16);
  v43(v25, a2, v36);
  v44 = (*(v21 + 88))(v25, v36);
  if (v44 == *MEMORY[0x29EDC1C00])
  {
    v45 = 3;
  }

  else
  {
    if (v44 == *MEMORY[0x29EDC1BF8])
    {
      v45 = 4;
      goto LABEL_10;
    }

    if (v44 == *MEMORY[0x29EDC1C08])
    {
      v45 = 0;
      goto LABEL_10;
    }

    if (v44 == *MEMORY[0x29EDC1BF0])
    {
      v45 = 5;
      goto LABEL_10;
    }

    v45 = 6;
  }

  (*(v21 + 8))(v25, v36);
LABEL_10:
  *(v3 + qword_2A17B4E78) = v45;
  v55 = a2;
  v43(v19, a2, v36);
  (*(v21 + 56))(v19, 0, 1, v36);
  v46 = sub_29D934C48();
  v66 = sub_29D73BA9C(0, 0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v47 = sub_29D93A468();
  v65 = v47;
  v48 = sub_29D93A448();
  v49 = v59;
  (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
  sub_29D7BECC0(0, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  sub_29D7BEA90();
  v56 = v36;
  sub_29D706380();
  v50 = v60;
  sub_29D938538();
  sub_29D7BEECC(v49, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D7BEB20();
  v51 = v62;
  v52 = sub_29D938588();

  (*(v21 + 8))(v55, v56);
  (*(v57 + 8))(v63, v58);
  (*(v61 + 8))(v50, v51);
  v53 = *&v46[qword_2A17B4EA0];
  *&v46[qword_2A17B4EA0] = v52;

  return v46;
}

uint64_t sub_29D7BBCEC(void *a1)
{
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v23[-v5];
  sub_29D7BE708(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v23[-v10];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_29D9371A8();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a1, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = qword_2A17B4E88;
    swift_beginAccess();
    sub_29D70DA30(v11, &v13[v16]);
    swift_endAccess();
    v17 = *&v13[qword_2A17B4E90];
    v18 = *&v13[qword_2A17B4E90 + 8];

    sub_29D8C1254(a1, v17, v18, v6);

    v19 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    v20 = qword_2A17B4E98;
    swift_beginAccess();
    sub_29D7BEB78(v6, &v13[v20]);
    swift_endAccess();
    v21 = &v13[qword_2A17D0AA0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 1);
      swift_getObjectType();
      sub_29D9367C8();

      sub_29D936978();
    }

    else
    {
    }

    return sub_29D7BEECC(v6, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  }

  return result;
}

uint64_t sub_29D7BBFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v23 - v12;
  v14 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v1 + v14, v13, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v4 + 48))(v13, 1, v3))
  {
    sub_29D7BEECC(v13, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  }

  else
  {
    sub_29D7BEE3C(v13, v8);
    sub_29D7BEECC(v13, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    v16 = &v8[*(v3 + 32)];
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_29D7BF05C(*v16);
    sub_29D7BEFFC(v8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    if (v17)
    {
      sub_29D9368E8();
      v15 = 0;
      goto LABEL_6;
    }
  }

  v15 = 1;
LABEL_6:
  v21 = sub_29D9368F8();
  return (*(*(v21 - 8) + 56))(a1, v15, 1, v21);
}

uint64_t sub_29D7BC24C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v63 - v10;
  sub_29D7BE708(0, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v64 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = MEMORY[0x29EDCA190];
  v22 = objc_opt_self();
  v23 = sub_29D939D28();
  v24 = [v22 groupSpecifierWithID_];

  if (!v24)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v26 = sub_29D937898();
    sub_29D69C6C0(v26, qword_2A1A2C008);
    v24 = sub_29D937878();
    v27 = sub_29D93A288();
    if (os_log_type_enabled(v24, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67 = v29;
      *v28 = 136315138;
      v30 = sub_29D93AF08();
      v32 = sub_29D6C2364(v30, v31, &v67);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29D677000, v24, v27, "[%s] Could not get specifier footer content.", v28, 0xCu);
      sub_29D69417C(v29);
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    goto LABEL_14;
  }

  v25 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v0 + v25, v11, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_29D7BEECC(v11, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_9:
    sub_29D7BEECC(v16, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2C008);
    v34 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v66 = v37;
      *v36 = 136315138;
      v38 = sub_29D93AF08();
      v40 = sub_29D6C2364(v38, v39, &v66);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D677000, v34, v35, "[%s] Could not get footer content.", v36, 0xCu);
      sub_29D69417C(v37);
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

LABEL_14:
    return MEMORY[0x29EDCA190];
  }

  sub_29D7BEE3C(v11, v6);
  sub_29D7BEECC(v11, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  sub_29D7BEF28(&v6[*(v1 + 36)], v16, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  sub_29D7BEFFC(v6, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_9;
  }

  v42 = v64;
  sub_29D7BEF94(v16, v64, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  v43 = *v42;
  v44 = v42[1];
  if (v42[3])
  {
    v45 = v42[2];
    v46 = v42[3];
  }

  v47 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  sub_29D935E88();
  v48 = sub_29D939D28();
  v49 = [v47 initWithString_];

  v50 = sub_29D939D28();

  v51 = [v49 localizedStandardRangeOfString_];
  v53 = v52;

  sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v55)
  {
    sub_29D939D68();
    v55 = sub_29D939D28();
  }

  [v24 setProperty:v55 forKey:*MEMORY[0x29EDC62D0]];

  v56 = sub_29D939D28();
  [v24 setProperty:v56 forKey:*MEMORY[0x29EDC62F0]];

  v69.location = v51;
  v69.length = v53;
  v57 = NSStringFromRange(v69);
  if (!v57)
  {
    sub_29D939D68();
    v57 = sub_29D939D28();
  }

  [v24 setProperty:v57 forKey:*MEMORY[0x29EDC62E0]];

  v58 = [objc_opt_self() valueWithNonretainedObject_];
  [v24 setProperty:v58 forKey:*MEMORY[0x29EDC62E8]];
  sub_29D933DC8();
  v59 = sub_29D939D28();

  [v24 setProperty:v59 forKey:*MEMORY[0x29EDC62D8]];

  v60 = v24;
  MEMORY[0x29ED6A300]();
  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29D939F78();
  }

  sub_29D939FA8();

  v61 = v68;
  sub_29D7BEFFC(v64, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
  return v61;
}

uint64_t sub_29D7BCB00()
{
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v27[-v4];
  v6 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x29EDCA190];
  v12 = qword_2A17B4E98;
  swift_beginAccess();
  sub_29D7BEF28(v0 + v12, v5, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29D7BEECC(v5, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return MEMORY[0x29EDCA190];
  }

  sub_29D7BEF94(v5, v11, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  if (v11[v6[6]] != 1 || (v13 = objc_opt_self(), v14 = &v11[v6[7]], v15 = *v14, v16 = v14[1], v17 = sub_29D939D28(), v18 = [v13 preferenceSpecifierNamed:v17 target:v0 set:sel_setFeatureEnabledWithValue_ get:sel_isFeatureEnabled detail:0 cell:6 edit:0], v17, !v18))
  {
    sub_29D7BEFFC(v11, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    return MEMORY[0x29EDCA190];
  }

  v19 = sub_29D939D28();
  [v18 setIdentifier_];

  v20 = v11[v6[5]];
  v21 = sub_29D939FC8();
  [v18 setProperty:v21 forKey:*MEMORY[0x29EDC62C8]];

  v22 = sub_29D939FC8();
  [v18 setProperty:v22 forKey:*MEMORY[0x29EDC62A0]];

  v23 = v18;
  MEMORY[0x29ED6A300]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29D939F78();
  }

  sub_29D939FA8();

  v24 = v28;
  sub_29D7BEFFC(v11, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  return v24;
}

id sub_29D7BCE78()
{
  v1 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v42 = &v40 - v8;
  sub_29D69C75C();
  v10 = v9;
  v45 = *(v9 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC2D78];
  sub_29D7BE708(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v20 = &v40 - v19;
  v21 = sub_29D937158();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = qword_2A17B4E88;
  swift_beginAccess();
  sub_29D7BEF28(v0 + v27, v20, &unk_2A1A24700, v15);
  v28 = sub_29D9371A8();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v20, 1, v28) != 1)
  {
    if ((*(v29 + 88))(v20, v28) != *MEMORY[0x29EDC2D70])
    {
      (*(v29 + 8))(v20, v28);
      return [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    }

    v40 = v0;
    (*(v29 + 96))(v20, v28);
    v30 = v22;
    (*(v22 + 32))(v26, v20, v21);
    v31 = sub_29D937148();
    sub_29D93A408();
    sub_29D93A428();

    (*(v45 + 8))(v14, v10);
    if (v46 != 2 && (v46 & 1) != 0)
    {
      v32 = qword_2A17B4E98;
      v33 = v40;
      swift_beginAccess();
      v34 = v42;
      sub_29D7BEF28(v33 + v32, v42, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
      v35 = v44;
      if (!(*(v43 + 48))(v34, 1, v44))
      {
        v39 = v41;
        sub_29D7BEE3C(v34, v41);
        sub_29D7BEECC(v34, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
        v36 = *(v39 + *(v35 + 20));
        sub_29D7BEFFC(v39, type metadata accessor for HypertensionNotificationsSettingsViewModel);
        goto LABEL_9;
      }

      sub_29D7BEECC(v34, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
    }

    v36 = 0;
LABEL_9:
    v37 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
    (*(v30 + 8))(v26, v21);
    return v37;
  }

  sub_29D7BEECC(v20, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  return [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
}

id sub_29D7BD3CC(void *a1)
{
  v1 = a1;
  v2 = sub_29D7BCE78();

  return v2;
}

void sub_29D7BD410(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v2[qword_2A17B4E80];
  v6 = *MEMORY[0x29EDBA788];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = ObjectType;
  v12[4] = sub_29D7BEEA0;
  v12[5] = v7;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D8E44F0;
  v12[3] = &unk_2A2445EB8;
  v8 = _Block_copy(v12);
  v9 = v6;
  v10 = v2;
  v11 = a1;

  [v5 setFeatureSettingNumber:v11 forKey:v9 completion:v8];
  _Block_release(v8);
}

void sub_29D7BD538(char a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  if (a1)
  {
    v6 = *(a3 + qword_2A17B4E78);
    v8 = [a4 BOOLValue];
    type metadata accessor for HypertensionNotificationRoomInteractionEvent();
    v9 = swift_allocObject();
    v9[16] = 6;
    v9[17] = v6;
    v9[18] = v8;
    v10 = *(a3 + qword_2A17B4EB0);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    aBlock[4] = sub_29D7BEEC4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A2445F08;
    v12 = _Block_copy(aBlock);

    [v10 submitEvent:v9 completion:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = a2;
    oslog = sub_29D937878();
    v16 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446466;
      v19 = sub_29D93AF08();
      v21 = sub_29D6C2364(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      aBlock[6] = a2;
      v22 = a2;
      sub_29D7BE708(0, &qword_2A17B7AF0, sub_29D6A0CD0);
      v23 = sub_29D939DB8();
      v25 = sub_29D6C2364(v23, v24, aBlock);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_29D677000, oslog, v16, "[%{public}s]: Unable to change hypertension notifications setting: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v18, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D7BD850(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v6 = 136446466;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      if (a2)
      {
        v12 = a2;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        v14 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *(v6 + 14) = v13;
      *v7 = v14;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%{public}s]: Error submitting analytics event: %@", v6, 0x16u);
      sub_29D7BEFFC(v7, sub_29D6ACA98);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D7BDA5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D7BD410(v4);
}

uint64_t sub_29D7BDAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  sub_29D7BE708(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7BDB74, 0, 0);
}

uint64_t sub_29D7BDB74()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D7BDCB4;
  v2 = swift_continuation_init();
  sub_29D7BECC0(0, &qword_2A17B4EE0, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D7BDEF0;
  v0[13] = &unk_2A2445E40;
  v0[14] = v2;
  [v1 currentClassificationGuidelinesWithCompletionHandler_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D7BDCB4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29D7BDD94, 0, 0);
}

uint64_t sub_29D7BDD94()
{
  v1 = v0[18];
  if (v1 >= 3)
  {
    v2 = 11;
  }

  else
  {
    v2 = v1 + 5;
  }

  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = sub_29D93A028();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = *&v5[qword_2A17B4E70];
  sub_29D939FF8();
  v8 = v7;
  v9 = v5;
  v10 = sub_29D939FE8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA390];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v1;
  *(v11 + 64) = v4;
  sub_29D6BEBA4(0, 0, v3, &unk_29D9499D8, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_29D7BDEF0(uint64_t a1, uint64_t a2)
{
  **(*(*sub_29D693E2C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x2A1C73CD0]();
}

uint64_t sub_29D7BDF4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 104) = a4;
  sub_29D939FF8();
  *(v8 + 96) = sub_29D939FE8();
  v10 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D7BDFEC, v10, v9);
}

uint64_t sub_29D7BDFEC()
{
  v27 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  if (v2 == 11)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = sub_29D937878();
    v5 = sub_29D93A288();
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 80);
      v6 = *(v0 + 88);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136446466;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v26);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = sub_29D93A628();
      v15 = sub_29D6C2364(v13, v14, &v26);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s]: Cannot find a matching article for classificationGuidelines%s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }
  }

  else
  {
    v16 = *(v0 + 72);
    sub_29D899F00(*(v0 + 64), *(v0 + 104), (v0 + 16));
    v17 = *(v0 + 56);
    sub_29D693E2C((v0 + 16), *(v0 + 40));
    sub_29D934588();
    v18 = *(v0 + 48);
    sub_29D693E2C((v0 + 16), *(v0 + 40));
    sub_29D934578();
    objc_allocWithZone(sub_29D934568());
    v19 = sub_29D934558();
    sub_29D69417C((v0 + 16));
    v20 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    v21 = v16 + qword_2A17D0AA8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      swift_getObjectType();
      v23 = sub_29D936F08();
      sub_29D936978();
      [v23 presentViewController:v20 animated:1 completion:0];
    }

    else
    {
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_29D7BE2F4(char *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D7BE708(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *&a1[qword_2A17B4E70];
  v9 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v10 = a1;
  v11 = [v9 initWithHealthStore_];
  v12 = sub_29D93A028();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = ObjectType;
  sub_29D6BEBA4(0, 0, v7, &unk_29D9499C8, v13);
}

void sub_29D7BE484()
{
  sub_29D7BEECC(v0 + qword_2A17B4E88, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v1 = *(v0 + qword_2A17B4E90 + 8);

  sub_29D7BEECC(v0 + qword_2A17B4E98, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  sub_29D68B77C(v0 + qword_2A17D0AA0);
  sub_29D68B77C(v0 + qword_2A17D0AA8);
  v2 = *(v0 + qword_2A17B4EA0);

  v3 = qword_2A17B4EA8;
  v4 = sub_29D9346E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_2A17B4EB0);
}

void sub_29D7BE5D0(uint64_t a1)
{
  sub_29D7BEECC(a1 + qword_2A17B4E88, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v2 = *(a1 + qword_2A17B4E90 + 8);

  sub_29D7BEECC(a1 + qword_2A17B4E98, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  sub_29D68B77C(a1 + qword_2A17D0AA0);
  sub_29D68B77C(a1 + qword_2A17D0AA8);
  v3 = *(a1 + qword_2A17B4EA0);

  v4 = qword_2A17B4EA8;
  v5 = sub_29D9346E8();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_2A17B4EB0);
}

void sub_29D7BE708(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void (*sub_29D7BE7DC(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17D0AA0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7787F8;
}

void (*sub_29D7BE894(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17D0AA8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7797E4;
}

uint64_t sub_29D7BE938()
{
  v4 = MEMORY[0x29EDCA190];
  v0 = sub_29D7BC24C();
  sub_29D88BF0C(v0);
  v1 = sub_29D7BCB00();
  sub_29D88BF0C(v1);
  v2 = sub_29D775B18(v4);

  return v2;
}

id sub_29D7BEA48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D7BEA90()
{
  result = qword_2A1A22420;
  if (!qword_2A1A22420)
  {
    sub_29D7BECC0(255, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22420);
  }

  return result;
}

unint64_t sub_29D7BEB20()
{
  result = qword_2A17B2C70;
  if (!qword_2A17B2C70)
  {
    sub_29D710880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2C70);
  }

  return result;
}

uint64_t sub_29D7BEB78(uint64_t a1, uint64_t a2)
{
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7BEBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D7BDAC4(a1, v4, v5, v6, v7, v8);
}

void sub_29D7BECC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D7BED60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D6C383C;

  return sub_29D7BDF4C(a1, v4, v5, v10, v6, v7, v8, v9);
}

uint64_t sub_29D7BEE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7BEEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7BEECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D7BE708(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7BEF28(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D7BE708(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D7BEF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7BEFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7BF05C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_29D935E88();
    v2 = v1;

    return sub_29D935E88();
  }

  return result;
}

uint64_t sub_29D7BF0B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D7BF0C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D7BF110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D7BF188(uint64_t a1)
{
  if (sub_29D7BF3A8(a1))
  {
    sub_29D7BFF64();
    sub_29D7C0058(&qword_2A17B4F08, sub_29D7BFF64);
    sub_29D935438();
    sub_29D9353F8();
    sub_29D935248();
    sub_29D935408();
  }

  else
  {
    v1 = sub_29D935248();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    sub_29D7BFF64();
    sub_29D7C0058(&qword_2A17B4F08, sub_29D7BFF64);

    sub_29D935418();
  }

  sub_29D7C00A0();
  sub_29D7C0058(&qword_2A17B4F18, sub_29D7C00A0);

  v4 = sub_29D9353F8();

  return v4;
}

uint64_t sub_29D7BF3A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D936378();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  sub_29D7C015C();
  v8 = v7;
  v47 = *(v7 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7C0358();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936368();
  v18 = sub_29D9354E8();
  v20 = v19;
  if (v18 == sub_29D9354E8() && v20 == v21)
  {
    goto LABEL_3;
  }

  v22 = sub_29D93AD78();

  if (v22)
  {
    return 0;
  }

  sub_29D936368();
  v24 = sub_29D9354E8();
  v26 = v25;
  if (v24 == sub_29D9354E8() && v26 == v27)
  {
LABEL_3:

    return 0;
  }

  v28 = sub_29D93AD78();

  if (v28)
  {
    return 0;
  }

  sub_29D7C0420(v2 + 16, &v56);
  if (v57)
  {
    sub_29D6959E8(&v56, &v52);
    goto LABEL_18;
  }

  v29 = sub_29D936338();
  v30 = [v29 profileIdentifier];
  v31 = [v30 type];

  if (v31 == 1)
  {
    v32 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v29];

    if (v32)
    {
      *(&v53 + 1) = sub_29D6B8230();
      v54 = MEMORY[0x29EDC2EA8];
      *&v52 = v32;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
LABEL_16:
  if (v57)
  {
    sub_29D7C0518(&v56);
  }

LABEL_18:
  if (!*(&v53 + 1))
  {
    sub_29D7C0518(&v52);
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v58[0] = &_s22AFibBurdenPDFComponentVN;
    sub_29D7C05A0();
    v43 = sub_29D939DA8();
    MEMORY[0x29ED6A240](v43);

    MEMORY[0x29ED6A240](0xD00000000000003ELL, 0x800000029D962DE0);
    v44 = v52;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v45, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v44;
    *&v52 = 0;
    sub_29D9371E8();

    return 0;
  }

  sub_29D6959E8(&v52, v58);
  sub_29D6945AC(v58, &v52);
  v55 = *MEMORY[0x29EDC5120];
  v33 = v55;
  *&v56 = sub_29D81EC50();
  sub_29D7C05E8(0, &qword_2A17B4F60, MEMORY[0x29EDC9E90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29D93DDB0;
  *(v34 + 32) = sub_29D81E240() & 1;
  sub_29D6AD548();
  v46[1] = v35;
  v46[2] = sub_29D7C0058(&qword_2A1A223E0, sub_29D6AD548);
  sub_29D938518();

  sub_29D7C0058(&qword_2A17B4F68, sub_29D7C015C);
  v36 = sub_29D938418();
  (*(v47 + 8))(v12, v8);
  *&v56 = v36;
  v38 = v48;
  v37 = v49;
  (*(v48 + 16))(v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v49);
  v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v40 = swift_allocObject();
  (*(v38 + 32))(v40 + v39, v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  sub_29D7C0710(0, &qword_2A17B4F50, MEMORY[0x29EDC9A40]);
  sub_29D938468();

  sub_29D7C0058(&qword_2A17B4F70, sub_29D7C0358);
  v41 = v51;
  sub_29D9383F8();
  (*(v50 + 8))(v17, v41);
  sub_29D936458();
  sub_29D935588();

  sub_29D7BFFF8();
  sub_29D7C0058(&qword_2A17B4F00, sub_29D7BFFF8);
  v42 = sub_29D9355C8();

  sub_29D7C06BC(&v52);
  sub_29D69417C(v58);
  return v42;
}

uint64_t sub_29D7BFB9C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v11 = sub_29D936338();
    sub_29D936DB8();
    v12 = sub_29D9350D8();
    v14 = v13;
    sub_29D7C0710(0, &qword_2A17B54F0, MEMORY[0x29EDC9E90]);
    v15 = *(sub_29D9359D8() - 8);
    v16 = *(v15 + 72);
    v17 = *(v15 + 80);
    v23 = a2;
    v18 = swift_allocObject();
    v22 = xmmword_29D93DDB0;
    *(v18 + 16) = xmmword_29D93DDB0;
    sub_29D7C04B0(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v19 = swift_allocObject();
    *(v19 + 16) = v22;
    *(v19 + 56) = &type metadata for AFibBurdenPDFItem;
    *(v19 + 64) = sub_29D7C0770();
    v20 = swift_allocObject();
    *(v19 + 32) = v20;
    v20[2] = v12;
    v20[3] = v14;
    v20[4] = 0xD000000000000011;
    v20[5] = 0x800000029D962E20;
    v20[6] = v11;
    sub_29D935E88();
    v21 = v11;
    sub_29D933A48();
    sub_29D933A18();
    (*(v5 + 8))(v10, v4);
    a2 = v23;
    sub_29D9359C8();
  }

  else
  {
    v18 = MEMORY[0x29EDCA190];
  }

  *a2 = v18;
  return result;
}

uint64_t sub_29D7BFE8C()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

void sub_29D7BFF64()
{
  if (!qword_2A17B4EF0)
  {
    sub_29D7BFFF8();
    sub_29D7C0058(&qword_2A17B4F00, sub_29D7BFFF8);
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4EF0);
    }
  }
}

void sub_29D7BFFF8()
{
  if (!qword_2A17B4EF8)
  {
    sub_29D936458();
    v0 = sub_29D935208();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4EF8);
    }
  }
}

uint64_t sub_29D7C0058(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7C00A0()
{
  if (!qword_2A17B4F10)
  {
    sub_29D7BFF64();
    sub_29D935248();
    sub_29D7C0058(&qword_2A17B4F08, sub_29D7BFF64);
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4F10);
    }
  }
}

void sub_29D7C015C()
{
  if (!qword_2A17B4F20)
  {
    sub_29D7C0248();
    sub_29D6AD548();
    sub_29D7C0058(&qword_2A17B4F40, sub_29D7C0248);
    sub_29D7C0058(&qword_2A1A223E0, sub_29D6AD548);
    v0 = sub_29D938088();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4F20);
    }
  }
}

void sub_29D7C0248()
{
  if (!qword_2A17B4F28)
  {
    sub_29D7C05E8(255, &qword_2A17B4F30, MEMORY[0x29EDC9A40]);
    sub_29D7C02E4();
    v0 = sub_29D9381B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4F28);
    }
  }
}

unint64_t sub_29D7C02E4()
{
  result = qword_2A17B4F38;
  if (!qword_2A17B4F38)
  {
    sub_29D7C05E8(255, &qword_2A17B4F30, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4F38);
  }

  return result;
}

void sub_29D7C0358()
{
  if (!qword_2A17B4F48)
  {
    sub_29D6AD548();
    sub_29D7C0710(255, &qword_2A17B4F50, MEMORY[0x29EDC9A40]);
    sub_29D7C0058(&qword_2A1A223E0, sub_29D6AD548);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4F48);
    }
  }
}

uint64_t sub_29D7C0420(uint64_t a1, uint64_t a2)
{
  sub_29D7C04B0(0, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D7C04B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D7C0518(uint64_t a1)
{
  sub_29D7C04B0(0, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D7C05A0()
{
  result = qword_2A17B4F58;
  if (!qword_2A17B4F58)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B4F58);
  }

  return result;
}

void sub_29D7C05E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7C063C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(sub_29D936378() - 8) + 80);

  return sub_29D7BFB9C(a1, a2);
}

void sub_29D7C0710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9359D8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D7C0770()
{
  result = qword_2A17B4F78;
  if (!qword_2A17B4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4F78);
  }

  return result;
}

id sub_29D7C07C4(void *a1)
{
  *(v1 + 16) = [objc_opt_self() millimeterOfMercuryUnit];
  result = [objc_opt_self() displayTypeWithIdentifier_];
  if (result)
  {
    *(v1 + 24) = result;
    *(v1 + 32) = [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];
    *(v1 + 40) = [*(v1 + 24) hk:*(v1 + 16) numberFormatterForUnit:?];
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = v4;
    v7 = [v5 hk:v6 valueFormatterForUnit:?];

    *(v1 + 48) = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7C08CC(void *a1)
{
  v2 = v1;
  v4 = v2[5];
  sub_29D6B73CC();
  [a1 doubleValueForUnit_];
  v5 = sub_29D93A6C8();
  v6 = [v4 stringFromNumber:v5 displayType:v2[3] unitController:v2[4]];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_29D939D68();

  return v7;
}

uint64_t sub_29D7C097C()
{
  v1 = *(v0 + 40);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C09F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C69666F7270;
  v6 = 0x6163696669746F6ELL;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x686372616573;
  if (a1 != 1)
  {
    v9 = 0x676E6972616873;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7972616D6D7573;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C69666F7270)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v13 = sub_29D93AD78();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E6972616873)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x7972616D6D7573)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_29D7C0BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0x6570795461746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x73676E6974746573;
    }

    if (v4 == 2)
    {
      v6 = 0x800000029D956D90;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7972616D6D7573;
    }

    else
    {
      v5 = 0x6570795461746164;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEC0000006D6F6F52;
    }
  }

  v7 = 0xD000000000000018;
  v8 = 0x800000029D956D90;
  if (a2 != 2)
  {
    v7 = 0x73676E6974746573;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x7972616D6D7573;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D7C0D2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF4A50426D6F6F52;
  v3 = 0x6570795461746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x696472616F626E6FLL;
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0x800000029D957720;
      v5 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x6570795461746164;
    }

    if (v4)
    {
      v6 = 0x800000029D957700;
    }

    else
    {
      v6 = 0xEF4A50426D6F6F52;
    }
  }

  v7 = 0x696472616F626E6FLL;
  v8 = 0x800000029D957720;
  if (a2 == 2)
  {
    v8 = 0xEA0000000000676ELL;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000029D957700;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D7C0E84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x725068746C616568;
  v5 = 0xED0000656C69666FLL;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6 = 0x6570795461746164;
  v7 = 0xEC0000006D6F6F52;
  if (a1 != 3)
  {
    v6 = 0x684368746C616568;
    v7 = 0xEF7473696C6B6365;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6573776F7262;
  if (a1 != 1)
  {
    v9 = 0x6163696669746F6ELL;
    v8 = 0xEC0000006E6F6974;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7972616D6D7573;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v12 = 0x6163696669746F6ELL;
        v13 = 1852795252;
LABEL_32:
        v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v12)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v14 = 0xE600000000000000;
      if (v10 != 0x6573776F7262)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x7972616D6D7573)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        v14 = 0xEF7473696C6B6365;
        if (v10 != 0x684368746C616568)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v12 = 0x6570795461746164;
      v13 = 1836019538;
      goto LABEL_32;
    }

    if (a2 == 5)
    {
      v14 = 0xED0000656C69666FLL;
      if (v10 != 0x725068746C616568)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_39:
        v15 = sub_29D93AD78();
        goto LABEL_40;
      }
    }
  }

LABEL_37:
  if (v11 != v14)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_29D7C10F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6361725074736562;
    v10 = 0xED00007365636974;
    if (a1 != 6)
    {
      v9 = 0x756F4A6E69676562;
      v10 = 0xEC0000006C616E72;
    }

    v11 = 0x546C616E72756F6ALL;
    v12 = 0xEB00000000657079;
    if (a1 != 4)
    {
      v11 = 0x7265646E696D6572;
      v12 = 0xEC00000065707954;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6F54737365636361;
    v5 = 0xEC00000066667543;
    if (a1 != 2)
    {
      v4 = 0x48756F5965636E6FLL;
      v5 = 0xEF66667543657661;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v6 = 0x74756F62414A5042;
    }

    else
    {
      v3 = 0x800000029D957200;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00007365636974;
        if (v7 != 0x6361725074736562)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x756F4A6E69676562;
      v15 = 1818324594;
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 0xEB00000000657079;
        if (v7 != 0x546C616E72756F6ALL)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x7265646E696D6572;
      v15 = 1701869908;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x74756F62414A5042)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0x800000029D957200;
        if (v7 != 0xD000000000000012)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_44;
    }

    if (a2 != 2)
    {
      v13 = 0xEF66667543657661;
      if (v7 != 0x48756F5965636E6FLL)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v14 = 0x6F54737365636361;
    v15 = 1717990723;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v7 != v14)
  {
LABEL_46:
    v16 = sub_29D93AD78();
    goto LABEL_47;
  }

LABEL_44:
  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_29D7C13C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x776F4E746F6ELL;
  if (a1 != 5)
  {
    v5 = 0x7461446465646461;
    v4 = 0xE900000000000061;
  }

  v6 = 0xE400000000000000;
  v7 = 1701736292;
  if (a1 != 3)
  {
    v7 = 0x4A5042676F6CLL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1954047342;
  if (a1 != 1)
  {
    v9 = 0x64616F4C77656976;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6C65636E6163;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1954047342)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = 0xE900000000000073;
        if (v11 != 0x64616F4C77656976)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C65636E6163)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x776F4E746F6ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = 0xE900000000000061;
      if (v11 != 0x7461446465646461)
      {
LABEL_41:
        v14 = sub_29D93AD78();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1701736292)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x4A5042676F6CLL)
    {
      goto LABEL_41;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_29D7C15DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 2)
    {
      v4 = 0x800000029D9576A0;
    }

    else
    {
      v4 = 0x800000029D9576C0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6361725074736562;
    }

    else
    {
      v3 = 0x6574616974696E69;
    }

    if (v2)
    {
      v4 = 0xED00007365636974;
    }

    else
    {
      v4 = 0xEF676E6967676F4CLL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = 0x800000029D9576A0;
    }

    else
    {
      v6 = 0x800000029D9576C0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6361725074736562;
    }

    else
    {
      v5 = 0x6574616974696E69;
    }

    if (a2)
    {
      v6 = 0xED00007365636974;
    }

    else
    {
      v6 = 0xEF676E6967676F4CLL;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_29D93AD78();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_29D7C1740(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646577656956;
  if (a1 > 3u)
  {
    v3 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    if (a1 == 6)
    {
      v8 = 0x73676E6974746573;
      v3 = 0xEE00646577656956;
    }

    v5 = 0x800000029D956CA0;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0xD000000000000016;
      v5 = 0x800000029D956CC0;
    }

    v6 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v3 = 0x800000029D956C60;
    v4 = 0xD000000000000014;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001FLL;
      v3 = 0x800000029D956C80;
    }

    v5 = 0x800000029D956C20;
    if (a1)
    {
      v5 = 0x800000029D956C40;
    }

    v6 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v4;
    }
  }

  if (v6)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v7 != 0x73676E6974746573)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v7 != 0x6E776F6E6B6E75)
        {
LABEL_43:
          v12 = sub_29D93AD78();
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000029D956CA0;
      if (v7 != 0xD000000000000019)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x800000029D956CC0;
      if (v7 != 0xD000000000000016)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x800000029D956C60;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x800000029D956C80;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2)
    {
      v11 = "notificationViewed";
    }

    else
    {
      v11 = "dataTypeRoomViewed";
    }

    v2 = (v11 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_43;
    }
  }

  if (v10 != v2)
  {
    goto LABEL_43;
  }

  v12 = 1;
LABEL_44:

  return v12 & 1;
}

uint64_t sub_29D7C19A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656C69546ELL;
  v3 = 0x6F69746F6D6F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6570795461746164;
    }

    else
    {
      v5 = 0x6F69746F6D6F7270;
    }

    if (v4)
    {
      v6 = 0xEC0000006D6F6F52;
    }

    else
    {
      v6 = 0xED0000656C69546ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x684368746C616568;
    v6 = 0xEF7473696C6B6365;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6B6E694C70656564;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0x684368746C616568;
  v8 = 0xEF7473696C6B6365;
  v9 = 0xE800000000000000;
  v10 = 0x6B6E694C70656564;
  if (a2 != 3)
  {
    v10 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6570795461746164;
    v2 = 0xEC0000006D6F6F52;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_29D93AD78();
  }

  return v13 & 1;
}

uint64_t sub_29D7C1B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x694465746F6D6572;
    }

    else
    {
      v5 = 1701736302;
    }

    if (v2)
    {
      v6 = 0xED0000656C626173;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x61476E6F69676572;
    v4 = 0xEB00000000646574;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x800000029D956F50;
    }

    if (a1 == 2)
    {
      v5 = 0x6970784564656573;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEA00000000007972;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x694465746F6D6572;
    }

    else
    {
      v11 = 1701736302;
    }

    if (a2)
    {
      v10 = 0xED0000656C626173;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x61476E6F69676572;
    v8 = 0x800000029D956F50;
    if (a2 == 3)
    {
      v8 = 0xEB00000000646574;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x6970784564656573;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000007972;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_29D93AD78();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_29D7C1D0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x7075746573;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1701736292;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726574616CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1954047342;
    }

    else
    {
      v9 = 0x7075746573;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1701736292;
    if (a2 != 3)
    {
      v6 = 0x726574616CLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6C65636E6163;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_29D93AD78();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_29D7C1E64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0xD000000000000010;
  v4 = 0x6570795461746164;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x6570795461746164;
    }

    if (v5)
    {
      v7 = 0x800000029D956D50;
    }

    else
    {
      v7 = 0xEC0000006D6F6F52;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE800000000000000;
    v6 = 0x73676E6974746573;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (v5 == 3)
    {
      v7 = 0x800000029D956D70;
    }

    else
    {
      v7 = 0x800000029D956D90;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0x800000029D956D50;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    if (v9)
    {
      v11 = v2;
    }

    else
    {
      v11 = v8;
    }

    if (v6 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0x800000029D956D70;
    v4 = 0xD000000000000013;
    v8 = 0x800000029D956D90;
    v3 = 0xD000000000000018;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE800000000000000;
  if (v6 != 0x73676E6974746573)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v7 != v11)
  {
LABEL_30:
    v12 = sub_29D93AD78();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_29D7C1FF4()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D7C20EC()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D7C21D0()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D7C22C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D7C35E8();
  *a2 = result;
  return result;
}

void sub_29D7C22F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEA00000000007972;
  v6 = 0x6970784564656573;
  v7 = 0xEB00000000646574;
  v8 = 0x61476E6F69676572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000029D956F50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x694465746F6D6572;
    v3 = 0xED0000656C626173;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_29D7C2458()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934178();
  sub_29D6FD494(v6, qword_2A1A2BE20);
  sub_29D69C6C0(v6, qword_2A1A2BE20);
  sub_29D933FE8();
  sub_29D7C3E9C();
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x29EDC3750], v7);
  sub_29D6E4080(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  if (qword_2A1A23BB0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v5, *MEMORY[0x29EDC3898], v0);
  sub_29D935E88();
  return sub_29D934168();
}

uint64_t sub_29D7C26AC()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = *MEMORY[0x29EDBA870];
  v2 = [ObjCClassFromMetadata quantityTypeForIdentifier_];

  v9 = v2;
  v3 = MEMORY[0x29EDCA190];
  v8 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v4 = v2;
    MEMORY[0x29ED6A300]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();
    v3 = v8;
  }

  sub_29D7C3D5C(&v9);
  v5 = sub_29D7AF2C4(v3);

  qword_2A1A2BE38 = v5;
  return result;
}

uint64_t sub_29D7C27C8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  MEMORY[0x29ED6A240](0xD00000000000004CLL, 0x800000029D963160);
  return 0;
}

uint64_t sub_29D7C288C(void *a1)
{
  v1 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v2 = sub_29D939F38();

  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x29EDCA190];
    sub_29D7EE600(0, v3, 0);
    v4 = 32;
    v5 = v16;
    do
    {
      v6 = *(v2 + v4);
      v7 = sub_29D939D68();
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_29D7EE600((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  sub_29D782F64(0, &qword_2A17B3628, MEMORY[0x29EDC9A40]);
  sub_29D738398();
  v14 = sub_29D939CA8();

  return v14;
}

uint64_t sub_29D7C2A14(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D963120);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2B08(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D9630E0);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2BFC(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD00000000000003ALL, 0x800000029D963060);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2CF0(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D9630A0);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2DE4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_29D933F58();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9340F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D933FE8();
  v18 = sub_29D933FD8();

  if ((v18 & 1) == 0 || (v19 = sub_29D7C3AEC(), v20 >> 60 == 15))
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v21, qword_2A1A2BF58);
    v43[0] = 0;
    sub_29D9371C8();
LABEL_6:
    v22 = 1;
    return (*(v12 + 56))(a3, v22, 1, v11);
  }

  v40 = v19;
  v41 = v20;
  v39 = a3;
  if (!a2)
  {

LABEL_11:
    a3 = v39;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v25, qword_2A1A2BF58);
    v43[0] = 0;
    sub_29D9371C8();
    sub_29D71847C(v40, v41);
    goto LABEL_6;
  }

  v24 = sub_29D93AD78();

  if (v24)
  {
    goto LABEL_11;
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v26, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = a2;
  v43[0] = 0;
  sub_29D9371C8();

  if (qword_2A1A23BB0 != -1)
  {
    swift_once();
  }

  v38 = qword_2A1A2BE38;
  sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  v27 = sub_29D93A0F8();
  sub_29D782F64(0, &qword_2A1A21F18, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934278();
  *(inited + 40) = v29;
  v37 = sub_29D7DB014(inited, v27);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v36 = "ontroller";
  type metadata accessor for AFibBurdenRescindedTileViewController();
  sub_29D933FF8();
  v35[1] = v30;
  (*(v42 + 104))(v10, *MEMORY[0x29EDC3750], v6);
  v32 = v40;
  v31 = v41;
  sub_29D7C3D48(v40, v41);
  v33 = a1;
  sub_29D9340A8();
  sub_29D935E88();
  sub_29D9340B8();
  sub_29D934078();
  v34 = sub_29D9340C8();
  sub_29D7A6488(v37);
  v34(v43, 0);
  sub_29D71847C(v32, v31);
  a3 = v39;
  (*(v12 + 32))(v39, v16, v11);
  v22 = 0;
  return (*(v12 + 56))(a3, v22, 1, v11);
}

uint64_t sub_29D7C33F8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EF0);
  MEMORY[0x29ED6A240](0xD000000000000048, 0x800000029D962F20);
  return 0;
}

unint64_t sub_29D7C34C0(unsigned __int8 a1)
{
  sub_29D93AA18();

  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEA00000000007972;
  v5 = 0x6970784564656573;
  v6 = 0xEB00000000646574;
  v7 = 0x61476E6F69676572;
  if (a1 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = 0x800000029D956F50;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v3 = 0x694465746F6D6572;
    v2 = 0xED0000656C626173;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x29ED6A240](v8, v9);

  return 0xD000000000000066;
}

uint64_t sub_29D7C35E8()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D7C3634()
{
  v0 = *MEMORY[0x29EDBA5A0];
  v1 = sub_29D9371B8();
  if ((sub_29D937198() & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    sub_29D9371C8();

    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *MEMORY[0x29EDBA600];
  v4 = v1;
  if ([v4 isRequirementSatisfiedWithIdentifier_])
  {
    if ([v4 isRequirementSatisfiedWithIdentifier_])
    {
      if ([v4 isRequirementSatisfiedWithIdentifier_] && (objc_msgSend(v4, sel_isRequirementSatisfiedWithIdentifier_, *MEMORY[0x29EDBA5D0]) & 1) == 0)
      {
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4();
        sub_29D69C6C0(v13, qword_2A1A2BF58);
        v14 = swift_allocObject();
        *(v14 + 16) = sub_29D7C3E74;
        *(v14 + 24) = v2;

        sub_29D9371C8();

        return 4;
      }

      else
      {
        if ([v4 isRequirementSatisfiedWithIdentifier_])
        {

          return 0;
        }

        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4();
        sub_29D69C6C0(v11, qword_2A1A2BF58);
        v12 = swift_allocObject();
        *(v12 + 16) = sub_29D7C3E74;
        *(v12 + 24) = v2;

        sub_29D9371C8();

        return 3;
      }
    }

    else
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4();
      sub_29D69C6C0(v9, qword_2A1A2BF58);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_29D7C3E74;
      *(v10 + 24) = v2;

      sub_29D9371C8();

      return 2;
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v7, qword_2A1A2BF58);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_29D7C3E74;
    *(v8 + 24) = v2;

    sub_29D9371C8();

    return 1;
  }
}

uint64_t sub_29D7C3AEC()
{
  v0 = sub_29D937898();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v3 = sub_29D933108();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29D9330F8();
  sub_29D7C3E20();
  v6 = sub_29D9330E8();

  return v6;
}

uint64_t sub_29D7C3D48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D6AA230(a1, a2);
  }

  return a1;
}

uint64_t sub_29D7C3D5C(uint64_t a1)
{
  sub_29D7C3DB8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7C3DB8()
{
  if (!qword_2A1A22240)
  {
    sub_29D69567C(255, &qword_2A1A24940, 0x29EDBACB8);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22240);
    }
  }
}

unint64_t sub_29D7C3E20()
{
  result = qword_2A1A23568;
  if (!qword_2A1A23568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23568);
  }

  return result;
}

void sub_29D7C3E9C()
{
  if (!qword_2A1A24898)
  {
    sub_29D933F58();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24898);
    }
  }
}

unint64_t sub_29D7C3F08()
{
  result = qword_2A1A24128;
  if (!qword_2A1A24128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24128);
  }

  return result;
}

unint64_t sub_29D7C3F5C()
{
  result = qword_2A1A24120;
  if (!qword_2A1A24120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24120);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenOnboardingPresentationContext()
{
  result = qword_2A17B4FF0;
  if (!qword_2A17B4FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7C3FFC()
{
  sub_29D7C4060();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_29D7C4060()
{
  if (!qword_2A17B5000)
  {
    v0 = sub_29D9350C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5000);
    }
  }
}

uint64_t sub_29D7C40A8()
{
  v1 = v0;
  v2 = sub_29D9350C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B998(v1, v12);
  if (swift_getEnumCaseMultiPayload() > 3)
  {
    return 0x6B6E694C70656564;
  }

  (*(v3 + 32))(v7, v12, v2);
  v13 = sub_29D935098();
  (*(v3 + 8))(v7, v2);
  return v13;
}

uint64_t sub_29D7C4224()
{
  v1 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B998(v0, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = 0x684368746C616568;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      return 0x6B6E694C70656564;
    }

    v7 = 0xD000000000000018;
  }

  v8 = sub_29D9350C8();
  (*(*(v8 - 8) + 8))(v5, v8);
  return v7;
}

uint64_t sub_29D7C43A8(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v3 = sub_29D9350C8();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v64 = &v63 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v63 - v13;
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v21, v24);
  v27 = &v63 - v26;
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v63 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v63 - v33;
  sub_29D7C489C();
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35 - 8, v37);
  v40 = &v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v38 + 56);
  sub_29D71B998(a1, v40);
  sub_29D71B998(v68, &v40[v41]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_29D71B998(v40, v31);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v66;
        v56 = v67;
        (*(v66 + 32))(v14, &v40[v41], v67);
        v47 = sub_29D9350B8();
        v58 = *(v57 + 8);
        v58(v14, v56);
        v58(v31, v56);
        goto LABEL_21;
      }

      v23 = v31;
    }

    else
    {
      sub_29D71B998(v40, v34);
      if (!swift_getEnumCaseMultiPayload())
      {
        v60 = v66;
        v59 = v67;
        (*(v66 + 32))(v17, &v40[v41], v67);
        v47 = sub_29D9350B8();
        v61 = *(v60 + 8);
        v61(v17, v59);
        v61(v34, v59);
        goto LABEL_21;
      }

      v23 = v34;
    }

LABEL_17:
    (*(v66 + 8))(v23, v67);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_29D71B998(v40, v27);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v49 = v66;
      v50 = &v40[v41];
      v51 = v64;
      v52 = v67;
      (*(v66 + 32))(v64, v50, v67);
      v47 = sub_29D9350B8();
      v53 = *(v49 + 8);
      v53(v51, v52);
      v53(v27, v52);
      goto LABEL_21;
    }

    v23 = v27;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_29D71B998(v40, v23);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v44 = v65;
      v43 = v66;
      v45 = &v40[v41];
      v46 = v67;
      (*(v66 + 32))(v65, v45, v67);
      v47 = sub_29D9350B8();
      v48 = *(v43 + 8);
      v48(v44, v46);
      v48(v23, v46);
LABEL_21:
      v55 = type metadata accessor for AFibBurdenOnboardingPresentationContext;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v54 = swift_getEnumCaseMultiPayload();
  v55 = type metadata accessor for AFibBurdenOnboardingPresentationContext;
  if (v54 != 4)
  {
LABEL_18:
    v47 = 0;
    v55 = sub_29D7C489C;
    goto LABEL_22;
  }

  v47 = 1;
LABEL_22:
  sub_29D7C4900(v40, v55);
  return v47 & 1;
}

void sub_29D7C489C()
{
  if (!qword_2A17B5008)
  {
    type metadata accessor for AFibBurdenOnboardingPresentationContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5008);
    }
  }
}

uint64_t sub_29D7C4900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler()
{
  result = qword_2A17B5010;
  if (!qword_2A17B5010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7C49EC(uint64_t a1)
{
  v3 = sub_29D9369A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v8, a1, v3);
  v11 = sub_29D936548();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_29D7C4AF4()
{
  sub_29D936558();

  return swift_deallocClassInstance();
}

unint64_t sub_29D7C4B30()
{
  result = qword_2A17B1648;
  if (!qword_2A17B1648)
  {
    type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1648);
  }

  return result;
}

uint64_t sub_29D7C4BB4()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[2];

  if (!v3)
  {
LABEL_6:
    LOBYTE(v8) = 0;
    v9 = (v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete);
    if ((*(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = v1[4];
  v5 = objc_allocWithZone(MEMORY[0x29EDC5210]);
  v6 = v3;
  v7 = [v5 initWithJournal:v6 healthStore:v4];
  if (![v7 buildSummary])
  {

    goto LABEL_6;
  }

  v8 = [swift_unknownObjectRetain() isComplete];

  swift_unknownObjectRelease_n();
  v9 = (v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete);
  if (v8 == *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete))
  {
LABEL_4:
    *v9 = v8;

    goto LABEL_8;
  }

LABEL_7:
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  *(v10 + 24) = v8;
  v0[2] = v2;
  sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E08();

LABEL_8:
  v11 = v0[1];

  return v11();
}

uint64_t sub_29D7C4DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2A1C73D48](sub_29D7C4DD0, 0, 0);
}

uint64_t sub_29D7C4DD0()
{
  v1 = v0[3];
  v0[5] = *(v0[4] + 40);
  v2 = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_29D7C4E80;
  v4 = v0[3];

  return sub_29D7023D4(0, v4);
}

uint64_t sub_29D7C4E80(char a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2A1C73D48](sub_29D7C4F80, 0, 0);
}

uint64_t sub_29D7C4F80()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples;
  if (v1 == *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples))
  {

    *(v2 + v3) = v1;
  }

  else
  {
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    *(v0 + 16) = v2;
    sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
    sub_29D933E08();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_29D7C50E8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_29D7C6D88;
    v10[5] = v3;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1107296256;
    v10[2] = sub_29D8E44F0;
    v10[3] = &unk_2A2446270;
    v4 = _Block_copy(v10);
    v5 = v1;

    [v2 closeJournal:v5 completion:v4];
    _Block_release(v4);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = sub_29D937878();
    v8 = sub_29D93A268();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_29D677000, v7, v8, "BPJ Notification Settings: Did tap to end journal", v9, 2u);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }
  }
}

void sub_29D7C529C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = sub_29D939998();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (a2)
  {
    v19 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);
    v21 = a2;
    v22 = sub_29D937878();
    v23 = sub_29D93A288();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_29D93ADF8();
      v28 = sub_29D6C2364(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29D677000, v22, v23, "Error closing journal: %s", v24, 0xCu);
      sub_29D69417C(v25);
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v29 = v16;
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v30 = sub_29D93A468();
    aBlock[4] = sub_29D7C6D90;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2446298;
    v31 = _Block_copy(aBlock);

    sub_29D939988();
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29D7C6CDC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    sub_29D7C6D24(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D6FC864();
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v18, v11, v31);
    _Block_release(v31);

    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v18, v29);
  }
}

uint64_t sub_29D7C56FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(*(result + 40) + 16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath, v2);
      sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);

      sub_29D933E08();
    }
  }

  return result;
}

void sub_29D7C5854()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D7C5A5C(v0);
    v4 = sub_29D7C5F68(v2, v0);
    sub_29D6A0C58();
    v5 = swift_allocObject();
    if (v4)
    {
      *(v5 + 16) = xmmword_29D941B10;
      *(v5 + 32) = v3;
      *(v5 + 40) = v4;
    }

    else
    {
      *(v5 + 16) = xmmword_29D940030;
      *(v5 + 32) = v3;
    }

    sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
    v6 = v3;
    v7 = v4;
    v8 = sub_29D939F18();
    v9 = [v2 updatedJournalWithTimeIntervals_];

    v10 = *(v0 + 24);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v9;
    v12[4] = v5;
    v15[4] = sub_29D7C6CB0;
    v15[5] = v12;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1107296256;
    v15[2] = sub_29D8E44F0;
    v15[3] = &unk_2A24461F8;
    v13 = _Block_copy(v15);
    v14 = v9;

    [v10 saveJournal:v14 completion:v13];
    _Block_release(v13);
  }
}

id sub_29D7C5A5C(uint64_t a1)
{
  v38 = a1;
  v43 = sub_29D9339F8();
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v43, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933AB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D933CE8();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D933318();
  v41 = *(v17 - 8);
  v42 = v17;
  v18 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x29EDB9C78], v6);
  sub_29D933AC8();
  (*(v7 + 8))(v11, v6);
  sub_29D7C6D24(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v22 = sub_29D933CC8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93F680;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x29EDB9CC8], v22);
  v28(v27 + v24, *MEMORY[0x29EDB9CE0], v22);
  sub_29D6E3748(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = *(v38 + 40);
  swift_getKeyPath();
  v44 = v29;
  sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);

  sub_29D933E18();

  v30 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime;
  swift_beginAccess();
  v31 = v29 + v30;
  v32 = v43;
  (*(v1 + 16))(v5, v31, v43);

  sub_29D933B48();

  (*(v1 + 8))(v5, v32);
  (*(v39 + 8))(v16, v40);
  v33 = objc_allocWithZone(MEMORY[0x29EDC5208]);
  v34 = sub_29D933288();
  v35 = [v33 initWithDayWindowType:0 scheduledTime:v34];

  (*(v41 + 8))(v21, v42);
  return v35;
}

id sub_29D7C5F68(void *a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933AB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D933CE8();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D933318();
  v47 = *(v20 - 8);
  v21 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 journalType];
  result = 0;
  if (!v25)
  {
    (*(v10 + 104))(v14, *MEMORY[0x29EDB9C78], v9);
    sub_29D933AC8();
    (*(v10 + 8))(v14, v9);
    sub_29D7C6D24(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
    v27 = sub_29D933CC8();
    v28 = *(v27 - 8);
    v42 = v3;
    v43 = v20;
    v29 = v28;
    v30 = *(v28 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29D93F680;
    v33 = v32 + v31;
    v34 = *(v29 + 104);
    v34(v33, *MEMORY[0x29EDB9CC8], v27);
    v34(v33 + v30, *MEMORY[0x29EDB9CE0], v27);
    sub_29D6E3748(v32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35 = *(v44 + 40);
    swift_getKeyPath();
    v48 = v35;
    sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);

    sub_29D933E18();

    v36 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime;
    swift_beginAccess();
    v37 = v42;
    (*(v4 + 16))(v8, v35 + v36, v42);

    sub_29D933B48();

    (*(v4 + 8))(v8, v37);
    (*(v45 + 8))(v19, v46);
    v38 = objc_allocWithZone(MEMORY[0x29EDC5208]);
    v39 = sub_29D933288();
    v40 = [v38 initWithDayWindowType:1 scheduledTime:v39];

    (*(v47 + 8))(v24, v43);
    return v40;
  }

  return result;
}

void sub_29D7C64A0(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v54 = a3;
  v53 = sub_29D939968();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v53, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D939998();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (a2)
  {
    v51 = v9;
    v52 = a5;
    v20 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2C008);
    v22 = a2;
    v23 = sub_29D937878();
    v24 = sub_29D93A288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = a4;
      v26 = v25;
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_29D93ADF8();
      v30 = sub_29D6C2364(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29D677000, v23, v24, "Error updating journal: %s", v26, 0xCu);
      sub_29D69417C(v27);
      v31 = v27;
      v19 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      MEMORY[0x29ED6BE30](v31, -1, -1);
      v32 = v26;
      a4 = v50;
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    else
    {
    }

    v9 = v51;
    a5 = v52;
  }

  if (a1)
  {
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v52 = sub_29D93A468();
    v33 = swift_allocObject();
    v34 = v18;
    v35 = v53;
    *(v33 + 16) = v54;
    *(v33 + 24) = a4;
    aBlock[4] = sub_29D7C6CD4;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2446248;
    v36 = a4;
    v37 = _Block_copy(aBlock);

    v38 = v36;

    sub_29D939988();
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29D7C6CDC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    sub_29D7C6D24(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D6FC864();
    sub_29D93A888();
    v39 = v52;
    MEMORY[0x29ED6A880](0, v34, v13, v37);
    _Block_release(v37);

    (*(v9 + 8))(v13, v35);
    (*(v55 + 8))(v34, v56);
  }

  if (v19[227] != -1)
  {
    swift_once();
  }

  v40 = sub_29D937898();
  sub_29D69C6C0(v40, qword_2A1A2C008);
  sub_29D935E88();
  v41 = sub_29D937878();
  v42 = sub_29D93A268();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
    v46 = MEMORY[0x29ED6A340](a5, v45);
    v48 = sub_29D6C2364(v46, v47, aBlock);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_29D677000, v41, v42, "Successfully updated journal with time intervals: %s", v43, 0xCu);
    sub_29D69417C(v44);
    MEMORY[0x29ED6BE30](v44, -1, -1);
    MEMORY[0x29ED6BE30](v43, -1, -1);
  }
}

uint64_t sub_29D7C6A50(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v5 = a2;
    sub_29D7F1064(a2);
  }

  return result;
}

uint64_t sub_29D7C6AD0()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C6B94@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_29D7C6CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7C6CDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7C6D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7C6DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = sub_29D7C7368(a1, a2);
  v10 = v5[2];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v8;
  v14[4] = sub_29D7C76B8;
  v14[5] = v11;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1107296256;
  v14[2] = sub_29D8E44F0;
  v14[3] = &unk_2A24462E8;
  v12 = _Block_copy(v14);
  v13 = v9;

  [v10 saveObject:v13 withCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_29D7C6EFC(int a1, void *a2, void *a3, uint64_t (*a4)(void, void *), uint64_t a5)
{
  v47 = a4;
  v9 = sub_29D933A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = a1;
    v45 = a5;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2C008);
    v16 = a3;
    v17 = sub_29D937878();
    v18 = sub_29D93A2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v19 = 136446466;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v48);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = [v16 UUID];
      sub_29D933A38();

      sub_29D7C76DC();
      v24 = sub_29D93AD38();
      v26 = v25;
      (*(v10 + 8))(v14, v9);
      v27 = sub_29D6C2364(v24, v26, &v48);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Successfully saved blood pressure sample with UUID: %s.", v19, 0x16u);
      v28 = v44;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    LOBYTE(a1) = v46;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v29 = sub_29D937898();
    sub_29D69C6C0(v29, qword_2A1A2C008);
    v30 = a2;
    v31 = sub_29D937878();
    v32 = sub_29D93A288();

    if (os_log_type_enabled(v31, v32))
    {
      v46 = a1;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v33 = 136446466;
      v36 = sub_29D93AF08();
      v38 = sub_29D6C2364(v36, v37, &v48);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      if (a2)
      {
        v39 = a2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      LOBYTE(a1) = v46;
      *(v33 + 14) = v40;
      *v34 = v41;
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s] Error when saving sample: %@", v33, 0x16u);
      sub_29D7C778C(v34, sub_29D6ACA98);
      MEMORY[0x29ED6BE30](v34, -1, -1);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }
  }

  return v47(a1 & 1, a2);
}

id sub_29D7C7368(uint64_t a1, uint64_t a2)
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v5 = sub_29D933958();
  v6 = sub_29D933958();
  v7 = objc_opt_self();
  v8 = [v7 quantitySampleWithType:v4 quantity:a1 startDate:v5 endDate:v6];

  v9 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v10 = sub_29D933958();
  v11 = sub_29D933958();
  v12 = [v7 quantitySampleWithType:v9 quantity:a2 startDate:v10 endDate:v11];

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v13 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  *(inited + 32) = v8;
  *(inited + 40) = v12;
  v15 = v8;
  v16 = v12;
  sub_29D7AF358(inited);
  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D7C7734();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_29D93DDB0;
  v19 = *MEMORY[0x29EDBA818];
  *(v18 + 32) = sub_29D939D68();
  *(v18 + 40) = v20;
  *(v18 + 72) = MEMORY[0x29EDC9A98];
  *(v18 + 48) = 1;
  sub_29D73F010(v18);
  swift_setDeallocating();
  sub_29D7C778C(v18 + 32, sub_29D74D460);
  v21 = sub_29D933958();
  v22 = sub_29D933958();
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  sub_29D702E20();
  v23 = sub_29D93A0C8();

  v24 = sub_29D939C58();

  v25 = [objc_opt_self() correlationWithType:v13 startDate:v21 endDate:v22 objects:v23 metadata:v24];

  return v25;
}

uint64_t sub_29D7C76C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D7C76DC()
{
  result = qword_2A17B3C50;
  if (!qword_2A17B3C50)
  {
    sub_29D933A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C50);
  }

  return result;
}

void sub_29D7C7734()
{
  if (!qword_2A17B7B00)
  {
    sub_29D74D460();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7B00);
    }
  }
}

uint64_t sub_29D7C778C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7C78AC()
{
  sub_29D9351F8();

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C795C()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D7C7A8C()
{
  type metadata accessor for AFibBurdenLifeFactorDescriptionCell();
  sub_29D7C7D48(&qword_2A17B5058, type metadata accessor for AFibBurdenLifeFactorDescriptionCell);
  return sub_29D93A348();
}

void *sub_29D7C7AFC@<X0>(void *a1@<X8>)
{
  v3 = sub_29D936F28();
  v5 = v4;
  v6 = *(v1 + qword_2A17B5038);
  v7 = sub_29D715378();
  v9 = v8;
  type metadata accessor for TitleSubtitleView();
  sub_29D7C7D48(&qword_2A17B5060, type metadata accessor for TitleSubtitleView);
  v10 = sub_29D9350D8();
  v12 = v11;
  a1[3] = &type metadata for TitleSubtitleItem;
  a1[4] = sub_29D7C7D90();
  result = swift_allocObject();
  *a1 = result;
  result[2] = 0xD000000000000011;
  result[3] = 0x800000029D9633E0;
  result[4] = v10;
  result[5] = v12;
  result[6] = v3;
  result[7] = v5;
  result[8] = v7;
  result[9] = v9;
  return result;
}

id sub_29D7C7C40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorAppRecommendationsFetchedResultsControllerDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7C7C90()
{
  type metadata accessor for TitleSubtitleView();
  sub_29D7C7D48(&qword_2A17B5060, type metadata accessor for TitleSubtitleView);
  return sub_29D93A368();
}

uint64_t sub_29D7C7D48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D7C7D90()
{
  result = qword_2A17B5068;
  if (!qword_2A17B5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5068);
  }

  return result;
}

uint64_t sub_29D7C7DE4(_OWORD *a1)
{
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v8 = MEMORY[0x29EDC9E90];
  sub_29D7C8038(0, &qword_2A17B5530, sub_29D7C8004, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  v18 = xmmword_29D93DDB0;
  *(v9 + 16) = xmmword_29D93DDB0;
  sub_29D7C8038(0, &qword_2A17B1138, sub_29D6FC5F4, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v18;
  *(v10 + 56) = &type metadata for AFibBurdenLifeFactorDescriptionItem;
  *(v10 + 64) = sub_29D7639C4();
  v11 = swift_allocObject();
  *(v10 + 32) = v11;
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  v13 = a1[3];
  v11[3] = a1[2];
  v11[4] = v13;
  *(v9 + 32) = v10;
  v20 = 0x3C53447961727241;
  v21 = 0xE800000000000000;
  sub_29D7C809C(a1, v19);
  sub_29D933A48();
  v14 = sub_29D933A18();
  v16 = v15;
  (*(v3 + 8))(v7, v2);
  MEMORY[0x29ED6A240](v14, v16);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D9351E8();
}

void sub_29D7C8038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7C80F8(uint64_t a1, uint64_t a2)
{
  sub_29D7CA15C(0, &qword_2A1A22330, MEMORY[0x29EDC2D78], MEMORY[0x29EDB8AC0]);
  v4 = v3;
  v28 = *(v3 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v27 - v7;
  sub_29D69BECC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D934358();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x29EDBA6B0];
  sub_29D7CA1D0(a2, v13, sub_29D69BECC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29D7CA238(v13);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v21 = sub_29D934348();
    v22 = v23;
    (*(v15 + 8))(v19, v14);
  }

  v24 = sub_29D8FC9F4(v20, v21, v22);

  if (v24)
  {
    v25 = sub_29D6B74EC();
  }

  else
  {
    sub_29D9371A8();
    sub_29D938348();
    sub_29D7CA294();
    v25 = sub_29D938418();
    (*(v28 + 8))(v8, v4);
  }

  return v25;
}

uint64_t sub_29D7C83E0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C843C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a4;
  sub_29D7C964C(0, &qword_2A1A24AF8, MEMORY[0x29EDB89D0]);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v44 - v10;
  v12 = sub_29D937898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v44 - v20;
  sub_29D7C9708(0, &qword_2A1A24870, MEMORY[0x29EDC9E90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93DDB0;
  *(v22 + 32) = sub_29D7C9798(a1, a2);
  sub_29D934198();
  if ((sub_29D934418() & 1) == 0)
  {
    sub_29D934D28();
    v31 = sub_29D937878();
    v32 = sub_29D93A2A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v12;
      v35 = v34;
      v48 = v34;
      v49 = a3;
      *v33 = 136446210;
      swift_getMetatypeMetadata();
      v36 = sub_29D939DA8();
      v38 = sub_29D6C2364(v36, v37, &v48);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s]: In foreground mode, so will continue to listen for updates", v33, 0xCu);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);

      (*(v13 + 8))(v18, v44);
      goto LABEL_9;
    }

    v39 = *(v13 + 8);
    v40 = v18;
LABEL_8:
    v39(v40, v12);
    goto LABEL_9;
  }

  sub_29D934D28();
  v23 = sub_29D937878();
  v24 = sub_29D93A2A8();
  if (!os_log_type_enabled(v23, v24))
  {

    v39 = *(v13 + 8);
    v40 = v21;
    goto LABEL_8;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v44 = v12;
  v27 = v26;
  v48 = v26;
  v49 = a3;
  *v25 = 136446210;
  swift_getMetatypeMetadata();
  v28 = sub_29D939DA8();
  v30 = sub_29D6C2364(v28, v29, &v48);

  *(v25 + 4) = v30;
  _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s]: In background mode, so will finish after 1 update", v25, 0xCu);
  sub_29D69417C(v27);
  MEMORY[0x29ED6BE30](v27, -1, -1);
  MEMORY[0x29ED6BE30](v25, -1, -1);

  (*(v13 + 8))(v21, v44);
LABEL_9:
  v49 = v22;
  sub_29D7CA15C(0, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
  sub_29D7C9708(0, &qword_2A1A249B0, MEMORY[0x29EDC9A40]);
  sub_29D7C9DF8(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);
  sub_29D7C9D40();
  sub_29D9381D8();
  sub_29D7C9DB4(&qword_2A1A24B00, &qword_2A1A24AF8, MEMORY[0x29EDB89D0]);
  v41 = v46;
  v42 = sub_29D938418();
  result = (*(v45 + 8))(v11, v41);
  *v47 = v42;
  return result;
}

uint64_t sub_29D7C8944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9341B8();
  v5 = [objc_opt_self() hasPairedWatch];
  v7[3] = sub_29D933F18();
  v7[4] = &off_2A2447A08;
  v7[0] = sub_29D933F08();
  sub_29D6A1A4C(v4, a1, v5, v7, a2);

  return sub_29D69417C(v7);
}

uint64_t sub_29D7C89EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  sub_29D6C36D8(0);
  v35[2] = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36A4(0);
  v38 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v35[1] = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = sub_29D934148();
  v13 = *(v35[0] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v35[0], v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D934178();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v21 = sub_29D9341E8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  (*(v25 + 16))(v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v26 = sub_29D933F58();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D93DDB0;
  (*(v27 + 104))(v30 + v29, *MEMORY[0x29EDC36F0], v26);
  (*(v13 + 104))(v17, *MEMORY[0x29EDC3898], v35[0]);
  sub_29D934158();
  sub_29D7CA1D0(v36, v8, sub_29D6C36D8);
  sub_29D938338();
  v31 = sub_29D934228();
  v32 = MEMORY[0x29EDC38C8];
  v33 = v37;
  v37[3] = v31;
  v33[4] = v32;
  sub_29D693F78(v33);
  sub_29D7CA114(&qword_2A1A22360, sub_29D6C36A4);
  return sub_29D934218();
}

uint64_t sub_29D7C8E00()
{
  v1 = OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartFeatureStatusGeneratorPipeline()
{
  result = qword_2A1A25638;
  if (!qword_2A1A25638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7C8F00()
{
  result = sub_29D934178();
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

uint64_t sub_29D7C8FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D7C902C(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v47 = *v2;
  v48 = a2;
  v44 = sub_29D9341E8();
  v3 = *(v44 - 8);
  v43 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v44, v4);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x29EDB8AE0];
  sub_29D7C964C(0, &qword_2A1A24A18, MEMORY[0x29EDB8AE0]);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v46 = v39 - v10;
  v41 = sub_29D934148();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v41, v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D934178();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v22 = sub_29D933F58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93DDB0;
  (*(v23 + 104))(v26 + v25, *MEMORY[0x29EDC36F0], v22);
  (*(v11 + 104))(v15, *MEMORY[0x29EDC3898], v41);
  sub_29D934158();
  v27 = v45;
  (*(v17 + 32))(v45 + OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_domain, v21, v16);
  v28 = v42;
  v29 = v40;
  v30 = v44;
  (*(v3 + 16))(v42, v40, v44);
  v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v32 = (v43 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v3 + 32))(v33 + v31, v28, v30);
  v34 = v47;
  *(v33 + v32) = v48;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  sub_29D7CA15C(0, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
  sub_29D7C9DF8(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);

  v35 = v46;
  sub_29D938378();
  sub_29D7C9DB4(&qword_2A1A24A20, &qword_2A1A24A18, v49);
  v36 = v50;
  v37 = sub_29D938418();
  (*(v3 + 8))(v29, v30);
  (*(v51 + 8))(v35, v36);
  result = v27;
  *(v27 + OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_publisher) = v37;
  return result;
}

uint64_t sub_29D7C95A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7C843C(v1 + v4, v6, v7, a1);
}

void sub_29D7C964C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D7CA15C(255, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
    v7 = v6;
    v8 = sub_29D7C9DF8(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D7C9708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D7CA15C(255, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D7C9798(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  sub_29D6C3390();
  v42 = *(v9 - 1);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7C9E5C(0, &qword_2A1A22620, sub_29D6C36D8);
  v50 = v14;
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v46 = &v41 - v17;
  sub_29D6C3488();
  v51 = v18;
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v47 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);

  sub_29D934188();
  sub_29D693E2C(v54, v54[3]);
  v24 = sub_29D934118();
  v25 = v22();

  sub_29D69417C(v54);
  v54[0] = v25;
  LOBYTE(a2) = sub_29D934198();
  v26 = MEMORY[0x29EDC2D78];
  sub_29D7CA15C(0, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  v28 = v27;
  v44 = sub_29D7C9DF8(&qword_2A1A22420, &qword_2A1A22410, v26);
  v45 = v28;
  if (a2)
  {
    v29 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D7CA114(&qword_2A1A224E0, sub_29D6C3390);
    v30 = v43;
    v29 = sub_29D938418();

    (*(v42 + 8))(v13, v30);
  }

  v54[0] = v29;
  v43 = *(v5 + 16);
  v31 = v52;
  v43(v52, a1, v4);
  v42 = a1;
  v32 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v33 = swift_allocObject();
  v41 = *(v5 + 32);
  v41(v33 + v32, v31, v4);
  sub_29D6C36D8(0);
  v34 = v46;
  sub_29D938468();

  v43(v31, v42, v4);
  v35 = swift_allocObject();
  v41(v35 + v32, v31, v4);
  sub_29D6CE0BC();
  v36 = v47;
  v37 = v50;
  sub_29D9380E8();

  (*(v48 + 8))(v34, v37);
  sub_29D7CA114(&qword_2A1A22618, sub_29D6C3488);
  v38 = v51;
  v39 = sub_29D938418();
  (*(v49 + 8))(v36, v38);
  return v39;
}

unint64_t sub_29D7C9D40()
{
  result = qword_2A1A249A8;
  if (!qword_2A1A249A8)
  {
    sub_29D7C9708(255, &qword_2A1A249B0, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A249A8);
  }

  return result;
}

uint64_t sub_29D7C9DB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D7C964C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D7C9DF8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D7CA15C(255, a2, a3, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D7C9E5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = MEMORY[0x29EDC2D78];
    sub_29D7CA15C(255, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29D7C9DF8(&qword_2A1A22420, &qword_2A1A22410, v5);
    v6 = sub_29D9380F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D7C9F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_29D9341E8() - 8) + 80);

  return sub_29D7C8944(a1, a2);
}

uint64_t sub_29D7C9FA8()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D7CA030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D7C89EC(a1, v6, a2);
}

void sub_29D7CA0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7CA114(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7CA15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D7CA1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7CA238(uint64_t a1)
{
  sub_29D69BECC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D7CA294()
{
  result = qword_2A17B1B60;
  if (!qword_2A17B1B60)
  {
    sub_29D7CA15C(255, &qword_2A1A22330, MEMORY[0x29EDC2D78], MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1B60);
  }

  return result;
}

void sub_29D7CA558()
{
  v1 = v0;
  sub_29D7CB55C(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &aBlock[-2] - v5;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v7 = [swift_getObjCClassFromMetadata() atrialFibrillationEventType];
  if (v7)
  {
    v8 = v7;
    sub_29D934528();
    sub_29D7CB55C(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v9 = sub_29D933F58();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    v29 = xmmword_29D93DDB0;
    *(v13 + 16) = xmmword_29D93DDB0;
    (*(v10 + 104))(v13 + v12, *MEMORY[0x29EDC3710], v9);
    sub_29D6AA3B4(0, &qword_2A1A21EF0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D940030;
    *(v14 + 32) = v8;
    v15 = sub_29D9331D8();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_29D6AA3B4(0, &qword_2A17B50A8);
    v16 = swift_allocObject();
    *(v16 + 16) = v29;
    v17 = *&v1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthStore];
    v18 = v8;
    *(v16 + 32) = sub_29D93A208();
    v19 = MEMORY[0x29ED648C0](v13, v14, v6, v16);

    sub_29D7CB714(v6, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    v20 = v19;
    v21 = sub_29D9344F8();

    v22 = *&v1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore + 32];
    sub_29D693E2C(&v1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore], *&v1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore + 24]);
    v23 = sub_29D933EC8();
    v24 = swift_allocObject();
    v24[2] = v1;
    v24[3] = v21;
    v24[4] = v18;
    aBlock[4] = sub_29D7CB5C0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2446408;
    v25 = _Block_copy(aBlock);
    v26 = v18;
    v27 = v1;
    v28 = v21;

    [v23 performBlock_];
    _Block_release(v25);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7CA96C(char *a1, uint64_t a2, void *a3)
{
  v93 = a3;
  v4 = sub_29D937898();
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v90 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v90 - v16;
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v90 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v90 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v90 - v27;
  v29 = *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore + 32];
  sub_29D693E2C(&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore], *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore + 24]);
  v30 = sub_29D933EC8();
  sub_29D934528();
  v38 = sub_29D93A5A8();
  v39 = v28;
  v91 = v25;
  v92 = v13;

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_60:

    v31 = v94;
    sub_29D937858();
    v32 = v93;
    v33 = sub_29D937878();
    v34 = sub_29D93A298();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_29D677000, v33, v34, "Missing feed item when trying to decode Summaries data for %@", v35, 0xCu);
      sub_29D6ACA3C(v36);
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v35, -1, -1);
    }

    goto LABEL_5;
  }

  if (!sub_29D93A928())
  {
    goto LABEL_60;
  }

LABEL_8:
  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_63:
    v40 = MEMORY[0x29ED6AE30](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v40 = *(v38 + 32);
  }

  v94 = v40;
  v41 = [v40 userData];
  if (v41)
  {
    v42 = v41;
    v43 = sub_29D933738();
    v45 = v44;

    v46 = sub_29D933718();
    sub_29D6AA284(v43, v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v47)
  {

    sub_29D937858();
    v59 = sub_29D937878();
    v60 = sub_29D93A298();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_29D677000, v59, v60, "Unable to decode chart feed item data", v61, 2u);
      MEMORY[0x29ED6BE30](v61, -1, -1);
    }

    (*(v96 + 8))(v39, v95);
    return;
  }

  v93 = v47;
  v48 = [v47 chartModel];
  if (!v48)
  {
    __break(1u);
    goto LABEL_67;
  }

  v49 = v48;
  v50 = [v48 hasSixMonthData];

  if (!v50)
  {

    v31 = v92;
    sub_29D937858();
    v62 = sub_29D937878();
    v63 = sub_29D93A298();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Missing data charting model";
LABEL_29:
      _os_log_impl(&dword_29D677000, v62, v63, v65, v64, 2u);
      MEMORY[0x29ED6BE30](v64, -1, -1);
    }

LABEL_30:

LABEL_5:
    (*(v96 + 8))(v31, v95);
    return;
  }

  v51 = [v93 chartModel];
  if (!v51)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v52 = v51;
  v92 = [v51 sixMonthData];

  if (!v92)
  {

    v31 = v91;
    sub_29D937858();
    v62 = sub_29D937878();
    LOBYTE(v63) = sub_29D93A298();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Unable to decode sharable charting model";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if ([v92 type] != 11)
  {

    sub_29D937818();
    v66 = v92;
    v67 = sub_29D937878();
    v68 = sub_29D93A288();

    if (!os_log_type_enabled(v67, v68))
    {

LABEL_58:
      (*(v96 + 8))(v21, v95);
      return;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v97 = v66;
    v98[0] = v70;
    *v69 = 136315138;
    sub_29D69567C(0, &qword_2A17B50B0, 0x29EDC4468);
    v71 = v66;
    v72 = sub_29D939DB8();
    v74 = sub_29D6C2364(v72, v73, v98);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_29D677000, v67, v68, "Unsupported chart model %s", v69, 0xCu);
    sub_29D69417C(v70);
    MEMORY[0x29ED6BE30](v70, -1, -1);
    MEMORY[0x29ED6BE30](v69, -1, -1);

LABEL_53:
    goto LABEL_58;
  }

  v53 = [v92 queryDataObject];
  if (v53)
  {
    v54 = v53;
    v55 = sub_29D933738();
    v57 = v56;

    v58 = sub_29D933718();
    sub_29D6AA284(v55, v57);
  }

  else
  {
    v58 = 0;
  }

  v21 = v17;
  v75 = [objc_allocWithZone(MEMORY[0x29EDC4500]) initWithData_];

  if (!v75)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v76 = [v75 samples];

  if (!v76 || (v98[0] = 0, sub_29D69567C(0, &qword_2A17B50B8, 0x29EDC4508), sub_29D939F28(), v76, (v25 = v98[0]) == 0))
  {
    sub_29D937818();
    v81 = v92;
    v67 = sub_29D937878();
    v82 = sub_29D93A288();

    if (!os_log_type_enabled(v67, v82))
    {

      goto LABEL_58;
    }

    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v97 = v81;
    v98[0] = v84;
    *v83 = 136315138;
    sub_29D69567C(0, &qword_2A17B50B0, 0x29EDC4468);
    v85 = v81;
    v86 = sub_29D939DB8();
    v88 = sub_29D6C2364(v86, v87, v98);

    *(v83 + 4) = v88;
    _os_log_impl(&dword_29D677000, v67, v82, "Cound not decode query data %s", v83, 0xCu);
    sub_29D69417C(v84);
    MEMORY[0x29ED6BE30](v84, -1, -1);
    MEMORY[0x29ED6BE30](v83, -1, -1);

    goto LABEL_53;
  }

  v77 = *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_resultsHandler + 8];
  v95 = *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_resultsHandler];
  v96 = v77;
  v98[0] = MEMORY[0x29EDCA190];
  v21 = (v25 & 0xFFFFFFFFFFFFFF8);
  if (!(v25 >> 62))
  {
    v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_40;
  }

LABEL_65:
  v38 = sub_29D93A928();
LABEL_40:
  v78 = 0;
  v79 = MEMORY[0x29EDCA190];
  while (v38 != v78)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v80 = MEMORY[0x29ED6AE30](v78, v25);
    }

    else
    {
      if (v78 >= *(v21 + 2))
      {
        goto LABEL_62;
      }

      v80 = *(v25 + 8 * v78 + 32);
    }

    a1 = v80;
    v39 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v17 = [objc_opt_self() createWithCodableNotificationSample_];

    ++v78;
    if (v17)
    {
      MEMORY[0x29ED6A300]();
      if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
      v79 = v98[0];
      v78 = v39;
    }
  }

  v95(v79, 0);

  v89 = v92;
}