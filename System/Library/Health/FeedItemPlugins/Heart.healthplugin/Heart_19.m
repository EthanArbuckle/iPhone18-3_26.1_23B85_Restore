uint64_t sub_29D89716C()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v27[-1] - v8;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2BF10);
  v11 = sub_29D937878();
  v12 = sub_29D93A268();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, v27);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0xD000000000000031, 0x800000029D96AFA0, v27);
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Creating Blood Pressure Journal set up data source", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }

  sub_29D936318();
  sub_29D693E2C(v27, v27[3]);
  v15 = sub_29D933EC8();
  v16 = sub_29D93A598();

  sub_29D69417C(v27);
  sub_29D75A420();
  v18 = objc_allocWithZone(v17);
  v19 = v16;
  v20 = sub_29D936A38();
  sub_29D935658();
  sub_29D935618();
  v21 = *(v1 + 8);
  v21(v6, v0);
  v22 = sub_29D935638();
  *v23 = 0x4034000000000000;
  v22(v27, 0);
  sub_29D8925D8(&unk_2A17B6100, sub_29D75A420);
  v24 = sub_29D9355A8();

  v21(v9, v0);
  return v24;
}

uint64_t sub_29D8974E0(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_29D936378() - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);

  return sub_29D88F5F8(a1, a2, v6, v7, v8);
}

uint64_t sub_29D897578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8975A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D892620(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D897654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D6C383C;

  return sub_29D7C4B94(a1, v4, v5, v6);
}

void sub_29D897708()
{
  if (!qword_2A17B70A8)
  {
    sub_29D8344D8();
    sub_29D8925D8(&qword_2A17B5F48, sub_29D8344D8);
    v0 = sub_29D935508();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B70A8);
    }
  }
}

uint64_t sub_29D897808(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88D928(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D897940(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88D928(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_29D897AA8()
{
  if (!qword_2A17B70B0)
  {
    sub_29D6FC6EC();
    sub_29D8925D8(&qword_2A17B2720, sub_29D6FC6EC);
    v0 = sub_29D935508();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B70B0);
    }
  }
}

uint64_t sub_29D897B80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88D6D4(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D897CB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88D6D4(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_29D897E20()
{
  if (!qword_2A17B70B8)
  {
    sub_29D897EB4();
    sub_29D8925D8(&qword_2A17B70D0, sub_29D897EB4);
    v0 = sub_29D935508();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B70B8);
    }
  }
}

void sub_29D897EB4()
{
  if (!qword_2A17B70C0)
  {
    sub_29D897F30();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for BloodPressureJournalHighlightsDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B70C0);
    }
  }
}

void sub_29D897F30()
{
  if (!qword_2A17B70C8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B70C8);
    }
  }
}

uint64_t sub_29D897F90(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2A1C733A0](v1, a1, 7);
}

uint64_t sub_29D898048(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88DB48(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D898180()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  sub_29D936978();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D898260(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29D6C383C;

  return sub_29D88DB48(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t type metadata accessor for AFibBurdenPDFChartPoint()
{
  result = qword_2A17B70E0;
  if (!qword_2A17B70E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D898458()
{
  sub_29D9331D8();
  if (v0 <= 0x3F)
  {
    sub_29D8984E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D8984E4()
{
  if (!qword_2A17B70F0)
  {
    sub_29D6E6184();
    v0 = sub_29D93A128();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B70F0);
    }
  }
}

unint64_t sub_29D898554()
{
  result = qword_2A17B1EF0;
  if (!qword_2A17B1EF0)
  {
    sub_29D9331D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1EF0);
  }

  return result;
}

uint64_t sub_29D8985AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D9331D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_29D898618()
{
  result = qword_2A17B70F8;
  if (!qword_2A17B70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B70F8);
  }

  return result;
}

uint64_t sub_29D89866C()
{
  sub_29D8997CC(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v40 = &v35 - v3;
  sub_29D6BE524();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D899A34();
  v39 = v11;
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D899B44();
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
  v21 = sub_29D843650(0);
  v22 = *&v21[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
  os_unfair_lock_lock((v22 + 24));
  v23 = *(v22 + 16);

  os_unfair_lock_unlock((v22 + 24));
  v44 = v23;
  *(swift_allocObject() + 16) = v21;
  sub_29D899AD0(0, &qword_2A1A22368, sub_29D843F8C, MEMORY[0x29EDB8A60]);
  sub_29D89991C();
  sub_29D8999AC();
  v24 = v21;
  sub_29D938428();

  sub_29D899C24(&qword_2A1A22710, sub_29D6BE524);
  v25 = sub_29D938418();
  (*(v6 + 8))(v10, v5);

  v44 = v25;
  *(swift_allocObject() + 16) = v37;
  sub_29D899AD0(0, &qword_2A1A22398, sub_29D89991C, MEMORY[0x29EDB89F8]);
  sub_29D6BCA50();
  v26 = v36;
  sub_29D938468();

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v27 = sub_29D93A468();
  v44 = v27;
  v28 = sub_29D93A448();
  v29 = v40;
  (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
  sub_29D899C24(&qword_2A17B7120, sub_29D899A34);
  sub_29D706380();
  v31 = v38;
  v30 = v39;
  sub_29D938538();
  sub_29D7339C0(v29);

  (*(v41 + 8))(v26, v30);
  sub_29D899C24(&qword_2A17B7128, sub_29D899B44);
  v32 = v42;
  v33 = sub_29D938418();
  (*(v43 + 8))(v31, v32);
  return v33;
}

uint64_t sub_29D898C04()
{
  v1 = v0;
  v2 = *v0;
  sub_29D7C0358();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[4])
  {
    v10 = v1[4];
  }

  else
  {
    v10 = sub_29D89866C();
  }

  v13[1] = v10;
  *(swift_allocObject() + 16) = v2;
  sub_29D6AD548();
  sub_29D8997CC(0, &qword_2A17B4F50, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
  sub_29D899C24(&qword_2A1A223E0, sub_29D6AD548);

  sub_29D938468();

  sub_29D899C24(&qword_2A17B4F70, sub_29D7C0358);
  sub_29D9383F8();
  (*(v5 + 8))(v9, v4);
  sub_29D936458();
  sub_29D935588();

  sub_29D7BFFF8();
  sub_29D899C24(&qword_2A17B4F00, sub_29D7BFFF8);
  v11 = sub_29D9355C8();

  return v11;
}

uint64_t sub_29D898F04@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_29D8997CC(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v11 = *(sub_29D9359D8() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    v19 = xmmword_29D93DDB0;
    *(v14 + 16) = xmmword_29D93DDB0;
    sub_29D75A518();
    v15 = swift_allocObject();
    *(v15 + 16) = v19;
    sub_29D899830(v20);
    *(v15 + 56) = &type metadata for CenteredLabelWithSpinnerItem;
    *(v15 + 64) = sub_29D69F490();
    v16 = swift_allocObject();
    *(v15 + 32) = v16;
    v17 = v20[1];
    v16[1] = v20[0];
    v16[2] = v17;
    v18 = v20[3];
    v16[3] = v20[2];
    v16[4] = v18;
    sub_29D933A48();
    sub_29D933A18();
    (*(v5 + 8))(v10, v4);
    result = sub_29D9359C8();
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  *a2 = v14;
  return result;
}

uint64_t sub_29D899144()
{
  type metadata accessor for CenteredLabelWithSpinnerCell();
  sub_29D899C24(&qword_2A17B7108, type metadata accessor for CenteredLabelWithSpinnerCell);
  return sub_29D93A348();
}

uint64_t sub_29D8991B4()
{
  sub_29D8997CC(0, &qword_2A17B7100, MEMORY[0x29EDC2078], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v16[-v3];
  v5 = sub_29D9356A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D935698();
  v11 = sub_29D935638();
  *(v12 + 16) = 0;
  v11(v16, 0);
  v13 = sub_29D935648();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_29D935688();
  sub_29D9364F8();
  v14 = sub_29D935608();
  (*(v6 + 8))(v10, v5);
  return v14;
}

void sub_29D899380(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = v3;
    v6 = sub_29D937878();
    v7 = sub_29D93A288();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136446466;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v27);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      sub_29D6B7370(0, &qword_2A1A24850);
      v13 = sub_29D939DA8();
      v15 = sub_29D6C2364(v13, v14, &v27);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Failed to get retrocompute state: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    else
    {

      sub_29D6BE118(v3);
    }

    v26 = 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    sub_29D899C18(v3);
    v17 = v3;
    v18 = sub_29D937878();
    v19 = sub_29D93A2A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446466;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v27);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      v25 = [v17 status];
      sub_29D6BE118(v3);
      *(v20 + 14) = v25;
      sub_29D6BE118(v3);
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s] Received retrocompute status: %ld", v20, 0x16u);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    else
    {
      sub_29D6BE118(v3);
      sub_29D6BE118(v3);
    }

    v26 = [v17 status] == 2;
  }

  *a2 = v26;
}

uint64_t sub_29D8996EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_29D89976C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  sub_29D935E88();
  return v1;
}

void sub_29D8997CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D899830(void *a1@<X8>)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_29D9334A8();
  v6 = v5;

  *a1 = 0xD000000000000014;
  a1[1] = 0x800000029D96B170;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0x4020000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
}

void sub_29D89991C()
{
  if (!qword_2A1A21EB8)
  {
    sub_29D69567C(255, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6B7370(255, &qword_2A1A24850);
    v0 = sub_29D93AEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21EB8);
    }
  }
}

unint64_t sub_29D8999AC()
{
  result = qword_2A1A22370;
  if (!qword_2A1A22370)
  {
    sub_29D899AD0(255, &qword_2A1A22368, sub_29D843F8C, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22370);
  }

  return result;
}

void sub_29D899A34()
{
  if (!qword_2A17B7110)
  {
    sub_29D899AD0(255, &qword_2A1A22398, sub_29D89991C, MEMORY[0x29EDB89F8]);
    sub_29D6BCA50();
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7110);
    }
  }
}

void sub_29D899AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
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

void sub_29D899B44()
{
  if (!qword_2A17B7118)
  {
    sub_29D899A34();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D899C24(&qword_2A17B7120, sub_29D899A34);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7118);
    }
  }
}

uint64_t sub_29D899C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ArticleIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D899DCC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0xD00000000000002BLL;
    v6 = 0xD00000000000001FLL;
    if (a1 != 3)
    {
      v6 = 0xD000000000000025;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000030;
    if (!a1)
    {
      v7 = 0xD000000000000024;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v1 = 0xD000000000000034;
    }

    else
    {
      v1 = 0xD000000000000035;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000034;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000039;
    if (a1 == 6)
    {
      v3 = 0xD000000000000037;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000038;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

id sub_29D899F00@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        a3[3] = &type metadata for CardioFitnessOverviewArticleDataProvider;
        a3[4] = sub_29D89AC24();
        a3[5] = sub_29D89AC78();
        *a3 = a1;

        return a1;
      }

      else
      {
        a3[3] = &type metadata for HeartRateArticleDataProvider;
        a3[4] = sub_29D7ED1DC();
        result = sub_29D7ED230();
        a3[5] = result;
      }
    }

    else if (a2 == 2)
    {
      v6 = *MEMORY[0x29EDBA6C0];
      v7 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v8 = a1;
      v9 = [v7 initWithFeatureIdentifier:v6 healthStore:v8 currentCountryCode:0];
      v20 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
      v21 = MEMORY[0x29EDC2EA8];
      *&v19 = v9;
      v10 = type metadata accessor for LowCardioFitnessArticleDataProvider();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      v14 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
      sub_29D6B805C(0);
      (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
      *(v13 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink) = 2;
      *(v13 + 16) = v8;
      sub_29D6959E8(&v19, v13 + 24);
      a3[3] = v10;
      a3[4] = sub_29D89ABDC(qword_2A1A25918, type metadata accessor for LowCardioFitnessArticleDataProvider);
      result = sub_29D89ABDC(&qword_2A1A25910, type metadata accessor for LowCardioFitnessArticleDataProvider);
      a3[5] = result;
      *a3 = v13;
    }

    else
    {
      if (a2 == 3)
      {
        a3[3] = &type metadata for AFibBurdenArticleProviderLearnAboutAFib;
        a3[4] = sub_29D89AB34();
        result = sub_29D89AB88();
      }

      else
      {
        a3[3] = &type metadata for AFibBurdenArticleProviderLearnAboutAFibBurden;
        a3[4] = sub_29D89AA8C();
        result = sub_29D89AAE0();
      }

      a3[5] = result;
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v5 = 0;
    }

    else if (a2 == 9)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v16 = sub_29D9049B4(v5);
    a3[3] = &type metadata for BloodPressureJournalArticleDataProvider;
    a3[4] = sub_29D89A894();
    result = sub_29D89A8E8();
    a3[5] = result;
    *a3 = v16;
  }

  else if (a2 == 5)
  {
    a3[3] = &type metadata for HypertensionNotificationsArticleDataProvider;
    a3[4] = sub_29D89A9E4();
    result = sub_29D89AA38();
    a3[5] = result;
    *a3 = 0;
  }

  else if (a2 == 6)
  {
    a3[3] = &type metadata for HypertensionNotificationsArticleDataProvider;
    a3[4] = sub_29D89A9E4();
    result = sub_29D89AA38();
    a3[5] = result;
    *a3 = 1;
  }

  else
  {
    a3[3] = &type metadata for HypertensionNotificationsFIGOArticleDataProvider;
    a3[4] = sub_29D89A93C();
    result = sub_29D89A990();
    a3[5] = result;
  }

  return result;
}

id sub_29D89A248(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1)
    {
      v2 = MEMORY[0x29EDBA870];
    }

    else
    {
      v2 = MEMORY[0x29EDBA908];
    }

    if (a1 - 1 >= 2)
    {
      v1 = v2;
    }

    else
    {
      v1 = MEMORY[0x29EDBA970];
    }

    goto LABEL_12;
  }

  if (a1 - 5 >= 3)
  {
    if (a1 - 8 >= 3)
    {
      v1 = MEMORY[0x29EDBA870];
    }

    else
    {
      v1 = MEMORY[0x29EDBA890];
    }

LABEL_12:
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    return [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  }

  return 0;
}

uint64_t sub_29D89A304(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_29D899DCC(*a1);
  v5 = v4;
  if (v3 == sub_29D899DCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D89A38C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D899DCC(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D89A3F0()
{
  sub_29D899DCC(*v0);
  sub_29D939E18();
}

uint64_t sub_29D89A444()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D899DCC(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D89A4A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D89ACCC();
  *a2 = result;
  return result;
}

unint64_t sub_29D89A4D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29D899DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_29D89A510@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D937898();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935E88();
  v12 = sub_29D89ACCC();
  if (v12 == 11)
  {
    sub_29D934D28();
    sub_29D935E88();
    v13 = sub_29D937878();
    v14 = sub_29D93A288();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v15 = 136446466;
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v27);
      v26 = v6;
      v19 = v18;

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_29D6C2364(a1, a2, &v27);
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Article identifier %{public}s could not be found", v15, 0x16u);
      v20 = v25;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);

      (*(v7 + 8))(v11, v26);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v21 = v12;
    v26 = sub_29D935748();
    sub_29D899F00(v26, v21, a3);
    v22 = v26;
  }

  return result;
}

void sub_29D89A7EC()
{
  if (!qword_2A17B7138)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7138);
    }
  }
}

unint64_t sub_29D89A840()
{
  result = qword_2A17B7140;
  if (!qword_2A17B7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7140);
  }

  return result;
}

unint64_t sub_29D89A894()
{
  result = qword_2A1A235A8;
  if (!qword_2A1A235A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A235A8);
  }

  return result;
}

unint64_t sub_29D89A8E8()
{
  result = qword_2A1A235A0;
  if (!qword_2A1A235A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A235A0);
  }

  return result;
}

unint64_t sub_29D89A93C()
{
  result = qword_2A1A22DA0[0];
  if (!qword_2A1A22DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A22DA0);
  }

  return result;
}

unint64_t sub_29D89A990()
{
  result = qword_2A1A22D98;
  if (!qword_2A1A22D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22D98);
  }

  return result;
}

unint64_t sub_29D89A9E4()
{
  result = qword_2A1A23018[0];
  if (!qword_2A1A23018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A23018);
  }

  return result;
}

unint64_t sub_29D89AA38()
{
  result = qword_2A1A23010;
  if (!qword_2A1A23010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23010);
  }

  return result;
}

unint64_t sub_29D89AA8C()
{
  result = qword_2A1A247C0;
  if (!qword_2A1A247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247C0);
  }

  return result;
}

unint64_t sub_29D89AAE0()
{
  result = qword_2A1A247B8;
  if (!qword_2A1A247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247B8);
  }

  return result;
}

unint64_t sub_29D89AB34()
{
  result = qword_2A1A247D0;
  if (!qword_2A1A247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247D0);
  }

  return result;
}

unint64_t sub_29D89AB88()
{
  result = qword_2A1A247C8;
  if (!qword_2A1A247C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247C8);
  }

  return result;
}

uint64_t sub_29D89ABDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D89AC24()
{
  result = qword_2A1A257B0;
  if (!qword_2A1A257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A257B0);
  }

  return result;
}

unint64_t sub_29D89AC78()
{
  result = qword_2A1A257A8;
  if (!qword_2A1A257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A257A8);
  }

  return result;
}

uint64_t sub_29D89ACCC()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

id sub_29D89AD18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:*(v0 + 16)];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29D89AD9C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = 0;
    *(v0 + 32) = v1;
    v3 = v2;
  }

  return v1;
}

