void sub_29D8428FC(void *a1)
{
  v1 = a1;
  sub_29D842654();
}

void sub_29D842944()
{
  v1 = v0;
  v2 = v0[qword_2A17B6330];
  v3 = [v1 headerView];
  if (v2 != 1)
  {
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
    v11 = sub_29D939D28();

    [v3 setAccessibilityIdentifier_];

    v12 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x656C746954, 0xE500000000000000);
    v13 = sub_29D939D28();

    [v12 setTitleAccessibilityIdentifier_];

    v9 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x7470697263736544, 0xEB000000006E6F69);
    v14 = sub_29D939D28();

    goto LABEL_9;
  }

  sub_29D88BBC8(&unk_2A243E7A8);
  v4 = sub_29D939F18();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_29D6AA360(&unk_2A243E7C8);
  [v3 setAccessibilityIdentifier_];

  v6 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243E818);
  v7 = sub_29D939F18();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D6AA360(aTitle_12);
  [v6 setTitleAccessibilityIdentifier_];

  v9 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243E888);
  v10 = sub_29D939F18();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (!v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_29D6AA360(aDescription_1);
LABEL_9:
  [v9 setDetailTextAccessibilityIdentifier_];
}

void sub_29D842DE0(char *a1)
{
  v2 = &a1[qword_2A17B6328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D842EA0(char *a1)
{
  v2 = &a1[qword_2A17B6328];
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

void sub_29D842F60(char *a1)
{
  v2 = &a1[qword_2A17B6328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

id sub_29D843060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8430B0()
{
  v1 = v0 + qword_2A17B6328;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D8430E4(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B6328 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D843130()
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

void sub_29D843264(void *a1)
{
  v1 = a1;
  sub_29D843130();
}

void sub_29D8432AC(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_29D843318(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + qword_2A17B6328 + 8) = 0;
  v7 = swift_unknownObjectWeakInit();
  *(v4 + qword_2A17B6330) = a1;
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A2C038;
  v9 = sub_29D939D28();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:{v8, 0xE000000000000000}];

  if (!v10)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243D510);
  v11 = sub_29D939F18();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    sub_29D6AA360(&unk_2A243D530);
    sub_29D939D68();

    sub_29D936CD8();
  }

  else
  {
    __break(1u);
  }
}

_BYTE *sub_29D8435F4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (result[8] == 1)
  {
    result = v3;
    v4 = 1;
  }

  else if (v3)
  {
    result = v3;
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

char *sub_29D843650(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject;
  v23 = 0;
  LOBYTE(v24) = 0;
  sub_29D6BE5E8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_29D9382D8();
  sub_29D844014();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *&v2[v5] = v10;
  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDB93D0]) init];
  }

  *&v2[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager] = v11;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v29, sel_init);
  v14 = OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager;
  v15 = *&v13[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] startRetrocomputeStatusUpdates];
  v17 = *&v13[v14];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = ObjectType;
  v27 = sub_29D84407C;
  v28 = v19;
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 1107296256;
  v25 = sub_29D6C1F54;
  v26 = &unk_2A2448808;
  v20 = _Block_copy(&v23);
  v21 = v17;

  [v21 retrocomputeStateWithHandler_];
  _Block_release(v20);

  return v16;
}

void sub_29D843854(void *a1, id a2)
{
  if (a1)
  {
    v3 = qword_2A1A25718;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = v4;
    v7 = sub_29D937878();
    v8 = sub_29D93A2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40[0] = v11;
      *v9 = 136446722;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, v40);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2050;
      v15 = [v6 status];

      *(v9 + 14) = v15;
      *(v9 + 22) = 2112;
      *(v9 + 24) = v6;
      *v10 = a1;
      v16 = v6;
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] Received initial state with status %{public}ld: %@", v9, 0x20u);
      sub_29D6ACA3C(v10);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = *(Strong + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
      v37 = Strong;

      os_unfair_lock_lock((v36 + 24));
      v38 = *(v36 + 16);

      os_unfair_lock_unlock((v36 + 24));

      v39 = v6;
      sub_29D9382B8();

      return;
    }
  }

  else
  {
    v6 = a2;
    if (!a2)
    {
      return;
    }

    v17 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    v19 = v6;
    v20 = sub_29D937878();
    v21 = sub_29D93A288();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v22 = 136446466;
      v25 = sub_29D93AF08();
      v27 = sub_29D6C2364(v25, v26, v40);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      v28 = v6;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      *v23 = v29;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s] Failed to get initial retrocompute state: %@", v22, 0x16u);
      sub_29D6ACA3C(v23);
      MEMORY[0x29ED6BE30](v23, -1, -1);
      sub_29D69417C(v24);
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
      v32 = v30;

      os_unfair_lock_lock((v31 + 24));
      v33 = *(v31 + 16);

      os_unfair_lock_unlock((v31 + 24));

      v34 = v6;
      sub_29D9382B8();
    }
  }
}

id sub_29D843CE4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager] stopRetrocomputeStatusUpdates];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D843F38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_29D843F8C()
{
  if (!qword_2A1A21EC0)
  {
    sub_29D6F9FC4(255, &qword_2A1A221A8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6A0CD0();
    v0 = sub_29D93AEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21EC0);
    }
  }
}

void sub_29D844014()
{
  if (!qword_2A1A21FB0)
  {
    sub_29D6BE5E8();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29D93AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21FB0);
    }
  }
}

void sub_29D84407C(void *a1, id a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_29D843854(a1, a2);
}

uint64_t sub_29D844084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D84409C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = a1;
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136446722;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2050;
    v14 = [v5 status];

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v15 = v5;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Received new state with status %{public}ld: %@", v8, 0x20u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v2 + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));
  v20 = v5;
  v21 = 0;
  v18 = v5;
  sub_29D9382B8();
}

