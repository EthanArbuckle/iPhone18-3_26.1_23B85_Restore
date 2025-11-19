uint64_t sub_29D8B3D80(uint64_t *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29D8B5188(0, &qword_2A17B7460, sub_29D8B48D8, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OffCodingKeys, MEMORY[0x29EDC9E80]);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v47 = &v40 - v6;
  sub_29D8B5188(0, &qword_2A17B7470, sub_29D8B492C, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OnCodingKeys, v2);
  v45 = v7;
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v46 = &v40 - v10;
  sub_29D8B5188(0, &qword_2A17B7480, sub_29D8B4980, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.DisabledCodingKeys, v2);
  v12 = v11;
  v41 = *(v11 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v40 - v15;
  sub_29D8B5188(0, &qword_2A17B7490, sub_29D8B49D4, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.CodingKeys, v2);
  v18 = v17;
  v48 = *(v17 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v40 - v21;
  v23 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B49D4();
  v24 = v49;
  sub_29D93AEC8();
  if (!v24)
  {
    v25 = v16;
    v49 = v12;
    v26 = v46;
    v27 = v47;
    v28 = sub_29D93AC98();
    v29 = (2 * *(v28 + 16)) | 1;
    v50 = v28;
    v51 = v28 + 32;
    v52 = 0;
    v53 = v29;
    v30 = sub_29D8741F4();
    v31 = v22;
    if (v30 == 3 || v52 != v53 >> 1)
    {
      v33 = sub_29D93AA78();
      v16 = swift_allocError();
      v35 = v34;
      sub_29D6CA748();
      v37 = *(v36 + 48);
      *v35 = &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x29EDC9DB8], v33);
      swift_willThrow();
      (*(v48 + 8))(v22, v18);
    }

    else
    {
      v16 = v30;
      if (v30)
      {
        v32 = v48;
        if (v30 != 1)
        {
          LODWORD(v49) = v30;
          v54 = 2;
          sub_29D8B48D8();
          sub_29D93AC08();
          (*(v43 + 8))(v27, v44);
          (*(v32 + 8))(v31, v18);
          sub_29D936978();
          v16 = v49;
          goto LABEL_9;
        }

        v54 = 1;
        sub_29D8B492C();
        sub_29D93AC08();
        (*(v42 + 8))(v26, v45);
        (*(v32 + 8))(v31, v18);
      }

      else
      {
        v54 = 0;
        sub_29D8B4980();
        sub_29D93AC08();
        v39 = v48;
        (*(v41 + 8))(v25, v49);
        (*(v39 + 8))(v22, v18);
      }
    }

    sub_29D936978();
  }

LABEL_9:
  sub_29D69417C(a1);
  return v16;
}

uint64_t sub_29D8B4394(uint64_t *a1)
{
  sub_29D8B5188(0, &qword_2A17B7538, sub_29D8B5134, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.Link.CodingKeys, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B5134();
  sub_29D93AEC8();
  if (!v1)
  {
    v14 = 0;
    v10 = sub_29D93AC58();
    v13 = 1;
    sub_29D93AC58();
    (*(v5 + 8))(v9, v4);
  }

  sub_29D69417C(a1);
  return v10;
}

uint64_t sub_29D8B45A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_29D8B5188(0, &qword_2A17B7438, sub_29D8B47DC, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.CodingKeys, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B47DC();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v12 = v21;
  LOBYTE(v22) = 0;
  v13 = sub_29D93AC58();
  v15 = v14;
  v16 = v13;
  v24 = 1;
  sub_29D8B4830();
  sub_29D93AC48();
  (*(v6 + 8))(v10, v5);
  v19 = v23;
  v20 = v22;
  result = sub_29D69417C(a1);
  *v12 = v16;
  *(v12 + 8) = v15;
  v18 = v19;
  *(v12 + 16) = v20;
  *(v12 + 32) = v18;
  return result;
}

unint64_t sub_29D8B47DC()
{
  result = qword_2A17B7440;
  if (!qword_2A17B7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7440);
  }

  return result;
}

unint64_t sub_29D8B4830()
{
  result = qword_2A17B7448;
  if (!qword_2A17B7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7448);
  }

  return result;
}

unint64_t sub_29D8B4884()
{
  result = qword_2A17B7458;
  if (!qword_2A17B7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7458);
  }

  return result;
}

unint64_t sub_29D8B48D8()
{
  result = qword_2A17B7468;
  if (!qword_2A17B7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7468);
  }

  return result;
}

unint64_t sub_29D8B492C()
{
  result = qword_2A17B7478;
  if (!qword_2A17B7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7478);
  }

  return result;
}

unint64_t sub_29D8B4980()
{
  result = qword_2A17B7488;
  if (!qword_2A17B7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7488);
  }

  return result;
}

unint64_t sub_29D8B49D4()
{
  result = qword_2A17B7498;
  if (!qword_2A17B7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7498);
  }

  return result;
}

unint64_t sub_29D8B4A9C()
{
  result = qword_2A17B74C0;
  if (!qword_2A17B74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74C0);
  }

  return result;
}

unint64_t sub_29D8B4AF4()
{
  result = qword_2A17B74C8;
  if (!qword_2A17B74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74C8);
  }

  return result;
}

unint64_t sub_29D8B4B4C()
{
  result = qword_2A17B74D0;
  if (!qword_2A17B74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74D0);
  }

  return result;
}

unint64_t sub_29D8B4BA4()
{
  result = qword_2A17B74D8;
  if (!qword_2A17B74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74D8);
  }

  return result;
}

unint64_t sub_29D8B4BFC()
{
  result = qword_2A17B74E0;
  if (!qword_2A17B74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74E0);
  }

  return result;
}

unint64_t sub_29D8B4C54()
{
  result = qword_2A17B74E8;
  if (!qword_2A17B74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74E8);
  }

  return result;
}

unint64_t sub_29D8B4CAC()
{
  result = qword_2A17B74F0;
  if (!qword_2A17B74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74F0);
  }

  return result;
}

unint64_t sub_29D8B4D04()
{
  result = qword_2A17B74F8;
  if (!qword_2A17B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B74F8);
  }

  return result;
}

unint64_t sub_29D8B4D5C()
{
  result = qword_2A17B7500;
  if (!qword_2A17B7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7500);
  }

  return result;
}

unint64_t sub_29D8B4DB4()
{
  result = qword_2A17B7508;
  if (!qword_2A17B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7508);
  }

  return result;
}

unint64_t sub_29D8B4E0C()
{
  result = qword_2A17B7510;
  if (!qword_2A17B7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7510);
  }

  return result;
}

unint64_t sub_29D8B4E64()
{
  result = qword_2A17B7518;
  if (!qword_2A17B7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7518);
  }

  return result;
}

unint64_t sub_29D8B4EBC()
{
  result = qword_2A17B7520;
  if (!qword_2A17B7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7520);
  }

  return result;
}

unint64_t sub_29D8B4F14()
{
  result = qword_2A17B7528;
  if (!qword_2A17B7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7528);
  }

  return result;
}

unint64_t sub_29D8B4F6C()
{
  result = qword_2A17B7530;
  if (!qword_2A17B7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7530);
  }

  return result;
}

uint64_t sub_29D8B4FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453686374697773 && a2 == 0xEB00000000657461;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xEF73757461745374 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000029D96C170 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_29D8B5134()
{
  result = qword_2A17B7540;
  if (!qword_2A17B7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7540);
  }

  return result;
}

void sub_29D8B5188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D8B5204()
{
  result = qword_2A17B7550;
  if (!qword_2A17B7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7550);
  }

  return result;
}

unint64_t sub_29D8B525C()
{
  result = qword_2A17B7558;
  if (!qword_2A17B7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7558);
  }

  return result;
}

unint64_t sub_29D8B52B4()
{
  result = qword_2A17B7560;
  if (!qword_2A17B7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7560);
  }

  return result;
}

uint64_t sub_29D8B530C(char a1, char a2, char a3, char a4, char a5)
{
  v11 = *v5;
  sub_29D8B5C1C(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v20 - v15;
  v17 = sub_29D93A028();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a1;
  *(v18 + 33) = a2;
  *(v18 + 34) = a3;
  *(v18 + 35) = a4 & 1;
  *(v18 + 36) = a5;
  *(v18 + 40) = v5;
  *(v18 + 48) = v11;

  sub_29D6BEBA4(0, 0, v16, &unk_29D952D20, v18);
}

id sub_29D8B5490()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = HKLogHeartRateCategory();
    v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 16)];

    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29D8B5520(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v8 + 144) = v10;
  *(v8 + 152) = v11;
  *(v8 + 197) = a8;
  *(v8 + 196) = a7;
  *(v8 + 195) = a6;
  *(v8 + 194) = a5;
  *(v8 + 193) = a4;
  return MEMORY[0x2A1C73D48](sub_29D8B555C, 0, 0);
}

uint64_t sub_29D8B555C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 197);
  v3 = *(v0 + 196);
  v4 = *(v0 + 195);
  v5 = *(v0 + 193);
  v6 = [HKPreferredRegulatoryDomainProvider() currentEstimate];
  *(v0 + 160) = v6;
  sub_29D936978();
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsEvent();
  v7 = swift_allocObject();
  *(v0 + 168) = v7;
  *(v7 + 16) = v5;
  *(v7 + 18) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v3 & 1;
  *(v7 + 33) = v2;
  v8 = v6;
  v9 = sub_29D8B5490();
  *(v0 + 176) = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_29D8B5720;
  v10 = swift_continuation_init();
  sub_29D6ACB00();
  *(v0 + 136) = v11;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29D8D0FE0;
  *(v0 + 104) = &unk_2A244C858;
  *(v0 + 112) = v10;

  [v9 submitEvent:v7 completion:v0 + 80];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29D8B5720()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    v4 = sub_29D8B58A8;
  }

  else
  {
    v5 = *(v1 + 168);

    v4 = sub_29D8B5838;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D8B5838()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29D8B58A8()
{
  v25 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = v4;
  v7 = sub_29D937878();
  v8 = sub_29D93A288();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[20];
  if (v9)
  {
    v12 = v0[19];
    v23 = v0[21];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 136446466;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] [Onboarding Analytics] Failed to submit analytics with error: %@", v13, 0x16u);
    sub_29D6ACA3C(v14);
    MEMORY[0x29ED6BE30](v14, -1, -1);
    sub_29D69417C(v15);
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_29D8B5B08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v14 = *(v1 + 35);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 36);
  v9 = *(v1 + 34);
  v10 = *(v1 + 33);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_29D6AC948;

  return sub_29D8B5520(a1, v4, v5, v11, v10, v9, v14, v8);
}