char *sub_29D89AE08(char a1, char a2, char a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  if (sub_29D89B76C())
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2BF10);
    v10 = sub_29D937878();
    v11 = sub_29D93A2A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v79 = v13;
      *v12 = 136446210;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v79);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] Presenting blood pressure journal onboarding", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    v17 = v5[2];
    v18 = type metadata accessor for BloodPressureJournalOnboardingMainViewController();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_coordinator] = 0;
    v19[OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_navigateToDetailRoomUponOnboardingCompletion] = a1 & 1;
    v19[OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_provenance] = a2;
    v20 = *MEMORY[0x29EDBA6B8];
    v21 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
    v22 = v17;
    v23 = [v21 initWithFeatureIdentifier:v20 healthStore:v22];
    type metadata accessor for BloodPressureJournalOnboardingFlowManager();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    type metadata accessor for BloodPressureJournalOnboardingModel();
    v25 = swift_allocObject();
    *(v25 + 48) = 0;
    *(v25 + 16) = 2;
    *(v25 + 24) = v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = a2;
    type metadata accessor for BloodPressureJournalOnboardingStageViewControllerFactory();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v77.receiver = v19;
    v77.super_class = v18;
    v27 = v22;

    v28 = objc_msgSendSuper2(&v77, sel_initWithNibName_bundle_, 0, 0);
    [v28 setModalPresentationStyle_];
    [v28 setModalInPresentation_];
    v29 = type metadata accessor for BloodPressureJournalOnboardingCoordinator();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A244C080;
    swift_unknownObjectWeakAssign();
    *&v30[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_model] = v25;
    *&v30[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_vcFactory] = v26;
    *&v30[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_healthStore] = v27;
    v30[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_provenance] = a2;
    v30[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_source] = a3;
    v76.receiver = v30;
    v76.super_class = v29;
    v31 = v27;

    v32 = objc_msgSendSuper2(&v76, sel_init);
    sub_29D8AE24C();

    v33 = &OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_coordinator;
    v34 = a2;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v35 = sub_29D937898();
    sub_29D69C6C0(v35, qword_2A1A2BF10);
    v36 = sub_29D937878();
    v37 = sub_29D93A2A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79 = v39;
      *v38 = 136446210;
      v40 = sub_29D93AF08();
      v42 = sub_29D6C2364(v40, v41, &v79);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s] Presenting blood pressure journal creation", v38, 0xCu);
      sub_29D69417C(v39);
      MEMORY[0x29ED6BE30](v39, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }

    v43 = v5[2];
    v44 = type metadata accessor for BloodPressureJournalCreationMainViewController();
    v45 = objc_allocWithZone(v44);
    *&v45[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator] = 0;
    *&v45[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl] = 0;
    v45[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_navigateToDetailRoomUponCompletion] = a1 & 1;
    *&v45[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_healthStore] = v43;
    type metadata accessor for BloodPressureJournalBestPracticesManager();
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    v47 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
    v48 = v43;
    v49 = sub_29D939D28();
    v50 = [v47 initWithCategory:2 domainName:v49 healthStore:v48];

    *(v46 + 24) = v50;
    v51 = type metadata accessor for BloodPressureJournalCreationModel();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    v54 = swift_allocObject();
    v79 = 0;
    v80 = 1;
    sub_29D7B7CA4(0);
    v55 = v48;

    sub_29D938398();
    v56 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
    if (qword_2A17B0C48 != -1)
    {
      swift_once();
    }

    v57 = sub_29D9339F8();
    v58 = sub_29D69C6C0(v57, qword_2A17B4D48);
    v59 = *(*(v57 - 8) + 16);
    v59(v54 + v56, v58, v57);
    v60 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime;
    if (qword_2A17B0C50 != -1)
    {
      swift_once();
    }

    v61 = sub_29D69C6C0(v57, qword_2A17B4D60);
    v59(v54 + v60, v61, v57);
    v62 = v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
    *v62 = 0u;
    *(v62 + 16) = 0u;
    *(v62 + 32) = 0;
    *(v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___eventSubmissionManager) = 0;
    *(v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities) = 0;
    *(v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore) = v55;
    *(v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager) = v46;
    v34 = a2;
    *(v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_provenance) = a2;
    *(v54 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_flowType) = 1;
    type metadata accessor for BloodPressureJournalCreationViewControllerFactory();
    v63 = swift_allocObject();
    *(v63 + 16) = v54;
    v45[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_provenance] = a2;
    v83.receiver = v45;
    v83.super_class = v44;

    v64 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
    v81 = v44;
    v82 = &off_2A2443630;
    v79 = v64;
    v65 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
    swift_beginAccess();
    v66 = v64;
    sub_29D89BB10(&v79, v54 + v65);
    swift_endAccess();
    [v66 setModalPresentationStyle_];
    [v66 setModalInPresentation_];
    v67 = type metadata accessor for BloodPressureJournalCreationCoordinator();
    v68 = objc_allocWithZone(v67);
    *&v68[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A2443640;
    swift_unknownObjectWeakAssign();
    *&v68[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model] = v54;
    *&v68[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_vcFactory] = v63;
    *&v68[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore] = v55;
    v68[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] = 0;
    v68[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source] = a3;
    v78.receiver = v68;
    v78.super_class = v67;
    v69 = v55;

    v28 = v66;

    v32 = objc_msgSendSuper2(&v78, sel_init);
    sub_29D73CE68();

    v33 = &OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator;
  }

  v70 = *v33;
  v71 = *&v28[v70];
  *&v28[v70] = v32;

  sub_29D89AD9C();
  v72 = sub_29D89B76C();
  sub_29D8B530C(0, a4, v34, (v72 & 1) == 0, 2);

  return v28;
}

id sub_29D89B76C()
{
  v1 = *v0;
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v17 - v10;
  v12 = sub_29D89AD18();
  sub_29D6B8230();
  sub_29D937278();

  (*(v3 + 32))(v11, v8, v2);
  v13 = *MEMORY[0x29EDBA578];
  v14 = sub_29D9371B8();
  v15 = [v14 areAllRequirementsSatisfied];

  (*(v3 + 8))(v11, v2);
  return v15;
}

uint64_t sub_29D89BAA4()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_29D89BB10(uint64_t a1, uint64_t a2)
{
  sub_29D89BB74();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D89BB74()
{
  if (!qword_2A17B4DC0)
  {
    sub_29D6B7370(255, &qword_2A17B73B0);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4DC0);
    }
  }
}

uint64_t type metadata accessor for AFibFeaturesPromotionTileActionHandler()
{
  result = qword_2A17B7158;
  if (!qword_2A17B7158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D89BC74()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v7, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v12[1] = 0;
  sub_29D9371C8();

  v8 = objc_allocWithZone(type metadata accessor for AFibFeaturesOnboardingViewController());
  v9 = sub_29D92154C();
  *&v9[qword_2A17B8220 + 8] = &off_2A244BA38;
  swift_unknownObjectWeakAssign();
  v10 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29D936B88();
  v11 = sub_29D936618();
  (*(v2 + 8))(v6, v1);
  [v11 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_29D89BE88()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x2928706154646964, 0xE800000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96B3F0);
  return 91;
}

void sub_29D89BF48(char a1)
{
  ObjectType = swift_getObjectType();
  v114 = sub_29D933CE8();
  v3 = *(v114 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v114, v5);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v8 = *(*(v113 - 1) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v113, v9);
  v115 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v116 = &v105 - v13;
  v14 = sub_29D936638();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v24 = &v105 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v105 - v26;
  v117 = v1;
  sub_29D936B88();
  v28 = (v15 + 8);
  v118 = v28;
  if ((a1 & 1) == 0)
  {
    sub_29D936608();
    v46 = *v28;
    ObjectType = v28 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v27, v14);
    sub_29D693E2C(aBlock, v130);
    v114 = sub_29D936588();
    sub_29D69417C(aBlock);
    v111 = v27;
    sub_29D936B88();
    v47 = sub_29D936618();
    v46(v27, v14);
    sub_29D93A388();

    sub_29D936B88();
    sub_29D936608();
    v110 = v14;
    v46(v24, v14);
    sub_29D693E2C(v128, v128[3]);
    sub_29D9365A8();
    sub_29D936B88();
    sub_29D936608();
    v46(v20, v14);
    sub_29D693E2C(v126, v126[3]);
    sub_29D936598();
    swift_storeEnumTagMultiPayload();
    v48 = type metadata accessor for AFibBurdenOnboardingController();
    v49 = objc_allocWithZone(v48);
    *&v49[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
    v49[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = 1;
    v125.receiver = v49;
    v125.super_class = v48;
    v113 = objc_msgSendSuper2(&v125, sel_initWithNibName_bundle_, 0, 0);
    [v113 setModalPresentationStyle_];
    v50 = *MEMORY[0x29EDBA6B0];
    v51 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
    v52 = v114;
    v53 = [v51 initWithFeatureIdentifier:v50 healthStore:v114];
    v54 = v52;
    v55 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:v52];
    v56 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v57 = v53;
    v108 = v57;
    v58 = [v56 initWithFeatureIdentifier:v50 healthStore:v54];
    sub_29D6945AC(v127, &v122);
    v109 = v55;
    v59 = sub_29D71B714(v57, v58, v109, &v122);
    v107 = v59;

    sub_29D6945AC(aBlock, &v122);
    sub_29D6945AC(v127, &v119);
    type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
    v60 = swift_allocObject();
    sub_29D679D3C(&v122, v60 + 16);
    sub_29D679D3C(&v119, v60 + 64);
    *(v60 + 56) = 1;
    v61 = sub_29D933F18();

    v62 = sub_29D933F08();
    v63 = type metadata accessor for AFibBurdenOnboardingFlowManager();
    v123 = v63;
    v124 = &off_2A244DAB0;
    *&v122 = v59;
    v120 = v61;
    v121 = &off_2A24417F8;
    *&v119 = v62;
    v64 = type metadata accessor for AFibBurdenOnboardingModel();
    v65 = swift_allocObject();
    v66 = sub_29D693DDC(&v122, v63);
    v106 = &v105;
    v67 = *(*(v63 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v66, v66);
    v69 = (&v105 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = v120;
    v72 = sub_29D693DDC(&v119, v120);
    v73 = *(*(v71 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v72, v72);
    v75 = (&v105 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v76 + 16))(v75);
    v77 = *v69;
    v78 = *v75;
    v65[5] = v63;
    v65[6] = &off_2A244DAB0;
    v65[2] = v77;
    v65[10] = v61;
    v65[11] = &off_2A24417F8;
    v65[7] = v78;
    sub_29D69417C(&v119);
    sub_29D69417C(&v122);
    v79 = v115;
    sub_29D71B998(v116, v115);

    v80 = HKHRAFibBurdenLogForCategory();
    v81 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
    v82 = v114;
    v83 = [v81 initWithLoggingCategory:v80 healthDataSource:v114];

    v123 = v64;
    v124 = &off_2A2441928;
    *&v122 = v65;
    v84 = type metadata accessor for AFibBurdenOnboardingCoordinator();
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    v87 = swift_allocObject();
    v88 = sub_29D693DDC(&v122, v64);
    v106 = &v105;
    v89 = *(*(v64 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v88, v88);
    v91 = (&v105 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v92 + 16))(v91);
    v93 = *v91;
    v120 = v64;
    v121 = &off_2A2441928;
    *&v119 = v93;
    *(v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
    v94 = v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
    *(v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
    swift_unknownObjectWeakInit();
    sub_29D6945AC(&v119, v87 + 16);
    sub_29D71B998(v79, v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
    *(v94 + 8) = &off_2A24497D8;
    v95 = v113;
    swift_unknownObjectWeakAssign();

    *(v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v60;
    *(v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v82;
    *(v87 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v83;

    v96 = v82;
    v97 = v83;
    sub_29D862C98();

    sub_29D71B9FC(v79);
    sub_29D69417C(&v119);
    sub_29D69417C(&v122);

    sub_29D71B9FC(v116);
    sub_29D69417C(v127);
    sub_29D69417C(aBlock);
    v98 = *&v95[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator];
    *&v95[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v87;
    v44 = v95;

    v45 = v118;

    sub_29D69417C(v126);
    sub_29D69417C(v128);
    v39 = v117;
    v14 = v110;
    v40 = v111;
    goto LABEL_8;
  }

  sub_29D936608();
  (*v28)(v27, v14);
  sub_29D693E2C(aBlock, v130);
  v29 = sub_29D936588();
  sub_29D69417C(aBlock);
  sub_29D933C88();
  v30 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v31 = sub_29D933BB8();
  v32 = [v30 initWithCalendar_];

  (*(v3 + 8))(v7, v114);
  v33 = objc_allocWithZone(MEMORY[0x29EDC52B0]);
  v34 = v117;
  v35 = [v33 initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:v29 dateCache:v32 provenance:3 delegate:v117];

  v36 = qword_2A17B7150;
  v37 = *&v34[qword_2A17B7150];
  *&v34[qword_2A17B7150] = v35;
  v38 = v35;

  v39 = v34;
  v40 = v27;
  if (v38)
  {
    sub_29D6B73CC();
    v41 = sub_29D93A6D8();
    [v38 setHasAtrialFibrillationDiagnosis_];
  }

  v42 = *&v39[v36];
  if (v42)
  {
    v43 = [v42 onboardingNavigationController];
    if (v43)
    {
      v44 = v43;
      v45 = v118;
LABEL_8:
      v99 = v44;
      sub_29D936B88();
      v100 = sub_29D936618();
      (*v45)(v40, v14);
      v101 = swift_allocObject();
      *(v101 + 16) = v39;
      *(v101 + 24) = v99;
      v131 = sub_29D89DB8C;
      v132 = v101;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D6C1F10;
      v130 = &unk_2A244BB60;
      v102 = _Block_copy(aBlock);
      v103 = v39;

      [v100 dismissViewControllerAnimated:1 completion:v102];

      _Block_release(v102);
      return;
    }
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v104, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  aBlock[0] = 0;
  sub_29D9371F8();
}

uint64_t sub_29D89CB90()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D96B370);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D96B3B0);
  return 0;
}

void sub_29D89CC5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  v9 = sub_29D936618();
  (*(v4 + 8))(v8, v3);
  [v9 presentViewController:a2 animated:1 completion:0];
}

void sub_29D89CD58()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v1, v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19[-1] - v9;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v11, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v19[0] = 0;
  sub_29D9371C8();

  sub_29D936B88();
  sub_29D936608();
  v12 = *(v2 + 8);
  v12(v10, v1);
  sub_29D693E2C(v19, v19[3]);

  sub_29D69417C(v19);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D7191F0();
  v13 = objc_allocWithZone(sub_29D934568());
  v14 = sub_29D934558();
  v15 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29D936B88();
  v16 = sub_29D936618();
  v12(v7, v1);
  v17 = [v16 presentedViewController];

  if (v17)
  {
    [v17 presentViewController:v15 animated:1 completion:0];
  }
}

uint64_t sub_29D89D098()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D96B340);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D9693B0);
  return 91;
}

uint64_t sub_29D89D160()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D96B230);
  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D96B260);
  return 0;
}

void sub_29D89D22C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v9, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v17[1] = 0;
  sub_29D9371C8();

  v10 = *(v1 + qword_2A17B7150);
  *(v1 + qword_2A17B7150) = 0;

  sub_29D936B88();
  v11 = sub_29D936618();
  (*(v4 + 8))(v8, v3);
  v12 = [v11 tabBarController];

  if (v12)
  {
    v13 = [objc_opt_self() atrialFibrillationEventType];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for AFibFeaturesPromotionTileActionHandler();
      sub_29D89DB34(&qword_2A17B5C28, type metadata accessor for AFibFeaturesPromotionTileActionHandler);
      v15 = sub_29D936AF8();
      if (v15)
      {
        v16 = v15;
        sub_29D74E500(v15, 0);

        v12 = v14;
        v14 = v16;
      }

      v12 = v14;
    }
  }
}

uint64_t sub_29D89D49C()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D96B2F0);
  MEMORY[0x29ED6A240](0xD000000000000026, 0x800000029D96B310);
  return 91;
}

void sub_29D89D564(void *a1)
{
  v1 = a1;
  sub_29D89D22C();
}

uint64_t sub_29D89D5AC()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D96B2A0);
  MEMORY[0x29ED6A240](0xD000000000000026, 0x800000029D96B2C0);
  return 91;
}

void sub_29D89D674(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = qword_2A1A24678;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v5, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  sub_29D9371C8();

  v6 = *&v4[qword_2A17B7150];
  *&v4[qword_2A17B7150] = 0;
}

