unint64_t sub_29E015594()
{
  result = qword_2A181AB48;
  if (!qword_2A181AB48)
  {
    sub_29E015620();
    sub_29E0151F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB48);
  }

  return result;
}

void sub_29E015620()
{
  if (!qword_2A181AB50)
  {
    sub_29E014FA0();
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AB50);
    }
  }
}

uint64_t sub_29E0156C4@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_29E0121AC(v2 | *(v1 + 32), a1);
}

void sub_29E0156E4()
{
  if (!qword_2A181AB58)
  {
    sub_29E0142E0(255, &qword_2A181AB60, sub_29DED9940, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC558]);
    sub_29E015784(255);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AB58);
    }
  }
}

unint64_t sub_29E0157B8()
{
  result = qword_2A181AB70;
  if (!qword_2A181AB70)
  {
    sub_29E0156E4();
    sub_29E015868();
    sub_29E0137D0(&qword_2A181AB80, sub_29E015784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB70);
  }

  return result;
}

unint64_t sub_29E015868()
{
  result = qword_2A181AB78;
  if (!qword_2A181AB78)
  {
    sub_29E0142E0(255, &qword_2A181AB60, sub_29DED9940, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC558]);
    sub_29E0137D0(&qword_2A1818520, sub_29DED9940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB78);
  }

  return result;
}

void sub_29E015950()
{
  if (!qword_2A181AB90)
  {
    sub_29E0156E4();
    sub_29E0157B8();
    v0 = sub_29E2C27B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181AB90);
    }
  }
}

unint64_t sub_29E015A08()
{
  result = qword_2A181AB98;
  if (!qword_2A181AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181AB98);
  }

  return result;
}

void *sub_29E015A5C(unint64_t a1)
{
  v32 = sub_29E2C0514();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0160EC(0, &qword_2A1A61670, MEMORY[0x29EDC3948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v25 - v6;
  v8 = sub_29E2BD764();
  v29 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v40 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v28 = v25 - v12;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v13 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v30 = v2 + 8;
    v36 = (v29 + 48);
    v37 = (v29 + 56);
    v41 = MEMORY[0x29EDCA190];
    v35 = (v29 + 32);
    v11.n128_u64[0] = 136446466;
    v26 = v11;
    v33 = v8;
    v2 = i;
    v27 = a1;
    v31 = v7;
    v25[1] = v4;
    while (v39)
    {
      v14 = MEMORY[0x29ED80D70](v13, a1);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v16 = v14;
      sub_29E2BD734();
      (*v37)(v7, 0, 1, v8);

      if ((*v36)(v7, 1, v8) == 1)
      {
        sub_29E016060(v7);
      }

      else
      {
        v17 = *v35;
        v18 = v28;
        (*v35)(v28, v7, v8);
        v17(v40, v18, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_29E1437C4(0, v41[2] + 1, 1, v41);
        }

        v20 = v41[2];
        v19 = v41[3];
        if (v20 >= v19 >> 1)
        {
          v41 = sub_29E1437C4(v19 > 1, v20 + 1, 1, v41);
        }

        v21 = v40;
        v22 = v41;
        v41[2] = v20 + 1;
        v23 = v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20;
        v8 = v33;
        v17(v23, v21, v33);
        v2 = i;
      }

      ++v13;
      if (v15 == v2)
      {
        return v41;
      }
    }

    if (v13 >= *(v38 + 16))
    {
      goto LABEL_18;
    }

    v14 = *(a1 + 8 * v13 + 32);
    v15 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E016060(uint64_t a1)
{
  sub_29E0160EC(0, &qword_2A1A61670, MEMORY[0x29EDC3948], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E0160EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E016150()
{
  result = qword_2A181ABA8;
  if (!qword_2A181ABA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A181ABA8);
  }

  return result;
}

uint64_t sub_29E01619C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E016214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

char *sub_29E016288(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33UserCharacteristicsChangeDetector_userCharacteristics] = a1;

  v10 = sub_29E1AE714();
  v12 = v11;
  swift_beginAccess();
  v35 = v10;
  v36 = v12 & 1;
  sub_29E2C11D4();
  swift_endAccess();
  v13 = sub_29E1AE3E8();
  swift_beginAccess();
  v35 = v13;
  type metadata accessor for HKBiologicalSex(0);
  sub_29E2C11D4();
  swift_endAccess();
  v14 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33UserCharacteristicsChangeDetector_observerQueue] = a2;
  v15 = type metadata accessor for UserCharacteristicsChangeDetector();
  v34.receiver = v3;
  v34.super_class = v15;
  v16 = a2;
  v17 = objc_msgSendSuper2(&v34, sel_init);
  sub_29E2C04B4();
  v18 = sub_29E2C0504();
  v19 = sub_29E2C3A34();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v6;
    v22 = v21;
    v37[0] = v21;
    *v20 = 136446210;
    v23 = sub_29E2C4AE4();
    v25 = sub_29DFAA104(v23, v24, v37);
    v33 = a1;
    v26 = v7;
    v27 = v16;
    v28 = v25;

    *(v20 + 4) = v28;
    v16 = v27;
    _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s] Initializing", v20, 0xCu);
    sub_29DE93B3C(v22);
    MEMORY[0x29ED82140](v22, -1, -1);
    v29 = v20;
    v14 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter;
    MEMORY[0x29ED82140](v29, -1, -1);

    (*(v26 + 8))(v9, v32);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  [*(*&v17[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33UserCharacteristicsChangeDetector_userCharacteristics] + 24) registerObserver:v17 queue:*&v17[v14[375]]];

  return v17;
}

id sub_29E0165B0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Deallocated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [*(*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33UserCharacteristicsChangeDetector_userCharacteristics] + 24) unregisterObserver_];
  v13 = type metadata accessor for UserCharacteristicsChangeDetector();
  v17.receiver = v1;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

uint64_t type metadata accessor for UserCharacteristicsChangeDetector()
{
  result = qword_2A1A61F18;
  if (!qword_2A1A61F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0168E8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();

    v8 = sub_29E2C0504();
    v9 = sub_29E2C3A34();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      v26 = v25[0];
      *v10 = 136446466;
      v11 = sub_29E2C4AE4();
      v13 = sub_29DFAA104(v11, v12, &v26);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v25[1] = a1;
      type metadata accessor for UserCharacteristics();

      v14 = sub_29E2C3424();
      v16 = sub_29DFAA104(v14, v15, &v26);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Received updated UserCharacteristics: %s", v10, 0x16u);
      v17 = v25[0];
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  v18 = sub_29E1AE714();
  v20 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v18;
  v27 = v20 & 1;
  v21 = v2;
  sub_29E2C1224();
  v22 = sub_29E1AE3E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v22;
  v23 = v21;
  return sub_29E2C1224();
}

void sub_29E016BE4()
{
  sub_29E016CCC();
  if (v0 <= 0x3F)
  {
    sub_29E016D1C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29E016CCC()
{
  if (!qword_2A1A61E28)
  {
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61E28);
    }
  }
}

void sub_29E016D1C()
{
  if (!qword_2A1A61E20)
  {
    type metadata accessor for HKBiologicalSex(255);
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61E20);
    }
  }
}

uint64_t sub_29E016D74@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_29E016DFC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_29E2C1224();
}

uint64_t sub_29E016E7C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E016EFC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_29E2C1224();
}

uint64_t sub_29E016F6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E016FE0()
{
  sub_29DF687B4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24HealthNotificationsModel__healthNotificationsAvailable;
  LOBYTE(aBlock[0]) = 1;
  sub_29E2C11D4();
  (*(v3 + 32))(v0 + v6, v5, v2);
  v7 = [objc_allocWithZone(MEMORY[0x29EDBCCF0]) initWithBundleIdentifier_];
  aBlock[4] = sub_29E0176A0;
  v11 = v0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24B8088;
  v8 = _Block_copy(aBlock);

  [v7 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v8);

  return v0;
}

uint64_t sub_29E017194(void *a1, uint64_t a2)
{
  v4 = sub_29E2C2B34();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2C2B54();
  v8 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB1E60();
  v11 = sub_29E2C3CF4();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_29E0176C0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B80D8;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF0141C(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DF013C4();
  sub_29DF0141C(&qword_2A1A626D0, sub_29DF013C4);
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_29E017478(int a1, id a2)
{
  if ([a2 authorizationStatus] != 1)
  {
    [a2 authorizationStatus];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

uint64_t sub_29E017520()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24HealthNotificationsModel__healthNotificationsAvailable;
  sub_29DF687B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthNotificationsModel()
{
  result = qword_2A181ABC8;
  if (!qword_2A181ABC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E017610()
{
  sub_29DF687B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E0176A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E0176D0(uint64_t a1)
{
  sub_29DF95124();
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BD624();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  sub_29E021414(0, &qword_2A1A5E458, sub_29DF952A4, sub_29E021CE0, MEMORY[0x29EDB8AE0]);
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v24 - v13;
  (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v12);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v8 + 32))(v16 + v15, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29DF952A4(0);
  sub_29E021CE0();
  v17 = v1;
  sub_29E2C11B4();
  *(swift_allocObject() + 16) = v17;
  v18 = v17;
  sub_29E2C1004();
  v19 = MEMORY[0x29EDC2D78];
  sub_29E020AF4(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  sub_29E021D14();
  sub_29E021708(&qword_2A1A5E728, &qword_2A1A5E720, v19);
  v20 = v25;
  sub_29E2C13C4();

  sub_29E01D0F8(&qword_2A1A5E7D0, sub_29DF95124);
  v21 = v26;
  v22 = sub_29E2C1274();
  (*(v27 + 8))(v6, v21);
  (*(v11 + 8))(v14, v20);
  return v22;
}

id sub_29E017AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v3 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = *a1;
    }

    v7 = v5;
  }

  else
  {
    v6 = 1;
    v4 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v4;
  a2[2] = v5;

  return sub_29DF4B4FC(v3);
}

id sub_29E017B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v4 = v3;

  return v6;
}

uint64_t sub_29E017BB4(uint64_t a1, uint64_t a2)
{
  v24[11] = a2;
  sub_29E020AF4(0, &qword_2A1A5E4D8, sub_29DF952D8, MEMORY[0x29EDB8AC0]);
  v24[6] = *(v2 - 8);
  v24[7] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v24[5] = v24 - v3;
  v4 = sub_29E2C0514();
  v24[9] = *(v4 - 8);
  v24[10] = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v24[8] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BFC94();
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v9);
  v24[4] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v24 - v12;
  sub_29E021E44(0, &qword_2A1A5E538, sub_29DF952D8, MEMORY[0x29EDB8AB0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v24[3] = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = v24 - v19;
  sub_29DE9408C(0, &qword_2A1A5E120);
  sub_29E2BFCD4();
  v21 = v25;
  (*(v25 + 32))(v13, v8, v6);
  (*(v21 + 56))(v13, 0, 1, v6);
  sub_29E2C1164();
  sub_29E021EA8();
  v22 = sub_29E2C1274();
  (*(v16 + 8))(v20, v15);
  return v22;
}

uint64_t sub_29E0181F0(uint64_t a1)
{
  sub_29DF95DF4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BFC94();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF95FC4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29DF96028(v9);
    sub_29DE9408C(0, &qword_2A1A5E120);
    return sub_29E2BFCE4();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_29DE9408C(0, &qword_2A1A5E120);
    v21[0] = sub_29E2BFCE4();
    v21[1] = v21[0];
    sub_29E021E44(0, &qword_2A1A5E020, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9E90]);
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29E2CAB20;
    (*(v11 + 16))(v16 + v15, v13, v10);
    v17 = v3;
    v18 = v4;
    v19 = MEMORY[0x29EDC2D78];
    sub_29E020AF4(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    sub_29E021708(&qword_2A1A5E728, &qword_2A1A5E720, v19);
    sub_29E2C1334();

    sub_29E01D0F8(&qword_2A1A5EB08, sub_29DF95DF4);
    v20 = sub_29E2C1274();
    (*(v18 + 8))(v6, v17);
    (*(v11 + 8))(v13, v10);
    return v20;
  }
}

uint64_t sub_29E0185A4(const char *a1)
{
  v3 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, v17, v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v3;
}

uint64_t sub_29E01877C()
{
  sub_29E0185A4("[%{public}s] Plugin delegate is deallocated");

  return swift_deallocClassInstance();
}

id sub_29E0187DC(uint64_t a1)
{
  v398 = *MEMORY[0x29EDCA608];
  v370 = *v1;
  v365 = sub_29E2BCC94();
  v364 = *(v365 - 8);
  MEMORY[0x2A1C7C4A8](v365);
  v363 = &v315 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA3830();
  v362 = v4;
  v353 = *(v4 - 1);
  MEMORY[0x2A1C7C4A8](v4);
  v361 = &v315 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0206CC(0, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0]);
  v348 = v6;
  v347 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v344 = &v315 - v7;
  sub_29DEBAF74();
  v360 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v359 = &v315 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E02067C(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
  v338 = v10;
  v337 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v336 = &v315 - v11;
  sub_29DEBB070();
  v341 = v12;
  v340 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v339 = &v315 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174();
  v350 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v346 = &v315 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E01D198();
  v351 = v16;
  v349 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v345 = &v315 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E021414(0, &qword_2A1A5E828, sub_29E01D198, sub_29E01D344, MEMORY[0x29EDB8950]);
  v356 = v18;
  v355 = *(v18 - 1);
  MEMORY[0x2A1C7C4A8](v18);
  v352 = &v315 - v19;
  sub_29E01D378();
  v358 = v20;
  v357 = *(v20 - 1);
  MEMORY[0x2A1C7C4A8](v20);
  v354 = &v315 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_29E2BCEA4();
  v369 = *(v379 - 8);
  MEMORY[0x2A1C7C4A8](v379);
  v343 = &v315 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v376 = &v315 - v24;
  v342 = v25;
  MEMORY[0x2A1C7C4A8](v26);
  v378 = &v315 - v27;
  v375 = sub_29E2BD564();
  v382 = *(v375 - 1);
  MEMORY[0x2A1C7C4A8](v375);
  v374 = &v315 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = sub_29E2BE194();
  v385 = *(v373 - 8);
  MEMORY[0x2A1C7C4A8](v373);
  v372 = &v315 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_29E2BD594();
  v377 = *(v367 - 1);
  MEMORY[0x2A1C7C4A8](v367);
  v368 = (&v315 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_29E2BD624();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v366 = &v315 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v36 = &v315 - v35;
  MEMORY[0x2A1C7C4A8](v37);
  v39 = &v315 - v38;
  *&v381 = sub_29E2C0514();
  v380 = *(v381 - 8);
  MEMORY[0x2A1C7C4A8](v381);
  v334 = &v315 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41);
  v335 = &v315 - v42;
  MEMORY[0x2A1C7C4A8](v43);
  v45 = &v315 - v44;
  sub_29E2C04B4();
  v46 = *(v32 + 2);
  v47 = a1;
  (v46)(v39, a1, v31);
  v48 = sub_29E2C0504();
  v49 = sub_29E2C3A34();
  v50 = os_log_type_enabled(v48, v49);
  v389 = v32 + 16;
  v387 = v46;
  v383 = v32;
  v388 = v31;
  if (v50)
  {
    v51 = v32;
    v52 = swift_slowAlloc();
    v333 = swift_slowAlloc();
    *&v395 = v333;
    *v52 = 136446466;
    v53 = sub_29E2C4AE4();
    v55 = sub_29DFAA104(v53, v54, &v395);
    v56 = v31;
    v57 = v36;
    v58 = v56;
    v386 = v47;
    v59 = v55;

    *(v52 + 4) = v59;
    *(v52 + 12) = 2080;
    (v387)(v57, v39, v58);
    v60 = sub_29E2C3424();
    v62 = v61;
    v51[1](v39, v58);
    v63 = sub_29DFAA104(v60, v62, &v395);
    v64 = v385;
    v47 = v386;

    *(v52 + 14) = v63;
    _os_log_impl(&dword_29DE74000, v48, v49, "[%{public}s] Creating pipelines for context: %s", v52, 0x16u);
    v65 = v333;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v65, -1, -1);
    MEMORY[0x29ED82140](v52, -1, -1);

    (*(v380 + 8))(v45, v381);
  }

  else
  {

    (*(v32 + 1))(v39, v31);
    (*(v380 + 8))(v45, v381);
    v57 = v36;
    v64 = v385;
  }

  if (sub_29E2BD5E4())
  {
    return MEMORY[0x29EDCA190];
  }

  v384 = v57;
  v333 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v66 = sub_29E2BD4E4();
  type metadata accessor for UserCharacteristics();
  swift_allocObject();
  v67 = sub_29E1AE0D4(v66);
  sub_29DE93B3C(&v395);

  sub_29E2BD5A4();
  v332 = v397;
  v331 = sub_29DE966D4(&v395, v396);
  v330 = sub_29E2BD274();
  sub_29E021E44(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v69 = v68;
  v70 = sub_29E2BD234();
  v71 = v47;
  v72 = *(v70 - 8);
  v73 = *(v72 + 72);
  v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v324 = *(v72 + 80);
  v327 = v69;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_29E2CD7A0;
  v326 = v74;
  v76 = v75 + v74;
  v77 = *(v72 + 104);
  v77(v76, *MEMORY[0x29EDC3760], v70);
  v78 = *MEMORY[0x29EDC3790];
  v325 = v73;
  v329 = v70;
  v328 = v72 + 104;
  v323 = v77;
  v77(v76 + v73, v78, v70);
  v79 = v372;
  sub_29E110B7C(v372);
  sub_29E2BE184();
  v80 = *(v64 + 1);
  v385 = v64 + 8;
  v322 = v80;
  v80(v79, v373);
  v81 = *(v382 + 13);
  v321 = *MEMORY[0x29EDC3898];
  v382 += 104;
  v320 = v81;
  v81(v374);
  v82 = v368;
  sub_29E2BD574();
  v83 = sub_29E2BD4F4();
  v84 = v367;
  v330 = *(v377 + 1);
  v330(v82, v367);
  v377 = type metadata accessor for UserCharacteristicsChangeDetector();
  v85 = objc_allocWithZone(v377);
  v331 = v67;
  v86 = sub_29E016288(v67, v83);
  sub_29DE93B3C(&v395);
  v87 = sub_29E2BD5C4();
  v88 = [objc_allocWithZone(MEMORY[0x29EDC33E0]) initWithHealthStore_];

  v89 = v71;
  v90 = sub_29E2BD5D4();
  v91 = v90;
  v92 = sub_29E2BD274();
  LOBYTE(v67) = sub_29E2BD264();

  v332 = v86;
  if ((v67 & 1) == 0)
  {
    if (!v90)
    {
      sub_29E2BD5A4();
      sub_29DE966D4(&v395, v396);
      v127 = v368;
      sub_29E01BCF0(v368);
      v128 = sub_29E2BD4F4();
      v330(v127, v84);
      sub_29DE93B3C(&v395);
      sub_29E2BD5A4();
      sub_29DE966D4(&v395, v396);
      v129 = sub_29E2BD4E4();
      v130 = [objc_allocWithZone(MEMORY[0x29EDC33D0]) initWithHealthStore:v129 queue:v128];

      sub_29DE93B3C(&v395);
      v131 = type metadata accessor for MenstrualCyclesOnboardingChangeDetector();
      swift_allocObject();
      v132 = v130;
      v385 = v132;
      v133 = v128;
      v383 = v133;
      v382 = sub_29E271770(v132, v133);

      sub_29E021E44(0, &unk_2A1A61CB0, sub_29DFCF3DC, MEMORY[0x29EDC9E90]);
      v134 = swift_allocObject();
      v381 = xmmword_29E2CFE80;
      *(v134 + 16) = xmmword_29E2CFE80;
      *(v134 + 56) = &type metadata for Period101ArticleDataProvider;
      *(v134 + 64) = sub_29E0200DC();
      *(v134 + 72) = sub_29E020130();
      *(v134 + 104) = &type metadata for CycleFactorsArticleDataProvider;
      *(v134 + 112) = sub_29E020184();
      *(v134 + 120) = sub_29E0201D8();
      *(v134 + 152) = &type metadata for SpottingArticleDataProvider;
      *(v134 + 160) = sub_29E02022C();
      *(v134 + 168) = sub_29E020280();
      *(v134 + 200) = &type metadata for FertilityArticleDataProvider;
      *(v134 + 208) = sub_29E0202D4();
      *(v134 + 216) = sub_29E020328();
      v390[0] = v134;
      v135 = swift_allocObject();
      *(v135 + 16) = v381;
      *(v135 + 56) = &type metadata for PregnancyMedicationsArticleDataProvider;
      *(v135 + 64) = sub_29E02037C();
      *(v135 + 72) = sub_29E0203D0();
      v136 = sub_29E2BD5C4();
      *(v135 + 104) = &type metadata for PregnancyArticleDataProvider;
      *(v135 + 112) = sub_29E020424();
      *(v135 + 120) = sub_29E020478();
      *(v135 + 80) = v136;
      *(v135 + 152) = &type metadata for PregnancyExerciseArticleDataProvider;
      *(v135 + 160) = sub_29E0204CC();
      *(v135 + 168) = sub_29E020520();
      *(v135 + 200) = &type metadata for PregnancyWarningSignsArticleDataProvider;
      *(v135 + 208) = sub_29E020574();
      *(v135 + 216) = sub_29E0205C8();
      sub_29DFCBD84(v135);
      sub_29E02061C(0, &unk_2A1A61CC0, &unk_2A1A62690);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_29E2CAB20;
      (v387)(v384, v89, v388);
      v389 = v390[0];
      v396 = v131;
      v397 = &off_2A24BDA98;
      *&v395 = v382;
      v393 = v377;
      v394 = &off_2A24BDA80;
      v137 = v332;
      v391 = v332;
      v138 = type metadata accessor for MenstrualCyclesArticlesGeneratorPipeline();
      v387 = swift_allocObject();
      v139 = sub_29DEF61C0(&v395, v131);
      v388 = &v315;
      v140 = MEMORY[0x2A1C7C4A8](v139);
      v142 = (&v315 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v143 + 16))(v142, v140);
      v144 = sub_29DEF61C0(&v391, v393);
      v145 = MEMORY[0x2A1C7C4A8](v144);
      v147 = v88;
      v148 = (&v315 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v149 + 16))(v148, v145);
      v150 = *v142;
      v151 = *v148;
      v152 = v137;
      v153 = v147;

      v154 = sub_29E01D6D4(v384, v389, v150, v151, v153, v387);
      sub_29DE93B3C(&v391);
      sub_29DE93B3C(&v395);
      *(v122 + 56) = v138;
      *(v122 + 64) = sub_29E01D0F8(&qword_2A1A611C0, type metadata accessor for MenstrualCyclesArticlesGeneratorPipeline);
      *(v122 + 32) = v154;

      return v122;
    }

    return MEMORY[0x29EDCA190];
  }

  v319 = v88;

  v93 = [v333 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  sub_29E01BCF0(v82);
  v94 = sub_29E2BD4F4();
  v95 = v330;
  v330(v82, v84);
  sub_29DE93B3C(&v395);
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v96 = sub_29E2BD4E4();
  v97 = [objc_allocWithZone(MEMORY[0x29EDC33D0]) initWithHealthStore:v96 queue:v94];

  sub_29DE93B3C(&v395);
  type metadata accessor for MenstrualCyclesOnboardingChangeDetector();
  swift_allocObject();
  v98 = v97;
  v99 = v94;
  v377 = sub_29E271770(v98, v99);
  v316 = v98;

  v315 = v99;
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  sub_29E01C074(v82);
  v100 = sub_29E2BD4F4();
  v95(v82, v84);
  v101 = v384;
  (v387)(v384, v89, v388);
  v102 = objc_allocWithZone(type metadata accessor for MenstrualCyclesAnalysisChangeDetector());
  v103 = sub_29DF4B0B0(v100, v101);

  sub_29DE93B3C(&v395);
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v104 = sub_29E2BD4E4();
  type metadata accessor for DaySummaryChangeDetector();
  swift_allocObject();
  v330 = sub_29E20AAE4(v104);
  sub_29DE93B3C(&v395);
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v105 = sub_29E2BD4E4();
  v106 = v335;
  sub_29E2C04B4();
  v107 = sub_29E2C4AE4();
  v109 = v108;
  v391 = 0;
  v392 = 0xE000000000000000;
  sub_29E2C4584();

  v391 = v107;
  v392 = v109;
  MEMORY[0x29ED7FCC0](0xD000000000000023, 0x800000029E2F9130);
  v110 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v111 = v105;
  v112 = sub_29E2C33A4();

  v113 = [v110 initWithIdentifier:v112 healthStore:v111 options:2];

  v114 = v380;
  v115 = v334;
  v116 = v381;
  (*(v380 + 16))(v334, v106, v381);
  v117 = objc_allocWithZone(type metadata accessor for SleepMeasurementsConfigurationProvider());
  v370 = sub_29E110474(v113, v115);

  (*(v114 + 8))(v106, v116);
  sub_29DE93B3C(&v395);
  v118 = *MEMORY[0x29EDBA708];
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v119 = sub_29E2BD4E4();
  sub_29E01C3A8();
  if (v120)
  {
    v121 = sub_29E2C33A4();
  }

  else
  {
    v121 = 0;
  }

  v318 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v118 healthStore:v119 currentCountryCode:v121];

  sub_29DE93B3C(&v395);
  v123 = *MEMORY[0x29EDBA760];
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v124 = sub_29E2BD4E4();
  v386 = v89;
  sub_29E01C3A8();
  if (v125)
  {
    v126 = sub_29E2C33A4();
  }

  else
  {
    v126 = 0;
  }

  v155 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v123 healthStore:v124 currentCountryCode:v126];

  sub_29DE93B3C(&v395);
  v156 = *MEMORY[0x29EDBA720];
  v157 = v386;
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v158 = sub_29E2BD4E4();
  sub_29E01C3A8();
  if (v159)
  {
    v160 = sub_29E2C33A4();
  }

  else
  {
    v160 = 0;
  }

  v335 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v156 healthStore:v158 currentCountryCode:v160];

  sub_29DE93B3C(&v395);
  (v387)(v384, v157, v388);
  v161 = v369;
  v162 = *(v369 + 16);
  v380 = v369 + 16;
  v371 = v162;
  v162(v376, v378, v379);
  *&v381 = sub_29DE9408C(0, &qword_2A1A5E120);
  v396 = v381;
  v397 = MEMORY[0x29EDC2EA8];
  *&v395 = v155;
  type metadata accessor for OvulationConfirmationStateProvider();
  v163 = swift_allocObject();
  v368 = v163;
  v164 = v377;
  v163[2] = v103;
  v163[3] = v164;
  sub_29DE9DC34(&v395, (v163 + 5));
  v165 = v370;
  v163[4] = v370;
  swift_beginAccess();
  sub_29E02067C(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);
  swift_retain_n();
  v367 = v155;
  v317 = v103;
  v166 = v165;
  v334 = v166;
  v167 = v336;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  v168 = v339;
  v169 = v338;
  sub_29E2C1304();
  (*(v337 + 8))(v167, v169);
  sub_29E01D140(0, &qword_2A1A5E270, &qword_2A1A61DC0);
  sub_29E01D0F8(&qword_2A1A5E810, sub_29DEBB070);
  v170 = v341;
  sub_29E2C12A4();
  (*(v340 + 8))(v168, v170);
  swift_beginAccess();
  sub_29E0206CC(0, &qword_2A1A5E3C0, MEMORY[0x29EDB8B00]);
  v171 = v344;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  v172 = v348;
  sub_29E2C1284();

  (*(v347 + 8))(v171, v172);
  v391 = sub_29E0176D0(v384);
  (*(v353 + 16))(v361, &v166[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationPublisher], v362);
  v173 = MEMORY[0x29EDC2D78];
  sub_29E020AF4(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  v370 = MEMORY[0x29EDB8908];
  sub_29E01D0F8(&qword_2A1A5E998, sub_29DEBB174);
  sub_29E01D0F8(&qword_2A1A5EB70, sub_29DEBAF74);
  sub_29E021708(&qword_2A1A5E728, &qword_2A1A5E720, v173);
  sub_29E01D0F8(&qword_2A1A5EB20, sub_29DFA3830);
  v174 = v345;
  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v175 = v352;
  v176 = v351;
  sub_29E2C0E94();
  (*(v349 + 8))(v174, v176);
  v177 = v343;
  v178 = v376;
  v179 = v379;
  v371(v343, v376, v379);
  v180 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v181 = swift_allocObject();
  (*(v161 + 32))(v181 + v180, v177, v179);
  v182 = swift_allocObject();
  *(v182 + 16) = sub_29E020750;
  *(v182 + 24) = v181;
  type metadata accessor for OvulationConfirmationState();
  sub_29E020FB8(&qword_2A1A5E830, &qword_2A1A5E828, sub_29E01D198, sub_29E01D344);
  v183 = v354;
  v184 = v356;
  sub_29E2C12A4();

  (v355)[1](v175, v184);
  sub_29E01D0F8(&qword_2A1A5E9B8, sub_29E01D378);
  v185 = v358;
  v186 = sub_29E2C1274();

  v357[1](v183, v185);
  v187 = *(v161 + 8);
  v369 = v161 + 8;
  v357 = v187;
  (v187)(v178, v179);
  v188 = *(v383 + 1);
  v383 += 8;
  v370 = v188;
  v189 = v384;
  v190 = v388;
  v188(v384, v388);
  v368[10] = v186;
  sub_29DE93B3C(&v395);
  v191 = v386;
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  sub_29E2BD4E4();
  v192 = sub_29E2BDF44();
  sub_29E2BDF04();
  v193 = objc_allocWithZone(v192);
  v362 = sub_29E2BDF24();

  sub_29DE93B3C(&v395);
  sub_29E02061C(0, &unk_2A1A61CC0, &unk_2A1A62690);
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_29E2D9310;
  v195 = v191;
  v196 = v191;
  v197 = v387;
  (v387)(v189, v196, v190);
  v198 = type metadata accessor for MenstrualCyclesOnboardingTileGeneratorPipeline();
  swift_allocObject();
  v199 = v377;

  v200 = v317;
  v356 = v332;
  v201 = sub_29DF8C3D8(v189, v200, v199, v356);
  *(v194 + 56) = v198;
  *(v194 + 64) = sub_29E01D0F8(&qword_2A1A62360, type metadata accessor for MenstrualCyclesOnboardingTileGeneratorPipeline);
  *(v194 + 32) = v201;
  v202 = v189;
  v203 = v189;
  v204 = v195;
  (v197)(v203, v195, v190);
  v205 = v376;
  v371(v376, v378, v379);
  v206 = type metadata accessor for ProjectionHighlightTileGeneratorPipeline();
  swift_allocObject();
  v207 = v377;

  v208 = v200;
  v209 = sub_29DEB8880(v202, v208, v207, v205);
  *(v194 + 96) = v206;
  *(v194 + 104) = sub_29E01D0F8(&qword_2A1A5F5D8, type metadata accessor for ProjectionHighlightTileGeneratorPipeline);
  *(v194 + 72) = v209;
  v210 = v202;
  v211 = v202;
  v212 = v204;
  v213 = v388;
  (v197)(v211, v204, v388);
  MenstrualPeriodGeneratorPipeline = type metadata accessor for LastMenstrualPeriodGeneratorPipeline();
  v215 = swift_allocObject();
  v216 = v208;
  v217 = v318;
  v361 = v217;
  v218 = v210;
  v355 = v362;
  v219 = sub_29E01EC74(v210, v217, v216, v355, v215);
  *(v194 + 136) = MenstrualPeriodGeneratorPipeline;
  *(v194 + 144) = sub_29E01D0F8(&qword_2A1A62570, type metadata accessor for LastMenstrualPeriodGeneratorPipeline);
  *(v194 + 112) = v219;
  v220 = v210;
  v221 = v213;
  v222 = v213;
  v223 = v387;
  (v387)(v220, v212, v222);
  v224 = type metadata accessor for MenstrualCyclesNotificationsSettingsGeneratorPipeline();
  swift_allocObject();
  v225 = v377;

  v226 = sub_29E237260(v218, v225);

  *(v194 + 176) = v224;
  *(v194 + 184) = sub_29E01D0F8(&qword_2A1A610B8, type metadata accessor for MenstrualCyclesNotificationsSettingsGeneratorPipeline);
  *(v194 + 152) = v226;
  v227 = v223;
  (v223)(v218, v212, v221);
  v228 = type metadata accessor for CycleFactorsReminderGeneratorPipeline(0);
  *(v194 + 216) = v228;
  *(v194 + 224) = sub_29E01D0F8(&qword_2A1A5FD38, type metadata accessor for CycleFactorsReminderGeneratorPipeline);
  v229 = sub_29DEBB7E8((v194 + 192));
  v230 = (v229 + v228[7]);
  v230[3] = v381;
  v230[4] = MEMORY[0x29EDC2EA8];
  v231 = v361;
  *v230 = v361;
  *(v229 + v228[8]) = 89;
  v227();
  v232 = v227;
  *(v229 + v228[5]) = v216;
  v359 = v216;
  v360 = v231;
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  sub_29E2BD4E4();
  v362 = *MEMORY[0x29EDC32A0];
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v361 = sub_29E2BD9E4();
  swift_allocObject();
  v233 = sub_29E2BD9B4();
  v234 = v388;
  (v370)(v218, v388);
  sub_29DE93B3C(&v395);
  *(v229 + v228[6]) = v233;
  (v232)(v218, v386, v234);

  v358 = v359;
  v235 = HKLogMenstrualCyclesCategory();
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  v236 = sub_29E2BD4E4();
  v359 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v235 healthDataSource:v236];

  sub_29DE93B3C(&v395);
  updated = type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline();
  *(v194 + 256) = updated;
  *(v194 + 264) = sub_29E01D0F8(&qword_2A1A5F260, type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline);
  v238 = sub_29DEBB7E8((v194 + 232));
  sub_29E2BD274();
  v239 = v326;
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_29E2CAB20;
  v323(v240 + v239, *MEMORY[0x29EDC3758], v329);
  v241 = v372;
  sub_29E110B7C(v372);
  sub_29E2BE184();
  v322(v241, v373);
  v320(v374, v321, v375);
  sub_29E2BD574();
  v242 = v364;
  v243 = v363;
  v244 = v365;
  (*(v364 + 104))(v363, *MEMORY[0x29EDB9C78], v365);
  sub_29E2BCCA4();
  (*(v242 + 8))(v243, v244);
  v245 = v384;
  v246 = v232;
  (v232)(v238, v384, v234);
  v247 = v358;
  *(v238 + updated[7]) = v358;
  *(v238 + updated[8]) = v377;

  v248 = v247;
  v385 = v248;
  v249 = v245;
  sub_29E2BD5A4();
  sub_29DE966D4(&v395, v396);
  sub_29E2BD4E4();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  swift_allocObject();
  v250 = sub_29E2BD9B4();

  v251 = v388;
  (v370)(v245, v388);
  sub_29DE93B3C(&v395);
  *(v238 + updated[9]) = v250;
  *(v238 + updated[6]) = v359;
  (v246)(v245, v386, v251);
  v396 = v381;
  v397 = MEMORY[0x29EDC2EA8];
  v252 = v360;
  v394 = MEMORY[0x29EDC2EA8];
  *&v395 = v360;
  v393 = v381;
  v253 = v335;
  v391 = v335;
  v254 = type metadata accessor for OvulationConfirmationHelpTileGenerator(0);
  *(v194 + 296) = v254;
  *(v194 + 304) = sub_29E01D0F8(&qword_2A1A5FA40, type metadata accessor for OvulationConfirmationHelpTileGenerator);
  v255 = sub_29DEBB7E8((v194 + 272));
  v256 = v385;
  v382 = v252;
  v385 = v253;
  v257 = v368;

  sub_29E2C04B4();
  (v246)(v255 + v254[5], v249, v251);
  sub_29DE9DC34(&v395, v255 + v254[6]);
  sub_29DE9DC34(&v391, v255 + v254[7]);
  *(v255 + v254[8]) = v256;
  v258 = v256;
  v375 = v258;
  sub_29E2BD5A4();
  sub_29DE966D4(v390, v390[3]);
  sub_29E2BD4E4();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  swift_allocObject();
  v259 = sub_29E2BD9B4();

  v260 = v249;
  v261 = v249;
  v262 = v388;
  (v370)(v260, v388);
  sub_29DE93B3C(&v391);
  sub_29DE93B3C(&v395);
  sub_29DE93B3C(v390);
  *(v255 + v254[9]) = v259;
  *(v255 + v254[10]) = v257;
  v264 = v386;
  v263 = v387;
  (v387)(v261, v386, v262);
  *(v194 + 336) = type metadata accessor for OvulationConfirmationFailureTileGenerator(0);
  *(v194 + 344) = sub_29E01D0F8(&qword_2A1A5F468, type metadata accessor for OvulationConfirmationFailureTileGenerator);
  v265 = sub_29DEBB7E8((v194 + 312));

  sub_29E173814(v261, v257, v265);
  v266 = type metadata accessor for SleepOnboardingTileGenerator(0);
  *(v194 + 376) = v266;
  *(v194 + 384) = sub_29E01D0F8(&qword_2A1A609D0, type metadata accessor for SleepOnboardingTileGenerator);
  v267 = sub_29DEBB7E8((v194 + 352));
  (v263)(v267 + v266[5], v264, v262);
  v268 = (v267 + v266[6]);
  v269 = v381;
  v268[3] = v381;
  v270 = MEMORY[0x29EDC2EA8];
  v268[4] = MEMORY[0x29EDC2EA8];
  v271 = v382;
  *v268 = v382;
  v272 = (v267 + v266[7]);
  v272[3] = v269;
  v272[4] = v270;
  v273 = v269;
  v274 = v270;
  v275 = v385;
  *v272 = v385;
  *v267 = 0xD000000000000026;
  v267[1] = 0x800000029E2F9160;
  v276 = v375;
  *(v267 + v266[8]) = v375;
  v277 = v334;
  *(v267 + v266[9]) = v334;
  v278 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  *(v194 + 416) = v278;
  *(v194 + 424) = sub_29E01D0F8(&qword_2A1A5F320, type metadata accessor for SleepingWristTemperatureHelpTileGenerator);
  v279 = sub_29DEBB7E8((v194 + 392));
  v280 = (v279 + v278[7]);
  v280[3] = v273;
  v280[4] = v274;
  v281 = v367;
  *v280 = v367;
  *v279 = 0xD000000000000020;
  v279[1] = 0x800000029E2F9190;
  v282 = v277;
  v383 = v281;
  *&v381 = v276;
  v283 = v282;
  v375 = v271;
  v385 = v275;
  sub_29E2C04B4();
  v285 = v386;
  v284 = v387;
  v286 = v388;
  (v387)(v279 + v278[6], v386, v388);
  v287 = v278[8];
  v382 = v283;
  *(v279 + v287) = v283;
  v288 = v384;
  (v284)(v384, v285, v286);
  v289 = v376;
  v371(v376, v378, v379);
  v290 = type metadata accessor for SummaryTileGeneratorPipeline();
  v291 = swift_allocObject();
  v292 = v377;

  v293 = v330;

  v294 = v319;
  v295 = sub_29E01DCA4(v288, v293, v292, v289, v294, v291);
  v122 = sub_29E14488C(1, 11, 1, v194);
  v396 = v290;
  v397 = sub_29E01D0F8(&qword_2A1A62028, type metadata accessor for SummaryTileGeneratorPipeline);
  *&v395 = v295;
  *(v122 + 16) = 11;
  sub_29DE8EE78(&v395, v122 + 432);
  v296 = sub_29E2BD5C4();
  v297 = [objc_allocWithZone(MEMORY[0x29EDC33A0]) initWithHealthStore_];

  v298 = v366;
  (v284)(v366, v285, v388);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v300 = result;
    v301 = [result isiPad];

    v302 = v294;
    v303 = v297;
    v304 = sub_29E01D4FC(v298, v302, v303, v301);
    v305 = *(v122 + 16);
    v306 = *(v122 + 24);

    if (v305 >= v306 >> 1)
    {
      v122 = sub_29E14488C((v306 > 1), v305 + 1, 1, v122);
    }

    v396 = type metadata accessor for SetupPregnancyModeFeaturesGenerator();
    v397 = sub_29E01D0F8(&unk_2A1A5FEE0, type metadata accessor for SetupPregnancyModeFeaturesGenerator);
    *&v395 = v304;
    *(v122 + 16) = v305 + 1;
    sub_29DE8EE78(&v395, v122 + 40 * v305 + 32);
    v307 = v384;
    (v387)(v384, v386, v388);
    v308 = type metadata accessor for AddPregnancyFeedItemGenerator(0);
    v309 = swift_allocObject();
    v310 = v375;
    v311 = v302;
    v312 = sub_29E020808(v307, v311, v310, v309);

    v314 = *(v122 + 16);
    v313 = *(v122 + 24);
    if (v314 >= v313 >> 1)
    {
      v122 = sub_29E14488C((v313 > 1), v314 + 1, 1, v122);
    }

    (v357)(v378, v379);
    v396 = v308;
    v397 = sub_29E01D0F8(&unk_2A1A60820, type metadata accessor for AddPregnancyFeedItemGenerator);
    *&v395 = v312;
    *(v122 + 16) = v314 + 1;
    sub_29DE8EE78(&v395, v122 + 40 * v314 + 32);
    return v122;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E01BCF0@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_29E2BD564();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v16 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2BE194();
  v3 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BD274();
  sub_29E021E44(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v6 = sub_29E2BD234();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CFE90;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x29EDC3760], v6);
  v12(v11 + v8, *MEMORY[0x29EDC3730], v6);
  v12(v11 + 2 * v8, *MEMORY[0x29EDC3700], v6);
  v12(v11 + 3 * v8, *MEMORY[0x29EDC3788], v6);
  v12(v11 + 4 * v8, *MEMORY[0x29EDC36F8], v6);
  v12(v11 + 5 * v8, *MEMORY[0x29EDC3790], v6);
  v12(v11 + 6 * v8, *MEMORY[0x29EDC3780], v6);
  v12(v11 + 7 * v8, *MEMORY[0x29EDC3758], v6);
  sub_29E110B7C(v5);
  sub_29E2BE184();
  (*(v3 + 8))(v5, v15);
  (*(v17 + 104))(v16, *MEMORY[0x29EDC3898], v18);
  return sub_29E2BD574();
}

