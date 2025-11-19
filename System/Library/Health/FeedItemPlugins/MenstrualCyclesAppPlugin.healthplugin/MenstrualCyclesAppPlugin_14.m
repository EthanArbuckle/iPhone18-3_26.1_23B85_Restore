void sub_29E000874()
{
  if (!qword_2A1A5EC78)
  {
    sub_29E0009EC(255, &unk_2A1A5E5A0, sub_29E000978);
    sub_29E0009EC(255, &qword_2A1A5E580, sub_29DF737B0);
    sub_29E000A50(&qword_2A1A5E5B0, &unk_2A1A5E5A0, sub_29E000978);
    sub_29E000A50(&unk_2A1A5E590, &qword_2A1A5E580, sub_29DF737B0);
    v0 = sub_29E2C0E44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EC78);
    }
  }
}

void sub_29E000978()
{
  if (!qword_2A1A5E2B8)
  {
    sub_29DE9408C(255, &qword_2A1A5E100);
    sub_29DFF5E88();
    v0 = sub_29E2C3844();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2B8);
    }
  }
}

void sub_29E0009EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E000A50(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E0009EC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E000AA0()
{
  if (!qword_2A1A5E8F0)
  {
    sub_29E000874();
    sub_29E0005E4(&qword_2A1A5EC88, sub_29E000874);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E8F0);
    }
  }
}

void sub_29E000B34()
{
  if (!qword_2A1A5EA70)
  {
    sub_29E000AA0();
    sub_29E0005E4(&qword_2A1A5E8F8, sub_29E000AA0);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EA70);
    }
  }
}

uint64_t sub_29E000BD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E000BF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29E000C38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29E000D1C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v16 - v6;
  v8 = sub_29E2C08B4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C08A4();
  sub_29E2BF404();
  sub_29E2C0864();
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  sub_29E2C0714();
  v16[3] = v8;
  v16[4] = MEMORY[0x29EDC7800];
  v13 = sub_29DEBB7E8(v16);
  (*(v9 + 16))(v13, v11, v8);
  MEMORY[0x29ED802B0](v16);
  return (*(v9 + 8))(v11, v8);
}

id sub_29E001068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingCycleFactorsForcedOffTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingUserData()
{
  result = qword_2A1A61360;
  if (!qword_2A1A61360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E001134()
{
  sub_29DF298C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29E0011A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_29DF298C4();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E001730(0, &qword_2A181A810, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for MenstrualCyclesOnboardingUserData();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E0016DC();
  sub_29E2C4A94();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_29E001794(&qword_2A181A818);
    sub_29E2C4844();
    (*(v14 + 8))(v10, v8);
    (*(v15 + 32))(v13, v21, v5);
    sub_29DF29860(v13, v18);
  }

  return sub_29DE93B3C(a1);
}

uint64_t sub_29E001450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736973796C616E61 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E2C4914();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E0014D8(uint64_t a1)
{
  v2 = sub_29E0016DC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E001514(uint64_t a1)
{
  v2 = sub_29E0016DC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E001568(void *a1)
{
  sub_29E001730(0, &qword_2A1A5E050, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E0016DC();
  sub_29E2C4AA4();
  sub_29DF298C4();
  sub_29E001794(&unk_2A1A5E398);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29E0016DC()
{
  result = qword_2A1A613B0[0];
  if (!qword_2A1A613B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A613B0);
  }

  return result;
}

void sub_29E001730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E0016DC();
    v7 = a3(a1, &type metadata for MenstrualCyclesOnboardingUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E001794(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29DF298C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E0017EC()
{
  result = qword_2A181A820;
  if (!qword_2A181A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A820);
  }

  return result;
}

unint64_t sub_29E001844()
{
  result = qword_2A1A613A0;
  if (!qword_2A1A613A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A613A0);
  }

  return result;
}

unint64_t sub_29E00189C()
{
  result = qword_2A1A613A8;
  if (!qword_2A1A613A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A613A8);
  }

  return result;
}

void *sub_29E0018F0(uint64_t a1, int a2)
{
  v3 = v2;
  v20 = a2;
  v19 = a1;
  sub_29DFBBD08(0, &qword_2A181A570, MEMORY[0x29EDC2008]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v19 - v7;
  v9 = sub_29E2BCC24();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0023D4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CE0D0;
  *(v13 + 32) = type metadata accessor for PregnancyModeTimelineDataSource();
  *(v13 + 40) = type metadata accessor for AddPregnancyDataSource();
  *(v13 + 48) = type metadata accessor for AllPregnanciesDataSource();
  v3[2] = v13;
  v3[4] = 0;
  v3[5] = 0;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_29E2C4584();

  strcpy(v21, "MutableArray<");
  HIWORD(v21[1]) = -4864;
  sub_29E2BCC14();
  v14 = sub_29E2BCBD4();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  MEMORY[0x29ED7FCC0](v14, v16);

  MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  sub_29E2BED34();
  swift_allocObject();
  sub_29E2BEC54();
  v17 = MEMORY[0x29EDC1FF8];
  if ((v20 & 1) == 0)
  {
    v17 = MEMORY[0x29EDC2000];
  }

  (*(v6 + 104))(v8, *v17, v5);
  sub_29DFBBD08(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  swift_allocObject();
  v3[3] = sub_29E2BE674();
  return v3;
}

uint64_t sub_29E001BF0()
{
  v1 = v0;
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    v6 = *(v1 + 32);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_29E2BCC14();
    v7 = sub_29E2BCBD4();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x29ED7FCC0](v7, v9);

    MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
    v12[1] = v1;
    sub_29E2C4664();
    v6 = v13;
    v10 = v14;
    *(v1 + 32) = v13;
    *(v1 + 40) = v10;
    sub_29E2BF404();
  }

  sub_29E2BF404();
  return v6;
}

uint64_t sub_29E001D60(char a1)
{
  v2 = v1;
  v50 = *v2;
  v4 = sub_29E2C0514();
  v51 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC2008];
  sub_29DFBBD08(0, &qword_2A181A570, MEMORY[0x29EDC2008]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v41 - v13;
  v16 = MEMORY[0x29EDC1FF8];
  if ((a1 & 1) == 0)
  {
    v16 = MEMORY[0x29EDC2000];
  }

  (*(v9 + 104))(&v41 - v13, *v16, v8, v14);
  v53 = v2[3];
  sub_29E2BE634();
  sub_29E0024D8(&qword_2A181A840, &qword_2A181A570, v6);
  v17 = sub_29E2C3304();
  v18 = *(v9 + 8);
  v18(v11, v8);
  if ((v17 & 1) == 0)
  {
    v19 = v2[2];
    v20 = *(v19 + 16);
    if (!v20)
    {
      goto LABEL_10;
    }

    v21 = (v19 + 32);
    while (*v21 != v2)
    {
      ++v21;
      if (!--v20)
      {
        goto LABEL_10;
      }
    }

    if ((HKShowSensitiveLogItems() & 1) == 0)
    {
      v49 = *(v9 + 16);
      v49(v11, v15, v8);
    }

    else
    {
LABEL_10:
      v48 = v4;
      sub_29E2BE634();
      v22 = sub_29E2C3424();
      v24 = v23;
      v25 = *(v9 + 16);
      v46 = v22;
      v47 = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v49 = v25;
      v25(v11, v15, v8);
      v45 = sub_29E2C3424();
      v27 = v26;
      v28 = v52;
      sub_29E2C04B4();
      sub_29E2BF404();
      sub_29E2BF404();
      v29 = sub_29E2C0504();
      v30 = sub_29E2C3A34();

      v44 = v30;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v43 = v18;
        v32 = v31;
        v42 = swift_slowAlloc();
        v54 = v42;
        *v32 = 136446722;
        v33 = sub_29E2C4AE4();
        v35 = sub_29DFAA104(v33, v34, &v54);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2082;
        v36 = sub_29DFAA104(v46, v24, &v54);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2082;
        v37 = sub_29DFAA104(v45, v27, &v54);

        *(v32 + 24) = v37;
        _os_log_impl(&dword_29DE74000, v29, v44, "[%{public}s] Changing visibility %{public}s -> %{public}s", v32, 0x20u);
        v38 = v42;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v38, -1, -1);
        v39 = v32;
        v18 = v43;
        MEMORY[0x29ED82140](v39, -1, -1);

        (*(v51 + 8))(v52, v48);
      }

      else
      {

        (*(v51 + 8))(v28, v48);
      }

      v49(v11, v15, v8);
    }

    sub_29E2BE644();
  }

  return (v18)(v15, v8);
}

uint64_t sub_29E002238()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E0022CC()
{
  v0 = MEMORY[0x29EDC2020];
  sub_29DFBBD08(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  sub_29E0024D8(&qword_2A181A838, &unk_2A181A550, v0);
  sub_29E2BE964();
  swift_getObjectType();
  sub_29E2BE6A4();

  return swift_unknownObjectRelease();
}

void sub_29E0023D4()
{
  v0 = sub_29E00243C();
  if (swift_isClassType() && v0)
  {

    sub_29DE99B54();
  }

  else
  {

    sub_29E002480();
  }
}

unint64_t sub_29E00243C()
{
  result = qword_2A181A828;
  if (!qword_2A181A828)
  {
    type metadata accessor for RoomDataSource();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181A828);
  }

  return result;
}

void sub_29E002480()
{
  if (!qword_2A181A830)
  {
    sub_29E00243C();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A830);
    }
  }
}

uint64_t sub_29E0024D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29DFBBD08(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E002538(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v3 menstruationProjectionsEnabled];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v18) = v4;

    sub_29E2C1224();
    v5 = [v3 fertileWindowProjectionsEnabled];
    *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled) = v5;
    v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE8allCasesSayABGvgZ_0();
    v7 = *(v6 + 16);
    if (v7)
    {
      v18 = MEMORY[0x29EDCA190];
      sub_29E1814A4(0, v7, 0);
      v8 = 32;
      v9 = v18;
      do
      {
        v10 = *(v6 + v8);
        v11 = [v3 isLoggingVisibleForDisplayTypeIdentifier_];
        v18 = v9;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          v15 = v11;
          sub_29E1814A4((v12 > 1), v13 + 1, 1);
          v11 = v15;
          v9 = v18;
        }

        *(v9 + 16) = v13 + 1;
        v14 = v9 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v8 += 8;
        --v7;
      }

      while (v7);

      if (*(v9 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {

      v9 = MEMORY[0x29EDCA190];
      if (*(MEMORY[0x29EDCA190] + 16))
      {
LABEL_8:
        sub_29E00A698(0, &qword_2A181A878, MEMORY[0x29EDC9E70]);
        v16 = sub_29E2C47B4();
LABEL_11:
        v18 = v16;
        sub_29E00BDD4(v9, 1, &v18);

        v17 = v18;
        swift_getKeyPath();
        swift_getKeyPath();
        v18 = v17;

        sub_29E2C1224();

        return;
      }
    }

    v16 = MEMORY[0x29EDCA198];
    goto LABEL_11;
  }
}