uint64_t sub_29D89D770(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  *&v9[qword_2A17B7150] = 0;
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D89D88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibFeaturesPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D89D928()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v7, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v9[1] = 0;
  sub_29D9371C8();

  sub_29D936B88();
  v8 = sub_29D936618();
  (*(v2 + 8))(v6, v1);
  [v8 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29D89DB34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D89DB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController()
{
  result = qword_2A17B7190;
  if (!qword_2A17B7190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D89DC64()
{
  v1 = v0;
  swift_getObjectType();
  sub_29D6D22BC(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v7 = sub_29D937898();
  sub_29D69C6C0(v7, qword_2A1A2C008);
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    v12 = sub_29D93AF08();
    v14 = sub_29D6C2364(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D968040, &v23);
    _os_log_impl(&dword_29D677000, v8, v9, "[%s.%{public}s]: Learn more tapped", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v11, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  v15 = *(v1 + qword_2A17B7180);
  v16 = *(v15 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  LOBYTE(v15) = *(v15 + 40);
  v18 = v16;
  sub_29D8B530C(3, 12, v15, 0, 2);

  sub_29D9336E8();
  v19 = sub_29D9336F8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    return sub_29D6D96C0(v6);
  }

  sub_29D9336A8();
  return (*(v20 + 8))(v6, v19);
}

void sub_29D89DF48(void *a1)
{
  v1 = a1;
  sub_29D89DC64();
}

id sub_29D89DF90()
{
  v1 = qword_2A17B7188;
  v2 = *&v0[qword_2A17B7188];
  if (v2)
  {
    v3 = *&v0[qword_2A17B7188];
  }

  else
  {
    sub_29D89DFF4(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D89DFF4(void *a1)
{
  v2 = [objc_opt_self() accessoryButton];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemBlueColor];
  [v4 setTintColor_];

  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v6 = sub_29D939D28();

  [v4 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v4 addTarget:a1 action:sel_learnMoreButtonTapped forControlEvents:64];
  sub_29D88BBC8(&unk_2A243F3A0);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v9 = sub_29D939D28();

    [a1 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D89E218()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_29D88BBC8(&unk_2A243F3E0);
  v2 = sub_29D939F18();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v4 = sub_29D939D28();

    v5 = [v1 headerView];
    v6 = sub_29D89DF90();
    [v5 addAccessoryButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D89E370(void *a1)
{
  v1 = a1;
  sub_29D89E218();
}

uint64_t sub_29D89E3B8()
{
  v1 = v0;
  v2 = *&v0[qword_2A17B7180];
  v3 = *(v2 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  LOBYTE(v2) = *(v2 + 40);
  v5 = v3;
  sub_29D8B530C(3, 2, v2, 0, 2);

  v7 = *&v0[qword_2A17B7178];
  if (v7)
  {
    v8 = *&v1[qword_2A17B7178];
    swift_unknownObjectRetain();
    sub_29D8A49D4(v1, v7);

    return sub_29D936978();
  }

  return result;
}

void sub_29D89E47C(void *a1)
{
  v1 = a1;
  sub_29D89E3B8();
}

void sub_29D89E4F4()
{
  v1 = *(v0 + qword_2A17B7178);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B7180);

  v3 = *(v0 + qword_2A17B7188);
}

id sub_29D89E544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D89E57C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B7178);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B7180);

  v4 = *(a1 + qword_2A17B7188);
}

uint64_t sub_29D89E5E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B7178);
  v4 = *(v2 + qword_2A17B7178);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D89E5FC(uint64_t a1)
{
  v2 = (v1 + qword_2A17B7178);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_2A17B7188) = 0;
  *(v1 + qword_2A17B7180) = a1;
  objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController());
  v3 = sub_29D935F88();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  sub_29D935F98();
  sub_29D936D88();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D74059C();

  return sub_29D936A98();
}

id sub_29D89E7A8(uint64_t a1)
{
  v187 = *v1;
  v193 = sub_29D9344B8();
  v186 = *(v193 - 8);
  v3 = *(v186 + 64);
  MEMORY[0x2A1C7C4A8](v193, v4);
  v184 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC();
  v192 = v6;
  v190 = *(v6 - 1);
  v7 = *(v190 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v182 = v10;
  v183 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v189 = &v175 - v12;
  sub_29D8A2AF0(0, &qword_2A1A21ED0, sub_29D69BECC, MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v191 = &v175 - v16;
  v17 = sub_29D9341E8();
  v194 = *(v17 - 8);
  v18 = v194[8];
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v198 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v175 - v23;
  v25 = sub_29D937898();
  v196 = *(v25 - 8);
  v197 = v25;
  v26 = *(v196 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v185 = &v175 - v33;
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v175 - v35;
  v37 = sub_29D9341B8();
  v38 = v37;
  v39 = sub_29D933FE8();
  v40 = sub_29D933FD8();
  v188 = v38;

  if (v40)
  {
    sub_29D934D28();
    v41 = v194[2];
    v201 = (v194 + 2);
    v199 = v41;
    v41(v24, a1, v17);
    v42 = sub_29D937878();
    v43 = sub_29D93A2A8();
    v44 = os_log_type_enabled(v42, v43);
    v195 = a1;
    v200 = v17;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = v17;
      v181 = swift_slowAlloc();
      v204[0] = v181;
      *v45 = 136446466;
      *&v208 = v187;
      swift_getMetatypeMetadata();
      v47 = sub_29D939DA8();
      v49 = sub_29D6C2364(v47, v48, v204);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_29D9341B8();
      v51 = sub_29D933FC8();
      v53 = v52;

      (v194[1])(v24, v46);
      v54 = sub_29D6C2364(v51, v53, v204);
      v55 = v195;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s]: returning pipeline for sourceProfile %{public}s", v45, 0x16u);
      v56 = v181;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v56, -1, -1);
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }

    else
    {
      v55 = a1;

      (v194[1])(v24, v17);
    }

    (*(v196 + 8))(v36, v197);
    sub_29D934188();
    v67 = v55;
    sub_29D693E2C(&v208, *(&v209 + 1));
    v68 = sub_29D934118();
    sub_29D69417C(&v208);
    v69 = v191;
    sub_29D9341D8();
    v178 = *(v190 + 56);
    v179 = v190 + 56;
    v178(v69, 0, 1, v192);
    v70 = sub_29D73B0B8(v69);
    v72 = v71;
    sub_29D8A162C(v69);
    v73 = objc_allocWithZone(MEMORY[0x29EDBABF8]);
    v74 = v68;
    v180 = v70;
    v181 = v72;
    v75 = sub_29D939D28();
    v176 = [v73 initWithHealthStore:v74 currentCountryCode:v75];
    v177 = v74;

    sub_29D8A16B8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D951A30;
    v77 = MEMORY[0x29EDC3C28];
    *(inited + 56) = v193;
    *(inited + 64) = v77;
    v194 = sub_29D693F78((inited + 32));
    v78 = v198;
    v79 = v67;
    v80 = v200;
    v81 = v199;
    v199(v198, v79, v200);
    v82 = *MEMORY[0x29EDBA6C0];
    sub_29D8A1488(0, &qword_2A1A21F58, &qword_2A1A24740, MEMORY[0x29EDC3BA0], MEMORY[0x29EDC9E90]);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_29D93F680;
    v84 = type metadata accessor for CardioFitnessHealthChecklistFeedItemProvider();
    v85 = swift_allocObject();
    *(v83 + 56) = v84;
    *(v83 + 64) = sub_29D8A2F58(&qword_2A1A23108, type metadata accessor for CardioFitnessHealthChecklistFeedItemProvider);
    *(v83 + 32) = v85;
    v86 = type metadata accessor for CardioFitnessPromotionFeedItemProvider();
    v87 = swift_allocObject();
    *(v83 + 96) = v86;
    *(v83 + 104) = sub_29D8A2F58(qword_2A1A23680, type metadata accessor for CardioFitnessPromotionFeedItemProvider);
    *(v83 + 72) = v87;
    v88 = v82;
    v89 = v195;
    sub_29D9344A8();
    v81(v78, v89, v80);
    v90 = sub_29D77B37C(v78);
    *(inited + 96) = type metadata accessor for CardioFitnessClassificationStatusGeneratorPipeline(0);
    *(inited + 104) = sub_29D8A2F58(&qword_2A1A22D58, type metadata accessor for CardioFitnessClassificationStatusGeneratorPipeline);
    *(inited + 72) = v90;
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v91 = result;

      v92 = [v91 isCompanionCapable];
      if (v92)
      {
        v93 = type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline();
        v81(v78, v89, v200);
        v94 = sub_29D6B82C4(v78);
        v95 = sub_29D8A2F58(qword_2A1A23310, type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline);
      }

      else
      {
        v93 = 0;
        v95 = 0;
        v94 = 0;
        *(inited + 120) = 0;
        *(inited + 128) = 0;
      }

      *(inited + 136) = v93;
      *(inited + 144) = v95;
      *(inited + 112) = v94;
      v96 = v189;
      sub_29D9341D8();
      type metadata accessor for HeartFeatureStatusAvailabilityProvider();
      v97 = 32;
      v98 = swift_allocObject();
      v99 = (*(v190 + 80) + 16) & ~*(v190 + 80);
      v100 = swift_allocObject();
      sub_29D73B8E4(v96, v100 + v99);
      *(v98 + 16) = sub_29D8A173C;
      *(v98 + 24) = v100;
      v199(v78, v89, v200);
      v101 = type metadata accessor for HeartFeatureStatusGeneratorPipeline();
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      v104 = sub_29D7C902C(v78, v98);

      *(inited + 176) = v101;
      *(inited + 184) = sub_29D8A2F58(qword_2A1A25648, type metadata accessor for HeartFeatureStatusGeneratorPipeline);
      *(inited + 152) = v104;
      v105 = v177;
      v194 = v176;
      sub_29D9341D8();
      v106 = v96;
      v107 = v191;
      sub_29D69C6F8(v106, v191);
      v178(v107, 0, 1, v192);
      sub_29D73B0B8(v107);
      sub_29D8A162C(v107);
      v108 = *MEMORY[0x29EDBA6F8];
      v109 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v110 = v105;
      v111 = sub_29D939D28();

      v112 = [v109 initWithFeatureIdentifier:v108 healthStore:v110 currentCountryCode:v111];

      v113 = v189;
      v114 = v183;
      sub_29D69C6F8(v189, v183);
      v115 = objc_allocWithZone(type metadata accessor for HeartPromotionAvailability());
      v116 = v194;
      v117 = sub_29D8A17AC(v110, v194, v112, v114, v115);
      sub_29D7CA238(v113);
      v192 = v110;

      v118 = v198;
      v119 = v195;
      v199(v198, v195, v200);
      v120 = type metadata accessor for HeartPromotionGeneratorPipeline(0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();
      v123 = sub_29D857808(v118, v117);

      *(inited + 216) = v120;
      *(inited + 224) = sub_29D8A2F58(&qword_2A1A25708, type metadata accessor for HeartPromotionGeneratorPipeline);
      *(inited + 192) = v123;
      sub_29D89FBB0(v119, (inited + 232));
      sub_29D89FDA0(v119, (inited + 272));
      v124 = sub_29D89FF54(v119, v180, v181);

      *(inited + 336) = type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline();
      *(inited + 344) = sub_29D8A2F58(qword_2A1A24E68, type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline);
      *(inited + 312) = v124;
      v125 = v119;
      sub_29D8A031C(v119, (inited + 352));
      sub_29D8A04C0(v119, (inited + 392));
      sub_29D8A0664(v119, (inited + 432));
      sub_29D8A0808(v119, (inited + 472));
      v126 = v198;
      v127 = v119;
      v128 = v199;
      v129 = v200;
      v199(v198, v127, v200);
      v130 = type metadata accessor for AFibBurdenNotificationSettingsGeneratorPipeline();
      v131 = *(v130 + 48);
      v132 = *(v130 + 52);
      swift_allocObject();
      v133 = sub_29D7DBCDC(v126);
      *(inited + 536) = v130;
      *(inited + 544) = sub_29D8A2F58(&unk_2A1A22FD0, type metadata accessor for AFibBurdenNotificationSettingsGeneratorPipeline);
      *(inited + 512) = v133;
      v128(v126, v125, v129);
      v134 = type metadata accessor for AFibBurdenRescindedGeneratorPipeline();
      v135 = *(v134 + 48);
      v136 = *(v134 + 52);
      swift_allocObject();
      v137 = sub_29D8C2448(v126);
      *(inited + 576) = v134;
      *(inited + 584) = sub_29D8A2F58(&qword_2A1A238A0, type metadata accessor for AFibBurdenRescindedGeneratorPipeline);
      *(inited + 552) = v137;
      v138 = sub_29D850CA4(v125);
      *(inited + 616) = type metadata accessor for RelatedSampleTypesGeneratorPipeline();
      *(inited + 624) = sub_29D8A2F58(&qword_2A1A23970, type metadata accessor for RelatedSampleTypesGeneratorPipeline);
      *(inited + 592) = v138;
      v139 = MEMORY[0x29EDCA190];
      do
      {
        sub_29D8A20F8(inited + v97, &v208);
        v202[0] = v208;
        v202[1] = v209;
        v203 = v210;
        if (*(&v209 + 1))
        {
          sub_29D679D3C(v202, v204);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v207[0] = v139;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v139 = sub_29D6903A0(0, v139[2] + 1, 1, v139);
            v207[0] = v139;
          }

          v142 = v139[2];
          v141 = v139[3];
          if (v142 >= v141 >> 1)
          {
            v139 = sub_29D6903A0((v141 > 1), v142 + 1, 1, v139);
            v207[0] = v139;
          }

          v143 = v205;
          v144 = v206;
          v145 = sub_29D693DDC(v204, v205);
          v146 = *(*(v143 - 8) + 64);
          MEMORY[0x2A1C7C4A8](v145, v145);
          v148 = &v175 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v149 + 16))(v148);
          sub_29D693D44(v142, v148, v207, v143, v144);
          sub_29D69417C(v204);
        }

        else
        {
          sub_29D8A2188(v202);
        }

        v97 += 40;
      }

      while (v97 != 632);

      v150 = v198;
      v151 = v195;
      v199(v198, v195, v200);
      v152 = type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline();
      v153 = *(v152 + 48);
      v154 = *(v152 + 52);
      swift_allocObject();
      v155 = sub_29D8E8BAC(v150);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_29D6903A0(0, v139[2] + 1, 1, v139);
      }

      v156 = v184;
      v157 = v185;
      v159 = v139[2];
      v158 = v139[3];
      if (v159 >= v158 >> 1)
      {
        v139 = sub_29D6903A0((v158 > 1), v159 + 1, 1, v139);
      }

      *(&v209 + 1) = v152;
      v210 = sub_29D8A2F58(&qword_2A1A22C88, type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline);
      *&v208 = v155;
      v139[2] = v159 + 1;
      sub_29D679D3C(&v208, &v139[5 * v159 + 4]);
      v199(v150, v151, v200);
      v160 = *MEMORY[0x29EDBA6F0];
      *(&v209 + 1) = &type metadata for HypertensionNotificationsFeatureStatusFeedItemProvider;
      v210 = sub_29D76C1AC();
      *&v208 = sub_29D67BF28;
      *(&v208 + 1) = 0;
      v161 = v160;
      sub_29D934498();
      v163 = v139[2];
      v162 = v139[3];
      if (v163 >= v162 >> 1)
      {
        v139 = sub_29D6903A0((v162 > 1), v163 + 1, 1, v139);
      }

      v164 = v193;
      *(&v209 + 1) = v193;
      v210 = MEMORY[0x29EDC3C28];
      v165 = sub_29D693F78(&v208);
      v166 = v186;
      (*(v186 + 16))(v165, v156, v164);
      v139[2] = v163 + 1;
      sub_29D679D3C(&v208, &v139[5 * v163 + 4]);
      (*(v166 + 8))(v156, v164);
      v204[0] = v139;
      sub_29D934D28();
      v167 = sub_29D937878();
      v168 = sub_29D93A2A8();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        *&v202[0] = v170;
        *v169 = 136446210;
        *&v208 = v187;
        swift_getMetatypeMetadata();
        v171 = sub_29D939DA8();
        v173 = sub_29D6C2364(v171, v172, v202);

        *(v169 + 4) = v173;
        _os_log_impl(&dword_29D677000, v167, v168, "[%{public}s] Creating blood pressure onboarding pipeline", v169, 0xCu);
        sub_29D69417C(v170);
        MEMORY[0x29ED6BE30](v170, -1, -1);
        MEMORY[0x29ED6BE30](v169, -1, -1);
      }

      (*(v196 + 8))(v157, v197);
      v174 = sub_29D8A27FC(v151);
      sub_29D88C1F8(v174);

      return v204[0];
    }

    else
    {
      __break(1u);
    }
  }

  else if (v37)
  {
    v57 = v196;
    sub_29D934D28();
    v58 = sub_29D937878();
    v59 = sub_29D93A2A8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v204[0] = v61;
      *v60 = 136446210;
      *&v208 = v187;
      swift_getMetatypeMetadata();
      v62 = sub_29D939DA8();
      v64 = sub_29D6C2364(v62, v63, v204);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_29D677000, v58, v59, "[%{public}s] Creating ArticlesGeneratorPipeline for single profile", v60, 0xCu);
      sub_29D69417C(v61);
      MEMORY[0x29ED6BE30](v61, -1, -1);
      MEMORY[0x29ED6BE30](v60, -1, -1);
    }

    (*(v57 + 8))(v30, v197);
    sub_29D8A1488(0, &unk_2A1A24880, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_29D93DDB0;
    sub_29D8A0808(a1, (v65 + 32));

    return v65;
  }

  else
  {
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D89FBB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9341B8();
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D96B5F0);
  v11 = sub_29D933FB8();
  MEMORY[0x29ED6A240](v11);

  v12 = v22;
  v13 = v23;
  v14 = type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
  swift_allocObject();
  v15 = sub_29D907334(v12, v13);
  (*(v5 + 16))(v9, a1, v4);
  v16 = *MEMORY[0x29EDBA6D0];
  v24 = v14;
  v25 = sub_29D8A2F58(&qword_2A1A22A48, type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider);
  v22 = v15;
  v17 = sub_29D9344B8();
  v18 = MEMORY[0x29EDC3C28];
  a2[3] = v17;
  a2[4] = v18;
  sub_29D693F78(a2);
  v19 = v16;
  return sub_29D934498();
}

uint64_t sub_29D89FDA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v19, v20);
  v10 = sub_29D934118();
  v11 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfigurationProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_29D69417C(v19);
  (*(v5 + 16))(v9, a1, v4);
  v13 = *MEMORY[0x29EDBA6D0];
  v20 = v11;
  v21 = sub_29D8A2F58(&qword_2A1A22878, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfigurationProvider);
  v19[0] = v12;
  v14 = sub_29D9344B8();
  v15 = MEMORY[0x29EDC3C28];
  a2[3] = v14;
  a2[4] = v15;
  sub_29D693F78(a2);
  v16 = v13;
  return sub_29D934498();
}

uint64_t *sub_29D89FF54(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = a2;
  v6 = *v3;
  v7 = sub_29D9341E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2BF40);
  sub_29D935E88();
  v14 = sub_29D937878();
  v15 = sub_29D93A2A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = a1;
    v18 = v17;
    v42 = v17;
    v43[0] = v6;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v42);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v43[0] = v41;
    v43[1] = a3;
    sub_29D8A2A00(0, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D935E88();
    v22 = sub_29D939DA8();
    v24 = sub_29D6C2364(v22, v23, &v42);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] Creating Electrocardiogram update pipeline for single country: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    v25 = v18;
    a1 = v40;
    MEMORY[0x29ED6BE30](v25, -1, -1);
    MEMORY[0x29ED6BE30](v16, -1, -1);
  }

  v26 = *MEMORY[0x29EDBA6D0];
  sub_29D934188();
  sub_29D693E2C(v43, v43[3]);
  v27 = sub_29D934118();
  if (a3)
  {
    a3 = sub_29D939D28();
  }

  v28 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v26 healthStore:v27 currentCountryCode:a3];

  sub_29D69417C(v43);
  v29 = *(v8 + 16);
  v29(v12, a1, v7);
  updated = type metadata accessor for ElectrocardiogramUpdateAvailability(0);
  v31 = *(updated + 48);
  v32 = *(updated + 52);
  swift_allocObject();
  v33 = v28;
  v34 = sub_29D818FD8(v12, v33);

  v29(v12, a1, v7);
  v35 = type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_29D6CD9B8(v12, v34);

  return v38;
}

uint64_t sub_29D8A031C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_29D93AA18();

  v22 = 0xD000000000000028;
  v23 = 0x800000029D96B5C0;
  v10 = sub_29D9341B8();
  v11 = sub_29D933FB8();
  v13 = v12;

  MEMORY[0x29ED6A240](v11, v13);

  v14 = v22;
  v15 = v23;
  (*(v5 + 16))(v9, a1, v4);
  v16 = *MEMORY[0x29EDBA700];
  v24 = &type metadata for LowHeartRateNotificationsHealthChecklistConfigurationProvider;
  v25 = sub_29D6D75FC();
  v22 = v14;
  v23 = v15;
  v17 = sub_29D9344B8();
  v18 = MEMORY[0x29EDC3C28];
  a2[3] = v17;
  a2[4] = v18;
  sub_29D693F78(a2);
  v19 = v16;
  return sub_29D934498();
}

uint64_t sub_29D8A04C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_29D93AA18();

  v22 = 0xD000000000000029;
  v23 = 0x800000029D96B590;
  v10 = sub_29D9341B8();
  v11 = sub_29D933FB8();
  v13 = v12;

  MEMORY[0x29ED6A240](v11, v13);

  v14 = v22;
  v15 = v23;
  (*(v5 + 16))(v9, a1, v4);
  v16 = *MEMORY[0x29EDBA6E8];
  v24 = &type metadata for HighHeartRateNotificationsHealthChecklistConfigurationProvider;
  v25 = sub_29D7F2E74();
  v22 = v14;
  v23 = v15;
  v17 = sub_29D9344B8();
  v18 = MEMORY[0x29EDC3C28];
  a2[3] = v17;
  a2[4] = v18;
  sub_29D693F78(a2);
  v19 = v16;
  return sub_29D934498();
}

uint64_t sub_29D8A0664@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_29D93AA18();

  v22 = 0xD00000000000002BLL;
  v23 = 0x800000029D96B560;
  v10 = sub_29D9341B8();
  v11 = sub_29D933FB8();
  v13 = v12;

  MEMORY[0x29ED6A240](v11, v13);

  v14 = v22;
  v15 = v23;
  (*(v5 + 16))(v9, a1, v4);
  v16 = *MEMORY[0x29EDBA6F8];
  v24 = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  v25 = sub_29D77C744();
  v22 = v14;
  v23 = v15;
  v17 = sub_29D9344B8();
  v18 = MEMORY[0x29EDC3C28];
  a2[3] = v17;
  a2[4] = v18;
  sub_29D693F78(a2);
  v19 = v16;
  return sub_29D934498();
}

void sub_29D8A0808(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = sub_29D9341E8();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v39, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v37 - v11;
  v13 = objc_opt_self();
  v14 = [v13 sharedBehavior];
  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 features];

  if (!v16)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = [v16 chutney];

  if (v17)
  {
    v18 = sub_29D8A2210();
  }

  else
  {
    v18 = sub_29D73FB40(MEMORY[0x29EDCA190]);
  }

  v19 = v18;
  v20 = [v13 sharedBehavior];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 features];

  if (!v22)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v23 = [v22 hermit];

  v38 = a2;
  if (v23)
  {
    v24 = sub_29D8A23CC();
  }

  else
  {
    v24 = sub_29D73FB40(MEMORY[0x29EDCA190]);
  }

  v25 = v24;
  v37 = v4;
  v26 = *(v4 + 16);
  v27 = v39;
  v26(v12, a1, v39);
  sub_29D934188();
  sub_29D693E2C(v40, v40[3]);
  v28 = sub_29D934118();
  v29 = sub_29D8A2578(v28);

  sub_29D69417C(v40);
  v30 = type metadata accessor for HeartArticlesGeneratorPipeline();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  *(v33 + qword_2A1A243F8) = v29;
  *(v33 + qword_2A1A243F0) = v19;
  *(v33 + qword_2A1A24400) = v25;
  v26(v9, v12, v27);
  swift_bridgeObjectRetain_n();
  sub_29D935E88();
  sub_29D935E88();
  v34 = sub_29D9376F8();
  v35 = sub_29D71C6CC(v12, v29, v19, v25);

  if (v35)
  {
    v40[0] = v35;
    sub_29D6C320C();
    sub_29D8A2F58(&qword_2A1A24AE0, sub_29D6C320C);
    sub_29D938418();
    sub_29D937708();
  }

  (*(v37 + 8))(v12, v39);
  v36 = v38;
  v38[3] = v30;
  v36[4] = sub_29D8A2F58(&qword_2A1A243E8, type metadata accessor for HeartArticlesGeneratorPipeline);
  *v36 = v34;
}

uint64_t sub_29D8A0BF8@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void sub_29D8A0C54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v74 = sub_29D937898();
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v74, v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v72 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v72 - v17;
  swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  if (v19 && a1)
  {
    v20 = v19;
    swift_getObjectType();
    v21 = *(v20 + 16);
    swift_unknownObjectRetain();
    v22 = sub_29D933E98();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 profileIdentifier];
      v25 = [v24 type];

      if (v25 != 1)
      {
        v61 = *(v21 + 8);
        sub_29D9372E8();
        swift_unknownObjectRetain();
        v62 = sub_29D937878();
        v63 = sub_29D93A2A8();
        sub_29D936978();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v77 = v73;
          *v64 = 136446466;
          v65 = sub_29D93AF08();
          v67 = sub_29D6C2364(v65, v66, &v77);

          *(v64 + 4) = v67;
          *(v64 + 12) = 2080;
          v75 = a1;
          v76 = v20;
          sub_29D695734(0, &qword_2A17B71A8);
          swift_unknownObjectRetain();
          v68 = sub_29D939DA8();
          v70 = sub_29D6C2364(v68, v69, &v77);

          *(v64 + 14) = v70;
          _os_log_impl(&dword_29D677000, v62, v63, "[%{public}s] Heart plugin only supports primary profile, ignoring context: %s", v64, 0x16u);
          v71 = v73;
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v71, -1, -1);
          MEMORY[0x29ED6BE30](v64, -1, -1);
        }

        (*(v6 + 8))(v18, v74);
