void sub_29E20A3DC(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_29E209CA0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t sub_29E20A410()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = [*(v0 + 48) minimum];
    v3 = *(v0 + 64);
    [v2 doubleValueForUnit_];
    v5 = v4;

    v6 = [*(v0 + 48) maximum];
    [v6 doubleValueForUnit_];
    v8 = v7;

    sub_29E0B8424(round(v5 * 100.0) / 100.0, round(v8 * 100.0) / 100.0, 0.01);
    v1 = v9;
    *(v0 + 80) = v9;
  }

  sub_29E2BF404();
  return v1;
}

id *sub_29E20A510()
{
  sub_29DE8EDC0((v0 + 2));

  return v0;
}

uint64_t sub_29E20A568()
{
  sub_29E20A510();

  return swift_deallocClassInstance();
}

uint64_t sub_29E20A5C0()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[4];
  if (v7)
  {
    v8 = v0[8];
    v9 = v7;
    [v9 doubleValueForUnit_];
    v11 = v10;
    v12 = sub_29E20A410();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = round(v11 * 100.0) / 100.0;
      while (*(v12 + 8 * v14 + 32) != v15)
      {
        if (v13 == ++v14)
        {
          goto LABEL_6;
        }
      }

      v30 = v14;

      return v30;
    }

LABEL_6:

    return 0;
  }

  v16 = v4;
  v17 = sub_29E20A410();
  [v1[7] doubleValueForUnit_];
  v19 = *(v17 + 16);
  if (!v19)
  {
LABEL_11:

    sub_29E2C04B4();

    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136446210;
      v32 = *v1;
      v33 = v25;
      sub_29E20A8B4();
      v26 = sub_29E2C3424();
      v28 = sub_29DFAA104(v26, v27, &v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29DE74000, v22, v23, "[%{public}s] Could not retrieve the index of default BBT", v24, 0xCu);
      sub_29DE93B3C(v25);
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v24, -1, -1);
    }

    (*(v3 + 8))(v6, v16);
    return 0;
  }

  v20 = 0;
  v21 = round(v18 * 100.0) / 100.0;
  while (*(v17 + 8 * v20 + 32) != v21)
  {
    if (v19 == ++v20)
    {
      goto LABEL_11;
    }
  }

  v31 = v20;

  return v31;
}

unint64_t sub_29E20A8B4()
{
  result = qword_2A181FBA0;
  if (!qword_2A181FBA0)
  {
    type metadata accessor for BasalBodyTemperatureLoggingCardDataSource();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181FBA0);
  }

  return result;
}

uint64_t sub_29E20A8F8(unint64_t a1)
{
  result = sub_29E20A410();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(result + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = *(result + 8 * a1 + 32);

  v5 = [objc_opt_self() quantityWithUnit:*(v1 + 64) doubleValue:v4];
  v6 = *(v1 + 32);
  *(v1 + 32) = v5;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(v1 + 32);
    v9 = v8 && ![*(v1 + 40) containsQuantity_];
    *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardValidationResult) = v9;
    [*(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setBasalBodyTemperature_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E20AA20()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v0 + 32);
    v5 = v4 && ![*(v0 + 40) containsQuantity_];
    *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardValidationResult) = v5;
    [*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setBasalBodyTemperature_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_29E20AAE4(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  v1[4] = 0;
  v19 = 0;
  sub_29E20B96C();
  swift_allocObject();
  v1[5] = sub_29E2C1114();
  v1[2] = a1;
  v8 = a1;
  sub_29E20B5A4();
  sub_29E20AFB4();
  sub_29E2C04B4();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Initializing", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v5 + 8))(v7, v18);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

id *sub_29E20AD24()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[4])
  {
    [v1[2] stopQuery_];
    v7 = v1[4];
    v1[4] = 0;
  }

  if (v1[3])
  {
    [v1[2] stopQuery_];
    v8 = v1[3];
    v1[3] = 0;
  }

  sub_29E2C04B4();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Deallocated", v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);

  return v1;
}

uint64_t sub_29E20AF5C()
{
  sub_29E20AD24();

  return swift_deallocClassInstance();
}

void sub_29E20AFB4()
{
  v1 = v0;
  v2 = *v0;
  if (v1[3])
  {
    [v1[2] stopQuery_];
    v3 = v1[3];
    v1[3] = 0;
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = objc_allocWithZone(MEMORY[0x29EDC3380]);
  v18 = sub_29E20BE38;
  v19 = v5;
  aBlock = MEMORY[0x29EDCA5F8];
  v15 = 1107296256;
  v16 = sub_29E20BC7C;
  v17 = &unk_2A24BF7C0;
  v7 = _Block_copy(&aBlock);

  v8 = [v6 initWithUpdateHandler_];
  _Block_release(v7);

  aBlock = 0;
  v15 = 0xE000000000000000;
  v9 = v8;
  v10 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v10);

  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  sub_29E2C4664();
  v11 = sub_29E2C33A4();

  [v9 setDebugIdentifier_];

  v12 = v1[3];
  v1[3] = v9;
  v13 = v9;

  [v1[2] executeQuery_];
}

uint64_t sub_29E20B1F0(uint64_t a1, void *a2)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v32 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (a2)
    {
      sub_29E2C04B4();

      v12 = a2;
      v13 = sub_29E2C0504();
      v14 = sub_29E2C3A14();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136446466;
        v33 = *v11;
        v34 = v16;
        sub_29E20BE40();
        v17 = sub_29E2C3424();
        v19 = sub_29DFAA104(v17, v18, &v34);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v33 = a2;
        v20 = a2;
        sub_29DF57668();
        v21 = sub_29E2C3424();
        v23 = sub_29DFAA104(v21, v22, &v34);

        *(v15 + 14) = v23;
        _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Day summary observer query failed with error: %{public}s", v15, 0x16u);
        v24 = v32;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v24, -1, -1);
        MEMORY[0x29ED82140](v15, -1, -1);
      }

      else
      {
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      sub_29E2C04B4();
      v25 = sub_29E2C0504();
      v26 = sub_29E2C3A34();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34 = v28;
        *v27 = 136446210;
        v29 = sub_29E2C4AE4();
        v31 = sub_29DFAA104(v29, v30, &v34);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_29DE74000, v25, v26, "[%{public}s] Day summary observer query did update", v27, 0xCu);
        sub_29DE93B3C(v28);
        MEMORY[0x29ED82140](v28, -1, -1);
        MEMORY[0x29ED82140](v27, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
      sub_29E20B5A4();
    }
  }

  return result;
}

void sub_29E20B5A4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  v9 = os_log_type_enabled(v7, v8);
  v28[0] = v2;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136446210;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Fetching latest day summary", v10, 0xCu);
    sub_29DE93B3C(v11);
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (v1[4])
  {
    [v1[2] stopQuery_];
    v15 = v1[4];
    v1[4] = 0;
  }

  v16 = *MEMORY[0x29EDBA518];
  v17 = *(MEMORY[0x29EDBA518] + 8);
  v18 = swift_allocObject();
  v19 = v28[0];
  *(v18 + 16) = v1;
  *(v18 + 24) = v19;
  v20 = objc_allocWithZone(MEMORY[0x29EDC3388]);
  v33 = sub_29E20BDCC;
  v34 = v18;
  aBlock = MEMORY[0x29EDCA5F8];
  v30 = 1107296256;
  v31 = sub_29E20BD08;
  v32 = &unk_2A24BF748;
  v21 = _Block_copy(&aBlock);

  v22 = [v20 initWithDayIndexRange:v16 ascending:v17 limit:0 resultsHandler:{1, v21}];
  _Block_release(v21);

  aBlock = 0;
  v30 = 0xE000000000000000;
  v23 = v22;
  v24 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v24);

  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  v28[1] = v1;
  sub_29E2C4664();
  v25 = sub_29E2C33A4();

  [v23 setDebugIdentifier_];

  v26 = v1[4];
  v1[4] = v23;
  v27 = v23;

  [v1[2] executeQuery_];
}

uint64_t sub_29E20B944(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_29E20B96C()
{
  if (!qword_2A1A5E5B8)
  {
    v0 = sub_29E2C1104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E5B8);
    }
  }
}

void sub_29E20B9CC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_29E2C04B4();
    v13 = a4;
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A14();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v16 = 136446466;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, &v28);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v27 = a4;
      v20 = a4;
      sub_29DF57668();
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, &v28);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Day summary query failed with error: %s", v16, 0x16u);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v24, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v28 = 0;
    goto LABEL_13;
  }

  if (a2 >> 62)
  {
    if (sub_29E2C4484())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    v28 = 1;
LABEL_13:
    sub_29E2C10F4();
    return;
  }

LABEL_4:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x29ED80D70](0, a2, v8);
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a2 + 32);
LABEL_7:
    v28 = v11;
    v12 = v11;
    sub_29E2C10F4();

    return;
  }

  __break(1u);
}

void sub_29E20BC7C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_29E20BD08(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_29E20BDEC();
    v7 = sub_29E2C3614();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_29E20BDD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E20BDEC()
{
  result = qword_2A1A61D68;
  if (!qword_2A1A61D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61D68);
  }

  return result;
}

unint64_t sub_29E20BE40()
{
  result = qword_2A181FBA8;
  if (!qword_2A181FBA8)
  {
    type metadata accessor for DaySummaryChangeDetector();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181FBA8);
  }

  return result;
}

char *sub_29E20BE8C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___dateIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___dateIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___dateIndicator);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_dataProvider + 8);
    ObjectType = swift_getObjectType();
    v6 = v0;
    v7 = (*(v4 + 72))(ObjectType, v4);
    v8 = objc_allocWithZone(type metadata accessor for InteractiveTimelineDateIndicator());
    v9 = sub_29E230138(v7);
    v10 = *(v0 + v1);
    *(v6 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_29E20BF44()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow);
  }

  else
  {
    sub_29E20EF74();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E20BFA4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline];
LABEL_39:
    v46 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [v0 traitCollection];
    v15 = [v14 horizontalSizeClass];

    v16 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_supplementaryDisplayTypes];
    v17 = v0;
    v18 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_dataProvider + 8];
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 72);
    sub_29E2BF404();
    v21 = v20(ObjectType, v18);
    v66.origin.x = v7;
    v66.origin.y = v9;
    v66.size.width = v11;
    v66.size.height = v13;
    Width = CGRectGetWidth(v66);
    if (v15 == 2)
    {
      v49 = xmmword_29E2E6590;
      v48 = xmmword_29E2E65A0;
      v47 = 11.0;
      v23 = 7.0;
      v24 = 15.0;
      v25 = 12.0;
      v26 = 16.0;
      v27 = 24.0;
      v28 = 1;
      v29 = 5.0;
      v30 = 99.0;
      v31 = 63.36;
    }

    else
    {
      v28 = 0;
      if (Width <= 320.0)
      {
        v49 = xmmword_29E2E65B0;
        v48 = xmmword_29E2E65C0;
        v30 = 62.0;
        v31 = 40.0;
        v47 = 7.0;
        v23 = 6.0;
        v24 = 12.0;
        v25 = 10.0;
        v26 = 13.0;
        v27 = 17.0;
        v29 = 3.0;
      }

      else
      {
        _NF = Width < 414.0;
        if (Width >= 414.0)
        {
          v29 = 5.0;
        }

        else
        {
          v29 = 4.0;
        }

        if (Width >= 414.0)
        {
          v27 = 19.0;
        }

        else
        {
          v27 = 14.0;
        }

        v33 = 10.0;
        if (_NF)
        {
          v26 = 10.0;
        }

        else
        {
          v26 = 14.0;
        }

        if (_NF)
        {
          v31 = 44.0;
        }

        else
        {
          v31 = 48.0;
        }

        if (_NF)
        {
          v30 = 68.0;
        }

        else
        {
          v30 = 75.0;
        }

        if (_NF)
        {
          v34 = 32.0;
        }

        else
        {
          v34 = 34.0;
        }

        if (_NF)
        {
          v25 = 11.0;
        }

        else
        {
          v25 = 12.0;
        }

        if (_NF)
        {
          v24 = 14.0;
        }

        else
        {
          v24 = 15.0;
        }

        v35 = 9.0;
        if (_NF)
        {
          v23 = 6.0;
        }

        else
        {
          v35 = 10.0;
          v23 = 7.0;
        }

        if (!_NF)
        {
          v33 = 11.0;
        }

        v47 = v33;
        __asm { FMOV            V0.2D, #10.0 }

        *&_Q0 = v34;
        v48 = _Q0;
        __asm { FMOV            V0.2D, #3.0 }

        *&_Q0 = v35;
        v49 = _Q0;
      }
    }

    v41 = *MEMORY[0x29EDC8060];
    v50[0] = v28;
    v51 = v29;
    v52 = v27;
    v53 = v26;
    v54 = v31;
    v55 = v30;
    v56 = v48;
    v57 = v25;
    v58 = v24;
    v59 = v49;
    v60 = v23;
    v61 = v47;
    v62 = xmmword_29E2E65D0;
    v63 = v41;
    __asm { FMOV            V0.2D, #1.0 }

    v64 = _Q0;
    v65 = 0x3FF0000000000000;
    v43 = objc_allocWithZone(type metadata accessor for CycleTimelineCollectionViewController());
    v44 = sub_29DF8144C(v50, v16, v21);
    v45 = *&v17[v1];
    *&v17[v1] = v44;
    v3 = v44;

    v2 = 0;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

id sub_29E20C30C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___legend;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___legend);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___legend);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for InteractiveTimelineLegendLabel()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29E20C3B4()
{
  v1 = v0;
  sub_29E079B28(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v212 = &v207 - v3;
  v4 = type metadata accessor for CycleDay();
  v210 = *(v4 - 8);
  v211 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v209 = &v207 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InteractiveTimelineViewController();
  v221.receiver = v0;
  v221.super_class = v6;
  objc_msgSendSuper2(&v221, sel_viewDidLoad);
  v7 = sub_29E20BFA4();
  [v1 addChildViewController_];

  v8 = sub_29E20BE8C();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v217 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline;
  v9 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline] view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_37;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = sub_29E20C30C();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v12 = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  HKUIOnePixel();
  [v12 setSeparatorThickness_];
  v13 = objc_opt_self();
  v14 = [v13 separatorColor];
  [v12 setColor_];

  v215 = v12;
  [v215 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  HKUIOnePixel();
  [v15 setSeparatorThickness_];
  v16 = [v13 separatorColor];
  [v15 setColor_];

  v17 = v15;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v18;
  v214 = v17;
  v20 = v217;
  v21 = [*&v1[v217] view];
  if (!v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v22 = v21;
  [v19 addSubview_];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = v23;
  [v23 addSubview_];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = v25;
  [v25 addSubview_];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v28 = v27;
  v29 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___dateIndicator;
  [v27 addSubview_];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v31 = v30;
  v32 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___legend;
  [v30 addSubview_];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v34 = v33;
  v35 = sub_29E20BF44();
  [v34 addSubview_];

  v36 = [*&v1[v20] view];
  if (!v36)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v37 = v36;
  v38 = [v36 heightAnchor];

  v39 = [v38 constraintEqualToConstant_];
  v40 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_timelineHeight;
  v41 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_timelineHeight];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_timelineHeight] = v39;

  [v1 updateConstraintConstants];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v43 = v42;
  v44 = [v42 bottomAnchor];

  v45 = [*&v1[v32] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:6.0];

  v47 = [*&v1[v20] view];
  if (!v47)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v47;
  v208 = v40;
  LODWORD(v48) = 1148846080;
  [v47 setContentCompressionResistancePriority:1 forAxis:v48];

  LODWORD(v50) = 1148846080;
  [*&v1[v29] setContentCompressionResistancePriority:1 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [*&v1[v32] setContentCompressionResistancePriority:1 forAxis:v51];
  LODWORD(v52) = 1144750080;
  v207 = v46;
  [v46 setPriority_];
  v53 = [*&v1[v20] view];
  if (!v53)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v55 = v53;
  LODWORD(v54) = 1148846080;
  [v53 setContentHuggingPriority:1 forAxis:v54];

  v56 = *&v1[v29];
  type metadata accessor for UILayoutPriority(0);
  v219 = 1065353216;
  v220 = 1148846080;
  sub_29DFFC4B0(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  v57 = v56;
  sub_29E2C0534();
  LODWORD(v58) = v218;
  [v57 setContentHuggingPriority:1 forAxis:v58];

  v216 = v32;
  v59 = *&v1[v32];
  v219 = 0x40000000;
  v220 = 1148846080;
  v60 = v59;
  sub_29E2C0534();
  LODWORD(v61) = v218;
  [v60 setContentHuggingPriority:1 forAxis:v61];

  sub_29DECE8A4(0, &qword_2A1A619B0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_29E2E65E0;
  v63 = [*&v1[v29] topAnchor];
  v64 = [v1 view];
  if (!v64)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v65 = v64;
  v66 = [v64 topAnchor];

  v67 = [v63 constraintEqualToAnchor_];
  *(v62 + 32) = v67;
  v213 = v29;
  v68 = [*&v1[v29] leadingAnchor];
  v69 = [v1 view];
  if (!v69)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v70 = v69;
  v71 = [v69 leadingAnchor];

  v72 = [v68 constraintEqualToAnchor_];
  *(v62 + 40) = v72;
  v73 = [v1 view];
  if (!v73)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v74 = v73;
  v75 = [v73 trailingAnchor];

  v76 = v213;
  v77 = [*&v1[v213] trailingAnchor];
  v78 = [v75 constraintEqualToAnchor_];

  *(v62 + 48) = v78;
  v79 = [*&v1[v217] view];
  if (!v79)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v80 = v79;
  v81 = [v79 topAnchor];

  v82 = [*&v1[v76] bottomAnchor];
  v83 = [v81 &selRef:v82 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v62 + 56) = v83;
  v84 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow;
  v85 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow] &selRef_hkmc_menstruationColor];
  v86 = [*&v1[v76] bottomAnchor];
  v87 = [v85 &selRef:v86 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v62 + 64) = v87;
  v88 = [*&v1[v84] centerXAnchor];
  v89 = [v1 view];
  if (!v89)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v90 = v89;
  v91 = [v89 centerXAnchor];

  v92 = [v88 &selRef:v91 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 72) = v92;
  v93 = v215;
  v94 = [v215 &selRef_hkmc_menstruationColor];
  v95 = [*&v1[v76] bottomAnchor];
  v96 = [v94 &selRef:v95 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v62 + 80) = v96;
  v97 = [v93 leadingAnchor];
  v98 = [v1 view];
  if (!v98)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v99 = v98;
  v100 = [v98 leadingAnchor];

  v101 = [v97 &selRef:v100 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 88) = v101;
  v102 = [v1 view];
  if (!v102)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v103 = v102;
  v104 = [v102 trailingAnchor];

  v105 = [v93 trailingAnchor];
  v106 = [v104 &selRef:v105 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v62 + 96) = v106;
  v107 = [*&v1[v217] view];
  if (!v107)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v108 = v107;
  v109 = [v107 leadingAnchor];

  v110 = [v1 view];
  if (!v110)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v111 = v110;
  v112 = [v110 leadingAnchor];

  v113 = [v109 &selRef:v112 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 104) = v113;
  v114 = [v1 view];
  if (!v114)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v115 = v114;
  v116 = [v114 trailingAnchor];

  v117 = [*&v1[v217] view];
  if (!v117)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v118 = v117;
  v119 = [v117 trailingAnchor];

  v120 = [v116 &selRef:v119 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 112) = v120;
  v121 = [*&v1[v216] leadingAnchor];
  v122 = [v1 view];
  if (!v122)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v123 = v122;
  v124 = [v122 leadingAnchor];

  v125 = [v121 &selRef:v124 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 120) = v125;
  v126 = [v1 view];
  if (!v126)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v127 = v126;
  v128 = [v126 trailingAnchor];

  v129 = v216;
  v130 = [*&v1[v216] &selRef_bounds + 4];
  v131 = [v128 &selRef:v130 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v62 + 128) = v131;
  v132 = [*&v1[v129] topAnchor];
  v133 = [*&v1[v217] view];
  if (!v133)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v134 = v133;
  v135 = [v133 bottomAnchor];

  v136 = [v132 &selRef:v135 :? setInteractiveTextSelectionDisabled:? + 5];
  v138 = v207;
  v137 = v208;
  *(v62 + 136) = v136;
  *(v62 + 144) = v138;
  v139 = *&v137[v1];
  if (!v139)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v62 + 152) = v139;
  v208 = v138;
  v140 = v139;
  v141 = v214;
  v142 = [v214 bottomAnchor];
  v143 = [v1 view];
  if (!v143)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v144 = v143;
  v145 = [v143 bottomAnchor];

  v146 = [v142 &selRef:v145 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 160) = v146;
  v147 = [v141 leadingAnchor];
  v148 = [v1 view];
  if (!v148)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v149 = v148;
  v150 = [v148 leadingAnchor];

  v151 = [v147 &selRef:v150 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v62 + 168) = v151;
  v152 = [v1 view];
  if (!v152)
  {
LABEL_65:
    __break(1u);
    return;
  }

  v153 = v152;
  v154 = objc_opt_self();
  v155 = [v153 trailingAnchor];

  v156 = [v141 trailingAnchor];
  v157 = [v155 &selRef:v156 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v62 + 176) = v157;
  sub_29DEB8834();
  v158 = sub_29E2C3604();

  [v154 activateConstraints_];

  v159 = v217;
  v160 = *&v1[v217];
  v161 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_dataProvider + 8];
  v162 = &v160[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider];
  *&v160[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_cycleLoggingDataProvider + 8] = v161;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v163 = *(v162 + 1);
    ObjectType = swift_getObjectType();
    v165 = *(v163 + 56);
    v166 = v160;
    swift_unknownObjectRetain();
    v165(v166, &off_2A24B59E8, ObjectType, v163);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v159 = v217;
  }

  v167 = v213;
  v168 = *&v1[v213];
  v169 = swift_getObjectType();
  v170 = v168;
  v171 = v209;
  sub_29E262788(v169, v161);
  v172 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cycleDay;
  swift_beginAccess();
  sub_29E16EB40(v171, v170 + v172);
  swift_endAccess();
  sub_29E231494();

  sub_29E029468(v171);
  v173 = *&v1[v216];
  v174 = v212;
  sub_29E262788(v169, v161);
  (*(v210 + 56))(v174, 0, 1, v211);
  v175 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_cycleDay;
  swift_beginAccess();
  sub_29E20EEE0(v174, v173 + v175);
  swift_endAccess();
  sub_29E078598();

  sub_29E079430(v174);
  (*(v161 + 56))(v1, &off_2A24BF7E8, v169, v161);
  v176 = *&v1[v159];
  sub_29DF82AF8(v1);

  v177 = *&v1[v167];
  sub_29DECE8A4(0, &qword_2A1A62780);
  v178 = swift_allocObject();
  v217 = xmmword_29E2CD7A0;
  *(v178 + 16) = xmmword_29E2CD7A0;
  v179 = qword_2A1A60ED8;
  v180 = v177;
  if (v179 != -1)
  {
    swift_once();
  }

  v181 = xmmword_2A1A67E58;
  v218 = xmmword_2A1A67E58;
  swift_bridgeObjectRetain_n();
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301860);
  v182 = *(&v218 + 1);
  *(v178 + 32) = v218;
  *(v178 + 40) = v182;
  strcpy((v178 + 48), "DateIndicator");
  *(v178 + 62) = -4864;
  v183 = sub_29E2C3604();

  v184 = HKUIJoinStringsForAutomationIdentifier();

  [v180 setAccessibilityIdentifier_];
  v185 = *&v1[v159];
  v186 = swift_allocObject();
  *(v186 + 16) = v217;
  v218 = v181;
  v187 = v185;
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301860);
  v188 = *(&v218 + 1);
  *(v186 + 32) = v218;
  *(v186 + 40) = v188;
  *(v186 + 48) = 0xD000000000000010;
  *(v186 + 56) = 0x800000029E301240;
  v189 = sub_29E2C3604();

  v190 = HKUIJoinStringsForAutomationIdentifier();

  [v187 setAccessibilityIdentifier_];
  v191 = *&v1[v216];
  v192 = swift_allocObject();
  *(v192 + 16) = v217;
  v218 = v181;
  v193 = v191;
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301860);
  v194 = *(&v218 + 1);
  *(v192 + 32) = v218;
  *(v192 + 40) = v194;
  *(v192 + 48) = 0x646E6567654CLL;
  *(v192 + 56) = 0xE600000000000000;
  v195 = sub_29E2C3604();

  v196 = HKUIJoinStringsForAutomationIdentifier();

  [v193 setAccessibilityIdentifier_];
  sub_29E079B28(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v197 = swift_allocObject();
  v217 = xmmword_29E2CAB20;
  *(v197 + 16) = xmmword_29E2CAB20;
  v198 = sub_29E2C08C4();
  v199 = MEMORY[0x29EDC7810];
  *(v197 + 32) = v198;
  *(v197 + 40) = v199;
  MEMORY[0x29ED80420](v197, sel_respondToHorizontalSizeChanges);
  swift_unknownObjectRelease();

  v200 = swift_allocObject();
  *(v200 + 16) = v217;
  v201 = sub_29E2C0B54();
  v202 = MEMORY[0x29EDC7870];
  *(v200 + 32) = v201;
  *(v200 + 40) = v202;
  MEMORY[0x29ED80420](v200, sel_adaptToContentSizeChanges);
  swift_unknownObjectRelease();

  v203 = *&v1[v213];
  v204 = objc_allocWithZone(MEMORY[0x29EDC7D28]);
  v205 = v203;
  v206 = [v204 initWithTarget:v1 action:sel_scrollToCurrentDay];
  [v205 addGestureRecognizer_];
}