void sub_29D8B5C1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29D8B5CC8()
{
  sub_29D8B87C8(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D8B5D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v27 = &v24 - v6;
  sub_29D8B8F24(0, &qword_2A17B75D0, sub_29D8B8B48, &type metadata for RelatedSampleTypesCacheObject.DataTypeState.CodingKeys, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v26 = *(v7 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D9339F8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8B48();
  v20 = v28;
  sub_29D93AEC8();
  if (!v20)
  {
    v21 = v26;
    sub_29D8B8F8C(&qword_2A17B1558, MEMORY[0x29EDB9BC8]);
    v22 = v27;
    sub_29D93AC48();
    (*(v21 + 8))(v12, v8);
    sub_29D6A0A84(v22, v17);
    sub_29D8B8898(v17, v25, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
  }

  sub_29D69417C(a1);
  return sub_29D8B8EC4(v17, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
}

uint64_t sub_29D8B608C(void *a1)
{
  v3 = v1;
  sub_29D8B8F24(0, &qword_2A17B7640, sub_29D8B8E70, &type metadata for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8E70();
  sub_29D93AED8();
  v13 = *v3;
  v14 = v3[1];
  v19 = 0;
  sub_29D93ACE8();
  if (!v2)
  {
    v15 = *(type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0) + 20);
    v18 = 1;
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
    sub_29D8B8F8C(&qword_2A17B7648, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    sub_29D93AD18();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D8B6274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B8F24(0, &qword_2A17B7628, sub_29D8B8E70, &type metadata for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState.CodingKeys, MEMORY[0x29EDC9E80]);
  v31 = v7;
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8E70();
  v18 = v32;
  sub_29D93AEC8();
  if (v18)
  {
    return sub_29D69417C(a1);
  }

  v32 = a1;
  v19 = v29;
  v34 = 0;
  v20 = v31;
  *v16 = sub_29D93AC58();
  v16[1] = v21;
  v26 = v16;
  v27 = v21;
  v33 = 1;
  sub_29D8B8F8C(&qword_2A17B7638, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
  sub_29D93AC88();
  (*(v19 + 8))(v11, v20);
  v22 = *(v12 + 20);
  v23 = v26;
  sub_29D8B8900(v6, v26 + v22, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
  sub_29D8B8898(v23, v28, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
  sub_29D69417C(v32);
  return sub_29D8B8EC4(v23, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
}

uint64_t sub_29D8B65EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616470557473616CLL && a2 == 0xEF65746144646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D8B667C(uint64_t a1)
{
  v2 = sub_29D8B8B48();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B66B8(uint64_t a1)
{
  v2 = sub_29D8B8B48();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B670C(void *a1)
{
  sub_29D8B8F24(0, &qword_2A17B75E0, sub_29D8B8B48, &type metadata for RelatedSampleTypesCacheObject.DataTypeState.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8B48();
  sub_29D93AED8();
  sub_29D9339F8();
  sub_29D8B8F8C(&qword_2A17B1538, MEMORY[0x29EDB9BC8]);
  sub_29D93ACD8();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_29D8B68C8()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_29D8B6904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();

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

uint64_t sub_29D8B69E4(uint64_t a1)
{
  v2 = sub_29D8B8E70();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B6A20(uint64_t a1)
{
  v2 = sub_29D8B8E70();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B6AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000029D96C240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29D93AD78();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D8B6B3C(uint64_t a1)
{
  v2 = sub_29D8B8774();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B6B78(uint64_t a1)
{
  v2 = sub_29D8B8774();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B6BB4(void *a1, uint64_t a2)
{
  sub_29D8B882C();
  v73 = v5;
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v72 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v8, v10);
  v71 = &v57 - v11;
  v12 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v68 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B8F24(0, &qword_2A17B75A8, sub_29D8B8774, &type metadata for RelatedSampleTypesCacheObject.CodingKeys, MEMORY[0x29EDC9E88]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v16, v20);
  v62 = &v57 - v21;
  v22 = *(a2 + 16);
  v23 = MEMORY[0x29EDCA190];
  if (v22)
  {
    v58 = v18;
    v59 = v17;
    v60 = a1;
    v61 = v2;
    v77 = MEMORY[0x29EDCA190];
    sub_29D7EE8D8(0, v22, 0);
    v76 = v77;
    v24 = a2 + 64;
    v25 = -1 << *(a2 + 32);
    result = sub_29D93A898();
    v27 = result;
    v28 = 0;
    v29 = *(a2 + 36);
    v63 = a2 + 72;
    v64 = v22;
    v65 = v29;
    v66 = a2 + 64;
    v67 = a2;
    while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << *(a2 + 32))
    {
      v31 = v27 >> 6;
      if ((*(v24 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
      {
        goto LABEL_23;
      }

      if (v29 != *(a2 + 36))
      {
        goto LABEL_24;
      }

      v74 = v28;
      v75 = 1 << v27;
      v32 = v73;
      v33 = *(v73 + 48);
      v34 = *(a2 + 56);
      v35 = (*(a2 + 48) + 16 * v27);
      v37 = *v35;
      v36 = v35[1];
      v38 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
      v39 = v71;
      sub_29D8B8898(v34 + *(*(v38 - 8) + 72) * v27, &v71[v33], type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v40 = v72;
      *v72 = v37;
      *(v40 + 8) = v36;
      v41 = *(v32 + 48);
      sub_29D8B8900(&v39[v33], v40 + v41, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v42 = v68;
      sub_29D8B8898(v40 + v41, &v68[*(v70 + 20)], type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      *v42 = v37;
      v42[1] = v36;
      swift_bridgeObjectRetain_n();
      sub_29D8B8EC4(v40, sub_29D8B882C);
      v43 = v76;
      v77 = v76;
      v45 = *(v76 + 16);
      v44 = *(v76 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_29D7EE8D8(v44 > 1, v45 + 1, 1);
        v43 = v77;
      }

      *(v43 + 16) = v45 + 1;
      v46 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v76 = v43;
      result = sub_29D8B8900(v42, v43 + v46 + *(v69 + 72) * v45, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
      a2 = v67;
      v30 = 1 << *(v67 + 32);
      if (v27 >= v30)
      {
        goto LABEL_25;
      }

      v24 = v66;
      v47 = *(v66 + 8 * v31);
      if ((v47 & v75) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v29) = v65;
      if (v65 != *(v67 + 36))
      {
        goto LABEL_27;
      }

      v48 = v47 & (-2 << (v27 & 0x3F));
      if (v48)
      {
        v30 = __clz(__rbit64(v48)) | v27 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v31 << 6;
        v50 = v31 + 1;
        v51 = (v63 + 8 * v31);
        while (v50 < (v30 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            result = sub_29D703574(v27, v65, 0);
            v30 = __clz(__rbit64(v52)) + v49;
            goto LABEL_4;
          }
        }

        result = sub_29D703574(v27, v65, 0);
      }

LABEL_4:
      v28 = v74 + 1;
      v27 = v30;
      if (v74 + 1 == v64)
      {
        a1 = v60;
        v18 = v58;
        v17 = v59;
        v23 = v76;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v77 = v23;
    swift_getKeyPath();
    sub_29D8B87C8(0, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
    sub_29D8B8968();
    v54 = sub_29D939E98();

    v55 = a1[4];
    sub_29D693E2C(a1, a1[3]);
    sub_29D8B8774();
    v56 = v62;
    sub_29D93AED8();
    v77 = v54;
    sub_29D8B89F0(&qword_2A17B75B8, &qword_2A17B75C0);
    sub_29D93AD18();
    (*(v18 + 8))(v56, v17);
  }

  return result;
}

uint64_t sub_29D8B71E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D8B8258(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29D8B7228(uint64_t a1, uint64_t a2)
{
  v104 = sub_29D9339F8();
  v4 = *(v104 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v104, v6);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v84 - v12;
  sub_29D6B0ABC();
  v102 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v19 - 8, v22);
  v101 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v84 - v27;
  MEMORY[0x2A1C7C4A8](v26, v29);
  v100 = &v84 - v30;
  sub_29D8B87C8(0, &qword_2A17B75C8, sub_29D8B882C, v8);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x2A1C7C4A8](v31 - 8, v33);
  v36 = (&v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x2A1C7C4A8](v34, v37);
  v103 = (&v84 - v39);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v96 = v28;
  v97 = v20;
  v98 = v18;
  v99 = a2;
  v89 = v13;
  v40 = 0;
  v92 = a1;
  v43 = *(a1 + 64);
  v42 = a1 + 64;
  v41 = v43;
  v44 = 1 << *(v42 - 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v41;
  v85 = (v44 + 63) >> 6;
  v86 = v42;
  v94 = v36;
  v95 = (v4 + 48);
  v87 = (v4 + 32);
  v88 = (v4 + 8);
  while (1)
  {
    v47 = v97;
    if (!v46)
    {
      break;
    }

    v48 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v49 = v48 | (v40 << 6);
    v51 = v98;
    v50 = v99;
LABEL_16:
    v56 = (*(v92 + 48) + 16 * v49);
    v57 = *v56;
    v58 = v56[1];
    v59 = v100;
    sub_29D8B8898(*(v92 + 56) + *(v97 + 72) * v49, v100, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    sub_29D8B882C();
    v61 = v60;
    v62 = *(v60 + 48);
    *v36 = v57;
    v36[1] = v58;
    sub_29D8B8900(v59, v36 + v62, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    (*(*(v61 - 8) + 56))(v36, 0, 1, v61);
    sub_29D935E88();
LABEL_17:
    v63 = v103;
    sub_29D8B8AB4(v36, v103);
    sub_29D8B882C();
    v64 = (*(*(v61 - 8) + 48))(v63, 1, v61);
    v65 = v64 == 1;
    if (v64 == 1)
    {
      return v65;
    }

    v66 = v63;
    v68 = *v63;
    v67 = v63[1];
    v69 = v96;
    sub_29D8B8900(v66 + *(v61 + 48), v96, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    v70 = sub_29D6907F0(v68, v67);
    LOBYTE(v68) = v71;

    if ((v68 & 1) == 0)
    {
      v82 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState;
      v83 = v69;
      goto LABEL_30;
    }

    v72 = *(v50 + 56) + *(v47 + 72) * v70;
    v73 = v101;
    sub_29D8B8898(v72, v101, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
    v74 = *(v102 + 48);
    sub_29D6A0A20(v73, v51);
    sub_29D6A0A20(v69, v51 + v74);
    v75 = *v95;
    v76 = v104;
    if ((*v95)(v51, 1, v104) == 1)
    {
      sub_29D8B8EC4(v73, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      sub_29D8B8EC4(v69, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      if (v75(v51 + v74, 1, v104) != 1)
      {
        goto LABEL_29;
      }

      result = sub_29D6A0D34(v51);
      v36 = v94;
    }

    else
    {
      v93 = v46;
      v77 = v89;
      sub_29D6A0A20(v51, v89);
      if (v75(v51 + v74, 1, v76) == 1)
      {
        sub_29D8B8EC4(v73, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
        sub_29D8B8EC4(v69, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
        (*v88)(v77, v76);
LABEL_29:
        v82 = sub_29D6B0ABC;
        v83 = v51;
LABEL_30:
        sub_29D8B8EC4(v83, v82);
        return 0;
      }

      v78 = v51 + v74;
      v79 = v90;
      (*v87)(v90, v78, v76);
      sub_29D8B8F8C(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
      v91 = sub_29D939CF8();
      v80 = *v88;
      (*v88)(v79, v76);
      sub_29D8B8EC4(v73, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      sub_29D8B8EC4(v69, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v80(v77, v76);
      result = sub_29D6A0D34(v51);
      v46 = v93;
      v36 = v94;
      if ((v91 & 1) == 0)
      {
        return v65;
      }
    }
  }

  if (v85 <= v40 + 1)
  {
    v52 = v40 + 1;
  }

  else
  {
    v52 = v85;
  }

  v53 = v52 - 1;
  v51 = v98;
  v50 = v99;
  while (1)
  {
    v54 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v54 >= v85)
    {
      sub_29D8B882C();
      v61 = v81;
      (*(*(v81 - 8) + 56))(v36, 1, 1, v81);
      v46 = 0;
      v40 = v53;
      goto LABEL_17;
    }

    v55 = *(v86 + 8 * v54);
    ++v40;
    if (v55)
    {
      v46 = (v55 - 1) & v55;
      v49 = __clz(__rbit64(v55)) | (v54 << 6);
      v40 = v54;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_29D8B79FC(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73F6F0();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = *(a1 + 16);
  if (!v67)
  {
    goto LABEL_23;
  }

  v63 = v3;
  v64 = v8;
  v20 = a2;
  v21 = *(v16 + 48);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v66 = *(v17 + 72);
  v68 = a1;
  v62 = v22;
  sub_29D8B8898(a1 + v22, &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D73F6F0);
  v23 = v19[1];
  v71 = *v19;
  v24 = v71;
  v72 = v23;
  v65 = v21;
  sub_29D8B8900(v19 + v21, v12, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
  v25 = *a3;
  v27 = sub_29D6907F0(v24, v23);
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v26;
  if (v25[3] >= v30)
  {
    if (v20)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_29D693480();
      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_29D6913D4(v30, v20 & 1);
  v32 = *a3;
  v33 = sub_29D6907F0(v24, v23);
  if ((v31 & 1) == (v34 & 1))
  {
    v27 = v33;
    if ((v31 & 1) == 0)
    {
LABEL_13:
      v37 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v38 = (v37[6] + 16 * v27);
      *v38 = v24;
      v38[1] = v23;
      v39 = v37[7];
      v64 = *(v64 + 72);
      sub_29D8B8900(v12, v39 + v64 * v27, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v37[2] = v42;
        v43 = v68;
        if (v67 != 1)
        {
          v44 = v68 + v66 + v62;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_29D8B8898(v44, v19, sub_29D73F6F0);
            v46 = v19[1];
            v71 = *v19;
            v47 = v71;
            v72 = v46;
            sub_29D8B8900(v19 + v65, v12, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
            v48 = *a3;
            v49 = sub_29D6907F0(v47, v46);
            v51 = v48[2];
            v52 = (v50 & 1) == 0;
            v41 = __OFADD__(v51, v52);
            v53 = v51 + v52;
            if (v41)
            {
              goto LABEL_24;
            }

            v54 = v50;
            if (v48[3] < v53)
            {
              sub_29D6913D4(v53, 1);
              v55 = *a3;
              v49 = sub_29D6907F0(v47, v46);
              if ((v54 & 1) != (v56 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v54)
            {
              goto LABEL_10;
            }

            v57 = *a3;
            *(*a3 + 8 * (v49 >> 6) + 64) |= 1 << v49;
            v58 = (v57[6] + 16 * v49);
            *v58 = v47;
            v58[1] = v46;
            sub_29D8B8900(v12, v57[7] + v64 * v49, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
            v59 = v57[2];
            v41 = __OFADD__(v59, 1);
            v60 = v59 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v57[2] = v60;
            v44 += v66;
            v43 = v68;
            if (v67 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v35 = swift_allocError();
    swift_willThrow();
    v73 = v35;
    v36 = v35;
    sub_29D6A0CD0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_29D8B8EC4(v12, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_29D93ADC8();
  __break(1u);
LABEL_28:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000001BLL, 0x800000029D96C210);
  sub_29D93AB08();
  MEMORY[0x29ED6A240](39, 0xE100000000000000);
  sub_29D93AB28();
  __break(1u);
}

BOOL sub_29D8B7F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v26 - v13;
  sub_29D6B0ABC();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_29D6A0A20(a1, v20);
  sub_29D6A0A20(a2, &v20[v21]);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_29D6A0A20(v20, v14);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_29D8B8F8C(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
      v24 = sub_29D939CF8();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_29D6A0D34(v20);
      return (v24 & 1) != 0;
    }

    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_29D8B8EC4(v20, sub_29D6B0ABC);
    return 0;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_29D6A0D34(v20);
  return 1;
}

uint64_t sub_29D8B8258(uint64_t *a1)
{
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState(0);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D73F6F0();
  v9 = v8;
  v50 = *(v8 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D8B8F24(0, &qword_2A17B7578, sub_29D8B8774, &type metadata for RelatedSampleTypesCacheObject.CodingKeys, MEMORY[0x29EDC9E80]);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v41 - v17;
  v19 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B8774();
  v20 = v49;
  sub_29D93AEC8();
  v21 = v20;
  if (v20)
  {
    sub_29D69417C(a1);
    return v9;
  }

  v22 = v46;
  v49 = v9;
  sub_29D8B87C8(0, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
  sub_29D8B89F0(&qword_2A17B7590, &qword_2A17B7598);
  v23 = v48;
  sub_29D93AC88();
  v25 = v51;
  v26 = *(v51 + 16);
  if (v26)
  {
    v42 = v18;
    v43 = 0;
    v44 = a1;
    v51 = MEMORY[0x29EDCA190];
    v27 = v25;
    sub_29D7EE888(0, v26, 0);
    v28 = v51;
    v29 = *(v22 + 80);
    v41 = v27;
    v30 = v27 + ((v29 + 32) & ~v29);
    v31 = *(v22 + 72);
    v32 = v45;
    do
    {
      sub_29D8B8898(v30, v7, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
      v33 = *(v49 + 48);
      v34 = v7[1];
      *v13 = *v7;
      v13[1] = v34;
      sub_29D8B8900(v7 + *(v32 + 20), v13 + v33, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState);
      v51 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_29D7EE888(v35 > 1, v36 + 1, 1);
        v32 = v45;
        v28 = v51;
      }

      *(v28 + 16) = v36 + 1;
      sub_29D8B8900(v13, v28 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v36, sub_29D73F6F0);
      v30 += v31;
      --v26;
    }

    while (v26);

    v21 = v43;
    a1 = v44;
    v37 = v48;
    v18 = v42;
    if (*(v28 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v37 = v23;

    if (*(MEMORY[0x29EDCA190] + 16))
    {
LABEL_11:
      sub_29D6942F0();
      v38 = sub_29D93ABA8();
      goto LABEL_14;
    }
  }

  v38 = MEMORY[0x29EDCA198];
LABEL_14:
  v39 = v47;
  v51 = v38;
  v40 = sub_29D935E88();
  sub_29D8B79FC(v40, 1, &v51);
  if (!v21)
  {
    (*(v39 + 8))(v18, v37);

    v9 = v51;
    sub_29D69417C(a1);
    return v9;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_29D8B8774()
{
  result = qword_2A17B7580;
  if (!qword_2A17B7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7580);
  }

  return result;
}

void sub_29D8B87C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D8B882C()
{
  if (!qword_2A17B75A0)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B75A0);
    }
  }
}

uint64_t sub_29D8B8898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8B8900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D8B8968()
{
  result = qword_2A17B75B0;
  if (!qword_2A17B75B0)
  {
    sub_29D8B87C8(255, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B75B0);
  }

  return result;
}

uint64_t sub_29D8B89F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D8B87C8(255, &qword_2A17B7588, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState, MEMORY[0x29EDC9A40]);
    sub_29D8B8F8C(a2, type metadata accessor for RelatedSampleTypesCacheObject.DataTypeIdentifierAndState);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D8B8AB4(uint64_t a1, uint64_t a2)
{
  sub_29D8B87C8(0, &qword_2A17B75C8, sub_29D8B882C, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D8B8B48()
{
  result = qword_2A17B75D8;
  if (!qword_2A17B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B75D8);
  }

  return result;
}

uint64_t sub_29D8B8BE4()
{
  result = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D8B8C64()
{
  result = qword_2A17B75F8;
  if (!qword_2A17B75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B75F8);
  }

  return result;
}

unint64_t sub_29D8B8CBC()
{
  result = qword_2A17B7600;
  if (!qword_2A17B7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7600);
  }

  return result;
}

unint64_t sub_29D8B8D14()
{
  result = qword_2A17B7608;
  if (!qword_2A17B7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7608);
  }

  return result;
}

unint64_t sub_29D8B8D6C()
{
  result = qword_2A17B7610;
  if (!qword_2A17B7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7610);
  }

  return result;
}

unint64_t sub_29D8B8DC4()
{
  result = qword_2A17B7618;
  if (!qword_2A17B7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7618);
  }

  return result;
}

unint64_t sub_29D8B8E1C()
{
  result = qword_2A17B7620;
  if (!qword_2A17B7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7620);
  }

  return result;
}

unint64_t sub_29D8B8E70()
{
  result = qword_2A17B7630;
  if (!qword_2A17B7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7630);
  }

  return result;
}

uint64_t sub_29D8B8EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8B8F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D8B8F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D8B8FE8()
{
  result = qword_2A17B7650;
  if (!qword_2A17B7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7650);
  }

  return result;
}

unint64_t sub_29D8B9040()
{
  result = qword_2A17B7658;
  if (!qword_2A17B7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7658);
  }

  return result;
}

unint64_t sub_29D8B9098()
{
  result = qword_2A17B7660;
  if (!qword_2A17B7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7660);
  }

  return result;
}

uint64_t sub_29D8B914C()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE98;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t sub_29D8B93C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1 + v5, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_29D8B9490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_29D8BB990(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v20 - v10;
  v12 = sub_29D9339F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A0A20(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_29D6A0D34(v11);
  }

  (*(v13 + 32))(v17, v11, v12);
  v19 = *a4;
  swift_beginAccess();
  (*(v13 + 24))(a3 + v19, v17, v12);
  swift_endAccess();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_29D8B9678()
{
  sub_29D9364E8();
  sub_29D93A348();
  sub_29D935D48();
  sub_29D93A368();
  sub_29D936748();
  return sub_29D93A358();
}

uint64_t sub_29D8B96E0()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v17[-v8];
  if (sub_29D935F28())
  {
    sub_29D935CC8();
    sub_29D935CA8();
    v10 = *(v1 + 8);
    v10(v6, v0);
    v11 = sub_29D935CE8();
    *(v12 + 16) = 0x4024000000000000;
    v11(v17, 0);
    sub_29D935F18();
    v13 = sub_29D935CF8();
    sub_29D936978();
    v10(v9, v0);
  }

  else
  {
    sub_29D935CB8();
    v14 = sub_29D935CE8();
    *(v15 + 16) = 0x4024000000000000;
    v14(v17, 0);
    sub_29D935F18();
    v13 = sub_29D935CF8();
    sub_29D936978();
    (*(v1 + 8))(v9, v0);
  }

  return v13;
}

uint64_t sub_29D8B98D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  v5 = sub_29D933A58();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8BB990(0, &qword_2A17B7090, MEMORY[0x29EDC23D8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v53 = &v49 - v12;
  v13 = sub_29D933AA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v16 = sub_29D939D18();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v49 - v24;
  v26 = *MEMORY[0x29EDC8048];
  if (sub_29D939D68() == a1 && v27 == a2)
  {

    if (sub_29D933DA8())
    {
      goto LABEL_7;
    }
  }

  else
  {
    v29 = sub_29D93AD78();

    if ((v29 & 1) == 0 || sub_29D933DA8())
    {
LABEL_7:
      v30 = *MEMORY[0x29EDC8040];
      if (sub_29D939D68() == a1 && v31 == a2)
      {
      }

      else
      {
        v38 = sub_29D93AD78();

        if ((v38 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (sub_29D933DA8() == 1)
      {
        sub_29D939D08();
        if (qword_2A1A242C0 != -1)
        {
          swift_once();
        }

        v39 = qword_2A1A2BE98;
        (*(v17 + 16))(v22, v25, v16);
        sub_29D935E88();
        v40 = v39;
        sub_29D933A98();
        sub_29D939D98();
        (*(v17 + 8))(v25, v16);
        v55 = 0x74497265746F6F46;
        v56 = 0xEB000000005F6D65;
        v41 = v50;
        sub_29D933A48();
        v42 = sub_29D933A18();
        v44 = v43;
        (*(v51 + 8))(v41, v52);
        MEMORY[0x29ED6A240](v42, v44);

        v45 = sub_29D936768();
        v46 = v54;
        v54[3] = v45;
        v46[4] = sub_29D8BB9F4(&qword_2A17B76B8, MEMORY[0x29EDC28B0]);
        sub_29D693F78(v46);
        return sub_29D936758();
      }

LABEL_19:
      v47 = sub_29D935268();
      v48 = v54;
      v54[3] = v47;
      v48[4] = sub_29D8BB9F4(&qword_2A17B76B0, MEMORY[0x29EDC1EC0]);
      sub_29D693F78(v48);
      return sub_29D935258();
    }
  }

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v32 = qword_2A1A2BE98;
  (*(v17 + 16))(v22, v25, v16);
  sub_29D935E88();
  v33 = v32;
  sub_29D933A98();
  sub_29D939D98();
  (*(v17 + 8))(v25, v16);
  v34 = sub_29D935D58();
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v35 = sub_29D935D78();
  v36 = v54;
  v54[3] = v35;
  v36[4] = sub_29D8BB9F4(&qword_2A17B76C0, MEMORY[0x29EDC23E0]);
  sub_29D693F78(v36);
  return sub_29D935D68();
}

void sub_29D8B9FCC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureJournalCreationNotificationSettingsCollectionViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8BA184(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for BloodPressureJournalCreationNotificationSettingsViewController(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v2 = sub_29D939D28();
}

void sub_29D8BA210()
{
  v1 = v0;
  sub_29D933F18();
  sub_29D933F08();
  v9 = sub_29D933EF8();

  if ([v9 authorizationStatus] == 1)
  {
    v2 = swift_allocObject();
    v2[2] = v1;
    v3 = v1;
    v8 = sub_29D79AB4C(sub_29D8BBA3C, v2);
    [v3 presentViewController:v8 animated:1 completion:0];

    v4 = v8;
LABEL_8:

    return;
  }

  v5 = *&v0[qword_2A17B7680];
  sub_29D7B7874(5, 0);
  v6 = *&v1[qword_2A17B7678];
  if (!v6)
  {
    v4 = v9;
    goto LABEL_8;
  }

  v7 = *&v1[qword_2A17B7678];
  swift_unknownObjectRetain();
  sub_29D8BA75C(v1, v6, &off_2A244CA58, 1u);

  sub_29D936978();
}

uint64_t sub_29D8BA374(char *a1)
{
  v2 = *&a1[qword_2A17B7680];
  result = sub_29D7B7874(5, 0);
  v4 = *&a1[qword_2A17B7678];
  if (v4)
  {
    v5 = *&a1[qword_2A17B7678];
    swift_unknownObjectRetain();
    sub_29D8BA75C(a1, v4, &off_2A244CA58, 1u);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8BA3FC(void *a1)
{
  v1 = a1;
  sub_29D8BA210();
}

uint64_t sub_29D8BA474()
{
  v1 = *(v0 + qword_2A17B7678);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B7680);
}

id sub_29D8BA4CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8BA50C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B7678);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B7680);
}

uint64_t sub_29D8BA560(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B7678);
  v4 = *(v2 + qword_2A17B7678);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8BA57C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = *&a2[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = &off_2A24440F8;
  *(v6 + 32) = a2;
  *(v6 + 40) = 3;
  *(v6 + 48) = ObjectType;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29D8BBA44;
  *(v7 + 24) = v6;
  v8 = a2;
  v9 = a1;

  sub_29D7B6860(sub_29D8BBA58, v7);
}

void sub_29D8BA680(void *a1, char *a2)
{
  swift_getObjectType();
  v4 = *&a2[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a2;
  v6 = a1;
  sub_29D9383C8();

  if (v8)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  sub_29D73E1F4(v7, v6, &off_2A24496B0, v5, 0);
}

void sub_29D8BA75C(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  swift_getObjectType();
  v8 = a2;
  v9 = a1;
  sub_29D73E1F4(2, v9, a3, v8, a4);
}

uint64_t sub_29D8BA7F0(uint64_t a1)
{
  v102 = *MEMORY[0x29EDCA608];
  v2 = sub_29D933A58();
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v93 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933AA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v91 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29D939D18();
  v89 = *(v92 - 8);
  v10 = *(v89 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v92, v11);
  v86 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v85 = v73 - v15;
  v16 = MEMORY[0x29EDC9C68];
  sub_29D8BB990(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v21 = v73 - v20;
  sub_29D8BB990(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v16);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v26 = v73 - v25;
  v27 = sub_29D935188();
  v28 = *(v27 - 8);
  v29 = v28;
  v30 = *(v28 + 64);
  v32 = MEMORY[0x2A1C7C4A8](v27, v31);
  v87 = v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = v73 - v35;
  sub_29D8B914C();
  v37 = sub_29D9339F8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v83 = v37;
  v82 = v39;
  v81 = v38 + 56;
  (v39)(v26, 1, 1);
  v40 = sub_29D9379E8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v80 = v40;
  v79 = v42;
  v78 = v41 + 56;
  (v42)(v21, 1, 1);
  swift_retain_n();
  v88 = v21;
  v84 = v26;
  sub_29D935178();
  v43 = MEMORY[0x29EDC9E90];
  sub_29D8BB990(0, &qword_2A17B1108, sub_29D6944FC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v99 = xmmword_29D93DDB0;
  *(inited + 16) = xmmword_29D93DDB0;
  sub_29D8BB990(0, &qword_2A17B7698, MEMORY[0x29EDC1E38], v43);
  v46 = v45;
  v47 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v77 = *(v28 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = v99;
  v96 = v36;
  v97 = v29;
  v49 = *(v29 + 16);
  v98 = v27;
  v76 = v49;
  v49(v48 + v47, v36, v27);
  *(inited + 32) = v48;
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = a1;
  sub_29D9383C8();

  if ((v101 & 1) != 0 || v100)
  {
    v59 = v97;
    v58 = v98;
  }

  else
  {
    v74 = v47;
    v75 = v46;
    v50 = v85;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v51 = qword_2A1A2BE98;
    v73[1] = unk_2A1A2BEA0;
    v52 = v89;
    v53 = v92;
    (*(v89 + 16))(v86, v50, v92);
    sub_29D935E88();
    v54 = v51;
    sub_29D933A98();
    sub_29D939D98();
    (*(v52 + 8))(v50, v53);
    v82(v84, 1, 1, v83);
    v79(v88, 1, 1, v80);
    swift_retain_n();
    v55 = v87;
    sub_29D935178();
    v56 = v74;
    v57 = swift_allocObject();
    *(v57 + 16) = v99;
    v58 = v98;
    v76(v57 + v56, v55, v98);
    inited = sub_29D68FC70(1, 2, 1, inited);
    v59 = v97;
    (*(v97 + 8))(v55, v58);
    *(inited + 16) = 2;
    *(inited + 40) = v57;
  }

  sub_29D775FB4(inited);

  v100 = 0x3C53447961727241;
  v101 = 0xE800000000000000;
  v60 = v93;
  sub_29D933A48();
  v61 = sub_29D933A18();
  v63 = v62;
  (*(v94 + 8))(v60, v95);
  MEMORY[0x29ED6A240](v61, v63);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v64 = sub_29D9351D8();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_29D9351E8();
  sub_29D935588();

  sub_29D7E9A60();
  sub_29D8BB9F4(&qword_2A17B5500, sub_29D7E9A60);
  sub_29D9355B8();

  sub_29D7E9B2C();
  sub_29D8BB9F4(&qword_2A17B5508, sub_29D7E9B2C);
  v67 = sub_29D9355D8();

  sub_29D935F88();
  sub_29D8BB990(0, &qword_2A17B1088, sub_29D8BB854, MEMORY[0x29EDC9E90]);
  v68 = swift_allocObject();
  *(v68 + 16) = v99;
  v69 = sub_29D8BB9F4(&qword_2A17B76A0, sub_29D8BB8B4);
  *(v68 + 32) = v67;
  *(v68 + 40) = v69;

  sub_29D935FA8();
  v70 = sub_29D936D88();

  (*(v59 + 8))(v96, v58);
  v71 = *MEMORY[0x29EDCA608];
  return v70;
}

uint64_t sub_29D8BB314(unint64_t a1, char a2)
{
  v4 = sub_29D933AA8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v7 = sub_29D939D18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v21[-v15];
  if ((a2 & 1) != 0 || a1 >= 2)
  {
    return 0;
  }

  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2BE98;
  (*(v8 + 16))(v13, v16, v7);
  sub_29D935E88();
  v19 = v18;
  sub_29D933A98();
  v20 = sub_29D939D98();
  (*(v8 + 8))(v16, v7);
  return v20;
}

uint64_t sub_29D8BB554(uint64_t a1)
{
  v3 = sub_29D933AA8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v22 - v14;
  v16 = (v1 + qword_2A17B7678);
  *v16 = 0;
  v16[1] = 0;
  v23 = v1;
  *(v1 + qword_2A17B7680) = a1;
  v17 = objc_allocWithZone(type metadata accessor for BloodPressureJournalCreationNotificationSettingsCollectionViewController(0));

  sub_29D8BA7F0(v18);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A2BE98;
  (*(v7 + 16))(v12, v15, v6);
  sub_29D935E88();
  v20 = v19;
  sub_29D933A98();
  sub_29D939D98();
  (*(v7 + 8))(v15, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  sub_29D8BB314(v24, v25);
  sub_29D7406DC();
  return sub_29D936A98();
}

unint64_t sub_29D8BB854()
{
  result = qword_2A17B1090;
  if (!qword_2A17B1090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1090);
  }

  return result;
}

void sub_29D8BB8B4()
{
  if (!qword_2A17B76A8)
  {
    sub_29D7E9B2C();
    sub_29D8BB9F4(&qword_2A17B5508, sub_29D7E9B2C);
    v0 = sub_29D935158();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B76A8);
    }
  }
}

void sub_29D8BB990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8BB9F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CardioFitnessChartSection()
{
  result = qword_2A17B76C8;
  if (!qword_2A17B76C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8BBB24()
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

void *sub_29D8BBC58()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_29D8BBC80()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_29D8BBCAC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = [a1 healthStore];
  v6 = [objc_allocWithZone(HKHRCardioFitnessDataSource) initWithHealthStore:v5 classificationsAvailable:v4 & 1];

  [a1 registerInteractiveChartViewControllerProvider:v6 typeIdentifier:*MEMORY[0x29EDBA970]];
  if (*(v2 + 5))
  {
    v7 = sub_29D93A5C8();
  }

  else
  {
    v7 = 0;
  }

  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  sub_29D8BC178();
  v8 = sub_29D935FC8();

  return v8;
}

uint64_t sub_29D8BBDCC(uint64_t a1)
{
  v2 = sub_29D877E38();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D8BBE20()
{
  result = qword_2A17B76D8;
  if (!qword_2A17B76D8)
  {
    type metadata accessor for CardioFitnessChartSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B76D8);
  }

  return result;
}

uint64_t sub_29D8BBE88(void *a1, char a2, void *a3)
{
  v6 = sub_29D933A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8BC124(0, &qword_2A17B54F0, MEMORY[0x29EDC2240]);
  v12 = *(sub_29D9359D8() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v24 = xmmword_29D93DDB0;
  *(v15 + 16) = xmmword_29D93DDB0;
  sub_29D8BC124(0, &qword_2A17B1138, sub_29D6FC5F4);
  v16 = swift_allocObject();
  *(v16 + 16) = v24;
  *(v16 + 56) = &type metadata for CardioFitnessChartItem;
  *(v16 + 64) = sub_29D877BB8();
  v17 = swift_allocObject();
  *(v16 + 32) = v17;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = a3;
  *(v17 + 56) = 0;
  v18 = a3;
  v19 = a1;
  sub_29D9359B8();
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v25, "MutableArray<");
  HIWORD(v25[1]) = -4864;
  sub_29D933A48();
  v20 = sub_29D933A18();
  v22 = v21;
  (*(v7 + 8))(v11, v6);
  MEMORY[0x29ED6A240](v20, v22);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D935B28();
}

void sub_29D8BC124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D8BC178()
{
  result = qword_2A17B76E0;
  if (!qword_2A17B76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B76E0);
  }

  return result;
}

uint64_t type metadata accessor for HypertensionNotificationsConfirmDetailsDataSource()
{
  result = qword_2A17B7700;
  if (!qword_2A17B7700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8BC270()
{
  v82 = *v0;
  v79 = sub_29D9359D8();
  v76 = *(v79 - 8);
  v77 = v79 - 8;
  v78 = v76;
  v1 = *(v76 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v79 - 8, v2);
  v75 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v89 = v71 - v6;
  v7 = sub_29D935298();
  v88 = *(v7 - 8);
  v8 = v88[8];
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v87 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v86 = v71 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v81 = v71 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = v71 - v19;
  v21 = sub_29D933A58();
  v84 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v0 + qword_2A17B76E8);
  *v27 = 6645569;
  v27[1] = 0xE300000000000000;
  v28 = (v0 + qword_2A17B76F0);
  *v28 = 0x69736F6E67616944;
  v28[1] = 0xE900000000000073;
  *(v0 + qword_2A17B76F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v90[0] = 0;
  v90[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v90, "MutableArray<");
  HIWORD(v90[1]) = -4864;
  sub_29D933A48();
  v29 = sub_29D933A18();
  v31 = v30;
  v32 = *(v22 + 8);
  v83 = v22 + 8;
  v85 = v32;
  v32(v26, v21);
  MEMORY[0x29ED6A240](v29, v31);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v33 = sub_29D935B28();
  v34 = (v33 + qword_2A17B76E8);
  v35 = *(v33 + qword_2A17B76E8);
  v36 = *(v33 + qword_2A17B76E8 + 8);
  v37 = v33;
  v72 = v33;

  sub_29D935E88();
  v74 = v20;
  sub_29D8BC9D4(0, v35, v36);

  v39 = *v34;
  v38 = v34[1];
  sub_29D935E88();
  v40 = v81;
  sub_29D8BCB38(0, v39, v38);

  v73 = MEMORY[0x29EDC9E90];
  sub_29D8BE30C(0, &qword_2A17B1138, sub_29D6FC5F4, MEMORY[0x29EDC9E90]);
  v71[1] = v41;
  v42 = swift_allocObject();
  v80 = xmmword_29D93F680;
  *(v42 + 16) = xmmword_29D93F680;
  *(v42 + 56) = v7;
  v43 = sub_29D8BE2B4();
  *(v42 + 64) = v43;
  v44 = sub_29D693F78((v42 + 32));
  v45 = v88[2];
  v45(v44, v20, v7);
  *(v42 + 96) = v7;
  *(v42 + 104) = v43;
  v46 = sub_29D693F78((v42 + 72));
  v45(v46, v40, v7);
  sub_29D933A48();
  sub_29D933A18();
  v85(v26, v84);
  sub_29D9359C8();
  v47 = (v37 + qword_2A17B76F0);
  v48 = *(v37 + qword_2A17B76F0);
  v49 = *(v37 + qword_2A17B76F0 + 8);
  sub_29D935E88();
  v50 = v86;
  sub_29D8BC9D4(0, v48, v49);

  v51 = *v47;
  v52 = v47[1];
  sub_29D935E88();
  v53 = v87;
  sub_29D8BCB38(0, v51, v52);

  v54 = swift_allocObject();
  *(v54 + 16) = v80;
  *(v54 + 56) = v7;
  *(v54 + 64) = v43;
  v55 = sub_29D693F78((v54 + 32));
  v45(v55, v50, v7);
  *(v54 + 96) = v7;
  *(v54 + 104) = v43;
  v56 = sub_29D693F78((v54 + 72));
  v45(v56, v53, v7);
  sub_29D933A48();
  sub_29D933A18();
  v85(v26, v84);
  v57 = v75;
  sub_29D9359C8();
  sub_29D8BE30C(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], v73);
  v58 = *(v76 + 72);
  v59 = v78;
  v60 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v80;
  v62 = v61 + v60;
  v63 = v59;
  v64 = *(v59 + 16);
  v65 = v89;
  v66 = v79;
  v64(v62, v89, v79);
  v64(v62 + v58, v57, v66);
  v67 = v72;
  sub_29D935B38();

  v68 = *(v63 + 8);
  v68(v57, v66);
  v69 = v88[1];
  v69(v87, v7);
  v69(v86, v7);
  v68(v65, v66);
  v69(v81, v7);
  v69(v74, v7);
  return v67;
}

uint64_t sub_29D8BC9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x6D6574497365592ELL, 0xE800000000000000);
  sub_29D93AA18();

  MEMORY[0x29ED6A240](a2, a3);
  return sub_29D935288();
}

uint64_t sub_29D8BCB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x6D6574496F4E2ELL, 0xE700000000000000);
  sub_29D93AA18();

  MEMORY[0x29ED6A240](a2, a3);
  return sub_29D935288();
}

uint64_t sub_29D8BCC9C()
{
  v1 = *v0;
  sub_29D8BE30C(0, &qword_2A17B7710, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v99 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v103 = &v89 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v107 = &v89 - v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v89 - v14;
  v16 = sub_29D935298();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v98 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v100 = &v89 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v106 = &v89 - v27;
  MEMORY[0x2A1C7C4A8](v26, v28);
  v108 = &v89 - v29;
  v30 = sub_29D933DB8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v104 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v105 = &v89 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v42 = &v89 - v41;
  MEMORY[0x2A1C7C4A8](v40, v43);
  v45 = &v89 - v44;
  MEMORY[0x29ED64160](1, 0);
  MEMORY[0x29ED64160](0, 0);
  sub_29D9355E8();
  sub_29D6FC5F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = *(v31 + 8);
    v52(v42, v30);
    v52(v45, v30);
    (*(v17 + 56))(v15, 1, 1, v16);
    return sub_29D8BE228(v15);
  }

  v96 = v31;
  v97 = v30;
  v101 = v45;
  v102 = *(v17 + 56);
  v102(v15, 0, 1, v16);
  v46 = *(v17 + 32);
  v46(v108, v15, v16);
  v95 = v0;
  sub_29D9355E8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v17 + 8))(v108, v16);
    v54 = v97;
    v55 = *(v96 + 8);
    v55(v42, v97);
    v55(v101, v54);
    v56 = v107;
    v102(v107, 1, 1, v16);
    return sub_29D8BE228(v56);
  }

  v91 = v1;
  v92 = v42;
  v93 = v17;
  v94 = v17 + 56;
  v47 = v107;
  v102(v107, 0, 1, v16);
  v46(v106, v47, v16);
  v48 = sub_29D935278() & 1;
  v49 = sub_29D935278();
  v50 = v16;
  v90 = v46;
  v89 = v17 + 32;
  if (v48 == (v49 & 1))
  {
    v51 = 2;
  }

  else
  {
    v51 = sub_29D935278() & 1;
  }

  v57 = v101;
  v58 = v104;
  v59 = v105;
  MEMORY[0x29ED64160](1, 1);
  MEMORY[0x29ED64160](0, 1);
  sub_29D9355E8();
  v60 = v103;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v60;
    v71 = v97;
    v72 = *(v96 + 8);
    v72(v58, v97);
    v72(v59, v71);
    v73 = *(v93 + 8);
    v73(v106, v50);
    v73(v108, v50);
    v72(v92, v71);
    v72(v57, v71);
    v102(v70, 1, 1, v50);
    return sub_29D8BE228(v70);
  }

  LODWORD(v107) = v51;
  v61 = v102;
  v102(v60, 0, 1, v50);
  v62 = v58;
  v63 = v100;
  v64 = v90;
  v90(v100, v60, v50);
  sub_29D9355E8();
  v65 = v99;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v65;
    v74 = *(v93 + 8);
    v74(v63, v50);
    v75 = v97;
    v76 = *(v96 + 8);
    v76(v62, v97);
    v76(v105, v75);
    v74(v106, v50);
    v74(v108, v50);
    v76(v92, v75);
    v76(v101, v75);
    v61(v70, 1, 1, v50);
    return sub_29D8BE228(v70);
  }

  v61(v65, 0, 1, v50);
  v66 = v98;
  v64(v98, v65, v50);
  v67 = sub_29D935278() & 1;
  v68 = v63;
  if (v67 == (sub_29D935278() & 1))
  {
    v69 = 2;
  }

  else
  {
    v69 = sub_29D935278() & 1;
  }

  v77 = v104;
  v78 = v107;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  *(Strong + qword_2A17B18C0) = v78;
  *(Strong + qword_2A17B18C8) = v69;
  v80 = *(Strong + qword_2A17B18D0);
  if (v80)
  {
    v82 = v78 != 2 && v69 != 2;
    [v80 setEnabled_];
    sub_29D936978();
LABEL_25:
    v83 = *(v93 + 8);
    v83(v66, v50);
    v83(v68, v50);
    v84 = v97;
    v85 = *(v96 + 8);
    v85(v77, v97);
    v85(v105, v84);
    v83(v106, v50);
    v83(v108, v50);
    v85(v92, v84);
    return (v85)(v101, v84);
  }

  v86 = *(v93 + 8);
  v86(v66, v50);
  v86(v68, v50);
  v87 = v97;
  v88 = *(v96 + 8);
  v88(v77, v97);
  v88(v105, v87);
  v86(v106, v50);
  v86(v108, v50);
  v88(v92, v87);
  v88(v101, v87);
  return sub_29D936978();
}

uint64_t sub_29D8BD730()
{
  v1 = *(v0 + qword_2A17B76E8 + 8);

  v2 = *(v0 + qword_2A17B76F0 + 8);

  v3 = v0 + qword_2A17B76F8;

  return sub_29D68B77C(v3);
}

uint64_t sub_29D8BD788()
{
  v0 = sub_29D935BA8();
  v1 = *(v0 + qword_2A17B76E8 + 8);

  v2 = *(v0 + qword_2A17B76F0 + 8);

  sub_29D68B77C(v0 + qword_2A17B76F8);

  return swift_deallocClassInstance();
}

uint64_t sub_29D8BD818()
{
  sub_29D935D18();
  sub_29D93A1E8();
  sub_29D935DE8();
  return sub_29D93A1E8();
}

uint64_t sub_29D8BD868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D771308();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29D933DA8();
  v11 = *(v5 + 56);
  *v9 = v10;
  v12 = sub_29D934B78();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9 + v11, a1, v12);
  if ((*(v13 + 88))(v9 + v11, v12) != *MEMORY[0x29EDC1B58])
  {
    goto LABEL_6;
  }

  if (v10 != 1)
  {
    if (!v10)
    {
      if (qword_2A17B0D68 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }

LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_29D771370(v9);
  }

  if (qword_2A17B0D68 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_29D9334A8();
  v15 = sub_29D937B88();
  v16 = MEMORY[0x29EDC7800];
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  sub_29D693F78(a2);
  sub_29D937B08();
  sub_29D935E88();
  sub_29D937B48();
  sub_29D718DF8();
  v17 = *MEMORY[0x29EDC80E0];
  v18 = *MEMORY[0x29EDC76E0];
  sub_29D93A658();
  v19 = sub_29D937A98();
  sub_29D937A58();
  v19(v22, 0);
  v20 = [objc_opt_self() labelColor];
  v21 = sub_29D937A98();
  sub_29D937A68();
  v21(v22, 0);

  return (*(v13 + 8))(v9 + v11, v12);
}

uint64_t sub_29D8BDCC8()
{
  v1 = *v0;
  v2 = sub_29D933DB8();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8BE30C(0, &qword_2A17B7710, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v42 - v9;
  v11 = sub_29D935298();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v42 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v42 - v23;
  sub_29D9355E8();
  sub_29D6FC5F4();
  v25 = swift_dynamicCast();
  v26 = *(v12 + 56);
  if ((v25 & 1) == 0)
  {
    v26(v10, 1, 1, v11);
    return sub_29D8BE228(v10);
  }

  v26(v10, 0, 1, v11);
  (*(v12 + 32))(v24, v10, v11);
  if (sub_29D935278())
  {
    return (*(v12 + 8))(v24, v11);
  }

  v27 = sub_29D933DA8();
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = &qword_2A17B76F0;
      goto LABEL_9;
    }

    return (*(v12 + 8))(v24, v11);
  }

  v28 = &qword_2A17B76E8;
LABEL_9:
  v30 = (v0 + *v28);
  v31 = v30[1];
  v45 = *v30;
  sub_29D935E88();
  v32 = sub_29D933D88();
  if (v32 == 1)
  {
    sub_29D8BCB38(1, v45, v31);
    v50 = v11;
    v44 = sub_29D8BE2B4();
    v51 = v44;
    v38 = sub_29D693F78(v49);
    v39 = *(v12 + 16);
    v42 = v12 + 16;
    v43 = v39;
    v39(v38, v21, v11);
    sub_29D935B88();
    sub_29D69417C(v49);
    sub_29D8BC9D4(0, v45, v31);

    v35 = sub_29D933DA8();
    v36 = v46;
    v37 = 0;
    goto LABEL_13;
  }

  if (!v32)
  {
    sub_29D8BC9D4(1, v45, v31);
    v50 = v11;
    v44 = sub_29D8BE2B4();
    v51 = v44;
    v33 = sub_29D693F78(v49);
    v34 = *(v12 + 16);
    v42 = v12 + 16;
    v43 = v34;
    v34(v33, v21, v11);
    sub_29D935B88();
    sub_29D69417C(v49);
    sub_29D8BCB38(0, v45, v31);

    v35 = sub_29D933DA8();
    v36 = v46;
    v37 = 1;
LABEL_13:
    MEMORY[0x29ED64160](v37, v35);
    v50 = v11;
    v51 = v44;
    v40 = sub_29D693F78(v49);
    v43(v40, v17, v11);
    sub_29D935B88();
    sub_29D69417C(v49);
    sub_29D8BCC9C();
    (*(v47 + 8))(v36, v48);
    v41 = *(v12 + 8);
    v41(v17, v11);
    v41(v21, v11);
    return (v41)(v24, v11);
  }

  (*(v12 + 8))(v24, v11);
}

uint64_t sub_29D8BE228(uint64_t a1)
{
  sub_29D8BE30C(0, &qword_2A17B7710, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D8BE2B4()
{
  result = qword_2A17B7718;
  if (!qword_2A17B7718)
  {
    sub_29D935298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7718);
  }

  return result;
}

void sub_29D8BE30C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8BE370(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_29D8BE38C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29D8BE3D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_29D8BE424@<X0>(char a1@<W2>, uint64_t a2@<X3>, void *a3@<X4>, char a4@<W5>, void *a5@<X6>, void *a6@<X8>)
{
  v12 = sub_29D937D68();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v35[0] = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D937CB8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v19 = sub_29D937CF8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8, v21);
  if (a1)
  {
    sub_29D8BE7E0(a3, a4, a5);
  }

  v22 = sub_29D8BEBE0(a2, a3, a4, a5);
  if (v22)
  {
    v23 = v22;
    v24 = sub_29D8BFFA8(v22);
    sub_29D8C02BC();
    a6[5] = v25;
    a6[6] = sub_29D8C0A88(&qword_2A17B7758, sub_29D8C02BC);
    sub_29D693F78(a6 + 2);
    *&v35[1] = v24;
    sub_29D74D930();
    sub_29D937CC8();
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;
    *(v26 + 32) = a5;
    *(v26 + 40) = v23;
    v27 = a3;
    v28 = a5;
    sub_29D935E88();
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D8C0350(0, &qword_2A17B7748, sub_29D70ABCC, sub_29D8C03D0);
    sub_29D8C0468();
    sub_29D937F88();
    sub_29D8C060C(v23);
    v30 = v29;
    v32 = v31;
  }

  else
  {
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D937CE8();
    sub_29D8BFCD0();
    a6[5] = v34;
    a6[6] = sub_29D8C0A88(&qword_2A17B7738, sub_29D8BFCD0);
    sub_29D693F78(a6 + 2);
    sub_29D8C0350(0, &qword_2A17B7728, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
    sub_29D8BFD64();
    result = sub_29D937F98();
    v30 = 0;
    v32 = 0;
  }

  *a6 = v30;
  a6[1] = v32;
  return result;
}

double sub_29D8BE7E0(void *a1, char a2, uint64_t a3)
{
  if (!a2)
  {
    v10 = [objc_opt_self() sleepDurationNoDataRange];
    v11 = [objc_opt_self() secondUnit];
    sub_29D8BE908(v11);
    v3 = v12;

    return v3;
  }

  v3 = 0.0;
  if (a2 == 1)
  {
    v5 = a1;
    v6 = [v5 hk:1 axisScalingRuleForChartSizeClass:a3 unitController:?];
    if (v6)
    {
      v7 = [v6 noDataStartingRange];
      if (v7)
      {
        v8 = v7;
        sub_29D8BEA80();
        v3 = v9;

        sub_29D936978();
        return v3;
      }

      sub_29D936978();
    }
  }

  return v3;
}

void sub_29D8BE908(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v2 minValue];
  if (v5 && (v6 = v5, [v5 doubleValueForUnit_], v8 = v7, v6, (v9 = objc_msgSend(v2, sel_maxValue)) != 0))
  {
    v10 = v9;
    [v9 doubleValueForUnit_];
    v12 = v11;

    if (v8 > v12)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v13, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    sub_29D9371F8();
  }
}

void sub_29D8BEA80()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 minValue];
  if (v2 && (v3 = v2, [v2 doubleValue], v5 = v4, v3, (v6 = objc_msgSend(v0, sel_maxValue)) != 0))
  {
    v7 = v6;
    [v6 doubleValue];
    v9 = v8;

    if (v5 > v9)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v10, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    sub_29D9371F8();
  }
}

uint64_t sub_29D8BEBE0(uint64_t a1, void *a2, unsigned __int8 a3, void *a4)
{
  if (a3 >= 2u)
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC4420]) init];
    v9 = 0;
  }

  else
  {
    v6 = a2;
    v7 = [v6 hk:a4 dimensionForChartAxisWithUnitController:?];
    if (!v7)
    {
      v7 = [objc_allocWithZone(MEMORY[0x29EDC4420]) init];
    }

    swift_unknownObjectRetain();
    v8 = [v6 chartingRules];
    v9 = [v8 axisScalingRule];

    v10 = [a4 unitForDisplayType_];
    if (v10)
    {
      if (v9 && ([v9 respondsToSelector_] & 1) != 0)
      {
        [v9 setUnit_];
      }
    }
  }

  v11 = sub_29D93A048();
  v12 = sub_29D93A048();
  v13 = [objc_opt_self() valueRangeWithMinValue:v11 maxValue:v12];

  if (v9)
  {
    v14 = [v9 yValueRangeForRange:v13 zoomLevel:3];
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = [v14 minValue];
  v17 = [v15 maxValue];
  v18 = [objc_opt_self() valueRangeWithMinValue:v16 maxValue:v17];

  v19 = [objc_opt_self() ticksAndLabelsForRangeInModelCoordinates:v18 maximumLabelCount:a1 endingOptions:0 dimension:v7];
  sub_29D936978();
  if (v19)
  {
    sub_29D69567C(0, &qword_2A17B7770, 0x29EDC4418);
    v20 = sub_29D939F38();

    sub_29D936978();
    sub_29D936978();
  }

  else
  {

    sub_29D936978();
    sub_29D936978();
    return 0;
  }

  return v20;
}

uint64_t sub_29D8BEEE8@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v104 = a4;
  v105 = a5;
  v103 = a3;
  v102 = a2;
  sub_29D8C0A0C(0, &qword_2A17B7760, sub_29D70ABCC, sub_29D8C03D0);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v92 - v12;
  v96 = sub_29D937BE8();
  v95 = *(v96 - 8);
  v14 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v96, v15);
  v108 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C03D0();
  v98 = v17;
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v112 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v111 = &v92 - v23;
  v24 = sub_29D937E18();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8, v26);
  v27 = sub_29D937E48();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27 - 8, v29);
  sub_29D70AD94();
  v31 = v30;
  v101 = *(v30 - 8);
  v32 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ACCC();
  v106 = *(v36 - 8);
  v107 = v36;
  v37 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ABCC();
  v94 = v41;
  v93 = *(v41 - 8);
  v42 = *(v93 + 64);
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v110 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v44, v46);
  v114 = &v92 - v47;
  v48 = sub_29D937FF8();
  v100 = a6;
  v99 = v9;
  v109 = v13;
  v113 = a1;
  if (v48)
  {
    v49 = sub_29D937FF8();
    v50 = sub_29D937FE8();
    if (__OFSUB__(v50, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v49 == v50 - 1)
    {
      v51 = sub_29D9398F8();
    }

    else
    {
      v51 = sub_29D939918();
    }
  }

  else
  {
    v51 = sub_29D939908();
  }

  MEMORY[0x2A1C7C4A8](v51, v52);
  sub_29D937E38();
  sub_29D937E08();
  sub_29D70ADF8();
  v90 = v53;
  v91 = sub_29D70AEA8();
  v88 = sub_29D8C081C;
  v89 = &v84;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0x4010000000000000;
  sub_29D937D18();
  if (qword_2A17B0CA0 != -1)
  {
    swift_once();
  }

  v116 = qword_2A17D0D18;
  v54 = sub_29D8C0A88(&qword_2A17B2B80, sub_29D70AD94);
  v55 = MEMORY[0x29EDBCA98];
  v56 = MEMORY[0x29EDBCA88];
  sub_29D937EB8();
  (*(v101 + 8))(v35, v31);
  a6 = v108;
  if (qword_2A17B0CA8 != -1)
  {
    swift_once();
  }

  v116 = v31;
  v117 = v55;
  v118 = v54;
  v119 = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v107;
  sub_29D937EC8();
  (*(v106 + 8))(v40, v57);
  v58 = sub_29D937FF8();
  v13 = v109;
  if (!v58)
  {
    goto LABEL_14;
  }

  v59 = sub_29D937FF8();
  v60 = sub_29D937FE8();
  if (__OFSUB__(v60, 1))
  {
    goto LABEL_23;
  }

  if (v59 != v60 - 1)
  {
    if (qword_2A17B0C98 == -1)
    {
LABEL_18:
      v61 = &xmmword_2A17D0CF0;
      goto LABEL_19;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

LABEL_14:
  if (qword_2A17B0C90 != -1)
  {
    swift_once();
  }

  v61 = &xmmword_2A17D0CC8;
LABEL_19:
  v62 = *v61;
  v63 = *(v61 + 2);
  v64 = *(v61 + 3);
  v65 = *(v61 + 4);
  v66 = *(v61 + 1);
  v67 = sub_29D935E88();
  v116 = v62;
  v117 = v66;
  v118 = v63;
  v119 = v67;
  v120 = v65;
  sub_29D937BD8();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v115 = qword_2A17D0CC0;
  v68 = v111;
  v69 = v96;
  sub_29D937EB8();
  (*(v95 + 8))(a6, v69);
  v70 = v93;
  v113 = *(v93 + 16);
  v71 = v110;
  v72 = v94;
  v113(v110, v114, v94);
  v73 = v97;
  v74 = *(v97 + 16);
  v75 = v112;
  v76 = v68;
  v77 = v98;
  v74(v112, v76, v98);
  v113(v13, v71, v72);
  v78 = v99;
  v79 = *(v99 + 48);
  v74(&v13[v79], v75, v77);
  v80 = v100;
  (*(v70 + 32))(v100, v13, v72);
  (*(v73 + 32))(&v80[*(v78 + 48)], &v13[v79], v77);
  v81 = *(v73 + 8);
  v81(v111, v77);
  v82 = *(v70 + 8);
  v82(v114, v72);
  v81(v112, v77);
  return (v82)(v110, v72);
}

uint64_t sub_29D8BF870@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>)
{
  result = sub_29D937FD8();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_29D8C0830(a1, v12);
    sub_29D69AB60();
    v5 = sub_29D9392F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    result = swift_getKeyPath();
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v11;
    *(a2 + 32) = result;
    *(a2 + 40) = 0x4000000000000000;
  }

  return result;
}

uint64_t sub_29D8BF934@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  sub_29D8C0A0C(0, &qword_2A17B7768, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
  v2 = *(v1 - 8);
  v46 = v1 - 8;
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v4);
  v45 = &v40 - v5;
  v6 = sub_29D937EE8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v44 = sub_29D937F08();
  v41 = *(v44 - 8);
  v9 = v41;
  v10 = *(v41 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v44, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v40 - v16;
  v18 = sub_29D937BE8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v27 = &v40 - v26;
  v43 = &v40 - v26;
  sub_29D937BD8();
  sub_29D937ED8();
  v42 = v17;
  sub_29D937EF8();
  v28 = *(v19 + 16);
  v28(v24, v27, v18);
  v29 = *(v9 + 16);
  v30 = v44;
  v29(v14, v17, v44);
  v31 = v45;
  v28(v45, v24, v18);
  v32 = v46;
  v33 = *(v46 + 56);
  v29(&v31[v33], v14, v30);
  v34 = v47;
  (*(v19 + 32))(v47, v31, v18);
  v35 = *(v32 + 56);
  v36 = v41;
  (*(v41 + 32))(v34 + v35, &v31[v33], v30);
  v37 = *(v36 + 8);
  v37(v42, v30);
  v38 = *(v19 + 8);
  v38(v43, v18);
  v37(v14, v30);
  return (v38)(v24, v18);
}

void sub_29D8BFCD0()
{
  if (!qword_2A17B7720)
  {
    sub_29D8C0350(255, &qword_2A17B7728, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
    sub_29D8BFD64();
    v0 = sub_29D937FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7720);
    }
  }
}

unint64_t sub_29D8BFD64()
{
  result = qword_2A17B7730;
  if (!qword_2A17B7730)
  {
    sub_29D8C0350(255, &qword_2A17B7728, MEMORY[0x29EDB8550], MEMORY[0x29EDB86C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7730);
  }

  return result;
}

uint64_t sub_29D8BFE14()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D96C760);
  MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D96C780);
  return 91;
}

uint64_t sub_29D8BFEDC()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x61526465736F6C63, 0xED0000292865676ELL);
  MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D96C780);
  return 91;
}

double sub_29D8BFFA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 1.0; v2; i = 1.0)
  {
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x29ED6AE30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 text];
      if (v9)
      {
        v10 = v9;
        sub_29D939D68();

        v11 = sub_29D939E28();

        if (v11 >= 1)
        {
          v12 = [v7 location];
          sub_29D93A868();
          sub_29D936978();
          sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
          if (swift_dynamicCast())
          {
            [v27 doubleValue];
            v14 = v13;

            if (v8 == v2)
            {
              return i;
            }
          }

          else
          {

            v14 = 0.0;
            if (v8 == v2)
            {
              return i;
            }
          }

          for (j = v4 + 5; ; ++j)
          {
            v16 = j - 4;
            if (v5)
            {
              v17 = MEMORY[0x29ED6AE30](j - 4, a1);
            }

            else
            {
              if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v17 = *(a1 + 8 * j);
            }

            v18 = v17;
            v19 = j - 3;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v20 = [v17 text];
            if (v20)
            {
              v21 = v20;
              sub_29D939D68();

              v22 = sub_29D939E28();

              if (v22 > 0)
              {
                v23 = [v18 location];
                sub_29D93A868();
                sub_29D936978();
                if (swift_dynamicCast())
                {
                  [v27 doubleValue];
                  v25 = v24;

                  return v25 - v14;
                }

                else
                {

                  return 0.0 - v14;
                }
              }
            }

            if (v19 == v2)
            {
              return i;
            }
          }

          break;
        }
      }

      ++v4;
      if (v8 == v2)
      {
        return i;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v2 = sub_29D93A928();
  }

  return i;
}

void sub_29D8C02BC()
{
  if (!qword_2A17B7740)
  {
    sub_29D8C0350(255, &qword_2A17B7748, sub_29D70ABCC, sub_29D8C03D0);
    sub_29D8C0468();
    v0 = sub_29D937FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7740);
    }
  }
}

void sub_29D8C0350(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D8C03D0()
{
  if (!qword_2A17B2B48)
  {
    sub_29D937BE8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2B48);
    }
  }
}

unint64_t sub_29D8C0468()
{
  result = qword_2A17B7750;
  if (!qword_2A17B7750)
  {
    sub_29D8C0350(255, &qword_2A17B7748, sub_29D70ABCC, sub_29D8C03D0);
    sub_29D70ACCC();
    sub_29D70AD94();
    sub_29D8C0A88(&qword_2A17B2B80, sub_29D70AD94);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D937BE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7750);
  }

  return result;
}

void sub_29D8C060C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return;
  }

  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = a1;
      v5 = MEMORY[0x29ED6AE30](0);
      if (__OFSUB__(v1, 1))
      {
        goto LABEL_23;
      }

      v6 = MEMORY[0x29ED6AE30](v1 - 1, v16);
      goto LABEL_8;
    }

    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      break;
    }

    v3 = v1 - 1;
    if (__OFSUB__(v1, 1))
    {
      goto LABEL_21;
    }

    if (v3 >= v2)
    {
      goto LABEL_22;
    }

    v4 = *(a1 + 32 + 8 * v3);
    v5 = *(a1 + 32);
    v6 = v4;
LABEL_8:
    v7 = v6;
    v8 = [v5 location];
    sub_29D93A868();
    sub_29D936978();
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    if (swift_dynamicCast())
    {
      [v17 doubleValue];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [v7 location];
    sub_29D93A868();
    sub_29D936978();
    if (swift_dynamicCast())
    {
      [v17 doubleValue];
      v13 = v12;

      v14 = v13;
    }

    else
    {

      v14 = 0.0;
    }

    if (v10 > v14)
    {
      __break(1u);
LABEL_16:
      v15 = a1;
      v1 = sub_29D93A928();
      a1 = v15;
      if (v1)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_29D8C081C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 24);
  return sub_29D8BF870(*(v1 + 40), a1);
}

uint64_t sub_29D8C0830(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v5 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x29ED6AE30](v5, a1);
      }

      else
      {
        if (v5 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 location];
      sub_29D93A868();
      sub_29D936978();
      sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
      if (swift_dynamicCast())
      {
        [v17 doubleValue];
        v11 = v10;
      }

      else
      {
        v11 = 0.0;
      }

      v12 = [v7 text];
      if (v12)
      {
        v13 = v12;
        v14 = sub_29D939D68();

        if (vabdd_f64(v11, a2) <= 2.22044605e-16)
        {
          return v14;
        }
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

void sub_29D8C0A0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D8C0A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8C0AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D8C0B28(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_29D8C0BFC()
{
  sub_29D9346E8();
  if (v0 <= 0x3F)
  {
    sub_29D8C23F8(319, &qword_2A17B7788, &type metadata for HypertensionNotificationsSettingsViewModel.Header, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29D8C0D98(319, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D8C0CEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29D8C0D34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_29D8C0D98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29D8C0E00()
{
  sub_29D8C23F8(319, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D8C0D98(319, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D8C0ED0(uint64_t a1)
{
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x29EDC1760])
  {
    sub_29D8C23F8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_29D93F680;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    *(v9 + 32) = sub_29D9334A8();
    *(v9 + 40) = v10;
  }

  else
  {
    if (v8 != *MEMORY[0x29EDC1768])
    {
      (*(v3 + 8))(v7, v2);
      return MEMORY[0x29EDCA190];
    }

    sub_29D8C23F8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_29D93F680;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v11 = sub_29D9334A8();
    v13 = v12;

    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
  }

  *(v9 + 48) = sub_29D9334A8();
  *(v9 + 56) = v14;
  return v9;
}

uint64_t sub_29D8C1254@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a4;
  v7 = sub_29D9346E8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v73 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v75 = v66 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = v66 - v18;
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v66 - v21;
  sub_29D8C0D98(0, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v27 = v66 - v26;
  v28 = sub_29D9349A8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a2;
  v79 = a3;
  v35 = v32;
  sub_29D76C9EC();
  v74 = a1;
  sub_29D934D08();
  v76 = v29;
  if ((*(v29 + 48))(v27, 1, v35) == 1)
  {
    sub_29D8C1A24(v27);
    return sub_29D8C20E4(v77);
  }

  else
  {
    (*(v76 + 32))(v34, v27, v35);
    sub_29D934958();
    v37 = v8[13];
    (v37)(v19, *MEMORY[0x29EDC1750], v7);
    v38 = v35;
    v39 = sub_29D9346D8();
    v72 = v8;
    v40 = v8[1];
    v40(v19, v7);
    v40(v22, v7);
    if (v39)
    {
      sub_29D8C1A9C(v77);
      return (*(v76 + 8))(v34, v38);
    }

    else
    {
      v71 = v38;
      sub_29D934958();
      (v37)(v19, *MEMORY[0x29EDC1758], v7);
      v41 = sub_29D9346D8();
      v40(v19, v7);
      v40(v22, v7);
      if (v41)
      {
        sub_29D937198();
        sub_29D8C1D6C(v77);
        return (*(v76 + 8))(v34, v71);
      }

      else
      {
        sub_29D934958();
        sub_29D934958();
        LODWORD(v69) = *MEMORY[0x29EDC1760];
        v37(v19);
        v42 = sub_29D9346D8();
        v40(v19, v7);
        v40(v22, v7);
        if (v42)
        {
          v70 = 1;
        }

        else
        {
          v43 = MEMORY[0x29EDC1768];
          sub_29D934958();
          (v37)(v19, *v43, v7);
          v70 = sub_29D9346D8();
          v40(v19, v7);
          v40(v22, v7);
        }

        v68 = v37;
        sub_29D934958();
        v44 = v69;
        (v37)(v19, v69, v7);
        v45 = sub_29D9346D8();
        v40(v19, v7);
        v40(v22, v7);
        sub_29D937198();
        v74 = sub_29D8380A0();
        if (v74)
        {
          if (v45)
          {
            v46 = v44;
          }

          else
          {
            v46 = *MEMORY[0x29EDC1768];
          }

          v47 = v73;
          v68(v73, v46, v7);
          v69 = sub_29D8C0ED0(v47);
          sub_29D9347C8();
          v67 = sub_29D9347A8();
          v68 = v48;
          v40(v47, v7);
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v67 = 0;
        }

        v49 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
        v50 = v77;
        v51 = (v77 + v49[9]);
        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        v73 = qword_2A17D0F10;
        v66[1] = qword_2A17D0F20;
        v66[2] = *algn_2A17D0F18;
        v52 = sub_29D9334A8();
        v54 = v53;
        v55 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
        v56 = *(v55 + 24);
        sub_29D935E88();
        v57 = HKHRHypertensionNotificationsDetailRoomBaseLink();
        sub_29D9336D8();

        v58 = sub_29D9336F8();
        (*(*(v58 - 8) + 56))(v51 + v56, 0, 1, v58);
        *v51 = v52;
        v51[1] = v54;
        v51[2] = v52;
        v51[3] = v54;
        (*(*(v55 - 8) + 56))(v51, 0, 1, v55);
        (v72[4])(v50, v75, v7);
        *(v50 + v49[5]) = v70 & 1;
        *(v50 + v49[6]) = 1;
        v59 = (v50 + v49[7]);
        v60 = sub_29D9334A8();
        v62 = v61;
        result = (*(v76 + 8))(v34, v71);
        *v59 = v60;
        v59[1] = v62;
        v63 = (v50 + v49[8]);
        v64 = v69;
        *v63 = v74;
        v63[1] = v64;
        v65 = v68;
        v63[2] = v67;
        v63[3] = v65;
      }
    }
  }

  return result;
}

uint64_t sub_29D8C1A24(uint64_t a1)
{
  sub_29D8C0D98(0, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D8C1A9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17B0D68 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    sub_29D9334A8();
    v2 = sub_29D934968();
    if (!v2)
    {
      break;
    }

    v3 = v2;
    v4 = *(v2 + 16);
    if (!v4)
    {
LABEL_7:

      break;
    }

    v5 = 0;
    v6 = (v2 + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_29D935E88();
      sub_29D935E88();
      MEMORY[0x29ED6A240](10, 0xE100000000000000);
      sub_29D935E88();
      MEMORY[0x29ED6A240](v7, v8);

      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

  v9 = *MEMORY[0x29EDC1750];
  v10 = sub_29D9346E8();
  (*(*(v10 - 8) + 104))(a1, v9, v10);
  v11 = sub_29D8C22CC();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v19 = v18[9];
  v20 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  (*(*(v20 - 8) + 56))(a1 + v19, 1, 1, v20);
  *(a1 + v18[5]) = 0;
  *(a1 + v18[6]) = 0;
  v21 = (a1 + v18[7]);
  result = sub_29D9334A8();
  *v21 = result;
  v21[1] = v23;
  v24 = (a1 + v18[8]);
  *v24 = v11;
  v24[1] = v13;
  v24[2] = v15;
  v24[3] = v17;
  return result;
}

uint64_t sub_29D8C1D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v10 = *MEMORY[0x29EDC1758];
  v11 = *(v3 + 104);
  v35 = v31 - v12;
  v11();
  v36 = sub_29D8380A0();
  if (v36)
  {
    (v11)(v8, *MEMORY[0x29EDC1768], v2);
    v34 = sub_29D8C0ED0(v8);
    sub_29D9347C8();
    v13 = sub_29D9347A8();
    v32 = v14;
    v33 = v13;
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
  }

  v37 = v2;
  v15 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v16 = v15[9];
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v17 = (a1 + v16);
  v31[0] = qword_2A17D0F20;
  v31[1] = qword_2A17D0F10;
  v18 = sub_29D9334A8();
  v20 = v19;
  v21 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  v22 = *(v21 + 24);
  sub_29D935E88();
  v23 = HKHRHypertensionNotificationsDetailRoomBaseLink();
  sub_29D9336D8();

  v24 = sub_29D9336F8();
  (*(*(v24 - 8) + 56))(v17 + v22, 0, 1, v24);
  *v17 = v18;
  v17[1] = v20;
  v17[2] = v18;
  v17[3] = v20;
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  (*(v3 + 32))(a1, v35, v37);
  *(a1 + v15[5]) = 0;
  *(a1 + v15[6]) = 1;
  v25 = (a1 + v15[7]);
  result = sub_29D9334A8();
  *v25 = result;
  v25[1] = v27;
  v28 = (a1 + v15[8]);
  v29 = v33;
  v30 = v34;
  *v28 = v36;
  v28[1] = v30;
  v28[2] = v29;
  v28[3] = v32;
  return result;
}

uint64_t sub_29D8C20E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1750];
  v3 = sub_29D9346E8();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v4 = sub_29D8C22CC();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  v12 = v11[9];
  v13 = type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *(a1 + v11[5]) = 0;
  *(a1 + v11[6]) = 0;
  v14 = (a1 + v11[7]);
  result = sub_29D9334A8();
  *v14 = result;
  v14[1] = v16;
  v17 = (a1 + v11[8]);
  *v17 = v4;
  v17[1] = v6;
  v17[2] = v8;
  v17[3] = v10;
  return result;
}

id sub_29D8C22CC()
{
  result = sub_29D8380A0();
  if (result)
  {
    v1 = result;
    sub_29D8C23F8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_29D93DDB0;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    *(v2 + 32) = sub_29D9334A8();
    *(v2 + 40) = v3;
    sub_29D935E88();
    return v1;
  }

  return result;
}

void sub_29D8C23F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8C2448(uint64_t a1)
{
  v2 = sub_29D934178();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C2D8C(0);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934358();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v45 - v23;
  sub_29D934188();
  sub_29D693E2C(v54, v54[3]);
  v25 = sub_29D934118();
  v26 = *MEMORY[0x29EDBA6B0];
  v52 = a1;
  sub_29D9341D8();
  sub_29D8C3B00(v24, v21, sub_29D69BECC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29D7CA238(v21);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v11 + 32))(v15, v21, v10);
    v27 = sub_29D934348();
    v28 = v29;
    (*(v11 + 8))(v15, v10);
  }

  v30 = sub_29D8FC9F4(v26, v27, v28);

  if (v30)
  {
    v31 = sub_29D6B74EC();
  }

  else
  {
    sub_29D9371A8();
    v32 = v46;
    sub_29D938348();
    sub_29D8C3B68(&qword_2A17B1B60, sub_29D8C2D8C);
    v33 = v48;
    v31 = sub_29D938418();

    (*(v47 + 8))(v32, v33);
  }

  sub_29D7CA238(v24);
  sub_29D69417C(v54);
  if (qword_2A1A23BA8 != -1)
  {
    swift_once();
  }

  v34 = v51;
  v35 = sub_29D69C6C0(v51, qword_2A1A2BE20);
  v36 = OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain;
  v37 = v50;
  v38 = *(v50 + 16);
  v39 = v53;
  v38(v53 + OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain, v35, v34);
  v40 = v49;
  v38(v49, v39 + v36, v34);
  v41 = v52;
  v42 = sub_29D8C2DE8(v52, v40, v31);

  v43 = sub_29D9341E8();
  (*(*(v43 - 8) + 8))(v41, v43);
  (*(v37 + 8))(v40, v34);
  *(v39 + OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_publisher) = v42;
  return v39;
}

uint64_t sub_29D8C2938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a3;
  v29 = a1;
  sub_29D6C36D8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36A4(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v14 = sub_29D934178();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D9341E8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  (*(v24 + 16))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v15 + 16))(v19, v28, v14);
  sub_29D8C3B00(v29, v10, sub_29D6C36D8);
  sub_29D938338();
  v25 = sub_29D934228();
  v26 = MEMORY[0x29EDC38C8];
  a4[3] = v25;
  a4[4] = v26;
  sub_29D693F78(a4);
  sub_29D8C3B68(&qword_2A1A22360, sub_29D6C36A4);
  return sub_29D934218();
}

uint64_t sub_29D8C2BFC()
{
  v1 = OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenRescindedGeneratorPipeline()
{
  result = qword_2A1A23890;
  if (!qword_2A1A23890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8C2D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart36AFibBurdenRescindedGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D8C2DC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D7C3634();
  *a1 = result;
  return result;
}

uint64_t sub_29D8C2DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a2;
  v64 = a1;
  sub_29D8C3648();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934178();
  v74 = *(v8 - 8);
  v75 = v8;
  v76 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29D9341E8();
  v67 = *(v71 - 8);
  v72 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v71, v11);
  v70 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C37BC();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13, v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C3858();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v20, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C38EC();
  v28 = *(v27 - 8);
  v65 = v27;
  v66 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C36DC();
  v78 = *(v33 - 8);
  v79 = v33;
  v34 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v68 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29D9341B8();
  v80 = a3;
  sub_29D6B7D8C();
  v69 = MEMORY[0x29EDB8A00];
  sub_29D8C3B68(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938468();
  v63 = MEMORY[0x29EDB8908];
  sub_29D8C3B68(&qword_2A1A225F8, sub_29D8C37BC);
  sub_29D7C3F08();
  sub_29D938558();
  (*(v15 + 8))(v19, v14);
  *(swift_allocObject() + 16) = v37;
  sub_29D6C36D8(0);
  sub_29D8C3B68(&qword_2A1A22660, sub_29D8C3858);
  v38 = v37;
  sub_29D938468();

  (*(v22 + 8))(v26, v21);
  sub_29D8C3B68(&qword_2A1A22548, sub_29D8C38EC);
  v39 = v65;
  v40 = sub_29D938418();
  v62 = v40;

  (*(v66 + 8))(v32, v39);
  v80 = v40;
  v41 = v67;
  v43 = v70;
  v42 = v71;
  (*(v67 + 16))(v70, v64, v71);
  v45 = v73;
  v44 = v74;
  v46 = v75;
  (*(v74 + 16))(v73, v77, v75);
  v47 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v48 = v44;
  v49 = (v72 + *(v44 + 80) + v47) & ~*(v44 + 80);
  v50 = swift_allocObject();
  (*(v41 + 32))(v50 + v47, v43, v42);
  v51 = v68;
  (*(v48 + 32))(v50 + v49, v45, v46);
  sub_29D8C3788(0);
  sub_29D6CE0BC();
  sub_29D8C3B68(&qword_2A1A22438, sub_29D8C3788);
  sub_29D938468();

  LOBYTE(v41) = sub_29D934198();
  sub_29D8C3B68(&qword_2A1A22630, sub_29D8C36DC);
  if (v41)
  {
    v52 = v79;
    v53 = sub_29D938418();
  }

  else
  {
    v54 = v59;
    v52 = v79;
    sub_29D938498();
    sub_29D8C3B68(&qword_2A1A22498, sub_29D8C3648);
    v55 = v61;
    v53 = sub_29D938418();
    (*(v60 + 8))(v54, v55);
  }

  (*(v78 + 8))(v51, v52);
  v80 = v53;
  sub_29D6C320C();
  sub_29D8C3B68(&qword_2A1A24AE0, sub_29D6C320C);
  v56 = sub_29D938418();

  return v56;
}

void sub_29D8C3648()
{
  if (!qword_2A1A22490)
  {
    sub_29D8C36DC();
    sub_29D8C3B68(&qword_2A1A22630, sub_29D8C36DC);
    v0 = sub_29D938128();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22490);
    }
  }
}

void sub_29D8C36DC()
{
  if (!qword_2A1A22628)
  {
    sub_29D8C3788(255);
    sub_29D6CE0BC();
    sub_29D8C3B68(&qword_2A1A22438, sub_29D8C3788);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22628);
    }
  }
}

void sub_29D8C37BC()
{
  if (!qword_2A1A225F0)
  {
    sub_29D6B7D8C();
    sub_29D8C3B68(&qword_2A1A22420, sub_29D6B7D8C);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A225F0);
    }
  }
}

void sub_29D8C3858()
{
  if (!qword_2A1A22658)
  {
    sub_29D8C37BC();
    sub_29D8C3B68(&qword_2A1A225F8, sub_29D8C37BC);
    v0 = sub_29D9380D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22658);
    }
  }
}

void sub_29D8C38EC()
{
  if (!qword_2A1A22540)
  {
    sub_29D8C3858();
    sub_29D6C36D8(255);
    sub_29D8C3B68(&qword_2A1A22660, sub_29D8C3858);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22540);
    }
  }
}

uint64_t sub_29D8C39A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29D934178() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_29D8C2938(a1, v2 + v6, v9, a2);
}

void sub_29D8C3A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
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

uint64_t sub_29D8C3B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8C3B68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D8C3BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29D8C5D20();
    v2 = sub_29D93ABA8();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_29D935E88();
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
        v17 = *v16;
        v18 = v16[1];
        sub_29D6945AC(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_29D6959E8(v29, v24);
        sub_29D745508();
        sub_29D935E88();
        swift_dynamicCast();
        sub_29D6940E0(&v25, v27);
        sub_29D6940E0(v27, v28);
        sub_29D6940E0(v28, &v26);
        result = sub_29D6907F0(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_29D69417C(v12);
          result = sub_29D6940E0(&v26, v12);
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
          *(v2[6] + 16 * result) = v19;
          result = sub_29D6940E0(&v26, (v2[7] + 32 * result));
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

void sub_29D8C3EF0(void *a1)
{
  v4 = *v1;
  v5 = [a1 healthDataSource];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 environmentDataSource];
    v8 = sub_29D8C4FC0(v6, v7);
    if (v2)
    {
      sub_29D936978();
    }

    else
    {
      v17 = v8;

      sub_29D8C3BB0(v17);
      sub_29D936978();
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = sub_29D937878();
    v11 = sub_29D93A298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D677000, v10, v11, "[%s] Tried to create a payload with a dataSource containing nil healthDataSource", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    sub_29D73F010(MEMORY[0x29EDCA190]);
  }
}

uint64_t sub_29D8C41F0()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

double sub_29D8C424C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_29D6907F0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29D693138();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_29D6959E8((*(v12 + 56) + 40 * v9), a3);
    sub_29D9184D8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_29D8C42F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_29D6907F0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29D6932D4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_29D6940E0((*(v12 + 56) + 32 * v9), a3);
    sub_29D918694(v9, v12);
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

uint64_t sub_29D8C439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x29EDC99B0];
  v32 = MEMORY[0x29EDC99B0];
  v33 = MEMORY[0x29EDC99D8];
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_29D6907F0(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_29D69417C(v20);
      return sub_29D6959E8(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_29D6907F0(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = sub_29D693DDC(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_29D8C4DC8(v13, a3, a4, *v28, v28[1], v19);
  sub_29D935E88();
  return sub_29D69417C(&v31);
}

uint64_t sub_29D8C458C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x29EDC9BA8];
  v26 = MEMORY[0x29EDC9BC8];
  v9 = *a5;
  v11 = sub_29D6907F0(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_29D69417C(v18);
      return sub_29D6959E8(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_29D6907F0(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_29D693DDC(&v24, MEMORY[0x29EDC9BA8]);
  sub_29D8C4D34(v11, a2, a3, *v23, v17);
  sub_29D935E88();
  return sub_29D69417C(&v24);
}

uint64_t sub_29D8C46F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_29D6B73CC();
  v32 = v10;
  v33 = sub_29D6B7418();
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_29D6907F0(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_29D69417C(v20);
      return sub_29D6959E8(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_29D6907F0(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = sub_29D693DDC(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_29D8C4C84(v13, a2, a3, *v28, v19);
  sub_29D935E88();
  return sub_29D69417C(&v31);
}

uint64_t sub_29D8C48EC(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x29EDC9A98];
  v26 = MEMORY[0x29EDC9AB0];
  v9 = *a5;
  v11 = sub_29D6907F0(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      sub_29D69417C(v18);
      return sub_29D6959E8(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_29D6907F0(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_29D693DDC(&v24, MEMORY[0x29EDC9A98]);
  sub_29D8C4E58(v11, a2, a3, *v23, v17);
  sub_29D935E88();
  return sub_29D69417C(&v24);
}

uint64_t sub_29D8C4A50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v14 = sub_29D693F78(&v36);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = *a5;
  v17 = sub_29D6907F0(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_29D69417C(v24);
      return sub_29D6959E8(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_29D693138();
    goto LABEL_7;
  }

  sub_29D690E5C(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_29D6907F0(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_29D93ADC8();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = sub_29D693DDC(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30, v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_29D8C4EE8(v17, a2, a3, v33, v23, a6, a7);
  sub_29D935E88();
  return sub_29D69417C(&v36);
}

uint64_t sub_29D8C4C84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_29D6B73CC();
  v17 = sub_29D6B7418();
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_29D6959E8(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_29D8C4D34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x29EDC9BA8];
  v13 = MEMORY[0x29EDC9BC8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29D6959E8(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_29D8C4DC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x29EDC99B0];
  v14 = MEMORY[0x29EDC99D8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_29D6959E8(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_29D8C4E58(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x29EDC9A98];
  v13 = MEMORY[0x29EDC9AB0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29D6959E8(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_29D8C4EE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_29D693F78(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_29D6959E8(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_29D8C4FC0(uint64_t a1, void *a2)
{
  v127 = a1;
  v3 = v2;
  v5 = *v2;
  v6 = MEMORY[0x29EDCA198];
  v126 = v5;
  v134 = MEMORY[0x29EDCA198];
  v7 = *MEMORY[0x29EDBA370];
  v8 = sub_29D939D68();
  v10 = v9;
  v11 = [a2 activePairedDeviceProductType];
  v12 = MEMORY[0x29EDC99D8];
  if (v11)
  {
    v13 = v11;
    v125 = v8;
    v14 = MEMORY[0x29EDC99B0];
    v15 = sub_29D939D68();
    v17 = v16;

    v132 = v14;
    v133 = v12;
    *&v131 = v15;
    *(&v131 + 1) = v17;
    sub_29D6959E8(&v131, v129);
    LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
    v128 = v6;
    v18 = v130;
    v19 = sub_29D693DDC(v129, v130);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v19, v19);
    v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    sub_29D8C4A50(v22, v125, v10, v15, &v128, v14, v12);

    sub_29D69417C(v129);
    v134 = v128;
  }

  else
  {
    sub_29D8C424C(v8, v10, &v131);

    sub_29D745454(&v131);
  }

  v24 = *MEMORY[0x29EDBA378];
  v125 = sub_29D939D68();
  v26 = v25;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v27 = sub_29D937898();
  sub_29D69C6C0(v27, qword_2A1A2C008);
  v28 = sub_29D93A2F8();
  v132 = sub_29D6B73CC();
  v133 = sub_29D6B7418();
  *&v131 = v28;
  sub_29D6959E8(&v131, v129);
  v29 = v134;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128 = v29;
  v31 = v130;
  v32 = sub_29D693DDC(v129, v130);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32, v32);
  v35 = (&v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  sub_29D8C46F4(*v35, v125, v26, isUniquelyReferenced_nonNull_native, &v128);

  sub_29D69417C(v129);
  v37 = v128;
  v134 = v128;
  v38 = *MEMORY[0x29EDBA380];
  v39 = sub_29D939D68();
  v41 = v40;
  v42 = sub_29D93A308();
  v43 = MEMORY[0x29EDC99B0];
  v132 = MEMORY[0x29EDC99B0];
  v44 = MEMORY[0x29EDC99D8];
  v133 = MEMORY[0x29EDC99D8];
  *&v131 = v42;
  *(&v131 + 1) = v45;
  sub_29D6959E8(&v131, v129);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v37;
  v47 = v130;
  v48 = sub_29D693DDC(v129, v130);
  v49 = *(*(v47 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v48, v48);
  v51 = (&v124 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  sub_29D8C439C(*v51, v51[1], v39, v41, v46, &v128);

  sub_29D69417C(v129);
  v53 = v128;
  v54 = *(v3 + 16);
  v132 = MEMORY[0x29EDC9A98];
  v133 = MEMORY[0x29EDC9AB0];
  LOBYTE(v131) = v54;
  sub_29D6959E8(&v131, v129);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v53;
  v56 = sub_29D693DDC(v129, v130);
  sub_29D8C48EC(*v56, 0x72616F626E4F7369, 0xEE004E5448646564, v55, &v128);
  sub_29D69417C(v129);
  v57 = v128;
  v134 = v128;
  v58 = v3[4];
  if (v58)
  {
    v59 = v3[3];
    v132 = v43;
    v133 = v44;
    *&v131 = v59;
    *(&v131 + 1) = v58;
    sub_29D6959E8(&v131, v129);
    sub_29D935E88();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v57;
    v61 = v130;
    v62 = sub_29D693DDC(v129, v130);
    v63 = *(*(v61 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v62, v62);
    v65 = &v124 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v65);
    sub_29D8C4A50(v65, 0x546C616E72756F6ALL, 0xEB00000000657079, v60, &v128, v43, v44);
    sub_29D69417C(v129);
    v134 = v128;
  }

  else
  {
    sub_29D8C424C(0x546C616E72756F6ALL, 0xEB00000000657079, &v131);
    sub_29D745454(&v131);
  }

  v67 = MEMORY[0x29EDC9BA8];
  v68 = MEMORY[0x29EDC9BC8];
  if (v3[6])
  {
    sub_29D8C424C(0xD00000000000001ALL, 0x800000029D96CA30, &v131);
    sub_29D745454(&v131);
  }

  else
  {
    v69 = v3[5];
    v132 = MEMORY[0x29EDC9BA8];
    v133 = MEMORY[0x29EDC9BC8];
    *&v131 = v69;
    sub_29D6959E8(&v131, v129);
    v70 = v134;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v70;
    v72 = v130;
    v73 = sub_29D693DDC(v129, v130);
    v74 = *(*(v72 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v73, v73);
    v76 = &v124 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v76);
    sub_29D8C4A50(v76, 0xD00000000000001ALL, 0x800000029D96CA30, v71, &v128, v67, v68);
    sub_29D69417C(v129);
    v134 = v128;
  }

  if (v3[8])
  {
    sub_29D8C424C(0xD000000000000018, 0x800000029D96CA50, &v131);
    sub_29D745454(&v131);
    v78 = v134;
  }

  else
  {
    v79 = v3[7];
    v132 = v67;
    v133 = v68;
    *&v131 = v79;
    sub_29D6959E8(&v131, v129);
    v80 = v134;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v80;
    v82 = v130;
    v83 = sub_29D693DDC(v129, v130);
    v84 = *(*(v82 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v83, v83);
    v86 = &v124 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v87 + 16))(v86);
    sub_29D8C4A50(v86, 0xD000000000000018, 0x800000029D96CA50, v81, &v128, v67, v68);
    sub_29D69417C(v129);
    v78 = v128;
  }

  v88 = v3[9];
  v132 = v67;
  v133 = v68;
  *&v131 = v88;
  sub_29D6959E8(&v131, v129);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v78;
  v90 = sub_29D693DDC(v129, v130);
  sub_29D8C458C(*v90, 0xD000000000000023, 0x800000029D95B510, v89, &v128);
  sub_29D69417C(v129);
  v91 = v128;
  v134 = v128;
  if (v3[11])
  {
    sub_29D8C424C(0xD000000000000019, 0x800000029D96CA70, &v131);
    sub_29D745454(&v131);
  }

  else
  {
    v92 = v3[10];
    v132 = v67;
    v133 = v68;
    *&v131 = v92;
    sub_29D6959E8(&v131, v129);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v91;
    v94 = v130;
    v95 = sub_29D693DDC(v129, v130);
    v96 = *(*(v94 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v95, v95);
    v98 = &v124 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v99 + 16))(v98);
    sub_29D8C4A50(v98, 0xD000000000000019, 0x800000029D96CA70, v93, &v128, v67, v68);
    sub_29D69417C(v129);
    v134 = v128;
  }

  v100 = MEMORY[0x29EDC99D8];
  v101 = *(v3 + 89);
  v102 = MEMORY[0x29EDC99B0];
  if (v101 > 2)
  {
    if (v101 == 3)
    {
      v103 = 0xE700000000000000;
      v104 = 0x656C69666F7270;
    }

    else if (v101 == 4)
    {
      v103 = 0xEC0000006E6F6974;
      v104 = 0x6163696669746F6ELL;
    }

    else
    {
      v103 = 0xE700000000000000;
      v104 = 0x6E776F6E6B6E75;
    }
  }

  else if (*(v3 + 89))
  {
    if (v101 == 1)
    {
      v103 = 0xE600000000000000;
      v104 = 0x686372616573;
    }

    else
    {
      v103 = 0xE700000000000000;
      v104 = 0x676E6972616873;
    }
  }

  else
  {
    v103 = 0xE700000000000000;
    v104 = 0x7972616D6D7573;
  }

  v132 = MEMORY[0x29EDC99B0];
  v133 = MEMORY[0x29EDC99D8];
  *&v131 = v104;
  *(&v131 + 1) = v103;
  sub_29D6959E8(&v131, v129);
  v105 = v134;
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v105;
  v107 = v130;
  v108 = sub_29D693DDC(v129, v130);
  v109 = *(*(v107 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v108, v108);
  v111 = (&v124 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v112 + 16))(v111);
  sub_29D8C439C(*v111, v111[1], 0x6E616E65766F7270, 0xEA00000000006563, v106, &v128);
  sub_29D69417C(v129);
  v113 = v128;
  v114 = sub_29D79D70C(*(v3 + 90));
  v132 = v102;
  v133 = v100;
  *&v131 = v114;
  *(&v131 + 1) = v115;
  sub_29D6959E8(&v131, v129);
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v113;
  v117 = v130;
  v118 = sub_29D693DDC(v129, v130);
  v119 = *(*(v117 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v118, v118);
  v121 = (&v124 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v122 + 16))(v121);
  sub_29D8C439C(*v121, v121[1], 1701869940, 0xE400000000000000, v116, &v128);
  sub_29D69417C(v129);
  return v128;
}

void sub_29D8C5D20()
{
  if (!qword_2A17B1128)
  {
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1128);
    }
  }
}

id sub_29D8C5D84(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v10 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v12 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint] = 0;
  v13 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  v14 = sub_29D9336F8();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  (*(*(v15 - 8) + 56))(&v4[v13], 0, 2, v15);
  *&v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore] = 0;
  v16 = &v4[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item];
  v17 = type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v20.receiver = v4;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29D8C6528();
  sub_29D8C6B3C();

  return v18;
}

uint64_t sub_29D8C5FCC()
{
  v1 = v0;
  v2 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D8C8C28(0, &qword_2A17B7808, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v54[-v10];
  v12 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  swift_beginAccess();
  sub_29D8C8DB8(v1 + v18, &v55, &qword_2A17B1830, sub_29D69F188);
  if (!v57)
  {
    goto LABEL_19;
  }

  sub_29D69F188();
  v19 = swift_dynamicCast();
  (*(v13 + 56))(v11, v19 ^ 1u, 1, v12);
  v20 = *(v13 + 48);
  v13 += 48;
  if (v20(v11, 1, v12) == 1)
  {
LABEL_20:
    sub_29D8C8E24(v11, &qword_2A17B7808, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_29D93AA18();
    swift_getObjectType();
    v51 = sub_29D93AF08();
    v53 = v52;

    v55 = v51;
    v56 = v53;
    MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D96CBD0);
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  sub_29D8C8E80(v11, v17);
  v21 = v17[2];
  v22 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore);
  *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore) = v21;
  v23 = v21;

  v11 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel);
  v24 = v17[5];
  v25 = v17[6];
  v26 = sub_29D939D28();
  v27 = &off_29F357000;
  [v11 setText_];

  v28 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel);
  if (v17[8])
  {
    v29 = v17[7];
    v30 = sub_29D939D28();
  }

  else
  {
    v30 = 0;
  }

  [v28 setText_];

  v31 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView);
  v32 = [v11 font];
  if (!v32)
  {
    __break(1u);
LABEL_19:
    sub_29D8C8E24(&v55, &qword_2A17B1830, sub_29D69F188);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = sub_29D713B00(v32);

  [v31 setImage_];
  v35 = [v31 image];
  v36 = v35;
  if (v35)
  {
  }

  [v31 setHidden_];
  v37 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  v38 = *(v1 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel);
  v39 = v17[13];
  if (v39)
  {
    v40 = v6;
    v41 = v17[12];
    v42 = v38;
    v6 = v40;
    v27 = &off_29F357000;
    v39 = sub_29D939D28();
  }

  else
  {
    v43 = v38;
  }

  [v38 v27[176]];

  sub_29D8C8C7C(v17 + *(v12 + 52), v6);
  v44 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  swift_beginAccess();
  sub_29D8C8EE4(v6, v1 + v44);
  swift_endAccess();
  v45 = [*(v1 + v37) text];
  v46 = v45;
  if (v45)
  {
  }

  v47 = v46 == 0;
  v48 = v46 != 0;
  v49 = v47;
  [*(v1 + v37) setHidden_];
  sub_29D8C814C(v48);
  sub_29D8C8504([v31 isHidden] ^ 1);
  return sub_29D8C9114(v17, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
}

void sub_29D8C6528()
{
  v1 = v0;
  v2 = sub_29D9350C8();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8C8C28(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v48 = &v43 - v12;
  v13 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView];
  v15 = v46;
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  [*&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v0 contentView];
  [v17 addSubview_];

  v18 = [v1 contentView];
  [v18 addSubview_];

  v19 = [v1 contentView];
  [v19 addSubview_];

  v20 = [v1 contentView];
  [v20 addSubview_];

  [v13 setAdjustsFontForContentSizeCategory_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v21 = *MEMORY[0x29EDC80E0];
  v22 = *MEMORY[0x29EDC76F8];
  v23 = sub_29D93A658();
  [v13 setFont_];

  [v13 setNumberOfLines_];
  [v14 &selRef_childViewControllers];
  v24 = *MEMORY[0x29EDC8118];
  v25 = sub_29D93A658();
  [v14 setFont_];

  v26 = objc_opt_self();
  v27 = [v26 secondaryLabelColor];
  [v14 setTextColor_];

  v28 = v47;
  [v14 setNumberOfLines_];
  LODWORD(v29) = 1148846080;
  v30 = v48;
  [v46 setContentCompressionResistancePriority:0 forAxis:v29];
  [*&v1[v16] setAdjustsFontForContentSizeCategory_];
  v31 = *&v1[v16];
  v32 = sub_29D93A658();
  [v31 setFont_];

  v33 = *&v1[v16];
  v34 = [v26 systemBlueColor];
  [v33 setTextColor_];

  [*&v1[v16] setUserInteractionEnabled_];
  v35 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:v1 action:sel_linkTapped];
  [*&v1[v16] addGestureRecognizer_];
  sub_29D9379D8();
  v36 = sub_29D9379E8();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v30, 0, 1, v36);
  v38 = MEMORY[0x29ED6A980](v30);
  MEMORY[0x29ED6A970](v38);
  if ((*(v37 + 48))(v28, 1, v36))
  {
    v39 = MEMORY[0x29EDC77B8];
    sub_29D8C8DB8(v28, v30, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
    MEMORY[0x29ED6A980](v30);

    sub_29D8C8E24(v28, &qword_2A17B1848, v39);
  }

  else
  {
    v41 = v43;
    v40 = v44;
    v42 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x29EDC1D60], v45);
    sub_29D9350A8();
    (*(v40 + 8))(v41, v42);
    sub_29D9379B8();
    MEMORY[0x29ED6A980](v28);
  }
}

void sub_29D8C6B3C()
{
  v1 = [v0 contentView];
  v2 = [v1 bottomAnchor];

  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  v4 = [*(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel) bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4 constant:15.0];

  v6 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint);
  v62 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint) = v5;

  v7 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel);
  v8 = [v7 leadingAnchor];
  v9 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView);
  v10 = [v9 trailingAnchor];
  v11 = [v8 &selRef_dataProvider + 6];

  v12 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint;
  v13 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint);
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint) = v11;

  v61 = v3;
  v14 = [*(v0 + v3) topAnchor];
  v63 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel);
  v15 = [v63 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  v17 = *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint);
  v64 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint) = v16;

  sub_29D6A0C58();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D946510;
  v19 = [v9 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
  *(v18 + 32) = v22;
  v23 = [v9 firstBaselineAnchor];
  v24 = [v7 firstBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v18 + 40) = v25;
  v26 = [v7 topAnchor];
  v27 = [v0 &selRef_dateForKey_completion_];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:15.0];
  *(v18 + 48) = v29;
  v30 = *(v0 + v12);
  if (!v30)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v18 + 56) = v30;
  v31 = v30;
  v32 = [v7 trailingAnchor];
  v33 = [v0 &selRef_dateForKey_completion_];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintLessThanOrEqualToAnchor:v34 constant:-16.0];
  *(v18 + 64) = v35;
  v36 = [v63 &selRef_irregularHeartRhythmFooterLinkTitle];
  v37 = [v7 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v18 + 72) = v38;
  v39 = [v63 leadingAnchor];
  v40 = [v0 &selRef_dateForKey_completion_];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:16.0];
  *(v18 + 80) = v42;
  v43 = [v63 trailingAnchor];
  v44 = [v0 &selRef_dateForKey_completion_];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:-16.0];
  *(v18 + 88) = v46;
  v47 = *&v64[v0];
  if (!v47)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v18 + 96) = v47;
  v48 = *(v0 + v61);
  v49 = v47;
  v50 = [v48 leadingAnchor];
  v51 = [v0 &selRef_dateForKey_completion_];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52 constant:16.0];
  *(v18 + 104) = v53;
  v54 = [*(v0 + v61) trailingAnchor];
  v55 = [v0 &selRef_dateForKey_completion_];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56 constant:-16.0];
  *(v18 + 112) = v57;
  v58 = *(v0 + v62);
  if (!v58)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v59 = objc_opt_self();
  *(v18 + 120) = v58;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v60 = v58;
  v65 = sub_29D939F18();

  [v59 activateConstraints_];
}

void sub_29D8C7220()
{
  ObjectType = swift_getObjectType();
  v123 = sub_29D934C58();
  v118 = *(v123 - 8);
  v1 = *(v118 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v123, v2);
  v120 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v117 = &v109 - v6;
  sub_29D8C8C28(0, &qword_2A1A24720, MEMORY[0x29EDC1948]);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v115 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v109 - v13;
  v15 = sub_29D9371A8();
  v112 = *(v15 - 8);
  v113 = v15;
  v16 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_29D9346E8();
  v124 = *(v121 - 8);
  v20 = *(v124 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v121, v21);
  v119 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v122 = &v109 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = &v109 - v29;
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v114 = &v109 - v33;
  MEMORY[0x2A1C7C4A8](v32, v34);
  v125 = &v109 - v35;
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v37 = v36;
  v38 = *(v36 - 8);
  v39 = *(v38 + 64);
  v41 = MEMORY[0x2A1C7C4A8](v36, v40);
  v43 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v44);
  v46 = &v109 - v45;
  v47 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v47 - 8, v49);
  v51 = &v109 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  swift_beginAccess();
  sub_29D8C8C7C(&v0[v52], v51);
  v53 = (*(v38 + 48))(v51, 2, v37);
  if (v53)
  {
    if (v53 == 1)
    {
      v54 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore];
      if (v54)
      {
        v55 = *MEMORY[0x29EDBA6F0];
        v56 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
        v109 = v54;
        v57 = [v56 initWithFeatureIdentifier:v55 healthStore:?];
        v58 = *MEMORY[0x29EDC1768];
        v59 = *(v124 + 104);
        v60 = v121;
        v59(v125, v58, v121);
        sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
        v110 = v57;
        sub_29D937278();
        v111 = v0;
        ObjectType = v59;
        v126 = sub_29D67BF28;
        v127 = 0;
        sub_29D76C9EC();
        sub_29D934D08();
        v71 = v115;
        sub_29D8C8DB8(v14, v115, &qword_2A1A24720, MEMORY[0x29EDC1948]);
        v72 = sub_29D9349A8();
        v73 = *(v72 - 8);
        v74 = (*(v73 + 48))(v71, 1, v72);
        if (v74 == 1)
        {
          v75 = v71;
          v76 = MEMORY[0x29EDC1948];
          sub_29D8C8E24(v14, &qword_2A1A24720, MEMORY[0x29EDC1948]);
          (*(v112 + 8))(v19, v113);
          v77 = v124;
          v78 = v125;
          (*(v124 + 8))(v125, v60);
          sub_29D8C8E24(v75, &qword_2A1A24720, v76);
          v79 = v114;
          ObjectType(v114, v58, v60);
          (*(v77 + 32))(v78, v79, v60);
        }

        else
        {
          sub_29D934958();
          sub_29D8C8E24(v14, &qword_2A1A24720, MEMORY[0x29EDC1948]);
          (*(v112 + 8))(v19, v113);
          v80 = v124;
          v78 = v125;
          (*(v124 + 8))(v125, v60);
          (*(v73 + 8))(v71, v72);
          v81 = *(v80 + 32);
          v82 = v114;
          v81(v114, v30, v60);
          v81(v78, v82, v60);
        }

        v83 = v123;
        v84 = v60;
        v86 = v117;
        v85 = v118;
        v87 = v122;
        v88 = v124;
        v89 = *(v124 + 16);
        v89(v122, v78, v84);
        (*(v85 + 104))(v86, *MEMORY[0x29EDC1BF0], v83);
        v90 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
        v91 = v83;
        v92 = v119;
        v89(v119, v87, v84);
        v93 = v120;
        (*(v85 + 16))(v120, v86, v91);
        v94 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
        v68 = v109;
        v95 = sub_29D7BB5B4(v92, v93, v68);
        sub_29D8C8CE0();
        v96 = v95;
        v97 = sub_29D9365D8();
        v98 = qword_2A17B0D68;
        v99 = v97;
        if (v98 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        v100 = sub_29D939D28();

        [v99 setTitle_];

        static String.hypertensionAccessibilityIdentifier(_:)();
        swift_arrayDestroy();
        v101 = sub_29D939D28();

        [v99 setAccessibilityIdentifier_];

        (*(v85 + 8))(v86, v123);
        v102 = *(v88 + 8);
        v102(v122, v84);
        v103 = [objc_allocWithZone(MEMORY[0x29EDC7B80]) initWithRootViewController_];

        v104 = [v111 viewController];
        if (v104)
        {
          v105 = v104;
          [v104 presentViewController:v103 animated:1 completion:0];

          v102(v125, v84);
          return;
        }

        v102(v125, v84);

        goto LABEL_21;
      }
    }

    else
    {
      v67 = *&v0[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore];
      if (v67)
      {
        v68 = v67;
        v69 = [v0 viewController];
        if (v69)
        {
          v70 = v69;
          sub_29D73ADB0(v69, v68);

          return;
        }

LABEL_21:

        return;
      }
    }

    v126 = 0;
    v127 = 0xE000000000000000;
    sub_29D93AA18();
    swift_getObjectType();
    v106 = sub_29D93AF08();
    v108 = v107;

    v126 = v106;
    v127 = v108;
    MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D96CBD0);
    sub_29D93AB28();
    __break(1u);
  }

  else
  {
    sub_29D8C8D38(v51, v46);
    v61 = [objc_opt_self() defaultWorkspace];
    if (v61)
    {
      v62 = v61;
      sub_29D8C8DB8(v46, v43, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
      v63 = sub_29D9336F8();
      v64 = *(v63 - 8);
      v65 = 0;
      if ((*(v64 + 48))(v43, 1, v63) != 1)
      {
        v65 = sub_29D9336B8();
        (*(v64 + 8))(v43, v63);
      }

      sub_29D73F010(MEMORY[0x29EDCA190]);
      v66 = sub_29D939C58();

      [v62 openSensitiveURL:v65 withOptions:v66];
    }

    sub_29D8C8E24(v46, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  }
}

void sub_29D8C814C(char a1)
{
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D941B10;
  v4 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint;
  v5 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint];
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v3;
  *(v3 + 32) = v5;
  v7 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint;
  v8 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint];
  if (!v8)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = objc_opt_self();
  *(v6 + 40) = v8;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v10 = v5;
  v11 = v8;
  v12 = sub_29D939F18();

  [v9 deactivateConstraints_];

  if (a1)
  {
    v13 = [v1 contentView];
    v14 = [v13 bottomAnchor];

    v15 = [*&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel] bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:15.0];
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel];
    v18 = [v17 text];
    if (v18)
    {
    }

    else
    {
      v17 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel];
    }

    v15 = v17;
    v19 = [v1 contentView];
    v20 = [v19 bottomAnchor];

    v14 = [v15 &selRef_name + 5];
    v16 = [v20 constraintEqualToAnchor:v14 constant:15.0];
  }

  v21 = *&v1[v4];
  *&v1[v4] = v16;

  v22 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel];
  v23 = [v22 text];
  if (v23)
  {
  }

  else
  {
    v22 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel];
  }

  v24 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel];
  v25 = v22;
  v26 = [v24 topAnchor];
  v27 = [v25 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  v29 = *&v1[v7];
  *&v1[v7] = v28;

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D941B10;
  v31 = *&v1[v4];
  if (!v31)
  {
    goto LABEL_19;
  }

  *(v30 + 32) = v31;
  v32 = *&v1[v7];
  if (!v32)
  {
LABEL_20:
    __break(1u);
    return;
  }

  *(v30 + 40) = v32;
  v33 = v31;
  v34 = v32;
  v35 = sub_29D939F18();

  [v9 activateConstraints_];
}