LABEL_18:
        sub_29D936978();

        return;
      }

      v77 = MEMORY[0x29EDCA190];
      v26 = [objc_opt_self() sharedBehavior];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 features];

        if (v28)
        {
          v29 = [v28 chutney];

          if (v29)
          {
            sub_29D8A2B54();
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_29D93F680;
            type metadata accessor for BloodPressureJournalSetUpJournalExecutor();
            v31 = swift_allocObject();
            v31[2] = a1;
            v31[3] = v20;
            v31[4] = v23;
            v32 = sub_29D8A2F58(&qword_2A1A24580, type metadata accessor for BloodPressureJournalSetUpJournalExecutor);
            *(inited + 32) = v31;
            *(inited + 40) = v32;
            type metadata accessor for BloodPressureJournalSummaryExecutor();
            v33 = swift_allocObject();
            v34 = *MEMORY[0x29EDC43E0];
            v75 = sub_29D939D68();
            v76 = v35;
            v36 = v23;
            swift_unknownObjectRetain();
            v37 = v36;
            sub_29D935E88();
            MEMORY[0x29ED6A240](0xD00000000000001DLL, 0x800000029D96B630);

            v38 = v76;
            v33[2] = v75;
            v33[3] = v38;
            v33[4] = a1;
            v33[5] = v20;
            v33[6] = v37;
            v39 = sub_29D8A2F58(&unk_2A1A23AB0, type metadata accessor for BloodPressureJournalSummaryExecutor);
            *(inited + 48) = v33;
            *(inited + 56) = v39;
            sub_29D88C348(inited);

            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v50 = *(v21 + 8);
      sub_29D9372E8();
      swift_unknownObjectRetain();
      v51 = sub_29D937878();
      v52 = sub_29D93A2A8();
      sub_29D936978();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v77 = v54;
        *v53 = 136446466;
        v55 = sub_29D93AF08();
        v57 = sub_29D6C2364(v55, v56, &v77);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        v75 = a1;
        v76 = v20;
        sub_29D695734(0, &qword_2A17B71A8);
        swift_unknownObjectRetain();
        v58 = sub_29D939DA8();
        v60 = sub_29D6C2364(v58, v59, &v77);

        *(v53 + 14) = v60;
        _os_log_impl(&dword_29D677000, v51, v52, "[%{public}s] Heart plugin cannot perform work without a health store, ignoring context: %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v54, -1, -1);
        MEMORY[0x29ED6BE30](v53, -1, -1);
      }

      (*(v6 + 8))(v15, v74);
      sub_29D936978();
    }
  }

  else
  {
    sub_29D9372E8();
    swift_unknownObjectRetain();
    v40 = sub_29D937878();
    v41 = sub_29D93A2A8();
    sub_29D936978();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v77 = v43;
      *v42 = 136446466;
      v44 = sub_29D93AF08();
      v46 = sub_29D6C2364(v44, v45, &v77);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v75 = a1;
      v76 = a2;
      sub_29D695734(0, &qword_2A17B71A0);
      swift_unknownObjectRetain();
      v47 = sub_29D939DA8();
      v49 = sub_29D6C2364(v47, v48, &v77);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_29D677000, v40, v41, "[%{public}s] Heart plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v43, -1, -1);
      MEMORY[0x29ED6BE30](v42, -1, -1);
    }

    (*(v6 + 8))(v11, v74);
  }
}

void sub_29D8A1488(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D8A1530@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a2 = v5;
  return result;
}

uint64_t sub_29D8A15C0(__int16 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_29D9383D8();
}

uint64_t sub_29D8A162C(uint64_t a1)
{
  sub_29D8A2AF0(0, &qword_2A1A21ED0, sub_29D69BECC, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8A16B8()
{
  if (!qword_2A1A21F68)
  {
    sub_29D8A1488(255, &unk_2A1A24778, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21F68);
    }
  }
}

uint64_t sub_29D8A173C(uint64_t a1)
{
  sub_29D69BECC();
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_29D7C80F8(a1, v4);
}

char *sub_29D8A17AC(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v97 = a4;
  v93 = a1;
  v94 = a2;
  sub_29D69BECC();
  v96 = v7;
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v89 = &v87 - v13;
  v92 = sub_29D934358();
  v91 = *(v92 - 8);
  v14 = *(v91 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v92, v15);
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v87 = &v87 - v19;
  v20 = MEMORY[0x29EDB8B00];
  sub_29D8A2A00(0, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8B00]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v21, v25);
  v27 = &v87 - v26;
  sub_29D8A2A00(0, &qword_2A1A222A8, &type metadata for HeartPromotionResult, v20);
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v28, v32);
  v34 = &v87 - v33;
  v103 = sub_29D6B8230();
  v104 = MEMORY[0x29EDC2EA8];
  v95 = v103;
  v102[0] = a3;
  v35 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__atrialFibrillationAvailabilityResult;
  LOWORD(v98) = 2;
  sub_29D938398();
  v36 = *(v30 + 32);
  v36(&a5[v35], v34, v29);
  v37 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__aFibBurdenAvailabilityResult;
  LODWORD(v98) = 131074;
  sub_29D938398();
  v38 = *(v23 + 32);
  v38(&a5[v37], v27, v22);
  v39 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__aFibFeaturesAvailabilityResult;
  LOWORD(v98) = 2;
  sub_29D938398();
  v36(&a5[v39], v34, v29);
  v40 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__hypertensionNotificationsAvailabilityResult;
  LODWORD(v98) = 131074;
  sub_29D938398();
  v38(&a5[v40], v27, v22);
  v41 = &a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager];
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 4) = 0;
  v42 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__hypertensionNotificationsFeatureStatus;
  sub_29D887064();
  v44 = v43;
  v45 = *(v43 + 48);
  v46 = *(v43 + 52);
  swift_allocObject();
  *&a5[v42] = sub_29D934678();
  v47 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__irregularRhythmNotificationsFeatureStatus;
  v48 = *(v44 + 48);
  v49 = *(v44 + 52);
  swift_allocObject();
  *&a5[v47] = sub_29D934678();
  v50 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__aFibBurdenFeatureStatus;
  v51 = *(v44 + 48);
  v52 = *(v44 + 52);
  swift_allocObject();
  *&a5[v50] = sub_29D934678();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v53 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v53 = MEMORY[0x29EDCA1A0];
  }

  *&a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_subscriptions] = v53;
  v55 = v93;
  v54 = v94;
  *&a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_healthStore] = v93;
  *&a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability] = v54;
  sub_29D6945AC(v102, &a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager]);
  v56 = v55;
  v57 = v54;
  v58 = [v56 profileIdentifier];
  v59 = [v58 type];

  if (v59 == 1)
  {
    v60 = *MEMORY[0x29EDBA6B0];
    v61 = v89;
    sub_29D69C6F8(v97, v89);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D7CA238(v61);
      v62 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v60 healthStore:v56];
    }

    else
    {
      v65 = v91;
      v66 = v87;
      v67 = v92;
      (*(v91 + 32))(v87, v61, v92);
      sub_29D934348();
      v68 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v69 = sub_29D939D28();

      v62 = [v68 initWithFeatureIdentifier:v60 healthStore:v56 currentCountryCode:v69];

      (*(v65 + 8))(v66, v67);
    }

    v64 = MEMORY[0x29EDC2EA8];
    v63 = v95;
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  v70 = &a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager];
  *v70 = v62;
  *(v70 + 1) = 0;
  *(v70 + 2) = 0;
  *(v70 + 3) = v63;
  *(v70 + 4) = v64;
  v71 = type metadata accessor for HeartPromotionAvailability();
  v101.receiver = a5;
  v101.super_class = v71;
  v72 = objc_msgSendSuper2(&v101, sel_init);
  v73 = [v56 profileIdentifier];
  v74 = [v73 type];

  if (v74 == 1)
  {
    v75 = *MEMORY[0x29EDBA6F0];
    v76 = v90;
    sub_29D69C6F8(v97, v90);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D7CA238(v76);
      v77 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v75 healthStore:v56];
      *(&v99 + 1) = v95;
      v100 = MEMORY[0x29EDC2EA8];
      *&v98 = v77;
    }

    else
    {
      v78 = v91;
      v79 = v88;
      (*(v91 + 32))(v88, v76, v92);
      sub_29D934348();
      v80 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v81 = sub_29D939D28();

      v82 = [v80 initWithFeatureIdentifier:v75 healthStore:v56 currentCountryCode:v81];

      *(&v99 + 1) = v95;
      v100 = MEMORY[0x29EDC2EA8];
      *&v98 = v82;
      (*(v78 + 8))(v79, v92);
    }
  }

  else
  {
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
  }

  v83 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D772BC0(&v98, &v72[v83]);
  swift_endAccess();
  [*&v72[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability] addHeartRhythmAvailabilityObserver_];
  sub_29D8828C8();
  sub_29D883338();
  sub_29D882DD0();
  LOWORD(v83) = sub_29D884360(0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOWORD(v98) = v83;
  v84 = v72;
  sub_29D9383D8();
  sub_29D883BDC();
  sub_29D883868();
  v85 = sub_29D884360(2);
  swift_getKeyPath();
  swift_getKeyPath();
  LOWORD(v98) = v85;
  sub_29D9383D8();
  sub_29D7CA238(v97);
  sub_29D69417C(v102);
  return v84;
}

uint64_t sub_29D8A20F8(uint64_t a1, uint64_t a2)
{
  sub_29D8A1488(0, &unk_2A1A24778, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8A2188(uint64_t a1)
{
  sub_29D8A1488(0, &unk_2A1A24778, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_29D8A2210()
{
  v0 = MEMORY[0x29EDC9E90];
  sub_29D8A2AF0(0, &qword_2A1A21F00, sub_29D8A2A50, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D943EA0;
  *(inited + 32) = 0;
  sub_29D8A2AF0(0, &qword_2A1A24878, sub_29D694718, v0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D93DDB0;
  v3 = sub_29D9049B4(0);
  *(v2 + 56) = &type metadata for BloodPressureJournalArticleDataProvider;
  v4 = sub_29D89A894();
  *(v2 + 64) = v4;
  v5 = sub_29D89A8E8();
  *(v2 + 72) = v5;
  *(v2 + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  v7 = sub_29D9049B4(1);
  *(v6 + 56) = &type metadata for BloodPressureJournalArticleDataProvider;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  *(v6 + 32) = v7;
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93DDB0;
  v9 = sub_29D9049B4(2);
  *(v8 + 56) = &type metadata for BloodPressureJournalArticleDataProvider;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 32) = v9;
  *(inited + 72) = v8;
  v10 = sub_29D73FB40(inited);
  swift_setDeallocating();
  sub_29D8A2A50();
  swift_arrayDestroy();
  return v10;
}

void *sub_29D8A23CC()
{
  v0 = MEMORY[0x29EDC9E90];
  sub_29D8A2AF0(0, &qword_2A1A21F00, sub_29D8A2A50, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D943EA0;
  *(inited + 32) = 0;
  sub_29D8A2AF0(0, &qword_2A1A24878, sub_29D694718, v0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D93DDB0;
  *(v2 + 56) = &type metadata for HypertensionNotificationsArticleDataProvider;
  v3 = sub_29D89A9E4();
  *(v2 + 64) = v3;
  v4 = sub_29D89AA38();
  *(v2 + 72) = v4;
  *(v2 + 32) = 0;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 56) = &type metadata for HypertensionNotificationsArticleDataProvider;
  *(v5 + 64) = v3;
  *(v5 + 72) = v4;
  *(v5 + 32) = 1;
  *(inited + 56) = v5;
  *(inited + 64) = 2;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  *(v6 + 56) = &type metadata for HypertensionNotificationsFIGOArticleDataProvider;
  *(v6 + 64) = sub_29D89A93C();
  *(v6 + 72) = sub_29D89A990();
  *(inited + 72) = v6;
  v7 = sub_29D73FB40(inited);
  swift_setDeallocating();
  sub_29D8A2A50();
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_29D8A2578(void *a1)
{
  sub_29D8A2AF0(0, &qword_2A1A24878, sub_29D694718, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D944EA0;
  *(v2 + 56) = &type metadata for HeartRateArticleDataProvider;
  *(v2 + 64) = sub_29D7ED1DC();
  *(v2 + 72) = sub_29D7ED230();
  *(v2 + 104) = &type metadata for CardioFitnessOverviewArticleDataProvider;
  *(v2 + 112) = sub_29D89AC24();
  *(v2 + 120) = sub_29D89AC78();
  *(v2 + 80) = a1;
  v3 = *MEMORY[0x29EDBA6C0];
  v4 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v5 = a1;
  v6 = [v4 initWithFeatureIdentifier:v3 healthStore:v5 currentCountryCode:0];
  v15 = sub_29D6B8230();
  v16 = MEMORY[0x29EDC2EA8];
  *&v14 = v6;
  v7 = type metadata accessor for LowCardioFitnessArticleDataProvider();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
  sub_29D8A2AF0(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink) = 2;
  *(v10 + 16) = v5;
  sub_29D679D3C(&v14, v10 + 24);
  *(v2 + 152) = v7;
  *(v2 + 160) = sub_29D8A2F58(qword_2A1A25918, type metadata accessor for LowCardioFitnessArticleDataProvider);
  *(v2 + 168) = sub_29D8A2F58(&qword_2A1A25910, type metadata accessor for LowCardioFitnessArticleDataProvider);
  *(v2 + 128) = v10;
  *(v2 + 200) = &type metadata for AFibBurdenArticleProviderLearnAboutAFib;
  *(v2 + 208) = sub_29D89AB34();
  *(v2 + 216) = sub_29D89AB88();
  *(v2 + 248) = &type metadata for AFibBurdenArticleProviderLearnAboutAFibBurden;
  *(v2 + 256) = sub_29D89AA8C();
  *(v2 + 264) = sub_29D89AAE0();
  return v2;
}

uint64_t sub_29D8A27FC(uint64_t a1)
{
  v2 = sub_29D9341E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8A1488(0, &unk_2A1A24880, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93F680;
  v9 = *(v3 + 16);
  v9(v7, a1, v2);
  v10 = *MEMORY[0x29EDBA6B8];
  v19[4] = &type metadata for BloodPressureJournalPromotionTileFeedItemProvider;
  v19[5] = sub_29D6B3DF8();
  v11 = sub_29D9344B8();
  v12 = MEMORY[0x29EDC3C28];
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  sub_29D693F78((v8 + 32));
  v13 = v10;
  sub_29D934498();
  v9(v7, a1, v2);
  v14 = type metadata accessor for BloodPressureJournalNotificationSettingsGeneratorPipeline(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_29D6BEEAC(v7);
  *(v8 + 96) = v14;
  *(v8 + 104) = sub_29D8A2F58(&qword_2A1A22B58, type metadata accessor for BloodPressureJournalNotificationSettingsGeneratorPipeline);
  *(v8 + 72) = v17;
  return v8;
}

void sub_29D8A2A00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D8A2A50()
{
  if (!qword_2A1A21FF8)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    sub_29D8A2AF0(255, &qword_2A1A22288, sub_29D694718, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A21FF8);
    }
  }
}

void sub_29D8A2AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D8A2B54()
{
  if (!qword_2A1A21F28)
  {
    sub_29D695734(255, &unk_2A1A246A0);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21F28);
    }
  }
}

void sub_29D8A2BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7 && a1)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_29D933E98();
    if (!v9)
    {
      sub_29D936978();
      return;
    }

    v10 = v9;
    v11 = [objc_opt_self() sharedBehavior];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 features];

      if (v13)
      {
        v14 = [v13 chutney];

        if (v14)
        {
          sub_29D8A1488(0, &qword_2A1A21F48, &qword_2A1A246D0, MEMORY[0x29EDC34A8], MEMORY[0x29EDC9E90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_29D943EA0;
          v16 = type metadata accessor for BloodPressureJournalInputSignal();
          v17 = objc_allocWithZone(MEMORY[0x29EDC51F8]);
          swift_unknownObjectRetain();
          v18 = v10;
          v19 = [v17 initWithHealthStore_];
          v20 = [objc_allocWithZone(MEMORY[0x29EDBAA48]) initWithHealthStore_];

          v21 = *(v7 + 8);
          swift_unknownObjectRetain();
          v22 = sub_29D8401E4(a1, a3, a4, v19, v20, sub_29D83C9E0, 0, v16, ObjectType, v21);
          *(inited + 56) = v16;
          *(inited + 64) = sub_29D8A2F58(&qword_2A1A23DB0, type metadata accessor for BloodPressureJournalInputSignal);
          *(inited + 32) = v22;
          v23 = sub_29D934468();
          swift_unknownObjectRetain();
          v24 = v18;
          swift_unknownObjectRetain();
          v25 = sub_29D934458();
          *(inited + 96) = v23;
          *(inited + 104) = sub_29D8A2F58(&qword_2A1A24738, MEMORY[0x29EDC3BF0]);
          *(inited + 72) = v25;
          v26 = sub_29D9343B8();
          swift_unknownObjectRetain();
          v27 = v24;
          swift_unknownObjectRetain();
          v28 = sub_29D9343A8();
          *(inited + 136) = v26;
          *(inited + 144) = sub_29D8A2F58(&qword_2A1A24748, MEMORY[0x29EDC3AC0]);
          *(inited + 112) = v28;
          sub_29D88C454(inited);
          sub_29D936978();
        }

        else
        {
          sub_29D936978();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_29D8A2F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8A3054(void *a1)
{
  v2 = v1;
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = sub_29D73F010(MEMORY[0x29EDCA190]);
    if (*(v2 + 16))
    {
      if (*(v2 + 16) == 1)
      {
        v7 = 0xEA00000000006465;
        v8 = 0x7765695620464450;
      }

      else
      {
        v7 = 0x800000029D95EF70;
        v8 = 0xD00000000000001ALL;
      }
    }

    else
    {
      v8 = 0xD000000000000010;
      v7 = 0x800000029D95EF90;
    }

    v9 = MEMORY[0x29EDC99B0];
    v34 = MEMORY[0x29EDC99B0];
    *&v33 = v8;
    *(&v33 + 1) = v7;
    sub_29D6940E0(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v32, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v35 = v6;
    v11 = *MEMORY[0x29EDBA380];
    v12 = sub_29D939D68();
    v14 = v13;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    v16 = sub_29D69C6C0(v15, qword_2A1A2BF28);
    type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
    v17 = sub_29D93A308();
    v34 = v9;
    *&v33 = v17;
    *(&v33 + 1) = v18;
    sub_29D6940E0(&v33, v32);
    v19 = v35;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v32, v12, v14, v20);

    v35 = v19;
    v21 = *MEMORY[0x29EDBA378];
    v22 = sub_29D939D68();
    v24 = v23;
    v25 = [a1 environmentDataSource];
    v26 = sub_29D8A3B60(v5, v25);

    v34 = sub_29D6B73CC();
    *&v33 = v26;
    sub_29D6940E0(&v33, v32);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v32, v22, v24, v27);

    v35 = v19;
    v28 = sub_29D7DB630(v5, *MEMORY[0x29EDBA6B0], 1, v16);
    if (v29)
    {
      v34 = v9;
      *&v33 = v28;
      *(&v33 + 1) = v29;
      sub_29D6940E0(&v33, v32);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v32, 0x5665727574616566, 0xEE006E6F69737265, v30);
      sub_29D936978();
      return v19;
    }

    else
    {
      sub_29D8C42F8(0x5665727574616566, 0xEE006E6F69737265, &v33);
      sub_29D936978();
      sub_29D6FE6B0(&v33);
      return v35;
    }
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

unint64_t sub_29D8A34CC()
{
  result = qword_2A17B71B0;
  if (!qword_2A17B71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B71B0);
  }

  return result;
}

id sub_29D8A3520(void *a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];

  return sub_29D8A3630(a1, a2, a3, type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent, &qword_2A17B71C0, type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent);
}

id sub_29D8A35A8(void *a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];

  return sub_29D8A3630(a1, a2, a3, type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent, &qword_2A17B71B8, type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent);
}

id sub_29D8A3630(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v53[1] = *MEMORY[0x29EDCA608];
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 currentDate];
  sub_29D933998();

  v18 = sub_29D933958();
  (*(v12 + 8))(v16, v11);
  v53[0] = 0;
  v19 = [a1 ageWithCurrentDate:v18 error:v53];

  v20 = v53[0];
  if (v19)
  {
    v21 = *MEMORY[0x29EDBAFA8];
    v22 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    v23 = v19;
    v24 = v20;
    v25 = [v22 initWithInteger_];
    v26 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    if (v26)
    {

      v27 = *MEMORY[0x29EDCA608];
      return v26;
    }

    v44 = sub_29D937878();
    v45 = sub_29D93A288();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53[0] = v47;
      *v46 = 136446210;
      v52 = a4(0);
      sub_29D8A3FE0(0, a5, 255, a6);
      v48 = sub_29D939DA8();
      v50 = sub_29D6C2364(v48, v49, v53);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Error when bucketing retrieved age", v46, 0xCu);
      sub_29D69417C(v47);
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }

    v43 = *MEMORY[0x29EDBA360];
  }

  else
  {
    v29 = v53[0];
    v30 = sub_29D933598();

    swift_willThrow();
    v31 = v30;
    v32 = sub_29D937878();
    v33 = sub_29D93A288();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v34 = 136446466;
      v52 = a4(0);
      sub_29D8A3FE0(0, a5, 255, a6);
      v36 = sub_29D939DA8();
      v38 = sub_29D6C2364(v36, v37, v53);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v52 = v30;
      v39 = v30;
      sub_29D6A0CD0();
      v40 = sub_29D939DA8();
      v42 = sub_29D6C2364(v40, v41, v53);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s] Error when retrieving bucketed age: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    v43 = *MEMORY[0x29EDBA360];
  }

  v51 = *MEMORY[0x29EDCA608];
  return v43;
}

id sub_29D8A3AD8(void *a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];

  return sub_29D8A3630(a1, a2, a3, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent, &qword_2A17B5390, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent);
}

id sub_29D8A3B60(void *a1, void *a2)
{
  v46[1] = *MEMORY[0x29EDCA608];
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 currentDate];
  sub_29D933998();

  v11 = sub_29D933958();
  (*(v5 + 8))(v9, v4);
  v46[0] = 0;
  v12 = [a1 ageWithCurrentDate:v11 error:v46];

  v13 = v46[0];
  if (v12)
  {
    v14 = *MEMORY[0x29EDBAFA8];
    v15 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    v16 = v12;
    v17 = v13;
    v18 = [v15 initWithInteger_];
    v19 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    if (!v19)
    {
      v20 = sub_29D937878();
      v21 = sub_29D93A288();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46[0] = v23;
        *v22 = 136446210;
        v45 = type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
        sub_29D8A3FE0(0, &qword_2A17B5388, v24, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent);
        v25 = sub_29D939DA8();
        v27 = sub_29D6C2364(v25, v26, v46);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s] Error when bucketing retrieved age", v22, 0xCu);
        sub_29D69417C(v23);
        MEMORY[0x29ED6BE30](v23, -1, -1);
        MEMORY[0x29ED6BE30](v22, -1, -1);
      }

      v19 = *MEMORY[0x29EDBA360];
    }
  }

  else
  {
    v28 = v46[0];
    v29 = sub_29D933598();

    swift_willThrow();
    v30 = v29;
    v31 = sub_29D937878();
    v32 = sub_29D93A288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 136446466;
      v45 = type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
      sub_29D8A3FE0(0, &qword_2A17B5388, v35, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent);
      v36 = sub_29D939DA8();
      v38 = sub_29D6C2364(v36, v37, v46);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v45 = v29;
      v39 = v29;
      sub_29D6A0CD0();
      v40 = sub_29D939DA8();
      v42 = sub_29D6C2364(v40, v41, v46);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s] Error when retrieving bucketed age: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    v19 = *MEMORY[0x29EDBA360];
  }

  v43 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t sub_29D8A3FE0(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingIntroViewController()
{
  result = qword_2A17B71D8;
  if (!qword_2A17B71D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8A40D0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for BloodPressureJournalOnboardingIntroViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  sub_29D88BBC8(&unk_2A243F420);
  v2 = sub_29D939F18();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v4 = sub_29D939D28();

  v5 = [v1 scrollView];
  sub_29D88BBC8(&unk_2A243F460);
  v6 = sub_29D939F18();
  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v8 = sub_29D939D28();

  [v5 setAccessibilityIdentifier_];

  v9 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243F4A0);
  v10 = sub_29D939F18();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v12 = sub_29D939D28();

  [v9 setTitleAccessibilityIdentifier_];

  v13 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243F4E0);
  v14 = sub_29D939F18();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v16 = sub_29D939D28();

  [v13 setDetailTextAccessibilityIdentifier_];

  v17 = [v1 navigationItem];
  v18 = [v17 rightBarButtonItem];

  if (!v18)
  {
    return;
  }

  sub_29D88BBC8(&unk_2A243F520);
  v19 = sub_29D939F18();
  v20 = HKUIJoinStringsForAutomationIdentifier();

  if (!v20)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v21 = sub_29D939D28();

  [v18 setAccessibilityIdentifier_];
}