uint64_t sub_29E20DA08()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2BCFB4();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v6;
    v17 = v16;
    v37[0] = v16;
    *v15 = 136446210;
    v18 = sub_29E2C4AE4();
    v32 = v5;
    v20 = v9;
    v21 = v1;
    v22 = sub_29DFAA104(v18, v19, v37);
    v5 = v32;

    *(v15 + 4) = v22;
    v1 = v21;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Scrolling to today in response to user tapping date indicator", v15, 0xCu);
    sub_29DE93B3C(v17);
    v23 = v17;
    v6 = v31;
    MEMORY[0x29ED82140](v23, -1, -1);
    MEMORY[0x29ED82140](v15, -1, -1);

    (*(v20 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = sub_29E20BFA4();
  v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_today;
  swift_beginAccess();
  v26 = v35;
  (*(v6 + 16))(v35, &v24[v25], v5);

  v27 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline);
  LOBYTE(v24) = v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state];
  v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state] = 3;
  v28 = v27;
  sub_29DF811E4(v24);
  sub_29DFFC4B0(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
  sub_29E2C4344();
  MEMORY[0x29ED79740](v36 & ~(v36 >> 63), 0);
  sub_29DF8370C(v4, 1, 0, 0);

  (*(v33 + 8))(v4, v34);
  return (*(v6 + 8))(v26, v5);
}

id sub_29E20DEA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTimelineViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E20DF94()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v72 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    *&v75 = v10;
    *v9 = 136446210;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, &v75);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Responding to horizontal size changes", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    v14 = v9;
    v1 = v72;
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = sub_29E20BFA4();
  v16 = type metadata accessor for CycleTimelineCollectionViewController();
  v74.receiver = v15;
  v74.super_class = v16;
  v17 = objc_msgSendSuper2(&v74, sel_collectionViewLayout);

  type metadata accessor for CycleTimelineCollectionViewLayout();
  v18 = swift_dynamicCastClassUnconditional();
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline;
  v20 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline] collectionView];
  if (v20)
  {
    v21 = v20;
    [v20 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v84.origin.x = v23;
    v84.origin.y = v25;
    v84.size.width = v27;
    v84.size.height = v29;
    Width = CGRectGetWidth(v84);
    v31 = [v1 traitCollection];
    v32 = [v31 horizontalSizeClass];

    if (v32 == 2)
    {
      v72 = xmmword_29E2E6590;
      v71 = xmmword_29E2E65A0;
      v70 = 11.0;
      v33 = 7.0;
      v34 = 15.0;
      v35 = 12.0;
      v36 = 16.0;
      v37 = 24.0;
      v38 = 1;
      v39 = 5.0;
      v40 = 99.0;
      v41 = 63.36;
    }

    else
    {
      v38 = 0;
      if (Width <= 320.0)
      {
        v72 = xmmword_29E2E65B0;
        v71 = xmmword_29E2E65C0;
        v40 = 62.0;
        v41 = 40.0;
        v70 = 7.0;
        v33 = 6.0;
        v34 = 12.0;
        v35 = 10.0;
        v36 = 13.0;
        v37 = 17.0;
        v39 = 3.0;
      }

      else
      {
        _NF = Width < 414.0;
        if (Width >= 414.0)
        {
          v39 = 5.0;
        }

        else
        {
          v39 = 4.0;
        }

        if (Width >= 414.0)
        {
          v37 = 19.0;
        }

        else
        {
          v37 = 14.0;
        }

        v43 = 10.0;
        if (Width >= 414.0)
        {
          v36 = 14.0;
        }

        else
        {
          v36 = 10.0;
        }

        if (Width >= 414.0)
        {
          v41 = 48.0;
        }

        else
        {
          v41 = 44.0;
        }

        if (_NF)
        {
          v40 = 68.0;
        }

        else
        {
          v40 = 75.0;
        }

        if (_NF)
        {
          v44 = 32.0;
        }

        else
        {
          v44 = 34.0;
        }

        if (_NF)
        {
          v35 = 11.0;
        }

        else
        {
          v35 = 12.0;
        }

        if (_NF)
        {
          v34 = 14.0;
        }

        else
        {
          v34 = 15.0;
        }

        v45 = 9.0;
        if (_NF)
        {
          v33 = 6.0;
        }

        else
        {
          v45 = 10.0;
          v33 = 7.0;
        }

        if (!_NF)
        {
          v43 = 11.0;
        }

        v70 = v43;
        __asm { FMOV            V0.2D, #10.0 }

        *&_Q0 = v44;
        v71 = _Q0;
        __asm { FMOV            V0.2D, #3.0 }

        *&_Q0 = v45;
        v72 = _Q0;
      }
    }

    v51 = *MEMORY[0x29EDC8060];
    LOBYTE(v75) = v38;
    *(&v75 + 1) = v39;
    *&v76 = v37;
    *(&v76 + 1) = v36;
    *&v77 = v41;
    *(&v77 + 1) = v40;
    v78 = v71;
    *&v79 = v35;
    *(&v79 + 1) = v34;
    v80 = v72;
    *&v81 = v33;
    *(&v81 + 1) = v70;
    v82 = xmmword_29E2E65D0;
    *&v83[0] = v51;
    __asm { FMOV            V0.2D, #1.0 }

    *(v83 + 8) = _Q0;
    *(&v83[1] + 1) = 0x3FF0000000000000;
    sub_29E2B9C04(&v75);
    v53 = (v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
    v54 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 16);
    v73[0] = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
    v73[1] = v54;
    v55 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 80);
    v57 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32);
    v56 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 48);
    v73[4] = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 64);
    v73[5] = v55;
    v73[2] = v57;
    v73[3] = v56;
    v58 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 144);
    v60 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 96);
    v59 = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 112);
    v73[8] = *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 128);
    v73[9] = v58;
    v73[6] = v60;
    v73[7] = v59;
    v61 = v82;
    v53[6] = v81;
    v53[7] = v61;
    v62 = v83[1];
    v53[8] = v83[0];
    v53[9] = v62;
    v63 = v78;
    v53[2] = v77;
    v53[3] = v63;
    v64 = v80;
    v53[4] = v79;
    v53[5] = v64;
    v65 = v76;
    *v53 = v75;
    v53[1] = v65;
    sub_29DF8950C(v73);

    [v1 updateConstraintConstants];
    v66 = *&v1[v19];
    v67 = v66[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state];
    v66[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state] = 0;
    v68 = v66;
    sub_29DF811E4(v67);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E20E56C()
{
  v1 = v0;
  v2 = sub_29E2C48F4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_timelineHeight];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v0 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_29E20BFA4();
  v11 = type metadata accessor for CycleTimelineCollectionViewController();
  v34.receiver = v10;
  v34.super_class = v11;
  v12 = objc_msgSendSuper2(&v34, sel_collectionViewLayout);

  type metadata accessor for CycleTimelineCollectionViewLayout();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 16);
  v35 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
  v36 = v14;
  v15 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 80);
  v17 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32);
  v16 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 48);
  v39 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 64);
  v40 = v15;
  v37 = v17;
  v38 = v16;
  v18 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 144);
  v20 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 96);
  v19 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 112);
  v43 = *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 128);
  v44 = v18;
  v41 = v20;
  v42 = v19;
  sub_29DF8944C(&v35, v33);

  if (v35)
  {
    v21 = MEMORY[0x29EDC80F8];
  }

  else
  {
    if (qword_2A1817030 != -1)
    {
      swift_once();
    }

    v21 = &qword_2A1841238;
  }

  v22 = *v21;
  v23 = *&v42;
  v24 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];

  v25 = *(&v42 + 1);
  v26 = sub_29E1A9AC4();
  [v24 scaledValueForValue:v26 compatibleWithTraitCollection:v25];
  v28 = v27;

  sub_29DF8950C(&v35);
  v29 = v23 + v28 + *&v36 + *(&v37 + 1) + *(&v36 + 1);
  (*(v3 + 104))(v5, *MEMORY[0x29EDC9EC0], v2);
  v30 = sub_29DF41F64(v5, v29);

  (*(v3 + 8))(v5, v2);
  [v7 setConstant_];

  v31 = [v1 view];
  if (v31)
  {
    v32 = v31;
    [v31 setNeedsLayout];

    return;
  }

LABEL_12:
  __break(1u);
}

