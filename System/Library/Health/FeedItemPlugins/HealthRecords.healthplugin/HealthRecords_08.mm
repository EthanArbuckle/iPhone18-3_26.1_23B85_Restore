uint64_t sub_29D5728B0(unint64_t a1, char a2)
{
  if ((sub_29D573AA0(a1) & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D573D60(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  sub_29D5B134C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D5B62A0;
  v4 = sub_29D5B143C();
  sub_29D5729C0(v4, a2 & 1);

  return v3;
}

uint64_t sub_29D5729C0(void *a1, int a2)
{
  v35 = a2;
  v3 = sub_29D5B0E6C();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D573D60(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v33 = v32 - v7;
  sub_29D573D60(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v5);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v32[1] = v32 - v9;
  v32[0] = sub_29D5B104C();
  v10 = *(v32[0] - 8);
  MEMORY[0x2A1C7C4A8](v32[0]);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B1D6C();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573D60(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v5);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = v32 - v18;
  v20 = sub_29D5B0EDC();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  if (qword_2A1A18A28 != -1)
  {
    swift_once();
  }

  v21 = sub_29D5B1AAC();
  sub_29D50BA5C(v21, qword_2A1A1A710);
  (*(v14 + 104))(v16, *MEMORY[0x29EDC4068], v13);
  sub_29D5B294C();
  (*(v14 + 8))(v16, v13);
  sub_29D573888(v19, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  type metadata accessor for LabsOnboardingAppPluginViewController();
  (*(v10 + 104))(v12, *MEMORY[0x29EDC3790], v32[0]);
  v22 = a1;
  sub_29D5B110C();
  sub_29D5B0E5C();
  v23 = v33;
  sub_29D5B0C6C();
  v24 = sub_29D5B0C7C();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_29D5B16FC();
  sub_29D5B12BC();
  sub_29D5B124C();
  sub_29D5B132C();
  sub_29D5B123C();
  sub_29D5B122C();
  v37 = MEMORY[0x29EDCA1A0];
  v25 = sub_29D5B158C();
  sub_29D59AD10(&v36, v25, v26);

  v27 = v37;
  v28 = sub_29D5B130C();
  sub_29D4E80E8(v27);
  v28(&v36, 0);
  v29 = sub_29D5B401C();
  v30 = HKUIJoinStringsForAutomationIdentifier();

  if (v30)
  {
    sub_29D5B3E5C();
  }

  return sub_29D5B12EC();
}

uint64_t sub_29D572F68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D573D60(0, &qword_2A1A165D0, sub_29D4E3C34, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v32 - v7;
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v5;
    v18 = v17;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v18 = 136446466;
    v37 = sub_29D573A34(0);
    sub_29D573A54(0, &qword_2A17A4E58, sub_29D573A34);
    v19 = sub_29D5B3E7C();
    v33 = v9;
    v21 = sub_29D501890(v19, v20, &v38);
    v36 = a2;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v37 = v13;
    v23 = v13;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v24 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v25 = sub_29D5B3E7C();
    v27 = sub_29D501890(v25, v26, &v38);

    *(v18 + 14) = v27;
    a2 = v36;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v18, 0x16u);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v29 = v18;
    v5 = v35;
    MEMORY[0x29ED5FB80](v29, -1, -1);

    (*(v10 + 8))(v12, v33);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v37 = MEMORY[0x29EDCA190];
  sub_29D4E3C34();
  sub_29D5B3A2C();
  sub_29D50CA34();
  v30 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v30;
  return result;
}

uint64_t sub_29D573310()
{

  v1 = OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingTileGenerator()
{
  result = qword_2A1A18A08;
  if (!qword_2A1A18A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D573418@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D573494()
{
  if (!qword_2A1A17258)
  {
    sub_29D50AF28();
    sub_29D4CF8C0();
    sub_29D5739EC(&qword_2A1A16FF8, sub_29D50AF28);
    sub_29D5739EC(&qword_2A1A166B0, sub_29D4CF8C0);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17258);
    }
  }
}

void sub_29D573580()
{
  if (!qword_2A1A16EB0)
  {
    sub_29D573494();
    sub_29D573D60(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D5739EC(&qword_2A1A17260, sub_29D573494);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16EB0);
    }
  }
}

void sub_29D57365C()
{
  if (!qword_2A1A16C20)
  {
    sub_29D573494();
    sub_29D4E3C34();
    sub_29D5739EC(&qword_2A1A17260, sub_29D573494);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C20);
    }
  }
}

void sub_29D573708()
{
  if (!qword_2A1A16DB0)
  {
    sub_29D57365C();
    sub_29D4B2D8C();
    sub_29D5739EC(&qword_2A1A16C28, sub_29D57365C);
    sub_29D5739EC(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16DB0);
    }
  }
}

void sub_29D5737F4()
{
  if (!qword_2A1A17090)
  {
    sub_29D573708();
    sub_29D5739EC(&qword_2A1A16DB8, sub_29D573708);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17090);
    }
  }
}

uint64_t sub_29D573888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D573D60(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5738F8(unint64_t a1, char a2)
{
  type metadata accessor for HealthRecordsGeneratorContext();

  return sub_29D5728B0(a1, a2);
}

uint64_t sub_29D5739A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_29D5739EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D573A54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_29D573AA0(unint64_t a1)
{
  v27 = sub_29D5B0E6C();
  v2 = *(v27 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v27);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v25 = &v22 - v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v22 - v7;
  if (a1 >> 62)
  {
    if (sub_29D5B485C() < 6)
    {
      return 0;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6)
  {
    return 0;
  }

  v9 = sub_29D5B35FC();
  if (v9 >> 62)
  {
    v13 = sub_29D5B485C();

    if (v13)
    {
      return 0;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v10)
    {
      return 0;
    }
  }

  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    result = sub_29D5B485C();
    v24 = result;
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v23 = a1 & 0xC000000000000001;
  v15 = (v2 + 8);
  do
  {
    v12 = v24 != v14;
    if (v24 == v14)
    {
      break;
    }

    if (v23)
    {
      result = MEMORY[0x29ED5EF30](v14, a1);
    }

    else
    {
      if (v14 >= *(v22 + 16))
      {
        goto LABEL_23;
      }

      result = *(a1 + 8 * v14 + 32);
    }

    v16 = result;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v17 = [result modificationDate];
    sub_29D5B0E4C();

    v18 = v25;
    sub_29D5B0E5C();
    v19 = v26;
    sub_29D5B0DCC();
    v20 = *v15;
    v21 = v27;
    (*v15)(v18, v27);
    LOBYTE(v18) = sub_29D5B0DFC();

    v20(v19, v21);
    result = (v20)(v8, v21);
    ++v14;
  }

  while ((v18 & 1) == 0);
  return v12;
}

void sub_29D573D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D573E90(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v24 = a4;
  v23 = a3;
  v8 = sub_29D5B1BCC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B2C0C();
  sub_29D5B21EC();
  v13 = sub_29D5B21DC();
  (*(v9 + 104))(v11, *MEMORY[0x29EDC3F70], v8);
  sub_29D5B1CBC();
  v14 = sub_29D5B1C8C();
  v15 = sub_29D5B1C4C();

  v16 = sub_29D5B21BC();
  (*(v9 + 8))(v11, v8);
  if (v16)
  {
    v17 = v23;
    v18 = HIDWORD(v23);
    v19 = sub_29D5B3E1C();
    [v5 startedTest_];

    [v12 pushViewController:v16 animated:0];
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    *(v20 + 24) = a1;
    *(v20 + 32) = a2;
    *(v20 + 40) = v17;
    *(v20 + 44) = v18;
    *(v20 + 48) = v24;
    aBlock[4] = sub_29D574ACC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D49ACEC;
    aBlock[3] = &unk_2A242A688;
    v21 = _Block_copy(aBlock);
    v22 = v5;

    [v22 installCACommitCompletionBlock_];

    _Block_release(v21);
    v12 = v16;
  }
}

uint64_t sub_29D574118(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v34 = a5;
  v5 = a4;
  v31 = a2;
  v32 = a3;
  v33 = HIDWORD(a4);
  v7 = sub_29D5B3C8C();
  v38 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B3CAC();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B3CCC();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v29 - v18;
  v20 = [a1 tableView];
  sub_29D4999F8();
  v30 = sub_29D5B43FC();
  sub_29D5B3CBC();
  sub_29D5B3CDC();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v22 = swift_allocObject();
  v23 = v31;
  v24 = v32;
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  *(v22 + 32) = v24;
  LODWORD(v23) = v33;
  *(v22 + 40) = v5;
  *(v22 + 44) = v23;
  *(v22 + 48) = v34;
  aBlock[4] = sub_29D574B70;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D49ACEC;
  aBlock[3] = &unk_2A242A6D8;
  v25 = _Block_copy(aBlock);
  v26 = v20;

  sub_29D5B3C9C();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D574BD8(&qword_2A1A19700, MEMORY[0x29EDCA248]);
  sub_29D574B80();
  sub_29D574BD8(&qword_2A1A196A0, sub_29D574B80);
  sub_29D5B47CC();
  v27 = v30;
  MEMORY[0x29ED5E980](v19, v12, v9, v25);
  _Block_release(v25);

  (*(v38 + 8))(v9, v7);
  (*(v36 + 8))(v12, v37);
  return (v21)(v19, v35);
}

void sub_29D57452C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = HIDWORD(a4);
    v9 = sub_29D5B3E1C();
    [a1 _performScrollTest_iterations_delta_length_];
  }
}

uint64_t sub_29D5745B4(uint64_t a1)
{
  sub_29D5B48CC();
  if (*(a1 + 16) && (v2 = sub_29D57A24C(v5), (v3 & 1) != 0))
  {
    sub_29D4A7420(*(a1 + 56) + 32 * v2, v6);
    sub_29D4A73CC(v5);

    if (swift_dynamicCast())
    {
      return 0x656D614E74736574;
    }
  }

  else
  {

    sub_29D4A73CC(v5);
  }

  return 0;
}

void sub_29D574698(void (*a1)(uint64_t))
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B2C0C();
  sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  (*(v3 + 104))(v5, *MEMORY[0x29EDC3F70], v2);
  sub_29D5B1CBC();
  v8 = sub_29D5B1C8C();
  v9 = sub_29D5B1C4C();

  v10 = sub_29D5B21BC();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      [v6 pushViewController:v11 animated:0];
      if (a1)
      {
        v13 = v10;
        a1(v12);
      }

      else
      {
      }

      goto LABEL_9;
    }
  }

  if (a1)
  {
    a1(0);
  }

LABEL_9:
}

uint64_t sub_29D57487C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;

  result = sub_29D5745B4(v7);
  if (!a3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = sub_29D5B4ADC();

  if (v15)
  {
    if (v15 != 1)
    {

      sub_29D574A68();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_29D5B62A0;
      sub_29D5B494C();

      MEMORY[0x29ED5E510](a2, a3);

      *(v18 + 56) = MEMORY[0x29EDC99B0];
      *(v18 + 32) = 0xD000000000000014;
      *(v18 + 40) = 0x800000029D5BE710;
      sub_29D5B4D2C();
      v17 = 0;
      goto LABEL_10;
    }

    if (v6)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      *(v16 + 24) = v12;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;

      sub_29D574698(sub_29D574ABC);

      v17 = 1;
LABEL_10:

      return v17;
    }
  }

  else if (v6)
  {
    sub_29D573E90(v11, v12, v13, v14);
    v17 = 1;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_29D574A68()
{
  if (!qword_2A17A4EC0)
  {
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4EC0);
    }
  }
}

void sub_29D574ACC()
{
  v1 = *(v0 + 16);
  v2 = sub_29D5B3E1C();
  [v1 finishedTest_];
}

uint64_t sub_29D574B30()
{

  return MEMORY[0x2A1C733A0](v0, 52, 7);
}

void sub_29D574B80()
{
  if (!qword_2A1A196B0)
  {
    sub_29D5B3C8C();
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A196B0);
    }
  }
}

uint64_t sub_29D574BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D574C28(uint64_t a1, void *a2, uint64_t a3)
{
  *&v213 = a3;
  v210 = a2;
  ObjectType = swift_getObjectType();
  v195 = sub_29D5B0D5C();
  v194 = *(v195 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v195);
  v190 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v192 = &v187 - v6;
  v7 = sub_29D5B1D6C();
  v208 = *(v7 - 8);
  *&v209 = v7;
  v8 = *(v208 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v207 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  *&v212 = &v187 - v10;
  sub_29D57B488(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v216 = &v187 - v12;
  v202 = sub_29D5B371C();
  v203 = *(v202 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v202);
  v191 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v201 = &v187 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v196 = &v187 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v193 = &v187 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v199 = &v187 - v21;
  v205 = sub_29D5B0EDC();
  v206 = *(v205 - 8);
  v22 = *(v206 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v205);
  v204 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v26 = &v187 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v29 = &v187 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27);
  v197 = &v187 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v198 = &v187 - v32;
  v33 = sub_29D5B198C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v37 = &v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v39 = &v187 - v38;
  sub_29D5B18FC();
  swift_allocObject();
  v40 = sub_29D5B18EC();
  v189 = a1;
  v215 = v40;
  sub_29D5B18DC();
  v41 = *(v34 + 16);
  v211 = v39;
  v41(v37, v39, v33);
  v42 = v34;
  v43 = *(v34 + 88);
  v217 = v33;
  v44 = v43(v37, v33);
  if (v44 == *MEMORY[0x29EDC3E50])
  {
    (*(v34 + 96))(v37, v217);
    v45 = v208;
    v206 = *(v208 + 32);
    v46 = v212;
    v47 = v209;
    (v206)(v212, v37, v209);
    v48 = sub_29D5B410C();
    (*(*(v48 - 8) + 56))(v216, 1, 1, v48);
    v49 = v207;
    (*(v45 + 16))(v207, v46, v47);
    sub_29D48F564(v213, &v219);
    sub_29D5B40EC();
    *&v213 = v214;
    v214 = v210;
    v50 = sub_29D5B40DC();
    v51 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v52 = (v8 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = MEMORY[0x29EDCA390];
    v53[2] = v50;
    v53[3] = v54;
    v53[4] = v213;
    (v206)(v53 + v51, v49, v47);
    *(v53 + v52) = v214;
    sub_29D497868(&v219, v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    sub_29D57657C(0, 0, v216, &unk_29D5BAE08, v53);

    (*(v45 + 8))(v212, v47);
    return (*(v42 + 8))(v211, v217);
  }

  v56 = v213;
  v57 = v216;
  v58 = v214;
  if (v44 == *MEMORY[0x29EDC3E30])
  {
    (*(v42 + 96))(v37, v217);
    v59 = v206;
    v60 = v205;
    (*(v206 + 32))(v29, v37, v205);
    v61 = [objc_opt_self() medicalRecordTypes];
    sub_29D48F51C(0, &qword_2A1A19660);
    v62 = sub_29D5B402C();

    if (v62 >> 62)
    {
      result = sub_29D5B485C();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v62 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x29ED5EF30](0, v62);
        }

        else
        {
          if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v63 = *(v62 + 32);
        }

        v64 = v63;

        sub_29D578644(v29, v64, v210);

        goto LABEL_47;
      }
    }

LABEL_47:

    (*(v59 + 8))(v29, v60);
    return (*(v42 + 8))(v211, v217);
  }

  if (v44 == *MEMORY[0x29EDC3E38])
  {
    v65 = *(v42 + 8);
    v66 = v217;
    v65(v37, v217);
    sub_29D5B194C();

    return (v65)(v211, v66);
  }

  if (v44 == *MEMORY[0x29EDC3E60])
  {
    v188 = v42;
    (*(v42 + 96))(v37, v217);
    sub_29D4C8544();
    v68 = &v37[*(v67 + 48)];
    v70 = *v68;
    v69 = *(v68 + 1);
    *&v212 = v70;
    *&v209 = v69;
    v71 = v206;
    v208 = *(v206 + 32);
    v72 = v26;
    v187 = v26;
    v73 = v37;
    v74 = v205;
    (v208)(v26, v73, v205);
    v75 = sub_29D5B410C();
    (*(*(v75 - 8) + 56))(v57, 1, 1, v75);
    sub_29D48F564(v56, &v219);
    v76 = v204;
    v77 = v74;
    (*(v71 + 16))(v204, v72, v74);
    sub_29D5B40EC();
    v78 = v58;
    v214 = v210;
    v79 = sub_29D5B40DC();
    v80 = (*(v71 + 80) + 80) & ~*(v71 + 80);
    v81 = (v22 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    v83 = MEMORY[0x29EDCA390];
    v82[2] = v79;
    v82[3] = v83;
    v82[4] = v78;
    sub_29D497868(&v219, (v82 + 5));
    (v208)(v82 + v80, v76, v77);
    *(v82 + v81) = v214;
    v84 = (v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8));
    v85 = v209;
    *v84 = v212;
    v84[1] = v85;
    sub_29D57657C(0, 0, v216, &unk_29D5BADF8, v82);

    (*(v71 + 8))(v187, v77);
    return (*(v188 + 8))(v211, v217);
  }

  if (v44 == *MEMORY[0x29EDC3E68])
  {
    v86 = v217;
    (*(v42 + 96))(v37, v217);
    v87 = *v37;
    v88 = *(v37 + 1);
    v89 = sub_29D5B410C();
    (*(*(v89 - 8) + 56))(v57, 1, 1, v89);
    sub_29D5B40EC();
    v90 = v58;
    v91 = v210;
    v92 = sub_29D5B40DC();
    v93 = swift_allocObject();
    v94 = MEMORY[0x29EDCA390];
    v93[2] = v92;
    v93[3] = v94;
    v93[4] = v90;
    v93[5] = v91;
    v93[6] = v87;
    v93[7] = v88;
    sub_29D57657C(0, 0, v57, &unk_29D5BADE8, v93);

    return (*(v42 + 8))(v211, v86);
  }

  if (v44 == *MEMORY[0x29EDC3E40])
  {
    v95 = v217;
    (*(v42 + 96))(v37, v217);
    v96 = *v37;
    v212 = *(v37 + 1);
    v213 = v96;
    v209 = *(v37 + 2);
    v97 = *(v37 + 6);
    v98 = sub_29D5B410C();
    (*(*(v98 - 8) + 56))(v57, 1, 1, v98);
    sub_29D5B40EC();
    v99 = v58;
    v100 = v210;
    v101 = sub_29D5B40DC();
    v102 = swift_allocObject();
    v103 = MEMORY[0x29EDCA390];
    *(v102 + 16) = v101;
    *(v102 + 24) = v103;
    *(v102 + 32) = v99;
    v104 = v212;
    *(v102 + 40) = v213;
    *(v102 + 56) = v104;
    *(v102 + 72) = v209;
    *(v102 + 88) = v97;
    *(v102 + 96) = v100;
    sub_29D57657C(0, 0, v57, &unk_29D5BAE18, v102);

    return (*(v42 + 8))(v211, v95);
  }

  if (v44 == *MEMORY[0x29EDC3E78])
  {
    (*(v42 + 96))(v37, v217);
    v105 = *v37;
    v106 = v201;
    sub_29D5B36CC();
    v107 = v105;
    v108 = sub_29D5B370C();
    v109 = sub_29D5B427C();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v219 = v111;
      *v110 = 136446466;
      v112 = sub_29D578614();
      v114 = sub_29D501890(v112, v113, &v219);

      *(v110 + 4) = v114;
      *(v110 + 12) = 2082;
      v218 = v105;
      v115 = v105;
      sub_29D4B3AF4();
      v116 = sub_29D5B3E9C();
      v118 = sub_29D501890(v116, v117, &v219);

      *(v110 + 14) = v118;
      _os_log_impl(&dword_29D48C000, v108, v109, "[%{public}s]: unable to complete onboarding: %{public}s", v110, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v111, -1, -1);
      MEMORY[0x29ED5FB80](v110, -1, -1);
    }

    (*(v203 + 8))(v106, v202);
    return (*(v42 + 8))(v211, v217);
  }

  if (v44 == *MEMORY[0x29EDC3E70])
  {
    (*(v42 + 96))(v37, v217);

    sub_29D4C8690();
    v120 = v206;
    v121 = &v37[*(v119 + 48)];
    v122 = v198;
    v123 = v205;
    (*(v206 + 32))(v198, v121, v205);
    v124 = v199;
    sub_29D5B36CC();
    v125 = v197;
    (*(v120 + 16))(v197, v122, v123);
    v126 = sub_29D5B370C();
    v127 = sub_29D5B427C();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v219 = v129;
      *v128 = 136446466;
      v130 = sub_29D578614();
      v132 = v120;
      v133 = sub_29D501890(v130, v131, &v219);

      *(v128 + 4) = v133;
      *(v128 + 12) = 2082;
      v134 = sub_29D5B0E8C();
      v136 = v135;
      v137 = *(v132 + 8);
      v137(v125, v123);
      v138 = sub_29D501890(v134, v136, &v219);

      *(v128 + 14) = v138;
      _os_log_impl(&dword_29D48C000, v126, v127, "[%{public}s]: received successful login redirect for login session with state %{public}s", v128, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v129, -1, -1);
      MEMORY[0x29ED5FB80](v128, -1, -1);

      (*(v203 + 8))(v199, v202);
      v137(v198, v123);
    }

    else
    {

      v155 = *(v120 + 8);
      v155(v125, v123);
      (*(v203 + 8))(v124, v202);
      v155(v122, v123);
    }

    return (*(v42 + 8))(v211, v217);
  }

  v139 = v206;
  if (v44 == *MEMORY[0x29EDC3E58])
  {
    (*(v42 + 96))(v37, v217);
    v140 = *v37;
    v141 = v196;
    sub_29D5B36CC();
    v142 = v140;
    v143 = sub_29D5B370C();
    v144 = sub_29D5B427C();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&v219 = v146;
      *v145 = 136446466;
      v147 = sub_29D578614();
      v149 = sub_29D501890(v147, v148, &v219);

      *(v145 + 4) = v149;
      *(v145 + 12) = 2082;
      v218 = v140;
      v150 = v140;
      sub_29D4B3AF4();
      v151 = sub_29D5B3E9C();
      v153 = sub_29D501890(v151, v152, &v219);

      *(v145 + 14) = v153;
      _os_log_impl(&dword_29D48C000, v143, v144, "[%{public}s]: received login redirect error: %{public}s", v145, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v146, -1, -1);
      MEMORY[0x29ED5FB80](v145, -1, -1);
    }

    (*(v203 + 8))(v141, v202);
    (*(v42 + 8))(v211, v217);
    sub_29D4C85DC();
    return sub_29D57BFB0(&v37[*(v154 + 48)], &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  }

  else
  {
    if (v44 != *MEMORY[0x29EDC3E88])
    {
      if (v44 == *MEMORY[0x29EDC3E80])
      {
        v164 = v42;
        v165 = v217;
        (*(v42 + 96))(v37, v217);
        v166 = v194;
        v167 = v192;
        v168 = v195;
        (*(v194 + 32))(v192, v37, v195);
        sub_29D57ADF0(v167, v210, MEMORY[0x29EDC41E0]);

        (*(v166 + 8))(v167, v168);
      }

      else
      {
        v169 = v210;
        v170 = v195;
        if (v44 != *MEMORY[0x29EDC3E90])
        {
          if (v44 != *MEMORY[0x29EDC3E48] && v44 != *MEMORY[0x29EDC3E98])
          {
            (*(v42 + 8))(v37, v217);
          }

          v173 = v191;
          sub_29D5B36CC();
          v174 = v194;
          v175 = v190;
          (*(v194 + 16))(v190, v189, v170);
          v176 = sub_29D5B370C();
          v177 = sub_29D5B428C();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            *&v219 = v179;
            *v178 = 136446466;
            v180 = sub_29D578614();
            v182 = sub_29D501890(v180, v181, &v219);

            *(v178 + 4) = v182;
            *(v178 + 12) = 2082;
            sub_29D57C48C(&qword_2A17A4F30, MEMORY[0x29EDB9B18]);
            v183 = sub_29D5B4C4C();
            v185 = v184;
            (*(v174 + 8))(v175, v170);
            v186 = sub_29D501890(v183, v185, &v219);

            *(v178 + 14) = v186;
            _os_log_impl(&dword_29D48C000, v176, v177, "[%{public}s]: unsupported URL passed into HealthRecordsPluginAppDelegate: %{public}s", v178, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED5FB80](v179, -1, -1);
            MEMORY[0x29ED5FB80](v178, -1, -1);

            (*(v203 + 8))(v191, v202);
          }

          else
          {

            (*(v174 + 8))(v175, v170);
            (*(v203 + 8))(v173, v202);
          }

          return (*(v42 + 8))(v211, v217);
        }

        v164 = v42;
        v165 = v217;
        (*(v42 + 96))(v37, v217);
        v171 = v194;
        v172 = v192;
        (*(v194 + 32))(v192, v37, v170);
        sub_29D57ADF0(v172, v169, MEMORY[0x29EDC41E8]);

        (*(v171 + 8))(v172, v170);
      }

      return (*(v164 + 8))(v211, v165);
    }

    (*(v42 + 96))(v37, v217);
    v156 = v193;
    sub_29D5B36CC();
    v157 = sub_29D5B370C();
    v158 = sub_29D5B427C();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v219 = v160;
      *v159 = 136446210;
      v161 = sub_29D578614();
      v163 = sub_29D501890(v161, v162, &v219);

      *(v159 + 4) = v163;
      v139 = v206;
      _os_log_impl(&dword_29D48C000, v157, v158, "[%{public}s]: received access-not-granted login redirect", v159, 0xCu);
      sub_29D48F668(v160);
      MEMORY[0x29ED5FB80](v160, -1, -1);
      MEMORY[0x29ED5FB80](v159, -1, -1);
    }

    (*(v203 + 8))(v156, v202);
    (*(v42 + 8))(v211, v217);
    return (*(v139 + 8))(v37, v205);
  }
}