void sub_29D8A453C(void *a1)
{
  v1 = a1;
  sub_29D8A40D0();
}

uint64_t sub_29D8A4584()
{
  v1 = v0;
  v2 = *&v0[qword_2A17B71D0];
  v3 = *(v2 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  LOBYTE(v2) = *(v2 + 40);
  v5 = v3;
  sub_29D8B530C(1, 0, v2, 0, 2);

  v7 = *&v0[qword_2A17B71C8];
  if (v7)
  {
    v8 = *&v1[qword_2A17B71C8];
    swift_unknownObjectRetain();
    sub_29D8A49E4(v1, v7, 0, &off_2A244BCA0);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8A4654(void *a1)
{
  v1 = a1;
  sub_29D8A4584();
}

uint64_t sub_29D8A46CC()
{
  v1 = *(v0 + qword_2A17B71C8);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B71D0);
}

id sub_29D8A470C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingIntroViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8A4744(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B71C8);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B71D0);
}

uint64_t sub_29D8A4798(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B71C8);
  v4 = *(v2 + qword_2A17B71C8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8A47B4(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = *&a2[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_model];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = 1;
  *(v6 + 32) = a1;
  *(v6 + 40) = &off_2A2448840;
  *(v6 + 48) = ObjectType;
  v14 = a1;
  v15 = &off_2A2448840;
  sub_29D695734(0, &qword_2A17B71E8);
  sub_29D695734(0, &qword_2A17B71F0);
  v7 = a1;
  v8 = a2;
  if (swift_dynamicCast())
  {
    sub_29D679D3C(v12, v16);
    *(v5 + 16) = *(*sub_29D693E2C(v16, v17) + qword_2A17B6448);
    if (*(*sub_29D693E2C(v16, v17) + qword_2A17B6448))
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_29D8A4C20;
      *(v9 + 24) = v6;
      v10 = *(v5 + 24);

      sub_29D76CA44(sub_29D8A4D00, v9);
    }

    else
    {
      sub_29D8AEC18(0, v8, 1, v7, &off_2A2448840, ObjectType);
    }

    return sub_29D69417C(v16);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_29D8A4C38(v12);
    sub_29D8AEC18(1, v8, 1, v7, &off_2A2448840, ObjectType);
  }
}

void sub_29D8A49E4(void *a1, void *a2, char a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = a2;
  sub_29D8AEC18(0, v10, a3, v9, a4, ObjectType);
}

uint64_t sub_29D8A4A78(uint64_t a1)
{
  v2 = (v1 + qword_2A17B71C8);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_2A17B71D0) = a1;
  objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController());
  v3 = sub_29D935F88();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  sub_29D935F98();
  sub_29D936D88();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D74059C();

  return sub_29D936A98();
}

uint64_t sub_29D8A4C38(uint64_t a1)
{
  sub_29D8A4C94();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8A4C94()
{
  if (!qword_2A17B71F8)
  {
    sub_29D695734(255, &qword_2A17B71F0);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B71F8);
    }
  }
}

uint64_t sub_29D8A4D08(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA898];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    if (a1 == 4)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA930];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
    v3 = MEMORY[0x29EDBA4A8];
  }

  else
  {
    if (!a1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA870];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    if (a1 == 1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA848];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
    v3 = MEMORY[0x29EDBA4D0];
  }

  return MEMORY[0x29ED6A6B0](*v3);
}

id sub_29D8A4E50(uint64_t a1, unsigned __int8 a2)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (result)
  {
    v4 = result;
    v5 = sub_29D8A4D08(a2);
    v6 = [v4 displayTypeForObjectType_];

    if (!v6)
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v7 = sub_29D937898();
      sub_29D69C6C0(v7, qword_2A1A2BF28);
      v8 = sub_29D937878();
      v9 = sub_29D93A288();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136446466;
        sub_29D8A5454();
        v12 = sub_29D939DA8();
        v14 = sub_29D6C2364(v12, v13, &v22);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2080;
        v15 = sub_29D8A4D08(a2);
        v16 = [v15 description];

        v17 = sub_29D939D68();
        v19 = v18;

        v20 = sub_29D6C2364(v17, v19, &v22);

        *(v10 + 14) = v20;
        _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s] DisplayType not found for quantityType %s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v11, -1, -1);
        MEMORY[0x29ED6BE30](v10, -1, -1);
      }

      sub_29D8A53C0();
      swift_allocError();
      *v21 = 0;
      swift_willThrow();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29D8A50D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2 || a3 == 5)
  {
    return [objc_opt_self() secondUnit];
  }

  v6 = [objc_opt_self() sharedInstanceForHealthStore_];
  v7 = [v6 createHKUnitPreferenceController];

  v8 = [v7 unitForDisplayType_];
  if (v8)
  {
    a1 = v8;
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2BF28);
    v10 = sub_29D937878();
    v11 = sub_29D93A288();
    if (os_log_type_enabled(v10, v11))
    {
      a1 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *a1 = 136446466;
      v23 = v12;
      sub_29D8A5454();
      v13 = sub_29D939DA8();
      v15 = sub_29D6C2364(v13, v14, &v23);

      *(a1 + 4) = v15;
      *(a1 + 12) = 2080;
      v16 = sub_29D8A4D08(a3);
      v17 = [v16 description];

      v18 = sub_29D939D68();
      v20 = v19;

      v21 = sub_29D6C2364(v18, v20, &v23);

      *(a1 + 14) = v21;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] Unit not found for sampleType %s", a1, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](a1, -1, -1);
    }

    sub_29D8A53C0();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_29D8A53C0()
{
  result = qword_2A17B7200;
  if (!qword_2A17B7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7200);
  }

  return result;
}

unint64_t sub_29D8A5454()
{
  result = qword_2A17B7208;
  if (!qword_2A17B7208)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7208);
  }

  return result;
}

unint64_t sub_29D8A54C0()
{
  result = qword_2A17B7210;
  if (!qword_2A17B7210)
  {
    sub_29D8A5518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7210);
  }

  return result;
}

void sub_29D8A5518()
{
  if (!qword_2A17B7218)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7218);
    }
  }
}

unint64_t sub_29D8A556C()
{
  result = qword_2A17B7220;
  if (!qword_2A17B7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7220);
  }

  return result;
}

unint64_t sub_29D8A55C8()
{
  result = qword_2A17B7228;
  if (!qword_2A17B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7228);
  }

  return result;
}

uint64_t sub_29D8A561C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2A1C73D48](sub_29D8A563C, 0, 0);
}

uint64_t sub_29D8A563C()
{
  v1 = v0[5];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v0[4]];
  v0[6] = v2;
  sub_29D8A7C2C();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_29D8A5724;

  return sub_29D795B64(v2);
}

uint64_t sub_29D8A5724()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D8A59C4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = sub_29D8A58B0;
    v5 = v3[5];
    v6 = v3[4];

    return sub_29D796FD8(v6);
  }
}

uint64_t sub_29D8A58B0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_29D8A5C44;
  }

  else
  {
    v3 = sub_29D8A5BDC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8A59C4()
{
  v19 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A17D0DB8);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v18);
    *(v7 + 12) = 2080;
    v0[2] = v6;
    v9 = v6;
    sub_29D695734(0, &qword_2A1A24850);
    v10 = sub_29D939DA8();
    v12 = sub_29D6C2364(v10, v11, v18);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Error when onboarding feature: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[6];
  sub_29D8A6CDC();
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_29D8A5BDC()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_29D8A6CDC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_29D8A5C44()
{
  v19 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A17D0DB8);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v18);
    *(v7 + 12) = 2080;
    v0[3] = v6;
    v9 = v6;
    sub_29D695734(0, &qword_2A1A24850);
    v10 = sub_29D939DA8();
    v12 = sub_29D6C2364(v10, v11, v18);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Error when running test: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v13 = v0[10];
  v14 = v0[5];
  v15 = v0[6];
  sub_29D8A6CDC();
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_29D8A5E7C()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v0[38] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x29EDBACE8]) initWithHealthStore_];
  v0[39] = v2;
  v3 = sub_29D939D28();
  v0[40] = v3;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_29D8A6000;
  v4 = swift_continuation_init();
  sub_29D8A80CC();
  v0[25] = v5;
  v0[18] = MEMORY[0x29EDCA5F8];
  v0[19] = 1107296256;
  v0[20] = sub_29D8A6EF0;
  v0[21] = &unk_2A244BE60;
  v0[22] = v4;
  [v2 createProfileOfType:100 displayName:v3 completion:v0 + 18];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D8A6000()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_29D8A63A4;
  }

  else
  {
    v3 = sub_29D8A6110;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8A6110()
{
  v20 = v0;
  v1 = v0[40];
  v2 = v0[34];
  v0[42] = v2;
  v3 = v2;

  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  v0[43] = sub_29D69C6C0(v4, qword_2A17D0DB8);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, &v19);
    *(v7 + 12) = 2080;
    v9 = v3;
    v10 = [v9 description];
    v11 = sub_29D939D68();
    v13 = v12;

    v14 = sub_29D6C2364(v11, v13, &v19);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_29D677000, v5, v6, "[%s] Created profile with identifier %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v0[44] = v15;
  [v15 setProfileIdentifier_];

  [v15 resume];
  sub_29D939FF8();
  v0[45] = sub_29D939FE8();
  v17 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D8A65C4, v17, v16);
}

uint64_t sub_29D8A63A4()
{
  v21 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  swift_willThrow();

  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 328);
  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A17D0DB8);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 328);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v20);
    *(v9 + 12) = 2080;
    *(v0 + 280) = v8;
    v11 = v8;
    sub_29D695734(0, &qword_2A1A24850);
    v12 = sub_29D939DA8();
    v14 = sub_29D6C2364(v12, v13, v20);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_29D677000, v6, v7, "[%s] Error when creating temporary profile: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v15 = *(v0 + 328);
  swift_willThrow();
  v16 = *(v0 + 328);
  v17 = *(v0 + 312);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29D8A65C4()
{
  v2 = v0[44];
  v1 = v0[45];

  v3 = [v2 viewControllerFactory];
  v4 = [v3 createHKUnitPreferenceController];

  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_29D8A66B8;
  v6 = v0[44];
  v7 = v0[37];

  return sub_29D8A561C(v6);
}

uint64_t sub_29D8A66B8()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_29D8A69F4;
  }

  else
  {
    v3 = sub_29D8A67CC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8A67CC()
{
  v1 = v0[42];
  v2 = v0[39];
  v0[10] = v0;
  v0[11] = sub_29D8A68E4;
  v3 = swift_continuation_init();
  sub_29D74D4C4();
  v0[33] = v4;
  v0[26] = MEMORY[0x29EDCA5F8];
  v0[27] = 1107296256;
  v0[28] = sub_29D8A6FF0;
  v0[29] = &unk_2A244BE88;
  v0[30] = v3;
  [v2 deleteProfile:v1 completion:v0 + 26];

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29D8A68E4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_29D8A6AF0;
  }

  else
  {
    v3 = sub_29D8A6A70;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8A69F4()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 376);
  v3 = *(v0 + 304);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D8A6A70()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D8A6AF0()
{
  v21 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  swift_willThrow();
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 384);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v20);
    *(v7 + 12) = 2080;
    *(v0 + 288) = v6;
    v9 = v6;
    sub_29D695734(0, &qword_2A1A24850);
    v10 = sub_29D939DA8();
    v12 = sub_29D6C2364(v10, v11, v20);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Error when deleting temporary profile: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v13 = *(v0 + 384);
  v14 = *(v0 + 352);
  v15 = *(v0 + 312);
  swift_willThrow();

  v16 = *(v0 + 384);
  v17 = *(v0 + 304);

  v18 = *(v0 + 8);

  return v18();
}

void sub_29D8A6CDC()
{
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A17D0DB8);

  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, &v11);
    *(v3 + 12) = 2080;
    v5 = *MEMORY[0x29EDBA6B0];
    v6 = sub_29D93A518();
    v8 = v7;

    v9 = sub_29D6C2364(v6, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_29D677000, v1, v2, "[%s] Tearing down overrides for feature with identifier %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  else
  {

    v5 = *MEMORY[0x29EDBA6B0];
  }

  v10 = [objc_allocWithZone(MEMORY[0x29EDBAB90]) initWithFeatureIdentifier_];
  [v10 resetAllRequirementSatisfactionOverrides];
}

