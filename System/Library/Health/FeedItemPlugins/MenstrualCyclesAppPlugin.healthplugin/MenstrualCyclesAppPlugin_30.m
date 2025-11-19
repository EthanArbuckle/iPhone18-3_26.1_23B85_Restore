void sub_29E1B28CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E1B291C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29E1B297C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_29E1B2A3C(void *a1)
{
  sub_29E1B4C98(0, &qword_2A181EDF0, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29DE966D4(a1, a1[3]);
  sub_29E1B4BC0();
  sub_29E2C4AA4();
  v9[15] = 0;
  sub_29E2BCC24();
  sub_29E1B4B30(&qword_2A181E7D0, MEMORY[0x29EDB9C08]);
  sub_29E2C48A4();
  if (!v1)
  {
    type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(0);
    v9[14] = 1;
    sub_29E2BCBB4();
    sub_29E1B4B30(&qword_2A1817ED8, MEMORY[0x29EDB9BC8]);
    sub_29E2C48A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E1B2C4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_29E2BCBB4();
  v22 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E2BCC24();
  v24 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B4C98(0, &qword_2A181EDE0, MEMORY[0x29EDC9E80]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E1B4BC0();
  sub_29E2C4A94();
  if (v2)
  {
    return sub_29DE93B3C(a1);
  }

  v21 = v10;
  v13 = v12;
  v15 = v24;
  v14 = v25;
  v31 = 0;
  sub_29E1B4B30(&qword_2A181E7E0, MEMORY[0x29EDB9C08]);
  v16 = v26;
  sub_29E2C4844();
  v17 = *(v15 + 32);
  v20 = v13;
  v17(v13, v16, v28);
  v30 = 1;
  sub_29E1B4B30(&qword_2A1817EF8, MEMORY[0x29EDB9BC8]);
  sub_29E2C4844();
  (*(v27 + 8))(v9, v29);
  v18 = v20;
  (*(v22 + 32))(v20 + *(v21 + 20), v5, v14);
  sub_29E1B4C34(v18, v23);
  sub_29DE93B3C(a1);
  return sub_29E1B4DF4(v18, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData);
}

uint64_t sub_29E1B3090()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x5555656C706D6173;
  }
}

uint64_t sub_29E1B30D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5555656C706D6173 && a2 == 0xEA00000000004449;
  if (v6 || (sub_29E2C4914() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029E304C60 == a2)
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

uint64_t sub_29E1B31C0(uint64_t a1)
{
  v2 = sub_29E1B4BC0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E1B31FC(uint64_t a1)
{
  v2 = sub_29E1B4BC0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E1B3268()
{
  if ((_s24MenstrualCyclesAppPlugin34ReviewPregnancyInMedicalIDUserDataV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return sub_29E2BCB34();
}

uint64_t sub_29E1B32D0()
{
  v1 = *v0;
  v34 = sub_29E2BF6C4();
  v33 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B4E74(0, &qword_2A181EDF8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 1);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v7;
    v15 = v14;
    v37 = v14;
    *v13 = 136315394;
    v35 = v1;
    swift_getMetatypeMetadata();
    v16 = sub_29E2C3464();
    v18 = sub_29DFAA104(v16, v17, &v37);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v35 = 0xD00000000000001CLL;
    v36 = 0x800000029E304C40;
    v19 = sub_29E2C3464();
    v21 = sub_29DFAA104(v19, v20, &v37);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%s] %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    (*(v8 + 8))(v10, v32);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_29E1B37BC(v6);
  sub_29E2BF414();
  sub_29E2BF694();
  v33 = *(v33 + 8);
  v22 = v34;
  (v33)(v3, v34);
  v23 = sub_29E2BE8F4();

  sub_29E2BDDC4();
  v32 = MEMORY[0x29ED7A580](v23);
  v24 = [objc_opt_self() standardConfiguration];
  [v24 setEntryPoint_];
  [v24 setShouldShowDonateLifeRegistrationIfAvailable_];
  [v24 setAccessPoint_];
  [v24 setShouldShowDoneButton_];
  v25 = v23;
  v26 = sub_29E2BDDA4();
  v27 = [objc_allocWithZone(MEMORY[0x29EDC5940]) initWithHealthStore:v25 medicalIDData:v26 displayConfiguration:v24];

  v28 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29E2BF414();
  v29 = sub_29E2BF6B4();
  (v33)(v3, v22);
  [v29 presentViewController:v28 animated:1 completion:0];

  sub_29E1B3E40(v6);
  return sub_29E1B4CFC(v6);
}

uint64_t sub_29E1B37BC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v34[1] = *v1;
  v2 = sub_29E2C0514();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v34[0] = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v35 = v34 - v5;
  v6 = type metadata accessor for ReviewPregnancyInMedicalIDUserData();
  v38 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BF6C4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v34 - v12;
  sub_29E2BF414();
  v14 = sub_29E2BF6A4();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    if (HKShowSensitiveLogItems())
    {
      v17 = v35;
      sub_29E2C04B4();

      v18 = sub_29E2C0504();
      v19 = sub_29E2C3A14();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v34[0] = swift_slowAlloc();
        v40 = v34[0];
        *v20 = 136315394;
        v21 = sub_29E2C4AE4();
        v23 = sub_29DFAA104(v21, v22, &v40);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        sub_29E2BF414();
        v24 = sub_29E2C3424();
        v25 = v17;
        v27 = sub_29DFAA104(v24, v26, &v40);

        *(v20 + 14) = v27;
        _os_log_impl(&dword_29DE74000, v18, v19, "[%s] Context contains nil user data: %s", v20, 0x16u);
        v28 = v34[0];
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v28, -1, -1);
        MEMORY[0x29ED82140](v20, -1, -1);

        (*(v36 + 8))(v25, v37);
      }

      else
      {

        (*(v36 + 8))(v17, v37);
      }
    }

    v32 = 1;
    v31 = v39;
    v29 = v6;
  }

  else
  {
    sub_29E2BC2B4();
    swift_allocObject();
    sub_29DF1DE4C(v14, v16);
    sub_29E2BC2A4();
    sub_29E1B4B30(&qword_2A181E7B8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
    sub_29E2BC294();
    v29 = v6;
    sub_29DF1DD38(v14, v16);

    sub_29DF1DD38(v14, v16);
    v30 = v39;
    sub_29E19A900(v8, v39);
    v31 = v30;
    v32 = 0;
  }

  return (*(v38 + 56))(v31, v32, 1, v29);
}

uint64_t sub_29E1B3E40(uint64_t a1)
{
  v51 = *v1;
  v3 = sub_29E2C0514();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v50 = &v46 - v7;
  v8 = sub_29E2BF6C4();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B4E74(0, &qword_2A181EDF8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_29E2BCC24();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v46 - v21;
  sub_29E1B4D74(a1, v15);
  v23 = type metadata accessor for ReviewPregnancyInMedicalIDUserData();
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    sub_29E1B4CFC(v15);
    sub_29E2C04B4();
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A14();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = v27;
      *v26 = 136315138;
      aBlock[0] = v51;
      swift_getMetatypeMetadata();
      v28 = sub_29E2C3424();
      v30 = sub_29DFAA104(v28, v29, &v55);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%s] Sample UUID from user data was nil", v26, 0xCu);
      sub_29DE93B3C(v27);
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    return (*(v52 + 8))(v5, v53);
  }

  else
  {
    v32 = *(v17 + 16);
    v32(v19, v15, v16);
    sub_29E1B4DF4(v15, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
    (*(v17 + 32))(v22, v19, v16);
    v32(v12, v22, v16);
    sub_29E2BCBA4();
    sub_29E2BC2E4();
    swift_allocObject();
    sub_29E2BC2D4();
    sub_29E1B4B30(qword_2A1A5F148, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData);
    v33 = sub_29E2BC2C4();
    v35 = v34;
    sub_29E1B4DF4(v12, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData);

    v36 = v16;
    v37 = *MEMORY[0x29EDC32A0];
    v38 = v47;
    sub_29E2BF414();
    sub_29E2BF694();
    (*(v48 + 8))(v38, v49);
    v39 = sub_29E2BE8F4();

    v40 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:4 domainName:v37 healthStore:v39];

    v41 = sub_29E2BC914();
    v42 = *MEMORY[0x29EDC3340];
    v43 = swift_allocObject();
    *(v43 + 16) = v51;
    aBlock[4] = sub_29E1B4E54;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24BDBA8;
    v44 = _Block_copy(aBlock);
    v45 = v42;

    [v40 setData:v41 forKey:v45 completion:v44];
    sub_29DEB5BF8(v33, v35);
    _Block_release(v44);

    return (*(v17 + 8))(v22, v36);
  }
}

uint64_t sub_29E1B46E4(char a1, void *a2, void *a3)
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v10 = a2;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v15;
    v27 = a3;
    *v14 = 136315650;
    swift_getMetatypeMetadata();
    v16 = sub_29E2C3424();
    v18 = sub_29DFAA104(v16, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2082;
    v27 = a2;
    v19 = a2;
    sub_29E1B4E74(0, &qword_2A1A5DFD0, sub_29DE96670);
    v20 = sub_29E2C3424();
    v22 = sub_29DFAA104(v20, v21, &v26);

    *(v14 + 20) = v22;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%s] Set dismissal date success %{BOOL}d, error %{public}s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);

    return (*(v7 + 8))(v9, v25);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_29E1B4944(uint64_t a1)
{
  v2 = sub_29E2BF6C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_29E2BF424();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_29E1B4A54()
{
  sub_29E1B4E74(0, &qword_2A181EDF8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v4 - v1;
  sub_29E1B37BC(&v4 - v1);
  sub_29E1B3E40(v2);
  return sub_29E1B4CFC(v2);
}

uint64_t sub_29E1B4B30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E1B4BC0()
{
  result = qword_2A181EDE8;
  if (!qword_2A181EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EDE8);
  }

  return result;
}

uint64_t sub_29E1B4C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E1B4C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E1B4BC0();
    v7 = a3(a1, &type metadata for ReviewPregnancyInMedicalIDTileDismissalData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E1B4CFC(uint64_t a1)
{
  sub_29E1B4E74(0, &qword_2A181EDF8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E1B4D74(uint64_t a1, uint64_t a2)
{
  sub_29E1B4E74(0, &qword_2A181EDF8, type metadata accessor for ReviewPregnancyInMedicalIDUserData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E1B4DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1B4E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E1B4E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1B4EEC()
{
  result = sub_29E2BCC24();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCBB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29E1B4F74()
{
  result = qword_2A181EE00;
  if (!qword_2A181EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EE00);
  }

  return result;
}

unint64_t sub_29E1B4FCC()
{
  result = qword_2A181EE08;
  if (!qword_2A181EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EE08);
  }

  return result;
}

unint64_t sub_29E1B5024()
{
  result = qword_2A181EE10;
  if (!qword_2A181EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EE10);
  }

  return result;
}

uint64_t sub_29E1B5080()
{
  v1 = *v0;
  v34 = v0;
  v41 = v1;
  v2 = sub_29E2C0514();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v38 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C00B4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1B5DF8();
  v7 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v31 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v31 - v18;
  v35 = sub_29E2BCBB4();
  ObjectType = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C3B44();
  v22 = v21;
  v32 = v13;
  v38 = v9;
  v39 = v11;
  v23 = v34;
  v40 = v7;

  v24 = ObjectType;
  v25 = v35;
  if ((*(ObjectType + 48))(v19, 1, v35) == 1)
  {
    sub_29DE93920(v19);
    v26 = v16;
    (*(v24 + 56))(v16, 1, 1, v25);
    ObjectType = swift_getObjectType();
    sub_29E2C00A4();
    sub_29DEAA194(v16, v32);
    sub_29E1B5F28(&qword_2A181EE28, &qword_2A1817EF8);
    sub_29E1B5F28(&qword_2A181EE30, &qword_2A1817ED8);
    sub_29E1B5F28(&qword_2A181EE38, &qword_2A181D9C0);
    v27 = v38;
    sub_29E2BFE84();
    v42 = v23;
    sub_29E1B61E8(qword_2A1A5FBC8, type metadata accessor for CycleFactorLastReviewedDateInputSignal);
    sub_29E2C0004();
    (*(v36 + 8))(v27, v40);
    return sub_29DE93920(v26);
  }

  else
  {
    (*(v24 + 32))(v22, v19, v25);
    v29 = v16;
    (*(v24 + 16))(v16, v22, v25);
    (*(v24 + 56))(v16, 0, 1, v25);
    v31[1] = *(v23 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_observer + 8);
    v31[0] = swift_getObjectType();
    sub_29E2C00A4();
    sub_29DEAA194(v16, v32);
    sub_29E1B5F28(&qword_2A181EE28, &qword_2A1817EF8);
    sub_29E1B5F28(&qword_2A181EE30, &qword_2A1817ED8);
    sub_29E1B5F28(&qword_2A181EE38, &qword_2A181D9C0);
    v30 = v38;
    sub_29E2BFE84();
    v42 = v23;
    sub_29E1B61E8(qword_2A1A5FBC8, type metadata accessor for CycleFactorLastReviewedDateInputSignal);
    sub_29E2C0004();
    (*(v36 + 8))(v30, v40);
    sub_29DE93920(v29);
    return (*(ObjectType + 8))(v22, v25);
  }
}

uint64_t sub_29E1B5958()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_identifier;
  v2 = sub_29E2C00B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_29DE93B3C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_observerShim);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleFactorLastReviewedDateInputSignal()
{
  result = qword_2A1A5FBB0;
  if (!qword_2A1A5FBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E1B5A68()
{
  result = sub_29E2C00B4();
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

uint64_t sub_29E1B5B40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_identifier;
  v5 = sub_29E2C00B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E1B5BF4()
{
  v1 = *v0;
  v2 = (*v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_observerShim);
  v3 = v2[3];
  v4 = v2[4];
  sub_29DE966D4(v2, v3);
  (*(v4 + 16))(v3, v4);
  v5 = v2[3];
  v6 = v2[4];
  sub_29DE966D4(v2, v5);
  return (*(v6 + 8))(v1, v5, v6);
}

uint64_t sub_29E1B5C94()
{
  v1 = (*v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_observerShim);
  v2 = v1[3];
  v3 = v1[4];
  sub_29DE966D4(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_29E1B5CFC(uint64_t a1)
{
  v2 = sub_29E1B61E8(qword_2A1A5FBC8, type metadata accessor for CycleFactorLastReviewedDateInputSignal);

  return MEMORY[0x2A1C64680](a1, v2);
}

void sub_29E1B5DF8()
{
  if (!qword_2A181EE20)
  {
    sub_29DEB3B00(255);
    sub_29E1B5F28(&qword_2A181EE28, &qword_2A1817EF8);
    sub_29E1B5F28(&qword_2A181EE30, &qword_2A1817ED8);
    sub_29E1B5F28(&qword_2A181EE38, &qword_2A181D9C0);
    v0 = sub_29E2BFEA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EE20);
    }
  }
}

uint64_t sub_29E1B5F28(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29DEB3B00(255);
    sub_29E1B61E8(a2, MEMORY[0x29EDB9BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1B5FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC32A0] healthStore:a3];
  ReviewedDateInput = type metadata accessor for CycleFactorLastReviewedDateInputSignal.ObserverShim();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29E1B6120();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  sub_29E1B6180(&v15, v9 + 16);
  v10 = a3;
  v11 = v6;
  sub_29E1B61B8(&v15);
  v8[3] = v11;
  v8[4] = v9;
  v8[2] = v10;
  v16 = ReviewedDateInput;
  v17 = &off_2A24BDCE0;
  *&v15 = v8;
  type metadata accessor for CycleFactorLastReviewedDateInputSignal();
  v12 = swift_allocObject();
  sub_29E2C00A4();

  v13 = (v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_observer);
  *v13 = a1;
  v13[1] = a2;
  sub_29DF3CBE8(&v15, v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38CycleFactorLastReviewedDateInputSignal_observerShim);
  return v12;
}

void sub_29E1B6120()
{
  if (!qword_2A1A5E060)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E2C45F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E060);
    }
  }
}

uint64_t sub_29E1B61E8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E1B6230()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v28 - v7;
  v9 = sub_29E2C4274();
  MEMORY[0x2A1C7C4A8](v9);
  MEMORY[0x2A1C7C4A8](v10);
  v15 = &v28 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView____lazy_storage___button);
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView____lazy_storage___button);
  }

  else
  {
    v29 = v13;
    v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView____lazy_storage___button;
    v31 = v12;
    v32 = v11;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29E2C4224();
    sub_29E2C3314();
    (*(v3 + 16))(v5, v8, v2);
    v28 = v0;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v19 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v3 + 8))(v8, v2);
    sub_29E2C4254();
    v20 = [objc_opt_self() systemBlueColor];
    sub_29E2C41E4();
    sub_29DE9408C(0, &qword_2A1819798);
    v22 = v31;
    v21 = v32;
    (*(v31 + 16))(v29, v15, v32);
    sub_29DE9408C(0, &qword_2A181A5D8);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_29E1B6CFC;
    *(v23 + 24) = v18;

    sub_29E2C4114();
    v24 = sub_29E2C4284();

    (*(v22 + 8))(v15, v21);

    v25 = *(v28 + v30);
    *(v28 + v30) = v24;
    v17 = v24;

    v16 = 0;
  }

  v26 = v16;
  return v17;
}

void sub_29E1B668C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView_showPDF);
    v2 = Strong;
    sub_29DE8EE38(v1);

    if (v1)
    {
      v1();
      sub_29DE8EF50(v1);
    }
  }
}

char *sub_29E1B6718(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView_showPDF];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView____lazy_storage___button] = 0;
  if (a2)
  {
    v4 = sub_29E2C33A4();
  }

  else
  {
    v4 = 0;
  }

  v38.receiver = v2;
  v38.super_class = type metadata accessor for TwelveMonthPDFHeaderView();
  v5 = objc_msgSendSuper2(&v38, sel_initWithReuseIdentifier_, v4);

  v6 = v5;
  v7 = sub_29E1B6230();
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView____lazy_storage___button;
  v9 = qword_2A1A60ED8;
  v10 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView____lazy_storage___button];
  if (v9 != -1)
  {
    swift_once();
  }

  v37 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E301390);
  v11 = sub_29E2C33A4();

  [v10 setAccessibilityIdentifier_];

  v12 = [v6 contentView];
  [v12 addSubview_];

  v13 = objc_opt_self();
  sub_29DE99B54();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2D6FB0;
  v15 = [*&v6[v8] centerXAnchor];
  v16 = [v6 contentView];
  v17 = [v16 centerXAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v18;
  v19 = [*&v6[v8] centerYAnchor];
  v20 = [v6 contentView];
  v21 = [v20 centerYAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v14 + 40) = v22;
  v23 = [*&v6[v8] leadingAnchor];
  v24 = [v6 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintGreaterThanOrEqualToAnchor_];
  *(v14 + 48) = v26;
  v27 = [*&v6[v8] leadingAnchor];
  v28 = [v6 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintLessThanOrEqualToAnchor_];
  *(v14 + 56) = v30;
  v31 = [v6 contentView];

  v32 = [v31 heightAnchor];
  v33 = [*&v6[v8] heightAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v14 + 64) = v34;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v35 = sub_29E2C3604();

  [v13 activateConstraints_];

  return v6;
}

id sub_29E1B6C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TwelveMonthPDFHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E1B6D04()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PickerSelectLoggingCell()) initWithStyle:1 reuseIdentifier:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29E1B6D80()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  v3 = sub_29E1B6D04();
  v4 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker];

  [v4 setDelegate_];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_29E20A5C0();
    swift_unknownObjectRelease();
    v6 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex];
    *v6 = v5;
    v6[8] = 0;
    [*(*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker) selectRow:v5 inComponent:0 animated:0];
    type metadata accessor for DataTypeLoggingCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = sub_29E2C33A4();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

    v9 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
    [v2 setTableHeaderView_];
  }

  else
  {
    v10 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex];
    *v10 = 0;
    v10[8] = 1;
    __break(1u);
  }
}