uint64_t sub_29D57657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D57B488(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v25 - v10;
  sub_29D545CA8(a3, v25 - v10);
  v12 = sub_29D5B410C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_29D57BFB0(v11, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29D5B40FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29D5B40CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29D5B3EAC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_29D57BFB0(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D57BFB0(a3, &unk_2A1A19450, MEMORY[0x29EDCA398]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_29D5768B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_29D5B1BCC() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_29D57C48C(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
  v7 = 0;
  while ((sub_29D5B3E0C() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_29D5769D4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_29D5B485C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x29ED5EF30](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_29D48F51C(0, &qword_2A1A19660);
    v8 = sub_29D5B465C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_29D576AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_29D5B40EC();
  v8[3] = sub_29D5B40DC();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_29D576BEC;

  return sub_29D576D28(a5, a6, a7, a8, v16, v17, v18, v19);
}

uint64_t sub_29D576BEC()
{

  v1 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D57C4E8, v1, v0);
}

uint64_t sub_29D576D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v8[50] = a8;
  v8[51] = ObjectType;
  v8[48] = a6;
  v8[49] = a7;
  v8[46] = a4;
  v8[47] = a5;
  v8[44] = a2;
  v8[45] = a3;
  v8[43] = a1;
  v18 = sub_29D5B371C();
  v8[52] = v18;
  v8[53] = *(v18 - 8);
  v8[54] = swift_task_alloc();
  v8[55] = sub_29D5B40EC();
  v8[56] = sub_29D5B40DC();
  v8[57] = sub_29D5B40DC();
  v20 = sub_29D5B40CC();
  v8[58] = v20;
  v8[59] = v19;

  return MEMORY[0x2A1C73D48](sub_29D576E84, v20, v19);
}

uint64_t sub_29D576E84()
{
  v1 = v0[50];
  v0[60] = sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v0[61] = [v3 clinicalAccountStore];
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_29D576F68;

  return sub_29D4FE294(v1);
}

uint64_t sub_29D576F68(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  *(*v1 + 504) = a1;

  v4 = *(v2 + 472);
  v5 = *(v2 + 464);

  return MEMORY[0x2A1C73D48](sub_29D5770B0, v5, v4);
}

uint64_t sub_29D5770B0()
{
  v1 = *(v0 + 504);

  if (v1)
  {
    v2 = sub_29D5B40CC();
    v4 = v3;
    v5 = sub_29D5771A8;
  }

  else
  {
    v6 = *(v0 + 400);
    sub_29D5B19AC();
    v7 = v6;
    v8 = sub_29D5B199C();
    v9 = *(v0 + 400);
    if (v8)
    {
      v10 = v8;
      [*(v0 + 400) presentViewController:v8 animated:1 completion:0];
    }

    v2 = sub_29D5B40CC();
    v4 = v11;
    v5 = sub_29D577444;
  }

  return MEMORY[0x2A1C73D48](v5, v2, v4);
}

uint64_t sub_29D5771A8()
{
  v1 = v0[48];
  v22 = v0[47];
  v23 = v0[49];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v5 = v0[44];

  v6 = MEMORY[0x29EDC9E90];
  sub_29D57B488(0, &qword_2A17A4F38, sub_29D57B4EC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B8060;
  *(inited + 32) = sub_29D5B3E5C();
  v8 = MEMORY[0x29EDC99B0];
  *(inited + 72) = MEMORY[0x29EDC99B0];
  *(inited + 40) = v9;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_29D5B3E5C();
  *(inited + 88) = v10;
  *(inited + 120) = v8;
  *(inited + 96) = v3;
  *(inited + 104) = v2;
  *(inited + 128) = sub_29D5B3E5C();
  *(inited + 136) = v11;
  *(inited + 168) = v8;
  v12 = v22;
  if (!v1)
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v1)
  {
    v13 = v1;
  }

  *(inited + 144) = v12;
  *(inited + 152) = v13;
  *(inited + 176) = sub_29D5B3E5C();
  *(inited + 184) = v14;
  *(inited + 216) = MEMORY[0x29EDC9CA8];
  *(inited + 192) = v23;

  v15 = sub_29D57AA8C(inited);
  swift_setDeallocating();
  sub_29D57B4EC();
  swift_arrayDestroy();
  sub_29D57B488(0, &qword_2A17A4F48, sub_29D57B550, v6);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_29D5B62A0;
  *(v16 + 32) = sub_29D5B3E5C();
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  sub_29D57ABCC(v16);
  swift_setDeallocating();
  sub_29D57BEC0(v16 + 32, sub_29D57B550);
  v18 = sub_29D5B1C8C();
  v19 = sub_29D5B1C4C();

  sub_29D5B195C();

  v20 = v0[1];

  return v20();
}

uint64_t sub_29D577444()
{
  v23 = v0;

  sub_29D5B36CC();

  v1 = sub_29D5B370C();
  v2 = sub_29D5B427C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[53];
    v20 = v0[52];
    v21 = v0[54];
    v4 = v0[43];
    v5 = v0[44];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315394;
    v8 = sub_29D5B4DFC();
    v10 = sub_29D501890(v8, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[41] = v4;
    v0[42] = v5;

    sub_29D5B4CAC();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v12 = sub_29D5B3E7C();
    v14 = sub_29D501890(v12, v13, &v22);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_29D48C000, v1, v2, "[%s]: called to handle onboarding to gateway %s but CHR isn't supported on this device", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v7, -1, -1);
    MEMORY[0x29ED5FB80](v6, -1, -1);

    (*(v3 + 8))(v21, v20);
  }

  else
  {
    v16 = v0[53];
    v15 = v0[54];
    v17 = v0[52];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_29D57768C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_29D5B40EC();
  v7[3] = sub_29D5B40DC();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_29D577750;

  return sub_29D57B670(a5, a6, a7);
}

uint64_t sub_29D577750()
{

  v1 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D57788C, v1, v0);
}

uint64_t sub_29D57788C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D5778EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v11;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v8[7] = sub_29D5B40EC();
  v8[8] = sub_29D5B40DC();

  return MEMORY[0x2A1C73D48](sub_29D577978, 0, 0);
}

uint64_t sub_29D577978()
{
  sub_29D5B1CBC();
  v1 = sub_29D5B1C8C();
  v2 = sub_29D5B1C4C();
  v0[9] = v2;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_29D577A40;
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x2A1C65968](v8, v6, v7, v2, v4, v5);
}

uint64_t sub_29D577A40()
{
  v1 = *(*v0 + 72);

  v3 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D577B9C, v3, v2);
}

uint64_t sub_29D577B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D577BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_29D5B40EC();
  v7[3] = sub_29D5B40DC();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_29D576BEC;

  return sub_29D577CD0(a5, a6, a7);
}

uint64_t sub_29D577CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[20] = a3;
  v3[21] = ObjectType;
  v3[18] = a1;
  v3[19] = a2;
  v8 = sub_29D5B371C();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = sub_29D5B40EC();
  v3[26] = sub_29D5B40DC();
  v3[27] = sub_29D5B40DC();
  v10 = sub_29D5B40CC();
  v3[28] = v10;
  v3[29] = v9;

  return MEMORY[0x2A1C73D48](sub_29D577DF4, v10, v9);
}

uint64_t sub_29D577DF4()
{
  v1 = v0[18];
  v0[30] = sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v0[31] = [v3 clinicalAccountStore];
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_29D577ED8;

  return sub_29D4FE294(v1);
}

uint64_t sub_29D577ED8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  *(*v1 + 289) = a1;

  v4 = *(v2 + 232);
  v5 = *(v2 + 224);

  return MEMORY[0x2A1C73D48](sub_29D578020, v5, v4);
}

uint64_t sub_29D578020()
{
  v1 = *(v0 + 289);

  if (v1)
  {
    v2 = sub_29D5B40CC();
    v4 = v3;
    *(v0 + 264) = v2;
    *(v0 + 272) = v3;
    v5 = sub_29D578124;
    v6 = v2;
  }

  else
  {
    v7 = *(v0 + 144);
    sub_29D5B19AC();
    v8 = v7;
    v9 = sub_29D5B199C();
    v10 = *(v0 + 144);
    if (v9)
    {
      v11 = v9;
      [*(v0 + 144) presentViewController:v9 animated:1 completion:0];
    }

    v12 = sub_29D5B40CC();
    v14 = v13;
    v5 = sub_29D578494;
    v6 = v12;
    v4 = v14;
  }

  return MEMORY[0x2A1C73D48](v5, v6, v4);
}

uint64_t sub_29D578124()
{
  v1 = sub_29D5B1C8C();
  v2 = sub_29D5B1C4C();

  v3 = [v2 clinicalAccountStore];
  v0[35] = v3;

  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_29D578274;
  v4 = swift_continuation_init();
  sub_29D57C190();
  v0[17] = v5;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D579E58;
  v0[13] = &unk_2A242A890;
  v0[14] = v4;
  [v3 hasGatewayBackedHealthRecordsAccountWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D578274()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x2A1C73D48](sub_29D57837C, v2, v1);
}

