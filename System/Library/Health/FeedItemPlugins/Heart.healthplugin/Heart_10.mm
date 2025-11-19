uint64_t sub_29D797DA4(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 264);
  v9 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v7 = sub_29D79850C;
  }

  else
  {
    sub_29D6AA284(a1, a2);
    v7 = sub_29D797ED4;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D797ED4()
{
  v1 = v0[29];
  v2 = v0[20];
  v3 = v0[11] + v0[28];
  v4 = sub_29D937798();
  sub_29D9377D8();
  v5 = sub_29D93A4E8();
  if (sub_29D93A7C8())
  {
    v6 = v0[29];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];

    sub_29D937808();

    if ((*(v9 + 88))(v7, v8) == *MEMORY[0x29EDCA4A8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[14] + 8))(v0[16], v0[13]);
      v10 = "";
    }

    v11 = v0[20];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_29D937768();
    _os_signpost_emit_with_name_impl(&dword_29D677000, v4, v5, v13, "AFibBurdenPDFExportLoad", v10, v12, 2u);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[29];
  v17 = v0[30];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[11];

  v17(v18, v19);
  sub_29D7900B4("[%s] Finishing test with name %s", sub_29D7988E8, &unk_2A2444E98);

  v21 = v0[21];
  v22 = v0[22];
  v24 = v0[19];
  v23 = v0[20];
  v26 = v0[15];
  v25 = v0[16];
  sub_29D69417C(v0 + 2);

  v27 = v0[1];

  return v27();
}

uint64_t sub_29D7980F4()
{
  v28 = v0;
  v1 = v0[25];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315394;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[7] = v6;
    v13 = v6;
    sub_29D6A0CD0();
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Received failure, reporting error %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v17 = v0[25];
  sub_29D798874();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  v20 = v0[21];
  v19 = v0[22];
  v22 = v0[19];
  v21 = v0[20];
  v24 = v0[15];
  v23 = v0[16];

  v25 = v0[1];

  return v25();
}

uint64_t sub_29D798318()
{
  v28 = v0;
  v1 = v0[27];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315394;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[9] = v6;
    v13 = v6;
    sub_29D6A0CD0();
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Received failure when preWarming cache, reporting error %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v17 = v0[27];
  swift_willThrow();
  v18 = v0[27];
  v20 = v0[21];
  v19 = v0[22];
  v22 = v0[19];
  v21 = v0[20];
  v24 = v0[15];
  v23 = v0[16];

  v25 = v0[1];

  return v25();
}

uint64_t sub_29D79850C()
{
  v47 = v0;
  v1 = v0[34];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[34];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v8 = 136315394;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v46);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[8] = v6;
    v13 = v6;
    sub_29D6A0CD0();
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v46);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Received failure configuring PDF, reporting error %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v17 = v0[29];
  v18 = v0[19];
  v19 = v0[11] + v0[28];
  v20 = sub_29D937798();
  sub_29D9377D8();
  v21 = sub_29D93A4E8();
  if (sub_29D93A7C8())
  {
    v22 = v0[29];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];

    sub_29D937808();

    if ((*(v24 + 88))(v23, v25) == *MEMORY[0x29EDCA4A8])
    {
      v26 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[14] + 8))(v0[15], v0[13]);
      v26 = "";
    }

    v27 = v0[19];
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_29D937768();
    _os_signpost_emit_with_name_impl(&dword_29D677000, v20, v21, v29, "AFibBurdenPDFExportLoad", v26, v28, 2u);
    MEMORY[0x29ED6BE30](v28, -1, -1);
  }

  v30 = v0[34];
  v32 = v0[31];
  v31 = v0[32];
  v33 = v0[29];
  v34 = v0[30];
  v35 = v0[19];
  v36 = v0[17];
  v37 = v0[11];

  v34(v35, v36);
  sub_29D78FC84(0xD000000000000027, 0x800000029D961850);

  v38 = v0[21];
  v39 = v0[22];
  v41 = v0[19];
  v40 = v0[20];
  v43 = v0[15];
  v42 = v0[16];
  sub_29D69417C(v0 + 2);

  v44 = v0[1];

  return v44();
}

unint64_t sub_29D798874()
{
  result = qword_2A17B4870;
  if (!qword_2A17B4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4870);
  }

  return result;
}

uint64_t sub_29D7988D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D798910()
{
  result = qword_2A1A249D0;
  if (!qword_2A1A249D0)
  {
    sub_29D939968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A249D0);
  }

  return result;
}

void sub_29D798968()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_29D7959D0(v0 + 16);
}

void sub_29D7989D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29D6A0CD0();
    v3 = sub_29D93A038();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D798A4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D798AB0(uint64_t a1)
{
  sub_29D74D460();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D798B20()
{
  result = qword_2A17B4880;
  if (!qword_2A17B4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HypertensionNotificationsOnboardingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HypertensionNotificationsOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D798CFC()
{
  result = qword_2A17B4888;
  if (!qword_2A17B4888)
  {
    sub_29D798D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4888);
  }

  return result;
}

void sub_29D798D54()
{
  if (!qword_2A17B4890)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4890);
    }
  }
}

unint64_t sub_29D798DB8()
{
  result = qword_2A17B4898;
  if (!qword_2A17B4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4898);
  }

  return result;
}

uint64_t sub_29D798E0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D9356F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D935C28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_29D935348();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  (*(v18 + 104))(&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1F40]);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0xD000000000000044;
    v13[3] = 0x800000029D9619D0;
    v13[4] = 0x6572616853;
    v13[5] = 0xE500000000000000;
    v19 = MEMORY[0x29EDC2298];
  }

  else
  {
    v19 = MEMORY[0x29EDC22A0];
  }

  (*(v9 + 104))(v13, *v19, v8);
  (*(v3 + 104))(v7, *MEMORY[0x29EDC20B0], v2);
  v20 = sub_29D935368();
  v21 = MEMORY[0x29EDC1F50];
  a1[3] = v20;
  a1[4] = v21;
  sub_29D693F78(a1);

  return sub_29D935358();
}

uint64_t sub_29D7990D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v11[3] = &type metadata for BloodPressurePDFSectionProvider;
  v11[4] = sub_29D7996A4();
  v3 = swift_allocObject();
  v11[0] = v3;
  v4 = sub_29D935EC8();
  v5 = MEMORY[0x29EDC24D0];
  v3[6] = v4;
  v3[7] = v5;
  v3[2] = v2;
  v3[3] = v1;
  v3[8] = 0x416E285000000000;
  v6 = v2;

  v7 = sub_29D935E78();
  sub_29D69417C(v11);
  sub_29D79972C(0, &qword_2A17B3CC8, sub_29D7996F8, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93DDB0;
  *(v8 + 32) = v7;
  v9 = sub_29D935E68();

  return v9;
}

uint64_t sub_29D7991E4()
{
  v29 = sub_29D933AB8();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v29, v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933CE8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v27 = sub_29D9334A8();
  v25[1] = v10;
  v26 = sub_29D9356E8();
  v11 = *(v0 + 24);
  v32 = sub_29D935EC8();
  v33 = MEMORY[0x29EDC24D0];
  v31 = v11;
  sub_29D79972C(0, &qword_2A17B3C60, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v12 = sub_29D9357D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D93F680;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x29EDC2138], v12);
  v18(v17 + v14, *MEMORY[0x29EDC2140], v12);

  sub_29D6E573C(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = v29;
  (*(v1 + 104))(v5, *MEMORY[0x29EDB9C78], v29);
  sub_29D933AC8();
  (*(v1 + 8))(v5, v19);
  sub_29D935E88();
  v20 = v26;
  v21 = sub_29D9356D8();
  v32 = v20;
  v33 = MEMORY[0x29EDC20A0];
  v31 = v21;

  sub_29D798E0C(v30);
  v22 = objc_allocWithZone(sub_29D935BD8());
  v23 = sub_29D935BC8();
  sub_29D799648();
  swift_unknownObjectRetain();
  sub_29D935BB8();

  return v23;
}

uint64_t sub_29D7995B8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_29D799648()
{
  result = qword_2A17B48A0;
  if (!qword_2A17B48A0)
  {
    type metadata accessor for BloodPressurePDFProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48A0);
  }

  return result;
}

unint64_t sub_29D7996A4()
{
  result = qword_2A17B48A8;
  if (!qword_2A17B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48A8);
  }

  return result;
}

void sub_29D79972C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D799790()
{
  result = qword_2A17B3CD8;
  if (!qword_2A17B3CD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B3CD8);
  }

  return result;
}

uint64_t sub_29D7997F4()
{
  v1 = *(v0 + 16);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v1;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v2[3] = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = v1;
  sub_29D6AA594(v5, v4);
}

void sub_29D79988C()
{
  v1 = *(v0 + 40);
  switch(v1)
  {
    case 10:
      v2 = 11;
      break;
    case 8:
      v2 = 9;
      break;
    case 1:
      v2 = 2;
      break;
    default:
      return;
  }

  v3 = *(v0 + 16);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v4 = swift_allocObject();
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = v3;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  v4[3] = v5;
  v6 = *(v0 + 41);
  v7 = v3;
  sub_29D6AA594(v6, v2);
}

void sub_29D799960(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_29D7999C8(uint64_t a1, void *a2)
{
  sub_29D7C5854();

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29D799A14(void *a1, void *a2)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = sub_29D937878();
  v6 = sub_29D93A268();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29D677000, v5, v6, "BPJ Notification Settings: Did tap to create a new journal", v7, 2u);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = a1;
  v9 = a1;
  v10 = sub_29D89AE08(1, 3, 2, 7);
  [a2 presentViewController:v10 animated:1 completion:0];

  swift_setDeallocating();
  v11 = *(inited + 32);
}

void sub_29D799B7C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_29D79A464(sub_29D79B1F4, v4);

  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong presentViewController:v5 animated:1 completion:0];
}

void sub_29D799C40(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_29D7C50E8();
    v3 = *(a2 + 40);
    swift_getKeyPath();
    sub_29D79B254(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);

    sub_29D933E18();

    LODWORD(a2) = *(v3 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally);

    if (a2 == 1)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_29D799D44(void *a1, char a2, void *a3)
{
  v31 = a3;
  v5 = sub_29D939968();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D939998();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A1A2C008);
  v17 = sub_29D937878();
  v18 = sub_29D93A268();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v10;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_29D677000, v17, v18, "BPJ Notification Settings: Did tap to export PDF", v20, 2u);
    v21 = v20;
    v10 = v19;
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  sub_29D6FC794();
  v22 = sub_29D93A468();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = a1;
  v25 = v31;
  *(v23 + 32) = v31;
  aBlock[4] = sub_29D79B1E4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24451C0;
  v26 = _Block_copy(aBlock);
  v27 = v24;
  v28 = v25;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D79B254(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D79B254(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v15, v9, v26);
  _Block_release(v26);

  (*(v30 + 8))(v9, v5);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_29D79A0F8(void *a1, char a2)
{
  v4 = type metadata accessor for BloodPressurePDFProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_29D935EC8();
  v6 = a1;
  *(v5 + 24) = sub_29D935E98();
  *(v5 + 32) = 0x416E285000000000;
  *(v5 + 40) = 8;
  *(v5 + 41) = a2;
  v8[3] = v4;
  v8[4] = sub_29D79B254(&qword_2A17B2728, type metadata accessor for BloodPressurePDFProvider);
  v8[0] = v5;
  sub_29D93A398();
  return sub_29D69417C(v8);
}

void sub_29D79A1F8(void *a1)
{
  v2 = sub_29D79AB4C(nullsub_1, 0);
  [a1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_29D79A284()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_29D79A38C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D79B254(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally);
  return result;
}

id sub_29D79A464(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v52 = a1;
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v51 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v39 - v14;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A2BE98;
  v17 = unk_2A1A2BEA0;
  v18 = qword_2A1A2BEA8;
  v53 = v7[2];
  v53(v12, v15, v6);
  v50 = v7 + 2;
  sub_29D935E88();
  v43 = v16;
  sub_29D933A98();
  v47 = v17;
  v48 = v16;
  v44 = sub_29D939D98();
  v42 = v19;
  v20 = v7[1];
  v20(v15, v6);
  v46 = v20;
  v49 = v7 + 1;
  v39 = v15;
  sub_29D939D08();
  v40 = v12;
  v53(v12, v15, v6);
  v41 = v18;
  sub_29D935E88();
  v43 = v43;
  sub_29D933A98();
  sub_29D939D98();
  v21 = v39;
  v20(v39, v6);
  v22 = sub_29D939D28();

  v23 = sub_29D939D28();

  v44 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

  sub_29D939D08();
  v24 = v40;
  v53(v40, v21, v6);
  sub_29D935E88();
  v43 = v43;
  sub_29D933A98();
  v25 = v24;
  sub_29D939D98();
  v46(v21, v6);
  v26 = swift_allocObject();
  v27 = v45;
  *(v26 + 16) = v52;
  *(v26 + 24) = v27;

  v28 = sub_29D939D28();

  v58 = sub_29D79B1FC;
  v59 = v26;
  aBlock = MEMORY[0x29EDCA5F8];
  v55 = 1107296256;
  v42 = &v56;
  v56 = sub_29D799960;
  v57 = &unk_2A2445238;
  v29 = _Block_copy(&aBlock);

  v30 = objc_opt_self();
  v31 = [v30 actionWithTitle:v28 style:0 handler:v29];
  _Block_release(v29);

  sub_29D939D08();
  v53(v25, v21, v6);
  sub_29D935E88();
  v32 = v43;
  sub_29D933A98();
  sub_29D939D98();
  v46(v21, v6);
  v33 = swift_allocObject();
  *(v33 + 16) = v52;
  *(v33 + 24) = v27;

  v34 = sub_29D939D28();

  v58 = sub_29D79B228;
  v59 = v33;
  aBlock = MEMORY[0x29EDCA5F8];
  v55 = 1107296256;
  v56 = sub_29D799960;
  v57 = &unk_2A2445288;
  v35 = _Block_copy(&aBlock);

  v36 = [v30 actionWithTitle:v34 style:0 handler:v35];
  _Block_release(v35);

  v37 = v44;
  [v44 addAction_];
  [v37 addAction_];
  [v37 setPreferredAction_];

  return v37;
}

id sub_29D79AB4C(uint64_t a1, void *a2)
{
  v40 = a1;
  v41 = a2;
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v34 - v14;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A2BE98;
  v45 = unk_2A1A2BEA0;
  v46 = qword_2A1A2BE98;
  v17 = v7[2];
  v42 = v7 + 2;
  v17(v12, v15, v6);
  v43 = v17;
  sub_29D935E88();
  v37 = v16;
  sub_29D933A98();
  v39 = sub_29D939D98();
  v18 = v7[1];
  v18(v15, v6);
  v36 = v18;
  sub_29D939D08();
  v35 = v12;
  v17(v12, v15, v6);
  sub_29D935E88();
  v37 = v37;
  sub_29D933A98();
  sub_29D939D98();
  v18(v15, v6);
  v19 = sub_29D939D28();

  v20 = sub_29D939D28();

  v39 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  sub_29D939D08();
  v21 = v35;
  v43(v35, v15, v6);
  sub_29D935E88();
  v37 = v37;
  sub_29D933A98();
  sub_29D939D98();
  v38 = v7 + 1;
  v22 = v36;
  v36(v15, v6);
  v23 = swift_allocObject();
  *(v23 + 16) = v40;
  *(v23 + 24) = v41;

  v24 = sub_29D939D28();

  v51 = sub_29D79B1A4;
  v52 = v23;
  aBlock = MEMORY[0x29EDCA5F8];
  v48 = 1107296256;
  v49 = sub_29D799960;
  v50 = &unk_2A2445148;
  v25 = _Block_copy(&aBlock);

  v26 = objc_opt_self();
  v41 = [v26 actionWithTitle:v24 style:1 handler:v25];
  _Block_release(v25);

  sub_29D939D08();
  v43(v21, v15, v6);
  sub_29D935E88();
  v27 = v37;
  sub_29D933A98();
  sub_29D939D98();
  v22(v15, v6);
  v28 = sub_29D939D28();

  v51 = sub_29D79A284;
  v52 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v48 = 1107296256;
  v49 = sub_29D799960;
  v50 = &unk_2A2445170;
  v29 = _Block_copy(&aBlock);

  v30 = [v26 actionWithTitle:v28 style:0 handler:v29];
  _Block_release(v29);

  v31 = v39;
  v32 = v41;
  [v39 addAction_];
  [v31 addAction_];
  [v31 setPreferredAction_];

  return v31;
}

uint64_t sub_29D79B1A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29D79B1CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D79B1FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_29D79B228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_29D79B254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D79B2BC()
{
  v0 = sub_29D937B88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937AE8();
  v7 = v6;
  result = (*(v1 + 8))(v5, v0);
  qword_2A17D0A58 = v7;
  return result;
}

uint64_t sub_29D79B394(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D79CF0C(v1 + v3, v10, &qword_2A17B1830, sub_29D69F188);
  if (v11)
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v4 = *(v1 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel);
      v5 = sub_29D939D28();
      [v4 setText_];

      v6 = *(v1 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel);
      v7 = sub_29D939D28();
      [v6 setText_];
    }

    v8 = a1;
  }

  else
  {
    sub_29D79CFE4(a1, &qword_2A17B1830, sub_29D69F188);
    v8 = v10;
  }

  return sub_29D79CFE4(v8, &qword_2A17B1830, sub_29D69F188);
}