uint64_t sub_29E01C074@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_29E2BD564();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BE194();
  v4 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_29E2BD274();
  sub_29E021E44(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29E2BD234();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CEBE0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x29EDC3700], v7);
  v13(v12 + v9, *MEMORY[0x29EDC3788], v7);
  v13(v12 + 2 * v9, *MEMORY[0x29EDC36F8], v7);
  v13(v12 + 3 * v9, *MEMORY[0x29EDC3790], v7);
  v13(v12 + 4 * v9, *MEMORY[0x29EDC3750], v7);
  v13(v12 + 5 * v9, *MEMORY[0x29EDC3758], v7);
  sub_29E110B7C(v6);
  sub_29E2BE184();
  (*(v4 + 8))(v6, v16);
  (*(v17 + 104))(v3, *MEMORY[0x29EDC3898], v18);
  return sub_29E2BD574();
}

uint64_t sub_29E01C3A8()
{
  v38 = *v0;
  v1 = sub_29E2C0514();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BD854();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v35 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v35 - v10;
  v12 = sub_29E2BD8C4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E021FB8();
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BD604();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v11, v18, v3);
    sub_29E2C04B4();
    v19 = *(v4 + 16);
    v19(v8, v11, v3);
    v20 = sub_29E2C0504();
    v21 = sub_29E2C3A14();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v22 = 136446466;
      v23 = sub_29E2C4AE4();
      LODWORD(v38) = v21;
      v25 = sub_29DFAA104(v23, v24, &v42);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v19(v37, v8, v3);
      v26 = sub_29E2C3424();
      v28 = v27;
      v29 = *(v4 + 8);
      v29(v8, v3);
      v30 = sub_29DFAA104(v26, v28, &v42);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_29DE74000, v20, v38, "[%{public}s] Performing feed item generation with no country code: %{public}s", v22, 0x16u);
      v31 = v36;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v22, -1, -1);

      (*(v39 + 8))(v41, v40);
      v29(v11, v3);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
      (*(v39 + 8))(v41, v40);
      v34(v11, v3);
    }

    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v32 = sub_29E2BD8B4();
    (*(v13 + 8))(v15, v12);
    return v32;
  }
}

uint64_t sub_29E01C8A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_29E0185A4("[%{public}s] Plugin delegate is initialized");
  *a1 = v2;
  return result;
}

void *sub_29E01C90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v59 - v9;
  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (!v11 || !a1)
  {
    sub_29E2BFEB4();
    swift_unknownObjectRetain();
    v27 = sub_29E2C0504();
    v28 = sub_29E2C3A34();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v30;
      *v29 = 136446466;
      v31 = sub_29E2C4AE4();
      v33 = sub_29DFAA104(v31, v32, &v62);
      v59 = v4;
      v34 = v33;

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v60 = a1;
      v61 = a2;
      sub_29DF942BC(0, &qword_2A181ABD8);
      swift_unknownObjectRetain();
      v35 = sub_29E2C3424();
      v37 = sub_29DFAA104(v35, v36, &v62);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_29DE74000, v27, v28, "[%{public}s] Menstrual Cycles plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v30, -1, -1);
      MEMORY[0x29ED82140](v29, -1, -1);

      (*(v5 + 8))(v7, v59);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return MEMORY[0x29EDCA190];
  }

  v12 = v11;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_29E2BD114();
  if (!v13)
  {
    sub_29E2BFEB4();
    swift_unknownObjectRetain();
    v38 = sub_29E2C0504();
    v39 = sub_29E2C3A34();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136446466;
      v42 = sub_29E2C4AE4();
      v44 = sub_29DFAA104(v42, v43, &v62);
      v59 = v4;
      v45 = v44;

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v60 = a1;
      v61 = v12;
      sub_29DF942BC(0, &qword_2A181ABE0);
      swift_unknownObjectRetain();
      v46 = sub_29E2C3424();
      v48 = sub_29DFAA104(v46, v47, &v62);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_29DE74000, v38, v39, "[%{public}s] Menstrual Cycles plugin cannot perform work without a health store, ignoring context: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v41, -1, -1);
      MEMORY[0x29ED82140](v40, -1, -1);

      (*(v5 + 8))(v10, v59);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA190];
  }

  v14 = v13;
  v60 = MEMORY[0x29EDCA190];
  v15 = [v13 profileIdentifier];
  v16 = [v15 type];

  if (v16 == 1)
  {
    sub_29E02061C(0, &qword_2A1A5DFF0, &qword_2A1A614E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CE0D0;
    type metadata accessor for ReviewOngoingPregnancyTileExecutor();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = v12;
    v18[4] = v14;
    v19 = sub_29E01D0F8(&qword_2A1A60080, type metadata accessor for ReviewOngoingPregnancyTileExecutor);
    *(inited + 32) = v18;
    *(inited + 40) = v19;
    type metadata accessor for ReviewPregnancyInMedicalIDTileExecutor();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v12;
    v20[4] = v14;
    v21 = objc_allocWithZone(MEMORY[0x29EDC33A0]);
    swift_unknownObjectRetain_n();
    v22 = v14;
    v20[5] = [v21 initWithHealthStore_];
    v23 = sub_29E01D0F8(&qword_2A1A5F8B8, type metadata accessor for ReviewPregnancyInMedicalIDTileExecutor);
    *(inited + 48) = v20;
    *(inited + 56) = v23;
    type metadata accessor for SharedCyclePredictionExecutor();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v12;
    v24[4] = v22;
    v25 = sub_29E01D0F8(&qword_2A1A60538, type metadata accessor for SharedCyclePredictionExecutor);
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    sub_29DFCBE80(inited);
    return v60;
  }

  v49 = [v14 profileIdentifier];
  v50 = [v49 type];

  if (v50 != 2)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x29EDCA190];
  }

  type metadata accessor for SharedCyclePredictionHighlightExecutor();
  v51 = swift_allocObject();
  v51[2] = a1;
  v51[3] = v12;
  v51[4] = v14;
  swift_unknownObjectRetain();
  v52 = v14;
  v53 = sub_29E1448A8(0, 1, 1, MEMORY[0x29EDCA190]);
  v55 = v53[2];
  v54 = v53[3];
  if (v55 >= v54 >> 1)
  {
    v53 = sub_29E1448A8((v54 > 1), v55 + 1, 1, v53);
  }

  v56 = v53;
  swift_unknownObjectRelease();

  v57 = sub_29E01D0F8(&qword_2A181ABE8, type metadata accessor for SharedCyclePredictionHighlightExecutor);
  result = v56;
  v56[2] = v55 + 1;
  v58 = &v56[2 * v55];
  v58[4] = v51;
  v58[5] = v57;
  return result;
}

uint64_t sub_29E01D090()
{
  v0 = swift_allocObject();
  sub_29E0185A4("[%{public}s] Plugin delegate is initialized");
  return v0;
}

uint64_t sub_29E01D0F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E01D140(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DE9408C(255, a3);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E01D198()
{
  if (!qword_2A1A5EB88)
  {
    sub_29DEBB174();
    sub_29DEBAF74();
    v0 = MEMORY[0x29EDC2D78];
    sub_29E020AF4(255, &qword_2A1A5E720, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    sub_29DFA3830();
    sub_29E01D0F8(&qword_2A1A5E998, sub_29DEBB174);
    sub_29E01D0F8(&qword_2A1A5EB70, sub_29DEBAF74);
    sub_29E021708(&qword_2A1A5E728, &qword_2A1A5E720, v0);
    sub_29E01D0F8(&qword_2A1A5EB20, sub_29DFA3830);
    v1 = sub_29E2C0EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EB88);
    }
  }
}

void sub_29E01D378()
{
  if (!qword_2A1A5E9B0)
  {
    sub_29E021414(255, &qword_2A1A5E828, sub_29E01D198, sub_29E01D344, MEMORY[0x29EDB8950]);
    type metadata accessor for OvulationConfirmationState();
    sub_29E020FB8(&qword_2A1A5E830, &qword_2A1A5E828, sub_29E01D198, sub_29E01D344);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E9B0);
    }
  }
}

uint64_t sub_29E01D460(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, char *, void))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_29E021C3C();
  v7 = a1 + *(v6 + 80);
  v8 = *v7;
  v9 = v7[1];
  if (v7[2])
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return a2(v4, v5, a1 + *(v6 + 64), v11 | v8 | v10);
}