uint64_t sub_29D57837C()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 288);

  v3 = sub_29D5B433C();
  sub_29D5B21EC();
  v4 = sub_29D5B21DC();
  v5 = sub_29D5B1C8C();
  v6 = sub_29D5B1C4C();

  if (v2 == 1)
  {
    sub_29D5B217C();
  }

  else
  {
    sub_29D5B21AC();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D578494()
{
  v15 = v0;

  sub_29D5B36CC();
  v1 = sub_29D5B370C();
  v2 = sub_29D5B427C();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_29D5B4DFC();
    v11 = sub_29D501890(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29D48C000, v1, v2, "[%s]: called to handle onboarding to provider search but CHR isn't supported on this device", v7, 0xCu);
    sub_29D48F668(v8);
    MEMORY[0x29ED5FB80](v8, -1, -1);
    MEMORY[0x29ED5FB80](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v12 = v0[1];

  return v12();
}

void sub_29D578644(uint64_t a1, void *a2, void *a3)
{
  v61 = a2;
  v60 = a3;
  v4 = sub_29D5B371C();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v55 - v10;
  v12 = objc_opt_self();
  v59 = a1;
  v13 = sub_29D5B0E9C();
  v55 = [v12 predicateForObjectWithUUID_];

  v58 = *(v7 + 16);
  v56 = v6;
  v58(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v64 = v7;
  (*(v7 + 32))(v19 + v14, v11, v6);
  v21 = v60;
  v20 = v61;
  *(v19 + v15) = v60;
  *(v19 + v16) = v20;
  v22 = v62;
  *(v19 + v17) = v62;
  v23 = v55;
  *(v19 + v18) = v55;
  v24 = v57;
  v25 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
  aBlock[4] = sub_29D57BDE0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D579EB4;
  aBlock[3] = &unk_2A242A7C8;
  v26 = _Block_copy(aBlock);
  v27 = v23;
  v28 = v21;
  v29 = v20;
  v30 = v22;
  v31 = v27;
  v32 = [v25 initWithSampleType:v29 predicate:v27 limit:1 sortDescriptors:0 resultsHandler:v26];
  v33 = v26;
  v34 = v63;
  _Block_release(v33);

  sub_29D5B36CC();
  v35 = v56;
  (v58)(v34, v59);
  v36 = v29;
  v37 = v24;
  v38 = sub_29D5B370C();
  v39 = sub_29D5B426C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v62 = v31;
    v41 = v40;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61 = v32;
    v44 = v43;
    aBlock[0] = v43;
    *v41 = 136315394;
    v45 = sub_29D5B0E8C();
    v46 = v34;
    v48 = v47;
    (*(v64 + 8))(v46, v35);
    v49 = sub_29D501890(v45, v48, aBlock);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v36;
    *v42 = v36;
    v50 = v36;
    _os_log_impl(&dword_29D48C000, v38, v39, "_showMedicalRecord querying for %s as sampleType %@", v41, 0x16u);
    sub_29D57BEC0(v42, sub_29D4A6FFC);
    MEMORY[0x29ED5FB80](v42, -1, -1);
    sub_29D48F668(v44);
    v51 = v44;
    v32 = v61;
    MEMORY[0x29ED5FB80](v51, -1, -1);
    v31 = v62;
    MEMORY[0x29ED5FB80](v41, -1, -1);
  }

  else
  {

    (*(v64 + 8))(v34, v35);
  }

  (*(v65 + 8))(v37, v66);
  sub_29D5B1CBC();
  v52 = sub_29D5B1C8C();
  v53 = sub_29D5B1C4C();

  v54 = [v53 healthStore];
  [v54 executeQuery_];
}

void sub_29D578B80(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v92 = a2;
  v93 = a8;
  v89 = a7;
  v90 = a6;
  v91 = a5;
  v96 = a4;
  v86 = sub_29D5B3C8C();
  v88 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B3CAC();
  v87 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B0EDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v83 - v19;
  v21 = sub_29D5B371C();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  MEMORY[0x2A1C7C4A8](v22);
  if (a3)
  {
    v25 = &v83 - v23;
    v26 = a3;
    v27 = a3;
    sub_29D5B36CC();
    (*(v15 + 16))(v20, v96, v14);
    v28 = a3;
    v29 = sub_29D5B370C();
    v30 = sub_29D5B427C();

    v31 = v14;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      aBlock[0] = v96;
      *v32 = 136315394;
      sub_29D57C48C(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
      v33 = sub_29D5B4C4C();
      v35 = v34;
      (*(v15 + 8))(v20, v31);
      v36 = sub_29D501890(v33, v35, aBlock);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v97 = v26;
      v37 = v26;
      sub_29D4B3AF4();
      v38 = sub_29D5B3E7C();
      v40 = sub_29D501890(v38, v39, aBlock);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_29D48C000, v29, v30, "_showMedicalRecord was unable to fetch records, will not show medical record %s, error: %s", v32, 0x16u);
      v41 = v96;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v41, -1, -1);
      MEMORY[0x29ED5FB80](v32, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    v59 = *(v94 + 8);
    v60 = v25;
LABEL_14:
    v59(v60, v95);
    return;
  }

  v42 = v15;
  v43 = v14;
  v44 = v93;
  v84 = v13;
  v85 = v11;
  v45 = v24;
  v46 = v91;
  if (v92)
  {
    v47 = sub_29D5795E8(v92);
    if (v47)
    {
      v48 = v47 & 0xFFFFFFFFFFFFFF8;
      if (v47 >> 62)
      {
        v92 = v47;
        v61 = sub_29D5B485C();
        v47 = v92;
        if (v61)
        {
LABEL_8:
          if ((v47 & 0xC000000000000001) == 0)
          {
            if (!*(v48 + 16))
            {
              __break(1u);
              return;
            }

            v49 = v42;
            v50 = *(v47 + 32);
LABEL_11:

            sub_29D48F51C(0, &qword_2A1A1A420);
            v95 = sub_29D5B43FC();
            (*(v49 + 16))(v18, v96, v43);
            v51 = (*(v49 + 80) + 24) & ~*(v49 + 80);
            v52 = swift_allocObject();
            *(v52 + 16) = v50;
            (*(v49 + 32))(v52 + v51, v18, v43);
            *(v52 + ((v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
            aBlock[4] = sub_29D57BF20;
            aBlock[5] = v52;
            aBlock[0] = MEMORY[0x29EDCA5F8];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_29D49ACEC;
            aBlock[3] = &unk_2A242A818;
            v53 = _Block_copy(aBlock);
            v54 = v50;
            v55 = v46;

            v56 = v84;
            sub_29D5B3C9C();
            aBlock[0] = MEMORY[0x29EDCA190];
            sub_29D57C48C(&qword_2A1A19700, MEMORY[0x29EDCA248]);
            sub_29D57B488(0, &qword_2A1A196B0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
            sub_29D55D990();
            v57 = v86;
            sub_29D5B47CC();
            v58 = v95;
            MEMORY[0x29ED5E9E0](0, v56, v10, v53);
            _Block_release(v53);

            (*(v88 + 8))(v10, v57);
            (*(v87 + 8))(v56, v85);
            return;
          }

LABEL_50:
          v50 = MEMORY[0x29ED5EF30](0);
          v49 = v42;
          goto LABEL_11;
        }
      }

      else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }
  }

  v10 = [objc_opt_self() medicalRecordTypes];
  sub_29D48F51C(0, &qword_2A1A19660);
  v43 = sub_29D5B402C();

  if (v43 >> 62)
  {
    v62 = sub_29D5B485C();
    v63 = v90;
    if (!v62)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v62 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v90;
    if (!v62)
    {
      goto LABEL_30;
    }
  }

  v64 = __OFSUB__(v62, 1);
  v65 = v62 - 1;
  if (v64)
  {
    __break(1u);
  }

  else if ((v43 & 0xC000000000000001) == 0)
  {
    if ((v65 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v65 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v43 + 8 * v65 + 32);
      goto LABEL_25;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v66 = MEMORY[0x29ED5EF30](v65, v43);
LABEL_25:
  v10 = v66;
  v18 = v63;
  v67 = sub_29D5B465C();

  if (v67)
  {

    v68 = v45;
    sub_29D5B36CC();
    v69 = v44;
    v70 = sub_29D5B370C();
    v71 = sub_29D5B427C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 136315138;
      v74 = v69;
      v75 = [v74 description];
      v76 = sub_29D5B3E5C();
      v78 = v77;

      v79 = sub_29D501890(v76, v78, aBlock);

      *(v72 + 4) = v79;
      _os_log_impl(&dword_29D48C000, v70, v71, "_showMedicalRecord did not find a record for %s", v72, 0xCu);
      sub_29D48F668(v73);
      MEMORY[0x29ED5FB80](v73, -1, -1);
      MEMORY[0x29ED5FB80](v72, -1, -1);
    }

    v59 = *(v94 + 8);
    v60 = v68;
    goto LABEL_14;
  }

LABEL_30:
  v80 = sub_29D5769D4(v63, v43);
  if (v81)
  {

    return;
  }

  v64 = __OFADD__(v80, 1);
  v65 = v80 + 1;
  if (v64)
  {
    goto LABEL_46;
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v95 = MEMORY[0x29ED5EF30](v65, v43);
    v42 = v96;
    goto LABEL_39;
  }

  v42 = v96;
  if ((v65 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v65 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v95 = *(v43 + 8 * v65 + 32);
LABEL_39:

  sub_29D578644(v42, v95, v46);
  v82 = v95;
}

uint64_t sub_29D5795E8(unint64_t a1)
{
  v8 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_29D5B49AC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x29ED5EF30](j, a1);
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

      sub_29D5B498C();
      sub_29D5B49BC();
      sub_29D5B49CC();
      sub_29D5B499C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29D5B485C();
    sub_29D5B49AC();
  }

  return v8;
}

uint64_t sub_29D579750(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v72 = &v66 - v11;
  v12 = sub_29D5B371C();
  v74 = *(v12 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v73 = &v66 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v66 - v18;
  [a1 recordCategoryType];
  v20 = sub_29D5B454C();
  if (!v20)
  {
    sub_29D5B36CC();
    (*(v7 + 16))(v10, a2, v6);
    v49 = v6;
    v50 = sub_29D5B370C();
    v51 = sub_29D5B427C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70 = v12;
      v54 = v53;
      v75 = v53;
      *v52 = 136315138;
      v55 = sub_29D5B0E8C();
      v57 = v56;
      (*(v7 + 8))(v10, v49);
      v58 = sub_29D501890(v55, v57, &v75);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_29D48C000, v50, v51, "_showMedicalRecord is unable to present the detail room for %s, unable to determine medical record category", v52, 0xCu);
      sub_29D48F668(v54);
      MEMORY[0x29ED5FB80](v54, -1, -1);
      MEMORY[0x29ED5FB80](v52, -1, -1);

      return (*(v74 + 8))(v15, v70);
    }

    (*(v7 + 8))(v10, v6);
    v64 = *(v74 + 8);
    v65 = v15;
    return v64(v65, v12);
  }

  v21 = v20;
  v69 = v6;
  sub_29D5B21EC();
  v22 = sub_29D5B21DC();
  sub_29D5B1CBC();
  v23 = sub_29D5B1C8C();
  v24 = sub_29D5B1C5C();

  v71 = v21;
  v25 = v21;
  v26 = v24;
  v27 = [v22 makeViewControllerForCategory:v25 usingProfile:v24];
  v28 = [a3 navigationController];
  if (!v28)
  {
    v59 = v27;
    sub_29D5B36CC();
    v60 = sub_29D5B370C();
    v61 = sub_29D5B427C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v12;
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_29D48C000, v60, v61, "_showMedicalRecord's presenting view controller has no navigation controller", v63, 2u);
      MEMORY[0x29ED5FB80](v63, -1, -1);

      return (*(v74 + 8))(v19, v62);
    }

    v64 = *(v74 + 8);
    v65 = v19;
    return v64(v65, v12);
  }

  v29 = v28;
  v70 = v12;
  v68 = v27;
  [v28 pushViewController:v27 animated:0];
  v30 = [a1 primaryConcept];
  v31 = [v30 groupByConcept];

  LOBYTE(v30) = [v31 isQualifiedForConceptRoom];
  if (v30)
  {
    v32 = sub_29D5B21CC();
    [v29 pushViewController:v32 animated:0];
  }

  v33 = [v29 topViewController];
  if (!v33)
  {
    v33 = v29;
  }

  v34 = v26;
  sub_29D5B216C();

  v35 = v73;
  sub_29D5B36CC();
  v36 = v72;
  v37 = v69;
  (*(v7 + 16))(v72, a2, v69);
  v38 = sub_29D5B370C();
  v39 = sub_29D5B429C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v36;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67 = v22;
    v43 = v42;
    v75 = v42;
    *v41 = 136315138;
    v44 = sub_29D5B0E8C();
    v66 = v34;
    v46 = v45;
    (*(v7 + 8))(v40, v37);
    v47 = sub_29D501890(v44, v46, &v75);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_29D48C000, v38, v39, "_showMedicalRecord presenting detail room for %s", v41, 0xCu);
    sub_29D48F668(v43);
    MEMORY[0x29ED5FB80](v43, -1, -1);
    MEMORY[0x29ED5FB80](v41, -1, -1);

    return (*(v74 + 8))(v73, v70);
  }

  else
  {

    (*(v7 + 8))(v36, v37);
    return (*(v74 + 8))(v35, v70);
  }
}

uint64_t sub_29D579E58(uint64_t a1, char a2)
{
  **(*(*sub_29D499EC0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x2A1C73CD0]();
}

uint64_t sub_29D579EB4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29D48F51C(0, &qword_2A1A16280);
    v5 = sub_29D5B402C();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_29D579F6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29D57A064;

  return v6(a1);
}

uint64_t sub_29D57A064()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_29D57A24C(uint64_t a1)
{
  v2 = sub_29D5B48AC();

  return sub_29D57A46C(a1, v2);
}

unint64_t sub_29D57A290(uint64_t a1, uint64_t a2)
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v4 = sub_29D5B4D9C();

  return sub_29D57A534(a1, a2, v4);
}

unint64_t sub_29D57A308(uint64_t a1)
{
  sub_29D5B0EDC();
  sub_29D57C48C(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  v2 = sub_29D5B3D8C();

  return sub_29D57A5EC(a1, v2);
}

unint64_t sub_29D57A3A0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_29D48F51C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_29D5B465C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29D57A46C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29D4BBDE0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED5EE90](v9, a1);
      sub_29D4A73CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D57A534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29D5B4C7C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29D57A5EC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_29D5B0EDC();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_29D57C48C(&qword_2A17A4848, MEMORY[0x29EDB9C08]);
      v15 = sub_29D5B3E0C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_29D57A7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D4A6960();
    v3 = sub_29D5B4AAC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29D57A1AC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D57A898(uint64_t a1)
{
  sub_29D57C2A4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29D57C314();
    v8 = sub_29D5B4AAC();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29D57C3C0(v10, v6, sub_29D57C2A4);
      result = sub_29D57A308(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29D5B0EDC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for AccountNewRecordsData(0);
      result = sub_29D57C428(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D57AA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D57C244(0, &qword_2A17A4F68, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9E70]);
    v3 = sub_29D5B4AAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_29D57C3C0(v4, &v13, sub_29D57B4EC);
      v5 = v13;
      v6 = v14;
      result = sub_29D57A290(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29D4C97AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D57ABCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D57B5E0();
    v3 = sub_29D5B4AAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_29D57A290(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D57ACC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D57C244(0, &qword_2A17A3DB8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E70]);
    v3 = sub_29D5B4AAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_29D57A290(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D57ADF0(uint64_t a1, void *a2, unsigned int *a3)
{
  v6 = sub_29D5B249C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v19 - v11;
  v13 = sub_29D5B0D5C();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  (*(v7 + 104))(v12, *a3, v6);
  sub_29D5B1CBC();
  v14 = sub_29D5B1C8C();
  v15 = sub_29D5B1C4C();

  v16 = [v15 healthStore];
  (*(v7 + 16))(v10, v12, v6);
  sub_29D5B24BC();
  swift_allocObject();
  sub_29D5B24AC();
  *(swift_allocObject() + 16) = a2;
  v17 = a2;
  sub_29D5B248C();

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_29D57B014(uint64_t a1)
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
  v10[1] = sub_29D57C4D8;

  return sub_29D577BFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29D57B0E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D5B0EDC() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29D57C4D8;

  return sub_29D5778EC(a1, v8, v9, v11, (v1 + 5), v1 + v6, v10, v12);
}

uint64_t sub_29D57B244(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D5B1D6C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29D4E7B8C;

  return sub_29D57768C(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

uint64_t sub_29D57B384(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D57C4D8;

  return sub_29D576AE4(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_29D57B488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D57B4EC()
{
  if (!qword_2A17A4F40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4F40);
    }
  }
}

void sub_29D57B550()
{
  if (!qword_2A17A4F50)
  {
    sub_29D57C244(255, &qword_2A17A4F58, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4F50);
    }
  }
}

void sub_29D57B5E0()
{
  if (!qword_2A17A4F60)
  {
    sub_29D57C244(255, &qword_2A17A4F58, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4F60);
    }
  }
}

uint64_t sub_29D57B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_29D5B251C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_29D5B1BCC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_29D5B1D6C();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = sub_29D5B40EC();
  v3[15] = sub_29D5B40DC();
  v3[16] = sub_29D5B40DC();
  v8 = sub_29D5B40CC();
  v3[17] = v8;
  v3[18] = v7;

  return MEMORY[0x2A1C73D48](sub_29D57B830, v8, v7);
}

uint64_t sub_29D57B830()
{
  v1 = v0[3];
  sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = sub_29D5B1C4C();

  v0[19] = [v3 clinicalAccountStore];
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_29D57B910;

  return sub_29D4FE294(v1);
}

uint64_t sub_29D57B910(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 168) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x2A1C73D48](sub_29D57BA58, v5, v4);
}

uint64_t sub_29D57BA58()
{
  v1 = *(v0 + 168);

  if (v1)
  {
    v2 = sub_29D5B40CC();
    v4 = v3;
    v5 = sub_29D57BC08;
  }

  else
  {
    v6 = *(v0 + 24);
    sub_29D5B19AC();
    v7 = v6;
    v8 = sub_29D5B199C();
    v9 = *(v0 + 24);
    if (v8)
    {
      v10 = v8;
      [*(v0 + 24) presentViewController:v8 animated:1 completion:0];

      v2 = sub_29D5B40CC();
      v4 = v11;
      v5 = sub_29D57BB88;
    }

    else
    {

      v2 = sub_29D5B40CC();
      v4 = v12;
      v5 = sub_29D57C4DC;
    }
  }

  return MEMORY[0x2A1C73D48](v5, v2, v4);
}

uint64_t sub_29D57BB88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D57BC08()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[2];

  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x29EDC4068])
  {
    sub_29D5B190C();
  }

  else
  {
    v6 = v0[12];
    v7 = v0[10];
    v15 = v0[11];
    v16 = v0[13];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[5];
    (v5)(v7, v0[2]);
    (*(v8 + 104))(v7, *MEMORY[0x29EDC3F80], v9);
    (*(v10 + 104))(v11, *MEMORY[0x29EDC41F8], v12);
    sub_29D5B191C();
    (*(v10 + 8))(v11, v12);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v16, v15);
  }

  v13 = v0[1];

  return v13();
}

void sub_29D57BDE0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_29D5B0EDC() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v9);
  v13 = *(v3 + v10);
  v14 = *(v3 + v11);
  v15 = *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D578B80(a1, a2, a3, v3 + v8, v12, v13, v14, v15);
}

uint64_t sub_29D57BEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D57BF20()
{
  v1 = *(sub_29D5B0EDC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D579750(v3, v0 + v2, v4);
}

uint64_t sub_29D57BFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D57B488(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D57C020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D57C4D8;

  return sub_29D579F6C(a1, v4);
}

uint64_t sub_29D57C0D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D4E7B8C;

  return sub_29D579F6C(a1, v4);
}

void sub_29D57C190()
{
  if (!qword_2A17A4F70)
  {
    v0 = sub_29D5B411C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4F70);
    }
  }
}

void sub_29D57C244(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x29EDC99B0], a3, MEMORY[0x29EDC99C0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D57C2A4()
{
  if (!qword_2A1A19398)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A19398);
    }
  }
}

void sub_29D57C314()
{
  if (!qword_2A17A4F78)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D57C48C(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4F78);
    }
  }
}

uint64_t sub_29D57C3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D57C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountNewRecordsData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D57C48C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29D57C4EC()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_2A17ABF98 = result;
  return result;
}

void sub_29D57C558(uint64_t a1, id *a2, uint64_t a3, uint64_t *a4)
{
  sub_29D48F51C(0, &unk_2A1A19440);
  v6 = *a2;
  v7 = sub_29D5B458C();

  *a4 = v7;
}

id sub_29D57C644(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setNumberOfLines_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setLineBreakMode_];
    [v5 setAdjustsFontForContentSizeCategory_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_29D57C710(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_29D5B1DBC();
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v3 + v8);
  if (v9)
  {
    v10 = *(v3 + v8);
  }

  else
  {
    *v7 = 0;
    (*(v5 + 104))(v7, *MEMORY[0x29EDC40C8]);
    v11 = objc_allocWithZone(sub_29D5B1DEC());
    v12 = sub_29D5B1DCC();
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = *(v3 + v8);
    *(v3 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

id sub_29D57C84C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B40]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

BOOL sub_29D57C8BC()
{
  v1 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout;
  v2 = v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout];
  if (v2 != 2)
  {
    return v2 & 1;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = sub_29D5B44BC();

  result = (v5 & 1) == 0;
  v0[v1] = result;
  return result;
}

uint64_t sub_29D57C960()
{
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints))
  {
    v1 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints);
  }

  else
  {
    v1 = MEMORY[0x29EDCA190];
    *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints) = MEMORY[0x29EDCA190];
  }

  return v1;
}

id sub_29D57C9A8()
{
  v1 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont);
  }

  else
  {
    v4 = [objc_opt_self() hk:36.0 roundedSystemFontWithSize:*MEMORY[0x29EDC76F0] weight:?];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D57CA38()
{
  v1 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView);
  }

  else
  {
    v4 = sub_29D57CA9C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D57CA9C(uint64_t a1)
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel;
  swift_beginAccess();
  sub_29D5697AC(a1 + v9, v8);
  v10 = sub_29D57F820(v8);
  sub_29D52A588(v8);
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

  v12 = v11;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setMaximumContentSizeCategory_];

  sub_29D5697AC(a1 + v9, v8);
  v13 = sub_29D5B1D6C();
  (*(*(v13 - 8) + 16))(v5, v8, v13);
  (*(v3 + 104))(v5, *MEMORY[0x29EDC3F80], v2);
  v14 = sub_29D5B1B9C();
  (*(v3 + 8))(v5, v2);
  sub_29D52A588(v8);
  [v12 setTintColor_];

  return v12;
}

char *sub_29D57CCE8(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] = 0;
  v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout] = 2;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont] = 0;
  *&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView] = 0;
  sub_29D5697AC(a1, &v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel]);
  sub_29D5B1CBC();
  v6 = sub_29D5B1C8C();
  v7 = sub_29D5B1C9C();

  *&v3[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_profile] = v7;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemView();
  v8 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D57F4D4();
  v9 = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
  v10 = sub_29D57C608();
  [v10 setFont_];

  v11 = sub_29D57C638();
  [v11 setFont_];

  v12 = sub_29D57C8BC();
  *&v8[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints] = sub_29D57D91C(v12);

  sub_29D57D1D4(a1);

  sub_29D52A588(a1);
  return v8;
}