void sub_29D8442D4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = a1;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446466;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Failed to get retrocompute state: %@", v8, 0x16u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));
  v19 = a1;
  v20 = 1;
  v18 = a1;
  sub_29D9382B8();
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController()
{
  result = qword_2A17B6468;
  if (!qword_2A17B6468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8445A0()
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

  v15 = *(v1 + qword_2A17B6458);
  v16 = *(v15 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  LOBYTE(v15) = *(v15 + 40);
  v18 = v16;
  sub_29D8B530C(2, 12, v15, 0, 2);

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

void sub_29D844884(void *a1)
{
  v1 = a1;
  sub_29D8445A0();
}

id sub_29D8448CC()
{
  v1 = qword_2A17B6460;
  v2 = *&v0[qword_2A17B6460];
  if (v2)
  {
    v3 = *&v0[qword_2A17B6460];
  }

  else
  {
    sub_29D844930(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D844930(void *a1)
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
  sub_29D88BBC8(&unk_2A243E968);
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

void sub_29D844B54()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  sub_29D88BBC8(&unk_2A243E9A8);
  v3 = sub_29D939F18();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v5 = sub_29D939D28();

  sub_29D9334A8();
  v6 = sub_29D939D28();

  sub_29D88BBC8(&unk_2A243E9E8);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v9 = sub_29D939D28();

  v10 = [v1 headerView];
  v11 = sub_29D8448CC();
  [v10 addAccessoryButton_];

  v12 = [v1 navigationItem];
  v13 = [v12 rightBarButtonItem];

  if (!v13)
  {
    goto LABEL_8;
  }

  sub_29D88BBC8(&unk_2A243EA28);
  v14 = sub_29D939F18();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v16 = sub_29D939D28();

    [v13 setAccessibilityIdentifier_];

LABEL_8:
    v17 = [v1 scrollView];
    sub_29D88BBC8(&unk_2A243EA68);
    v18 = sub_29D939F18();
    v19 = HKUIJoinStringsForAutomationIdentifier();

    if (v19)
    {
      sub_29D939D68();

      swift_arrayDestroy();
      v20 = sub_29D939D28();

      [v17 setAccessibilityIdentifier_];

      v21 = [v1 headerView];
      sub_29D88BBC8(&unk_2A243EAA8);
      v22 = sub_29D939F18();
      v23 = HKUIJoinStringsForAutomationIdentifier();

      if (v23)
      {
        sub_29D939D68();

        swift_arrayDestroy();
        v24 = sub_29D939D28();

        [v21 setTitleAccessibilityIdentifier_];

        v25 = [v1 headerView];
        sub_29D88BBC8(&unk_2A243EAE8);
        v26 = sub_29D939F18();
        v27 = HKUIJoinStringsForAutomationIdentifier();

        if (v27)
        {
          sub_29D939D68();

          swift_arrayDestroy();
          v28 = sub_29D939D28();

          [v25 setDetailTextAccessibilityIdentifier_];

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

void sub_29D8451B0(void *a1)
{
  v1 = a1;
  sub_29D844B54();
}

void sub_29D8451F8(void *a1)
{
  v1 = a1;
  sub_29D845248(0, 9);
}

uint64_t sub_29D845248(char a1, char a2)
{
  v4 = v2;
  v2[qword_2A17B6448] = a1;
  v5 = *&v2[qword_2A17B6458];
  v6 = *(v5 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  LOBYTE(v5) = *(v5 + 40);
  v8 = v6;
  sub_29D8B530C(2, a2, v5, 0, 2);

  v10 = *&v2[qword_2A17B6450];
  if (v10)
  {
    v11 = *&v4[qword_2A17B6450];
    swift_unknownObjectRetain();
    sub_29D8A47B4(v4, v10);

    return sub_29D936978();
  }

  return result;
}

void sub_29D845328(void *a1)
{
  v1 = a1;
  sub_29D845248(1, 8);
}

void sub_29D8453A8()
{
  v1 = *(v0 + qword_2A17B6450);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B6458);

  v3 = *(v0 + qword_2A17B6460);
}

id sub_29D8453F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D845430(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B6450);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B6458);

  v4 = *(a1 + qword_2A17B6460);
}

uint64_t sub_29D845494(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B6450);
  v4 = *(v2 + qword_2A17B6450);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8454B0(uint64_t a1)
{
  *(v1 + qword_2A17B6448) = 0;
  v2 = (v1 + qword_2A17B6450);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_2A17B6460) = 0;
  *(v1 + qword_2A17B6458) = a1;
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

void sub_29D845690()
{
  sub_29D84A440(319, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

unint64_t sub_29D845758(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD00000000000001BLL;
    if (a1 == 2)
    {
      v4 = 0xD00000000000001ALL;
    }

    v5 = 0xD000000000000011;
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6E6F697463416F6ELL;
    if (a1 == 7)
    {
      v1 = 0xD000000000000023;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000022;
    }

    v2 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v2 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29D84588C(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29D84B3A4(0, &qword_2A17B6590, sub_29D84B05C, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO18NoActionCodingKeysON, MEMORY[0x29EDC9E88]);
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v101 = &v83 - v6;
  sub_29D84B3A4(0, &qword_2A17B6598, sub_29D84B0B0, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO45OpenSeedExpiredKnowledgeBaseArticleCodingKeysON, v2);
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v98 = &v83 - v10;
  sub_29D84B3A4(0, &qword_2A17B65A0, sub_29D84B104, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO44OpenRegionGateKnowledgeBaseArticleCodingKeysON, v2);
  v97 = v11;
  v96 = *(v11 - 8);
  v12 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v95 = &v83 - v14;
  sub_29D84B3A4(0, &qword_2A17B65A8, sub_29D84B158, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO41OpenGeneralKnowledgeBaseArticleCodingKeysON, v2);
  v94 = v15;
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v92 = &v83 - v18;
  sub_29D84B3A4(0, &qword_2A17B65B0, sub_29D84B1AC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO39DeepLinkToWristDetectSettingsCodingKeysON, v2);
  v91 = v19;
  v90 = *(v19 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v89 = &v83 - v22;
  sub_29D84B3A4(0, &qword_2A17B65B8, sub_29D84B200, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO37DeepLinkToHeartRateSettingsCodingKeysON, v2);
  v111 = *(v23 - 8);
  v112 = v23;
  v24 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v110 = &v83 - v26;
  sub_29D84B3A4(0, &qword_2A17B65C0, sub_29D84B254, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO36PushEnabledFeatureSettingsCodingKeysON, v2);
  v88 = v27;
  v85 = *(v27 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v109 = &v83 - v30;
  sub_29D84B3A4(0, &qword_2A17B65C8, sub_29D84B2A8, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO32PresentFeatureSettingsCodingKeysON, v2);
  v87 = v31;
  v84 = *(v31 - 8);
  v32 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v108 = &v83 - v34;
  v104 = _s14descr2A243C641C15SettingsContentVMa();
  v35 = *(*(v104 - 8) + 64);
  v37 = MEMORY[0x2A1C7C4A8](v104, v36);
  v107 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v106 = &v83 - v40;
  sub_29D84B3A4(0, &qword_2A17B65D0, sub_29D84B2FC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO27PresentOnboardingCodingKeysON, v2);
  v86 = v41;
  v105 = *(v41 - 8);
  v42 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v45 = &v83 - v44;
  v46 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v46, v48);
  v50 = &v83 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D84B3A4(0, &qword_2A17B65D8, sub_29D84B350, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysON, v2);
  v52 = v51;
  v115 = *(v51 - 8);
  v53 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v51, v54);
  v56 = &v83 - v55;
  v57 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D84B350();
  v114 = v56;
  sub_29D93AED8();
  sub_29D84AD5C(v113, v50, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v120 = 4;
        sub_29D84B1AC();
        v74 = v89;
        v59 = v114;
        sub_29D93ACA8();
        v75 = *(v90 + 8);
        v76 = v74;
        v77 = &v125;
      }

      else
      {
        v121 = 5;
        sub_29D84B158();
        v82 = v92;
        v59 = v114;
        sub_29D93ACA8();
        v75 = *(v93 + 8);
        v76 = v82;
        v77 = &v126;
      }

      v75(v76, *(v77 - 32));
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v122 = 6;
      sub_29D84B104();
      v78 = v95;
      v59 = v114;
      sub_29D93ACA8();
      (*(v96 + 8))(v78, v97);
    }

    else
    {
      v59 = v114;
      if (EnumCaseMultiPayload == 7)
      {
        v123 = 7;
        sub_29D84B0B0();
        v60 = v98;
        sub_29D93ACA8();
        v62 = v99;
        v61 = v100;
      }

      else
      {
        v124 = 8;
        sub_29D84B05C();
        v60 = v101;
        sub_29D93ACA8();
        v62 = v102;
        v61 = v103;
      }

      (*(v62 + 8))(v60, v61);
    }

    return (*(v115 + 8))(v59, v52);
  }

  v63 = v105;
  v64 = v108;
  v65 = v110;
  v66 = v111;
  v67 = v109;
  v68 = v112;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v116 = 0;
      sub_29D84B2FC();
      v59 = v114;
      sub_29D93ACA8();
      (*(v63 + 8))(v45, v86);
    }

    else
    {
      v119 = 3;
      sub_29D84B200();
      v81 = v65;
      v59 = v114;
      sub_29D93ACA8();
      (*(v66 + 8))(v81, v68);
    }

    return (*(v115 + 8))(v59, v52);
  }

  v69 = v52;
  if (EnumCaseMultiPayload)
  {
    v70 = v107;
    sub_29D84A5A4(v50, v107, _s14descr2A243C641C15SettingsContentVMa);
    v118 = 2;
    sub_29D84B254();
    v72 = v114;
    sub_29D93ACA8();
    sub_29D84A3D8(&qword_2A17B65E0, _s14descr2A243C641C15SettingsContentVMa);
    v79 = v88;
    sub_29D93AD18();
    (*(v85 + 8))(v67, v79);
  }

  else
  {
    v70 = v106;
    sub_29D84A5A4(v50, v106, _s14descr2A243C641C15SettingsContentVMa);
    v117 = 1;
    sub_29D84B2A8();
    v71 = v64;
    v72 = v114;
    sub_29D93ACA8();
    sub_29D84A3D8(&qword_2A17B65E0, _s14descr2A243C641C15SettingsContentVMa);
    v73 = v87;
    sub_29D93AD18();
    (*(v84 + 8))(v71, v73);
  }

  sub_29D84B470(v70, _s14descr2A243C641C15SettingsContentVMa);
  return (*(v115 + 8))(v72, v69);
}

uint64_t sub_29D8464F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29D84B3A4(0, &qword_2A17B64E8, sub_29D84B05C, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO18NoActionCodingKeysON, MEMORY[0x29EDC9E80]);
  v125 = *(v4 - 8);
  v126 = v4;
  v5 = *(v125 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v136 = &v105 - v7;
  sub_29D84B3A4(0, &qword_2A17B64F8, sub_29D84B0B0, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO45OpenSeedExpiredKnowledgeBaseArticleCodingKeysON, v3);
  v123 = *(v8 - 8);
  v124 = v8;
  v9 = *(v123 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v132 = &v105 - v11;
  sub_29D84B3A4(0, &qword_2A17B6508, sub_29D84B104, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO44OpenRegionGateKnowledgeBaseArticleCodingKeysON, v3);
  v122 = v12;
  v121 = *(v12 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v131 = &v105 - v15;
  sub_29D84B3A4(0, &qword_2A17B6518, sub_29D84B158, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO41OpenGeneralKnowledgeBaseArticleCodingKeysON, v3);
  v120 = v16;
  v119 = *(v16 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v135 = &v105 - v19;
  sub_29D84B3A4(0, &qword_2A17B6528, sub_29D84B1AC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO39DeepLinkToWristDetectSettingsCodingKeysON, v3);
  v118 = v20;
  v117 = *(v20 - 8);
  v21 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v130 = &v105 - v23;
  sub_29D84B3A4(0, &qword_2A17B6538, sub_29D84B200, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO37DeepLinkToHeartRateSettingsCodingKeysON, v3);
  v114 = v24;
  v113 = *(v24 - 8);
  v25 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v128 = &v105 - v27;
  sub_29D84B3A4(0, &qword_2A17B6548, sub_29D84B254, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO36PushEnabledFeatureSettingsCodingKeysON, v3);
  v116 = v28;
  v115 = *(v28 - 8);
  v29 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v129 = &v105 - v31;
  sub_29D84B3A4(0, &qword_2A17B6558, sub_29D84B2A8, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO32PresentFeatureSettingsCodingKeysON, v3);
  v112 = v32;
  v111 = *(v32 - 8);
  v33 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v134 = &v105 - v35;
  sub_29D84B3A4(0, &qword_2A17B6568, sub_29D84B2FC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO27PresentOnboardingCodingKeysON, v3);
  v110 = v36;
  v109 = *(v36 - 8);
  v37 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v127 = &v105 - v39;
  sub_29D84B3A4(0, &qword_2A17B6578, sub_29D84B350, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysON, v3);
  v41 = v40;
  v133 = *(v40 - 8);
  v42 = *(v133 + 64);
  MEMORY[0x2A1C7C4A8](v40, v43);
  v45 = &v105 - v44;
  v46 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v47 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v51 = &v105 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x2A1C7C4A8](v49, v52);
  v55 = &v105 - v54;
  MEMORY[0x2A1C7C4A8](v53, v56);
  v58 = &v105 - v57;
  v59 = a1;
  v61 = a1[3];
  v60 = a1[4];
  v138 = v59;
  sub_29D693E2C(v59, v61);
  sub_29D84B350();
  v62 = v139;
  sub_29D93AEC8();
  if (v62)
  {
    return sub_29D69417C(v138);
  }

  v106 = v55;
  v107 = v51;
  v64 = v134;
  v63 = v135;
  v139 = 0;
  v65 = v136;
  v66 = v46;
  v108 = v58;
  v67 = v133;
  v68 = v137;
  v69 = sub_29D93AC98();
  v70 = (2 * *(v69 + 16)) | 1;
  v140 = v69;
  v141 = v69 + 32;
  v142 = 0;
  v143 = v70;
  v71 = sub_29D872890();
  v72 = v41;
  v73 = v45;
  if (v71 == 9 || v142 != v143 >> 1)
  {
    v80 = sub_29D93AA78();
    swift_allocError();
    v82 = v81;
    sub_29D6CA748();
    v84 = *(v83 + 48);
    *v82 = v66;
    v85 = v72;
    sub_29D93AC18();
    sub_29D93AA58();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x29EDC9DB8], v80);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v71 > 3u)
  {
    if (v71 <= 5u)
    {
      v74 = v68;
      if (v71 == 4)
      {
        v144 = 4;
        sub_29D84B1AC();
        v94 = v130;
        v77 = v72;
        v95 = v139;
        sub_29D93AC08();
        if (!v95)
        {
          (*(v117 + 8))(v94, v118);
          (*(v67 + 8))(v73, v72);
          sub_29D936978();
          v79 = v108;
          swift_storeEnumTagMultiPayload();
          goto LABEL_38;
        }
      }

      else
      {
        v144 = 5;
        sub_29D84B158();
        v102 = v63;
        v77 = v72;
        v103 = v139;
        sub_29D93AC08();
        if (!v103)
        {
          (*(v119 + 8))(v102, v120);
          (*(v67 + 8))(v73, v72);
          sub_29D936978();
          v79 = v108;
          swift_storeEnumTagMultiPayload();
          goto LABEL_38;
        }
      }
    }

    else
    {
      v74 = v68;
      v75 = v67;
      if (v71 != 6)
      {
        if (v71 == 7)
        {
          v144 = 7;
          sub_29D84B0B0();
          v76 = v132;
          v77 = v72;
          v78 = v139;
          sub_29D93AC08();
          if (!v78)
          {
            (*(v123 + 8))(v76, v124);
            (*(v67 + 8))(v73, v72);
            sub_29D936978();
            v79 = v108;
            swift_storeEnumTagMultiPayload();
LABEL_38:
            v104 = v138;
            goto LABEL_39;
          }

          goto LABEL_25;
        }

        v144 = 8;
        sub_29D84B05C();
        v91 = v72;
        v101 = v139;
        sub_29D93AC08();
        if (!v101)
        {
          (*(v125 + 8))(v65, v126);
          (*(v75 + 8))(v73, v72);
          sub_29D936978();
          v79 = v108;
          swift_storeEnumTagMultiPayload();
          goto LABEL_38;
        }

LABEL_31:
        (*(v75 + 8))(v73, v91);
        goto LABEL_12;
      }

      v144 = 6;
      sub_29D84B104();
      v96 = v131;
      v77 = v72;
      v97 = v139;
      sub_29D93AC08();
      if (!v97)
      {
        (*(v121 + 8))(v96, v122);
        (*(v67 + 8))(v73, v72);
        sub_29D936978();
        v79 = v108;
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      }
    }

LABEL_25:
    (*(v67 + 8))(v73, v77);
    goto LABEL_12;
  }

  if (v71 <= 1u)
  {
    v74 = v68;
    v87 = v139;
    if (!v71)
    {
      v144 = 0;
      sub_29D84B2FC();
      v88 = v127;
      v77 = v72;
      sub_29D93AC08();
      if (!v87)
      {
        (*(v109 + 8))(v88, v110);
        (*(v67 + 8))(v73, v72);
        sub_29D936978();
        v79 = v108;
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      }

      goto LABEL_25;
    }

    v136 = v66;
    v144 = 1;
    sub_29D84B2A8();
    v85 = v72;
    sub_29D93AC08();
    if (!v87)
    {
      v139 = v72;
      _s14descr2A243C641C15SettingsContentVMa();
      sub_29D84A3D8(&qword_2A17B6588, _s14descr2A243C641C15SettingsContentVMa);
      v98 = v106;
      v99 = v112;
      sub_29D93AC88();
      (*(v111 + 8))(v64, v99);
      (*(v67 + 8))(v73, v139);
      sub_29D936978();
      swift_storeEnumTagMultiPayload();
      v79 = v108;
      sub_29D84A5A4(v98, v108, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      goto LABEL_38;
    }

LABEL_11:
    (*(v67 + 8))(v73, v85);
LABEL_12:
    sub_29D936978();
    return sub_29D69417C(v138);
  }

  v75 = v67;
  v89 = v139;
  if (v71 == 2)
  {
    v144 = 2;
    sub_29D84B254();
    v90 = v129;
    v91 = v72;
    sub_29D93AC08();
    if (v89)
    {
      goto LABEL_31;
    }

    v139 = v72;
    _s14descr2A243C641C15SettingsContentVMa();
    sub_29D84A3D8(&qword_2A17B6588, _s14descr2A243C641C15SettingsContentVMa);
    v92 = v107;
    v93 = v116;
    sub_29D93AC88();
    (*(v115 + 8))(v90, v93);
    (*(v75 + 8))(v73, v139);
    sub_29D936978();
    swift_storeEnumTagMultiPayload();
    v79 = v108;
    sub_29D84A5A4(v92, v108, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  }

  else
  {
    v144 = 3;
    sub_29D84B200();
    v100 = v128;
    v91 = v72;
    sub_29D93AC08();
    if (v89)
    {
      goto LABEL_31;
    }

    (*(v113 + 8))(v100, v114);
    (*(v75 + 8))(v73, v72);
    sub_29D936978();
    v79 = v108;
    swift_storeEnumTagMultiPayload();
  }

  v104 = v138;
  v74 = v68;
LABEL_39:
  sub_29D84A5A4(v79, v74, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  return sub_29D69417C(v104);
}

uint64_t sub_29D84761C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D84B3A4(0, &qword_2A17B64D8, sub_29D84B008, &_s14descr2A243C641C13ActionHandlerC8UserDataV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v23 - v11;
  v13 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D84B008();
  v19 = v27;
  sub_29D93AEC8();
  if (!v19)
  {
    v20 = v25;
    sub_29D84A3D8(&qword_2A17B64E0, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    v21 = v26;
    sub_29D93AC88();
    (*(v20 + 8))(v12, v8);
    sub_29D84A5A4(v21, v17, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D84A5A4(v17, v24, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  }

  return sub_29D69417C(a1);
}

uint64_t sub_29D8478DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D84AA7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D847910(uint64_t a1)
{
  v2 = sub_29D84B350();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D84794C(uint64_t a1)
{
  v2 = sub_29D84B350();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847988(uint64_t a1)
{
  v2 = sub_29D84B200();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8479C4(uint64_t a1)
{
  v2 = sub_29D84B200();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847A00(uint64_t a1)
{
  v2 = sub_29D84B1AC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847A3C(uint64_t a1)
{
  v2 = sub_29D84B1AC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847A78(uint64_t a1)
{
  v2 = sub_29D84B05C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847AB4(uint64_t a1)
{
  v2 = sub_29D84B05C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847AF0(uint64_t a1)
{
  v2 = sub_29D84B158();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847B2C(uint64_t a1)
{
  v2 = sub_29D84B158();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847B68(uint64_t a1)
{
  v2 = sub_29D84B104();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847BA4(uint64_t a1)
{
  v2 = sub_29D84B104();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847BE0(uint64_t a1)
{
  v2 = sub_29D84B0B0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847C1C(uint64_t a1)
{
  v2 = sub_29D84B0B0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847C58(uint64_t a1)
{
  v2 = sub_29D84B2A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847C94(uint64_t a1)
{
  v2 = sub_29D84B2A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847CD0(uint64_t a1)
{
  v2 = sub_29D84B2FC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847D0C(uint64_t a1)
{
  v2 = sub_29D84B2FC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000029D968260 == a2)
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

uint64_t sub_29D847DDC(uint64_t a1)
{
  v2 = sub_29D84B254();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847E18(uint64_t a1)
{
  v2 = sub_29D84B254();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847E88(uint64_t a1)
{
  v2 = sub_29D84B008();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847EC4(uint64_t a1)
{
  v2 = sub_29D84B008();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847F18(void *a1)
{
  sub_29D84B3A4(0, &qword_2A17B64C0, sub_29D84B008, &_s14descr2A243C641C13ActionHandlerC8UserDataV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D84B008();
  sub_29D93AED8();
  _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  sub_29D84A3D8(&qword_2A17B64D0, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  sub_29D93AD18();
  return (*(v4 + 8))(v8, v3);
}

id sub_29D8480C4()
{
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_2A17B6478;
  if (*(v0 + qword_2A17B6478))
  {
    v8 = *(v0 + qword_2A17B6478);
  }

  else
  {
    v9 = *MEMORY[0x29EDBA6B0];
    v10 = v0;
    sub_29D936B88();
    sub_29D936608();
    (*(v2 + 8))(v6, v1);
    sub_29D693E2C(v16, v16[3]);
    v11 = sub_29D936588();
    v12 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v9 healthStore:v11];

    sub_29D69417C(v16);
    v13 = *(v10 + v7);
    *(v10 + v7) = v12;
    v8 = v12;
    sub_29D936978();
  }

  swift_unknownObjectRetain();
  return v8;
}

uint64_t sub_29D848244@<X0>(void *a1@<X8>)
{
  v3 = qword_2A17B6480;
  swift_beginAccess();
  sub_29D7C0420(v1 + v3, &v5);
  if (v6)
  {
    return sub_29D679D3C(&v5, a1);
  }

  sub_29D7C0518(&v5);
  sub_29D8482FC(a1);
  sub_29D6945AC(a1, &v5);
  swift_beginAccess();
  sub_29D772BC0(&v5, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_29D8482FC@<X0>(void *a1@<X8>)
{
  v2 = sub_29D936638();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  (*(v3 + 8))(v7, v2);
  sub_29D693E2C(v15, v15[3]);
  v8 = sub_29D936588();
  v9 = [v8 profileIdentifier];
  v10 = [v9 type];

  if (v10 == 1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v8];

    sub_29D69417C(v15);
    if (v11)
    {
      result = sub_29D6B8230();
      v13 = MEMORY[0x29EDC2EA8];
      a1[3] = result;
      a1[4] = v13;
      *a1 = v11;
      return result;
    }
  }

  else
  {

    sub_29D69417C(v15);
  }

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D8484EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D84A440(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v22[-v16];
  v18 = qword_2A17B6488;
  swift_beginAccess();
  sub_29D84ADCC(v1 + v18, v17);
  v19 = sub_29D934C58();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return (*(v20 + 32))(a1, v17, v19);
  }

  sub_29D84A4B4(v17, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  sub_29D936B88();
  sub_29D9347B8();
  (*(v4 + 8))(v8, v3);
  (*(v20 + 16))(v14, a1, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  swift_beginAccess();
  sub_29D84AE4C(v14, v1 + v18);
  return swift_endAccess();
}

uint64_t sub_29D848788()
{
  ObjectType = swift_getObjectType();
  v179 = sub_29D9346B8();
  v177 = *(v179 - 8);
  v1 = *(v177 + 64);
  MEMORY[0x2A1C7C4A8](v179, v2);
  v176 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C75C();
  v174 = *(v4 - 8);
  v175 = v4;
  v5 = *(v174 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v173 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934C58();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v181 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s14descr2A243C641C15SettingsContentVMa();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v180 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v178 = &v170 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v185 = (&v170 - v21);
  v172 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v22 = *(*(v172 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v172, v23);
  v182 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v183 = &v170 - v27;
  v191 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v28 = *(*(v191 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v191, v29);
  v192 = (&v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_29D936638();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v171 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v39 = &v170 - v38;
  sub_29D84A440(0, &qword_2A17B64A0, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v40 - 8, v42);
  v44 = &v170 - v43;
  v45 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v193 = *(v45 - 8);
  v46 = v193[8];
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v190 = (&v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v48, v49);
  v51 = &v170 - v50;
  v187 = v0;
  sub_29D936B88();
  sub_29D84A3D8(&qword_2A17B64A8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  sub_29D84A3D8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  sub_29D936628();
  v52 = *(v32 + 8);
  v186 = v39;
  v188 = v32 + 8;
  v189 = v31;
  v53 = v31;
  v54 = v193;
  v52(v39, v53);
  if (v54[6](v44, 1, v45) != 1)
  {
    v57 = v52;
    sub_29D84A5A4(v44, v51, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v58, qword_2A1A2BF58);
    v59 = v190;
    sub_29D84AD5C(v51, v190, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v60 = *(v54 + 80);
    v184 = v51;
    v61 = (v60 + 16) & ~v60;
    v62 = (v46 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v63 + v61;
    v65 = v184;
    sub_29D84A5A4(v59, v64, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    *(v63 + v62) = ObjectType;
    v206[0] = 0;
    sub_29D9371C8();

    v66 = v192;
    sub_29D84AD5C(v65, v192, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v68 = [objc_opt_self() remoteDisabledLinkURL];
          goto LABEL_27;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v68 = [objc_opt_self() seedExpiredLinkURL];
LABEL_27:
          v169 = v68;
          sub_29D939D68();

          sub_29D939DF8();
        }

LABEL_28:
        v146 = v65;
        return sub_29D84B470(v146, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      }

      if (EnumCaseMultiPayload != 4)
      {
        v68 = [objc_opt_self() aFibBurdenDefaultLinkURL];
        goto LABEL_27;
      }

      v147 = MEMORY[0x29EDC1728];
LABEL_25:
      v166 = v176;
      v167 = v177;
      v168 = v179;
      (*(v177 + 104))(v176, *v147, v179);
      sub_29D9346A8();
      (*(v167 + 8))(v166, v168);
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v147 = MEMORY[0x29EDC1720];
        goto LABEL_25;
      }

      v90 = v186;
      sub_29D936B88();
      sub_29D936608();
      v91 = v189;
      v57(v90);
      sub_29D693E2C(v206, v207);
      ObjectType = sub_29D936588();
      sub_29D69417C(v206);
      sub_29D936B88();
      v92 = sub_29D936618();
      (v57)(v90, v91);
      sub_29D93A388();

      sub_29D936B88();
      sub_29D936608();
      (v57)(v90, v91);
      v170 = v57;
      sub_29D693E2C(v204, v205);
      sub_29D9365A8();
      v93 = v171;
      sub_29D936B88();
      sub_29D936608();
      (v57)(v93, v91);
      sub_29D693E2C(v202, v202[3]);
      sub_29D936598();
      swift_storeEnumTagMultiPayload();
      v94 = type metadata accessor for AFibBurdenOnboardingController();
      v95 = objc_allocWithZone(v94);
      *&v95[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
      v95[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = 0;
      v201.receiver = v95;
      v201.super_class = v94;
      v193 = objc_msgSendSuper2(&v201, sel_initWithNibName_bundle_, 0, 0);
      [v193 setModalPresentationStyle_];
      v96 = *MEMORY[0x29EDBA6B0];
      v97 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
      v98 = ObjectType;
      v99 = [v97 initWithFeatureIdentifier:v96 healthStore:ObjectType];
      v100 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:v98];
      v101 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v102 = v99;
      v191 = v102;
      v103 = [v101 initWithFeatureIdentifier:v96 healthStore:v98];
      sub_29D6945AC(v203, &v198);
      v192 = v100;
      v104 = sub_29D71B714(v102, v103, v192, &v198);
      v190 = v104;

      sub_29D6945AC(v206, &v198);
      sub_29D6945AC(v203, &v195);
      type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
      v105 = swift_allocObject();
      sub_29D679D3C(&v198, v105 + 16);
      sub_29D679D3C(&v195, v105 + 64);
      *(v105 + 56) = 2;
      v106 = sub_29D933F18();

      v107 = sub_29D933F08();
      v108 = type metadata accessor for AFibBurdenOnboardingFlowManager();
      v199 = v108;
      v200 = &off_2A244DAB0;
      *&v198 = v104;
      v196 = v106;
      v197 = &off_2A24417F8;
      *&v195 = v107;
      v109 = type metadata accessor for AFibBurdenOnboardingModel();
      v110 = swift_allocObject();
      v111 = sub_29D693DDC(&v198, v108);
      v185 = &v170;
      v112 = *(*(v108 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v111, v111);
      v114 = (&v170 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v115 + 16))(v114);
      v116 = v196;
      v117 = sub_29D693DDC(&v195, v196);
      v118 = *(*(v116 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v117, v117);
      v120 = (&v170 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v121 + 16))(v120);
      v122 = *v114;
      v123 = *v120;
      v110[5] = v108;
      v110[6] = &off_2A244DAB0;
      v110[2] = v122;
      v110[10] = v106;
      v110[11] = &off_2A24417F8;
      v110[7] = v123;
      sub_29D69417C(&v195);
      sub_29D69417C(&v198);
      sub_29D84AD5C(v183, v182, type metadata accessor for AFibBurdenOnboardingPresentationContext);

      v124 = HKHRAFibBurdenLogForCategory();
      v125 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
      v126 = ObjectType;
      v127 = [v125 initWithLoggingCategory:v124 healthDataSource:ObjectType];

      v199 = v109;
      v200 = &off_2A2441928;
      *&v198 = v110;
      v128 = type metadata accessor for AFibBurdenOnboardingCoordinator();
      v129 = *(v128 + 48);
      v130 = *(v128 + 52);
      v131 = swift_allocObject();
      v132 = sub_29D693DDC(&v198, v109);
      v185 = &v170;
      v133 = *(*(v109 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v132, v132);
      v135 = (&v170 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v136 + 16))(v135);
      v137 = *v135;
      v196 = v109;
      v197 = &off_2A2441928;
      *&v195 = v137;
      *(v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
      v138 = v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
      *(v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
      swift_unknownObjectWeakInit();
      sub_29D6945AC(&v195, v131 + 16);
      v139 = v182;
      sub_29D84AD5C(v182, v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext, type metadata accessor for AFibBurdenOnboardingPresentationContext);
      *(v138 + 8) = &off_2A24497D8;
      v140 = v193;
      swift_unknownObjectWeakAssign();

      *(v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v105;
      *(v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v126;
      *(v131 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v127;

      v141 = v126;
      v142 = v127;
      sub_29D862C98();

      sub_29D84B470(v139, type metadata accessor for AFibBurdenOnboardingPresentationContext);
      sub_29D69417C(&v195);
      sub_29D69417C(&v198);

      sub_29D84B470(v183, type metadata accessor for AFibBurdenOnboardingPresentationContext);
      sub_29D69417C(v203);
      sub_29D69417C(v206);
      v143 = *&v140[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator];
      *&v140[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v131;

      sub_29D69417C(v202);
      sub_29D69417C(v204);
      v144 = v186;
      sub_29D936B88();
      v145 = sub_29D936618();
      v170(v144, v189);
      [v145 presentViewController:v140 animated:1 completion:0];
    }

    else
    {
      v170 = v57;
      if (EnumCaseMultiPayload)
      {
        v148 = v66;
        v149 = v180;
        sub_29D84A5A4(v148, v180, _s14descr2A243C641C15SettingsContentVMa);
        ObjectType = type metadata accessor for AFibBurdenSettingsViewController(0);
        sub_29D84AD5C(v149, v185, _s14descr2A243C641C15SettingsContentVMa);
        v150 = sub_29D8480C4();
        sub_29D848244(v206);
        v151 = v186;
        sub_29D936B88();
        sub_29D936608();
        (v57)(v151, v189);
        sub_29D693E2C(v204, v205);
        v152 = sub_29D936588();
        sub_29D69417C(v204);
        v153 = v181;
        sub_29D8484EC(v181);
        v154 = swift_getObjectType();
        v155 = v207;
        v156 = v208;
        v157 = sub_29D693DDC(v206, v207);
        v193 = &v170;
        v158 = *(*(v155 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v157, v157);
        v160 = &v170 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v161 + 16))(v160);
        v162 = sub_29D8CE524(257, v185, v150, v160, v152, v153, 0, ObjectType, v154, v155, v156);

        sub_29D69417C(v206);
        sub_29D936B88();
        v163 = sub_29D936618();
        v170(v151, v189);
        v164 = [v163 navigationController];

        if (v164)
        {
          [v164 pushViewController:v162 animated:1];

          v162 = v164;
        }

        v165 = v184;

        sub_29D84B470(v180, _s14descr2A243C641C15SettingsContentVMa);
        v146 = v165;
        return sub_29D84B470(v146, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      }

      v69 = v66;
      v70 = v185;
      sub_29D84A5A4(v69, v185, _s14descr2A243C641C15SettingsContentVMa);
      v193 = type metadata accessor for AFibBurdenSettingsViewController(0);
      sub_29D84AD5C(v70, v178, _s14descr2A243C641C15SettingsContentVMa);
      v71 = v187;
      v72 = sub_29D8480C4();
      sub_29D848244(v206);
      v73 = v186;
      sub_29D936B88();
      sub_29D936608();
      (v57)(v73, v189);
      sub_29D693E2C(v204, v205);
      v74 = sub_29D936588();
      sub_29D69417C(v204);
      v75 = v181;
      sub_29D8484EC(v181);
      v76 = v72;
      v77 = swift_getObjectType();
      v78 = v207;
      v79 = v208;
      v80 = sub_29D693DDC(v206, v207);
      v192 = &v170;
      v81 = *(*(v78 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v80, v80);
      v83 = &v170 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v84 + 16))(v83);
      v85 = sub_29D8CE524(257, v178, v76, v83, v74, v75, 1, v193, v77, v78, v79);

      sub_29D69417C(v206);
      v86 = *(v71 + qword_2A17B6478);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v87 = v173;
      sub_29D93A408();
      *(swift_allocObject() + 16) = ObjectType;
      sub_29D93A608();
      sub_29D936978();

      (*(v174 + 8))(v87, v175);
      v88 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
      sub_29D936B88();
      v89 = sub_29D936618();
      v170(v73, v189);
      [v89 presentViewController:v88 animated:1 completion:0];

      sub_29D84B470(v185, _s14descr2A243C641C15SettingsContentVMa);
    }

    v146 = v184;
    return sub_29D84B470(v146, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  }

  sub_29D84A4B4(v44, &qword_2A17B64A0, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v55, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v206[0] = 0;
  sub_29D9371F8();
}

uint64_t sub_29D849D80()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D9681A0);
  return 91;
}

uint64_t sub_29D849E14(uint64_t a1)
{
  v2 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
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

  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D968170);
  sub_29D84AD5C(a1, v6, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10;
}

uint64_t sub_29D849F3C(uint64_t result, void *a2, uint64_t a3)
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

uint64_t sub_29D84A024(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D968130);
  v3 = a1;
  sub_29D6B7318(0, &qword_2A17B7AF0, &qword_2A1A24850);
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

uint64_t sub_29D84A114(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  *&v9[qword_2A17B6478] = 0;
  v10 = &v9[qword_2A17B6480];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = qword_2A17B6488;
  v12 = sub_29D934C58();
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  (*(v4 + 16))(v8, a1, v3);
  v13 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v13;
}

uint64_t sub_29D84A280()
{
  v1 = *(v0 + qword_2A17B6478);
  sub_29D936978();
  sub_29D7C0518(v0 + qword_2A17B6480);
  return sub_29D84A4B4(v0 + qword_2A17B6488, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
}

id sub_29D84A2E0()
{
  v2.receiver = v0;
  v2.super_class = _s14descr2A243C641C13ActionHandlerCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D84A318(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B6478);
  sub_29D936978();
  sub_29D7C0518(a1 + qword_2A17B6480);
  return sub_29D84A4B4(a1 + qword_2A17B6488, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
}

uint64_t sub_29D84A3D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D84A440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D84A4B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D84A440(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D84A518()
{
  v1 = *(_s14descr2A243C641C13ActionHandlerC8UserDataVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D849E14(v0 + v2);
}

uint64_t sub_29D84A5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_29D84A60C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C15SettingsContentVMa();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v41 - v11;
  v13 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v41 - v20;
  sub_29D84B40C();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 56);
  sub_29D84AD5C(a1, v27, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  sub_29D84AD5C(a2, &v27[v28], _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v32 = swift_getEnumCaseMultiPayload();
        v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
        if (v32 != 2)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v37 = swift_getEnumCaseMultiPayload();
      v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
      if (v37 == 3)
      {
        goto LABEL_23;
      }

LABEL_25:
      v35 = 0;
      v31 = sub_29D84B40C;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload)
    {
      sub_29D84AD5C(v27, v18, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      sub_29D84A5A4(&v27[v28], v9, _s14descr2A243C641C15SettingsContentVMa);
      v35 = sub_29D87CE34(v18, v9);
      sub_29D84B470(v9, _s14descr2A243C641C15SettingsContentVMa);
      v36 = v18;
    }

    else
    {
      sub_29D84AD5C(v27, v21, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      if (swift_getEnumCaseMultiPayload())
      {
        v18 = v21;
LABEL_21:
        sub_29D84B470(v18, _s14descr2A243C641C15SettingsContentVMa);
        goto LABEL_25;
      }

      sub_29D84A5A4(&v27[v28], v12, _s14descr2A243C641C15SettingsContentVMa);
      v35 = sub_29D87CE34(v21, v12);
      sub_29D84B470(v12, _s14descr2A243C641C15SettingsContentVMa);
      v36 = v21;
    }

    sub_29D84B470(v36, _s14descr2A243C641C15SettingsContentVMa);
    v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v33 = swift_getEnumCaseMultiPayload();
      v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
      if (v33 != 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v40 = swift_getEnumCaseMultiPayload();
      v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
      if (v40 != 5)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v34 = swift_getEnumCaseMultiPayload();
    v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
    if (v34 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v38 = swift_getEnumCaseMultiPayload();
    v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
    if (v38 == 8)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v30 = swift_getEnumCaseMultiPayload();
  v31 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
  if (v30 != 7)
  {
    goto LABEL_25;
  }

LABEL_23:
  v35 = 1;
LABEL_26:
  sub_29D84B470(v27, v31);
  return v35;
}

uint64_t sub_29D84AA7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029D9597F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029D961DD0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029D961DF0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000029D961E10 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000029D968280 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000029D9682A0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000022 && 0x800000029D9682C0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x800000029D9682F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697463416F6ELL && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_29D84AD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D84ADCC(uint64_t a1, uint64_t a2)
{
  sub_29D84A440(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D84AE4C(uint64_t a1, uint64_t a2)
{
  sub_29D84A440(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D84AEF4()
{
  result = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D84AF60()
{
  sub_29D84AFC0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_29D84AFC0()
{
  if (!qword_2A1A241F0[0])
  {
    v0 = _s14descr2A243C641C15SettingsContentVMa();
    if (!v1)
    {
      atomic_store(v0, qword_2A1A241F0);
    }
  }
}

unint64_t sub_29D84B008()
{
  result = qword_2A17B64C8;
  if (!qword_2A17B64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B64C8);
  }

  return result;
}

unint64_t sub_29D84B05C()
{
  result = qword_2A17B64F0;
  if (!qword_2A17B64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B64F0);
  }

  return result;
}

unint64_t sub_29D84B0B0()
{
  result = qword_2A17B6500;
  if (!qword_2A17B6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6500);
  }

  return result;
}

unint64_t sub_29D84B104()
{
  result = qword_2A17B6510;
  if (!qword_2A17B6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6510);
  }

  return result;
}

unint64_t sub_29D84B158()
{
  result = qword_2A17B6520;
  if (!qword_2A17B6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6520);
  }

  return result;
}

unint64_t sub_29D84B1AC()
{
  result = qword_2A17B6530;
  if (!qword_2A17B6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6530);
  }

  return result;
}

unint64_t sub_29D84B200()
{
  result = qword_2A17B6540;
  if (!qword_2A17B6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6540);
  }

  return result;
}

unint64_t sub_29D84B254()
{
  result = qword_2A17B6550;
  if (!qword_2A17B6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6550);
  }

  return result;
}

unint64_t sub_29D84B2A8()
{
  result = qword_2A17B6560;
  if (!qword_2A17B6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6560);
  }

  return result;
}

unint64_t sub_29D84B2FC()
{
  result = qword_2A17B6570;
  if (!qword_2A17B6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6570);
  }

  return result;
}

unint64_t sub_29D84B350()
{
  result = qword_2A17B6580;
  if (!qword_2A17B6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6580);
  }

  return result;
}

void sub_29D84B3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29D84B40C()
{
  if (!qword_2A17B65E8)
  {
    _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B65E8);
    }
  }
}

uint64_t sub_29D84B470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D84B6C4()
{
  result = qword_2A17B65F0;
  if (!qword_2A17B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B65F0);
  }

  return result;
}

unint64_t sub_29D84B71C()
{
  result = qword_2A17B65F8;
  if (!qword_2A17B65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B65F8);
  }

  return result;
}

unint64_t sub_29D84B774()
{
  result = qword_2A17B6600;
  if (!qword_2A17B6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6600);
  }

  return result;
}

unint64_t sub_29D84B7CC()
{
  result = qword_2A17B6608;
  if (!qword_2A17B6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6608);
  }

  return result;
}

unint64_t sub_29D84B824()
{
  result = qword_2A17B6610;
  if (!qword_2A17B6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6610);
  }

  return result;
}

unint64_t sub_29D84B87C()
{
  result = qword_2A17B6618;
  if (!qword_2A17B6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6618);
  }

  return result;
}

unint64_t sub_29D84B8D4()
{
  result = qword_2A17B6620;
  if (!qword_2A17B6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6620);
  }

  return result;
}

unint64_t sub_29D84B92C()
{
  result = qword_2A17B6628;
  if (!qword_2A17B6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6628);
  }

  return result;
}

unint64_t sub_29D84B984()
{
  result = qword_2A17B6630;
  if (!qword_2A17B6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6630);
  }

  return result;
}

unint64_t sub_29D84B9DC()
{
  result = qword_2A17B6638;
  if (!qword_2A17B6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6638);
  }

  return result;
}

unint64_t sub_29D84BA34()
{
  result = qword_2A17B6640;
  if (!qword_2A17B6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6640);
  }

  return result;
}

unint64_t sub_29D84BA8C()
{
  result = qword_2A17B6648;
  if (!qword_2A17B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6648);
  }

  return result;
}

unint64_t sub_29D84BAE4()
{
  result = qword_2A17B6650;
  if (!qword_2A17B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6650);
  }

  return result;
}

unint64_t sub_29D84BB3C()
{
  result = qword_2A17B6658;
  if (!qword_2A17B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6658);
  }

  return result;
}

unint64_t sub_29D84BB94()
{
  result = qword_2A17B6660;
  if (!qword_2A17B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6660);
  }

  return result;
}

unint64_t sub_29D84BBEC()
{
  result = qword_2A17B6668;
  if (!qword_2A17B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6668);
  }

  return result;
}

unint64_t sub_29D84BC44()
{
  result = qword_2A17B6670;
  if (!qword_2A17B6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6670);
  }

  return result;
}

unint64_t sub_29D84BC9C()
{
  result = qword_2A17B6678;
  if (!qword_2A17B6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6678);
  }

  return result;
}

unint64_t sub_29D84BCF4()
{
  result = qword_2A17B6680;
  if (!qword_2A17B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6680);
  }

  return result;
}

unint64_t sub_29D84BD4C()
{
  result = qword_2A17B6688;
  if (!qword_2A17B6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6688);
  }

  return result;
}

unint64_t sub_29D84BDA4()
{
  result = qword_2A17B6690;
  if (!qword_2A17B6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6690);
  }

  return result;
}

unint64_t sub_29D84BDFC()
{
  result = qword_2A17B6698;
  if (!qword_2A17B6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6698);
  }

  return result;
}

unint64_t sub_29D84BE54()
{
  result = qword_2A17B66A0;
  if (!qword_2A17B66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66A0);
  }

  return result;
}

unint64_t sub_29D84BEAC()
{
  result = qword_2A17B66A8;
  if (!qword_2A17B66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66A8);
  }

  return result;
}

unint64_t sub_29D84BF04()
{
  result = qword_2A17B66B0;
  if (!qword_2A17B66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66B0);
  }

  return result;
}

unint64_t sub_29D84BF5C()
{
  result = qword_2A17B66B8;
  if (!qword_2A17B66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66B8);
  }

  return result;
}

uint64_t sub_29D84C058()
{
  v0 = sub_29D9376E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  sub_29D9376B8();
  return sub_29D93A6A8();
}

uint64_t sub_29D84C148()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D84C218()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v154 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_29D939D18();
  v155 = *(v141 - 8);
  v4 = *(v155 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v141, v5);
  v144 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v129 - v9;
  v11 = sub_29D9376E8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v145 = sub_29D934548();
  v14 = *(v145 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v146 = *(v14 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D94E3B0;
  v132 = v16;
  v17 = v16 + v15;
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2C038;
  sub_29D9376B8();
  *v17 = sub_29D93A6A8();
  *(v17 + 8) = 0;
  v19 = *MEMORY[0x29EDC1608];
  v20 = *(v14 + 104);
  v150 = v14 + 104;
  v151 = v20;
  (v20)(v17, v19, v145);
  sub_29D939D08();
  v21 = v17;
  if (qword_2A17B0DA0 != -1)
  {
    swift_once();
  }

  v22 = (v17 + v146);
  v24 = qword_2A17D0FA0;
  v23 = *algn_2A17D0FA8;
  v25 = qword_2A17D0FB0;
  v26 = v155;
  v147 = *(v155 + 16);
  v148 = qword_2A17D0FA0;
  v149 = v155 + 16;
  v27 = v141;
  v147(v144, v10, v141);
  v153 = v25;
  sub_29D935E88();
  v140 = v24;
  sub_29D933A98();
  v142 = v23;
  v28 = sub_29D939D98();
  v29 = v26;
  v31 = v30;
  v32 = *(v29 + 8);
  v155 = v29 + 8;
  v152 = v32;
  v32(v10, v27);
  *v22 = v28;
  v22[1] = v31;
  (v151)(v22, *MEMORY[0x29EDC1610], v145);
  v138 = (2 * v146);
  v143 = v21;
  v33 = (v21 + 2 * v146);
  sub_29D939D08();
  v34 = v147;
  v147(v144, v10, v27);
  sub_29D935E88();
  v140 = v140;
  sub_29D933A98();
  v35 = sub_29D939D98();
  v37 = v36;
  v152(v10, v27);
  *v33 = v35;
  v33[1] = v37;
  v33[2] = 0;
  v139 = *MEMORY[0x29EDC15D0];
  v151(v33);
  v38 = v146;
  v39 = &v138[v146 + v21];
  sub_29D939D08();
  v34(v144, v10, v27);
  sub_29D935E88();
  v138 = v140;
  sub_29D933A98();
  v40 = sub_29D939D98();
  v42 = v41;
  v43 = v27;
  v152(v10, v27);
  *v39 = v40;
  *(v39 + 1) = v42;
  v39[16] = 0;
  LODWORD(v140) = *MEMORY[0x29EDC1630];
  v44 = v145;
  v45 = v151;
  v151(v39);
  v137 = (4 * v38);
  v46 = v143;
  v47 = (v143 + 4 * v38);
  sub_29D939D08();
  v147(v144, v10, v43);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v48 = sub_29D939D98();
  v50 = v49;
  v51 = v141;
  v52 = v152;
  v152(v10, v141);
  *v47 = v48;
  v47[1] = v50;
  v47[2] = 0;
  v45(v47, v139, v44);
  v53 = v146;
  v54 = &v137[v146 + v46];
  sub_29D939D08();
  v147(v144, v10, v51);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v55 = sub_29D939D98();
  v57 = v56;
  v52(v10, v51);
  *v54 = v55;
  *(v54 + 1) = v57;
  v54[16] = 0;
  v58 = v140;
  v59 = v145;
  (v151)(v54, v140, v145);
  v60 = v143 + 6 * v53;
  sub_29D939D08();
  v147(v144, v10, v51);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v61 = sub_29D939D98();
  v63 = v62;
  v64 = v152;
  v152(v10, v51);
  *v60 = v61;
  *(v60 + 8) = v63;
  *(v60 + 16) = 0;
  (v151)(v60, v58, v59);
  v137 = (8 * v146);
  v65 = v143;
  v66 = v143 + 7 * v146;
  sub_29D939D08();
  v67 = v147;
  v147(v144, v10, v51);
  sub_29D935E88();
  v136 = v138;
  sub_29D933A98();
  v68 = sub_29D939D98();
  v70 = v69;
  v71 = v141;
  v64(v10, v141);
  *v66 = v68;
  *(v66 + 8) = v70;
  *(v66 + 16) = 0;
  (v151)(v66, v140, v145);
  v72 = &v137[v65];
  sub_29D84D460();
  v138 = v73;
  v133 = v73[12];
  sub_29D939D08();
  v74 = v144;
  v67(v144, v10, v71);
  sub_29D935E88();
  v131 = v136;
  sub_29D933A98();
  v75 = sub_29D939D98();
  v77 = v76;
  v152(v10, v71);
  *v72 = v75;
  v72[1] = v77;
  v135 = sub_29D9333D8();
  v78 = *(v135 - 8);
  v134 = *(v78 + 56);
  v136 = (v78 + 56);
  v134(v72 + v133, 1, 1, v135);
  LODWORD(v133) = *MEMORY[0x29EDC15F8];
  v79 = v151;
  v151(v72);
  v80 = v146;
  v81 = v143;
  v82 = &v137[v146 + v143];
  v130 = *(v138 + 12);
  sub_29D939D08();
  v147(v74, v10, v71);
  sub_29D935E88();
  v137 = v131;
  sub_29D933A98();
  v83 = sub_29D939D98();
  v85 = v84;
  v152(v10, v71);
  *v82 = v83;
  v82[1] = v85;
  v134(v82 + v130, 1, 1, v135);
  v79(v82, v133, v145);
  v86 = (v81 + 10 * v80);
  v131 = *(v138 + 12);
  sub_29D939D08();
  v87 = v10;
  v88 = v10;
  v89 = v141;
  v147(v144, v87, v141);
  sub_29D935E88();
  v138 = v137;
  sub_29D933A98();
  v90 = sub_29D939D98();
  v92 = v91;
  v93 = v89;
  v152(v88, v89);
  *v86 = v90;
  v86[1] = v92;
  v134(v131 + v86, 1, 1, v135);
  v94 = v145;
  v95 = v151;
  (v151)(v86, v133, v145);
  v96 = v146;
  v97 = (v143 + 11 * v146);
  v98 = v88;
  sub_29D939D08();
  v99 = v144;
  v147(v144, v98, v93);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v100 = sub_29D939D98();
  v102 = v101;
  v103 = v141;
  v152(v98, v141);
  *v97 = v100;
  v97[1] = v102;
  v97[2] = 0;
  v95(v97, v139, v94);
  v104 = v143 + 12 * v96;
  sub_29D939D08();
  v105 = v103;
  v106 = v103;
  v107 = v147;
  v147(v99, v98, v105);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v108 = sub_29D939D98();
  v110 = v109;
  v152(v98, v106);
  *v104 = v108;
  *(v104 + 8) = v110;
  *(v104 + 16) = 0;
  v111 = v140;
  v112 = v145;
  (v151)(v104, v140, v145);
  v113 = v143 + 13 * v146;
  sub_29D939D08();
  v107(v99, v98, v106);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v114 = sub_29D939D98();
  v116 = v115;
  v152(v98, v106);
  *v113 = v114;
  *(v113 + 8) = v116;
  *(v113 + 16) = 0;
  (v151)(v113, v111, v112);
  v117 = (v143 + 14 * v146);
  sub_29D939D08();
  v147(v99, v98, v106);
  sub_29D935E88();
  v138 = v138;
  sub_29D933A98();
  v118 = sub_29D939D98();
  v120 = v119;
  v152(v98, v106);
  *v117 = v118;
  v117[1] = v120;
  v117[2] = 0;
  v121 = v145;
  v122 = v151;
  (v151)(v117, v139, v145);
  v123 = v143 - v146 + 16 * v146;
  sub_29D939D08();
  v147(v99, v98, v106);
  sub_29D935E88();
  v124 = v138;
  sub_29D933A98();
  v125 = sub_29D939D98();
  v127 = v126;
  v152(v98, v106);
  *v123 = v125;
  *(v123 + 8) = v127;
  *(v123 + 16) = 0;
  v122(v123, v140, v121);
  return v132;
}

void sub_29D84D460()
{
  if (!qword_2A17B66C0)
  {
    sub_29D84D4FC(255, &qword_2A17B66C8, MEMORY[0x29EDB9A18], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B66C0);
    }
  }
}

void sub_29D84D4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D84D560()
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
  sub_29D939D08();
  if (qword_2A17B0DA0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A17D0FA0;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

uint64_t sub_29D84D750()
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
  sub_29D939D08();
  if (qword_2A17B0DA0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A17D0FA0;
  (*(v4 + 16))(v9, v12, v3);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v4 + 8))(v12, v3);
  return v15;
}

void sub_29D84D948(void *a1, uint64_t a2)
{
  v66 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_29D937898();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v61 = &v58 - v8;
  v9 = sub_29D936388();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D936378();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v58 - v21;
  v23 = [a1 identifier];
  v24 = sub_29D939D68();
  v26 = v25;

  if (v24 == 0xD00000000000002ALL && 0x800000029D968430 == v26 || (sub_29D93AD78() & 1) != 0 || v24 == 0xD000000000000029 && 0x800000029D968460 == v26 || (sub_29D93AD78() & 1) != 0 || v24 == 0xD00000000000002DLL && 0x800000029D968490 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EACF0(a1, v66);
    return;
  }

  if (v24 == 0xD000000000000031 && 0x800000029D9684C0 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    v27 = sub_29D936338();
    v28 = [v27 viewControllerFactory];

    sub_29D936348();
    v29 = sub_29D936368();
    v30 = objc_allocWithZone(type metadata accessor for AtrialFibrillationDataTypeDetailViewController());
    v31 = v70;
    v32 = v71;
    v33 = sub_29D693DDC(v69, v70);
    v34 = *(*(v31 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v33, v33);
    v36 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36);
    sub_29D782818(v28, v36, v29, v30, v31, v32);
    sub_29D69417C(v69);
    sub_29D936318();
    sub_29D77F4EC(v69);
    return;
  }

  if (v24 == 0xD000000000000028 && 0x800000029D968500 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EB100(a1, v66);
    return;
  }

  if (v24 == 0xD000000000000025 && 0x800000029D968530 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    v38 = sub_29D936338();
    v39 = [v38 viewControllerFactory];

    sub_29D936348();
    LOBYTE(v38) = sub_29D936368();
    v40 = objc_allocWithZone(type metadata accessor for ElectrocardiogramDataTypeDetailViewController());
    sub_29D7069A0(v39, v69, v38);
    v42 = v41;
    sub_29D936318();
    v43 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore;
    swift_beginAccess();
    sub_29D84E59C(v69, v42 + v43);
    swift_endAccess();
    return;
  }

  if (v24 == 0xD000000000000030 && 0x800000029D966A50 == v26 || (v59 = 0xD000000000000030, (sub_29D93AD78() & 1) != 0))
  {

    v44 = v66;
    sub_29D7DFE9C(v66, a1, ObjectType);
    v45 = v63;
    v46 = *(v63 + 16);
    v46(v22, v44, v14);
    objc_allocWithZone(type metadata accessor for AFibBurdenDataTypeDetailViewController());
    v46(v19, v22, v14);
    v47 = a1;
    sub_29D936488();
    (*(v45 + 8))(v22, v14);
    return;
  }

  if (v24 == 0xD000000000000021 && 0x800000029D968560 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EA3CC(a1, v66);
    return;
  }

  if (v24 == v59 && 0x800000029D968590 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EA420(v66);
    return;
  }

  if (v24 == 0xD00000000000001ELL && 0x800000029D966A90 == v26 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EA730(a1, v66);
    return;
  }

  if (v24 == 0xD000000000000029 && 0x800000029D9685D0 == v26)
  {

LABEL_44:
    sub_29D7EAB68(v66);
    return;
  }

  v48 = sub_29D93AD78();

  if (v48)
  {
    goto LABEL_44;
  }

  v73 = 0;
  memset(v72, 0, sizeof(v72));
  sub_29D84E4AC(v72, &v67);
  if (v68)
  {
    sub_29D679D3C(&v67, v69);
    sub_29D693E2C(v69, v70);
    sub_29D936B58();
    v55 = v66;
    sub_29D936028();
    (*(v63 + 16))(v22, v55, v14);
    v56 = objc_allocWithZone(sub_29D9364C8());
    v57 = a1;
    sub_29D936488();
    (*(v60 + 8))(v13, v9);
    sub_29D84E528(v72);
    sub_29D69417C(v69);
  }

  else
  {
    sub_29D84E528(&v67);
    sub_29D937868();
    v49 = a1;
    v50 = sub_29D937878();
    v51 = sub_29D93A288();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_29D677000, v50, v51, "[HeartAppDelegate] No custom detail view controller or configuration provided for %@", v52, 0xCu);
      sub_29D6ACA3C(v53);
      MEMORY[0x29ED6BE30](v53, -1, -1);
      MEMORY[0x29ED6BE30](v52, -1, -1);
    }

    (*(v64 + 8))(v61, v65);
    sub_29D84E528(v72);
  }
}

uint64_t sub_29D84E4AC(uint64_t a1, uint64_t a2)
{
  sub_29D6B7318(0, &qword_2A17B66D0, &qword_2A17B66D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D84E528(uint64_t a1)
{
  sub_29D6B7318(0, &qword_2A17B66D0, &qword_2A17B66D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D84E59C(uint64_t a1, uint64_t a2)
{
  sub_29D6B7318(0, &qword_2A17B2B10, &qword_2A17B50D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AFibBurdenDataTypeDetailViewController()
{
  result = qword_2A17B66E0;
  if (!qword_2A17B66E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D84E6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  (*(v5 + 16))(v9, a2, v4);
  v11 = sub_29D936488();
  (*(v5 + 8))(a2, v4);
  return v11;
}

void sub_29D84E7BC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AFibBurdenAddDataView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_29D936468();
  sub_29D74774C(v9, v8);
  sub_29D84EA60();
  v11 = objc_allocWithZone(v10);
  v12 = sub_29D938CF8();
  [v2 presentViewController:v12 animated:a1 & 1 completion:0];
}

uint64_t sub_29D84E878(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = objc_allocWithZone(v3);
  (*(v7 + 16))(v11, a2, v6);
  sub_29D6945AC(a3, v16);
  v13 = sub_29D936498();
  sub_29D69417C(a3);
  (*(v7 + 8))(a2, v6);
  return v13;
}

id sub_29D84E9A8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AFibBurdenDataTypeDetailViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D84EA20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenDataTypeDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D84EA60()
{
  if (!qword_2A17B66F0)
  {
    type metadata accessor for AFibBurdenAddDataView();
    sub_29D84EAC4();
    v0 = sub_29D938D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B66F0);
    }
  }
}

unint64_t sub_29D84EAC4()
{
  result = qword_2A17B66F8;
  if (!qword_2A17B66F8)
  {
    type metadata accessor for AFibBurdenAddDataView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66F8);
  }

  return result;
}

uint64_t sub_29D84EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D851770(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23[0] = a1;
  sub_29D6AD548();
  sub_29D851A88(&qword_2A1A223E0, sub_29D6AD548);
  sub_29D938498();
  v17 = *a4;
  v25 = *(a4 + 8);
  v24 = *(a4 + 16);
  sub_29D6945AC(a5, v23);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(a4 + 16);
  *(v18 + 32) = *a4;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a4 + 32);
  sub_29D679D3C(v23, v18 + 72);

  v20 = v17;
  sub_29D753C5C(&v25, v23);
  sub_29D738808(&v24, v23);
  sub_29D6B7370(0, &qword_2A1A25740);
  sub_29D85182C();
  sub_29D938468();

  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_29D84ED30@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v7 = *a3;
  if (*a1 == 1)
  {
    v47 = a4;
    v50 = *(a3 + 8);
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v10 = v7;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();
    v11 = sub_29D937878();
    v12 = sub_29D93A278();

    sub_29D7545A4(&v50);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = a2;
      v14 = swift_slowAlloc();
      v45 = v10;
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136446466;
      sub_29D8519C4();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v49);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(v8, v9, &v49);
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s(%{public}s)] Background requirements check passed, sending normal generator", v14, 0x16u);
      swift_arrayDestroy();
      v19 = v15;
      v10 = v45;
      MEMORY[0x29ED6BE30](v19, -1, -1);
      v20 = v14;
      a2 = v13;
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v21 = type metadata accessor for RelatedSampleTypesGenerator(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = v10;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();

    v25 = sub_29D753950(a3, a2);

    sub_29D7545A4(&v50);

    a4 = v47;
    v47[3] = v21;
    v26 = &unk_2A17B6700;
    v27 = type metadata accessor for RelatedSampleTypesGenerator;
  }

  else
  {
    v50 = *(a3 + 8);
    v28 = *(a3 + 16);
    v29 = *(a3 + 24);
    v30 = v7;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();
    v31 = sub_29D937878();
    v32 = sub_29D93A278();

    sub_29D7545A4(&v50);

    if (os_log_type_enabled(v31, v32))
    {
      v46 = a2;
      v33 = swift_slowAlloc();
      v48 = v30;
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136446466;
      sub_29D8519C4();
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(v28, v29, &v49);
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s(%{public}s)] Background requirements check failed, sending empty generator", v33, 0x16u);
      swift_arrayDestroy();
      v38 = v34;
      v30 = v48;
      MEMORY[0x29ED6BE30](v38, -1, -1);
      v39 = v33;
      a2 = v46;
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    v40 = type metadata accessor for EmptyRelatedSampleTypesGenerator();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();

    v43 = v30;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();
    v25 = sub_29D8345E0(a3, a2);
    a4[3] = v40;
    v26 = &unk_2A1A23D78;
    v27 = type metadata accessor for EmptyRelatedSampleTypesGenerator;
  }

  result = sub_29D851A88(v26, v27);
  a4[4] = result;
  *a4 = v25;
  return result;
}

uint64_t sub_29D84F164@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_29D851B38(0, &qword_2A17B6708, MEMORY[0x29EDB8AC0]);
  v9 = v8;
  v36 = *(v8 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v34 - v12;
  v14 = *a1;
  v15 = *a3;
  v39 = *(a3 + 8);
  v16 = *(a3 + 24);
  v35 = *(a3 + 16);
  v17 = v15;
  sub_29D753C5C(&v39, &v38);
  sub_29D935E88();
  v18 = v14;
  v19 = sub_29D937878();
  v20 = sub_29D93A288();

  sub_29D7545A4(&v39);

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = a2;
    v38 = v34;
    *v21 = 136446722;
    sub_29D8519C4();
    v22 = sub_29D939DA8();
    v24 = v9;
    v25 = a4;
    v26 = sub_29D6C2364(v22, v23, &v38);

    *(v21 + 4) = v26;
    a4 = v25;
    v9 = v24;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_29D6C2364(v35, v16, &v38);
    *(v21 + 22) = 2082;
    v37 = v14;
    v27 = v14;
    sub_29D6B7370(0, &qword_2A1A24850);
    v28 = sub_29D939DA8();
    v30 = sub_29D6C2364(v28, v29, &v38);

    *(v21 + 24) = v30;
    _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s(%{public}s)] Error when handling database changes: %{public}s", v21, 0x20u);
    v31 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v31, -1, -1);
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  sub_29D8513C4();
  sub_29D938348();
  sub_29D851478(&qword_2A17B6710, &qword_2A17B6708, MEMORY[0x29EDB8AC0]);
  v32 = sub_29D938418();
  result = (*(v36 + 8))(v13, v9);
  *a4 = v32;
  return result;
}

uint64_t sub_29D84F4A8@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t **a4@<X8>)
{
  v7 = *a3;
  if (a1)
  {
    v47 = a4;
    v50 = *(a3 + 8);
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v10 = v7;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();
    v11 = sub_29D937878();
    v12 = sub_29D93A278();

    sub_29D7545A4(&v50);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = a2;
      v14 = swift_slowAlloc();
      v45 = v10;
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136446466;
      sub_29D8519C4();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v49);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(v8, v9, &v49);
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s(%{public}s)] Foreground requirements check passed, sending normal generator", v14, 0x16u);
      swift_arrayDestroy();
      v19 = v15;
      v10 = v45;
      MEMORY[0x29ED6BE30](v19, -1, -1);
      v20 = v14;
      a2 = v13;
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v21 = type metadata accessor for RelatedSampleTypesGenerator(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = v10;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();

    v25 = sub_29D753950(a3, a2);

    sub_29D7545A4(&v50);

    a4 = v47;
    v47[3] = v21;
    v26 = &unk_2A17B6700;
    v27 = type metadata accessor for RelatedSampleTypesGenerator;
  }

  else
  {
    v50 = *(a3 + 8);
    v28 = *(a3 + 16);
    v29 = *(a3 + 24);
    v30 = v7;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();
    v31 = sub_29D937878();
    v32 = sub_29D93A278();

    sub_29D7545A4(&v50);

    if (os_log_type_enabled(v31, v32))
    {
      v46 = a2;
      v33 = swift_slowAlloc();
      v48 = v30;
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136446466;
      sub_29D8519C4();
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(v28, v29, &v49);
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s(%{public}s)] Foreground requirements check failed, sending empty generator", v33, 0x16u);
      swift_arrayDestroy();
      v38 = v34;
      v30 = v48;
      MEMORY[0x29ED6BE30](v38, -1, -1);
      v39 = v33;
      a2 = v46;
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    v40 = type metadata accessor for EmptyRelatedSampleTypesGenerator();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();

    v43 = v30;
    sub_29D753C5C(&v50, &v49);
    sub_29D935E88();
    v25 = sub_29D8345E0(a3, a2);
    a4[3] = v40;
    v26 = &unk_2A1A23D78;
    v27 = type metadata accessor for EmptyRelatedSampleTypesGenerator;
  }

  result = sub_29D851A88(v26, v27);
  a4[4] = result;
  *a4 = v25;
  return result;
}

uint64_t sub_29D84F8D4()
{
  v1 = OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_publisher);

  v4 = *(v0 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_feedItemRequirements);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RelatedSampleTypesGeneratorPipeline()
{
  result = qword_2A1A23960;
  if (!qword_2A1A23960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D84F9E4()
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

uint64_t sub_29D84FAA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D84FB20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_29D69567C(0, &qword_2A17B4380, 0x29EDC7D10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_29D6AA3B4(0, &qword_2A1A21EF0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_29D84FC1C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29D7042EC(v2, 0);
    sub_29D935E88();
    v1 = sub_29D7AEF54(&v5, (v3 + 32), v2, v1);
    sub_29D7AF2E8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

void sub_29D84FCCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_29D84FDA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v126 = a5;
  sub_29D85137C(0);
  v123 = v9;
  v121 = *(v9 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v117 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8516D8(0, &qword_2A1A22558, sub_29D85137C, sub_29D8514BC);
  v14 = v13;
  v122 = *(v13 - 8);
  v15 = *(v122 + 8);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v119 = v104 - v17;
  sub_29D6BE124();
  v120 = v18;
  v118 = *(v18 - 8);
  v19 = *(v118 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v115 = v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v116 = v104 - v24;
  v110 = sub_29D93A248();
  v113 = *(v110 - 8);
  v25 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v110, v26);
  v112 = v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8514F0(0, &qword_2A1A224F0, MEMORY[0x29EDC2E88], sub_29D8515E0, MEMORY[0x29EDB8920]);
  v29 = v28;
  v111 = *(v28 - 8);
  v30 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v109 = v104 - v32;
  sub_29D851614();
  v34 = v33;
  v114 = *(v33 - 8);
  v35 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = &type metadata for RelatedSampleTypesGeneratorFactory;
  v133 = &off_2A2448D58;
  v39 = sub_29D806C20(a3);
  v40 = v39;
  v41 = *a1;
  v125 = a2;
  if (a4)
  {
    v107 = v29;
    v108 = v14;
    v124 = v39;
    v42 = *(a1 + 8);
    v43 = *(a1 + 16);
    v44 = *(a1 + 24);
    v45 = v41;
    sub_29D935E88();
    sub_29D935E88();
    v46 = sub_29D937878();
    v47 = sub_29D93A268();
    v48 = v44;

    v114 = v42;

    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v128[0] = v106;
      *v49 = 136446466;
      *&v127[0] = v126;
      sub_29D8519C4();
      v50 = sub_29D939DA8();
      v52 = v45;
      v53 = a2;
      v54 = sub_29D6C2364(v50, v51, v128);

      *(v49 + 4) = v54;
      a2 = v53;
      v45 = v52;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_29D6C2364(v43, v48, v128);
      _os_log_impl(&dword_29D677000, v46, v47, "[%{public}s(%{public}s)] Started in foreground, sending initial publisher as well as database changes publisher", v49, 0x16u);
      v55 = v106;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v55, -1, -1);
      MEMORY[0x29ED6BE30](v49, -1, -1);

      v56 = v132;
    }

    else
    {

      v56 = &type metadata for RelatedSampleTypesGeneratorFactory;
    }

    sub_29D693E2C(&v131, v56);
    v129 = &type metadata for RelatedSampleTypesGeneratorFactory;
    v130 = &off_2A2448D58;
    v73 = *(a2 + 16);
    sub_29D84FC1C(v114);
    v74 = v112;
    sub_29D93A258();

    v75 = swift_allocObject();
    v76 = v126;
    *(v75 + 16) = a2;
    *(v75 + 24) = v76;
    v77 = *(a1 + 16);
    *(v75 + 32) = *a1;
    *(v75 + 48) = v77;
    *(v75 + 64) = *(a1 + 32);
    v78 = MEMORY[0x29EDB89F8];
    sub_29D851B38(0, &qword_2A1A223A8, MEMORY[0x29EDB89F8]);
    sub_29D8515E0();
    v105 = a1;
    v104[1] = MEMORY[0x29EDB8A00];
    sub_29D851478(&qword_2A1A223B0, &qword_2A1A223A8, v78);
    v106 = v45;
    sub_29D935E88();
    v104[2] = v48;
    sub_29D935E88();

    v79 = v109;
    v80 = v110;
    sub_29D938488();

    (*(v113 + 8))(v74, v80);
    sub_29D8518BC();
    v81 = v107;
    v82 = sub_29D938418();
    (*(v111 + 8))(v79, v81);
    *&v127[0] = v124;
    sub_29D6AD548();
    sub_29D851A88(&qword_2A1A223E0, sub_29D6AD548);
    v83 = v116;
    sub_29D938558();
    v84 = v118;
    v85 = v120;
    (*(v118 + 16))(v115, v83, v120);
    *&v127[0] = v82;
    sub_29D851444();

    v86 = v117;
    sub_29D938068();
    sub_29D6945AC(v128, v127);
    v87 = swift_allocObject();
    v88 = v126;
    *(v87 + 16) = v125;
    *(v87 + 24) = v88;
    v89 = v105;
    v90 = v105[1];
    *(v87 + 32) = *v105;
    *(v87 + 48) = v90;
    *(v87 + 64) = *(v89 + 4);
    sub_29D679D3C(v127, v87 + 72);
    v91 = swift_allocObject();
    *(v91 + 16) = sub_29D851958;
    *(v91 + 24) = v87;
    sub_29D6B7370(0, &qword_2A1A25740);
    sub_29D8514BC();
    v92 = v106;
    sub_29D935E88();
    sub_29D935E88();

    v93 = v119;
    v94 = v123;
    sub_29D938468();

    (*(v121 + 8))(v86, v94);
    sub_29D851860(&qword_2A1A22560, &qword_2A1A22558, sub_29D85137C, sub_29D8514BC);
    v95 = v108;
    v96 = sub_29D938418();

    (*(v122 + 1))(v93, v95);
    (*(v84 + 8))(v83, v85);
  }

  else
  {
    v122 = v38;
    v123 = v34;
    v57 = *(a1 + 16);
    v134 = *(a1 + 8);
    v58 = *(a1 + 24);
    v59 = v41;
    sub_29D753C5C(&v134, v128);
    sub_29D935E88();
    v60 = sub_29D937878();
    v61 = sub_29D93A268();

    sub_29D7545A4(&v134);

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v124 = v40;
      v64 = v63;
      v128[0] = v63;
      *v62 = 136446466;
      v121 = v58;
      v65 = v59;
      v66 = v126;
      *&v127[0] = v126;
      sub_29D8519C4();
      v67 = sub_29D939DA8();
      v69 = sub_29D6C2364(v67, v68, v128);

      *(v62 + 4) = v69;
      v70 = v66;
      v59 = v65;
      v71 = v121;
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_29D6C2364(v57, v71, v128);
      _os_log_impl(&dword_29D677000, v60, v61, "[%{public}s(%{public}s)] Started in background, only sending one generator", v62, 0x16u);
      swift_arrayDestroy();
      v72 = v64;
      v40 = v124;
      MEMORY[0x29ED6BE30](v72, -1, -1);
      MEMORY[0x29ED6BE30](v62, -1, -1);
    }

    else
    {

      v70 = v126;
    }

    sub_29D693E2C(&v131, v132);
    v129 = &type metadata for RelatedSampleTypesGeneratorFactory;
    v130 = &off_2A2448D58;
    sub_29D6945AC(v128, v127);
    v97 = swift_allocObject();
    v98 = v125;
    *(v97 + 16) = v40;
    *(v97 + 24) = v98;
    *(v97 + 32) = v70;
    v99 = *(a1 + 16);
    *(v97 + 40) = *a1;
    *(v97 + 56) = v99;
    *(v97 + 72) = *(a1 + 32);
    sub_29D679D3C(v127, v97 + 80);
    v100 = v59;
    sub_29D753C5C(&v134, v127);
    sub_29D8516D8(0, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    sub_29D851860(&qword_2A1A22528, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    sub_29D935E88();

    v101 = v122;
    sub_29D938378();
    sub_29D851A88(&qword_2A1A22308, sub_29D851614);
    v102 = v123;
    v96 = sub_29D938418();

    (*(v114 + 8))(v101, v102);
  }

  sub_29D69417C(v128);
  sub_29D69417C(&v131);
  return v96;
}

uint64_t *sub_29D850B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = sub_29D934178();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &type metadata for RelatedSampleTypesGeneratorFactory;
  v22 = &off_2A2448D58;
  sub_29D751814(v16);
  (*(v12 + 32))(a5 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_domain, v16, v11);
  *(a5 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_feedItemRequirements) = a3;
  sub_29D693E2C(v20, v21);
  sub_29D935E88();
  v17 = sub_29D84FDA8(a1, a2, a3, a4 & 1, v10);
  sub_29D69417C(v20);
  *(a5 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_publisher) = v17;
  return a5;
}

uint64_t *sub_29D850CA4(uint64_t a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v7 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940A10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4D0]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA930]);
  *(inited + 48) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA848]);
  *(inited + 56) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4A8]);
  *(inited + 64) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA898]);
  sub_29D6E3724(inited);
  v10 = v9;
  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v12 = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  v43 = v7;
  v51[0] = v7;
  v51[1] = v10;
  v41 = v10;
  v51[2] = 0xD00000000000001CLL;
  v51[3] = 0x800000029D9603B0;
  v51[4] = v12;
  sub_29D934188();
  sub_29D693E2C(v49, v50);
  v39 = sub_29D934118();
  v42 = a1;
  sub_29D934188();
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v13 = sub_29D69C6C0(v2, qword_2A1A2BF28);
  v14 = v40;
  (*(v3 + 16))(v40, v13, v2);
  v47[3] = &type metadata for FeedItemContextPreviousFeedItemFetcherBox;
  v47[4] = &off_2A2443EF8;
  v47[0] = swift_allocObject();
  sub_29D851264(v48, v47[0] + 16);
  v15 = type metadata accessor for RelatedSampleTypesGenerator.Environment(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = sub_29D693DDC(v47, &type metadata for FeedItemContextPreviousFeedItemFetcherBox);
  v20 = *(off_2A2443ED8 + 8);
  MEMORY[0x2A1C7C4A8](v19, v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v45 = &type metadata for FeedItemContextPreviousFeedItemFetcherBox;
  v46 = &off_2A2443EF8;
  v24 = swift_allocObject();
  *&v44 = v24;
  v25 = *(v22 + 1);
  *(v24 + 16) = *v22;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v22 + 4);
  sub_29D8512C0(v48);
  *(v18 + 16) = v39;
  sub_29D679D3C(&v44, v18 + 24);
  (*(v3 + 32))(v18 + OBJC_IVAR____TtCC5Heart27RelatedSampleTypesGenerator11Environment_logger, v14, v2);
  sub_29D69417C(v47);
  sub_29D69417C(v49);
  sub_29D851314();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93DDB0;
  v27 = *MEMORY[0x29EDC5118];
  v28 = *MEMORY[0x29EDBA6B0];
  v29 = v27;
  sub_29D934188();
  sub_29D693E2C(v49, v50);
  v30 = sub_29D934118();
  v31 = type metadata accessor for FeatureStatusFeedItemRequirement();
  v32 = swift_allocObject();
  v32[2] = v28;
  v32[3] = v27;
  v32[4] = v30;
  v32[5] = 0;
  sub_29D69417C(v49);
  *(v26 + 56) = v31;
  *(v26 + 64) = &off_2A2440BF0;
  *(v26 + 32) = v32;
  sub_29D934188();
  sub_29D693E2C(v49, v50);
  LOBYTE(v30) = sub_29D934108();
  v48[3] = &type metadata for RelatedSampleTypesGeneratorFactory;
  v48[4] = &off_2A2448D58;
  v33 = type metadata accessor for RelatedSampleTypesGeneratorPipeline();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  sub_29D693DDC(v48, &type metadata for RelatedSampleTypesGeneratorFactory);
  v37 = sub_29D850B18(v51, v18, v26, v30 & 1, v36);

  sub_29D69417C(v48);
  sub_29D69417C(v49);
  return v37;
}

void sub_29D851314()
{
  if (!qword_2A1A21F20)
  {
    sub_29D6B7370(255, &qword_2A1A242A0);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21F20);
    }
  }
}

void sub_29D8513C4()
{
  if (!qword_2A1A21EC8)
  {
    sub_29D93A238();
    sub_29D6B7370(255, &qword_2A1A24850);
    v0 = sub_29D93AEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21EC8);
    }
  }
}

uint64_t sub_29D851478(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D851B38(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8514F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = MEMORY[0x29EDB89F8];
    sub_29D851B38(255, &qword_2A1A223A8, MEMORY[0x29EDB89F8]);
    v14[0] = v9;
    v14[1] = v11;
    v14[2] = a4();
    v14[3] = sub_29D851478(&qword_2A1A223B0, &qword_2A1A223A8, v10);
    v12 = a5(a1, v14);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_29D851614()
{
  if (!qword_2A1A22300)
  {
    sub_29D8516D8(255, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    sub_29D851860(&qword_2A1A22528, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22300);
    }
  }
}

void sub_29D8516D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6B7370(255, &qword_2A1A25740);
    a4();
    v6 = sub_29D9380F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D851790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D6AD548();
    v7 = v6;
    v8 = sub_29D851A88(&qword_2A1A223E0, sub_29D6AD548);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D851860(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D8516D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D8518BC()
{
  result = qword_2A1A224F8;
  if (!qword_2A1A224F8)
  {
    sub_29D8514F0(255, &qword_2A1A224F0, MEMORY[0x29EDC2E88], sub_29D8515E0, MEMORY[0x29EDB8920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A224F8);
  }

  return result;
}

uint64_t sub_29D851968(unsigned __int8 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  sub_29D851AD0();
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_29D8519C4()
{
  result = qword_2A1A238A8[0];
  if (!qword_2A1A238A8[0])
  {
    type metadata accessor for RelatedSampleTypesGeneratorPipeline();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A238A8);
  }

  return result;
}

uint64_t sub_29D851A20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_29D69417C((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29D851A88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D851AD0()
{
  if (!qword_2A1A22258)
  {
    sub_29D8513C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A22258);
    }
  }
}

void sub_29D851B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29D8513C4();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double sub_29D851BB8(uint64_t a1, double a2, double a3)
{
  v6 = sub_29D93AD58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 * a3;
  v18 = v12;
  (*(v7 + 16))(v11, a1, v6);
  v13 = (*(v7 + 88))(v11, v6);
  if (v13 == *MEMORY[0x29EDC9EB8])
  {
    v14 = round(v12);
  }

  else if (v13 == *MEMORY[0x29EDC9EB0])
  {
    v14 = rint(v12);
  }

  else if (v13 == *MEMORY[0x29EDC9EC0])
  {
    v14 = ceil(v12);
  }

  else if (v13 == *MEMORY[0x29EDC9EC8])
  {
    v14 = floor(v12);
  }

  else if (v13 == *MEMORY[0x29EDC9EA0])
  {
    v14 = trunc(v12);
  }

  else if (v13 == *MEMORY[0x29EDC9EA8])
  {
    v14 = ceil(v12);
    v15 = floor(v12);
    if (v12 < 0.0)
    {
      v14 = v15;
    }
  }

  else
  {
    sub_29D93A068();
    (*(v7 + 8))(v11, v6);
    v14 = v18;
  }

  return v14 / a2;
}

uint64_t type metadata accessor for HypertensionNotificationsThingsToKnowViewController()
{
  result = qword_2A17B6728;
  if (!qword_2A17B6728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29D851E40(int a1)
{
  v42 = sub_29D935398();
  v50 = *(v42 - 8);
  v3 = *(v50 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v42, v4);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v48 = v41 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v47 = v41 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = v41 - v15;
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v41 - v18;
  *(v1 + qword_2A17B6718 + 8) = 0;
  swift_unknownObjectWeakInit();
  v46 = v1;
  v43 = a1;
  *(v1 + qword_2A17B6720) = a1;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v21 = qword_2A17D0F10;
  v20 = *algn_2A17D0F18;
  v22 = qword_2A17D0F20;
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D935388();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D935388();
  sub_29D9334A8();
  v23 = v47;
  sub_29D935388();
  sub_29D9334A8();
  v41[0] = v22;
  v41[1] = v20;
  v41[2] = v21;
  sub_29D9334A8();
  v24 = v48;
  sub_29D935388();
  sub_29D9334A8();
  sub_29D935388();
  sub_29D77C524();
  v25 = v16;
  v26 = v23;
  v27 = v50;
  v28 = *(v50 + 72);
  v29 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v30 = 4 * v28;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D944EA0;
  v32 = v31 + v29;
  v33 = *(v27 + 16);
  v44 = v19;
  v34 = v42;
  v33(v32, v19, v42);
  v45 = v25;
  v33(v32 + v28, v25, v34);
  v33(v32 + 2 * v28, v26, v34);
  v35 = 3 * v28;
  v36 = v49;
  v33(v32 + v35, v24, v34);
  v33(v32 + v30, v36, v34);
  sub_29D9334A8();
  if (v43)
  {
    v37 = sub_29D936B68();
  }

  else
  {
    v38 = *(v31 + 16);
    v37 = sub_29D936B68();
    [v37 setAdditionalSafeAreaInsets_];
  }

  v39 = *(v50 + 8);
  v39(v36, v34);
  v39(v48, v34);
  v39(v47, v34);
  v39(v45, v34);
  v39(v44, v34);
  return v37;
}

void sub_29D852510()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    if (*(v0 + qword_2A17B6720) == 1)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D852690(void *a1)
{
  v1 = a1;
  sub_29D852510();
}

uint64_t sub_29D8526D8(uint64_t result)
{
  if (*(v1 + qword_2A17B6720) == 1)
  {
    v2 = result;
    sub_29D936B78();
    v3 = sub_29D936C88();

    return v3(v2 & 1);
  }

  return result;
}

void *sub_29D852754()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_29D8FDA2C(v0, result);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8527B4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D8528E8(v3, 2);
    sub_29D936978();
  }
}

uint64_t sub_29D85288C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B6718 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D8528E8(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446466;
    nullsub_1(ObjectType);
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D960A80, &v13);
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s]: User pressed cancel button", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  sub_29D8E5640(1, 0, 0, 0);
  return sub_29D8E5270(a2, 2, 5);
}

void sub_29D852AAC()
{
  v1 = v0;
  v2 = sub_29D934A68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x29EDC1AB0])
  {
    v9 = objc_opt_self();
    v10 = [v9 sharedInstance];
    if (!v10)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = v10;
    v12 = [v9 activePairedDeviceSelectorBlock];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = swift_allocObject();
      v12 = sub_29D852FBC;
      *(v14 + 16) = sub_29D852FBC;
      *(v14 + 24) = v13;
      v29 = sub_29D852FE4;
      v30 = v14;
      aBlock = MEMORY[0x29EDCA5F8];
      v26 = 1107296256;
      v27 = sub_29D853010;
      v28 = &unk_2A2448DE8;
      v15 = _Block_copy(&aBlock);
    }

    else
    {
      v15 = 0;
    }

    v22 = [v11 getAllDevicesWithArchivedDevicesMatching_];
    sub_29D694784(v12);
    _Block_release(v15);

    if (!v22)
    {
      goto LABEL_32;
    }

    sub_29D852F70();
    v18 = sub_29D939F38();

    if (v18 >> 62)
    {
      if (!sub_29D93A928())
      {
        goto LABEL_24;
      }
    }

    else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
LABEL_27:
      MEMORY[0x29ED6AE30](0, v18);
      goto LABEL_24;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      v24 = *(v18 + 32);
LABEL_24:

      return;
    }

    __break(1u);
  }

  else
  {
    if (v8 != *MEMORY[0x29EDC1AB8])
    {
      (*(v3 + 8))(v7, v2);
      return;
    }

    v16 = objc_opt_self();
    v17 = [v16 sharedInstance];
    if (!v17)
    {
      goto LABEL_33;
    }

    v18 = v17;
    v12 = [v16 activeDeviceSelectorBlock];
    if (v12)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v12;
      v20 = swift_allocObject();
      v12 = sub_29D853078;
      *(v20 + 16) = sub_29D853078;
      *(v20 + 24) = v19;
      v29 = sub_29D853080;
      v30 = v20;
      aBlock = MEMORY[0x29EDCA5F8];
      v26 = 1107296256;
      v27 = sub_29D853010;
      v28 = &unk_2A2448E60;
      v21 = _Block_copy(&aBlock);

      goto LABEL_18;
    }
  }

  v21 = 0;
LABEL_18:
  v23 = [v18 getAllDevicesWithArchivedDevicesMatching_];
  sub_29D694784(v12);
  _Block_release(v21);

  if (v23)
  {
    sub_29D852F70();
    v18 = sub_29D939F38();

    if (v18 >> 62)
    {
      if (!sub_29D93A928())
      {
        goto LABEL_24;
      }
    }

    else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v18 & 0xC000000000000001) == 0)
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_34:
  __break(1u);
}

unint64_t sub_29D852F70()
{
  result = qword_2A17B6738;
  if (!qword_2A17B6738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B6738);
  }

  return result;
}

uint64_t sub_29D852FE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_29D853010(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  LOBYTE(v2) = v4(v2);

  return v2 & 1;
}

uint64_t sub_29D85305C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29D853214()
{
  sub_29D939E18();
}

uint64_t sub_29D853380()
{
  sub_29D939E18();
}

uint64_t sub_29D8534D8()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853644()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853754()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D8538D4()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853A1C()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853B20(char a1)
{
  result = 1954047342;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 1701736292;
      break;
    case 3:
      result = 0x64616F4C77656976;
      break;
    case 4:
      result = 0x7055746573;
      break;
    case 5:
      result = 0x7472617453746567;
      break;
    case 6:
      result = 0x4A50427472617473;
      break;
    case 7:
      result = 0x77654E7472617473;
      break;
    case 8:
      result = 7562617;
      break;
    case 9:
      result = 28526;
      break;
    case 10:
      result = 0x5042676F6CLL;
      break;
    case 11:
      result = 0x776F4E746F6ELL;
      break;
    case 12:
      result = 0x726F4D6E7261656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29D853C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D8549CC();
  *a2 = result;
  return result;
}

void sub_29D853CB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x74756F62414A5042;
  v5 = 0xED00007365636974;
  v6 = 0x6361725074736562;
  if (v2 != 6)
  {
    v6 = 0x756F4A6E69676562;
    v5 = 0xEC0000006C616E72;
  }

  v7 = 0xEB00000000657079;
  v8 = 0x546C616E72756F6ALL;
  if (v2 != 4)
  {
    v8 = 0x7265646E696D6572;
    v7 = 0xEC00000065707954;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000066667543;
  v10 = 0x6F54737365636361;
  if (v2 != 2)
  {
    v10 = 0x48756F5965636E6FLL;
    v9 = 0xEF66667543657661;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000029D957200;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_29D853DF4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_29D853B20(*a1);
  v5 = v4;
  if (v3 == sub_29D853B20(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D853E7C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D853B20(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853EE0()
{
  sub_29D853B20(*v0);
  sub_29D939E18();
}

uint64_t sub_29D853F34()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D853B20(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D854A18();
  *a2 = result;
  return result;
}

uint64_t sub_29D853FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D853B20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29D853FF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E72756F4A77656ELL;
  }

  else
  {
    v4 = 0x696472616F626E6FLL;
  }

  if (v3)
  {
    v5 = 0xEA0000000000676ELL;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x6E72756F4A77656ELL;
  }

  else
  {
    v6 = 0x696472616F626E6FLL;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xEA0000000000676ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();
  }

  return v9 & 1;
}

uint64_t sub_29D85409C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D854124()
{
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D854198()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

void sub_29D854228(uint64_t *a1@<X8>)
{
  v2 = 0x696472616F626E6FLL;
  if (*v1)
  {
    v2 = 0x6E72756F4A77656ELL;
  }

  v3 = 0xEA0000000000676ELL;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_29D85426C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x68746E6F6DLL;
  }

  else
  {
    v4 = 1801807223;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x68746E6F6DLL;
  }

  else
  {
    v6 = 1801807223;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();
  }

  return v9 & 1;
}

uint64_t sub_29D854308()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D854380()
{
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D8543E4()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D854464@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29D93ABF8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_29D8544C0(uint64_t *a1@<X8>)
{
  v2 = 1801807223;
  if (*v1)
  {
    v2 = 0x68746E6F6DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_29D854500()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D8545D0()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D85468C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D854758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D854A64();
  *a2 = result;
  return result;
}

void sub_29D854788(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0x6570795461746164;
  v4 = 0x800000029D956D90;
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0x73676E6974746573;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972616D6D7573;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29D854818()
{
  result = qword_2A17B6740;
  if (!qword_2A17B6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6740);
  }

  return result;
}

unint64_t sub_29D854870()
{
  result = qword_2A17B6748;
  if (!qword_2A17B6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6748);
  }

  return result;
}

unint64_t sub_29D8548C8()
{
  result = qword_2A17B6750;
  if (!qword_2A17B6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6750);
  }

  return result;
}

unint64_t sub_29D854920()
{
  result = qword_2A17B6758;
  if (!qword_2A17B6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6758);
  }

  return result;
}

unint64_t sub_29D854978()
{
  result = qword_2A17B6760;
  if (!qword_2A17B6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6760);
  }

  return result;
}

uint64_t sub_29D8549CC()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D854A18()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D854A64()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D854ABC()
{
  result = sub_29D939D28();
  qword_2A1A2BCD0 = result;
  return result;
}

uint64_t sub_29D854AF4()
{
  result = sub_29D939D28();
  qword_2A1A2BCC8 = result;
  return result;
}

void sub_29D854B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3 + 32;
    v6 = 0.0;
    v7 = *(a3 + 16);
    do
    {
      sub_29D8551A0(v5, v12);
      sub_29D693E2C(v12, v13);
      sub_29D935118();
      v6 = v6 + CGRectGetHeight(v15) + 14.0;
      sub_29D8551D8(v12);
      v5 += 88;
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0.0;
  }

  sub_29D934E58();
  if (CGRectGetHeight(v16) - v6 >= 0.0)
  {
    if (v4)
    {
      v9 = a3 + 32;
      do
      {
        sub_29D8551A0(v9, v12);
        sub_29D693E2C(v12, v13);
        sub_29D935118();
        CGRectGetHeight(v17);
        sub_29D934E48();
        sub_29D934DC8();
        sub_29D934DC8();
        CGRectGetWidth(v18);
        sub_29D934DD8();
        sub_29D693E2C(v12, v13);
        sub_29D935128();
        v10 = v14[4];
        sub_29D693E2C(v14, v14[3]);
        v11 = *(*(v10 + 8) + 8);
        sub_29D935128();
        sub_29D934E38();
        sub_29D934E38();

        sub_29D8551D8(v12);
        v9 += 88;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v8, qword_2A1A2BF58);
    v12[0] = 0;
    sub_29D9371F8();
  }
}

uint64_t sub_29D854DB0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  sub_29D85531C();
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D968AF0);
  return 0;
}

double sub_29D854E58(uint64_t a1, uint64_t a2)
{
  sub_29D934E58();
  v4 = v3;
  sub_29D934E58();
  CGRectGetWidth(v10);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    v7 = 0.0;
    do
    {
      sub_29D8551A0(v6, v9);
      sub_29D693E2C(v9, v9[3]);
      sub_29D935118();
      v7 = v7 + CGRectGetHeight(v11) + 14.0;
      sub_29D8551D8(v9);
      v6 += 88;
      --v5;
    }

    while (v5);
  }

  return v4;
}