void *sub_29D8A6EF0(uint64_t a1, void *a2, void *a3)
{
  sub_29D695734(0, &qword_2A17B72C8);
  result = sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D695734(0, &qword_2A1A24850);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_29D8A6FF0(uint64_t a1, int a2, void *a3)
{
  sub_29D695734(0, &qword_2A17B72C8);
  result = sub_29D693E2C((a1 + 32), *(a1 + 56));
  v7 = *result;
  if (a2)
  {
    v8 = *result;

    return swift_continuation_throwingResume();
  }

  else if (a3)
  {
    sub_29D695734(0, &qword_2A1A24850);
    swift_allocError();
    *v9 = a3;
    v10 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8A70D0()
{
  v0 = sub_29D937898();
  sub_29D6FD494(v0, qword_2A17D0DB8);
  sub_29D69C6C0(v0, qword_2A17D0DB8);
  return sub_29D937888();
}

uint64_t sub_29D8A7140(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_29D6C2E78(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D935078();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_29D935E88();
  sub_29D935088();
  v19 = sub_29D935068();
  v21 = v20;
  result = (*(v13 + 8))(v18, v12);
  if (!a3)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_29D935E88();
  v22 = sub_29D93ABF8();

  if (v22 <= 2)
  {
    if (a1)
    {
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      if (v22 > 1u)
      {

        v31 = v37;
      }

      else
      {
        v23 = type metadata accessor for AFibBurdenPDFExportPPTTestRunner();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        sub_29D935E88();
        sub_29D935E88();
        v26 = sub_29D7904B4(v19, v21, a1, a4);
        sub_29D8A7ECC(v37);
        *(v37 + 8) = *v36;
        *&v37[0] = v26;
        *(&v37[1] + 1) = v23;
        v38 = &off_2A2444DE8;
        sub_29D8A7F94(v37, &v34);
        if (v35)
        {
          sub_29D679D3C(&v34, v36);
          v27 = sub_29D93A028();
          (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
          sub_29D6945AC(v36, &v34);
          v28 = swift_allocObject();
          v28[2] = 0;
          v28[3] = 0;
          v28[4] = v19;
          v28[5] = v21;
          sub_29D679D3C(&v34, (v28 + 6));
          v28[11] = ObjectType;
          sub_29D6BEBA4(0, 0, v11, &unk_29D951E90, v28);

          sub_29D69417C(v36);
          sub_29D8A7ECC(v37);
          return 1;
        }

        sub_29D8A7ECC(v37);
        v31 = &v34;
      }

      sub_29D8A7ECC(v31);
      return 0;
    }

    goto LABEL_16;
  }

  if (a1)
  {
    v29 = sub_29D939D28();
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    sub_29D93AA18();

    *&v37[0] = 0xD000000000000011;
    *(&v37[0] + 1) = 0x800000029D96B860;
    MEMORY[0x29ED6A240](v19, v21);

    v30 = sub_29D939D28();

    [a1 failedTest:v29 withFailure:v30];

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_29D8A75E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2A1C73D48](sub_29D8A760C, 0, 0);
}

uint64_t sub_29D8A760C()
{
  v17 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_29D937898();
  *(v0 + 48) = sub_29D69C6C0(v2, qword_2A17D0DB8);
  sub_29D935E88();
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29D6C2364(v7, v6, &v16);
    _os_log_impl(&dword_29D677000, v3, v4, "[%s] Running test with name %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v13 = *sub_29D693E2C(*(v0 + 32), *(*(v0 + 32) + 24));
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = sub_29D8A7838;

  return sub_29D8A5E5C();
}

uint64_t sub_29D8A7838()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_29D8A7A8C;
  }

  else
  {
    v3 = sub_29D8A794C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8A794C()
{
  v12 = v0;
  v1 = v0[6];
  v2 = v0[3];
  sub_29D935E88();
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_29D6C2364(v6, v5, &v11);
    _os_log_impl(&dword_29D677000, v3, v4, "Successfully completed run of test with name %s", v7, 0xCu);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D8A7A8C()
{
  v18 = v0;
  v1 = v0[6];
  v2 = v0[3];
  sub_29D935E88();
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_29D6C2364(v8, v7, &v17);
    _os_log_impl(&dword_29D677000, v3, v4, "[%s] Failed run of test with name %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    v14 = v5;
  }

  else
  {
    v14 = v0[8];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_29D8A7C2C()
{
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A17D0DB8);

  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, &v19);
    *(v3 + 12) = 2080;
    v5 = *MEMORY[0x29EDBA6B0];
    v6 = sub_29D93A518();
    v8 = v7;

    v9 = sub_29D6C2364(v6, v8, &v19);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_29D677000, v1, v2, "[%s] Setting up overrides for feature with identifier %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  else
  {

    v5 = *MEMORY[0x29EDBA6B0];
  }

  v10 = [objc_allocWithZone(MEMORY[0x29EDBAB90]) initWithFeatureIdentifier_];
  v11 = HKAllFeatureAvailabilityRequirementIdentifiers();
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v12 = sub_29D939F38();

  v13 = *(v12 + 16);
  if (v13)
  {
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      v16 = v15;
      v17 = sub_29D93A6D8();
      [v10 overrideSatisfactionOfRequirementWithIdentifier:v16 isSatisfied:v17];

      --v13;
    }

    while (v13);
  }
}

uint64_t sub_29D8A7ECC(uint64_t a1)
{
  sub_29D8A7F28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8A7F28()
{
  if (!qword_2A17B7298)
  {
    sub_29D695734(255, &qword_2A17B72A0);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7298);
    }
  }
}

uint64_t sub_29D8A7F94(uint64_t a1, uint64_t a2)
{
  sub_29D8A7F28();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8A7FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D8A75E8(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

void sub_29D8A80CC()
{
  if (!qword_2A17B72A8)
  {
    sub_29D69567C(255, &unk_2A17B72B0, 0x29EDBACE0);
    sub_29D695734(255, &qword_2A1A24850);
    v0 = sub_29D93A038();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B72A8);
    }
  }
}

uint64_t sub_29D8A8360(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v63 = a3;
  v65 = a2;
  sub_29D8AA048();
  v57 = v9;
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v55 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_29D9341E8();
  v13 = *(v64 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v64, v15);
  sub_29D8AA0DC();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v16, v20);
  v58 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D8AA2A4();
  v23 = v22;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v68 = v6;
  v60 = v18;
  v61 = v27;
  v59 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (BYTE2(a1) && BYTE2(a1) != 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = sub_29D93AD78();
  }

  sub_29D8AA5D4(a4, &v69, sub_29D8AA390);
  if (v70)
  {
    v56 = v17;
    v54 = HIBYTE(a1);
    v57 = v23;
    sub_29D679D3C(&v69, v71);
    v28 = v72;
    v29 = v73;
    sub_29D693E2C(v71, v72);
    v55 = (*(v29 + 8))(v28, v29);
    *&v69 = v55;
    v30 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v31 = v64;
    (*(v13 + 16))(v30, v63, v64);
    v32 = (*(v13 + 80) + 37) & ~*(v13 + 80);
    v33 = (v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v62 & 1;
    v35 = v68;
    *(v34 + 24) = v68;
    *(v34 + 32) = v65 & 1;
    *(v34 + 33) = a1;
    *(v34 + 35) = BYTE2(a1);
    *(v34 + 36) = v54;
    (*(v13 + 32))(v34 + v32, v30, v31);
    v36 = (v34 + v33);
    v37 = v66;
    v38 = v67;
    *v36 = v66;
    v36[1] = v38;
    sub_29D7C3D48(v37, v38);
    sub_29D8AA1AC();
    sub_29D8AA728(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D8AA25C(&qword_2A1A22448, sub_29D8AA1AC);
    v39 = v58;
    sub_29D938468();

    *(swift_allocObject() + 16) = v35;
    sub_29D6D09E0(0);
    sub_29D8AA25C(&qword_2A1A22640, sub_29D8AA0DC);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0);
    v40 = v59;
    v41 = v56;
    sub_29D938488();

    (*(v60 + 8))(v39, v41);
    sub_29D8AA25C(&qword_2A1A22518, sub_29D8AA2A4);
    v42 = v57;
    v43 = sub_29D938418();
    (*(v61 + 8))(v40, v42);
    sub_29D69417C(v71);
  }

  else
  {
    sub_29D8AA63C(&v69, sub_29D8AA390);
    v44 = v64;
    (*(v13 + 16))(&v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v63, v64);
    v45 = (*(v13 + 80) + 30) & ~*(v13 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v68;
    *(v46 + 24) = v62 & 1;
    *(v46 + 25) = v65 & 1;
    *(v46 + 26) = a1;
    (*(v13 + 32))(v46 + v45, &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v44);
    v47 = (v46 + ((v14 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    v48 = v66;
    v49 = v67;
    *v47 = v66;
    v47[1] = v49;
    sub_29D7C3D48(v48, v49);
    sub_29D6D09E0(0);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0);
    v50 = v55;
    sub_29D938378();
    sub_29D8AA25C(&qword_2A1A222E8, sub_29D8AA048);
    v51 = v57;
    v43 = sub_29D938418();
    (*(v56 + 8))(v50, v51);
  }

  return v43;
}

uint64_t sub_29D8A8B58@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v16 = sub_29D9339F8();
  v17 = (*(*(v16 - 8) + 48))(a1, 1, v16) != 1;
  result = sub_29D8A8C24((a2 | v17) & 1, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_29D8A8C24(int a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v114 = a6;
  v113 = a5;
  v118 = a3;
  v120 = a1;
  sub_29D6C36D8(0);
  v121 = *(v10 - 8);
  v11 = *(v121 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v124 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v123 = &v100 - v16;
  v110 = sub_29D9342D8();
  v109 = *(v110 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v110, v18);
  v108 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AA570(0, &unk_2A1A25748, MEMORY[0x29EDC3918], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v115 = &v100 - v23;
  v117 = sub_29D9342A8();
  v116 = *(v117 - 8);
  v24 = *(v116 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v117, v25);
  v106 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v107 = &v100 - v29;
  v112 = sub_29D934A18();
  v111 = *(v112 - 8);
  v30 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v112, v31);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D9340F8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v34, v37);
  v122 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v100 - v41;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v43 = sub_29D937898();
  v44 = sub_29D69C6C0(v43, qword_2A1A2C008);
  v45 = sub_29D937878();
  v46 = sub_29D93A2A8();
  v47 = os_log_type_enabled(v45, v46);
  v125 = v44;
  v126 = v35;
  v119 = v42;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v127[0] = v105;
    *v48 = 136446722;
    v49 = sub_29D93AF08();
    v51 = v34;
    v52 = sub_29D6C2364(v49, v50, v127);

    *(v48 + 4) = v52;
    v34 = v51;
    *(v48 + 12) = 1026;
    *(v48 + 14) = v120 & 1;
    *(v48 + 18) = 1026;
    *(v48 + 20) = a2 & 1;
    _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s] hideInDiscover: %{BOOL,public}d shouldShowPromotion: %{BOOL,public}d", v48, 0x18u);
    v53 = v105;
    sub_29D69417C(v105);
    MEMORY[0x29ED6BE30](v53, -1, -1);
    MEMORY[0x29ED6BE30](v48, -1, -1);
  }

  v54 = MEMORY[0x29EDCA190];
  if (a2)
  {
    v103 = v34;
    sub_29D8AA570(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v55 = *(v126 + 72);
    v102 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v101 = swift_allocObject();
    v100 = xmmword_29D93DDB0;
    *(v101 + 16) = xmmword_29D93DDB0;
    (v7[17])();
    (v7[13])();
    (v7[16])();
    v104 = a4;
    v56 = sub_29D9341B8();
    v57 = v7[15];
    v105 = v7;
    v57();
    if (v54 >> 62 && sub_29D93A928())
    {
      sub_29D872AC4(MEMORY[0x29EDCA190]);
    }

    sub_29D934038();

    (*(v111 + 8))(v33, v112);
    if (BYTE2(v118))
    {
      v7 = v105;
      v34 = v103;
      if (BYTE2(v118) != 1)
      {
        v65 = v115;
        (*(v116 + 56))(v115, 1, 1, v117);
        sub_29D8AA69C(v65);
        v66 = v119;
LABEL_13:
        sub_29D8AA728(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = v100;
        *(inited + 32) = sub_29D934248();
        *(inited + 40) = v68;
        v69 = sub_29D9340C8();
        sub_29D7AF194(inited);
        swift_setDeallocating();
        sub_29D6AA360(inited + 32);
        v70 = v69(v127, 0);
        v71 = v7[14];
        v71(v70);
        sub_29D83511C();
        v72 = sub_29D93A0F8();

        v73 = sub_29D9340C8();
        sub_29D7A6488(v72);
        v74 = v73(v127, 0);
        v75 = (v71)(v74);
        sub_29D8E8608(v75);

        sub_29D9340B8();
        sub_29D934088();
        sub_29D934078();
        (*(v126 + 32))(v101 + v102, v66, v34);
        goto LABEL_14;
      }

      v58 = MEMORY[0x29EDC3900];
    }

    else
    {
      v58 = MEMORY[0x29EDC3908];
      v7 = v105;
      v34 = v103;
    }

    v66 = v119;
    v59 = v116;
    v60 = v115;
    v61 = v117;
    (*(v116 + 104))(v115, *v58, v117);
    (*(v59 + 56))(v60, 0, 1, v61);
    v62 = v107;
    (*(v59 + 32))(v107, v60, v61);
    (*(v59 + 16))(v106, v62, v61);
    v63 = v108;
    sub_29D9342E8();
    v64 = v110;
    sub_29D934068();
    (*(v109 + 8))(v63, v64);
    (*(v59 + 8))(v62, v61);
    goto LABEL_13;
  }

LABEL_14:
  sub_29D8AA570(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v76 = *(v121 + 72);
  v77 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v78 = swift_allocObject();
  sub_29D934188();
  sub_29D693E2C(v127, v127[3]);
  (v7[13])();
  sub_29D934128();

  sub_29D69417C(v127);
  v79 = v123;
  sub_29D8AA5D4(v78 + v77, v123, sub_29D6C36D8);
  v80 = v79;
  v81 = v124;
  sub_29D6C37D4(v80, v124);
  v82 = v126;
  if ((*(v126 + 48))(v81, 1, v34) == 1)
  {
    sub_29D8AA63C(v81, sub_29D6C36D8);
  }

  else
  {
    v83 = *(v82 + 32);
    v83(v122, v81, v34);
    v84 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_29D68F864(0, *(v84 + 2) + 1, 1, v84);
    }

    v86 = *(v84 + 2);
    v85 = *(v84 + 3);
    if (v86 >= v85 >> 1)
    {
      v84 = sub_29D68F864(v85 > 1, v86 + 1, 1, v84);
    }

    *(v84 + 2) = v86 + 1;
    v83(&v84[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v86], v122, v34);
  }

  swift_setDeallocating();
  sub_29D8AA63C(v78 + v77, sub_29D6C36D8);
  swift_deallocClassInstance();
  v87 = sub_29D939F58();

  sub_29D935E88();
  sub_29D935E88();
  v88 = sub_29D937878();
  v89 = sub_29D93A2A8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v127[0] = v91;
    *v90 = 136446466;
    v92 = sub_29D93AF08();
    v94 = sub_29D6C2364(v92, v93, v127);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    v95 = MEMORY[0x29ED6A340](v87, MEMORY[0x29EDC3A38]);
    v97 = v96;

    v98 = sub_29D6C2364(v95, v97, v127);

    *(v90 + 14) = v98;
    _os_log_impl(&dword_29D677000, v88, v89, "%{public}s Submitting these changes: %s", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v91, -1, -1);
    MEMORY[0x29ED6BE30](v90, -1, -1);
  }

  else
  {
  }

  return v87;
}

uint64_t sub_29D8A9B88(void **a1)
{
  v1 = *a1;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_29D93ADF8();
    v13 = sub_29D6C2364(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] error fetching onboarding title dismissed date: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v15 = MEMORY[0x29EDCA190];
  sub_29D8AA728(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  return sub_29D938338();
}

uint64_t sub_29D8A9D88(uint64_t a1, int a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29D8A8C24(a2, a3, a4, a5, a6, a7);
  sub_29D8AA728(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  return sub_29D938338();
}

uint64_t sub_29D8A9E10()
{
  v1 = OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartFeaturePromotionGenerator()
{
  result = qword_2A1A243A0;
  if (!qword_2A1A243A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8A9F10()
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

uint64_t sub_29D8A9FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D8AA048()
{
  if (!qword_2A1A222E0)
  {
    sub_29D6D09E0(255);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A222E0);
    }
  }
}

void sub_29D8AA0DC()
{
  if (!qword_2A1A22638)
  {
    sub_29D8AA1AC();
    sub_29D8AA728(255, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D8AA25C(&qword_2A1A22448, sub_29D8AA1AC);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22638);
    }
  }
}

void sub_29D8AA1AC()
{
  if (!qword_2A1A22440)
  {
    sub_29D8AA570(255, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    sub_29D6B7370(255, &qword_2A1A24850);
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22440);
    }
  }
}

uint64_t sub_29D8AA25C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D8AA2A4()
{
  if (!qword_2A1A22510)
  {
    sub_29D8AA0DC();
    sub_29D6D09E0(255);
    sub_29D8AA25C(&qword_2A1A22640, sub_29D8AA0DC);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0);
    v0 = sub_29D938118();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22510);
    }
  }
}

void sub_29D8AA390()
{
  if (!qword_2A1A233D8)
  {
    sub_29D6B7370(255, qword_2A1A233E0);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A233D8);
    }
  }
}

uint64_t sub_29D8AA3F8()
{
  v1 = *(sub_29D9341E8() - 8);
  v2 = (*(v1 + 80) + 30) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 26);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29D8A9D88(v3, v4, v5, v6, v0 + v2, v8, v9);
}

uint64_t sub_29D8AA4A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 37) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 33);
  v11 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_29D8A8B58(a1, v7, v9, v10, v2 + v6, v12, v13, a2);
}