uint64_t sub_29E01D4FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for SetupPregnancyModeFeaturesGenerator();
  v8 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    sub_29DE92D78(MEMORY[0x29EDCA190]);
  }

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_experienceModelSubject;
  sub_29E020AF4(0, &unk_2A1A5E5A0, sub_29E000978, MEMORY[0x29EDB8A60]);
  swift_allocObject();
  *(v8 + v9) = sub_29E2C1114();
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_pregnancyModelSubject;
  sub_29E020A74();
  swift_allocObject();
  *(v8 + v10) = sub_29E2C1114();
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_context;
  v12 = sub_29E2BD624();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v8 + v11, a1, v12);
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_pregnancyModelProvider) = a2;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_experienceStore) = a3;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_isiPad) = a4 & 1;
  sub_29DFFC99C();
  (*(v13 + 8))(a1, v12);
  return v8;
}

uint64_t sub_29E01D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v57 = a5;
  v59 = a2;
  v61 = a6;
  v9 = *a6;
  v10 = sub_29E2BD624();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C0514();
  v63 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v55 - v17;
  v67[3] = type metadata accessor for MenstrualCyclesOnboardingChangeDetector();
  v67[4] = &off_2A24BDA98;
  v67[0] = a3;
  v66[3] = type metadata accessor for UserCharacteristicsChangeDetector();
  v66[4] = &off_2A24BDA80;
  v66[0] = a4;
  sub_29E2C04B4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();
  v21 = os_log_type_enabled(v19, v20);
  v62 = v15;
  v56 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v55 = a1;
    v24 = v23;
    v64 = v23;
    *v22 = 136446210;
    nullsub_1(v9);
    v25 = sub_29E2C4AE4();
    v27 = v13;
    v28 = sub_29DFAA104(v25, v26, &v64);

    *(v22 + 4) = v28;
    v13 = v27;
    v29 = v63;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Allocated", v22, 0xCu);
    sub_29DE93B3C(v24);
    v30 = v24;
    a1 = v55;
    MEMORY[0x29ED82140](v30, -1, -1);
    MEMORY[0x29ED82140](v22, -1, -1);

    v31 = *(v29 + 8);
    v32 = v18;
    v33 = v27;
  }

  else
  {

    v31 = *(v63 + 8);
    v32 = v18;
    v33 = v13;
  }

  v60 = v31;
  v31(v32, v33);
  v34 = v61;
  sub_29DE9DC34(v67, v61 + qword_2A1A611A0);
  sub_29DE9DC34(v66, v34 + qword_2A1A61198);
  v35 = v57;
  *(v34 + qword_2A1A611B0) = v57;
  v36 = v35;
  v37 = [v36 getCurrentPregnancyModel];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 state];
  }

  else
  {
    v39 = 0;
  }

  v64 = v39;
  v65 = v38 == 0;
  sub_29E022064();
  swift_allocObject();
  *(v34 + qword_2A1A611B8) = sub_29E2C1114();
  (*(v11 + 16))(v58, a1, v10);
  v40 = sub_29E2C02F4();

  sub_29E2BD5B4();
  [v36 registerObserver:v40 isUserInitiated:sub_29E2BDA24() & 1];

  if (sub_29E2BD5B4())
  {
    v41 = sub_29E1B0780();
    sub_29E1B0F60(a1, v41);
  }

  v42 = v62;
  sub_29E2C04B4();
  v43 = sub_29E2C0504();
  v44 = sub_29E2C3A34();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61 = v13;
    v47 = v46;
    v64 = v46;
    *v45 = 136446210;
    nullsub_1(v56);
    v48 = sub_29E2C4AE4();
    v50 = v10;
    v51 = sub_29DFAA104(v48, v49, &v64);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_29DE74000, v43, v44, "[%{public}s] Initializing", v45, 0xCu);
    sub_29DE93B3C(v47);
    MEMORY[0x29ED82140](v47, -1, -1);
    MEMORY[0x29ED82140](v45, -1, -1);

    (*(v11 + 8))(a1, v50);
    v52 = v62;
    v53 = v61;
  }

  else
  {

    (*(v11 + 8))(a1, v10);
    v52 = v42;
    v53 = v13;
  }

  v60(v52, v53);
  sub_29DE93B3C(v66);
  sub_29DE93B3C(v67);
  return v40;
}

void *sub_29E01DCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v115 = a4;
  v116 = a2;
  v118 = a1;
  v79 = *a6;
  v9 = sub_29E2C0514();
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v110 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29E2BCEA4();
  v106 = *(v109 - 8);
  MEMORY[0x2A1C7C4A8](v109);
  v103 = v11;
  v104 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_29E2BD624();
  v114 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117);
  v101 = v12;
  v102 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E020BAC();
  v94 = v13;
  v93 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v91 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0217D4(0, &qword_2A1A5EB50, sub_29E020BAC, sub_29E020F0C, sub_29E02101C);
  v92 = v15;
  v90 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v88 = &v78 - v16;
  sub_29E0217D4(0, &qword_2A1A5EB48, sub_29E020BAC, sub_29E021050, sub_29E02101C);
  v100 = v17;
  v99 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v97 = &v78 - v18;
  sub_29E0210F8(0, &qword_2A1A5EB58, sub_29E020BAC, sub_29E02101C);
  v98 = v19;
  v96 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v95 = &v78 - v20;
  sub_29E0206CC(0, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0]);
  v81 = v21;
  v80 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v78 - v22;
  sub_29DEBAF74();
  v86 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v83 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E020CC4();
  v85 = v26;
  v84 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v82 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E021414(0, &qword_2A1A5E8A0, sub_29E020CC4, sub_29E020ED8, MEMORY[0x29EDB8950]);
  v113 = v28;
  v105 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v112 = &v78 - v29;
  v30 = a6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_domain;
  if (qword_2A1A61688 != -1)
  {
    swift_once();
  }

  v31 = sub_29E2BD594();
  v32 = sub_29DEA8E9C(v31, qword_2A1A67ED8);
  (*(*(v31 - 8) + 16))(v30, v32, v31);
  v33 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_pregnancyModelSubject;
  v119[0] = 0;
  sub_29E020A74();
  swift_allocObject();
  *(a6 + v33) = sub_29E2C1114();
  v34 = v116;
  *(a6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_daySummaryChangeDetector) = v116;
  *(a6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_onboardingChangeDetector) = a3;
  *(a6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_pregnancyModelProvider) = a5;
  v119[3] = *(v34 + 40);
  swift_beginAccess();
  sub_29E0206CC(0, &qword_2A1A5E3C0, MEMORY[0x29EDB8B00]);
  v111 = a6;

  v87 = a5;

  v89 = a3;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  v35 = v81;
  sub_29E2C1284();
  (*(v80 + 8))(v23, v35);
  v119[0] = *(a6 + v33);
  sub_29E020DF4(0, &qword_2A1A5E5B8, &type metadata for DaySummaryChangeDetector.Result, MEMORY[0x29EDB8A60]);
  sub_29E020E5C();
  sub_29E01D0F8(&qword_2A1A5EB70, sub_29DEBAF74);
  sub_29E01D0F8(&unk_2A1A5E590, sub_29E020A74);

  v36 = v82;
  sub_29E2C0E84();
  sub_29E2BD5F4();
  v37 = v85;
  sub_29E2C0E64();
  (*(v84 + 8))(v36, v37);
  sub_29E021E44(0, &qword_2A1A5E208, sub_29E020F0C, MEMORY[0x29EDC9C68]);
  sub_29E020FB8(&qword_2A1A5E8A8, &qword_2A1A5E8A0, sub_29E020CC4, sub_29E020ED8);
  v38 = v91;
  sub_29E2C12A4();
  sub_29E020F0C();
  sub_29E02101C();
  v39 = v88;
  v40 = v94;
  sub_29E2C1284();
  (*(v93 + 8))(v38, v40);
  sub_29E021050();
  v41 = v97;
  v42 = v92;
  sub_29E2C0EC4();
  (*(v90 + 8))(v39, v42);
  v43 = v114;
  v44 = v102;
  v45 = v117;
  (*(v114 + 16))(v102, v118, v117);
  v46 = v106;
  v47 = v104;
  v48 = v109;
  (*(v106 + 16))(v104, v115, v109);
  v49 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v50 = (v101 + *(v46 + 80) + v49) & ~*(v46 + 80);
  v51 = swift_allocObject();
  (*(v43 + 32))(v51 + v49, v44, v45);
  v52 = v48;
  (*(v46 + 32))(v51 + v50, v47, v48);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_29E021194;
  *(v53 + 24) = v51;
  sub_29DF942BC(0, &qword_2A1A62680);
  v54 = v95;
  v55 = v100;
  sub_29E2C0EC4();

  (*(v99 + 8))(v41, v55);
  sub_29E0212C8();
  v56 = v98;
  v57 = sub_29E2C1274();
  (*(v96 + 8))(v54, v56);
  v119[0] = v57;
  sub_29E021350();
  sub_29E01D0F8(&qword_2A1A61EB0, sub_29E021350);
  v58 = v118;
  v59 = sub_29E2C1244();
  v60 = v111;
  *(v111 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_publisher) = v59;

  sub_29E2BD5B4();
  v61 = sub_29E2BDA24();
  v62 = v87;
  [v87 registerObserver:v60 isUserInitiated:v61 & 1];

  v63 = v110;
  sub_29E2C04B4();
  v64 = sub_29E2C0504();
  v65 = sub_29E2C3A34();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v114;
  v68 = v115;
  v69 = v46;
  v70 = v117;
  if (v66)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v119[0] = v72;
    *v71 = 136446210;
    nullsub_1(v79);
    v73 = sub_29E2C4AE4();
    v75 = v67;
    v76 = sub_29DFAA104(v73, v74, v119);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_29DE74000, v64, v65, "[%{public}s] Initializing", v71, 0xCu);
    sub_29DE93B3C(v72);
    MEMORY[0x29ED82140](v72, -1, -1);
    MEMORY[0x29ED82140](v71, -1, -1);

    (*(v69 + 8))(v68, v109);
    (*(v75 + 8))(v118, v117);
    (*(v107 + 8))(v110, v108);
  }

  else
  {

    (*(v69 + 8))(v68, v52);
    (*(v67 + 8))(v58, v70);
    (*(v107 + 8))(v63, v108);
  }

  (*(v105 + 8))(v112, v113);
  return v111;
}

void *sub_29E01EC74(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v137 = a3;
  v128 = a2;
  v6 = *a5;
  v135 = a5;
  v138 = v6;
  v139 = a1;
  v125 = sub_29E2C0514();
  v124 = *(v125 - 8);
  MEMORY[0x2A1C7C4A8](v125);
  v122 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_29E2BD624();
  v136 = *(v134 - 8);
  MEMORY[0x2A1C7C4A8](v134);
  v113 = v9;
  v120 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0217D4(0, &qword_2A1A5EB28, sub_29E0213CC, sub_29DEAE4D8, sub_29E0217A0);
  v116 = v10;
  v115 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v114 = &v96 - v11;
  sub_29E0217D4(0, &qword_2A1A5EB30, sub_29E0213CC, sub_29DEBAE90, sub_29E0217A0);
  v119 = v12;
  v118 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v117 = &v96 - v13;
  sub_29E0210F8(0, &qword_2A1A5EB38, sub_29E0213CC, sub_29E0217A0);
  v127 = v14;
  v123 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v126 = &v96 - v15;
  sub_29E02067C(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
  v104 = v16;
  v102 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v101 = &v96 - v17;
  sub_29DEBB070();
  v106 = v18;
  v105 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v103 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174();
  v111 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v108 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E021494();
  v110 = v22;
  v109 = *(v22 - 1);
  MEMORY[0x2A1C7C4A8](v22);
  v107 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0213CC(0);
  v133 = v24;
  v121 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v132 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E021E44(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v99 = &v96 - v27;
  sub_29E0215E8();
  v130 = *(v28 - 8);
  v131 = v28;
  MEMORY[0x2A1C7C4A8](v28);
  v100 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v129 = &v96 - v31;
  v98 = sub_29E2BD564();
  v32 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E2BD594();
  v36 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36LastMenstrualPeriodGeneratorPipeline_observer;
  *(a5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36LastMenstrualPeriodGeneratorPipeline_observer) = a4;
  v112 = a4;
  sub_29E2BD5D4();
  sub_29E021E44(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v39 = sub_29E2BD234();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_29E2CAB20;
  (*(v40 + 104))(v42 + v41, *MEMORY[0x29EDC36F8], v39);
  (*(v32 + 104))(v34, *MEMORY[0x29EDC3898], v98);
  sub_29E2BD574();
  v43 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36LastMenstrualPeriodGeneratorPipeline_domain;
  v44 = v135;
  (*(v36 + 32))(v135 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36LastMenstrualPeriodGeneratorPipeline_domain, v38, v35);
  v45 = v128;
  v46 = sub_29E0176D0(v139);

  v141[5] = v46;
  sub_29E2BD5A4();
  sub_29DE966D4(v141, v141[3]);
  sub_29E2BD504();
  (*(v36 + 16))(v38, v44 + v43, v35);
  v47 = MEMORY[0x29EDC2D78];
  sub_29E020AF4(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  v49 = v48;
  sub_29E021708(&qword_2A1A5E728, &qword_2A1A5E720, v47);
  v98 = v49;
  v128 = sub_29E2C1264();
  (*(v36 + 8))(v38, v35);
  sub_29DE93B3C(&v140);

  sub_29DE93B3C(v141);
  v50 = *(v44 + v97);
  v51 = sub_29E2BDF34();

  v141[0] = v51;
  v52 = MEMORY[0x29ED818D0]();
  if (!v52)
  {
    sub_29DE9408C(0, &qword_2A1A626C0);
    v52 = sub_29E2C3CF4();
  }

  v140 = v52;
  v53 = v52;
  v54 = sub_29E2C3CE4();
  v55 = v99;
  (*(*(v54 - 8) + 56))(v99, 1, 1, v54);
  v56 = MEMORY[0x29EDC1A80];
  sub_29E020AF4(0, &qword_2A1A61E98, MEMORY[0x29EDC1A80], MEMORY[0x29EDB89F8]);
  sub_29DE9408C(0, &qword_2A1A626C0);
  sub_29E021708(&qword_2A1A61EA0, &qword_2A1A61E98, v56);
  sub_29E020B68(&qword_2A1A61D38, &qword_2A1A626C0);
  v57 = v129;
  sub_29E2C1354();
  sub_29DEB1FA4(v55);

  v140 = v128;
  swift_beginAccess();
  sub_29E02067C(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);

  v58 = v101;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  v59 = v103;
  v60 = v104;
  sub_29E2C1304();
  (*(v102 + 8))(v58, v60);
  sub_29E01D140(0, &qword_2A1A5E270, &qword_2A1A61DC0);
  sub_29E01D0F8(&qword_2A1A5E810, sub_29DEBB070);
  v61 = v106;
  sub_29E2C12A4();
  (*(v105 + 8))(v59, v61);
  (*(v130 + 16))(v100, v57, v131);
  sub_29E01D0F8(&qword_2A1A5E998, sub_29DEBB174);
  sub_29E01D0F8(&unk_2A1A61EC0, sub_29E0215E8);
  v62 = v107;
  sub_29E2C0E84();
  sub_29E2BD5F4();
  v63 = v110;
  sub_29E2C0E64();
  (*(v109 + 8))(v62, v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v138;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_29E021864;
  *(v65 + 24) = v64;
  sub_29DEAE4D8();
  sub_29E0217A0();
  v66 = v114;
  sub_29E2C1284();

  v67 = v136;
  v111 = *(v136 + 16);
  v68 = v120;
  v69 = v134;
  v111(v120, v139, v134);
  v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v113 += v70;
  v71 = (v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v110 = *(v67 + 32);
  v110(v72 + v70, v68, v69);
  *(v72 + v71) = v138;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_29E0218C4;
  *(v73 + 24) = v72;
  sub_29DEBAE90();
  v74 = v117;
  v75 = v116;
  sub_29E2C0EC4();

  (*(v115 + 8))(v66, v75);
  v76 = v134;
  v111(v68, v139, v134);
  v77 = swift_allocObject();
  v110(v77 + v70, v68, v76);
  v78 = swift_allocObject();
  *(v78 + 16) = sub_29E021A58;
  *(v78 + 24) = v77;
  sub_29DF942BC(0, &qword_2A1A62680);
  v79 = v126;
  v80 = v119;
  sub_29E2C0EC4();

  (*(v118 + 8))(v74, v80);
  sub_29E021B14();
  v81 = v139;
  v82 = v127;
  v83 = sub_29E2C1244();
  v84 = v135;
  v135[2] = v83;
  v85 = v122;
  sub_29E2C04B4();
  v86 = sub_29E2C0504();
  v87 = sub_29E2C3A34();
  v88 = v76;
  if (os_log_type_enabled(v86, v87))
  {
    v89 = v85;
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v141[0] = v91;
    *v90 = 136446210;
    nullsub_1(v138);
    v92 = sub_29E2C4AE4();
    v94 = sub_29DFAA104(v92, v93, v141);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_29DE74000, v86, v87, "[%{public}s] Initializing", v90, 0xCu);
    sub_29DE93B3C(v91);
    MEMORY[0x29ED82140](v91, -1, -1);
    MEMORY[0x29ED82140](v90, -1, -1);

    (*(v136 + 8))(v81, v88);
    (*(v124 + 8))(v89, v125);
    (*(v123 + 8))(v126, v127);
  }

  else
  {

    (*(v136 + 8))(v81, v76);
    (*(v124 + 8))(v85, v125);
    (*(v123 + 8))(v79, v82);
  }

  (*(v121 + 8))(v132, v133);
  (*(v130 + 8))(v129, v131);
  return v84;
}

unint64_t sub_29E0200DC()
{
  result = qword_2A1A62710;
  if (!qword_2A1A62710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62710);
  }

  return result;
}

unint64_t sub_29E020130()
{
  result = qword_2A1A62708;
  if (!qword_2A1A62708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62708);
  }

  return result;
}

unint64_t sub_29E020184()
{
  result = qword_2A1A62700;
  if (!qword_2A1A62700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62700);
  }

  return result;
}

unint64_t sub_29E0201D8()
{
  result = qword_2A1A626F8;
  if (!qword_2A1A626F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A626F8);
  }

  return result;
}

unint64_t sub_29E02022C()
{
  result = qword_2A1A62720;
  if (!qword_2A1A62720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62720);
  }

  return result;
}

unint64_t sub_29E020280()
{
  result = qword_2A1A62718;
  if (!qword_2A1A62718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62718);
  }

  return result;
}

unint64_t sub_29E0202D4()
{
  result = qword_2A1A61AF0;
  if (!qword_2A1A61AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61AF0);
  }

  return result;
}

unint64_t sub_29E020328()
{
  result = qword_2A1A61AE8;
  if (!qword_2A1A61AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61AE8);
  }

  return result;
}

unint64_t sub_29E02037C()
{
  result = qword_2A1A5F6A8;
  if (!qword_2A1A5F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5F6A8);
  }

  return result;
}

unint64_t sub_29E0203D0()
{
  result = qword_2A1A5F6A0;
  if (!qword_2A1A5F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5F6A0);
  }

  return result;
}

unint64_t sub_29E020424()
{
  result = qword_2A1A60B28[0];
  if (!qword_2A1A60B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A60B28);
  }

  return result;
}

unint64_t sub_29E020478()
{
  result = qword_2A1A60B20;
  if (!qword_2A1A60B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A60B20);
  }

  return result;
}

unint64_t sub_29E0204CC()
{
  result = qword_2A1A5FDF0[0];
  if (!qword_2A1A5FDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A5FDF0);
  }

  return result;
}

unint64_t sub_29E020520()
{
  result = qword_2A1A5FDE8;
  if (!qword_2A1A5FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5FDE8);
  }

  return result;
}

unint64_t sub_29E020574()
{
  result = qword_2A1A5F5E8[0];
  if (!qword_2A1A5F5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A5F5E8);
  }

  return result;
}

unint64_t sub_29E0205C8()
{
  result = qword_2A1A5F5E0;
  if (!qword_2A1A5F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5F5E0);
  }

  return result;
}

void sub_29E02061C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DF942BC(255, a3);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E02067C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E0206CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E02067C(255, &qword_2A1A5E2F8, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_29E020750@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v11 = *(sub_29E2BCEA4() - 8);
  v12 = v5 + ((*(v11 + 80) + 16) & ~*(v11 + 80));

  return sub_29E1926F4(a1, a2, a3, a4 & 0x10101, v12, a5);
}

uint64_t sub_29E020808(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = sub_29DE9408C(0, &qword_2A1A5E120);
  v17[4] = MEMORY[0x29EDC2EA8];
  v17[0] = a3;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_pregnancyModelSubject;
  v16[0] = 0;
  sub_29E020A74();
  swift_allocObject();
  *(a4 + v8) = sub_29E2C1114();
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_pregnancyTestResultType;
  sub_29DE9408C(0, &qword_2A1A61D70);
  *(a4 + v9) = MEMORY[0x29ED80220](*MEMORY[0x29EDBA4C0]);
  *(a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_tileTrigger) = 2;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_context;
  v11 = sub_29E2BD624();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a4 + v10, a1, v11);
  *(a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_pregnancyModelProvider) = a2;
  v13 = a2;
  sub_29E2BD5A4();
  sub_29DE966D4(v16, v16[3]);
  sub_29E2BD4E4();
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2BD9E4();
  swift_allocObject();
  v14 = sub_29E2BD9B4();
  sub_29DE93B3C(v16);
  *(a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_contentStateManager) = v14;
  sub_29DE9DC34(v17, a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29AddPregnancyFeedItemGenerator_cycleTrackingFeatureStatusManager);

  sub_29E2BD5B4();
  [v13 registerObserver:a4 isUserInitiated:{sub_29E2BDA24() & 1, v16[0]}];

  (*(v12 + 8))(a1, v11);
  sub_29DE93B3C(v17);
  return a4;
}

void sub_29E020A74()
{
  if (!qword_2A1A5E580)
  {
    sub_29E01D140(255, &qword_2A1A5E180, &unk_2A1A5E190);
    v0 = sub_29E2C1104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E580);
    }
  }
}

void sub_29E020AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
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

uint64_t sub_29E020B68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29DE9408C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E020BAC()
{
  if (!qword_2A1A5EA50)
  {
    sub_29E021414(255, &qword_2A1A5E8A0, sub_29E020CC4, sub_29E020ED8, MEMORY[0x29EDB8950]);
    sub_29E021E44(255, &qword_2A1A5E208, sub_29E020F0C, MEMORY[0x29EDC9C68]);
    sub_29E020FB8(&qword_2A1A5E8A8, &qword_2A1A5E8A0, sub_29E020CC4, sub_29E020ED8);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EA50);
    }
  }
}

void sub_29E020CC4()
{
  if (!qword_2A1A5EC10)
  {
    sub_29E020DF4(255, &qword_2A1A5E5B8, &type metadata for DaySummaryChangeDetector.Result, MEMORY[0x29EDB8A60]);
    sub_29DEBAF74();
    sub_29E020A74();
    sub_29E020E5C();
    sub_29E01D0F8(&qword_2A1A5EB70, sub_29DEBAF74);
    sub_29E01D0F8(&unk_2A1A5E590, sub_29E020A74);
    v0 = sub_29E2C0E74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EC10);
    }
  }
}

void sub_29E020DF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E020E5C()
{
  result = qword_2A1A5E5C0;
  if (!qword_2A1A5E5C0)
  {
    sub_29E020DF4(255, &qword_2A1A5E5B8, &type metadata for DaySummaryChangeDetector.Result, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E5C0);
  }

  return result;
}

void sub_29E020F0C()
{
  if (!qword_2A1A5E210)
  {
    sub_29E01D140(255, &qword_2A1A61D60, &qword_2A1A61D68);
    sub_29E01D140(255, &qword_2A1A5E180, &unk_2A1A5E190);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A5E210);
    }
  }
}

uint64_t sub_29E020FB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29E021414(255, a2, a3, a4, MEMORY[0x29EDB8950]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E021050()
{
  if (!qword_2A1A5E200)
  {
    sub_29E01D140(255, &qword_2A1A61D60, &qword_2A1A61D68);
    sub_29E01D140(255, &qword_2A1A5E180, &unk_2A1A5E190);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A5E200);
    }
  }
}

void sub_29E0210F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_29DF942BC(255, &qword_2A1A62680);
    a4();
    v6 = sub_29E2C0ED4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E021194@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, char **a4@<X8>)
{
  v9 = *(sub_29E2BD624() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_29E2BCEA4() - 8);
  v13 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_29DEEA9D4(a1, a2, a3, v4 + v10, v13, a4);
}

unint64_t sub_29E0212C8()
{
  result = qword_2A1A5EB60;
  if (!qword_2A1A5EB60)
  {
    sub_29E0210F8(255, &qword_2A1A5EB58, sub_29E020BAC, sub_29E02101C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5EB60);
  }

  return result;
}

void sub_29E021350()
{
  if (!qword_2A1A61EA8)
  {
    sub_29DF942BC(255, &qword_2A1A62680);
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61EA8);
    }
  }
}