double sub_29D854F48(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  sub_29D854B2C(a1, a2, *v2);
  return result;
}

uint64_t sub_29D854F80(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D779790();
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

double sub_29D85502C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29D7EE7F8(0, v2, 0);
    v3 = v18;
    v4 = a1 + 32;
    do
    {
      sub_29D8551A0(v4, v17);
      v5 = v17[10];
      sub_29D8551D8(v17);
      v18 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_29D7EE7F8((v6 > 1), v7 + 1, 1);
        v3 = v18;
      }

      *(v3 + 16) = v8;
      *(v3 + 8 * v7 + 32) = v5;
      v4 += 88;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x29EDCA190];
    v8 = *(MEMORY[0x29EDCA190] + 16);
    if (!v8)
    {
      v10 = 0.0;
      goto LABEL_15;
    }
  }

  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0.0;
LABEL_13:
    v14 = v8 - v9;
    v15 = 8 * v9 + 32;
    do
    {
      v10 = v10 + *(v3 + v15);
      v15 += 8;
      --v14;
    }

    while (v14);
    goto LABEL_15;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v3 + 48);
  v10 = 0.0;
  v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v13 = *v11;
    v10 = v10 + *(v11 - 2) + *(v11 - 1) + *v11 + v11[1];
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v9)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v10;
}