void sub_29D8C8504(char a1)
{
  sub_29D6A0C58();
  v3 = swift_allocObject();
  v19[1] = 3;
  *(v3 + 16) = xmmword_29D940030;
  v4 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint;
  v5 = *&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint];
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v3;
  v7 = objc_opt_self();
  *(v6 + 32) = v5;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v8 = v5;
  v9 = sub_29D939F18();

  [v7 deactivateConstraints_];

  v10 = [*&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel] leadingAnchor];
  if (a1)
  {
    v11 = [*&v1[OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView] trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:{3.0, 1}];
  }

  else
  {
    v13 = [v1 contentView];
    v11 = [v13 leadingAnchor];

    v12 = [v10 constraintEqualToAnchor:v11 constant:{16.0, 1}];
  }

  v14 = v12;

  v15 = *&v1[v4];
  *&v1[v4] = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = *v19;
  v17 = *&v1[v4];
  if (!v17)
  {
    goto LABEL_10;
  }

  *(v16 + 32) = v17;
  v18 = v17;
  v20 = sub_29D939F18();

  [v7 activateConstraints_];
}

id sub_29D8C87C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8C8918()
{
  result = type metadata accessor for HypertensionNotificationsStatusURLDestination(319);
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

uint64_t sub_29D8C8A20()
{
  sub_29D8C8C28(319, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_29D8C8A94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  swift_beginAccess();
  return sub_29D8C8DB8(v1 + v3, a1, &qword_2A17B1830, sub_29D69F188);
}

uint64_t sub_29D8C8B08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D8C5FCC();
  return sub_29D8C8E24(a1, &qword_2A17B1830, sub_29D69F188);
}

uint64_t (*sub_29D8C8B90(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D8C8BF4;
}

uint64_t sub_29D8C8BF4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_29D8C5FCC();
  }

  return result;
}