void sub_29E021414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E021494()
{
  if (!qword_2A1A5EC20)
  {
    v0 = MEMORY[0x29EDC2D78];
    sub_29E020AF4(255, &qword_2A1A5E720, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    sub_29DEBB174();
    sub_29E0215E8();
    sub_29E021708(&qword_2A1A5E728, &qword_2A1A5E720, v0);
    sub_29E01D0F8(&qword_2A1A5E998, sub_29DEBB174);
    sub_29E01D0F8(&unk_2A1A61EC0, sub_29E0215E8);
    v1 = sub_29E2C0E74();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EC20);
    }
  }
}

void sub_29E0215E8()
{
  if (!qword_2A1A61EB8)
  {
    v0 = MEMORY[0x29EDC1A80];
    sub_29E020AF4(255, &qword_2A1A61E98, MEMORY[0x29EDC1A80], MEMORY[0x29EDB89F8]);
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29E021708(&qword_2A1A61EA0, &qword_2A1A61E98, v0);
    sub_29E020B68(&qword_2A1A61D38, &qword_2A1A626C0);
    v1 = sub_29E2C0FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A61EB8);
    }
  }
}

uint64_t sub_29E021708(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E020AF4(255, a2, a3, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E0217D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = sub_29E2C0ED4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E02186C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29E021B9C();
  return v3(a1, *(a1 + *(v4 + 48)), a1 + *(v4 + 64));
}

id sub_29E0218C4(uint64_t a1, void *a2)
{
  v5 = *(sub_29E2BD624() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29DEACF18(a1, a2, v6);
}

uint64_t sub_29E021970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_29DEAE4D8();
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  *(a2 + 8) = v8 & 1;
  return result;
}

uint64_t sub_29E0219C8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2A1C733A0](v1, v5 + v6, v4 | 7);
}

unint64_t sub_29E021A58@<X0>(void *a1@<X0>, int a2@<W1>, char **a3@<X8>)
{
  v7 = *(sub_29E2BD624() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_29DEADC60(a1, a2, v8, a3);
}

unint64_t sub_29E021B14()
{
  result = qword_2A1A5EB40;
  if (!qword_2A1A5EB40)
  {
    sub_29E0210F8(255, &qword_2A1A5EB38, sub_29E0213CC, sub_29E0217A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5EB40);
  }

  return result;
}

void sub_29E021B9C()
{
  if (!qword_2A1A615A0)
  {
    sub_29E2BFC94();
    sub_29E01D140(255, &qword_2A1A5E270, &qword_2A1A61DC0);
    sub_29E2BDF14();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A615A0);
    }
  }
}

void sub_29E021C3C()
{
  if (!qword_2A1A5E258)
  {
    sub_29E01D140(255, &qword_2A1A5E270, &qword_2A1A61DC0);
    sub_29E2BFC94();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A5E258);
    }
  }
}

unint64_t sub_29E021D14()
{
  result = qword_2A1A5E460;
  if (!qword_2A1A5E460)
  {
    sub_29E021414(255, &qword_2A1A5E458, sub_29DF952A4, sub_29E021CE0, MEMORY[0x29EDB8AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E460);
  }

  return result;
}

uint64_t sub_29E021DB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E2BD624() - 8);
  result = sub_29E017BB4(*(v1 + 16), v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
  *a1 = result;
  return result;
}

uint64_t sub_29E021E18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29E0181F0(a1);
  *a2 = result;
  return result;
}

void sub_29E021E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E021EA8()
{
  result = qword_2A1A5E540;
  if (!qword_2A1A5E540)
  {
    sub_29E021E44(255, &qword_2A1A5E538, sub_29DF952D8, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E540);
  }

  return result;
}

unint64_t sub_29E021F30()
{
  result = qword_2A1819B08;
  if (!qword_2A1819B08)
  {
    sub_29E020AF4(255, &qword_2A1A5E4D8, sub_29DF952D8, MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819B08);
  }

  return result;
}

void sub_29E021FB8()
{
  if (!qword_2A1A5DFA8)
  {
    sub_29E2BD8C4();
    sub_29E2BD854();
    sub_29E01D0F8(&qword_2A1A61660, MEMORY[0x29EDC39C0]);
    v0 = sub_29E2C4A84();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5DFA8);
    }
  }
}

void sub_29E022064()
{
  if (!qword_2A1A5E568)
  {
    sub_29E021E44(255, &unk_2A1A5E160, type metadata accessor for HKMCPregnancyState, MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C1104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E568);
    }
  }
}

uint64_t sub_29E0220FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = sub_29E2C0514();
  v8 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v58 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && a1)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    swift_unknownObjectRetain();
    v18 = sub_29E2BD114();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 profileIdentifier];
      sub_29E02061C(0, &qword_2A1A5E010, &qword_2A1A61588);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_29E2D06A0;
      v22 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal.ObserverShim();
      swift_allocObject();
      v23 = v19;
      v24 = sub_29DF41028(v23);
      v61 = v22;
      v62 = &off_2A24B4860;
      *&v60 = v24;
      v25 = type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal();
      v26 = swift_allocObject();
      sub_29E2C00A4();
      v27 = (v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observer);
      *v27 = a3;
      v27[1] = a4;
      sub_29DE8EE78(&v60, v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin50ReviewPregnancyInMedicalIDTileDismissalInputSignal_observerShim);
      *(v21 + 56) = v25;
      *(v21 + 64) = sub_29E01D0F8(qword_2A1A5EE10, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalInputSignal);
      *(v21 + 32) = v26;
      v28 = sub_29E2BDAD4();
      v29 = *(v17 + 8);
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v30 = v23;
      v31 = sub_29E2BDAC4();
      *(v21 + 96) = v28;
      *(v21 + 104) = sub_29E01D0F8(&qword_2A1A61618, MEMORY[0x29EDC3BF0]);
      *(v21 + 72) = v31;
      v32 = sub_29E2BDA54();
      v33 = objc_allocWithZone(v32);
      swift_unknownObjectRetain();
      v34 = v30;
      swift_unknownObjectRetain();
      v35 = sub_29E2BDA44();
      *(v21 + 136) = v32;
      *(v21 + 144) = sub_29E01D0F8(&qword_2A1A61628, MEMORY[0x29EDC3B80]);
      *(v21 + 112) = v35;
      v36 = v34;
      v37 = swift_unknownObjectRetain();
      v38 = sub_29E1B5FB8(v37, a4, v36);
      *(v21 + 176) = type metadata accessor for CycleFactorLastReviewedDateInputSignal();
      *(v21 + 184) = sub_29E01D0F8(qword_2A1A5FBC8, type metadata accessor for CycleFactorLastReviewedDateInputSignal);
      *(v21 + 152) = v38;
      v39 = type metadata accessor for CycleAnalysisInputSignal();
      v40 = sub_29E232A8C(a1, a3, a4, v36, v39, ObjectType, v29);
      *(v21 + 216) = v39;
      *(v21 + 224) = sub_29E01D0F8(qword_2A1A60DC8, type metadata accessor for CycleAnalysisInputSignal);
      *(v21 + 192) = v40;
      swift_unknownObjectRetain();
      v41 = v36;
      swift_unknownObjectRetain();
      v42 = [v20 type];
      swift_unknownObjectRelease();

      result = v21;
      if (v42 == 1)
      {
        return result;
      }
    }

    else
    {
      sub_29E2BFEB4();
      swift_unknownObjectRetain();
      v51 = sub_29E2C0504();
      v52 = sub_29E2C3A34();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v63 = v54;
        *v53 = 136315138;
        *&v60 = a1;
        *(&v60 + 1) = v15;
        sub_29DF942BC(0, &qword_2A181ABE0);
        swift_unknownObjectRetain();
        v55 = sub_29E2C3424();
        v57 = sub_29DFAA104(v55, v56, &v63);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_29DE74000, v51, v52, "Cannot perform work without a health store, ignoring context: %s", v53, 0xCu);
        sub_29DE93B3C(v54);
        MEMORY[0x29ED82140](v54, -1, -1);
        MEMORY[0x29ED82140](v53, -1, -1);
      }

      (*(v8 + 8))(v13, v59);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_29E2BFEB4();
    swift_unknownObjectRetain();
    v44 = sub_29E2C0504();
    v45 = sub_29E2C3A34();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63 = v47;
      *v46 = 136315138;
      *&v60 = a1;
      *(&v60 + 1) = a2;
      sub_29DF942BC(0, &qword_2A181ABD8);
      swift_unknownObjectRetain();
      v48 = sub_29E2C3424();
      v50 = sub_29DFAA104(v48, v49, &v63);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29DE74000, v44, v45, "Cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v46, 0xCu);
      sub_29DE93B3C(v47);
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v46, -1, -1);
    }

    (*(v8 + 8))(v10, v59);
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E022844()
{
  sub_29DE8EDC0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29E0228A0()
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

uint64_t sub_29E022ACC(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v60 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v56 - v9;
  if (a1)
  {
    v62 = MEMORY[0x29EDCA190];
    sub_29E181434(0, 3, 0);
    v11 = v62;
    v12 = byte_2A24AE760;
    v13 = sub_29E0228A0();
    if (v12)
    {
      if (v12 == 1)
      {
        v15 = 0xE600000000000000;
        v16 = 0x6D756964656DLL;
      }

      else
      {
        v15 = 0xE500000000000000;
        v16 = 0x7976616568;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      v16 = 0x746867696CLL;
    }

    v31 = *(v11 + 16);
    v30 = *(v11 + 24);
    if (v31 >= v30 >> 1)
    {
      v50 = v13;
      v51 = v14;
      sub_29E181434((v30 > 1), v31 + 1, 1);
      v14 = v51;
      v13 = v50;
      v11 = v62;
    }

    *(v11 + 16) = v31 + 1;
    v32 = (v11 + 32 * v31);
    v32[4] = v13;
    v32[5] = v14;
    v32[6] = v16;
    v32[7] = v15;
    v33 = byte_2A24AE761;
    v34 = sub_29E0228A0();
    if (v33)
    {
      if (v33 == 1)
      {
        v36 = 0xE600000000000000;
        v37 = 0x6D756964656DLL;
      }

      else
      {
        v36 = 0xE500000000000000;
        v37 = 0x7976616568;
      }
    }

    else
    {
      v36 = 0xE500000000000000;
      v37 = 0x746867696CLL;
    }

    v62 = v11;
    v39 = *(v11 + 16);
    v38 = *(v11 + 24);
    if (v39 >= v38 >> 1)
    {
      v52 = v34;
      v53 = v35;
      sub_29E181434((v38 > 1), v39 + 1, 1);
      v35 = v53;
      v34 = v52;
      v11 = v62;
    }

    *(v11 + 16) = v39 + 1;
    v40 = (v11 + 32 * v39);
    v40[4] = v34;
    v40[5] = v35;
    v40[6] = v37;
    v40[7] = v36;
    v41 = byte_2A24AE762;
    v42 = sub_29E0228A0();
    if (v41)
    {
      if (v41 == 1)
      {
        v44 = 0xE600000000000000;
        v45 = 0x6D756964656DLL;
      }

      else
      {
        v44 = 0xE500000000000000;
        v45 = 0x7976616568;
      }
    }

    else
    {
      v44 = 0xE500000000000000;
      v45 = 0x746867696CLL;
    }

    v62 = v11;
    v47 = *(v11 + 16);
    v46 = *(v11 + 24);
    if (v47 >= v46 >> 1)
    {
      v54 = v42;
      v55 = v43;
      sub_29E181434((v46 > 1), v47 + 1, 1);
      v43 = v55;
      v42 = v54;
      v11 = v62;
    }

    *(v11 + 16) = v47 + 1;
    v48 = (v11 + 32 * v47);
    v48[4] = v42;
    v48[5] = v43;
    v48[6] = v45;
    v48[7] = v44;
  }

  else
  {
    v62 = MEMORY[0x29EDCA190];
    sub_29E181434(0, 2, 0);
    v17 = 0;
    v18 = 0;
    v11 = v62;
    v58 = (v5 + 16);
    v59 = v7;
    v56[1] = "BLEEDING_FLOW_NONE";
    v57 = (v5 + 8);
    v56[0] = "value from provided int";
    do
    {
      v61 = v17;
      if (*(&unk_2A24AE718 + v18 + 32))
      {
        sub_29E2C3314();
        (*v58)(v7, v10, v4);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v19 = qword_2A1A67F80;
        sub_29E2BCC74();
        v20 = sub_29E2C3414();
        v22 = v21;
        v23 = 0xEA0000000000676ELL;
        v24 = 0x696465656C426F6ELL;
      }

      else
      {
        sub_29E2C3314();
        (*v58)(v7, v10, v4);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v25 = qword_2A1A67F80;
        sub_29E2BCC74();
        v20 = sub_29E2C3414();
        v22 = v26;
        v24 = 0x6465656C42646168;
        v23 = 0xEB00000000676E69;
      }

      (*v57)(v10, v4);
      v62 = v11;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_29E181434((v27 > 1), v28 + 1, 1);
        v11 = v62;
      }

      *(v11 + 16) = v28 + 1;
      v29 = (v11 + 32 * v28);
      v29[4] = v20;
      v29[5] = v22;
      v29[6] = v24;
      v29[7] = v23;
      v17 = 1;
      v18 = 1u;
      v7 = v59;
    }

    while ((v61 & 1) == 0);
  }

  return v11;
}

uint64_t sub_29E02309C(uint64_t a1)
{
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v24 - v8;
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths;
  v25 = a1;
  v10 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
  if (*(v10 + 16))
  {
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 56);
    v14 = (v11 + 63) >> 6;
    v28 = v4 + 32;
    v29 = v4 + 16;
    v26 = v1;
    v27 = (v4 + 8);
    sub_29E2BF404();
    v15 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_9:
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v1 = v26;
        goto LABEL_28;
      }

      v13 = *(v10 + 56 + 8 * v18);
      ++v15;
      if (v13)
      {
        while (1)
        {
          v19 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          (*(v4 + 16))(v9, *(v10 + 48) + *(v4 + 72) * (v19 | (v18 << 6)), v3);
          (*(v4 + 32))(v6, v9, v3);
          v20 = sub_29E2BCFA4();
          if (v20)
          {
            break;
          }

          if (*(*(v25 + v24) + 16) == 1)
          {
            v21 = sub_29E2BCF64();
            if (v21 == 1)
            {
              (*v27)(v6, v3);
              v16 = v26;
              v17 = 1;
            }

            else
            {
              if (v21)
              {
                goto LABEL_32;
              }

              (*v27)(v6, v3);
              v16 = v26;
              v17 = 2;
            }

            goto LABEL_7;
          }

          (*v27)(v6, v3);
          v15 = v18;
          if (!v13)
          {
            goto LABEL_9;
          }

LABEL_8:
          v18 = v15;
        }

        if (v20 != 1)
        {
          goto LABEL_32;
        }

        v22 = sub_29E2BCF64();
        if (v22 == 2)
        {
          (*v27)(v6, v3);
          v16 = v26;
          v17 = 5;
        }

        else if (v22 == 1)
        {
          (*v27)(v6, v3);
          v16 = v26;
          v17 = 4;
        }

        else
        {
          if (v22)
          {
            goto LABEL_32;
          }

          (*v27)(v6, v3);
          v16 = v26;
          v17 = 3;
        }

LABEL_7:
        *(v16 + 32) = v17;
        v15 = v18;
        if (!v13)
        {
          continue;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_32:
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    *(v1 + 32) = 0;
LABEL_28:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_29E220E98(v1);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_29E0234DC(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v1 = *(sub_29E022ACC(a1) + 16);

    return v1;
  }

  return result;
}

uint64_t sub_29E023574(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E023600(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E023680()
{
  v0 = sub_29E2BCFA4();
  if (v0 <= 1)
  {
    v1 = sub_29E022ACC(v0);
    v2 = sub_29E2BCF64();
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *(v1 + 16))
    {
      v3 = *(v1 + 32 * v2 + 32);
      sub_29E2BF404();
      sub_29E2BF404();

      return v3;
    }

    __break(1u);
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E02376C(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  result = 0;
  if (a1 == 1)
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v12 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
    return v12;
  }

  return result;
}

unint64_t sub_29E0239C4()
{
  result = sub_29E2C0514();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BD624();
    if (v2 <= 0x3F)
    {
      result = sub_29DFA178C();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MenstrualCyclesAnalysisChangeDetector();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for OvulationConfirmationStateProvider();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29E023B28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E023BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E023C5C()
{
  v1 = v0;
  sub_29E027354();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v76 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0273F8();
  v80 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v75 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E02067C(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
  v61 = v7;
  v62 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v58 - v8;
  sub_29DEBB070();
  v63 = v10;
  v64 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174();
  v77 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E02748C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E02752C();
  v70 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  sub_29E0275C0();
  v21 = *(v20 - 8);
  v68 = v20;
  v69 = v21;
  MEMORY[0x2A1C7C4A8](v20);
  v66 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0277CC();
  v71 = v23;
  v73 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v65 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E027860();
  v72 = v25;
  v74 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v67 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OvulationConfirmationHelpTileGenerator(0);
  v28 = (v0 + v27[6]);
  v29 = v28[3];
  v30 = v28[4];
  sub_29DE966D4(v28, v29);
  v31 = v27[5];
  v83 = sub_29DF94C2C(v1 + v31, v29, v30);
  v32 = (v1 + v27[7]);
  v33 = v32[3];
  v34 = v32[4];
  sub_29DE966D4(v32, v33);
  v84 = sub_29DF94C2C(v1 + v31, v33, v34);
  sub_29DF691DC();
  sub_29E023B28(&qword_2A1A5E728, sub_29DF691DC);
  sub_29E2C0E54();
  sub_29E2BD5F4();
  sub_29E2C0E34();
  (*(v16 + 8))(v18, v15);
  v84 = *(*(v1 + v27[10]) + 80);
  swift_beginAccess();
  sub_29E02067C(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);

  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  v35 = v59;
  v36 = v61;
  sub_29E2C1304();
  (*(v62 + 8))(v9, v36);
  sub_29E023BF8(0, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
  sub_29E023B28(&qword_2A1A5E810, sub_29DEBB070);
  v37 = v63;
  sub_29E2C12A4();
  (*(v64 + 8))(v35, v37);
  v38 = *(v1 + v27[9]);
  v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v41 = sub_29DEB3180(v39, v40, v38);

  v83 = v41;
  v42 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v44 = sub_29DEB3180(v42, v43, v38);

  v82 = v44;
  v45 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v47 = sub_29DEB3180(v45, v46, v38);

  v81 = v47;
  sub_29DEB3C9C(0);
  sub_29E023B28(&qword_2A1A5E758, sub_29DEB3C9C);
  v48 = v76;
  sub_29E2C0E84();
  sub_29E2BD5F4();
  v49 = v78;
  sub_29E2C0E64();
  (*(v79 + 8))(v48, v49);
  sub_29E027748(0);
  sub_29E023B28(&qword_2A1A5E918, sub_29E02752C);
  sub_29E023B28(&unk_2A1A5E710, sub_29E027748);
  sub_29E023B28(&qword_2A1A5E998, sub_29DEBB174);
  sub_29E023B28(&qword_2A1A5E8D8, sub_29E0273F8);
  v50 = v66;
  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v51 = v65;
  v52 = v68;
  sub_29E2C0E94();
  (*(v69 + 8))(v50, v52);
  type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(0);
  sub_29E023B28(&qword_2A1A5E820, sub_29E0277CC);
  v53 = v67;
  v54 = v71;
  sub_29E2C12A4();
  (*(v73 + 8))(v51, v54);
  sub_29E023B28(&qword_2A1A5E9A8, sub_29E027860);
  v55 = v72;
  v56 = sub_29E2C1274();
  (*(v74 + 8))(v53, v55);
  return v56;
}

uint64_t sub_29E024724@<X0>(void (*a1)()@<X0>, void (*a2)()@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)()@<X6>, uint64_t a8@<X8>)
{
  v89 = a6;
  v90 = a7;
  v85 = a2;
  v86 = a5;
  v95 = a4;
  v96 = a8;
  v88 = a3;
  v84 = a1;
  v98 = (type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(0) - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v99 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for OvulationConfirmationState() - 8;
  MEMORY[0x2A1C7C4A8](v93);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v10;
  sub_29E027A9C();
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11);
  v94 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v97 = &v78 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v82 = &v78 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v78 - v19;
  sub_29E027B08();
  v22 = v21 - 8;
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v92 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v100 = &v78 - v25;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v78 - v27;
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v78 - v30;
  v32 = sub_29E2BFC94();
  v33 = *(v32 - 8);
  v80 = v33;
  v34 = *(v33 + 16);
  v34(v31, v84, v32);
  v35 = &v31[*(v22 + 56)];
  v91 = v31;
  v34(v35, v85, v32);
  sub_29E027C3C(v86, v20, sub_29DEB3B00);
  sub_29E027C3C(v89, &v20[*(v12 + 56)], sub_29DEB3B00);
  v36 = &v20[*(v12 + 72)];
  v87 = v20;
  sub_29E027C3C(v90, v36, sub_29DEB3B00);
  v84 = sub_29E027B08;
  sub_29E027C3C(v31, v28, sub_29E027B08);
  v78 = v22;
  v37 = *(v22 + 56);
  sub_29E027C3C(v88, v10, type metadata accessor for OvulationConfirmationState);
  v90 = sub_29E027A9C;
  v38 = v82;
  sub_29E027C3C(v20, v82, sub_29E027A9C);
  v39 = *(v12 + 56);
  v89 = *(v12 + 72);
  v40 = *(v33 + 32);
  v79 = v40;
  v41 = v100;
  v40(v100, v28, v32);
  v40((v41 + *(v22 + 56)), &v28[v37], v32);
  v42 = v38;
  v43 = v38;
  v44 = v97;
  sub_29E027BD4(v43, v97, sub_29DEB3B00);
  v81 = v12;
  sub_29E027BD4(v42 + v39, v44 + *(v12 + 56), sub_29DEB3B00);
  sub_29E027BD4(v42 + v89, v44 + *(v12 + 72), sub_29DEB3B00);
  v45 = v98;
  v46 = v98[11];
  v85 = v98[10];
  v86 = v46;
  v47 = sub_29E2BCBB4();
  v48 = *(*(v47 - 8) + 56);
  v49 = v99;
  v48(&v99[v46], 1, 1, v47);
  v88 = v45[12];
  v48(&v49[v88], 1, 1, v47);
  v89 = v45[13];
  v48(&v49[v89], 1, 1, v47);
  v50 = v100;
  v51 = v92;
  v52 = v84;
  sub_29E027C3C(v100, v92, v84);
  v53 = v78;
  v54 = *(v78 + 56);
  v55 = v49;
  v56 = v79;
  v79(v55, v51, v32);
  v57 = *(v80 + 8);
  v57(v51 + v54, v32);
  sub_29E027C3C(v50, v51, v52);
  v58 = v98;
  v59 = v99;
  v56(&v99[v98[7]], v51 + *(v53 + 56), v32);
  v57(v51, v32);
  v60 = v83;
  v61 = &v83[*(v93 + 44)];
  v62 = *v61;
  v63 = v61[1];
  LOBYTE(v61) = v61[2];
  v64 = v58;
  v65 = &v59[v58[8]];
  *v65 = v62;
  v65[1] = v63;
  v65[2] = v61;
  LOBYTE(v58) = sub_29E0900A0();
  sub_29E027138(v100, sub_29E027B08);
  sub_29E027138(v60, type metadata accessor for OvulationConfirmationState);
  sub_29E027138(v87, sub_29E027A9C);
  sub_29E027138(v91, sub_29E027B08);
  v66 = v59;
  v59[v64[9]] = v58 & 1;
  v68 = v94;
  v67 = v95;
  *(v85 + v59) = v95;
  v69 = v97;
  v70 = v90;
  sub_29E027C3C(v97, v68, v90);
  v71 = v81;
  v72 = *(v81 + 56);
  v73 = *(v81 + 72);
  v74 = v67;
  sub_29E027B70(v68, v66 + v86);
  sub_29E027138(v68 + v73, sub_29DEB3B00);
  sub_29E027138(v68 + v72, sub_29DEB3B00);
  sub_29E027C3C(v69, v68, v70);
  v75 = *(v71 + 72);
  sub_29E027B70(v68 + *(v71 + 56), v66 + v88);
  sub_29E027138(v68 + v75, sub_29DEB3B00);
  sub_29E027138(v68, sub_29DEB3B00);
  sub_29E027BD4(v69, v68, sub_29E027A9C);
  v76 = *(v71 + 56);
  sub_29E027B70(v68 + *(v71 + 72), v66 + v89);
  sub_29E027138(v68 + v76, sub_29DEB3B00);
  sub_29E027138(v68, sub_29DEB3B00);
  sub_29E027C3C(v66, v96, type metadata accessor for OvulationConfirmationHelpTileGenerator.Change);
  return sub_29E027138(v66, type metadata accessor for OvulationConfirmationHelpTileGenerator.Change);
}

uint64_t sub_29E024EA0@<X0>(void (*a1)()@<X0>, uint64_t a2@<X8>)
{
  sub_29E02790C();
  v5 = *(v4 + 48);
  sub_29E027970();
  v7 = v6[12];
  v8 = *(a1 + v6[16]);
  v9 = a1 + v6[20];
  sub_29E027A34();
  v11 = v9 + *(v10 + 48);
  v12 = (v9 + *(v10 + 64));

  return sub_29E024724(a1, (a1 + v5), a1 + v7, v8, v9, v11, v12, a2);
}

char *sub_29E024F3C(uint64_t a1)
{
  v2 = sub_29E2BD4C4();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v37 = &v36 - v9;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(0);
  v17 = a1;
  sub_29E027C3C(a1 + *(v16 + 40), v15, sub_29DEB3B00);
  v18 = sub_29E2BCBB4();
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 1, v18);
  sub_29E027138(v15, sub_29DEB3B00);
  if (v20 != 1 || (sub_29E027C3C(v17 + *(v16 + 36), v12, sub_29DEB3B00), v21 = v19(v12, 1, v18), sub_29E027138(v12, sub_29DEB3B00), v21 != 1) || (sub_29E027010() & 1) != 0)
  {
    sub_29E025444();
  }

  sub_29E023BF8(0, &qword_2A1A5E030, sub_29DF1D934, MEMORY[0x29EDC9E90]);
  v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = sub_29E025568();
  v26 = (~v24 & 0x101000100000000) == 0;
  if ((v24 & 0x1010000) == 0)
  {
    v26 = 0;
  }

  if (v24 & v25 & (v24 >> 40) & v26 & (v24 >> 8))
  {
    v27 = v25 & 0xFF00 | BYTE3(v24) & 1;
  }

  else
  {
    v27 = 2;
  }

  sub_29E0258D8(v27, v23 + v22);
  v28 = v37;
  sub_29E027C3C(v23 + v22, v37, sub_29DF1D934);
  sub_29E027BD4(v28, v7, sub_29DF1D934);
  v30 = v39;
  v29 = v40;
  if ((*(v39 + 48))(v7, 1, v40) == 1)
  {
    sub_29E027138(v7, sub_29DF1D934);
    v31 = MEMORY[0x29EDCA190];
  }

  else
  {
    v32 = *(v30 + 32);
    v32(v38, v7, v29);
    v31 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_29E143AD8(0, *(v31 + 2) + 1, 1, v31);
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = sub_29E143AD8(v33 > 1, v34 + 1, 1, v31);
    }

    *(v31 + 2) = v34 + 1;
    v32(&v31[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v34], v38, v29);
  }

  swift_setDeallocating();
  sub_29E027138(v23 + v22, sub_29DF1D934);
  swift_deallocClassInstance();
  return v31;
}

void sub_29E025444()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  swift_unknownObjectRelease();
  v2 = [v1 source];
  v3 = objc_allocWithZone(MEMORY[0x29EDBFD38]);
  v4 = sub_29E2C33A4();
  v5 = [v3 initWithContentIdentifier:v4 context:0 osBuild:0 userInfo:0];

  [v2 sendEvent_];
}

uint64_t sub_29E025568()
{
  v1 = v0;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(0);
  v9 = *(v0 + v8[8]);
  v36 = *(v0 + v8[7]);
  v10 = sub_29E026DAC();
  v11 = [v10 menstruationProjectionsEnabled];

  v12 = 0;
  if (v11)
  {
    v13 = v9 ? sub_29DF3FACC() : MEMORY[0x29EDCA1A0];
    v14 = sub_29E0922B0(0, v13);

    v12 = 0x10000;
    if (v14)
    {
      v12 = 0;
    }
  }

  v35 = v12;
  v15 = sub_29E026DAC();
  v16 = [v15 fertileWindowProjectionsEnabled];

  v37 = v9;
  if (v16)
  {
    if (v9)
    {
      v17 = sub_29DF3FACC();
    }

    else
    {
      v17 = MEMORY[0x29EDCA1A0];
    }

    v18 = sub_29E0922B0(1u, v17);

    v19 = 0x1000000;
    if (v18)
    {
      v19 = 0;
    }

    v34 = v19;
  }

  else
  {
    v34 = 0;
  }

  v20 = sub_29E2BFCA4();
  v33 = [v20 areAllRequirementsSatisfied];

  sub_29E027C3C(v1 + v8[10], v7, sub_29DEB3B00);
  v21 = sub_29E2BCBB4();
  v22 = *(*(v21 - 8) + 48);
  v32 = v22(v7, 1, v21) == 1;
  sub_29E027138(v7, sub_29DEB3B00);
  sub_29E027C3C(v1 + v8[9], v4, sub_29DEB3B00);
  v23 = v22(v4, 1, v21) == 1;
  sub_29E027138(v4, sub_29DEB3B00);
  v24 = sub_29E027198();
  v25 = sub_29E2BFCA4();
  [v25 areAllRequirementsSatisfied];

  v26 = 256;
  if (v36)
  {
    v26 = 0;
  }

  if (v37)
  {
    ++v26;
  }

  v27 = v26 | v35 | v34;
  v28 = 0x100000000;
  if (!v33)
  {
    v28 = 0;
  }

  v29 = v27 | v28 | (v32 << 40);
  v30 = 0x100000000000000;
  if ((v24 & 1) == 0)
  {
    v30 = 0;
  }

  return v29 | (v23 << 48) | v30;
}

uint64_t sub_29E0258D8@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2BD564();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E2BE194();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v79 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BD594();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v80 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BD2E4();
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v92 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29E2BD234();
  v95 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v91 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_29E2C0514();
  v99 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96);
  v85 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v87 = v69 - v16;
  v17 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v86 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x29EDC9C68];
  sub_29E023BF8(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = v69 - v21;
  v23 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v23);
  sub_29E023BF8(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v19);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = v69 - v25;
  sub_29E023BF8(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v19);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v29 = v69 - v28;
  v30 = sub_29E2BE8C4();
  v88 = *(v30 - 8);
  v89 = v30;
  MEMORY[0x2A1C7C4A8](v30);
  v97 = v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v90 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 2)
  {
    v71 = v7;
    v72 = v5;
    v73 = v4;
    v78 = a2;
    sub_29E22CD38();
    v37 = sub_29E2BE974();
    (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
    v38 = sub_29E2BDE24();
    (*(*(v38 - 8) + 56))(v26, 1, 1, v38);
    v100 = MEMORY[0x29EDCA190];
    sub_29E023B28(&unk_2A181A7D0, MEMORY[0x29EDC2550]);
    sub_29DF1DC70(0);
    sub_29E023B28(&qword_2A181A7E0, sub_29DF1DC70);
    sub_29E2C43F4();
    sub_29E2BEF64();
    swift_allocObject();
    v77 = sub_29E2BEF54();
    v76 = sub_29E22CD38();
    v75 = v39;
    v74 = sub_29E22CEAC();
    sub_29E22D020(a1 & 0xFF01);
    if (a1)
    {
      v40 = v93;
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v40 = v93;
      if (qword_2A1A62788 == -1)
      {
LABEL_9:
        v41 = qword_2A1A67F80;
        sub_29E2BDE34();
        v93 = type metadata accessor for OvulationConfirmationHelpTileContentConfigurationProvider();
        v42 = sub_29E2BDE44();
        (*(*(v42 - 8) + 56))(v22, 0, 1, v42);
        sub_29E023BF8(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
        v43 = sub_29E2BE2A4();
        v44 = *(v43 - 8);
        v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = swift_allocObject();
        v70 = xmmword_29E2CAB20;
        *(v46 + 16) = xmmword_29E2CAB20;
        (*(v44 + 104))(v46 + v45, *MEMORY[0x29EDC1D60], v43);
        sub_29E2BE8A4();
        sub_29E2BE884();
        type metadata accessor for OvulationConfirmationHelpTileActionHandler();
        sub_29E2BC2E4();
        swift_allocObject();
        sub_29E2BC2D4();
        v47 = v87;
        sub_29E2C04B4();
        v77 = sub_29DF8F8EC();
        v86 = v48;

        v49 = *(v99 + 8);
        v99 += 8;
        v87 = v49;
        (v49)(v47, v96);
        v50 = v95;
        v51 = *(v95 + 104);
        v52 = v91;
        LODWORD(v75) = *MEMORY[0x29EDC3750];
        v76 = v95 + 104;
        v74 = v51;
        v51(v91);
        v69[1] = *(type metadata accessor for OvulationConfirmationHelpTileGenerator(0) + 20);
        v53 = sub_29E2BD5D4();
        v54 = v92;
        v55 = v94;
        (*(v40 + 104))(v92, *MEMORY[0x29EDC1B28], v94);
        sub_29E023B28(&qword_2A181ABF0, type metadata accessor for OvulationConfirmationHelpTileContentConfigurationProvider);
        sub_29E023B28(&qword_2A1A5F198, type metadata accessor for OvulationConfirmationHelpTileActionHandler);
        v56 = v52;
        v57 = v90;
        v58 = v77;
        v59 = v86;
        sub_29E2BD2B4();

        sub_29DF1DD38(v58, v59);
        (*(v40 + 8))(v54, v55);
        v60 = v98;
        (*(v50 + 8))(v56, v98);
        (*(v88 + 8))(v97, v89);
        v61 = sub_29E2BD4C4();
        v62 = *(v61 - 8);
        v63 = *(v62 + 56);
        v63(v57, 0, 1, v61);
        v64 = v78;
        (*(v62 + 32))(v78, v57, v61);
        sub_29E2BD5D4();
        sub_29E023BF8(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
        v65 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v70;
        v74(v66 + v65, v75, v60);
        v67 = v79;
        sub_29E110B7C(v79);
        sub_29E2BE184();
        (*(v81 + 8))(v67, v82);
        (*(v72 + 104))(v71, *MEMORY[0x29EDC3898], v73);
        v68 = v80;
        sub_29E2BD574();
        sub_29E2BD584();
        (*(v83 + 8))(v68, v84);
        sub_29E2BD3A4();
        sub_29E2BD344();
        sub_29E2BD354();
        return (v63)(v64, 0, 1, v61);
      }
    }

    swift_once();
    goto LABEL_9;
  }

  v34 = sub_29E2BD4C4();
  v35 = *(*(v34 - 8) + 56);

  return v35(a2, 1, 1, v34);
}

uint64_t sub_29E0269BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E023C5C();
  *a1 = result;
  return result;
}

uint64_t sub_29E0269E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E023B28(&qword_2A1A5FA48, type metadata accessor for OvulationConfirmationHelpTileGenerator);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29E026AB0(uint64_t a1)
{
  v2 = sub_29E023B28(qword_2A1A5FA50, type metadata accessor for OvulationConfirmationHelpTileGenerator);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29E026B1C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = sub_29E2BD564();
  v1 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BE194();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_29E2BD5D4();
  sub_29E023BF8(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29E2BD234();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CAB20;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3750], v8);
  sub_29E110B7C(v7);
  sub_29E2BE184();
  (*(v5 + 8))(v7, v4);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3898], v14);
  return sub_29E2BD574();
}