void sub_29E20E8D4()
{
  [v0 updateConstraintConstants];
  v1 = sub_29E20BFA4();
  v54.receiver = v1;
  v54.super_class = type metadata accessor for CycleTimelineCollectionViewController();
  v2 = objc_msgSendSuper2(&v54, sel_collectionViewLayout);

  type metadata accessor for CycleTimelineCollectionViewLayout();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline] collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v64.origin.x = v7;
    v64.origin.y = v9;
    v64.size.width = v11;
    v64.size.height = v13;
    Width = CGRectGetWidth(v64);
    v15 = [v0 traitCollection];
    v16 = [v15 horizontalSizeClass];

    if (v16 == 2)
    {
      v52 = xmmword_29E2E6590;
      v51 = xmmword_29E2E65A0;
      v50 = 11.0;
      v17 = 7.0;
      v18 = 15.0;
      v19 = 12.0;
      v20 = 16.0;
      v21 = 24.0;
      v22 = 1;
      v23 = 5.0;
      v24 = 99.0;
      v25 = 63.36;
    }

    else
    {
      v22 = 0;
      if (Width <= 320.0)
      {
        v52 = xmmword_29E2E65B0;
        v51 = xmmword_29E2E65C0;
        v24 = 62.0;
        v25 = 40.0;
        v50 = 7.0;
        v17 = 6.0;
        v18 = 12.0;
        v19 = 10.0;
        v20 = 13.0;
        v21 = 17.0;
        v23 = 3.0;
      }

      else
      {
        _NF = Width < 414.0;
        if (Width >= 414.0)
        {
          v23 = 5.0;
        }

        else
        {
          v23 = 4.0;
        }

        if (Width >= 414.0)
        {
          v21 = 19.0;
        }

        else
        {
          v21 = 14.0;
        }

        v27 = 10.0;
        if (Width >= 414.0)
        {
          v20 = 14.0;
        }

        else
        {
          v20 = 10.0;
        }

        if (Width >= 414.0)
        {
          v25 = 48.0;
        }

        else
        {
          v25 = 44.0;
        }

        if (_NF)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 75.0;
        }

        if (_NF)
        {
          v28 = 32.0;
        }

        else
        {
          v28 = 34.0;
        }

        if (_NF)
        {
          v19 = 11.0;
        }

        else
        {
          v19 = 12.0;
        }

        if (_NF)
        {
          v18 = 14.0;
        }

        else
        {
          v18 = 15.0;
        }

        v29 = 9.0;
        if (_NF)
        {
          v17 = 6.0;
        }

        else
        {
          v29 = 10.0;
          v17 = 7.0;
        }

        if (!_NF)
        {
          v27 = 11.0;
        }

        v50 = v27;
        __asm { FMOV            V0.2D, #10.0 }

        *&_Q0 = v28;
        v51 = _Q0;
        __asm { FMOV            V0.2D, #3.0 }

        *&_Q0 = v29;
        v52 = _Q0;
      }
    }

    v35 = *MEMORY[0x29EDC8060];
    LOBYTE(v55) = v22;
    *(&v55 + 1) = v23;
    *&v56 = v21;
    *(&v56 + 1) = v20;
    *&v57 = v25;
    *(&v57 + 1) = v24;
    v58 = v51;
    *&v59 = v19;
    *(&v59 + 1) = v18;
    v60 = v52;
    *&v61 = v17;
    *(&v61 + 1) = v50;
    v62 = xmmword_29E2E65D0;
    *v63 = v35;
    __asm { FMOV            V0.2D, #1.0 }

    *&v63[8] = _Q0;
    *&v63[24] = 0x3FF0000000000000;
    sub_29E2B9C04(&v55);
    v37 = (v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
    v38 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 16);
    v53[0] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config);
    v53[1] = v38;
    v39 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 80);
    v41 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 32);
    v40 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 48);
    v53[4] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 64);
    v53[5] = v39;
    v53[2] = v41;
    v53[3] = v40;
    v42 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 144);
    v44 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 96);
    v43 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 112);
    v53[8] = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout_config + 128);
    v53[9] = v42;
    v53[6] = v44;
    v53[7] = v43;
    v45 = v62;
    v37[6] = v61;
    v37[7] = v45;
    v46 = *&v63[16];
    v37[8] = *v63;
    v37[9] = v46;
    v47 = v58;
    v37[2] = v57;
    v37[3] = v47;
    v48 = v60;
    v37[4] = v59;
    v37[5] = v48;
    v49 = v56;
    *v37 = v55;
    v37[1] = v49;
    sub_29DF8950C(v53);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E20ECB4(uint64_t a1, uint64_t a2)
{
  sub_29E079B28(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for CycleDay();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E20BE8C();
  ObjectType = swift_getObjectType();
  sub_29E262788(ObjectType, a2);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cycleDay;
  swift_beginAccess();
  sub_29E16EB40(v9, &v10[v12]);
  swift_endAccess();
  sub_29E231494();

  sub_29E029468(v9);
  v13 = sub_29E20C30C();
  sub_29E262788(ObjectType, a2);
  (*(v7 + 56))(v5, 0, 1, v6);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_cycleDay;
  swift_beginAccess();
  sub_29E20EEE0(v5, v13 + v14);
  swift_endAccess();
  sub_29E078598();

  return sub_29E079430(v5);
}

uint64_t sub_29E20EEE0(uint64_t a1, uint64_t a2)
{
  sub_29E079B28(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E20EF74()
{
  v0 = objc_opt_self();
  v1 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v2 = [v0 imageNamed:v1 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [objc_opt_self() labelColor];
    [v3 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E20F0A0()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___dateIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___downArrow) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___timeline) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController____lazy_storage___legend) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_timelineHeight) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E20F1B8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C2B84();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEB1E60();
  *v13 = sub_29E2C3CF4();
  (*(v11 + 104))(v13, *MEMORY[0x29EDCA278], v10);
  v14 = sub_29E2C2BA4();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_29DFAA104(0xD00000000000002ALL, 0x800000029E2E66C0, v28);
      _os_log_impl(&dword_29DE74000, v16, v17, "[%s] Notifying data sources of onboarding changes", v18, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    result = (*(v7 + 8))(v9, v6);
    v20 = *(v3 + qword_2A181FBF8);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 32);
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181BF90);
      do
      {
        v27 = *v22;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_29DF3CBE8(v25, v28);
          v23 = v29;
          v24 = v30;
          sub_29DE966D4(v28, v29);
          (*(v24 + 8))(a1, a2 & 1, v23, v24);
          result = sub_29DE93B3C(v28);
        }

        else
        {
          v26 = 0;
          memset(v25, 0, sizeof(v25));
          result = sub_29E00CBB8(v25);
        }

        ++v22;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E20F540(uint64_t a1, char a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEB1E60();
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_29DFAA104(0xD000000000000022, 0x800000029E2E6720, v26);
      _os_log_impl(&dword_29DE74000, v14, v15, "[%s] Notifying data sources of onboarding changes", v16, 0xCu);
      sub_29DE93B3C(v17);
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v18 = sub_29E2BEAE4();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181BF90);
      do
      {
        v25 = *v20;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_29DF3CBE8(v23, v26);
          v21 = v27;
          v22 = v28;
          sub_29DE966D4(v26, v27);
          (*(v22 + 8))(a1, a2 & 1, v21, v22);
          sub_29DE93B3C(v26);
        }

        else
        {
          v24 = 0;
          memset(v23, 0, sizeof(v23));
          sub_29E00CBB8(v23);
        }

        ++v20;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E20F8D0(uint64_t a1, char a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEB1E60();
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2E6760, v26);
      _os_log_impl(&dword_29DE74000, v14, v15, "[%s] Notifying data sources of onboarding changes", v16, 0xCu);
      sub_29DE93B3C(v17);
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v18 = sub_29E2BF0C4();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      sub_29DF942BC(0, &qword_2A181DB40);
      sub_29DF942BC(0, &qword_2A181BF90);
      do
      {
        v25 = *v20;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_29DF3CBE8(v23, v26);
          v21 = v27;
          v22 = v28;
          sub_29DE966D4(v26, v27);
          (*(v22 + 8))(a1, a2 & 1, v21, v22);
          sub_29DE93B3C(v26);
        }

        else
        {
          v24 = 0;
          memset(v23, 0, sizeof(v23));
          sub_29E00CBB8(v23);
        }

        ++v20;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E20FC90()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_29E20FCE0()
{
  sub_29E2BF524();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_29E20FD90(uint64_t a1, uint64_t a2)
{
  v26 = sub_29E2C0514();
  v4 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C2B84();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEB1E60();
  *v10 = sub_29E2C3CF4();
  (*(v8 + 104))(v10, *MEMORY[0x29EDCA278], v7);
  v11 = sub_29E2C2BA4();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = a1;
      v17 = a2;
      v18 = v16;
      v27[0] = v16;
      *v15 = 136315138;
      v19 = sub_29E2C4AE4();
      v21 = sub_29DFAA104(v19, v20, v27);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%s] Notifying data sources of analysis update", v15, 0xCu);
      sub_29DE93B3C(v18);
      v22 = v18;
      a2 = v17;
      a1 = v25;
      MEMORY[0x29ED82140](v22, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    (*(v4 + 8))(v6, v26);
    v27[2] = &unk_2A25093B8;
    v23 = swift_dynamicCastObjCProtocolConditional();
    if (v23)
    {
      [v23 analysisProvider:a1 didUpdateAnalysis:a2];
    }

    v27[1] = &unk_2A25093B8;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return [result analysisProvider:a1 didUpdateAnalysis:a2];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E2100CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  sub_29E20FD90(v5, v6);
}

uint64_t sub_29E210194()
{
  sub_29E2BEB04();

  return swift_deallocClassInstance();
}

uint64_t sub_29E21023C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v30 = a3;
    v31[0] = v14;
    v15 = v14;
    *v13 = 136315138;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, v31);
    v28 = v6;
    v19 = v18;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_29DE74000, v10, v11, "[%s] Notifying data sources of onboarding changes", v13, 0xCu);
    sub_29DE93B3C(v15);
    v20 = v15;
    a3 = v30;
    MEMORY[0x29ED82140](v20, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    v21 = (*(v29 + 8))(v9, v28);
  }

  else
  {

    v21 = (*(v7 + 8))(v9, v6);
  }

  v22 = a3(v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;
    do
    {
      v31[1] = &unk_2A25093B8;
      v25 = swift_dynamicCastObjCProtocolConditional();
      if (v25)
      {
        [v25 analysisProvider:a1 didUpdateAnalysis:a2];
      }

      v24 += 16;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_29E2104D0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v7 = a3;
  v8 = a4;

  sub_29E21023C(v7, v8, a5);
}

void sub_29E210574(void *a1, uint64_t a2)
{
  v3 = v2;
  v126 = a1;
  v113 = sub_29E2BE274();
  v5 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113);
  v112 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for CycleChartPDFModel(0);
  MEMORY[0x2A1C7C4A8](v114);
  v134 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CycleChartPDFHeader();
  MEMORY[0x2A1C7C4A8](v121);
  v120 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CycleChartDaysPDFChunk(0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E21214C(0, &qword_2A181FC48, type metadata accessor for CycleChartDaysPDFChunk, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v123 = &v110 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v137 = &v110 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v136 = &v110 - v21;
  v142 = a2;
  sub_29E2BE0D4();
  Width = CGRectGetWidth(v156);
  v122 = v3;
  v140 = v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_pdfModel;
  v23 = sub_29E0B6240(32);
  if (*(v23 + 2))
  {
    v24 = (Width + -110.0) * 0.03125;
    v135 = *(v23 + 2);
    v116 = objc_opt_self();
    v115 = objc_opt_self();
    v25 = 0;
    v26 = *(v10 + 80);
    v131 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_cycleChartsModel;
    v27 = (v26 + 32) & ~v26;
    v28 = v135;
    v125 = v23;
    v132 = v23 + v27;
    v133 = (v10 + 56);
    v130 = (v10 + 48);
    v111 = (v5 + 8);
    v138 = xmmword_29E2CD7A0;
    v119 = v9;
    v118 = v10;
    v141 = v12;
    v117 = v15;
    v29 = v136;
    while (1)
    {
      if (v25 - 1 >= v28)
      {
        v31 = 1;
        v30 = v123;
      }

      else
      {
        v30 = v123;
        if (v25 > *(v125 + 2))
        {
          goto LABEL_49;
        }

        sub_29E211F00(&v132[*(v10 + 72) * (v25 - 1)], v29, type metadata accessor for CycleChartDaysPDFChunk);
        v31 = 0;
      }

      v32 = *v133;
      (*v133)(v29, v31, 1, v9);
      v33 = *(v125 + 2);
      if (v25 >= v33)
      {
        break;
      }

      v34 = v25 + 1;
      v35 = *(v10 + 72);
      sub_29E211F00(&v132[v35 * v25], v12, type metadata accessor for CycleChartDaysPDFChunk);
      v139 = v25;
      v127 = v25 + 1;
      if (v25 + 1 >= v135)
      {
        v37 = 1;
        v36 = v137;
      }

      else
      {
        if (v34 >= v33)
        {
          goto LABEL_50;
        }

        v36 = v137;
        sub_29E211F00(&v132[v35 * v34], v137, type metadata accessor for CycleChartDaysPDFChunk);
        v37 = 0;
      }

      v32(v36, v37, 1, v9);
      v38 = v12[4];
      v39 = *(v38 + 16);
      sub_29E211F00(v140, v134, type metadata accessor for CycleChartPDFModel);
      sub_29E211F68(v136, v30);
      v40 = *v130;
      v41 = (*v130)(v30, 1, v9);
      if (v41 == 1)
      {
        sub_29E211FFC(v30);
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v42 = *(v30 + 16);
        v43 = *(v30 + 24);
        sub_29E2120EC(v30, type metadata accessor for CycleChartDaysPDFChunk);
      }

      sub_29E211F68(v137, v15);
      v44 = v40(v15, 1, v9);
      if (v44 == 1)
      {
        sub_29E211FFC(v15);
        v45 = 0;
        v46 = 0;
      }

      else
      {
        v45 = *(v15 + 2);
        v46 = *(v15 + 3);
        sub_29E2120EC(v15, type metadata accessor for CycleChartDaysPDFChunk);
      }

      v47 = v24 * v39 + 110.0;
      v48 = v120;
      sub_29E212088(v134, v120);
      v49 = v121;
      v50 = v48 + *(v121 + 20);
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v41 == 1;
      v51 = v48 + *(v49 + 24);
      *v51 = v45;
      *(v51 + 8) = v46;
      *(v51 + 16) = v44 == 1;
      sub_29E064C3C(&v152);
      sub_29DE966D4(&v152, v153);
      v52 = v126;
      sub_29E2BE334();
      sub_29E2120EC(v48, type metadata accessor for CycleChartPDFHeader);
      sub_29DE93B3C(&v152);
      sub_29E2BE0D4();
      MinY = CGRectGetMinY(v157);
      sub_29E2BE0D4();
      v159.origin.x = CGRectGetMinX(v158);
      v159.origin.y = 0.0;
      v159.size.height = 14.0;
      v159.size.width = v47;
      Height = CGRectGetHeight(v159);
      v55 = sub_29E292D04();
      sub_29E2BE0D4();
      MinX = CGRectGetMinX(v160);
      v129 = MinY;
      v128 = Height;
      v57 = MinY + Height;
      v58 = [v52 CGContext];
      CGContextSaveGState(v58);
      sub_29E2C38E4();
      CGContextSetLineCap(v58, kCGLineCapRound);
      v59 = [v116 systemGrayColor];
      v60 = [v115 traitCollectionWithUserInterfaceStyle_];
      v61 = [v59 resolvedColorWithTraitCollection_];

      v62 = [v61 CGColor];
      CGContextSetStrokeColorWithColor(v58, v62);

      CGContextSetLineWidth(v58, 0.5);
      v63 = *(v38 + 16);
      if (v63)
      {
        v64 = 0;
        v65 = MinX + 110.0;
        do
        {
          v66 = v64 + 1;
          v161.origin.x = v65;
          v161.origin.y = v57;
          v161.size.width = v47;
          v161.size.height = v55;
          v67 = CGRectGetMinX(v161) + v24 * v64;
          v162.origin.x = v65;
          v162.origin.y = v57;
          v162.size.width = v47;
          v162.size.height = v55;
          MaxY = CGRectGetMaxY(v162);
          if (7 * (v64 / 7) == v64)
          {
            v69 = MaxY + 14.0;
          }

          else
          {
            v69 = MaxY;
          }

          sub_29E21214C(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
          v70 = swift_allocObject();
          *(v70 + 16) = v138;
          v163.origin.x = v65;
          v163.origin.y = v57;
          v163.size.width = v47;
          v163.size.height = v55;
          v71 = CGRectGetMinY(v163);
          *(v70 + 32) = v67;
          *(v70 + 40) = v71;
          *(v70 + 48) = v67;
          *(v70 + 56) = v69;
          sub_29E2C38F4();

          v64 = v66;
        }

        while (v63 != v66);
      }

      CGContextRestoreGState(v58);

      sub_29E2BE0D4();
      v72 = CGRectGetMinX(v164);
      v12 = v141;
      sub_29E211874(v141, v52, v72 + 110.0, v57, v47, v55, v24);
      v73 = sub_29E292EC8();
      v74 = *(v73 + 16);
      if (v74)
      {
        v151 = MEMORY[0x29EDCA190];
        sub_29E1815F4(0, v74, 0);
        v75 = v151;
        v124 = v73;
        v76 = v73 + 32;
        do
        {
          v144 = v74;
          sub_29DE9DC34(v76, &v148);
          v77 = v149;
          v78 = v150;
          sub_29DE966D4(&v148, v149);
          v146 = v77;
          v147 = v78;
          v79 = sub_29DEBB7E8(&v145);
          sub_29E0AE080(v77, v78, v79, v24);
          v80 = v146;
          v81 = v147;
          v82 = sub_29DE966D4(&v145, v146);
          v153 = v80;
          v143 = *(v81 + 16);
          v154 = v143;
          v83 = sub_29DEBB7E8(&v152);
          v84 = *(*(v80 - 8) + 16);
          (v84)(v83, v82, v80);
          sub_29DE93B3C(&v145);
          v85 = sub_29DE93B3C(&v148);
          v151 = v75;
          v87 = *(v75 + 16);
          v86 = *(v75 + 24);
          if (v87 >= v86 >> 1)
          {
            v85 = sub_29E1815F4((v86 > 1), v87 + 1, 1);
          }

          v88 = MEMORY[0x2A1C7C4A8](v85);
          v90 = &v110 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
          v84(v90, v83, v80, v88);
          sub_29DEF3F6C(v87, v90, &v151, v80, v143);
          sub_29DE93B3C(&v152);
          v75 = v151;
          v76 += 40;
          v74 = v144 - 1;
        }

        while (v144 != 1);

        v52 = v126;
        v12 = v141;
      }

      else
      {

        v75 = MEMORY[0x29EDCA190];
      }

      v91 = v129;
      v92 = *(v75 + 16);
      if (v92)
      {
        v144 = v75;
        v93 = v75 + 32;
        v94 = v129;
        do
        {
          sub_29DE9DC34(v93, &v152);
          sub_29E2BE0D4();
          v100 = CGRectGetMinX(v166);
          v101 = v153;
          v102 = v154;
          sub_29DE966D4(&v152, v153);
          v103 = (*(v102 + 24))(v101, v102);
          if (v104)
          {
            v95 = dbl_29E2E6928[v103];
          }

          else
          {
            v95 = *&v103;
          }

          v96 = v154;
          sub_29DE966D4(&v152, v153);
          v97 = [v52 CGContext];
          (*(v96 + 8))(v100, v94, v47, v95);

          v98 = v154;
          sub_29DE966D4(&v152, v153);
          v99 = [v52 CGContext];
          (*(v98 + 16))(v100, v94, v47, v95);

          v165.origin.x = v100;
          v165.origin.y = v94;
          v165.size.width = v47;
          v165.size.height = v95;
          v94 = v94 + CGRectGetHeight(v165);
          sub_29DE93B3C(&v152);
          v93 += 40;
          --v92;
        }

        while (v92);

        v12 = v141;
      }

      else
      {
      }

      sub_29E2BE0D4();
      v105 = CGRectGetMinX(v167);
      sub_29E211D44(v52, v105, v91, v47, v128 + v55);
      v106 = v12[1];
      v107 = __OFSUB__(v106, 1);
      v108 = v106 - 1;
      v9 = v119;
      v10 = v118;
      v15 = v117;
      if (v107)
      {
        goto LABEL_48;
      }

      if (*v12 != v108)
      {
        v109 = v112;
        sub_29E2BE264();
        sub_29E2BE254();
        (*v111)(v109, v113);
      }

      sub_29E211FFC(v137);
      v29 = v136;
      sub_29E211FFC(v136);
      sub_29E2120EC(v12, type metadata accessor for CycleChartDaysPDFChunk);
      v25 = v127;
      v28 = v135;
      if (v127 == v135)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {

LABEL_46:
  }
}

void sub_29E211528(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for CycleDay() + 20));
  swift_getAtKeyPath();

  *a2 = v4;
}

uint64_t sub_29E211598()
{
  sub_29E2120EC(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_pdfModel, type metadata accessor for CycleChartPDFModel);
  sub_29E2120EC(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PDFCycleChartView_cycleChartsModel, type metadata accessor for CycleChartsModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFCycleChartView()
{
  result = qword_2A181FC30;
  if (!qword_2A181FC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E211688()
{
  result = type metadata accessor for CycleChartPDFModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CycleChartsModel();
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

uint64_t sub_29E211778(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E212270(&qword_2A18185B8);
  *v3 = v1;
  v3[1] = sub_29DE9F99C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

void sub_29E211874(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = type metadata accessor for CycleChartDay();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 32);
  v42[2] = swift_getKeyPath();
  swift_getKeyPath();
  v19 = *(v18 + 16);
  if (v19)
  {
    v43 = MEMORY[0x29EDCA190];
    sub_29E1815B8(0, v19, 0);
    v20 = v43;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v22 = *(v15 + 72);
    do
    {
      sub_29E211F00(v21, v17, type metadata accessor for CycleChartDay);
      swift_getAtKeyPath();
      sub_29E2120EC(v17, type metadata accessor for CycleChartDay);
      v23 = v42[4];
      v43 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_29E1815B8((v24 > 1), v25 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v25 + 1;
      *(v20 + 8 * v25 + 32) = v23;
      v21 += v22;
      --v19;
    }

    while (v19);

    v26 = *(v20 + 16);
    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v20 = MEMORY[0x29EDCA190];
    v26 = *(MEMORY[0x29EDCA190] + 16);
    if (!v26)
    {
LABEL_22:

      return;
    }
  }

  v27 = 0;
  v42[1] = "FOOTER_FERTILE_WINDOW";
  while (v27 < *(v20 + 16))
  {
    v36 = *(v20 + 32 + 8 * v27);
    v45.origin.x = a3;
    v45.origin.y = a4;
    v45.size.width = a5;
    v45.size.height = a6;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    MinY = CGRectGetMinY(v46);
    v47.origin.x = a3;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    Height = CGRectGetHeight(v47);
    if ((v36 - 1) < 2)
    {
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v28 = qword_2A1A67F80;
      v29 = sub_29E2C33A4();
      v30 = [objc_opt_self() colorNamed:v29 inBundle:v28 compatibleWithTraitCollection:0];

      if (!v30)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v36 != 3)
      {
        goto LABEL_14;
      }

      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v40 = qword_2A1A67F80;
      v41 = sub_29E2C33A4();
      v30 = [objc_opt_self() colorNamed:v41 inBundle:v40 compatibleWithTraitCollection:0];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [a2 CGContext];
    CGContextSaveGState(v31);

    v32 = [a2 CGContext];
    v33 = [v30 CGColor];
    CGContextSetFillColorWithColor(v32, v33);

    v34 = [a2 CGContext];
    v44.origin.x = v27 * a7 + MinX;
    v44.origin.y = MinY;
    v44.size.width = a7;
    v44.size.height = Height;
    CGContextFillRect(v34, v44);

    v35 = [a2 CGContext];
    CGContextRestoreGState(v35);

LABEL_14:
    if (v26 == ++v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_29E211D44(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  CGContextSaveGState(v10);

  v11 = [a1 CGContext];
  v12 = [objc_opt_self() systemGrayColor];
  v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v14 = [v12 resolvedColorWithTraitCollection_];

  v15 = [v14 CGColor];
  CGContextSetStrokeColorWithColor(v11, v15);

  v16 = [a1 CGContext];
  CGContextSetLineWidth(v16, 0.5);

  v17 = [a1 CGContext];
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGContextStrokeRect(v17, v20);

  v18 = [a1 CGContext];
  CGContextRestoreGState(v18);
}

uint64_t sub_29E211F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E211F68(uint64_t a1, uint64_t a2)
{
  sub_29E21214C(0, &qword_2A181FC48, type metadata accessor for CycleChartDaysPDFChunk, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E211FFC(uint64_t a1)
{
  sub_29E21214C(0, &qword_2A181FC48, type metadata accessor for CycleChartDaysPDFChunk, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E212088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartPDFModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E2120EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E21214C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E2121BC()
{
  if (!qword_2A181FC50)
  {
    sub_29E212224();
    type metadata accessor for HKMCDayViewModelFertileWindowLevel(255);
    v0 = sub_29E2C4AB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FC50);
    }
  }
}

unint64_t sub_29E212224()
{
  result = qword_2A1A5E1D8;
  if (!qword_2A1A5E1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A5E1D8);
  }

  return result;
}

uint64_t sub_29E212270(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PDFCycleChartView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PDFCoverPageBodyProvider()
{
  result = qword_2A181FC58;
  if (!qword_2A181FC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E21232C()
{
  result = sub_29DE9408C(319, &qword_2A181FC68);
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCEA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E2123CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v128 = a2;
  v107 = sub_29E2BCA04();
  v143 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107);
  v106 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29E2BCA54();
  v142 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v104 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v103 = &v93 - v10;
  v136 = type metadata accessor for PDFCoverPageModel.CycleSection();
  v133 = *(v136 - 8);
  MEMORY[0x2A1C7C4A8](v136);
  v135 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v108 = &v93 - v13;
  v127 = sub_29E2BCEA4();
  v14 = *(v127 - 8);
  MEMORY[0x2A1C7C4A8](v127);
  v126 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for CycleHistorySingleCycleModel(0);
  MEMORY[0x2A1C7C4A8](v125);
  v124 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_29E2BC5F4();
  v17 = *(v137 - 8);
  MEMORY[0x2A1C7C4A8](v137);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29E2C31A4();
  v20 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v97 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2177F0(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v132 = &v93 - v23;
  v24 = sub_29E2BCBB4();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v131 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v93 - v28;
  sub_29E2BCB54();
  v129 = a3;
  v130 = a1;
  v30 = sub_29E2AECBC(a1, a3, v29, a4);
  v31 = v25[1];
  v123 = v29;
  v122 = v25 + 1;
  v121 = v31;
  v31(v29, v24);
  if (v30 >> 62)
  {
    goto LABEL_32;
  }

  for (result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_29E2C4484())
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v33 = 0;
    v118 = v30 & 0xC000000000000001;
    v96 = (v20 + 8);
    v112 = (v25 + 7);
    v95 = (v25 + 4);
    v94 = (v25 + 6);
    v117 = *MEMORY[0x29EDB9CC0];
    v116 = *MEMORY[0x29EDB9CD0];
    v115 = (v25 + 2);
    v114 = (v14 + 16);
    v111 = (v17 + 8);
    v102 = (v143 + 1);
    v101 = (v142 + 8);
    v100 = (v17 + 16);
    v25 = MEMORY[0x29EDCA190];
    v113 = xmmword_29E2CD7A0;
    v99 = xmmword_29E2CAB20;
    v34 = v130;
    v35 = v131;
    v120 = v19;
    v119 = v24;
    v110 = v30;
    v109 = result;
    while (1)
    {
      v142 = v33;
      if (v118)
      {
        v36 = MEMORY[0x29ED80D70](v33, v30);
      }

      else
      {
        v36 = *(v30 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = [v36 lastDayIndex];
      v143 = v25;
      if (v38)
      {
        v39 = v38;
        [v38 integerValue];
        v40 = v97;
        sub_29E2C30D4();

        v41 = v132;
        sub_29E2C3194();
        (*v96)(v40, v98);
        (*v112)(v41, 0, 1, v24);
        (*v95)(v35, v41, v24);
        v42 = v34;
        v43 = v24;
      }

      else
      {
        v44 = v132;
        (*v112)(v132, 1, 1, v24);
        sub_29E2BCB54();
        v42 = v34;
        v43 = v24;
        if ((*v94)(v44, 1, v24) != 1)
        {
          sub_29DE93920(v132);
        }
      }

      sub_29E2177F0(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
      v45 = sub_29E2BCE84();
      v46 = *(v45 - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v113;
      v50 = v49 + v48;
      v51 = *(v46 + 104);
      v51(v50, v117, v45);
      v51(v50 + v47, v116, v45);
      sub_29DE924A4(v49);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v52 = v120;
      sub_29E2BCD14();

      (*v115)(v123, v128, v43);
      v53 = *v114;
      v54 = v127;
      (*v114)(v126, v42, v127);
      v55 = v125;
      v56 = v124;
      sub_29E2C3144();
      v53(&v56[*(v55 + 24)], v42, v54);
      *v56 = v37;
      v57 = v37;
      v141 = sub_29DFD0878();
      v17 = v58;
      v139 = sub_29DFD0448();
      v140 = v59;
      v20 = sub_29DFD344C();
      v138 = v60;
      v61 = sub_29E217854(v56, type metadata accessor for CycleHistorySingleCycleModel);
      v25 = v143;
      v62 = v143[2];
      if (!v62)
      {
        goto LABEL_26;
      }

      v30 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v63 = *(v133 + 72);
      v64 = v108;
      sub_29E2178B4(v143 + v30 + v63 * (v62 - 1), v108);
      v19 = v52;
      if ((MEMORY[0x29ED78D00](v64 + *(v136 + 20), v52) & 1) == 0)
      {
        v61 = sub_29E217854(v64, type metadata accessor for PDFCoverPageModel.CycleSection);
LABEL_26:
        v134 = v57;
        v76 = v104;
        MEMORY[0x29ED78A30](v61);
        v77 = v106;
        sub_29E2BC9E4();
        v78 = v103;
        sub_29E2BC9A4();
        (*v102)(v77, v107);
        v79 = *v101;
        v80 = v105;
        (*v101)(v76, v105);
        sub_29E217B58(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
        v35 = v131;
        sub_29E2BCB94();
        v79(v78, v80);
        v81 = v144;
        v82 = v145;
        sub_29DECE8A4(0, &qword_2A181DD30);
        v83 = swift_allocObject();
        *(v83 + 16) = v99;
        *(v83 + 32) = v141;
        *(v83 + 40) = v17;
        v84 = v140;
        *(v83 + 48) = v139;
        *(v83 + 56) = v84;
        v85 = v137;
        v86 = v138;
        *(v83 + 64) = v20;
        *(v83 + 72) = v86;
        v87 = v135;
        *v135 = v81;
        *(v87 + 1) = v82;
        v88 = v136;
        (*v100)(&v87[*(v136 + 20)], v52, v85);
        *&v87[*(v88 + 24)] = v83;
        v89 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_29E144CCC(0, v25[2] + 1, 1, v25);
        }

        v24 = v119;
        v91 = v25[2];
        v90 = v25[3];
        v92 = v134;
        if (v91 >= v90 >> 1)
        {
          v25 = sub_29E144CCC(v90 > 1, v91 + 1, 1, v25);
        }

        (*v111)(v89, v137);
        v121(v35, v24);
        v25[2] = v91 + 1;
        sub_29E217918(v135, v25 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v91);
        v34 = v130;
        goto LABEL_6;
      }

      v14 = v25[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_29E14D9B0(v25);
      }

      v24 = v119;
      v35 = v131;
      if (!v14)
      {
        break;
      }

      if (v14 > v25[2])
      {
        goto LABEL_31;
      }

      v134 = v17;
      v143 = v25;
      v65 = v25 + v30 + (v14 - 1) * v63;
      v66 = *(v136 + 24);
      v67 = *(v65 + v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v65 + v66) = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_29E144D00(0, *(v67 + 2) + 1, 1, v67);
        *(v65 + v66) = v67;
      }

      v70 = *(v67 + 2);
      v69 = *(v67 + 3);
      if (v70 >= v69 >> 1)
      {
        *(v65 + v66) = sub_29E144D00((v69 > 1), v70 + 1, 1, v67);
      }

      sub_29E217854(v108, type metadata accessor for PDFCoverPageModel.CycleSection);
      (*v111)(v19, v137);
      v121(v35, v24);
      v71 = *(v65 + v66);
      *(v71 + 16) = v70 + 1;
      v72 = (v71 + 48 * v70);
      v73 = v134;
      v72[4] = v141;
      v72[5] = v73;
      v74 = v140;
      v72[6] = v139;
      v72[7] = v74;
      v75 = v138;
      v72[8] = v20;
      v72[9] = v75;
      v34 = v130;
      v25 = v143;
LABEL_6:
      v33 = v142 + 1;
      v30 = v110;
      if (v109 == v142 + 1)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v25 = MEMORY[0x29EDCA190];
LABEL_34:

  return v25;
}

uint64_t sub_29E213268()
{
  v1[250] = v0;
  v2 = sub_29E2C0514();
  v1[251] = v2;
  v1[252] = *(v2 - 8);
  v1[253] = swift_task_alloc();
  v3 = sub_29E2BCEA4();
  v1[254] = v3;
  v1[255] = *(v3 - 8);
  v1[256] = swift_task_alloc();
  v1[257] = swift_task_alloc();
  v4 = sub_29E2BCBB4();
  v1[258] = v4;
  v1[259] = *(v4 - 8);
  v1[260] = swift_task_alloc();
  v1[261] = swift_task_alloc();
  sub_29DEE975C();
  v1[262] = v5;
  v1[263] = *(v5 - 8);
  v1[264] = swift_task_alloc();
  v1[265] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E213460, 0, 0);
}

uint64_t sub_29E213460()
{
  v1 = **(v0 + 2000);
  *(v0 + 2128) = [v1 healthStore];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1992;
  *(v0 + 24) = sub_29E213594;
  v2 = swift_continuation_init();
  sub_29DEE37D4();
  *(v0 + 1960) = v3;
  *(v0 + 1936) = v2;
  *(v0 + 1904) = MEMORY[0x29EDCA5F8];
  *(v0 + 1912) = 1107296256;
  *(v0 + 1920) = sub_29DEE3160;
  *(v0 + 1928) = &unk_2A24BF898;
  [v1 analysisWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29E213594()
{
  v1 = *(*v0 + 48);
  *(*v0 + 2136) = v1;
  if (v1)
  {
    v2 = sub_29E214590;
  }

  else
  {
    v2 = sub_29E2136A4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E2136A4()
{
  v1 = v0[265];
  v2 = v0[261];
  v3 = v0[259];
  v4 = v0[258];
  v5 = v0[257];
  v6 = v0[255];
  v7 = v0[254];
  v0[268] = v0[249];
  sub_29E2BCB54();
  sub_29E2BCE44();
  sub_29E2AE598(v1);
  v8 = *(v6 + 8);
  v0[269] = v8;
  v0[270] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v9 = *(v3 + 8);
  v0[271] = v9;
  v0[272] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = swift_task_alloc();
  v0[273] = v10;
  *v10 = v0;
  v10[1] = sub_29E2137F0;
  v11 = v0[266];
  v12 = v0[262];

  return MEMORY[0x2A1C5B578](v11, v12);
}

uint64_t sub_29E2137F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2192) = a1;
  *(v3 + 2200) = v1;

  if (v1)
  {
    v4 = sub_29E214664;
  }

  else
  {
    v4 = sub_29E213908;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E213908()
{
  v1 = v0[271];
  v2 = v0[269];
  v3 = v0[264];
  v4 = v0[261];
  v5 = v0[258];
  v6 = v0[257];
  v7 = v0[254];
  sub_29E2BCB54();
  sub_29E2BCE44();
  sub_29E2AE580(v3);
  v2(v6, v7);
  v1(v4, v5);
  v8 = swift_task_alloc();
  v0[276] = v8;
  *v8 = v0;
  v8[1] = sub_29E213A24;
  v9 = v0[266];
  v10 = v0[262];

  return MEMORY[0x2A1C5B578](v9, v10);
}

uint64_t sub_29E213A24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2216) = a1;
  *(v3 + 2224) = v1;

  if (v1)
  {

    v4 = sub_29E21475C;
  }

  else
  {
    v4 = sub_29E213B44;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E213B44()
{
  v143 = v0;
  v1 = *(v0 + 2144);
  v2 = *(v0 + 2048);
  v3 = *(v0 + 2040);
  type metadata accessor for PDFCoverPageBodyProvider();
  (*(v3 + 16))(v2);
  v4 = v1;
  sub_29E2BCB54();
  v5 = [v4 statistics];
  v6 = [v4 statistics];
  v138 = [v6 numberOfCycles];

  v7 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  [v7 setDateStyle_];
  v8 = sub_29DFDA6B0(v7, v2);
  v134 = v9;
  v136 = v8;
  v10 = sub_29DFDA6BC();
  v131 = v11;
  v133 = v10;
  v12 = sub_29DFDA6C8();
  v128 = v13;
  v129 = v12;
  v14 = sub_29DFDA6DC();
  v126 = v15;
  v127 = v14;
  v16 = sub_29DFDA978();
  v124 = v17;
  v125 = v16;
  v18 = sub_29DFDADD4(v7, v2);
  v122 = v19;
  v123 = v18;

  v20 = [v4 cycles];
  if (v20)
  {
    v21 = v20;
    v22 = *(v0 + 2152);
    v23 = *(v0 + 2080);
    v24 = *(v0 + 2056);
    v25 = *(v0 + 2048);
    v26 = *(v0 + 2032);
    sub_29DE9408C(0, &qword_2A1A5E0A0);
    v27 = sub_29E2C3614();

    sub_29E2BCE44();
    v121 = sub_29E2123CC(v25, v23, v24, v27);

    v22(v24, v26);
  }

  else
  {
    v121 = MEMORY[0x29EDCA190];
  }

  v28 = *(v0 + 2192);
  v29 = *(v0 + 2152);
  v30 = *(v0 + 2144);
  v31 = *(v0 + 2080);
  v32 = *(v0 + 2056);
  v33 = *(v0 + 2048);
  v34 = *(v0 + 2032);
  sub_29E2BCE44();
  v35 = sub_29DFDC888(v28, v31, v33, v32, v31);
  v29(v32, v34);
  v36 = [v30 statistics];
  v37 = sub_29DFDAFF4(v33);
  v119 = v38;
  v120 = v37;

  v39 = *(v35 + 16);
  if (v39)
  {
    v40 = sub_29E145D8C(*(v35 + 16), 0);
    v41 = *(sub_29E2BC5F4() - 8);
    sub_29E06F8F4(v142, &v40[(*(v41 + 80) + 32) & ~*(v41 + 80)], v39, v35);
    v43 = v42;
    swift_bridgeObjectRetain_n();
    sub_29DF219B8();
    if (v43 == v39)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  sub_29E2BF404();
  v40 = MEMORY[0x29EDCA190];
LABEL_8:
  v44 = *(v0 + 2224);
  v141 = v40;
  sub_29E216284(&v141);
  if (v44)
  {
  }

  else
  {
    v46 = (v0 + 232);
    v47 = *(v0 + 2168);
    v117 = *(v0 + 2152);
    v48 = *(v0 + 2144);
    v49 = *(v0 + 2080);
    v50 = *(v0 + 2064);
    v51 = *(v0 + 2048);
    v52 = *(v0 + 2032);

    v118 = v141;

    v47(v49, v50);
    v53 = v51;
    v54 = v0 + 384;
    v117(v53, v52);
    *(v0 + 232) = v120;
    *(v0 + 240) = v119;
    *(v0 + 248) = v138;
    *(v0 + 256) = v136;
    *(v0 + 264) = v134;
    *(v0 + 272) = v133;
    *(v0 + 280) = v131;
    *(v0 + 288) = v129;
    *(v0 + 296) = v128;
    *(v0 + 304) = v127;
    *(v0 + 312) = v126;
    *(v0 + 320) = v125;
    *(v0 + 328) = v124;
    *(v0 + 336) = v123;
    *(v0 + 344) = v122;
    *(v0 + 352) = v121;
    *(v0 + 360) = v35;
    *(v0 + 368) = v118;
    *(v0 + 376) = MEMORY[0x29EDCA190];
    sub_29E178BF4();
    v56 = v55;

    *(v0 + 376) = v56;
    sub_29E2C04B4();
    v58 = *(v0 + 328);
    v57 = *(v0 + 344);
    v59 = *(v0 + 312);
    *(v0 + 784) = v58;
    *(v0 + 800) = v57;
    v60 = *(v0 + 344);
    *(v0 + 816) = *(v0 + 360);
    v62 = *(v0 + 264);
    v61 = *(v0 + 280);
    v63 = *(v0 + 248);
    *(v0 + 720) = v62;
    *(v0 + 736) = v61;
    v64 = *(v0 + 280);
    v66 = *(v0 + 296);
    v65 = *(v0 + 312);
    *(v0 + 752) = v66;
    *(v0 + 768) = v65;
    v67 = *(v0 + 248);
    *(v0 + 688) = *(v0 + 232);
    *(v0 + 704) = v67;
    v68 = *(v0 + 344);
    *(v0 + 632) = *(v0 + 328);
    *(v0 + 648) = v68;
    *(v0 + 664) = *(v0 + 360);
    v69 = *(v0 + 280);
    *(v0 + 568) = *(v0 + 264);
    *(v0 + 584) = v69;
    v70 = *(v0 + 312);
    *(v0 + 600) = *(v0 + 296);
    *(v0 + 616) = v70;
    v72 = *(v0 + 232);
    v71 = *(v0 + 248);
    *(v0 + 536) = v72;
    *(v0 + 552) = v71;
    *(v0 + 480) = v58;
    *(v0 + 496) = v60;
    *(v0 + 512) = *(v0 + 360);
    *(v0 + 416) = v62;
    *(v0 + 432) = v64;
    *(v0 + 448) = v66;
    *(v0 + 464) = v59;
    *(v0 + 832) = *(v0 + 376);
    *(v0 + 680) = *(v0 + 376);
    *(v0 + 528) = *(v0 + 376);
    *(v0 + 384) = v72;
    *(v0 + 400) = v63;
    v73 = v48;
    sub_29E217738(v0 + 536, v0 + 840);
    sub_29E217738(v0 + 384, v0 + 992);
    v74 = v73;
    sub_29E217738(v0 + 536, v0 + 1144);
    sub_29E217738(v0 + 384, v0 + 1296);
    sub_29E217738(v0 + 688, v0 + 1448);
    v75 = sub_29E2C0504();
    v76 = sub_29E2C3A34();
    sub_29E217794(v0 + 688);
    v77 = os_log_type_enabled(v75, v76);
    v78 = *(v0 + 2144);
    if (v77)
    {
      v140 = v76;
      v79 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v142[0] = v139;
      *v79 = 136447234;
      *(v79 + 4) = sub_29DFAA104(0xD000000000000018, 0x800000029E2E6920, v142);
      *(v79 + 12) = 2080;
      v80 = *(v0 + 688);
      v81 = *(v0 + 696);
      sub_29E2BF404();
      v82 = sub_29DFAA104(v80, v81, v142);

      *(v79 + 14) = v82;
      *(v79 + 22) = 2048;
      v83 = [v78 cycles];
      if (v83)
      {
        sub_29DE9408C(0, &qword_2A1A5E0A0);
        v84 = sub_29E2C3614();

        v85 = *(v0 + 2144);
        v86 = v0 + 536;
        if (v84 >> 62)
        {
          v83 = sub_29E2C4484();
        }

        else
        {
          v83 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v86 = v0 + 536;
        v85 = *(v0 + 2144);
      }

      v90 = *(v0 + 2144);
      v91 = *(v0 + 2016);
      v135 = *(v0 + 2008);
      v137 = *(v0 + 2024);
      *(v79 + 24) = v83;

      *(v79 + 32) = 2048;
      v92 = *(*(v0 + 680) + 16);
      sub_29E217794(v86);
      *(v79 + 34) = v92;
      sub_29E217794(v86);
      *(v79 + 42) = 2048;
      v93 = *(*(v0 + 512) + 16);
      sub_29E217794(v54);
      *(v79 + 44) = v93;
      sub_29E217794(v54);
      _os_log_impl(&dword_29DE74000, v75, v140, "[%{public}s] Showing %s PDF with %ld cycles, %ld deviations, %ld factors", v79, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v139, -1, -1);
      MEMORY[0x29ED82140](v79, -1, -1);

      (*(v91 + 8))(v137, v135);
    }

    else
    {
      v87 = *(v0 + 2024);
      v88 = *(v0 + 2016);
      v89 = *(v0 + 2008);
      sub_29E217794(v54);
      sub_29E217794(v0 + 536);

      sub_29E217794(v54);
      sub_29E217794(v0 + 536);

      (*(v88 + 8))(v87, v89);
    }

    v130 = *(v0 + 2128);
    v132 = *(v0 + 2144);
    v94 = *(v0 + 2120);
    v95 = *(v0 + 2112);
    v96 = *(v0 + 2104);
    v97 = *(v0 + 2096);
    v98 = *(v0 + 2000);
    sub_29E217A80(0, &unk_2A181DD40, &qword_2A18185B0, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_29E2CAB20;
    swift_beginAccess();
    v101 = *(v0 + 328);
    v100 = *(v0 + 344);
    v102 = *(v0 + 312);
    *(v0 + 176) = v101;
    *(v0 + 192) = v100;
    v103 = *(v0 + 344);
    *(v0 + 208) = *(v0 + 360);
    v105 = *(v0 + 264);
    v104 = *(v0 + 280);
    v106 = *(v0 + 248);
    *(v0 + 112) = v105;
    *(v0 + 128) = v104;
    v107 = *(v0 + 280);
    v109 = *(v0 + 296);
    v108 = *(v0 + 312);
    *(v0 + 144) = v109;
    *(v0 + 160) = v108;
    v110 = *(v0 + 248);
    v111 = *v46;
    *(v0 + 80) = *v46;
    *(v0 + 96) = v110;
    *(v0 + 1696) = v101;
    *(v0 + 1712) = v103;
    *(v0 + 1728) = *(v0 + 360);
    *(v0 + 1632) = v105;
    *(v0 + 1648) = v107;
    *(v0 + 1664) = v109;
    *(v0 + 1680) = v102;
    *(v0 + 1600) = v111;
    *(v0 + 224) = *(v0 + 376);
    *(v0 + 1744) = *(v0 + 376);
    *(v0 + 1616) = v106;
    sub_29E217738(v0 + 80, v0 + 1752);
    sub_29E217794(v0 + 1600);
    v112 = sub_29E2BFC04();
    v113 = MEMORY[0x29EDC2C70];
    *(v99 + 56) = v112;
    *(v99 + 64) = v113;
    sub_29DEBB7E8((v99 + 32));
    v114 = swift_task_alloc();
    *(v114 + 16) = v0 + 80;
    *(v114 + 24) = v98;
    sub_29E2BFBD4();
    sub_29E217794(v0 + 80);

    v115 = *(v96 + 8);
    v115(v95, v97);
    v115(v94, v97);

    v116 = *(v0 + 8);

    return v116(v99);
  }
}

uint64_t sub_29E214590()
{
  v1 = *(v0 + 2128);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E214664()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 2120);
  v3 = *(v0 + 2104);
  v4 = *(v0 + 2096);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29E21475C()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 2120);
  v3 = *(v0 + 2112);
  v4 = *(v0 + 2104);
  v5 = *(v0 + 2096);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29E21486C(uint64_t a1)
{
  v2 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v2;
  v34 = *(a1 + 128);
  v35 = *(a1 + 144);
  v3 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v3;
  v4 = *(a1 + 80);
  v30 = *(a1 + 64);
  v31 = v4;
  v5 = *(a1 + 16);
  v26 = *a1;
  v27 = v5;
  v24 = &type metadata for PDFCoverPageDeviationsSection;
  v25 = sub_29DF0CEB0();
  v6 = swift_allocObject();
  v23[0] = v6;
  v7 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = *(a1 + 144);
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  v10 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v10;
  sub_29E217738(a1, v22);
  v11 = sub_29E2BEA14();
  sub_29DE93B3C(v23);
  v22[3] = sub_29E2BFC04();
  v22[4] = MEMORY[0x29EDC2C70];
  sub_29DEBB7E8(v22);
  sub_29E2BFBF4();
  v12 = sub_29E2BEA14();
  sub_29DE93B3C(v22);
  v24 = &type metadata for PDFCoverPageHistorySection;
  v25 = sub_29E0C0330();
  v13 = swift_allocObject();
  v23[0] = v13;
  v14 = v33;
  *(v13 + 112) = v32;
  *(v13 + 128) = v14;
  *(v13 + 144) = v34;
  *(v13 + 160) = v35;
  v15 = v29;
  *(v13 + 48) = v28;
  *(v13 + 64) = v15;
  v16 = v31;
  *(v13 + 80) = v30;
  *(v13 + 96) = v16;
  v17 = v27;
  *(v13 + 16) = v26;
  *(v13 + 32) = v17;
  sub_29E217738(a1, v22);
  v18 = sub_29E2BEA14();
  sub_29DE93B3C(v23);
  sub_29E217A10(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E2CE0D0;
  *(v19 + 32) = v11;
  *(v19 + 40) = v12;
  *(v19 + 48) = v18;
  v20 = MEMORY[0x29ED7B1C0]();

  return v20;
}

uint64_t sub_29E214A88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (v15 = *(a1 + 56), v16 = *(a1 + 72), v17 = *(a1 + 88), v18 = *(a1 + 104), v12 = *(a1 + 16), v13 = v1, v14 = *(a1 + 40), v12 >= 1))
  {
    MEMORY[0x2A1C7C4A8](a1);
    v10 = sub_29E2BF564();
    v11 = MEMORY[0x29EDC2868];
    sub_29DEBB7E8(v9);
    sub_29E2BF554();
    v2 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    v10 = sub_29E2BE564();
    v11 = MEMORY[0x29EDC1FC0];
    sub_29DEBB7E8(v9);
    sub_29E2BE574();
    v3 = sub_29E2BEA14();
    sub_29DE93B3C(v9);
    sub_29E217A10(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_29E2CD7A0;
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    MEMORY[0x29ED7B1C0]();

    v5 = sub_29E2BEA04();
  }

  else
  {
    v5 = sub_29E2BEA04();
  }

  sub_29E217A10(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E2CAB20;
  *(v6 + 32) = v5;
  v7 = MEMORY[0x29ED7B1C0]();

  return v7;
}

uint64_t sub_29E214C98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_29DF40508();
  v14 = sub_29E2BFB34();
  v15 = MEMORY[0x29EDC2C28];
  sub_29DEBB7E8(v13);
  sub_29E2BE1A4();
  sub_29E2BFB24();
  v6 = sub_29E2BEA14();
  sub_29DE93B3C(v13);
  v8 = *a3;
  v7 = a3[1];
  v14 = &type metadata for PDFWidthLimitingVStack;
  v15 = sub_29E19B1DC();
  v13[0] = sub_29E214DF4(a1, v8, v7, a2);
  v13[1] = 0;
  v13[2] = 3;
  v9 = sub_29E2BEA14();
  sub_29DE93B3C(v13);
  sub_29E217A10(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CD7A0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v9;
  v11 = MEMORY[0x29ED7B1C0]();

  return v11;
}

uint64_t sub_29E214DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  v62 = a4;
  v58 = a2;
  v59 = a3;
  v4 = sub_29E2BFB54();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29E2BE484();
  v6 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2C3384();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v52 - v14;
  sub_29E2C3314();
  (*(v10 + 16))(v12, v15, v9);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  v17 = sub_29E2C3414();
  v54 = v18;
  v55 = v17;
  (*(v10 + 8))(v15, v9);
  v19 = *MEMORY[0x29EDC76E0];
  v20 = objc_opt_self();
  v21 = [v20 darkTextColor];
  v22 = objc_opt_self();
  v23 = [v22 systemFontOfSize:18.0 weight:v19];
  sub_29DE9408C(0, &qword_2A1817B10);
  v24 = sub_29E2C3E84();
  v25 = sub_29DF40374(v23, v24, v21);

  v26 = *MEMORY[0x29EDC1F60];
  v53 = *(v6 + 104);
  v27 = v56;
  v28 = v57;
  v53(v56, v26, v57);
  v29 = sub_29E2BFA64();
  v64 = v29;
  v65 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v63);
  MEMORY[0x29ED7C240](v55, v54, v27, v25);
  v55 = sub_29E2BEA14();
  sub_29DE93B3C(v63);
  v52 = sub_29E2BE564();
  v64 = v52;
  v65 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(v63);
  sub_29E2BE574();
  v54 = sub_29E2BEA14();
  sub_29DE93B3C(v63);
  v30 = *MEMORY[0x29EDC7700];
  v31 = v59;
  sub_29E2BF404();
  v32 = [v20 darkTextColor];
  v33 = [v22 systemFontOfSize:14.0 weight:v30];
  v34 = sub_29E2C3E84();
  v35 = sub_29DF40374(v33, v34, v32);

  v53(v27, v26, v28);
  v64 = v29;
  v65 = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v63);
  MEMORY[0x29ED7C240](v58, v31, v27, v35);
  v36 = sub_29E2BEA14();
  sub_29DE93B3C(v63);
  v37 = v52;
  v64 = v52;
  v38 = MEMORY[0x29EDC1FC0];
  v65 = MEMORY[0x29EDC1FC0];
  sub_29DEBB7E8(v63);
  sub_29E2BE574();
  v39 = sub_29E2BEA14();
  sub_29DE93B3C(v63);
  v40 = sub_29E2BFB64();
  MEMORY[0x2A1C7C4A8](v40);
  v41 = v62;
  *(&v52 - 2) = v62;
  sub_29E2BFB44();
  v42 = sub_29E2BFB74();
  v64 = v40;
  v65 = MEMORY[0x29EDC2C38];
  v63[0] = v42;
  v43 = sub_29E2BEA14();
  sub_29DE93B3C(v63);
  v64 = v37;
  v65 = v38;
  sub_29DEBB7E8(v63);
  sub_29E2BE574();
  v44 = sub_29E2BEA14();
  v45 = sub_29DE93B3C(v63);
  MEMORY[0x2A1C7C4A8](v45);
  v46 = v61;
  *(&v52 - 2) = v41;
  *(&v52 - 1) = v46;
  v64 = sub_29E2BEE74();
  v65 = MEMORY[0x29EDC2320];
  sub_29DEBB7E8(v63);
  sub_29E2BEE64();
  v47 = sub_29E2BEA14();
  sub_29DE93B3C(v63);
  sub_29E217A10(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29E2D47D0;
  v49 = v54;
  *(v48 + 32) = v55;
  *(v48 + 40) = v49;
  *(v48 + 48) = v36;
  *(v48 + 56) = v39;
  *(v48 + 64) = v43;
  *(v48 + 72) = v44;
  *(v48 + 80) = v47;
  v50 = MEMORY[0x29ED7B1C0]();

  return v50;
}

uint64_t sub_29E215538(uint64_t a1)
{
  v82 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v66 - v9;
  sub_29DECE8A4(0, &qword_2A1A62780);
  v79 = v11;
  inited = swift_initStackObject();
  v80 = xmmword_29E2CD7A0;
  *(inited + 16) = xmmword_29E2CD7A0;
  sub_29E2C3314();
  v13 = *(v5 + 16);
  v81 = v5 + 16;
  v78 = v13;
  v13(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v74 = "MINDER_CANCEL_PROMPT";
  v14 = qword_2A1A67F80;
  v15 = qword_2A1A67F80;
  v77 = v14;
  v16 = v15;
  sub_29E2BCC74();
  v17 = v16;
  v18 = sub_29E2C3414();
  v20 = v19;
  v21 = *(v5 + 8);
  v75 = v5 + 8;
  v76 = v21;
  v21(v10, v4);
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v22 = *(v82 + 8);
  v73 = v3;
  v86 = v22;
  *(inited + 48) = v22;
  sub_29E1DFBA4(&v86, v83);
  v23 = sub_29E074B04(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v84 = &type metadata for PDFTableRowWithFirstColumnBold;
  v85 = sub_29E217B04();
  v24 = v85;
  v72 = v85;
  v83[0] = v23;
  v69 = sub_29E2BF3A4();
  sub_29DE93B3C(v83);
  v25 = swift_initStackObject();
  *(v25 + 16) = v80;
  sub_29E2C3314();
  v70 = v4;
  v78(v7, v10, v4);
  sub_29E2BCC74();
  v26 = sub_29E2C3414();
  v28 = v27;
  v76(v10, v4);
  *(v25 + 32) = v26;
  v30 = *(v82 + 24);
  v29 = *(v82 + 32);
  *(v25 + 40) = v28;
  *(v25 + 48) = v30;
  *(v25 + 56) = v29;
  sub_29E2BF404();
  v31 = sub_29E074B04(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  v84 = &type metadata for PDFTableRowWithFirstColumnBold;
  v85 = v24;
  v83[0] = v31;
  v68 = sub_29E2BF3A4();
  sub_29DE93B3C(v83);
  v32 = swift_initStackObject();
  *(v32 + 16) = v80;
  sub_29E2C3314();
  v33 = v70;
  v34 = v78;
  v78(v7, v10, v70);
  sub_29E2BCC74();
  v35 = sub_29E2C3414();
  v37 = v36;
  v71 = v7;
  v38 = v76;
  v76(v10, v33);
  *(v32 + 32) = v35;
  v40 = *(v82 + 40);
  v39 = *(v82 + 48);
  *(v32 + 40) = v37;
  *(v32 + 48) = v40;
  *(v32 + 56) = v39;
  sub_29E2BF404();
  v41 = sub_29E074B04(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  v84 = &type metadata for PDFTableRowWithFirstColumnBold;
  v85 = v72;
  v83[0] = v41;
  v67 = sub_29E2BF3A4();
  sub_29DE93B3C(v83);
  v42 = swift_initStackObject();
  *(v42 + 16) = v80;
  sub_29E2C3314();
  v43 = v70;
  v34(v71, v10, v70);
  sub_29E2BCC74();
  v44 = sub_29E2C3414();
  v46 = v45;
  v47 = v43;
  v38(v10, v43);
  *(v42 + 32) = v44;
  v48 = v82;
  v50 = *(v82 + 56);
  v49 = *(v82 + 64);
  *(v42 + 40) = v46;
  *(v42 + 48) = v50;
  *(v42 + 56) = v49;
  sub_29E2BF404();
  v51 = sub_29E074B04(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = v72;
  v84 = &type metadata for PDFTableRowWithFirstColumnBold;
  v85 = v72;
  v83[0] = v51;
  v53 = sub_29E2BF3A4();
  sub_29DE93B3C(v83);
  v54 = swift_initStackObject();
  *(v54 + 16) = v80;
  sub_29E2C3314();
  v78(v71, v10, v47);
  sub_29E2BCC74();
  v55 = sub_29E2C3414();
  v57 = v56;
  v76(v10, v47);
  *(v54 + 32) = v55;
  v59 = *(v48 + 72);
  v58 = *(v48 + 80);
  *(v54 + 40) = v57;
  *(v54 + 48) = v59;
  *(v54 + 56) = v58;
  sub_29E2BF404();
  v60 = sub_29E074B04(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  v84 = &type metadata for PDFTableRowWithFirstColumnBold;
  v85 = v52;
  v83[0] = v60;
  v61 = sub_29E2BF3A4();
  sub_29DE93B3C(v83);
  sub_29E217A10(0, &qword_2A181DD70, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_29E2D06A0;
  v63 = v68;
  *(v62 + 32) = v69;
  *(v62 + 40) = v63;
  *(v62 + 48) = v67;
  *(v62 + 56) = v53;
  *(v62 + 64) = v61;
  v64 = MEMORY[0x29ED7BB50]();

  return v64;
}

uint64_t sub_29E215D2C(uint64_t *a1)
{
  v2 = sub_29E2BE484();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v29[-1] - v12;
  v14 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  sub_29E2C3354();
  sub_29E2C3344();
  v29[0] = *a1;
  sub_29E2C3324();
  sub_29E2C3344();
  sub_29E2C3334();
  sub_29E2C3344();
  sub_29E2C3374();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  v16 = sub_29E2C3414();
  v18 = v17;
  (*(v8 + 8))(v13, v7);
  v19 = *MEMORY[0x29EDC76F8];
  v20 = sub_29E2BE1E4();
  v21 = [objc_opt_self() systemFontOfSize:8.0 weight:v19];
  sub_29DE9408C(0, &qword_2A1817B10);
  v22 = sub_29E2C3E84();
  v23 = sub_29DF40374(v21, v22, v20);

  (*(v3 + 104))(v5, *MEMORY[0x29EDC1F60], v2);
  v29[3] = sub_29E2BFA64();
  v29[4] = MEMORY[0x29EDC2C00];
  sub_29DEBB7E8(v29);
  MEMORY[0x29ED7C240](v16, v18, v5, v23);
  v24 = sub_29E2BEA14();
  sub_29DE93B3C(v29);
  sub_29E217A10(0, &qword_2A181DD60, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E2CAB20;
  *(v25 + 32) = v24;
  v26 = MEMORY[0x29ED7B1C0]();

  return v26;
}

uint64_t sub_29E2161CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29DE9F99C;

  return sub_29E213268();
}

void sub_29E216284(void **a1)
{
  v2 = *(sub_29E2BC5F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_29E146014(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_29E21632C(v5);
  *a1 = v3;
}

void sub_29E21632C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29E2C48C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29E2BC5F4();
        v6 = sub_29E2C3664();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_29E2BC5F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_29E21671C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_29E216458(0, v2, 1, a1);
  }
}

void sub_29E216458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_29E2BC5F4();
  MEMORY[0x2A1C7C4A8](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_29E217B58(&qword_2A181FC78, MEMORY[0x29EDB9950]);
      v26 = sub_29E2C3284();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_29E21671C(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_29E2BC5F4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v134 = &v119 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x29EDCA190];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_29E14D410(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_29E217144(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_29E14D410(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_29E14D384(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x29EDCA190];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_29E217B58(&qword_2A181FC78, MEMORY[0x29EDB9950]);
      LODWORD(v133) = sub_29E2C3284();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_29E2C3284() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_29E143B40(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_29E143B40((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_29E217144(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_29E14D410(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_29E14D384(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_29E217B58(&qword_2A181FC78, MEMORY[0x29EDB9950]);
    v109 = sub_29E2C3284();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_29E217144(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_29E2BC5F4();
  v8 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_29E217B58(&qword_2A181FC78, MEMORY[0x29EDB9950]);
          LOBYTE(v34) = sub_29E2C3284();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_29E217B58(&qword_2A181FC78, MEMORY[0x29EDB9950]);
        LOBYTE(v21) = sub_29E2C3284();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_29E08A474(&v54, &v53, &v52);
}

void sub_29E2177F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E217854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E2178B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFCoverPageModel.CycleSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E217918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFCoverPageModel.CycleSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E217984()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 168, 7);
}

void sub_29E217A10(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29E217A80(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29E2C48E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E217A80(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DEB1BC4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E217B04()
{
  result = qword_2A181FC70;
  if (!qword_2A181FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FC70);
  }

  return result;
}

uint64_t sub_29E217B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E217BA0(uint64_t a1, unint64_t a2)
{
  sub_29E2BC2B4();
  swift_allocObject();
  sub_29E2BC2A4();
  type metadata accessor for OvulationConfirmationFailureUserData();
  sub_29E2185DC(&qword_2A181FC80, type metadata accessor for OvulationConfirmationFailureUserData);
  sub_29E2BC294();
  if (v2)
  {

    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD000000000000024, 0x800000029E2E6980);
    MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E3073F0);
    sub_29DE96670();
    sub_29E2C4664();
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    sub_29DEB5BF8(a1, a2);
  }

  return result;
}

uint64_t type metadata accessor for OvulationConfirmationFailureUserData()
{
  result = qword_2A181FC88;
  if (!qword_2A181FC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E217DC4()
{
  sub_29DF8C298();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29E217E30()
{
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  type metadata accessor for OvulationConfirmationFailureUserData();
  sub_29E2185DC(&qword_2A181FCB0, type metadata accessor for OvulationConfirmationFailureUserData);
  v1 = sub_29E2BC2C4();
  if (v0)
  {

    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD000000000000024, 0x800000029E2E6980);
    MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E307410);
    sub_29DE96670();
    sub_29E2C4664();
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v2 = v1;

    return v2;
  }

  return result;
}

uint64_t sub_29E217FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_29DF8C298();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E218578(0, &qword_2A181FC98, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for OvulationConfirmationFailureUserData();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E218524();
  sub_29E2C4A94();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_29E2185DC(&qword_2A181FCA8, sub_29DF8C298);
    sub_29E2C4844();
    (*(v14 + 8))(v10, v8);
    (*(v15 + 32))(v13, v21, v5);
    sub_29DF8C234(v13, v18);
  }

  return sub_29DE93B3C(a1);
}

uint64_t sub_29E218288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C637963 && a2 == 0xE500000000000000)
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

uint64_t sub_29E21830C(uint64_t a1)
{
  v2 = sub_29E218524();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E218348(uint64_t a1)
{
  v2 = sub_29E218524();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E21839C(void *a1)
{
  sub_29E218578(0, &qword_2A181FCB8, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E218524();
  sub_29E2C4AA4();
  sub_29DF8C298();
  sub_29E2185DC(&qword_2A181FCC0, sub_29DF8C298);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29E218524()
{
  result = qword_2A181FCA0;
  if (!qword_2A181FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FCA0);
  }

  return result;
}

void sub_29E218578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E218524();
    v7 = a3(a1, &type metadata for OvulationConfirmationFailureUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E2185DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E218638()
{
  result = qword_2A181FCC8;
  if (!qword_2A181FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FCC8);
  }

  return result;
}

unint64_t sub_29E218690()
{
  result = qword_2A181FCD0;
  if (!qword_2A181FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FCD0);
  }

  return result;
}

unint64_t sub_29E2186E8()
{
  result = qword_2A181FCD8;
  if (!qword_2A181FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FCD8);
  }

  return result;
}

unint64_t sub_29E21873C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_29E2C4484();
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
      v6 = MEMORY[0x29ED80D70](v5, a2);
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
    sub_29DE9408C(0, &qword_2A1A5E0A0);
    v8 = sub_29E2C40D4();

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

uint64_t sub_29E21884C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v6 = v5;
    if (v4 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v6 == v7)
    {
      break;
    }

    v9 = sub_29E2C4914();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void sub_29E218998()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout);
  if (!v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration);
  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48);
  v61 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32);
  v62 = v3;
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80);
  v63 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64);
  v64 = v4;
  v65 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96);
  v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16);
  v60[0] = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration);
  v60[1] = v5;
  v6 = *(&v61 + 1);
  v66 = v3;
  v67 = v63;
  v68 = v4;
  v69 = v65;
  if (*(&v61 + 1))
  {
    v7 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration];
    v9 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration + 16];
    v8 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration + 32];
    v58[0] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration];
    v58[1] = v9;
    v58[2] = v8;
    v11 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration + 64];
    v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration + 80];
    v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration + 48];
    v59 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration + 96];
    v58[4] = v11;
    v58[5] = v10;
    v58[3] = v12;
    v13 = v2[1];
    v14 = *(v2 + 4);
    *v7 = *v2;
    *(v7 + 1) = v13;
    *(v7 + 4) = v14;
    *(v7 + 5) = v6;
    v15 = v67;
    *(v7 + 3) = v66;
    *(v7 + 4) = v15;
    *(v7 + 5) = v68;
    *(v7 + 12) = v69;
    sub_29E2243B4(v60, &v51);
    sub_29E2243B4(v60, &v51);
    v16 = v1;
    sub_29DE9DE14(v58);
    [v16 invalidateLayout];
    sub_29E224334(v60);

    v17 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards);
    v18 = *(v17 + 16);
    sub_29E2BF404();
    if (!v18)
    {
LABEL_8:

      sub_29E218CA4();
      return;
    }

    v19 = 0;
    v20 = v17 + 32;
    v21 = MEMORY[0x29EDCA1E8];
    while (v19 < *(v17 + 16))
    {
      sub_29E2241F0(v20, v50);
      sub_29E2241F0(v50, &v44);
      v22 = v44;

      v23 = v2[3];
      v53 = v2[2];
      v54 = v23;
      v24 = v2[3];
      v25 = v2[5];
      v55 = v2[4];
      v56 = v25;
      v57 = *(v2 + 12);
      v26 = v2[1];
      v51 = *v2;
      v52 = v26;
      v27 = *(&v53 + 1);
      v28 = v2[5];
      v49 = *(v2 + 12);
      v47 = v55;
      v48 = v28;
      v46 = v24;
      if (!*(&v53 + 1))
      {
        goto LABEL_10;
      }

      ++v19;
      v29 = v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration;
      v31 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 16);
      v30 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 32);
      v40[0] = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration);
      v40[1] = v31;
      v40[2] = v30;
      v33 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 64);
      v32 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 80);
      v34 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 48);
      v41 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration + 96);
      v40[4] = v33;
      v40[5] = v32;
      v40[3] = v34;
      v35 = v2[1];
      v36 = *(v2 + 4);
      *v29 = *v2;
      *(v29 + 1) = v35;
      *(v29 + 4) = v36;
      *(v29 + 5) = v27;
      v37 = v47;
      *(v29 + 3) = v46;
      *(v29 + 4) = v37;
      *(v29 + 5) = v48;
      *(v29 + 12) = v49;
      v42[0] = v51;
      v42[1] = v52;
      v42[2] = v53;
      v42[3] = v54;
      v42[4] = v55;
      v42[5] = v56;
      v43 = v57;
      sub_29E2243B4(&v51, v39);
      sub_29DE9DC98(v42, v39);
      v38 = sub_29DE9DE14(v40);
      (*((*v21 & *v22) + 0x120))(v38);

      sub_29E224334(&v51);
      sub_29E224254(v50);
      sub_29DE93B3C(v45);
      v20 += 48;
      if (v18 == v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

void sub_29E218CA4()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewContentHeightConstraint];
  if (v1)
  {
    if (!*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 40])
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    [v1 setConstant_];
  }

  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewToDateLabelConstraint];
  if (v2)
  {
    if (!*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 40])
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    [v2 setConstant_];
  }

  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_topToDateLabelSpacingConstraint];
  if (v3)
  {
    if (!*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 40])
    {
LABEL_19:
      __break(1u);
      return;
    }

    [v3 setConstant_];
  }

  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v4 setContentInset_];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  [v5 setNeedsLayout];
}

id sub_29E218DE8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel);
  }

  else
  {
    v4 = sub_29E218E48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E218E48()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontSizeToFitWidth_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v6 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E3015A0);
  v4 = sub_29E2C33A4();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

void sub_29E219080()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129.receiver = v1;
  v129.super_class = ObjectType;
  objc_msgSendSuper2(&v129, sel_viewDidLoad, v9);
  v12 = [v1 traitCollection];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v106 = v6;
  v107 = v4;
  v108 = v3;
  v109 = v11;
  v110 = v8;
  v111 = v7;
  [v13 bounds];
  v16 = v15;
  v18 = v17;

  sub_29E0C2594(v12, &v130, v16, v18);
  v124 = v134;
  v125 = v135;
  v126 = v136;
  v120 = v130;
  v121 = v131;
  v122 = v132;
  v123 = v133;

  v19 = type metadata accessor for LoggingCardCarouselCollectionViewFlowLayout();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_scaleFactor] = 0x3FC3333333333333;
  *&v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_scaleAlphaFactor] = 0x3FB999999999999ALL;
  *&v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_xScaleFactor] = 0x3FF0000000000000;
  v21 = &v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43LoggingCardCarouselCollectionViewFlowLayout_configuration];
  v22 = v132;
  v23 = v131;
  *v21 = v130;
  v24 = v133;
  v25 = v134;
  v26 = v135;
  *(v21 + 12) = v136;
  *(v21 + 4) = v25;
  *(v21 + 5) = v26;
  *(v21 + 2) = v22;
  *(v21 + 3) = v24;
  *(v21 + 1) = v23;
  sub_29DE9DC98(&v130, v137);
  v119.receiver = v20;
  v119.super_class = v19;
  v27 = objc_msgSendSuper2(&v119, sel_init);
  [v27 setScrollDirection_];
  [v27 setMinimumLineSpacing_];
  v28 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout] = v27;
  v29 = v27;

  [v29 setScrollDirection_];
  v30 = sub_29E219A84(v1);
  v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v32 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView] = v30;

  v33 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
  v34 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
  v127[4] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
  v127[5] = v34;
  v128 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
  v35 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
  v127[0] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
  v127[1] = v35;
  v36 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
  v127[2] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
  v127[3] = v36;
  v37 = v121;
  *v33 = v120;
  *(v33 + 1) = v37;
  v38 = v122;
  v39 = v123;
  v40 = v124;
  v41 = v125;
  *(v33 + 12) = v126;
  *(v33 + 4) = v40;
  *(v33 + 5) = v41;
  *(v33 + 2) = v38;
  *(v33 + 3) = v39;
  sub_29DE9DC98(&v130, v137);
  sub_29DE9DC98(&v130, v137);
  sub_29E224334(v127);
  sub_29E218998();
  sub_29DE9DE14(&v130);
  v42 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_recentSymptoms];
  v43 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mostRecentBasalBodyTemperature];
  v104 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_unhiddenDataTypes];
  sub_29E219BE0(v104, v42, v43);
  sub_29E219D18();
  v44 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  v45 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView;
  v46 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView] = v44;
  v47 = v44;

  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = *&v1[v45];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 clearColor];
  [v50 setBackgroundColor_];

  [*&v1[v45] setClipsToBounds_];
  v52 = *&v1[v45];
  v53 = sub_29E218DE8();
  [v52 addSubview_];

  v105 = v31;
  if (!*&v1[v31])
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [*&v1[v45] addSubview_];
  [*&v1[v45] addSubview_];
  v54 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v103 = v54;
  v55 = *&v1[v54];
  v56 = objc_allocWithZone(type metadata accessor for RelativeWeekdayWithMonthAndDayFormatter());
  v57 = v55;
  v58 = sub_29DFAB334(1);
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary] dayIndex];
  v59 = v109;
  sub_29E2C30D4();
  v60 = v106;
  sub_29E2C3194();
  v61 = sub_29E2BCB04();
  (*(v107 + 8))(v60, v108);
  v62 = [v58 stringFromDate_];

  if (!v62)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v62 = sub_29E2C33A4();
  }

  (*(v110 + 8))(v59, v111);
  [v57 setText_];

  v63 = v105;
  v64 = *&v1[v105];
  if (!v64)
  {
    goto LABEL_26;
  }

  [v64 setTranslatesAutoresizingMaskIntoConstraints_];
  v65 = *&v1[v63];
  if (!v65)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v66 = qword_2A1A60ED8;
  v67 = v65;
  if (v66 != -1)
  {
    swift_once();
  }

  v137[0] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301560);
  v68 = sub_29E2C33A4();

  [v67 setAccessibilityIdentifier_];

  v69 = [v1 view];
  if (v69)
  {
    v70 = v69;
    type metadata accessor for LoggingCardScrollableContainerView();
    v71 = swift_dynamicCastClass();
    if (v71)
    {
      v72 = v71;
      [*(v71 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView) addSubview_];
      *&v72[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_delegate + 8] = &off_2A24BFA48;
      swift_unknownObjectWeakAssign();
      [v72 setClipsToBounds_];
      v73 = *(v33 + 3);
      v114 = *(v33 + 2);
      v115 = v73;
      v74 = *(v33 + 5);
      v116 = *(v33 + 4);
      v117 = v74;
      v118 = *(v33 + 12);
      v75 = *(v33 + 1);
      v113[0] = *v33;
      v113[1] = v75;
      if (!*(&v114 + 1))
      {
LABEL_30:
        __break(1u);
        return;
      }

      v76 = *(v33 + 1);
      v137[0] = *v33;
      v137[1] = v76;
      v138 = *(v33 + 4);
      v139 = *(&v114 + 1);
      v77 = *(v33 + 4);
      v140 = *(v33 + 3);
      v141 = v77;
      v142 = *(v33 + 5);
      v143 = *(v33 + 12);
      v78 = objc_allocWithZone(type metadata accessor for LoggingCardCarouselFooterView());
      sub_29E2243B4(v113, &v112);
      v79 = v1;
      v80 = sub_29E1F3A6C(v137, v1, &off_2A24BFA58);
      sub_29E224334(v113);
      sub_29DEFA0CC(v80);
      v81 = sub_29E1F34E8();

      v82 = *&v79[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_cardProgressLabel];
      *&v79[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_cardProgressLabel] = v81;
    }

    else
    {
    }
  }

  sub_29E219EFC();
  v83 = *(v33 + 5);
  if (!v83)
  {
    goto LABEL_28;
  }

  v84 = *&v1[v103];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v85 = v83;
  v86 = v84;
  v87 = sub_29E2C3FD4();

  [v86 setFont_];
  v88 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_selectedDataType;
  v89 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_selectedDataType];
  v90 = v104;
  v91 = sub_29E21884C(v89, v104);
  v93 = v92;

  if ((v93 & 1) == 0)
  {
    v96 = *&v1[v88];
    v97 = sub_29E21884C(v96, v90);
    v99 = v98;

    if (v99)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (!__OFADD__(v97, 1))
    {
      sub_29E21A7F0(v97 + 1, *(v90 + 16));
      v95 = v91;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_24;
  }

  v94 = *(v90 + 16);
  if (v94)
  {
    sub_29E21A7F0(1, v94);
    v95 = 0;
LABEL_21:
    sub_29E21ABE0(v95);
    v101 = v100;
    sub_29DE9DE14(&v130);
    v102 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging];
    *v102 = v101;
    v102[8] = 0;
    return;
  }

  sub_29DE9DE14(&v130);
}