void sub_29D8AA570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8AA5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8AA63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8AA69C(uint64_t a1)
{
  sub_29D8AA570(0, &unk_2A1A25748, MEMORY[0x29EDC3918], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8AA728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8AA778()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D9334A8();

  return v2;
}

uint64_t sub_29D8AA840()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D8AA8CC()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA490]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  sub_29D6E3724(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t type metadata accessor for HealthCalendarViewModel()
{
  result = qword_2A17B7330;
  if (!qword_2A17B7330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8AAA44()
{
  sub_29D933CE8();
  if (v0 <= 0x3F)
  {
    sub_29D8AC534(319, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29D9331D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *sub_29D8AAB10(uint64_t a1)
{
  v2 = v1;
  v134 = a1;
  v135 = sub_29D9331D8();
  v132 = *(v135 - 8);
  v3 = *(v132 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v135, v4);
  v130 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v140 = &v122 - v8;
  v9 = MEMORY[0x29EDC9C68];
  sub_29D8AC534(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v124 = &v122 - v13;
  v127 = sub_29D933CC8();
  v126 = *(v127 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x2A1C7C4A8](v127, v15);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AC534(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v9);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v125 = &v122 - v21;
  v139 = sub_29D9339F8();
  v22 = *(v139 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v139, v24);
  v129 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v123 = &v122 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v33 = &v122 - v32;
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v37 = &v122 - v36;
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v41 = &v122 - v40;
  MEMORY[0x2A1C7C4A8](v39, v42);
  v44 = &v122 - v43;
  v45 = *(type metadata accessor for HealthCalendarViewModel() + 24);
  v142 = v44;
  sub_29D9331A8();
  sub_29D933178();
  v46 = sub_29D933BB8();
  v47 = sub_29D933AF8();
  v128 = v45;
  sub_29D933178();
  v48 = sub_29D933958();
  v49 = *(v22 + 8);
  v136 = v33;
  v137 = v49;
  v50 = v33;
  v51 = v139;
  v138 = v22 + 8;
  v49(v50, v139);
  v52 = [v46 hk:v47 startOfWeekWithFirstWeekday:v48 beforeDate:1 addingWeeks:?];

  sub_29D933998();
  v53 = v126;
  v54 = v127;
  (*(v126 + 104))(v17, *MEMORY[0x29EDB9CB8], v127);
  v55 = v125;
  v131 = v37;
  v56 = v22;
  v141 = v2;
  sub_29D933C38();
  (*(v53 + 8))(v17, v54);
  v57 = v51;
  if ((*(v22 + 48))(v55, 1, v51) == 1)
  {
    sub_29D8AC39C(v55, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v58 = v41;
    v59 = v142;
    v60 = v137;
  }

  else
  {
    v61 = v123;
    (*(v22 + 32))(v123, v55, v51);
    (*(v22 + 24))(v41, v61, v51);
    v58 = v41;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v62 = sub_29D937898();
    sub_29D69C6C0(v62, qword_2A1A2C008);
    v63 = sub_29D937878();
    v64 = sub_29D93A268();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v144 = v66;
      *v65 = 136315394;
      *(v65 + 4) = sub_29D6C2364(0xD000000000000017, 0x800000029D951F50, &v144);
      *(v65 + 12) = 2080;
      swift_beginAccess();
      v67 = v124;
      sub_29D933A98();
      v68 = sub_29D933AA8();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      v69 = sub_29D933908();
      v71 = v70;
      sub_29D8AC39C(v67, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
      v72 = sub_29D6C2364(v69, v71, &v144);

      *(v65 + 14) = v72;
      _os_log_impl(&dword_29D677000, v63, v64, "[%s] OuterEnd changed to %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v66, -1, -1);
      MEMORY[0x29ED6BE30](v65, -1, -1);

      v73 = v123;
    }

    else
    {

      v73 = v61;
    }

    v60 = v137;
    v137(v73, v57);
    v59 = v142;
  }

  v74 = sub_29D933BB8();
  v75 = sub_29D933AF8();
  v76 = v136;
  sub_29D9331A8();
  v77 = sub_29D933958();
  v60(v76, v57);
  v78 = [v74 hk:v75 startOfWeekWithFirstWeekday:v77 beforeDate:0 addingWeeks:?];

  sub_29D933998();
  (*(v56 + 40))(v59, v76, v57);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v79 = sub_29D937898();
  v80 = sub_29D69C6C0(v79, qword_2A1A2C008);
  v81 = sub_29D937878();
  v82 = sub_29D93A268();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v128 = v80;
    v85 = v84;
    v144 = v84;
    *v83 = 136315394;
    *(v83 + 4) = sub_29D6C2364(0xD000000000000017, 0x800000029D951F50, &v144);
    *(v83 + 12) = 2080;
    swift_beginAccess();
    v86 = v58;
    v87 = v124;
    sub_29D933A98();
    v88 = sub_29D933AA8();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v89 = sub_29D933908();
    v91 = v90;
    v92 = v87;
    v58 = v86;
    sub_29D8AC39C(v92, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    v93 = sub_29D6C2364(v89, v91, &v144);
    v59 = v142;

    *(v83 + 14) = v93;
    _os_log_impl(&dword_29D677000, v81, v82, "[%s] OuterStart changed to %s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v85, -1, -1);
    MEMORY[0x29ED6BE30](v83, -1, -1);
  }

  v94 = v132;
  swift_beginAccess();
  v95 = *(v56 + 16);
  v95(v136, v59, v57);
  swift_beginAccess();
  v95(v129, v58, v57);
  v96 = v140;
  sub_29D933188();
  v97 = v130;
  v98 = v135;
  (*(v94 + 16))(v130, v96, v135);
  v99 = sub_29D937878();
  v100 = sub_29D93A268();
  v101 = os_log_type_enabled(v99, v100);
  v133 = v58;
  if (v101)
  {
    v102 = v94;
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v143[0] = v104;
    *v103 = 136315394;
    *(v103 + 4) = sub_29D6C2364(0xD000000000000017, 0x800000029D951F50, v143);
    *(v103 + 12) = 2080;
    sub_29D8AC344();
    v105 = sub_29D93AD38();
    v106 = v97;
    v108 = v107;
    v136 = *(v102 + 8);
    v136(v106, v98);
    v109 = sub_29D6C2364(v105, v108, v143);

    *(v103 + 14) = v109;
    _os_log_impl(&dword_29D677000, v99, v100, "[%s] OuterInterval = %s", v103, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v104, -1, -1);
    MEMORY[0x29ED6BE30](v103, -1, -1);
  }

  else
  {

    v136 = *(v94 + 8);
    v136(v97, v98);
  }

  v111 = v140;
  v110 = v141;
  v112 = sub_29D8AB8A4(v141);
  MEMORY[0x2A1C7C4A8](v112, v113);
  *(&v122 - 2) = v110;
  v114 = sub_29D8237B0(sub_29D8AC2F8, (&v122 - 4), v134);
  v115 = sub_29D7AF3A0(v114);

  MEMORY[0x2A1C7C4A8](v116, v117);
  *(&v122 - 4) = v115;
  *(&v122 - 3) = v111;
  *(&v122 - 2) = v110;
  v118 = sub_29D79E4D8(sub_29D8AC324, (&v122 - 6), v112);
  v119 = v139;
  v120 = v137;
  v137(v131, v139);

  v136(v111, v98);
  v120(v133, v119);
  v120(v142, v119);
  return v118;
}

uint64_t sub_29D8AB8A4(uint64_t a1)
{
  v58 = a1;
  v57 = sub_29D933CC8();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v57, v4);
  v55 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDB9BC8];
  sub_29D8AC534(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v54 = &v44 - v10;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v11, v15);
  v59 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = &v44 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v44 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v44 - v27;
  sub_29D8AC534(0, &qword_2A17B1438, v6, MEMORY[0x29EDC9E90]);
  v29 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v47 = *(v12 + 72);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D93DDB0;
  v46 = v29;
  sub_29D9331A8();
  v50 = v1;
  sub_29D9331A8();
  sub_29D933AD8();
  v31 = v28;
  v32 = *(v13 + 8);
  v13 += 8;
  v48 = v32;
  v32(v25, v11);
  v53 = *(v2 + 104);
  v52 = *MEMORY[0x29EDB9CB8];
  v56 = v2 + 104;
  v51 = (v2 + 8);
  v33 = (v13 + 40);
  v34 = (v13 + 24);
  v49 = v13;
  v45 = (v13 + 8);
  v35 = v54;
  while (1)
  {
    v36 = v55;
    v37 = v57;
    v53(v55, v52, v57);
    v38 = v31;
    sub_29D933C38();
    (*v51)(v36, v37);
    result = (*v33)(v35, 1, v11);
    if (result == 1)
    {
      break;
    }

    v40 = *v34;
    (*v34)(v21, v35, v11);
    if ((sub_29D9331B8() & 1) == 0)
    {
      v43 = v48;
      v48(v21, v11);
      v43(v38, v11);
      return v30;
    }

    (*v45)(v59, v21, v11);
    v42 = *(v30 + 16);
    v41 = *(v30 + 24);
    if (v42 >= v41 >> 1)
    {
      v30 = sub_29D690338(v41 > 1, v42 + 1, 1, v30);
    }

    v48(v31, v11);
    *(v30 + 16) = v42 + 1;
    v40((v30 + v46 + v42 * v47), v59, v11);
    v40(v31, v21, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8ABD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v49 = a3;
  v52 = a4;
  v6 = sub_29D933318();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9339F8();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AC534(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for HealthCalendarDayContent(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v25(v22, 1, 1, v23);
  if (sub_29D6A1834(a1, a2))
  {
    v48 = a1;
    v26 = 0;
  }

  else if (sub_29D9331B8() & 1) != 0 && (v32 = v49 + *(type metadata accessor for HealthCalendarViewModel() + 24), (sub_29D9331B8()))
  {
    v48 = a1;
    v26 = 1;
  }

  else
  {
    if (sub_29D9331B8() & 1) == 0 || (v33 = v49 + *(type metadata accessor for HealthCalendarViewModel() + 24), (sub_29D9331B8()))
    {
      v25(v52, 1, 1, v23);
      return sub_29D8AC39C(v22, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
    }

    v48 = a1;
    v26 = 2;
  }

  sub_29D8AC39C(v22, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
  (*(v50 + 16))(v22, v48, v51);
  v22[*(v23 + 20)] = v26;
  v22[*(v23 + 24)] = 0;
  v25(v22, 0, 1, v23);
  sub_29D8AC40C(v22, v19);
  v27 = *(v24 + 48);
  v28 = v27(v19, 1, v23);
  sub_29D8AC39C(v19, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
  if (v28 != 1 && !v27(v22, 1, v23))
  {
    v29 = v49 + *(type metadata accessor for HealthCalendarViewModel() + 24);
    v30 = v47;
    sub_29D9331A8();
    LOBYTE(v29) = sub_29D933988();
    (*(v50 + 8))(v30, v51);
    if (v29)
    {
      v31 = 1;
    }

    else
    {
      sub_29D8AC534(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
      v35 = sub_29D933CC8();
      v36 = *(v35 - 8);
      v37 = *(v36 + 72);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_29D93DDB0;
      (*(v36 + 104))(v39 + v38, *MEMORY[0x29EDB9CB8], v35);
      sub_29D6E3748(v39);
      swift_setDeallocating();
      (*(v36 + 8))(v39 + v38, v35);
      swift_deallocClassInstance();
      v40 = v44;
      sub_29D933B48();

      v41 = sub_29D9332A8();
      LOBYTE(v35) = v42;
      (*(v45 + 8))(v40, v46);
      v31 = (v41 == 1) & ~v35;
    }

    v22[*(v23 + 24)] = v31;
  }

  return sub_29D8AC4A0(v22, v52);
}

unint64_t sub_29D8AC344()
{
  result = qword_2A17B3A30;
  if (!qword_2A17B3A30)
  {
    sub_29D9331D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3A30);
  }

  return result;
}

uint64_t sub_29D8AC39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8AC534(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8AC40C(uint64_t a1, uint64_t a2)
{
  sub_29D8AC534(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8AC4A0(uint64_t a1, uint64_t a2)
{
  sub_29D8AC534(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D8AC534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8AC5D0()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D8AC70C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D8ACCE0();
  *a2 = result;
  return result;
}

void sub_29D8AC73C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7573;
  v5 = 0xED0000656C69666FLL;
  v6 = 0x725068746C616568;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEC0000006D6F6F52;
  v8 = 0x6570795461746164;
  if (v2 != 3)
  {
    v8 = 0x684368746C616568;
    v7 = 0xEF7473696C6B6365;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6573776F7262;
  if (v2 != 1)
  {
    v10 = 0x6163696669746F6ELL;
    v9 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_29D8AC84C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D8AC950()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D8ACA40()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D8ACB40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D8ACD2C();
  *a2 = result;
  return result;
}

void sub_29D8ACB70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C69546ELL;
  v4 = 0x6F69746F6D6F7270;
  v5 = 0xEF7473696C6B6365;
  v6 = 0x684368746C616568;
  v7 = 0xE800000000000000;
  v8 = 0x6B6E694C70656564;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6570795461746164;
    v3 = 0xEC0000006D6F6F52;
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

unint64_t sub_29D8ACC34()
{
  result = qword_2A17B7340;
  if (!qword_2A17B7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7340);
  }

  return result;
}

unint64_t sub_29D8ACC8C()
{
  result = qword_2A17B7348;
  if (!qword_2A17B7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7348);
  }

  return result;
}

uint64_t sub_29D8ACCE0()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D8ACD2C()
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

uint64_t sub_29D8ACD98()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8ACE38()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8ACEDC()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

id sub_29D8ACF80()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D8AD070()
{
  sub_29D719C5C();
  v0 = sub_29D934548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D951A30;
  v37 = v4;
  v5 = v4 + v3;
  *v5 = sub_29D8ACF80();
  *(v5 + 8) = 0;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x29EDC1608], v0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  *v7 = sub_29D9334A8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = (v5 + 2 * v2);
  *v9 = sub_29D9334A8();
  v9[1] = v10;
  v9[2] = 0;
  v38 = *MEMORY[0x29EDC15D0];
  v6(v9);
  v11 = v5 + 3 * v2;
  *v11 = sub_29D9334A8();
  *(v11 + 8) = v12;
  *(v11 + 16) = 0;
  v13 = *MEMORY[0x29EDC1630];
  (v6)(v11, v13, v0);
  v14 = v5 + 4 * v2;
  *v14 = sub_29D9334A8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v13, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29D9334A8();
  *(v16 + 8) = v17;
  *(v16 + 16) = 0;
  (v6)(v16, v13, v0);
  v18 = (v5 + 6 * v2);
  *v18 = sub_29D9334A8();
  v18[1] = v19;
  v18[2] = 0;
  (v6)(v18, v38, v0);
  v20 = v5 + 7 * v2;
  *v20 = sub_29D9334A8();
  *(v20 + 8) = v21;
  *(v20 + 16) = 0;
  (v6)(v20, v13, v0);
  v22 = v5 + 8 * v2;
  *v22 = sub_29D9334A8();
  *(v22 + 8) = v23;
  *(v22 + 16) = 0;
  (v6)(v22, v13, v0);
  v24 = v5 + 9 * v2;
  *v24 = sub_29D9334A8();
  *(v24 + 8) = v25;
  *(v24 + 16) = 0;
  (v6)(v24, v13, v0);
  v26 = (v5 + 10 * v2);
  *v26 = sub_29D9334A8();
  v26[1] = v27;
  v26[2] = 0;
  (v6)(v26, v38, v0);
  v28 = v5 + 11 * v2;
  *v28 = sub_29D9334A8();
  *(v28 + 8) = v29;
  *(v28 + 16) = 0;
  (v6)(v28, v13, v0);
  v30 = v5 + 12 * v2;
  *v30 = sub_29D9334A8();
  *(v30 + 8) = v31;
  *(v30 + 16) = 0;
  (v6)(v30, v13, v0);
  v32 = (v5 + 13 * v2);
  *v32 = sub_29D9334A8();
  v32[1] = v33;
  v32[2] = 0;
  (v6)(v32, v38, v0);
  v34 = v5 + 14 * v2;
  *v34 = sub_29D9334A8();
  *(v34 + 8) = v35;
  *(v34 + 16) = 0;
  (v6)(v34, v13, v0);
  return v37;
}

void sub_29D8AD830(char a1, uint64_t a2, void (*a3)(), uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  ObjectType = swift_getObjectType();
  sub_29D8AF64C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v40 - v12;
  v14 = sub_29D9336F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v40 - v21;
  sub_29D6D962C(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29D8AF4F0(v13, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D8AF64C);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v23 = sub_29D937898();
    sub_29D69C6C0(v23, qword_2A1A2BF10);
    v24 = sub_29D937878();
    v25 = sub_29D93A288();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315394;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &aBlock);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v24, v25, "[%s.%s]: Failed to construct deep link URL to go to detail room", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }

    if (v43)
    {
      v48 = v43;
      v49 = a4;
      aBlock = MEMORY[0x29EDCA5F8];
      v45 = 1107296256;
      v46 = sub_29D6C1F10;
      v47 = &unk_2A244C108;
      v31 = _Block_copy(&aBlock);
    }

    else
    {
      v31 = 0;
    }

    [v5 dismissViewControllerAnimated:1 completion:v31];
    _Block_release(v31);
  }

  else
  {
    v40 = a4;
    v41 = v5;
    v32 = *(v15 + 32);
    v32(v22, v13, v14);
    if ((a1 & 1) != 0 && *(v41 + OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_navigateToDetailRoomUponOnboardingCompletion) == 1)
    {
      (*(v15 + 16))(v19, v22, v14);
      v33 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v34 = (v16 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      v32((v35 + v33), v19, v14);
      v36 = (v35 + v34);
      v37 = v43;
      v38 = v40;
      *v36 = v43;
      v36[1] = v38;
      *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      v48 = sub_29D8AF550;
      v49 = v35;
      aBlock = MEMORY[0x29EDCA5F8];
      v45 = 1107296256;
      v46 = sub_29D6C1F10;
      v47 = &unk_2A244C180;
      v39 = _Block_copy(&aBlock);
      sub_29D695554(v37);

      [v41 dismissViewControllerAnimated:1 completion:v39];
    }

    else
    {
      if (v43)
      {
        v48 = v43;
        v49 = v40;
        aBlock = MEMORY[0x29EDCA5F8];
        v45 = 1107296256;
        v46 = sub_29D6C1F10;
        v47 = &unk_2A244C130;
        v39 = _Block_copy(&aBlock);
      }

      else
      {
        v39 = 0;
      }

      [v41 dismissViewControllerAnimated:1 completion:v39];
    }

    _Block_release(v39);
    (*(v15 + 8))(v22, v14);
  }
}

void sub_29D8ADE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D8AF604(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D73F1B0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A244C1D0;
  v11 = _Block_copy(v12);
  sub_29D695554(a2);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

void sub_29D8AE0A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A244C0E0;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D8AE17C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A244C0B8;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D8AE24C()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_vcFactory] + 16);
  v3 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingIntroViewController());

  v5 = sub_29D8A4A78(v4);

  v6 = &v5[qword_2A17B71C8];
  v7 = *&v5[qword_2A17B71C8];
  *v6 = v1;
  *(v6 + 1) = &off_2A244C068;
  v18 = v5;
  v8 = v1;

  sub_29D936978();
  v9 = &v8[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D940030;
    *(v12 + 32) = v18;
    v13 = *(v10 + 24);
    v14 = v18;
    v13(v12, 0, ObjectType, v10);

    sub_29D936978();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v9 + 1);
    v16 = swift_getObjectType();
    v17 = (*(v15 + 8))(v16, v15);
    sub_29D936978();
    if (v17)
    {
      [v17 setDelegate_];
    }
  }
}

void sub_29D8AE424(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_vcFactory];
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return;
    }

    v9 = *(v3 + 16);
    v10 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController());

    v7 = sub_29D89E5FC(v11);
    v8 = &off_2A244BBB0;
  }

  else
  {
    v4 = *(v3 + 16);
    if (a1)
    {
      v12 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController());

      v7 = sub_29D8454B0(v13);
      v8 = &off_2A2448840;
    }

    else
    {
      v5 = objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingIntroViewController());

      v7 = sub_29D8A4A78(v6);
      v8 = &off_2A244BCA0;
    }
  }

  swift_getObjectType();
  v14 = v8[3];
  v15 = v2;
  v20 = v7;
  v14(v2, &off_2A244C068);

  v16 = &v15[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 1);
    swift_getObjectType();
    memset(v21, 0, sizeof(v21));
    v18 = *(v17 + 32);
    v19 = v20;
    v18();
    sub_29D936978();

    sub_29D8AF4F0(v21, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D6C5040);
  }

  else
  {
  }
}

void sub_29D8AE650()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_healthStore);
  v2 = v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = *(v2 + 8);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_provenance);
  v35 = *(v0 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_source);
  v4 = type metadata accessor for BloodPressureJournalCreationMainViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator] = 0;
  *&v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl] = 0;
  v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_navigateToDetailRoomUponCompletion] = 1;
  *&v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_healthStore] = v1;
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v8 = v1;
  v9 = sub_29D939D28();
  v10 = [v7 initWithCategory:2 domainName:v9 healthStore:v8];

  *(v6 + 24) = v10;
  v11 = type metadata accessor for BloodPressureJournalCreationModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v39 = 0;
  v40 = 1;
  sub_29D8AF64C(0, &unk_2A17B73A0, type metadata accessor for HKHRBloodPressureJournalType, MEMORY[0x29EDC9C68]);
  v15 = v8;

  sub_29D938398();
  v16 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
  if (qword_2A17B0C48 != -1)
  {
    swift_once();
  }

  v17 = sub_29D9339F8();
  v18 = sub_29D69C6C0(v17, qword_2A17B4D48);
  v19 = *(*(v17 - 8) + 16);
  v19(v14 + v16, v18, v17);
  v20 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime;
  if (qword_2A17B0C50 != -1)
  {
    swift_once();
  }

  v21 = sub_29D69C6C0(v17, qword_2A17B4D60);
  v19(v14 + v20, v21, v17);
  v22 = v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *(v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___eventSubmissionManager) = 0;
  *(v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities) = 0;
  *(v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore) = v15;
  *(v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager) = v6;
  *(v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_provenance) = v3;
  *(v14 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_flowType) = 0;
  type metadata accessor for BloodPressureJournalCreationViewControllerFactory();
  v23 = swift_allocObject();
  *(v23 + 16) = v14;
  v5[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_provenance] = v3;
  v43.receiver = v5;
  v43.super_class = v4;

  v41 = v4;
  v42 = &off_2A2443630;
  v39 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
  v24 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
  swift_beginAccess();
  v25 = v39;
  sub_29D89BB10(&v39, v14 + v24);
  swift_endAccess();
  [v25 setModalPresentationStyle_];
  [v25 setModalInPresentation_];
  v26 = type metadata accessor for BloodPressureJournalCreationCoordinator();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController];
  if (Strong)
  {
    *(v28 + 1) = 0;
    *(swift_unknownObjectWeakInit() + 8) = v34;
    swift_unknownObjectWeakAssign();
    *&v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model] = v14;
    *&v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_vcFactory] = v23;
    *&v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore] = v15;
    v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] = 1;
    v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source] = v35;
    v37.receiver = v27;
    v37.super_class = v26;
    v29 = v15;

    swift_unknownObjectRetain();

    v30 = objc_msgSendSuper2(&v37, sel_init);
    sub_29D73CE68();
    swift_unknownObjectRelease_n();

    v31 = v30;
  }

  else
  {
    *(v28 + 1) = v34;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A2443640;
    swift_unknownObjectWeakAssign();
    *&v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model] = v14;
    *&v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_vcFactory] = v23;
    *&v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore] = v15;
    v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] = 0;
    v27[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source] = v35;
    v38.receiver = v27;
    v38.super_class = v26;
    v32 = v15;

    v30 = v25;

    v31 = objc_msgSendSuper2(&v38, sel_init);
    sub_29D73CE68();
  }

  v33 = *&v25[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator];
  *&v25[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator] = v31;
}