void sub_29E0027A4(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C2B84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E002538(a1);
  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel_featureSettings);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel_featureSettings) = a1;
  v9 = a1;

  sub_29DE9408C(0, &qword_2A1A626C0);
  *v7 = sub_29E2C3CF4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDCA278], v4);
  LOBYTE(v8) = sub_29E2C2BA4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_29DF1482C();
    sub_29E00AB84(&qword_2A181A5C0, sub_29DF1482C);
    sub_29E2C11A4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E002950()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E0029C4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E002A44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();

  return sub_29E2C1224();
}

uint64_t sub_29E002AC0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v6 + 16) && (v2 = sub_29E187A6C(a1), (v3 & 1) != 0))
  {
    v4 = *(*(v6 + 56) + v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_29E002B80(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x29EDCA190];
    do
    {
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v6 = *(v1 + 32 + 8 * v5);
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v6;
        sub_29E2C1214();

        if (*(v14 + 16))
        {
          v8 = sub_29E187A6C(v7);
          if (v9)
          {
            break;
          }
        }

LABEL_5:
        ++v5;

        if (v2 == v5)
        {
          goto LABEL_15;
        }
      }

      v10 = *(*(v14 + 56) + v8);

      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E1814F8(0, *(v4 + 16) + 1, 1);
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_29E1814F8((v11 > 1), v12 + 1, 1);
        v13 = v12 + 1;
      }

      v3 = v5 + 1;
      *(v4 + 16) = v13;
      *(v4 + 8 * v12 + 32) = v7;
    }

    while (v2 - 1 != v5);
  }

LABEL_15:
}

uint64_t sub_29E002D50(char a1, void *a2)
{
  v3 = v2;
  v20 = *v2;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = sub_29E2C1204();
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v11;
  *v11 = 0x8000000000000000;
  sub_29E008FEC(a1, a2, isUniquelyReferenced_nonNull_native);
  *v11 = v21;

  v9(v22, 0);

  v13 = sub_29E2C3734();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_29E2C3714();

  v14 = a2;
  v15 = sub_29E2C3704();
  v16 = swift_allocObject();
  v17 = MEMORY[0x29EDCA390];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v3;
  *(v16 + 40) = a1;
  v18 = v20;
  *(v16 + 48) = v14;
  *(v16 + 56) = v18;
  sub_29E13C63C(0, 0, v8, &unk_29E2D8948, v16);
}

uint64_t sub_29E002F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 112) = a5;
  *(v7 + 24) = a4;
  v8 = sub_29E2C0514();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  sub_29E2C3714();
  *(v7 + 72) = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return MEMORY[0x2A1C73D48](sub_29E003068, v10, v9);
}

uint64_t sub_29E003068()
{
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_29E003118;
  v2 = *(v0 + 32);
  v3 = *(v0 + 112);

  return sub_29E2914C0(v3, v2);
}

uint64_t sub_29E003118()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_29E0032BC;
  }

  else
  {
    v5 = sub_29E003254;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E003254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E0032BC()
{
  v24 = v0;
  v1 = *(v0 + 104);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 56);
    v22 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 16) = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error updating display type visibility: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29E0034E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E003554@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E0035D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

uint64_t sub_29E003648(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = a1;

  sub_29E2C1224();
  v8 = sub_29E2C3734();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29E2C3714();

  v9 = sub_29E2C3704();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA390];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 40) = a1;
  *(v10 + 48) = v4;
  sub_29E13C63C(0, 0, v7, &unk_29E2D88E0, v10);
}

uint64_t sub_29E0037E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_29E2C0514();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  sub_29E00CA44(0, &qword_2A181A588, MEMORY[0x29EDC9A98], MEMORY[0x29EDC2EA0]);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_29E2C3714();
  *(v6 + 88) = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  *(v6 + 96) = v10;
  *(v6 + 104) = v9;

  return MEMORY[0x2A1C73D48](sub_29E00395C, v10, v9);
}

uint64_t sub_29E00395C()
{
  ObjectType = swift_getObjectType();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C3C74();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_29E003A40;
  v3 = *(v0 + 80);
  v4 = *(v0 + 128);

  return MEMORY[0x2A1C63C38](v4, v3, ObjectType);
}

uint64_t sub_29E003A40()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_29E003C4C;
  }

  else
  {
    v8 = sub_29E003BD8;
  }

  return MEMORY[0x2A1C73D48](v8, v7, v6);
}

uint64_t sub_29E003BD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E003C4C()
{
  v24 = v0;
  v1 = *(v0 + 120);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 48);
    v22 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 16) = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error updating period predictions: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29E003E80(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled) = a1;
  v8 = sub_29E2C3734();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29E2C3714();

  v9 = sub_29E2C3704();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA390];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 40) = a1;
  *(v10 + 48) = v4;
  sub_29E13C63C(0, 0, v7, &unk_29E2D88F0, v10);
}

uint64_t sub_29E003FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_29E2C0514();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  sub_29E00CA44(0, &qword_2A181A588, MEMORY[0x29EDC9A98], MEMORY[0x29EDC2EA0]);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  sub_29E2C3714();
  *(v6 + 88) = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  *(v6 + 96) = v10;
  *(v6 + 104) = v9;

  return MEMORY[0x2A1C73D48](sub_29E00415C, v10, v9);
}

uint64_t sub_29E00415C()
{
  ObjectType = swift_getObjectType();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C3C74();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_29E004240;
  v3 = *(v0 + 80);
  v4 = *(v0 + 128);

  return MEMORY[0x2A1C63C38](v4, v3, ObjectType);
}

uint64_t sub_29E004240()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_29E0043D8;
  }

  else
  {
    v8 = sub_29E00CA9C;
  }

  return MEMORY[0x2A1C73D48](v8, v7, v6);
}

uint64_t sub_29E0043D8()
{
  v24 = v0;
  v1 = *(v0 + 120);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 48);
    v22 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 16) = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error updating fertile window estimates: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t *sub_29E00460C(void *a1)
{
  v2 = v1;
  sub_29E00CA44(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20[-v7];
  sub_29E004C64();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel_objectDidChange;
  sub_29DF1482C();
  swift_allocObject();
  *(v1 + v14) = sub_29E2C10A4();
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__loggingVisibleByType;
  v21 = sub_29E185818(MEMORY[0x29EDCA190]);
  sub_29E00A698(0, &qword_2A181A870, MEMORY[0x29EDC98E0]);
  sub_29E2C11D4();
  (*(v11 + 32))(v2 + v15, v13, v10);
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel___periodPredictionsEnabled;
  v20[7] = 0;
  sub_29E2C11D4();
  (*(v6 + 32))(v2 + v16, v8, v5);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__fertileWindowEstimatesEnabled) = 0;
  v17 = *MEMORY[0x29EDBA708];
  v18 = sub_29DF688CC(v17, a1);

  return v18;
}

uint64_t sub_29E004870()
{

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__loggingVisibleByType;
  sub_29E004C64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel___periodPredictionsEnabled;
  sub_29E00CA44(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_29E00494C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsSettingVisibilityRequirements;
  sub_29E00CA44(0, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsUsageRequirements, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__isOnboardingRecordPresent, v3);

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel__loggingVisibleByType;
  sub_29E004C64();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20FeatureSettingsModel___periodPredictionsEnabled, v3);
  return v0;
}