void sub_29E1B6FA8(void *a1)
{
  v2 = v1;
  sub_29E1B853C(0, &qword_2A181EF90, sub_29E1B84F0, MEMORY[0x29EDB98A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v47 - v7;
  v9 = sub_29E2BCF64();
  if (!v9)
  {
    v10 = sub_29E2C33A4();
    v11 = [a1 dequeueReusableCellWithIdentifier_];

    if (!v11)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for DataTypeLoggingCell();
    v12 = swift_dynamicCastClassUnconditional();
    *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_editableDaySummarySection) = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_editableDaySummarySection);
    v13 = v11;
    v14 = [v12 textLabel];
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v50 = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v28 = 0;
LABEL_17:
      [v15 setText_];

LABEL_18:
      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + 32);
        swift_unknownObjectRelease();
        *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = v36 != 0;
        sub_29E02D998();
        v37 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
        v38 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
        v58 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
        v59 = v38;
        v60 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
        v39 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
        v54 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
        v55 = v39;
        v40 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
        v56 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
        v57 = v40;
        v52[3] = &type metadata for LoggingCardCarouselConfiguration;
        v52[4] = &off_2A24BA1A8;
        v41 = swift_allocObject();
        v52[0] = v41;
        v42 = *(v37 + 80);
        *(v41 + 80) = *(v37 + 64);
        *(v41 + 96) = v42;
        *(v41 + 112) = *(v37 + 96);
        v43 = *(v37 + 16);
        *(v41 + 16) = *v37;
        *(v41 + 32) = v43;
        v44 = *(v37 + 48);
        *(v41 + 48) = *(v37 + 32);
        *(v41 + 64) = v44;
        sub_29DE9DC34(v52, v51);
        v45 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
        swift_beginAccess();
        sub_29DE9DC98(&v54, v53);
        sub_29DE9DC98(&v54, v53);
        sub_29DE9DCF4(v51, v12 + v45);
        v46 = swift_endAccess();
        (*((*MEMORY[0x29EDCA1E8] & *v12) + 0x118))(v46);

        sub_29DE9DE14(&v54);
        sub_29DE93B3C(v52);
        return;
      }

      goto LABEL_24;
    }

    if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex + 8))
    {
LABEL_25:
      __break(1u);
      return;
    }

    v17 = Strong;
    v18 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex);
    v19 = sub_29E20A410();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v49 = v13;
      if (v18 < *(v19 + 16))
      {
        v20 = *(v19 + 8 * v18 + 32);

        v21 = [objc_opt_self() quantityWithUnit:*(v17 + 64) doubleValue:v20];
        v22 = *(v17 + 64);
        v48 = *(v17 + 72);
        v23 = v21;
        v24 = [v22 _foundationUnit];
        if (v24)
        {
          v25 = v24;
          [v23 doubleValueForUnit_];
          sub_29E1B84F0();
          v47 = v25;
          sub_29E2BC304();
          v26 = sub_29E2BC2F4();
          v27 = [v48 stringFromMeasurement_];

          v48 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          (*(v50 + 8))(v8, v5);
          swift_unknownObjectRelease();

          v28 = sub_29E2C33A4();
        }

        else
        {
          swift_unknownObjectRelease();

          v28 = 0;
        }

        v13 = v49;
        goto LABEL_17;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v9 != 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v29 = sub_29E1B6D04();
  v30 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
  v58 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
  v59 = v30;
  v60 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
  v31 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
  v54 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
  v55 = v31;
  v32 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
  v56 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
  v57 = v32;
  sub_29DE9DC98(&v54, v53);
  sub_29E242CC8(&v54);
  sub_29DE9DE14(&v54);

  v33 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell);

  v34 = v33;
}

void sub_29E1B7684(void *a1)
{
  v2 = v1;
  v4 = sub_29E2BCF64();
  if (v4)
  {
    if (v4 == 1)
    {
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v5 = sub_29E2BCF24();
  [a1 deselectRowAtIndexPath:v5 animated:0];

  v6 = sub_29E2BCF24();
  v10 = [a1 cellForRowAtIndexPath_];

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for DataTypeLoggingCell();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked;
  *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = (*(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) & 1) == 0;
  sub_29E02D998();
  LODWORD(v8) = *(v7 + v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v8 != 1)
  {
    if (Strong)
    {
      sub_29E20AA20();
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (!Strong)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex + 8))
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_29E20A8F8(*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex));
LABEL_11:
  swift_unknownObjectRelease();
}

void sub_29E1B7A64()
{
  sub_29DE8EDC0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_dataSource);
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell);
}

uint64_t sub_29E1B7CA0(unint64_t a1)
{
  sub_29E1B853C(0, &qword_2A181EF90, sub_29E1B84F0, MEMORY[0x29EDB98A0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_10;
  }

  v8 = result;
  result = sub_29E20A410();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(result + 16) <= a1)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = *(result + 8 * a1 + 32);

  v10 = [objc_opt_self() quantityWithUnit:*(v8 + 64) doubleValue:v9];
  v11 = *(v8 + 64);
  v12 = *(v8 + 72);
  v13 = v10;
  v14 = [v11 _foundationUnit];
  if (v14)
  {
    v15 = v14;
    [v13 doubleValueForUnit_];
    sub_29E1B84F0();
    v16 = v15;
    sub_29E2BC304();
    v17 = sub_29E2BC2F4();
    v18 = [v12 stringFromMeasurement_];

    v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    (*(v4 + 8))(v6, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    return 0;
  }

  return v19;
}

void sub_29E1B7F10(unint64_t a1)
{
  v2 = v1;
  sub_29E1B853C(0, &qword_2A181EF90, sub_29E1B84F0, MEMORY[0x29EDB98A0]);
  v5 = v4;
  v50 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v45 - v6;
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex);
  *v12 = a1;
  *(v12 + 8) = 0;
  v13 = sub_29E1B6D04();
  v14 = *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker];

  if (v12[1])
  {
    goto LABEL_22;
  }

  [v14 selectRow:*v12 inComponent:0 animated:0];

  v15 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
  MEMORY[0x29ED79720](0, 0);
  v16 = sub_29E2BCF24();
  (*(v9 + 8))(v11, v8);
  v17 = [v15 cellForRowAtIndexPath_];

  if (!v17)
  {
    return;
  }

  type metadata accessor for DataTypeLoggingCell();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    return;
  }

  v19 = v18;
  v49 = v5;
  v20 = [v18 textLabel];
  if (v20)
  {
    v21 = v20;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v34 = 0;
LABEL_15:
      [v21 setText_];

      goto LABEL_16;
    }

    if (v12[1])
    {
LABEL_25:
      __break(1u);
      return;
    }

    v23 = Strong;
    v24 = *v12;
    v25 = sub_29E20A410();
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v48 = v21;
      if (v24 < *(v25 + 16))
      {
        v26 = *(v25 + 8 * v24 + 32);

        v27 = [objc_opt_self() quantityWithUnit:*(v23 + 64) doubleValue:v26];
        v28 = *(v23 + 64);
        v47 = *(v23 + 72);
        v29 = v27;
        v30 = [v28 _foundationUnit];
        if (v30)
        {
          v31 = v30;
          [v29 doubleValueForUnit_];
          sub_29E1B84F0();
          v46 = v31;
          sub_29E2BC304();
          v32 = sub_29E2BC2F4();
          v33 = [v47 stringFromMeasurement_];

          v47 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          (*(v50 + 8))(v7, v49);
          swift_unknownObjectRelease();

          v34 = sub_29E2C33A4();
        }

        else
        {
          swift_unknownObjectRelease();

          v34 = 0;
        }

        v21 = v48;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_16:
  v35 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
  v36 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
  v54[4] = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
  v54[5] = v36;
  v55 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
  v37 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
  v54[0] = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
  v54[1] = v37;
  v38 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
  v54[2] = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
  v54[3] = v38;
  v53[3] = &type metadata for LoggingCardCarouselConfiguration;
  v53[4] = &off_2A24BA1A8;
  v39 = swift_allocObject();
  v53[0] = v39;
  v40 = *(v35 + 80);
  *(v39 + 80) = *(v35 + 64);
  *(v39 + 96) = v40;
  *(v39 + 112) = *(v35 + 96);
  v41 = *(v35 + 16);
  *(v39 + 16) = *v35;
  *(v39 + 32) = v41;
  v42 = *(v35 + 48);
  *(v39 + 48) = *(v35 + 32);
  *(v39 + 64) = v42;
  sub_29DE9DC34(v53, v52);
  v43 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
  swift_beginAccess();
  sub_29DE9DC98(v54, v51);
  sub_29DE9DC98(v54, v51);
  sub_29DE9DCF4(v52, v19 + v43);
  v44 = swift_endAccess();
  (*((*MEMORY[0x29EDCA1E8] & *v19) + 0x118))(v44);
  sub_29DE9DE14(v54);
  sub_29DE93B3C(v53);
  *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked) = 1;
  sub_29E02D998();
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v12[1])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_29E20A8F8(*v12);

  swift_unknownObjectRelease();
}

unint64_t sub_29E1B84F0()
{
  result = qword_2A181FDD0;
  if (!qword_2A181FDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A181FDD0);
  }

  return result;
}

void sub_29E1B853C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E1B85A0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v6, &v18);
  if (*(&v19 + 1))
  {
    sub_29DF61DEC();
    type metadata accessor for AddPregnancyItem();
    if (swift_dynamicCast())
    {

      return [v1 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    sub_29DF61E50(&v18);
  }

  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    *&v18 = v12;
    *v11 = 136315138;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Received unexpected item", v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v3 + 8))(v5, v17);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_29DEF9180(&v18, v1 + v6);
  return swift_endAccess();
}

uint64_t sub_29E1B8820(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v3, v5);
  if (v6)
  {
    sub_29DF61DEC();
    type metadata accessor for AddPregnancyItem();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_29DF61E50(v5);
  }

  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E1B85A0();
  return sub_29DF61E50(a1);
}

id sub_29E1B88F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_parentViewController] = 0;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setAutomaticallyUpdatesBackgroundConfiguration_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E2C3E04();

  return v11;
}

void sub_29E1B89F8(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  sub_29E038640();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0674();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v79 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v73 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29E1BA08C(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v72 = v57 - v13;
  v14 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v70 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E2C3384();
  v69 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = v57 - v19;
  v21 = sub_29E2BF064();
  *&v68 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  sub_29E1BA08C(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v11);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v24 = v57 - v23;
  sub_29E1BA08C(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v11);
  MEMORY[0x2A1C7C4A8](v25 - 8);
  v27 = v57 - v26;
  v28 = sub_29E2BE8C4();
  v75 = *(v28 - 8);
  v76 = v28;
  MEMORY[0x2A1C7C4A8](v28);
  v74 = v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v67 = v6;
    v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_item;
    swift_beginAccess();
    sub_29DEC3518(v31 + v32, v82);
    if (v83)
    {
      v66 = v4;
      sub_29DF61DEC();
      type metadata accessor for AddPregnancyItem();
      if (swift_dynamicCast())
      {
        v58 = v31;
        v65 = v3;
        v64 = v81;
        v33 = sub_29E2BE974();
        (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
        v34 = sub_29E2BDE24();
        (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
        v35 = MEMORY[0x29EDC2550];
        sub_29E1BA08C(0, &qword_2A181ADD0, MEMORY[0x29EDC2550], MEMORY[0x29EDC9E90]);
        v36 = swift_allocObject();
        v68 = xmmword_29E2CAB20;
        *(v36 + 16) = xmmword_29E2CAB20;
        sub_29E2BF054();
        v82[0] = v36;
        sub_29E1B9F38(&unk_2A181A7D0, 255, MEMORY[0x29EDC2550]);
        sub_29E1BA08C(0, &unk_2A181B290, v35, MEMORY[0x29EDC9A40]);
        sub_29DECE044();
        sub_29E2C43F4();
        sub_29E2BEF64();
        swift_allocObject();
        v63 = sub_29E2BEF54();
        sub_29E2C3314();
        v37 = v69;
        v38 = v71;
        v59 = *(v69 + 16);
        v59(v17, v20, v71);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v39 = qword_2A1A67F80;
        sub_29E2BCC74();
        v57[1] = v39;
        v62 = sub_29E2C3414();
        v61 = v40;
        v41 = *(v37 + 8);
        v41(v20, v38);
        sub_29E2C3314();
        v42 = v59;
        v59(v17, v20, v38);
        sub_29E2BCC74();
        v69 = sub_29E2C3414();
        v60 = v43;
        v41(v20, v38);
        sub_29E2C3314();
        v42(v17, v20, v38);
        sub_29E2BCC74();
        sub_29E2C3414();
        v41(v20, v38);
        v44 = v72;
        sub_29E2BDE34();
        v45 = sub_29E2BDE44();
        (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
        sub_29E2BE894();
        sub_29E1BA08C(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
        v46 = sub_29E2BE2A4();
        v47 = *(v46 - 8);
        v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = v68;
        (*(v47 + 104))(v49 + v48, *MEMORY[0x29EDC1D60], v46);
        v50 = v74;
        sub_29E2BE884();
        (*(v77 + 16))(v79, v80, v78);
        v51 = v58;
        [v58 bounds];
        CGRectGetWidth(v85);
        sub_29E2BE844();
        swift_allocObject();
        v52 = sub_29E2BE834();
        MEMORY[0x2A1C7C4A8](v52);
        sub_29E2BE364();
        sub_29E1B9F38(&qword_2A181ADC8, 255, MEMORY[0x29EDC1E50]);
        v53 = v51;
        v54 = v67;
        sub_29E2C1DE4();
        sub_29E1BA140();
        v83 = v55;
        v84 = sub_29E1B9F38(&qword_2A181EFD0, 255, sub_29E1BA140);
        sub_29DEBB7E8(v82);
        sub_29E2BF004();
        sub_29E1B9F38(&qword_2A181B368, 255, MEMORY[0x29EDC24E0]);
        v56 = v65;
        sub_29E2C1DC4();
        (*(v66 + 8))(v54, v56);
        MEMORY[0x29ED805A0](v82);

        (*(v75 + 8))(v50, v76);
      }

      else
      {
      }
    }

    else
    {

      sub_29DF61E50(v82);
    }
  }
}

uint64_t sub_29E1B978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E2BE8C4();
  v6 = MEMORY[0x2A1C7C4A8](v5);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;

  return sub_29E2BE374();
}

void sub_29E1B98E0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_parentViewController;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 && swift_unknownObjectWeakLoadStrong())
    {
      v8 = a2[14];
      ObjectType = swift_getObjectType();
      v13[3] = v3;
      v13[4] = sub_29E1B9F38(&qword_2A1820870, v10, type metadata accessor for AddPregnancyItem);
      v13[0] = a2;
      v11 = *(v8 + 8);
      v12 = v7;

      v11(v13, v12, ObjectType, v8);
      swift_unknownObjectRelease();

      sub_29DE93B3C(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_29E1B9B64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

void (*sub_29E1B9BC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E1B9C58;
}

void sub_29E1B9C58(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29E1B8820(v2 + 40);
    sub_29DF61E50(v2);
  }

  else
  {
    sub_29E1B8820(*a1);
  }

  free(v2);
}

void *sub_29E1B9CC0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_parentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_29E1B9D0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20AddPregnancyTileCell_parentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_29E1B9DE8()
{
  type metadata accessor for AddPregnancyTileCell();
  sub_29E1B9F38(&qword_2A181EFB8, v0, type metadata accessor for AddPregnancyTileCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E1B9E4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E1B9F38(&qword_2A181EFC0, a2, type metadata accessor for AddPregnancyItem);

  return MEMORY[0x2A1C60910](a1, v3);
}

uint64_t sub_29E1B9F38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1B9F80(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[14];
    ObjectType = swift_getObjectType();
    v9[3] = v3;
    v9[4] = sub_29E1B9F38(&qword_2A1820870, v7, type metadata accessor for AddPregnancyItem);
    v9[0] = v1;
    v8 = *(v5 + 8);

    v8(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

void sub_29E1BA08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E1BA0FC()
{

  return sub_29E2BEFF4();
}

void sub_29E1BA140()
{
  if (!qword_2A181EFC8)
  {
    sub_29E2BE364();
    sub_29E2BF004();
    sub_29E1B9F38(&qword_2A181ADC8, 255, MEMORY[0x29EDC1E50]);
    sub_29E1B9F38(&qword_2A181B368, 255, MEMORY[0x29EDC24E0]);
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181EFC8);
    }
  }
}

uint64_t sub_29E1BA268@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_29E2BCA04();
  v26 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCA44();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BC9D4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCA54();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v23 - v15;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v23 - v19;
  MEMORY[0x29ED78EF0](v18);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v7 + 8))(v9, v6);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v24 + 8))(v5, v25);
  v21(v16, v10);
  sub_29E2BC9E4();
  sub_29E2BC9A4();
  (*(v26 + 8))(v2, v28);
  return (v21)(v20, v10);
}