char *sub_29E219A84(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout];
  if (v1)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x29EDC79A8]) initWithFrame:v1 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
    [v3 setPrefetchingEnabled_];
    [v3 setDelegate_];
    [v3 setDataSource_];
    v4 = v3;
    [v4 setShowsHorizontalScrollIndicator_];
    [v4 setDecelerationRate_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setClipsToBounds_];
    [v6 setContentInset_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E219BE0(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x29EDCA190];
  if (v5)
  {
    v20 = MEMORY[0x29EDCA190];
    sub_29E181B74(0, v5, 0);
    v6 = v20;
    v10 = (a1 + 32);
    do
    {
      v18 = *v10;
      v11 = v18;
      sub_29E21B6B8(&v18, v4, a2, a3, v19);

      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29E181B74((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      v14 = (v6 + 48 * v13);
      v15 = v19[0];
      v16 = v19[2];
      v14[3] = v19[1];
      v14[4] = v16;
      v14[2] = v15;
      ++v10;
      --v5;
    }

    while (v5);
  }

  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards] = v6;
}

void sub_29E219D18()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for LoggingCardCarouselCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v2 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3250]];
  v4 = *(v0 + v1);
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v4 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3230]];
  v5 = *(v0 + v1);
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3228]];
  v6 = *(v0 + v1);
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v6 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3278]];
  v7 = *(v0 + v1);
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3248]];
  v8 = *(v0 + v1);
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v8 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3258]];
  v9 = *(v0 + v1);
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v9 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3260]];
  v10 = *(v0 + v1);
  if (!v10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v10 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3268]];
  v11 = *(v0 + v1);
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v11 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3270]];
  v12 = *(v0 + v1);
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:*MEMORY[0x29EDC3238]];
  v13 = *(v0 + v1);
  if (!v13)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v14 = *MEMORY[0x29EDC3220];

  [v13 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v14];
}