uint64_t sub_29E004AB4()
{
  sub_29E00494C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeatureSettingsModel()
{
  result = qword_2A181A858;
  if (!qword_2A181A858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E004B60()
{
  sub_29E004C64();
  if (v0 <= 0x3F)
  {
    sub_29E00CA44(319, &qword_2A1A5E3C8, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29E004C64()
{
  if (!qword_2A181A868)
  {
    sub_29E00A698(255, &qword_2A181A870, MEMORY[0x29EDC98E0]);
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A868);
    }
  }
}

uint64_t sub_29E004CD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29E0037E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E004DA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E004DE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29E003FE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29E004EB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C014();
  v35 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_29E2BF404();
        v25 = v24;
      }

      sub_29E2C4A04();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E005148(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CycleDay();
  v42 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E00C780(0, &qword_2A181A890, type metadata accessor for CycleDay);
  v43 = a2;
  result = sub_29E2C4794();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_29E00C0F0(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_29E00C08C(v29 + v28 * v24, v47);
      }

      sub_29E00AB84(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
      result = sub_29E2C3244();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_29E00C0F0(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_29E0055BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C584(0, &qword_2A181A5B8);
  v34 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
        sub_29E2BF404();
      }

      sub_29E2C4A04();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E005870(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C584(0, &qword_2A18181C8);
  v33 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_29DEA049C(v24, v34);
      }

      else
      {
        sub_29DEA6E90(v24, v34);
        sub_29E2BF404();
      }

      sub_29E2C4A04();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_29DEA049C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_29E005B40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00A698(0, &qword_2A181A878, MEMORY[0x29EDC9E70]);
  v34 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      sub_29E2C34B4();
      v23 = sub_29E2C4A54();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E005E0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C378();
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v20);
      result = sub_29E2C4A54();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_29E006080(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E00AAE8();
  v39 = a2;
  result = sub_29E2C4794();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        sub_29DEC7104(v41);
      }

      sub_29E00AB84(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
      result = sub_29E2C3244();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_29E00644C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E00C780(0, &qword_2A181A8F8, type metadata accessor for HKMCDaySummaryBleedingFlow);
  v40 = a2;
  result = sub_29E2C4794();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_29E00AB84(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
      result = sub_29E2C3244();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_29E00681C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C584(0, &qword_2A181A8F0);
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_29E2C49F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_29E006ACC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C5D8();
  v30 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_29E2BF404();
      }

      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v20);
      result = sub_29E2C4A54();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E006D50(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_29E2BC5F4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E00C974();
  v39 = a2;
  result = sub_29E2C4794();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        sub_29E2BF404();
      }

      sub_29E00AB84(&qword_2A1819120, MEMORY[0x29EDB9950]);
      result = sub_29E2C3244();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_29E00711C(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_29E2BCBB4();
  v5 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_29E00C154();
  v39 = a2;
  result = sub_29E2C4794();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v2;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v40 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v41 = *(v38 + 72);
      v24 = v22 + v41 * v21;
      if (v39)
      {
        (*v40)(v42, v24, v43);
      }

      else
      {
        (*v36)(v42, v24, v43);
        v25 = v23;
      }

      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      sub_29E2C34B4();
      v26 = sub_29E2C4A54();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      result = (*v40)(*(v9 + 56) + v41 * v17, v42, v43);
      ++*(v9 + 16);
      v7 = v37;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_29E0074B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C8B0();
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        sub_29E2BF404();
      }

      result = sub_29E2C40C4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E007738(uint64_t a1, int a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v9 = v5;
  v46 = sub_29E2BC5F4();
  v11 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4;
  v15 = *v5;
  sub_29E00C6BC(0, a3, v14, a5);
  v45 = a2;
  result = sub_29E2C4794();
  v17 = result;
  if (*(v15 + 16))
  {
    v50 = v13;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v41 = v5;
    v42 = (v11 + 16);
    v43 = v15;
    v44 = v11;
    v47 = (v11 + 32);
    v24 = result + 64;
    v25 = v46;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v49 = *(v44 + 72);
      v32 = v31 + v49 * v30;
      if (v45)
      {
        (*v47)(v50, v32, v25);
        v48 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v42)(v50, v32, v25);
        v48 = *(*(v15 + 56) + 8 * v30);
        sub_29E2BF404();
      }

      sub_29E00AB84(&qword_2A1819120, MEMORY[0x29EDB9950]);
      result = sub_29E2C3244();
      v33 = -1 << *(v17 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v24 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v25 = v46;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v24 + 8 * v35);
          if (v39 != -1)
          {
            v26 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v34) & ~*(v24 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v25 = v46;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v47)(*(v17 + 48) + v49 * v26, v50, v25);
      *(*(v17 + 56) + 8 * v26) = v48;
      ++*(v17 + 16);
      v15 = v43;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v9 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v15 + 32);
    v9 = v41;
    if (v40 >= 64)
    {
      bzero(v19, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v40;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v9 = v17;
  return result;
}

uint64_t sub_29E007B40(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = sub_29E2C4794();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_29E2C40C4();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_29E007DA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C82C();
  v30 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_29E2BF404();
      }

      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v20);
      result = sub_29E2C4A54();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E008024(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29E00C414();
  v34 = a2;
  result = sub_29E2C4794();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_29E2BF404();
        sub_29E2BF404();
      }

      sub_29E2C4A04();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E0082C0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E00C200();
  v39 = a2;
  result = sub_29E2C4794();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_29E00AB84(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
      result = sub_29E2C3244();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_29E00868C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29DECF000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_29E004EB0(v16, a4 & 1);
      v11 = sub_29DECF000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_29E2C4964();
        __break(1u);
        return MEMORY[0x2A1C71028]();
      }
    }

    else
    {
      v19 = v11;
      sub_29E009D80();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2A1C71028]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;

  return sub_29E2BF404();
}

unint64_t sub_29E008804(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_29DECF000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_29E0055BC(v16, a4 & 1);
      result = sub_29DECF000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_29E2C4964();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_29E00A1F4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;

  return sub_29E2BF404();
}

_OWORD *sub_29E008970(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29DECF000(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_29E00A370();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29E005870(v16, a4 & 1);
    v11 = sub_29DECF000(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_29E2C4964();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_29DE93B3C(v22);

    return sub_29DEA049C(a1, v22);
  }

  else
  {
    sub_29E009A40(v11, a2, a3, a1, v21);

    return sub_29E2BF404();
  }
}

void sub_29E008AC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_29E184314(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_29E00A87C();
      goto LABEL_7;
    }

    sub_29E006080(v17, a3 & 1);
    v23 = sub_29E184314(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_29E009AAC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_29E2C4964();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;

  sub_29DEC72BC(v22);
}

uint64_t sub_29E008CB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29E2BC5F4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_29E18464C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_29E00B134();
      goto LABEL_7;
    }

    sub_29E006D50(v17, a3 & 1);
    v22 = sub_29E18464C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_29E009C10(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_29E2C4964();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

id sub_29E008E7C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_29E187A6C(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_29E00B3A0();
      goto LABEL_7;
    }

    sub_29E00711C(v12, a3 & 1);
    v23 = sub_29E187A6C(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    result = sub_29E2C4964();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_29E2BCBB4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_29E009B64(v9, a2, a1, v15);

  return a2;
}

unint64_t sub_29E008FEC(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_29E187A6C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_29E005B40(v13, a3 & 1);
      result = sub_29E187A6C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for HKMCDisplayTypeIdentifier(0);
        result = sub_29E2C4964();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_29E00A52C();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + result) = a1 & 1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + result) = a1 & 1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_29E009148(uint64_t a1)
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
  v10[1] = sub_29DE9657C;

  return sub_29E002F6C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29E009244(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v8 = v7;
  v12 = sub_29E2BC5F4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_29E18464C(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      sub_29E00B620(v28, v29, v30);
      goto LABEL_7;
    }

    sub_29E007738(v21, a3 & 1, v28, v29, v30);
    v26 = sub_29E18464C(a2);
    if ((v22 & 1) == (v27 & 1))
    {
      v18 = v26;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_29E009C10(v18, v15, a1, v24);
    }

LABEL_15:
    result = sub_29E2C4964();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v24[7] + 8 * v18) = a1;
}

id sub_29E00942C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_29E18482C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_29E007B40(v13, a3 & 1, sub_29E00C2BC);
      v8 = sub_29E18482C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_29DE9408C(0, &qword_2A1A5E0A0);
        sub_29E2C4964();
        __break(1u);
        return MEMORY[0x2A1C71028]();
      }
    }

    else
    {
      v16 = v8;
      sub_29E00B8AC(sub_29E00C2BC);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2A1C71028]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

unint64_t sub_29E0095CC(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_29E184478(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_29E00A73C();
    result = v17;
    goto LABEL_8;
  }

  sub_29E005E0C(v14, a3 & 1);
  result = sub_29E184478(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for HKMCDeviationType(0);
  result = sub_29E2C4964();
  __break(1u);
  return result;
}

uint64_t sub_29E0096F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29DECF000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_29E008024(v16, a4 & 1);
      v11 = sub_29DECF000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_29E2C4964();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_29E00BA08();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;

  return sub_29E2BF404();
}

void sub_29E009874(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_29E18447C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_29E00BB6C();
      goto LABEL_7;
    }

    sub_29E0082C0(v17, a3 & 1);
    v23 = sub_29E18447C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_29E009CC8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_29E2C4964();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_29E009A40(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29DEA049C(a4, (a5[7] + 32 * a1));
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

uint64_t sub_29E009AAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E2C31A4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_29E009B64(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_29E2BCBB4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_29E009C10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E2BC5F4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_29E009CC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E2BCFB4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_29E009D80()
{
  v1 = v0;
  sub_29E00C014();
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_29E2BF404();
        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_29E009EE0()
{
  v1 = v0;
  v2 = type metadata accessor for CycleDay();
  v36 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E2C31A4();
  v37 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00C780(0, &qword_2A181A890, type metadata accessor for CycleDay);
  v5 = *v0;
  v6 = sub_29E2C4784();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_29E00C08C(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_29E00C0F0(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_29E00A1F4()
{
  v1 = v0;
  sub_29E00C584(0, &qword_2A181A5B8);
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_29E2BF404();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_29E00A370()
{
  v1 = v0;
  sub_29E00C584(0, &qword_2A18181C8);
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_29DEA6E90(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29DEA049C(v25, (*(v4 + 56) + v22));
        result = sub_29E2BF404();
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_29E00A52C()
{
  v1 = v0;
  sub_29E00A698(0, &qword_2A181A878, MEMORY[0x29EDC9E70]);
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_29E00A698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(255);
    v7 = v6;
    v8 = sub_29E00AB84(&qword_2A181DA40, type metadata accessor for HKMCDisplayTypeIdentifier);
    v9 = a3(a1, v7, MEMORY[0x29EDC9A98], v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_29E00A73C()
{
  v1 = v0;
  sub_29E00C378();
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_29E00A87C()
{
  v1 = v0;
  v31 = sub_29E2C31A4();
  v33 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00AAE8();
  v3 = *v0;
  v4 = sub_29E2C4784();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = sub_29DEC7104(v23);
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void sub_29E00AAE8()
{
  if (!qword_2A181A880)
  {
    sub_29E2C31A4();
    sub_29E00AB84(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A880);
    }
  }
}

uint64_t sub_29E00AB84(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29E00ABCC()
{
  v1 = v0;
  v31 = sub_29E2C31A4();
  v33 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00C780(0, &qword_2A181A8F8, type metadata accessor for HKMCDaySummaryBleedingFlow);
  v3 = *v0;
  v4 = sub_29E2C4784();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_29E00AE4C()
{
  v1 = v0;
  sub_29E00C584(0, &qword_2A181A8F0);
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_29E00AFE4()
{
  v1 = v0;
  sub_29E00C5D8();
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_29E2BF404();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_29E00B134()
{
  v1 = v0;
  v31 = sub_29E2BC5F4();
  v33 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00C974();
  v3 = *v0;
  v4 = sub_29E2C4784();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = sub_29E2BF404();
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

id sub_29E00B3A0()
{
  v1 = v0;
  v30 = sub_29E2BCBB4();
  v32 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00C154();
  v3 = *v0;
  v4 = sub_29E2C4784();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v14; v3 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v10 << 6);
      v20 = *(v3 + 56);
      v21 = *(*(v3 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v5 = v31;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_29E00B620(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v7 = v3;
  v37 = sub_29E2BC5F4();
  v39 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00C6BC(0, a1, a2, a3);
  v9 = *v3;
  v10 = sub_29E2C4784();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v7;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;
        result = sub_29E2BF404();
        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v7 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }

  return result;
}

id sub_29E00B8AC(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_29E2C4784();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_29E00BA08()
{
  v1 = v0;
  sub_29E00C414();
  v2 = *v0;
  v3 = sub_29E2C4784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_29E2BF404();
        result = sub_29E2BF404();
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_29E00BB6C()
{
  v1 = v0;
  v31 = sub_29E2BCFB4();
  v33 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E00C200();
  v3 = *v0;
  v4 = sub_29E2C4784();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = *(v33 + 72) * v19;
        v23 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v21, v31);
        v24 = *(*(v3 + 56) + 8 * v19);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        *(*(v15 + 56) + 8 * v19) = v24;
        result = v24;
        v13 = v34;
      }

      while (v34);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v18 = *(v27 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void sub_29E00BDD4(char *a1, char a2, void *a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = a1[40];
  v8 = *a3;
  v9 = *(a1 + 4);
  v10 = sub_29E187A6C(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v8[3] < v15)
  {
    sub_29E005B40(v15, v5 & 1);
    v10 = sub_29E187A6C(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for HKMCDisplayTypeIdentifier(0);
    v10 = sub_29E2C4964();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + 8 * v10) = v9;
    *(v18[7] + v10) = v7;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v21 = v10;
  sub_29E00A52C();
  v10 = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + v10);
  v20 = v10;

  *(v18[7] + v20) = v19;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v7 = *v5;
      v26 = *a3;
      v6 = *(v5 - 1);
      v27 = sub_29E187A6C(v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v9 = v28;
      if (v26[3] < v31)
      {
        sub_29E005B40(v31, 1);
        v27 = sub_29E187A6C(v6);
        if ((v9 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v9)
      {
        v24 = *(v33[7] + v27);
        v25 = v27;

        *(v33[7] + v25) = v24;
      }

      else
      {
        v33[(v27 >> 6) + 8] |= 1 << v27;
        *(v33[6] + 8 * v27) = v6;
        *(v33[7] + v27) = v7;
        v34 = v33[2];
        v14 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v35;
      }

      v5 += 2;
      if (!--v16)
      {
        return;
      }
    }
  }
}

void sub_29E00C014()
{
  if (!qword_2A181A888)
  {
    sub_29DE9408C(255, &qword_2A1A619F0);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A888);
    }
  }
}

uint64_t sub_29E00C08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleDay();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E00C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleDay();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E00C154()
{
  if (!qword_2A181A898)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_29E2BCBB4();
    sub_29E00AB84(&qword_2A181A6E0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A898);
    }
  }
}

void sub_29E00C200()
{
  if (!qword_2A181A8A0)
  {
    sub_29E2BCFB4();
    sub_29DE9408C(255, &qword_2A181DCB0);
    sub_29E00AB84(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8A0);
    }
  }
}

void sub_29E00C2BC()
{
  if (!qword_2A181A8A8)
  {
    sub_29DE9408C(255, &qword_2A1A5E0A0);
    sub_29DE9408C(255, &qword_2A181A4A8);
    sub_29DE93878(&unk_2A1820CF0, &qword_2A1A5E0A0);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8A8);
    }
  }
}

void sub_29E00C378()
{
  if (!qword_2A181A8B0)
  {
    type metadata accessor for HKMCDeviationType(255);
    sub_29E00AB84(&qword_2A181BF50, type metadata accessor for HKMCDeviationType);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8B0);
    }
  }
}

void sub_29E00C414()
{
  if (!qword_2A181A8B8)
  {
    sub_29E00C494(255, &qword_2A181D9F0, &qword_2A1A61D50);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8B8);
    }
  }
}

void sub_29E00C494(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DE9408C(255, a3);
    v4 = sub_29E2C3684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E00C4EC()
{
  if (!qword_2A181A8C0)
  {
    sub_29DE9408C(255, &qword_2A1A5E0B0);
    sub_29DE93878(&qword_2A18187C8, &qword_2A1A5E0B0);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8C0);
    }
  }
}

void sub_29E00C584(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E2C47C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29E00C5D8()
{
  if (!qword_2A181A8D0)
  {
    sub_29E00CA44(255, &qword_2A181A8D8, &type metadata for CycleHistoryFilter, MEMORY[0x29EDC9A40]);
    sub_29E00C668();
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8D0);
    }
  }
}

unint64_t sub_29E00C668()
{
  result = qword_2A181A8E0;
  if (!qword_2A181A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A8E0);
  }

  return result;
}

void sub_29E00C6BC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_29E2BC5F4();
    sub_29E00C494(255, a3, a4);
    sub_29E00AB84(&qword_2A1819120, MEMORY[0x29EDB9950]);
    v7 = sub_29E2C47C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E00C780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29E2C31A4();
    a3(255);
    sub_29E00AB84(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
    v5 = sub_29E2C47C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E00C82C()
{
  if (!qword_2A181A900)
  {
    sub_29E00C494(255, &qword_2A181D9F0, &qword_2A1A61D50);
    sub_29DF31AD0();
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A900);
    }
  }
}

void sub_29E00C8B0()
{
  if (!qword_2A181A908)
  {
    sub_29DE9408C(255, &qword_2A1A61D70);
    sub_29E00C494(255, &qword_2A181D9F0, &qword_2A1A61D50);
    sub_29DE93878(&qword_2A1A5E218, &qword_2A1A61D70);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A908);
    }
  }
}

void sub_29E00C974()
{
  if (!qword_2A181A910)
  {
    sub_29E2BC5F4();
    sub_29E00CA44(255, &qword_2A181A918, &type metadata for PDFCoverPageModel.Factor, MEMORY[0x29EDC9A40]);
    sub_29E00AB84(&qword_2A1819120, MEMORY[0x29EDB9950]);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A910);
    }
  }
}

void sub_29E00CA44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E00CAA0(uint64_t a1, char a2)
{
  sub_29E2BEDD4();
  sub_29DF942BC(0, &qword_2A181DB40);
  sub_29DF942BC(0, &qword_2A181BF90);
  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    sub_29DE966D4(&v7, *(&v8 + 1));
    (*(v5 + 8))(a1, a2 & 1, v4, v5);
    return sub_29DE93B3C(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_29E00CBB8(&v7);
  }
}

uint64_t sub_29E00CBB8(uint64_t a1)
{
  sub_29E00CC14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E00CC14()
{
  if (!qword_2A181A920)
  {
    sub_29DF942BC(255, &qword_2A181BF90);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A920);
    }
  }
}

uint64_t sub_29E00CC80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_29E00CCC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_29E00CD30()
{
  v1 = *(v0 + 40);
  v2 = MEMORY[0x29EDC78D8];
  v3 = *MEMORY[0x29EDC78D8];
  sub_29E00CE68();
  v5 = v4;
  if (v1)
  {
    if (*(v0 + 56))
    {
      v3 = *(v0 + 88);
      sub_29E00D048();
      v7 = v6;
      v8 = 4.0;
      v9 = v3;
      v10 = 4.0;
      goto LABEL_10;
    }

    sub_29E00D048();
    v7 = v14;
    v9 = *(v2 + 16);
    v13 = 4.0;
    v8 = 4.0;
LABEL_9:
    v10 = v9;
    v9 = v13;
    goto LABEL_10;
  }

  v8 = v3 + 0.0;
  v9 = *(v2 + 16);
  v11 = *(v0 + 56);
  v10 = 4.0;
  if (v11)
  {
    v3 = 4.0;
  }

  sub_29E00D048();
  v7 = v12;
  v13 = v9;
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v15 scaledValueForValue_];
  v17 = v16;

  return ceil(v5 + v8 + v9 + v3 + v7 + v10 + v17 + 6.0);
}