void (*sub_29D79B580(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  *(v3 + 120) = v1;
  *(v3 + 128) = v4;
  swift_beginAccess();
  return sub_29D79B608;
}

void sub_29D79B608(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D79CF0C(v3[15] + v3[16], (v3 + 10), &qword_2A17B1830, sub_29D69F188);
    if (v3[13])
    {
      sub_29D69F188();
      if (swift_dynamicCast())
      {
        v4 = v3[15];
        v5 = v3[1];
        v6 = v3[3];
        v7 = v3[4];
        v8 = v3[5];
        v9 = v3[6];
        v10 = v3[7];
        v15 = v3[9];
        v11 = *(v4 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel);
        v12 = sub_29D939D28();
        [v11 setText_];

        v13 = *(v4 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel);
        v14 = sub_29D939D28();
        [v13 setText_];
      }
    }

    else
    {
      sub_29D79CFE4((v3 + 10), &qword_2A17B1830, sub_29D69F188);
    }
  }

  free(v3);
}

id sub_29D79B7B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

uint64_t sub_29D79B948(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  objc_msgSendSuper2(&v9, sel_setSelected_, a1 & 1);
  result = [v1 isSelected];
  if (result)
  {
    v4 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
    swift_beginAccess();
    sub_29D79CF0C(v1 + v4, v7, &qword_2A17B1830, sub_29D69F188);
    if (v8)
    {
      sub_29D69F188();
      result = swift_dynamicCast();
      if (result)
      {

        v6(v5);
      }
    }

    else
    {
      return sub_29D79CFE4(v7, &qword_2A17B1830, sub_29D69F188);
    }
  }

  return result;
}

id sub_29D79BA90(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v13 = *MEMORY[0x29EDC80E0];
  v14 = sub_29D93A658();
  [v12 setFont_];

  v15 = [objc_opt_self() labelColor];
  [v12 setTextColor_];

  [v12 setNumberOfLines_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *&v4[v11] = v12;
  v16 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel;
  *&v4[v16] = sub_29D79B7B8();
  v17 = sub_29D93A658();
  v18 = [objc_opt_self() configurationWithFont:v17 scale:3];

  v19 = sub_29D939D28();
  v20 = [objc_opt_self() systemImageNamed_];

  if (v20)
  {
    v21 = [v20 imageWithConfiguration_];
  }

  else
  {
    v21 = 0;
  }

  v22 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
  v23 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setContentMode_];

  LODWORD(v24) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [v23 setContentCompressionResistancePriority:0 forAxis:v25];

  *&v5[v22] = v23;
  v28.receiver = v5;
  v28.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  v26 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29D79BE10();

  return v26;
}

void sub_29D79BE10()
{
  v1 = v0;
  sub_29D69F37C(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v64 - v9;
  v11 = [v0 contentView];
  v12 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel;
  [v11 addSubview_];

  v13 = [v1 contentView];
  v65 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel;
  [v13 addSubview_];

  v14 = [v1 contentView];
  v15 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
  [v14 addSubview_];

  sub_29D933E48();
  v16 = *MEMORY[0x29EDBBAF0];
  sub_29D93A668();
  sub_29D9379D8();
  v17 = sub_29D9379E8();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v10, 0, 1, v17);
  v19 = MEMORY[0x29ED6A980](v10);
  MEMORY[0x29ED6A970](v19);
  if ((*(v18 + 48))(v7, 1, v17))
  {
    v20 = MEMORY[0x29EDC77B8];
    sub_29D79CF0C(v7, v10, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
    MEMORY[0x29ED6A980](v10);
    sub_29D79CFE4(v7, &qword_2A17B1848, v20);
  }

  else
  {
    v21 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    sub_29D9379B8();
    MEMORY[0x29ED6A980](v7);
  }

  sub_29D6A0C58();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D941950;
  v23 = [*&v1[v15] topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:16.0];
  *(v22 + 32) = v26;
  v27 = [*&v1[v15] leadingAnchor];
  v28 = [v1 contentView];
  v29 = [v28 leadingAnchor];

  if (qword_2A17B0C40 != -1)
  {
    swift_once();
  }

  v30 = *&qword_2A17D0A58;
  v31 = [v27 constraintEqualToAnchor:v29 constant:*&qword_2A17D0A58];

  *(v22 + 40) = v31;
  v32 = [*&v1[v12] topAnchor];
  v33 = [v1 contentView];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:16.0];
  *(v22 + 48) = v35;
  v36 = [*&v1[v12] leadingAnchor];
  v37 = [*&v1[v15] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:5.0];

  *(v22 + 56) = v38;
  v39 = [v1 contentView];
  v40 = [v39 trailingAnchor];

  v41 = [*&v1[v12] trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:v30];

  *(v22 + 64) = v42;
  v43 = v65;
  v44 = [*&v1[v65] topAnchor];
  v45 = [*&v1[v12] bottomAnchor];
  v46 = [v44 &selRef_dataProvider + 6];

  *(v22 + 72) = v46;
  v47 = [*&v1[v43] leadingAnchor];
  v48 = [*&v1[v15] trailingAnchor];
  v49 = [v47 &selRef_dataProvider + 6];

  *(v22 + 80) = v49;
  v50 = [*&v1[v43] bottomAnchor];
  v51 = [v1 contentView];
  v52 = [v51 bottomAnchor];

  v53 = [v50 &selRef_dataProvider + 6];
  *(v22 + 88) = v53;
  v54 = [v1 contentView];
  v55 = [v54 trailingAnchor];

  v56 = [*&v1[v43] trailingAnchor];
  v57 = [v55 &selRef_dataProvider + 6];

  *(v22 + 96) = v57;
  v58 = [v1 contentView];
  v59 = [v58 bottomAnchor];

  v60 = [*&v1[v43] bottomAnchor];
  v61 = [v59 &selRef_dataProvider + 6];

  *(v22 + 104) = v61;
  v62 = objc_opt_self();
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v63 = sub_29D939F18();

  [v62 activateConstraints_];
}

id sub_29D79C5CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D79C6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  swift_beginAccess();
  return sub_29D79CF0C(v1 + v3, a1, &qword_2A17B1830, sub_29D69F188);
}

void (*sub_29D79C724(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29D79B580(v2);
  return sub_29D69F0C0;
}

uint64_t sub_29D79C798()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_29D935898();
}