void sub_29E219EFC()
{
  v1 = [v0 view];
  if (!v1)
  {
    return;
  }

  v88 = v1;
  type metadata accessor for LoggingCardScrollableContainerView();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    v81 = v88;
    goto LABEL_18;
  }

  v3 = v2;
  v87 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = [v4 heightAnchor];
  v6 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
  if (!*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 40])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v5;
  v8 = [v5 constraintEqualToConstant_];

  v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewContentHeightConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewContentHeightConstraint] = v8;
  v10 = v8;

  v11 = *&v0[v87];
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = [v11 topAnchor];
  v13 = sub_29E218DE8();
  v14 = [v13 bottomAnchor];

  if (!*(v6 + 5))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v83 = v10;
  v15 = [v12 constraintEqualToAnchor:v14 constant:*v6];

  v16 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewToDateLabelConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewToDateLabelConstraint] = v15;
  v82 = v15;

  v86 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel;
  v17 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel] topAnchor];
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView;
  v19 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView] topAnchor];
  if (!*(v6 + 5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  v85 = v6;
  v21 = [v17 constraintEqualToAnchor:v19 constant:v6[11]];

  v22 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_topToDateLabelSpacingConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_topToDateLabelSpacingConstraint] = v21;
  v23 = v21;

  sub_29DF27598(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2D45F0;
  v25 = [*&v0[v18] topAnchor];
  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView;
  v27 = [*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView) topAnchor];
  v28 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v28;
  v29 = [*&v0[v18] leadingAnchor];
  v30 = [*(v3 + v26) leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v24 + 40) = v31;
  v32 = [*&v0[v18] trailingAnchor];
  v33 = [*(v3 + v26) trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v24 + 48) = v34;
  v35 = [*&v0[v18] bottomAnchor];
  v36 = [*(v3 + v26) bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v24 + 56) = v37;
  *(v24 + 64) = v23;
  v38 = *&v0[v86];
  v39 = v23;
  v40 = [v38 centerXAnchor];
  v41 = [*&v0[v18] centerXAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 72) = v42;
  v43 = *&v0[v87];
  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = [v43 leadingAnchor];
  v45 = [*&v0[v18] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v24 + 80) = v46;
  v47 = *&v0[v87];
  if (!v47)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = [v47 trailingAnchor];
  v49 = [*&v0[v18] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v24 + 88) = v50;
  v51 = *&v0[v87];
  if (!v51)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v52 = [v51 topAnchor];
  v53 = [*&v0[v86] bottomAnchor];
  if (!*(v85 + 5))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v54 = v53;
  v55 = [v52 constraintEqualToAnchor:v53 constant:*v85];

  *(v24 + 96) = v55;
  *(v24 + 104) = v83;
  v56 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_bottomSpacer;
  v57 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_bottomSpacer];
  v84 = v83;
  v58 = [v57 topAnchor];
  v59 = *&v0[v87];
  if (!v59)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor_];

  *(v24 + 112) = v61;
  v62 = [*&v0[v56] leadingAnchor];
  v63 = [*&v0[v18] leadingAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v24 + 120) = v64;
  v65 = [*&v0[v56] trailingAnchor];
  v66 = [*&v0[v18] trailingAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v24 + 128) = v67;
  v68 = [*&v0[v56] bottomAnchor];
  v69 = [*&v0[v18] bottomAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v24 + 136) = v70;
  v71 = [*&v0[v86] leadingAnchor];
  v72 = [*&v0[v18] leadingAnchor];
  if (!*(v85 + 5))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v73 = v72;
  v74 = [v71 constraintEqualToAnchor:v72 constant:v85[12]];

  *(v24 + 144) = v74;
  v75 = [*&v0[v86] trailingAnchor];
  v76 = [*&v0[v18] trailingAnchor];
  if (!*(v85 + 5))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v77 = v76;
  v78 = objc_opt_self();
  v79 = [v75 constraintEqualToAnchor:v77 constant:-v85[12]];

  *(v24 + 152) = v79;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v80 = sub_29E2C3604();

  [v78 activateConstraints_];

  v81 = v80;