double sub_29E00CE68()
{
  if (*(v0 + 40))
  {
    v1 = sub_29E2C33A4();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 80);
  sub_29DF404B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v4 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v5 = v4;
  v6 = sub_29E0C26D0();
  v7 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 labelColor];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 80) = v11;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();
  if (v1)
  {
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v12 = sub_29E2C31F4();
    [v1 boundingRectWithSize:1 options:v12 attributes:0 context:{v2 + -4.0 + -4.0, 1.79769313e308}];
    v14 = v13;
  }

  else
  {

    return 0.0;
  }

  return v14;
}

double sub_29E00D048()
{
  if (*(v0 + 56))
  {
    v1 = sub_29E2C33A4();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 80);
  sub_29DF404B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v4 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v5 = v4;
  v6 = sub_29E0C26D0();
  v7 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondaryLabelColor];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 80) = v11;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();
  if (v1)
  {
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v12 = sub_29E2C31F4();
    [v1 boundingRectWithSize:1 options:v12 attributes:0 context:{v2 + -4.0 + -4.0, 1.79769313e308}];
    v14 = v13;
  }

  else
  {

    return 0.0;
  }

  return v14;
}

double sub_29E00D228(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_29E2C48F4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 72);
  v16 = *MEMORY[0x29EDC80E0];
  v17 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v17 scaledValueForValue_];
  v19 = v18;

  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MaxY = CGRectGetMaxY(v27);
  (*(v12 + 104))(v14, *MEMORY[0x29EDC9EC0], v11);
  [a1 displayScale];
  sub_29E1CBDFC(v14, 1.0 / v21, MaxY);
  (*(v12 + 8))(v14, v11);
  v22 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v22 scaledValueForValue_];

  v23 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v23 scaledValueForValue_];

  v24 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v24 scaledValueForValue_];

  return (v15 - v19) * 0.5;
}