void sub_29D57CF38(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConceptDeltaHighlightFeedItemView();
  v17.receiver = v2;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  v8 = [v2 traitCollection];
  if (v8)
  {
    v9 = v8;
    if (a1)
    {
      sub_29D48F51C(0, &qword_2A17A5018);
      v10 = a1;
      v11 = sub_29D5B465C();

      if (v11)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    v12 = [objc_opt_self() _preferredFontForTextStyle_design_weight_];
    v13 = sub_29D57C608();
    [v13 setFont_];

    v14 = sub_29D57C638();
    [v14 setFont_];

    v15 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel;
    swift_beginAccess();
    sub_29D5697AC(v2 + v15, v6);
    sub_29D57D1D4(v6);
    sub_29D52A588(v6);
    sub_29D57D810();
    return;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

void sub_29D57D1D4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ConceptDeltaHighlightFeedItemData();
  sub_29D57FCCC();
  v4 = sub_29D5B3CEC();
  v5 = [v4 chartableCodedQuantitySet];

  if (v5)
  {
    v6 = [v5 compatibleUnit];

    v7 = [v6 unitString];
    if (!v7)
    {
      sub_29D5B3E5C();
      v7 = sub_29D5B3E1C();
    }

    v8 = [*(v2 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_profile) ucumDisplayConverter];
    v9 = [v8 synonymForUCUMUnitString_];

    v10 = sub_29D5B3E5C();
    v12 = v11;

    v13 = sub_29D5B3CEC();

    sub_29D4A2670(v13, v10, v12, v30);
    if (v30[1])
    {
      v38 = v31;
      v39 = v32;
      v14 = sub_29D5B3CEC();
      sub_29D4A2670(v14, v10, v12, v33);
      if (v33[1])
      {
        v36 = v34;
        v37 = v35;
        v15 = sub_29D57C608();
        v16 = sub_29D5B3E1C();
        [v15 setText_];

        v17 = sub_29D57C5FC();
        if (qword_2A17A3A08 != -1)
        {
          swift_once();
        }

        v18 = qword_2A17ABFA0;
        if (qword_2A17A3A10 != -1)
        {
          swift_once();
        }

        v19 = qword_2A17ABFA8;
        v20 = sub_29D57FDB4();
        v21 = MEMORY[0x29ED5CCF0](v18, v19, &type metadata for ConceptDeltaHighlightRecordViewData, v20);
        [v17 setAttributedText_];

        v22 = sub_29D57C638();
        v23 = sub_29D5B3E1C();
        [v22 setText_];

        v24 = sub_29D57C62C();
        v25 = MEMORY[0x29ED5CCF0](v18, v19, &type metadata for ConceptDeltaHighlightRecordViewData, v20);
        [v24 setAttributedText_];

        v26 = sub_29D57C614();
        sub_29D5B1DDC();

        v27 = sub_29D57C704();
        sub_29D5B1DDC();

        v28 = sub_29D57CA38();
        v29 = sub_29D57F820(a1);
        [v28 setImage_];

        sub_29D57FD34(v33);
      }

      sub_29D57FD34(v30);
    }

    else
    {
    }
  }
}

uint64_t sub_29D57D608()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_29D5B44BC();

  [v1 bounds];
  Width = CGRectGetWidth(v18);
  v6 = sub_29D57CA38();
  [v6 intrinsicContentSize];
  v8 = v7;

  if ((Width - v8 + -24.0) * 0.5 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = (Width - v8 + -24.0) * 0.5;
  }

  v10 = sub_29D57C608();
  sub_29D57D738(v9);
  v12 = v11;

  if (v12 > 2 || (v13 = sub_29D57C638(), sub_29D57D738(v9), v15 = v14, v13, v15 >= 3))
  {
    v16 = 0;
  }

  else
  {
    v16 = v4 ^ 1;
  }

  return v16 & 1;
}

void sub_29D57D738(double a1)
{
  [v1 sizeThatFits_];
  if (v2 > 0.0)
  {
    v3 = v2;
    v4 = [v1 font];
    if (!v4)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 lineHeight];
    v7 = v6;

    v8 = round(v3 / v7);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -9.22337204e18)
    {
      if (v8 < 9.22337204e18)
      {
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

void sub_29D57D810()
{
  v1 = sub_29D57D608();
  if (v1 != sub_29D57C8BC())
  {
    sub_29D57C960();
    sub_29D48F51C(0, &qword_2A17A3F80);
    v2 = sub_29D5B401C();

    [v0 removeConstraints_];

    *&v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints] = sub_29D57E778(v1);

    v3 = objc_opt_self();
    v4 = sub_29D5B401C();

    [v3 activateConstraints_];

    v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout] = v1;
  }
}

uint64_t sub_29D57D91C(char a1)
{
  v2 = v1;
  v148 = objc_opt_self();
  sub_29D48F45C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D5BAE50;
  v4 = sub_29D57C608();
  v5 = [v4 topAnchor];

  v6 = sub_29D57C5F0();
  v7 = [v6 &selRef_setAlpha_];

  v8 = [v5 constraintEqualToAnchor_];
  *(v3 + 32) = v8;
  v9 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel;
  v10 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel] leftAnchor];
  v11 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide;
  v12 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] 0x29F35295ALL];
  v13 = [v10 &selRef:v12 initWithProfileIdentifier:? + 5];

  *(v3 + 40) = v13;
  v147 = v9;
  v14 = [*&v2[v9] rightAnchor];
  v15 = [*&v2[v11] rightAnchor];
  v16 = [v14 &selRef:v15 initWithProfileIdentifier:? + 5];

  *(v3 + 48) = v16;
  v17 = sub_29D57C5FC();
  v18 = [v17 &selRef_setAlpha_];

  v19 = [*&v2[v9] bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];

  *(v3 + 56) = v20;
  v21 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel;
  v22 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel] leftAnchor];
  v23 = [*&v2[v11] leftAnchor];
  v24 = [v22 &selRef:v23 initWithProfileIdentifier:? + 5];

  *(v3 + 64) = v24;
  v146 = v21;
  v25 = [*&v2[v21] rightAnchor];
  v26 = [*&v2[v11] rightAnchor];
  v27 = [v25 &selRef:v26 initWithProfileIdentifier:? + 5];

  *(v3 + 72) = v27;
  v28 = [*&v2[v21] bottomAnchor];
  v29 = sub_29D57C614();
  v30 = sub_29D5B1DAC();

  v31 = [v28 constraintEqualToAnchor:v30 constant:-6.0];
  *(v3 + 80) = v31;
  v32 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView;
  v33 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView] leftAnchor];
  v34 = [*&v2[v11] leftAnchor];
  v35 = [v33 &selRef:v34 initWithProfileIdentifier:? + 5];

  *(v3 + 88) = v35;
  v36 = [*&v2[v32] rightAnchor];
  v37 = [*&v2[v11] rightAnchor];
  v38 = [v36 &selRef:v37 initWithProfileIdentifier:? + 5];

  *(v3 + 96) = v38;
  v39 = [*&v2[v32] bottomAnchor];
  v40 = [*&v2[v11] bottomAnchor];
  v41 = [v39 &selRef:v40 initWithProfileIdentifier:? + 5];

  *(v3 + 104) = v41;
  v42 = sub_29D57C638();
  v43 = [v42 topAnchor];

  v44 = sub_29D57C620();
  v45 = [v44 topAnchor];

  v46 = [v43 &selRef:v45 initWithProfileIdentifier:? + 5];
  *(v3 + 112) = v46;
  v47 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel;
  v48 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel] leftAnchor];
  v49 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide;
  v50 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] leftAnchor];
  v51 = [v48 &selRef:v50 initWithProfileIdentifier:? + 5];

  *(v3 + 120) = v51;
  v145 = v47;
  v52 = [*&v2[v47] rightAnchor];
  v53 = [*&v2[v49] rightAnchor];
  v54 = [v52 &selRef:v53 initWithProfileIdentifier:? + 5];

  *(v3 + 128) = v54;
  v55 = sub_29D57C62C();
  v56 = [v55 topAnchor];

  v57 = [*&v2[v47] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:0.0];

  *(v3 + 136) = v58;
  v59 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel;
  v60 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel] rightAnchor];
  v61 = [*&v2[v49] rightAnchor];
  v62 = [v60 &selRef:v61 initWithProfileIdentifier:? + 5];

  *(v3 + 144) = v62;
  v144 = v59;
  v63 = [*&v2[v59] leftAnchor];
  v64 = [*&v2[v49] leftAnchor];
  v65 = [v63 &selRef:v64 initWithProfileIdentifier:? + 5];

  *(v3 + 152) = v65;
  v66 = [*&v2[v59] bottomAnchor];
  v67 = sub_29D57C704();
  v68 = sub_29D5B1DAC();

  v69 = [v66 constraintEqualToAnchor:v68 constant:-6.0];
  *(v3 + 160) = v69;
  v70 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView;
  v71 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView] leftAnchor];
  v72 = [*&v2[v49] leftAnchor];
  v73 = [v71 &selRef:v72 initWithProfileIdentifier:? + 5];

  *(v3 + 168) = v73;
  v74 = [*&v2[v70] rightAnchor];
  v75 = [*&v2[v49] rightAnchor];
  v76 = [v74 &selRef:v75 initWithProfileIdentifier:? + 5];

  *(v3 + 176) = v76;
  v77 = [*&v2[v70] bottomAnchor];
  v78 = [*&v2[v49] bottomAnchor];
  v79 = [v77 &selRef:v78 initWithProfileIdentifier:? + 5];

  *(v3 + 184) = v79;
  v80 = sub_29D57C840();
  v81 = [v80 leftAnchor];

  v82 = [v2 leftAnchor];
  v83 = [v81 &selRef:v82 initWithProfileIdentifier:? + 5];

  *(v3 + 192) = v83;
  v84 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide;
  v85 = [*&v2[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] topAnchor];
  v86 = [v2 topAnchor];
  v87 = [v85 &selRef:v86 initWithProfileIdentifier:? + 5];

  *(v3 + 200) = v87;
  v88 = [*&v2[v84] rightAnchor];
  v89 = [v2 rightAnchor];
  v90 = [v88 &selRef:v89 initWithProfileIdentifier:? + 5];

  *(v3 + 208) = v90;
  v91 = [*&v2[v84] bottomAnchor];
  v92 = [v2 bottomAnchor];
  v93 = [v91 &selRef:v92 initWithProfileIdentifier:? + 5];

  *(v3 + 216) = v93;
  v94 = [*&v2[v11] topAnchor];
  v95 = [*&v2[v84] topAnchor];
  v96 = [v94 &selRef:v95 initWithProfileIdentifier:? + 5];

  LODWORD(v97) = 1148829696;
  [v96 setPriority_];
  *(v3 + 224) = v96;
  v98 = [*&v2[v11] leadingAnchor];
  v99 = [*&v2[v84] leadingAnchor];
  v100 = [v98 &selRef:v99 initWithProfileIdentifier:? + 5];

  *(v3 + 232) = v100;
  v101 = v2;
  v102 = sub_29D57CA38();
  v103 = [v102 bottomAnchor];

  v104 = [*&v101[v84] bottomAnchor];
  v105 = [v103 constraintLessThanOrEqualToAnchor_];

  *(v3 + 240) = v105;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v106 = sub_29D5B401C();

  [v148 activateConstraints_];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B8F20;
  v108 = *&v101[v146];
  *(inited + 32) = v108;
  v109 = *&v101[v147];
  *(inited + 40) = v109;
  v110 = *&v101[v144];
  *(inited + 48) = v110;
  v111 = *&v101[v145];
  *(inited + 56) = v111;
  v112 = inited & 0xC000000000000001;
  v113 = v108;
  v114 = v109;
  v115 = v110;
  v116 = v111;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v113; ; i = MEMORY[0x29ED5EF30](0, inited))
  {
    v119 = i;
    LODWORD(v118) = 1148846080;
    [i setContentCompressionResistancePriority:1 forAxis:v118];
    LODWORD(v120) = 1148846080;
    [v119 setContentHuggingPriority:1 forAxis:v120];

    if (v112)
    {
      v121 = MEMORY[0x29ED5EF30](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v121 = *(inited + 40);
    }

    v123 = v121;
    LODWORD(v122) = 1148846080;
    [v121 setContentCompressionResistancePriority:1 forAxis:v122];
    LODWORD(v124) = 1148846080;
    [v123 setContentHuggingPriority:1 forAxis:v124];

    if (v112)
    {
      v125 = MEMORY[0x29ED5EF30](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v125 = *(inited + 48);
    }

    v127 = v125;
    LODWORD(v126) = 1148846080;
    [v125 setContentCompressionResistancePriority:1 forAxis:v126];
    LODWORD(v128) = 1148846080;
    [v127 setContentHuggingPriority:1 forAxis:v128];

    if (v112)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v129 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v129 = MEMORY[0x29ED5EF30](3, inited);
LABEL_13:
  v131 = v129;
  LODWORD(v130) = 1148846080;
  [v129 setContentCompressionResistancePriority:1 forAxis:v130];
  LODWORD(v132) = 1148846080;
  [v131 setContentHuggingPriority:1 forAxis:v132];

  swift_setDeallocating();
  swift_arrayDestroy();
  v133 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v134 = *&v101[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView];
  LODWORD(v135) = 1148846080;
  [v134 setContentCompressionResistancePriority:1 forAxis:v135];
  LODWORD(v136) = 1148846080;
  [v134 setContentHuggingPriority:1 forAxis:v136];

  v137 = *&v101[v133];
  LODWORD(v138) = 1148846080;
  [v137 setContentCompressionResistancePriority:0 forAxis:v138];
  LODWORD(v139) = 1148846080;
  [v137 setContentHuggingPriority:0 forAxis:v139];

  v140 = sub_29D57E778(a1 & 1);
  v141 = sub_29D5B401C();
  [v148 activateConstraints_];

  return v140;
}

uint64_t sub_29D57E778(char a1)
{
  sub_29D48F45C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  if ((a1 & 1) == 0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_29D5BAE60;
    v81 = sub_29D57C5F0();
    v82 = [v81 trailingAnchor];

    v83 = sub_29D57CA38();
    v84 = [v83 leadingAnchor];

    v85 = [v82 constraintLessThanOrEqualToAnchor:v84 constant:-12.0];
    *(v3 + 32) = v85;
    v86 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
    v87 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView] centerYAnchor];
    v88 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide;
    v89 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] centerYAnchor];
    v90 = [v87 constraintEqualToAnchor_];

    *(v3 + 40) = v90;
    v91 = [*&v1[v86] &selRef_imageNamed_inBundle_compatibleWithTraitCollection_ + 4];
    v92 = sub_29D57C840();
    v93 = [v92 &selRef_imageNamed_inBundle_compatibleWithTraitCollection_ + 4];

    v94 = [v91 constraintEqualToAnchor_];
    *(v3 + 48) = v94;
    v95 = sub_29D57C62C();
    v96 = [v95 leftAnchor];

    v97 = [*&v1[v88] leftAnchor];
    v98 = [v96 constraintEqualToAnchor_];

    *(v3 + 56) = v98;
    v99 = sub_29D57C620();
    v100 = [v99 topAnchor];

    v101 = [*&v1[v88] bottomAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:12.0];

    LODWORD(v103) = 1148829696;
    [v102 setPriority_];
    *(v3 + 64) = v102;
    v64 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide;
    v104 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] leadingAnchor];
    v105 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide;
    v106 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] leadingAnchor];
    v107 = [v104 constraintEqualToAnchor_];

    *(v3 + 72) = v107;
    v108 = [*&v1[v64] trailingAnchor];
    v109 = [*&v1[v88] trailingAnchor];
    v110 = [v108 constraintEqualToAnchor_];

    *(v3 + 80) = v110;
    v111 = [*&v1[v64] bottomAnchor];
    v112 = [*&v1[v105] bottomAnchor];
    v113 = [v111 constraintEqualToAnchor_];

    LODWORD(v114) = 1148829696;
    [v113 setPriority_];
    *(v3 + 88) = v113;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D5B8F20;
    *(inited + 32) = sub_29D57C5FC();
    v61 = inited + 32;
    *(inited + 40) = sub_29D57C608();
    v115 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel];
    *(inited + 48) = v115;
    v116 = v115;
    *(inited + 56) = sub_29D57C638();
    v117 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x29ED5EF30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v1 = *v61;
    }

    [v1 setTextAlignment_];

    if (v117)
    {
      v118 = MEMORY[0x29ED5EF30](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_35;
      }

      v118 = *(inited + 40);
    }

    v1 = v118;
    [v118 setTextAlignment_];

    if (v117)
    {
      v119 = MEMORY[0x29ED5EF30](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_35;
      }

      v119 = *(inited + 48);
    }

    v1 = v119;
    [v119 setTextAlignment_];

    if (v117)
    {
      v120 = MEMORY[0x29ED5EF30](3, inited);
      goto LABEL_33;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v120 = *(inited + 56);
LABEL_33:
      v79 = v120;
      [v120 setTextAlignment_];
      goto LABEL_34;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D5BAC90;
  v4 = sub_29D57C5F0();
  v5 = [v4 bottomAnchor];

  v6 = sub_29D57C840();
  v7 = [v6 &selRef_latestSupportedVersion + 5];

  v8 = [v5 constraintEqualToAnchor_];
  LODWORD(v9) = 1148829696;
  [v8 setPriority_];
  *(v3 + 32) = v8;
  v10 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide;
  v11 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide] trailingAnchor];
  v12 = sub_29D57CA38();
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-12.0];
  *(v3 + 40) = v14;
  v15 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v123 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView;
  v16 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView] topAnchor];
  v17 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide;
  v18 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide] topAnchor];
  v19 = [v16 constraintGreaterThanOrEqualToAnchor_];

  *(v3 + 48) = v19;
  v20 = sub_29D57C620();
  v21 = [v20 topAnchor];

  v22 = [*&v1[v17] topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  LODWORD(v24) = 1148829696;
  [v23 setPriority_];
  *(v3 + 56) = v23;
  v25 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide;
  v26 = [*&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide] leadingAnchor];
  v27 = [*&v1[v15] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:12.0];

  *(v3 + 64) = v28;
  v29 = [*&v1[v25] trailingAnchor];
  v30 = [*&v1[v17] trailingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v3 + 72) = v31;
  v32 = [*&v1[v25] bottomAnchor];
  v33 = [*&v1[v17] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  LODWORD(v35) = 1148829696;
  [v34 setPriority_];
  *(v3 + 80) = v34;
  v36 = [*&v1[v10] centerYAnchor];
  v37 = [*&v1[v25] centerYAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v3 + 88) = v38;
  v39 = [*&v1[v10] centerYAnchor];
  v40 = [*&v1[v17] centerYAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v3 + 96) = v41;
  v42 = [*&v1[v123] centerYAnchor];
  v43 = [*&v1[v17] centerYAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v3 + 104) = v44;
  v45 = [*&v1[v10] widthAnchor];
  v46 = [*&v1[v25] widthAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v3 + 112) = v47;
  v48 = [*&v1[v10] heightAnchor];
  v49 = [*&v1[v25] heightAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v3 + 120) = v50;
  v51 = sub_29D57C608();
  v52 = [v51 firstBaselineAnchor];

  v53 = sub_29D57C638();
  v54 = [v53 firstBaselineAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v3 + 128) = v55;
  v56 = sub_29D57C5FC();
  v57 = [v56 firstBaselineAnchor];

  v58 = sub_29D57C62C();
  v59 = [v58 firstBaselineAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v3 + 136) = v60;
  v61 = swift_initStackObject();
  v122 = xmmword_29D5B6340;
  *(v61 + 16) = xmmword_29D5B6340;
  v62 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel];
  *(v61 + 32) = v62;
  v63 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel];
  *(v61 + 40) = v63;
  v64 = v61 & 0xC000000000000001;
  inited = v61 & 0xFFFFFFFFFFFFFF8;
  v66 = v62;
  v67 = v63;
  if ((v61 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  for (i = v66; ; i = MEMORY[0x29ED5EF30](0, v61))
  {
    [i setTextAlignment_];

    if (v64)
    {
      v69 = MEMORY[0x29ED5EF30](1, v61);
    }

    else
    {
      if (*(inited + 16) < 2uLL)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v69 = *(v61 + 40);
    }

    v70 = v69;
    [v69 setTextAlignment_];

    swift_setDeallocating();
    swift_arrayDestroy();
    inited = swift_initStackObject();
    *(inited + 16) = v122;
    v71 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel];
    *(inited + 32) = v71;
    v61 = inited + 32;
    v72 = *&v1[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel];
    *(inited + 40) = v72;
    v64 = inited & 0xC000000000000001;
    v73 = v71;
    v74 = v72;
    if ((inited & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x29ED5EF30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v75 = v73;
    }

    v76 = v75;
    v77 = (sub_29D5B45AC() & 1) != 0 ? 0 : 2;
    [v76 setTextAlignment_];

    if (v64)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v78 = *(inited + 40);
      goto LABEL_17;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v78 = MEMORY[0x29ED5EF30](1, inited);
LABEL_17:
  v79 = v78;
  if (sub_29D5B45AC())
  {
    v80 = 0;
  }

  else
  {
    v80 = 2;
  }

  [v79 setTextAlignment_];
LABEL_34:

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

id sub_29D57F4D4()
{
  sub_29D48F45C(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5BAE70;
  *(inited + 32) = sub_29D57C608();
  *(inited + 40) = sub_29D57C5FC();
  *(inited + 48) = sub_29D57C614();
  *(inited + 56) = sub_29D57C638();
  *(inited + 64) = sub_29D57C62C();
  *(inited + 72) = sub_29D57C704();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x29ED5EF30](0, inited))
  {
    v4 = i;
    [v0 addSubview_];

    if (v2)
    {
      v5 = MEMORY[0x29ED5EF30](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_22;
      }

      v5 = *(inited + 40);
    }

    v6 = v5;
    [v0 addSubview_];

    if (v2)
    {
      v7 = MEMORY[0x29ED5EF30](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_22;
      }

      v7 = *(inited + 48);
    }

    v8 = v7;
    [v0 addSubview_];

    if (v2)
    {
      v9 = MEMORY[0x29ED5EF30](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_22;
      }

      v9 = *(inited + 56);
    }

    v10 = v9;
    [v0 addSubview_];

    if (v2)
    {
      v11 = MEMORY[0x29ED5EF30](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_22;
      }

      v11 = *(inited + 64);
    }

    v12 = v11;
    [v0 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v13 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v13 = MEMORY[0x29ED5EF30](5, inited);
LABEL_19:
  v14 = v13;
  [v0 addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = sub_29D57CA38();
  [v0 addSubview_];

  v16 = sub_29D57C840();
  [v0 addLayoutGuide_];

  v17 = sub_29D57C5F0();
  [v0 addLayoutGuide_];

  v18 = sub_29D57C620();
  [v0 addLayoutGuide_];

  v19 = qword_2A17A3A00;
  v20 = *&v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_2A17ABF98;
  [v20 setTextColor_];

  return [*&v0[OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel] setTextColor_];
}

uint64_t sub_29D57F820(uint64_t a1)
{
  v3 = [objc_opt_self() defaultMetrics];
  v4 = sub_29D57C9A8();
  v5 = [v1 traitCollection];
  v6 = [v3 scaledFontForFont:v4 compatibleWithTraitCollection:v5];

  v7 = *(a1 + *(type metadata accessor for ConceptDeltaHighlightFeedItemData() + 32));
  if (v7 == -1 || !v7 || v7 == 1)
  {
    v8 = [objc_opt_self() configurationWithFont_];
    v9 = sub_29D5B3E1C();

    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    if (v10)
    {

      return v10;
    }

    __break(1u);
  }

  type metadata accessor for ComparisonResult(0);
  result = sub_29D5B4C9C();
  __break(1u);
  return result;
}

id sub_29D57FA08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConceptDeltaHighlightFeedItemView()
{
  result = qword_2A17A4FF0;
  if (!qword_2A17A4FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D57FBA0()
{
  result = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_29D57FC78()
{
  result = qword_2A17A5000;
  if (!qword_2A17A5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5000);
  }

  return result;
}

void sub_29D57FCCC()
{
  if (!qword_2A17A48C8)
  {
    sub_29D48F51C(255, &qword_2A17A48B8);
    v0 = sub_29D5B3D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A48C8);
    }
  }
}

uint64_t sub_29D57FD34(uint64_t a1)
{
  sub_29D48F45C(0, &qword_2A17A5008, &type metadata for ConceptDeltaHighlightRecordViewData, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D57FDB4()
{
  result = qword_2A17A5010;
  if (!qword_2A17A5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5010);
  }

  return result;
}

void sub_29D57FE08()
{
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftGuide) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftValueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftDateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___leftRangeView) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightGuide) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightValueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightDateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___rightRangeView) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___containerLayoutGuide) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayout) = 2;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___currentLayoutConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageFont) = 0;
  *(v0 + OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView____lazy_storage___deltaImageView) = 0;
  sub_29D5B4A2C();
  __break(1u);
}