uint64_t sub_29D855208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D855250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D8552C8()
{
  result = qword_2A17B6768;
  if (!qword_2A17B6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6768);
  }

  return result;
}

unint64_t sub_29D85531C()
{
  result = qword_2A17B6770;
  if (!qword_2A17B6770)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B6770);
  }

  return result;
}

uint64_t sub_29D855364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_29D934358();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D859EBC(0, &qword_2A17B6778, sub_29D859D64, &type metadata for HypertensionNotificationsFeedItemUserDataObject.CodingKeys, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v24 = *(v7 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D859D64();
  v19 = v27;
  sub_29D93AEC8();
  if (!v19)
  {
    v20 = v24;
    v21 = v25;
    sub_29D859E0C(&qword_2A17B6780, MEMORY[0x29EDC3A58]);
    sub_29D93AC88();
    (*(v20 + 8))(v12, v8);
    (*(v21 + 32))(v17, v26, v3);
    sub_29D859E54(v17, v23, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
  }

  return sub_29D69417C(a1);
}

uint64_t sub_29D855664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365)
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

uint64_t sub_29D8556F4(uint64_t a1)
{
  v2 = sub_29D859D64();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D855730(uint64_t a1)
{
  v2 = sub_29D859D64();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D855784(void *a1)
{
  sub_29D859EBC(0, &qword_2A1A21F80, sub_29D859D64, &type metadata for HypertensionNotificationsFeedItemUserDataObject.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D859D64();
  sub_29D93AED8();
  sub_29D934358();
  sub_29D859E0C(&qword_2A1A24768, MEMORY[0x29EDC3A58]);
  sub_29D93AD18();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_29D855930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v66 = a2;
  v62 = sub_29D9342F8();
  v65 = *(v62 - 8);
  v2 = *(v65 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v62, v3);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v61 = &v60 - v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v60 - v10;
  v12 = sub_29D934358();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v67 = &v60 - v25;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v26 = sub_29D937898();
  sub_29D69C6C0(v26, qword_2A1A2C008);
  v27 = sub_29D937878();
  v28 = sub_29D93A2A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v69 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94EB80, &v69);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_29D6C2364(0x6E6F632874696E69, 0xEE00293A74786574, &v69);
    _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s.%{public}s]: Creating hypertension notifications promo tile user data object", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v30, -1, -1);
    MEMORY[0x29ED6BE30](v29, -1, -1);
  }

  v31 = type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  v32 = *(*(v31 - 8) + 56);
  v33 = v67;
  v32(v67, 1, 1, v31);
  sub_29D9341D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v65;
    v35 = v62;
    (*(v65 + 32))(v11, v21, v62);
    v36 = *(v34 + 16);
    v37 = v61;
    v36(v61, v11, v35);
    v38 = sub_29D937878();
    v39 = sub_29D93A288();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v69 = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94EB80, &v69);
      *(v40 + 12) = 2082;
      v36(v60, v37, v35);
      v42 = sub_29D939DA8();
      v44 = v43;
      v64 = v11;
      v45 = *(v65 + 8);
      v45(v37, v35);
      v46 = sub_29D6C2364(v42, v44, &v69);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_29D677000, v38, v39, "[%{public}s] Failed to get country code: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v41, -1, -1);
      MEMORY[0x29ED6BE30](v40, -1, -1);

      v47 = sub_29D9341E8();
      (*(*(v47 - 8) + 8))(v68, v47);
      v45(v64, v35);
    }

    else
    {

      v56 = sub_29D9341E8();
      (*(*(v56 - 8) + 8))(v68, v56);
      v57 = *(v34 + 8);
      v57(v37, v35);
      v57(v11, v35);
    }
  }

  else
  {
    sub_29D8596C0(v33);
    v48 = v63;
    v49 = v64;
    (*(v63 + 32))(v16, v21, v64);
    (*(v48 + 16))(v33, v16, v49);
    v32(v33, 0, 1, v31);
    v50 = sub_29D937878();
    v51 = sub_29D93A2A8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v48;
      v54 = swift_slowAlloc();
      v69 = v54;
      *v52 = 136446466;
      *(v52 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94EB80, &v69);
      *(v52 + 12) = 2082;
      *(v52 + 14) = sub_29D6C2364(0x6E6F632874696E69, 0xEE00293A74786574, &v69);
      _os_log_impl(&dword_29D677000, v50, v51, "[%{public}s.%{public}s]: Creating hypertension notifications promo tile user data object - Country Record Success", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v54, -1, -1);
      MEMORY[0x29ED6BE30](v52, -1, -1);

      v55 = sub_29D9341E8();
      (*(*(v55 - 8) + 8))(v68, v55);
      (*(v53 + 8))(v16, v49);
    }

    else
    {

      v58 = sub_29D9341E8();
      (*(*(v58 - 8) + 8))(v68, v58);
      (*(v48 + 8))(v16, v49);
    }
  }

  return sub_29D8597AC(v67, v66);
}