void sub_29E00D480(CGContext *a1, void *a2, void *a3, double x, double y, double a6, double a7)
{
  v115 = a3;
  v120 = a2;
  v112 = a1;
  v123 = *MEMORY[0x29EDCA608];
  *&v12 = COERCE_DOUBLE(sub_29E2C48F4());
  v113 = *(v12 - 8);
  v114 = *&v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &MinY - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &unk_29E2CD000;
  v16 = MEMORY[0x29EDC7638];
  v17 = MEMORY[0x29EDC7640];
  v111 = *(v7 + 40);
  if (v111)
  {
    v18 = sub_29E2C33A4();
    sub_29DF404B0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    v20 = *v16;
    *(inited + 32) = *v16;
    v21 = v20;
    v22 = sub_29E0C26D0();
    v23 = sub_29DE9408C(0, &unk_2A1A61A00);
    *(inited + 40) = v22;
    v24 = *v17;
    *(inited + 64) = v23;
    *(inited + 72) = v24;
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 labelColor];
    *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
    *(inited + 80) = v27;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DEA0430();
    swift_arrayDestroy();
    v28 = 4.0;
    if (*(v7 + 56))
    {
      v28 = *(v7 + 88);
    }

    sub_29DEC731C(x, y, a6, a7, 4.0, 4.0);
    v29 = y;
    v31 = v30;
    v33 = v32;
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v34 = sub_29E2C31F4();
    [v18 boundingRectWithSize:1 options:v34 attributes:0 context:{v31, v33}];
    v36 = v35;
    v38 = v37;

    v39 = v113;
    v40 = v114;
    (*(*&v113 + 104))(v14, *MEMORY[0x29EDC9EC0], COERCE_DOUBLE(*&v114));
    [v120 displayScale];
    v42 = 1.0 / v41;
    v43 = sub_29E1CBDFC(v14, 1.0 / v41, v36);
    v44 = sub_29E1CBDFC(v14, v42, v38);
    (*(*&v39 + 8))(v14, COERCE_DOUBLE(*&v40));
    v124.origin.x = x;
    v124.origin.y = v29;
    v124.size.width = a6;
    v124.size.height = a7;
    MinX = CGRectGetMinX(v124);
    v125.origin.x = x;
    v125.origin.y = v29;
    v125.size.width = a6;
    v125.size.height = a7;
    MinY = CGRectGetMinY(v125);
    v45 = v43 + 4.0 + 4.0;
    v117 = x;
    v118 = v29;
    v126.origin.x = x;
    v126.origin.y = v29;
    v126.size.width = a6;
    v119 = a7;
    v126.size.height = a7;
    Width = CGRectGetWidth(v126);
    if (Width >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = Width;
    }

    v48 = v28 + v44 + 4.0;
    if (v115)
    {
      v49 = v115;
      v50 = [v49 resolvedColorWithTraitCollection_];
      v51 = v112;
      CGContextSaveGState(v112);
      v52 = [v50 CGColor];
      CGContextSetFillColorWithColor(v51, v52);

      v54 = MinY;
      v53 = MinX;
      v127.origin.x = MinX;
      v127.origin.y = MinY;
      v127.size.width = v47;
      v127.size.height = v48;
      CGContextFillRect(v51, v127);
      CGContextRestoreGState(v51);

      v17 = MEMORY[0x29EDC7640];
      v15 = &unk_29E2CD000;
    }

    else
    {
      v54 = MinY;
      v53 = MinX;
      v55 = sub_29DEC731C(MinX, MinY, v47, v48, 4.0, 4.0);
      v57 = v56;
      v59 = v58;
      v116 = a6;
      v61 = v60;
      v50 = sub_29E2C31F4();
      v62 = v61;
      a6 = v116;
      [v18 drawWithRect:1 options:v50 attributes:0 context:{v55, v57, v59, v62}];
      v17 = MEMORY[0x29EDC7640];
      v15 = &unk_29E2CD000;
    }

    v128.origin.x = v53;
    v128.origin.y = v54;
    v128.size.width = v47;
    v128.size.height = v48;
    Height = CGRectGetHeight(v128);
    memset(v122, 0, 32);
    memset(&v121, 0, sizeof(v121));
    v129.origin.x = v117;
    v129.origin.y = v118;
    v129.size.width = a6;
    v129.size.height = v119;
    CGRectDivide(v129, v122, &v121, Height, CGRectMinYEdge);

    x = v121.origin.x;
    y = v121.origin.y;
    a6 = v121.size.width;
    a7 = v121.size.height;
    v16 = MEMORY[0x29EDC7638];
  }

  if (*(v7 + 56))
  {
    v116 = a6;
    v64 = sub_29E2C33A4();
    sub_29DF404B0();
    v65 = swift_initStackObject();
    *(v65 + 16) = v15[122];
    v66 = *v16;
    *(v65 + 32) = *v16;
    v67 = v66;
    v68 = sub_29E0C26D0();
    v69 = sub_29DE9408C(0, &unk_2A1A61A00);
    *(v65 + 40) = v68;
    v70 = *v17;
    *(v65 + 64) = v69;
    *(v65 + 72) = v70;
    v71 = objc_opt_self();
    v72 = v70;
    v73 = [v71 secondaryLabelColor];
    *(v65 + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
    *(v65 + 80) = v73;
    sub_29E185054(v65);
    swift_setDeallocating();
    sub_29DEA0430();
    swift_arrayDestroy();
    v74 = 4.0;
    if (v111)
    {
      v74 = *(v7 + 88);
    }

    v75 = v116;
    sub_29DEC731C(x, y, v116, a7, v74, 4.0);
    v77 = v76;
    v79 = v78;
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v80 = sub_29E2C31F4();
    [v64 boundingRectWithSize:1 options:v80 attributes:0 context:{v77, v79}];
    v82 = v81;
    v84 = v83;

    v86 = v113;
    v85 = v114;
    (*(*&v113 + 104))(v14, *MEMORY[0x29EDC9EC0], COERCE_DOUBLE(*&v114));
    [v120 displayScale];
    v88 = 1.0 / v87;
    v89 = sub_29E1CBDFC(v14, 1.0 / v87, v82);
    v90 = sub_29E1CBDFC(v14, v88, v84);
    (*(*&v86 + 8))(v14, COERCE_DOUBLE(*&v85));
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = v75;
    v130.size.height = a7;
    v114 = CGRectGetMinX(v130);
    v131.origin.x = x;
    v131.origin.y = y;
    v131.size.width = v75;
    v131.size.height = a7;
    v113 = CGRectGetMinY(v131);
    v91 = v89 + 4.0 + 4.0;
    v117 = x;
    v118 = y;
    v132.origin.x = x;
    v132.origin.y = y;
    v132.size.width = v75;
    v119 = a7;
    v132.size.height = a7;
    v92 = CGRectGetWidth(v132);
    if (v92 >= v91)
    {
      v93 = v91;
    }

    else
    {
      v93 = v92;
    }

    v94 = v74 + v90 + 4.0;
    if (v115)
    {
      v95 = v115;
      v96 = [v95 resolvedColorWithTraitCollection_];
      v97 = v112;
      CGContextSaveGState(v112);
      v98 = [v96 CGColor];
      CGContextSetFillColorWithColor(v97, v98);

      v100 = v113;
      v99 = v114;
      v133.origin.x = v114;
      v133.origin.y = v113;
      v133.size.width = v93;
      v133.size.height = v94;
      CGContextFillRect(v97, v133);
      CGContextRestoreGState(v97);
    }

    else
    {
      v100 = v113;
      v99 = v114;
      v101 = sub_29DEC731C(v114, v113, v93, v94, v74, 4.0);
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v96 = sub_29E2C31F4();
      [v64 drawWithRect:1 options:v96 attributes:0 context:{v101, v103, v105, v107}];
    }

    v134.origin.x = v99;
    v134.origin.y = v100;
    v134.size.width = v93;
    v134.size.height = v94;
    v108 = CGRectGetHeight(v134);
    memset(v122, 0, 32);
    memset(&v121, 0, sizeof(v121));
    v135.origin.x = v117;
    v135.origin.y = v118;
    v135.size.width = v116;
    v135.size.height = v119;
    CGRectDivide(v135, v122, &v121, v108, CGRectMinYEdge);
  }
}

double sub_29E00DDBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v0 scaledValueForValue_];
  v2 = v1;

  return v2 + 4.0 + 4.0;
}

void sub_29E00DEDC(CGContext *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_opt_self() systemBackgroundColor];
  sub_29E00D480(a1, a2, v12, a3, a4, a5, a6);
}

void sub_29E00DFEC(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = sub_29E00D228(a8, a2, a3, a4, a5);
  v20 = [objc_opt_self() bezierPathWithOvalInRect_];
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MinX = CGRectGetMinX(v27);
  CGAffineTransformMakeTranslation(&v26, MinX, 0.0);
  [v20 applyTransform_];
  v22 = (*(v8 + 16))(a7);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 resolvedColorWithTraitCollection_];
    v25 = [v24 CGColor];

    CGContextSetFillColorWithColor(a1, v25);
    [v20 fill];
  }
}