uint64_t type metadata accessor for RecordKindFeedItemData()
{
  result = qword_2A1A19C40;
  if (!qword_2A1A19C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D57FF78()
{
  sub_29D5B1D6C();
  if (v0 <= 0x3F)
  {
    sub_29D4B4C4C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D580014(void *a1)
{
  sub_29D580CC0(0, &qword_2A17A5040, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D580C6C();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D5B1D6C();
  sub_29D5811F8(&qword_2A17A4120, MEMORY[0x29EDC4098]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for RecordKindFeedItemData();
    v9[14] = 1;
    sub_29D5B4C1C();
    v9[13] = 2;
    sub_29D5B4BCC();
    v9[12] = 3;
    sub_29D5B0E6C();
    sub_29D5811F8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4BBC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D580284()
{
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D5811F8(&qword_2A17A4128, MEMORY[0x29EDC4098]);
  sub_29D5B3D9C();
  v8 = type metadata accessor for RecordKindFeedItemData();
  MEMORY[0x29ED5F360](*(v0 + *(v8 + 20)));
  sub_29D5B3EFC();
  sub_29D580D24(v0 + *(v8 + 28), v7, sub_29D4B4C4C);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_29D5B4D6C();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_29D5B4D6C();
  sub_29D5811F8(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  sub_29D5B3D9C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_29D5804E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1D6C();
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D580CC0(0, &qword_2A17A5030, MEMORY[0x29EDC9E80]);
  v29 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for RecordKindFeedItemData();
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D580C6C();
  v28 = v10;
  v14 = v30;
  sub_29D5B4DBC();
  if (v14)
  {
    return sub_29D48F668(a1);
  }

  v30 = v5;
  v15 = v13;
  v16 = v25;
  v34 = 0;
  sub_29D5811F8(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  v17 = v26;
  sub_29D5B4B6C();
  (*(v16 + 32))(v15, v17, v6);
  v33 = 1;
  *(v15 + v11[5]) = sub_29D5B4B7C();
  v32 = 2;
  v18 = sub_29D5B4B2C();
  v19 = (v15 + v11[6]);
  *v19 = v18;
  v19[1] = v20;
  sub_29D5B0E6C();
  v31 = 3;
  sub_29D5811F8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  v21 = v30;
  sub_29D5B4B1C();
  (*(v27 + 8))(v28, v29);
  sub_29D4D1F64(v21, v15 + v11[7]);
  sub_29D580D24(v15, v24, type metadata accessor for RecordKindFeedItemData);
  sub_29D48F668(a1);
  return sub_29D581198(v15, type metadata accessor for RecordKindFeedItemData);
}

uint64_t sub_29D580994()
{
  v1 = 0x79726F6765746163;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x66676E696E61656DLL;
  }

  if (*v0)
  {
    v1 = 0x49747065636E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D580A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D581358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D580A4C(uint64_t a1)
{
  v2 = sub_29D580C6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D580A88(uint64_t a1)
{
  v2 = sub_29D580C6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D580AF4()
{
  sub_29D5B4D4C();
  sub_29D580284();
  return sub_29D5B4D9C();
}

uint64_t sub_29D580B38()
{
  sub_29D5B4D4C();
  sub_29D580284();
  return sub_29D5B4D9C();
}

uint64_t sub_29D580BC0(void *a1)
{
  a1[1] = sub_29D5811F8(&qword_2A17A4638, type metadata accessor for RecordKindFeedItemData);
  a1[2] = sub_29D5811F8(&qword_2A17A4380, type metadata accessor for RecordKindFeedItemData);
  result = sub_29D5811F8(&qword_2A17A5028, type metadata accessor for RecordKindFeedItemData);
  a1[3] = result;
  return result;
}

unint64_t sub_29D580C6C()
{
  result = qword_2A17A5038;
  if (!qword_2A17A5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5038);
  }

  return result;
}

void sub_29D580CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D580C6C();
    v7 = a3(a1, &type metadata for RecordKindFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D580D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_29D580D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v29 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D2828();
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1D6C();
  sub_29D5811F8(&qword_2A17A4130, MEMORY[0x29EDC4098]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v31 != v30)
  {
    return 0;
  }

  v14 = type metadata accessor for RecordKindFeedItemData();
  if (*(a1 + v14[5]) != *(a2 + v14[5]))
  {
    return 0;
  }

  v15 = v14[6];
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if (v17 != *v18 || v16 != v18[1])
  {
    v19 = v14;
    v20 = sub_29D5B4C7C();
    v14 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v14[7];
  v22 = *(v11 + 48);
  sub_29D580D24(a1 + v21, v13, sub_29D4B4C4C);
  sub_29D580D24(a2 + v21, &v13[v22], sub_29D4B4C4C);
  v23 = v29;
  v24 = *(v29 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v22], 1, v4) == 1)
    {
      sub_29D581198(v13, sub_29D4B4C4C);
      return 1;
    }

    goto LABEL_11;
  }

  sub_29D580D24(v13, v9, sub_29D4B4C4C);
  if (v24(&v13[v22], 1, v4) == 1)
  {
    (*(v23 + 8))(v9, v4);
LABEL_11:
    sub_29D581198(v13, sub_29D4D2828);
    return 0;
  }

  (*(v23 + 32))(v6, &v13[v22], v4);
  sub_29D5811F8(&qword_2A17A4070, MEMORY[0x29EDB9BC8]);
  v26 = sub_29D5B3E0C();
  v27 = *(v23 + 8);
  v27(v6, v4);
  v27(v9, v4);
  sub_29D581198(v13, sub_29D4B4C4C);
  return (v26 & 1) != 0;
}

uint64_t sub_29D581198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5811F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D581254()
{
  result = qword_2A17A5048;
  if (!qword_2A17A5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5048);
  }

  return result;
}

unint64_t sub_29D5812AC()
{
  result = qword_2A17A5050;
  if (!qword_2A17A5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5050);
  }

  return result;
}

unint64_t sub_29D581304()
{
  result = qword_2A17A5058;
  if (!qword_2A17A5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5058);
  }

  return result;
}

uint64_t sub_29D581358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xEC000000646E694BLL;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49747065636E6F63 && a2 == 0xE900000000000064 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66676E696E61656DLL && a2 == 0xEE00657461446C75)
  {

    return 3;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t sub_29D5814CC(uint64_t a1)
{
  v114 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v112 = *(v3 - 8);
  v111 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v109 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582FFC(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v101 = &v85 - v6;
  v7 = sub_29D5B43DC();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v99 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582B48();
  v102 = v9;
  v103 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v98 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582C7C();
  v12 = *(v11 - 8);
  v107 = v11;
  v108 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v100 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582D48();
  v113 = v14;
  v115 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v104 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582E04();
  v17 = *(v16 - 8);
  v116 = v16;
  v117 = v17;
  MEMORY[0x2A1C7C4A8](v16);
  v110 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29D5B446C();
  v94 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v90 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0();
  v93 = v20;
  v95 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v91 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D582F60();
  v89 = v22;
  v96 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v88 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29D5B13CC();
  v24 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D5B13EC();
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_context);
  sub_29D5B143C();
  sub_29D582FFC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v31 = sub_29D5B104C();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v97 = xmmword_29D5B62A0;
  *(v34 + 16) = xmmword_29D5B62A0;
  (*(v32 + 104))(v34 + v33, *MEMORY[0x29EDC3758], v31);
  (*(v24 + 104))(v26, *MEMORY[0x29EDC3898], v87);
  sub_29D5B13DC();
  v35 = v85;
  (*(v28 + 32))(v85 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_domain, v30, v27);
  v36 = v86;
  sub_29D5B140C();
  v37 = v121;
  v38 = v122;
  sub_29D499EC0(&v120, v121);
  v39 = sub_29D4C9C8C(v37, v38);
  v40 = [objc_opt_self() medicalRecordTypes];
  sub_29D48F51C(0, &qword_2A1A19660);
  v41 = sub_29D5B402C();

  type metadata accessor for NewRecordsUpdateObserver();
  swift_allocObject();
  v42 = sub_29D542E5C(v41, v39);
  sub_29D48F668(&v120);
  v43 = v35;
  *(v35 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_newRecordsUpdateObserver) = v42;
  v120 = v42[4];
  sub_29D54320C();
  sub_29D582C34(&qword_2A1A16640, sub_29D54320C);

  v44 = v88;
  sub_29D5B3B7C();

  sub_29D582C34(&qword_2A1A16EE0, sub_29D582F60);
  v45 = v89;
  v46 = sub_29D5B3B1C();
  (v96)[1](v44, v45);
  *(v43 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_newRecordsUpdatePublisher) = v46;
  v47 = v43;
  sub_29D5B140C();
  sub_29D499EC0(&v120, v121);
  v48 = sub_29D5B136C();
  sub_29D48F668(&v120);
  v49 = [objc_opt_self() defaultCenter];
  v50 = v48;
  v96 = v50;
  v51 = v90;
  sub_29D5B447C();

  sub_29D582C34(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
  v52 = v91;
  v53 = v92;
  sub_29D5B3B7C();
  (*(v94 + 8))(v51, v53);
  sub_29D582C34(&qword_2A1A197B8, sub_29D499DC0);
  v54 = v93;
  v55 = sub_29D5B3B1C();
  (*(v95 + 8))(v52, v54);
  v56 = v47;
  *(v47 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_indexerPublisher) = v55;
  v57 = v36;
  v58 = sub_29D5B146C();
  sub_29D5B1CBC();
  v59 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v120, v121);
  v60 = sub_29D5B136C();
  v61 = [v60 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(&v120);
  v62 = sub_29D5B363C();

  v119 = *(v47 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_newRecordsUpdatePublisher);
  v120 = v62;
  v118 = *(v47 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_indexerPublisher);
  sub_29D4F7770();
  sub_29D499998();
  sub_29D582C34(&qword_2A1A16800, sub_29D4F7770);
  sub_29D582C34(&qword_2A1A19778, sub_29D499998);
  v63 = v98;
  sub_29D5B3B5C();

  v64 = v99;
  sub_29D5B43CC();
  v120 = v58;
  v65 = sub_29D5B43BC();
  v66 = v101;
  (*(*(v65 - 8) + 56))(v101, 1, 1, v65);
  sub_29D48F51C(0, &qword_2A1A1A420);
  sub_29D582C34(&qword_2A1A17220, sub_29D582B48);
  sub_29D5127AC();
  v67 = v100;
  v68 = v102;
  sub_29D5B3C2C();
  sub_29D499F04(v66);
  (*(v105 + 8))(v64, v106);
  (*(v103 + 8))(v63, v68);
  v69 = v109;
  sub_29D499E5C(v57, v109);
  v70 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v71 = (v111 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v72 + v70;
  v74 = v69;
  sub_29D499F90(v69, v73);
  *(v72 + v71) = v114;
  sub_29D4A02FC(0, &qword_2A1A19818);
  sub_29D582C34(&qword_2A1A16950, sub_29D582C7C);
  v75 = v104;
  v76 = v107;
  sub_29D5B3B2C();

  (*(v108 + 8))(v67, v76);
  sub_29D582EF0(0, &qword_2A1A195D8, MEMORY[0x29EDC9E90]);
  v77 = swift_allocObject();
  *(v77 + 16) = v97;
  sub_29D499E5C(v57, v74);
  v78 = type metadata accessor for NewRecordsGenerator();
  swift_allocObject();
  v79 = sub_29D5AB2BC(v74);
  *(v77 + 56) = v78;
  *(v77 + 64) = sub_29D582C34(qword_2A1A1A150, type metadata accessor for NewRecordsGenerator);
  *(v77 + 32) = v79;
  sub_29D582C34(&qword_2A1A17178, sub_29D582D48);
  v80 = v110;
  v81 = v113;
  sub_29D5B3C0C();

  (*(v115 + 8))(v75, v81);
  sub_29D582C34(&qword_2A1A17128, sub_29D582E04);
  v82 = v116;
  v83 = sub_29D5B3B1C();
  (*(v117 + 8))(v80, v82);
  *(v56 + 16) = v83;
  sub_29D542EF0();

  sub_29D49A104(v57);
  return v56;
}

uint64_t sub_29D5825C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B429C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for NewRecordsGenerator();
    sub_29D58310C();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D499E5C(a1, v8);
  v27 = type metadata accessor for NewRecordsGenerator();
  swift_allocObject();
  v28 = sub_29D5AB2BC(v8);
  a3[3] = v27;
  result = sub_29D582C34(qword_2A1A1A150, type metadata accessor for NewRecordsGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D5828B0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewRecordsGeneratorPipeline()
{
  result = qword_2A1A1A238;
  if (!qword_2A1A1A238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5829E8()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D582ACC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27NewRecordsGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D582B48()
{
  if (!qword_2A1A17218)
  {
    sub_29D4F7770();
    sub_29D499998();
    sub_29D582C34(&qword_2A1A16800, sub_29D4F7770);
    sub_29D582C34(&qword_2A1A19778, sub_29D499998);
    v0 = sub_29D5B37AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17218);
    }
  }
}

uint64_t sub_29D582C34(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D582C7C()
{
  if (!qword_2A1A16948)
  {
    sub_29D582B48();
    sub_29D48F51C(255, &qword_2A1A1A420);
    sub_29D582C34(&qword_2A1A17220, sub_29D582B48);
    sub_29D5127AC();
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16948);
    }
  }
}

void sub_29D582D48()
{
  if (!qword_2A1A17170)
  {
    sub_29D582C7C();
    sub_29D4A02FC(255, &qword_2A1A19818);
    sub_29D582C34(&qword_2A1A16950, sub_29D582C7C);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17170);
    }
  }
}

void sub_29D582E04()
{
  if (!qword_2A1A17120)
  {
    sub_29D499C88();
    sub_29D582D48();
    sub_29D582C34(&qword_2A1A197A8, sub_29D499C88);
    sub_29D582C34(&qword_2A1A17178, sub_29D582D48);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17120);
    }
  }
}

void sub_29D582EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4A02FC(255, &qword_2A1A19818);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D582F60()
{
  if (!qword_2A1A16ED8)
  {
    sub_29D54320C();
    sub_29D582C34(&qword_2A1A16640, sub_29D54320C);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16ED8);
    }
  }
}

void sub_29D582FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D583060@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5825C4(v1 + v4, v5, a1);
}

unint64_t sub_29D58310C()
{
  result = qword_2A17A5060;
  if (!qword_2A17A5060)
  {
    type metadata accessor for NewRecordsGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A5060);
  }

  return result;
}

id sub_29D583154()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SharedConceptTileViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result addSubview_];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result addSubview_];

      sub_29D583264();
      return sub_29D5836C8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D58321C(void *a1)
{
  v1 = a1;
  sub_29D583154();
}

void sub_29D583264()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5BB1D0;
  v2 = *&v0[qword_2A17A5068];
  v3 = [v2 leadingAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 trailingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 trailingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v12;
  v13 = [v2 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v1 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = *&v0[qword_2A17A5070];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor_];

  *(v1 + 56) = v21;
  v22 = [v19 leadingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v1 + 64) = v26;
  v27 = [v19 trailingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:-16.0];
  *(v1 + 72) = v31;
  v32 = [v19 bottomAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 bottomAnchor];

  v37 = [v32 constraintEqualToAnchor_];
  *(v1 + 80) = v37;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v38 = sub_29D5B401C();

  [v35 activateConstraints_];
}