LABEL_18:
}

void sub_29E21A7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v32 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v31 - v10;
  v12 = objc_opt_self();
  v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v14 = [v12 localizedStringFromNumber:v13 numberStyle:0];

  v33 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v16 = v15;

  v17 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v18 = [v12 localizedStringFromNumber:v17 numberStyle:0];

  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v21 = v20;

  v22 = *(v35 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_cardProgressLabel);
  if (v22)
  {
    v35 = v16;
    v23 = v22;
    sub_29E2C3314();
    v24 = v32;
    (*(v32 + 16))(v8, v11, v6);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v25 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v24 + 8))(v11, v6);
    sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29E2CD7A0;
    v27 = MEMORY[0x29EDC99B0];
    *(v26 + 56) = MEMORY[0x29EDC99B0];
    v28 = sub_29DEB1A44();
    v29 = v35;
    *(v26 + 32) = v33;
    *(v26 + 40) = v29;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 64) = v28;
    *(v26 + 72) = v19;
    *(v26 + 80) = v21;
    sub_29E2C3404();

    v30 = sub_29E2C33A4();

    [v23 setText_];
  }

  else
  {
  }
}

void sub_29E21ABE0(uint64_t a1)
{
  v3 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v4 = sub_29E2C33A4();
  v5 = [v3 BOOLForKey_];

  v6 = *(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards) + 16);
  if (v6 >= 3 && (v5 & 1) == 0)
  {
    if (!__OFADD__(a1 % v6, v6))
    {
      return;
    }

    __break(1u);
  }

  if (!v6)
  {
    __break(1u);
  }
}