void sub_29D8C8C28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D8C8C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D8C8CE0()
{
  result = qword_2A17B1C00;
  if (!qword_2A17B1C00)
  {
    type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C00);
  }

  return result;
}

uint64_t sub_29D8C8D38(uint64_t a1, uint64_t a2)
{
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8C8DB8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D8C8C28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D8C8E24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D8C8C28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8C8E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8C8EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D8C8F48()
{
  v1 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v2 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_detailLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_statusImageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v4 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_titleLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_linkTopConstraint) = 0;
  v5 = OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_urlDestination;
  v6 = sub_29D9336F8();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  (*(*(v7 - 8) + 56))(v0 + v5, 0, 2, v7);
  *(v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_healthStore) = 0;
  v8 = v0 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsStatusCollectionViewCell_item;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D8C9114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8C9194()
{
  sub_29D8CDF68(319, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_29D8C92B0@<X0>(uint64_t a1@<X8>)
{
  v3 = _s14descr2A243C641C15SettingsContentVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = sub_29D9346E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v1 + v20, v13);
  if ((*(v4 + 48))(v13, 1, v3))
  {
    sub_29D8CE3E4(v13, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    return (*(v15 + 104))(a1, *MEMORY[0x29EDC1768], v14);
  }

  else
  {
    sub_29D6E5560(v13, v8);
    sub_29D8CE3E4(v13, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    (*(v15 + 16))(v19, v8, v14);
    sub_29D6E5644(v8);
    return (*(v15 + 32))(a1, v19, v14);
  }
}

uint64_t sub_29D8C9560()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D939978();
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v69 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29D93A548();
  v74 = *(v72 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v72, v6);
  v66 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CE170();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v68 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CE23C();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v73 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CE318();
  v19 = *(v18 - 8);
  v80 = v18;
  v81 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v75 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x29EDCA298];
  v67 = MEMORY[0x29EDC9C68];
  sub_29D8CDF68(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v27 = v61 - v26;
  sub_29D710880();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v28, v32);
  v34 = v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + qword_2A17B7820 + 32);
  sub_29D693E2C((v0 + qword_2A17B7820), *(v0 + qword_2A17B7820 + 24));
  v85 = sub_29D937258();
  v36 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v37 = sub_29D93A468();
  v86 = v37;
  v62 = sub_29D93A448();
  v38 = *(v62 - 8);
  v83 = *(v38 + 56);
  v63 = v38 + 56;
  v83(v27, 1, 1, v62);
  sub_29D6B7D8C();
  sub_29D8CDEF8(&qword_2A1A22420, sub_29D6B7D8C);
  v82 = sub_29D706380();
  sub_29D938538();
  sub_29D8CE3E4(v27, &unk_2A1A248F0, v84);

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v41 = ObjectType;
  *(v40 + 16) = v39;
  *(v40 + 24) = v41;
  v61[2] = MEMORY[0x29EDB89E8];
  sub_29D8CDEF8(&qword_2A17B2C70, sub_29D710880);
  sub_29D938588();

  (*(v30 + 8))(v34, v29);
  v65 = qword_2A17B7828;
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  v42 = [objc_opt_self() defaultCenter];
  v43 = *MEMORY[0x29EDC8030];
  v44 = v66;
  sub_29D93A558();

  v45 = v69;
  v46 = v70;
  v47 = v71;
  (*(v70 + 104))(v69, *MEMORY[0x29EDCA260], v71);
  v61[1] = v36;
  v48 = sub_29D93A4A8();
  (*(v46 + 8))(v45, v47);
  v85 = v48;
  v49 = v62;
  v83(v27, 1, 1, v62);
  sub_29D8CDEF8(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
  v50 = v68;
  v51 = v72;
  sub_29D938538();
  sub_29D8CE3E4(v27, &unk_2A1A248F0, v84);

  (*(v74 + 8))(v44, v51);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v41;
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, v67);
  sub_29D8CDEF8(&qword_2A17B7888, sub_29D8CE170);
  v54 = v73;
  v55 = v76;
  sub_29D9384C8();

  (*(v77 + 8))(v50, v55);
  v56 = sub_29D93A468();
  v85 = v56;
  v83(v27, 1, 1, v49);
  sub_29D8CDEF8(&qword_2A17B7898, sub_29D8CE23C);
  v57 = v75;
  v58 = v78;
  sub_29D938538();
  sub_29D8CE3E4(v27, &unk_2A1A248F0, v84);

  (*(v79 + 8))(v54, v58);
  *(swift_allocObject() + 16) = v41;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D8CDEF8(&qword_2A17B78A0, sub_29D8CE318);
  v59 = v80;
  sub_29D938478();

  (*(v81 + 8))(v57, v59);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void sub_29D8C9FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v29 - v8;
  v10 = sub_29D9371A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v14 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v30 = a3;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v17, qword_2A1A2BF58);
    (*(v11 + 16))(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    v18 = *(v11 + 80);
    v29 = a1;
    v19 = (v18 + 16) & ~v18;
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v11 + 32))(v21 + v19, v14, v10);
    *(v21 + v20) = v30;
    v31[0] = 0;
    sub_29D9371C8();

    v22 = *&v16[qword_2A17B7848 + 24];
    v23 = *&v16[qword_2A17B7848 + 32];
    v24 = sub_29D693E2C(&v16[qword_2A17B7848], v22);
    v31[3] = v22;
    v31[4] = *(v23 + 8);
    v25 = sub_29D693F78(v31);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    sub_29D826468(v29, v31, v9);
    sub_29D69417C(v31);
    v26 = qword_2A17B7840;
    swift_beginAccess();
    sub_29D6E55C4(v9, &v16[v26]);
    swift_endAccess();
    v27 = &v16[qword_2A17D0E28];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 1);
      swift_getObjectType();
      sub_29D9367C8();

      sub_29D936978();
    }

    else
    {
    }
  }
}