uint64_t sub_29D5836C8()
{
  sub_29D48F36C(0, &qword_2A17A3B88, MEMORY[0x29EDC4230]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v20 = &v19 - v2;
  v3 = sub_29D5B277C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F36C(0, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SharedConceptFeedItemData(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D5851E4(v0 + v14, v9, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_29D5852B0(v9, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  }

  sub_29D4B45A0(v9, v13);
  sub_29D583A44(v13, v6);
  v21[3] = v3;
  v21[4] = MEMORY[0x29EDC4228];
  v16 = sub_29D4A0410(v21);
  v17 = *(v4 + 16);
  v17(v16, v6, v3);
  sub_29D5B237C();
  v18 = v20;
  v17(v20, v6, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  sub_29D5B23AC();
  (*(v4 + 8))(v6, v3);
  return sub_29D585250(v13, type metadata accessor for SharedConceptFeedItemData);
}

uint64_t sub_29D583A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v101 = sub_29D5B0E6C();
  v100 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101);
  v99 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29D5B0C4C();
  v87 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F36C(0, &qword_2A1A164E0, sub_29D506534);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v92 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v84 - v8;
  v94 = type metadata accessor for SharedConceptCodedValue(0);
  v93 = *(v94 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v94);
  v91 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v84 - v12;
  v90 = sub_29D5B200C();
  v89 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F36C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v84 - v17;
  v19 = sub_29D5B1BCC();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SharedConceptFeedItemData(0);
  v24 = *(v23 + 24);
  v25 = sub_29D5B1D6C();
  (*(*(v25 - 8) + 16))(v22, a1 + v24, v25);
  v26 = *MEMORY[0x29EDC3F80];
  v97 = v20;
  v27 = *(v20 + 104);
  v96 = v22;
  v98 = v19;
  v27(v22, v26, v19);
  v95 = v23;
  v28 = *(v23 + 44);
  v102 = a1;
  v29 = (a1 + v28);
  v30 = v29[1];
  v107 = *v29;
  v108 = v30;
  v31 = *(v29 + 4);
  v32 = *(v29 + 5);
  v33 = *(v29 + 8);
  v34 = *(v29 + 6);
  v35 = *(v29 + 7);
  v114 = *(v29 + 72);
  v109 = v31;
  v110 = v32;
  v111 = v34;
  v112 = v35;
  v113 = v33;
  sub_29D4C9824();
  result = sub_29D5B22FC();
  if (result)
  {
    v37 = sub_29D5B0EFC();
    (*(*(v37 - 8) + 56))(v18, 1, 1, v37);
    sub_29D5B1FFC();
    v106 = sub_29D5B2A0C();
    (*(v89 + 8))(v15, v90);
    sub_29D5852B0(v18, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v105 = 0;
    goto LABEL_26;
  }

  v89 = v35;
  v90 = v34;
  v38 = MEMORY[0x29EDCA190];
  *&v107 = MEMORY[0x29EDCA190];
  v39 = *(v32 + 16);
  v85 = v32;
  if (v39)
  {
    v40 = v32;
    v41 = *(v94 + 20);
    v42 = v40 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v43 = *(v93 + 72);
    v105 = v13;
    v106 = v43;
    do
    {
      sub_29D58517C(v42, v13, type metadata accessor for SharedConceptCodedValue);
      sub_29D5851E4(&v13[v41], v9, &qword_2A1A164E0, sub_29D506534);
      sub_29D506534(0);
      v45 = v44;
      v46 = *(v44 - 8);
      if ((*(v46 + 48))(v9, 1, v44) == 1)
      {
        sub_29D585250(v13, type metadata accessor for SharedConceptCodedValue);
        result = sub_29D5852B0(v9, &qword_2A1A164E0, sub_29D506534);
      }

      else
      {
        sub_29D5B3CEC();
        sub_29D585250(v13, type metadata accessor for SharedConceptCodedValue);
        v47 = (*(v46 + 8))(v9, v45);
        MEMORY[0x29ED5E5E0](v47);
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D5B408C();
        }

        result = sub_29D5B40AC();
        v38 = v107;
        v13 = v105;
        v43 = v106;
      }

      v42 += v43;
      --v39;
    }

    while (v39);
  }

  if (v38 >> 62)
  {
    result = sub_29D5B485C();
    v48 = v92;
    v49 = v91;
    if (result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v48 = v92;
    v49 = v91;
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if ((v38 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x29ED5EF30](0, v38);
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v50 = *(v38 + 32);
      }

      v51 = v50;

      v52 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];

      goto LABEL_19;
    }
  }

  v52 = 0;
LABEL_19:
  v53 = v85;
  v54 = *(v85 + 16);
  v105 = v52;
  if (!v54)
  {
    goto LABEL_23;
  }

  v55 = v85 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
  sub_29D58517C(v55, v49, type metadata accessor for SharedConceptCodedValue);
  sub_29D5851E4(v49 + *(v94 + 20), v48, &qword_2A1A164E0, sub_29D506534);
  sub_29D506534(0);
  v57 = v56;
  v58 = *(v56 - 8);
  if ((*(v58 + 48))(v48, 1, v56) != 1)
  {
    v59 = sub_29D5B3CEC();
    (*(v58 + 8))(v48, v57);
    sub_29D585250(v49, type metadata accessor for SharedConceptCodedValue);
    v60 = [v59 currentValue];

    v61 = [v60 displayString];
    v62 = sub_29D5B3E5C();
    v64 = v63;

    *&v107 = v62;
    *(&v107 + 1) = v64;
    v65 = v86;
    sub_29D5B0C2C();
    sub_29D4B343C();
    v106 = sub_29D5B477C();
    (*(v87 + 8))(v65, v88);

    goto LABEL_25;
  }

  sub_29D5852B0(v48, &qword_2A1A164E0, sub_29D506534);
  sub_29D585250(v49, type metadata accessor for SharedConceptCodedValue);
  if (*(v53 + 16))
  {
    v106 = *(v55 + *(v94 + 28));
  }

  else
  {
LABEL_23:
    v106 = 0;
  }

LABEL_25:
  v66 = [objc_opt_self() sharedConverter];
  v67 = sub_29D5B3E1C();
  v68 = [v66 synonymForUCUMUnitString_];

  sub_29D5B3E5C();
LABEL_26:
  sub_29D5B1CBC();
  v69 = sub_29D5B1C8C();
  v70 = v104;
  v71 = *((*MEMORY[0x29EDCA1E8] & *v104) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v70 + v71, &v107, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v72 = *(&v108 + 1);
  if (*(&v108 + 1))
  {
    v73 = sub_29D499EC0(&v107, *(&v108 + 1));
    v74 = *(v72 - 8);
    MEMORY[0x2A1C7C4A8](v73);
    v76 = &v84 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v74 + 16))(v76);
    v77 = sub_29D5B314C();
    (*(v74 + 8))(v76, v72);
    v78 = sub_29D5B1C9C();

    sub_29D48F668(&v107);
    v79 = [v78 utcDateFormatter];
    v80 = v99;
    sub_29D5B0E1C();
    v81 = sub_29D5B0DEC();
    (*(v100 + 8))(v80, v101);
    v82 = [v79 relativeStringFromDate_];

    sub_29D5B3E5C();

    v83 = v96;
    sub_29D5B1AFC();
    sub_29D5B1B9C();
    sub_29D5B275C();

    return (*(v97 + 8))(v83, v98);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_29D584830(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  sub_29D48F36C(0, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for SharedConceptFeedItemData(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v34 = &v32 - v10;
  sub_29D5B1CBC();
  v11 = sub_29D5B1C8C();
  v12 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v2 + v12, v35, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v14 = v36;
  if (v36)
  {
    v15 = sub_29D499EC0(v35, v36);
    v16 = *(v14 - 8);
    MEMORY[0x2A1C7C4A8](v15);
    v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_29D5B314C();
    (*(v16 + 8))(v18, v14);
    v20 = sub_29D5B1C9C();

    sub_29D48F668(v35);
    v21 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
    swift_beginAccess();
    sub_29D5851E4(v2 + v21, v5, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_29D5852B0(v5, qword_2A1A185B8, type metadata accessor for SharedConceptFeedItemData);
    }

    else
    {
      v22 = v34;
      sub_29D4B45A0(v5, v34);
      v23 = v32;
      sub_29D58517C(v22, v32, type metadata accessor for SharedConceptFeedItemData);
      objc_allocWithZone(type metadata accessor for SharedConceptDetailViewController());
      v24 = v20;
      v25 = sub_29D506760(v24, v23);
      sub_29D5693B8(v33, v35, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D502718);
      v26 = v36;
      if (v36)
      {
        v27 = sub_29D499EC0(v35, v36);
        v28 = *(v26 - 8);
        MEMORY[0x2A1C7C4A8](v27);
        v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v30);
        v31 = sub_29D5B4C6C();
        (*(v28 + 8))(v30, v26);
        sub_29D48F668(v35);
      }

      else
      {
        v31 = 0;
      }

      [v2 showViewController:v25 sender:v31];

      swift_unknownObjectRelease();
      return sub_29D585250(v22, type metadata accessor for SharedConceptFeedItemData);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D584D6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_2A17A5068;
  *&v3[v6] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v7 = qword_2A17A5070;
  *&v3[v7] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  v8 = &v3[qword_2A17A5078];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SharedConceptTileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D584E80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D584D6C(v5, v7, a4);
}

id sub_29D584EE0(void *a1)
{
  v3 = qword_2A17A5068;
  *&v1[v3] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v4 = qword_2A17A5070;
  *&v1[v4] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  v5 = &v1[qword_2A17A5078];
  v6 = type metadata accessor for SharedConceptTileViewController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29D584FF0()
{
  v1 = v0 + qword_2A17A5078;

  return sub_29D4B9414(v1);
}

id sub_29D585040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConceptTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D585078(uint64_t a1)
{
  v2 = a1 + qword_2A17A5078;

  return sub_29D4B9414(v2);
}

uint64_t type metadata accessor for SharedConceptTileViewController()
{
  result = qword_2A17A5080;
  if (!qword_2A17A5080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D58517C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5851E4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D48F36C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D585250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5852B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D48F36C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LabListViewController()
{
  result = qword_2A17A5090;
  if (!qword_2A17A5090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5853F4(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for LabListViewController();
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    sub_29D5B330C();
    sub_29D5B432C();
  }

  else
  {
    __break(1u);
  }
}

id sub_29D5854E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D585528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D5B101C();
  result = sub_29D5B100C();
  v4 = MEMORY[0x29EDC3640];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29D585568(uint64_t a1, void *a2)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_29D5B2DCC();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v52 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B356C();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v51 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0C7C();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v57 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D585FC8(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v47 - v12;
  sub_29D5B18CC();
  v48 = MEMORY[0x29ED5BE80]();
  sub_29D48F410(0, &qword_2A1A19420);
  v47[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B8F20;
  *(v15 + 32) = sub_29D5B183C();
  *(v15 + 40) = sub_29D5B184C();
  sub_29D585FC8(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v16 = sub_29D5B104C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D5B5E20;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x29EDC3730], v16);
  v23 = v21 + v18;
  v24 = v56;
  v22(v23, *MEMORY[0x29EDC36E0], v16);
  v25 = v58;
  v26 = v55;
  (*(v55 + 56))(v13, 1, 1, v24);
  sub_29D48F410(0, &qword_2A1A16210);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D5B62A0;
  v28 = v59;
  *(v27 + 32) = v59;
  v29 = v28;
  v30 = MEMORY[0x29ED5BE30](v20, 0, v13, v27);

  v31 = v57;

  sub_29D58602C(v13);
  *(v15 + 48) = v30;
  sub_29D5B0C5C();
  sub_29D5B357C();
  v32 = *(v26 + 8);
  v32(v31, v24);
  result = (*(v26 + 48))(v11, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x29ED5BE50](v11);
    v32(v11, v24);
    *(v15 + 56) = v34;
    sub_29D48F51C(0, &qword_2A1A16378);
    v35 = sub_29D5B401C();

    v36 = [objc_opt_self() andPredicateWithSubpredicates_];

    v37 = v48;
    [v48 setPredicate_];

    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_29D5B6350;
    v39 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
    v40 = sub_29D5B3E1C();
    v41 = [v39 initWithKey:v40 ascending:1 selector:sel_localizedStandardCompare_];

    *(v38 + 32) = v41;
    sub_29D48F51C(0, &qword_2A1A16340);
    v42 = sub_29D5B401C();

    [v37 setSortDescriptors_];

    sub_29D5B101C();
    v43 = v37;
    sub_29D5B100C();
    v44 = sub_29D5B0FFC();

    [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v43 managedObjectContext:v44 sectionNameKeyPath:0 cacheName:0];

    sub_29D5860B8();
    sub_29D5B0C5C();
    (*(v49 + 16))(v51, v25, v50);
    v45 = v52;
    sub_29D5B2DBC();
    sub_29D5B2DAC();
    (*(v53 + 8))(v45, v54);
    v46 = sub_29D5B2B0C();

    sub_29D58614C(&qword_2A17A50B0, sub_29D5860B8);
    return v46;
  }

  return result;
}

uint64_t sub_29D585CA0(void *a1)
{
  v2 = sub_29D5B356C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D585FC8(0, &qword_2A17A46B0, sub_29D585F68, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D5BB220;
  v7 = *(v3 + 104);
  v7(v5, *MEMORY[0x29EDC3D18], v2);
  v8 = sub_29D585568(v5, a1);
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v7(v5, *MEMORY[0x29EDC3D20], v2);
  v12 = sub_29D585568(v5, a1);
  v14 = v13;
  v11(v5, v2);
  *(v6 + 48) = v12;
  *(v6 + 56) = v14;
  v7(v5, *MEMORY[0x29EDC3D30], v2);
  v15 = sub_29D585568(v5, a1);
  v17 = v16;
  v11(v5, v2);
  *(v6 + 64) = v15;
  *(v6 + 72) = v17;
  v7(v5, *MEMORY[0x29EDC3D28], v2);
  v18 = sub_29D585568(v5, a1);
  v20 = v19;
  v11(v5, v2);
  *(v6 + 80) = v18;
  *(v6 + 88) = v20;
  v7(v5, *MEMORY[0x29EDC3D10], v2);
  v21 = sub_29D585568(v5, a1);
  v23 = v22;
  v11(v5, v2);
  *(v6 + 96) = v21;
  *(v6 + 104) = v23;
  sub_29D5B304C();
  swift_allocObject();
  sub_29D5B305C();
  return sub_29D5B347C();
}

unint64_t sub_29D585F68()
{
  result = qword_2A17A46B8;
  if (!qword_2A17A46B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17A46B8);
  }

  return result;
}

void sub_29D585FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D58602C(uint64_t a1)
{
  sub_29D585FC8(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5860B8()
{
  if (!qword_2A17A50A0)
  {
    sub_29D5B18CC();
    sub_29D58614C(&qword_2A17A50A8, MEMORY[0x29EDC3C88]);
    v0 = sub_29D5B2AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A50A0);
    }
  }
}

uint64_t sub_29D58614C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D586194(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA198];
    goto LABEL_6;
  }

  if (!sub_29D5B485C())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D58A5F0();
  v3 = sub_29D5B4AAC();
LABEL_6:
  if (sub_29D48F51C(0, &qword_2A1A19660) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {
      v9 = sub_29D5B49EC();
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v9 | 0x8000000000000000;
    }

    else
    {
      v38 = -1 << *(a1 + 32);
      v11 = ~v38;
      v10 = a1 + 64;
      v39 = -v38;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v12 = v40 & *(a1 + 64);
      v13 = a1;
    }

    v41 = (v11 + 64) >> 6;

    v42 = 0;
    for (i = v13; ; v13 = i)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v56 = sub_29D5B4A1C();
        if (!v56)
        {
          goto LABEL_60;
        }

        v63 = v56;
        sub_29D48F51C(0, &qword_2A17A3CA8);
        swift_dynamicCast();
        sub_29D48F51C(0, &qword_2A1A16378);
        swift_dynamicCast();
        v55 = v63;
        v54 = v64;
        v49 = v42;
        v51 = v12;
        if (!v64)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v48 = v12;
        v49 = v42;
        if (!v12)
        {
          v50 = v42;
          do
          {
            v49 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_63;
            }

            if (v49 >= v41)
            {
              goto LABEL_60;
            }

            v48 = *(v10 + 8 * v49);
            ++v50;
          }

          while (!v48);
          v13 = i;
        }

        v51 = (v48 - 1) & v48;
        v52 = (v49 << 9) | (8 * __clz(__rbit64(v48)));
        v53 = *(*(v13 + 56) + v52);
        v54 = *(*(v13 + 48) + v52);
        v55 = v53;
        if (!v54)
        {
LABEL_60:
          sub_29D4B30C0();

          return;
        }
      }

      v57 = sub_29D57A15C(v54);
      if (v58)
      {
        v43 = *(v3 + 48);
        v44 = *(v43 + 8 * v57);
        *(v43 + 8 * v57) = v54;
        v45 = v57;

        v46 = *(v3 + 56);
        v47 = *(v46 + 8 * v45);
        *(v46 + 8 * v45) = v55;
      }

      else
      {
        v59 = *(v3 + 16);
        if (v59 >= *(v3 + 24))
        {
          goto LABEL_64;
        }

        *(v3 + 64 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
        *(*(v3 + 48) + 8 * v57) = v54;
        *(*(v3 + 56) + 8 * v57) = v55;
        *(v3 + 16) = v59 + 1;
      }

      v42 = v49;
      v12 = v51;
    }
  }

  if (v2)
  {
    v4 = sub_29D5B49EC();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v6 = ~v14;
    v5 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v7 = v16 & *(a1 + 64);
    v8 = a1;
  }

  v17 = (v6 + 64) >> 6;
  v18 = v3 + 64;

  v19 = 0;
  v60 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v29 = sub_29D5B4A1C();
    if (!v29)
    {
      goto LABEL_60;
    }

    v62 = v29;
    sub_29D48F51C(0, &qword_2A17A3CA8);
    swift_dynamicCast();
    sub_29D48F51C(0, &qword_2A1A16378);
    swift_dynamicCast();
    v28 = v62;
    v27 = v64;
    v22 = v19;
    v24 = v7;
    if (!v64)
    {
      goto LABEL_60;
    }

LABEL_29:
    v30 = sub_29D5B464C();
    v31 = -1 << *(v3 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      do
      {
        if (++v33 == v35 && (v34 & 1) != 0)
        {
          __break(1u);
          goto LABEL_62;
        }

        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v33);
      }

      while (v37 == -1);
      v20 = __clz(__rbit64(~v37)) + (v33 << 6);
    }

    *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v3 + 48) + 8 * v20) = v27;
    *(*(v3 + 56) + 8 * v20) = v28;
    ++*(v3 + 16);
    v19 = v22;
    v7 = v24;
    v8 = v60;
  }

  v21 = v7;
  v22 = v19;
  if (v7)
  {
LABEL_25:
    v24 = (v21 - 1) & v21;
    v25 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v26 = *(*(v8 + 56) + v25);
    v27 = *(*(v8 + 48) + v25);
    v28 = v26;
    if (!v27)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v23 = v19;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      goto LABEL_60;
    }

    v21 = *(v5 + 8 * v22);
    ++v23;
    if (v21)
    {
      v8 = v60;
      goto LABEL_25;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_29D586710(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29D58A358();
    v2 = sub_29D5B4AAC();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
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
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_29D4C97AC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_29D4C97AC(v29, v30);
    result = sub_29D5B48AC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_29D4C97AC(v30, (*(v2 + 56) + 32 * v10));
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

void sub_29D5869CC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x29EDC3DB0];
  v6 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_29D5B359C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidAppear_, a1 & 1);
  sub_29D5B1E5C();
  v14 = sub_29D5B1E4C();
  v15 = qword_2A17A50B8;
  swift_beginAccess();
  sub_29D58A2E4(v2 + v15, v9, &qword_2A1A17300, v5, v6, sub_29D58A224);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    v17 = *MEMORY[0x29EDC3D98];
    (*(v11 + 104))(v13, *MEMORY[0x29EDC3D98], v10);
    if (v16(v9, 1, v10) != 1)
    {
      sub_29D58A3BC(v9, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = *MEMORY[0x29EDC3D98];
  }

  v18 = (*(v11 + 88))(v13, v10);
  if (v18 != v17 && v18 != *MEMORY[0x29EDC3DA0] && v18 != *MEMORY[0x29EDC3DA8])
  {
    (*(v11 + 8))(v13, v10);
  }

  sub_29D5B1E2C();
}

void sub_29D586D10(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D5869CC(a3);
}

void sub_29D586D64(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v55 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v52 = &v47 - v4;
  v5 = sub_29D5B200C();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D58A224(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], v2);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v49 = &v47 - v8;
  v9 = sub_29D5B282C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v47 - v14;
  v16 = MEMORY[0x29EDC4240];
  sub_29D58A224(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v47 - v21;
  sub_29D58A224(0, &qword_2A17A50F8, MEMORY[0x29EDC4260], v2);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v25 = &v47 - v24;
  sub_29D58A2E4(v55, v22, &qword_2A17A3FE0, v16, v2, sub_29D58A224);
  v26 = *(v10 + 48);
  v27 = 1;
  if (v26(v22, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v22, v9);
    (*(v10 + 16))(v13, v15, v9);
    sub_29D5B290C();
    (*(v10 + 8))(v15, v9);
    v27 = 0;
  }

  v28 = sub_29D5B28FC();
  (*(*(v28 - 8) + 56))(v25, v27, 1, v28);
  sub_29D5B22EC();
  v29 = MEMORY[0x29EDC9C68];
  sub_29D58A3BC(v25, &qword_2A17A50F8, MEMORY[0x29EDC4260], MEMORY[0x29EDC9C68], sub_29D58A224);
  sub_29D58A2E4(v55, v20, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v29, sub_29D58A224);
  if (v26(v20, 1, v9) == 1)
  {
    sub_29D58A3BC(v20, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
    v30 = v54;
LABEL_7:
    v37 = sub_29D5B0EFC();
    v38 = v49;
    (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
    v39 = v48;
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    (*(v50 + 8))(v39, v51);
    sub_29D58A3BC(v38, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D58A224);
    v40 = sub_29D5B3E1C();

    [v30 setTitle_];

    v36 = MEMORY[0x29EDC3D98];
    goto LABEL_8;
  }

  v31 = sub_29D5B27FC();
  (*(v10 + 8))(v20, v9);
  v30 = v54;
  if (v31 != 6)
  {
    goto LABEL_7;
  }

  v32 = sub_29D5B0EFC();
  v33 = v49;
  (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
  v34 = v48;
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v50 + 8))(v34, v51);
  sub_29D58A3BC(v33, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D58A224);
  v35 = sub_29D5B3E1C();

  [v30 setTitle_];

  v36 = MEMORY[0x29EDC3DA0];
LABEL_8:
  v41 = *v36;
  v42 = sub_29D5B359C();
  v43 = *(v42 - 8);
  v44 = v52;
  (*(v43 + 104))(v52, v41, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = qword_2A17A50B8;
  swift_beginAccess();
  sub_29D58A41C(v44, v30 + v45);
  swift_endAccess();
  v46 = sub_29D5B22DC();
  [v46 addTarget:v30 action:sel_didTapAction forControlEvents:64];
}

uint64_t sub_29D587620()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v51 = &v49 - v6;
  v7 = sub_29D5B0EDC();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v49 = v9;
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v61 = &v49 - v10;
  sub_29D58A224(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v4);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v57 = &v49 - v12;
  v13 = sub_29D5B282C();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v58 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC3DB0];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v4);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v49 - v17;
  v19 = sub_29D5B359C();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1E5C();
  v23 = sub_29D5B1E4C();
  v24 = qword_2A17A50B8;
  swift_beginAccess();
  sub_29D58A2E4(v1 + v24, v18, &qword_2A1A17300, v15, v4, sub_29D58A224);
  v25 = *(v20 + 48);
  if (v25(v18, 1, v19) == 1)
  {
    v26 = *MEMORY[0x29EDC3D98];
    (*(v20 + 104))(v22, *MEMORY[0x29EDC3D98], v19);
    if (v25(v18, 1, v19) != 1)
    {
      sub_29D58A3BC(v18, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v26 = *MEMORY[0x29EDC3D98];
  }

  v27 = (*(v20 + 88))(v22, v19);
  if (v27 != v26 && v27 != *MEMORY[0x29EDC3DA0] && v27 != *MEMORY[0x29EDC3DA8])
  {
    (*(v20 + 8))(v22, v19);
  }

  sub_29D5B1E2C();

  v28 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v29 = v57;
  sub_29D58A2E4(v1 + v28, v57, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
  v30 = v59;
  v31 = v60;
  if ((*(v59 + 48))(v29, 1, v60) == 1)
  {
    sub_29D58A3BC(v29, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
    v32 = v54;
    sub_29D5B36DC();
    v33 = sub_29D5B370C();
    v34 = sub_29D5B427C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_29D48C000, v33, v34, "Tapped on tile while context.userData was unavailable", v35, 2u);
      MEMORY[0x29ED5FB80](v35, -1, -1);
    }

    return (*(v55 + 8))(v32, v56);
  }

  else
  {
    (*(v30 + 32))(v58, v29, v31);
    v37 = v61;
    sub_29D5B280C();
    v38 = sub_29D5B410C();
    v39 = v51;
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    v40 = v52;
    v41 = v50;
    v42 = v37;
    v43 = v53;
    (*(v52 + 16))(v50, v42, v53);
    sub_29D5B40EC();
    v44 = v1;
    v45 = sub_29D5B40DC();
    v46 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v47 = swift_allocObject();
    v48 = MEMORY[0x29EDCA390];
    *(v47 + 2) = v45;
    *(v47 + 3) = v48;
    *(v47 + 4) = v44;
    (*(v40 + 32))(&v47[v46], v41, v43);
    sub_29D57657C(0, 0, v39, &unk_29D5BB3A0, v47);

    (*(v40 + 8))(v61, v43);
    return (*(v30 + 8))(v58, v31);
  }
}

uint64_t sub_29D587EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_29D5B0EDC();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_29D5B371C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_29D5B40EC();
  v5[19] = sub_29D5B40DC();
  v9 = sub_29D5B40CC();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2A1C73D48](sub_29D587FF0, v9, v8);
}

uint64_t sub_29D587FF0()
{
  v1 = v0[11];
  sub_29D5B1CBC();
  v2 = sub_29D5B1C8C();
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  v4 = sub_29D58A2E4(v1 + v3, (v0 + 2), &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v5 = v0[5];
  if (v5)
  {
    v6 = sub_29D499EC0(v0 + 2, v0[5]);
    v7 = *(v5 - 8);
    v8 = swift_task_alloc();
    (*(v7 + 16))(v8, v6, v5);
    v9 = sub_29D5B314C();
    (*(v7 + 8))(v8, v5);
    v10 = sub_29D5B1C9C();
    v0[22] = v10;

    sub_29D48F668((v0 + 2));
    sub_29D5B227C();
    swift_allocObject();
    v11 = v10;
    v0[23] = sub_29D5B225C();
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_29D588234;
    v4 = v0[12];
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C65E50](v4);
}

uint64_t sub_29D588234(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 168);
  v6 = *(v3 + 160);
  if (v1)
  {
    v7 = sub_29D58877C;
  }

  else
  {
    v7 = sub_29D588378;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29D588378()
{
  if ([*(v0 + 200) wantsGatewayUpgrade])
  {
    v1 = swift_task_alloc();
    *(v0 + 216) = v1;
    *v1 = v0;
    v1[1] = sub_29D5884A4;
    v2 = *(v0 + 200);
    v3 = *(v0 + 88);

    return MEMORY[0x2A1C65E70](v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_29D58865C;
    v5 = *(v0 + 200);
    v6 = *(v0 + 88);

    return MEMORY[0x2A1C65E58](v5, v6);
  }
}

uint64_t sub_29D5884A4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2A1C73D48](sub_29D5885C4, v3, v2);
}

uint64_t sub_29D5885C4()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D58865C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2A1C73D48](sub_29D58A6F4, v3, v2);
}

uint64_t sub_29D58877C()
{
  v38 = v0;
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];

  sub_29D5B36CC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_29D5B370C();
  v8 = sub_29D5B427C();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[26];
    v33 = v0[22];
    v34 = v0[17];
    v9 = v0[15];
    v35 = v0[16];
    v36 = v0[18];
    v10 = v0[13];
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315394;
    sub_29D58A5A8(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
    v14 = sub_29D5B4C4C();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_29D501890(v14, v16, &v37);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v0[10] = v32;
    v18 = v32;
    sub_29D4A02FC(0, &qword_2A1A1A410);
    v19 = sub_29D5B3E7C();
    v21 = sub_29D501890(v19, v20, &v37);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_29D48C000, v7, v8, "AccountStatusReloginSummaryTileFeedItemViewController failed to fetch account %s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v13, -1, -1);
    MEMORY[0x29ED5FB80](v12, -1, -1);

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v22 = v0[26];
    v23 = v0[22];
    v25 = v0[17];
    v24 = v0[18];
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[13];
    v29 = v0[14];

    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[1];

  return v30();
}