void sub_29E21ACFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C2B34();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E2C2B54();
  v41 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47.receiver = v1;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_viewDidLayoutSubviews, v8);
  sub_29E2C04B4();
  v11 = v1;
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v6;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136446466;
    v17 = sub_29E2C4AE4();
    v19 = sub_29DFAA104(v17, v18, aBlock);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    LODWORD(v19) = v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_hasCollectionViewFocusedInitialCard];

    *(v14 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] viewDidLayoutSubviews hasCollectionViewFocusedInitialCard: %{BOOL}d", v14, 0x12u);
    sub_29DE93B3C(v16);
    MEMORY[0x29ED82140](v16, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);

    (*(v7 + 8))(v10, v39);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v20 = [v11 view];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for LoggingCardScrollableContainerView();
    if (swift_dynamicCastClass())
    {
      sub_29DEF9F40();
    }
  }

  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_hasCollectionViewFocusedInitialCard;
  if ((v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_hasCollectionViewFocusedInitialCard] & 1) == 0)
  {
    v37 = *&v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView];
    if (v37)
    {
      [v37 layoutIfNeeded];
      sub_29E21B2CC(0);
      v11[v22] = 1;
      return;
    }

    goto LABEL_18;
  }

  v23 = [v11 view];
  if (!v23)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;

  v29 = &v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_previousSize];
  if ((*&v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_previousSize] != v26 || v29[1] != v28) && (v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8] & 1) == 0)
  {
    sub_29DE9408C(0, &qword_2A1A626C0);
    v30 = sub_29E2C3CF4();
    v31 = swift_allocObject();
    *(v31 + 16) = v11;
    aBlock[4] = sub_29E2242C4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF49BB8;
    aBlock[3] = &unk_2A24BFBF8;
    v32 = _Block_copy(aBlock);
    v33 = v11;

    v34 = v40;
    sub_29E2C2B44();
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29E2242EC(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
    sub_29E22418C(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29DF4B408();
    v35 = v42;
    v36 = v45;
    sub_29E2C43F4();
    MEMORY[0x29ED804D0](0, v34, v35, v32);
    _Block_release(v32);

    (*(v44 + 8))(v35, v36);
    (*(v41 + 8))(v34, v43);
  }

  *v29 = v26;
  v29[1] = v28;
}

void sub_29E21B2CC(char a1)
{
  v2 = v1;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v9 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging);
  v11 = v9;
  MEMORY[0x29ED79720](v10, 0);
  v12 = sub_29E2BCF24();
  (*(v5 + 8))(v7, v4);
  [v11 scrollToItemAtIndexPath:v12 atScrollPosition:16 animated:a1 & 1];

  v13 = *(v2 + v8);
  if (v13)
  {
    [v13 contentOffset];
    v14 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_contentOffsetXBeforeDragging;
    *v14 = v15;
    *(v14 + 8) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_29E21B484()
{
  v1 = sub_29E2BCFB4();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards);
  v5 = *(v4 + 16);
  sub_29E2BF404();
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      sub_29E2241F0(v7, v22);
      v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v10 = v9;
      if (v8 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v10 == v11)
      {
        break;
      }

      v13 = sub_29E2C4914();

      sub_29E224254(v22);
      if (v13)
      {
        goto LABEL_12;
      }

      ++v6;
      v7 += 48;
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }

    sub_29E224254(v22);
LABEL_12:

    sub_29E21ABE0(v6);
    v15 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging;
    *v15 = v14;
    *(v15 + 8) = 0;
    v16 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
    if (v16)
    {
      v17 = v14;
      v18 = v16;
      MEMORY[0x29ED79740](v17, 0);
      v19 = sub_29E2BCF24();
      (*(v20 + 8))(v3, v21);
      [v18 scrollToItemAtIndexPath:v19 atScrollPosition:16 animated:1];

      return;
    }

LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

id sub_29E21B6B8@<X0>(void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char **a5@<X8>)
{
  v300 = a4;
  v302 = a5;
  v9 = &v307;
  v10 = sub_29E2BCFB4();
  v301 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v305 = &v297 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v304 = &v297 - v13;
  v14 = *a1;
  v15 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v17 = v16;
  v322 = v14;
  v19 = v15 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v17 == v18;
  v303 = v10;
  if (v19)
  {
  }

  else
  {
    v20 = sub_29E2C4914();

    if ((v20 & 1) == 0)
    {
      v21 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v23 = v22;
      v25 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v26 = v21;
      v27 = v24;
      if (v26 == v25 && v23 == v24)
      {
      }

      else
      {
        v29 = sub_29E2C4914();

        if ((v29 & 1) == 0)
        {
          v30 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v32 = v31;
          if (v30 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v32 == v33)
          {

LABEL_66:
            v81 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v82 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v82;
            v83 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v83;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v84 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v84;
            if (*(&v309 + 1))
            {
              v85 = *(v81 + 1);
              v314 = *v81;
              v315 = v85;
              v316 = *(v81 + 4);
              v317 = *(&v309 + 1);
              v86 = *(v81 + 4);
              v318 = *(v81 + 3);
              v319 = v86;
              v320 = *(v81 + 5);
              v321 = *(v81 + 12);
              v87 = objc_allocWithZone(type metadata accessor for MultiSelectLoggingCardViewController());
              *&v87[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = 0;
              swift_unknownObjectWeakInit();
              v88 = &v87[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_reuseIdentifier];
              *v88 = 1819043139;
              *(v88 + 1) = 0xE400000000000000;
              *&v87[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader] = 0;
              v89 = MEMORY[0x29EDCA1A0];
              *&v87[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = MEMORY[0x29EDCA1A0];
              v90 = v322;
              sub_29E2243B4(&v307, v306);
              v300 = v90;
              v91 = sub_29DEBF0A0(1, 2, v90, &v314);
              v92 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] bleedingAfterPregnancyFlow];
              v299 = type metadata accessor for BleedingFlowLoggingCardDataSource();
              v93 = swift_allocObject();
              *(v93 + 3) = 0;
              swift_unknownObjectWeakInit();
              *(v93 + 4) = v92;
              *(v93 + 5) = 2;
              *(v93 + 3) = &off_2A24BFA28;
              swift_unknownObjectWeakAssign();
              *&v91[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = &off_2A24B82E0;
              swift_unknownObjectWeakAssign();
              v306[0] = v89;
              v94 = (v301 + 8);
              v95 = *(v93 + 4);
              if (byte_2A24AFB50)
              {
                v96 = v305;
                if (v95 <= 2)
                {
                  if (v95 >= 3)
                  {
                    goto LABEL_252;
                  }

                  goto LABEL_114;
                }

                switch(v95)
                {
                  case 3:
                    v101 = 0;
                    v108 = 1;
                    break;
                  case 4:
                    v101 = 1;
                    v108 = 1;
                    break;
                  case 5:
                    v101 = 2;
                    v108 = 1;
                    break;
                  default:
                    goto LABEL_252;
                }
              }

              else
              {
                v96 = v305;
                if ((v95 - 2) >= 4)
                {
                  if (!v95)
                  {
LABEL_114:
                    v128 = *(v93 + 4);
                    if ((byte_2A24AFB51 & 1) == 0)
                    {
                      if ((v128 - 2) >= 4)
                      {
                        if (!v128)
                        {
LABEL_137:
                          v136 = *&v91[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths];
                          *&v91[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = v306[0];
                          sub_29DF1EADC(v136);

                          v76 = v302;
                          *v302 = v91;
                          v76[1] = v93;
                          goto LABEL_60;
                        }

                        if (v128 != 1)
                        {
                          goto LABEL_252;
                        }

                        v129 = 1;
                        v130 = 0;
                      }

                      else
                      {
                        v129 = 0;
                        v130 = 0;
                      }

LABEL_136:
                      MEMORY[0x29ED79720](v129, v130);
                      v135 = v304;
                      sub_29E1467F4(v304, v96);
                      (*v94)(v135, v303);
                      goto LABEL_137;
                    }

                    if (v128 <= 2)
                    {
                      if (v128 >= 3)
                      {
                        goto LABEL_252;
                      }

                      goto LABEL_137;
                    }

                    switch(v128)
                    {
                      case 3:
                        v129 = 0;
                        goto LABEL_135;
                      case 4:
                        v129 = 1;
LABEL_135:
                        v130 = 1;
                        goto LABEL_136;
                      case 5:
                        v129 = 2;
                        goto LABEL_135;
                    }

                    while (1)
                    {
LABEL_252:
                      sub_29E2C4724();
                      __break(1u);
LABEL_253:
                      __break(1u);
LABEL_254:
                      __break(1u);
LABEL_255:
                      __break(1u);
LABEL_256:
                      __break(1u);
                    }
                  }

                  if (v95 != 1)
                  {
                    goto LABEL_252;
                  }

                  v101 = 1;
                }

                else
                {
                  v101 = 0;
                }

                v108 = 0;
              }

              MEMORY[0x29ED79720](v101, v108);
              v127 = v304;
              sub_29E1467F4(v304, v96);
              (*v94)(v127, v303);
              goto LABEL_114;
            }

            __break(1u);
            goto LABEL_244;
          }

          v80 = sub_29E2C4914();

          if (v80)
          {
            goto LABEL_66;
          }

          v102 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v104 = v103;
          if (v102 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v104 == v105)
          {

LABEL_106:
            v299 = v5;
            v110 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v111 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v111;
            v112 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v112;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v113 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v113;
            if (!*(&v309 + 1))
            {
LABEL_244:
              __break(1u);
              goto LABEL_245;
            }

            v114 = *(v110 + 1);
            v314 = *v110;
            v315 = v114;
            v316 = *(v110 + 4);
            v317 = *(&v309 + 1);
            v115 = *(v110 + 4);
            v318 = *(v110 + 3);
            v319 = v115;
            v320 = *(v110 + 5);
            v321 = *(v110 + 12);
            v116 = objc_allocWithZone(type metadata accessor for MultiSelectLoggingCardViewController());
            *&v116[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v117 = &v116[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_reuseIdentifier];
            *v117 = 1819043139;
            *(v117 + 1) = 0xE400000000000000;
            *&v116[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader] = 0;
            *&v116[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = MEMORY[0x29EDCA1A0];
            v23 = v322;
            sub_29E2243B4(&v307, v306);
            v118 = sub_29DEBF0A0(1, 3, v23, &v314);
            v119 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] symptoms];
            v120 = type metadata accessor for SymptomsLoggingCardDataSource();
            v121 = swift_allocObject();
            v122 = a2;
            v123 = sub_29E223960(v119, a3, v122, v121);

            *&v118[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = &off_2A24BAB00;
            swift_unknownObjectWeakAssign();
            v124 = sub_29E0EC98C();
            v125 = *&v118[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths];
            *&v118[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = v124;
            sub_29DF1EADC(v125);

            v126 = v302;
            *v302 = v118;
            v126[1] = v123;
            v126[4] = v120;
LABEL_108:
            v126[5] = v23;
            return v322;
          }

          v109 = sub_29E2C4914();

          if (v109)
          {
            goto LABEL_106;
          }

          v131 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v133 = v132;
          if (v131 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v133 == v134)
          {

LABEL_139:
            v138 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v139 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v139;
            v140 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v140;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v141 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v141;
            if (!*(&v309 + 1))
            {
LABEL_245:
              __break(1u);
              goto LABEL_246;
            }

            v142 = *(v138 + 1);
            v314 = *v138;
            v315 = v142;
            v316 = *(v138 + 4);
            v317 = *(&v309 + 1);
            v143 = *(v138 + 4);
            v318 = *(v138 + 3);
            v319 = v143;
            v320 = *(v138 + 5);
            v321 = *(v138 + 12);
            v144 = objc_allocWithZone(type metadata accessor for SingleSelectLoggingCardViewController());
            v145 = &v144[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex];
            *v145 = 0;
            v145[8] = 1;
            *&v144[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v146 = v322;
            sub_29E2243B4(&v307, v306);
            v147 = sub_29DEBF0A0(1, 3, v146, &v314);
            v148 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] intermenstrualBleeding];
            v149 = type metadata accessor for IntermenstrualBleedingLoggingCardDataSource();
            v150 = swift_allocObject();
            *(v150 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v150 + 32) = v148;
            *(v150 + 24) = &off_2A24BF9C0;
            swift_unknownObjectWeakAssign();
            *&v147[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = &off_2A24B53B8;
            swift_unknownObjectWeakAssign();
            v151 = (*(v150 + 32) & 1) == 0;
            v152 = 0;
LABEL_165:
            sub_29DE9CC20(v152, v151);
            v185 = v302;
            *v302 = v147;
            v185[1] = v150;
            v185[4] = v149;
            v185[5] = v146;
            return v322;
          }

          v137 = sub_29E2C4914();

          if (v137)
          {
            goto LABEL_139;
          }

          v153 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v155 = v154;
          if (v153 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v155 == v156)
          {

            goto LABEL_145;
          }

          v157 = sub_29E2C4914();

          if (v157)
          {
LABEL_145:
            v158 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v159 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v159;
            v160 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v160;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v161 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v161;
            if (!*(&v309 + 1))
            {
LABEL_246:
              __break(1u);
              goto LABEL_252;
            }

            v162 = *(v158 + 1);
            v314 = *v158;
            v315 = v162;
            v316 = *(v158 + 4);
            v317 = *(&v309 + 1);
            v163 = *(v158 + 4);
            v318 = *(v158 + 3);
            v319 = v163;
            v320 = *(v158 + 5);
            v321 = *(v158 + 12);
            v164 = objc_allocWithZone(type metadata accessor for SingleSelectLoggingCardViewController());
            v165 = &v164[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex];
            *v165 = 0;
            v166 = 1;
            v165[8] = 1;
            *&v164[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v146 = v322;
            sub_29E2243B4(&v307, v306);
            v147 = sub_29DEBF0A0(1, 3, v146, &v314);
            v167 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] ovulationTestResult];
            v149 = type metadata accessor for OvulationTestResultLoggingCardDataSource();
            v150 = swift_allocObject();
            *(v150 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v150 + 24) = &off_2A24BFA18;
            *(v150 + 32) = v167;
            swift_unknownObjectWeakAssign();
            *&v147[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = &off_2A24B94B8;
            swift_unknownObjectWeakAssign();
            v168 = *(v150 + 32);
            if (v168)
            {
              if (qword_2A24ADDD8 == v168)
              {
LABEL_148:
                v152 = 0;
                v166 = 0;
LABEL_164:
                v151 = v166;
                goto LABEL_165;
              }

              if (qword_2A24ADDE0 != v168)
              {
                if (qword_2A24ADDE8 == v168)
                {
                  v166 = 0;
                  v152 = 2;
                }

                else
                {
                  v166 = qword_2A24ADDF0 != v168;
                  if (qword_2A24ADDF0 == v168)
                  {
                    v152 = 3;
                  }

                  else
                  {
                    v152 = 0;
                  }
                }

                goto LABEL_164;
              }

LABEL_153:
              v166 = 0;
              v152 = 1;
              goto LABEL_164;
            }

            goto LABEL_163;
          }

          v169 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v171 = v170;
          if (v169 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v171 == v172)
          {

            goto LABEL_155;
          }

          v173 = sub_29E2C4914();

          if (v173)
          {
LABEL_155:
            v174 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v175 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v175;
            v176 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v176;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v177 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v177;
            if (!*(&v309 + 1))
            {
              __break(1u);
              goto LABEL_252;
            }

            v178 = *(v174 + 1);
            v314 = *v174;
            v315 = v178;
            v316 = *(v174 + 4);
            v317 = *(&v309 + 1);
            v179 = *(v174 + 4);
            v318 = *(v174 + 3);
            v319 = v179;
            v320 = *(v174 + 5);
            v321 = *(v174 + 12);
            v180 = objc_allocWithZone(type metadata accessor for SingleSelectLoggingCardViewController());
            v181 = &v180[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex];
            *v181 = 0;
            v166 = 1;
            v181[8] = 1;
            *&v180[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v146 = v322;
            sub_29E2243B4(&v307, v306);
            v147 = sub_29DEBF0A0(1, 3, v146, &v314);
            v182 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] pregnancyTestResult];
            v149 = type metadata accessor for PregnancyTestResultLoggingCardDataSource();
            v150 = swift_allocObject();
            *(v150 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v150 + 24) = &off_2A24BFA00;
            *(v150 + 32) = v182;
            swift_unknownObjectWeakAssign();
            *&v147[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = &off_2A24BC560;
            swift_unknownObjectWeakAssign();
            v183 = *(v150 + 32);
            if (v183)
            {
              if (qword_2A24ADE18 == v183)
              {
                goto LABEL_148;
              }

              if (qword_2A24ADE20 != v183)
              {
                v19 = qword_2A24ADE28 == v183;
                v184 = qword_2A24ADE28 == v183;
                v166 = !v19;
                v152 = 2 * v184;
                goto LABEL_164;
              }

              goto LABEL_153;
            }

LABEL_163:
            v152 = 0;
            goto LABEL_164;
          }

          a3 = a2;
          v299 = v5;
          v186 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v188 = v187;
          if (v186 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v188 == v189)
          {

LABEL_175:
            v191 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v192 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v192;
            v193 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v193;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v194 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v194;
            if (!*(&v309 + 1))
            {
              __break(1u);
              goto LABEL_252;
            }

            v195 = *(v191 + 1);
            v314 = *v191;
            v315 = v195;
            v316 = *(v191 + 4);
            v317 = *(&v309 + 1);
            v196 = *(v191 + 4);
            v318 = *(v191 + 3);
            v319 = v196;
            v320 = *(v191 + 5);
            v321 = *(v191 + 12);
            v197 = objc_allocWithZone(type metadata accessor for SingleSelectLoggingCardViewController());
            v198 = &v197[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex];
            *v198 = 0;
            v199 = 1;
            v198[8] = 1;
            *&v197[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v23 = v322;
            sub_29E2243B4(&v307, v306);
            v200 = sub_29DEBF0A0(1, 3, v23, &v314);
            v201 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] progesteroneTestResult];
            v202 = type metadata accessor for ProgesteroneTestResultLoggingCardDataSource();
            v203 = swift_allocObject();
            *(v203 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v203 + 24) = &off_2A24BF9F0;
            *(v203 + 32) = v201;
            swift_unknownObjectWeakAssign();
            *&v200[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = &off_2A24B05A0;
            swift_unknownObjectWeakAssign();
            v204 = *(v203 + 32);
            if (v204)
            {
              if (qword_2A24ADCF8 == v204)
              {
                v205 = 0;
                v199 = 0;
              }

              else if (qword_2A24ADD00 == v204)
              {
                v199 = 0;
                v205 = 1;
              }

              else
              {
                v19 = qword_2A24ADD08 == v204;
                v228 = qword_2A24ADD08 == v204;
                v199 = !v19;
                v205 = 2 * v228;
              }
            }

            else
            {
              v205 = 0;
            }

            sub_29DE9CC20(v205, v199);
            v126 = v302;
            *v302 = v200;
            v126[1] = v203;
            v126[4] = v202;
            goto LABEL_108;
          }

          v190 = sub_29E2C4914();

          if (v190)
          {
            goto LABEL_175;
          }

          v206 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v208 = v207;
          if (v206 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v208 == v209)
          {

            goto LABEL_186;
          }

          v210 = sub_29E2C4914();

          if (v210)
          {
LABEL_186:
            v211 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v212 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v212;
            v213 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v213;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v214 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v214;
            if (!*(&v309 + 1))
            {
              goto LABEL_253;
            }

            v215 = *(v211 + 1);
            v314 = *v211;
            v315 = v215;
            v316 = *(v211 + 4);
            v317 = *(&v309 + 1);
            v216 = *(v211 + 4);
            v318 = *(v211 + 3);
            v319 = v216;
            v320 = *(v211 + 5);
            v321 = *(v211 + 12);
            v217 = objc_allocWithZone(type metadata accessor for MultiSelectLoggingCardViewController());
            *&v217[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v218 = &v217[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_reuseIdentifier];
            *v218 = 1819043139;
            *(v218 + 1) = 0xE400000000000000;
            *&v217[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader] = 0;
            v219 = MEMORY[0x29EDCA1A0];
            *&v217[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = MEMORY[0x29EDCA1A0];
            v220 = v322;
            sub_29E2243B4(&v307, v306);
            v300 = v220;
            v221 = sub_29DEBF0A0(1, 3, v220, &v314);
            v222 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] sexualActivity];
            v223 = type metadata accessor for SexualActivityLoggingCardDataSource();
            v224 = swift_allocObject();
            *(v224 + 24) = 0;
            swift_unknownObjectWeakInit();
            *(v224 + 24) = &off_2A24BF9A0;
            *(v224 + 32) = v222;
            swift_unknownObjectWeakAssign();
            *&v221[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = &off_2A24B4460;
            swift_unknownObjectWeakAssign();
            v306[0] = v219;
            v225 = (v301 + 8);
            v226 = *(v224 + 32);
            if (byte_2A24AFB78)
            {
              if (v226 == 1)
              {
                v227 = 0;
              }

              else
              {
                if (v226 != 3)
                {
                  goto LABEL_209;
                }

                v227 = 1;
              }

              v229 = 1;
            }

            else
            {
              if (!v226)
              {
                goto LABEL_209;
              }

              v227 = 0;
              v229 = 0;
            }

            MEMORY[0x29ED79720](v227, v229);
            v246 = v304;
            sub_29E1467F4(v304, v305);
            (*v225)(v246, v10);
LABEL_209:
            v247 = *(v224 + 32);
            if (byte_2A24AFB79)
            {
              if (v247 == 1)
              {
                v248 = 0;
                goto LABEL_216;
              }

              if (v247 == 3)
              {
                v248 = 1;
LABEL_216:
                v249 = 1;
                goto LABEL_217;
              }
            }

            else if (v247)
            {
              v248 = 0;
              v249 = 0;
LABEL_217:
              MEMORY[0x29ED79720](v248, v249);
              v250 = v304;
              sub_29E1467F4(v304, v305);
              (*v225)(v250, v10);
            }

            v251 = *&v221[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths];
            *&v221[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = v306[0];
            sub_29DF1EADC(v251);

            v252 = v302;
            *v302 = v221;
            v252[1] = v224;
            v252[4] = v223;
            v253 = v300;
LABEL_219:
            v252[5] = v253;
            return v322;
          }

          v230 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v232 = v231;
          if (v230 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v232 == v233)
          {

LABEL_202:
            v235 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v236 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
            v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
            v310 = v236;
            v237 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
            v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
            v312 = v237;
            v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
            v238 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
            v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
            v308 = v238;
            if (!*(&v309 + 1))
            {
              goto LABEL_254;
            }

            v239 = *(v235 + 1);
            v314 = *v235;
            v315 = v239;
            v316 = *(v235 + 4);
            v317 = *(&v309 + 1);
            v240 = *(v235 + 4);
            v318 = *(v235 + 3);
            v319 = v240;
            v320 = *(v235 + 5);
            v321 = *(v235 + 12);
            v241 = objc_allocWithZone(type metadata accessor for SingleSelectLoggingCardViewController());
            v242 = &v241[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex];
            *v242 = 0;
            v243 = 1;
            v242[8] = 1;
            *&v241[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            v23 = v322;
            sub_29E2243B4(&v307, v306);
            v27 = sub_29DEBF0A0(1, 3, v23, &v314);
            v244 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] cervicalMucusQuality];
            a3 = type metadata accessor for CervicalMucusQualityLoggingCardDataSource();
            v9 = swift_allocObject();
            *(v9 + 3) = 0;
            swift_unknownObjectWeakInit();
            *(v9 + 3) = &off_2A24BF9E0;
            *(v9 + 4) = v244;
            swift_unknownObjectWeakAssign();
            *&v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_dataSource + 8] = &off_2A24B65A8;
            swift_unknownObjectWeakAssign();
            v53 = *(v9 + 4);
            if (!v53)
            {
              v245 = 0;
              goto LABEL_242;
            }

            if (qword_2A24ADE50 == v53)
            {
              v245 = 0;
              v243 = 0;
LABEL_242:
              sub_29DE9CC20(v245, v243);
              v126 = v302;
              *v302 = v27;
              v126[1] = v9;
              v126[4] = a3;
              goto LABEL_108;
            }

            if (qword_2A24ADE58 == v53)
            {
              v243 = 0;
              v245 = 1;
              goto LABEL_242;
            }

            if (qword_2A24ADE60 == v53)
            {
              v243 = 0;
              v245 = 2;
              goto LABEL_242;
            }

            if (qword_2A24ADE68 == v53)
            {
              v243 = 0;
              v245 = 3;
              goto LABEL_242;
            }

LABEL_238:
            v19 = qword_2A24ADE70 == v53;
            v296 = qword_2A24ADE70 == v53;
            v243 = !v19;
            v245 = 4 * v296;
            goto LABEL_242;
          }

          v234 = sub_29E2C4914();

          if (v234)
          {
            goto LABEL_202;
          }

          v254 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v256 = v255;
          if (v254 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v256 == v257)
          {

LABEL_228:
            v259 = a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration;
            v260 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48);
            v309 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32);
            v310 = v260;
            v261 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80);
            v311 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64);
            v312 = v261;
            v313 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96);
            v262 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16);
            v307 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration);
            v308 = v262;
            if (!*(&v309 + 1))
            {
              goto LABEL_255;
            }

            v263 = *(v259 + 16);
            v314 = *v259;
            v315 = v263;
            v316 = *(v259 + 32);
            v317 = *(&v309 + 1);
            v264 = *(v259 + 64);
            v318 = *(v259 + 48);
            v319 = v264;
            v320 = *(v259 + 80);
            v321 = *(v259 + 96);
            v265 = objc_allocWithZone(type metadata accessor for PickerSelectLoggingCardViewController());
            *&v265[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_dataSource + 8] = 0;
            swift_unknownObjectWeakInit();
            *&v265[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController____lazy_storage___cell] = 0;
            v266 = &v265[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex];
            *v266 = 0;
            v266[8] = 1;
            v267 = v322;
            sub_29E2243B4(&v307, v306);
            v298 = v267;
            v305 = sub_29DEBF0A0(1, 3, v267, &v314);
            v304 = [*(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary) basalBodyTemperature];
            v268 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_userPreferredUnit);
            v297 = type metadata accessor for BasalBodyTemperatureLoggingCardDataSource();
            v269 = swift_allocObject();
            *(v269 + 3) = 0;
            swift_unknownObjectWeakInit();
            *(v269 + 4) = 0;
            v270 = objc_opt_self();
            v301 = v270;
            v271 = objc_opt_self();
            v303 = v268;
            v272 = [v271 degreeCelsiusUnit];
            v273 = objc_opt_self();
            v274 = [v273 quantityWithUnit:v272 doubleValue:35.5];

            v275 = [v271 degreeCelsiusUnit];
            v276 = [v273 quantityWithUnit:v275 doubleValue:38.0];

            v277 = [v270 inclusiveRangeWithMinimum:v274 maximum:v276];
            *(v269 + 5) = v277;
            v278 = [v271 degreeCelsiusUnit];
            v279 = [v273 quantityWithUnit:v278 doubleValue:35.0];

            v280 = [v271 degreeCelsiusUnit];
            v281 = [v273 quantityWithUnit:v280 doubleValue:40.0];

            v282 = [v301 inclusiveRangeWithMinimum:v279 maximum:v281];
            *(v269 + 6) = v282;
            v283 = [v271 degreeFahrenheitUnit];
            v284 = [v273 quantityWithUnit:v283 doubleValue:98.6];

            *(v269 + 7) = v284;
            v285 = [objc_allocWithZone(MEMORY[0x29EDBA030]) init];
            [v285 setUnitStyle_];
            [v285 setUnitOptions_];
            v286 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
            [v286 setMaximumFractionDigits_];
            [v286 setMinimumFractionDigits_];
            [v285 setNumberFormatter_];

            *(v269 + 9) = v285;
            *(v269 + 10) = 0;
            v287 = *(v269 + 4);
            *(v269 + 4) = v304;

            if (v300)
            {
              v288 = *(v269 + 7);
              v289 = v300;
              *(v269 + 7) = v300;
              v290 = v289;
            }

            *(v269 + 8) = v303;
            *(v269 + 3) = &off_2A24BF9B0;
            swift_unknownObjectWeakAssign();
            v291 = v305;
            *&v305[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_dataSource + 8] = &off_2A24BF658;
            swift_unknownObjectWeakAssign();
            v292 = sub_29E20A5C0();
            v293 = &v291[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37PickerSelectLoggingCardViewController_pickedIndex];
            *v293 = v292;
            v293[8] = 0;
            v294 = sub_29E1B6D04();
            v295 = *&v294[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23PickerSelectLoggingCell_picker];

            if (v293[8])
            {
              goto LABEL_256;
            }

            [v295 selectRow:*v293 inComponent:0 animated:0];

            v252 = v302;
            *v302 = v305;
            v252[1] = v269;
            v253 = v298;
            v252[4] = v297;
            goto LABEL_219;
          }

LABEL_227:
          v258 = sub_29E2C4914();

          if ((v258 & 1) == 0)
          {
            goto LABEL_252;
          }

          goto LABEL_228;
        }
      }

      v53 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
      v54 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
      v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
      v310 = v54;
      v55 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
      v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
      v312 = v55;
      v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
      v56 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
      v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
      v308 = v56;
      if (!*(&v309 + 1))
      {
        __break(1u);
        goto LABEL_238;
      }

      v57 = *(v53 + 1);
      v314 = *v53;
      v315 = v57;
      v316 = *(v53 + 4);
      v317 = *(&v309 + 1);
      v58 = *(v53 + 4);
      v318 = *(v53 + 3);
      v319 = v58;
      v320 = *(v53 + 5);
      v321 = *(v53 + 12);
      v59 = objc_allocWithZone(type metadata accessor for MultiSelectLoggingCardViewController());
      *&v59[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = 0;
      swift_unknownObjectWeakInit();
      v60 = &v59[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_reuseIdentifier];
      *v60 = 1819043139;
      *(v60 + 1) = 0xE400000000000000;
      *&v59[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader] = 0;
      v61 = MEMORY[0x29EDCA1A0];
      *&v59[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = MEMORY[0x29EDCA1A0];
      v62 = v322;
      sub_29E2243B4(&v307, v306);
      v300 = v62;
      v63 = sub_29DEBF0A0(1, 1, v62, &v314);
      v64 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] bleedingInPregnancyFlow];
      v299 = type metadata accessor for BleedingFlowLoggingCardDataSource();
      v65 = swift_allocObject();
      *(v65 + 3) = 0;
      swift_unknownObjectWeakInit();
      *(v65 + 4) = v64;
      *(v65 + 5) = 1;
      *(v65 + 3) = &off_2A24BFA28;
      swift_unknownObjectWeakAssign();
      *&v63[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = &off_2A24B82E0;
      swift_unknownObjectWeakAssign();
      v306[0] = v61;
      v66 = (v301 + 8);
      v67 = *(v65 + 4);
      if (byte_2A24AFB28)
      {
        v68 = v305;
        if (v67 <= 2)
        {
          if (v67 >= 3)
          {
            goto LABEL_252;
          }

LABEL_76:
          v98 = *(v65 + 4);
          if (byte_2A24AFB29)
          {
            if (v98 <= 2)
            {
              if (v98 >= 3)
              {
                goto LABEL_252;
              }

              goto LABEL_101;
            }

            switch(v98)
            {
              case 3:
                v99 = 0;
                break;
              case 4:
                v99 = 1;
                break;
              case 5:
                v99 = 2;
                break;
              default:
                goto LABEL_252;
            }

            v100 = 1;
          }

          else if ((v98 - 2) >= 4)
          {
            if (!v98)
            {
LABEL_101:
              v107 = *&v63[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths];
              *&v63[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = v306[0];
              sub_29DF1EADC(v107);

              v76 = v302;
              *v302 = v63;
              v76[1] = v65;
              goto LABEL_60;
            }

            if (v98 != 1)
            {
              goto LABEL_252;
            }

            v99 = 1;
            v100 = 0;
          }

          else
          {
            v99 = 0;
            v100 = 0;
          }

          MEMORY[0x29ED79720](v99, v100);
          v106 = v304;
          sub_29E1467F4(v304, v68);
          (*v66)(v106, v303);
          goto LABEL_101;
        }

        switch(v67)
        {
          case 3:
            v70 = 0;
            v79 = 1;
            break;
          case 4:
            v70 = 1;
            v79 = 1;
            break;
          case 5:
            v70 = 2;
            v79 = 1;
            break;
          default:
            goto LABEL_252;
        }
      }

      else
      {
        v68 = v305;
        if ((v67 - 2) >= 4)
        {
          if (!v67)
          {
            goto LABEL_76;
          }

          if (v67 != 1)
          {
            goto LABEL_252;
          }

          v70 = 1;
        }

        else
        {
          v70 = 0;
        }

        v79 = 0;
      }

      MEMORY[0x29ED79720](v70, v79);
      v97 = v304;
      sub_29E1467F4(v304, v68);
      (*v66)(v97, v303);
      goto LABEL_76;
    }
  }

  v34 = &a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
  v35 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
  v309 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
  v310 = v35;
  v36 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
  v311 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
  v312 = v36;
  v313 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
  v37 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
  v307 = *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
  v308 = v37;
  if (!*(&v309 + 1))
  {
    __break(1u);
    goto LABEL_227;
  }

  v38 = *(v34 + 1);
  v314 = *v34;
  v315 = v38;
  v316 = *(v34 + 4);
  v317 = *(&v309 + 1);
  v39 = *(v34 + 4);
  v318 = *(v34 + 3);
  v319 = v39;
  v320 = *(v34 + 5);
  v321 = *(v34 + 12);
  v40 = objc_allocWithZone(type metadata accessor for MultiSelectLoggingCardViewController());
  *&v40[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  v41 = &v40[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_reuseIdentifier];
  *v41 = 1819043139;
  *(v41 + 1) = 0xE400000000000000;
  *&v40[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_tableHeader] = 0;
  v42 = MEMORY[0x29EDCA1A0];
  *&v40[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = MEMORY[0x29EDCA1A0];
  v43 = v322;
  sub_29E2243B4(&v307, v306);
  v300 = v43;
  v44 = sub_29DEBF0A0(1, 0, v43, &v314);
  v45 = [*&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] menstrualFlow];
  v299 = type metadata accessor for MenstrualFlowLoggingCardDataSource();
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 24) = &off_2A24BFA38;
  *(v46 + 32) = v45;
  swift_unknownObjectWeakAssign();
  *&v44[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_dataSource + 8] = &off_2A24B2150;
  swift_unknownObjectWeakAssign();
  v306[0] = v42;
  v47 = (v301 + 8);
  v48 = *(v46 + 32);
  if ((byte_2A24AFB00 & 1) == 0)
  {
    if ((v48 - 2) < 4)
    {
      v51 = v305;
      MEMORY[0x29ED79720](0, 0);
      v49 = v303;
      v50 = v304;
LABEL_41:
      sub_29E1467F4(v50, v51);
      (*v47)(v50, v49);
      goto LABEL_42;
    }

    v49 = v303;
    v50 = v304;
    if (!v48)
    {
      goto LABEL_42;
    }

    if (v48 != 1)
    {
      goto LABEL_252;
    }

    v51 = v305;
    v52 = 1;
    v69 = 0;
LABEL_40:
    MEMORY[0x29ED79720](v52, v69);
    goto LABEL_41;
  }

  if (v48 > 2)
  {
    v49 = v303;
    v50 = v304;
    switch(v48)
    {
      case 3:
        v51 = v305;
        v52 = 0;
        break;
      case 4:
        v51 = v305;
        v52 = 1;
        break;
      case 5:
        v51 = v305;
        v52 = 2;
        break;
      default:
        goto LABEL_252;
    }

    v69 = 1;
    goto LABEL_40;
  }

  v49 = v303;
  v50 = v304;
  if (v48 >= 3)
  {
    goto LABEL_252;
  }