uint64_t sub_29D8CA2FC()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D96D000);
  sub_29D9371A8();
  sub_29D93AB08();
  return 0;
}

void sub_29D8CA3C8(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v21 = a2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v13, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a1;
    v20[0] = 0;
    sub_29D9371C8();

    v14 = *&v12[qword_2A17B7820 + 32];
    sub_29D693E2C(&v12[qword_2A17B7820], *&v12[qword_2A17B7820 + 24]);
    sub_29D937238();
    if (v2)
    {
    }

    else
    {
      v16 = *&v12[qword_2A17B7848 + 24];
      v17 = *&v12[qword_2A17B7848 + 32];
      v18 = sub_29D693E2C(&v12[qword_2A17B7848], v16);
      v20[3] = v16;
      v20[4] = *(v17 + 8);
      v19 = sub_29D693F78(v20);
      (*(*(v16 - 8) + 16))(v19, v18, v16);
      sub_29D826468(v10, v20, v21);

      (*(v6 + 8))(v10, v5);
      sub_29D69417C(v20);
    }
  }

  else
  {
    v15 = _s14descr2A243C641C15SettingsContentVMa();
    (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

uint64_t sub_29D8CA670()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000058, 0x800000029D96CFA0);
  return 0;
}

void **sub_29D8CA708(void **result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = v2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a2;
    v7 = v2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D8CA7FC(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96CF70);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 91;
}