id sub_29E026DAC()
{
  v1 = v0;
  v2 = sub_29E2BFC74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BFC94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x29EDC2D70])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v11 = sub_29E2BFC64();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_29E1853E0(MEMORY[0x29EDCA190]);
    v12 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
    v13 = sub_29E2C31F4();

    v11 = [v12 initWithDictionary_];

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

uint64_t sub_29E027010()
{
  sub_29E0272C0();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(0);
  v5 = (v0 + *(v4 + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  sub_29E027C3C(v0 + *(v4 + 44), v3, sub_29DEB3B00);
  v9 = sub_29E2BCBB4();
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    return 0;
  }

  v10 = v6 & v7 & v8;
  sub_29E027138(v3, sub_29DEB3B00);
  return v10;
}

uint64_t sub_29E027138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E027198()
{
  sub_29E0272C0();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(0);
  v5 = (v0 + *(v4 + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  sub_29E027C3C(v0 + *(v4 + 44), v3, sub_29DEB3B00);
  v9 = sub_29E2BCBB4();
  v10 = 1;
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) != 1)
  {
    sub_29E027138(v3, sub_29DEB3B00);
    return v6 & v7 & v8 ^ 1u;
  }

  return v10;
}

void sub_29E0272C0()
{
  if (!qword_2A1A616D0)
  {
    sub_29DEB3B00(255);
    sub_29E02067C(255, &qword_2A1A603D0, &type metadata for SleepMeasurementsConfiguration.CorrectiveAction, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A616D0);
    }
  }
}

void sub_29E027354()
{
  if (!qword_2A1A5EC40)
  {
    sub_29DEB3C9C(255);
    sub_29E023B28(&qword_2A1A5E758, sub_29DEB3C9C);
    v0 = sub_29E2C0E74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EC40);
    }
  }
}

void sub_29E0273F8()
{
  if (!qword_2A1A5E8D0)
  {
    sub_29E027354();
    sub_29E023B28(&qword_2A1A5EC48, sub_29E027354);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E8D0);
    }
  }
}

void sub_29E02748C()
{
  if (!qword_2A1A5ECA0)
  {
    sub_29DF691DC();
    sub_29E023B28(&qword_2A1A5E728, sub_29DF691DC);
    v0 = sub_29E2C0E44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5ECA0);
    }
  }
}

void sub_29E02752C()
{
  if (!qword_2A1A5E910)
  {
    sub_29E02748C();
    sub_29E023B28(qword_2A1A5ECA8, sub_29E02748C);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E910);
    }
  }
}

void sub_29E0275C0()
{
  if (!qword_2A1A5EB78)
  {
    sub_29E02752C();
    sub_29E027748(255);
    sub_29DEBB174();
    sub_29E0273F8();
    sub_29E023B28(&qword_2A1A5E918, sub_29E02752C);
    sub_29E023B28(&unk_2A1A5E710, sub_29E027748);
    sub_29E023B28(&qword_2A1A5E998, sub_29DEBB174);
    sub_29E023B28(&qword_2A1A5E8D8, sub_29E0273F8);
    v0 = sub_29E2C0EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EB78);
    }
  }
}

void sub_29E027768(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E0277CC()
{
  if (!qword_2A1A5E818)
  {
    sub_29E0275C0();
    sub_29E023B28(&qword_2A1A5EB80, sub_29E0275C0);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E818);
    }
  }
}

void sub_29E027860()
{
  if (!qword_2A1A5E9A0)
  {
    sub_29E0277CC();
    type metadata accessor for OvulationConfirmationHelpTileGenerator.Change(255);
    sub_29E023B28(&qword_2A1A5E820, sub_29E0277CC);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E9A0);
    }
  }
}

void sub_29E02790C()
{
  if (!qword_2A1A615B0)
  {
    sub_29E2BFC94();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A615B0);
    }
  }
}

void sub_29E027970()
{
  if (!qword_2A1A615A8)
  {
    sub_29E02790C();
    type metadata accessor for OvulationConfirmationState();
    sub_29E023BF8(255, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    sub_29E027A34();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A615A8);
    }
  }
}

void sub_29E027A34()
{
  if (!qword_2A1A616C8)
  {
    sub_29DEB3B00(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A616C8);
    }
  }
}

void sub_29E027A9C()
{
  if (!qword_2A1A616D8)
  {
    sub_29DEB3B00(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A616D8);
    }
  }
}

void sub_29E027B08()
{
  if (!qword_2A1A615D0)
  {
    sub_29E2BFC94();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A615D0);
    }
  }
}

uint64_t sub_29E027B70(uint64_t a1, uint64_t a2)
{
  sub_29DEB3B00(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E027BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E027C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E027CCC()
{
  sub_29E2BFC94();
  if (v0 <= 0x3F)
  {
    sub_29E023BF8(319, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29DEB3B00(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E027DB4()
{
  v1 = v0;
  v2 = type metadata accessor for CycleDay();
  *&v3 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 traitCollection];
  v71 = [v5 accessibilityContrast];

  IsGrayscaleEnabled = UIAccessibilityIsGrayscaleEnabled();
  v7 = [v1 traitCollection];
  v8 = sub_29E2C3D14();

  if (IsGrayscaleEnabled)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v1 traitCollection];
  }

  v72 = v9;
  v10 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_day];
  swift_beginAccess();
  v70 = [*(v10 + *(v2 + 20)) isSupplementaryDataLogged];
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_filter;
  v12 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_filter];
  v13 = *(v10 + *(v2 + 20));
  v76 = sub_29E02895C(v12);

  v14 = v1[v11];
  v15 = *(v10 + *(v2 + 20));
  v75 = sub_29E028B40(v14);

  v16 = [*(v10 + *(v2 + 20)) pregnancyState];
  v74 = v8;
  v17 = v16 == 6 || [*(v10 + *(v2 + 20)) pregnancyState] == 5;
  v69 = v17;
  v18 = v1[v11];
  v19 = *(v10 + *(v2 + 20));
  v20 = sub_29E028C44(v18);

  v21 = v1[v11];
  v22 = *(v10 + *(v2 + 20));
  v23 = sub_29E028D48(v21);

  v24 = objc_opt_self();
  [v24 begin];
  [v24 setDisableActions_];
  v25 = [*(v10 + *(v2 + 20)) menstruationLevel];
  v26 = (v25 > 5) | (0x2Fu >> v25);
  v27 = [*(v10 + *(v2 + 20)) bleedingInPregnancyLevel];
  v28 = [*(v10 + *(v2 + 20)) bleedingAfterPregnancyLevel];
  v30 = v27 != 1 && v28 != 1;
  v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_flowDot;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_flowDot] setHidden_];
  v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_supplementaryDataLoggedDot;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_supplementaryDataLoggedDot] setHidden_];
  if (v76)
  {
    *&v33 = 1.0;
  }

  else
  {
    *&v33 = 0.3;
  }

  [*&v1[v32] setOpacity_];
  if ((v75 | v20 | v23))
  {
    *&v34 = 1.0;
  }

  else
  {
    *&v34 = 0.3;
  }

  [*&v1[v31] setOpacity_];
  v35 = objc_opt_self();
  v36 = &selRef_hkmc_highContrastRegularDayColor;
  if (v71 != 1)
  {
    v36 = &selRef_hkmc_regularDayColor;
  }

  v37 = [v35 *v36];
  v38 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter;
  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_backgroundCapsule;
  v40 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_backgroundCapsule];
  v41 = &off_29F363000;
  if (v69)
  {
    [v40 setLineWidth_];
    v42 = *&v1[v39];
    sub_29DE9408C(0, &qword_2A1817FE0);
    v43 = v42;
    v44 = sub_29E2C4074();
    v45 = [v44 CGColor];

    v41 = &off_29F363000;
    [v43 setStrokeColor_];

    v38 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter;
    v46 = sub_29E2C4064();

    v37 = v46;
  }

  else
  {
    [v40 setLineWidth_];
  }

  v47 = [*(v10 + *(v2 + 20)) fertileWindowLevel];
  if ((v47 - 1) >= 2)
  {
    if (v47 != 3)
    {
      goto LABEL_31;
    }

    v48 = v1[v11];
    v49 = objc_opt_self();
    v50 = &selRef_hkmc_ovulationDayCycleHistoryFadedColor;
    v51 = &selRef_hkmc_ovulationDayCycleHistoryColor;
  }

  else
  {
    v48 = v1[v11];
    v49 = objc_opt_self();
    v50 = &selRef_hkmc_fertilityBackgroundFadedColor;
    v51 = &selRef_hkmc_fertilityBackgroundColor;
  }

  if (v48 == 51)
  {
    v50 = v51;
  }

  v52 = [v49 *v50];

  v37 = v52;
LABEL_31:
  v53 = *&v1[v38[383]];
  v54 = v72;
  v55 = [v37 resolvedColorWithTraitCollection_];
  v56 = [v55 v41[284]];

  [v53 setFillColor_];
  [v24 commit];
  v57 = sub_29E02938C(v1[v11], v75 & 1, v76 & 1);
  v59 = v58;
  v60 = v73;
  sub_29E00C08C(v10, v73);
  v78 = 0x7865646E49796144;
  v79 = 0xE90000000000003ALL;
  v77 = sub_29E2C3164();
  v61 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v61);

  MEMORY[0x29ED7FCC0](124, 0xE100000000000000);
  v62 = [*(v60 + *(v2 + 20)) accessibilityIdentifier];
  v63 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v65 = v64;

  MEMORY[0x29ED7FCC0](v63, v65);

  v66 = v78;
  v67 = v79;
  sub_29E029468(v60);
  v78 = v66;
  v79 = v67;
  MEMORY[0x29ED7FCC0](124, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v57, v59);

  v68 = sub_29E2C33A4();

  [v1 setAccessibilityIdentifier_];
}

char *sub_29E02849C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_day];
  sub_29E2C30D4();
  (*(v11 + 16))(v14, v13, v10);
  v15 = [objc_opt_self() unfetchedDayViewModel];
  (*(v11 + 8))(v13, v10);
  *&v14[*(type metadata accessor for CycleDay() + 20)] = v15;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_filter] = 51;
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_backgroundCapsule;
  v17 = [objc_opt_self() hkmc_regularDayColor];
  v18 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  v19 = [v17 CGColor];
  [v18 setFillColor_];

  *&v4[v16] = v18;
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_flowDot;
  *&v4[v20] = sub_29E0287DC(&selRef_hkmc_menstruationColor);
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_supplementaryDataLoggedDot;
  *&v4[v21] = sub_29E0287DC(&selRef_hkmc_supplementaryDataColor);
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = [v22 layer];
  [v23 addSublayer_];

  v24 = [v22 layer];
  [v24 addSublayer_];

  v25 = [v22 layer];
  [v25 addSublayer_];

  return v22;
}

id sub_29E0287DC(SEL *a1)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 8.0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = v4;
  v10.size.height = v4;
  v6 = CGPathCreateWithEllipseInRect(v10, 0);
  [v5 setFrame_];
  [v5 setPath_];

  v7 = [objc_opt_self() *a1];
  v8 = [v7 CGColor];

  [v5 setFillColor_];
  return v5;
}

uint64_t sub_29E02895C(char a1)
{
  v2 = v1;
  if (a1 == 51)
  {
    return [v1 isSupplementaryDataLogged];
  }

  result = [v2 daySummary];
  if (result)
  {
    v6 = 1;
    v7 = 3;
    v8 = 4;
    v9 = 2;
    v10 = result;
    switch(v5)
    {
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
        v11 = sub_29DED290C(a1);
        if (v12)
        {
          goto LABEL_6;
        }

        v13 = v11;
        v14 = [v10 symptoms];

        v15 = (v13 & ~v14) == 0;
        goto LABEL_28;
      case 19:
        goto LABEL_20;
      case 20:
        v9 = 1;
        goto LABEL_20;
      case 21:
        v9 = 3;
LABEL_20:
        v19 = [result sexualActivity];

        v15 = v19 == v9;
        goto LABEL_28;
      case 22:
        goto LABEL_16;
      case 23:
        v8 = 3;
        goto LABEL_16;
      case 24:
        v8 = 2;
        goto LABEL_16;
      case 25:
        v8 = 1;
LABEL_16:
        v17 = [result ovulationTestResult];

        v15 = v17 == v8;
        goto LABEL_28;
      case 26:
        v6 = 5;
        goto LABEL_27;
      case 27:
        v6 = 4;
        goto LABEL_27;
      case 28:
        v6 = 3;
        goto LABEL_27;
      case 29:
        v6 = 2;
        goto LABEL_27;
      case 30:
LABEL_27:
        v21 = [result cervicalMucusQuality];

        v15 = v21 == v6;
        goto LABEL_28;
      case 31:
        v18 = [result intermenstrualBleeding];

        return v18;
      case 39:
        goto LABEL_13;
      case 40:
        v7 = 2;
        goto LABEL_13;
      case 41:
        v7 = 1;
LABEL_13:
        v16 = [result pregnancyTestResult];
        goto LABEL_23;
      case 42:
        goto LABEL_22;
      case 43:
        v7 = 2;
        goto LABEL_22;
      case 44:
        v7 = 1;
LABEL_22:
        v16 = [result progesteroneTestResult];
LABEL_23:
        v20 = v16;

        v15 = v20 == v7;
LABEL_28:
        result = v15;
        break;
      default:
LABEL_6:

        result = 0;
        break;
    }
  }

  return result;
}

id sub_29E028B40(char a1)
{
  if (a1 == 51)
  {
    return ([v1 menstruationLevel] == 4);
  }

  else
  {
    result = [v1 daySummary];
    if (result)
    {
      v5 = 3;
      switch(v4)
      {
        case 1:
          v5 = 4;
          goto LABEL_13;
        case 2:
          v5 = 5;
          goto LABEL_13;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:

          goto LABEL_9;
        default:
LABEL_13:
          v6 = result;
          v7 = [result menstrualFlow];
          if (v7 > 2 && (v7 - 3) <= 2)
          {
            v8 = [v6 menstrualFlow];

            return (v8 == v5);
          }

LABEL_9:
          result = 0;
          break;
      }
    }
  }

  return result;
}

id sub_29E028C44(char a1)
{
  if (a1 == 51)
  {
    return ([v1 bleedingInPregnancyLevel] == 1);
  }

  else
  {
    result = [v1 daySummary];
    if (result)
    {
      v5 = 3;
      switch(v4)
      {
        case '-':
          goto LABEL_13;
        case '.':
          v5 = 4;
          goto LABEL_13;
        case '/':
          v5 = 5;
LABEL_13:
          v6 = result;
          v7 = [result bleedingInPregnancyFlow];
          if (v7 > 2 && (v7 - 3) <= 2)
          {
            v8 = [v6 bleedingInPregnancyFlow];

            return (v8 == v5);
          }

LABEL_9:
          result = 0;
          break;
        default:

          goto LABEL_9;
      }
    }
  }

  return result;
}