id sub_29E00E1C0()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for InternalLiveOnSettingsViewController();
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v1 = sub_29E2C33A4();
  [v0 setTitle_];

  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36InternalLiveOnSettingsViewController_host];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  [v4 addSubview_];

  result = [v2 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  sub_29DF80C94(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CE070;
  result = [v2 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  result = [v2 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = result;
  v14 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = [result leadingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  result = [v2 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = result;
  v19 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = result;
  v21 = [result bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v7 + 48) = v22;
  result = [v2 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = result;
  v24 = [result trailingAnchor];

  result = [v0 view];
  if (result)
  {
    v25 = result;
    v26 = objc_opt_self();
    v27 = [v25 trailingAnchor];

    v28 = [v24 constraintEqualToAnchor_];
    *(v7 + 56) = v28;
    sub_29DEB8834();
    v29 = sub_29E2C3604();

    [v26 activateConstraints_];

    return [v2 didMoveToParentViewController_];
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_29E00E6C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalLiveOnSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E00E764(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E00E7B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_29E00E808(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29E00E830@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_29E2C1444();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C1D34();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0138C4(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E013ED0(0);
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_29E013920(0);
  sub_29E0137D0(&qword_2A181A9D8, sub_29E013920);
  sub_29E2C21C4();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = &v15[*(v13 + 36)];
  *v20 = sub_29E013F48;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = a2;
  sub_29E2C1D24();
  v22 = sub_29E013F04();
  v23 = MEMORY[0x29EDBC010];
  sub_29E2C25B4();
  (*(v9 + 8))(v11, v8);
  sub_29E01434C(v15, sub_29E0138C4);
  v25 = v31;
  v24 = v32;
  (*(v31 + 104))(v7, *MEMORY[0x29EDBC328], v32);
  v36 = v13;
  v37 = v8;
  v38 = v22;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_29E2C23F4();
  (*(v25 + 8))(v7, v24);
  return (*(v29 + 8))(v18, v26);
}

uint64_t sub_29E00EBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v66 = a3;
  sub_29E013E00();
  v80 = v5;
  v83 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v79 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v72 = &v62 - v8;
  sub_29E013D1C();
  v75 = v9;
  v82 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v73 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v76 = &v62 - v12;
  sub_29E013C2C();
  v71 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v78 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v68 = &v62 - v16;
  sub_29E0139FC();
  v70 = v17;
  v74 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v77 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v69 = &v62 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v62 - v22;
  MEMORY[0x2A1C7C4A8](v24);
  v67 = &v62 - v25;
  sub_29E2C1B34();
  v91 = sub_29E2C2274();
  v92 = v26;
  v93 = v27 & 1;
  v94 = v28;
  v88 = a1;
  v89 = a2;
  sub_29E0142E0(0, &qword_2A181A980, sub_29E013A9C, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
  sub_29E013FAC();
  sub_29E2C29D4();
  sub_29E2C1B34();
  v91 = sub_29E2C2274();
  v92 = v29;
  v93 = v30 & 1;
  v94 = v31;
  v86 = a1;
  v87 = a2;
  v32 = v23;
  v65 = v23;
  sub_29E2C29D4();
  sub_29E2C1B34();
  v91 = sub_29E2C2274();
  v92 = v33;
  v93 = v34 & 1;
  v94 = v35;
  v84 = a1;
  v85 = a2;
  sub_29E013CC0(0, &qword_2A181A9A8, &qword_2A181A9B0, &qword_2A181A9B8, MEMORY[0x29EDBC288]);
  sub_29E014178();
  v36 = v68;
  sub_29E2C29D4();
  sub_29E2C1B34();
  v91 = sub_29E2C2274();
  v92 = v37;
  v93 = v38 & 1;
  v94 = v39;
  sub_29E013DA0(0, &qword_2A18182B0, MEMORY[0x29EDBC270]);
  sub_29E0141FC();
  sub_29E2C29D4();
  sub_29E2C1B34();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  sub_29E013E7C();
  v40 = v72;
  sub_29E2C1604();
  v41 = *(v74 + 16);
  v42 = v69;
  v43 = v70;
  v41(v69, v67, v70);
  v41(v77, v32, v43);
  v63 = *(v81 + 16);
  v44 = v36;
  v45 = v71;
  v63(v78, v44, v71);
  v62 = *(v82 + 16);
  v46 = v73;
  v62(v73, v76, v75);
  LOBYTE(v91) = 0;
  v90 = 0;
  v64 = *(v83 + 16);
  v64(v79, v40, v80);
  v47 = v66;
  v41(v66, v42, v43);
  sub_29E013954();
  v49 = v48;
  v41(&v47[v48[12]], v77, v43);
  v63(&v47[v49[16]], v78, v45);
  v50 = v46;
  v51 = v75;
  v62(&v47[v49[20]], v50, v75);
  v52 = &v47[v49[24]];
  LOBYTE(a1) = v91;
  *v52 = sub_29E0123B0;
  *(v52 + 1) = 0;
  v52[16] = a1;
  v53 = &v47[v49[28]];
  LOBYTE(v43) = v90;
  *v53 = sub_29E012AE4;
  *(v53 + 1) = 0;
  v53[16] = v43;
  v54 = v80;
  v64(&v47[v49[32]], v79, v80);
  sub_29DE8EF48();
  sub_29DE8EF48();
  v55 = *(v83 + 8);
  v83 += 8;
  v55(v72, v54);
  v56 = *(v82 + 8);
  v82 += 8;
  v56(v76, v51);
  v57 = *(v81 + 8);
  v81 += 8;
  v58 = v71;
  v57(v68, v71);
  v59 = *(v74 + 8);
  v60 = v70;
  v59(v65, v70);
  v59(v67, v60);
  v55(v79, v80);
  sub_29DE8EF40();
  sub_29DE8EF40();
  v56(v73, v51);
  v57(v78, v58);
  v59(v77, v60);
  return (v59)(v69, v60);
}

uint64_t sub_29E00F6A8@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v26 = MEMORY[0x29EDBC288];
  sub_29E013DA0(0, &qword_2A181A9B8, MEMORY[0x29EDBC288]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v23 = &v22 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v22 - v8;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v22 - v11;
  type metadata accessor for InternalLunaLiveOnSettingsModel(0);
  sub_29E0137D0(&qword_2A181A938, type metadata accessor for InternalLunaLiveOnSettingsModel);
  v13 = sub_29E2C1664();
  swift_getKeyPath();
  sub_29E2C1674();

  sub_29E2C28C4();
  v14 = sub_29E2C1664();
  swift_getKeyPath();
  sub_29E2C1674();

  sub_29E2C28C4();
  v15 = *(v3 + 16);
  v16 = v23;
  v15(v23, v12, v2);
  v17 = v24;
  v15(v24, v9, v2);
  v18 = v25;
  v15(v25, v16, v2);
  sub_29E0146DC(0, &qword_2A181A9B0, &qword_2A181A9B8, v26);
  v15(&v18[*(v19 + 48)], v17, v2);
  v20 = *(v3 + 8);
  v20(v9, v2);
  v20(v12, v2);
  v20(v17, v2);
  return (v20)(v16, v2);
}

uint64_t sub_29E00FA18@<X0>(uint64_t a1@<X8>)
{
  sub_29E2C1B34();
  result = sub_29E2C2274();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29E00FA90@<X0>(uint64_t a1@<X8>)
{
  sub_29E2C1B34();
  result = sub_29E2C2274();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29E00FB08()
{
  sub_29E2C1B34();

  return sub_29E2C2844();
}

uint64_t sub_29E00FB9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_29E2C1444();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C1D34();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E014410(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E014740(0);
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_29E014578(0);
  sub_29E0137D0(&qword_2A181AA68, sub_29E014578);
  sub_29E2C21C4();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = &v15[*(v13 + 36)];
  *v20 = sub_29E014908;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = a2;
  sub_29E2C1D24();
  v22 = sub_29E014824();
  v23 = MEMORY[0x29EDBC010];
  sub_29E2C25B4();
  (*(v9 + 8))(v11, v8);
  sub_29E01434C(v15, sub_29E014410);
  v25 = v31;
  v24 = v32;
  (*(v31 + 104))(v7, *MEMORY[0x29EDBC328], v32);
  v36 = v13;
  v37 = v8;
  v38 = v22;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_29E2C23F4();
  (*(v25 + 8))(v7, v24);
  return (*(v29 + 8))(v18, v26);
}

uint64_t sub_29E00FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  sub_29E013E00();
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v69 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v65 = &v55 - v9;
  sub_29E014648();
  v68 = v10;
  v72 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v60 = &v55 - v13;
  sub_29E0139FC();
  v64 = v14;
  v67 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v62 = &v55 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v61 = &v55 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v55 - v21;
  sub_29E2C1B34();
  v78 = sub_29E2C2274();
  v79 = v23;
  v80 = v24 & 1;
  v81 = v25;
  v75 = a1;
  v76 = a2;
  sub_29E0142E0(0, &qword_2A181A980, sub_29E013A9C, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
  sub_29E013FAC();
  v58 = v22;
  sub_29E2C29D4();
  sub_29E2C1B34();
  v78 = sub_29E2C2274();
  v79 = v26;
  v80 = v27 & 1;
  v81 = v28;
  v73 = a1;
  v74 = a2;
  sub_29E2C29D4();
  sub_29E2C1B34();
  v78 = sub_29E2C2274();
  v79 = v29;
  v80 = v30 & 1;
  v81 = v31;
  sub_29E013CC0(0, &qword_2A181AA58, &qword_2A181AA60, &qword_2A18182B0, MEMORY[0x29EDBC270]);
  sub_29E0149AC();
  v32 = v60;
  sub_29E2C29D4();
  sub_29E2C1B34();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  sub_29E013E7C();
  v33 = v65;
  sub_29E2C1604();
  v34 = *(v67 + 16);
  v35 = v62;
  v36 = v64;
  v34(v62, v22, v64);
  v37 = v63;
  v34(v63, v61, v36);
  v56 = *(v72 + 16);
  v38 = v66;
  v56(v66, v32, v68);
  LOBYTE(v78) = 0;
  v77 = 0;
  v57 = *(v71 + 16);
  v39 = v69;
  v57(v69, v33, v70);
  v40 = v59;
  v34(v59, v35, v36);
  sub_29E0145AC();
  v42 = v41;
  v34(&v40[v41[12]], v37, v36);
  v43 = v38;
  v44 = v68;
  v56(&v40[v42[16]], v43, v68);
  v45 = &v40[v42[20]];
  LOBYTE(v34) = v78;
  *v45 = sub_29E0123B0;
  *(v45 + 1) = 0;
  v45[16] = v34;
  v46 = &v40[v42[24]];
  v47 = v77;
  *v46 = sub_29E012AE4;
  *(v46 + 1) = 0;
  v46[16] = v47;
  v48 = v70;
  v57(&v40[v42[28]], v39, v70);
  sub_29DE8EF48();
  sub_29DE8EF48();
  v49 = *(v71 + 8);
  v50 = v48;
  v49(v65, v48);
  v51 = *(v72 + 8);
  v72 += 8;
  v51(v60, v44);
  v52 = *(v67 + 8);
  v53 = v64;
  v52(v61, v64);
  v52(v58, v53);
  v49(v69, v50);
  sub_29DE8EF40();
  sub_29DE8EF40();
  v51(v66, v44);
  v52(v63, v53);
  return (v52)(v62, v53);
}

uint64_t sub_29E0107B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44[1] = a4;
  v53 = a5;
  sub_29E013A9C();
  v54 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v45 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0142E0(0, &qword_2A181AA28, sub_29E013A9C, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7E8]);
  v51 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v52 = (v44 - v11);
  v56 = type metadata accessor for InternalLiveOnRequirement(0);
  v12 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v55 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v44 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v44 - v18;
  v47 = a2;
  swift_getKeyPath();
  v48 = a3;
  swift_getKeyPath();
  v49 = a1;
  sub_29E2C1214();

  v21 = v57;
  v22 = *(v57 + 16);
  if (!v22)
  {
LABEL_20:

    sub_29E2C1B34();
    v36 = sub_29E2C2274();
    v37 = v52;
    *v52 = v36;
    v37[1] = v38;
    *(v37 + 16) = v39 & 1;
    v37[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_29E014064();
    return sub_29E2C1C74();
  }

  v23 = 0;
  v24 = *(v56 + 20);
  v50 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = v57 + v50;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v26 = *(v12 + 72);
    sub_29E014F2C(v25 + v26 * v23, v19, type metadata accessor for InternalLiveOnRequirement);
    if (v19[v24] != 1)
    {
      break;
    }

    result = sub_29E01434C(v19, type metadata accessor for InternalLiveOnRequirement);
LABEL_4:
    if (v22 == ++v23)
    {
      goto LABEL_20;
    }
  }

  v27 = v19[*(v56 + 32)];
  result = sub_29E01434C(v19, type metadata accessor for InternalLiveOnRequirement);
  if ((v27 & 1) == 0)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v28 = v57;
  v29 = *(v57 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = v57 + v50;
    v32 = MEMORY[0x29EDCA190];
    while (v30 < *(v28 + 16))
    {
      sub_29E014F2C(v31, v16, type metadata accessor for InternalLiveOnRequirement);
      if ((v16[*(v56 + 20)] & 1) != 0 || v16[*(v56 + 32)] != 1)
      {
        result = sub_29E01434C(v16, type metadata accessor for InternalLiveOnRequirement);
      }

      else
      {
        sub_29E0143AC(v16, v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E1818F8(0, *(v32 + 16) + 1, 1);
          v32 = v57;
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_29E1818F8(v34 > 1, v35 + 1, 1);
          v32 = v57;
        }

        *(v32 + 16) = v35 + 1;
        result = sub_29E0143AC(v55, v32 + v50 + v35 * v26);
      }

      ++v30;
      v31 += v26;
      if (v29 == v30)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  v32 = MEMORY[0x29EDCA190];
LABEL_22:

  v57 = v32;
  swift_getKeyPath();
  sub_29E013B94(0);
  sub_29E0137D0(&qword_2A181A990, sub_29E013B94);
  sub_29E0137D0(&qword_2A181A998, type metadata accessor for InternalLiveOnRequirement);
  sub_29E0140DC();
  v41 = v45;
  sub_29E2C29A4();
  v42 = v46;
  v43 = v54;
  (*(v46 + 16))(v52, v41, v54);
  swift_storeEnumTagMultiPayload();
  sub_29E014064();
  sub_29E2C1C74();
  return (*(v42 + 8))(v41, v43);
}

uint64_t sub_29E010E2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44[1] = a4;
  v53 = a5;
  sub_29E013A9C();
  v54 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v45 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0142E0(0, &qword_2A181AA28, sub_29E013A9C, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7E8]);
  v51 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v52 = (v44 - v11);
  v56 = type metadata accessor for InternalLiveOnRequirement(0);
  v12 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v55 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v44 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v44 - v18;
  v47 = a2;
  swift_getKeyPath();
  v48 = a3;
  swift_getKeyPath();
  v49 = a1;
  sub_29E2C1214();

  v21 = v57;
  v22 = *(v57 + 16);
  if (!v22)
  {
LABEL_20:

    sub_29E2C1B34();
    v36 = sub_29E2C2274();
    v37 = v52;
    *v52 = v36;
    v37[1] = v38;
    *(v37 + 16) = v39 & 1;
    v37[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_29E014064();
    return sub_29E2C1C74();
  }

  v23 = 0;
  v24 = *(v56 + 20);
  v50 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = v57 + v50;
  while (1)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v26 = *(v12 + 72);
    sub_29E014F2C(v25 + v26 * v23, v19, type metadata accessor for InternalLiveOnRequirement);
    if (v19[v24] != 1)
    {
      break;
    }

    result = sub_29E01434C(v19, type metadata accessor for InternalLiveOnRequirement);
LABEL_4:
    if (v22 == ++v23)
    {
      goto LABEL_20;
    }
  }

  v27 = v19[*(v56 + 32)];
  result = sub_29E01434C(v19, type metadata accessor for InternalLiveOnRequirement);
  if (v27)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v28 = v57;
  v29 = *(v57 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = v57 + v50;
    v32 = MEMORY[0x29EDCA190];
    while (v30 < *(v28 + 16))
    {
      sub_29E014F2C(v31, v16, type metadata accessor for InternalLiveOnRequirement);
      if (v16[*(v56 + 20)] & 1) != 0 || (v16[*(v56 + 32)])
      {
        result = sub_29E01434C(v16, type metadata accessor for InternalLiveOnRequirement);
      }

      else
      {
        sub_29E0143AC(v16, v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E1818F8(0, *(v32 + 16) + 1, 1);
          v32 = v57;
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_29E1818F8(v34 > 1, v35 + 1, 1);
          v32 = v57;
        }

        *(v32 + 16) = v35 + 1;
        result = sub_29E0143AC(v55, v32 + v50 + v35 * v26);
      }

      ++v30;
      v31 += v26;
      if (v29 == v30)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  v32 = MEMORY[0x29EDCA190];
LABEL_22:

  v57 = v32;
  swift_getKeyPath();
  sub_29E013B94(0);
  sub_29E0137D0(&qword_2A181A990, sub_29E013B94);
  sub_29E0137D0(&qword_2A181A998, type metadata accessor for InternalLiveOnRequirement);
  sub_29E0140DC();
  v41 = v45;
  sub_29E2C29A4();
  v42 = v46;
  v43 = v54;
  (*(v46 + 16))(v52, v41, v54);
  swift_storeEnumTagMultiPayload();
  sub_29E014064();
  sub_29E2C1C74();
  return (*(v42 + 8))(v41, v43);
}

uint64_t sub_29E0114A4@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x29EDBC270];
  sub_29E013DA0(0, &qword_2A18182B0, MEMORY[0x29EDBC270]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v21 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v21 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v21 - v15;
  sub_29E2C1B34();
  sub_29E2C2844();
  sub_29E2C1B34();
  sub_29E2C2844();
  v17 = *(v5 + 16);
  v17(v10, v16, v4);
  v17(v7, v13, v4);
  v17(a1, v10, v4);
  sub_29E0146DC(0, &qword_2A181AA60, &qword_2A18182B0, v2);
  v17(&a1[*(v18 + 48)], v7, v4);
  v19 = *(v5 + 8);
  v19(v13, v4);
  v19(v16, v4);
  v19(v7, v4);
  return (v19)(v10, v4);
}

void sub_29E01177C(void (*a1)(void))
{
  v2 = sub_29E2BC904();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  a1();
  v7 = sub_29E2BC8C4();
  (*(v3 + 8))(v5, v2);
  sub_29E18628C(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29E0137D0(&qword_2A18177A8, type metadata accessor for OpenExternalURLOptionsKey);
  v8 = sub_29E2C31F4();

  [v6 openURL:v7 options:v8 completionHandler:0];
}

uint64_t sub_29E011924()
{
  sub_29E014E40(0, &qword_2A181AA98, &qword_2A181AAA0, sub_29E013A9C);
  sub_29E014DDC(&qword_2A181AAB0, &qword_2A181AA98, &qword_2A181AAA0, sub_29E013A9C);
  return sub_29E2C29F4();
}

uint64_t sub_29E0119DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v66 = type metadata accessor for InternalLiveOnRequirement(0);
  v3 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v65 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v52 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v52 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v52 - v12;
  sub_29E013A9C();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v59 = &v52 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v58 = &v52 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v57 = &v52 - v21;
  v22 = *(a1 + 16);
  v53 = v3;
  v54 = a1;
  if (v22)
  {
    v23 = *(v3 + 72);
    v64 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v24 = a1 + v64;
    v25 = MEMORY[0x29EDCA190];
    v26 = v22;
    do
    {
      sub_29E014F2C(v24, v13, type metadata accessor for InternalLiveOnRequirement);
      if (v13[*(v66 + 20)])
      {
        sub_29E01434C(v13, type metadata accessor for InternalLiveOnRequirement);
      }

      else
      {
        sub_29E0143AC(v13, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E1818F8(0, *(v25 + 16) + 1, 1);
          v25 = v67;
        }

        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_29E1818F8(v28 > 1, v29 + 1, 1);
          v25 = v67;
        }

        *(v25 + 16) = v29 + 1;
        sub_29E0143AC(v10, v25 + v64 + v29 * v23);
      }

      v24 += v23;
      --v26;
    }

    while (v26);
  }

  else
  {
    v25 = MEMORY[0x29EDCA190];
  }

  v67 = v25;
  swift_getKeyPath();
  sub_29E013B94(0);
  v31 = v30;
  v32 = sub_29E0137D0(&qword_2A181A990, sub_29E013B94);
  v33 = sub_29E0137D0(&qword_2A181A998, type metadata accessor for InternalLiveOnRequirement);
  sub_29E0140DC();
  v34 = v57;
  v64 = v31;
  v55 = v33;
  v56 = v32;
  sub_29E2C29A4();
  if (v22)
  {
    v35 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v36 = *(v53 + 72);
    v37 = v54 + v35;
    v38 = MEMORY[0x29EDCA190];
    do
    {
      sub_29E014F2C(v37, v7, type metadata accessor for InternalLiveOnRequirement);
      if (v7[*(v66 + 20)] == 1)
      {
        sub_29E0143AC(v7, v65);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v67 = v38;
        if ((v39 & 1) == 0)
        {
          sub_29E1818F8(0, *(v38 + 16) + 1, 1);
          v38 = v67;
        }

        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_29E1818F8(v40 > 1, v41 + 1, 1);
          v38 = v67;
        }

        *(v38 + 16) = v41 + 1;
        sub_29E0143AC(v65, v38 + v35 + v41 * v36);
      }

      else
      {
        sub_29E01434C(v7, type metadata accessor for InternalLiveOnRequirement);
      }

      v37 += v36;
      --v22;
    }

    while (v22);
  }

  else
  {
    v38 = MEMORY[0x29EDCA190];
  }

  v67 = v38;
  swift_getKeyPath();
  v42 = v58;
  sub_29E2C29A4();
  v44 = v61;
  v43 = v62;
  v45 = *(v61 + 16);
  v46 = v59;
  v45(v59, v34, v62);
  v47 = v60;
  v45(v60, v42, v43);
  v48 = v63;
  v45(v63, v46, v43);
  sub_29E014CCC(0, &qword_2A181AAA0, sub_29E013A9C);
  v45(&v48[*(v49 + 48)], v47, v43);
  v50 = *(v44 + 8);
  v50(v42, v43);
  v50(v34, v43);
  v50(v47, v43);
  return (v50)(v46, v43);
}

uint64_t sub_29E012040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InternalLiveOnRequirement(0);
  v5 = v4;
  v6 = *(a1 + *(v4 + 20));
  v7 = 28;
  if (v6)
  {
    v7 = 24;
  }

  v8 = *(a1 + *(v4 + v7));
  result = sub_29E2BF404();
  v10 = *(a1 + *(v5 + 32));
  *a2 = v8;
  *(a2 + 8) = result;
  *(a2 + 16) = v6;
  *(a2 + 17) = v10;
  return result;
}

uint64_t sub_29E0120BC()
{
  sub_29E014C44();
  sub_29E014D2C();
  return sub_29E2C21C4();
}

uint64_t sub_29E012124@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  return sub_29E2BF404();
}

uint64_t sub_29E012140@<X0>(uint64_t a1@<X8>)
{
  sub_29DE9DE68();
  sub_29E2BF404();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29E0121AC@<X0>(__int16 a1@<W2>, uint64_t *a2@<X8>)
{
  v4 = sub_29E2C2714();
  if (a1)
  {
    v5 = objc_opt_self();
    v6 = &selRef_hkmc_supplementaryDataColor;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = &selRef_hkmc_menstruationColor;
    if ((a1 & 0x100) == 0)
    {
      v6 = &selRef_tertiaryLabelColor;
    }
  }

  v7 = [v5 *v6];
  v8 = sub_29E2C2654();
  KeyPath = swift_getKeyPath();
  sub_29E0156E4();
  v11 = (a2 + *(v10 + 36));
  sub_29E015784(0);
  v13 = *(v12 + 28);
  v14 = *MEMORY[0x29EDBCAD0];
  v15 = sub_29E2C2764();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  result = swift_getKeyPath();
  *v11 = result;
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v8;
  return result;
}

uint64_t sub_29E012304()
{
  sub_29E0156E4();
  sub_29E0157B8();
  return sub_29E2C2794();
}

uint64_t sub_29E0123B0()
{
  sub_29E013BC8(0, &qword_2A181AA20, sub_29E014270, MEMORY[0x29EDB8B00]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v9 - v3;
  type metadata accessor for InternalLiveOnDevicesModel(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26InternalLiveOnDevicesModel__devices;
  v10 = MEMORY[0x29EDCA190];
  sub_29E014270(0);
  sub_29E2C11D4();
  (*(v2 + 32))(v5 + v6, v4, v1);
  v7 = sub_29E08AA58();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v7;

  sub_29E2C1224();
  return v5;
}

uint64_t sub_29E012534()
{
  type metadata accessor for InternalLiveOnDevicesModel(0);
  sub_29E0137D0(&qword_2A181AB10, type metadata accessor for InternalLiveOnDevicesModel);
  sub_29E2C14A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  sub_29E014270(0);
  sub_29E2BCC24();
  sub_29E0150A4();
  sub_29E0137D0(&qword_2A181AB00, sub_29E014270);
  sub_29E015174();
  sub_29E0137D0(&qword_2A181AAF8, sub_29E015174);
  sub_29DE9DE68();
  swift_getOpaqueTypeConformance2();
  sub_29E0137D0(&qword_2A181AB18, type metadata accessor for InternalLiveOnDevicesModel.Device);
  return sub_29E2C29B4();
}

uint64_t sub_29E012778(uint64_t a1)
{
  sub_29E015174();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E012934();
  v14 = v7;
  v8 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
  sub_29DE9DE68();
  sub_29E2C27A4();
  v9 = (a1 + *(v8 + 28));
  v11 = *v9;
  v10 = v9[1];
  v13 = v11;
  v14 = v10;
  sub_29E0137D0(&qword_2A181AAF8, sub_29E015174);
  sub_29E2C2534();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29E012934()
{
  v1 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 2)
  {
    v3 = *(v0 + *(v1 + 24));
    sub_29E2BF404();
  }

  else
  {
    v7 = *(v0 + *(v1 + 24));
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](10272, 0xE200000000000000);
    if (v2)
    {
      v4 = 0x657669746361;
    }

    else
    {
      v4 = 0x6576697463616E69;
    }

    if (v2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    MEMORY[0x29ED7FCC0](v4, v5);

    MEMORY[0x29ED7FCC0](41, 0xE100000000000000);
    return v7;
  }

  return v3;
}

uint64_t sub_29E012A0C()
{
  sub_29E2C1B34();
  sub_29E2C2274();
  sub_29E014FA0();
  sub_29E0151F0();
  return sub_29E2C29D4();
}

uint64_t sub_29E012AE4()
{
  type metadata accessor for InternalLiveOnStatisticsModel(0);
  swift_allocObject();
  return sub_29E0877A4();
}

uint64_t sub_29E012B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v79 = a4;
  v80 = a2;
  v65 = sub_29E2BC954();
  v64 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E2BC984();
  v61 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v81 = &v58 - v13;
  sub_29E014E98();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v78 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v77 = &v58 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v76 = &v58 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v82 = &v58 - v23;
  sub_29E2C1B34();
  v24 = sub_29E2C2274();
  v26 = v25;
  v85 = v24;
  v86 = v25;
  v28 = v27 & 1;
  v87 = v27 & 1;
  v88 = v29;
  v30 = type metadata accessor for InternalLiveOnStatisticsModel(0);
  sub_29E0137D0(&qword_2A181AAD8, type metadata accessor for InternalLiveOnStatisticsModel);
  v73 = a3;
  v72 = a1;
  v69 = v30;
  sub_29E2C14A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (v84)
  {
    v31 = 0xAA0000000000A680;
    v32 = 0xE2676E6964616F4CLL;
  }

  else
  {
    v32 = sub_29E2C48D4();
    v31 = v33;
  }

  v83 = v32;
  v84 = v31;
  v70 = sub_29DE9DE68();
  sub_29E2C2534();

  sub_29DED6478(v24, v26, v28);

  sub_29E2C1B34();
  v67 = sub_29E2C2274();
  v85 = v67;
  v86 = v34;
  v66 = v34;
  v36 = v35 & 1;
  v87 = v35 & 1;
  v68 = v37;
  v88 = v37;
  sub_29E2C14A4();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v81;
  sub_29E2C1214();

  v39 = v38;
  v40 = v71;
  sub_29E014F2C(v39, v71, sub_29DEB3B00);
  v41 = v74;
  v42 = v75;
  if ((*(v74 + 48))(v40, 1, v75) == 1)
  {
    v43 = 0xE500000000000000;
    v44 = 0x726576654ELL;
  }

  else
  {
    v45 = v59;
    (*(v41 + 32))(v59, v40, v42);
    v46 = v60;
    sub_29E2BC964();
    v47 = v62;
    sub_29E2BC944();
    v44 = sub_29E2BCB74();
    v43 = v48;
    (*(v64 + 8))(v47, v65);
    (*(v61 + 8))(v46, v63);
    (*(v41 + 8))(v45, v42);
  }

  sub_29E01434C(v81, sub_29DEB3B00);
  v83 = v44;
  v84 = v43;
  v49 = v76;
  sub_29E2C2534();

  sub_29DED6478(v67, v66, v36);

  v50 = *(v16 + 16);
  v51 = v77;
  v52 = v82;
  v50(v77, v82, v15);
  v53 = v78;
  v50(v78, v49, v15);
  v54 = v79;
  v50(v79, v51, v15);
  sub_29E014CCC(0, &qword_2A181AAC0, sub_29E014E98);
  v50(&v54[*(v55 + 48)], v53, v15);
  v56 = *(v16 + 8);
  v56(v49, v15);
  v56(v52, v15);
  v56(v53, v15);
  return (v56)(v51, v15);
}

uint64_t sub_29E013388()
{
  sub_29E2C1B34();
  sub_29E2C2274();
  sub_29E014E40(0, &qword_2A181AAB8, &qword_2A181AAC0, sub_29E014E98);
  sub_29E014DDC(&qword_2A181AAD0, &qword_2A181AAB8, &qword_2A181AAC0, sub_29E014E98);
  return sub_29E2C29D4();
}

uint64_t sub_29E0134B0(uint64_t a1)
{
  v2 = sub_29E2C2764();
  v3 = MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29E2C1894();
}

uint64_t sub_29E013578(void *a1)
{
  if (a1)
  {
    v3 = objc_allocWithZone(type metadata accessor for InternalLunaLiveOnSettingsModel(0));
    sub_29E082828(a1);
    sub_29E0137D0(&qword_2A181A938, type metadata accessor for InternalLunaLiveOnSettingsModel);
    v12 = sub_29E2C1654();
    v13 = v4;
    sub_29E01377C();
  }

  else
  {
    [objc_allocWithZone(type metadata accessor for InternalKaliLiveOnSettingsModel(0)) init];
    sub_29E0137D0(&qword_2A181A948, type metadata accessor for InternalKaliLiveOnSettingsModel);
    v12 = sub_29E2C1654();
    v13 = v5;
    sub_29E013818();
  }

  sub_29E2C2914();

  v6 = sub_29E2C1EA4();

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36InternalLiveOnSettingsViewController_host] = v7;
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36InternalLiveOnSettingsViewController_liveOnConfiguration] = a1;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for InternalLiveOnSettingsViewController();
    v8 = a1;
    v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

    return v9;
  }

  else
  {

    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

unint64_t sub_29E01377C()
{
  result = qword_2A181A940;
  if (!qword_2A181A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A940);
  }

  return result;
}

uint64_t sub_29E0137D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E013818()
{
  result = qword_2A181A950;
  if (!qword_2A181A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A950);
  }

  return result;
}

void sub_29E013954()
{
  if (!qword_2A181A970)
  {
    sub_29E0139FC();
    sub_29E013C2C();
    sub_29E013D1C();
    sub_29E013E00();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181A970);
    }
  }
}

void sub_29E0139FC()
{
  if (!qword_2A181A978)
  {
    sub_29E0142E0(255, &qword_2A181A980, sub_29E013A9C, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A978);
    }
  }
}

void sub_29E013A9C()
{
  if (!qword_2A181A988)
  {
    sub_29E013B94(255);
    type metadata accessor for InternalLiveOnRequirement(255);
    sub_29E0137D0(&qword_2A181A990, sub_29E013B94);
    sub_29E0137D0(&qword_2A181A998, type metadata accessor for InternalLiveOnRequirement);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A988);
    }
  }
}

void sub_29E013BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E013C2C()
{
  if (!qword_2A181A9A0)
  {
    sub_29E013CC0(255, &qword_2A181A9A8, &qword_2A181A9B0, &qword_2A181A9B8, MEMORY[0x29EDBC288]);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A9A0);
    }
  }
}