uint64_t sub_29D8AEC18(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_29D8AF1D8(a1 & 1, a2, a3, a4, a6, ObjectType, a5);
}

void sub_29D8AEC90(char a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  sub_29D8AF64C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v39[-v13];
  if (a1)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2C008);
    v16 = a4;
    v17 = sub_29D937878();
    v18 = sub_29D93A2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = sub_29D93AF08();
      v23 = sub_29D6C2364(v21, v22, &v40);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29D6C2364(0xD00000000000001ALL, 0x800000029D9694F0, &v40);
      *(v19 + 22) = 2080;
      ObjectType = swift_getObjectType();
      v39[7] = (*(a5 + 8))(ObjectType, a5);
      v25 = sub_29D939DA8();
      v27 = sub_29D6C2364(v25, v26, &v40);

      *(v19 + 24) = v27;
      *(v19 + 32) = 2080;
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, &v40);

      *(v19 + 34) = v30;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    sub_29D8AF6B0(v16);
  }

  else
  {
    if (a3 - 2 >= 2)
    {
      if (a3)
      {
        v38 = *(*(a2 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_model) + 16);
        if (v38 == 2 || (v38 & 1) != 0)
        {
          sub_29D8AE650();
          return;
        }

        v37 = 2;
      }

      else
      {
        v37 = 1;
      }

      sub_29D8AE424(v37);
      return;
    }

    v31 = a2 + OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v31 + 8);
      v33 = a3 == 3;
      v34 = swift_getObjectType();
      v35 = HKHRBloodPressureDetailRoomBaseLink();
      sub_29D9336D8();

      v36 = sub_29D9336F8();
      (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
      (*(v32 + 40))(v33, v14, 0, 0, v34, v32);
      sub_29D936978();
      sub_29D8AF4F0(v14, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D8AF64C);
    }
  }
}

id sub_29D8AF0F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D8AF1C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8AF1D8(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v30 = a5;
  v11 = sub_29D939968();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D939998();
  v16 = *(v31 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v31, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v21 = sub_29D93A468();
  v22 = swift_allocObject();
  *(v22 + 16) = a1 & 1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  v24 = v29;
  v23 = v30;
  *(v22 + 40) = a4;
  *(v22 + 48) = v24;
  *(v22 + 56) = v23;
  aBlock[4] = sub_29D8AF5EC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244C220;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  v27 = a4;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8AF604(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D8AF64C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v20, v15, v25);
  _Block_release(v25);

  (*(v32 + 8))(v15, v11);
  return (*(v16 + 8))(v20, v31);
}

uint64_t sub_29D8AF4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29D8AF550()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D8ADE0C(v0 + v2, v6, v7, v8);
}

uint64_t sub_29D8AF604(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D8AF64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D8AF6B0(void *a1)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  v5 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:{1, 0xE000000000000000}];

  sub_29D9334A8();
  v3 = sub_29D939D28();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:{0, 0xE000000000000000}];

  [v5 addAction_];
  [a1 presentViewController:v5 animated:1 completion:0];
}

id sub_29D8AF95C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramOnboardingSessionSimulationHeroView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8AF9B4()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *MEMORY[0x29EDC5180];
  sub_29D939D68();
  sub_29D9343D8();

  *(swift_allocObject() + 16) = v1;
  *(swift_allocObject() + 16) = v1;
  sub_29D6AD3EC();
  sub_29D8B0C54(&qword_2A1A22328, sub_29D6AD3EC);
  sub_29D938438();
}

uint64_t sub_29D8AFB24(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v7);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v8, qword_2A1A2BF58);
  sub_29D6A0A20(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_29D6B1204(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v12[1] = 0;
  sub_29D9371C8();
}

uint64_t sub_29D8AFCA4(uint64_t a1)
{
  sub_29D6A08F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_29D93AA18();

  v10 = 91;
  v11 = 0xE100000000000000;
  v7 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v7);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96C050);
  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D96C0D0);
  sub_29D6A0A20(a1, v6);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10;
}

uint64_t sub_29D8AFDE4(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v4, qword_2A1A2BF58);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = a2;
    v6 = v3;
    sub_29D9371E8();
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v7, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a2;
    sub_29D9371C8();
  }
}

uint64_t sub_29D8AFF64(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96C050);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D96C080);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 91;
}

uint64_t sub_29D8B006C()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96C050);
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D96C0B0);
  return 91;
}

uint64_t sub_29D8B0134(uint64_t a1)
{
  v3 = *v1;
  sub_29D6A08F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v7);
  v8 = v1[2];
  v9 = *MEMORY[0x29EDC5180];
  sub_29D939D68();
  v10 = sub_29D9343E8();

  v14[1] = v10;
  sub_29D6A0A20(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_29D6B1204(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_29D8B0BE8();
  sub_29D8B0C54(&qword_2A17B1958, sub_29D8B0BE8);
  sub_29D938478();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D8B0360(void **a1, uint64_t a2, uint64_t a3)
{
  sub_29D6A08F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v12, qword_2A1A2BF58);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    v21 = 0;
    v14 = v11;
    sub_29D9371E8();
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    sub_29D6A0A20(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    sub_29D6B1204(v10, v18 + v16);
    *(v18 + v17) = a3;
    v21 = 0;
    sub_29D9371C8();
  }
}

uint64_t sub_29D8B058C(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96BFD0);
  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D96C000);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 91;
}

uint64_t sub_29D8B0694(uint64_t a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v26 - v10;
  sub_29D6A08F8();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v26 - v19;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_29D93AA18();

  v26 = 91;
  v27 = 0xE100000000000000;
  v21 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v21);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96BFD0);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D96C030);
  sub_29D6A0A20(a1, v20);
  sub_29D6A0A20(v20, v17);
  if ((*(v3 + 48))(v17, 1, v2) == 1)
  {
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    (*(v3 + 32))(v11, v17, v2);
    (*(v3 + 16))(v8, v11, v2);
    v23 = sub_29D939DA8();
    v22 = v24;
    (*(v3 + 8))(v11, v2);
  }

  sub_29D6A0D34(v20);
  MEMORY[0x29ED6A240](v23, v22);

  return v26;
}

uint64_t sub_29D8B0944()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29D8B09A8()
{
  sub_29D8B0AB8();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v1, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  sub_29D8AF9B4();
  sub_29D8B0C54(&qword_2A1A226C0, sub_29D8B0AB8);
  v9 = sub_29D938418();
  (*(v3 + 8))(v7, v2);
  return v9;
}

void sub_29D8B0AB8()
{
  if (!qword_2A1A226B8)
  {
    sub_29D6AD3EC();
    sub_29D8B0C54(&qword_2A1A22328, sub_29D6AD3EC);
    v0 = sub_29D938098();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A226B8);
    }
  }
}

uint64_t sub_29D8B0B4C(void **a1)
{
  sub_29D6A08F8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8B0360(a1, v1 + v5, v6);
}

void sub_29D8B0BE8()
{
  if (!qword_2A17B1950)
  {
    sub_29D6A0CD0();
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1950);
    }
  }
}

uint64_t sub_29D8B0C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8B0CDC()
{
  sub_29D6A08F8();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D8B0E0C(uint64_t (*a1)(unint64_t, uint64_t))
{
  sub_29D6A08F8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v4, v5);
}

uint64_t type metadata accessor for AFibBurdenOnboardingShouldKnowViewController()
{
  result = qword_2A17B73C8;
  if (!qword_2A17B73C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8B0F4C(char a1)
{
  v2 = v1;
  *(v1 + qword_2A17B73B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D77C524();
  v4 = *(sub_29D935398() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = *(v4 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D944EA0;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243DF90);
  v7 = sub_29D939F18();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = a1;
  sub_29D6AA360(&unk_2A243DFB0);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E000);
  v9 = sub_29D939F18();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_29D6AA360(&unk_2A243E020);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E070);
  v11 = sub_29D939F18();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D6AA360(aThree);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E0E0);
  v13 = sub_29D939F18();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D6AA360(aFour);
  sub_29D939D68();

  sub_29D935388();
  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243E150);
  v15 = sub_29D939F18();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_29D6AA360(aFive);
  sub_29D939D68();

  sub_29D935388();
  *(v2 + qword_2A17B73C0) = v19 & 1;
  sub_29D9334A8();
  if (v19)
  {
    sub_29D936B68();
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = [sub_29D936B68() navigationItem];
    [v18 setRightBarButtonItem_];
  }
}

void sub_29D8B1650()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AFibBurdenOnboardingShouldKnowViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v2 = v0[qword_2A17B73C0];
  if (v2 == 1)
  {
  }

  v3 = [v0 navigationItem];
  [v3 setBackButtonDisplayMode_];

  v4 = [v1 headerView];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D959570);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
  v5 = sub_29D939D28();

  [v4 setAccessibilityIdentifier_];

  if (v2)
  {
    sub_29D88BBC8(&unk_2A243F728);
    v6 = sub_29D939F18();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    if (v7)
    {
      sub_29D6AA360(aContinuebutton_4);
      sub_29D939D68();

      sub_29D936C58();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29D936C68();
  }
}

void sub_29D8B18BC(void *a1)
{
  v1 = a1;
  sub_29D8B1650();
}

uint64_t sub_29D8B1904()
{
  v1 = v0 + qword_2A17B73B8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_2A244C398, ObjectType, v3);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8B199C(char *a1)
{
  v2 = &a1[qword_2A17B73B8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

id sub_29D8B1A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingShouldKnowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8B1AEC()
{
  v1 = v0 + qword_2A17B73B8;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D8B1B20(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B73B8 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D8B1B6C()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D8B1CA0(void *a1)
{
  v1 = a1;
  sub_29D8B1B6C();
}

void sub_29D8B1CE8(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

uint64_t type metadata accessor for CardioFitnessHealthChecklistSettingsState()
{
  result = qword_2A17B73D8;
  if (!qword_2A17B73D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8B1DC8()
{
  sub_29D9346E8();
  if (v0 <= 0x3F)
  {
    sub_29D8B1E64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D8B1E64()
{
  if (!qword_2A17B3628)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3628);
    }
  }
}

uint64_t sub_29D8B1EB4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D8B1EEC(void *a1, int a2)
{
  v35 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29D8B5188(0, &qword_2A17B74A0, sub_29D8B48D8, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OffCodingKeys, MEMORY[0x29EDC9E88]);
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v32 = &v28 - v7;
  sub_29D8B5188(0, &qword_2A17B74A8, sub_29D8B492C, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.OnCodingKeys, v3);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v28 - v11;
  sub_29D8B5188(0, &qword_2A17B74B0, sub_29D8B4980, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.DisabledCodingKeys, v3);
  v28 = *(v13 - 8);
  v29 = v13;
  v14 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v28 - v16;
  sub_29D8B5188(0, &qword_2A17B74B8, sub_29D8B49D4, &type metadata for CardioFitnessHealthChecklistSettingsState.SwitchState.CodingKeys, v3);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v18, v22);
  v24 = &v28 - v23;
  v25 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B49D4();
  sub_29D93AED8();
  if (v35)
  {
    if (v35 == 1)
    {
      v37 = 1;
      sub_29D8B492C();
      sub_29D93ACA8();
      (*(v30 + 8))(v12, v31);
    }

    else
    {
      v38 = 2;
      sub_29D8B48D8();
      v26 = v32;
      sub_29D93ACA8();
      (*(v33 + 8))(v26, v34);
    }
  }

  else
  {
    v36 = 0;
    sub_29D8B4980();
    sub_29D93ACA8();
    (*(v28 + 8))(v17, v29);
  }

  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_29D8B22E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a5;
  v16[1] = a4;
  sub_29D8B5188(0, &qword_2A17B7548, sub_29D8B5134, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.Link.CodingKeys, MEMORY[0x29EDC9E88]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v16 - v11;
  v13 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B5134();
  sub_29D93AED8();
  v18 = 0;
  v14 = v16[3];
  sub_29D93ACE8();
  if (!v14)
  {
    v17 = 1;
    sub_29D93ACE8();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D8B2484(void *a1)
{
  v3 = v1;
  sub_29D8B5188(0, &qword_2A17B7450, sub_29D8B47DC, &type metadata for CardioFitnessHealthChecklistSettingsState.Footer.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = v17 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B47DC();
  sub_29D93AED8();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v17[0]) = 0;
  sub_29D93ACE8();
  if (!v2)
  {
    v15 = *(v3 + 2);
    v17[0] = *(v3 + 1);
    v17[1] = v15;
    v18 = 1;
    sub_29D8B4884();
    sub_29D93ACD8();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D8B2634(void *a1)
{
  v3 = v1;
  sub_29D8B5188(0, &qword_2A17B7418, sub_29D8B3628, &type metadata for CardioFitnessHealthChecklistSettingsState.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = v19 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B3628();
  sub_29D93AED8();
  LOBYTE(v19[0]) = *v3;
  v22 = 0;
  sub_29D8B37E4();
  sub_29D93AD18();
  if (!v2)
  {
    v13 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
    v14 = v13[5];
    LOBYTE(v19[0]) = 1;
    sub_29D9346E8();
    sub_29D87D9B0(&qword_2A17B1D68);
    sub_29D93AD18();
    v19[0] = *&v3[v13[6]];
    v22 = 2;
    sub_29D8B1E64();
    sub_29D8B3838(&qword_2A17B7428);
    sub_29D93AD18();
    v15 = &v3[v13[7]];
    v16 = *(v15 + 1);
    v19[0] = *v15;
    v19[1] = v16;
    v17 = *(v15 + 2);
    v20 = *(v15 + 1);
    v21 = v17;
    v22 = 3;
    sub_29D8B3898();
    sub_29D93AD18();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_29D8B28E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_29D9346E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8B5188(0, &qword_2A17B73F0, sub_29D8B3628, &type metadata for CardioFitnessHealthChecklistSettingsState.CodingKeys, MEMORY[0x29EDC9E80]);
  v33 = v8;
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D8B3628();
  v34 = v12;
  v19 = v35;
  sub_29D93AEC8();
  if (v19)
  {
    return sub_29D69417C(a1);
  }

  v20 = v7;
  v35 = v13;
  v22 = v30;
  v21 = v31;
  v23 = v32;
  v40 = 0;
  sub_29D8B367C();
  sub_29D93AC88();
  *v17 = v36;
  LOBYTE(v36) = 1;
  sub_29D87D9B0(&qword_2A17B1D10);
  sub_29D93AC88();
  (*(v21 + 32))(&v17[v35[5]], v20, v23);
  sub_29D8B1E64();
  v40 = 2;
  sub_29D8B3838(&qword_2A17B7408);
  sub_29D93AC88();
  *&v17[v35[6]] = v36;
  v40 = 3;
  sub_29D8B36D0();
  sub_29D93AC88();
  (*(v22 + 8))(v34, v33);
  v24 = v37;
  v25 = &v17[v35[7]];
  *v25 = v36;
  *(v25 + 1) = v24;
  v26 = v39;
  *(v25 + 1) = v38;
  *(v25 + 2) = v26;
  sub_29D8B3724(v17, v29);
  sub_29D69417C(a1);
  return sub_29D8B3788(v17);
}

uint64_t sub_29D8B2D44()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_29D8B2D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D8B3C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D8B2DB4(uint64_t a1)
{
  v2 = sub_29D8B49D4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2DF0(uint64_t a1)
{
  v2 = sub_29D8B49D4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2E2C(uint64_t a1)
{
  v2 = sub_29D8B4980();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2E68(uint64_t a1)
{
  v2 = sub_29D8B4980();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2EA4(uint64_t a1)
{
  v2 = sub_29D8B48D8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2EE0(uint64_t a1)
{
  v2 = sub_29D8B48D8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2F1C(uint64_t a1)
{
  v2 = sub_29D8B492C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B2F58(uint64_t a1)
{
  v2 = sub_29D8B492C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B2F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D8B3D80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_29D8B2FE0()
{
  result = qword_2A17B73E8;
  if (!qword_2A17B73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B73E8);
  }

  return result;
}

uint64_t sub_29D8B3034()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_29D8B3060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_29D8B313C(uint64_t a1)
{
  v2 = sub_29D8B5134();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B3178(uint64_t a1)
{
  v2 = sub_29D8B5134();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8B31B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D8B4394(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_29D8B3204(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_29D93AD78(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_29D93AD78();
    }
  }

  return result;
}

uint64_t sub_29D8B32A8()
{
  if (*v0)
  {
    return 1802398060;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_29D8B32CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
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

uint64_t sub_29D8B33A8(uint64_t a1)
{
  v2 = sub_29D8B47DC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B33E4(uint64_t a1)
{
  v2 = sub_29D8B47DC();

  return MEMORY[0x2A1C73280](a1, v2);
}

double sub_29D8B3420@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29D8B45A8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_29D8B347C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_29D8B38EC(v7, v8);
}

unint64_t sub_29D8B34C4()
{
  v1 = 0x7453686374697773;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x73696C6B63656863;
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

uint64_t sub_29D8B3554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D8B4FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D8B357C(uint64_t a1)
{
  v2 = sub_29D8B3628();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8B35B8(uint64_t a1)
{
  v2 = sub_29D8B3628();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29D8B3628()
{
  result = qword_2A17B73F8;
  if (!qword_2A17B73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B73F8);
  }

  return result;
}

unint64_t sub_29D8B367C()
{
  result = qword_2A17B7400;
  if (!qword_2A17B7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7400);
  }

  return result;
}

unint64_t sub_29D8B36D0()
{
  result = qword_2A17B7410;
  if (!qword_2A17B7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7410);
  }

  return result;
}

uint64_t sub_29D8B3724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8B3788(uint64_t a1)
{
  v2 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D8B37E4()
{
  result = qword_2A17B7420;
  if (!qword_2A17B7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7420);
  }

  return result;
}

uint64_t sub_29D8B3838(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D8B1E64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D8B3898()
{
  result = qword_2A17B7430;
  if (!qword_2A17B7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7430);
  }

  return result;
}

BOOL sub_29D8B38EC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_29D93AD78(), result = 0, (v5 & 1) != 0))
  {
    v8 = a1[2];
    v7 = a1[3];
    v10 = a1[4];
    v9 = a1[5];
    v12 = a2[2];
    v11 = a2[3];
    v14 = a2[4];
    v13 = a2[5];
    if (v7)
    {
      if (v11)
      {
        if (v8 == v12 && v7 == v11 || (sub_29D93AD78() & 1) != 0)
        {
          if (v10 == v14 && v9 == v13)
          {
            sub_29D8B3BE8(v12, v11);
            sub_29D8B3BE8(v8, v7);

            sub_29D8B3C2C(v8, v7);
            return 1;
          }

          v17 = sub_29D93AD78();
          sub_29D8B3BE8(v12, v11);
          sub_29D8B3BE8(v8, v7);

          sub_29D8B3C2C(v8, v7);
          return (v17 & 1) != 0;
        }

        sub_29D8B3BE8(v12, v11);
        sub_29D8B3BE8(v8, v7);

        v15 = v8;
        v16 = v7;
LABEL_16:
        sub_29D8B3C2C(v15, v16);
        return 0;
      }
    }

    else if (!v11)
    {
      return 1;
    }

    sub_29D8B3BE8(v12, v11);
    sub_29D8B3BE8(v8, v7);
    sub_29D8B3C2C(v8, v7);
    v15 = v12;
    v16 = v11;
    goto LABEL_16;
  }

  return result;
}

BOOL sub_29D8B3B1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  v6 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v7 = v6[5];
  if (sub_29D9346D8() & 1) != 0 && (sub_29D696F08(*&a1[v6[6]], *&a2[v6[6]]))
  {
    v8 = &a1[v6[7]];
    v9 = *(v8 + 2);
    v14[1] = *(v8 + 1);
    v14[2] = v9;
    v14[0] = *v8;
    v10 = &a2[v6[7]];
    v11 = *(v10 + 2);
    v15[1] = *(v10 + 1);
    v15[2] = v11;
    v15[0] = *v10;
    return sub_29D8B38EC(v14, v15);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D8B3BE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29D935E88();

    return sub_29D935E88();
  }

  return result;
}

uint64_t sub_29D8B3C2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29D8B3C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}