void sub_29D79C80C()
{
  v1 = v0;
  sub_29D69F37C(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = aBlock - v10;
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = aBlock - v13;
  v15 = sub_29D937978();
  v16 = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  v47.receiver = v1;
  v47.super_class = v16;
  objc_msgSendSuper2(&v47, sel__bridgedUpdateConfigurationUsingState_, v15);

  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v17 = *MEMORY[0x29EDC80E0];
  v18 = sub_29D93A658();
  v19 = [objc_opt_self() configurationWithFont:v18 scale:3];

  if (([v1 isSelected] & 1) != 0 || objc_msgSend(v1, sel_isHighlighted))
  {
    MEMORY[0x29ED6A970]();
    v20 = sub_29D9379E8();
    if ((*(*(v20 - 8) + 48))(v14, 1, v20))
    {
      v21 = MEMORY[0x29EDC77B8];
      sub_29D79CF0C(v14, v11, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
      MEMORY[0x29ED6A980](v11);
      sub_29D79CFE4(v14, &qword_2A17B1848, v21);
    }

    else
    {
      v22 = [objc_opt_self() systemBlueColor];
      v23 = [v22 colorWithAlphaComponent_];

      sub_29D9379B8();
      MEMORY[0x29ED6A980](v14);
    }

    v24 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
    v25 = *&v1[OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark];
    v26 = sub_29D939D28();
    v27 = [objc_opt_self() systemImageNamed_];

    if (v27)
    {
      v28 = [v27 imageWithConfiguration_];
    }

    else
    {
      v28 = 0;
    }

    [v25 setImage_];

    v29 = *&v1[v24];
    [v29 setTintColor_];
  }

  else
  {
    MEMORY[0x29ED6A970]();
    v30 = sub_29D9379E8();
    if ((*(*(v30 - 8) + 48))(v7, 1, v30))
    {
      v31 = MEMORY[0x29EDC77B8];
      sub_29D79CF0C(v7, v11, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
      MEMORY[0x29ED6A980](v11);
      sub_29D79CFE4(v7, &qword_2A17B1848, v31);
    }

    else
    {
      v32 = objc_opt_self();
      v33 = [v32 systemGroupedBackgroundColor];
      v34 = [v32 secondarySystemGroupedBackgroundColor];
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      *(v35 + 24) = v34;
      v36 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
      aBlock[4] = sub_29D79CFC4;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D861AC4;
      aBlock[3] = &unk_2A24452D8;
      v37 = _Block_copy(aBlock);
      [v36 initWithDynamicProvider_];
      _Block_release(v37);

      sub_29D9379B8();
      MEMORY[0x29ED6A980](v7);
    }

    v38 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
    v39 = *&v1[OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark];
    v40 = sub_29D939D28();
    v41 = [objc_opt_self() systemImageNamed_];

    if (v41)
    {
      v42 = [v41 imageWithConfiguration_];
    }

    else
    {
      v42 = 0;
    }

    [v39 setImage_];

    v43 = *&v1[v38];
    v44 = objc_opt_self();
    v45 = v43;
    v29 = [v44 secondaryLabelColor];
    [v45 setTintColor_];
  }
}

uint64_t sub_29D79CF0C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D69F37C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D79CF78(uint64_t a1)
{
  v2 = sub_29D79D450();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D79CFCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D79CFE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D69F37C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D79D040()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v5 = *MEMORY[0x29EDC80E0];
  v6 = sub_29D93A658();
  [v4 setFont_];

  v7 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  v8 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel;
  *(v0 + v8) = sub_29D79B7B8();
  v9 = sub_29D93A658();
  v10 = [objc_opt_self() configurationWithFont:v9 scale:3];

  v11 = sub_29D939D28();
  v12 = [objc_opt_self() systemImageNamed_];

  if (v12)
  {
    v13 = [v12 imageWithConfiguration_];
  }

  else
  {
    v13 = 0;
  }

  v14 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
  v15 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setContentMode_];

  LODWORD(v16) = 1148846080;
  [v15 setContentHuggingPriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v17];

  *(v1 + v14) = v15;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D79D34C(uint64_t a1, int a2)
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

uint64_t sub_29D79D394(uint64_t result, int a2, int a3)
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

unint64_t sub_29D79D3FC()
{
  result = qword_2A17B48D0;
  if (!qword_2A17B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48D0);
  }

  return result;
}

unint64_t sub_29D79D450()
{
  result = qword_2A17B48D8;
  if (!qword_2A17B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloodPressureJournalInteractionAnalyticsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureJournalInteractionAnalyticsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29D79D604()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D79D70C(char a1)
{
  result = 0x5461746144646461;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 8:
      result = 0xD000000000000016;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6F69746163756465;
      break;
    case 7:
      result = 0x54736E6F6974706FLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_29D79D8C0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_29D79D70C(*a1);
  v5 = v4;
  if (v3 == sub_29D79D70C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D79D948()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D79D70C(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D79D9AC()
{
  sub_29D79D70C(*v0);
  sub_29D939E18();
}

uint64_t sub_29D79DA00()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D79D70C(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D79DA60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D79DD68();
  *a2 = result;
  return result;
}

unint64_t sub_29D79DA90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29D79D70C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_29D79DAC0()
{
  result = qword_2A17B48E0;
  if (!qword_2A17B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48E0);
  }

  return result;
}

uint64_t sub_29D79DB28()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D79DC20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D79DDB4();
  *a2 = result;
  return result;
}

void sub_29D79DC50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7573;
  v5 = 0xE700000000000000;
  v6 = 0x656C69666F7270;
  v7 = 0xEC0000006E6F6974;
  v8 = 0x6163696669746F6ELL;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x686372616573;
  if (v2 != 1)
  {
    v10 = 0x676E6972616873;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_29D79DD14()
{
  result = qword_2A17B48E8;
  if (!qword_2A17B48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48E8);
  }

  return result;
}

uint64_t sub_29D79DD68()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D79DDB4()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for AFibBurdenPDFChartDailySumQuery()
{
  result = qword_2A17B48F8;
  if (!qword_2A17B48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D79DE7C()
{
  result = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v2 <= 0x3F)
    {
      result = sub_29D69567C(319, &qword_2A1A24930, 0x29EDBAD78);
      if (v3 <= 0x3F)
      {
        result = sub_29D933318();
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

unint64_t sub_29D79DF74()
{
  result = qword_2A17B4910;
  if (!qword_2A17B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4910);
  }

  return result;
}

uint64_t sub_29D79DFC8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v6 = 0;
    v11 = MEMORY[0x29EDCA190];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x29ED6A300]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29D939F78();
        }

        sub_29D939FA8();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x29EDCA190];
}

void *sub_29D79E174(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v36 = a1;
  sub_29D7A0F44(0, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v27 - v8;
  v35 = type metadata accessor for AFibBurdenPDFChartPoint();
  v30 = *(v35 - 8);
  v10 = *(v30 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v35, v11);
  v34 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v29 = &v27 - v15;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v17 = 0;
    v32 = a3 & 0xFFFFFFFFFFFFFF8;
    v33 = a3 & 0xC000000000000001;
    v18 = (v30 + 48);
    v19 = MEMORY[0x29EDCA190];
    v28 = a3;
    v31 = i;
    while (1)
    {
      if (v33)
      {
        v20 = MEMORY[0x29ED6AE30](v17, a3);
      }

      else
      {
        if (v17 >= *(v32 + 16))
        {
          goto LABEL_20;
        }

        v20 = *(a3 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v37 = v20;
      v36(&v37);
      if (v3)
      {

        return v19;
      }

      if ((*v18)(v9, 1, v35) == 1)
      {
        sub_29D7A0CC0(v9, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
      }

      else
      {
        v23 = v29;
        sub_29D7A0F98(v9, v29, type metadata accessor for AFibBurdenPDFChartPoint);
        sub_29D7A0F98(v23, v34, type metadata accessor for AFibBurdenPDFChartPoint);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_29D68FC3C(0, v19[2] + 1, 1, v19);
        }

        v25 = v19[2];
        v24 = v19[3];
        if (v25 >= v24 >> 1)
        {
          v19 = sub_29D68FC3C(v24 > 1, v25 + 1, 1, v19);
        }

        v19[2] = v25 + 1;
        sub_29D7A0F98(v34, v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, type metadata accessor for AFibBurdenPDFChartPoint);
        a3 = v28;
      }

      ++v17;
      if (v22 == v31)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x29EDCA190];
}

void *sub_29D79E4D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_29D7A0F44(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for HealthCalendarDayContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v35 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v33 = &v29 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return MEMORY[0x29EDCA190];
  }

  v21 = *(sub_29D9339F8() - 8);
  v30 = v13;
  v22 = (v13 + 48);
  v23 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v34 = *(v21 + 72);
  v24 = MEMORY[0x29EDCA190];
  v31 = v12;
  v32 = a2;
  while (1)
  {
    a1(v23);
    if (v3)
    {
      break;
    }

    if ((*v22)(v11, 1, v12) == 1)
    {
      sub_29D7A0CC0(v11, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
    }

    else
    {
      v25 = v33;
      sub_29D7A0F98(v11, v33, type metadata accessor for HealthCalendarDayContent);
      sub_29D7A0F98(v25, v35, type metadata accessor for HealthCalendarDayContent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_29D69036C(0, v24[2] + 1, 1, v24);
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_29D69036C(v26 > 1, v27 + 1, 1, v24);
      }

      v24[2] = v27 + 1;
      sub_29D7A0F98(v35, v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, type metadata accessor for HealthCalendarDayContent);
      v12 = v31;
    }

    v23 += v34;
    if (!--v20)
    {
      return v24;
    }
  }

  return v24;
}

uint64_t sub_29D79E810(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_29D7A0F44(0, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for AFibBurdenPDFChartPoint();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v10 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v3[25] = *(v11 + 64);
  v3[26] = swift_task_alloc();
  v12 = sub_29D9339F8();
  v3[27] = v12;
  v13 = *(v12 - 8);
  v3[28] = v13;
  v14 = *(v13 + 64) + 15;
  v3[29] = swift_task_alloc();
  v15 = swift_task_alloc();
  v3[30] = v15;
  *v15 = v3;
  v15[1] = sub_29D79EA10;

  return sub_29D79F0B4(a1);
}

uint64_t sub_29D79EA10(uint64_t a1)
{
  v3 = *(*v2 + 240);
  v4 = *v2;
  v4[31] = a1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[26];
    v7 = v4[22];
    v8 = v4[19];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D79EB7C, 0, 0);
  }
}

uint64_t sub_29D79EB7C()
{
  v1 = [*(v0 + 248) statistics];
  sub_29D69567C(0, &qword_2A17B4920, 0x29EDBAE18);
  v2 = sub_29D939F38();

  if (v2 >> 62)
  {
    sub_29D7A0B14();
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D7A0B14();
  }

  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v39 = *(v0 + 208);
  v40 = *(v0 + 192);
  v6 = *(v0 + 184);
  v7 = *(v0 + 144);
  v41 = *(v0 + 200);
  v42 = *(v0 + 136);
  v8 = *(v0 + 128);

  v43 = objc_opt_self();
  sub_29D7A0B14();
  v9 = sub_29D939F18();

  sub_29D9331A8();
  v10 = sub_29D933958();
  (*(v3 + 8))(v4, v5);
  v11 = v7 + *(v6 + 28);
  v12 = sub_29D933288();
  v13 = sub_29D933BB8();
  sub_29D7A0B78(v7, v39);
  v14 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v15 = swift_allocObject();
  sub_29D7A0F98(v39, v15 + v14, type metadata accessor for AFibBurdenPDFChartDailySumQuery);
  *(v15 + ((v41 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_29D7A0BDC;
  *(v16 + 24) = v15;
  *(v0 + 48) = sub_29D7A0CA0;
  *(v0 + 56) = v16;
  *(v0 + 16) = MEMORY[0x29EDCA5F8];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_29D7A0568;
  *(v0 + 40) = &unk_2A24455A0;
  v17 = _Block_copy((v0 + 16));
  v18 = *(v0 + 56);
  v19 = v42;

  v20 = [v43 arrayByCoalescingObjects:v9 startDate:v10 intervalComponents:v12 calendar:v13 combiningBlock:v17];
  _Block_release(v17);

  if (v20)
  {
    v21 = sub_29D939F38();

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v0 + 168);
      v24 = v21 + 32;
      v25 = MEMORY[0x29EDCA190];
      do
      {
        v27 = *(v0 + 152);
        v26 = *(v0 + 160);
        sub_29D694294(v24, v0 + 64);
        sub_29D6940E0((v0 + 64), (v0 + 96));
        v28 = swift_dynamicCast();
        (*(v23 + 56))(v27, v28 ^ 1u, 1, v26);
        if ((*(v23 + 48))(v27, 1, v26) == 1)
        {
          sub_29D7A0CC0(*(v0 + 152), &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
        }

        else
        {
          sub_29D7A0F98(*(v0 + 152), *(v0 + 176), type metadata accessor for AFibBurdenPDFChartPoint);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_29D68FC3C(0, v25[2] + 1, 1, v25);
          }

          v30 = v25[2];
          v29 = v25[3];
          if (v30 >= v29 >> 1)
          {
            v25 = sub_29D68FC3C(v29 > 1, v30 + 1, 1, v25);
          }

          v31 = *(v0 + 176);
          v25[2] = v30 + 1;
          sub_29D7A0F98(v31, v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30, type metadata accessor for AFibBurdenPDFChartPoint);
        }

        v24 += 32;
        --v22;
      }

      while (v22);
      v32 = *(v0 + 248);
    }

    else
    {
      v32 = *(v0 + 248);

      v25 = MEMORY[0x29EDCA190];
    }
  }

  else
  {

    v25 = MEMORY[0x29EDCA190];
  }

  v33 = *(v0 + 232);
  v34 = *(v0 + 208);
  v35 = *(v0 + 176);
  v36 = *(v0 + 152);

  v37 = *(v0 + 8);

  return v37(v25);
}

uint64_t sub_29D79F0B4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v2[21] = *(v4 + 64);
  v2[22] = swift_task_alloc();
  v5 = sub_29D9339F8();
  v2[23] = v5;
  v6 = *(v5 - 8);
  v2[24] = v6;
  v7 = *(v6 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D79F1D8, 0, 0);
}

uint64_t sub_29D79F1D8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  v19 = v3;
  v20 = *(v4 + v5[6]);
  v17 = objc_opt_self();
  sub_29D9331A8();
  v7 = sub_29D933958();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v18 = v8;
  sub_29D933178();
  v9 = sub_29D933958();
  v8(v1, v3);
  v10 = [v17 predicateForSamplesWithStartDate:v7 endDate:v9 options:0];

  if (*(v4 + v5[9]))
  {
    v11 = 64;
  }

  else
  {
    v11 = 16;
  }

  sub_29D933178();
  v12 = v5[8];
  v13 = objc_allocWithZone(MEMORY[0x29EDBAE28]);
  v14 = sub_29D933958();
  v15 = sub_29D933288();
  v0[26] = [v13 initWithSampleType:v20 samplePredicate:v10 options:v11 anchorDate:v14 intervalComponents:v15];

  v18(v1, v19);

  return MEMORY[0x2A1C73D48](sub_29D79F3AC, 0, 0);
}

uint64_t sub_29D79F3AC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[26];
  v8 = v1[21];
  v7 = v1[22];
  v9 = v1[20];
  v18 = v1[19];
  v10 = v1[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_29D79F580;
  v11 = swift_continuation_init();
  sub_29D7A0B78(v10, v7);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_29D7A0F98(v7, v14 + v12, type metadata accessor for AFibBurdenPDFChartDailySumQuery);
  *(v14 + v13) = v11;
  v1[14] = sub_29D7A0E38;
  v1[15] = v14;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D7A09D0;
  v1[13] = &unk_2A24455F0;
  v15 = _Block_copy(v4);
  v16 = v1[15];

  [v6 setInitialResultsHandler_];
  _Block_release(v15);
  [*(v10 + *(v18 + 20)) executeQuery_];

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t sub_29D79F580()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_29D79F720;
  }

  else
  {
    *(v1 + 224) = *(v1 + 128);
    v4 = sub_29D79F6A4;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D79F6A4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);
  v4 = *(v0 + 224);

  return v3(v4);
}

uint64_t sub_29D79F720()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);
  v4 = *(v0 + 216);

  return v3();
}

uint64_t sub_29D79F798@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v145 = a4;
  v143 = a3;
  v141 = a1;
  v8 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v144 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v140 = &v132 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v134 = &v132 - v17;
  v18 = sub_29D9331D8();
  v138 = *(v18 - 8);
  v139 = v18;
  v19 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v137 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A0F44(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v27 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v132 - v29;
  v31 = sub_29D9339F8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v135 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v40 = &v132 - v39;
  v42 = MEMORY[0x2A1C7C4A8](v38, v41);
  v142 = &v132 - v43;
  MEMORY[0x2A1C7C4A8](v42, v44);
  v46 = &v132 - v45;
  sub_29D6A0A20(a2, v30);
  v47 = *(v32 + 48);
  if (v47(v30, 1, v31) == 1)
  {
    v27 = v30;
LABEL_5:
    sub_29D7A0CC0(v27, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v49 = v145;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v50 = sub_29D937898();
    sub_29D69C6C0(v50, qword_2A1A2BF28);
    v51 = v144;
    sub_29D7A0B78(v49, v144);
    v52 = sub_29D937878();
    v53 = sub_29D93A288();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = a6;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v146 = v8;
      v147[0] = v56;
      *v55 = 136446466;
      sub_29D7A0D78();
      v57 = sub_29D939DA8();
      v59 = sub_29D6C2364(v57, v58, v147);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v60 = [*(v51 + *(v8 + 24)) description];
      v61 = sub_29D939D68();
      v63 = v62;

      sub_29D7A0D1C(v51);
      v64 = sub_29D6C2364(v61, v63, v147);

      *(v55 + 14) = v64;
      _os_log_impl(&dword_29D677000, v52, v53, "[%{public}s] Missing start/end date when computing weekly average for %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v56, -1, -1);
      v65 = v55;
      a6 = v54;
      MEMORY[0x29ED6BE30](v65, -1, -1);
    }

    else
    {

      sub_29D7A0D1C(v51);
    }

    v66 = type metadata accessor for AFibBurdenPDFChartPoint();
    v67 = *(*(v66 - 8) + 56);
    v68 = a6;
    return v67(v68, 1, 1, v66);
  }

  v132 = v8;
  v133 = a6;
  v48 = *(v32 + 32);
  v48(v46, v30, v31);
  sub_29D6A0A20(v143, v27);
  if (v47(v27, 1, v31) == 1)
  {
    (*(v32 + 8))(v46, v31);
    v8 = v132;
    a6 = v133;
    goto LABEL_5;
  }

  v143 = v46;
  v144 = v32;
  v70 = v142;
  v48(v142, v27, v31);
  if (!v141 || (v71 = sub_29D838518(v141)) == 0)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v91 = sub_29D937898();
    sub_29D69C6C0(v91, qword_2A1A2BF28);
    v92 = v140;
    sub_29D7A0B78(v145, v140);
    v93 = sub_29D937878();
    v94 = sub_29D93A288();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 136446466;
      v97 = v132;
      v146 = v132;
      v147[0] = v96;
      sub_29D7A0D78();
      v98 = sub_29D939DA8();
      v100 = v31;
      v101 = sub_29D6C2364(v98, v99, v147);

      *(v95 + 4) = v101;
      *(v95 + 12) = 2080;
      v102 = [*(v92 + *(v97 + 24)) description];
      v103 = sub_29D939D68();
      v104 = v92;
      v105 = v70;
      v107 = v106;

      sub_29D7A0D1C(v104);
      v108 = sub_29D6C2364(v103, v107, v147);

      *(v95 + 14) = v108;
      _os_log_impl(&dword_29D677000, v93, v94, "[%{public}s] Missing statistics when computing weekly average for %s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v96, -1, -1);
      MEMORY[0x29ED6BE30](v95, -1, -1);

      v109 = *(v144 + 8);
      v109(v105, v100);
      v109(v143, v100);
    }

    else
    {

      v110 = *(v144 + 8);
      v110(v70, v31);
      v110(v143, v31);
      sub_29D7A0D1C(v92);
    }

    v111 = v133;
    v66 = type metadata accessor for AFibBurdenPDFChartPoint();
    v67 = *(*(v66 - 8) + 56);
    v68 = v111;
    return v67(v68, 1, 1, v66);
  }

  v72 = v71;
  v74 = v143;
  v73 = v144;
  v75 = *(v144 + 16);
  v75(v40, v143, v31);
  v75(v135, v70, v31);
  v76 = v137;
  v77 = sub_29D933188();
  MEMORY[0x2A1C7C4A8](v77, v78);
  v79 = v145;
  *(&v132 - 2) = v145;
  sub_29D79DFC8(sub_29D7A0DC0, (&v132 - 4), v72);

  v80 = objc_opt_self();
  sub_29D69567C(0, &qword_2A17B4700, 0x29EDBACF8);
  v81 = sub_29D939F18();

  v82 = v136;
  v83 = [v80 averageSumFromQuantities:v81 unit:v136];

  if (!v83)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v112 = sub_29D937898();
    sub_29D69C6C0(v112, qword_2A1A2BF28);
    v113 = v79;
    v114 = v134;
    sub_29D7A0B78(v113, v134);
    v115 = sub_29D937878();
    v116 = sub_29D93A288();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v145 = v118;
      *v117 = 136446466;
      v119 = v132;
      v146 = v132;
      v147[0] = v118;
      sub_29D7A0D78();
      v120 = sub_29D939DA8();
      v122 = sub_29D6C2364(v120, v121, v147);

      *(v117 + 4) = v122;
      *(v117 + 12) = 2080;
      v123 = [*(v114 + *(v119 + 24)) description];
      v124 = sub_29D939D68();
      v125 = v31;
      v127 = v126;

      sub_29D7A0D1C(v114);
      v128 = sub_29D6C2364(v124, v127, v147);

      *(v117 + 14) = v128;
      _os_log_impl(&dword_29D677000, v115, v116, "[%{public}s] Could not compute average sum for %s", v117, 0x16u);
      v129 = v145;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v129, -1, -1);
      MEMORY[0x29ED6BE30](v117, -1, -1);

      (*(v138 + 8))(v76, v139);
      v130 = *(v144 + 8);
      v130(v70, v125);
      v130(v143, v125);
    }

    else
    {

      (*(v138 + 8))(v76, v139);
      v131 = *(v144 + 8);
      v131(v70, v31);
      v131(v143, v31);
      sub_29D7A0D1C(v114);
    }

    v66 = type metadata accessor for AFibBurdenPDFChartPoint();
    v67 = *(*(v66 - 8) + 56);
    v68 = v133;
    return v67(v68, 1, 1, v66);
  }

  [v83 doubleValueForUnit_];
  v85 = v84;
  v87 = v138;
  v86 = v139;
  v88 = v133;
  (*(v138 + 16))(v133, v76, v139);

  (*(v87 + 8))(v76, v86);
  v89 = *(v73 + 8);
  v89(v70, v31);
  v89(v74, v31);
  v90 = type metadata accessor for AFibBurdenPDFChartPoint();
  *(v88 + *(v90 + 20)) = v85;
  *(v88 + *(v90 + 24)) = MEMORY[0x29EDCA1A0];
  return (*(*(v90 - 8) + 56))(v88, 0, 1, v90);
}