void sub_29E013CC0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(void, void, void))
{
  if (!*a2)
  {
    sub_29E0146DC(255, a3, a4, a5);
    v6 = sub_29E2C2B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E013D1C()
{
  if (!qword_2A181A9C0)
  {
    sub_29E013DA0(255, &qword_2A18182B0, MEMORY[0x29EDBC270]);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A9C0);
    }
  }
}

void sub_29E013DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E013E00()
{
  if (!qword_2A181A9C8)
  {
    sub_29E013E7C();
    v0 = sub_29E2C1614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A9C8);
    }
  }
}

unint64_t sub_29E013E7C()
{
  result = qword_2A181A9D0;
  if (!qword_2A181A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A9D0);
  }

  return result;
}

unint64_t sub_29E013FAC()
{
  result = qword_2A181A9F8;
  if (!qword_2A181A9F8)
  {
    sub_29E0142E0(255, &qword_2A181A980, sub_29E013A9C, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC7F0]);
    sub_29E014064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A9F8);
  }

  return result;
}

unint64_t sub_29E014064()
{
  result = qword_2A181AA00;
  if (!qword_2A181AA00)
  {
    sub_29E013A9C();
    sub_29E0140DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AA00);
  }

  return result;
}

unint64_t sub_29E0140DC()
{
  result = qword_2A181AA08;
  if (!qword_2A181AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AA08);
  }

  return result;
}