uint64_t sub_29D8561AC()
{
  v1 = v0;
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v18[-v5];
  v7 = type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D85962C(v1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29D8596C0(v6);
    return 0;
  }

  else
  {
    sub_29D859E54(v6, v12, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
    v13 = sub_29D933108();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_29D9330F8();
    sub_29D859E0C(&qword_2A1A22E40, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
    v17 = sub_29D9330E8();
    sub_29D85974C(v12, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);

    return v17;
  }
}

uint64_t sub_29D856400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v25 = &v24 - v6;
  sub_29D859EBC(0, &qword_2A17B6788, sub_29D859DB8, &type metadata for HypertensionNotificationsFeedItemUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for HypertensionNotificationsFeedItemUserData(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D859DB8();
  v20 = v26;
  sub_29D93AEC8();
  if (!v20)
  {
    v21 = v24;
    type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
    sub_29D859E0C(&qword_2A17B6798, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
    v22 = v25;
    sub_29D93AC48();
    (*(v9 + 8))(v13, v8);
    sub_29D8597AC(v22, v18);
    sub_29D859E54(v18, v21, type metadata accessor for HypertensionNotificationsFeedItemUserData);
  }

  return sub_29D69417C(a1);
}

uint64_t sub_29D8566EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
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

uint64_t sub_29D856774(uint64_t a1)
{
  v2 = sub_29D859DB8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8567B0(uint64_t a1)
{
  v2 = sub_29D859DB8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D856804(void *a1)
{
  sub_29D859EBC(0, &qword_2A17B67A0, sub_29D859DB8, &type metadata for HypertensionNotificationsFeedItemUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D859DB8();
  sub_29D93AED8();
  type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  sub_29D859E0C(&qword_2A1A22E40, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
  sub_29D93ACD8();
  return (*(v4 + 8))(v8, v3);
}

void sub_29D8569B0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v61 = a3;
  sub_29D857E1C(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D937898();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v54 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v54 - v14;
  v16 = sub_29D9341E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HypertensionNotificationsFeedItemUserData(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D857EF8(0, &qword_2A1A24870, sub_29D6C320C, MEMORY[0x29EDC9E90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D943EA0;
  *(v27 + 32) = sub_29D857F5C(a1);
  *(v27 + 40) = sub_29D858468(a1);
  *(v27 + 48) = sub_29D858924(a1);
  v63 = v27;
  v28 = [objc_opt_self() sharedBehavior];
  if (!v28)
  {
    __break(1u);
    goto LABEL_14;
  }

  v29 = v28;
  v30 = [v28 features];

  if (!v30)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v31 = [v30 hermit];

  if (v31)
  {
    (*(v17 + 16))(v21, a1, v16);
    sub_29D855930(v21, v26);
    v32 = sub_29D8561AC();
    v34 = v33;
    sub_29D85974C(v26, type metadata accessor for HypertensionNotificationsFeedItemUserData);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    *(inited + 32) = sub_29D858E08(a1, v32, v34);
    sub_29D88C100(inited);
    sub_29D71847C(v32, v34);
  }

  sub_29D934198();
  if (sub_29D934418())
  {
    sub_29D934D28();
    v36 = sub_29D937878();
    v37 = sub_29D93A2A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62 = v39;
      *v38 = 136446210;
      v64 = v55;
      swift_getMetatypeMetadata();
      v40 = sub_29D939DA8();
      v42 = sub_29D6C2364(v40, v41, &v62);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s]: In background mode, so will finish after 1 update", v38, 0xCu);
      sub_29D69417C(v39);
      MEMORY[0x29ED6BE30](v39, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }

    (*(v56 + 8))(v15, v57);
  }

  else
  {
    v43 = v54;
    sub_29D934D28();
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v62 = v47;
      *v46 = 136446210;
      v64 = v55;
      swift_getMetatypeMetadata();
      v48 = sub_29D939DA8();
      v50 = sub_29D6C2364(v48, v49, &v62);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s]: In foreground mode, so will continue to listen for updates", v46, 0xCu);
      sub_29D69417C(v47);
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }

    (*(v56 + 8))(v43, v57);
  }

  v64 = v63;
  sub_29D6C320C();
  sub_29D857EF8(0, &qword_2A1A249B0, sub_29D6C320C, MEMORY[0x29EDC9A40]);
  sub_29D859E0C(&qword_2A1A24AE0, sub_29D6C320C);
  sub_29D7C9D40();
  v51 = v58;
  sub_29D9381D8();
  sub_29D859E0C(&qword_2A1A24B00, sub_29D857E1C);
  v52 = v60;
  v53 = sub_29D938418();
  (*(v59 + 8))(v51, v52);
  *v61 = v53;
}

uint64_t sub_29D857088@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29D9341E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = type metadata accessor for AtrialFibrillationPromotionGenerator();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_29D76D2B4(a1, v10);
  a3[3] = v12;
  result = sub_29D859E0C(qword_2A1A25118, type metadata accessor for AtrialFibrillationPromotionGenerator);
  a3[4] = result;
  *a3 = v15;
  return result;
}

uint64_t sub_29D8571C0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = sub_29D9341E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_29D934188();
  sub_29D693E2C(v25, v25[3]);
  sub_29D934118();
  type metadata accessor for AFibBurdenSettingsManager();
  v13 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v14 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v14 = MEMORY[0x29EDCA1A0];
  }

  *(v13 + 24) = v14;
  v15 = *MEMORY[0x29EDC5170];
  sub_29D939D68();
  v16 = sub_29D934408();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v13 + 16) = sub_29D9343C8();
  sub_29D69417C(v25);
  (*(v7 + 16))(v11, a2, v6);
  v19 = type metadata accessor for AFibBurdenPromotionGenerator();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_29D6FD060(v12, v13, v11);

  a3[3] = v19;
  result = sub_29D859E0C(qword_2A1A23F80, type metadata accessor for AFibBurdenPromotionGenerator);
  a3[4] = result;
  *a3 = v22;
  return result;
}

uint64_t sub_29D8573FC@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29D9341E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(a1) = *a1;
  (*(v11 + 16))(v10, a2);
  v12 = type metadata accessor for AFibFeaturesPromotionGenerator();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_29D81A47C(a1, v10);
  a3[3] = v12;
  result = sub_29D859E0C(qword_2A1A23E88, type metadata accessor for AFibFeaturesPromotionGenerator);
  a3[4] = result;
  *a3 = v15;
  return result;
}

uint64_t sub_29D857538@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = sub_29D9341E8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  (*(v15 + 16))(v14, a2);
  v16 = type metadata accessor for HypertensionNotificationsPromotionGenerator();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_29D7C3D48(a3, a4);
  v19 = sub_29D8007CC(a1, v14, a3, a4);
  sub_29D71847C(a3, a4);
  a5[3] = v16;
  result = sub_29D859E0C(&qword_2A1A23208, type metadata accessor for HypertensionNotificationsPromotionGenerator);
  a5[4] = result;
  *a5 = v19;
  return result;
}

uint64_t sub_29D8576A4()
{
  v1 = OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D85778C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D857808(uint64_t a1, void *a2)
{
  v43 = a1;
  v52 = *v2;
  v53 = a2;
  v49 = sub_29D9341E8();
  v47 = *(v49 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v49, v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D934148();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v45, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D934178();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v44, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29D9341B8();
  sub_29D857EF8(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v20 = sub_29D933F58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D93F680;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, *MEMORY[0x29EDC36F0], v20);
  v26(v25 + v22, *MEMORY[0x29EDC3790], v20);
  (*(v10 + 104))(v14, *MEMORY[0x29EDC3898], v45);
  sub_29D934158();
  v27 = v50;
  (*(v15 + 32))(v50 + OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain, v19, v44);
  v29 = v46;
  v28 = v47;
  v30 = v43;
  v31 = v49;
  (*(v47 + 16))(v46, v43, v49);
  v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v33 = (v48 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v28 + 32))(v34 + v32, v29, v31);
  v35 = v52;
  v36 = v53;
  *(v34 + v33) = v53;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  sub_29D6C320C();
  sub_29D859E0C(&qword_2A1A24AE0, sub_29D6C320C);
  v37 = v36;
  v38 = v51;
  sub_29D938378();
  sub_29D859E0C(&qword_2A1A24A20, sub_29D6C3178);
  v39 = v54;
  v40 = sub_29D938418();
  (*(v28 + 8))(v30, v31);
  (*(v55 + 8))(v38, v39);
  result = v27;
  *(v27 + OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_publisher) = v40;
  return result;
}

void sub_29D857D74(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D8569B0(v1 + v4, v7, a1);
}

void sub_29D857E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D6C320C();
    v7 = v6;
    v8 = sub_29D859E0C(&qword_2A1A24AE0, sub_29D6C320C);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D857EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D857F5C(uint64_t a1)
{
  v40 = sub_29D9341E8();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v40, v4);
  v37 = v5;
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224B0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, &qword_2A1A222D8);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v35 - v10;
  sub_29D859954(0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8AF0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = &v35 - v17;
  sub_29D859840(0, &qword_2A1A24BA8, MEMORY[0x29EDB8898]);
  v41 = v19;
  v39 = *(v19 - 8);
  v20 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v35 - v22;
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A8, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v24 = sub_29D934198();
  sub_29D859384(&qword_2A1A222D8, &qword_2A1A222D0, &type metadata for HeartPromotionResult);
  if (v24)
  {
    v25 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859A68();
    v26 = v35;
    v25 = sub_29D938418();
    (*(v36 + 8))(v11, v26);
  }

  (*(v14 + 8))(v18, v13);
  v42 = v25;
  v27 = v38;
  v28 = v40;
  (*(v2 + 16))(v38, a1, v40);
  v29 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v30 = swift_allocObject();
  (*(v2 + 32))(v30 + v29, v27, v28);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_29D859B60;
  *(v31 + 24) = v30;
  sub_29D8598F4(0, &qword_2A1A24AC8);
  sub_29D6CE0BC();
  sub_29D859494(&qword_2A1A24AD0, &qword_2A1A24AC8);
  sub_29D938428();

  sub_29D859A24(qword_2A1A24BB0, &qword_2A1A24BA8, MEMORY[0x29EDB8898]);
  v32 = v41;
  v33 = sub_29D938418();
  (*(v39 + 8))(v23, v32);
  return v33;
}

uint64_t sub_29D858468(uint64_t a1)
{
  v40 = sub_29D9341E8();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v40, v4);
  v36 = v5;
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224A0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, &qword_2A1A222C8);
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v34 - v10;
  sub_29D859954(0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8AF0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = &v34 - v17;
  sub_29D8593E8();
  v38 = *(v19 - 8);
  v39 = v19;
  v20 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v24 = sub_29D934198();
  sub_29D859384(&qword_2A1A222C8, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult);
  if (v24)
  {
    v25 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859594();
    v26 = v34;
    v25 = sub_29D938418();
    (*(v35 + 8))(v11, v26);
  }

  (*(v14 + 8))(v18, v13);
  v41 = v25;
  v27 = v37;
  v28 = v40;
  (*(v2 + 16))(v37, a1, v40);
  v29 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v30 = swift_allocObject();
  (*(v2 + 32))(v30 + v29, v27, v28);
  sub_29D8598F4(0, &qword_2A1A223F8);
  sub_29D6CE0BC();
  sub_29D859494(&unk_2A1A22400, &qword_2A1A223F8);
  sub_29D938428();

  sub_29D859E0C(&qword_2A1A22730, sub_29D8593E8);
  v31 = v39;
  v32 = sub_29D938418();
  (*(v38 + 8))(v23, v31);
  return v32;
}

uint64_t sub_29D858924(uint64_t a1)
{
  v40 = sub_29D9341E8();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v40, v4);
  v36 = v5;
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224B0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, &qword_2A1A222D8);
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v34 - v10;
  sub_29D859954(0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8AF0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = &v34 - v17;
  sub_29D859840(0, &qword_2A1A225D0, MEMORY[0x29EDB8900]);
  v39 = v19;
  v37 = *(v19 - 8);
  v20 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v34 - v22;
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A8, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v24 = sub_29D934198();
  sub_29D859384(&qword_2A1A222D8, &qword_2A1A222D0, &type metadata for HeartPromotionResult);
  if (v24)
  {
    v25 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859A68();
    v26 = v34;
    v25 = sub_29D938418();
    (*(v35 + 8))(v11, v26);
  }

  (*(v14 + 8))(v18, v13);
  v41 = v25;
  v27 = v38;
  v28 = v40;
  (*(v2 + 16))(v38, a1, v40);
  v29 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v30 = swift_allocObject();
  (*(v2 + 32))(v30 + v29, v27, v28);
  sub_29D8598F4(0, &qword_2A1A24AC8);
  sub_29D6CE0BC();
  sub_29D859494(&qword_2A1A24AD0, &qword_2A1A24AC8);
  sub_29D938468();

  sub_29D859A24(&qword_2A1A225D8, &qword_2A1A225D0, MEMORY[0x29EDB8900]);
  v31 = v39;
  v32 = sub_29D938418();
  (*(v37 + 8))(v23, v31);
  return v32;
}