uint64_t sub_29E1BA5A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1BA618(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v62 = a2;
  v66 = a1;
  v63 = sub_29E2BCA44();
  v61 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v59 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCAF4();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v57 = &v54 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v58 = &v54 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v60 = &v54 - v10;
  sub_29DEB2104();
  v54 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v54 - v15;
  sub_29DEB216C();
  v68 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BCA54();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E2BCC84();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCC74();
  v27 = sub_29E2BCC34();
  v29 = v28;
  (*(v24 + 8))(v26, v23);
  if (v27 == 0x53555F6E65 && v29 == 0xE500000000000000)
  {

LABEL_5:
    v32 = v66;
    v66(v30);
    sub_29E1BA5A4(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
    sub_29E2BCB94();
    v33 = *(v20 + 8);
    v33(v22, v19);
    v71 = v69;
    v72 = v70;
    v34 = MEMORY[0x29ED7FCC0](0x209380E220, 0xA500000000000000);
    v32(v34);
    sub_29E2BCB94();
    v33(v22, v19);
    MEMORY[0x29ED7FCC0](v69, v70);

    return v71;
  }

  v31 = sub_29E2C4914();

  if (v31)
  {
    goto LABEL_5;
  }

  v35 = *(v68 + 36);
  v36 = sub_29E2BCBB4();
  sub_29E1BA5A4(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  v37 = v67;
  result = sub_29E2C32B4();
  if (result)
  {
    v39 = *(v36 - 8);
    v40 = v39[2];
    v40(v16, v37, v36);
    v41 = v54;
    v40(&v16[*(v54 + 48)], v37 + v35, v36);
    sub_29DFD4F84(v16, v13);
    v42 = *(v41 + 48);
    v43 = v39[4];
    v44 = v55;
    v43(v55, v13, v36);
    v45 = v39[1];
    v45(&v13[v42], v36);
    sub_29DEB2268(v16, v13);
    v43((v44 + *(v68 + 36)), &v13[*(v41 + 48)], v36);
    v45(v13, v36);
    v46 = v56;
    v47 = sub_29E2BC254();
    v48 = v59;
    v62(v47);
    v49 = v57;
    sub_29E2BCAE4();
    (*(v61 + 8))(v48, v63);
    v50 = v65;
    v51 = *(v64 + 8);
    v51(v46, v65);
    v52 = v58;
    sub_29E2BCAC4();
    v51(v49, v50);
    v53 = v60;
    sub_29E2BCAD4();
    v51(v52, v50);
    sub_29E1BA5A4(&qword_2A181A4E8, MEMORY[0x29EDB9BC0]);
    sub_29E2C3874();
    v51(v53, v50);
    sub_29DFDB570(v44);
    return v71;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E1BAD78@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_29E2BCA04();
  v26 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BC9D4();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCA44();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCA54();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v23 - v15;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v23 - v19;
  MEMORY[0x29ED78EF0](v18);
  sub_29E2BCA34();
  sub_29E2BC9B4();
  (*(v7 + 8))(v9, v6);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v24 + 8))(v5, v25);
  v21(v16, v10);
  sub_29E2BC9E4();
  sub_29E2BC9A4();
  (*(v26 + 8))(v2, v28);
  return (v21)(v20, v10);
}

uint64_t sub_29E1BB114()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

uint64_t sub_29E1BB1BC()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

void sub_29E1BB25C()
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

void sub_29E1BB328()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v164 = &v143 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_29E2C3384();
  v162 = *(v150 - 8);
  MEMORY[0x2A1C7C4A8](v150);
  v158 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v143 - v4;
  sub_29DEFFE04();
  v6 = sub_29E2BDD14();
  v7 = *(*(v6 - 8) + 72);
  v155 = *(v6 - 8);
  v8 = (*(v155 + 80) + 32) & ~*(v155 + 80);
  v157 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2E3F30;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  v11 = sub_29E2C33A4();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10 compatibleWithTraitCollection:0];

  if (v12)
  {
    v146 = v9;
    v13 = v9 + v8;
    *v13 = v12;
    *(v13 + 8) = 0;
    v14 = v155 + 104;
    v15 = *(v155 + 104);
    v15(v13, *MEMORY[0x29EDC1608], v6);
    v16 = v15;
    v151 = v15;
    v154 = v13;
    v155 = v14;
    v17 = v157;
    v18 = (v13 + v157);
    *v18 = sub_29E2BC6E4();
    v18[1] = v19;
    v16(v18, *MEMORY[0x29EDC1610], v6);
    v148 = 2 * v17;
    v20 = v13 + 2 * v17;
    v152 = 0xD000000000000013;
    sub_29E2C3314();
    v159 = "Period101 Article Hero";
    v21 = v162;
    v156 = *(v162 + 16);
    v161 = v162 + 16;
    v22 = v158;
    v23 = v150;
    v156(v158, v5, v150);
    sub_29E2BCC74();
    v160 = v10;
    v24 = v10;
    v153 = v6;
    v147 = v24;
    v25 = sub_29E2C3414();
    v27 = v26;
    v28 = *(v21 + 8);
    v162 = v21 + 8;
    v163 = v28;
    v28(v5, v23);
    *v20 = v25;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0;
    v149 = *MEMORY[0x29EDC1630];
    v29 = v151;
    v151(v20);
    v30 = v154;
    v31 = (v154 + v148 + v157);
    sub_29E2C3314();
    v32 = v22;
    v33 = v156;
    v156(v32, v5, v23);
    sub_29E2BCC74();
    v147 = v147;
    v34 = sub_29E2C3414();
    v36 = v35;
    v163(v5, v23);
    *v31 = v34;
    v31[1] = v36;
    v31[2] = 0;
    LODWORD(v148) = *MEMORY[0x29EDC15D0];
    v29(v31);
    v145 = (4 * v157);
    v37 = v30 + 4 * v157;
    sub_29E2C3314();
    v33(v158, v5, v23);
    sub_29E2BCC74();
    v147 = v147;
    v38 = sub_29E2C3414();
    v40 = v39;
    v41 = v163;
    v163(v5, v23);
    *v37 = v38;
    *(v37 + 8) = v40;
    *(v37 + 16) = 0;
    v42 = v149;
    (v151)(v37, v149, v153);
    v43 = &v145[v157 + v154];
    sub_29E2C3314();
    v44 = v5;
    v45 = v5;
    v46 = v23;
    v47 = v156;
    v156(v158, v44, v23);
    sub_29E2BCC74();
    v147 = v147;
    v48 = sub_29E2C3414();
    v50 = v49;
    v143 = v45;
    v41(v45, v23);
    *v43 = v48;
    *(v43 + 1) = v50;
    v43[16] = 0;
    v51 = v42;
    v52 = v153;
    v53 = v151;
    (v151)(v43, v51, v153);
    v54 = (v154 + 6 * v157);
    sub_29E2C3314();
    v47(v158, v45, v46);
    sub_29E2BCC74();
    v145 = v147;
    v55 = sub_29E2C3414();
    v57 = v56;
    v58 = v143;
    v59 = v150;
    v163(v143, v150);
    *v54 = v55;
    v54[1] = v57;
    v54[2] = 0;
    (v53)(v54, v148, v52);
    v147 = (8 * v157);
    v60 = v154;
    v61 = v154 + 7 * v157;
    sub_29E2C3314();
    v62 = v158;
    v63 = v59;
    v64 = v156;
    v156(v158, v58, v63);
    sub_29E2BCC74();
    v145 = v145;
    v65 = sub_29E2C3414();
    v67 = v66;
    v68 = v150;
    v163(v58, v150);
    *v61 = v65;
    *(v61 + 8) = v67;
    *(v61 + 16) = 0;
    (v151)(v61, v149, v153);
    v69 = &v147[v60];
    sub_29E2C3314();
    v64(v62, v58, v68);
    sub_29E2BCC74();
    v145 = v145;
    v70 = sub_29E2C3414();
    v72 = v71;
    v163(v58, v68);
    *v69 = v70;
    *(v69 + 1) = v72;
    v69[16] = 0;
    v73 = v149;
    (v151)(v69, v149, v153);
    v74 = &v147[v157 + v154];
    sub_29E2C3314();
    v75 = v156;
    v156(v62, v58, v68);
    sub_29E2BCC74();
    v147 = v145;
    v76 = sub_29E2C3414();
    v78 = v77;
    v163(v58, v68);
    *v74 = v76;
    *(v74 + 1) = v78;
    v74[16] = 0;
    v79 = v73;
    v80 = v153;
    v81 = v151;
    (v151)(v74, v79, v153);
    v82 = (v154 + 10 * v157);
    sub_29E2C3314();
    v75(v158, v58, v68);
    sub_29E2BCC74();
    v83 = v147;
    v84 = sub_29E2C3414();
    v86 = v85;
    v163(v58, v68);
    *v82 = v84;
    v82[1] = v86;
    v82[2] = 0;
    (v81)(v82, v148, v80);
    v147 = (v154 + 11 * v157);
    sub_29DECE8A4(0, &qword_2A1A62780);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_29E2D47D0;
    sub_29E2C3314();
    v88 = v158;
    v156(v158, v58, v68);
    sub_29E2BCC74();
    v145 = v83;
    v89 = sub_29E2C3414();
    v91 = v90;
    v163(v58, v68);
    *(v87 + 32) = v89;
    *(v87 + 40) = v91;
    sub_29E2C3314();
    v92 = v88;
    v93 = v156;
    v156(v92, v58, v68);
    sub_29E2BCC74();
    v145 = v145;
    v94 = sub_29E2C3414();
    v96 = v95;
    v163(v58, v68);
    *(v87 + 48) = v94;
    *(v87 + 56) = v96;
    sub_29E2C3314();
    v97 = v158;
    v93(v158, v58, v68);
    sub_29E2BCC74();
    v145 = v145;
    v98 = sub_29E2C3414();
    v100 = v99;
    v101 = v150;
    v163(v58, v150);
    *(v87 + 64) = v98;
    *(v87 + 72) = v100;
    sub_29E2C3314();
    v102 = v156;
    v156(v97, v58, v101);
    sub_29E2BCC74();
    v145 = v145;
    v103 = sub_29E2C3414();
    v105 = v104;
    v106 = v163;
    v163(v58, v101);
    *(v87 + 80) = v103;
    *(v87 + 88) = v105;
    sub_29E2C3314();
    v102(v97, v58, v101);
    sub_29E2BCC74();
    v145 = v145;
    v107 = sub_29E2C3414();
    v109 = v108;
    v106(v58, v101);
    *(v87 + 96) = v107;
    *(v87 + 104) = v109;
    sub_29E2C3314();
    v110 = v156;
    v156(v158, v58, v101);
    sub_29E2BCC74();
    v145 = v145;
    v111 = sub_29E2C3414();
    v113 = v112;
    v114 = v101;
    v115 = v163;
    v163(v58, v114);
    v144 = v87;
    *(v87 + 112) = v111;
    *(v87 + 120) = v113;
    sub_29E2C3314();
    v116 = v150;
    v110(v158, v58, v150);
    sub_29E2BCC74();
    v145 = v145;
    v117 = sub_29E2C3414();
    v119 = v118;
    v115(v58, v116);
    v120 = v144;
    *(v144 + 128) = v117;
    *(v120 + 136) = v119;
    *v147 = v120;
    v121 = v153;
    v122 = v151;
    (v151)();
    v123 = v157;
    v124 = v154;
    v125 = (v154 + 12 * v157);
    sub_29E2C3314();
    v156(v158, v58, v116);
    sub_29E2BCC74();
    v147 = v145;
    v126 = sub_29E2C3414();
    v128 = v127;
    v163(v58, v116);
    *v125 = v126;
    v125[1] = v128;
    v125[2] = 0;
    (v122)(v124 + 12 * v123, v148, v121);
    v129 = v124 + 13 * v123;
    sub_29E2C3314();
    v130 = v158;
    v131 = v116;
    v156(v158, v58, v116);
    sub_29E2BCC74();
    v132 = v147;
    v133 = sub_29E2C3414();
    v135 = v134;
    v163(v58, v131);
    *v129 = v133;
    *(v129 + 8) = v135;
    *(v129 + 16) = 0;
    v136 = v149;
    v137 = v153;
    (v122)(v129, v149, v153);
    v138 = v154 + 14 * v157;
    sub_29E2C3314();
    v139 = v131;
    v156(v130, v58, v131);
    sub_29E2BCC74();
    v140 = sub_29E2C3414();
    v142 = v141;
    v163(v58, v139);
    *v138 = v140;
    *(v138 + 8) = v142;
    *(v138 + 16) = 0;
    (v122)(v138, v136, v137);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E1BC688()
{
  sub_29DECE8A4(0, &qword_2A1A619B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  sub_29DEED314();
  *(inited + 32) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4A0]);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_29E2CE070;
  *(v1 + 32) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4C8]);
  *(v1 + 40) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA480]);
  *(v1 + 48) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA468]);
  *(v1 + 56) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4B0]);
  sub_29DFCBF00(v1);
  v2 = sub_29E14F208(inited);

  sub_29E207108(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_29E1BC7CC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  v3 = sub_29E2BD4C4();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_29DF1D934(0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = sub_29E2C0514();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_29E2BD764();
  v2[27] = v6;
  v2[28] = *(v6 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E1BC9E0, 0, 0);
}

uint64_t sub_29E1BC9E0()
{
  v23 = v0;
  sub_29E1BF204(0);
  v1 = sub_29E2C2F64();
  v0[30] = v1;
  if (v1)
  {
    v2 = v0[14];
    v0[31] = *(v2 + 16);
    v3 = *(v2 + 24);
    v0[32] = v3;
    ObjectType = swift_getObjectType();
    v0[33] = ObjectType;
    v6 = sub_29E1BE904(&qword_2A1A60538, v5, type metadata accessor for SharedCyclePredictionExecutor);
    v0[34] = v6;
    v7 = swift_task_alloc();
    v0[35] = v7;
    *v7 = v0;
    v7[1] = sub_29E1BCC98;
    v8 = v0[14];

    return MEMORY[0x2A1C64A70](v0 + 2, v8, v6, ObjectType, v3);
  }

  else
  {
    sub_29E2C04B4();
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A34();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Initialized with nil analysis, submitting no PluginSharableModelChanges", v15, 0xCu);
      sub_29DE93B3C(v16);
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_29E1BCC98()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_29E1BDBB8;
  }

  else
  {
    v2 = sub_29E1BCDAC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E1BCDAC()
{
  v1 = *(v0 + 104);
  if (*(v1 + *(type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan(0) + 20)) == 1)
  {
    v2 = sub_29DE90648(*(v0 + 240));
    *(v0 + 296) = v2;
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_29DE966D4((v0 + 16), v3);
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    v6 = *(v4 + 16);
    *v5 = v0;
    v5[1] = sub_29E1BCF20;

    return MEMORY[0x2A1C653F0](v2, v3, v6);
  }

  else
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_29DE966D4((v0 + 16), v7);
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    v10 = *(v8 + 16);
    *v9 = v0;
    v9[1] = sub_29E1BD9EC;

    return MEMORY[0x2A1C653F8](v7, v10);
  }
}

uint64_t sub_29E1BCF20()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_29E1BDD20;
  }

  else
  {
    v2 = sub_29E1BD034;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E1BD034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = v3;
  v4 = v3[37];
  v68[0] = MEMORY[0x29EDCA190];
  v64 = *(v4 + 16);
  if (v64)
  {
    v5 = 0;
    v61 = v3[20];
    v62 = v3[28];
    v6 = v3[17];
    v58 = *(v3[14] + 32);
    v59 = v4 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v60 = v6;
    v56 = (v6 + 32);
    v63 = v4;
    v57 = (v6 + 48);
    while (v5 < *(v4 + 16))
    {
      v8 = v3[29];
      v10 = v3[21];
      v9 = v3[22];
      v65 = v3[16];
      v66 = v5;
      (*(v62 + 16))(v8, v59 + *(v62 + 72) * v5, v3[27]);
      sub_29E1BF238(0, &qword_2A1A5E030, sub_29DF1D934, MEMORY[0x29EDC9E90]);
      v11 = *(v61 + 72);
      v12 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v13 = swift_allocObject() + v12;
      v14 = sub_29E2C3954();
      v15 = [v58 profileIdentifier];
      v16 = [objc_allocWithZone(sub_29E2BDEB4()) init];
      sub_29E171D64(v8, v14, 0, v13);

      v17 = sub_29E2C3954();
      sub_29DFF89F0(v17, v13 + v11);

      sub_29E1BF2F0(v13, v9, sub_29DF1D934);
      sub_29DFA34D4(v9, v10);
      v18 = *v57;
      if ((*v57)(v10, 1, v65) == 1)
      {
        sub_29E1BF358(v3[21], sub_29DF1D934);
        v19 = MEMORY[0x29EDCA190];
        v20 = v56;
      }

      else
      {
        v20 = v56;
        v21 = *v56;
        (*v56)(v3[18], v3[21], v3[16]);
        v19 = MEMORY[0x29EDCA190];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_29E143AD8(0, *(MEMORY[0x29EDCA190] + 16) + 1, 1, MEMORY[0x29EDCA190]);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_29E143AD8(v22 > 1, v23 + 1, 1, v19);
        }

        v24 = v3[18];
        v25 = v3[16];
        *(v19 + 2) = v23 + 1;
        v21(&v19[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v23], v24, v25);
      }

      v26 = v3[21];
      v27 = v3[22];
      v28 = v3[16];
      sub_29E1BF2F0(v13 + v11, v27, sub_29DF1D934);
      sub_29DFA34D4(v27, v26);
      if (v18(v26, 1, v28) == 1)
      {
        sub_29E1BF358(v3[21], sub_29DF1D934);
        v7 = v66;
      }

      else
      {
        v29 = *v20;
        (*v20)(v3[18], v3[21], v3[16]);
        v7 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_29E143AD8(0, *(v19 + 2) + 1, 1, v19);
        }

        v31 = *(v19 + 2);
        v30 = *(v19 + 3);
        if (v31 >= v30 >> 1)
        {
          v19 = sub_29E143AD8(v30 > 1, v31 + 1, 1, v19);
        }

        v32 = v3[18];
        v33 = v3[16];
        *(v19 + 2) = v31 + 1;
        v29(&v19[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v31], v32, v33);
      }

      v5 = v7 + 1;
      (*(v62 + 8))(v3[29], v3[27]);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_29DFCB62C(v19);
      v4 = v63;
      if (v64 == v5)
      {

        v34 = v68[0];
        goto LABEL_21;
      }
    }

    __break(1u);
    return MEMORY[0x2A1C64D80](v4, a2, a3);
  }

  v34 = MEMORY[0x29EDCA190];
LABEL_21:
  v3[40] = v34;
  sub_29E2C04B4();
  sub_29E2BF404();
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A34();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v3[26];
  v40 = v3[23];
  v39 = v3[24];
  if (v37)
  {
    v67 = v3[26];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v68[0] = v42;
    *v41 = 136446466;
    v43 = sub_29E2C4AE4();
    v45 = sub_29DFAA104(v43, v44, v68);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v3[12] = v34;
    sub_29E1BF238(0, &qword_2A1A61DF0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29E2BF404();
    v46 = sub_29E2C3464();
    v48 = sub_29DFAA104(v46, v47, v68);

    *(v41 + 14) = v48;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Submitting feed items: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v42, -1, -1);
    MEMORY[0x29ED82140](v41, -1, -1);

    (*(v39 + 8))(v67, v40);
  }

  else
  {

    (*(v39 + 8))(v38, v40);
  }

  v49 = v3[39];
  sub_29E2BD214();
  if (!v49)
  {
    v53 = v3[10];
    v54 = v3[11];
    sub_29DE966D4(v3 + 7, v53);
    v55 = swift_task_alloc();
    v3[41] = v55;
    *v55 = v3;
    v55[1] = sub_29E1BD7F8;
    v4 = v34;
    a2 = v53;
    a3 = v54;

    return MEMORY[0x2A1C64D80](v4, a2, a3);
  }

  v50 = v3[30];

  sub_29DE93B3C((v3 + 2));

  v51 = v3[1];

  return v51();
}