_OWORD *sub_29D7A0414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  sub_29D7A0F44(0, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = v18 - v13;
  a4(a1, a2, a3);
  v15 = type metadata accessor for AFibBurdenPDFChartPoint();
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (result == 1)
  {
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {
    v19 = v15;
    v17 = sub_29D693F78(v18);
    sub_29D7A0F98(v14, v17, type metadata accessor for AFibBurdenPDFChartPoint);
    return sub_29D6940E0(v18, a5);
  }

  return result;
}

id sub_29D7A0568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D7A0F44(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v32 - v15;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (a2)
  {
    sub_29D7A0B14();
    a2 = sub_29D939F38();
  }

  if (a3)
  {
    sub_29D933998();
    v19 = sub_29D9339F8();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = sub_29D9339F8();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  if (a4)
  {
    sub_29D933998();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_29D9339F8();
  (*(*(v22 - 8) + 56))(v13, v21, 1, v22);

  v18(v32, a2, v16, v13);

  v23 = MEMORY[0x29EDB9BC8];
  sub_29D7A0CC0(v13, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  sub_29D7A0CC0(v16, &qword_2A1A25780, v23);
  v24 = v33;
  if (v33)
  {
    v25 = sub_29D693E2C(v32, v33);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x2A1C7C4A8](v25, v25);
    v29 = v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_29D93AD68();
    (*(v26 + 8))(v29, v24);
    sub_29D69417C(v32);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t sub_29D7A0894(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  [*(a4 + *(type metadata accessor for AFibBurdenPDFChartDailySumQuery() + 20)) stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_29D8F3B8C(MEMORY[0x29EDCA190]);
      sub_29D7A0EEC();
      sub_29D933578();
      v10 = v13;
    }

    sub_29D6A0CD0();
    swift_allocError();
    *v11 = v10;
    v12 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

void sub_29D7A09D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t sub_29D7A0A70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D68E20C;

  return sub_29D79E810(a1, a2);
}

unint64_t sub_29D7A0B14()
{
  result = qword_2A17B4928;
  if (!qword_2A17B4928)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B4928);
  }

  return result;
}

uint64_t sub_29D7A0B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7A0BDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AFibBurdenPDFChartDailySumQuery() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D79F798(a1, a2, a3, v4 + v10, v11, a4);
}

uint64_t sub_29D7A0CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7A0CC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D7A0F44(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7A0D1C(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenPDFChartDailySumQuery();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D7A0D78()
{
  result = qword_2A17B4998;
  if (!qword_2A17B4998)
  {
    type metadata accessor for AFibBurdenPDFChartDailySumQuery();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B4998);
  }

  return result;
}

id sub_29D7A0DC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  if (*(v4 + *(type metadata accessor for AFibBurdenPDFChartDailySumQuery() + 36)))
  {
    v6 = &selRef_duration;
  }

  else
  {
    v6 = &selRef_sumQuantity;
  }

  result = [v5 *v6];
  *a2 = result;
  return result;
}

uint64_t sub_29D7A0E38(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for AFibBurdenPDFChartDailySumQuery() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7A0894(a1, a2, a3, v3 + v8, v9);
}

unint64_t sub_29D7A0EEC()
{
  result = qword_2A17B1328;
  if (!qword_2A17B1328)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1328);
  }

  return result;
}