void sub_29D8CA8D0(uint64_t a1)
{
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v15 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D8CE014(a1, v6);
    v9 = qword_2A17B7840;
    swift_beginAccess();
    sub_29D6E55C4(v6, v8 + v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10 + qword_2A17D0E28;
    v12 = v10;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = *(v11 + 8);

    if (v13)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

uint64_t sub_29D8CAA4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29D9346E8();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v45 - v9;
  v11 = _s14descr2A243C641C15SettingsContentVMa();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v45 - v24;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A2C038;
  v27 = sub_29D939D28();
  v28 = [objc_opt_self() imageNamed:v27 inBundle:v26];

  if (v28)
  {
    v29 = qword_2A17B7840;
    swift_beginAccess();
    sub_29D8CE014(v2 + v29, v25);
    v30 = *(v12 + 48);
    if (v30(v25, 1, v11))
    {
      sub_29D8CE3E4(v25, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
LABEL_6:
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4();
      sub_29D69C6C0(v31, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = ObjectType;
      v51 = 0;
      sub_29D9371E8();

      v32 = sub_29D9368F8();
      return (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
    }

    sub_29D6E5560(v25, v16);
    sub_29D8CE3E4(v25, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v38 = &v16[*(v11 + 28)];
    v39 = *(v38 + 1);
    v45 = *v38;
    sub_29D935E88();
    sub_29D6E5644(v16);
    if (!v39)
    {
      goto LABEL_6;
    }

    sub_29D8CE014(v2 + v29, v22);
    if (v30(v22, 1, v11))
    {
      sub_29D8CE3E4(v22, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
      v41 = v47;
      v40 = v48;
      (*(v47 + 104))(v10, *MEMORY[0x29EDC1768], v48);
    }

    else
    {
      sub_29D6E5560(v22, v16);
      sub_29D8CE3E4(v22, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
      v42 = v46;
      v41 = v47;
      v40 = v48;
      (*(v47 + 16))(v46, v16, v48);
      sub_29D6E5644(v16);
      (*(v41 + 32))(v10, v42, v40);
    }

    sub_29D9347C8();
    sub_29D9347A8();
    (*(v41 + 8))(v10, v40);
    v43 = v50;
    sub_29D9368D8();
    v44 = sub_29D9368F8();
    return (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  }

  else
  {
    v34 = sub_29D9368F8();
    v35 = *(*(v34 - 8) + 56);
    v36 = v34;
    v37 = v50;

    return v35(v37, 1, 1, v36);
  }
}

uint64_t sub_29D8CB074()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD00000000000001FLL, 0x800000029D96CF50);
  return 91;
}

uint64_t sub_29D8CB108()
{
  ObjectType = swift_getObjectType();
  v2 = _s14descr2A243C641C15SettingsContentVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v43 - v11;
  v44 = MEMORY[0x29EDCA190];
  v13 = objc_opt_self();
  v14 = sub_29D939D28();
  v15 = [v13 groupSpecifierWithID_];

  if (!v15)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v18, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    v43[2] = 0;
    sub_29D9371E8();

    return MEMORY[0x29EDCA190];
  }

  v16 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v16, v12);
  if ((*(v3 + 48))(v12, 1, v2))
  {
    sub_29D8CE3E4(v12, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
LABEL_4:
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v17, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    v43[1] = 0;
    sub_29D9371E8();

    return MEMORY[0x29EDCA190];
  }

  sub_29D6E5560(v12, v7);
  sub_29D8CE3E4(v12, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  v20 = &v7[*(v2 + 32)];
  v21 = v20[1];
  v23 = v20[2];
  v22 = v20[3];
  v24 = v20[4];
  v25 = v20[5];
  sub_29D87DBEC(*v20, v21);
  sub_29D6E5644(v7);
  if (!v21)
  {
    goto LABEL_4;
  }

  v26 = (v0 + qword_2A17B7830);
  v27 = *(v0 + qword_2A17B7830 + 8);
  *v26 = v24;
  v26[1] = v25;
  sub_29D935E88();

  v28 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v29 = sub_29D939D28();
  v30 = [v28 initWithString_];

  v31 = sub_29D939D28();

  v32 = [v30 localizedStandardRangeOfString_];
  v34 = v33;

  sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v36)
  {
    sub_29D939D68();
    v36 = sub_29D939D28();
  }

  [v15 setProperty:v36 forKey:*MEMORY[0x29EDC62D0]];

  v37 = sub_29D939D28();

  [v15 setProperty:v37 forKey:*MEMORY[0x29EDC62F0]];

  v45.location = v32;
  v45.length = v34;
  v38 = NSStringFromRange(v45);
  if (!v38)
  {
    sub_29D939D68();
    v38 = sub_29D939D28();
  }

  [v15 setProperty:v38 forKey:*MEMORY[0x29EDC62E0]];

  v39 = [objc_opt_self() valueWithNonretainedObject_];
  [v15 setProperty:v39 forKey:*MEMORY[0x29EDC62E8]];
  sub_29D933DC8();
  v40 = sub_29D939D28();

  [v15 setProperty:v40 forKey:*MEMORY[0x29EDC62D8]];

  v41 = v15;
  MEMORY[0x29ED6A300]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29D939F78();
  }

  sub_29D939FA8();

  return v44;
}

uint64_t sub_29D8CB750()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D96CEF0);
  return 91;
}

uint64_t sub_29D8CB7E4()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D96CEC0);
  return 91;
}