uint64_t sub_29E1BD7F8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_29E1BDDE0;
  }

  else
  {
    v2 = sub_29E1BD92C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E1BD92C()
{
  sub_29DE93B3C(v0 + 56);
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E1BD9EC()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_29E1BDC68;
  }

  else
  {
    v2 = sub_29E1BDB00;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E1BDB00()
{
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E1BDBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E1BDC68()
{
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E1BDD20()
{
  v1 = *(v0 + 240);

  sub_29DE93B3C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E1BDDE0()
{
  sub_29DE93B3C(v0 + 56);
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E1BDEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  sub_29E1BE198(a1, a2, v8, a4);
  return v7;
}

uint64_t sub_29E1BDF1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29DE9657C;

  return sub_29E1BC7CC(a1);
}

uint64_t sub_29E1BDFD8(uint64_t a1)
{
  v3 = sub_29E2BFF84();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  type metadata accessor for SharedCyclePredictionExecutor.Planner(0);
  (*(v4 + 16))(v6, a1, v3);
  v9 = swift_unknownObjectRetain();
  return sub_29E1BDEA0(v9, v6, ObjectType, v7);
}

uint64_t sub_29E1BE0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E1BE904(qword_2A1A60540, a2, type metadata accessor for SharedCyclePredictionExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E1BE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E2BFFD4();
  v8 = (v4 + OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_context);
  *v8 = a1;
  v8[1] = a4;
  v9 = OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_signals;
  v10 = sub_29E2BFF84();
  (*(*(v10 - 8) + 32))(v4 + v9, a2, v10);
  return v4;
}

uint64_t sub_29E1BE254()
{
  v1 = OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_identifier;
  v2 = sub_29E2BFFC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_signals;
  v4 = sub_29E2BFF84();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_29E1BE368()
{
  result = sub_29E2BFFC4();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BFF84();
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

uint64_t sub_29E1BE4F8@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_context;
  v4 = *(v1 + OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_context);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  a1[3] = ObjectType;
  a1[4] = v7;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E1BE598@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_29E1BE610()
{
  sub_29E1BF41C();
  v1 = *(v0 + OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_context);
  v2 = *(v0 + OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin29SharedCyclePredictionExecutor7Planner_context + 8);
  v4[3] = swift_getObjectType();
  v4[4] = *(v2 + 8);
  v4[0] = v1;
  swift_unknownObjectRetain_n();
  sub_29E2C0164();
  swift_unknownObjectRelease();

  return sub_29DE93B3C(v4);
}

uint64_t sub_29E1BE71C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E1BE904(qword_2A1A60610, 255, type metadata accessor for SharedCyclePredictionExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E1BE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E1BE904(qword_2A1A60610, 255, type metadata accessor for SharedCyclePredictionExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E1BE904(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1BE998(void *a1)
{
  sub_29E1BF3B8(0, &qword_2A181EFF8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29DE966D4(a1, a1[3]);
  sub_29E1BF29C();
  sub_29E2C4AA4();
  v9[15] = 0;
  sub_29E1BF204(0);
  sub_29E1BE904(&qword_2A181F000, 255, sub_29E1BF204);
  sub_29E2C48A4();
  if (!v1)
  {
    type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan(0);
    v9[14] = 1;
    sub_29E2C4894();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E1BEB64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_29E1BF204(0);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1BF3B8(0, &qword_2A181EFE0, MEMORY[0x29EDC9E80]);
  v26 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E1BF29C();
  sub_29E2C4A94();
  if (v2)
  {
    return sub_29DE93B3C(a1);
  }

  v21 = v12;
  v13 = v23;
  v14 = v24;
  v28 = 0;
  sub_29E1BE904(&qword_2A181EFF0, 255, sub_29E1BF204);
  v15 = v25;
  sub_29E2C4844();
  (*(v14 + 32))(v21, v6, v15);
  v27 = 1;
  v16 = sub_29E2C4834();
  (*(v13 + 8))(v9, v26);
  v17 = v16 & 1;
  v19 = v21;
  v18 = v22;
  v21[*(v10 + 20)] = v17;
  sub_29E1BF2F0(v19, v18, type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan);
  sub_29DE93B3C(a1);
  return sub_29E1BF358(v19, type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan);
}

uint64_t sub_29E1BEECC()
{
  if (*v0)
  {
    return 0x72616F626E4F7369;
  }

  else
  {
    return 0x736973796C616E61;
  }
}

uint64_t sub_29E1BEF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736973796C616E61 && a2 == 0xE800000000000000;
  if (v6 || (sub_29E2C4914() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616F626E4F7369 && a2 == 0xEB00000000646564)
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

uint64_t sub_29E1BEFF0(uint64_t a1)
{
  v2 = sub_29E1BF29C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E1BF02C(uint64_t a1)
{
  v2 = sub_29E1BF29C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E1BF06C()
{
  v0 = sub_29E2BFF94();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC3500], v0, v2);
  sub_29E2BFFA4();
  return (*(v1 + 8))(v4, v0);
}

void sub_29E1BF238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E1BF29C()
{
  result = qword_2A181EFE8;
  if (!qword_2A181EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181EFE8);
  }

  return result;
}

uint64_t sub_29E1BF2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1BF358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E1BF3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E1BF29C();
    v7 = a3(a1, &type metadata for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E1BF41C()
{
  v0 = sub_29E2C00B4();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2BFED4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29DE99B54();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CE220;
  sub_29E2BFEC4();
  v3 = MEMORY[0x29EDC9E90];
  sub_29E1BF238(0, &qword_2A1A5E000, sub_29DECE8F0, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CD7A0;
  *(v4 + 56) = sub_29E2C0094();
  *(v4 + 64) = sub_29E1BE904(&qword_2A1A61538, 255, MEMORY[0x29EDC35C0]);
  sub_29DEBB7E8((v4 + 32));
  sub_29E2C00A4();
  sub_29E2C0084();
  sub_29E1BF238(0, &qword_2A1A5DFD8, type metadata accessor for HKFeatureIdentifier, v3);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v6 = *MEMORY[0x29EDBA708];
  *(inited + 32) = *MEMORY[0x29EDBA708];
  v7 = v6;
  sub_29DE93BAC(inited);
  swift_setDeallocating();
  sub_29E1BF358(inited + 32, type metadata accessor for HKFeatureIdentifier);
  *(v4 + 96) = sub_29E2BD924();
  *(v4 + 104) = sub_29E1BE904(&qword_2A1A61650, 255, MEMORY[0x29EDC3AB0]);
  sub_29DEBB7E8((v4 + 72));
  sub_29E2BD914();
  sub_29E2BFEF4();
  swift_allocObject();
  *(v2 + 32) = sub_29E2BFEE4();
  return v2;
}

uint64_t sub_29E1BF6F0(uint64_t a1)
{
  v74 = *v1;
  v3 = sub_29E2C0514();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v73 = &v71 - v6;
  v7 = MEMORY[0x29EDC34D8];
  sub_29E1BF238(0, &qword_2A1A61568, MEMORY[0x29EDC3AC0], MEMORY[0x29EDC34D8]);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v71 - v9;
  sub_29E1C02C4(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v77 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BFC94();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2C00B4();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  sub_29E1BF238(0, &qword_2A1A61550, type metadata accessor for CycleAnalysisInputSignal, v7);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v71 - v22;
  sub_29E1C02F8(0);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C00A4();
  type metadata accessor for CycleAnalysisInputSignal();
  sub_29E2BFF74();
  sub_29E1BE904(qword_2A1A60DC8, 255, type metadata accessor for CycleAnalysisInputSignal);
  sub_29E2C0074();
  (*(v21 + 8))(v23, v20);
  sub_29E1C032C();
  v28 = v27;
  v29 = *(v27 - 8);
  if ((*(v29 + 48))(v26, 1, v27) == 1)
  {
    sub_29E1BF358(v26, sub_29E1C02F8);
    swift_getObjectType();
    v30 = v80;
    sub_29E2BFEB4();

    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A14();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a1;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v84 = v35;
      *v34 = 136315394;
      v36 = sub_29E2C4AE4();
      v38 = sub_29DFAA104(v36, v37, &v84);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v83 = v33;
      sub_29E2C0064();
      sub_29E1BE904(&qword_2A181F008, 255, MEMORY[0x29EDC35A8]);
      v39 = sub_29E2C48D4();
      v41 = sub_29DFAA104(v39, v40, &v84);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29DE74000, v31, v32, "[%s] Missing analysis anchor in anchorSet: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    (*(v81 + 8))(v30, v82);
    return MEMORY[0x29EDCA190];
  }

  v42 = sub_29E2C00F4();
  (*(v29 + 8))(v26, v28);
  sub_29E2BD954();
  sub_29E2BFF14();
  sub_29E1BE904(&qword_2A1A61640, 255, MEMORY[0x29EDC3AC0]);
  sub_29E2C0074();
  (*(v75 + 8))(v10, v76);
  v43 = sub_29E2BD944();
  v44 = *(v43 - 8);
  v45 = a1;
  if ((*(v44 + 48))(v13, 1, v43) == 1)
  {
    sub_29E1BF358(v13, sub_29E1C02C4);
    v46 = v77;
    (*(v78 + 56))(v77, 1, 1, v79);
LABEL_13:
    sub_29E1BF358(v46, sub_29DF952D8);
    swift_getObjectType();
    v53 = v73;
    sub_29E2BFEB4();

    v54 = sub_29E2C0504();
    v55 = sub_29E2C3A14();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v84 = v57;
      *v56 = 136315394;
      v58 = sub_29E2C4AE4();
      v60 = sub_29DFAA104(v58, v59, &v84);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v83 = v45;
      sub_29E2C0064();
      sub_29E1BE904(&qword_2A181F008, 255, MEMORY[0x29EDC35A8]);
      v61 = sub_29E2C48D4();
      v63 = sub_29DFAA104(v61, v62, &v84);

      *(v56 + 14) = v63;
      _os_log_impl(&dword_29DE74000, v54, v55, "[%s] Missing featureStatus anchor in anchorSet: %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v57, -1, -1);
      MEMORY[0x29ED82140](v56, -1, -1);
    }

    (*(v81 + 8))(v53, v82);
    return MEMORY[0x29EDCA190];
  }

  v47 = sub_29E2BD934();
  (*(v44 + 8))(v13, v43);
  v49 = v78;
  v48 = v79;
  if (*(v47 + 16))
  {
    v50 = sub_29E187A6C(*MEMORY[0x29EDBA708]);
    v46 = v77;
    if (v51)
    {
      (*(v49 + 16))(v77, *(v47 + 56) + *(v49 + 72) * v50, v48);
      v52 = 0;
    }

    else
    {
      v52 = 1;
    }
  }

  else
  {
    v52 = 1;
    v46 = v77;
  }

  (*(v49 + 56))(v46, v52, 1, v48);
  if ((*(v49 + 48))(v46, 1, v48) == 1)
  {
    goto LABEL_13;
  }

  v65 = v72;
  (*(v49 + 32))(v72, v46, v48);
  sub_29E1BF238(0, &qword_2A1A5DFE8, type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan, MEMORY[0x29EDC9E90]);
  v66 = (type metadata accessor for SharedCyclePredictionExecutor.Planner.SharedCyclePredictionWorkPlan(0) - 8);
  v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_29E2CAB20;
  v69 = v68 + v67;
  v70 = v42;
  LOBYTE(v67) = sub_29E2BFC84();
  sub_29DEBAF28();
  sub_29E2C2F94();
  *(v69 + v66[7]) = v67 & 1;

  (*(v49 + 8))(v65, v48);
  return v68;
}

void sub_29E1C032C()
{
  if (!qword_2A1A61528)
  {
    sub_29DEBAF28();
    sub_29E1BE904(&qword_2A1A5E278, 255, sub_29DEBAF28);
    v0 = sub_29E2C0104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61528);
    }
  }
}

void sub_29E1C03FC()
{
  sub_29E1BF204(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E1C0474()
{
  result = qword_2A181F010;
  if (!qword_2A181F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F010);
  }

  return result;
}

unint64_t sub_29E1C04CC()
{
  result = qword_2A181F018;
  if (!qword_2A181F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F018);
  }

  return result;
}

unint64_t sub_29E1C0524()
{
  result = qword_2A181F020;
  if (!qword_2A181F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F020);
  }

  return result;
}

uint64_t sub_29E1C05D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2BEFA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E1C070C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2BEFA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_29E1C0858()
{
  sub_29E1C21F8(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29E2BEFA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E1C0928@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
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
  sub_29E1C1F4C();
  v26 = v25;
  v27 = *(v25 + 44);
  v28 = sub_29E2BEFA4();
  (*(*(v28 - 8) + 16))(a1 + v27, v20 + v24, v28);
  v29 = v20;
  v30 = v42;
  sub_29E1C27E0(v29, v42, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29E1C2474(v30, v32 + v31, type metadata accessor for GestationalAgeInWeeksAndDaysPickerRow);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD00000000000001DLL;
  v35[1] = 0x800000029E305150;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29E1C24DC;
  v36[1] = v32;
  return result;
}

uint64_t sub_29E1C0DC4@<X0>(_BYTE *a1@<X8>)
{
  sub_29E1C2594();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v3 = sub_29E2C1F94();
  *(inited + 32) = v3;
  v4 = sub_29E2C1FB4();
  *(inited + 33) = v4;
  v5 = sub_29E2C1FA4();
  sub_29E2C1FA4();
  if (sub_29E2C1FA4() != v3)
  {
    v5 = sub_29E2C1FA4();
  }

  sub_29E2C1FA4();
  if (sub_29E2C1FA4() != v4)
  {
    v5 = sub_29E2C1FA4();
  }

  *a1 = v5;
  sub_29E1C25E4();
  return sub_29E1C0EB4(&a1[*(v6 + 44)]);
}

uint64_t sub_29E1C0EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x29EDBCB50];
  sub_29E1C213C(0, &qword_2A181F088, MEMORY[0x29EDBCB50]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v20 - v7;
  v9 = MEMORY[0x29EDBCB28];
  sub_29E1C213C(0, &qword_2A181F068, MEMORY[0x29EDBCB28]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v20 - v14;
  *v15 = sub_29E2C1AA4();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_29E1C2680(0, &qword_2A181F0B0);
  sub_29E1C1128(&v15[*(v16 + 44)]);
  *v8 = sub_29E2C1BD4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_29E1C2680(0, &qword_2A181F0B8);
  sub_29E1C1128(&v8[*(v17 + 44)]);
  sub_29E1C2718(v15, v12, &qword_2A181F068, v9);
  sub_29E1C2718(v8, v5, &qword_2A181F088, v2);
  sub_29E1C2718(v12, a1, &qword_2A181F068, v9);
  sub_29E1C2094();
  sub_29E1C2718(v5, a1 + *(v18 + 48), &qword_2A181F088, v2);
  sub_29E1C2784(v8, &qword_2A181F088, v2);
  sub_29E1C2784(v15, &qword_2A181F068, v9);
  sub_29E1C2784(v5, &qword_2A181F088, v2);
  return sub_29E1C2784(v12, &qword_2A181F068, v9);
}

uint64_t sub_29E1C1128@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = type metadata accessor for PregnancyTimePeriodInputCell();
  v2 = v1 - 8;
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v17 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v17 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v17 - v12;
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  type metadata accessor for PregnancyDatesInputViewModel();
  sub_29E1C28A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2C2A44();
  v13[*(v2 + 28)] = 2;
  sub_29E2C2A24();
  sub_29E2C2A44();
  v10[*(v2 + 28)] = 1;
  sub_29E1C27E0(v13, v7, type metadata accessor for PregnancyTimePeriodInputCell);
  sub_29E1C27E0(v10, v4, type metadata accessor for PregnancyTimePeriodInputCell);
  v14 = v17;
  sub_29E1C27E0(v7, v17, type metadata accessor for PregnancyTimePeriodInputCell);
  sub_29E1C225C();
  sub_29E1C27E0(v4, v14 + *(v15 + 48), type metadata accessor for PregnancyTimePeriodInputCell);
  sub_29E1C2848(v10);
  sub_29E1C2848(v13);
  sub_29E1C2848(v4);
  return sub_29E1C2848(v7);
}

uint64_t sub_29E1C1398@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GestationalAgeOnDatePickerRow(0);
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v4;
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v37 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v37 - v15;
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
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
  sub_29E1C27E0(v29, v42, type metadata accessor for GestationalAgeOnDatePickerRow);
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  result = sub_29E1C2474(v30, v32 + v31, type metadata accessor for GestationalAgeOnDatePickerRow);
  v34 = v37;
  *a1 = v18;
  *(a1 + 8) = v34;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v35 = (a1 + *(v26 + 48));
  *v35 = 0xD000000000000023;
  v35[1] = 0x800000029E305100;
  v36 = (a1 + *(v26 + 52));
  *v36 = sub_29E1C1F20;
  v36[1] = v32;
  return result;
}

__n128 sub_29E1C1834@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v2 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E2BCBB4();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8D5C();
  v40 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1C21F8(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v45 = &v39 - v8;
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v39 - v12;
  v14 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v15 = sub_29E2C3384();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v39 - v20;
  sub_29DEA8B80();
  v47 = v22;
  v46 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v44 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v16 + 16))(v18, v21, v15);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  v25 = sub_29E2C3414();
  v27 = v26;
  (*(v16 + 8))(v21, v15);
  *&v53 = v25;
  *(&v53 + 1) = v27;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v11 + 8))(v13, v10);
  sub_29E2C2A24();
  v28 = *(v52 + 16);

  if (v28 == 1)
  {
    v29 = v41;
    sub_29E2BCBA4();
    sub_29E0B0D98(v29, v49);
    (*(v42 + 8))(v29, v43);
  }

  else
  {
    v30 = v49;
    if (qword_2A1816FD0 != -1)
    {
      swift_once();
    }

    v31 = sub_29DEA8E9C(v40, qword_2A1840FB0);
    sub_29E1C27E0(v31, v30, sub_29DEA8D5C);
  }

  sub_29E2C1C94();
  sub_29DE9DE68();
  v32 = v44;
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v33 = v51;
  (*(v46 + 32))(v51, v32, v47);
  sub_29DEA8B20();
  v35 = v33 + *(v34 + 36);
  v36 = v58;
  *(v35 + 64) = v57;
  *(v35 + 80) = v36;
  *(v35 + 96) = v59;
  v37 = v54;
  *v35 = v53;
  *(v35 + 16) = v37;
  result = v56;
  *(v35 + 32) = v55;
  *(v35 + 48) = result;
  return result;
}

void sub_29E1C1F4C()
{
  if (!qword_2A181F048)
  {
    sub_29E1C1FE0();
    sub_29E1C28A4(&qword_2A181F098, sub_29E1C1FE0);
    v0 = type metadata accessor for PregnancyInteractivePickerRow();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F048);
    }
  }
}

void sub_29E1C1FE0()
{
  if (!qword_2A181F050)
  {
    sub_29E1C21F8(255, &qword_2A181F058, sub_29E1C2094, MEMORY[0x29EDBCC28]);
    sub_29E1C22C0(&qword_2A181F090, &qword_2A181F058, sub_29E1C2094);
    v0 = sub_29E2C1554();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F050);
    }
  }
}

void sub_29E1C2094()
{
  if (!qword_2A181F060)
  {
    sub_29E1C213C(255, &qword_2A181F068, MEMORY[0x29EDBCB28]);
    sub_29E1C213C(255, &qword_2A181F088, MEMORY[0x29EDBCB50]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181F060);
    }
  }
}

void sub_29E1C213C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E1C21F8(255, &qword_2A181F070, sub_29E1C225C, MEMORY[0x29EDBCC28]);
    v7 = v6;
    v8 = sub_29E1C22C0(&qword_2A181F080, &qword_2A181F070, sub_29E1C225C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E1C21F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E1C225C()
{
  if (!qword_2A181F078)
  {
    type metadata accessor for PregnancyTimePeriodInputCell();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181F078);
    }
  }
}

uint64_t sub_29E1C22C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E1C21F8(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1C2324(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  sub_29E1C21F8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = v2[7];
  v8 = sub_29E2BEFA4();
  (*(*(v8 - 8) + 8))(v1 + v4 + v7, v8);

  return MEMORY[0x2A1C733A0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_29E1C2474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1C2508(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_29E1C2594()
{
  if (!qword_2A181F0A0)
  {
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F0A0);
    }
  }
}

void sub_29E1C25E4()
{
  if (!qword_2A181F0A8)
  {
    sub_29E1C21F8(255, &qword_2A181F058, sub_29E1C2094, MEMORY[0x29EDBCC28]);
    sub_29E1A7F98();
    v0 = sub_29E2C15D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F0A8);
    }
  }
}

void sub_29E1C2680(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29E1C21F8(255, &qword_2A181F070, sub_29E1C225C, MEMORY[0x29EDBCC28]);
    v3 = sub_29E2C15D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E1C2718(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_29E1C213C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E1C2784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_29E1C213C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E1C27E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1C2848(uint64_t a1)
{
  v2 = type metadata accessor for PregnancyTimePeriodInputCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E1C28A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1C28F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29E2BCB34() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_29E1424B4(v7, v8);
}

uint64_t sub_29E1C2958()
{
  v1 = v0;
  v2 = sub_29E2C31A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDBA2F8];
  v7 = MEMORY[0x29EDC9C68];
  sub_29E1C4000(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v12 - v9;
  sub_29E1C7288(v1, &v12 - v9, &qword_2A1A5E340, v6, v7);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_29E2C4A24();
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);
    sub_29E2C4A24();
    sub_29E1C71EC(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
    sub_29E2C3254();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for CompactCalendarDayViewModel(0);
  sub_29E2BFC44();
  sub_29E2C34B4();
  sub_29E2C4A24();
  return sub_29E2C4A24();
}

uint64_t sub_29E1C2BC0()
{
  sub_29E2C4A04();
  sub_29E1C2958();
  return sub_29E2C4A54();
}

uint64_t sub_29E1C2C04()
{
  sub_29E2C4A04();
  sub_29E1C2958();
  return sub_29E2C4A54();
}

uint64_t sub_29E1C2C40(uint64_t a1)
{
  v3 = MEMORY[0x29EDC9C68];
  sub_29E1C4000(0, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_viewModel;
  swift_beginAccess();
  sub_29E1C7288(v1 + v7, v6, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel, v3);
  v8 = type metadata accessor for CompactCalendarMonthViewModel(0);
  LODWORD(v3) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_29E1C6F10(v6, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel);
  if (v3 != 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_calendarView);
    if (v9)
    {
      [v9 removeFromSuperview];
    }
  }

  swift_beginAccess();
  sub_29E1C67AC(a1, v1 + v7);
  return swift_endAccess();
}

id sub_29E1C2F5C()
{
  sub_29E2BF404();
  v0 = sub_29E2C3604();

  return v0;
}

uint64_t sub_29E1C2FC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_29E2C3614();
}

void sub_29E1C31FC(uint64_t a1)
{
  v25 = a1;
  v1 = sub_29E2C2A74();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_29E2C2A84();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompactCalendar(0);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1C66B0(v25, v12, type metadata accessor for CompactCalendarMonthViewModel);
  v25 = *(v10 + 28);
  *v4 = xmmword_29E2E44B0;
  (*(v2 + 104))(v4, *MEMORY[0x29EDBC2C0], v1);
  sub_29E2C2A94();
  v13 = sub_29E2C3664();
  *(v13 + 16) = 7;
  v14 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v15 = *(v6 + 16);
  v15(v14, v8, v5);
  v16 = *(v6 + 72);
  v15(v14 + v16, v8, v5);
  v15(v14 + 2 * v16, v8, v5);
  v15(v14 + 3 * v16, v8, v5);
  v15(v14 + 4 * v16, v8, v5);
  v15(v14 + 5 * v16, v8, v5);
  (*(v6 + 32))(v14 + 6 * v16, v8, v5);
  *&v12[v25] = v13;
  sub_29E1C6718();
  v18 = objc_allocWithZone(v17);
  v19 = sub_29E2C16A4();
  v20 = v26;
  v21 = *&v26[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_calendarView];
  *&v26[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_calendarView] = v19;
  v22 = v19;

  v23 = [v20 contentView];
  [v23 addSubview_];

  v24 = [v20 contentView];
  MEMORY[0x29ED807E0]();
}

uint64_t sub_29E1C358C(uint64_t a1)
{
  sub_29E1C4000(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v66 = &v61 - v3;
  v4 = type metadata accessor for CompactCalendarDayViewModel(0);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v64 = &v61 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v67 = &v61 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v61 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v61 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v61 - v18;
  result = type metadata accessor for CompactCalendarMonthViewModel(0);
  v21 = *(a1 + *(result + 20));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = MEMORY[0x29EDCA190];
    v25 = v67;
    v62 = *(v21 + 16);
    v63 = v13;
    while (v23 < *(v21 + 16))
    {
      v26 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v27 = *(v69 + 72);
      sub_29E1C66B0(v21 + v26 + v27 * v23, v19, type metadata accessor for CompactCalendarDayViewModel);
      if (v19[*(v68 + 28)] == 1)
      {
        sub_29E1C664C(v19, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E181B24(0, *(v24 + 16) + 1, 1);
          v25 = v67;
          v24 = v70;
        }

        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_29E181B24(v29 > 1, v30 + 1, 1);
          v25 = v67;
          v24 = v70;
        }

        *(v24 + 16) = v30 + 1;
        v31 = v24 + v26 + v30 * v27;
        v13 = v63;
        result = sub_29E1C664C(v63, v31);
        v22 = v62;
      }

      else
      {
        result = sub_29E1C65EC(v19, type metadata accessor for CompactCalendarDayViewModel);
      }

      if (v22 == ++v23)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v24 = MEMORY[0x29EDCA190];
  v25 = v67;
LABEL_13:
  v32 = *(v24 + 16);
  if (v32)
  {
    v63 = v21;
    v33 = v24 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v34 = *(v69 + 72);
    v35 = MEMORY[0x29EDCA190];
    do
    {
      sub_29E1C66B0(v33, v16, type metadata accessor for CompactCalendarDayViewModel);
      v36 = sub_29E2C31A4();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v16, 1, v36) == 1)
      {
        sub_29E1C65EC(v16, type metadata accessor for CompactCalendarDayViewModel);
      }

      else
      {
        v38 = v66;
        sub_29E1C7288(v16, v66, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
        v39 = sub_29E2C3164();
        (*(v37 + 8))(v38, v36);
        sub_29E1C65EC(v16, type metadata accessor for CompactCalendarDayViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_29E145588(0, *(v35 + 2) + 1, 1, v35);
        }

        v41 = *(v35 + 2);
        v40 = *(v35 + 3);
        if (v41 >= v40 >> 1)
        {
          v35 = sub_29E145588((v40 > 1), v41 + 1, 1, v35);
        }

        *(v35 + 2) = v41 + 1;
        *&v35[8 * v41 + 32] = v39;
        v25 = v67;
      }

      v33 += v34;
      --v32;
    }

    while (v32);

    v21 = v63;
  }

  else
  {

    v35 = MEMORY[0x29EDCA190];
  }

  *(v61 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_ax_flowDays) = v35;

  v42 = *(v21 + 16);
  v43 = v64;
  if (v42)
  {
    v44 = 0;
    v45 = MEMORY[0x29EDCA190];
    while (v44 < *(v21 + 16))
    {
      v46 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v47 = *(v69 + 72);
      sub_29E1C66B0(v21 + v46 + v47 * v44, v25, type metadata accessor for CompactCalendarDayViewModel);
      if (*(v25 + *(v68 + 32)) == 1)
      {
        sub_29E1C664C(v25, v65);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v70 = v45;
        if ((v48 & 1) == 0)
        {
          sub_29E181B24(0, *(v45 + 16) + 1, 1);
          v25 = v67;
          v45 = v70;
        }

        v50 = *(v45 + 16);
        v49 = *(v45 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_29E181B24(v49 > 1, v50 + 1, 1);
          v25 = v67;
          v45 = v70;
        }

        *(v45 + 16) = v50 + 1;
        result = sub_29E1C664C(v65, v45 + v46 + v50 * v47);
      }

      else
      {
        result = sub_29E1C65EC(v25, type metadata accessor for CompactCalendarDayViewModel);
      }

      if (v42 == ++v44)
      {
        goto LABEL_37;
      }
    }

LABEL_51:
    __break(1u);
    return result;
  }

  v45 = MEMORY[0x29EDCA190];
LABEL_37:
  v51 = *(v45 + 16);
  if (v51)
  {
    v52 = v45 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v53 = *(v69 + 72);
    v54 = MEMORY[0x29EDCA190];
    do
    {
      sub_29E1C66B0(v52, v43, type metadata accessor for CompactCalendarDayViewModel);
      v55 = sub_29E2C31A4();
      v56 = *(v55 - 8);
      if ((*(v56 + 48))(v43, 1, v55) == 1)
      {
        sub_29E1C65EC(v43, type metadata accessor for CompactCalendarDayViewModel);
      }

      else
      {
        v57 = v66;
        sub_29E1C7288(v43, v66, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
        v58 = sub_29E2C3164();
        (*(v56 + 8))(v57, v55);
        sub_29E1C65EC(v43, type metadata accessor for CompactCalendarDayViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_29E145588(0, *(v54 + 2) + 1, 1, v54);
        }

        v60 = *(v54 + 2);
        v59 = *(v54 + 3);
        if (v60 >= v59 >> 1)
        {
          v54 = sub_29E145588((v59 > 1), v60 + 1, 1, v54);
        }

        *(v54 + 2) = v60 + 1;
        *&v54[8 * v60 + 32] = v58;
        v43 = v64;
      }

      v52 += v53;
      --v51;
    }

    while (v51);
  }

  else
  {

    v54 = MEMORY[0x29EDCA190];
  }

  *(v61 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CalendarMonthCell_ax_spottingDays) = v54;
}

void sub_29E1C3E88()
{
  sub_29E1C4000(319, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29E1C4000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E1C4078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_29E1C414C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_29E1C423C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  a4(319);
  if (v8 <= 0x3F)
  {
    sub_29E1C4000(319, a5, a6, MEMORY[0x29EDC9A40]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E1C4338()
{
  sub_29E1C4000(319, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29E1C445C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_29E2C1D54();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E1C4C74();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v19[-v11];
  type metadata accessor for CompactCalendar(0);
  sub_29E2BF404();
  sub_29E2C1BD4();
  sub_29E2C1D44();
  v20 = a1;
  sub_29E1C4CD8();
  sub_29E1C4EEC();
  sub_29E2C2AF4();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v21 = 1;
  v13(a2, v9, v6);
  sub_29E1C4C0C();
  v15 = &a2[*(v14 + 48)];
  v16 = v21;
  *v15 = 0;
  v15[8] = v16;
  v17 = *(v7 + 8);
  v17(v12, v6);
  return (v17)(v9, v6);
}

uint64_t sub_29E1C4688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v3 = sub_29E2BCA44();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCA54();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = v28 - v13;
  MEMORY[0x29ED78A30](v12);
  sub_29E2BCA14();
  sub_29E2BC9B4();
  (*(v4 + 8))(v6, v3);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_29E1C71EC(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29E2BCB94();
  v15(v14, v7);
  sub_29DE9DE68();
  v16 = sub_29E2C2294();
  v18 = v17;
  LOBYTE(v15) = v19;
  sub_29E2C20E4();
  sub_29E2C2064();

  v20 = sub_29E2C2254();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_29DED6478(v16, v18, v15 & 1);

  v28[5] = v20;
  v28[6] = v22;
  v29 = v24 & 1;
  v30 = v26;
  v28[4] = a1;
  sub_29E1C4D40();
  sub_29E1C4F78();
  return sub_29E2C29D4();
}

uint64_t sub_29E1C4980()
{
  type metadata accessor for CompactCalendarMonthViewModel(0);
  swift_getKeyPath();
  sub_29E1C4000(0, &qword_2A181F110, type metadata accessor for CompactCalendarDayViewModel, MEMORY[0x29EDC9A40]);
  type metadata accessor for Day(0);
  sub_29E1C4E64();
  sub_29E1C71EC(&qword_2A181F168, type metadata accessor for CompactCalendarDayViewModel);
  sub_29E1C71EC(&qword_2A181F180, type metadata accessor for Day);
  sub_29E2BF404();
  return sub_29E2C29A4();
}

uint64_t sub_29E1C4AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Day(0);
  sub_29E1C66B0(a1, a2 + *(v4 + 20), type metadata accessor for CompactCalendarDayViewModel);
  *a2 = swift_getKeyPath();
  sub_29E1C4000(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E1C4BA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1BD4();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  sub_29E1C6AC0(0, &qword_2A181F130, &qword_2A181F138, sub_29E1C4C0C);
  return sub_29E1C445C(v1, (a1 + *(v3 + 44)));
}

void sub_29E1C4C0C()
{
  if (!qword_2A181F140)
  {
    sub_29E1C4C74();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181F140);
    }
  }
}

void sub_29E1C4C74()
{
  if (!qword_2A181F148)
  {
    sub_29E1C4CD8();
    sub_29E1C4EEC();
    v0 = sub_29E2C2B04();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F148);
    }
  }
}

void sub_29E1C4CD8()
{
  if (!qword_2A181F150)
  {
    sub_29E1C4D40();
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F150);
    }
  }
}

void sub_29E1C4D40()
{
  if (!qword_2A181F158)
  {
    sub_29E1C4000(255, &qword_2A181F110, type metadata accessor for CompactCalendarDayViewModel, MEMORY[0x29EDC9A40]);
    type metadata accessor for CompactCalendarDayViewModel(255);
    type metadata accessor for Day(255);
    sub_29E1C4E64();
    sub_29E1C71EC(&qword_2A181F168, type metadata accessor for CompactCalendarDayViewModel);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F158);
    }
  }
}