id sub_29E028D48(char a1)
{
  if (a1 == 51)
  {
    return ([v1 bleedingAfterPregnancyLevel] == 1);
  }

  else
  {
    result = [v1 daySummary];
    if (result)
    {
      v5 = 3;
      switch(v4)
      {
        case '0':
          goto LABEL_13;
        case '1':
          v5 = 4;
          goto LABEL_13;
        case '2':
          v5 = 5;
LABEL_13:
          v6 = result;
          v7 = [result bleedingAfterPregnancyFlow];
          if (v7 > 2 && (v7 - 3) <= 2)
          {
            v8 = [v6 bleedingAfterPregnancyFlow];

            return (v8 == v5);
          }

LABEL_9:
          result = 0;
          break;
        default:

          goto LABEL_9;
      }
    }
  }

  return result;
}

void sub_29E028E4C()
{
  [v0 bounds];
  Height = CGRectGetHeight(v28);
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_backgroundCapsule;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_backgroundCapsule];
  [v0 bounds];
  [v3 setFrame_];

  v4 = *&v0[v2];
  [v0 bounds];
  v5 = CGRectGetWidth(v29) * 0.5;
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  [v0 bounds];
  [v4 setFrame_];
  [v4 frame];
  v7 = CGPathCreateWithRoundedRect(v32, v5, v5, 0);
  [v4 setPath_];

  [v0 bounds];
  v8 = CGRectGetWidth(v33);
  if (Height == 44.0)
  {
    v9 = 8.0;
  }

  else
  {
    v9 = 4.0;
  }

  v10 = v8 - v9;
  [v0 bounds];
  v11 = CGRectGetMidY(v34) - v9;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_flowDot;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_flowDot] setFrame_];
  v13 = *&v0[v12];
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v10;
  v35.size.height = v10;
  v14 = CGPathCreateWithEllipseInRect(v35, 0);
  [v13 setFrame_];
  [v13 setPath_];

  v15 = *&v0[v12];
  [v0 bounds];
  MidX = CGRectGetMidX(v36);
  [v0 bounds];
  [v15 setPosition_];

  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_supplementaryDataLoggedDot;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_supplementaryDataLoggedDot] setFrame_];
  v18 = *&v0[v17];
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v10;
  v38.size.height = v10;
  v19 = CGPathCreateWithEllipseInRect(v38, 0);
  [v18 setFrame_];
  [v18 setPath_];

  v20 = [v0 traitCollection];
  v21 = [v20 horizontalSizeClass];

  [v0 bounds];
  v22 = CGRectGetHeight(v39);
  v23 = v22 * 3.0 * 0.25;
  v24 = v22 - v11;
  if (v21 == 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = *&v0[v17];
  [v0 bounds];
  [v26 setPosition_];
}

uint64_t type metadata accessor for CycleHistoryCycleDayCell()
{
  result = qword_2A181AC10;
  if (!qword_2A181AC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0292E0()
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

uint64_t sub_29E02938C(char a1, char a2, char a3)
{
  v3 = 0x686374616D206F6ELL;
  if (a2)
  {
    v3 = 0x61757274736E656DLL;
  }

  v4 = 0xE800000000000000;
  if (a2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  v5 = (a1 == 51) | a2 | ~a3;
  if (a1 == 51)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if ((a1 == 51) | a2 & 1 | ((a3 & 1) == 0))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000029E2F9650;
  }

  MEMORY[0x29ED7FCC0](v6, v7);

  return 0x3A7265746C6966;
}

uint64_t sub_29E029468(uint64_t a1)
{
  v2 = type metadata accessor for CycleDay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E0294C4()
{
  v1 = sub_29E2C31A4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_day;
  sub_29E2C30D4();
  (*(v2 + 16))(v5, v4, v1);
  v6 = [objc_opt_self() unfetchedDayViewModel];
  (*(v2 + 8))(v4, v1);
  *(v5 + *(type metadata accessor for CycleDay() + 20)) = v6;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_filter) = 51;
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_backgroundCapsule;
  v8 = [objc_opt_self() hkmc_regularDayColor];
  v9 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  v10 = [v8 CGColor];
  [v9 setFillColor_];

  *(v0 + v7) = v9;
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_flowDot;
  *(v0 + v11) = sub_29E0287DC(&selRef_hkmc_menstruationColor);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleHistoryCycleDayCell_supplementaryDataLoggedDot;
  *(v0 + v12) = sub_29E0287DC(&selRef_hkmc_supplementaryDataColor);
  sub_29E2C4724();
  __break(1u);
}

void *sub_29E0296F0(uint64_t a1)
{
  v59 = a1;
  v55 = sub_29E2C41A4();
  v54 = *(v55 - 8);
  MEMORY[0x2A1C7C4A8](v55);
  v53 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E02B988(0, &qword_2A181A5C8, MEMORY[0x29EDB9A78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v50 = &v49 - v3;
  v58 = sub_29E2C4274();
  v57 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v49 - v6;
  v8 = sub_29E2BC704();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v49 - v15;
  v52 = sub_29E2BC6A4();
  v51 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v11 + 16))(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v11 + 8))(v16, v10);
  sub_29E2BC6F4();
  sub_29E2BC6B4();
  v20 = MEMORY[0x29EDC7700];
  v21 = *MEMORY[0x29EDC76C0];
  v22 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = *v20;
  v26 = [v22 fontDescriptorWithDesign_];
  if (v26)
  {
    v27 = v26;

    v22 = v27;
  }

  v28 = MEMORY[0x29EDC9E90];
  sub_29E02B988(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v49 = xmmword_29E2CAB20;
  *(inited + 16) = xmmword_29E2CAB20;
  v30 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29E02B988(0, &qword_2A1819168, sub_29DF38418, v28);
  v31 = swift_initStackObject();
  v32 = MEMORY[0x29EDC7708];
  *(v31 + 16) = v49;
  v33 = *v32;
  *(v31 + 32) = *v32;
  *(v31 + 40) = v25;
  v34 = v30;
  v35 = v33;
  v36 = sub_29E1852C8(v31);
  swift_setDeallocating();
  sub_29E02B9EC(v31 + 32, sub_29DF38418);
  sub_29DF38488();
  *(inited + 64) = v37;
  *(inited + 40) = v36;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29E02B9EC(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29E02BA4C(&qword_2A18177E0, type metadata accessor for AttributeName);
  v38 = sub_29E2C31F4();

  v39 = [v22 fontDescriptorByAddingAttributes_];

  v40 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  v60[0] = v40;
  sub_29DFE1DE8();
  sub_29E2BC6C4();
  sub_29E2C4244();
  v41 = v51;
  v42 = v50;
  v43 = v52;
  (*(v51 + 16))(v50, v18, v52);
  (*(v41 + 56))(v42, 0, 1, v43);
  sub_29E2C41C4();
  sub_29E2C4194();
  v44 = sub_29E2C4144();
  sub_29E2C06B4();
  v44(v60, 0);
  (*(v54 + 104))(v53, *MEMORY[0x29EDC78A8], v55);
  sub_29E2C41B4();
  sub_29DE9408C(0, &qword_2A1819798);
  v45 = v57;
  v46 = v58;
  (*(v57 + 16))(v56, v7, v58);
  sub_29DE9408C(0, &qword_2A181A5D8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29E2C4114();
  v47 = sub_29E2C4284();
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v45 + 8))(v7, v46);
  (*(v41 + 8))(v18, v43);
  return v47;
}

void sub_29E02A09C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E02A0F0();
  }
}

void sub_29E02A0F0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Presenting Period 101 article", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  sub_29E2BC6E4();
  sub_29E1BB328();
  v13 = objc_allocWithZone(sub_29E2BDD34());
  v14 = sub_29E2BDD24();
  v15 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [v15 setDelegate_];
  v16 = [v1 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 presentViewController:v15 animated:1 completion:0];
  }
}

id sub_29E02A3D4(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_29E02A438(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setDistribution_];
  [v2 setSpacing_];
  [v2 setAxis_];
  if ([a1 isContentCenterAligned])
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [v2 setAlignment_];
  return v2;
}

void sub_29E02A500(uint64_t a1)
{
  v41 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_29E2C0514();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v35 - v10;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___learnMoreButton] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController_linkButtonHorizontalConstraint] = 0;
  v36 = v1;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___contentStack] = 0;
  sub_29E2C3314();
  v43 = *(v6 + 16);
  v43(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v44 = v12;
  sub_29E2C3414();
  v42 = "MINDER_CANCEL_PROMPT";
  v13 = *(v6 + 8);
  v13(v11, v5);
  v14 = sub_29E2C33A4();

  sub_29E2C3314();
  v43(v8, v11, v5);
  sub_29E2BCC74();
  sub_29E2C3414();
  v13(v11, v5);
  v15 = sub_29E2C33A4();

  v16 = objc_opt_self();
  v17 = sub_29E2C33A4();
  v18 = [v16 imageNamed:v17 inBundle:v44 compatibleWithTraitCollection:0];

  if (v18)
  {
    v46.receiver = v36;
    v46.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v46, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, v18, 2);

    v20 = v19;
    v21 = [v20 headerView];
    [v21 setAllowFullWidthIcon_];

    v22 = [v20 headerView];
    LODWORD(v23) = 1036831949;
    [v22 setTitleHyphenationFactor_];

    v24 = v37;
    sub_29E2C04B4();
    v25 = sub_29E2C0504();
    v26 = sub_29E2C3A34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136446210;
      v29 = sub_29E2C4AE4();
      v31 = sub_29DFAA104(v29, v30, &v45);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_29DE74000, v25, v26, "[%{public}s] initializing", v27, 0xCu);
      sub_29DE93B3C(v28);
      MEMORY[0x29ED82140](v28, -1, -1);
      MEMORY[0x29ED82140](v27, -1, -1);
    }

    (*(v38 + 8))(v24, v39);
    sub_29DE9408C(0, &qword_2A181ADA0);
    sub_29E2C3D24();
    sub_29E2C3C64();
    swift_unknownObjectRelease();

    sub_29E02B988(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29E2CAB20;
    v33 = sub_29E2C0B54();
    v34 = MEMORY[0x29EDC7870];
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    sub_29E2C3C64();
    swift_unknownObjectRelease();

    sub_29DF0B0B0(v41);
  }

  else
  {
    __break(1u);
  }
}

id sub_29E02AB94()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController_linkButtonHorizontalConstraint;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController_linkButtonHorizontalConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = [v0 isContentCenterAligned];
  v4 = sub_29E02A3D4(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___contentStack, sub_29E02A438);
  v5 = v4;
  if (v3)
  {
    v6 = &selRef_centerXAnchor;
  }

  else
  {
    v6 = &selRef_leadingAnchor;
  }

  v7 = [v4 *v6];

  v8 = [v0 contentView];
  v9 = [v8 *v6];

  v10 = [v7 constraintEqualToAnchor_];
  v11 = *&v0[v1];
  *&v0[v1] = v10;

  result = *&v0[v1];
  if (result)
  {

    return [result setActive_];
  }

  return result;
}

void sub_29E02ACE4()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v13[-v7];
  v9 = [objc_opt_self() boldButton];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  v11 = sub_29E2C33A4();

  [v9 setTitle:v11 forState:0];

  [v9 addTarget:v0 action:sel_primaryButtonTapped forControlEvents:64];
  v12 = [v0 buttonTray];
  [v12 addButton_];
}

void sub_29E02AF8C()
{
  v1 = [v0 contentView];
  v2 = sub_29E02A3D4(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___contentStack, sub_29E02A438);
  [v1 addSubview_];

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___contentStack;
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___contentStack];
  v5 = sub_29E02A3D4(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___learnMoreButton, sub_29E0296F0);
  [v4 addArrangedSubview_];

  sub_29E02AB94();
  v6 = objc_opt_self();
  sub_29DF27598(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CDBD0;
  v8 = [*&v0[v3] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v11;
  v12 = [*&v0[v3] trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintLessThanOrEqualToAnchor_];
  *(v7 + 40) = v15;
  v16 = [*&v0[v3] bottomAnchor];
  v17 = [v0 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v7 + 48) = v19;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v20 = sub_29E2C3604();

  [v6 activateConstraints_];
}

id sub_29E02B328()
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
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Exiting confirmation flow", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_29DEE8CC8();
    swift_unknownObjectRelease();
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_29E02B654(void *a1)
{
  v2 = sub_29E02A3D4(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35DeviationsUnconfirmedViewController____lazy_storage___contentStack, sub_29E02A438);
  if ([a1 isContentCenterAligned])
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  [v2 setAlignment_];

  return sub_29E02AB94();
}

void sub_29E02B6CC(void *a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = &v18[-v9];
  v11 = [a1 headerView];
  v12 = objc_opt_self();
  v13 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  v15 = [v12 imageNamed:v13 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v15)
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v10, v3);
    v16 = v14;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v4 + 8))(v10, v3);
    v17 = sub_29E2C33A4();

    [v11 setIcon:v15 accessibilityLabel:v17];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E02B988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E02B9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E02BA4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E02BA9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v57 = a4;
  v7 = sub_29E2C0514();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v51 = &v51 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v54 = &v51 - v12;
  sub_29E02CA98(0, &qword_2A1A626A0, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v51 - v14;
  v16 = sub_29E2BD4C4();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_29E2BD5A4();
  sub_29DE966D4(v59, v59[3]);
  v53 = a2;
  v21 = a3;
  sub_29E2BD514();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29E02C2DC(v15);
    sub_29DE93B3C(v59);
    v22 = MEMORY[0x29EDCA190];
  }

  else
  {
    v23 = *(v17 + 32);
    v23(v19, v15, v16);
    sub_29DE93B3C(v59);
    sub_29E02CA98(0, &unk_2A1A61CD0, MEMORY[0x29EDC9E90]);
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29E2CAB20;
    v23((v22 + v24), v19, v16);
  }

  v25 = sub_29E2C3634();
  v26 = v54;
  v27 = v25;
  sub_29E2C04B4();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A34();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v59[0] = v52;
    *v30 = 136446978;
    *(v30 + 4) = sub_29DFAA104(0xD00000000000004FLL, 0x800000029E2F9870, v59);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_29DFAA104(v53, v21, v59);
    *(v30 + 22) = 2080;
    v58 = v22;
    sub_29E02CA98(0, &qword_2A1A61DF0, MEMORY[0x29EDC9A40]);
    v31 = sub_29E2C3464();
    v33 = sub_29DFAA104(v31, v32, v59);

    *(v30 + 24) = v33;
    *(v30 + 32) = 2080;
    v58 = v20;
    sub_29E2BF404();
    v34 = sub_29E2C3464();
    v36 = sub_29DFAA104(v34, v35, v59);

    *(v30 + 34) = v36;
    _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s:%s] PreviousFeedItems: %s DesiredFeedItems: %s", v30, 0x2Au);
    v37 = v52;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v37, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);
  }

  else
  {
  }

  v38 = *(v55 + 8);
  v39 = v26;
  v40 = v56;
  v38(v39, v56);
  v41 = v51;
  sub_29E2C04B4();
  sub_29E2BF404();
  sub_29E2BF404();
  v42 = sub_29E2C0504();
  v43 = sub_29E2C3A34();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59[0] = v45;
    *v44 = 136446722;
    *(v44 + 4) = sub_29DFAA104(0xD00000000000004FLL, 0x800000029E2F9870, v59);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_29DFAA104(v53, v21, v59);
    *(v44 + 22) = 2080;
    v58 = v27;
    sub_29E02CA48();
    sub_29E2BF404();
    v46 = sub_29E2C3464();
    v48 = sub_29DFAA104(v46, v47, v59);

    *(v44 + 24) = v48;
    _os_log_impl(&dword_29DE74000, v42, v43, "[%{public}s:%s] Submitting: %s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v45, -1, -1);
    MEMORY[0x29ED82140](v44, -1, -1);

    v49 = v51;
  }

  else
  {

    v49 = v41;
  }

  result = (v38)(v49, v40);
  *v57 = v27;
  return result;
}

uint64_t sub_29E02C2DC(uint64_t a1)
{
  sub_29E02CA98(0, &qword_2A1A626A0, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E02C354(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  MEMORY[0x2A1C7C4A8](v9);
  v41 = &v39 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v39 - v12;
  v47 = MEMORY[0x29EDCA190];
  sub_29E2BD5A4();
  sub_29DE966D4(v46, v46[3]);
  v14 = sub_29E2BD5D4();
  v42 = a3;
  v15 = sub_29E2BD534();

  sub_29DE93B3C(v46);
  if (*(v15 + 16))
  {
    sub_29DFCB62C(v15);
    v16 = v47;
  }

  else
  {

    v16 = MEMORY[0x29EDCA190];
  }

  sub_29E2BF404();
  v17 = sub_29E2C3634();

  sub_29E2C04B4();
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2BF404();
  v18 = sub_29E2C0504();
  v19 = sub_29E2C3A34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v20 = 136446978;
    *(v20 + 4) = sub_29DFAA104(0xD000000000000062, 0x800000029E2F98C0, v46);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_29DFAA104(v42, a4, v46);
    *(v20 + 22) = 2080;
    v45 = v16;
    sub_29E02CA98(0, &qword_2A1A61DF0, MEMORY[0x29EDC9A40]);
    v21 = sub_29E2C3464();
    v23 = sub_29DFAA104(v21, v22, v46);

    *(v20 + 24) = v23;
    *(v20 + 32) = 2080;
    v45 = a1;
    sub_29E2BF404();
    v24 = sub_29E2C3464();
    v26 = sub_29DFAA104(v24, v25, v46);

    *(v20 + 34) = v26;
    _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s:%s] PreviousFeedItems: %s DesiredFeedItems: %s", v20, 0x2Au);
    v27 = v40;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v20, -1, -1);
  }

  else
  {
  }

  v28 = v43;
  v29 = *(v44 + 8);
  v29(v13, v43);
  v30 = v41;
  sub_29E2C04B4();
  sub_29E2BF404();
  sub_29E2BF404();
  v31 = sub_29E2C0504();
  v32 = sub_29E2C3A34();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446722;
    *(v33 + 4) = sub_29DFAA104(0xD000000000000062, 0x800000029E2F98C0, v46);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_29DFAA104(v42, a4, v46);
    *(v33 + 22) = 2080;
    v45 = v17;
    sub_29E02CA48();
    sub_29E2BF404();
    v35 = sub_29E2C3464();
    v37 = sub_29DFAA104(v35, v36, v46);

    *(v33 + 24) = v37;
    _os_log_impl(&dword_29DE74000, v31, v32, "[%{public}s:%s] Submitting: %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v34, -1, -1);
    MEMORY[0x29ED82140](v33, -1, -1);
  }

  v29(v30, v28);
  return v17;
}

uint64_t sub_29E02CA1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_29E02C354(*a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_29E02CA48()
{
  if (!qword_2A1A61DD8)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61DD8);
    }
  }
}

void sub_29E02CA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2BD4C4();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E02CAF8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v51 = a2;
  sub_29DEC6594();
  v50 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v48 - v7;
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v48 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v48 - v17;
  *&v20 = MEMORY[0x2A1C7C4A8](v19).n128_u64[0];
  v22 = &v48 - v21;
  v23 = [v3 menstruationSegment];
  [v23 days];

  sub_29E2C30D4();
  v24 = [v3 lastDayIndex];
  if (v24)
  {
    v25 = v24;
    [v24 integerValue];
    sub_29E2C30D4();

    v26 = *(v10 + 32);
    v26(v18, v15, v9);
    sub_29DEF60A0();
    result = sub_29E2C32B4();
    if (result)
    {
      v28 = v10;
      v26(v8, v22, v9);
      v29 = v49;
      v30 = v50;
      v26(&v8[*(v50 + 48)], v18, v9);
      sub_29DEC6FE8(v8, v29);
      v31 = *(v30 + 48);
      v32 = v51;
      v26(v51, v29, v9);
      v33 = *(v28 + 8);
      v33(v29 + v31, v9);
      sub_29DEC704C(v8, v29);
      v34 = *(v30 + 48);
      sub_29E02D830(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
      v26(&v32[*(v35 + 36)], (v29 + v34), v9);
      return (v33)(v29, v9);
    }

    __break(1u);
    goto LABEL_11;
  }

  sub_29DEF60A0();
  v36 = v48;
  if (sub_29E2C32A4())
  {
    v37 = v12;
    v38 = v36;
  }

  else
  {
    v37 = v12;
    v38 = v22;
  }

  (*(v10 + 16))(v37, v38, v9);
  result = sub_29E2C32B4();
  if ((result & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v39 = *(v10 + 32);
  v39(v8, v22, v9);
  v40 = v8;
  v41 = v50;
  v39((v40 + *(v50 + 48)), v12, v9);
  v42 = v49;
  sub_29DEC6FE8(v40, v49);
  v43 = *(v41 + 48);
  v44 = v51;
  v39(v51, v42, v9);
  v45 = *(v10 + 8);
  v45(v42 + v43, v9);
  sub_29DEC704C(v40, v42);
  v46 = *(v41 + 48);
  sub_29E02D830(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  v39(&v44[*(v47 + 36)], (v42 + v46), v9);
  return (v45)(v42, v9);
}

uint64_t sub_29E02CF88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  sub_29DEC6594();
  v95 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v93 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v94 = &v76 - v8;
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v78 = &v76 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v76 - v15;
  sub_29E02D830(0, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  v90 = v17;
  v96 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v76 - v18;
  sub_29E02D830(0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v87 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v76 - v23;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v76 - v26;
  v99 = a1;
  sub_29E248444(sub_29E02D89C, v98, a2);
  v29 = v28;
  v30 = *(v28 + 16);
  v97 = v24;
  if (v30)
  {
    v100 = MEMORY[0x29EDCA190];
    sub_29E181350(0, v30, 0);
    v31 = v100;
    v32 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v76 = v29;
    v33 = (v29 + v32);
    v34 = *(v96 + 72);
    v82 = (v10 + 16);
    v83 = v34;
    v81 = (v10 + 32);
    v77 = v10;
    v80 = v10 + 8;
    v84 = v19;
    v85 = v16;
    v35 = (v10 + 8);
    do
    {
      sub_29E02D8D0(v33, v19, &qword_2A1819F90, MEMORY[0x29EDC9930]);
      sub_29E2C3104();
      sub_29DEF60A0();
      result = sub_29E2C32B4();
      if ((result & 1) == 0)
      {
        __break(1u);
        goto LABEL_21;
      }

      v91 = v33;
      v92 = v30;
      v37 = v27;
      v38 = v94;
      (*v82)(v94, v19, v9);
      sub_29E02D93C(v19, &qword_2A1819F90, MEMORY[0x29EDC9930]);
      v96 = v31;
      v39 = v95;
      v40 = *v81;
      (*v81)(v38 + *(v95 + 48), v16, v9);
      v41 = v93;
      sub_29DEC6FE8(v38, v93);
      v42 = *(v39 + 48);
      (v40)(v37, v41, v9);
      v43 = *v35;
      (*v35)(v41 + v42, v9);
      v44 = v38;
      v27 = v37;
      sub_29DEC704C(v44, v41);
      v45 = *(v39 + 48);
      v31 = v96;
      (v40)(v37 + *(v89 + 36), v41 + v45, v9);
      v43(v41, v9);
      v100 = v31;
      v47 = *(v31 + 16);
      v46 = *(v31 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_29E181350(v46 > 1, v47 + 1, 1);
        v31 = v100;
      }

      *(v31 + 16) = v47 + 1;
      sub_29DF5BD44(v37, v31 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v47);
      v19 = v84;
      v33 = (v91 + v83);
      v30 = (v92 - 1);
      v16 = v85;
    }

    while (v92 != 1);

    v24 = v97;
    v10 = v77;
    v48 = *(v31 + 16);
    if (!v48)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v31 = MEMORY[0x29EDCA190];
    v48 = *(MEMORY[0x29EDCA190] + 16);
    if (!v48)
    {
LABEL_19:

      return (*(v88 + 56))(v79, 1, 1, v89);
    }
  }

  v49 = v88;
  v50 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v96 = v31;
  v51 = v31 + v50;
  sub_29E02D8D0(v31 + v50, v24, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  v52 = *(v89 + 36);
  v92 = &v24[v52];
  v85 = (v87 + v52);
  v83 = *(v49 + 72);
  v84 = (v10 + 16);
  v82 = (v10 + 32);
  v81 = (v10 + 8);
  v53 = v78;
  while (1)
  {
    v90 = v51;
    v91 = MEMORY[0x29EDC9C30];
    v54 = v87;
    sub_29E02D8D0(v51, v87, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
    sub_29DEF60A0();
    v55 = v53;
    v56 = v97;
    v57 = v9;
    v58 = sub_29E2C3294();
    v59 = *v84;
    v60 = (v58 & 1) != 0 ? v54 : v56;
    v59(v55, v60, v9);
    v61 = v85;
    v62 = v92;
    v63 = (sub_29E2C32A4() & 1) != 0 ? v61 : v62;
    v9 = v57;
    v64 = v86;
    v59(v86, v63, v57);
    v65 = sub_29E2C32B4();
    v66 = v91;
    sub_29E02D93C(v54, &qword_2A1A61A30, v91);
    result = sub_29E02D93C(v56, &qword_2A1A61A30, v66);
    if ((v65 & 1) == 0)
    {
      break;
    }

    v53 = v55;
    v67 = *v82;
    v91 = v48;
    v68 = v94;
    v67(v94, v55, v9);
    v69 = v95;
    v67((v68 + *(v95 + 48)), v64, v9);
    v70 = v93;
    sub_29DEC6FE8(v68, v93);
    v71 = *(v69 + 48);
    v67(v97, v70, v9);
    v72 = *v81;
    (*v81)(v70 + v71, v9);
    v73 = v68;
    v74 = v91;
    sub_29DEC704C(v73, v70);
    v67(v92, (v70 + *(v69 + 48)), v9);
    v72(v70, v9);
    v51 = v90 + v83;
    v48 = (v74 - 1);
    if (!v48)
    {

      v75 = v79;
      sub_29DF5BD44(v97, v79);
      return (*(v88 + 56))(v75, 0, 1, v89);
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_29E02D830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29DEF60A0();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E02D8D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t))
{
  sub_29E02D830(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E02D93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  sub_29E02D830(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E02D998()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked);
  sub_29E02E288();
  if (v2 == 1)
  {
    v3 = sub_29E2C4094();
    v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage);
    *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage) = v3;

    v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_editableDaySummarySection);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = &selRef_hkmc_supplementaryDataColor;
      }

      else
      {
        if (v5 != 7)
        {
          sub_29E2C4724();
          __break(1u);
          return;
        }

        v6 = &selRef_systemBlueColor;
      }
    }

    else
    {
      v6 = &selRef_hkmc_menstruationColor;
    }
  }

  else
  {
    v7 = sub_29E2C4094();
    v8 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage);
    *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage) = v7;

    v6 = &selRef_tertiaryLabelColor;
  }

  v9 = [objc_opt_self() *v6];
  v10 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_tintAccessoryColor);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_tintAccessoryColor) = v9;

  sub_29E02DD60();
}