uint64_t sub_29D8CB878()
{
  v1 = _s14descr2A243C641C15SettingsContentVMa();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v46 - v14;
  v16 = v0 + qword_2A17B7810;
  v17 = &qword_2A17B7000;
  if (*(v0 + qword_2A17B7810) != 1)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v18 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v18, v15);
  if ((*(v2 + 48))(v15, 1, v1))
  {
    sub_29D8CE3E4(v15, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v19 = 2;
  }

  else
  {
    sub_29D6E5560(v15, v6);
    sub_29D8CE3E4(v15, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v21 = &v6[*(v1 + 20)];
    v22 = *v21;
    v23 = v21[1];
    sub_29D6E5644(v6);
    v19 = v22;
  }

  v24 = [objc_opt_self() aFibBurdenTitleDescription];
  if (!v24)
  {
    sub_29D939D68();
    v24 = sub_29D939D28();
  }

  if (v19 == 2)
  {
    v20 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v20 = [objc_opt_self() preferenceSpecifierNamed:v24 target:v0 set:sel_setAFibBurdenFeatureEnabledWithValue_ get:sel_isAFibBurdenFeatureEnabled detail:0 cell:6 edit:0];

  if (v20)
  {
    v25 = sub_29D939D28();
    [v20 setIdentifier_];

    v26 = sub_29D939FC8();
    [v20 setProperty:v26 forKey:*MEMORY[0x29EDC62C8]];

    v24 = sub_29D939FC8();
    [v20 setProperty:v24 forKey:*MEMORY[0x29EDC62A0]];
    v17 = &qword_2A17B7000;
    goto LABEL_12;
  }

  v17 = &qword_2A17B7000;
LABEL_13:
  if (*(v16 + 1) != 1)
  {
LABEL_21:
    v32 = 0;
    goto LABEL_22;
  }

  v27 = v17[264];
  swift_beginAccess();
  sub_29D8CE014(v0 + v27, v12);
  if ((*(v2 + 48))(v12, 1, v1))
  {
    sub_29D8CE3E4(v12, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v28 = 2;
  }

  else
  {
    sub_29D6E5560(v12, v6);
    sub_29D8CE3E4(v12, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v29 = &v6[*(v1 + 24)];
    v30 = *v29;
    v31 = v29[1];
    sub_29D6E5644(v6);
    v28 = v30;
  }

  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  if (v28 == 2)
  {

    goto LABEL_21;
  }

  v41 = objc_opt_self();
  v42 = sub_29D939D28();

  v32 = [v41 preferenceSpecifierNamed:v42 target:v0 set:sel_setAFibBurdenNotificationEnabledWithValue_ get:sel_isAFibBurdenNotificationEnabled detail:0 cell:6 edit:0];

  if (v32)
  {
    v43 = sub_29D939D28();
    [v32 setIdentifier_];

    v44 = sub_29D939FC8();
    [v32 setProperty:v44 forKey:*MEMORY[0x29EDC62C8]];

    v45 = sub_29D939FC8();
    [v32 setProperty:v45 forKey:*MEMORY[0x29EDC62A0]];
  }

LABEL_22:
  v48[4] = v20;
  v48[5] = v32;
  v33 = MEMORY[0x29EDCA190];
  v47 = MEMORY[0x29EDCA190];
  v34 = v32;
  v35 = v20;
  for (i = 0; i != 2; ++i)
  {
    v37 = v48[i + 4];
    if (v37)
    {
      v38 = v37;
      MEMORY[0x29ED6A300]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
      v33 = v47;
    }
  }

  sub_29D8CE0F0();
  swift_arrayDestroy();

  return v33;
}

uint64_t sub_29D8CBF4C()
{
  v1 = _s14descr2A243C641C15SettingsContentVMa();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v12, v11);
  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_29D8CE3E4(v11, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  }

  else
  {
    sub_29D6E5560(v11, v6);
    sub_29D8CE3E4(v11, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v13 = v6[*(v1 + 20)];
    sub_29D6E5644(v6);
  }

  return sub_29D939FC8();
}

id sub_29D8CC124(void *a1)
{
  v1 = a1;
  v2 = sub_29D8CBF4C();

  return v2;
}

void sub_29D8CC168(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v5, qword_2A1A2BF58);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = ObjectType;
  v13[0] = 0;
  v7 = a1;
  sub_29D9371C8();

  v8 = *(v2 + qword_2A17B7818);
  v9 = *MEMORY[0x29EDBA788];
  v10 = swift_allocObject();
  *(v10 + 16) = ObjectType;
  v13[4] = sub_29D8CE0B0;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A244D100;
  v11 = _Block_copy(v13);
  v12 = v9;

  [v8 setFeatureSettingNumber:v7 forKey:v12 completion:v11];
  _Block_release(v11);
}

uint64_t sub_29D8CC32C(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD000000000000026, 0x800000029D96CE00);
  v3 = a1;
  v4 = [v3 description];
  v5 = sub_29D939D68();
  v7 = v6;

  MEMORY[0x29ED6A240](v5, v7);

  return 91;
}

uint64_t sub_29D8CC418(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D968130);
  v3 = a1;
  sub_29D8CDF68(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

void sub_29D8CC520(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D8CC168(v4);
}

uint64_t sub_29D8CC588()
{
  v1 = _s14descr2A243C641C15SettingsContentVMa();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = qword_2A17B7840;
  swift_beginAccess();
  sub_29D8CE014(v0 + v12, v11);
  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_29D8CE3E4(v11, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  }

  else
  {
    sub_29D6E5560(v11, v6);
    sub_29D8CE3E4(v11, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
    v13 = v6[*(v1 + 24)];
    sub_29D6E5644(v6);
  }

  return sub_29D939FC8();
}

id sub_29D8CC760(void *a1)
{
  v1 = a1;
  v2 = sub_29D8CC588();

  return v2;
}

void sub_29D8CC7A4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v6 = sub_29D939968();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D939998();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C75C();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v16, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if ([a1 authorizationStatus] == 2)
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4();
      sub_29D69C6C0(v25, qword_2A1A2BF58);
      v26 = swift_allocObject();
      v27 = v38;
      *(v26 + 16) = a3;
      *(v26 + 24) = v27;
      aBlock[0] = 0;
      v28 = a3;
      sub_29D9371C8();

      v29 = *&v24[qword_2A17B7818];
      swift_getObjectType();
      [v28 BOOLValue];
      v30 = *MEMORY[0x29EDC51C0];
      sub_29D939D68();
      sub_29D93A3E8();
      *(swift_allocObject() + 16) = v27;
      sub_29D93A608();

      (*(v18 + 8))(v22, v17);
    }

    else
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4();
      sub_29D69C6C0(v31, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = v38;
      aBlock[0] = 0;
      sub_29D9371C8();

      sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
      v32 = sub_29D93A468();
      v33 = swift_allocObject();
      *(v33 + 16) = v24;
      aBlock[4] = sub_29D8CDF48;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D6C1F10;
      aBlock[3] = &unk_2A244CFE8;
      v34 = _Block_copy(aBlock);
      v35 = v24;

      sub_29D939988();
      aBlock[0] = MEMORY[0x29EDCA190];
      sub_29D8CDEF8(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
      sub_29D8CDF68(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29D6FC864();
      sub_29D93A888();
      MEMORY[0x29ED6A880](0, v15, v10, v34);
      _Block_release(v34);

      (*(v37 + 8))(v10, v6);
      (*(v36 + 8))(v15, v11);
    }
  }
}

uint64_t sub_29D8CCD54()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD00000000000004FLL, 0x800000029D96CD80);
  return 0;
}

void sub_29D8CCDEC(uint64_t a1)
{
  v1 = a1 + qword_2A17D0E28;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    swift_getObjectType();
    sub_29D9367C8();
    sub_29D936978();
  }

  sub_29D8CD540();
}