uint64_t sub_29D858E08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v46 = sub_29D9341E8();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v46, v6);
  v42 = v7;
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224A0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, &qword_2A1A222C8);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v40 - v12;
  sub_29D859954(0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8AF0]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v14, v18);
  v20 = &v40 - v19;
  sub_29D8593E8();
  v44 = *(v21 - 8);
  v45 = v21;
  v22 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v26 = sub_29D934198();
  sub_29D859384(&qword_2A1A222C8, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult);
  if (v26)
  {
    v27 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859594();
    v28 = v40;
    v27 = sub_29D938418();
    (*(v41 + 8))(v13, v28);
  }

  (*(v16 + 8))(v20, v15);
  v49 = v27;
  v29 = v43;
  v30 = v46;
  (*(v4 + 16))(v43, a1, v46);
  v31 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = (v42 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v4 + 32))(v33 + v31, v29, v30);
  v34 = (v33 + v32);
  v35 = v47;
  v36 = v48;
  *v34 = v47;
  v34[1] = v36;
  sub_29D7C3D48(v35, v36);
  sub_29D8598F4(0, &qword_2A1A223F8);
  sub_29D6CE0BC();
  sub_29D859494(&unk_2A1A22400, &qword_2A1A223F8);
  sub_29D938428();

  sub_29D859E0C(&qword_2A1A22730, sub_29D8593E8);
  v37 = v45;
  v38 = sub_29D938418();
  (*(v44 + 8))(v25, v37);
  return v38;
}