uint64_t sub_29E02DC38()
{
  swift_getObjectType();
  v1 = [objc_opt_self() hkmc_loggingCardBackgroundColor];
  [v0 setBackgroundColor_];

  [v0 setAccessoryType_];
  v2 = [v0 textLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setNumberOfLines_];
  }

  sub_29DEAC750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CAB20;
  v5 = sub_29E2C0B54();
  v6 = MEMORY[0x29EDC7870];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

void sub_29E02DD60()
{
  v1 = v0;
  v2 = *MEMORY[0x29EDC80E0];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
  swift_beginAccess();
  sub_29DFD5A4C(&v1[v3], v18);
  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = sub_29DE966D4(v18, v19);
    v7 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v6);
    v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v7 + 16))(v9);
    sub_29DFD5AB0(v18);
    v10 = (*(v5 + 8))(v4, v5);
    (*(v7 + 8))(v9, v4);
  }

  else
  {
    sub_29DFD5AB0(v18);
    v10 = 0;
  }

  v11 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];

  if (v11)
  {
    [v11 pointSize];
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v12];
    v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage];
    if (v14)
    {
      v15 = [v14 imageWithConfiguration_];
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    [v16 setTintColor_];
    [v1 setAccessoryView_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E02DFE4()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x29EDC80E0];
    v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
    swift_beginAccess();
    sub_29DFD5A4C(v0 + v4, v15);
    v5 = v16;
    if (v16)
    {
      v6 = v17;
      v7 = sub_29DE966D4(v15, v16);
      v8 = *(v5 - 8);
      v9 = MEMORY[0x2A1C7C4A8](v7);
      v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v8 + 16))(v11, v9);
      sub_29DFD5AB0(v15);
      v12 = (*(v6 + 8))(v5, v6);
      (*(v8 + 8))(v11, v5);
    }

    else
    {
      sub_29DFD5AB0(v15);
      v12 = 0;
    }

    v13 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];

    [v2 setFont_];
  }

  sub_29E02DD60();
}

id sub_29E02E1D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeLoggingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E02E288()
{
  result = qword_2A1818D18;
  if (!qword_2A1818D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1818D18);
  }

  return result;
}

id sub_29E02E330(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_accessoryImage] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_tintAccessoryColor] = 0;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_isChecked] = 0;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_editableDaySummarySection] = 7;
  if (a2)
  {
    v4 = sub_29E2C33A4();
  }

  else
  {
    v4 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for DataTypeLoggingCell();
  v5 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, 1, v4);

  v6 = v5;
  sub_29E02DC38();

  return v6;
}

uint64_t sub_29E02E404@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  sub_29E02E868(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_29E2BC4D4();
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_29E2C4584();
  v8 = [objc_opt_self() currentOSBuild];
  if (v8)
  {
    v9 = v8;
    v10 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v7 = v11;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x29ED7FCC0](v10, v7);

  MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E2F9A10);
  sub_29E2BC4C4();
  sub_29E2BC4B4();
  MEMORY[0x29ED78C50](7824750, 0xE300000000000000);
  sub_29E02E868(0, &unk_2A181DA50, MEMORY[0x29EDB9920], MEMORY[0x29EDC9E90]);
  sub_29E2BC434();
  *(swift_allocObject() + 16) = xmmword_29E2D06A0;
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC454();
  sub_29E2BC474();
  v12 = sub_29E2BC904();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v3, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v16 + 8))(v6, v17);
    return (*(v13 + 32))(v18, v3, v12);
  }

  return result;
}

void sub_29E02E868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E02E8CC@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  sub_29E02E868(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v15 - v2;
  v15 = sub_29E2BC4D4();
  v4 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_29E2C4584();
  v8 = [objc_opt_self() currentOSBuild];
  if (v8)
  {
    v9 = v8;
    v10 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v7 = v11;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x29ED7FCC0](v10, v7);

  MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E2F9B50);
  sub_29E2BC4C4();
  sub_29E2BC4B4();
  MEMORY[0x29ED78C50](7824750, 0xE300000000000000);
  sub_29E02E868(0, &unk_2A181DA50, MEMORY[0x29EDB9920], MEMORY[0x29EDC9E90]);
  sub_29E2BC434();
  *(swift_allocObject() + 16) = xmmword_29E2D06A0;
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC454();
  sub_29E2BC474();
  v12 = sub_29E2BC904();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v3, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v4 + 8))(v6, v15);
    return (*(v13 + 32))(v16, v3, v12);
  }

  return result;
}

uint64_t sub_29E02ED30@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_29E02E868(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v50 = &v37 - v2;
  v3 = sub_29E2BC4D4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCA04();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCA44();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BC9D4();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BCA54();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v37 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v37 - v21;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v37 - v24;
  v26 = sub_29E2BCBB4();
  v42 = *(v26 - 8);
  v43 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_29E2C4584();

  v53 = 0xD00000000000001DLL;
  v54 = 0x800000029E2F9A50;
  v29 = sub_29E2BCBA4();
  MEMORY[0x29ED78A30](v29);
  sub_29E2BC9C4();
  sub_29E2BC994();
  (*(v40 + 8))(v12, v41);
  v30 = *(v14 + 8);
  v30(v16, v13);
  sub_29E2BCA24();
  sub_29E2BC9B4();
  (*(v44 + 8))(v9, v45);
  v30(v19, v13);
  v31 = v46;
  sub_29E2BC9F4();
  sub_29E2BC9A4();
  (*(v47 + 8))(v31, v48);
  v30(v22, v13);
  sub_29DF3BCB4();
  sub_29E2BCB94();
  v30(v25, v13);
  (*(v42 + 8))(v28, v43);
  MEMORY[0x29ED7FCC0](v51, v52);

  MEMORY[0x29ED7FCC0](41, 0xE100000000000000);
  v32 = v49;
  sub_29E2BC4C4();
  sub_29E2BC4B4();
  MEMORY[0x29ED78C50](7824750, 0xE300000000000000);
  sub_29E02E868(0, &unk_2A181DA50, MEMORY[0x29EDB9920], MEMORY[0x29EDC9E90]);
  sub_29E2BC434();
  *(swift_allocObject() + 16) = xmmword_29E2D06A0;
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  sub_29E2BC404();
  v33 = v50;
  sub_29E2BC404();
  sub_29E2BC454();
  sub_29E2BC474();
  v34 = sub_29E2BC904();
  v35 = *(v34 - 8);
  result = (*(v35 + 48))(v33, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v37 + 8))(v32, v38);
    return (*(v35 + 32))(v39, v33, v34);
  }

  return result;
}

void sub_29E02F684(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2BE2A4();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v10 = a1;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  v13 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v42 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136446722;
    v17 = sub_29E2C4AE4();
    v19 = sub_29DFAA104(v17, v18, v48);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29DFAA104(0xD000000000000028, 0x800000029E2F9BD0, v48);
    *(v15 + 22) = 2080;
    *&v46[0] = [v10 categoryType];
    sub_29DEED314();
    v20 = sub_29E2C3464();
    v22 = sub_29DFAA104(v20, v21, v48);
    v13 = &selRef_hkmc_menstruationLoggingCardGradientAColor;

    *(v15 + 24) = v22;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s.%{public}s]: presenting editVC for %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v16, -1, -1);
    v23 = v15;
    v2 = v42;
    MEMORY[0x29ED82140](v23, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v24 = [v10 v13[150]];
  v25 = [v24 identifier];

  v26 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v28 = v27;

  if (v26 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v28 == v29)
  {

LABEL_7:
    v31 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore];
    sub_29DE9DC34(&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_healthExperienceStore], v48);
    v32 = v45;
    (*(v43 + 104))(v45, *MEMORY[0x29EDC1D80], v44);
    v33 = objc_allocWithZone(MEMORY[0x29EDC4760]);
    v34 = v31;
    v35 = [v33 init];
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v36 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_pregnancyModelProvider];
    type metadata accessor for PregnancyOffboardingCoordinator();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_29DFEA410(v34, v48, v32, v35, v46, v36, 0, 0, 0, 0, 0, 0);
    sub_29DFE99B4(v2, v10, 1, 0, 0);

    return;
  }

  v30 = sub_29E2C4914();

  if (v30)
  {
    goto LABEL_7;
  }

  v37 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore];
  v38 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_analysisProvider];
  v39 = objc_allocWithZone(type metadata accessor for EditCycleFactorTableViewController());
  v40 = sub_29E161CC0(v10, v37, v38);
  [v40 setModalInPresentation_];
  *(v40 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_launchSource) = v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource];
  v41 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v2 presentViewController:v41 animated:1 completion:0];
}

id sub_29E02FC38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleFactorsCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E02FCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel;
  *&v4[v7] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_isChecked] = 0;
  sub_29DE9408C(0, &qword_2A1818D18);
  v8 = *MEMORY[0x29EDC80E0];
  v9 = sub_29E2C4094();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() configurationWithTextStyle:v8 scale:-1];
    v12 = [v10 imageWithConfiguration_];
    v13 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

    *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView] = v13;
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 hk_appKeyColor];
    [v15 setTintColor_];

    if (a3)
    {
      v17 = sub_29E2C33A4();
    }

    else
    {
      v17 = 0;
    }

    v21.receiver = v4;
    v21.super_class = type metadata accessor for NewFactorTypeTableViewCell();
    v18 = objc_msgSendSuper2(&v21, sel_initWithStyle_reuseIdentifier_, a1, v17);

    v19 = v18;
    sub_29E03002C();

    return v19;
  }

  else
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

void sub_29E03002C()
{
  v1 = v0;
  v2 = sub_29E2BE814();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setSelectionStyle_];
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = *&v1[v7];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x29EDC80E0];
  v11 = v8;
  v12 = [v9 preferredFontForTextStyle_];
  [v11 setFont_];

  [*&v1[v7] setAdjustsFontForContentSizeCategory_];
  v13 = [v1 contentView];
  [v13 addSubview_];

  v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView];
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView;
  v64 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26NewFactorTypeTableViewCell_checkMarkImageView;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 &selRef_systemFontOfSize_weight_];
  [v16 addSubview_];

  v17 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v18 = *(v3 + 8);
  v18(v6, v2);
  [v17 directionalLayoutMargins];
  [v17 setDirectionalLayoutMargins_];

  v19 = [v1 &selRef_systemFontOfSize_weight_];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v18(v6, v2);
  [v19 directionalLayoutMargins];
  [v19 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v20 = swift_allocObject();
  v66 = xmmword_29E2CDBD0;
  *(v20 + 16) = xmmword_29E2CDBD0;
  v21 = [*&v1[v7] topAnchor];
  v22 = [v1 &selRef_systemFontOfSize_weight_];
  v23 = [v22 &selRef_hkmc_menstruationColor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:15.0];
  *(v20 + 32) = v24;
  v25 = [v1 &selRef_systemFontOfSize_weight_];
  v26 = [v25 bottomAnchor];

  v27 = [*&v1[v7] &selRef_setDuration_ + 5];
  v28 = [v26 &selRef:v27 setLineFragmentPadding:15.0 + 6];

  *(v20 + 40) = v28;
  v29 = [*&v1[v7] leadingAnchor];
  v30 = [v1 &selRef_systemFontOfSize_weight_];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  *(v20 + 48) = v33;
  v34 = objc_opt_self();
  v65 = v34;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v35 = sub_29E2C3604();

  [v34 activateConstraints_];

  v36 = swift_allocObject();
  *(v36 + 16) = v66;
  v37 = v64;
  v38 = [*&v1[v64] topAnchor];
  v39 = [v1 &selRef_systemFontOfSize_weight_];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:15.0];
  *(v36 + 32) = v41;
  v42 = [v1 &selRef_systemFontOfSize_weight_];
  v43 = [v42 bottomAnchor];

  v44 = [*&v1[v37] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:15.0];

  *(v36 + 40) = v45;
  v46 = [v1 &selRef_systemFontOfSize_weight_];
  v47 = [v46 layoutMarginsGuide];

  v48 = [v47 trailingAnchor];
  v49 = [*&v1[v37] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v36 + 48) = v50;
  v51 = sub_29E2C3604();

  [v65 activateConstraints_];

  v52 = [*&v1[v37] leadingAnchor];
  v53 = [*&v1[v7] trailingAnchor];
  v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53 constant:8.0];

  LODWORD(v55) = 1148846080;
  [v54 setPriority_];
  [v54 setActive_];
  v56 = [*&v1[v7] widthAnchor];
  v57 = [v56 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v58) = 1148846080;
  [v57 setPriority_];
  [v57 setActive_];
  v59 = [*&v1[v37] widthAnchor];
  v60 = [v59 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v61) = 1148846080;
  [v60 setPriority_];
  [v60 setActive_];
  LODWORD(v62) = 1144750080;
  [*&v1[v37] setContentHuggingPriority:0 forAxis:v62];
  LODWORD(v63) = 1148846080;
  [*&v1[v37] setContentCompressionResistancePriority:0 forAxis:v63];
}

id sub_29E03086C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewFactorTypeTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E030910()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
    [v5 setAdjustsFontSizeToFitWidth_];
    [v5 setNumberOfLines_];
    [v5 setTextAlignment_];
    sub_29E2C4004();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_29E0309D8()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___formatter;
  v7 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___formatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___formatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    sub_29E2BCC74();
    v10 = sub_29E2BCC44();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    v11 = sub_29E2C33A4();
    [v9 setLocalizedDateFormatFromTemplate_];

    v12 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

id sub_29E030B50()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E030C04(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(a2(0)) initWithFrame_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_29E030C8C(uint64_t a1)
{
  v3 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_supplementaryDisplayTypes);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_supplementaryDisplayTypes) = a1;
  sub_29E2BF404();
  v7 = sub_29E067B8C(v6, a1);

  if ((v7 & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
    swift_beginAccess();
    sub_29E00C08C(v1 + v9, v5);
    sub_29E031724(v5);
    return sub_29E029468(v5);
  }

  return result;
}

id sub_29E030D7C(double a1, double a2, double a3, double a4)
{
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___formatter] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___pill] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator] = 0;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_gregorianCalendar;
  v14 = sub_29E2BCEA4();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_supplementaryDisplayTypes] = MEMORY[0x29EDCA1A0];
  v15 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay];
  sub_29E2C30D4();
  (*(v10 + 16))(v15, v12, v9);
  v16 = [objc_opt_self() unfetchedDayViewModel];
  (*(v10 + 8))(v12, v9);
  *&v15[*(type metadata accessor for CycleDay() + 20)] = v16;
  sub_29E2BCA74();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___fertilityProjectionReversed] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___menstruationProjectionHighReversed] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___menstruationProjectionLowReversed] = 0;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_didUpdateFromCycleDay] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel] = 0;
  v17 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration];
  v18 = *MEMORY[0x29EDC8060];
  *v17 = 0;
  *(v17 + 1) = *v30;
  *(v17 + 1) = *&v30[3];
  *(v17 + 8) = xmmword_29E2D9680;
  *(v17 + 24) = xmmword_29E2D9690;
  *(v17 + 40) = xmmword_29E2D96A0;
  *(v17 + 56) = xmmword_29E2D96B0;
  *(v17 + 72) = xmmword_29E2D96C0;
  *(v17 + 88) = xmmword_29E2D96D0;
  *(v17 + 104) = xmmword_29E2D96E0;
  *(v17 + 15) = 0x4033000000000000;
  *(v17 + 16) = v18;
  __asm { FMOV            V0.2D, #1.0 }

  *(v17 + 136) = _Q0;
  *(v17 + 19) = 0x3FF0000000000000;
  v24 = type metadata accessor for TimelineDayCell(0);
  v29.receiver = v4;
  v29.super_class = v24;
  v25 = v18;
  v26 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E032A9C();

  return v26;
}

id sub_29E0310B8(void *a1)
{
  v3 = sub_29E2C31A4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___formatter] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___pill] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator] = 0;
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_gregorianCalendar;
  v8 = sub_29E2BCEA4();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_supplementaryDisplayTypes] = MEMORY[0x29EDCA1A0];
  v9 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay];
  sub_29E2C30D4();
  (*(v4 + 16))(v9, v6, v3);
  v10 = [objc_opt_self() unfetchedDayViewModel];
  (*(v4 + 8))(v6, v3);
  *&v9[*(type metadata accessor for CycleDay() + 20)] = v10;
  sub_29E2BCA74();
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___fertilityProjectionReversed] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___menstruationProjectionHighReversed] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___menstruationProjectionLowReversed] = 0;
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_didUpdateFromCycleDay] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel] = 0;
  v11 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration];
  v12 = *MEMORY[0x29EDC8060];
  *v11 = 0;
  *(v11 + 1) = *v26;
  *(v11 + 1) = *&v26[3];
  *(v11 + 8) = xmmword_29E2D9680;
  *(v11 + 24) = xmmword_29E2D9690;
  *(v11 + 40) = xmmword_29E2D96A0;
  *(v11 + 56) = xmmword_29E2D96B0;
  *(v11 + 72) = xmmword_29E2D96C0;
  *(v11 + 88) = xmmword_29E2D96D0;
  *(v11 + 104) = xmmword_29E2D96E0;
  *(v11 + 15) = 0x4033000000000000;
  *(v11 + 16) = v12;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 136) = _Q0;
  *(v11 + 19) = 0x3FF0000000000000;
  v18 = type metadata accessor for TimelineDayCell(0);
  v25.receiver = v1;
  v25.super_class = v18;
  v19 = v12;
  v20 = objc_msgSendSuper2(&v25, sel_initWithCoder_, a1);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    sub_29E032A9C();
  }

  return v21;
}

uint64_t sub_29E0313E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_29E035C6C(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v22[-v13];
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  sub_29E00C08C(v2 + v15, v14);
  sub_29E2C31A4();
  sub_29E035E14(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  if (sub_29E2C3304())
  {
    sub_29DE9408C(0, &qword_2A1A619F0);
    v16 = sub_29E2C40D4();
  }

  else
  {
    v16 = 0;
  }

  sub_29E00C08C(a1, v11);
  swift_beginAccess();
  sub_29E035E5C(v11, v2 + v15);
  swift_endAccess();
  v17 = sub_29E2BCEA4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v8, a2, v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_gregorianCalendar;
  swift_beginAccess();
  sub_29E035EC0(v8, v3 + v19);
  swift_endAccess();
  sub_29E1025EC();
  v20 = sub_29E2C33A4();

  [v3 setAccessibilityIdentifier_];

  if ((v16 & 1) == 0)
  {
    sub_29E031724(v14);
  }

  return sub_29E029468(v14);
}

void sub_29E031724(uint64_t a1)
{
  sub_29E035C6C(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v117 = &v112 - v4;
  v5 = sub_29E2BCBB4();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v113 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v112 = &v112 - v8;
  v121 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v121);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C31A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v116 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v112 - v15;
  v123 = v1;
  v17 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  v119 = *(v12 + 16);
  v119(v16, v17, v11);
  sub_29E035E14(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  v18 = sub_29E2C3304();
  v120 = *(v12 + 8);
  v120(v16, v11);
  v122 = v17;
  if (v18)
  {
    sub_29E00C08C(v17, v10);
    if (sub_29E2C3304() & 1) != 0 && (sub_29DE9408C(0, &qword_2A1A619F0), (sub_29E2C40D4()))
    {
      sub_29E029468(v10);
      v118 = 0;
      v19 = v119;
    }

    else
    {
      sub_29E029468(v10);
      v20 = v121;
      v21 = [*(a1 + *(v121 + 20)) isFetched];
      v19 = v119;
      if (v21)
      {
        v118 = [*(v122 + *(v20 + 20)) isFetched];
      }

      else
      {
        v118 = 0;
      }
    }
  }

  else
  {
    v118 = 0;
    v19 = v119;
  }

  v22 = v122;
  v19(v16, v122, v11);
  v23 = v22;
  v24 = sub_29E2C3304();
  v120(v16, v11);
  if (v24)
  {
    goto LABEL_14;
  }

  v25 = v116;
  v19(v116, v22, v11);
  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_gregorianCalendar;
  v27 = v123;
  swift_beginAccess();
  v28 = v117;
  sub_29E035CD0(v27 + v26, v117);
  v29 = sub_29E2BCEA4();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    v31 = v112;
    sub_29E2C3194();
    v120(v25, v11);
    (*(v30 + 8))(v28, v29);
    v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_startDate;
    swift_beginAccess();
    v34 = v114;
    v33 = v115;
    (*(v114 + 40))(v27 + v32, v31, v115);
    swift_endAccess();
    v35 = sub_29E030910();
    v36 = sub_29E0309D8();
    v37 = v113;
    (*(v34 + 16))(v113, v27 + v32, v33);
    v38 = sub_29E2BCB04();
    (*(v34 + 8))(v37, v33);
    v39 = [v36 stringFromDate_];

    if (!v39)
    {
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v39 = sub_29E2C33A4();
    }

    [v35 setText_];

    v23 = v122;
LABEL_14:
    v40 = v118;
    v41 = v121;
    v42 = [*(v23 + *(v121 + 20)) menstruationLevel];
    v43 = MEMORY[0x29EDCA1E8];
    if ((v42 - 2) < 2)
    {
      v44 = v123;
      v45 = sub_29E0316FC();
    }

    else
    {
      v44 = v123;
      if (v42 == 4)
      {
        v46 = (*((*MEMORY[0x29EDCA1E8] & *v123) + 0x158))();
        v47 = objc_opt_self();
        v48 = &selRef_hkmc_menstruationColor;
        if ((v46 & 0xFE) != 0)
        {
          v48 = &selRef_hkmc_menstruationTimelineFutureColor;
        }

        v45 = [v47 *v48];
      }

      else
      {
        if (v42 != 1)
        {
          v49 = 0;
          goto LABEL_23;
        }

        v45 = sub_29E031710();
      }
    }

    v49 = v45;
LABEL_23:
    if ([*(v23 + *(v41 + 20)) bleedingInPregnancyLevel] == 1 || objc_msgSend(*(v23 + *(v41 + 20)), sel_bleedingAfterPregnancyLevel) == 1)
    {
      v50 = (*((*v43 & *v44) + 0x158))();
      v51 = objc_opt_self();
      v52 = &selRef_hkmc_menstruationColor;
      if ((v50 & 0xFE) != 0)
      {
        v52 = &selRef_hkmc_menstruationTimelineFutureColor;
      }

      v53 = [v51 *v52];

      v49 = v53;
    }

    sub_29E033E80([*(v23 + *(v41 + 20)) pregnancyState]);
    if ((*((*v43 & *v44) + 0x158))() > 1u)
    {
      v60 = objc_opt_self();
      v61 = &selRef_hkmc_supplementaryDataTimelineFutureColor;
    }

    else
    {
      v54 = *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_supplementaryDisplayTypes);
      v55 = *(v23 + *(v41 + 20));
      sub_29E2BF404();
      v56 = [v55 daySummary];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 loggedSupplementaryDisplayTypes];

        type metadata accessor for HKMCDisplayTypeIdentifier(0);
        sub_29E035E14(&qword_2A181DA40, type metadata accessor for HKMCDisplayTypeIdentifier);
        v59 = sub_29E2C3814();
      }

      else
      {
        v59 = MEMORY[0x29EDCA1A0];
      }

      sub_29E032834(v59, v54);
      v63 = v62;

      v60 = objc_opt_self();
      v61 = &selRef_hkmc_supplementaryDataColor;
      if (v63)
      {
        v61 = &selRef_hkmc_supplementaryDataTimelineDisabledColor;
      }
    }

    v120 = [v60 *v61];
    sub_29E033A60();
    v64 = sub_29E030BE4();
    v65 = [v64 isHidden];

    v66 = ((v49 == 0) ^ v65) & v40;
    v67 = [*(v23 + *(v41 + 20)) isSupplementaryDataLogged];
    v68 = v67;
    v69 = v67 ^ 1;
    v70 = sub_29E030B50();
    v71 = [v70 isHidden];

    v72 = (v69 ^ v71) & v40;
    v73 = objc_opt_self();
    [v73 begin];
    if (v66)
    {
      [v73 setDisableActions_];
      if (v49)
      {
        [v73 begin];
        [v73 setDisableActions_];
        v74 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator;
        v75 = *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator);
        v76 = v49;
        v77 = v75;
        sub_29E035D64(v49);

        [*(v44 + v74) setHidden_];
        [v73 commit];
        v78 = *(*(v44 + v74) + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
        [v78 bounds];
        [v78 setBounds_];

        [*(v44 + v74) setNeedsLayout];
        [*(v44 + v74) layoutIfNeeded];
        if (!v72)
        {
          goto LABEL_45;
        }

LABEL_41:
        if (v68)
        {
          [v73 begin];
          [v73 setDisableActions_];
          v83 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator;
          v84 = *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator);
          v85 = v120;
          v86 = [v120 CGColor];
          [v84 setFillColor_];

          [*(v44 + v83) setHidden_];
          [v73 commit];
          CATransform3DMakeScale(&v125, *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 88) / *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 56) * *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel) + 1.0, *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 88) / *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 56) * *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel) + 1.0, 1.0);
          v126 = v125;
          v87 = *(v44 + v83);
          CATransform3DMakeScale(&v127, 0.001, 0.001, 1.0);
          v88 = sub_29E2C33A4();
          v89 = [objc_opt_self() animationWithKeyPath_];

          v90 = sub_29E2C3944();
          [v89 setFromValue_];

          v91 = sub_29E2C3944();
          [v89 setToValue_];

          v92 = sub_29E2C33A4();
          [v87 addAnimation:v89 forKey:v92];

          v93 = *(v44 + v83);
          v124 = v125;
          [v93 setTransform_];
        }

        else
        {
          CATransform3DMakeScale(&v127, *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 88) / *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 56) * *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel) + 1.0, *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 88) / *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 56) * *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel) + 1.0, 1.0);
          CATransform3DMakeScale(&v126, 0.001, 0.001, 1.0);
          v94 = sub_29E2C33A4();
          v95 = [objc_opt_self() animationWithKeyPath_];

          v96 = sub_29E2C3944();
          [v95 setFromValue_];

          v97 = sub_29E2C3944();
          [v95 setToValue_];

          [v95 setDelegate_];
          v98 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator;
          v99 = *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator);
          v100 = sub_29E2C33A4();
          [v99 addAnimation:v95 forKey:v100];

          v101 = *(v44 + v98);
          CATransform3DMakeScale(&v125, 0.001, 0.001, 1.0);
          [v101 setTransform_];

          v85 = v120;
        }

        goto LABEL_46;
      }

      v102 = sub_29E2C33A4();
      v103 = [objc_opt_self() animationWithKeyPath_];

      [v103 setDelegate_];
      v104 = sub_29E2C3FC4();
      [v103 setToValue_];

      v105 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator;
      v106 = *(*(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator) + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
      v107 = sub_29E2C33A4();
      [v106 addAnimation:v103 forKey:v107];

      v44 = v123;
      v108 = *(*(v123 + v105) + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
      [v108 bounds];
      [v108 setBounds_];

      [*(v44 + v105) setNeedsLayout];
      [*(v44 + v105) layoutIfNeeded];

      if (v72)
      {
        goto LABEL_41;
      }
    }

    else
    {
      [v73 setDisableActions_];
      v79 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator;
      [*(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator) setHidden_];
      v80 = *(v44 + v79);
      v81 = v49;
      v82 = v80;
      sub_29E035D64(v49);

      if (v72)
      {
        goto LABEL_41;
      }
    }

LABEL_45:
    v109 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator;
    [*(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator) setHidden_];
    v110 = *(v44 + v109);
    v85 = v120;
    v111 = [v120 CGColor];
    [v110 setFillColor_];

LABEL_46:
    [v73 commit];

    *(v44 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_didUpdateFromCycleDay) = 1;
    return;
  }

  __break(1u);
}