LABEL_42:
  v71 = *(v46 + 32);
  if (byte_2A24AFB01)
  {
    if (v71 <= 2)
    {
      if (v71 >= 3)
      {
        goto LABEL_252;
      }

      goto LABEL_59;
    }

    switch(v71)
    {
      case 3:
        v72 = v305;
        v73 = 0;
        break;
      case 4:
        v72 = v305;
        v73 = 1;
        break;
      case 5:
        v72 = v305;
        v73 = 2;
        break;
      default:
        goto LABEL_252;
    }

    v74 = 1;
    goto LABEL_58;
  }

  if ((v71 - 2) < 4)
  {
    v72 = v305;
    v73 = 0;
    v74 = 0;
LABEL_58:
    MEMORY[0x29ED79720](v73, v74);
    sub_29E1467F4(v50, v72);
    (*v47)(v50, v49);
    goto LABEL_59;
  }

  if (v71)
  {
    if (v71 != 1)
    {
      goto LABEL_252;
    }

    v72 = v305;
    v73 = 1;
    v74 = 0;
    goto LABEL_58;
  }

LABEL_59:
  v75 = *&v44[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths];
  *&v44[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths] = v306[0];
  sub_29DF1EADC(v75);

  v76 = v302;
  *v302 = v44;
  v76[1] = v46;
LABEL_60:
  v77 = v300;
  v76[4] = v299;
  v76[5] = v77;
  return v322;
}

uint64_t type metadata accessor for LoggingCardCarouselViewController()
{
  result = qword_2A1A61A68;
  if (!qword_2A1A61A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E21DEAC()
{
  result = sub_29E2BCEA4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_29E21DFEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v32[-v10];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  if (*(a1 + 16))
  {
    v34 = v12;
    v13 = *(a1 + 32);
    sub_29E2BF404();
    sub_29DF94548(v13);
    v33 = v13;
    sub_29E21F4A0(v13);
    v14 = sub_29E2C33A4();

    v15 = sub_29E2C33A4();

    v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    sub_29E2C3314();
    (*(v6 + 16))(v8, v11, v5);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v17 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v6 + 8))(v11, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = v33;
    v19 = v34;
    *(v18 + 24) = v2;
    *(v18 + 32) = v19;
    v20 = v2;

    v21 = sub_29E2C33A4();

    v39 = sub_29E2242B0;
    v40 = v18;
    aBlock = MEMORY[0x29EDCA5F8];
    v36 = 1107296256;
    v37 = sub_29DF6E81C;
    v38 = &unk_2A24BFB58;
    v22 = _Block_copy(&aBlock);

    v23 = objc_opt_self();
    v24 = [v23 actionWithTitle:v21 style:1 handler:v22];
    _Block_release(v22);

    [v16 addAction_];
    sub_29DF94998();
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = v20;
    v26 = v20;

    v27 = sub_29E2C33A4();

    v39 = sub_29E2242BC;
    v40 = v25;
    aBlock = MEMORY[0x29EDCA5F8];
    v36 = 1107296256;
    v37 = sub_29DF6E81C;
    v38 = &unk_2A24BFBA8;
    v28 = _Block_copy(&aBlock);

    v29 = [v23 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    [v16 addAction_];
    [v26 presentViewController:v16 animated:1 completion:0];
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary];
    sub_29E2BF404();
    v31 = v30;
    sub_29E263F2C(v31);
    [v1 dismissViewControllerAnimated:1 completion:0];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_29E2BF404();
  }
}

uint64_t sub_29E21E670(void *a1)
{
  v2 = v1;
  result = sub_29E2BCF64();
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards;
  v6 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards];
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = result % v7;
  if (result % v7 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_29E2241F0(v6 + 48 * v8 + 32, &v21);
  v9 = v23;
  v18 = v21;
  sub_29DEA049C(v22, v19);
  v20 = v9;
  v10 = v9;
  sub_29E224254(&v18);
  v11 = sub_29E2BCF24();
  v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:{v11, v18}];

  type metadata accessor for LoggingCardCarouselCollectionViewCell();
  result = swift_dynamicCastClassUnconditional();
  v13 = *&v2[v5];
  if (v8 < *(v13 + 16))
  {
    v14 = result;
    sub_29E2241F0(v13 + 48 * v8 + 32, &v21);
    v15 = v21;
    v16 = v23;
    v18 = v21;
    sub_29DEA049C(v22, v19);
    v20 = v16;
    v17 = v15;
    sub_29E224254(&v18);
    sub_29DF99C1C(v2, v17);

    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_29E21E978(void *a1, double *a2, double a3, double a4)
{
  v5 = v4;
  v43 = a2;
  v9 = sub_29E2BCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v14 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (v14)
  {
    sub_29DE9408C(0, &unk_2A181FDB0);
    v15 = a1;
    v16 = v14;
    v17 = sub_29E2C40D4();

    if (v17)
    {
      v18 = *(v5 + v13);
      if (v18)
      {
        v19 = [v18 numberOfItemsInSection_];
        v20 = v19 - 1;
        if (__OFSUB__(v19, 1))
        {
          __break(1u);
        }

        else
        {
          v21 = v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging;
          v22 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging);
          if (*(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8))
          {
            v22 = 0;
          }

          if (v20 >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v19 - 1;
          }

          if (v22 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = sub_29E21ECAC(v24, a3, a4, *v43);
          if (v20 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v20;
          }

          if (v25 >= 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
          v29 = sub_29E2C33A4();
          v30 = [v28 BOOLForKey_];

          v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards;
          if (*(*(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards) + 16) >= 3uLL && (v30 & 1) == 0)
          {
            v27 = sub_29E21ED70(v27);
          }

          *v21 = v27;
          *(v21 + 8) = 0;
          v32 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout);
          if (!v32)
          {
            goto LABEL_31;
          }

          v33 = v32;
          MEMORY[0x29ED79740](v27, 0);
          v34 = sub_29E2BCF24();
          (*(v10 + 8))(v12, v9);
          v35 = [v33 layoutAttributesForItemAtIndexPath_];

          if (!v35)
          {
            return;
          }

          [v35 center];
          v37 = *(v5 + v13);
          if (!v37)
          {
LABEL_32:
            __break(1u);
            return;
          }

          v38 = v36;
          [v37 bounds];
          Width = CGRectGetWidth(v44);
          v40 = v43;
          *v43 = v38 + Width * -0.5;
          v40[1] = 0.0;
          v41 = *(*(v5 + v31) + 16);
          if (v41)
          {
            sub_29E21A7F0(v27 % v41 + 1, v41);

            return;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }
}

char *sub_29E21ECAC(char *result, double a2, double a3, double a4)
{
  if (fabs(a2) <= 0.4)
  {
LABEL_7:
    if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_contentOffsetXBeforeDragging + 8))
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      result = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout);
      if (result)
      {
        v8 = a4 - *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_contentOffsetXBeforeDragging);
        [result itemSize];
        if (v9 * 0.25 < fabs(v8))
        {
          v10 = -1;
          if (v8 > 0.0)
          {
            v10 = 1;
          }

          result = &v7[v10];
          if (!__OFADD__(v7, v10))
          {
            return result;
          }

          __break(1u);
        }

        return v7;
      }
    }

    __break(1u);
    return result;
  }

  v5 = -1;
  if (a2 > 0.0)
  {
    v5 = 1;
  }

  v6 = __OFADD__(result, v5);
  result += v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29E21ED70(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards) + 16);
  if (v2 >> 61)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = 2 * v2;
  if (result < 2 || (v2 <= result ? (v4 = v3 <= result) : (v4 = 1), v4))
  {
    if (v2)
    {
      v5 = result % v2 + v3;
      sub_29E21EE68(result, v5);
      return v5;
    }

    goto LABEL_11;
  }

  return result;
}

void sub_29E21EE68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCFB4();
  isEscapingClosureAtFileLocation = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v40 - v12;
  MEMORY[0x29ED79740](a1, 0, v11);
  MEMORY[0x29ED79740](a2, 0);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v15 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = sub_29E2BCF24();
  v18 = [v16 layoutAttributesForItemAtIndexPath_];

  if (v18)
  {
    v41 = v6;
    v19 = *&v3[v14];
    if (v19)
    {
      v20 = v19;
      v21 = sub_29E2BCF24();
      v22 = [v20 layoutAttributesForItemAtIndexPath_];

      if (!v22)
      {
LABEL_9:

        v6 = v41;
        goto LABEL_10;
      }

      [v22 frame];
      v24 = v23;
      [v18 frame];
      v26 = *&v3[v14];
      if (v26)
      {
        v27 = v25;
        [v26 contentOffset];
        v29 = *&v3[v14];
        if (v29)
        {
          v30 = v24 - v27 + v28;
          [v29 contentOffset];
          v32 = v31;
          v40 = objc_opt_self();
          v33 = swift_allocObject();
          *(v33 + 16) = v3;
          *(v33 + 24) = v30;
          *(v33 + 32) = v32;
          v34 = swift_allocObject();
          *(v34 + 16) = sub_29E224148;
          *(v34 + 24) = v33;
          aBlock[4] = sub_29DE9B5DC;
          aBlock[5] = v34;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_29E21894C;
          aBlock[3] = &unk_2A24BFAE0;
          v35 = _Block_copy(aBlock);
          v36 = v3;

          [v40 performWithoutAnimation_];

          _Block_release(v35);
          v37 = *(isEscapingClosureAtFileLocation + 8);
          v38 = v9;
          v9 = v41;
          v37(v38, v41);
          v37(v13, v9);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_9;
        }

LABEL_15:
        __break(1u);
        return;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  v39 = *(isEscapingClosureAtFileLocation + 8);
  v39(v9, v6);
  v39(v13, v6);
}

id sub_29E21F33C(void *a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_editOrdering;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v12 = &v13;
  v13 = a1;
  sub_29E2BF404();
  v4 = sub_29E151734(sub_29DFC4A68, v11, v3);

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    v6 = *(v1 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v2) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_29E1437F8(0, v6[2] + 1, 1, v6);
      *(v1 + v2) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_29E1437F8((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v6[v9 + 4] = a1;
    *(v1 + v2) = v6;
    swift_endAccess();

    return a1;
  }

  return result;
}

void sub_29E21F4A0(unsigned __int8 a1)
{
  sub_29DF67A48();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2C3384();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v108 - v14;
  if (a1 <= 3u)
  {
    v114 = v1;
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        sub_29E2C3314();
        v111 = *(v10 + 16);
        v111(v12, v15, v9);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v73 = qword_2A1A67F80;
        sub_29E2BCC74();
        v74 = v73;
        v112 = sub_29E2C3414();
        v113 = v75;
        v110 = *(v10 + 8);
        v110(v15, v9);
        sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
        v109 = v76;
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_29E2CD7A0;
        v77 = sub_29DF9448C(3u);
        if (v78)
        {
          v79 = v77;
          v80 = v78;
          *(v20 + 56) = MEMORY[0x29EDC99B0];
          v108 = sub_29DEB1A44();
          *(v20 + 64) = v108;
          *(v20 + 32) = v79;
          *(v20 + 40) = v80;
          sub_29E2C3314();
          v111(v12, v15, v9);
          sub_29E2BCC74();
          sub_29E2C3414();
          v110(v15, v9);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_29E2CAB20;
          v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] ovulationTestResultSampleCount];
          goto LABEL_48;
        }

        goto LABEL_55;
      }

      sub_29E2C3314();
      v111 = *(v10 + 16);
      v111(v12, v15, v9);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v41 = qword_2A1A67F80;
      sub_29E2BCC74();
      v42 = v41;
      v112 = sub_29E2C3414();
      v113 = v43;
      v110 = *(v10 + 8);
      v110(v15, v9);
      sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v109 = v44;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29E2CD7A0;
      v45 = sub_29DF9448C(2u);
      if (v46)
      {
        v47 = v45;
        v48 = v46;
        *(v20 + 56) = MEMORY[0x29EDC99B0];
        v108 = sub_29DEB1A44();
        *(v20 + 64) = v108;
        *(v20 + 32) = v47;
        *(v20 + 40) = v48;
        sub_29E2C3314();
        v111(v12, v15, v9);
        sub_29E2BCC74();
        sub_29E2C3414();
        v110(v15, v9);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_29E2CAB20;
        v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] bleedingAfterPregnancyFlowSampleCount];
        goto LABEL_48;
      }
    }

    else
    {
      if (a1)
      {
        sub_29E2C3314();
        v111 = *(v10 + 16);
        v111(v12, v15, v9);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v65 = qword_2A1A67F80;
        sub_29E2BCC74();
        v66 = v65;
        v112 = sub_29E2C3414();
        v113 = v67;
        v110 = *(v10 + 8);
        v110(v15, v9);
        sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
        v109 = v68;
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_29E2CD7A0;
        v69 = sub_29DF9448C(1u);
        if (v70)
        {
          v71 = v69;
          v72 = v70;
          *(v20 + 56) = MEMORY[0x29EDC99B0];
          v108 = sub_29DEB1A44();
          *(v20 + 64) = v108;
          *(v20 + 32) = v71;
          *(v20 + 40) = v72;
          sub_29E2C3314();
          v111(v12, v15, v9);
          sub_29E2BCC74();
          sub_29E2C3414();
          v110(v15, v9);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_29E2CAB20;
          v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] bleedingInPregnancyFlowSampleCount];
          goto LABEL_48;
        }

        goto LABEL_54;
      }

      sub_29E2C3314();
      v111 = *(v10 + 16);
      v111(v12, v15, v9);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v27 = qword_2A1A67F80;
      sub_29E2BCC74();
      v28 = v27;
      v112 = sub_29E2C3414();
      v113 = v29;
      v110 = *(v10 + 8);
      v110(v15, v9);
      sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v109 = v30;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29E2CD7A0;
      v31 = sub_29DF9448C(0);
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        *(v20 + 56) = MEMORY[0x29EDC99B0];
        v108 = sub_29DEB1A44();
        *(v20 + 64) = v108;
        *(v20 + 32) = v33;
        *(v20 + 40) = v34;
        sub_29E2C3314();
        v111(v12, v15, v9);
        sub_29E2BCC74();
        sub_29E2C3414();
        v110(v15, v9);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_29E2CAB20;
        v36 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] menstrualFlowSampleCount];
        v37 = MEMORY[0x29EDC9C10];
        *(v35 + 56) = MEMORY[0x29EDC9BA8];
        *(v35 + 64) = v37;
        *(v35 + 32) = v36;
        v38 = sub_29E2C33B4();
        v40 = v39;
LABEL_49:

        v107 = v108;
        *(v20 + 96) = MEMORY[0x29EDC99B0];
        *(v20 + 104) = v107;
        *(v20 + 72) = v38;
        *(v20 + 80) = v40;
        goto LABEL_50;
      }

      __break(1u);
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (a1 <= 5u)
  {
    v114 = v1;
    if (a1 != 4)
    {
      sub_29E2C3314();
      v111 = *(v10 + 16);
      v111(v12, v15, v9);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v97 = qword_2A1A67F80;
      sub_29E2BCC74();
      v98 = v97;
      v112 = sub_29E2C3414();
      v113 = v99;
      v110 = *(v10 + 8);
      v110(v15, v9);
      sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v109 = v100;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29E2CD7A0;
      v101 = sub_29DF9448C(5u);
      if (v102)
      {
        v103 = v101;
        v104 = v102;
        *(v20 + 56) = MEMORY[0x29EDC99B0];
        v108 = sub_29DEB1A44();
        *(v20 + 64) = v108;
        *(v20 + 32) = v103;
        *(v20 + 40) = v104;
        sub_29E2C3314();
        v111(v12, v15, v9);
        sub_29E2BCC74();
        sub_29E2C3414();
        v110(v15, v9);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_29E2CAB20;
        v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] progesteroneTestResultSampleCount];
        goto LABEL_48;
      }

      goto LABEL_59;
    }

    sub_29E2C3314();
    v111 = *(v10 + 16);
    v111(v12, v15, v9);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v49 = qword_2A1A67F80;
    sub_29E2BCC74();
    v50 = v49;
    v112 = sub_29E2C3414();
    v113 = v51;
    v110 = *(v10 + 8);
    v110(v15, v9);
    sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
    v109 = v52;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CD7A0;
    v53 = sub_29DF9448C(4u);
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      *(v20 + 56) = MEMORY[0x29EDC99B0];
      v108 = sub_29DEB1A44();
      *(v20 + 64) = v108;
      *(v20 + 32) = v55;
      *(v20 + 40) = v56;
      sub_29E2C3314();
      v111(v12, v15, v9);
      sub_29E2BCC74();
      sub_29E2C3414();
      v110(v15, v9);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_29E2CAB20;
      v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] pregnancyTestResultSampleCount];
      goto LABEL_48;
    }

    goto LABEL_57;
  }

  if (a1 == 6)
  {
    v114 = v1;
    sub_29E2C3314();
    v111 = *(v10 + 16);
    v111(v12, v15, v9);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v57 = qword_2A1A67F80;
    sub_29E2BCC74();
    v58 = v57;
    v112 = sub_29E2C3414();
    v113 = v59;
    v110 = *(v10 + 8);
    v110(v15, v9);
    sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
    v109 = v60;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CD7A0;
    v61 = sub_29DF9448C(6u);
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      *(v20 + 56) = MEMORY[0x29EDC99B0];
      v108 = sub_29DEB1A44();
      *(v20 + 64) = v108;
      *(v20 + 32) = v63;
      *(v20 + 40) = v64;
      sub_29E2C3314();
      v111(v12, v15, v9);
      sub_29E2BCC74();
      sub_29E2C3414();
      v110(v15, v9);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_29E2CAB20;
      v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] sexualActivitySampleCount];
      goto LABEL_48;
    }

    goto LABEL_53;
  }

  if (a1 == 7)
  {
    v114 = v1;
    sub_29E2C3314();
    v111 = *(v10 + 16);
    v111(v12, v15, v9);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A67F80;
    sub_29E2BCC74();
    v17 = v16;
    v112 = sub_29E2C3414();
    v113 = v18;
    v110 = *(v10 + 8);
    v110(v15, v9);
    sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
    v109 = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CD7A0;
    v21 = sub_29DF9448C(7u);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      *(v20 + 56) = MEMORY[0x29EDC99B0];
      v108 = sub_29DEB1A44();
      *(v20 + 64) = v108;
      *(v20 + 32) = v23;
      *(v20 + 40) = v24;
      sub_29E2C3314();
      v111(v12, v15, v9);
      sub_29E2BCC74();
      sub_29E2C3414();
      v110(v15, v9);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_29E2CAB20;
      v26 = [*&v114[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary] cervicalMucusQualitySampleCount];
LABEL_48:
      v105 = MEMORY[0x29EDC9C10];
      *(v25 + 56) = MEMORY[0x29EDC9BA8];
      *(v25 + 64) = v105;
      *(v25 + 32) = v26;
      v38 = sub_29E2C33B4();
      v40 = v106;
      goto LABEL_49;
    }

    goto LABEL_56;
  }

  v113 = v5;
  sub_29E2C3314();
  (*(v10 + 16))(v12, v15, v9);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v81 = qword_2A1A67F80;
  sub_29E2BCC74();
  v112 = sub_29E2C3414();
  (*(v10 + 8))(v15, v9);
  sub_29E22418C(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_29E2CAB20;
  v83 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_temperatureFormatter];
  v84 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary;
  v15 = v1;
  v85 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary] basalBodyTemperature];
  v86 = [*&v1[v84] basalBodyTemperature];
  if (!v86)
  {
    goto LABEL_58;
  }

  v87 = v86;
  v15 = [v86 _unit];

  if (!v85)
  {
LABEL_60:
    v88 = v15;
    goto LABEL_62;
  }

  v88 = v85;
  v89 = [v15 _foundationUnit];
  if (v89)
  {
    v90 = v89;
    [v88 doubleValueForUnit_];
    sub_29DE9408C(0, &qword_2A181FDD0);
    v91 = v90;
    sub_29E2BC304();
    v92 = sub_29E2BC2F4();
    v93 = [v83 stringFromMeasurement_];

    v94 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v96 = v95;

    (*(v113 + 8))(v7, v4);
    *(v82 + 56) = MEMORY[0x29EDC99B0];
    *(v82 + 64) = sub_29DEB1A44();
    *(v82 + 32) = v94;
    *(v82 + 40) = v96;
LABEL_50:
    sub_29E2C3404();

    return;
  }

LABEL_62:
  __break(1u);
}