uint64_t sub_29D8CCE6C(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD00000000000002BLL, 0x800000029D96CD50);
  v3 = a1;
  v4 = [v3 description];
  v5 = sub_29D939D68();
  v7 = v6;

  MEMORY[0x29ED6A240](v5, v7);

  return 91;
}

uint64_t sub_29D8CCF58(uint64_t result, void *a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D8CD034(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD000000000000043, 0x800000029D96CD00);
  v3 = a1;
  sub_29D8CDF68(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

void sub_29D8CD13C(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_29D693E2C(&a1[qword_2A17B7848], *&a1[qword_2A17B7848 + 24]);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = ObjectType;
  v9 = *v6;
  v11 = a3;
  v10 = a1;

  sub_29D933ED8();
}

void sub_29D8CD248()
{
  v1 = *(v0 + qword_2A17B7830 + 8);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + qword_2A17B7830);
  v3 = objc_opt_self();
  sub_29D935E88();
  v4 = [v3 aFibBurdenArticleLinkURL];
  v5 = sub_29D939D68();
  v7 = v6;

  if (v2 == v5 && v1 == v7)
  {

LABEL_10:

    sub_29D8CD3BC();
    return;
  }

  v9 = sub_29D93AD78();

  if (v9)
  {
    goto LABEL_10;
  }

  sub_29D939DF8();
}

void sub_29D8CD374(void *a1)
{
  v1 = a1;
  sub_29D8CD248();
}

void sub_29D8CD3BC()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D8AD070();
  v1 = objc_allocWithZone(sub_29D934568());
  v2 = sub_29D934558();
  v3 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v4 = v0 + qword_2A17D0E30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    swift_getObjectType();
    v6 = sub_29D936F08();
    sub_29D936978();
    [v6 presentViewController:v3 animated:1 completion:0];
  }
}

void sub_29D8CD540()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v0 = sub_29D939D28();

  v1 = sub_29D939D28();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:{1, 0xE000000000000000}];

  sub_29D9334A8();
  v3 = sub_29D939D28();

  v4 = objc_opt_self();
  v5 = [v4 actionWithTitle:v3 style:1 handler:{0, 0xE000000000000000}];

  sub_29D9334A8();
  v6 = sub_29D939D28();

  aBlock[4] = sub_29D8CD8D0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D799960;
  aBlock[3] = &unk_2A244D088;
  v7 = _Block_copy(aBlock);

  v8 = [v4 actionWithTitle:v6 style:0 handler:{v7, 0xE000000000000000}];
  _Block_release(v7);

  [v2 addAction_];
  [v2 addAction_];
  [v2 setPreferredAction_];
  v9 = v12 + qword_2A17D0E30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    swift_getObjectType();
    v11 = sub_29D936F08();
    sub_29D936978();
    [v11 presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_29D8CD8D0()
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

uint64_t sub_29D8CD9E4()
{
  v1 = *(v0 + qword_2A17B7818);
  sub_29D936978();
  sub_29D69417C((v0 + qword_2A17B7820));
  v2 = *(v0 + qword_2A17B7828);

  v3 = *(v0 + qword_2A17B7830 + 8);

  sub_29D8CE3E4(v0 + qword_2A17B7840, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  sub_29D69417C((v0 + qword_2A17B7848));
  sub_29D68B77C(v0 + qword_2A17D0E28);
  v4 = v0 + qword_2A17D0E30;

  return sub_29D68B77C(v4);
}

uint64_t sub_29D8CDACC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B7818);
  sub_29D936978();
  sub_29D69417C((a1 + qword_2A17B7820));
  v3 = *(a1 + qword_2A17B7828);

  v4 = *(a1 + qword_2A17B7830 + 8);

  sub_29D8CE3E4(a1 + qword_2A17B7840, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  sub_29D69417C((a1 + qword_2A17B7848));
  sub_29D68B77C(a1 + qword_2A17D0E28);
  v5 = a1 + qword_2A17D0E30;

  return sub_29D68B77C(v5);
}

void (*sub_29D8CDC28(uint64_t *a1))(uint64_t, char)
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
  v5 = qword_2A17D0E28;
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

void (*sub_29D8CDCE0(uint64_t *a1))(uint64_t, char)
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
  v5 = qword_2A17D0E30;
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

uint64_t sub_29D8CDD84()
{
  v4 = MEMORY[0x29EDCA190];
  v0 = sub_29D8CB108();
  sub_29D88BF0C(v0);
  v1 = sub_29D8CB878();
  sub_29D88BF0C(v1);
  v2 = sub_29D775B18(v4);

  return v2;
}

id sub_29D8CDE94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8CDEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8CDF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D8CDF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8CE014(uint64_t a1, uint64_t a2)
{
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D8CE0F0()
{
  if (!qword_2A17B7870)
  {
    sub_29D69567C(255, &qword_2A17B2940, 0x29EDC6288);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7870);
    }
  }
}

void sub_29D8CE170()
{
  if (!qword_2A17B7878)
  {
    sub_29D93A548();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8CDEF8(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7878);
    }
  }
}

void sub_29D8CE23C()
{
  if (!qword_2A17B7880)
  {
    sub_29D8CE170();
    sub_29D8CDF68(255, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, MEMORY[0x29EDC9C68]);
    sub_29D8CDEF8(&qword_2A17B7888, sub_29D8CE170);
    v0 = sub_29D938178();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7880);
    }
  }
}

void sub_29D8CE318()
{
  if (!qword_2A17B7890)
  {
    sub_29D8CE23C();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8CDEF8(&qword_2A17B7898, sub_29D8CE23C);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7890);
    }
  }
}

uint64_t sub_29D8CE3E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8CDF68(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8CE498()
{
  v1 = *(sub_29D9371A8() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8CA2FC();
}

id sub_29D8CE524(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v78 = a7;
  v71 = a5;
  v82 = a4;
  v77 = a3;
  v73 = a1;
  v81 = a11;
  v13 = MEMORY[0x29EDC9C68];
  sub_29D8CDF68(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v76 = &v69 - v17;
  sub_29D8CDF68(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa, v13);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v22 = &v69 - v21;
  v23 = sub_29D934C58();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s14descr2A243C641C15SettingsContentVMa();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[3] = a10;
  v88[4] = v81;
  v35 = sub_29D693F78(v88);
  (*(*(a10 - 8) + 32))(v35, v82, a10);
  v82 = a2;
  v74 = v34;
  sub_29D6E5560(a2, v34);
  sub_29D6945AC(v88, v87);
  v79 = v24;
  v36 = *(v24 + 16);
  v75 = v28;
  v81 = a6;
  v80 = v23;
  v72 = v36;
  v36(v28, a6, v23);
  v37 = sub_29D933F18();
  v70 = v71;
  v38 = sub_29D933F08();
  v85 = v37;
  v86 = &off_2A244CEA8;
  v84[0] = v38;
  v39 = objc_allocWithZone(type metadata accessor for AFibBurdenSpecifierDataSource(0));
  v40 = v85;
  v41 = sub_29D693DDC(v84, v85);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v41, v41);
  v44 = (&v69 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v83[3] = v37;
  v83[4] = &off_2A244CEA8;
  v83[0] = v46;
  v69 = v38;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {

    v47 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {

    v47 = MEMORY[0x29EDCA1A0];
  }

  v71 = objc_allocWithZone(type metadata accessor for AFibBurdenSettingsViewController(0));
  *&v39[qword_2A17B7828] = v47;
  v48 = &v39[qword_2A17B7830];
  *v48 = 0;
  *(v48 + 1) = 0;
  v49 = qword_2A17B7840;
  v50 = *(v30 + 56);
  v50(&v39[qword_2A17B7840], 1, 1, v29);
  *&v39[qword_2A17D0E28 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v39[qword_2A17D0E30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v51 = &v39[qword_2A17B7810];
  v52 = BYTE1(v73);
  *v51 = v73 & 1;
  v51[1] = v52 & 1;
  *&v39[qword_2A17B7818] = v77;
  sub_29D6945AC(v87, &v39[qword_2A17B7820]);
  v53 = v29;
  v54 = v70;
  *&v39[qword_2A17B7838] = v70;
  v55 = v74;
  sub_29D6E5560(v74, v22);
  v50(v22, 0, 1, v53);
  swift_beginAccess();
  v56 = v54;
  swift_unknownObjectRetain();
  sub_29D6E55C4(v22, &v39[v49]);
  swift_endAccess();
  sub_29D6945AC(v83, &v39[qword_2A17B7848]);
  v57 = v76;
  v58 = v75;
  v59 = v80;
  v72(v76, v75, v80);
  v60 = v79;
  (*(v79 + 56))(v57, 0, 1, v59);
  HKImproveHealthAndActivityAnalyticsAllowed();
  v61 = sub_29D934C48();
  sub_29D8C9560();

  sub_29D936978();

  v62 = *(v60 + 8);
  v62(v58, v59);
  sub_29D69417C(v87);
  sub_29D6E5644(v55);
  sub_29D69417C(v83);
  sub_29D69417C(v84);
  sub_29D8CDEF8(&qword_2A17B1FF8, type metadata accessor for AFibBurdenSpecifierDataSource);
  v63 = v61;
  v64 = sub_29D9365D8();
  v65 = objc_opt_self();
  v66 = v64;
  v67 = [v65 aFibBurdenSectionTitle];
  if (!v67)
  {
    sub_29D939D68();
    v67 = sub_29D939D28();
  }

  [v66 setTitle_];

  v62(v81, v59);
  sub_29D6E5644(v82);
  sub_29D69417C(v88);
  return v66;
}

uint64_t sub_29D8CECD4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = sub_29D936338();
  type metadata accessor for AFibBurdenEducationSectionGenerator();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 40) = v2;
  swift_unknownObjectRetain();
  v5 = sub_29D7CE120();

  return v5;
}

uint64_t sub_29D8CED54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = 0xD000000000000013;
  *(a5 + 16) = 0x800000029D95C690;
  *(a5 + 24) = a2;
  *(a5 + 32) = a4;
  *(a5 + 40) = a3;
  return result;
}

__n128 sub_29D8CED80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D8CED94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_29D8CEDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D8CEE54()
{
  if (!qword_2A17B78B0)
  {
    sub_29D7CF5AC();
    sub_29D8CEEE8(&unk_2A17B5110, sub_29D7CF5AC);
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B78B0);
    }
  }
}

uint64_t sub_29D8CEEE8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29D8CEF30(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = objc_allocWithZone(type metadata accessor for BloodPressureJournalCreationBestPracticesViewController());
      v7 = &v6[qword_2A17B5BE8];
      *v7 = 0;
      *(v7 + 1) = 0;
      *&v6[qword_2A17B5BF0] = v2;
      *&v6[qword_2A17B5BF8] = *(v2 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager);

      return sub_29D81C20C(0);
    }

    else
    {
      v11 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingCompletionViewController());

      return sub_29D75C9AC(v12);
    }
  }

  else if (a1)
  {
    v8 = objc_allocWithZone(type metadata accessor for BloodPressureJournalCreationNotificationSettingsViewController(0));

    v10 = sub_29D8BB554(v9);

    return v10;
  }

  else
  {
    v3 = objc_allocWithZone(type metadata accessor for BloodPressureJournalTypeSelectionViewController(0));

    return sub_29D85E914(v4);
  }
}

uint64_t type metadata accessor for HypertensionNotificationsSettingsCellViewController()
{
  result = qword_2A17B78B8;
  if (!qword_2A17B78B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8CF110()
{
  v0 = *MEMORY[0x29EDC43E0];
  v2 = sub_29D939D68();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D96D0B0);

  return v2;
}

uint64_t (*sub_29D8CF180(uint64_t *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC43E0];
  v5 = sub_29D939D68();
  v6 = v3;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D96D0B0);

  *a1 = v5;
  a1[1] = v6;
  return sub_29D6C14A0;
}

void sub_29D8CF21C(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = a2;
    v8 = sub_29D937878();
    v9 = sub_29D93A288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      v20 = a3;
      *v10 = 136446466;
      swift_getMetatypeMetadata();
      v12 = sub_29D939DA8();
      v14 = sub_29D6C2364(v12, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v20 = a2;
      v15 = a2;
      sub_29D6A0CD0();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v19);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s] Error when submitting analytics event: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    else
    {
    }
  }
}

id sub_29D8CF424(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D939D68();
    v6 = a4;
    v7 = sub_29D939D28();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for HypertensionNotificationsSettingsCellViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D8CF4C8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HypertensionNotificationsSettingsCellViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D8CF544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsSettingsCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8CF5AC(void *a1)
{
  v112 = a1;
  ObjectType = swift_getObjectType();
  v116 = sub_29D934C58();
  v114 = *(v116 - 8);
  v2 = v114[8];
  v4 = MEMORY[0x2A1C7C4A8](v116, v3);
  v111 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v103 - v7;
  sub_29D8D0488();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v108 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v103 - v15;
  v106 = sub_29D9371A8();
  v105 = *(v106 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v106, v18);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D9346E8();
  v119 = *(v21 - 8);
  v22 = *(v119 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v110 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v117 = &v103 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v104 = &v103 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v35 = &v103 - v34;
  MEMORY[0x2A1C7C4A8](v33, v36);
  v118 = &v103 - v37;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v38 = sub_29D937898();
  sub_29D69C6C0(v38, qword_2A1A2C008);
  v39 = sub_29D937878();
  v40 = sub_29D93A2A8();
  v41 = os_log_type_enabled(v39, v40);
  v115 = ObjectType;
  v113 = v8;
  v107 = v35;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136315394;
    v44 = sub_29D93AF08();
    v46 = sub_29D6C2364(v44, v45, &aBlock);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D959370, &aBlock);
    _os_log_impl(&dword_29D677000, v39, v40, "[%s.%s]: Presenting hypertension notifications settings view", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v43, -1, -1);
    MEMORY[0x29ED6BE30](v42, -1, -1);
  }

  result = sub_29D936738();
  v48 = v123;
  if (!v123)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v49 = *MEMORY[0x29EDBA6F0];
  v50 = sub_29D693E2C(&aBlock, v123);
  v51 = *(v48 - 1);
  v52 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v50, v50);
  v54 = &v103 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54);
  v55 = sub_29D936588();
  (*(v51 + 8))(v54, v48);
  v56 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v49 healthStore:v55];

  sub_29D69417C(&aBlock);
  v57 = *MEMORY[0x29EDC1768];
  v58 = *(v119 + 104);
  v58(v118, v57, v21);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v109 = v56;
  sub_29D937278();
  aBlock = sub_29D67BF28;
  v121 = 0;
  sub_29D76C9EC();
  sub_29D934D08();
  v59 = v108;
  sub_29D8D0500(v16, v108);
  v60 = sub_29D9349A8();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_29D8D0564(v16, sub_29D8D0488);
    (*(v105 + 8))(v20, v106);
    v62 = v118;
    v63 = v119;
    (*(v119 + 8))(v118, v21);
    sub_29D8D0564(v59, sub_29D8D0488);
    v64 = v107;
    v58(v107, v57, v21);
    v65 = *(v63 + 32);
  }

  else
  {
    v66 = v104;
    sub_29D934958();
    sub_29D8D0564(v16, sub_29D8D0488);
    (*(v105 + 8))(v20, v106);
    v62 = v118;
    v63 = v119;
    (*(v119 + 8))(v118, v21);
    (*(v61 + 8))(v59, v60);
    v65 = *(v63 + 32);
    v64 = v107;
    v65(v107, v66, v21);
  }

  v67 = v116;
  v68 = v114;
  v65(v62, v64, v21);
  v69 = *(v63 + 16);
  v69(v117, v62, v21);
  v70 = v113;
  (v68[13])(v113, *MEMORY[0x29EDC1BF0], v67);
  result = sub_29D936738();
  v71 = v123;
  if (!v123)
  {
    goto LABEL_15;
  }

  v72 = sub_29D693E2C(&aBlock, v123);
  v114 = &v103;
  v73 = *(v71 - 1);
  v74 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v72, v72);
  v76 = &v103 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v73 + 16))(v76);
  v77 = sub_29D936588();
  (*(v73 + 8))(v76, v71);
  v78 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
  v79 = v110;
  v69(v110, v117, v21);
  v80 = v111;
  (v68[2])(v111, v70, v67);
  v81 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
  v82 = v77;
  v83 = sub_29D7BB5B4(v79, v80, v82);
  sub_29D8C8CE0();
  v84 = v83;
  v85 = sub_29D9365D8();
  v86 = qword_2A17B0D68;
  v87 = v85;
  v116 = v21;
  if (v86 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v88 = sub_29D939D28();

  [v87 setTitle_];

  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  v89 = sub_29D939D28();

  [v87 setAccessibilityIdentifier_];

  (v68[1])(v70, v67);
  v90 = *(v119 + 8);
  v90(v117, v116);
  sub_29D69417C(&aBlock);
  [v112 showViewController:v87 sender:0];
  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v91 = swift_allocObject();
  *(v91 + 16) = 1286;
  *(v91 + 18) = 2;
  v92 = HKLogHeartRateCategory();
  result = sub_29D936738();
  v93 = v123;
  if (v123)
  {
    v94 = sub_29D693E2C(&aBlock, v123);
    v95 = *(v93 - 1);
    v96 = *(v95 + 64);
    MEMORY[0x2A1C7C4A8](v94, v94);
    v98 = &v103 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v95 + 16))(v98);
    v99 = sub_29D936588();
    (*(v95 + 8))(v98, v93);
    v100 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v92 healthDataSource:v99];

    sub_29D69417C(&aBlock);
    v101 = swift_allocObject();
    *(v101 + 16) = v115;
    v124 = sub_29D8D04E0;
    v125 = v101;
    aBlock = MEMORY[0x29EDCA5F8];
    v121 = 1107296256;
    v122 = sub_29D8E44F0;
    v123 = &unk_2A244D368;
    v102 = _Block_copy(&aBlock);

    [v100 submitEvent:v91 completion:v102];
    _Block_release(v102);

    return (v90)(v118, v116);
  }

LABEL_16:
  __break(1u);
  return result;
}