unint64_t sub_29E1C4E64()
{
  result = qword_2A181F160;
  if (!qword_2A181F160)
  {
    sub_29E1C4000(255, &qword_2A181F110, type metadata accessor for CompactCalendarDayViewModel, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F160);
  }

  return result;
}

unint64_t sub_29E1C4EEC()
{
  result = qword_2A181F170;
  if (!qword_2A181F170)
  {
    sub_29E1C4CD8();
    sub_29E1C4F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F170);
  }

  return result;
}

unint64_t sub_29E1C4F78()
{
  result = qword_2A181F178;
  if (!qword_2A181F178)
  {
    sub_29E1C4D40();
    sub_29E1C71EC(&qword_2A181F180, type metadata accessor for Day);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F178);
  }

  return result;
}

uint64_t sub_29E1C5030@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  sub_29E1C6BAC();
  v2 = v1 - 8;
  MEMORY[0x2A1C7C4A8](v1);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v24 - v5;
  sub_29E1C5294(&v24 - v5);
  sub_29E1C554C(&v42);
  v7 = v42;
  v8 = v43;
  v9 = *(&v43 + 1);
  v10 = v44;
  v11 = BYTE1(v44);
  v12 = sub_29E2C2AB4();
  LOBYTE(v41[0]) = v8;
  v30 = v7;
  LOBYTE(v31) = v8;
  *(&v31 + 1) = v9;
  LOBYTE(v32) = v10;
  BYTE1(v32) = v11;
  *(&v32 + 1) = v12;
  v33 = v13;
  v14 = &v6[*(v2 + 44)];
  v15 = v32;
  *(v14 + 1) = v31;
  *(v14 + 2) = v15;
  *v14 = v30;
  *(v14 + 6) = v13;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  sub_29E1C66B0(&v30, v46, sub_29E1C6D04);
  sub_29E1C65EC(&v34, sub_29E1C6D04);
  sub_29E1C58BC(v41);
  v16 = v24;
  sub_29E1C66B0(v6, v24, sub_29E1C6BAC);
  v26 = v41[0];
  v27 = v41[1];
  v28 = v41[2];
  v29 = v41[3];
  v17 = v25;
  sub_29E1C66B0(v16, v25, sub_29E1C6BAC);
  sub_29E1C6B3C();
  v19 = (v17 + *(v18 + 48));
  v20 = v27;
  v42 = v26;
  v43 = v27;
  v22 = v28;
  v21 = v29;
  v44 = v28;
  v45 = v29;
  *v19 = v26;
  v19[1] = v20;
  v19[2] = v22;
  v19[3] = v21;
  sub_29E1C66B0(&v42, v46, sub_29E1C6E10);
  sub_29E1C65EC(v6, sub_29E1C6BAC);
  v46[0] = v26;
  v46[1] = v27;
  v46[2] = v28;
  v46[3] = v29;
  sub_29E1C65EC(v46, sub_29E1C6E10);
  return sub_29E1C65EC(v16, sub_29E1C6BAC);
}

void sub_29E1C5294(uint64_t a1@<X8>)
{
  v23 = a1;
  sub_29E1C7180(0, &qword_2A181F1E8, type metadata accessor for SelectedDayIndicator, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v3 = v2 - 8;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = (&v22 - v4);
  *v5 = swift_getKeyPath();
  sub_29E1C4000(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  v8 = objc_opt_self();
  v9 = [v8 currentTraitCollection];
  [v7 scaledValueForValue:v9 compatibleWithTraitCollection:13.0];

  v10 = [v6 defaultMetrics];
  v11 = [v8 currentTraitCollection];
  [v10 scaledValueForValue:v11 compatibleWithTraitCollection:13.0];

  sub_29E2C2AB4();
  sub_29E2C1564();
  v12 = (v5 + *(v3 + 44));
  v13 = v25;
  *v12 = v24;
  v12[1] = v13;
  v12[2] = v26;
  v14 = v1 + *(type metadata accessor for Day(0) + 20);
  if (*(v14 + *(type metadata accessor for CompactCalendarDayViewModel(0) + 28)) == 1)
  {
    v15 = [objc_opt_self() hkmc_menstruationColor];
    v16 = sub_29E2C2654();
  }

  else
  {
    v16 = sub_29E2C2684();
  }

  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = v23;
  sub_29E1C6F80(v5, v23);
  sub_29E1C6C14();
  v21 = (v19 + *(v20 + 36));
  *v21 = KeyPath;
  v21[1] = v17;
}

uint64_t sub_29E1C554C@<X0>(uint64_t a1@<X8>)
{
  v39[0] = a1;
  sub_29E1C4000(0, &qword_2A181A460, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v39 - v3;
  v5 = v1 + *(type metadata accessor for Day(0) + 20);
  v6 = type metadata accessor for CompactCalendarDayViewModel(0);
  v7 = (v5 + *(v6 + 24));
  v8 = v7[1];
  v39[4] = *v7;
  v39[5] = v8;
  sub_29DE9DE68();
  sub_29E2BF404();
  v9 = sub_29E2C2294();
  v11 = v10;
  v13 = v12;
  if (*(v5 + *(v6 + 28)) == 1)
  {
    v14 = objc_opt_self();
    v15 = &selRef_whiteColor;
  }

  else
  {
    v16 = sub_29E2BFC24();
    v14 = objc_opt_self();
    v15 = &selRef_labelColor;
    if (v16)
    {
      v15 = &selRef_secondaryLabelColor;
    }
  }

  v17 = [v14 *v15];
  sub_29E2C2654();
  v18 = sub_29E2C2214();
  v20 = v19;
  v22 = v21;

  sub_29DED6478(v9, v11, v13 & 1);

  v23 = [objc_opt_self() defaultMetrics];
  v24 = [objc_opt_self() currentTraitCollection];
  [v23 scaledValueForValue:v24 compatibleWithTraitCollection:9.0];

  v25 = sub_29E2C2074();
  (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  sub_29E2C20C4();
  sub_29E1C6F10(v4, &qword_2A181A460, MEMORY[0x29EDBC990]);
  v26 = sub_29E2C2254();
  v28 = v27;
  v30 = v29;

  sub_29DED6478(v18, v20, v22 & 1);

  sub_29E2C20B4();
  v31 = sub_29E2C2204();
  v33 = v32;
  LOBYTE(v18) = v34;
  v36 = v35;
  sub_29DED6478(v26, v28, v30 & 1);

  v38 = v39[0];
  *v39[0] = v31;
  *(v38 + 8) = v33;
  *(v38 + 16) = v18 & 1;
  *(v38 + 24) = v36;
  *(v38 + 32) = 257;
  return result;
}

uint64_t sub_29E1C58BC@<X0>(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultMetrics];
  v5 = objc_opt_self();
  v6 = [v5 currentTraitCollection];
  [v4 scaledValueForValue:v6 compatibleWithTraitCollection:2.0];

  v7 = [v3 defaultMetrics];
  v8 = [v5 currentTraitCollection];
  [v7 scaledValueForValue:v8 compatibleWithTraitCollection:2.0];

  sub_29E2C2AB4();
  sub_29E2C1564();
  v9 = v1 + *(type metadata accessor for Day(0) + 20);
  if (*(v9 + *(type metadata accessor for CompactCalendarDayViewModel(0) + 32)) == 1)
  {
    v10 = [objc_opt_self() hkmc_supplementaryDataColor];
    v11 = sub_29E2C2654();
  }

  else
  {
    v11 = sub_29E2C2684();
  }

  v12 = v11;
  result = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = result;
  *(a1 + 56) = v12;
  return result;
}

uint64_t sub_29E1C5A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBC518];
  v9 = MEMORY[0x29EDBC388];
  sub_29E1C4000(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v16 - v11;
  sub_29E1C7288(v2, &v16 - v11, &qword_2A1819020, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29E2C16E4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_29E2C3A24();
    v15 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E1C5CB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1BC4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29E1C6AC0(0, &qword_2A181F1C0, &qword_2A181F1C8, sub_29E1C6B3C);
  return sub_29E1C5030(a1 + *(v2 + 44));
}

uint64_t sub_29E1C5D20@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  sub_29E1C7180(0, &qword_2A181F238, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBCB20], MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = v25 - v2;
  v4 = sub_29E2C1794();
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C16E4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v25 - v12;
  sub_29E1C5A8C(v25 - v12);
  (*(v8 + 104))(v10, *MEMORY[0x29EDBC4E0], v7);
  sub_29E1C71EC(&qword_2A181EC98, MEMORY[0x29EDBC518]);
  v14 = sub_29E2C3284();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if (v14)
  {
    v16 = *(v4 + 20);
    v17 = *MEMORY[0x29EDBC6F8];
    v18 = sub_29E2C1B64();
    (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
    __asm { FMOV            V0.2D, #4.0 }

    *v6 = _Q0;
    sub_29E1C66B0(v6, v3, MEMORY[0x29EDBC5C0]);
    swift_storeEnumTagMultiPayload();
    sub_29E1C71EC(&qword_2A181F240, MEMORY[0x29EDBC5C0]);
    sub_29E1C7234();
    sub_29E2C1C74();
    return sub_29E1C65EC(v6, MEMORY[0x29EDBC5C0]);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_29E1C71EC(&qword_2A181F240, MEMORY[0x29EDBC5C0]);
    sub_29E1C7234();
    return sub_29E2C1C74();
  }
}

uint64_t sub_29E1C6110(uint64_t a1)
{
  v2 = sub_29E2C16E4();
  v3 = MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29E2C18D4();
}

uint64_t sub_29E1C61D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDBA2F8];
  v8 = MEMORY[0x29EDC9C68];
  sub_29E1C4000(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v30 - v10;
  sub_29DF1DDB4();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  v32 = a1;
  sub_29E1C7288(a1, v14, &qword_2A1A5E340, v7, v8);
  v33 = a2;
  sub_29E1C7288(a2, &v14[v16], &qword_2A1A5E340, v7, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_29E1C7288(v14, v11, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      v18 = v31;
      (*(v5 + 32))(v31, &v14[v16], v4);
      sub_29E1C71EC(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      v19 = sub_29E2C3304();
      v20 = *(v5 + 8);
      v20(v18, v4);
      v20(v11, v4);
      sub_29E1C6F10(v14, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_29E1C65EC(v14, sub_29DF1DDB4);
    goto LABEL_13;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_29E1C6F10(v14, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
LABEL_8:
  v21 = type metadata accessor for CompactCalendarDayViewModel(0);
  v23 = v32;
  v22 = v33;
  if (sub_29E2BFC24())
  {
    if (v24 = v21[6], v25 = *(v23 + v24), v26 = *(v23 + v24 + 8), v27 = (v22 + v24), v25 == *v27) && v26 == v27[1] || (sub_29E2C4914())
    {
      if (*(v23 + v21[7]) == *(v22 + v21[7]))
      {
        v28 = *(v23 + v21[8]) ^ *(v22 + v21[8]) ^ 1;
        return v28 & 1;
      }
    }
  }

LABEL_13:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_29E1C65EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E1C664C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactCalendarDayViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E1C66B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E1C6718()
{
  if (!qword_2A181F188)
  {
    type metadata accessor for CompactCalendar(255);
    sub_29E1C71EC(&qword_2A181F190, type metadata accessor for CompactCalendar);
    v0 = sub_29E2C16B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F188);
    }
  }
}

uint64_t sub_29E1C67AC(uint64_t a1, uint64_t a2)
{
  sub_29E1C4000(0, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29E1C6868()
{
  sub_29E1C4000(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CompactCalendarDayViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E1C691C()
{
  result = qword_2A181F1A8;
  if (!qword_2A181F1A8)
  {
    sub_29E1C69A0(255, &qword_2A181F1B0, &qword_2A181F138, sub_29E1C4C0C, &qword_2A181F1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F1A8);
  }

  return result;
}

void sub_29E1C69A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_29E1C4000(255, a3, a4, MEMORY[0x29EDBCC28]);
    sub_29E1C6A40(a5, a3, a4);
    v9 = sub_29E2C28F4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E1C6A40(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E1C4000(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E1C6AC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E1C4000(255, a3, a4, MEMORY[0x29EDBCC28]);
    v5 = sub_29E2C15D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E1C6B3C()
{
  if (!qword_2A181F1D0)
  {
    sub_29E1C6BAC();
    sub_29E1C6E10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181F1D0);
    }
  }
}

void sub_29E1C6BAC()
{
  if (!qword_2A181F1D8)
  {
    sub_29E1C6C14();
    sub_29E1C6D04();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F1D8);
    }
  }
}

void sub_29E1C6C14()
{
  if (!qword_2A181F1E0)
  {
    sub_29E1C7180(255, &qword_2A181F1E8, type metadata accessor for SelectedDayIndicator, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E1C4000(255, &qword_2A18184F0, sub_29E03D198, MEMORY[0x29EDBC938]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F1E0);
    }
  }
}

void sub_29E1C6D04()
{
  if (!qword_2A181F1F0)
  {
    sub_29E1C6EC0(255, &qword_2A181B7E8);
    sub_29E1C6D80();
    v0 = sub_29E2C17E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F1F0);
    }
  }
}

unint64_t sub_29E1C6D80()
{
  result = qword_2A181F1F8;
  if (!qword_2A181F1F8)
  {
    sub_29E1C6EC0(255, &qword_2A181B7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F1F8);
  }

  return result;
}

void sub_29E1C6E10()
{
  if (!qword_2A181F200)
  {
    sub_29E1C6EC0(255, &qword_2A181F208);
    sub_29E1C4000(255, &qword_2A18184F0, sub_29E03D198, MEMORY[0x29EDBC938]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F200);
    }
  }
}

void sub_29E1C6EC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E2C1744();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E1C6F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E1C4000(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E1C6F80(uint64_t a1, uint64_t a2)
{
  sub_29E1C7180(0, &qword_2A181F1E8, type metadata accessor for SelectedDayIndicator, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E1C7044()
{
  sub_29E1C4000(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E1C70E0()
{
  result = qword_2A181F220;
  if (!qword_2A181F220)
  {
    sub_29E1C69A0(255, &qword_2A181F228, &qword_2A181F1C8, sub_29E1C6B3C, &qword_2A181F230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F220);
  }

  return result;
}

void sub_29E1C7180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E1C71EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E1C7234()
{
  result = qword_2A181F248;
  if (!qword_2A181F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F248);
  }

  return result;
}

uint64_t sub_29E1C7288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29E1C4000(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_29E1C72F8()
{
  result = qword_2A181F250;
  if (!qword_2A181F250)
  {
    sub_29E1C7180(255, &qword_2A181F258, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBCB20], MEMORY[0x29EDBC7F0]);
    sub_29E1C71EC(&qword_2A181F240, MEMORY[0x29EDBC5C0]);
    sub_29E1C7234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F250);
  }

  return result;
}

void sub_29E1C73E0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPickerRange;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPickerRange);
  if (v2 != 1)
  {
    goto LABEL_12;
  }

  v3 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType);
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType + 16))
  {
    v4 = 0;
LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  v5 = *v3;
  v6 = v3[1];
  v7 = __OFSUB__(v6, *v3);
  v8 = v6 - *v3;
  if (v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == -1)
  {
    v4 = MEMORY[0x29EDCA190];
    goto LABEL_10;
  }

  v4 = sub_29E145C4C(v8 + 1, 0);
  if (sub_29DF5C1CC(&v11, (v4 + 4), v9, v5, v6) == v9)
  {
    v10 = *(v0 + v1);
LABEL_11:
    *(v0 + v1) = v4;
    sub_29E2BF404();
    sub_29E1C8D5C(v10);
LABEL_12:
    sub_29E1C8D6C(v2);
    return;
  }

LABEL_15:
  __break(1u);
}

id sub_29E1C74F8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker);
  }

  else
  {
    v4 = sub_29E1C7914(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E1C755C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dateComponentsFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dateComponentsFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dateComponentsFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDB9F70]) init];
    [v4 setUnitsStyle_];
    [v4 setAllowedUnits_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E1C7618(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29E1C7678()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___nextButton;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___nextButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___nextButton);
  }

  else
  {
    v4 = sub_29E08D744();
    [v4 addTarget:v0 action:sel_nextButtonTapped_ forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E1C76F8()
{
  v0 = sub_29E2BCBB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7A48]) init];
  [v4 setDatePickerMode_];
  [v4 setPreferredDatePickerStyle_];
  sub_29E1529F0(v3);
  v5 = sub_29E2BCB04();
  v6 = *(v1 + 8);
  v6(v3, v0);
  [v4 setMinimumDate_];

  sub_29E2BCBA4();
  v7 = sub_29E2BCB04();
  v6(v3, v0);
  [v4 setMaximumDate_];

  v8 = v4;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v11 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000018, 0x800000029E2F2010);
  v9 = sub_29E2C33A4();

  [v8 setAccessibilityIdentifier_];

  return v8;
}