void sub_29D588A88(void *a1)
{
  v1 = a1;
  sub_29D587620();
}

uint64_t sub_29D588AD0()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v87 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v86 = &v78 - v6;
  v7 = sub_29D5B359C();
  v88 = *(v7 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v85 = &v78 - v11;
  v84 = sub_29D5B0EDC();
  v83 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D58A224(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v89 = (&v78 - v14);
  v92 = sub_29D5B282C();
  v91 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v90 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29D5B371C();
  v16 = *(v93 - 1);
  v17 = MEMORY[0x2A1C7C4A8](v93);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v81 = &v78 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v78 - v22;
  v24 = sub_29D5B2C2C();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D58A2E4(v1 + v28, &v94, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v95)
  {
    v79 = v10;
    v80 = v7;
    sub_29D497868(&v94, v96);
    sub_29D499EC0(v96, v96[3]);
    sub_29D5B315C();
    if ((*(v25 + 88))(v27, v24) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v96);
      sub_29D5B36DC();
      v29 = sub_29D5B370C();
      v30 = sub_29D5B429C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_29D48C000, v29, v30, "User dismissed AccountStatus tile", v31, 2u);
        MEMORY[0x29ED5FB80](v31, -1, -1);
      }

      v32 = *(v16 + 8);
      v33 = v93;
      v32(v23, v93);
      v34 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
      swift_beginAccess();
      v35 = v89;
      sub_29D58A2E4(v1 + v34, v89, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
      v36 = v91;
      v37 = v92;
      if ((*(v91 + 48))(v35, 1, v92) == 1)
      {
        sub_29D58A3BC(v35, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68], sub_29D58A224);
        v38 = v81;
        sub_29D5B36DC();
        v39 = sub_29D5B370C();
        v40 = sub_29D5B427C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_29D48C000, v39, v40, "Tapped on tile dismissal while context.userData was unavailable", v41, 2u);
          MEMORY[0x29ED5FB80](v41, -1, -1);
        }

        return (v32)(v38, v33);
      }

      else
      {
        (*(v36 + 32))(v90, v35, v37);
        sub_29D58A224(0, &qword_2A17A50E0, sub_29D58A288, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29D5B5E20;
        *(inited + 32) = sub_29D5B28CC();
        *(inited + 40) = v49;
        v50 = v82;
        sub_29D5B280C();
        v51 = sub_29D5B0E8C();
        v53 = v52;
        (*(v83 + 8))(v50, v84);
        *(inited + 48) = v51;
        *(inited + 56) = v53;
        *(inited + 64) = sub_29D5B28BC();
        *(inited + 72) = v54;
        v55 = qword_2A17A50B8;
        swift_beginAccess();
        v56 = v86;
        sub_29D58A2E4(v1 + v55, v86, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
        v57 = v88;
        v58 = *(v88 + 48);
        v59 = v80;
        v60 = v58(v56, 1, v80);
        v93 = v58;
        if (v60 == 1)
        {
          v61 = v85;
          (*(v57 + 104))(v85, *MEMORY[0x29EDC3D98], v59);
          if (v58(v56, 1, v59) != 1)
          {
            sub_29D58A3BC(v56, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
          }
        }

        else
        {
          v61 = v85;
          (*(v57 + 32))(v85, v56, v59);
        }

        v62 = sub_29D5B358C();
        v63 = v61;
        v65 = v64;
        v89 = *(v57 + 8);
        (v89)(v63, v59);
        *(inited + 80) = v62;
        *(inited + 88) = v65;
        v66 = sub_29D57ACC4(inited);
        swift_setDeallocating();
        sub_29D58A288();
        swift_arrayDestroy();
        sub_29D48F51C(0, &qword_2A17A43D8);
        v67 = sub_29D5B430C();
        sub_29D5B443C();
        sub_29D586710(v66);

        v68 = objc_allocWithZone(sub_29D5B2AEC());
        v69 = v80;
        v70 = sub_29D5B2ADC();
        [v67 addOperation_];

        sub_29D5B1E5C();
        v71 = sub_29D5B1E4C();
        v72 = v87;
        sub_29D58A2E4(v1 + v55, v87, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
        v73 = v93;
        if ((v93)(v72, 1, v69) == 1)
        {
          v74 = *MEMORY[0x29EDC3D98];
          v75 = v79;
          (*(v57 + 104))(v79, *MEMORY[0x29EDC3D98], v69);
          if (v73(v72, 1, v69) != 1)
          {
            sub_29D58A3BC(v72, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
          }

          v57 = v88;
        }

        else
        {
          v75 = v79;
          (*(v57 + 32))(v79, v72, v69);
          v74 = *MEMORY[0x29EDC3D98];
        }

        v76 = (*(v57 + 88))(v75, v69);
        if (v76 == v74)
        {
          v77 = v92;
        }

        else
        {
          v77 = v92;
          if (v76 != *MEMORY[0x29EDC3DA0] && v76 != *MEMORY[0x29EDC3DA8])
          {
            (v89)(v75, v69);
          }
        }

        sub_29D5B1E2C();

        return (*(v91 + 8))(v90, v77);
      }
    }

    (*(v25 + 8))(v27, v24);
    sub_29D48F668(v96);
  }

  else
  {
    sub_29D58A3BC(&v94, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  }

  sub_29D5B36DC();
  v43 = sub_29D5B370C();
  v44 = sub_29D5B427C();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v93;
  if (v45)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_29D48C000, v43, v44, "didTapDismiss invoked for tile without a dismiss button!", v47, 2u);
    MEMORY[0x29ED5FB80](v47, -1, -1);
  }

  return (*(v16 + 8))(v19, v46);
}

uint64_t sub_29D5898BC()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D58A2E4(v0 + v5, &v8, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v9)
  {
    sub_29D497868(&v8, v10);
    sub_29D499EC0(v10, v10[3]);
    sub_29D5B315C();
    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v10);
      return 1;
    }

    (*(v2 + 8))(v4, v1);
    sub_29D48F668(v10);
  }

  else
  {
    sub_29D58A3BC(&v8, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  }

  return 0;
}