void sub_29D8592E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D859954(255, a3, a4, MEMORY[0x29EDB8AF0]);
    sub_29D859384(a5, a3, a4);
    v9 = sub_29D938128();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D859384(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D859954(255, a2, a3, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8593E8()
{
  if (!qword_2A1A22728)
  {
    sub_29D8598F4(255, &qword_2A1A223F8);
    sub_29D6CE0BC();
    sub_29D859494(&unk_2A1A22400, &qword_2A1A223F8);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22728);
    }
  }
}

uint64_t sub_29D859494(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D8598F4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D8594E4@<X0>(_DWORD *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29D857538(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_29D859594()
{
  result = qword_2A1A224A8;
  if (!qword_2A1A224A8)
  {
    sub_29D8592E4(255, &qword_2A1A224A0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, &qword_2A1A222C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A224A8);
  }

  return result;
}

uint64_t sub_29D85962C(uint64_t a1, uint64_t a2)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8596C0(uint64_t a1)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D85974C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8597AC(uint64_t a1, uint64_t a2)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D859840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D8598F4(255, &qword_2A1A24AC8);
    v7 = v6;
    v8 = sub_29D6CE0BC();
    v9 = sub_29D859494(&qword_2A1A24AD0, &qword_2A1A24AC8);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29D8598F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D938238();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D859954(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8599A4@<X0>(_WORD *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D8573FC(a1, v6, a2);
}

uint64_t sub_29D859A24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D859840(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D859A68()
{
  result = qword_2A1A224B8;
  if (!qword_2A1A224B8)
  {
    sub_29D8592E4(255, &qword_2A1A224B0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, &qword_2A1A222D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A224B8);
  }

  return result;
}

uint64_t sub_29D859AE0@<X0>(unsigned int *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D8571C0(a1, v6, a2);
}

uint64_t sub_29D859B60@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D857088(a1, v6, a2);
}

uint64_t sub_29D859BE0(unsigned __int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_29D859C34()
{
  result = sub_29D934358();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D859CC8()
{
  sub_29D857EF8(319, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29D859D64()
{
  result = qword_2A1A22E58[0];
  if (!qword_2A1A22E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A22E58);
  }

  return result;
}

unint64_t sub_29D859DB8()
{
  result = qword_2A17B6790;
  if (!qword_2A17B6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6790);
  }

  return result;
}

uint64_t sub_29D859E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D859E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D859EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D859F48()
{
  result = qword_2A17B67A8;
  if (!qword_2A17B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67A8);
  }

  return result;
}

unint64_t sub_29D859FA0()
{
  result = qword_2A17B67B0;
  if (!qword_2A17B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67B0);
  }

  return result;
}

unint64_t sub_29D859FF8()
{
  result = qword_2A17B67B8;
  if (!qword_2A17B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67B8);
  }

  return result;
}

unint64_t sub_29D85A050()
{
  result = qword_2A17B67C0;
  if (!qword_2A17B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67C0);
  }

  return result;
}

unint64_t sub_29D85A0A8()
{
  result = qword_2A1A22E48;
  if (!qword_2A1A22E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22E48);
  }

  return result;
}

unint64_t sub_29D85A100()
{
  result = qword_2A1A22E50;
  if (!qword_2A1A22E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22E50);
  }

  return result;
}

double sub_29D85A168()
{
  sub_29D9386D8();
  result = *&v1;
  xmmword_2A17D0CC8 = v1;
  *&qword_2A17D0CD8 = v2;
  qword_2A17D0CE8 = v3;
  return result;
}

double sub_29D85A1C4()
{
  sub_29D9386D8();
  result = *&v1;
  xmmword_2A17D0CF0 = v1;
  *&qword_2A17D0D00 = v2;
  qword_2A17D0D10 = v3;
  return result;
}

uint64_t sub_29D85A234(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29D939538();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDBCA80]);
  result = sub_29D9395D8();
  *a2 = result;
  return result;
}

uint64_t sub_29D85A368(uint64_t a1, void (*a2)(uint64_t), unsigned int *a3, uint64_t *a4)
{
  sub_29D6F17D4(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v10);
  v13 = *a3;
  v14 = sub_29D939168();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = sub_29D9391A8();
  result = sub_29D85A490(v12);
  *a4 = v16;
  return result;
}