id sub_29E1C7914(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7BC0]) init];
  [v2 setDataSource_];
  [v2 setDelegate_];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A67E58;
  v7 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000016, 0x800000029E3018A0);
  v4 = sub_29E2C33A4();

  [v3 setAccessibilityIdentifier_];

  return v3;
}

id sub_29E1C7A38()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

void sub_29E1C7B48()
{
  v1 = v0;
  v100.receiver = v0;
  v100.super_class = type metadata accessor for MenstrualCyclesOnboardingPickerViewController();
  objc_msgSendSuper2(&v100, sel_viewDidLoad);
  if (v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pickerType + 16] == 1)
  {
    v2 = sub_29E1C74D8();
    v3 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___datePicker;
  }

  else
  {
    v2 = sub_29E1C74F8();
    v3 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker;
  }

  v4 = v2;
  v5 = [v0 contentView];
  [v5 addSubview_];

  sub_29DE99B54();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E2CDBD0;
  v7 = [v4 topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v12 layoutMarginsGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v11 constraintEqualToAnchor_];

  *(v6 + 40) = v16;
  v17 = [v4 trailingAnchor];
  v98 = v4;

  v18 = [v1 view];
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  v20 = [v18 layoutMarginsGuide];

  v21 = [v20 trailingAnchor];
  v22 = [v17 constraintEqualToAnchor_];

  *(v6 + 48) = v22;
  v99 = MEMORY[0x29EDCA190];
  v23 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_showSeparators];
  v24 = &off_29F363000;
  v25 = v98;
  if (v23 != 2 && (v23 & 1) != 0)
  {
    v26 = [objc_allocWithZone(MEMORY[0x29EDC4820]) init];
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = [v26 heightAnchor];
    HKUIOnePixel();
    v28 = [v27 constraintEqualToConstant_];

    [v28 setActive_];
    v29 = [objc_allocWithZone(MEMORY[0x29EDC4820]) init];
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    v30 = [v29 heightAnchor];
    HKUIOnePixel();
    v31 = [v30 constraintEqualToConstant_];

    [v31 setActive_];
    v32 = sub_29E1C74F8();
    v33 = [v32 _magnifierLineColor];

    if (!v33)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    [v26 setColor_];

    v34 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___dayPicker] _magnifierLineColor];
    if (!v34)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v35 = v34;
    [v29 setColor_];

    v36 = [v1 contentView];
    [v36 addSubview_];

    v37 = [v1 contentView];
    [v37 addSubview_];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2D2410;
    v39 = [v26 topAnchor];
    v40 = [v98 topAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(inited + 32) = v41;
    v42 = [v26 leadingAnchor];
    v43 = [v1 view];
    v24 = &off_29F363000;
    if (!v43)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v44 = v43;
    v45 = [v43 leadingAnchor];

    v46 = [v42 constraintEqualToAnchor_];
    *(inited + 40) = v46;
    v47 = [v26 trailingAnchor];

    v48 = [v1 view];
    if (!v48)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v49 = v48;
    v50 = [v48 trailingAnchor];

    v51 = [v47 constraintEqualToAnchor_];
    *(inited + 48) = v51;
    v52 = [v29 topAnchor];
    v25 = v98;
    v53 = [v98 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(inited + 56) = v54;
    v55 = [v29 leadingAnchor];
    v56 = [v1 view];
    if (!v56)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v57 = v56;
    v58 = [v56 leadingAnchor];

    v59 = [v55 constraintEqualToAnchor_];
    *(inited + 64) = v59;
    v60 = [v29 trailingAnchor];

    v61 = [v1 view];
    if (!v61)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v62 = v61;
    v63 = [v61 trailingAnchor];

    v64 = [v60 constraintEqualToAnchor_];
    *(inited + 72) = v64;
    sub_29DFCBB84(inited);
  }

  v65 = sub_29E1C75F8();
  if (*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_footerText + 8])
  {
    v66 = sub_29E2C33A4();
  }

  else
  {
    v66 = 0;
  }

  [v65 setText_];

  v67 = [v1 contentView];
  v68 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController____lazy_storage___footerLabel;
  [v67 addSubview_];

  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_29E2CE070;
  v70 = [*&v1[v68] topAnchor];
  v71 = [v25 v24[455]];
  v72 = [v1 view];
  if (!v72)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v73 = v72;
  [v72 frame];
  v75 = v74;

  v76 = 24.0;
  if (v75 <= 320.0)
  {
    v76 = 16.0;
  }

  v77 = [v70 constraintEqualToAnchor:v71 constant:v76];

  *(v69 + 32) = v77;
  v78 = [*&v1[v68] leadingAnchor];
  v79 = [v1 contentView];
  v80 = [v79 leadingAnchor];

  v81 = [v78 &selRef:v80 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v69 + 40) = v81;
  v82 = [*&v1[v68] trailingAnchor];
  v83 = [v1 contentView];
  v84 = [v83 trailingAnchor];

  v85 = [v82 &selRef:v84 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v69 + 48) = v85;
  v86 = [v1 contentView];
  v87 = [v86 bottomAnchor];

  v88 = [*&v1[v68] bottomAnchor];
  v89 = [v87 &selRef:v88 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v69 + 56) = v89;
  sub_29DFCBB84(v69);
  sub_29DFCBB84(v99);
  v90 = objc_opt_self();
  sub_29DEB8834();
  v91 = sub_29E2C3604();

  [v90 activateConstraints_];

  v92 = [v1 buttonTray];
  v93 = sub_29E1C7678();
  [v92 addButton_];

  v94 = sub_29E08DA28();
  [v94 addTarget:v1 action:sel_skipButtonTapped_ forControlEvents:64];
  v95 = [v1 buttonTray];
  [v95 addButton_];

  v96 = [v1 headerView];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2FC050);
  v97 = sub_29E2C33A4();

  [v96 setAccessibilityIdentifier_];
}

uint64_t sub_29E1C87C8()
{
  swift_unknownObjectRetain();
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  return sub_29DE93B3C(&v1);
}

void sub_29E1C8814()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_29E1C89F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for MenstrualCyclesOnboardingPickerViewController.OnboardingPickerType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MenstrualCyclesOnboardingPickerViewController.OnboardingPickerType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_29E1C8C38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E1C8C54(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_29E1C8C84(unint64_t a1)
{
  sub_29E1C73E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_29E1C755C();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v3 + 16) > a1)
    {
      v5 = v4;
      v6 = *(v3 + 8 * a1 + 32);

      if ((v6 * 86400) >> 64 == (86400 * v6) >> 63)
      {
        v7 = [v5 stringFromTimeInterval_];

        if (v7)
        {
          _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        }

        return;
      }

LABEL_10:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_29E1C8D5C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_29E1C8D6C(uint64_t result)
{
  if (result != 1)
  {
    return sub_29E2BF404();
  }

  return result;
}

id sub_29E1C8D84(void *a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient);
  sub_29DECE8A4(0, &qword_2A181F2E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E2CD7A0;
  v6 = v4;
  v7 = [a1 colorWithAlphaComponent_];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  v12 = sub_29E2C3604();

  [v6 setColors_];

  return [v3 commit];
}

void sub_29E1C8EF4(void *a1)
{
  sub_29DECE8A4(0, &qword_2A181F2E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CD7A0;
  v4 = [a1 colorWithAlphaComponent_];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  v9 = sub_29E2C3604();

  [v1 setColors_];
}

id sub_29E1C9120(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter] = 51;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient;
  if (qword_2A1817020 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1841160;
  v12 = [objc_allocWithZone(MEMORY[0x29EDBBAA0]) init];
  sub_29E1C8EF4(v11);
  *&v5[v10] = v12;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource] = 0;
  v13 = [objc_allocWithZone(type metadata accessor for SingleCycleViewCollectionViewFlowLayout()) init];
  v14 = [objc_allocWithZone(MEMORY[0x29EDC79A8]) initWithFrame:v13 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView] = v14;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for SingleCycleView();
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E1C93F8();
  sub_29E1C9540();
  sub_29DE9408C(0, &qword_2A181ADA0);
  sub_29E2C3D24();
  MEMORY[0x29ED807F0]();

  swift_unknownObjectRelease();

  return v15;
}

id sub_29E1C93F8()
{
  [v0 setPreservesSuperviewLayoutMargins_];
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
  [v1 setDelegate_];
  type metadata accessor for CycleHistoryCycleDayCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_29E2C33A4();
  [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  [v1 setShowsHorizontalScrollIndicator_];
  if (HKUICalendarLocaleIsRightToLeft())
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [v1 setSemanticContentAttribute_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  [v0 layoutMargins];
  v6 = v5;
  [v0 layoutMargins];

  return [v1 setContentInset_];
}

void sub_29E1C9540()
{
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E2D6FB0;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v1 + 48) = v11;
  v12 = [v2 heightAnchor];
  v13 = [v2 traitCollection];
  v14 = [v13 horizontalSizeClass];

  v15 = objc_opt_self();
  v16 = 47.0;
  if (v14 == 2)
  {
    v16 = 67.0;
  }

  v17 = [v12 constraintEqualToConstant_];

  *(v1 + 56) = v17;
  v18 = [v0 bottomAnchor];
  v19 = [v2 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v1 + 64) = v20;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v21 = sub_29E2C3604();

  [v15 activateConstraints_];
}

void sub_29E1C98B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient);
  sub_29DECE8A4(0, &qword_2A181F2E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CD7A0;
  v3 = qword_2A1817020;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1841160;
  v6 = [qword_2A1841160 colorWithAlphaComponent_];
  v7 = [v6 CGColor];

  type metadata accessor for CGColor(0);
  v9 = v8;
  *(v2 + 56) = v8;
  *(v2 + 32) = v7;
  v10 = [v5 CGColor];
  *(v2 + 88) = v9;
  *(v2 + 64) = v10;
  v11 = sub_29E2C3604();

  [v4 setColors_];
}

void sub_29E1C9A70()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SingleCycleView();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 bounds];
  v21.origin.x = v10;
  v21.origin.y = v11;
  v21.size.width = v12;
  v21.size.height = v13;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  if (!CGRectEqualToRect(v19, v21))
  {
    [v0 bounds];
    [v1 setFrame_];
    [v1 frame];
    Width = CGRectGetWidth(v20);
    IsRightToLeft = HKUICalendarLocaleIsRightToLeft();
    v16 = Width + -44.0;
    if (IsRightToLeft)
    {
      v16 = 44.0;
      v17 = 0.0;
    }

    else
    {
      v17 = 1.0;
    }

    [v1 setStartPoint_];
    [v1 setEndPoint_];
  }
}

void sub_29E1C9C4C()
{
  sub_29DEC6594();
  v2 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v125 = &v120 - v6;
  sub_29E1CBD60(0, &qword_2A1A5E2A0, sub_29DEC65FC);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v120 - v8;
  v10 = sub_29E2C31A4();
  v127 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v126 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v120 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v129 = &v120 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v128 = &v120 - v18;
  v19 = sub_29E2BCFB4();
  v135 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v130 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v132 = &v120 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v143 = &v120 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v142 = &v120 - v26;
  MEMORY[0x2A1C7C4A8](v27);
  v141 = &v120 - v28;
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v120 - v30;
  sub_29E1CBD60(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v131 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v133 = &v120 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v140 = &v120 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v139 = &v120 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v144 = &v120 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v138 = &v120 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v46 = &v120 - v45;
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v50 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
  if (v50)
  {
    v123 = v14;
    v124 = v10;
    v51 = v9;
    v52 = v4;
    v53 = v2;
    v55 = v135 + 7;
    v54 = v135[7];
    v154 = &v120 - v48;
    v54(v49);
    v152 = v55;
    v153 = v46;
    v151 = v54;
    (v54)(v46, 1, 1, v19);
    v56 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView);
    v57 = v50;
    v149 = v56;
    v58 = [v56 preparedCells];
    if (!v58)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v59 = v58;
    sub_29DE9408C(0, &unk_2A18199D0);
    v60 = sub_29E2C3614();

    v61 = v60;
    v122 = v51;
    v121 = v52;
    v120 = v53;
    v134 = v57;
    if (v60 >> 62)
    {
      v62 = sub_29E2C4484();
      v63 = v144;
      if (!v62)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v63 = v144;
      if (!v62)
      {
        goto LABEL_32;
      }
    }

    if (v62 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    v64 = 0;
    v148 = v61 & 0xC000000000000001;
    v65 = (v135 + 4);
    v66 = (v135 + 6);
    v145 = (v135 + 1);
    v146 = (v135 + 2);
    v150 = (v135 + 6);
    v147 = v31;
    v136 = v62;
    v137 = v61;
    do
    {
      if (v148)
      {
        v67 = MEMORY[0x29ED80D70](v64, v61);
      }

      else
      {
        v67 = *(v61 + 8 * v64 + 32);
      }

      v68 = v67;
      v69 = [v149 indexPathForCell_];
      if (v69)
      {
        v70 = v141;
        v71 = v69;
        sub_29E2BCF44();

        v72 = *v65;
        (*v65)(v31, v70, v19);
        sub_29DF3C944(v154, v63);
        v73 = *v66;
        if ((*v66)(v63, 1, v19) == 1)
        {
          v74 = v142;
          (*v146)(v142, v31, v19);
          if (v73(v63, 1, v19) != 1)
          {
            sub_29DF2192C(v63);
          }
        }

        else
        {
          v74 = v142;
          v72(v142, v63, v19);
        }

        sub_29E1CBDB4(&qword_2A1819390, MEMORY[0x29EDB9D70]);
        v75 = v74;
        v76 = sub_29E2C3294();
        sub_29DF2192C(v154);
        if (v76)
        {
          (*v145)(v75, v19);
          v77 = v138;
          (*v146)(v138, v31, v19);
        }

        else
        {
          v77 = v138;
          v72(v138, v75, v19);
        }

        (v151)(v77, 0, 1, v19);
        sub_29DF3C8C4(v77, v154);
        v78 = v140;
        sub_29DF3C944(v153, v140);
        v79 = v73(v78, 1, v19);
        v80 = v143;
        if (v79 == 1)
        {
          (*v146)(v143, v147, v19);
          if (v73(v78, 1, v19) != 1)
          {
            sub_29DF2192C(v78);
          }
        }

        else
        {
          v72(v143, v78, v19);
        }

        v31 = v147;
        v81 = v80;
        v82 = sub_29E2C32A4();

        v83 = v153;
        sub_29DF2192C(v153);
        if (v82)
        {
          v84 = v81;
        }

        else
        {
          v84 = v31;
        }

        if (v82)
        {
          v85 = v31;
        }

        else
        {
          v85 = v81;
        }

        (*v145)(v84, v19);
        v86 = v139;
        v72(v139, v85, v19);
        (v151)(v86, 0, 1, v19);
        sub_29DF3C8C4(v86, v83);
        v63 = v144;
        v62 = v136;
        v61 = v137;
        v66 = v150;
      }

      else
      {
      }

      ++v64;
    }

    while (v62 != v64);
LABEL_32:

    v87 = v154;
    v88 = v133;
    sub_29DF3C944(v154, v133);
    v89 = v135;
    v90 = v135[6];
    if (v90(v88, 1, v19) == 1)
    {

      sub_29DF2192C(v153);
      sub_29DF2192C(v87);
      sub_29DF2192C(v88);
      return;
    }

    v91 = v89[4];
    v92 = v132;
    v91(v132, v88, v19);
    v93 = v153;
    v94 = v131;
    sub_29DF3C944(v153, v131);
    if (v90(v94, 1, v19) == 1)
    {

      (v89[1])(v92, v19);
      sub_29DF2192C(v93);
      sub_29DF2192C(v154);
      sub_29DF2192C(v94);
      return;
    }

    v91(v130, v94, v19);
    v95 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle;
    v96 = [*&v134[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle] menstruationSegment];
    v97 = [v96 days];

    if (!__OFADD__(v97, sub_29E2BCF64()))
    {
      v98 = v128;
      sub_29E2C30D4();
      v99 = [*&v134[v95] menstruationSegment];
      v100 = [v99 days];

      v101 = __OFADD__(v100, sub_29E2BCF64());
      v102 = v124;
      if (!v101)
      {
        sub_29E2C30D4();
        v152 = *&v134[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycleViewModelProvider];
        v103 = v126;
        sub_29E2C30D4();
        v104 = v123;
        sub_29E2C30F4();
        v105 = v127;
        v106 = *(v127 + 8);
        v151 = (v127 + 8);
        (v106)(v103, v102);
        sub_29E1CBDB4(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
        if (sub_29E2C32B4())
        {
          v107 = v125;
          (*(v105 + 16))(v125, v98, v102);
          v108 = v120;
          v109 = *(v105 + 32);
          v109(v107 + *(v120 + 48), v104, v102);
          v110 = v121;
          sub_29DEC6FE8(v107, v121);
          v111 = *(v108 + 48);
          v112 = v122;
          v109(v122, v110, v102);
          v150 = v106;
          (v106)(v110 + v111, v102);
          sub_29DEC704C(v107, v110);
          v113 = *(v108 + 48);
          sub_29DEC65FC();
          v115 = v114;
          v109(&v112[*(v114 + 36)], (v110 + v113), v102);
          v116 = v150;
          (v150)(v110, v102);
          (*(*(v115 - 8) + 56))(v112, 0, 1, v115);
          v117 = v152;
          v155 = [v152 activeDayRange];
          v156 = v118;
          sub_29E2C3AB4();
          [v117 setActiveDayRange_];
          (v116)(v129, v102);
          (v116)(v128, v102);
          v119 = v135[1];
          v119(v130, v19);
          v119(v132, v19);
          sub_29DF2192C(v153);
          sub_29DF2192C(v154);

          return;
        }

        goto LABEL_44;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }
}

uint64_t sub_29E1CAA78()
{
  v1 = v0;
  v43 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v43);
  v42 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E2C31A4();
  v3 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x2A1C7C4A8](v5).n128_u64[0];
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView);
  v10 = [v49 indexPathsForVisibleItems];
  v11 = sub_29E2C3614();

  v12 = *(v11 + 16);
  if (v12)
  {
    v44 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v47 = *(v13 + 56);
    v48 = v14;
    v36 = (v3 + 16);
    v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter;
    v34 = v11;
    v35 = (v3 + 8);
    v46 = (v13 - 8);
    v39 = v5;
    v40 = v1;
    v38 = v13;
    v14(v9, v15, v5);
    while (1)
    {
      v16 = sub_29E2BCF24();
      v17 = [v49 cellForItemAtIndexPath_];

      if (v17)
      {
        type metadata accessor for CycleHistoryCycleDayCell();
        v18 = swift_dynamicCastClass();
        if (v18 && (v19 = *(v1 + v44)) != 0)
        {
          v20 = v18;
          v21 = *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle];
          v22 = v19;
          v23 = [v21 menstruationSegment];
          v24 = [v23 days];

          v25 = sub_29E2BCF64();
          v26 = __OFADD__(v24, v25);
          result = v24 + v25;
          if (v26)
          {
            __break(1u);
            return result;
          }

          v28 = v41;
          sub_29E2C30D4();
          v29 = *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycleViewModelProvider];
          v30 = v42;
          (*v36)(v42, v28, v45);
          v31 = [v29 dayViewModelAtIndex_];
          *(v30 + *(v43 + 20)) = v31;
          v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_day;
          swift_beginAccess();
          sub_29E16EB40(v30, v20 + v32);
          swift_endAccess();
          sub_29E027DB4();
          sub_29E029468(v30);
          v1 = v40;
          *(v20 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_filter) = *(v40 + v37);
          sub_29E027DB4();

          v33 = v28;
          v5 = v39;
          (*v35)(v33, v45);
        }

        else
        {
        }
      }

      (*v46)(v9, v5);
      v15 += v47;
      if (!--v12)
      {
      }

      v48(v9, v15, v5);
    }
  }
}