id sub_29D589AAC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = qword_2A17A50B8;
  v8 = sub_29D5B359C();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[qword_2A17A50C0];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = qword_2A17ABFC8;
  v11 = *MEMORY[0x29EDC1E68];
  v12 = sub_29D5B2CAC();
  (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
  v3[qword_2A17ABFD0] = 1;
  if (a2)
  {
    v13 = sub_29D5B3E1C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_29D589C10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D589AAC(v5, v7, a4);
}

id sub_29D589C70(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_2A17A50B8;
  v5 = sub_29D5B359C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[qword_2A17A50C0];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = qword_2A17ABFC8;
  v8 = *MEMORY[0x29EDC1E68];
  v9 = sub_29D5B2CAC();
  (*(*(v9 - 8) + 104))(&v1[v7], v8, v9);
  v1[qword_2A17ABFD0] = 1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_29D589DD0()
{
  sub_29D58A3BC(v0 + qword_2A17A50B8, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
  sub_29D58A3BC(v0 + qword_2A17A50C0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218], sub_29D4A02A4);
  v1 = qword_2A17ABFC8;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D589EC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D589F00(uint64_t a1)
{
  sub_29D58A3BC(a1 + qword_2A17A50B8, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68], sub_29D58A224);
  sub_29D58A3BC(a1 + qword_2A17A50C0, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218], sub_29D4A02A4);
  v2 = qword_2A17ABFC8;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for AccountStatusReloginSummaryTileFeedItemViewController()
{
  result = qword_2A17A50C8;
  if (!qword_2A17A50C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D58A048()
{
  sub_29D58A224(319, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D5B2CAC();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_29D58A160@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABFC8;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D58A224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D58A288()
{
  if (!qword_2A17A50E8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A50E8);
    }
  }
}

uint64_t sub_29D58A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29D58A358()
{
  if (!qword_2A17A50F0)
  {
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A50F0);
    }
  }
}

uint64_t sub_29D58A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D58A41C(uint64_t a1, uint64_t a2)
{
  sub_29D58A224(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D58A4B0(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D587EA0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_29D58A5A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D58A5F0()
{
  if (!qword_2A17A5100)
  {
    sub_29D48F51C(255, &qword_2A1A19660);
    sub_29D48F51C(255, &qword_2A1A16378);
    sub_29D58A68C();
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5100);
    }
  }
}

unint64_t sub_29D58A68C()
{
  result = qword_2A1A19658;
  if (!qword_2A1A19658)
  {
    sub_29D48F51C(255, &qword_2A1A19660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19658);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController()
{
  result = qword_2A1A173B0;
  if (!qword_2A1A173B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D58A790()
{
  v1 = sub_29D5B3E5C();

  MEMORY[0x29ED5E510](0xD000000000000025, 0x800000029D5BED50);

  return v1;
}

uint64_t (*sub_29D58A808(uint64_t *a1))()
{
  v4 = sub_29D5B3E5C();
  v5 = v2;

  MEMORY[0x29ED5E510](0xD000000000000025, 0x800000029D5BED50);

  *a1 = v4;
  a1[1] = v5;
  return sub_29D58A8A4;
}

id sub_29D58A8AC()
{
  v1 = qword_2A1A173C0;
  v2 = *(v0 + qword_2A1A173C0);
  if (v2)
  {
    v3 = *(v0 + qword_2A1A173C0);
  }

  else
  {
    sub_29D58A910();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D58A910()
{
  v0 = *MEMORY[0x29EDC3DC8];
  sub_29D5B31FC();
  v1 = v9;
  if (v9)
  {
    v2 = sub_29D499EC0(v8, v9);
    v3 = *(v1 - 8);
    MEMORY[0x2A1C7C4A8](v2);
    v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v5);
    v6 = sub_29D5B314C();
    (*(v3 + 8))(v5, v1);
    [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:3 domainName:v0 healthStore:v6];

    sub_29D48F668(v8);
  }

  else
  {

    __break(1u);
  }
}

void *sub_29D58AA7C()
{
  sub_29D58B420();
  v1 = v0;
  return v0;
}

void (*sub_29D58AAB0(void *a1))(id *a1)
{
  v3 = sub_29D58B420();
  *a1 = v1;
  a1[1] = v3;
  v4 = v1;
  return sub_29D4C76CC;
}

uint64_t sub_29D58AB04()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v20[-1] - v4;
  v6 = sub_29D58A8AC();
  sub_29D5B3E5C();
  v7 = sub_29D5B42EC();

  if (v7 == 2)
  {
    sub_29D5B36EC();
    v8 = sub_29D5B370C();
    v9 = sub_29D5B427C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136446466;
      v20[2] = ObjectType;
      swift_getMetatypeMetadata();
      v12 = sub_29D5B3E7C();
      v14 = sub_29D501890(v12, v13, v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = sub_29D5B3E5C();
      v17 = sub_29D501890(v15, v16, v20);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_29D48C000, v8, v9, "[%{public}s]: value for notification type %{public}s is nil", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v11, -1, -1);
      MEMORY[0x29ED5FB80](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_29D58AEE4(char a1)
{
  swift_getObjectType();
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v16 - v5;
  v7 = sub_29D58A8AC();
  sub_29D5B3E5C();
  sub_29D5B42FC();

  sub_29D5B36EC();
  v8 = sub_29D5B370C();
  v9 = sub_29D5B429C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446466;
    v12 = sub_29D5B4DFC();
    v14 = sub_29D501890(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&dword_29D48C000, v8, v9, "%{public}s Set CHR Notifications changes preference to %{BOOL}d", v10, 0x12u);
    sub_29D48F668(v11);
    MEMORY[0x29ED5FB80](v11, -1, -1);
    MEMORY[0x29ED5FB80](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_29D58B278(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    *&a1[qword_2A1A173C0] = 0;
    v6 = a4;
    v7 = sub_29D5B3E1C();
  }

  else
  {
    *&a1[qword_2A1A173C0] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D58B334(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A173C0] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D58B3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D58B420()
{
  result = qword_2A17A5108;
  if (!qword_2A17A5108)
  {
    type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A5108);
  }

  return result;
}

uint64_t sub_29D58B478(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_29D5B16BC();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_29D514C4C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_29D514C4C((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v21;
    *(v18 + 40) = v13;
  }

  while (v7 != v4);
  return v8;
}

char *sub_29D58B614(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x29EDCA190];
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_29D514C4C(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_29D514C4C((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_29D58B754(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v31 = sub_29D5B16BC();
  v5 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v28 = v5 + 16;
  v30 = (v5 + 8);
  v34 = a3;

  v14 = 0;
  v27 = MEMORY[0x29EDCA190];
  while (v11)
  {
    v15 = v31;
LABEL_11:
    (*(v5 + 16))(v7, *(v34 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v15);
    v29(&v32, v7);
    if (v3)
    {
      (*v30)(v7, v15);

LABEL_19:

      return v27;
    }

    v11 &= v11 - 1;
    result = (*v30)(v7, v15);
    v17 = v33;
    if (v33)
    {
      v26 = v32;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D514C4C(0, *(v27 + 2) + 1, 1, v27);
        v27 = result;
      }

      v19 = *(v27 + 2);
      v18 = *(v27 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = *(v27 + 2);
        v25 = v19 + 1;
        result = sub_29D514C4C((v18 > 1), v19 + 1, 1, v27);
        v19 = v24;
        v20 = v25;
        v27 = result;
      }

      v21 = v26;
      v22 = v27;
      *(v27 + 2) = v20;
      v23 = &v22[16 * v19];
      *(v23 + 4) = v21;
      *(v23 + 5) = v17;
    }
  }

  v15 = v31;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_29D58BA44(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B134C();
  v30 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v36 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = MEMORY[0x29EDCA190];
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (1)
    {
      if (v35)
      {
        v12 = MEMORY[0x29ED5EF30](v15, a3);
      }

      else
      {
        if (v15 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a3 + 8 * v15 + 32);
      }

      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = v12;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_29D597004(v8, sub_29D4B4AD4);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_29D515230(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_29D515230(v21 > 1, v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v12;
    i = sub_29D5B485C();
  }

  return MEMORY[0x29EDCA190];
}

char *sub_29D58BDA8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_29D5967A0(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0EDC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x29EDCA190];
  }

  v15 = *(type metadata accessor for LabNameWithDate(0) - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x29EDCA190];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_29D597004(v8, sub_29D5967A0);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_29D5153E8(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_29D5153E8(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_29D58C0FC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v37 = a2;
  sub_29D4B4AD4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B134C();
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v36 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v33 = &v30 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x29EDCA190];
  }

  v17 = v14;
  v18 = *(a4(0) - 8);
  v32 = v17;
  v34 = (v17 + 32);
  v35 = (v17 + 48);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v38 = MEMORY[0x29EDCA190];
  v30 = v11;
  v31 = a1;
  while (1)
  {
    a1(v19);
    if (v4)
    {
      break;
    }

    if ((*v35)(v10, 1, v11) == 1)
    {
      sub_29D597004(v10, sub_29D4B4AD4);
    }

    else
    {
      v21 = v20;
      v22 = v33;
      v23 = *v34;
      (*v34)(v33);
      (v23)(v36, v22, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_29D515230(0, v38[2] + 1, 1, v38);
      }

      v25 = v38[2];
      v24 = v38[3];
      v26 = v32;
      if (v25 >= v24 >> 1)
      {
        v28 = sub_29D515230(v24 > 1, v25 + 1, 1, v38);
        v26 = v32;
        v38 = v28;
      }

      v27 = v38;
      v38[2] = v25 + 1;
      v11 = v30;
      (v23)(v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v36, v30);
      a1 = v31;
      v20 = v21;
    }

    v19 += v20;
    if (!--v16)
    {
      return v38;
    }
  }

  return v38;
}

uint64_t sub_29D58C444(uint64_t a1)
{
  result = MEMORY[0x29ED5E7A0](*(a1 + 16), MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_29D59AD10(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D58C560(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v22 - v9;
  sub_29D4D2828();
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_29D59683C(a2, v14, sub_29D4B4C4C);
  sub_29D59683C(a1, &v14[v15], sub_29D4B4C4C);
  v16 = *(v5 + 48);
  LODWORD(a1) = v16(v14, 1, v4);
  v17 = v16(&v14[v15], 1, v4);
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      sub_29D597004(&v14[v15], sub_29D4B4C4C);
      v18 = 1;
    }
  }

  else if (v17 == 1)
  {
    (*(v5 + 8))(v14, v4);
    v18 = 0;
  }

  else
  {
    v19 = *(v5 + 32);
    v19(v10, v14, v4);
    v19(v8, &v14[v15], v4);
    sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
    v18 = sub_29D5B3DCC();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
  }

  return v18 & 1;
}

uint64_t sub_29D58C810(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a1;
  v32 = a2;
  v6 = type metadata accessor for AccountNewRecordsData(0);
  v30 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v33 = a3;

  v15 = 0;
  v16 = MEMORY[0x29EDCA190];
  for (i = v8; ; v8 = i)
  {
    v35 = v16;
    if (!v12)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v13)
        {
          goto LABEL_26;
        }

        v12 = *(v9 + 8 * v17);
        ++v15;
        if (v12)
        {
          v15 = v17;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

LABEL_11:
    sub_29D59683C(*(v33 + 56) + *(v30 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v8, type metadata accessor for AccountNewRecordsData);
    v31(&v36, v8);
    if (v4)
    {
      break;
    }

    v34 = 0;
    result = sub_29D597004(v8, type metadata accessor for AccountNewRecordsData);
    v18 = v36;
    v19 = *(v36 + 16);
    v16 = v35;
    v20 = v35[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v21 <= v16[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v16 = sub_29D515934(isUniquelyReferenced_nonNull_native, v23, 1, v16);
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    v24 = (v16[3] >> 1) - v16[2];
    result = type metadata accessor for LabNameWithDate(0);
    if (v24 < v19)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v25 = v16[2];
      v26 = __OFADD__(v25, v19);
      v27 = v25 + v19;
      if (v26)
      {
        goto LABEL_31;
      }

      v16[2] = v27;
    }

LABEL_5:
    v12 &= v12 - 1;
    v4 = v34;
  }

  sub_29D597004(v8, type metadata accessor for AccountNewRecordsData);

LABEL_26:

  return v35;
}

uint64_t sub_29D58CB0C()
{
  sub_29D594128();
  v2 = *(v1 - 8);
  v140 = v1;
  v141 = v2;
  MEMORY[0x2A1C7C4A8](v1);
  v139 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D595170();
  v136 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v135 = (&v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v130 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5952CC();
  v126 = v8;
  v128 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v122 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D595050();
  v131 = v10;
  v132 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v124 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594FBC();
  v13 = *(v12 - 8);
  v133 = v12;
  v134 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v127 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594F10();
  v16 = *(v15 - 8);
  v137 = v15;
  v138 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v129 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D59483C();
  v146 = v18;
  v151 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v106 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5945F4();
  v112 = v20;
  v113 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v108 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5943E8();
  v114 = v22;
  v115 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v109 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594354();
  v116 = v24;
  v117 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v110 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5942A8();
  v118 = v26;
  v119 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v111 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594214();
  v123 = v28;
  v125 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v148 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FEF8C();
  v97 = v30;
  v98 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D594BA8();
  v101 = v33;
  v102 = *(v33 - 1);
  MEMORY[0x2A1C7C4A8](v33);
  v99 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D59497C();
  v103 = v35;
  v104 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v100 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5948D0();
  v144 = v37;
  v121 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v150 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D5B23CC();
  v40 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C17A4();
  v145 = v43;
  v120 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v147 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v0 + 16);
  v46 = [v45 healthStore];
  sub_29D5B26AC();
  swift_allocObject();
  v143 = sub_29D5B269C();
  (*(v40 + 104))(v42, *MEMORY[0x29EDC41B8], v39);
  v47 = sub_29D5B268C();
  (*(v40 + 8))(v42, v39);
  v152 = v47;
  sub_29D4C188C(0);
  sub_29D4C1354();
  v142 = MEMORY[0x29EDB8A00];
  sub_29D597120(&qword_2A1A16880, sub_29D4C188C);
  sub_29D597120(&qword_2A1A16870, sub_29D4C1354);
  v149 = v0;

  sub_29D5B3B8C();

  v48 = [v45 healthStore];
  sub_29D5B233C();
  swift_allocObject();
  v49 = sub_29D5B232C();
  v50 = [v45 healthStore];
  v51 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  *(swift_allocObject() + 16) = v51;
  v52 = MEMORY[0x29EDB8AD0];
  sub_29D5953B8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  sub_29D594E20(&qword_2A1A165A0, &qword_2A1A16598, v52);
  v107 = v51;
  sub_29D5B3A9C();
  sub_29D597120(&qword_2A1A16520, sub_29D4FEF8C);
  v53 = v97;
  v54 = sub_29D5B3B1C();
  (*(v98 + 8))(v32, v53);
  v152 = v54;
  sub_29D5B396C();
  v55 = MEMORY[0x29EDB89F8];
  sub_29D5953B8(0, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
  sub_29D48F51C(0, &qword_2A1A19640);
  sub_29D594CB4();
  sub_29D594E20(&qword_2A1A16730, &qword_2A1A16728, v55);
  v97 = MEMORY[0x29EDB89C0];
  sub_29D597120(&qword_2A1A168F0, sub_29D594CB4);
  v56 = v99;
  sub_29D5B3BFC();

  v57 = swift_allocObject();
  *(v57 + 16) = v149;
  *(v57 + 24) = v49;
  v105 = v49;

  sub_29D5B396C();
  sub_29D594B24(0);
  v58 = MEMORY[0x29EDB89A8];
  sub_29D597120(&qword_2A1A169C0, sub_29D594BA8);
  sub_29D597120(&qword_2A1A16860, sub_29D594B24);
  v59 = v100;
  v60 = v101;
  sub_29D5B3BEC();

  (*(v102 + 8))(v56, v60);
  v152 = MEMORY[0x29EDCA198];
  sub_29D594E64();
  sub_29D597120(&qword_2A1A16A10, sub_29D59497C);
  v61 = v103;
  sub_29D5B3BBC();
  (*(v104 + 8))(v59, v61);
  v152 = sub_29D57A898(MEMORY[0x29EDCA190]);
  v103 = sub_29D597120(&qword_2A1A16C68, sub_29D5948D0);
  v62 = v106;
  sub_29D5B3B4C();

  sub_29D5B396C();
  sub_29D5946E0();
  v104 = MEMORY[0x29EDB88C8];
  v102 = sub_29D597120(&qword_2A1A17028, sub_29D59483C);
  sub_29D597120(&qword_2A1A16910, sub_29D5946E0);
  v63 = v108;
  v64 = v146;
  sub_29D5B3C6C();
  v65 = *(v151 + 8);
  v151 += 8;
  v101 = v65;
  v65(v62, v64);
  v66 = swift_allocObject();
  *(v66 + 16) = v143;
  *(v66 + 24) = v149;

  sub_29D5B396C();
  sub_29D5944D4();
  v98 = v58;
  sub_29D597120(&qword_2A1A169D0, sub_29D5945F4);
  v100 = MEMORY[0x29EDB8870];
  sub_29D597120(&qword_2A1A17250, sub_29D5944D4);
  v67 = v109;
  v68 = v112;
  sub_29D5B3C6C();

  (*(v113 + 8))(v63, v68);
  sub_29D597120(&qword_2A1A16A30, sub_29D5943E8);
  v69 = v110;
  v70 = v114;
  sub_29D5B3BAC();
  (*(v115 + 8))(v67, v70);
  type metadata accessor for AccountNewRecordsData(0);
  sub_29D597120(&qword_2A1A16C88, sub_29D594354);
  v71 = v111;
  v72 = v116;
  sub_29D5B3B7C();
  (*(v117 + 8))(v69, v72);
  v117 = MEMORY[0x29EDB8908];
  sub_29D597120(&qword_2A1A16E78, sub_29D5942A8);
  v73 = v118;
  sub_29D5B3BDC();
  (*(v119 + 8))(v71, v73);
  v74 = MEMORY[0x29EDCA190];
  v152 = sub_29D57A898(MEMORY[0x29EDCA190]);
  sub_29D5B3B4C();

  sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4);
  v75 = v122;
  v76 = v146;
  sub_29D5B3B6C();
  v101(v62, v76);
  v77 = swift_allocObject();
  *(v77 + 16) = sub_29D595AA4;
  *(v77 + 24) = v149;

  sub_29D5B396C();
  sub_29D59513C(0);
  sub_29D597120(&qword_2A1A17270, sub_29D5952CC);
  sub_29D597120(&qword_2A1A16700, sub_29D59513C);
  v78 = v124;
  v79 = v126;
  sub_29D5B3C5C();

  (*(v128 + 8))(v75, v79);
  v80 = sub_29D57A898(v74);
  v81 = sub_29D5B0E6C();
  v82 = v130;
  (*(*(v81 - 8) + 56))(v130, 1, 1, v81);
  v83 = v135;
  v84 = *(v136 + 72);
  *v135 = v74;
  *(v83 + 8) = v80;
  sub_29D596E38(v82, v83 + v84, sub_29D4B4C4C);
  sub_29D597120(&qword_2A1A16A80, sub_29D595050);
  v85 = v127;
  v86 = v131;
  sub_29D5B3B4C();
  sub_29D597004(v83, sub_29D595170);
  (*(v132 + 8))(v78, v86);
  type metadata accessor for AllAccountsLabRecordsData(0);
  sub_29D597120(&qword_2A1A17018, sub_29D594FBC);
  v87 = v129;
  v88 = v133;
  sub_29D5B3B7C();
  (*(v134 + 8))(v85, v88);
  sub_29D597120(&qword_2A1A16B30, sub_29D594214);
  sub_29D597120(&qword_2A1A16EA8, sub_29D594F10);
  v89 = v139;
  v90 = v123;
  v91 = v137;
  v92 = v148;
  sub_29D5B3B6C();
  sub_29D597120(&qword_2A1A17240, sub_29D594128);
  v93 = v140;
  v94 = sub_29D5B3B1C();

  (*(v141 + 8))(v89, v93);
  (*(v138 + 8))(v87, v91);
  (*(v125 + 8))(v92, v90);
  (*(v121 + 8))(v150, v144);
  (*(v120 + 8))(v147, v145);
  return v94;
}

uint64_t sub_29D58E370(void *a1)
{
  sub_29D596EA0();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *a1;
  sub_29D594D58(0, &qword_2A1A16420, &qword_2A1A19640);
  sub_29D594DB0();
  sub_29D5B3FEC();
  sub_29D4B3AF4();
  sub_29D5B391C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D58E4A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_29D59287C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountNewRecordsData(0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  sub_29D59683C(a2, v8, sub_29D59287C);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D597004(v8, sub_29D59287C);
    *a3 = v13;
  }

  else
  {
    sub_29D596E38(v8, v12, type metadata accessor for AccountNewRecordsData);
    sub_29D596FA0(0, &qword_2A17A5170, sub_29D57C2A4, MEMORY[0x29EDC9E90]);
    sub_29D57C2A4();
    v16 = v15 - 8;
    v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29D5B62A0;
    v19 = v18 + v17;
    v20 = *(v16 + 56);
    v21 = *v12;

    v22 = [v21 identifier];
    sub_29D5B0EBC();

    sub_29D59683C(v12, v19 + v20, type metadata accessor for AccountNewRecordsData);
    v23 = sub_29D57A898(v18);
    swift_setDeallocating();
    sub_29D597004(v19, sub_29D57C2A4);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13;
    sub_29D596920(v23, sub_29D5954A8, 0, isUniquelyReferenced_nonNull_native, &v27);

    v25 = v27;
    result = sub_29D597004(v12, type metadata accessor for AccountNewRecordsData);
    *a3 = v25;
  }

  return result;
}

uint64_t sub_29D58E800()
{
  sub_29D594790();
  sub_29D597120(&qword_2A1A164D0, sub_29D594790);
  return sub_29D5B3FEC();
}

uint64_t sub_29D58E88C@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a2;
  v26 = a1;
  v36 = a3;
  v33 = type metadata accessor for AccountNewRecordsData(0);
  MEMORY[0x2A1C7C4A8](v33);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5945C0(0);
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B23CC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C17A4();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B0EDC();
  v27 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*a1 identifier];
  sub_29D5B0EBC();

  (*(v17 + 16))(v11, v19, v16);
  (*(v9 + 104))(v11, *MEMORY[0x29EDC41D0], v8);
  v21 = sub_29D5B268C();
  (*(v9 + 8))(v11, v8);
  v37 = v21;
  sub_29D4C188C(0);
  sub_29D4C1354();
  sub_29D597120(&qword_2A1A16880, sub_29D4C188C);
  sub_29D597120(&qword_2A1A16870, sub_29D4C1354);

  sub_29D5B3B8C();

  sub_29D59683C(v26, v32, type metadata accessor for AccountNewRecordsData);
  v22 = v28;
  sub_29D5B3A2C();
  sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4);
  sub_29D597120(&qword_2A1A16618, sub_29D5945C0);
  v23 = v30;
  v24 = v34;
  sub_29D5B3B6C();
  (*(v35 + 8))(v22, v24);
  (*(v31 + 8))(v15, v23);
  return (*(v17 + 8))(v19, v27);
}

uint64_t sub_29D58ED94@<X0>(uint64_t *a1@<X1>, const char *a2@<X2>, uint64_t *a3@<X8>)
{
  v34 = a2;
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4C2378(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B371C();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();

  v16 = sub_29D5B370C();
  v17 = sub_29D5B427C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v9;
    v31 = v20;
    *v19 = 136446210;
    v37 = *a1;
    v38 = v20;
    sub_29D5967F8();
    v21 = sub_29D5B3E7C();
    v23 = v10;
    v24 = a3;
    v25 = sub_29D501890(v21, v22, &v38);

    *(v19 + 4) = v25;
    a3 = v24;
    v10 = v23;
    _os_log_impl(&dword_29D48C000, v16, v17, v34, v19, 0xCu);
    v26 = v31;
    sub_29D48F668(v31);
    v9 = v33;
    MEMORY[0x29ED5FB80](v26, -1, -1);
    v27 = v19;
    v12 = v32;
    MEMORY[0x29ED5FB80](v27, -1, -1);
  }

  (*(v35 + 8))(v15, v36);
  sub_29D5B0DAC();
  v28 = sub_29D5B0E6C();
  (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
  sub_29D5B3A2C();
  sub_29D597120(&qword_2A17A3DD8, sub_29D4C2378);
  v29 = sub_29D5B3B1C();
  result = (*(v10 + 8))(v12, v9);
  *a3 = v29;
  return result;
}

uint64_t sub_29D58F12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v23 - v9;
  sub_29D4D2828();
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for AccountNewRecordsData(0) + 24);
  v16 = *(v12 + 56);
  sub_29D59683C(a1, v14, sub_29D4B4C4C);
  sub_29D59683C(a2 + v15, &v14[v16], sub_29D4B4C4C);
  v17 = *(v5 + 48);
  LODWORD(a2) = v17(v14, 1, v4);
  v18 = v17(&v14[v16], 1, v4);
  if (a2 == 1)
  {
    if (v18 == 1)
    {
      v19 = 0;
    }

    else
    {
      sub_29D597004(&v14[v16], sub_29D4B4C4C);
      v19 = 1;
    }
  }

  else if (v18 == 1)
  {
    (*(v5 + 8))(v14, v4);
    v19 = 0;
  }

  else
  {
    v20 = *(v5 + 32);
    v20(v10, v14, v4);
    v20(v8, &v14[v16], v4);
    sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
    v19 = sub_29D5B3DCC();
    v21 = *(v5 + 8);
    v21(v8, v4);
    v21(v10, v4);
  }

  return v19 & 1;
}

uint64_t sub_29D58F3EC(uint64_t a1)
{
  sub_29D5968A4(0, &qword_2A17A5160, sub_29D4B4C4C, type metadata accessor for AccountNewRecordsData);
  v3 = a1 + *(v2 + 48);

  return sub_29D58F12C(a1, v3);
}

uint64_t sub_29D58F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  sub_29D4B4C4C(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29D595BAC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v13 = sub_29D58C810(sub_29D595C74, v23, a1);
  v22 = a2;
  v14 = sub_29D58BDA8(sub_29D595C90, v21, v13);

  sub_29D59683C(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D4B4C4C);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a1;
  sub_29D596E38(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, sub_29D4B4C4C);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_29D595C40(0);
  sub_29D597120(&qword_2A1A16590, sub_29D595C40);

  sub_29D5B3A8C();

  sub_29D597120(&qword_2A1A16510, sub_29D595BAC);
  v17 = sub_29D5B3B1C();
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_29D58F7D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v116 = a3;
  v136 = a2;
  sub_29D4D2828();
  v121 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v118 = &v107 - v9;
  v142 = sub_29D5B0E6C();
  v135 = *(v142 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v142);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v107 = &v107 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v108 = (&v107 - v16);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v107 - v17;
  sub_29D595B38();
  v143 = v19;
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v125 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = &v107 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v27 = &v107 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v131 = &v107 - v28;
  sub_29D4B4C4C(0);
  v30 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v112 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v115 = &v107 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v124 = &v107 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v38 = (&v107 - v37);
  v39 = MEMORY[0x2A1C7C4A8](v36);
  v130 = &v107 - v40;
  MEMORY[0x2A1C7C4A8](v39);
  v133 = &v107 - v41;
  v110 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v144 = v27;
    v132 = v24;
    v123 = v18;
    v117 = v12;
    v111 = a4;
    v122 = v38;
    if (i)
    {
      v27 = 0;
      v12 = a1 & 0xC000000000000001;
      v18 = (a1 & 0xFFFFFFFFFFFFFF8);
      v145 = MEMORY[0x29EDCA190];
      while (1)
      {
        if (v12)
        {
          v24 = a1;
          v43 = MEMORY[0x29ED5EF30](v27, a1);
        }

        else
        {
          if (v27 >= *(v18 + 2))
          {
            goto LABEL_56;
          }

          v24 = a1;
          v43 = *(a1 + 8 * v27 + 32);
        }

        a4 = v43;
        v44 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_55;
        }

        v45 = sub_29D5B453C();
        v38 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_29D514C4C(0, *(v145 + 2) + 1, 1, v145);
        }

        v48 = *(v145 + 2);
        v47 = *(v145 + 3);
        a4 = (v48 + 1);
        if (v48 >= v47 >> 1)
        {
          v145 = sub_29D514C4C((v47 > 1), v48 + 1, 1, v145);
        }

        v49 = v145;
        *(v145 + 2) = a4;
        v50 = &v49[16 * v48];
        *(v50 + 4) = v45;
        *(v50 + 5) = v38;
        ++v27;
        a1 = v24;
        if (v44 == i)
        {
          goto LABEL_17;
        }
      }
    }

    v145 = MEMORY[0x29EDCA190];
LABEL_17:
    v109 = a1;
    a1 = v135 + 56;
    v18 = v133;
    v126 = *(v135 + 56);
    v126(v133, 1, 1, v142);
    v51 = v136 + 64;
    v52 = 1 << *(v136 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v12 = v53 & *(v136 + 64);
    a4 = ((v52 + 63) >> 6);
    v129 = (a1 - 8);
    v134 = (a1 - 24);
    v120 = (a1 - 40);
    v135 = a1;
    v119 = a1 - 48;

    v54 = 0;
    v127 = a4;
    v128 = v51;
    if (v12)
    {
      while (1)
      {
        while (1)
        {
LABEL_27:
          v56 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
          v57 = v56 | (v54 << 6);
          v58 = v136;
          v59 = *(v136 + 48);
          v60 = sub_29D5B0EDC();
          v61 = *(v60 - 8);
          v62 = v131;
          v61[2](v131, v59 + v61[9] * v57, v60);
          v63 = *(v58 + 56);
          v64 = v61;
          v65 = type metadata accessor for AccountNewRecordsData(0);
          v66 = v63 + *(*(v65 - 8) + 72) * v57;
          v67 = v143;
          v68 = *(v143 + 48);
          sub_29D59683C(v66, &v62[v68], type metadata accessor for AccountNewRecordsData);
          v69 = *(v67 + 48);
          v70 = v144;
          v64[4](v144, v62, v60);
          sub_29D596E38(&v62[v68], v70 + v69, type metadata accessor for AccountNewRecordsData);
          v71 = v132;
          sub_29D59683C(v70, v132, sub_29D595B38);
          v72 = v71 + *(v67 + 48);
          v138 = v65;
          v73 = v130;
          sub_29D59683C(v72 + *(v65 + 24), v130, sub_29D4B4C4C);
          sub_29D597004(v72, type metadata accessor for AccountNewRecordsData);
          v74 = v71;
          v75 = v129;
          v38 = *v129;
          a1 = v142;
          v76 = (*v129)(v73, 1, v142);
          v140 = v38;
          v141 = v64;
          v139 = v60;
          if (v76 == 1)
          {
            sub_29D597004(v73, sub_29D4B4C4C);
            v137 = v64[1];
            (v137)(v74, v60);
            v18 = v133;
            v27 = v75;
          }

          else
          {
            v85 = v123;
            v114 = *v134;
            v114(v123, v73, a1);
            v137 = v64[1];
            (v137)(v74, v60);
            v86 = v75;
            v87 = v122;
            (*v120)(v122, v85, a1);
            v126(v87, 0, 1, a1);
            v88 = *(v121 + 48);
            v24 = v118;
            sub_29D59683C(v87, v118, sub_29D4B4C4C);
            sub_29D59683C(v116, &v24[v88], sub_29D4B4C4C);
            if (v38(v24, 1, a1) == 1)
            {
              sub_29D597004(v87, sub_29D4B4C4C);
              (*v119)(v85, a1);
              v89 = v38(&v24[v88], 1, a1);
              v18 = v133;
              v27 = v86;
              if (v89 != 1)
              {
                sub_29D597004(&v118[v88], sub_29D4B4C4C);
LABEL_43:
                sub_29D597004(v144, sub_29D595B38);
                goto LABEL_22;
              }
            }

            else
            {
              v27 = v86;
              if (v38(&v24[v88], 1, a1) == 1)
              {
                sub_29D597004(v122, sub_29D4B4C4C);
                v90 = *v119;
                (*v119)(v123, a1);
                v90(v24, a1);
                v18 = v133;
              }

              else
              {
                v38 = v108;
                v95 = v114;
                v114(v108, v24, a1);
                v96 = &v24[v88];
                v24 = v107;
                v95(v107, v96, a1);
                sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
                v97 = sub_29D5B3DCC();
                v98 = *v119;
                (*v119)(v24, a1);
                v98(v38, a1);
                sub_29D597004(v122, sub_29D4B4C4C);
                v98(v123, a1);
                v18 = v133;
                if (v97)
                {
                  goto LABEL_43;
                }
              }
            }
          }

          v77 = v144;
          v24 = v125;
          sub_29D59683C(v144, v125, sub_29D595B38);
          v78 = &v24[*(v143 + 48)];
          v79 = v124;
          sub_29D59683C(v78 + *(v138 + 24), v124, sub_29D4B4C4C);
          sub_29D597004(v78, type metadata accessor for AccountNewRecordsData);
          v38 = v140;
          if (v140(v79, 1, a1) != 1)
          {
            break;
          }

          sub_29D597004(v77, sub_29D595B38);
          sub_29D597004(v79, sub_29D4B4C4C);
          (v137)(v24, v139);
LABEL_22:
          a4 = v127;
          v51 = v128;
          if (!v12)
          {
            goto LABEL_23;
          }
        }

        v80 = v79;
        v81 = *v134;
        v82 = v117;
        (*v134)(v117, v80, a1);
        (v137)(v24, v139);
        v83 = v115;
        sub_29D59683C(v18, v115, sub_29D4B4C4C);
        if (v38(v83, 1, a1) == 1)
        {
          sub_29D597004(v144, sub_29D595B38);
          a1 = v83;
LABEL_32:
          sub_29D597004(a1, sub_29D4B4C4C);
LABEL_33:
          sub_29D597004(v18, sub_29D4B4C4C);
          v84 = v142;
          v81(v18, v82, v142);
          v126(v18, 0, 1, v84);
          goto LABEL_22;
        }

        v141 = v81;
        sub_29D597004(v83, sub_29D4B4C4C);
        v91 = v82;
        v92 = v112;
        (*v120)(v112, v91, a1);
        v126(v92, 0, 1, a1);
        v24 = v113;
        v93 = a1;
        a1 = &v113[*(v121 + 48)];
        sub_29D59683C(v18, v113, sub_29D4B4C4C);
        sub_29D59683C(v92, a1, sub_29D4B4C4C);
        if (v38(v24, 1, v93) == 1)
        {
          break;
        }

        v99 = v38(a1, 1, v93);
        v100 = v119;
        v27 = v119 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v99 != 1)
        {
          v38 = v141;
          v141(v108, v113, v93);
          v24 = v107;
          v38(v107, a1, v93);
          sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
          v101 = v108;
          LODWORD(v140) = sub_29D5B3DCC();
          a1 = *v100;
          (*v100)(v24, v93);
          v102 = v93;
          v81 = v38;
          (a1)(v101, v102);
          sub_29D597004(v112, sub_29D4B4C4C);
          sub_29D597004(v144, sub_29D595B38);
          v82 = v117;
          if (v140)
          {
            goto LABEL_33;
          }

          goto LABEL_47;
        }

        sub_29D597004(v112, sub_29D4B4C4C);
        sub_29D597004(v144, sub_29D595B38);
        a1 = *v100;
        (*v100)(v113, v93);
        a4 = v127;
        v82 = v117;
LABEL_48:
        (a1)(v82, v93);
        v51 = v128;
        if (!v12)
        {
          goto LABEL_23;
        }
      }

      sub_29D597004(v92, sub_29D4B4C4C);
      sub_29D597004(v144, sub_29D595B38);
      v94 = v38(a1, 1, v93);
      v82 = v117;
      v81 = v141;
      if (v94 != 1)
      {
        goto LABEL_32;
      }

      a1 = *v119;
      v27 = v119 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_47:
      v93 = v142;
      a4 = v127;
      goto LABEL_48;
    }

LABEL_23:
    v55 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
      break;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  if (v55 < a4)
  {
    v12 = *(v51 + 8 * v55);
    ++v54;
    if (v12)
    {
      v54 = v55;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v110)
  {
    v103 = sub_29D5B485C();
  }

  else
  {
    v103 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v111;
  *v111 = v103;
  v105 = type metadata accessor for AllAccountsLabRecordsData(0);
  result = sub_29D596E38(v18, v104 + *(v105 + 20), sub_29D4B4C4C);
  *(v104 + *(v105 + 24)) = v145;
  return result;
}