unint64_t sub_29E014178()
{
  result = qword_2A181AA10;
  if (!qword_2A181AA10)
  {
    sub_29E013CC0(255, &qword_2A181A9A8, &qword_2A181A9B0, &qword_2A181A9B8, MEMORY[0x29EDBC288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AA10);
  }

  return result;
}

unint64_t sub_29E0141FC()
{
  result = qword_2A181AA18;
  if (!qword_2A181AA18)
  {
    sub_29E013DA0(255, &qword_2A18182B0, MEMORY[0x29EDBC270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AA18);
  }

  return result;
}

id sub_29E0142A4@<X0>(void *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_settingsManager) *a2];
  *a3 = result;
  return result;
}

void sub_29E0142E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E01434C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E0143AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalLiveOnRequirement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E014430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E0144C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E0137D0(a4, a5);
    v8 = sub_29E2C21D4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E0145AC()
{
  if (!qword_2A181AA48)
  {
    sub_29E0139FC();
    sub_29E014648();
    sub_29E013E00();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181AA48);
    }
  }
}

void sub_29E014648()
{
  if (!qword_2A181AA50)
  {
    sub_29E013CC0(255, &qword_2A181AA58, &qword_2A181AA60, &qword_2A18182B0, MEMORY[0x29EDBC270]);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AA50);
    }
  }
}

void sub_29E0146DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void, void))
{
  if (!*a2)
  {
    sub_29E013DA0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E014774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_29E2C1D34();
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29E014860(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_29E0137D0(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E0149AC()
{
  result = qword_2A181AA88;
  if (!qword_2A181AA88)
  {
    sub_29E013CC0(255, &qword_2A181AA58, &qword_2A181AA60, &qword_2A18182B0, MEMORY[0x29EDBC270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AA88);
  }

  return result;
}

uint64_t sub_29E014A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_29E014A98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 sub_29E014AEC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E014B10(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(void))
{
  a2(255);
  a3(255);
  sub_29E2C1D34();
  a4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_29E014C44()
{
  if (!qword_2A181AA90)
  {
    sub_29E014E40(255, &qword_2A181AA98, &qword_2A181AAA0, sub_29E013A9C);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AA90);
    }
  }
}

void sub_29E014CCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29E014D2C()
{
  result = qword_2A181AAA8;
  if (!qword_2A181AAA8)
  {
    sub_29E014C44();
    sub_29E014DDC(&qword_2A181AAB0, &qword_2A181AA98, &qword_2A181AAA0, sub_29E013A9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AAA8);
  }

  return result;
}

uint64_t sub_29E014DDC(unint64_t *a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E014E40(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E014E40(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E014CCC(255, a3, a4);
    v5 = sub_29E2C2B14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E014E98()
{
  if (!qword_2A181AAC8)
  {
    sub_29DE9DE68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181AAC8);
    }
  }
}

uint64_t sub_29E014F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E014FA0()
{
  if (!qword_2A181AAE0)
  {
    sub_29E014270(255);
    sub_29E2BCC24();
    sub_29E0150A4();
    sub_29E0137D0(&qword_2A181AB00, sub_29E014270);
    sub_29E0137D0(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AAE0);
    }
  }
}

void sub_29E0150A4()
{
  if (!qword_2A181AAE8)
  {
    sub_29E015174();
    sub_29E0137D0(&qword_2A181AAF8, sub_29E015174);
    sub_29DE9DE68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181AAE8);
    }
  }
}

void sub_29E015174()
{
  if (!qword_2A181AAF0)
  {
    v0 = sub_29E2C27B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AAF0);
    }
  }
}

unint64_t sub_29E0151F0()
{
  result = qword_2A181AB08;
  if (!qword_2A181AB08)
  {
    sub_29E014FA0();
    sub_29E015174();
    sub_29E0137D0(&qword_2A181AAF8, sub_29E015174);
    sub_29DE9DE68();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB08);
  }

  return result;
}

uint64_t sub_29E0152E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_29E01532C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E01537C()
{
  if (!qword_2A181AB28)
  {
    sub_29E014C44();
    sub_29E014D2C();
    v0 = sub_29E2C21D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AB28);
    }
  }
}

unint64_t sub_29E0153FC()
{
  result = qword_2A181AB30;
  if (!qword_2A181AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB30);
  }

  return result;
}

unint64_t sub_29E015450()
{
  result = qword_2A181AB38;
  if (!qword_2A181AB38)
  {
    sub_29E015508();
    sub_29E014DDC(&qword_2A181AAD0, &qword_2A181AAB8, &qword_2A181AAC0, sub_29E014E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB38);
  }

  return result;
}

void sub_29E015508()
{
  if (!qword_2A181AB40)
  {
    sub_29E014E40(255, &qword_2A181AAB8, &qword_2A181AAC0, sub_29E014E98);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AB40);
    }
  }
}