void sub_29E1CAEDC(uint64_t a1)
{
  v3 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
  if (v10)
  {
    v17 = v1;
    v11 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle];
    v12 = v10;
    v13 = [v11 menstruationSegment];
    v14 = [v13 days];

    if (__OFADD__(v14, sub_29E2BCF64()))
    {
      __break(1u);
    }

    else
    {
      sub_29E2C30D4();
      v15 = *&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycleViewModelProvider];
      (*(v7 + 16))(v5, v9, v6);
      *&v5[*(v3 + 20)] = [v15 dayViewModelAtIndex_];
      v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_day;
      swift_beginAccess();
      sub_29E16EB40(v5, a1 + v16);
      swift_endAccess();
      sub_29E027DB4();
      sub_29E029468(v5);
      *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_filter) = *(v17 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter);
      sub_29E027DB4();

      (*(v7 + 8))(v9, v6);
    }
  }
}

id sub_29E1CB370()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleCycleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E1CB424(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState;
    if ((*(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState) & 1) == 0)
    {
      v21 = v6;
      v22 = v9;
      [a1 _horizontalVelocity];
      if (fabs(v11) <= 2.5)
      {
        v19 = v22;
      }

      else
      {
        sub_29E2C04B4();
        v12 = sub_29E2C0504();
        v13 = sub_29E2C3A04();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v23 = v15;
          *v14 = 136446210;
          v16 = sub_29E2C4AE4();
          v18 = sub_29DFAA104(v16, v17, &v23);

          *(v14 + 4) = v18;
          _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] scrollViewDidScroll: Pausing data fetching due to high velocity", v14, 0xCu);
          sub_29DE93B3C(v15);
          MEMORY[0x29ED82140](v15, -1, -1);
          MEMORY[0x29ED82140](v14, -1, -1);
        }

        (*(v5 + 8))(v8, v21);
        *(v9 + v10) = 1;
      }
    }
  }
}

id sub_29E1CB818()
{
  result = [objc_opt_self() hkmc_cycleHistorySectionCellBackgroundColor];
  qword_2A1841160 = result;
  return result;
}

void sub_29E1CB854(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v5 = 24.0;
  }

  else
  {
    v5 = 12.0;
  }

  v6 = [v2 currentTraitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = 1.0;
  if (v7 == 2)
  {
    v8 = 3.0;
  }

  v9 = ceil(a1 / (v5 + v8));
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
  }
}

void sub_29E1CB964(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v8 = sub_29E2C0504();
    v9 = sub_29E2C3A04();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446210;
      v12 = sub_29E2C4AE4();
      v14 = sub_29DFAA104(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] scrollViewDidEndDragging without deceleration: resuming data fetching", v10, 0xCu);
      sub_29DE93B3C(v11);
      MEMORY[0x29ED82140](v11, -1, -1);
      MEMORY[0x29ED82140](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v15 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
    if (v15)
    {
      if (v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState] == 1)
      {
        v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState] = 0;
        v16 = v15;
        sub_29E1C9C4C();
        sub_29E1CAA78();
      }
    }
  }
}

void sub_29E1CBB64(const char *a1)
{
  v3 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, v18, v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource);
  if (v16)
  {
    if (v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState] == 1)
    {
      v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState] = 0;
      v17 = v16;
      sub_29E1C9C4C();
      sub_29E1CAA78();
    }
  }
}

void sub_29E1CBD60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1CBDB4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_29E1CBDFC(uint64_t a1, double a2, double a3)
{
  v6 = sub_29E2C48F4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 / a2;
  v16 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x29EDC9EB8])
  {
    v12 = round(v10);
  }

  else if (v11 == *MEMORY[0x29EDC9EB0])
  {
    v12 = rint(v10);
  }

  else if (v11 == *MEMORY[0x29EDC9EC0])
  {
    v12 = ceil(v10);
  }

  else if (v11 == *MEMORY[0x29EDC9EC8])
  {
    v12 = floor(v10);
  }

  else if (v11 == *MEMORY[0x29EDC9EA0])
  {
    v12 = trunc(v10);
  }

  else if (v11 == *MEMORY[0x29EDC9EA8])
  {
    v12 = ceil(v10);
    v13 = floor(v10);
    if (v10 < 0.0)
    {
      v12 = v13;
    }
  }

  else
  {
    sub_29E2C3774();
    (*(v7 + 8))(v9, v6);
    v12 = v16;
  }

  return v12 * a2;
}

void sub_29E1CBFE8(CGContext *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextSaveGState(a1);
  v12 = [objc_opt_self() systemGrayColor];
  v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v14 = [v12 resolvedColorWithTraitCollection_];

  v15 = [v14 CGColor];
  CGContextSetStrokeColorWithColor(a1, v15);

  if ((a2 & 1) == 0)
  {
    sub_29E2C38E4();
    CGContextSetLineCap(a1, kCGLineCapRound);
  }

  CGContextSetLineWidth(a1, 0.5);
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  v16 = CGRectGetMaxY(v19) + -0.25;
  sub_29E1CD140();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E2CD7A0;
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  *(v17 + 32) = CGRectGetMinX(v20);
  *(v17 + 40) = v16;
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  *(v17 + 48) = CGRectGetMaxX(v21);
  *(v17 + 56) = v16;
  sub_29E2C38F4();

  CGContextRestoreGState(a1);
}

void sub_29E1CC1AC(CGContext *a1, CGFloat x, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v132 = *MEMORY[0x29EDCA608];
  *&v12 = COERCE_DOUBLE(sub_29E2C48F4());
  v126 = *(v12 - 8);
  v127 = *&v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133.origin.x = x;
  y = a3;
  v133.origin.y = a3;
  v16 = a4;
  v133.size.width = a4;
  v17 = a5;
  v133.size.height = a5;
  Height = CGRectGetHeight(v133);
  v19 = objc_opt_self();
  v20 = *MEMORY[0x29EDC7700];
  v125 = v19;
  v21 = [v19 systemFontOfSize:7.0 weight:v20];
  [v21 lineHeight];
  v23 = v22;

  v24 = *(*&v6 + 40);
  if (v24)
  {
    v25 = sub_29E2C33A4();
    v26 = v25;
    v28 = *(*&v6 + 48);
    v27 = *(*&v6 + 56);
    v29 = v27 == 0;
    v123 = a1;
    if (!v27)
    {
      if (!v25)
      {
        v114 = v28;
        v122 = v6;
        v116 = 0;
        v29 = 1;
        v31 = 0.0;
        goto LABEL_17;
      }

      v116 = 0;

LABEL_14:
      v114 = v28;
      v122 = v6;
      v31 = (Height - v23) * 0.5;
LABEL_17:
      v32 = 0.0;
      goto LABEL_18;
    }

    v116 = v27;
    v30 = sub_29E2C33A4();
    if (v26)
    {

      if (v30)
      {
        v114 = v28;
        v122 = v6;

        v29 = 0;
        v31 = (Height - (v23 + v23) + -3.0) * 0.5;
        v32 = 3.0;
LABEL_18:
        v124 = v32;
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v33 = *(*&v6 + 56);
    if (!v33)
    {
      goto LABEL_28;
    }

    v123 = a1;
    v28 = *(*&v6 + 48);
    v116 = v33;
    v30 = sub_29E2C33A4();
  }

  v34 = 0.0;
  if (v30)
  {

    v34 = (Height - v23) * 0.5;
  }

  v124 = v34;
  if (v24)
  {
    v114 = v28;
    v122 = v6;
    v29 = 0;
    v31 = 0.0;
LABEL_19:
    v121 = v31;
    v36 = sub_29E2C33A4();
    v117 = v20;
    v37 = [v125 systemFontOfSize:7.0 weight:v20];
    sub_29E1CD0F4();
    v38 = sub_29E2C3E84();
    v39 = [objc_opt_self() darkTextColor];
    sub_29DF40374(v37, v38, v39);

    v40 = [objc_opt_self() traitCollectionWithDisplayScale_];
    sub_29DEC731C(x, y, a4, v17, v31, 10.0);
    v42 = v41;
    v44 = v43;
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v45 = sub_29E2C31F4();
    [v36 boundingRectWithSize:1 options:v45 attributes:0 context:{v42, v44}];
    v47 = v46;
    v49 = v48;

    v50 = v126;
    v51 = *(v126 + 104);
    v115 = *MEMORY[0x29EDC9EC0];
    v52 = v127;
    v51(v14);
    [v40 displayScale];
    v53 = x;
    v55 = 1.0 / v54;
    v56 = sub_29E1CBDFC(v14, 1.0 / v54, v47);
    v57 = a4;
    v58 = v56;
    v118 = sub_29E1CBDFC(v14, v55, v49);
    (*(v50 + 8))(v14, COERCE_CGFLOAT(*&v52));
    v59 = v53;
    v128 = y;
    v129 = v53;
    v134.origin.x = v53;
    v134.origin.y = y;
    v134.size.width = a4;
    v134.size.height = v17;
    MinX = CGRectGetMinX(v134);
    v120 = MinX;
    v135.origin.x = v53;
    v135.origin.y = y;
    v135.size.width = a4;
    v135.size.height = v17;
    MinY = CGRectGetMinY(v135);
    v119 = MinY;
    v136.origin.x = v59;
    v136.origin.y = y;
    v136.size.width = a4;
    v136.size.height = v17;
    Width = CGRectGetWidth(v136);
    if (Width >= v58 + 10.0)
    {
      v63 = v58 + 10.0;
    }

    else
    {
      v63 = Width;
    }

    v64 = v121 + v118 + 0.0;
    v65 = sub_29DEC731C(MinX, MinY, v63, v64, v121, 10.0);
    v67 = v66;
    v68 = v17;
    v70 = v69;
    v72 = v71;
    v73 = sub_29E2C31F4();
    [v36 drawWithRect:1 options:v73 attributes:0 context:{v65, v67, v70, v72}];

    v137.origin.x = v120;
    v137.origin.y = v119;
    v137.size.width = v63;
    v137.size.height = v64;
    v74 = CGRectGetHeight(v137);
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v138.origin.y = v128;
    v138.origin.x = v129;
    v138.size.width = v57;
    v138.size.height = v68;
    CGRectDivide(v138, &slice, &remainder, v74, CGRectMinYEdge);

    x = remainder.origin.x;
    y = remainder.origin.y;
    v16 = remainder.size.width;
    v17 = remainder.size.height;
    if (v29)
    {
      a1 = v123;
      v6 = v122;
      goto LABEL_28;
    }

    v35 = remainder.origin.y;
    v6 = v122;
    goto LABEL_25;
  }

  v117 = v20;
  v35 = y;
  v115 = *MEMORY[0x29EDC9EC0];
LABEL_25:
  v75 = sub_29E2C33A4();
  v76 = [v125 systemFontOfSize:7.0 weight:v117];
  v77 = sub_29E2BE1E4();
  sub_29E1CD0F4();
  v78 = sub_29E2C3E84();
  sub_29DF40374(v76, v78, v77);

  v79 = [objc_opt_self() traitCollectionWithDisplayScale_];
  v80 = x;
  v81 = x;
  v82 = v35;
  v83 = v16;
  v122 = v16;
  sub_29DEC731C(v81, v35, v16, v17, v124, 10.0);
  v85 = v84;
  v87 = v86;
  type metadata accessor for Key(0);
  sub_29DEA75B0();
  v88 = sub_29E2C31F4();
  [v75 boundingRectWithSize:1 options:v88 attributes:0 context:{v85, v87}];
  v90 = v89;
  v92 = v91;

  v93 = v126;
  v94 = v127;
  (*(v126 + 104))(v14, v115, COERCE_CGFLOAT(*&v127));
  [v79 displayScale];
  v95 = v17;
  v97 = 1.0 / v96;
  v98 = sub_29E1CBDFC(v14, 1.0 / v96, v90);
  v99 = sub_29E1CBDFC(v14, v97, v92);
  (*(v93 + 8))(v14, COERCE_CGFLOAT(*&v94));
  v139.origin.x = v80;
  v139.origin.y = v82;
  v139.size.width = v16;
  v139.size.height = v95;
  v100 = CGRectGetMinX(v139);
  v127 = v100;
  v128 = v82;
  v140.origin.x = v80;
  v129 = v80;
  v140.origin.y = v82;
  v140.size.width = v83;
  v140.size.height = v95;
  v101 = CGRectGetMinY(v140);
  v102 = v98 + 10.0;
  v141.origin.x = v80;
  v141.origin.y = v82;
  v141.size.width = v83;
  v141.size.height = v95;
  v103 = CGRectGetWidth(v141);
  if (v103 < v102)
  {
    v102 = v103;
  }

  v104 = v124 + v99 + 0.0;
  v105 = sub_29DEC731C(v100, v101, v102, v104, v124, 10.0);
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v112 = sub_29E2C31F4();
  [v75 drawWithRect:1 options:v112 attributes:0 context:{v105, v107, v109, v111}];

  v142.origin.x = v127;
  v142.origin.y = v101;
  v142.size.width = v102;
  v142.size.height = v104;
  v113 = CGRectGetHeight(v142);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v143.origin.y = v128;
  v143.origin.x = v129;
  v143.size.width = v122;
  v143.size.height = v95;
  CGRectDivide(v143, &slice, &remainder, v113, CGRectMinYEdge);

  x = remainder.origin.x;
  y = remainder.origin.y;
  v16 = remainder.size.width;
  v17 = remainder.size.height;
  a1 = v123;
LABEL_28:
  sub_29E1CBFE8(a1, *(*&v6 + 64), x, y, v16, v17);
}

uint64_t sub_29E1CCBEC()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  v1 = *(v0 + 56);

  if (!v1)
  {
    return 1;
  }

  return 2;
}

void sub_29E1CCC54(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v34 = a1;
  v13 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CycleChartDay();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v7 + 40))
  {

    if (*(v7 + 56))
    {
      v20 = sub_29E2C33A4();
      v21 = 9.5;
    }

    else
    {
      v20 = sub_29E2C33A4();
      v21 = 11.25;
    }
  }

  else
  {
    v21 = 9.5;
  }

  v22 = *(v7 + 72);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v23 = CGRectGetMaxY(v40) - v21;
  v24 = [objc_opt_self() bezierPathWithOvalInRect_];
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  MinX = CGRectGetMinX(v41);
  CGAffineTransformMakeTranslation(&v39, MinX + 110.0, 0.0);
  [v24 applyTransform_];
  CGAffineTransformMakeTranslation(&v39, v22, 0.0);
  v26 = *(a7 + 32);
  v27 = *(v26 + 16);
  if (v27)
  {
    v37 = *&v39.c;
    v38 = *&v39.a;
    v36 = *&v39.tx;
    v35 = *(v7 + 16);
    v28 = v26 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v29 = *(v17 + 72);
    do
    {
      sub_29E1CD02C(v28, v19, type metadata accessor for CycleChartDay);
      sub_29E1CD02C(v19, v15, type metadata accessor for CycleDay);
      sub_29E1CD094(v19, type metadata accessor for CycleChartDay);
      v30 = v35(v15);
      sub_29E1CD094(v15, type metadata accessor for CycleDay);
      if (v30)
      {
        v31 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v32 = [v30 resolvedColorWithTraitCollection_];

        v33 = [v32 CGColor];
        CGContextSetFillColorWithColor(v34, v33);

        [v24 fill];
      }

      *&v39.a = v38;
      *&v39.c = v37;
      *&v39.tx = v36;
      [v24 applyTransform_];
      v28 += v29;
      --v27;
    }

    while (v27);
  }
}

uint64_t sub_29E1CD02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1CD094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E1CD0F4()
{
  result = qword_2A1817B10;
  if (!qword_2A1817B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1817B10);
  }

  return result;
}

void sub_29E1CD140()
{
  if (!qword_2A1820F80)
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820F80);
    }
  }
}

uint64_t sub_29E1CD198()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  swift_beginAccess();
  sub_29E1CEA38(v0 + v1, v6, sub_29DEC357C);
  if (!v7)
  {
    return sub_29E1CE6E8(v6, sub_29DEC357C);
  }

  sub_29DF61DEC();
  type metadata accessor for CycleDeviationsItem();
  result = swift_dynamicCast();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_unknownObjectRelease();
      if (v4 == v0)
      {
        *(v5 + 72) = 0;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  return result;
}

uint64_t sub_29E1CD290()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  swift_beginAccess();
  sub_29E1CEA38(v1 + v6, &v23, sub_29DEC357C);
  if (*(&v24 + 1))
  {
    sub_29DF61DEC();
    type metadata accessor for CycleDeviationsItem();
    if (swift_dynamicCast())
    {
      *(v22[0] + 72) = &off_2A24BDF98;
      swift_unknownObjectWeakAssign();
      [v1 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    sub_29E1CE6E8(&v23, sub_29DEC357C);
  }

  sub_29E2C04B4();
  v8 = v1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v2;
    v22[0] = v12;
    v13 = v12;
    *v11 = 136446466;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_29E1CEA38(v1 + v6, &v23, sub_29DEC357C);
    sub_29DEC357C();
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received unexpected item %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v3 + 8))(v5, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_beginAccess();
  sub_29DEF9180(&v23, v1 + v6);
  return swift_endAccess();
}

void (*sub_29E1CD5C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  sub_29E1CEA38(v1 + v5, v4, sub_29DEC357C);
  return sub_29E1CD674;
}

void sub_29E1CD674(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 136);
  if (a2)
  {
    sub_29E1CEA38(*a1, v2 + 40, sub_29DEC357C);
    sub_29E1CD198();
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E1CD290();
    sub_29E1CE6E8(v2 + 40, sub_29DEC357C);
  }

  else
  {
    sub_29E1CD198();
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E1CD290();
  }

  sub_29E1CE6E8(v2, sub_29DEC357C);

  free(v2);
}

uint64_t sub_29E1CD824()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  swift_beginAccess();
  sub_29E1CEA38(v0 + v2, v12, sub_29DEC357C);
  if (!v13)
  {
    return sub_29E1CE6E8(v12, sub_29DEC357C);
  }

  sub_29DF61DEC();
  v3 = type metadata accessor for CycleDeviationsItem();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v11;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v11 + 56);
      v7 = swift_getObjectType();
      v10.receiver = v0;
      v10.super_class = ObjectType;
      v8 = objc_msgSendSuper2(&v10, sel_isHighlighted);
      v13 = v3;
      v14 = sub_29E1CEAA0(&qword_2A181B640, type metadata accessor for CycleDeviationsItem);
      v12[0] = v5;
      v9 = *(v6 + 8);

      v9(v8, v12, v7, v6);

      swift_unknownObjectRelease();
      return sub_29DE93B3C(v12);
    }

    else
    {
    }
  }

  return result;
}