void sub_29E032834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v28 = v6 + 56;
      sub_29E2BF404();
      sub_29E2BF404();
      v11 = 0;
      v26 = v4;
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v25 = (v12 - 1) & v12;
          v14 = *(*(v4 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v12)))));
          _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          sub_29E2C4A04();
          v27 = v14;
          sub_29E2C34B4();
          v15 = sub_29E2C4A54();

          v16 = -1 << *(v6 + 32);
          v17 = v15 & ~v16;
          if ((*(v28 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
              v21 = v20;
              if (v19 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v21 == v22)
              {

                goto LABEL_33;
              }

              v24 = sub_29E2C4914();

              if (v24)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v28 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

LABEL_33:

            return;
          }

LABEL_28:

          v9 = v25;
          v4 = v26;
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_29E032A9C()
{
  v1 = v0;
  v2 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v1 setBackgroundColor_];

  v7 = [v1 contentView];
  v8 = sub_29E030910();
  [v7 addSubview_];

  v9 = [v1 contentView];
  v10 = sub_29E030BC4();
  [v9 addSubview_];

  v11 = [v1 contentView];
  v12 = sub_29E030BE4();
  [v11 addSubview_];

  v13 = [v1 contentView];
  v14 = [v13 layer];

  v15 = sub_29E030B50();
  [v14 addSublayer_];

  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel;
  v17 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel);
  LOBYTE(v15) = (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x158))();
  v18 = v15;
  v19 = v17;
  v20 = [v5 *off_29F362830[v15]];
  [v19 setTextColor_];

  v21 = *(v1 + v16);
  v22 = &selRef_labelColor;
  if (v18 != 1)
  {
    v22 = &selRef_clearColor;
  }

  v23 = [v5 *v22];
  [v21 setBackgroundColor_];

  sub_29E032EC8();
  sub_29E03314C();
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  sub_29E00C08C(v1 + v24, v4);
  sub_29E031724(v4);
  sub_29E029468(v4);
  sub_29DE9408C(0, &qword_2A181ADA0);
  sub_29E2C3D24();
  MEMORY[0x29ED807F0]();
  swift_unknownObjectRelease();

  sub_29E035C6C(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v25 = swift_allocObject();
  v30 = xmmword_29E2CAB20;
  *(v25 + 16) = xmmword_29E2CAB20;
  v26 = sub_29E2C0B54();
  v27 = MEMORY[0x29EDC7870];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  MEMORY[0x29ED807F0](v25, sel_adaptToContentSizeChanges);
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = v30;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  MEMORY[0x29ED807F0]();
  swift_unknownObjectRelease();
}

void sub_29E032EC8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration;
  v3 = sub_29E030BE4();
  v4 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer];

  [v4 bounds];
  [v4 setBounds_];

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator;
  [*(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator) + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer) setAnchorPoint_];
  v6 = *(*(v1 + v5) + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
  v7 = *(v2 + 112);
  v38[6] = *(v2 + 96);
  v38[7] = v7;
  v8 = *(v2 + 144);
  v38[8] = *(v2 + 128);
  v38[9] = v8;
  v9 = *(v2 + 48);
  v38[2] = *(v2 + 32);
  v38[3] = v9;
  v10 = *(v2 + 80);
  v38[4] = *(v2 + 64);
  v38[5] = v10;
  v11 = *(v2 + 16);
  v38[0] = *v2;
  v38[1] = v11;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel;
  v13 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel);
  v14 = v6;
  sub_29DF8944C(v38, v30);
  v15 = sub_29E1A9820(v13);
  sub_29DF8950C(v38);
  [v14 setPosition_];

  [*(v1 + v5) setNeedsLayout];
  v16 = sub_29E030B50();
  v17 = *(v2 + 56);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = v17;
  v39.size.height = v17;
  v18 = CGPathCreateWithEllipseInRect(v39, 0);
  [v16 setFrame_];
  [v16 setPath_];

  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator;
  [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator) setAnchorPoint_];
  v20 = *(v1 + v19);
  v21 = *(v2 + 112);
  v34 = *(v2 + 96);
  v35 = v21;
  v22 = *(v2 + 144);
  v36 = *(v2 + 128);
  v37 = v22;
  v23 = *(v2 + 48);
  v30[2] = *(v2 + 32);
  v31 = v23;
  v24 = *(v2 + 80);
  v32 = *(v2 + 64);
  v33 = v24;
  v25 = *(v2 + 16);
  v30[0] = *v2;
  v30[1] = v25;
  v26 = *(v1 + v12);
  v27 = v20;
  sub_29DF8944C(v30, &v29);
  v28 = sub_29E1A99C4();
  sub_29DF8950C(v30);
  [v27 setPosition_];
}

void sub_29E03314C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration);
  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 112);
  v33[6] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 96);
  v34 = v3;
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 144);
  v35 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 128);
  v36 = v4;
  v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 48);
  v33[2] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 32);
  v33[3] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 80);
  v33[4] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 64);
  v33[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 16);
  v33[0] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration);
  v33[1] = v7;
  if (v33[0])
  {
    v8 = MEMORY[0x29EDC80F8];
    v9 = *MEMORY[0x29EDC80F8];
    sub_29DF8944C(v33, v32);
  }

  else
  {
    v8 = MEMORY[0x29EDC80F8];
    sub_29DF8944C(v33, v32);
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1841238;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v12 = *(&v34 + 1);
  v13 = sub_29E1A9AC4();
  [v11 scaledValueForValue:v13 compatibleWithTraitCollection:v12];

  sub_29DF8950C(v33);
  v14 = sub_29E030910();
  [v14 frame];
  [v14 setFrame_];

  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel;
  v16 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel);
  [v16 frame];
  CGRectGetWidth(v37);
  sub_29E2C3FE4();

  v17 = *(v1 + v15);
  (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x158))();
  v18 = v17;
  v19 = [v1 traitCollection];
  v20 = [v19 horizontalSizeClass];

  v21 = *(v2 + 7);
  v32[6] = *(v2 + 6);
  v32[7] = v21;
  v22 = *(v2 + 9);
  v32[8] = *(v2 + 8);
  v32[9] = v22;
  v23 = *(v2 + 3);
  v32[2] = *(v2 + 2);
  v32[3] = v23;
  v24 = *(v2 + 5);
  v32[4] = *(v2 + 4);
  v32[5] = v24;
  v25 = *(v2 + 1);
  v32[0] = *v2;
  v32[1] = v25;
  if (v20 == 2)
  {
    v26 = *v8;
    sub_29DF8944C(v32, v31);
  }

  else
  {
    sub_29DF8944C(v32, v31);
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v26 = qword_2A1841238;
  }

  v27 = v26;
  sub_29DE9408C(0, &unk_2A1A61A00);
  v28 = sub_29E2C3FD4();
  sub_29DF8950C(v32);

  [v18 setFont_];
  v29 = v2[14];
  v30 = *(v1 + v15);
  sub_29DF41EB4(v29);
  [v30 frame];
  [v30 setFrame_];
}

id sub_29E03350C()
{
  v1 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E030910();
  v5 = (*((*MEMORY[0x29EDCA1E8] & *v0) + 0x158))();
  v6 = objc_opt_self();
  v7 = &selRef_labelColor;
  if (v5 != 1)
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v6 *v7];
  [v4 setBackgroundColor_];

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  sub_29E00C08C(&v0[v9], v3);
  sub_29E031724(v3);
  sub_29E029468(v3);
  sub_29E032EC8();
  sub_29E03314C();
  v10 = objc_opt_self();
  [v10 begin];
  [v10 setDisableActions_];
  sub_29E0345B8(v0);
  return [v10 commit];
}

uint64_t sub_29E0336F4()
{
  v1 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E030910();
  v5 = (*((*MEMORY[0x29EDCA1E8] & *v0) + 0x158))();
  v6 = objc_opt_self();
  v7 = &selRef_labelColor;
  if (v5 != 1)
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v6 *v7];
  [v4 setBackgroundColor_];

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  sub_29E00C08C(v0 + v9, v3);
  sub_29E031724(v3);
  return sub_29E029468(v3);
}

id sub_29E0338D4(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TimelineDayCell(0);
  objc_msgSendSuper2(&v15, sel_applyLayoutAttributes_, a1);
  type metadata accessor for CycleTimelineCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_zoomLevel);
    v4 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 16);
    v16[0] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration);
    v16[1] = v4;
    v5 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 80);
    v7 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 32);
    v6 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 48);
    v16[4] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 64);
    v16[5] = v5;
    v16[2] = v7;
    v16[3] = v6;
    v8 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 144);
    v10 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 96);
    v9 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 112);
    v16[8] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleTimelineCollectionViewLayoutAttributes_configuration + 128);
    v16[9] = v8;
    v16[6] = v10;
    v16[7] = v9;
    v11 = a1;
    sub_29DF8944C(v16, &v14);
    sub_29E035F54(v16);
    sub_29DF8950C(v16);
  }

  v12 = objc_opt_self();
  [v12 begin];
  [v12 setDisableActions_];
  sub_29E0345B8(v1);
  return [v12 commit];
}

void sub_29E033A60()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 accessibilityContrast];

  v4 = objc_opt_self();
  v5 = &selRef_hkmc_highContrastRegularDayColor;
  if (v3 != 1)
  {
    v5 = &selRef_hkmc_regularDayColor;
  }

  v6 = [v4 *v5];
  v7 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay];
  swift_beginAccess();
  v8 = type metadata accessor for CycleDay();
  v9 = [*&v7[*(v8 + 20)] pregnancyState];
  if (v9 <= 6)
  {
    if (((1 << v9) & 0x6C) != 0)
    {
      v10 = sub_29E030BC4();
      v11 = objc_opt_self();
      [v11 begin];
      [v11 setDisableActions_];
      [*&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer] setFillColor_];
      [v11 commit];

      sub_29DE9408C(0, &qword_2A1817FE0);
      v12 = v6;
      v6 = sub_29E2C4064();
LABEL_6:

      goto LABEL_7;
    }

    if (v9 == 4)
    {
      v12 = sub_29E030BC4();
      v24 = objc_opt_self();
      [v24 begin];
      [v24 setDisableActions_];
      v28 = *&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer];
      sub_29DE9408C(0, &qword_2A1817FE0);
      v25 = sub_29E2C4074();
      v26 = [v25 colorWithAlphaComponent_];

      v27 = [v26 CGColor];
      [v28 setFillColor_];

      [v24 commit];
      goto LABEL_6;
    }
  }

LABEL_7:
  v13 = [*&v7[*(v8 + 20)] fertileWindowLevel];
  if ((v13 - 1) >= 2)
  {
    if (v13 != 3)
    {
      goto LABEL_12;
    }

    v14 = [objc_opt_self() hkmc_ovulationDayCycleTimelineReversedColor];
  }

  else
  {
    v14 = sub_29E0316E8();
  }

  v15 = v14;

  v6 = v15;
LABEL_12:
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setDisableActions_];
  v17 = sub_29E030BC4();
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor;
  v19 = *&v17[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor];
  *&v17[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor] = v6;
  v20 = v6;

  v21 = *&v17[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayer];
  v22 = *&v17[v18];
  v23 = v21;
  if (v22)
  {
    v22 = [v22 CGColor];
  }

  [v21 setBackgroundColor_];

  [v16 commit];
}

void sub_29E033E80(uint64_t a1)
{
  if (a1 > 3)
  {
    if ((a1 - 5) >= 2)
    {
      if (a1 != 4)
      {
LABEL_11:
        v4 = sub_29E030BC4();
        v2 = objc_opt_self();
        [v2 begin];
        [v2 setDisableActions_];
        v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer;
        [*&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer] setLineWidth_];
        [*&v4[v3] setLineDashPattern_];
        [*&v4[v3] setFillColor_];
        goto LABEL_12;
      }

      (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x158))();
      if ((sub_29E2BFC24() & 1) == 0 && (sub_29E2BFC24() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v4 = sub_29E030BC4();
    sub_29E034034();
    goto LABEL_13;
  }

  if (a1 < 2 || (a1 - 2) >= 2)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = sub_29E030BC4();
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  sub_29E035A28(v4);
LABEL_12:
  [v2 commit];
LABEL_13:
}

id sub_29E034034()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer);
  [v2 setLineWidth_];
  sub_29DE9408C(0, &qword_2A1817FE0);
  v3 = sub_29E2C4074();
  v4 = [v3 CGColor];

  [v2 setStrokeColor_];
  [v2 setLineDashPattern_];

  return [v1 commit];
}

void sub_29E03443C()
{
  sub_29E035C6C(319, &unk_2A1A62840, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CycleDay();
    if (v1 <= 0x3F)
    {
      sub_29E2BCBB4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29E0345B8(char *a1)
{
  v2 = sub_29E030910();
  [a1 bounds];
  MidX = CGRectGetMidX(v74);
  [v2 center];
  [v2 setCenter_];

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel;
  v5 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___dayOfWeekLabel];
  [v5 frame];
  v7 = sub_29DF41EB4(v6);
  [v5 frame];
  [v5 setFrame_];

  v8 = *&a1[v4];
  [v8 frame];
  CGRectGetWidth(v75);
  sub_29E2C3FE4();

  v9 = &a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration];
  v10 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 112];
  v70 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 96];
  v71 = v10;
  v11 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 144];
  v72 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 128];
  v73 = v11;
  v12 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 48];
  v66 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 32];
  v67 = v12;
  v13 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 80];
  v68 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 64];
  v69 = v13;
  v14 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration + 16];
  v65[0] = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_configuration];
  v65[1] = v14;
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel;
  v16 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_zoomLevel];
  v17 = v16 * *(&v73 + 1);
  sub_29DF8944C(v65, v64);
  v18 = sub_29E1A9BDC(v16);
  sub_29DF8950C(v65);
  v19 = *&v66 + v16 * *&v68;
  v20 = *(&v66 + 1) + v16 * *(&v68 + 1);
  v21 = sub_29E030BC4();
  [a1 convertRect:v21 toCoordinateSpace:{v17, v18, v19, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___pill;
  [*(*&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___pill] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer) setFrame_];
  v31 = *&a1[v30];
  [a1 bounds];
  [v31 setFrame_];

  [*&a1[v30] setNeedsLayout];
  [*&a1[v30] layoutIfNeeded];
  v32 = sub_29E030BE4();
  [a1 bounds];
  [v32 setFrame_];

  v33 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator;
  v34 = *(*&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___bleedingIndicator] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
  [a1 bounds];
  v35 = CGRectGetMidX(v76);
  v36 = *(v9 + 7);
  v64[6] = *(v9 + 6);
  v64[7] = v36;
  v37 = *(v9 + 9);
  v64[8] = *(v9 + 8);
  v64[9] = v37;
  v38 = *(v9 + 3);
  v64[2] = *(v9 + 2);
  v64[3] = v38;
  v39 = *(v9 + 5);
  v64[4] = *(v9 + 4);
  v64[5] = v39;
  v40 = *(v9 + 1);
  v64[0] = *v9;
  v64[1] = v40;
  v41 = *&a1[v15];
  sub_29DF8944C(v64, v56);
  v42 = sub_29E1A9820(v41);
  sub_29DF8950C(v64);
  [v34 setPosition_];

  v43 = *(*&a1[v33] + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer);
  [v43 bounds];
  [v43 setBounds_];

  [*&a1[v33] setNeedsLayout];
  [*&a1[v33] layoutIfNeeded];
  v44 = sub_29E030B50();
  [a1 bounds];
  v45 = CGRectGetMidX(v77);
  v46 = *(v9 + 7);
  v60 = *(v9 + 6);
  v61 = v46;
  v47 = *(v9 + 9);
  v62 = *(v9 + 8);
  v63 = v47;
  v48 = *(v9 + 3);
  v56[2] = *(v9 + 2);
  v57 = v48;
  v49 = *(v9 + 5);
  v58 = *(v9 + 4);
  v59 = v49;
  v50 = *(v9 + 1);
  v56[0] = *v9;
  v56[1] = v50;
  v51 = *&a1[v15];
  sub_29DF8944C(v56, &v55);
  v52 = sub_29E1A99C4();
  sub_29DF8950C(v56);
  [v44 setPosition_];

  v53 = *(v9 + 11) / *(v9 + 7) * *&a1[v15] + 1.0;
  v54 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell____lazy_storage___logIndicator];
  CATransform3DMakeScale(&v55, v53, v53, 1.0);
  [v54 setTransform_];
}

uint64_t sub_29E034A60(void *a1, int a2)
{
  v3 = v2;
  sub_29E035C6C(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v36[-v7];
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C04B4();
  v13 = a1;
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136446466;
    v19 = v13;
    v20 = [v19 description];
    v39 = v3;
    v21 = v20;
    v22 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v38 = v9;
    v23 = v22;
    v40 = v8;
    v25 = v24;

    v26 = sub_29DFAA104(v23, v25, &v41);

    *(v17 + 4) = v26;
    *(v17 + 12) = 2082;
    if (v37)
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v37)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = sub_29DFAA104(v27, v28, &v41);
    v3 = v39;

    *(v17 + 14) = v29;
    v8 = v40;
    _os_log_impl(&dword_29DE74000, v14, v15, "Animation: %{public}s finished %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v18, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);

    (*(v10 + 8))(v12, v38);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v30 = sub_29E2C3734();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_29E2C3714();
  v31 = v3;
  v32 = sub_29E2C3704();
  v33 = swift_allocObject();
  v34 = MEMORY[0x29EDCA390];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v31;
  sub_29E13C63C(0, 0, v8, &unk_29E2D9890, v33);
}

uint64_t sub_29E034DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for CycleDay();
  v4[6] = swift_task_alloc();
  sub_29E2C3714();
  v4[7] = sub_29E2C3704();
  v6 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E034EB4, v6, v5);
}

uint64_t sub_29E034EB4()
{
  v1 = v0[6];
  v2 = v0[5];

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15TimelineDayCell_cycleDay;
  swift_beginAccess();
  sub_29E00C08C(v2 + v3, v1);
  sub_29E031724(v1);
  sub_29E029468(v1);

  v4 = v0[1];

  return v4();
}

id sub_29E035060(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29E0350D0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

char *sub_29E035220(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayerColor] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x29EDBBAA8]) init];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayer] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x29EDBBAA8]) init];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer] = v10;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for SimpleShapeFakeMaskingView();
  v11 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayer;
  v13 = *&v11[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayer];
  v14 = v11;
  v15 = v13;
  [v14 bounds];
  [v15 setFrame_];

  [*&v11[v12] setAllowsEdgeAntialiasing_];
  v16 = [v14 layer];
  [v16 setBackgroundColor_];

  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer;
  [*&v14[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer] frame];
  [*&v14[v17] setCornerRadius_];
  v18 = *&v14[v17];
  [v14 bounds];
  [v18 setFrame_];

  [*&v14[v17] setMasksToBounds_];
  [*&v14[v17] setAllowsEdgeAntialiasing_];
  [*&v14[v17] addSublayer_];
  v19 = [v14 layer];

  [v19 addSublayer_];
  return v14;
}

void sub_29E0354D8()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SimpleShapeFakeMaskingView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer];
  [v2 frame];
  [v2 setCornerRadius_];

  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_backgroundLayer];
  v4 = [v0 layer];
  [v0 bounds];
  [v4 convertRect:*&v0[v1] toLayer:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

id sub_29E03565C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_29E03571C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer] = v10;
  v11 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_lastFrame];
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer;
  v14 = *&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer];
  v15 = v12;
  [v14 setBackgroundColor_];
  [*&v12[v13] setFillColor_];
  v16 = [v15 layer];
  [v16 addSublayer_];

  return v15;
}

void sub_29E035868()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_lastFrame];
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_lastFrame];
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_lastFrame + 8];
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_lastFrame + 16];
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_lastFrame + 24];
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025926SimpleShapeFakeMaskingView_croppingLayer] frame];
  v30.origin.x = v7;
  v30.origin.y = v8;
  v30.size.width = v9;
  v30.size.height = v10;
  v28.origin.x = v2;
  v28.origin.y = v3;
  v28.size.width = v4;
  v28.size.height = v5;
  if (!CGRectEqualToRect(v28, v30))
  {
    [*&v0[v6] frame];
    *v1 = v11;
    *(v1 + 1) = v12;
    *(v1 + 2) = v13;
    *(v1 + 3) = v14;
    [*&v0[v6] frame];
    v16 = sub_29DE99BA8(v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [*&v0[v6] frame];
    v23 = CGRectGetWidth(v29) * 0.5;
    v24 = [objc_opt_self() bezierPathWithRoundedRect:v16 cornerRadius:{v18, v20, v22, v23}];
    v25 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer];
    v26 = [v24 CGPath];
    [v25 setPath_];
  }
}

id sub_29E035A28(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_03708B5B1D68BF6913B83A4BE663025928BorderedShapeFakeMaskingView_dashedBorderLayer);
  sub_29DE9408C(0, &qword_2A1817FE0);
  v2 = sub_29E2C4084();
  v3 = [v2 CGColor];

  [v1 setStrokeColor_];
  [v1 setLineWidth_];
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CD3B0;
  sub_29DE9408C(0, &qword_2A1A5E0B0);
  *(v4 + 32) = sub_29E2C40B4();
  *(v4 + 40) = sub_29E2C40B4();
  v5 = sub_29E2C3604();

  [v1 setLineDashPattern_];

  v6 = *MEMORY[0x29EDBBB18];

  return [v1 setLineCap_];
}

uint64_t sub_29E035BB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DE9657C;

  return sub_29E034DF0(a1, v4, v5, v6);
}

void sub_29E035C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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