uint64_t sub_29D85A490(uint64_t a1)
{
  sub_29D6F17D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D85A4FC()
{
  sub_29D934EF8();
  v0 = sub_29D934EE8();
  v1 = [v0 CGColor];

  v8 = sub_29D935C18();
  v9 = MEMORY[0x29EDC2290];
  sub_29D693F78(v7);
  sub_29D935C08();
  v2 = sub_29D935808();
  sub_29D69417C(v7);
  v8 = sub_29D935488();
  v9 = MEMORY[0x29EDC1FC0];
  sub_29D693F78(v7);
  sub_29D935498();
  v3 = sub_29D935808();
  sub_29D69417C(v7);
  sub_29D85A75C(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  v5 = MEMORY[0x29ED65BE0]();

  return v5;
}

uint64_t sub_29D85A668()
{
  sub_29D85A75C(0, &qword_2A17B1018, sub_29D75F24C, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D93DDB0;
  v2 = sub_29D9370F8();
  v3 = MEMORY[0x29EDC2C70];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  sub_29D693F78((v1 + 32));
  sub_29D9370E8();
  v4 = *(v0 + 8);

  return v4(v1);
}

void sub_29D85A75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for NonHighlightingPlatformBackgroundView()
{
  result = qword_2A17B67D0;
  if (!qword_2A17B67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D85A834()
{
  sub_29D85ABE0(319, &qword_2A17B67C8, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D85A8D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D85ABE0(0, &qword_2A17B15F0, MEMORY[0x29EDBC388]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v19 - v13);
  sub_29D85AC40(v2, &v19 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_29D9350C8();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_29D93A298();
    v18 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_29D85AAD0()
{
  v0 = sub_29D9350C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D85A8D8(v5);
  sub_29D9350A8();
  (*(v1 + 8))(v5, v0);
  v7[1] = sub_29D939528();
  sub_29D939318();
}

void sub_29D85ABE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9350C8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D85AC40(uint64_t a1, uint64_t a2)
{
  sub_29D85ABE0(0, &qword_2A17B15F0, MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_29D85ACC0()
{
  v1 = v0;
  v2 = sub_29D93A788();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v63 - v9;
  v11 = sub_29D9336F8();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v66 = v63 - v17;
  v18 = type metadata accessor for ResultItem.BodyItem();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = (v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D85CAE0(v1, v22, type metadata accessor for ResultItem.BodyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *v22;
  v24 = v22[1];
  v26 = v22[2];
  v27 = v22[3];
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = type metadata accessor for BulletedLabelView();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel] = 0;
      *&v29[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel] = 0;
      *&v29[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView] = 0;
      v30 = &v29[OBJC_IVAR____TtC5Heart17BulletedLabelView_text];
      *v30 = v25;
      *(v30 + 1) = v24;
      v31 = &v29[OBJC_IVAR____TtC5Heart17BulletedLabelView_textAccessibilityIdentifier];
      *v31 = v26;
      *(v31 + 1) = v27;
      v70.receiver = v29;
      v70.super_class = v28;
      sub_29D935E88();
      sub_29D935E88();
      v32 = objc_msgSendSuper2(&v70, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v33 = sub_29D718BA8();
      v34 = sub_29D7188B8();
      [v33 addArrangedSubview_];

      v35 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView;
      v36 = *&v32[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView];
      v37 = sub_29D718A00();
      [v36 addArrangedSubview_];

      [v32 addSubview_];
      [*&v32[v35] hk:v32 alignConstraintsWithView:?];

      return v32;
    }

    v40 = v22[2];
    v32 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v32 setAdjustsFontForContentSizeCategory_];
    v41 = [objc_opt_self() hk:*MEMORY[0x29EDC80E0] preferredFontForTextStyle:?];
    [v32 setFont_];

    [v32 setNumberOfLines_];
    v42 = sub_29D939D28();
    [v32 setText_];

    if (v27)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v65 = v22[2];
  if (EnumCaseMultiPayload == 2)
  {
    v32 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v32 setAdjustsFontForContentSizeCategory_];
    v38 = [objc_opt_self() hk:*MEMORY[0x29EDC80E0] preferredFontForTextStyle:2 symbolicTraits:?];
    [v32 setFont_];

    [v32 setNumberOfLines_];
    v39 = sub_29D939D28();
    [v32 setText_];

    if (v27)
    {
LABEL_8:
      v43 = v32;
      sub_29D935E88();
      v44 = sub_29D939D28();
      swift_bridgeObjectRelease_n();
LABEL_15:

      [v32 setAccessibilityIdentifier_];

      return v32;
    }

LABEL_14:
    v61 = v32;
    v44 = 0;
    goto LABEL_15;
  }

  sub_29D85CBA8();
  v46 = *(v45 + 48);
  v63[2] = v25;
  v63[3] = v24;
  v47 = v67;
  v64 = v27;
  v48 = *(v67 + 32);
  v49 = v66;
  v48(v66, v22 + v46, v11);
  v63[1] = sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  (*(v47 + 16))(v15, v49, v11);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = swift_allocObject();
  v48((v51 + v50), v15, v11);
  v52 = v64;
  v53 = sub_29D93A738();
  sub_29D93A768();
  sub_29D935E88();
  sub_29D93A778();
  v54 = *MEMORY[0x29EDC78D8];
  v55 = *(MEMORY[0x29EDC78D8] + 8);
  v56 = *(MEMORY[0x29EDC78D8] + 16);
  v57 = *(MEMORY[0x29EDC78D8] + 24);
  sub_29D93A748();
  sub_29D69567C(0, &qword_2A17B6860, 0x29EDC7958);
  (*(v68 + 16))(v7, v10, v69);
  v58 = v53;
  v32 = sub_29D93A798();
  if ([v32 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v59 = 2;
  }

  else
  {
    v59 = 1;
  }

  [v32 setContentHorizontalAlignment_];
  if (v52)
  {
    sub_29D935E88();
    v60 = sub_29D939D28();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v60 = 0;
  }

  [v32 setAccessibilityIdentifier_];

  (*(v68 + 8))(v10, v69);
  (*(v67 + 8))(v66, v11);
  return v32;
}

void sub_29D85B428()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D85CC80();
  v2 = sub_29D939C58();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

void sub_29D85B518()
{
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v0 = *MEMORY[0x29EDC80E0];
  v1 = sub_29D93A658();

  qword_2A17B67E8 = v1;
}

void sub_29D85B5A4()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x29EDC8130];
  v2 = [v0 _preferredFontForTextStyle_variant_];

  if (v2)
  {
    qword_2A17B67F8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_29D85B63C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem;
  v4 = *(a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem);
  v5 = *(a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 8);
  v6 = sub_29D939D28();
  [v2 setText_];

  if (qword_2A17B0CD0 != -1)
  {
    swift_once();
  }

  [v2 setFont_];
  if (qword_2A17B0CC8 != -1)
  {
    swift_once();
  }

  [v2 setTextColor_];
  [v2 setNumberOfLines_];
  if (*(v3 + 24))
  {
    v7 = *(v3 + 16);
    v8 = sub_29D939D28();
  }

  else
  {
    v8 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_29D85B7DC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem;
  v4 = *(a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 32);
  v5 = *(a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 40);
  v6 = sub_29D939D28();
  [v2 setText_];

  if (qword_2A17B0CC0 != -1)
  {
    swift_once();
  }

  [v2 setFont_];
  if (qword_2A17B0CB8 != -1)
  {
    swift_once();
  }

  [v2 setTextColor_];
  [v2 setNumberOfLines_];
  if (*(v3 + 56))
  {
    v7 = *(v3 + 48);
    v8 = sub_29D939D28();
  }

  else
  {
    v8 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_29D85B95C()
{
  v1 = OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
    v5 = [v4 heightAnchor];
    v6 = [v5 constraintEqualToConstant_];

    [v4 addConstraint_];
    v7 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 88);
    [v4 addSubview_];
    v8 = *MEMORY[0x29EDBBAF0];
    v9 = v0;
    sub_29D93A668();
    v3 = v4;
    [v7 hk:v3 alignConstraintsWithView:?];

    v10 = *(v9 + v1);
    *(v9 + v1) = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_29D85BA8C()
{
  v1 = OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setAlignment_];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setHidden_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D85BB70(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_29D85BBD4(char *a1)
{
  v2 = sub_29D93A788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v26 - v10;
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_29D93A738();
  sub_29D93A768();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D93A778();
  v13 = *MEMORY[0x29EDC78D8];
  v14 = *(MEMORY[0x29EDC78D8] + 8);
  v15 = *(MEMORY[0x29EDC78D8] + 16);
  v16 = *(MEMORY[0x29EDC78D8] + 24);
  sub_29D93A748();
  sub_29D69567C(0, &qword_2A17B6860, 0x29EDC7958);
  (*(v3 + 16))(v8, v11, v2);
  v17 = v12;
  v18 = sub_29D93A798();
  if ([a1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  [v18 setContentHorizontalAlignment_];
  v20 = &a1[OBJC_IVAR____TtC5Heart14ResultItemView_resultItem];
  v21 = *(*&a1[OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 64] + 16) == 0;
  v22 = v18;
  [v22 setHidden_];
  if (*(v20 + 10))
  {
    v23 = *(v20 + 9);
    v24 = sub_29D939D28();
  }

  else
  {
    v24 = 0;
  }

  [v22 setAccessibilityIdentifier_];

  (*(v3 + 8))(v11, v2);
  return v22;
}

void sub_29D85BED4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_29D85BA8C();
    [v2 setHidden_];

    v3 = sub_29D85BB50();
    [v3 setHidden_];
  }
}

uint64_t sub_29D85BFA4()
{
  v1 = sub_29D85BF60();
  v2 = sub_29D85B61C();
  [v1 addArrangedSubview_];

  v3 = OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView;
  [*&v0[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView] setCustomSpacing:*&v0[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___titleLabel] afterView:10.0];
  v4 = *&v0[v3];
  v5 = sub_29D85B95C();
  [v4 addArrangedSubview_];

  v6 = *&v0[v3];
  v7 = sub_29D85B7BC();
  [v6 addArrangedSubview_];

  v8 = *&v0[v3];
  v9 = sub_29D85BA8C();
  [v8 addArrangedSubview_];

  v10 = *&v0[v3];
  v11 = sub_29D85BB50();
  [v10 addArrangedSubview_];

  [v0 addSubview_];
  [*&v0[v3] hk:v0 alignConstraintsWithView:?];

  return sub_29D85C10C();
}

uint64_t sub_29D85C10C()
{
  v1 = type metadata accessor for ResultItem.BodyItem();
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 64);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_29D85CAE0(v10, v7, type metadata accessor for ResultItem.BodyItem);
      v12 = sub_29D85BA8C();
      v13 = sub_29D85ACC0();
      [v12 addArrangedSubview_];

      result = sub_29D85CB48(v7, type metadata accessor for ResultItem.BodyItem);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

id sub_29D85C450(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_29D85C4A4(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setAlignment_];
    [v7 setAxis_];
    [v7 setSpacing_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_29D85C5D8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5Heart21ListOfResultItemsView_resultItems];
  v29 = *(v2 + 16);
  if (v29)
  {
    v3 = 0;
    v4 = (v2 + 32);
    while (v3 < *(v2 + 16))
    {
      v14 = v4[1];
      v32[0] = *v4;
      v32[1] = v14;
      v15 = v4[2];
      v16 = v4[3];
      v17 = v4[5];
      v32[4] = v4[4];
      v32[5] = v17;
      v32[2] = v15;
      v32[3] = v16;
      v19 = *v4;
      v18 = v4[1];
      v21 = v4[4];
      v20 = v4[5];
      v23 = v4[2];
      v22 = v4[3];
      v33 = v3;
      v36 = v23;
      v37 = v22;
      v38 = v21;
      v39 = v20;
      v34 = v19;
      v35 = v18;
      if (v3)
      {
        sub_29D85C9F8(v32, v31);
        v24 = sub_29D85C494();
        if (qword_2A17B0CD8 != -1)
        {
          swift_once();
        }

        v25 = qword_2A17B6800;
        v26 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
        [v26 setBackgroundColor_];
        v27 = [objc_opt_self() constraintWithItem:v26 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
        [v26 addConstraint_];

        [v24 addArrangedSubview_];
      }

      else
      {
        sub_29D85C9F8(v32, v31);
      }

      ++v3;
      v5 = type metadata accessor for ResultItemView();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___titleLabel] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___descriptionLabel] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___learnMoreButton] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView] = 0;
      v7 = &v6[OBJC_IVAR____TtC5Heart14ResultItemView_resultItem];
      v8 = v35;
      *v7 = v34;
      *(v7 + 1) = v8;
      v9 = v37;
      v10 = v39;
      v11 = v36;
      *(v7 + 4) = v38;
      *(v7 + 5) = v10;
      *(v7 + 2) = v11;
      *(v7 + 3) = v9;
      sub_29D85CAE0(&v33, v31, sub_29D85CA30);
      v30.receiver = v6;
      v30.super_class = v5;
      v12 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      sub_29D85BFA4();
      v13 = sub_29D85C494();
      [v13 addArrangedSubview_];

      sub_29D85CB48(&v33, sub_29D85CA30);
      v4 += 6;
      if (v29 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v28 = sub_29D85C494();
    [v1 addSubview_];

    [*&v1[OBJC_IVAR____TtC5Heart21ListOfResultItemsView____lazy_storage___stackView] hk:v1 alignConstraintsWithView:?];
  }
}

id sub_29D85C940(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D85CA30()
{
  if (!qword_2A17B6850)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B6850);
    }
  }
}

uint64_t type metadata accessor for ResultItem.BodyItem()
{
  result = qword_2A17B6868;
  if (!qword_2A17B6868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D85CAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D85CB48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D85CBA8()
{
  if (!qword_2A17B6858)
  {
    sub_29D9336F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B6858);
    }
  }
}

void sub_29D85CC10()
{
  v0 = *(*(sub_29D9336F8() - 8) + 80);

  sub_29D85B428();
}

unint64_t sub_29D85CC80()
{
  result = qword_2A17B3700;
  if (!qword_2A17B3700)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3700);
  }

  return result;
}

void sub_29D85CCE0()
{
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___learnMoreButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView) = 0;
  sub_29D93AB28();
  __break(1u);
}

void sub_29D85CD84()
{
  sub_29D85CBA8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_29D85CE04(uint64_t a1, int a2)
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

uint64_t sub_29D85CE4C(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for CompletedBloodPressureJournalTileActionHandler()
{
  result = qword_2A17B6878;
  if (!qword_2A17B6878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D85CF28()
{
  v1 = *v0;
  v2 = sub_29D939968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29D939998();
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v53, v8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9369A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v46 - v17;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v19 = sub_29D937898();
  sub_29D69C6C0(v19, qword_2A1A2BF10);
  v20 = sub_29D937878();
  v21 = sub_29D93A2A8();
  v22 = os_log_type_enabled(v20, v21);
  v48 = v1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v23 = 136446466;
    v24 = sub_29D93AF08();
    v26 = v11;
    v27 = v10;
    v28 = v3;
    v29 = v2;
    v30 = sub_29D6C2364(v24, v25, aBlock);

    *(v23 + 4) = v30;
    v2 = v29;
    v3 = v28;
    v10 = v27;
    v11 = v26;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_29D6C2364(0x445074726F707865, 0xEB00000000292846, aBlock);
    _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Attempting to present export PDF", v23, 0x16u);
    v31 = v46;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v31, -1, -1);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v32 = v49;
  sub_29D936538();
  v33 = sub_29D936998();
  v34 = *(v11 + 8);
  v34(v18, v10);
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v35 = sub_29D7D0C64();
  }

  else
  {
    v35 = 5;
  }

  v36 = v47;
  sub_29D936538();
  sub_29D936988();
  v34(v36, v10);
  v37 = sub_29D935748();

  type metadata accessor for BloodPressurePDFProvider();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  sub_29D935EC8();
  v39 = v37;
  *(v38 + 24) = sub_29D935E98();
  *(v38 + 32) = 0x416E285000000000;
  *(v38 + 40) = 10;
  *(v38 + 41) = v35;
  sub_29D6FC794();
  v40 = sub_29D93A468();
  v41 = swift_allocObject();
  v41[2] = v32;
  v41[3] = v38;
  v41[4] = v48;
  aBlock[4] = sub_29D85DA2C;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2449688;
  v42 = _Block_copy(aBlock);

  v43 = v50;
  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D85DA50(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D85DA50(&qword_2A1A24980, sub_29D6C2DFC);
  v44 = v52;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v43, v44, v42);
  _Block_release(v42);

  (*(v3 + 8))(v44, v2);
  return (*(v51 + 8))(v43, v53);
}

void sub_29D85D570(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D9369A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936538();
  v9 = sub_29D936998();
  (*(v4 + 8))(v8, v3);
  v19[3] = type metadata accessor for BloodPressurePDFProvider();
  v19[4] = sub_29D85DA50(&qword_2A17B2728, type metadata accessor for BloodPressurePDFProvider);
  v19[0] = a2;

  sub_29D93A398();

  sub_29D69417C(v19);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2BF10);
  v11 = sub_29D937878();
  v12 = sub_29D93A2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136446466;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0x445074726F707865, 0xEB00000000292846, v19);
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Presented export PDF", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }
}

uint64_t sub_29D85D808(uint64_t a1)
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

uint64_t sub_29D85DA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D85DA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D85DAFC()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19[-v11];
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
  v17 = v16;
  result = (*(v4 + 8))(v12, v3);
  qword_2A17B6890 = v15;
  *algn_2A17B6898 = v17;
  return result;
}

uint64_t sub_29D85DCF8()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19[-v11];
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
  v17 = v16;
  result = (*(v4 + 8))(v12, v3);
  qword_2A17B68A0 = v15;
  *algn_2A17B68A8 = v17;
  return result;
}

uint64_t sub_29D85DEF4()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19[-v11];
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
  v17 = v16;
  result = (*(v4 + 8))(v12, v3);
  qword_2A17B68B0 = v15;
  *algn_2A17B68B8 = v17;
  return result;
}

uint64_t sub_29D85E0F0()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19[-v11];
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
  v17 = v16;
  result = (*(v4 + 8))(v12, v3);
  qword_2A17B68C0 = v15;
  *algn_2A17B68C8 = v17;
  return result;
}

uint64_t sub_29D85E2EC()
{
  v0 = sub_29D933AA8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19[-v11];
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
  v17 = v16;
  result = (*(v4 + 8))(v12, v3);
  qword_2A17B68D0 = v15;
  *algn_2A17B68D8 = v17;
  return result;
}

uint64_t sub_29D85E4E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D9383D8();
}

uint64_t sub_29D85E560()
{
  type metadata accessor for BloodPressureJournalTypeSelectionCell();
  sub_29D85F874(&qword_2A17B6940, type metadata accessor for BloodPressureJournalTypeSelectionCell);
  return sub_29D93A348();
}

uint64_t sub_29D85E5D0()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - v8;
  sub_29D935668();
  sub_29D935618();
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_29D935628();
  v11 = sub_29D935608();
  v10(v9, v0);
  return v11;
}

void sub_29D85E748(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCollectionViewController(0);
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

char *sub_29D85E914(uint64_t a1)
{
  sub_29D85F6D0(0, &qword_2A17B6920, sub_29D7B7CA4, MEMORY[0x29EDB8AF0]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v26[-v8];
  v10 = (v1 + qword_2A17B68F0);
  *v10 = 0;
  v10[1] = 0;
  v11 = v1 + qword_2A17B6900;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v1 + qword_2A17B6908) = 0;
  *(v1 + qword_2A17B68F8) = a1;
  v12 = objc_allocWithZone(type metadata accessor for BloodPressureJournalTypeSelectionCollectionViewController(0));

  v14 = sub_29D85F018(v13);
  v15 = qword_2A17B0CE0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  sub_29D74059C();
  v17 = sub_29D936A98();
  v18 = sub_29D939D28();
  v19 = [v17 hxui:v18 addNextButtonWithAccessibilityIdentifier:?];

  v20 = qword_2A17B6908;
  v21 = *&v17[qword_2A17B6908];
  *&v17[qword_2A17B6908] = v19;

  v22 = *&v17[v20];
  if (v22)
  {
    [v22 setEnabled_];
  }

  swift_beginAccess();
  sub_29D85F6D0(0, &qword_2A17B4DB0, sub_29D7B7CA4, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D85F73C();
  v23 = sub_29D938588();

  (*(v5 + 8))(v9, v4);
  v27[3] = sub_29D938278();
  v27[4] = MEMORY[0x29EDB8A10];

  v27[0] = v23;
  v24 = qword_2A17B6900;
  swift_beginAccess();
  sub_29D85F7C4(v27, &v17[v24]);
  swift_endAccess();

  return v17;
}

void sub_29D85EC70(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_2A17B6908);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      [v5 setEnabled_];
    }
  }
}

void sub_29D85ECFC(char *a1)
{
  v1 = *&a1[qword_2A17B68F8];
  v5 = a1;
  sub_29D7B7874(4, 0);
  v2 = v5;
  v3 = *&v5[qword_2A17B68F0];
  if (v3)
  {
    v4 = v5;
    swift_unknownObjectRetain();
    sub_29D8BA680(v4, v3);
    sub_29D936978();

    v2 = v5;
  }
}

void sub_29D85EDC4()
{
  v1 = *(v0 + qword_2A17B68F0);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B68F8);

  sub_29D85FA58(v0 + qword_2A17B6900);
  v3 = *(v0 + qword_2A17B6908);
}

id sub_29D85EE3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}