id sub_29E1CD9D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_29E1CE648(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2C06D4();
  v15 = sub_29E2C06E4();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  MEMORY[0x29ED805C0](v12);
  [v14 setAutomaticallyUpdatesBackgroundConfiguration_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E2C3E04();

  return v14;
}

void sub_29E1CDB70()
{
  sub_29E1CE648(0);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v16 - v4;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v16 - v7;
  if (sub_29E2C0634() & 1) != 0 || (sub_29E2C0644())
  {
    MEMORY[0x29ED805B0]();
    v9 = sub_29E2C06E4();
    if ((*(*(v9 - 8) + 48))(v8, 1, v9))
    {
      sub_29E1CEA38(v8, v5, sub_29E1CE648);
      MEMORY[0x29ED805C0](v5);
      sub_29E1CE6E8(v8, sub_29E1CE648);
      goto LABEL_10;
    }

    sub_29DEC3644();
    sub_29E2C4054();
    sub_29E2C06A4();
    v10 = v8;
  }

  else
  {
    MEMORY[0x29ED805B0]();
    v11 = sub_29E2C06E4();
    if ((*(*(v11 - 8) + 48))(v2, 1, v11))
    {
      sub_29E1CEA38(v2, v5, sub_29E1CE648);
      MEMORY[0x29ED805C0](v5);
      sub_29E1CE6E8(v2, sub_29E1CE648);
      goto LABEL_10;
    }

    v12 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_29E2C06A4();
    v10 = v2;
  }

  MEMORY[0x29ED805C0](v10);
LABEL_10:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_29E1CE750();
    v16[3] = v15;
    v16[4] = sub_29E1CEAA0(&qword_2A181F320, sub_29E1CE750);
    sub_29DEBB7E8(v16);
    sub_29E1CE9D0(0, &qword_2A181F2F8, MEMORY[0x29EDBC7F0]);
    sub_29E1CE854();
    sub_29E2C1DE4();
    MEMORY[0x29ED805A0](v16);
  }
}

uint64_t sub_29E1CDE9C()
{
  v0 = type metadata accessor for DeviationHistoryContentView(0);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = (v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E1CE7EC();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1CE9D0(0, &qword_2A181F328, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v15 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  v11 = Strong;
  swift_beginAccess();
  sub_29E1CEA38(v11 + v10, &v16, sub_29DEC357C);

  if (!*(&v17 + 1))
  {
LABEL_8:
    sub_29E1CE6E8(&v16, sub_29DEC357C);
    goto LABEL_9;
  }

  sub_29DF61DEC();
  type metadata accessor for CycleDeviationsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_29E1CE8F0();
    return sub_29E2C1C74();
  }

  v12 = v15[1];
  *(v2 + *(v0 + 20)) = swift_getKeyPath();
  sub_29E1CE67C(0, &qword_2A181AE88, sub_29E03887C, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *v2 = v12;
  v13 = qword_2A1A60ED8;

  if (v13 != -1)
  {
    swift_once();
  }

  v16 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E2F6B20);
  sub_29E1CEAA0(&qword_2A181F318, type metadata accessor for DeviationHistoryContentView);
  sub_29E2C23B4();

  sub_29E1CE6E8(v2, type metadata accessor for DeviationHistoryContentView);
  sub_29E1CEA38(v5, v8, sub_29E1CE7EC);
  swift_storeEnumTagMultiPayload();
  sub_29E1CE8F0();
  sub_29E2C1C74();

  return sub_29E1CE6E8(v5, sub_29E1CE7EC);
}

uint64_t sub_29E1CE39C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  swift_beginAccess();
  return sub_29E1CEA38(v1 + v3, a1, sub_29DEC357C);
}

uint64_t sub_29E1CE408(uint64_t a1)
{
  sub_29E1CD198();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E1CD290();
  return sub_29E1CE6E8(a1, sub_29DEC357C);
}

void (*sub_29E1CE48C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_29E1CD5C8(v2);
  return sub_29DF61DA4;
}

void sub_29E1CE4FC(char a1)
{
  if (a1)
  {
    sub_29DEC3644();
    v2 = sub_29E2C4054();
  }

  else
  {
    v2 = [objc_opt_self() tertiarySystemBackgroundColor];
  }

  v3 = v2;
  [v1 setBackgroundColor_];
}

uint64_t sub_29E1CE5AC(uint64_t a1)
{
  sub_29E03887C(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E1CEA38(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29E03887C);
  return sub_29E2C1954();
}

void sub_29E1CE67C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E1CE6E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E1CE750()
{
  if (!qword_2A181F2F0)
  {
    sub_29E1CE9D0(255, &qword_2A181F2F8, MEMORY[0x29EDBC7F0]);
    sub_29E1CE854();
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F2F0);
    }
  }
}

void sub_29E1CE7EC()
{
  if (!qword_2A181F300)
  {
    type metadata accessor for DeviationHistoryContentView(255);
    sub_29E2C1F54();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181F300);
    }
  }
}

unint64_t sub_29E1CE854()
{
  result = qword_2A181F308;
  if (!qword_2A181F308)
  {
    sub_29E1CE9D0(255, &qword_2A181F2F8, MEMORY[0x29EDBC7F0]);
    sub_29E1CE8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F308);
  }

  return result;
}

unint64_t sub_29E1CE8F0()
{
  result = qword_2A181F310;
  if (!qword_2A181F310)
  {
    sub_29E1CE7EC();
    sub_29E1CEAA0(&qword_2A181F318, type metadata accessor for DeviationHistoryContentView);
    sub_29E1CEAA0(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181F310);
  }

  return result;
}

void sub_29E1CE9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_29E1CE7EC();
    v7 = a3(a1, v6, MEMORY[0x29EDBCBF8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E1CEA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1CEAA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1CEB30()
{
  result = sub_29DE9408C(319, &qword_2A1A5E0A0);
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      result = sub_29E2BCEA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_29E1CEBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v22 = *(a2 + 32);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x29EDCA190];
  if (v9)
  {
    v21 = *(a2 + 8);
    v23 = MEMORY[0x29EDCA190];
    sub_29E1811A0(0, v9, 0);
    v10 = v23;
    v11 = (a1 + 32);
    do
    {
      v13 = *v11++;
      v12 = v13;
      if (v7)
      {
        v14 = 1;
        *&v12 = 2;
      }

      else if (*&v12 >= 3uLL)
      {
        [*&v12 doubleValueForUnit_];
        v14 = 0;
        v12 = (v21 - v15) / (v21 - v6);
      }

      else
      {
        v14 = 1;
      }

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        v20 = v12;
        sub_29E1811A0((v16 > 1), v17 + 1, 1);
        v12 = v20;
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
      --v9;
    }

    while (v9);
    v5 = v21;
  }

  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7 & 1;
  *(a3 + 32) = v8;
  *(a3 + 40) = v22;

  return v22;
}

uint64_t sub_29E1CED6C()
{
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v18[-v5];
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((v0 + *(v10 + 24)), v9);
  v11 = sub_29E2BCD54();
  v12 = sub_29E2C31A4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6, v9, v12);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, v12);
  v14(v3, 1, 1, v12);
  v15 = sub_29E059C18(v6, v3);
  sub_29E1D0C20(v3, sub_29DEDB978);
  result = sub_29E1D0C20(v6, sub_29DEDB978);
  if (v11)
  {
    MEMORY[0x2A1C7C4A8](result);
    *&v18[-16] = v9;
    v17 = sub_29E0B3C98(sub_29E0B7A50, &v18[-32], 0, v15, v11);
    sub_29E1D0C20(v9, sub_29DEFCC2C);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29E1CEFD4()
{
  v82 = sub_29E2BC9D4();
  v87 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v81 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_29E2BCA44();
  v86 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v79 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29E2BCA54();
  v83 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v77 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v76 = &v65 - v5;
  MEMORY[0x2A1C7C4A8](v6);
  v75 = &v65 - v7;
  v74 = sub_29E2BCBB4();
  v84 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFCBC0();
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v65 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v65 - v19;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29E2C31A4();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v91 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v90 = &v65 - v28;
  MEMORY[0x2A1C7C4A8](v29);
  v95 = &v65 - v30;
  MEMORY[0x2A1C7C4A8](v31);
  v33 = &v65 - v32;
  v72 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((v0 + *(v72 + 24)), v23);
  (*(v25 + 56))(v17, 1, 1, v24);
  sub_29E0E999C(v17, v20);
  v34 = v17;
  v35 = v14;
  sub_29E1D0C20(v34, sub_29DEDB978);
  sub_29E1D15D4(v20, v14, sub_29DEDB978);
  result = (*(v25 + 48))(v14, 1, v24);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    sub_29E1D0C20(v20, sub_29DEDB978);
    sub_29E1D0C20(v23, sub_29DEFCC2C);
    v37 = *(v25 + 32);
    v38 = v95;
    v37(v95, v35, v24);
    v94 = v33;
    v95 = v24;
    v37(v33, v38, v24);
    result = sub_29E1CED6C();
    v39 = result[2];
    v85 = v25;
    if (v39)
    {
      v71 = v0;
      v40 = 0;
      v89 = (v25 + 8);
      v70 = (v86 + 1);
      ++v83;
      v69 = (v87 + 8);
      ++v84;
      v87 = v39;
      v68 = v39 - 1;
      v86 = MEMORY[0x29EDCA190];
      v88 = result;
      do
      {
        v41 = v40;
        while (1)
        {
          if (v41 >= result[2])
          {
            __break(1u);
            goto LABEL_18;
          }

          sub_29E1D15D4(result + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v41, v11, sub_29DEFCBC0);
          v42 = v41 + 1;
          v43 = *v11;
          v44 = v91;
          sub_29E2C30D4();
          v45 = v11;
          v46 = v90;
          sub_29E2C3114();
          v47 = *v89;
          v48 = v95;
          (*v89)(v44, v95);
          LOBYTE(v44) = sub_29E2C30E4();
          v47(v46, v48);
          if (v44)
          {
            break;
          }

          sub_29E1D0C20(v45, sub_29DEFCBC0);
          ++v41;
          result = v88;
          v11 = v45;
          if (v87 == v42)
          {
            goto LABEL_16;
          }
        }

        v67 = v41 + 1;
        v66 = v43;
        v49 = v73;
        v50 = sub_29E2C3194();
        v51 = v77;
        MEMORY[0x29ED78EF0](v50);
        v52 = v79;
        sub_29E2BCA14();
        v53 = v76;
        sub_29E2BC9B4();
        (*v70)(v52, v80);
        v54 = *v83;
        v55 = v78;
        (*v83)(v51, v78);
        v56 = v81;
        sub_29E2BC9C4();
        v57 = v75;
        sub_29E2BC994();
        (*v69)(v56, v82);
        v54(v53, v55);
        sub_29E1D163C(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
        sub_29E2BCB94();
        v54(v57, v55);
        v58 = sub_29E2C33A4();

        (*v84)(v49, v74);
        sub_29E1D0C20(v45, sub_29DEFCBC0);
        v11 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_29E143958(0, v86[2] + 1, 1, v86);
        }

        result = v88;
        v59 = v66;
        v40 = v67;
        v61 = v86[2];
        v60 = v86[3];
        if (v61 >= v60 >> 1)
        {
          v64 = v88;
          v86 = sub_29E143958((v60 > 1), v61 + 1, 1, v86);
          result = v64;
        }

        v62 = v86;
        v86[2] = v61 + 1;
        v63 = &v62[2 * v61];
        v63[4] = v59;
        v63[5] = v58;
      }

      while (v68 != v41);
    }

    else
    {
      v86 = MEMORY[0x29EDCA190];
    }

LABEL_16:

    (*(v85 + 8))(v94, v95);
    return v86;
  }

  return result;
}

int *sub_29E1CF9C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v66 = a2;
  sub_29DF1DDB4();
  v69 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1D0CA0(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v70 = &v64 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v78 = &v64 - v10;
  v11 = sub_29E2C31A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v74 = &v64 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v64 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v64 - v20;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v2;
  v25 = *(v2 + 8);
  v26 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((v2 + *(v26 + 24)), v24);
  v27 = *(v12 + 16);
  v27(v21, v24, v11);
  sub_29E1D0C20(v24, sub_29DEFCC2C);
  v28 = v68;
  v72 = sub_29E2C3184();
  v82 = v12;
  v29 = *(v12 + 8);
  v64 = v21;
  v76 = v12 + 8;
  v77 = v29;
  v29(v21, v11);
  v79 = v18;
  v80 = v27;
  v30 = v18;
  v31 = v28;
  v27(v30, v28, v11);
  v71 = v26;
  v67 = sub_29E2BCD54();
  v32 = [v25 lastDayIndex];
  if (v32)
  {
    v33 = v32;
    [v32 integerValue];
    v34 = v78;
    sub_29E2C30D4();

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v78;
  }

  v36 = v82;
  v37 = *(v82 + 56);
  v37(v34, v35, 1, v11);
  v38 = v70;
  v80(v70, v31, v11);
  v37(v38, 0, 1, v11);
  v39 = *(v69 + 48);
  v40 = v73;
  sub_29DE962B4(v34, v73);
  sub_29DE962B4(v38, v40 + v39);
  v41 = *(v36 + 48);
  if (v41(v40, 1, v11) == 1)
  {
    v42 = MEMORY[0x29EDBA2F8];
    sub_29E1D0BC4(v38, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    sub_29E1D0BC4(v34, &qword_2A1A5E340, v42);
    v43 = v41(v40 + v39, 1, v11);
    v44 = v75;
    if (v43 == 1)
    {
      sub_29E1D0BC4(v40, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
      v45 = 1;
      v46 = v74;
      v47 = v72;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v48 = v65;
  sub_29DE962B4(v40, v65);
  if (v41(v40 + v39, 1, v11) == 1)
  {
    v49 = v48;
    v50 = MEMORY[0x29EDBA2F8];
    sub_29E1D0BC4(v38, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    sub_29E1D0BC4(v78, &qword_2A1A5E340, v50);
    v77(v49, v11);
    v44 = v75;
LABEL_9:
    sub_29E1D0C20(v40, sub_29DF1DDB4);
    v47 = v72;
    goto LABEL_10;
  }

  v59 = v64;
  (*(v82 + 32))(v64, v40 + v39, v11);
  sub_29E1D163C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  v60 = v48;
  v61 = sub_29E2C3304();
  v62 = v77;
  v77(v59, v11);
  v63 = MEMORY[0x29EDBA2F8];
  sub_29E1D0BC4(v38, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  sub_29E1D0BC4(v78, &qword_2A1A5E340, v63);
  v62(v60, v11);
  sub_29E1D0BC4(v40, &qword_2A1A5E340, v63);
  v44 = v75;
  v47 = v72;
  if (v61)
  {
    v45 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v45 = v47 == -1;
LABEL_11:
  v46 = v74;
LABEL_12:
  v51 = v80;
  v80(v46, v81 + *(v71 + 28), v11);
  result = v51(v44, v79, v11);
  if (__OFADD__(v47, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (!v67)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v47 != 0x8000000000000000 || v67 != -1)
  {
    v53 = v47 % v67 == 0;
    sub_29E1D163C(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v54 = v79;
    v55 = v45;
    v56 = sub_29E2C3284();
    v57 = v77;
    v77(v46, v11);
    v57(v54, v11);
    v58 = v66;
    (*(v82 + 32))(v66, v44, v11);
    result = type metadata accessor for CycleChartCycle.RelativeDayIndex(0);
    *(v58 + result[5]) = v47;
    *(v58 + result[6]) = v47 + 1;
    *(v58 + result[7]) = v53;
    *(v58 + result[8]) = v55;
    *(v58 + result[9]) = v56 & 1;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_29E1D01A0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v14[-v8];
  v10 = [*(v0 + 8) lastDayIndex];
  if (v10)
  {
  }

  sub_29E2C3314();
  (*(v3 + 16))(v5, v9, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = sub_29E2C3414();
  (*(v3 + 8))(v9, v2);
  return v12;
}

uint64_t sub_29E1D03CC()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v28[1] = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = sub_29E2C3384();
  v3 = *(v28[0] - 8);
  MEMORY[0x2A1C7C4A8](v28[0]);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v28 - v7;
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v28 - v13;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  sub_29E2C3354();
  sub_29E2C3344();
  v19 = type metadata accessor for CycleChartCycle(0);
  sub_29E02CAF8((v0 + *(v19 + 28)), v17);
  v20 = sub_29E2C31A4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v14, v17, v20);
  v22 = *(v21 + 56);
  v22(v14, 0, 1, v20);
  v22(v11, 1, 1, v20);
  v23 = sub_29E059C18(v14, v11);
  sub_29E1D0C20(v11, sub_29DEDB978);
  v24 = v28[0];
  sub_29E1D0C20(v14, sub_29DEDB978);
  sub_29E1D0C20(v17, sub_29DEFCC2C);
  v28[3] = v23;
  sub_29E2C3324();
  sub_29E2C3344();
  sub_29E2C3374();
  (*(v3 + 16))(v5, v8, v24);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v25 = qword_2A1A67F80;
  sub_29E2BCC74();
  v26 = sub_29E2C3414();
  (*(v3 + 8))(v8, v24);
  return v26;
}

uint64_t sub_29E1D0814()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E1D0CA0(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_29E2BC3A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E1D0CF8(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29E1D0BC4(v5, &qword_2A1A616F0, MEMORY[0x29EDB98E8]);
    sub_29E2C3354();
    sub_29E2C3344();
    sub_29E1D1094();
    sub_29E2C3334();

    sub_29E2C3344();
    sub_29E2C3374();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_29DEBDBA4();
    v13 = sub_29E2BC354();
    v14 = [v12 stringForObjectValue_];

    if (v14)
    {
      v15 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    }

    else
    {
      v15 = 0;
    }

    (*(v7 + 8))(v9, v6);
    return v15;
  }
}

uint64_t sub_29E1D0BC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E1D0CA0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E1D0C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E1D0CA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E1D0CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v26 - v10;
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = *(v1 + 8);
  v17 = [v16 lastDayIndex];
  if (v17)
  {
    v27 = a1;
    v18 = v17;
    [v17 integerValue];
    sub_29E2C30D4();

    (*(v6 + 32))(v15, v11, v5);
    v19 = [v16 menstruationSegment];
    [v19 days];

    sub_29E2C30D4();
    type metadata accessor for CycleChartCycle(0);
    sub_29E2C3194();
    v20 = *(v6 + 8);
    v20(v8, v5);
    sub_29E2C3194();
    v21 = v27;
    sub_29E2BC374();
    v20(v15, v5);
    v22 = sub_29E2BC3A4();
    return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v24 = sub_29E2BC3A4();
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }
}

uint64_t sub_29E1D103C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_29DEFCBC0();
  *a2 = v3;
  return sub_29E2C3104();
}

uint64_t sub_29E1D1094()
{
  v1 = sub_29E2BC954();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BC984();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BCBB4();
  v11 = *(v19 - 8);
  *&v12 = MEMORY[0x2A1C7C4A8](v19).n128_u64[0];
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(v0 + 8) menstruationSegment];
  [v15 days];

  sub_29E2C30D4();
  type metadata accessor for CycleChartCycle(0);
  sub_29E2C3194();
  (*(v8 + 8))(v10, v7);
  sub_29E2BC974();
  sub_29E2BC944();
  v16 = sub_29E2BCB74();
  (*(v22 + 8))(v3, v23);
  (*(v20 + 8))(v6, v21);
  (*(v11 + 8))(v14, v19);
  return v16;
}

uint64_t sub_29E1D1398(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_29DE9408C(0, &qword_2A1A619F0);
    if (sub_29E2C40D4())
    {
      sub_29E2C31A4();
      v4 = type metadata accessor for CycleChartCycle(0);
      sub_29E1D163C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      if (sub_29E2C3304() & 1) != 0 && (sub_29E2C3304() & 1) != 0 && (MEMORY[0x29ED79570](a1 + *(v4 + 32), a2 + *(v4 + 32)))
      {

        JUMPOUT(0x29ED79570);
      }
    }
  }

  return 0;
}

uint64_t sub_29E1D14D8(uint64_t a1, uint64_t a2)
{
  sub_29E2C31A4();
  sub_29E1D163C(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  if ((sub_29E2C3304() & 1) != 0 && (v4 = type metadata accessor for CycleChartCycle.RelativeDayIndex(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v5 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_29E1D15D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1D163C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E1D16AC()
{
  result = sub_29E2C31A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E1D1734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D177C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_29E1D17EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29E1D1834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E1D18A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D18E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E1D1944(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D198C(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_29E1D19F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D1A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E1D1AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E1D1AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29E1D1B64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_29E1D1B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}