void sub_29D7A0F44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D7A0F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7A1068(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29D7A5BCC(0, &qword_2A17B4A98, sub_29D7A5980, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.OpenKnowledgeBaseArticleCodingKeys, MEMORY[0x29EDC9E88]);
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v75 = &v59 - v6;
  sub_29D7A5BCC(0, &qword_2A17B4AA0, sub_29D7A59D4, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHeartRateSettingsCodingKeys, v2);
  v73 = v7;
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v70 = &v59 - v10;
  sub_29D7A5BCC(0, &qword_2A17B4AA8, sub_29D7A5A28, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v2);
  v76 = v11;
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v72 = &v59 - v14;
  sub_29D7A5BCC(0, &qword_2A17B4AB0, sub_29D7A5A7C, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v2);
  v67 = v15;
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v62 = &v59 - v18;
  sub_29D7A5BCC(0, &qword_2A17B4AB8, sub_29D7A5AD0, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v2);
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v66 = &v59 - v22;
  v79 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v23 = *(*(v79 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v79, v24);
  v64 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v65 = &v59 - v28;
  sub_29D7A5BCC(0, &qword_2A17B4AC0, sub_29D7A5B24, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v2);
  v61 = v29;
  v60 = *(v29 - 8);
  v30 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = &v59 - v32;
  v34 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A5BCC(0, &qword_2A17B4AC8, sub_29D7A5B78, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v2);
  v40 = v39;
  v81 = *(v39 - 8);
  v41 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v39, v42);
  v44 = &v59 - v43;
  v45 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D7A5B78();
  v80 = v44;
  sub_29D93AED8();
  sub_29D7A5C34(v82, v38, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v85 = 2;
      sub_29D7A5A7C();
      v56 = v62;
      v57 = v80;
      sub_29D93ACA8();
      (*(v63 + 8))(v56, v67);
      return (*(v81 + 8))(v57, v40);
    }

    v47 = v40;
    if (EnumCaseMultiPayload == 4)
    {
      v87 = 4;
      sub_29D7A59D4();
      v53 = v70;
      v54 = v80;
      sub_29D93ACA8();
      (*(v71 + 8))(v53, v73);
    }

    else
    {
      v88 = 5;
      sub_29D7A5980();
      v58 = v75;
      v54 = v80;
      sub_29D93ACA8();
      (*(v77 + 8))(v58, v78);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v48 = v65;
      sub_29D7A4ADC(v38, v65, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      v84 = 1;
      sub_29D7A5AD0();
      v49 = v66;
      v47 = v40;
      v50 = v80;
      sub_29D93ACA8();
      sub_29D7A48AC(&qword_2A17B4AD0, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      v51 = v69;
      sub_29D93AD18();
      v52 = v68;
      goto LABEL_9;
    }

    v47 = v40;
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v64;
      sub_29D7A4ADC(v38, v64, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      v86 = 3;
      sub_29D7A5A28();
      v49 = v72;
      v50 = v80;
      sub_29D93ACA8();
      sub_29D7A48AC(&qword_2A17B4AD0, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      v51 = v76;
      sub_29D93AD18();
      v52 = v74;
LABEL_9:
      (*(v52 + 8))(v49, v51);
      sub_29D7A5D80(v48, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      return (*(v81 + 8))(v50, v47);
    }

    v83 = 0;
    sub_29D7A5B24();
    v54 = v80;
    sub_29D93ACA8();
    (*(v60 + 8))(v33, v61);
  }

  return (*(v81 + 8))(v54, v47);
}

uint64_t sub_29D7A19B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29D7A5BCC(0, &qword_2A17B4A20, sub_29D7A5980, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.OpenKnowledgeBaseArticleCodingKeys, MEMORY[0x29EDC9E80]);
  v94 = v4;
  v90 = *(v4 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v101 = &v80 - v7;
  sub_29D7A5BCC(0, &qword_2A17B4A30, sub_29D7A59D4, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHeartRateSettingsCodingKeys, v3);
  v91 = v8;
  v89 = *(v8 - 8);
  v9 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v96 = &v80 - v11;
  sub_29D7A5BCC(0, &qword_2A17B4A40, sub_29D7A5A28, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v3);
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v100 = &v80 - v15;
  sub_29D7A5BCC(0, &qword_2A17B4A50, sub_29D7A5A7C, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v3);
  v87 = v16;
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v95 = &v80 - v19;
  sub_29D7A5BCC(0, &qword_2A17B4A60, sub_29D7A5AD0, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v3);
  v85 = v20;
  v88 = *(v20 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v99 = &v80 - v23;
  sub_29D7A5BCC(0, &qword_2A17B4A70, sub_29D7A5B24, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v3);
  v98 = v24;
  v84 = *(v24 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v97 = &v80 - v27;
  sub_29D7A5BCC(0, &qword_2A17B4A80, sub_29D7A5B78, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v3);
  v29 = v28;
  v102 = *(v28 - 8);
  v30 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v80 - v32;
  v34 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v39 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x2A1C7C4A8](v37, v40);
  v43 = &v80 - v42;
  MEMORY[0x2A1C7C4A8](v41, v44);
  v46 = &v80 - v45;
  v47 = a1[3];
  v48 = a1[4];
  v106 = a1;
  sub_29D693E2C(a1, v47);
  sub_29D7A5B78();
  v104 = v33;
  v49 = v105;
  sub_29D93AEC8();
  if (!v49)
  {
    v50 = v97;
    v105 = 0;
    v81 = v43;
    v82 = v39;
    v51 = v98;
    v52 = v99;
    v54 = v100;
    v53 = v101;
    v83 = v46;
    v55 = v103;
    v56 = sub_29D93AC98();
    v57 = (2 * *(v56 + 16)) | 1;
    v107 = v56;
    v108 = v56 + 32;
    v109 = 0;
    v110 = v57;
    v58 = sub_29D87285C();
    if (v58 == 6 || v109 != v110 >> 1)
    {
      v62 = sub_29D93AA78();
      swift_allocError();
      v64 = v63;
      sub_29D6CA748();
      v66 = *(v65 + 48);
      *v64 = v34;
      v67 = v104;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v62 - 8) + 104))(v64, *MEMORY[0x29EDC9DB8], v62);
      swift_willThrow();
      (*(v102 + 8))(v67, v29);
LABEL_10:
      sub_29D936978();
      return sub_29D69417C(v106);
    }

    if (v58 <= 2u)
    {
      if (v58)
      {
        v59 = v105;
        if (v58 == 1)
        {
          v111 = 1;
          sub_29D7A5AD0();
          sub_29D93AC08();
          if (!v59)
          {
            type metadata accessor for CardioFitnessHealthChecklistSettingsState();
            sub_29D7A48AC(&qword_2A17B4A90, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
            v60 = v81;
            v61 = v85;
            sub_29D93AC88();
            (*(v88 + 8))(v52, v61);
            (*(v102 + 8))(v104, v29);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v79 = v60;
LABEL_27:
            v72 = v83;
            sub_29D7A4ADC(v79, v83, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v111 = 2;
        sub_29D7A5A7C();
        v77 = v95;
        sub_29D93AC08();
        if (v59)
        {
LABEL_22:
          (*(v102 + 8))(v104, v29);
          goto LABEL_10;
        }

        (*(v86 + 8))(v77, v87);
        (*(v102 + 8))(v104, v29);
        sub_29D936978();
        v72 = v83;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v111 = 0;
        sub_29D7A5B24();
        v73 = v105;
        sub_29D93AC08();
        if (v73)
        {
          goto LABEL_22;
        }

        (*(v84 + 8))(v50, v51);
        (*(v102 + 8))(v104, v29);
        sub_29D936978();
        v72 = v83;
        swift_storeEnumTagMultiPayload();
      }

LABEL_28:
      sub_29D7A4ADC(v72, v55, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      return sub_29D69417C(v106);
    }

    v69 = v102;
    if (v58 == 3)
    {
      v111 = 3;
      sub_29D7A5A28();
      v74 = v105;
      sub_29D93AC08();
      if (!v74)
      {
        type metadata accessor for CardioFitnessHealthChecklistSettingsState();
        sub_29D7A48AC(&qword_2A17B4A90, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v75 = v82;
        v76 = v93;
        sub_29D93AC88();
        (*(v92 + 8))(v54, v76);
        (*(v69 + 8))(v104, v29);
        sub_29D936978();
        swift_storeEnumTagMultiPayload();
        v79 = v75;
        goto LABEL_27;
      }
    }

    else if (v58 == 4)
    {
      v111 = 4;
      sub_29D7A59D4();
      v70 = v96;
      v71 = v105;
      sub_29D93AC08();
      if (!v71)
      {
        (*(v89 + 8))(v70, v91);
        (*(v69 + 8))(v104, v29);
        sub_29D936978();
        v72 = v83;
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }
    }

    else
    {
      v111 = 5;
      sub_29D7A5980();
      v78 = v105;
      sub_29D93AC08();
      if (!v78)
      {
        (*(v90 + 8))(v53, v94);
        (*(v69 + 8))(v104, v29);
        sub_29D936978();
        v72 = v83;
        swift_storeEnumTagMultiPayload();
        v55 = v103;
        goto LABEL_28;
      }
    }

    (*(v69 + 8))(v104, v29);
    goto LABEL_10;
  }

  return sub_29D69417C(v106);
}

unint64_t sub_29D7A2650()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_29D7A26FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D7A5344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D7A2730(uint64_t a1)
{
  v2 = sub_29D7A5B78();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A276C(uint64_t a1)
{
  v2 = sub_29D7A5B78();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A27A8(uint64_t a1)
{
  v2 = sub_29D7A59D4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A27E4(uint64_t a1)
{
  v2 = sub_29D7A59D4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2820(uint64_t a1)
{
  v2 = sub_29D7A5980();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A285C(uint64_t a1)
{
  v2 = sub_29D7A5980();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2898(uint64_t a1)
{
  v2 = sub_29D7A5AD0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A28D4(uint64_t a1)
{
  v2 = sub_29D7A5AD0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2910(uint64_t a1)
{
  v2 = sub_29D7A5A7C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A294C(uint64_t a1)
{
  v2 = sub_29D7A5A7C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2988(uint64_t a1)
{
  v2 = sub_29D7A5B24();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A29C4(uint64_t a1)
{
  v2 = sub_29D7A5B24();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2A00(uint64_t a1)
{
  v2 = sub_29D7A5A28();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A2A3C(uint64_t a1)
{
  v2 = sub_29D7A5A28();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v27 = &v24 - v6;
  sub_29D7A5BCC(0, &qword_2A17B49B8, sub_29D7A4914, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v26 = *(v7 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D7A4914();
  v20 = v28;
  sub_29D93AEC8();
  if (!v20)
  {
    v21 = v26;
    sub_29D7A48AC(&qword_2A17B49C8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
    v22 = v27;
    sub_29D93AC48();
    (*(v21 + 8))(v12, v8);
    sub_29D7A4988(v22, v17);
    sub_29D7A5C34(v17, v25, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  }

  sub_29D69417C(a1);
  return sub_29D7A5D80(v17, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
}

uint64_t sub_29D7A2DC0(uint64_t a1)
{
  v2 = sub_29D7A4914();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7A2DFC(uint64_t a1)
{
  v2 = sub_29D7A4914();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D7A2E50(void *a1)
{
  sub_29D7A5BCC(0, &qword_2A17B49D0, sub_29D7A4914, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D7A4914();
  sub_29D93AED8();
  type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  sub_29D7A48AC(&qword_2A17B49D8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  sub_29D93ACD8();
  return (*(v4 + 8))(v8, v3);
}

void sub_29D7A3000()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D9346B8();
  v134 = *(v1 - 8);
  v135 = v1;
  v2 = *(v134 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v133 = v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A4A08(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v137 = v131 - v8;
  v9 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v136 = v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v132 = v131 - v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v139 = v131 - v18;
  v19 = sub_29D934C58();
  v145 = *(v19 - 8);
  v146 = v19;
  v20 = *(v145 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v138 = v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v144 = v131 - v25;
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  v141 = v26;
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v142 = v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v140 = v131 - v32;
  v33 = sub_29D936638();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A4A08(0, &qword_2A17B49E0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39 - 8, v41);
  v43 = v131 - v42;
  v44 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v48 = MEMORY[0x2A1C7C4A8](v44, v47);
  v50 = v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v48, v51);
  v53 = v131 - v52;
  v143 = v0;
  sub_29D936B88();
  sub_29D7A48AC(&qword_2A17B49E8, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  sub_29D7A48AC(&qword_2A17B49F0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  sub_29D936628();
  v147 = *(v34 + 8);
  v148 = v33;
  v147(v38, v33);
  if ((*(v45 + 48))(v43, 1, v44) != 1)
  {
    sub_29D7A4ADC(v43, v53, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
    v62 = v53;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v63 = sub_29D937898();
    v64 = sub_29D69C6C0(v63, qword_2A1A2C008);
    sub_29D7A5C34(v53, v50, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
    v131[1] = v64;
    v65 = sub_29D937878();
    v66 = sub_29D93A2A8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v150[0] = v68;
      *v67 = 136315394;
      v69 = sub_29D93AF08();
      v131[0] = v53;
      v71 = sub_29D6C2364(v69, v70, v150);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      sub_29D7A4A5C(v50, v140);
      v72 = sub_29D939DA8();
      v74 = v73;
      sub_29D7A5D80(v50, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
      v75 = sub_29D6C2364(v72, v74, v150);
      v62 = v131[0];

      *(v67 + 14) = v75;
      _os_log_impl(&dword_29D677000, v65, v66, "[%s] Did select cell with tap action %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v68, -1, -1);
      MEMORY[0x29ED6BE30](v67, -1, -1);
    }

    else
    {

      sub_29D7A5D80(v50, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
    }

    v76 = v144;
    sub_29D936B88();
    v144 = sub_29D936618();
    v78 = v147;
    v77 = v148;
    v147(v38, v148);
    sub_29D936B88();
    sub_29D936608();
    v78(v38, v77);
    sub_29D693E2C(v150, v151);
    v79 = sub_29D936588();
    sub_29D69417C(v150);
    sub_29D936B88();
    sub_29D9347B8();
    v78(v38, v77);
    v80 = v142;
    sub_29D7A4A5C(v62, v142);
    v81 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
    if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
    {
      v82 = v79;
      v83 = sub_29D937878();
      v84 = sub_29D93A288();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v150[0] = v86;
        *v85 = 136315138;
        v87 = sub_29D93AF08();
        v89 = sub_29D6C2364(v87, v88, v150);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_29D677000, v83, v84, "[%s] No tap action given (likely due to error on generation side, doing nothing", v85, 0xCu);
        sub_29D69417C(v86);
        MEMORY[0x29ED6BE30](v86, -1, -1);
        MEMORY[0x29ED6BE30](v85, -1, -1);
      }
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v105 = v139;
          sub_29D7A4ADC(v80, v139, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v106 = v132;
          sub_29D7A5C34(v105, v132, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v107 = v145;
          v108 = v146;
          v109 = v138;
          (*(v145 + 16))(v138, v76, v146);
          v110 = objc_allocWithZone(type metadata accessor for CardioFitnessHealthChecklistSettingsViewController(0));
          v111 = v79;
          v112 = sub_29D7790B4(v111, v106, v109);

          sub_29D9365C8();
          v113 = sub_29D93A028();
          v114 = v137;
          (*(*(v113 - 8) + 56))(v137, 1, 1, v113);
          sub_29D939FF8();
          v115 = v111;
          v116 = sub_29D939FE8();
          v117 = swift_allocObject();
          v118 = MEMORY[0x29EDCA390];
          v117[2] = v116;
          v117[3] = v118;
          v119 = ObjectType;
          v117[4] = v115;
          v117[5] = v119;
          sub_29D6BEBA4(0, 0, v114, &unk_29D9484A0, v117);

          v120 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
          v121 = v144;
          [v144 presentViewController:v120 animated:1 completion:0];

          sub_29D7A5D80(v105, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          (*(v107 + 8))(v76, v108);
          goto LABEL_18;
        }

        v91 = v79;
        if (EnumCaseMultiPayload == 1)
        {
          v92 = v136;
          sub_29D7A4ADC(v80, v136, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v93 = v139;
          sub_29D7A5C34(v92, v139, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
          v94 = v138;
          (*(v145 + 16))(v138, v76, v146);
          v95 = objc_allocWithZone(type metadata accessor for CardioFitnessHealthChecklistSettingsViewController(0));
          v96 = v91;
          v97 = sub_29D7790B4(v96, v93, v94);

          v98 = v144;
          v99 = [v144 navigationController];
          if (v99)
          {
            v100 = v99;
            [v99 pushViewController:v97 animated:1];
          }

          else
          {
          }

          sub_29D7A5D80(v92, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        }

        else
        {
          sub_29D936B88();
          sub_29D936608();
          v147(v38, v148);
          sub_29D693E2C(v150, v151);
          v127 = sub_29D936588();
          v128 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
          v129 = sub_29D827BF4(v127, 0);
          sub_29D69417C(v150);
          v130 = v144;
          [v144 presentViewController:v129 animated:1 completion:0];
        }

LABEL_17:
        (*(v145 + 8))(v76, v146);
LABEL_18:
        sub_29D7A5D80(v62, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
        return;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v122 = v79;
        sub_29D936B88();
        v123 = sub_29D936618();
        v147(v38, v148);
        sub_29D93A388();

        v124 = objc_allocWithZone(type metadata accessor for HealthDetailsModalViewController());
        v125 = sub_29D7A5540(v122, v150);

        v126 = v144;
        [v144 presentViewController:v125 animated:1 completion:0];

        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v101 = v79;
        v103 = v134;
        v102 = v135;
        v104 = v133;
        (*(v134 + 104))(v133, *MEMORY[0x29EDC1720], v135);
        sub_29D9346A8();

        (*(v103 + 8))(v104, v102);
        goto LABEL_17;
      }

      sub_29D8AA9B4();
      sub_29D939DF8();
    }

    goto LABEL_17;
  }

  sub_29D7A5DE0(v43, &qword_2A17B49E0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v54 = sub_29D937898();
  sub_29D69C6C0(v54, qword_2A1A2C008);
  v55 = sub_29D937878();
  v56 = sub_29D93A298();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v150[0] = v58;
    *v57 = 136315138;
    v59 = sub_29D93AF08();
    v61 = sub_29D6C2364(v59, v60, v150);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_29D677000, v55, v56, "[%s] Could not access action handler user data!", v57, 0xCu);
    sub_29D69417C(v58);
    MEMORY[0x29ED6BE30](v58, -1, -1);
    MEMORY[0x29ED6BE30](v57, -1, -1);
  }
}

uint64_t sub_29D7A3F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_29D939FF8();
  v5[20] = sub_29D939FE8();
  v7 = sub_29D939FD8();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x2A1C73D48](sub_29D7A4014, v7, v6);
}

uint64_t sub_29D7A4014()
{
  v1 = [*(v0 + 144) featureAvailabilityProvidingForFeatureIdentifier_];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v3 = sub_29D93A6D8();
    v4 = *MEMORY[0x29EDBA788];
    *(v0 + 192) = v3;
    *(v0 + 200) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 216;
    *(v0 + 24) = sub_29D7A41D8;
    v5 = swift_continuation_init();
    sub_29D6ACB00();
    *(v0 + 136) = v6;
    *(v0 + 80) = MEMORY[0x29EDCA5F8];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_29D8D0FE0;
    *(v0 + 104) = &unk_2A2445650;
    *(v0 + 112) = v5;
    [v2 setFeatureSettingNumber:v3 forKey:v4 completion:v0 + 80];

    return MEMORY[0x2A1C73CC0](v0 + 16);
  }

  else
  {
    v7 = *(v0 + 160);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_29D7A41D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_29D7A4388;
  }

  else
  {
    v6 = sub_29D7A4308;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D7A4308()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  sub_29D936978();

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D7A4388()
{
  v25 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[20];

  swift_willThrow();
  sub_29D936978();

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = v0[26];
  v7 = sub_29D937898();
  sub_29D69C6C0(v7, qword_2A1A2C008);
  v8 = v6;
  v9 = sub_29D937878();
  v10 = sub_29D93A288();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[26];
  if (v11)
  {
    v13 = v0[19];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136446466;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v24);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Error when setting initial enablement: %@", v14, 0x16u);
    sub_29D7A5D80(v15, sub_29D6ACA98);
    MEMORY[0x29ED6BE30](v15, -1, -1);
    sub_29D69417C(v16);
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_29D7A45C4(uint64_t a1)
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

id sub_29D7A4800(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D7A48AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D7A4914()
{
  result = qword_2A17B49C0;
  if (!qword_2A17B49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B49C0);
  }

  return result;
}

uint64_t sub_29D7A4988(uint64_t a1, uint64_t a2)
{
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D7A4A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D7A4A5C(uint64_t a1, uint64_t a2)
{
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7A4ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7A4B44(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v4 = *(*(v49 - 1) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v49, v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v48 - v10;
  v12 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v48 - v19;
  sub_29D7A5C9C();
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21 - 8, v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 56);
  sub_29D7A5C34(a1, v26, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  sub_29D7A5C34(a2, &v26[v27], type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v37 = swift_getEnumCaseMultiPayload();
      v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
      if (v37 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v35 = swift_getEnumCaseMultiPayload();
      v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
      if (v35 != 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v40 = swift_getEnumCaseMultiPayload();
      v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
      if (v40 != 5)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_29D7A5C34(v26, v20, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_29D7A4ADC(&v26[v27], v11, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        if (*v20 == *v11)
        {
          v42 = v49[5];
          if (sub_29D9346D8() & 1) != 0 && (sub_29D696F08(*&v20[v49[6]], *&v11[v49[6]]))
          {
            v43 = &v20[v49[7]];
            v44 = *(v43 + 2);
            v51 = *(v43 + 1);
            v52 = v44;
            v50 = *v43;
            v45 = &v11[v49[7]];
            v46 = *(v45 + 2);
            v54 = *(v45 + 1);
            v55 = v46;
            v53 = *v45;
            if (sub_29D8B38EC(&v50, &v53))
            {
              sub_29D7A5D80(v11, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
              v34 = v20;
              goto LABEL_29;
            }
          }
        }

        sub_29D7A5D80(v11, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v41 = v20;
LABEL_31:
        sub_29D7A5D80(v41, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v38 = 0;
        goto LABEL_32;
      }

      v17 = v20;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_29D7A5C34(v26, v17, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_29D7A4ADC(&v26[v27], v8, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        if (*v17 == *v8)
        {
          v29 = v49[5];
          if (sub_29D9346D8() & 1) != 0 && (sub_29D696F08(*&v17[v49[6]], *&v8[v49[6]]))
          {
            v30 = &v17[v49[7]];
            v31 = *(v30 + 2);
            v51 = *(v30 + 1);
            v52 = v31;
            v50 = *v30;
            v32 = &v8[v49[7]];
            v33 = *(v32 + 2);
            v54 = *(v32 + 1);
            v55 = v33;
            v53 = *v32;
            if (sub_29D8B38EC(&v50, &v53))
            {
              sub_29D7A5D80(v8, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
              v34 = v17;
LABEL_29:
              sub_29D7A5D80(v34, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
              v38 = 1;
LABEL_32:
              v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
              goto LABEL_33;
            }
          }
        }

        sub_29D7A5D80(v8, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
        v41 = v17;
        goto LABEL_31;
      }

LABEL_16:
      sub_29D7A5D80(v17, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
LABEL_22:
      v38 = 0;
      v36 = sub_29D7A5C9C;
      goto LABEL_33;
    }

    v39 = swift_getEnumCaseMultiPayload();
    v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction;
    if (v39 != 2)
    {
      goto LABEL_22;
    }
  }

  v38 = 1;
LABEL_33:
  sub_29D7A5D80(v26, v36);
  return v38;
}

BOOL sub_29D7A5070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v25 - v13;
  sub_29D7A5D00();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_29D7A4A5C(a1, v20);
  sub_29D7A4A5C(a2, &v20[v21]);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_29D7A4A5C(v20, v14);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      sub_29D7A4ADC(&v20[v21], v9, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      v24 = sub_29D7A4B44(v14, v9);
      sub_29D7A5D80(v9, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      sub_29D7A5D80(v14, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      sub_29D7A5DE0(v20, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      return (v24 & 1) != 0;
    }

    sub_29D7A5D80(v14, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
LABEL_6:
    sub_29D7A5D80(v20, sub_29D7A5D00);
    return 0;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_29D7A5DE0(v20, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  return 1;
}

uint64_t sub_29D7A5344(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029D9597F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029D961DD0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029D959810 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029D961DF0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000029D961E10 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029D961E30 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_29D7A5540(void *a1, uint64_t *a2)
{
  v3 = v2;
  sub_29D6945AC(a2, v15);
  v6 = objc_allocWithZone(sub_29D936F58());
  v7 = a1;
  v8 = sub_29D936F48();
  [v8 setAccessType_];
  v14.receiver = v3;
  v14.super_class = type metadata accessor for HealthDetailsModalViewController();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v14, sel_initWithRootViewController_, v9);
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v10 action:sel_dismissPresentedViewController];
  v12 = [v9 navigationItem];

  [v12 setLeftBarButtonItem_];
  sub_29D69417C(a2);
  return v10;
}

uint64_t sub_29D7A566C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D7A3F7C(a1, v4, v5, v7, v6);
}

uint64_t sub_29D7A5768()
{
  result = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D7A57F0()
{
  sub_29D7A4A08(319, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29D7A587C()
{
  result = qword_2A17B4A08;
  if (!qword_2A17B4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A08);
  }

  return result;
}

unint64_t sub_29D7A58D4()
{
  result = qword_2A17B4A10;
  if (!qword_2A17B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A10);
  }

  return result;
}

unint64_t sub_29D7A592C()
{
  result = qword_2A17B4A18;
  if (!qword_2A17B4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A18);
  }

  return result;
}

unint64_t sub_29D7A5980()
{
  result = qword_2A17B4A28;
  if (!qword_2A17B4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A28);
  }

  return result;
}

unint64_t sub_29D7A59D4()
{
  result = qword_2A17B4A38;
  if (!qword_2A17B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A38);
  }

  return result;
}

unint64_t sub_29D7A5A28()
{
  result = qword_2A17B4A48;
  if (!qword_2A17B4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A48);
  }

  return result;
}

unint64_t sub_29D7A5A7C()
{
  result = qword_2A17B4A58;
  if (!qword_2A17B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A58);
  }

  return result;
}

unint64_t sub_29D7A5AD0()
{
  result = qword_2A17B4A68;
  if (!qword_2A17B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A68);
  }

  return result;
}

unint64_t sub_29D7A5B24()
{
  result = qword_2A17B4A78;
  if (!qword_2A17B4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A78);
  }

  return result;
}

unint64_t sub_29D7A5B78()
{
  result = qword_2A17B4A88;
  if (!qword_2A17B4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4A88);
  }

  return result;
}

void sub_29D7A5BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D7A5C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D7A5C9C()
{
  if (!qword_2A17B4AD8)
  {
    type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B4AD8);
    }
  }
}

void sub_29D7A5D00()
{
  if (!qword_2A17B4AE0)
  {
    sub_29D7A4A08(255, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B4AE0);
    }
  }
}

uint64_t sub_29D7A5D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7A5DE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D7A4A08(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D7A5EB0()
{
  result = qword_2A17B4AE8;
  if (!qword_2A17B4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4AE8);
  }

  return result;
}

unint64_t sub_29D7A5F08()
{
  result = qword_2A17B4AF0;
  if (!qword_2A17B4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4AF0);
  }

  return result;
}

unint64_t sub_29D7A5F60()
{
  result = qword_2A17B4AF8;
  if (!qword_2A17B4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4AF8);
  }

  return result;
}

unint64_t sub_29D7A5FB8()
{
  result = qword_2A17B4B00;
  if (!qword_2A17B4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B00);
  }

  return result;
}

unint64_t sub_29D7A6010()
{
  result = qword_2A17B4B08;
  if (!qword_2A17B4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B08);
  }

  return result;
}

unint64_t sub_29D7A6068()
{
  result = qword_2A17B4B10;
  if (!qword_2A17B4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B10);
  }

  return result;
}

unint64_t sub_29D7A60C0()
{
  result = qword_2A17B4B18;
  if (!qword_2A17B4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B18);
  }

  return result;
}

unint64_t sub_29D7A6118()
{
  result = qword_2A17B4B20;
  if (!qword_2A17B4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B20);
  }

  return result;
}

unint64_t sub_29D7A6170()
{
  result = qword_2A17B4B28;
  if (!qword_2A17B4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B28);
  }

  return result;
}

unint64_t sub_29D7A61C8()
{
  result = qword_2A17B4B30;
  if (!qword_2A17B4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B30);
  }

  return result;
}

unint64_t sub_29D7A6220()
{
  result = qword_2A17B4B38;
  if (!qword_2A17B4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B38);
  }

  return result;
}

unint64_t sub_29D7A6278()
{
  result = qword_2A17B4B40;
  if (!qword_2A17B4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B40);
  }

  return result;
}

unint64_t sub_29D7A62D0()
{
  result = qword_2A17B4B48;
  if (!qword_2A17B4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B48);
  }

  return result;
}

unint64_t sub_29D7A6328()
{
  result = qword_2A17B4B50;
  if (!qword_2A17B4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B50);
  }

  return result;
}

unint64_t sub_29D7A6380()
{
  result = qword_2A17B4B58;
  if (!qword_2A17B4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B58);
  }

  return result;
}

unint64_t sub_29D7A63D8()
{
  result = qword_2A17B4B60;
  if (!qword_2A17B4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B60);
  }

  return result;
}

unint64_t sub_29D7A6430()
{
  result = qword_2A17B4B68;
  if (!qword_2A17B4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4B68);
  }

  return result;
}

uint64_t sub_29D7A6488(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_29D935E88();
      sub_29D7ABF08(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_29D7A658C(unint64_t a1)
{
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v19[-v13];
  if (a1 > 1)
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A2BE98;
    (*(v6 + 16))(v11, v14, v5);
    sub_29D935E88();
    v16 = v15;
    sub_29D933A98();
    v17 = sub_29D939D98();
    (*(v6 + 8))(v14, v5);
    return v17;
  }

  return result;
}

uint64_t sub_29D7A67FC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_29D9340F8();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_29D6C36D8(0);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_29D7B072C(0, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_29D937898();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7A6A74, 0, 0);
}

uint64_t sub_29D7A6A74()
{
  v60 = v0;
  v1 = v0[8];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  swift_getObjectType();
  sub_29D7B08FC(&unk_2A1A23AB0, v4, type metadata accessor for BloodPressureJournalSummaryExecutor);
  sub_29D933F28();
  v5 = v0[29];
  sub_29D937838();
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  v10 = v0[23];
  v11 = v0[24];
  if (v8)
  {
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v59[0] = v14;
    *v13 = 136446466;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, v59);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v59);
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Running workplan", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }

  v18 = *(v11 + 8);
  v18(v9, v10);
  v0[30] = v18;
  v20 = v0[21];
  v19 = v0[22];
  v21 = v0[20];
  v22 = v0[7];
  sub_29D7AB8A8();
  sub_29D937448();
  v23 = sub_29D939AE8();
  v0[31] = v23;
  (*(v20 + 8))(v19, v21);
  if (v23)
  {
    v24 = v0[28];
    sub_29D937838();
    v25 = v23;
    v26 = sub_29D937878();
    v27 = sub_29D93A2A8();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[28];
    v30 = v0[23];
    v31 = v0[24];
    if (v28)
    {
      v32 = v0[9];
      v58 = v0[24];
      v33 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59[0] = v57;
      *v33 = 136446722;
      v34 = sub_29D93AF08();
      v36 = sub_29D6C2364(v34, v35, v59);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v59);
      *(v33 + 22) = 2080;
      v37 = v25;
      v38 = [v37 description];
      v55 = v29;
      v56 = v30;
      v39 = sub_29D939D68();
      v40 = v25;
      v42 = v41;

      v43 = sub_29D6C2364(v39, v42, v59);
      v25 = v40;

      *(v33 + 24) = v43;
      _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s.%{public}s]: Making feed item with %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v57, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);

      v44 = v55;
      v45 = v56;
    }

    else
    {

      v44 = v29;
      v45 = v30;
    }

    v18(v44, v45);
    v51 = swift_task_alloc();
    v0[32] = v51;
    *v51 = v0;
    v51[1] = sub_29D7A704C;
    v52 = v0[19];
    v53 = v0[8];

    return sub_29D7A8094(v52, v25);
  }

  else
  {
    v47 = v0[5];
    v46 = v0[6];
    sub_29D693E2C(v0 + 2, v47);
    v48 = *(MEMORY[0x29EDC3888] + 4);
    v49 = swift_task_alloc();
    v0[36] = v49;
    *v49 = v0;
    v49[1] = sub_29D7A7AD8;
    v50 = MEMORY[0x29EDCA190];

    return MEMORY[0x2A1C64D80](v50, v47, v46);
  }
}

uint64_t sub_29D7A704C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29D7A7148, 0, 0);
}

uint64_t sub_29D7A7148()
{
  v58 = v0;
  v1 = v0[31];
  v2 = v0[27];
  v4 = v0[18];
  v3 = v0[19];
  sub_29D937838();
  sub_29D7AF2F0(v3, v4, sub_29D6C36D8);
  v5 = v1;
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[31];
    v54 = v0[27];
    v55 = v0[30];
    v52 = v0[24];
    v53 = v0[23];
    v9 = v0[17];
    v50 = v0[18];
    v51 = v0[13];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v57 = v12;
    *v11 = 136446978;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v57);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, &v57);
    *(v11 + 22) = 2080;
    v16 = [v8 conciseDescription];
    v17 = sub_29D939D68();
    v19 = v18;

    v20 = sub_29D6C2364(v17, v19, &v57);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2080;
    sub_29D7AF2F0(v50, v9, sub_29D6C36D8);
    v21 = sub_29D939DA8();
    v23 = v22;
    sub_29D7B079C(v50, sub_29D6C36D8);
    v24 = sub_29D6C2364(v21, v23, &v57);

    *(v11 + 34) = v24;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Journal %s new feed item: %s ", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);

    v55(v54, v53);
  }

  else
  {
    v25 = v0[30];
    v26 = v0[27];
    v27 = v0[23];
    v28 = v0[24];
    v29 = v0[18];

    sub_29D7B079C(v29, sub_29D6C36D8);
    v25(v26, v27);
  }

  v30 = v0[19];
  v31 = v0[15];
  v32 = v0[16];
  v33 = v0[14];
  v35 = v0[10];
  v34 = v0[11];
  v36 = v0[5];
  v56 = v0[6];
  sub_29D693E2C(v0 + 2, v36);
  sub_29D7ABC94(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v37 = *(v33 + 72);
  v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v39 = swift_allocObject();
  sub_29D7AF2F0(v30, v39 + v38, sub_29D6C36D8);
  sub_29D7AF2F0(v39 + v38, v32, sub_29D6C36D8);
  sub_29D6C37D4(v32, v31);
  if ((*(v34 + 48))(v31, 1, v35) == 1)
  {
    sub_29D7B079C(v0[15], sub_29D6C36D8);
    v40 = MEMORY[0x29EDCA190];
  }

  else
  {
    v41 = *(v0[11] + 32);
    v41(v0[12], v0[15], v0[10]);
    v40 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_29D68F864(0, *(v40 + 2) + 1, 1, v40);
    }

    v43 = *(v40 + 2);
    v42 = *(v40 + 3);
    if (v43 >= v42 >> 1)
    {
      v40 = sub_29D68F864(v42 > 1, v43 + 1, 1, v40);
    }

    v45 = v0[11];
    v44 = v0[12];
    v46 = v0[10];
    *(v40 + 2) = v43 + 1;
    v41(&v40[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v43], v44, v46);
  }

  v0[33] = v40;
  swift_setDeallocating();
  sub_29D7B079C(v39 + v38, sub_29D6C36D8);
  swift_deallocClassInstance();
  v47 = *(MEMORY[0x29EDC3888] + 4);
  v48 = swift_task_alloc();
  v0[34] = v48;
  *v48 = v0;
  v48[1] = sub_29D7A768C;

  return MEMORY[0x2A1C64D80](v40, v36, v56);
}

uint64_t sub_29D7A768C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_29D7A7F60;
  }

  else
  {
    v6 = sub_29D7A77C0;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D7A77C0()
{
  v43 = v0;
  v1 = v0[31];
  v2 = v0[26];
  sub_29D937838();
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[19];
  if (v6)
  {
    v13 = v0[9];
    v40 = v0[23];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136446722;
    v16 = sub_29D93AF08();
    v37 = v12;
    v18 = sub_29D6C2364(v16, v17, &v42);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, &v42);
    *(v14 + 22) = 2080;
    v19 = [v8 conciseDescription];
    v20 = sub_29D939D68();
    v36 = v7;
    v22 = v21;

    v23 = sub_29D6C2364(v20, v22, &v42);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s.%{public}s]:Journal %s replacement complete", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);

    v36(v9, v40);
    v24 = v37;
  }

  else
  {

    v7(v9, v10);
    v24 = v12;
  }

  sub_29D7B079C(v24, sub_29D6C36D8);
  v25 = v0[28];
  v26 = v0[29];
  v28 = v0[26];
  v27 = v0[27];
  v29 = v0[25];
  v30 = v0[22];
  v32 = v0[18];
  v31 = v0[19];
  v33 = v0[17];
  v38 = v0[16];
  v39 = v0[15];
  v41 = v0[12];
  sub_29D69417C(v0 + 2);

  v34 = v0[1];

  return v34();
}

uint64_t sub_29D7A7AD8()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_29D7A7E54;
  }

  else
  {
    v3 = sub_29D7A7BEC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7A7BEC()
{
  v31 = v0;
  v1 = v0[25];
  sub_29D937838();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  if (v4)
  {
    v9 = v0[9];
    v28 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446466;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v30);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, &v30);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: No active journal found. Removing item.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);

    v28(v6, v8);
  }

  else
  {

    v5(v6, v8);
  }

  v15 = v0[28];
  v16 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[25];
  v20 = v0[22];
  v22 = v0[18];
  v21 = v0[19];
  v23 = v0[17];
  v26 = v0[16];
  v27 = v0[15];
  v29 = v0[12];
  sub_29D69417C(v0 + 2);

  v24 = v0[1];

  return v24();
}

uint64_t sub_29D7A7E54()
{
  sub_29D69417C(v0 + 2);
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[37];

  v11 = v0[1];

  return v11();
}

uint64_t sub_29D7A7F60()
{
  v1 = *(v0 + 152);

  sub_29D7B079C(v1, sub_29D6C36D8);
  sub_29D69417C((v0 + 16));
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = *(v0 + 96);
  v16 = *(v0 + 280);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_29D7A8094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_29D937898();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7A818C, 0, 0);
}

uint64_t sub_29D7A818C()
{
  v70 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  sub_29D937838();
  v3 = v2;
  v4 = sub_29D937878();
  v5 = sub_29D93A268();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v6)
  {
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);
    v67 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136446722;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v69);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D961EE0, &v69);
    *(v12 + 22) = 2080;
    v17 = [v11 conciseDescription];
    v18 = sub_29D939D68();
    v20 = v19;

    v21 = sub_29D6C2364(v18, v20, &v69);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s.%{public}s]:Journal %s Making Feed item", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    v22 = *(v8 + 8);
    v22(v67, v9);
  }

  else
  {

    v22 = *(v8 + 8);
    v22(v7, v9);
  }

  v23 = [objc_allocWithZone(MEMORY[0x29EDC5210]) initWithJournal:*(v0 + 24) healthStore:*(*(v0 + 32) + 48)];
  v24 = [v23 buildSummary];

  if (v24)
  {
    if ([swift_unknownObjectRetain() isComplete])
    {
      v25 = *(v0 + 64);
      v26 = *(v0 + 24);
      sub_29D937838();
      v27 = v26;
      v28 = sub_29D937878();
      v29 = sub_29D93A2A8();

      v30 = os_log_type_enabled(v28, v29);
      v32 = *(v0 + 56);
      v31 = *(v0 + 64);
      v33 = *(v0 + 48);
      if (v30)
      {
        v34 = *(v0 + 40);
        v35 = *(v0 + 24);
        v68 = *(v0 + 48);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v69 = v37;
        *v36 = 136446722;
        v38 = sub_29D93AF08();
        v66 = v31;
        v40 = sub_29D6C2364(v38, v39, &v69);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        *(v36 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D961EE0, &v69);
        *(v36 + 22) = 2080;
        v41 = [v35 conciseDescription];
        v42 = sub_29D939D68();
        v44 = v43;

        v45 = sub_29D6C2364(v42, v44, &v69);

        *(v36 + 24) = v45;
        _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]:Journal %s Summary is complete. Providing complete feedItem", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v37, -1, -1);
        MEMORY[0x29ED6BE30](v36, -1, -1);

        v46 = v66;
        v47 = v68;
      }

      else
      {

        v46 = v31;
        v47 = v33;
      }

      v22(v46, v47);
      v54 = *(v0 + 24);
      v55 = *(v0 + 32);
      sub_29D7A8748(v24, *(v0 + 16));
    }

    else
    {
      v50 = [*(v0 + 24) journalType];
      if (v50 == 1)
      {
        v57 = *(v0 + 24);
        v56 = *(v0 + 32);
        v58 = *(v0 + 16);
        objc_opt_self();
        v59 = swift_dynamicCastObjCClassUnconditional();
        swift_unknownObjectRetain();
        sub_29D7AA374(v57, v59, v58);
      }

      else if (v50)
      {
        v60 = *(v0 + 16);
        v61 = sub_29D9340F8();
        (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
      }

      else
      {
        v51 = *(v0 + 32);
        v52 = *(v0 + 16);
        objc_opt_self();
        v53 = swift_dynamicCastObjCClassUnconditional();
        swift_unknownObjectRetain();
        sub_29D7A96E4(v53, v52);
      }
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v48 = *(v0 + 16);
    v49 = sub_29D9340F8();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  v63 = *(v0 + 64);
  v62 = *(v0 + 72);

  v64 = *(v0 + 8);

  return v64();
}

id sub_29D7A8748@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v5 = *v3;
  v117 = v3;
  v92 = v5;
  v97 = sub_29D937898();
  v96 = *(v97 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v97, v7);
  v95 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D934058();
  v120 = *(v9 - 8);
  v10 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v118 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_29D933F58();
  v119 = *(v126 - 1);
  v13 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v126, v14);
  v125 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D934C08();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v112 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ABC94(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v111 = &v92 - v23;
  v24 = sub_29D933AA8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8, v26);
  v110 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29D939D18();
  v28 = *(v109 - 8);
  v29 = v28[8];
  v31 = MEMORY[0x2A1C7C4A8](v109, v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v92 - v35;
  v116 = sub_29D934C18();
  v114 = *(v116 - 8);
  v37 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v116, v38);
  v113 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v40 - 8, v42);
  v44 = &v92 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D9340F8();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v45, v48);
  v50 = &v92 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *MEMORY[0x29EDBA420];
  v94 = a1;
  v52 = [a1 averageClassificationCategory];
  if (v52)
  {
    v53 = v52;

    v51 = v53;
  }

  v123 = v51;
  v115 = v44;
  v93 = v50;
  v121 = v9;
  v122 = v46;
  v124 = v45;
  v106 = sub_29D92B4E0();
  v54 = v36;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v55 = qword_2A1A2BE98;
  v99 = unk_2A1A2BEA0;
  v101 = v28[2];
  v56 = v36;
  v57 = v109;
  v101(v33, v56, v109);
  sub_29D935E88();
  v100 = v55;
  sub_29D933A98();
  v108 = sub_29D939D98();
  v107 = v58;
  v59 = v28[1];
  v59(v54, v57);
  v105 = sub_29D92B6BC();
  v104 = v60;
  v103 = sub_29D92B940();
  v102 = v61;
  sub_29D939D08();
  v101(v33, v54, v57);
  sub_29D935E88();
  v62 = v100;
  sub_29D933A98();
  sub_29D939D98();
  v59(v54, v57);
  v63 = v126;
  v64 = v119;
  v65 = v125;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v66 = qword_2A1A2C038;
  v67 = v111;
  sub_29D934788();
  v119 = type metadata accessor for CompletedBloodPressureJournalTileContentConfigurationProvider();
  v68 = sub_29D934798();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_29D934BF8();
  v69 = v113;
  sub_29D934BE8();
  type metadata accessor for CompletedBloodPressureJournalTileActionHandler();
  v112 = "reminderNotification";
  (*(v64 + 104))(v65, *MEMORY[0x29EDC3740], v63);
  v70 = sub_29D933FE8();
  v127 = 0;
  v128 = 0xE000000000000000;
  sub_29D93AA18();
  v72 = v117[2];
  v71 = v117[3];
  sub_29D935E88();

  v127 = v72;
  v128 = v71;
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D961F60);
  v73 = v120;
  v74 = v118;
  v75 = v121;
  (*(v120 + 104))(v118, *MEMORY[0x29EDC1B28], v121);
  sub_29D7B08FC(&qword_2A17B4BB0, 255, type metadata accessor for CompletedBloodPressureJournalTileContentConfigurationProvider);
  sub_29D7B08FC(&qword_2A17B4BB8, 255, type metadata accessor for CompletedBloodPressureJournalTileActionHandler);
  v76 = v74;
  v77 = v125;
  v78 = v115;
  sub_29D934028();

  (*(v73 + 8))(v76, v75);
  (*(v64 + 8))(v77, v126);
  (*(v114 + 8))(v69, v116);
  v79 = v122;
  v80 = v124;
  v126 = *(v122 + 56);
  (v126)(v78, 0, 1, v124);
  v81 = *(v79 + 32);
  v82 = v93;
  v81(v93, v78, v80);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  *(inited + 32) = sub_29D934258();
  *(inited + 40) = v84;
  *(inited + 48) = sub_29D934288();
  *(inited + 56) = v85;
  v86 = sub_29D9340C8();
  sub_29D7AF194(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v86(&v127, 0);
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v87 = swift_initStackObject();
  *(v87 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    *(v87 + 32) = result;
    sub_29D7AF564(v87, &qword_2A1A24940, 0x29EDBACB8, &qword_2A1A24938, &qword_2A1A248B0);
    swift_setDeallocating();
    v89 = *(v87 + 16);
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934078();

    v90 = v98;
    v91 = v124;
    v81(v98, v82, v124);
    return (v126)(v90, 0, 1, v91);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D7A96E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v86 = *v2;
  v95 = sub_29D934058();
  v94 = *(v95 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v95, v5);
  v92 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v93 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D9340F8();
  v18 = *(v17 - 8);
  v102 = v17;
  v103 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D937898();
  v101 = *(v23 - 8);
  v24 = *(v101 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v85 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v80 - v29;
  v100 = sub_29D7A658C([a1 nextMeasurement]);
  v32 = v31;
  v99 = [a1 wakeUpCount];
  v98 = [a1 bedTimeCount];
  v97 = [a1 isComplete];
  sub_29D937838();
  sub_29D935E88();
  v33 = a1;
  v34 = sub_29D937878();
  v35 = sub_29D93A268();

  LODWORD(v89) = v35;
  v36 = os_log_type_enabled(v34, v35);
  v96 = v23;
  v82 = v22;
  v84 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v104 = v38;
    *v37 = 136446978;
    v39 = sub_29D93AF08();
    v41 = sub_29D6C2364(v39, v40, &v104);
    v80 = v12;
    v42 = v41;

    *(v37 + 4) = v42;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D961FF0, &v104);
    v81 = v8;
    v43 = v7;
    *(v37 + 22) = 2080;
    v106 = v100;
    v107 = v32;
    v108 = v99;
    v109 = v98;
    v110 = v97;
    sub_29D935E88();
    v44 = sub_29D939DA8();
    v46 = sub_29D6C2364(v44, v45, &v104);

    *(v37 + 24) = v46;
    *(v37 + 32) = 2080;
    v47 = v33;
    v48 = [v47 description];
    v49 = sub_29D939D68();
    v51 = v50;

    v12 = v80;
    v52 = v49;
    v7 = v43;
    v8 = v81;
    v53 = sub_29D6C2364(v52, v51, &v104);

    *(v37 + 34) = v53;
    _os_log_impl(&dword_29D677000, v34, v89, "[%{public}s.%{public}s]: created viewModel %s from %s", v37, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v38, -1, -1);
    MEMORY[0x29ED6BE30](v37, -1, -1);

    v54 = *(v101 + 8);
    v55 = v30;
    v56 = v96;
  }

  else
  {

    v54 = *(v101 + 8);
    v55 = v30;
    v56 = v23;
  }

  v83 = v54;
  v54(v55, v56);
  v90 = v7;
  v87 = v32;
  v89 = type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider(0);
  v106 = v100;
  v107 = v32;
  v108 = v99;
  v109 = v98;
  v110 = v97;
  type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler();
  v100 = "reminderNotification";
  (*(v8 + 104))(v12, *MEMORY[0x29EDC3740], v7);
  v99 = sub_29D933FE8();
  v104 = 0;
  v105 = 0xE000000000000000;
  sub_29D93AA18();
  v57 = v8;
  v59 = *(v91 + 16);
  v58 = *(v91 + 24);
  sub_29D935E88();

  v104 = v59;
  v105 = v58;
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D961FD0);
  v60 = v94;
  v61 = v12;
  v62 = v92;
  v63 = v95;
  (*(v94 + 104))(v92, *MEMORY[0x29EDC1B28], v95);
  sub_29D7B08FC(&qword_2A17B4BD0, 255, type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider);
  sub_29D7B08FC(&qword_2A17B1648, 255, type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler);
  v64 = v99;
  v65 = v93;
  sub_29D934028();

  (*(v60 + 8))(v62, v63);
  (*(v57 + 8))(v61, v90);
  v66 = v102;
  v67 = v103;
  v68 = *(v103 + 56);
  v68(v65, 0, 1, v102);
  v69 = v65;
  v70 = *(v67 + 32);
  v71 = v82;
  v70(v82, v69, v66);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934258();
  *(inited + 40) = v73;
  v74 = sub_29D9340C8();
  sub_29D7AF194(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v74(&v106, 0);
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    v77 = result;

    *(v75 + 32) = v77;
    sub_29D7AF564(v75, &qword_2A1A24940, 0x29EDBACB8, &qword_2A1A24938, &qword_2A1A248B0);
    swift_setDeallocating();
    v78 = *(v75 + 16);
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934078();
    v79 = v88;
    v70(v88, v71, v66);
    return (v68)(v79, 0, 1, v66);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D7AA374@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v104 = a3;
  v103 = *v3;
  v114 = sub_29D934058();
  v113 = *(v114 - 8);
  v6 = *(v113 + 8);
  MEMORY[0x2A1C7C4A8](v114, v7);
  v110 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_29D933F58();
  v111 = *(v119 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v119, v10);
  v109 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v112 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29D9340F8();
  v118 = *(v115 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v115, v17);
  v100 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_29D937898();
  v116 = *(v117 - 8);
  v19 = *(v116 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v117, v20);
  v102 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v107 = &v99 - v24;
  v25 = sub_29D9339F8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v99 - v33;
  v35 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v101 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v105 = &v99 - v42;
  MEMORY[0x2A1C7C4A8](v41, v43);
  v120 = &v99 - v44;
  v45 = [a1 startDate];
  sub_29D933998();

  v46 = *(v26 + 16);
  v46(v31, v34, v25);
  v106 = a2;
  v47 = [a2 datesWithSamples];
  sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
  v48 = sub_29D93A0D8();

  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = sub_29D702AC8(*(v48 + 16), 0);
    v51 = sub_29D7AEA0C(&v121, (v50 + ((*(v26 + 80) + 32) & ~*(v26 + 80))), v49, v48);
    sub_29D7AF2E8();
    if (v51 == v49)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v50 = MEMORY[0x29EDCA190];
LABEL_5:
  v52 = v120;
  v46((v120 + *(v35 + 24)), v31, v25);
  *(v52 + *(v35 + 20)) = v50;
  sub_29D6966E8();
  v53 = *(v26 + 8);
  v53(v31, v25);
  v53(v34, v25);
  v54 = v107;
  sub_29D937838();
  v55 = v105;
  sub_29D7AF2F0(v52, v105, type metadata accessor for MonitorHypertensionSummaryViewModel);
  v56 = v106;
  v57 = sub_29D937878();
  v58 = sub_29D93A268();

  v59 = os_log_type_enabled(v57, v58);
  v106 = v56;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v121 = v99;
    *v60 = 136446978;
    v61 = sub_29D93AF08();
    v63 = sub_29D6C2364(v61, v62, &v121);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2082;
    *(v60 + 14) = sub_29D6C2364(0xD000000000000034, 0x800000029D962100, &v121);
    *(v60 + 22) = 2080;
    sub_29D7AF2F0(v55, v101, type metadata accessor for MonitorHypertensionSummaryViewModel);
    v64 = sub_29D939DA8();
    v66 = v65;
    sub_29D7B079C(v55, type metadata accessor for MonitorHypertensionSummaryViewModel);
    v67 = sub_29D6C2364(v64, v66, &v121);

    *(v60 + 24) = v67;
    *(v60 + 32) = 2080;
    v68 = v56;
    v69 = [v68 description];
    v70 = sub_29D939D68();
    v72 = v71;

    v73 = sub_29D6C2364(v70, v72, &v121);

    *(v60 + 34) = v73;
    _os_log_impl(&dword_29D677000, v57, v58, "[%{public}s.%{public}s]: created viewModel %s from %s", v60, 0x2Au);
    v74 = v99;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v74, -1, -1);
    MEMORY[0x29ED6BE30](v60, -1, -1);
  }

  else
  {

    sub_29D7B079C(v55, type metadata accessor for MonitorHypertensionSummaryViewModel);
  }

  v107 = *(v116 + 8);
  (v107)(v54, v117);
  v75 = v113;
  v76 = v119;
  v77 = v111;
  type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider(0);
  type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler();
  v113 = "reminderNotification";
  v78 = v109;
  (*(v77 + 104))(v109, *MEMORY[0x29EDC3740], v76);
  v111 = sub_29D933FE8();
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_29D93AA18();
  v80 = *(v108 + 16);
  v79 = *(v108 + 24);
  sub_29D935E88();

  v121 = v80;
  v122 = v79;
  MEMORY[0x29ED6A240](0xD00000000000001BLL, 0x800000029D9620E0);
  v81 = v110;
  v82 = v114;
  (*(v75 + 13))(v110, *MEMORY[0x29EDC1B28], v114);
  sub_29D7B08FC(&qword_2A17B4BD8, 255, type metadata accessor for MonitorHypertensionJournalSummaryViewConfigurationProvider);
  sub_29D7B08FC(&qword_2A17B1648, 255, type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler);
  v83 = v81;
  v84 = v111;
  v85 = v112;
  sub_29D934028();

  (*(v75 + 1))(v83, v82);
  (*(v77 + 8))(v78, v119);
  v86 = v118;
  v87 = *(v118 + 56);
  v88 = v115;
  v87(v85, 0, 1, v115);
  v89 = v85;
  v90 = *(v86 + 32);
  v91 = v100;
  v90(v100, v89, v88);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934258();
  *(inited + 40) = v93;
  v94 = sub_29D9340C8();
  sub_29D7AF194(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v94(&v121, 0);
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    *(v95 + 32) = result;
    sub_29D7AF564(v95, &qword_2A1A24940, 0x29EDBACB8, &qword_2A1A24938, &qword_2A1A248B0);
    swift_setDeallocating();
    v97 = *(v95 + 16);
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934078();
    sub_29D7B079C(v120, type metadata accessor for MonitorHypertensionSummaryViewModel);
    v98 = v104;
    v90(v104, v91, v88);
    return (v87)(v98, 0, 1, v88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7AB280()
{
  v1 = *(v0 + 2);
  sub_29D936978();
  v2 = OBJC_IVAR____TtCC5Heart35BloodPressureJournalSummaryExecutor7Planner_signals;
  v3 = sub_29D937358();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7AB324()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(*(v1 + 16) + 8);
  return sub_29D9372E8();
}

uint64_t sub_29D7AB36C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29D7AB3C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5Heart35BloodPressureJournalSummaryExecutor7Planner_signals;
  v4 = sub_29D937358();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D7AB438()
{
  v1 = *v0;
  sub_29D7AF6D0();
  v2 = v0[2];
  v3 = v0[3];
  v6[3] = swift_getObjectType();
  v6[4] = *(v3 + 8);
  v6[0] = v2;
  v4 = *(*(v3 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29D9374E8();
  sub_29D936978();

  return sub_29D69417C(v6);
}

uint64_t sub_29D7AB564(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29D7B08FC(&qword_2A1A23B98, 255, type metadata accessor for BloodPressureJournalSummaryExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29D7AB640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29D7B08FC(&qword_2A1A23B98, 255, type metadata accessor for BloodPressureJournalSummaryExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29D7AB700()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalSummaryExecutor.Planner()
{
  result = qword_2A1A23B78;
  if (!qword_2A1A23B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7AB7C0()
{
  result = sub_29D937358();
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

void sub_29D7AB8A8()
{
  if (!qword_2A17B4B80)
  {
    sub_29D7B072C(255, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
    sub_29D7AB974(&qword_2A17B4B98);
    sub_29D7AB974(&unk_2A17B4BA0);
    v0 = sub_29D937458();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4B80);
    }
  }
}

uint64_t sub_29D7AB974(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D7B072C(255, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D7AB9D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D7A67FC(a1);
}

uint64_t sub_29D7ABA68(uint64_t a1)
{
  v3 = sub_29D937358();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 16);
  v15 = *(v1 + 32);
  v9(v8, a1, v3);
  v10 = type metadata accessor for BloodPressureJournalSummaryExecutor.Planner();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  (*(v4 + 32))(v13 + OBJC_IVAR____TtCC5Heart35BloodPressureJournalSummaryExecutor7Planner_signals, v8, v3);
  swift_unknownObjectRetain();
  return v13;
}

uint64_t sub_29D7ABB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29D7B08FC(qword_2A1A23AC0, a2, type metadata accessor for BloodPressureJournalSummaryExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

void sub_29D7ABC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D7ABCF8()
{
  result = qword_2A17B4BC0;
  if (!qword_2A17B4BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B4BC0);
  }

  return result;
}

uint64_t sub_29D7ABD5C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v8 = sub_29D93AE98();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_29D939D68();
      v15 = v14;
      if (v13 == sub_29D939D68() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_29D93AD78();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_29D7AD2B0(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_29D7ABF08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_29D93AE58();
  sub_29D939E18();
  v9 = sub_29D93AE98();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_29D93AD78() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;
    sub_29D935E88();
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_29D935E88();
    sub_29D7AD498(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D7AC07C(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;
    sub_29D935E88();
    v17 = sub_29D93A938();

    if (v17)
    {

      sub_29D69567C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_29D93A928();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_29D7AC5E0(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_29D7ACCBC(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_29D7AD22C(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_29D69567C(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_29D93A6F8();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_29D93A708();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_29D7AD8C4(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D7AC2F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
  v37 = a2;
  v14 = sub_29D939C88();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_29D7B08FC(&qword_2A17B4C90, 255, MEMORY[0x29EDB9BC8]);
      v24 = sub_29D939CF8();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_29D7AD618(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_29D7AC5E0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29D6E5AE4(0, a3, a4, a5, a6);
    v10 = sub_29D93A9D8();
    v24 = v10;
    sub_29D93A8D8();
    if (sub_29D93A958())
    {
      sub_29D69567C(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_29D7ACCBC(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_29D93A6F8();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_29D93A958());
    }
  }

  else
  {
    sub_29D936978();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

uint64_t sub_29D7AC7F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D7B0864();
  result = sub_29D93A9C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_29D939D68();
      sub_29D93AE58();
      sub_29D939E18();
      v20 = sub_29D93AE98();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_29D7ACA68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D6E5ED0();
  result = sub_29D93A9C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_29D7ACCBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29D6E5AE4(0, a2, a3, a4, a5);
  result = sub_29D93A9C8();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_29D93A6F8();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_29D7ACED8(uint64_t a1)
{
  v2 = v1;
  v42 = sub_29D9339F8();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x2A1C7C4A8](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_29D7B0944();
  result = sub_29D93A9C8();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
      result = sub_29D939C88();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_29D7AD22C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_29D93A6F8();
  v5 = -1 << *(a2 + 32);
  result = sub_29D93A8B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D7AD2B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_29D7AC7F8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_29D7ADA6C();
      goto LABEL_16;
    }

    sub_29D7AE07C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v11 = sub_29D93AE98();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_29D939D68();
      v17 = v16;
      if (v15 == sub_29D939D68() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_29D93AD78();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_29D93ADB8();
  __break(1u);
  return result;
}

uint64_t sub_29D7AD498(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D7ACA68(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29D7ADBB0();
      goto LABEL_16;
    }

    sub_29D7AE2C4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_29D93AE58();
  sub_29D939E18();
  result = sub_29D93AE98();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29D93AD78();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29D93ADB8();
  __break(1u);
  return result;
}

uint64_t sub_29D7AD618(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D7ACED8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_29D7ADE54();
      goto LABEL_12;
    }

    sub_29D7AE6F8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
  v16 = sub_29D939C88();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_29D7B08FC(&qword_2A17B4C90, 255, MEMORY[0x29EDB9BC8]);
      v24 = sub_29D939CF8();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D93ADB8();
  __break(1u);
  return result;
}

void sub_29D7AD8C4(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_29D7ACCBC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D7ADD00(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_29D7AE4F0(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_29D93A6F8();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_29D69567C(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_29D93A708();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29D93ADB8();
  __break(1u);
}

id sub_29D7ADA6C()
{
  v1 = v0;
  sub_29D7B0864();
  v2 = *v0;
  v3 = sub_29D93A9B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_29D7ADBB0()
{
  v1 = v0;
  sub_29D6E5ED0();
  v2 = *v0;
  v3 = sub_29D93A9B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_29D935E88();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_29D7ADD00(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29D6E5AE4(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29D93A9B8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_29D7ADE54()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B0944();
  v8 = *v0;
  v9 = sub_29D93A9B8();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_29D7AE07C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D7B0864();
  result = sub_29D93A9C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_29D939D68();
      sub_29D93AE58();
      v20 = v18;
      sub_29D939E18();
      v21 = sub_29D93AE98();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_29D7AE2C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D6E5ED0();
  result = sub_29D93A9C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      result = sub_29D93AE98();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_29D7AE4F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29D6E5AE4(0, a2, a3, a4, a5);
  result = sub_29D93A9C8();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_29D93A6F8();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_29D7AE6F8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_29D9339F8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_29D7B0944();
  v11 = sub_29D93A9C8();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
      result = sub_29D939C88();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_29D7AEA0C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_29D9339F8();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_29D7AECB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_29D9339F8();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 64;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_29D7AEF54(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_29D93A8D8();
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  sub_29D6E5B70(&qword_2A1A24920, &qword_2A1A24930, 0x29EDBAD78);
  result = sub_29D93A118();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29D93A958())
      {
        goto LABEL_30;
      }

      sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_29D7AF194(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_29D935E88();
      sub_29D7ABF08(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_29D7AF204(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v4 = v3;
  v5 = sub_29D7B08FC(&qword_2A17B13E8, 255, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  result = MEMORY[0x29ED6A4E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29D7ABD5C(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29D7AF2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7AF3A0(uint64_t a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_29D7B08FC(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
  result = MEMORY[0x29ED6A4E0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_29D7AC2F8(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_29D7AF564(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D93A928())
  {
    v11 = sub_29D69567C(0, a2, a3);
    v12 = sub_29D6E5B70(a4, a2, a3);
    result = MEMORY[0x29ED6A4E0](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x29ED6AE30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29D7AC07C(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_29D93A928();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_29D7AF6D0()
{
  v0 = sub_29D9374B8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D937308();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D940030;
  sub_29D9372F8();
  sub_29D7B07FC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D93F680;
  *(v7 + 56) = sub_29D937498();
  *(v7 + 64) = sub_29D7B08FC(&qword_2A1A246B8, 255, MEMORY[0x29EDC35C0]);
  sub_29D693F78((v7 + 32));
  sub_29D9374A8();
  sub_29D937488();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D6E3724(inited);
    swift_setDeallocating();
    v10 = *(inited + 16);
    swift_arrayDestroy();
    *(v7 + 96) = sub_29D934488();
    *(v7 + 104) = sub_29D7B08FC(&unk_2A17B4C30, 255, MEMORY[0x29EDC3C08]);
    sub_29D693F78((v7 + 72));
    sub_29D934478();
    v11 = sub_29D937328();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    *(v6 + 32) = sub_29D937318();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7AF988()
{
  v100 = *v0;
  sub_29D7B072C(0, &unk_2A17B4B88, MEMORY[0x29EDBA218]);
  v97 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v96 = &v89 - v4;
  v5 = sub_29D937368();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9373B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v95 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9373E8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v99 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v101 = sub_29D937898();
  v17 = *(v101 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v101, v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v91 = &v89 - v24;
  v25 = MEMORY[0x29EDC9C68];
  sub_29D7ABC94(0, &qword_2A17B4BE0, type metadata accessor for BloodPressureJournalAnchor, MEMORY[0x29EDC9C68]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8, v28);
  v30 = &v89 - v29;
  v31 = sub_29D9374B8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ABC94(0, &qword_2A17B4BE8, sub_29D7B05AC, v25);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v37 - 8, v39);
  v41 = &v89 - v40;
  sub_29D7B05AC();
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v42, v46);
  v98 = &v89 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D937468();
  sub_29D9374A8();
  if (*(v48 + 16) && (v49 = sub_29D69093C(v36), (v50 & 1) != 0))
  {
    sub_29D6945AC(*(v48 + 56) + 40 * v49, v103);
    (*(v32 + 8))(v36, v31);

    sub_29D6B7370(0, &qword_2A17B4C10);
    v51 = swift_dynamicCast();
    (*(v44 + 56))(v41, v51 ^ 1u, 1, v43);
    if ((*(v44 + 48))(v41, 1, v43) != 1)
    {
      (*(v44 + 32))(v98, v41, v43);
      sub_29D937418();
      v52 = type metadata accessor for BloodPressureJournalAnchor();
      if ((*(*(v52 - 8) + 48))(v30, 1, v52) == 1)
      {
        sub_29D7B06BC(v30, &qword_2A17B4BE0, type metadata accessor for BloodPressureJournalAnchor);
        v53 = 0;
      }

      else
      {
        v53 = sub_29D939AE8();
        sub_29D7B079C(v30, type metadata accessor for BloodPressureJournalAnchor);
      }

      v62 = v91;
      v91 = v53;
      sub_29D937838();
      v63 = v53;
      v64 = sub_29D937878();
      v65 = sub_29D93A268();
      v90 = v63;

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v103[0] = v67;
        *v66 = 136315394;
        v68 = sub_29D93AF08();
        v70 = sub_29D6C2364(v68, v69, v103);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        v102 = v91;
        sub_29D7B072C(0, &unk_2A1A221C0, MEMORY[0x29EDC9C68]);
        v71 = v90;
        v72 = sub_29D939DA8();
        v74 = sub_29D6C2364(v72, v73, v103);

        *(v66 + 14) = v74;
        _os_log_impl(&dword_29D677000, v64, v65, "[%s] Creating work plan with journal: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v67, -1, -1);
        MEMORY[0x29ED6BE30](v66, -1, -1);
      }

      (*(v17 + 8))(v62, v101);
      v75 = MEMORY[0x29EDC9E90];
      sub_29D7ABC94(0, &qword_2A17B4C18, sub_29D7AB8A8, MEMORY[0x29EDC9E90]);
      sub_29D7AB8A8();
      v77 = *(*(v76 - 8) + 72);
      v100 = (*(*(v76 - 8) + 80) + 32) & ~*(*(v76 - 8) + 80);
      v78 = swift_allocObject();
      v101 = xmmword_29D93DDB0;
      *(v78 + 16) = xmmword_29D93DDB0;
      sub_29D9373D8();
      sub_29D7ABC94(0, &qword_2A17B4C20, MEMORY[0x29EDC3518], v75);
      v79 = *(sub_29D937388() - 8);
      v80 = *(v79 + 72);
      v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      *(swift_allocObject() + 16) = v101;
      sub_29D7ABC94(0, &qword_2A17B4C28, MEMORY[0x29EDC3618], v75);
      v82 = *(sub_29D9374D8() - 8);
      v83 = *(v82 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      *(swift_allocObject() + 16) = v101;
      sub_29D9374C8();
      v85 = v92;
      v86 = *(v93 + 104);
      v87 = v94;
      v86(v92, *MEMORY[0x29EDC3508], v94);
      sub_29D937378();
      v86(v85, *MEMORY[0x29EDC34F8], v87);
      sub_29D937378();
      sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
      v88 = v90;
      sub_29D939B18();
      sub_29D7AB974(&qword_2A17B4B98);
      sub_29D7AB974(&unk_2A17B4BA0);
      sub_29D937438();

      (*(v44 + 8))(v98, v43);
      return v78;
    }
  }

  else
  {

    (*(v32 + 8))(v36, v31);
    (*(v44 + 56))(v41, 1, 1, v43);
  }

  sub_29D7B06BC(v41, &qword_2A17B4BE8, sub_29D7B05AC);
  sub_29D937838();
  v54 = sub_29D937878();
  v55 = sub_29D93A288();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v103[0] = v57;
    *v56 = 136315138;
    v58 = sub_29D93AF08();
    v60 = sub_29D6C2364(v58, v59, v103);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_29D677000, v54, v55, "[%s] Can't create a work plan, missing anchor for bloodPressureJournal.", v56, 0xCu);
    sub_29D69417C(v57);
    MEMORY[0x29ED6BE30](v57, -1, -1);
    MEMORY[0x29ED6BE30](v56, -1, -1);
  }

  (*(v17 + 8))(v22, v101);
  return MEMORY[0x29EDCA190];
}

void sub_29D7B05AC()
{
  if (!qword_2A17B4BF0)
  {
    type metadata accessor for BloodPressureJournalAnchor();
    sub_29D7B08FC(&unk_2A17B6250, 255, type metadata accessor for BloodPressureJournalAnchor);
    sub_29D7B08FC(&unk_2A17B4C00, 255, type metadata accessor for BloodPressureJournalAnchor);
    sub_29D7B08FC(&qword_2A17B6260, 255, type metadata accessor for BloodPressureJournalAnchor);
    v0 = sub_29D937428();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4BF0);
    }
  }
}

uint64_t sub_29D7B06BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7ABC94(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}