void sub_29DEEA1C0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MenstrualCyclesOnboardingPeriodLengthViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    sub_29E1C73E0();
    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = *(v3 + 32);

        v5 = __OFSUB__(v2, v4);
        v6 = v2 - v4;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_29E1C74F8();
          [v7 selectRow:v6 inComponent:0 animated:0];
        }
      }

      else
      {
      }
    }
  }
}

void sub_29DEEA2C8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo;
  v7 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo];

  v8 = sub_29E1C74F8();
  v9 = [v8 selectedRowInComponent_];

  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
    *v10 = v9 + 1;
    *(v10 + 8) = 0;

    sub_29E2C04B4();
    v11 = v1;
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v2;
      v34 = v30;
      *v14 = 136446466;
      v15 = sub_29E2C4AE4();
      v17 = v3;
      v18 = sub_29DFAA104(v15, v16, &v34);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = *&v1[v6] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v32 = v20;
      v33 = v19;
      sub_29DEB523C();
      v21 = sub_29E2C3464();
      v23 = sub_29DFAA104(v21, v22, &v34);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Selected period length: %s", v14, 0x16u);
      v24 = v30;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v24, -1, -1);
      MEMORY[0x29ED82140](v14, -1, -1);

      (*(v17 + 8))(v5, v31);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v25 = sub_29DEE9914();
    [v11 showViewController:v25 sender:0];

    v26 = &v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 1);
      ObjectType = swift_getObjectType();
      sub_29E199CD0(3, 0, ObjectType, v27);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_29DEEA608()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
  *v6 = 0;
  *(v6 + 8) = 1;
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Selected period length: None", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = sub_29DEE9914();
  [v1 showViewController:v14 sender:0];

  v15 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    sub_29E199CD0(3, 1u, ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29DEEA86C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_29E2C43D4();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_29DE93B3C(&v9);
}

id sub_29DEEA8F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingPeriodLengthViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29DEEA958()
{
  result = qword_2A1A61C60;
  if (!qword_2A1A61C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A61C60);
  }

  return result;
}

id sub_29DEEA9BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  return sub_29DEEB5F4(v3, v2, v4);
}

unint64_t sub_29DEEA9D4@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v30 = a5;
  v32 = a3;
  v31 = a2;
  v9 = sub_29E2BCEA4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BD594();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2BD624();
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a4, v18);
  if (qword_2A1A61688 != -1)
  {
    swift_once();
  }

  v22 = sub_29DEA8E9C(v13, qword_2A1A67ED8);
  (*(v14 + 16))(v16, v22, v13);
  (*(v10 + 16))(v12, v30, v9);
  v23 = type metadata accessor for SummaryTileGenerator();
  swift_allocObject();
  v24 = v32;
  v25 = v32;
  v26 = a1;
  v27 = sub_29E2A7E30(v20, v16, a1, v31 & 1, v12, v24);
  a6[3] = v23;
  result = sub_29DEEB59C();
  a6[4] = result;
  *a6 = v27;
  return result;
}

uint64_t sub_29DEEAC88()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Deallocated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_domain;
  v14 = sub_29E2BD594();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_29DEEAEEC()
{
  sub_29DEEAC88();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummaryTileGeneratorPipeline()
{
  result = qword_2A1A62018;
  if (!qword_2A1A62018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEEAF98()
{
  result = sub_29E2BD594();
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

uint64_t sub_29DEEB058@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28SummaryTileGeneratorPipeline_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29DEEB0D4()
{
  v14 = sub_29E2BD564();
  v0 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BE194();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BD594();
  sub_29DEEB638(v7, qword_2A1A67ED8);
  v13 = sub_29DEA8E9C(v7, qword_2A1A67ED8);
  sub_29E2BD274();
  sub_29DEEB69C();
  v8 = sub_29E2BD234();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CAB20;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3730], v8);
  sub_29E110B7C(v6);
  sub_29E2BE184();
  (*(v4 + 8))(v6, v3);
  (*(v0 + 104))(v2, *MEMORY[0x29EDC3898], v14);
  return sub_29E2BD574();
}

void sub_29DEEB34C(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = a1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] pregnancyModelDidUpdate", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    v14 = v9;
    a1 = v16;
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v17 = a1;
  v15 = a1;
  sub_29E2C10C4();
}

unint64_t sub_29DEEB59C()
{
  result = qword_2A1A62230;
  if (!qword_2A1A62230)
  {
    type metadata accessor for SummaryTileGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A62230);
  }

  return result;
}

id sub_29DEEB5F4(id result, uint64_t a2, void *a3)
{
  if (result != 1)
  {
    v5 = result;
    v4 = a3;

    return v5;
  }

  return result;
}

uint64_t *sub_29DEEB638(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_29DEEB69C()
{
  if (!qword_2A1A61CE0)
  {
    sub_29E2BD234();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61CE0);
    }
  }
}

id sub_29DEEB6F4(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors);
  sub_29E2BF404();
  LOBYTE(a1) = sub_29E142298(a1, v3);

  if ((a1 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows) = sub_29DEEB7E8();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      if ([result isViewLoaded])
      {
        result = [v5 collectionView];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v6 = result;
        [result reloadData];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_29DEEB7E8()
{
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v29 - v6;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors;
  v9 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return &unk_2A24AE430;
  }

  result = sub_29E2C4484();
  if (!result)
  {
    return &unk_2A24AE430;
  }

LABEL_3:
  v11 = *(v0 + v8);
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

    return MEMORY[0x29EDCA190];
  }

  v28 = *(v0 + v8);
  result = sub_29E2C4484();
  v11 = v28;
  v12 = result;
  if (!result)
  {
    return MEMORY[0x29EDCA190];
  }

LABEL_5:
  if (v12 >= 1)
  {
    v30 = v11 & 0xC000000000000001;
    v13 = (v2 + 8);
    v14 = v11;
    sub_29E2BF404();
    v15 = v14;
    v16 = 0;
    v17 = MEMORY[0x29EDCA190];
    v31 = v12;
    v32 = v14;
    do
    {
      if (v30)
      {
        v19 = MEMORY[0x29ED80D70](v16, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = [v19 endDate];
      sub_29E2BCB44();

      sub_29E2BCA84();
      LOBYTE(v21) = sub_29E2BCB34();
      v22 = *v13;
      (*v13)(v4, v1);
      v22(v7, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_29E143DDC(0, *(v17 + 2) + 1, 1, v17);
        }

        v25 = *(v17 + 2);
        v24 = *(v17 + 3);
        v26 = v25 + 1;
        v18 = 1;
        if (v25 >= v24 >> 1)
        {
          v17 = sub_29E143DDC((v24 > 1), v25 + 1, 1, v17);
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_29E143DDC(0, *(v17 + 2) + 1, 1, v17);
        }

        v25 = *(v17 + 2);
        v27 = *(v17 + 3);
        v26 = v25 + 1;
        if (v25 >= v27 >> 1)
        {
          v17 = sub_29E143DDC((v27 > 1), v25 + 1, 1, v17);
        }

        v18 = 0;
      }

      ++v16;

      *(v17 + 2) = v26;
      v17[v25 + 32] = v18;
      v15 = v32;
    }

    while (v31 != v16);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DEEBB28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCBB4();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C33A4();
  v14 = sub_29E2C33A4();
  v15 = sub_29E2BCF24();
  v16 = [a1 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:v15];

  type metadata accessor for HistoryListHeaderView();
  v17 = swift_dynamicCastClassUnconditional();
  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a2 && v18 == a3)
  {

LABEL_5:
    v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleDay;
    v21 = v25;
    swift_beginAccess();
    (*(v7 + 16))(v9, v21 + v20, v6);
    sub_29E2C3194();
    (*(v7 + 8))(v9, v6);
    sub_29DEEBE88();
    v22 = *(v17 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel);
    v23 = sub_29E2C33A4();

    [v22 setText_];

    (*(v26 + 8))(v12, v27);
    return v17;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    goto LABEL_5;
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29DEEBE88()
{
  v0 = sub_29E2BCBB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v20 - v5;
  v21 = sub_29E2BCEA4();
  v7 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCE44();
  v10 = sub_29E2BCD84();
  sub_29E2BCBA4();
  v11 = sub_29E2BCB04();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v13 = [v10 hk:v11 startOfYearForDate:0 addingYears:?];

  sub_29E2BCB44();
  sub_29DEED360(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  if (sub_29E2C32A4())
  {
    v14 = objc_allocWithZone(type metadata accessor for RelativeWeekdayWithMonthAndDayFormatter());
    v15 = sub_29DFAB334(1);
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    [v15 setDateStyle_];
    [v15 setTimeStyle_];
  }

  v16 = sub_29E2BCB04();
  v17 = [v15 stringFromDate_];

  v18 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v12(v6, v0);
  (*(v7 + 8))(v9, v21);
  return v18;
}

unint64_t sub_29DEEC2C8(void *a1, uint64_t a2)
{
  v3 = v2;
  v93 = a1;
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v90 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E2C3384();
  v88 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v91 = &v84 - v9;
  v10 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v11 = sub_29E2BCEA4();
  v86 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2C31A4();
  v87 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v84 - v18;
  v85 = type metadata accessor for CycleFactorsSectionViewModel(0);
  MEMORY[0x2A1C7C4A8](v85);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29E2BCFA4())
  {
    goto LABEL_13;
  }

  v22 = sub_29E2BCF64();
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows;
  if (v22 >= *(*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows) + 16))
  {
    goto LABEL_13;
  }

  v84 = v21;
  v24 = a2;
  result = sub_29E2BCF64();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v26 = *(v3 + v23);
  if (result >= *(v26 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = *(v26 + result + 32);
  if (v27 <= 1)
  {
    if (v27)
    {
      v38 = sub_29E2C33A4();
      v39 = sub_29E2BCF24();
      v40 = [v93 dequeueReusableCellWithReuseIdentifier:v38 forIndexPath:v39];

      type metadata accessor for HistoricalSampleCell();
      v24 = swift_dynamicCastClassUnconditional();
      result = sub_29E2BCF64();
      v41 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors;
      v42 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors);
      if ((v42 & 0xC000000000000001) != 0)
      {
        v82 = result;
        sub_29E2BF404();
        v43 = MEMORY[0x29ED80D70](v82, v42);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (result >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v43 = *(v42 + 8 * result + 32);
      }

      v44 = [v43 hkmc_cycleFactor];
      v45 = sub_29E08C870(v44);
      v92 = v46;
      v93 = v45;
      v47 = sub_29E08D578(v44);
      sub_29DEED314();
      v48 = [swift_getObjCClassFromMetadata() pregnancyType];
      if (v48 && (v49 = v48, v50 = v47, v51 = sub_29E2C40D4(), v49, v50, (v51 & 1) != 0))
      {
        v52 = sub_29E239064(v50, 1);
        if (!v53)
        {
          v52 = sub_29E23894C();
        }

        v54 = v52;
        v55 = v53;
      }

      else
      {
        v54 = sub_29E23894C();
        v55 = v64;
      }

      v65 = v85;
      v66 = [v43 startDate];
      v67 = v84;
      sub_29E2BCB44();

      v68 = [v43 endDate];
      sub_29E2BCB44();

      v69 = v92;
      v70 = v93;
      *v67 = v43;
      v67[1] = v70;
      v67[2] = v69;
      v67[3] = v54;
      v67[4] = v55;
      *(v67 + *(v65 + 36)) = 0;
      result = sub_29E2BCF64();
      v3 = *(v3 + v41);
      if ((v3 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_46:
          __break(1u);
          return result;
        }

        v71 = *(v3 + 8 * result + 32);
LABEL_31:
        sub_29E08C870([v71 hkmc_cycleFactor]);
        v72 = *(v24 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel);
        v73 = sub_29E2C33A4();

        [v72 setText_];

        v74 = *(v24 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel);
        v75 = sub_29E2C33A4();
        [v74 setText_];

        sub_29DEED508(v84, type metadata accessor for CycleFactorsSectionViewModel);
        return v24;
      }

LABEL_42:
      v83 = result;
      sub_29E2BF404();
      v71 = MEMORY[0x29ED80D70](v83, v3);

      goto LABEL_31;
    }

    v28 = sub_29E2C33A4();
    v29 = sub_29E2BCF24();
    v30 = [v93 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:v29];

    type metadata accessor for HistoricalSampleCell();
    v24 = swift_dynamicCastClassUnconditional();
    result = sub_29E2BCF64();
    v14 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors);
    if ((v14 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v31 = *(v14 + 8 * result + 32);
LABEL_11:
          sub_29E08C870([v31 hkmc_cycleFactor]);
          sub_29E237BF0();
          v32 = *(v24 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel);
          v33 = sub_29E2C33A4();

          [v32 setText_];

          v34 = *(v24 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel);
          v35 = sub_29E2C33A4();

          [v34 setText_];

          return v24;
        }

        __break(1u);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_38:
    v81 = result;
    sub_29E2BF404();
    v31 = MEMORY[0x29ED80D70](v81, v14);

    goto LABEL_11;
  }

  if (v27 != 2)
  {
    v56 = sub_29E2C33A4();
    v57 = sub_29E2BCF24();
    v58 = [v93 dequeueReusableCellWithReuseIdentifier:v56 forIndexPath:v57];

    type metadata accessor for CycleFactorsNoneCollectionViewCell();
    v24 = swift_dynamicCastClassUnconditional();
    v59 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleDay;
    swift_beginAccess();
    v60 = v87;
    (*(v87 + 16))(v19, v3 + v59, v14);
    (*(v86 + 16))(v13, v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_gregorianCalenadar, v11);
    sub_29E2BCBA4();
    sub_29E2C3144();
    sub_29DEED360(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
    sub_29E2C3304();
    v61 = *(v60 + 8);
    v61(v16, v14);
    v61(v19, v14);
    v62 = v88;
    v63 = (v88 + 16);
    v76 = v91;
    sub_29E2C3314();
    v77 = v92;
    (*v63)(v89, v76, v92);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v78 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v62 + 8))(v76, v77);
    v79 = *(v24 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label);
    v80 = sub_29E2C33A4();

    [v79 setText_];

    return v24;
  }

LABEL_13:
  v36 = sub_29E2C33A4();
  v37 = sub_29E2BCF24();
  [v93 dequeueReusableCellWithReuseIdentifier:v36 forIndexPath:v37];

  type metadata accessor for CycleFactorsShowAllFactorsCollectionViewCell();

  return swift_dynamicCastClassUnconditional();
}

id sub_29DEED09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleFactorsDaySummaryCollectionViewSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CycleFactorsDaySummaryCollectionViewSource()
{
  result = qword_2A1818878;
  if (!qword_2A1818878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEED218()
{
  result = type metadata accessor for CycleDay();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BCEA4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_29DEED314()
{
  result = qword_2A1A61D70;
  if (!qword_2A1A61D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61D70);
  }

  return result;
}

uint64_t sub_29DEED360(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DEED3A8(uint64_t a1)
{
  v2 = v1;
  if (sub_29E2BCFA4())
  {
    goto LABEL_13;
  }

  v4 = sub_29E2BCF64();
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows;
  if (v4 >= *(*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows) + 16))
  {
    goto LABEL_13;
  }

  result = sub_29E2BCF64();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v2 + v5);
  if (result >= *(v7 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = *(v7 + result + 32);
  if (v8 < 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    result = sub_29E2BCF64();
    a1 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_cycleFactors);
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(a1 + 8 * result + 32);
LABEL_11:
        sub_29E02F684(v9);

        goto LABEL_15;
      }

      __break(1u);
      return result;
    }

LABEL_21:
    v10 = result;
    sub_29E2BF404();
    v9 = MEMORY[0x29ED80D70](v10, a1);

    goto LABEL_11;
  }

  if (v8 != 2)
  {
    return result;
  }

LABEL_13:
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_29E16E8C8();
LABEL_15:

  return swift_unknownObjectRelease();
}

uint64_t sub_29DEED508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29DEED69C(void *a1)
{
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v13 = &v32 - v12;
  if ([a1 healthDataSource])
  {
    sub_29DEEDD8C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    *(inited + 32) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v36 = inited + 32;
    *(inited + 40) = v15;
    swift_getObjectType();
    v37 = v1;
    v35 = v3;
    sub_29E2C04B4();
    v16 = sub_29E05D7D4();
    v18 = v17;
    v34 = v6;
    v33 = *(v7 + 8);
    v33(v13, v6);
    *(inited + 72) = MEMORY[0x29EDC99B0];
    *(inited + 48) = v16;
    *(inited + 56) = v18;
    *(inited + 80) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    *(inited + 88) = v19;
    sub_29E2C04B4();
    v20 = v38;
    sub_29E253478();
    v21 = sub_29E05DA18();
    (*(v4 + 8))(v20, v35);
    v33(v13, v34);
    *(inited + 120) = sub_29DED1758();
    *(inited + 96) = v21;
    v22 = sub_29E1853E0(inited);
    swift_setDeallocating();
    sub_29DECF44C();
    swift_arrayDestroy();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_29E2C04B4();
    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A24();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136446210;
      v27 = sub_29E2C4AE4();
      v29 = sub_29DFAA104(v27, v28, &v39);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v25, 0xCu);
      sub_29DE93B3C(v26);
      MEMORY[0x29ED82140](v26, -1, -1);
      MEMORY[0x29ED82140](v25, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v22 = 0x800000029E2EF5B0;
    sub_29DED16A0();
    swift_allocError();
    *v30 = 0xD00000000000002BLL;
    v30[1] = 0x800000029E2EF5B0;
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_29DEEDBD4()
{
  sub_29DEEE2CC(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileAnalyticsEvent_helpTileConfiguration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingWristTemperatureHelpTileAnalyticsEvent()
{
  result = qword_2A1818888;
  if (!qword_2A1818888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEEDC8C()
{
  result = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(319);
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

unint64_t sub_29DEEDD38()
{
  result = qword_2A1818898;
  if (!qword_2A1818898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818898);
  }

  return result;
}

void sub_29DEEDD8C()
{
  if (!qword_2A1819930)
  {
    sub_29DECF44C();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819930);
    }
  }
}

unint64_t sub_29DEEDDE4()
{
  v23 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v23);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C30A4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEEDD8C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE0D0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000029E2EF5E0;
  v24 = v0;
  v8 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileAnalyticsEvent_helpTileConfiguration;
  v9 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  (*(v4 + 16))(v6, v8 + *(v9 + 20), v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x29EDBA280])
  {
    v11 = 0xEE0061746144676ELL;
    v12 = 0x697463656C6C6F63;
LABEL_3:
    (*(v4 + 8))(v6, v3);
    goto LABEL_10;
  }

  if (v10 == *MEMORY[0x29EDBA288])
  {
    v11 = 0xE600000000000000;
    v12 = 0x617461446F6ELL;
  }

  else if (v10 == *MEMORY[0x29EDBA2D8])
  {
    v11 = 0xED0000646579616CLL;
    v12 = 0x70736944706D6574;
  }

  else
  {
    if (v10 != *MEMORY[0x29EDBA290])
    {
      v11 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
      goto LABEL_3;
    }

    v11 = 0xED00006174614468;
    v12 = 0x67756F6E45746F6ELL;
  }

LABEL_10:
  v13 = MEMORY[0x29EDC99B0];
  *(inited + 48) = v12;
  *(inited + 56) = v11;
  *(inited + 72) = v13;
  strcpy((inited + 80), "tipTileShown");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_29DEEE268(v8, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = sub_29E2C3084();
      (*(*(v15 - 8) + 8))(v2, v15);
    }

    v16 = 0x697463656C6C6F63;
    v17 = v24;
    v18 = 0xEE0061746144676ELL;
  }

  else if (*v2)
  {
    v17 = v24;
    if (*v2 == 1)
    {
      v18 = 0x800000029E2EF600;
      v16 = 0xD000000000000011;
    }

    else
    {
      v18 = 0xEF7375636F467065;
      v16 = 0x656C537055746573;
    }
  }

  else
  {
    v18 = 0xEA00000000007065;
    v16 = 0x656C537055746573;
    v17 = v24;
  }

  *(inited + 96) = v16;
  *(inited + 104) = v18;
  *(inited + 120) = v13;
  *(inited + 128) = 0x6E6F69746361;
  *(inited + 136) = 0xE600000000000000;
  v19 = 0x6954646577656976;
  if (*(v17 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileAnalyticsEvent_trigger))
  {
    v19 = 0x6954646570706174;
  }

  *(inited + 168) = v13;
  *(inited + 144) = v19;
  *(inited + 152) = 0xE900000000000070;
  v20 = sub_29E1853E0(inited);
  swift_setDeallocating();
  sub_29DECF44C();
  swift_arrayDestroy();
  return v20;
}

uint64_t sub_29DEEE268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEEE2CC(uint64_t a1)
{
  v2 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DEEE34C(char a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v45 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E2C3384();
  v4 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v42 - v8;
  v44 = v6;
  if (a1)
  {
    v47 = MEMORY[0x29EDCA190];
    sub_29E181434(0, 3, 0);
    v10 = 0;
    v43 = (v4 + 16);
    v11 = v47;
    v12 = (v4 + 8);
    do
    {
      if (byte_2A24AE4F8[v10 + 32])
      {
        if (byte_2A24AE4F8[v10 + 32] == 1)
        {
          sub_29E2C3314();
          (*v43)(v6, v9, v46);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v13 = qword_2A1A67F80;
          sub_29E2BCC74();
          v14 = sub_29E2C3414();
          v16 = v15;
          v17 = 0xE600000000000000;
          v18 = 0x6D756964656DLL;
        }

        else
        {
          sub_29E2C3314();
          (*v43)(v6, v9, v46);
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v21 = qword_2A1A67F80;
          sub_29E2BCC74();
          v14 = sub_29E2C3414();
          v16 = v22;
          v17 = 0xE500000000000000;
          v18 = 0x7976616568;
        }
      }

      else
      {
        sub_29E2C3314();
        (*v43)(v6, v9, v46);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v19 = qword_2A1A67F80;
        sub_29E2BCC74();
        v14 = sub_29E2C3414();
        v16 = v20;
        v17 = 0xE500000000000000;
        v18 = 0x746867696CLL;
      }

      (*v12)(v9, v46);
      v47 = v11;
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_29E181434((v23 > 1), v24 + 1, 1);
        v11 = v47;
      }

      ++v10;
      *(v11 + 16) = v24 + 1;
      v25 = (v11 + 32 * v24);
      v25[4] = v14;
      v25[5] = v16;
      v25[6] = v18;
      v25[7] = v17;
      v6 = v44;
    }

    while (v10 != 3);
  }

  else
  {
    v47 = MEMORY[0x29EDCA190];
    sub_29E181434(0, 2, 0);
    v26 = 0;
    v27 = 0;
    v11 = v47;
    v42[1] = "ce";
    v43 = (v4 + 16);
    v28 = (v4 + 8);
    do
    {
      v29 = v26;
      if (*(&unk_2A24AE4D0 + v27 + 32))
      {
        sub_29E2C3314();
        (*v43)(v6, v9, v46);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v30 = qword_2A1A67F80;
        sub_29E2BCC74();
        v31 = sub_29E2C3414();
        v33 = v32;
        v34 = 0xE600000000000000;
        v35 = 0x776F6C466F6ELL;
      }

      else
      {
        sub_29E2C3314();
        (*v43)(v6, v9, v46);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v36 = qword_2A1A67F80;
        sub_29E2BCC74();
        v31 = sub_29E2C3414();
        v33 = v37;
        v34 = 0xE400000000000000;
        v35 = 2003790950;
      }

      (*v28)(v9, v46);
      v47 = v11;
      v39 = *(v11 + 16);
      v38 = *(v11 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_29E181434((v38 > 1), v39 + 1, 1);
        v11 = v47;
      }

      *(v11 + 16) = v39 + 1;
      v40 = (v11 + 32 * v39);
      v40[4] = v31;
      v40[5] = v33;
      v40[6] = v35;
      v40[7] = v34;
      v26 = 1;
      v27 = 1u;
      v6 = v44;
    }

    while ((v29 & 1) == 0);
  }

  return v11;
}

uint64_t sub_29DEEE9E0(uint64_t a1)
{
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v23 - v8;
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths;
  v24 = a1;
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
    v27 = v4 + 32;
    v28 = v4 + 16;
    v25 = v1;
    v26 = (v4 + 8);
    result = sub_29E2BF404();
    v16 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_9:
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v14)
      {

        v1 = v25;
        goto LABEL_28;
      }

      v13 = *(v10 + 56 + 8 * v19);
      ++v16;
      if (v13)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          (*(v4 + 16))(v9, *(v10 + 48) + *(v4 + 72) * (v20 | (v19 << 6)), v3);
          (*(v4 + 32))(v6, v9, v3);
          result = sub_29E2BCFA4();
          if (result)
          {
            break;
          }

          if (*(*(v24 + v23) + 16) == 1)
          {
            result = sub_29E2BCF64();
            if (result)
            {
              if (result != 1)
              {
                goto LABEL_34;
              }

              result = (*v26)(v6, v3);
              v17 = v25;
              v18 = 1;
            }

            else
            {
              result = (*v26)(v6, v3);
              v17 = v25;
              v18 = 2;
            }

            goto LABEL_7;
          }

          result = (*v26)(v6, v3);
          v16 = v19;
          if (!v13)
          {
            goto LABEL_9;
          }

LABEL_8:
          v19 = v16;
        }

        if (result != 1)
        {
          goto LABEL_32;
        }

        result = sub_29E2BCF64();
        if (result)
        {
          if (result == 1)
          {
            result = (*v26)(v6, v3);
            v17 = v25;
            v18 = 4;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_33;
            }

            result = (*v26)(v6, v3);
            v17 = v25;
            v18 = 5;
          }
        }

        else
        {
          result = (*v26)(v6, v3);
          v17 = v25;
          v18 = 3;
        }

LABEL_7:
        *(v17 + 32) = v18;
        v16 = v19;
        if (!v13)
        {
          continue;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    *(v1 + 32) = 0;
LABEL_28:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = *(v1 + 32);
      sub_29E21F33C(*MEMORY[0x29EDC3250]);
      [*(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setMenstrualFlow_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_29DEEED88(unint64_t result)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v1 = *(sub_29DEEE34C(result) + 16);

    return v1;
  }

  return result;
}

unint64_t sub_29DEEEDC8()
{
  result = sub_29E2BCFA4();
  if (result <= 1)
  {
    v1 = sub_29DEEE34C(result);
    result = sub_29E2BCF64();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v1 + 16))
    {
      v2 = *(v1 + 32 * result + 32);
      sub_29E2BF404();
      sub_29E2BF404();

      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29DEEEE70(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
    __break(1u);
  }
}

BOOL sub_29DEEEE9C(uint64_t a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    return a2 != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DEEEEB4(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MCSampleChangeSet.SampleKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MCSampleChangeSet.SampleKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29DEEF1FC()
{
  result = qword_2A18188A0;
  if (!qword_2A18188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18188A0);
  }

  return result;
}

size_t sub_29DEEF250(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8)
{
  LODWORD(v377) = a8;
  v376 = a7;
  v310 = a6;
  v326 = a4;
  v327 = a3;
  v334 = a2;
  v11 = MEMORY[0x29EDC9C68];
  sub_29DEF60F8(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v305 = &v300 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v370 = (&v300 - v15);
  v364 = type metadata accessor for CycleChartCycle(0);
  v363 = *(v364 - 8);
  MEMORY[0x2A1C7C4A8](v364);
  v362 = (&v300 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v17);
  v348 = &v300 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v369 = (&v300 - v20);
  MEMORY[0x2A1C7C4A8](v21);
  v350 = &v300 - v22;
  v23 = type metadata accessor for CycleChartsModel();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v335 = (&v300 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v300 - v27;
  sub_29DEF60F8(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], v11);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v318 = &v300 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v325 = &v300 - v32;
  MEMORY[0x2A1C7C4A8](v33);
  v378 = &v300 - v34;
  MEMORY[0x2A1C7C4A8](v35);
  v330 = &v300 - v36;
  v379 = sub_29E2BCEA4();
  v332 = *(v379 - 8);
  MEMORY[0x2A1C7C4A8](v379);
  v361 = &v300 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v360 = &v300 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v368 = &v300 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v367 = &v300 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v353 = &v300 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v352 = &v300 - v47;
  MEMORY[0x2A1C7C4A8](v48);
  v355 = &v300 - v49;
  MEMORY[0x2A1C7C4A8](v50);
  v354 = &v300 - v51;
  sub_29DEF60F8(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, v11);
  MEMORY[0x2A1C7C4A8](v52 - 8);
  v309 = &v300 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v54);
  v316 = &v300 - v55;
  v56 = sub_29E2C31A4();
  v343 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v302 = &v300 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v58);
  v301 = &v300 - v59;
  MEMORY[0x2A1C7C4A8](v60);
  v303 = &v300 - v61;
  MEMORY[0x2A1C7C4A8](v62);
  v300 = &v300 - v63;
  MEMORY[0x2A1C7C4A8](v64);
  v304 = &v300 - v65;
  MEMORY[0x2A1C7C4A8](v66);
  v351 = &v300 - v67;
  MEMORY[0x2A1C7C4A8](v68);
  v359 = &v300 - v69;
  MEMORY[0x2A1C7C4A8](v70);
  v341 = &v300 - v71;
  MEMORY[0x2A1C7C4A8](v72);
  v358 = &v300 - v73;
  MEMORY[0x2A1C7C4A8](v74);
  v338 = &v300 - v75;
  MEMORY[0x2A1C7C4A8](v76);
  v319 = &v300 - v77;
  MEMORY[0x2A1C7C4A8](v78);
  v345 = &v300 - v79;
  MEMORY[0x2A1C7C4A8](v80);
  v344 = &v300 - v81;
  MEMORY[0x2A1C7C4A8](v82);
  v346 = &v300 - v83;
  MEMORY[0x2A1C7C4A8](v84);
  v340 = (&v300 - v85);
  MEMORY[0x2A1C7C4A8](v86);
  v347 = &v300 - v87;
  MEMORY[0x2A1C7C4A8](v88);
  v349 = &v300 - v89;
  MEMORY[0x2A1C7C4A8](v90);
  v366 = &v300 - v91;
  MEMORY[0x2A1C7C4A8](v92);
  v342 = &v300 - v93;
  MEMORY[0x2A1C7C4A8](v94);
  v365 = &v300 - v95;
  MEMORY[0x2A1C7C4A8](v96);
  v356 = &v300 - v97;
  MEMORY[0x2A1C7C4A8](v98);
  v339 = &v300 - v99;
  MEMORY[0x2A1C7C4A8](v100);
  v373 = &v300 - v101;
  MEMORY[0x2A1C7C4A8](v102);
  v357 = &v300 - v103;
  MEMORY[0x2A1C7C4A8](v104);
  v307 = &v300 - v105;
  MEMORY[0x2A1C7C4A8](v106);
  v306 = &v300 - v107;
  MEMORY[0x2A1C7C4A8](v108);
  v110 = &v300 - v109;
  v112 = MEMORY[0x2A1C7C4A8](v111);
  v333 = &v300 - v113;
  v114 = *(v24 + 56);
  v114(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_fertilityChart, 1, 1, v23, v112);
  v337 = v23;
  v321 = v114;
  v322 = v24 + 56;
  (v114)(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_symptomsChart, 1, 1, v23);
  v115 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v115;
  *(v8 + 48) = *(a5 + 32);
  v311 = a5;
  v116 = a5;
  v117 = a1;
  sub_29DEDD5BC(v116, v385);
  v308 = v376;
  sub_29E24FC70(v308, v385);
  v118 = v385[1];
  *(v8 + 56) = v385[0];
  *(v8 + 72) = v118;
  *(v8 + 88) = v386;
  v328 = v8;
  *(v8 + 96) = v377;
  v331 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_130;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v120 = v343;
  v121 = v333;
  v324 = v28;
  v317 = result;
  if (!result)
  {
    goto LABEL_9;
  }

  if ((v117 & 0xC000000000000001) != 0)
  {
    goto LABEL_137;
  }

  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v117 + 32); ; i = MEMORY[0x29ED80D70](0, v117))
    {
      v123 = i;
      v124 = [i lastDayIndex];
      if (v124)
      {
        v125 = v124;

        v121 = v333;
LABEL_9:
        v110 = *(v120 + 16);
        v126 = (v120 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v127 = v334;
        (v110)(v121, v334, v56);
        (v110)(v357, v127, v56);
      }

      else
      {
        v240 = [v123 menstruationSegment];
        [v240 days];

        v241 = v307;
        sub_29E2C30D4();
        v242 = v306;
        sub_29E2C3104();
        v243 = *(v120 + 8);
        v243(v241, v56);
        sub_29E2C30D4();
        sub_29E2C3114();
        v243(v241, v56);
        v243(v242, v56);
        sub_29DEF60A0();
        v244 = v334;
        LOBYTE(v241) = sub_29E2C32A4();

        if (v241)
        {
          v121 = v333;
          (*(v120 + 32))(v333, v110, v56);
          v110 = *(v120 + 16);
        }

        else
        {
          v243(v110, v56);
          v110 = *(v120 + 16);
          v121 = v333;
          (v110)(v333, v244, v56);
        }

        v126 = (v120 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        (v110)(v357, v244, v56);
      }

      v129 = v332 + 16;
      v128 = *(v332 + 16);
      v130 = v379;
      v128(v354, v327, v379);
      v372 = v129;
      v371 = v128;
      v128(v355, v326, v130);
      v131 = sub_29DEF18B0();
      v132 = v330;
      v376 = v110;
      (v110)(v330, v121, v56);
      v133 = *(v120 + 56);
      v374 = v56;
      v314 = v133;
      v315 = v120 + 56;
      v133(v132, 0, 1, v56);
      sub_29DEF60F8(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
      v313 = v134;
      inited = swift_initStackObject();
      v312 = xmmword_29E2CD7A0;
      *(inited + 16) = xmmword_29E2CD7A0;
      *(inited + 56) = &type metadata for CycleDayHeaderRow;
      *(inited + 64) = &off_2A24BD788;
      v136 = swift_allocObject();
      *(inited + 32) = v136;
      v329 = xmmword_29E2CFE10;
      *(v136 + 16) = xmmword_29E2CFE10;
      *(v136 + 32) = 0;
      *(v136 + 40) = 0;
      *(inited + 96) = &type metadata for CycleDateFooterRow;
      *(inited + 104) = &off_2A24B4EB0;
      *(inited + 72) = 0;
      *(inited + 80) = 0;
      v381[0] = v131;
      sub_29E2BF404();
      v137 = inited;
      v138 = v131;
      sub_29DFCB7C8(v137);
      v139 = sub_29E0AE308(v381[0]);
      v141 = v140;

      v142 = v337;
      v28 = v324;
      v143 = v324 + v337[6];
      *v143 = v329;
      *(v143 + 16) = v141;
      *(v143 + 24) = 0;
      v144 = v28 + v142[7];
      *v144 = v141;
      *(v144 + 8) = 0;
      v145 = v138[2];
      v375 = v126;
      if (v145)
      {
        v384 = MEMORY[0x29EDCA190];
        sub_29E18126C(0, v145, 0);
        v56 = v384;
        v377 = v138;
        v110 = (v138 + 4);
        v120 = v378;
        do
        {
          sub_29DE9DC34(v110, v380);
          sub_29DE9DC34(v380, v381);
          v146 = v382;
          v147 = v383;
          sub_29DEF61C0(v381, v382);
          (*(*(v147 + 8) + 32))(v146, v141);
          sub_29DE93B3C(v380);
          v384 = v56;
          v149 = *(v56 + 16);
          v148 = *(v56 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_29E18126C((v148 > 1), v149 + 1, 1);
          }

          v150 = v382;
          v151 = v383;
          v152 = sub_29DEF61C0(v381, v382);
          v153 = MEMORY[0x2A1C7C4A8](v152);
          v155 = &v300 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v156 + 16))(v155, v153);
          sub_29DEF3F6C(v149, v155, &v384, v150, v151);
          sub_29DE93B3C(v381);
          v56 = v384;
          v110 += 40;
          --v145;
        }

        while (v145);

        v126 = v375;
        v28 = v324;
      }

      else
      {

        v56 = MEMORY[0x29EDCA190];
        v120 = v378;
      }

      v157 = v337;
      *(v28 + v337[8]) = v56;
      *(v28 + v157[9]) = v139;
      *(v28 + v157[10]) = v141;
      v158 = ceil(612.0 / v141);
      if ((*&v158 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v158 <= -9.22337204e18)
      {
        goto LABEL_132;
      }

      if (v158 < 9.22337204e18)
      {
        *(v28 + v337[11]) = v158;
        sub_29DE962B4(v330, v120);
        v159 = v343;
        v160 = v343 + 6;
        v56 = v374;
        v323 = v343[6];
        v161 = v323(v120, 1, v374);
        v320 = v160;
        if (v161 != 1)
        {
          v166 = v373;
          (*(v159 + 32))(v373, v120, v56);
          goto LABEL_33;
        }

        if (!v317)
        {
          goto LABEL_29;
        }

        result = v317 - 1;
        if (__OFSUB__(v317, 1))
        {
          goto LABEL_141;
        }

        if ((v117 & 0xC000000000000001) != 0)
        {
          goto LABEL_142;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v162 = *(v117 + 8 * result + 32);
          if (!v162)
          {
            goto LABEL_29;
          }

LABEL_27:
          v377 = v162;
          v163 = [v162 menstruationSegment];
          [v163 days];

          v164 = v370;
          sub_29E2C3AA4();
          sub_29DEC65FC();
          if ((*(*(v165 - 8) + 48))(v164, 1, v165) == 1)
          {

            sub_29DEF630C(v164, &qword_2A1A5E2A0, sub_29DEC65FC);
            goto LABEL_29;
          }

          v277 = v340;
          (v376)(v340, v164, v56);
          sub_29DEF637C(v164);
          v370 = v343[4];
          (v370)(v347, v277, v374);
          v278 = v306;
          sub_29E2C3104();
          v279 = v307;
          sub_29E2C30D4();
          v280 = v344;
          sub_29E2C3114();
          v281 = v343[1];
          v281(v279, v374);
          v282 = v278;
          v28 = v324;
          v281(v282, v374);
          v283 = v345;
          sub_29E2C3104();
          sub_29DEF60A0();
          v284 = sub_29E2C32A4();
          v285 = (v284 & 1) == 0;
          if (v284)
          {
            v286 = v280;
          }

          else
          {
            v286 = v283;
          }

          if (v285)
          {
            v287 = v280;
          }

          else
          {
            v287 = v283;
          }

          v281(v286, v374);
          v288 = v346;
          (v370)(v346, v287, v374);
          v56 = v374;
          v166 = v373;
          sub_29E2C3104();

          v281(v288, v56);
          v281(v347, v56);
          v120 = v378;
          goto LABEL_30;
        }

        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      ;
    }

    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  __break(1u);
LABEL_139:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    v162 = MEMORY[0x29ED80D70](result, v117);
    if (v162)
    {
      goto LABEL_27;
    }

LABEL_29:
    v166 = v373;
    (v376)(v373, v357, v56);
LABEL_30:
    if (v323(v120, 1, v56) != 1)
    {
      sub_29DEF630C(v120, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    }

LABEL_33:
    v167 = v337[5];
    v120 = (v343 + 4);
    v377 = v343[4];
    (v377)(v28 + v167, v166, v56);
    (v376)(v339, v28 + v167, v56);
    if (v331)
    {
      v168 = sub_29E2C4484();
    }

    else
    {
      v168 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v373 = v117;
    v378 = v120;
    if (v168)
    {
      v381[0] = MEMORY[0x29EDCA190];
      sub_29E2BF404();
      result = sub_29E18121C(0, v168 & ~(v168 >> 63), 0);
      if (v168 < 0)
      {
        goto LABEL_139;
      }

      v370 = v381[0];
      v336 = v117 & 0xFFFFFFFFFFFFFF8;
      if (v331)
      {
        v169 = sub_29E2C4484();
      }

      else
      {
        v169 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v172 = v377;
      v110 = 0;
      v340 = (v343 + 1);
      v344 = (v332 + 32);
      v345 = v168;
      v346 = (v117 & 0xC000000000000001);
      v347 = (v169 & ~(v169 >> 63));
      while (v347 != v110)
      {
        if (v346)
        {
          v173 = MEMORY[0x29ED80D70](v110, v117);
        }

        else
        {
          if (v110 >= *(v336 + 16))
          {
            goto LABEL_128;
          }

          v173 = *(v117 + 8 * v110 + 32);
        }

        v174 = v173;
        v175 = [v173 lastDayIndex];
        v176 = v379;
        if (v175)
        {
          v177 = v175;
          [v175 integerValue];
          v178 = v342;
          sub_29E2C30D4();

          v172(v365, v178, v56);
          v179 = v376;
        }

        else
        {
          v179 = v376;
          (v376)(v365, v339, v56);
        }

        v180 = v349;
        v179(v366, v357, v56);
        v181 = v371;
        v371(v367, v354, v176);
        v181(v368, v355, v176);
        v182 = v369;
        *v369 = v110;
        v182[1] = v174;
        v183 = v174;
        v184 = [v183 lastDayIndex];
        if (v184)
        {
          v185 = v184;
          [v184 integerValue];
          sub_29E2C30D4();

          (*v340)(v365, v56);
          v186 = v56;
          v187 = v377;
        }

        else
        {
          v187 = v377;
          (v377)(v180, v365, v56);
          v186 = v56;
        }

        v188 = v364;
        v189 = v369;
        v187(v369 + *(v364 + 24), v180, v186);
        v187((v189 + v188[7]), v366, v186);
        v28 = v344;
        v190 = *v344;
        (*v344)(v189 + v188[8], v367, v176);
        v190(v189 + v188[9], v368, v176);
        v191 = v350;
        sub_29DEF6210(v189, v350, type metadata accessor for CycleChartCycle);

        v192 = v370;
        v381[0] = v370;
        v194 = v370[2];
        v193 = v370[3];
        v172 = v187;
        if (v194 >= v193 >> 1)
        {
          sub_29E18121C(v193 > 1, v194 + 1, 1);
          v192 = v381[0];
        }

        ++v110;
        v192[2] = v194 + 1;
        v195 = (*(v363 + 80) + 32) & ~*(v363 + 80);
        v370 = v192;
        sub_29DEF6210(v191, v192 + v195 + *(v363 + 72) * v194, type metadata accessor for CycleChartCycle);
        v117 = v373;
        v56 = v374;
        if (v345 == v110)
        {
          sub_29DEF630C(v330, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
          v171 = v334;
          v28 = v324;
          v170 = v370;
          goto LABEL_58;
        }
      }

      __break(1u);
      goto LABEL_127;
    }

    sub_29E2BF404();
    sub_29DEF630C(v330, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    v170 = MEMORY[0x29EDCA190];
    v171 = v334;
LABEL_58:
    v196 = v343 + 1;
    v197 = v343[1];
    v197(v339, v56);
    *v28 = v170;
    v198 = v316;
    sub_29DEF6210(v28, v316, type metadata accessor for CycleChartsModel);
    v199 = (v332 + 8);
    v200 = *(v332 + 8);
    v201 = v379;
    v200(v355, v379);
    v202 = v354;
    v354 = v200;
    v355 = v199;
    v200(v202, v201);
    v343 = v196;
    v366 = v197;
    v197(v357, v56);
    v203 = v337;
    (v321)(v198, 0, 1, v337);
    v204 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_fertilityChart;
    v205 = v328;
    swift_beginAccess();
    sub_29DEF6278(v198, v205 + v204);
    swift_endAccess();
    v206 = v376;
    (v376)(v356, v171, v56);
    v207 = v371;
    v371(v352, v327, v201);
    v207(v353, v326, v201);
    v208 = sub_29DEF42C8();
    v209 = v325;
    v206(v325, v333, v56);
    v314(v209, 0, 1, v56);
    v210 = swift_initStackObject();
    *(v210 + 16) = v312;
    *(v210 + 56) = &type metadata for CycleDayHeaderRow;
    *(v210 + 64) = &off_2A24BD788;
    v211 = swift_allocObject();
    *(v210 + 32) = v211;
    *(v211 + 16) = v329;
    *(v211 + 32) = 0;
    *(v211 + 40) = 0;
    *(v210 + 96) = &type metadata for CycleDateFooterRow;
    *(v210 + 104) = &off_2A24B4EB0;
    *(v210 + 72) = 0;
    *(v210 + 80) = 0;
    v381[0] = v208;
    sub_29E2BF404();
    sub_29DFCB7C8(v210);
    v212 = sub_29E0AE308(v381[0]);
    v214 = v213;

    v215 = v335;
    v216 = (v335 + v203[6]);
    *v216 = v329;
    v216[2] = v214;
    v216[3] = 0.0;
    v217 = v215 + v203[7];
    *v217 = v214;
    *(v217 + 1) = 0;
    v218 = v208[2];
    if (v218)
    {
      v384 = MEMORY[0x29EDCA190];
      sub_29E18126C(0, v218, 0);
      v219 = v384;
      v370 = v208;
      v220 = (v208 + 4);
      v120 = v378;
      do
      {
        sub_29DE9DC34(v220, v380);
        sub_29DE9DC34(v380, v381);
        v221 = v382;
        v222 = v383;
        sub_29DEF61C0(v381, v382);
        (*(*(v222 + 8) + 32))(v221, v214);
        sub_29DE93B3C(v380);
        v384 = v219;
        v224 = *(v219 + 16);
        v223 = *(v219 + 24);
        if (v224 >= v223 >> 1)
        {
          sub_29E18126C((v223 > 1), v224 + 1, 1);
        }

        v225 = v382;
        v226 = v383;
        v227 = sub_29DEF61C0(v381, v382);
        v228 = MEMORY[0x2A1C7C4A8](v227);
        v230 = &v300 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v231 + 16))(v230, v228);
        sub_29DEF3F6C(v224, v230, &v384, v225, v226);
        sub_29DE93B3C(v381);
        v219 = v384;
        v220 += 40;
        --v218;
      }

      while (v218);

      v117 = v373;
    }

    else
    {

      v219 = MEMORY[0x29EDCA190];
      v120 = v378;
    }

    v232 = v337;
    v233 = v335;
    *(v335 + v337[8]) = v219;
    *(v233 + v232[9]) = v212;
    *(v233 + v232[10]) = v214;
    v234 = ceil(612.0 / v214);
    v110 = v366;
    if ((*&v234 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_134;
    }

    if (v234 <= -9.22337204e18)
    {
      goto LABEL_135;
    }

    if (v234 >= 9.22337204e18)
    {
      goto LABEL_136;
    }

    *(v335 + v337[11]) = v234;
    v159 = v318;
    sub_29DE962B4(v325, v318);
    if (v323(v159, 1, v56) == 1)
    {
      break;
    }

    v28 = v319;
    (v377)(v319, v159, v56);
    v126 = v334;
LABEL_86:
    v245 = v337[5];
    v246 = v335;
    (v377)(v335 + v245, v28, v56);
    (v376)(v338, v246 + v245, v56);
    if (v331)
    {
      v28 = sub_29E2C4484();
      v247 = v354;
      if (!v28)
      {
LABEL_92:

        sub_29DEC70B0(v311);
        v249 = v379;
        v247(v326, v379);
        v247(v327, v249);
        (v110)(v126, v56);
        sub_29DEF630C(v325, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
        (v110)(v333, v56);
        v28 = MEMORY[0x29EDCA190];
LABEL_110:
        (v110)(v338, v56);
        v273 = v335;
        *v335 = v28;
        v274 = v309;
        sub_29DEF6210(v273, v309, type metadata accessor for CycleChartsModel);
        v247(v353, v249);
        v247(v352, v249);
        (v110)(v356, v56);
        (v321)(v274, 0, 1, v337);
        v275 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_symptomsChart;
        v276 = v328;
        swift_beginAccess();
        sub_29DEF6278(v274, v276 + v275);
        swift_endAccess();
        return v276;
      }
    }

    else
    {
      v28 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v247 = v354;
      if (!v28)
      {
        goto LABEL_92;
      }
    }

    v381[0] = MEMORY[0x29EDCA190];
    result = sub_29E18121C(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v368 = v28;
      v28 = v381[0];
      v365 = (v117 & 0xFFFFFFFFFFFFFF8);
      if (v331)
      {
        v248 = sub_29E2C4484();
      }

      else
      {
        v248 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v250 = v351;
      v110 = 0;
      v369 = (v117 & 0xC000000000000001);
      v367 = (v332 + 32);
      v370 = (v248 & ~(v248 >> 63));
      while (v370 != v110)
      {
        if (v369)
        {
          v251 = MEMORY[0x29ED80D70](v110, v373);
        }

        else
        {
          if (v110 >= *(v365 + 2))
          {
            goto LABEL_129;
          }

          v251 = *&v373[8 * v110 + 32];
        }

        v252 = v251;
        v253 = [v251 lastDayIndex];
        if (v253)
        {
          v254 = v253;
          [v253 integerValue];
          v255 = v341;
          sub_29E2C30D4();

          (v377)(v358, v255, v56);
          (v376)(v359, v356, v56);
        }

        else
        {
          v256 = v376;
          (v376)(v358, v338, v56);
          v256(v359, v356, v56);
        }

        v257 = v379;
        v258 = v371;
        v371(v360, v352, v379);
        v258(v361, v353, v257);
        v259 = v362;
        *v362 = v110;
        v259[1] = v252;
        v260 = v252;
        v261 = [v260 lastDayIndex];
        if (v261)
        {
          v262 = v261;
          [v261 integerValue];
          sub_29E2C30D4();

          (v366)(v358, v56);
          v263 = v56;
          v264 = v250;
          v265 = v377;
        }

        else
        {
          v266 = v250;
          v264 = v250;
          v265 = v377;
          (v377)(v266, v358, v56);
          v263 = v56;
        }

        v267 = v364;
        v117 = v362;
        v265(v362 + *(v364 + 24), v264, v263);
        v265((v117 + v267[7]), v359, v263);
        v268 = *v367;
        v269 = v379;
        (*v367)(v117 + v267[8], v360, v379);
        v268(v117 + v267[9], v361, v269);
        v270 = v348;
        sub_29DEF6210(v117, v348, type metadata accessor for CycleChartCycle);

        v381[0] = v28;
        v272 = *(v28 + 16);
        v271 = *(v28 + 24);
        if (v272 >= v271 >> 1)
        {
          sub_29E18121C(v271 > 1, v272 + 1, 1);
          v28 = v381[0];
        }

        ++v110;
        *(v28 + 16) = v272 + 1;
        sub_29DEF6210(v270, v28 + ((*(v363 + 80) + 32) & ~*(v363 + 80)) + *(v363 + 72) * v272, type metadata accessor for CycleChartCycle);
        v56 = v374;
        v250 = v351;
        if (v368 == v110)
        {

          sub_29DEC70B0(v311);
          v249 = v379;
          v247 = v354;
          (v354)(v326, v379);
          v247(v327, v249);
          v110 = v366;
          (v366)(v334, v56);
          sub_29DEF630C(v325, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
          (v110)(v333, v56);
          goto LABEL_110;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      result = sub_29E2C4484();
      goto LABEL_3;
    }
  }

  v126 = v334;
  v28 = v319;
  if (!v317)
  {

    goto LABEL_83;
  }

  result = v317 - 1;
  if (__OFSUB__(v317, 1))
  {
    goto LABEL_146;
  }

  if ((v117 & 0xC000000000000001) != 0)
  {
LABEL_147:
    v235 = MEMORY[0x29ED80D70](result, v117);
    goto LABEL_75;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_149;
    }

    v235 = *(v117 + 8 * result + 32);
LABEL_75:
    v236 = v235;

    if (v236)
    {
      v237 = [v236 menstruationSegment];
      [v237 days];

      v238 = v305;
      sub_29E2C3AA4();
      sub_29DEC65FC();
      if ((*(*(v239 - 8) + 48))(v238, 1, v239) == 1)
      {

        sub_29DEF630C(v238, &qword_2A1A5E2A0, sub_29DEC65FC);
        v126 = v334;
        v159 = v318;
        v28 = v319;
        goto LABEL_83;
      }

      v289 = v300;
      (v376)(v300, v238, v56);
      sub_29DEF637C(v238);
      (v377)(v304, v289, v56);
      v290 = v306;
      sub_29E2C3104();
      v291 = v307;
      sub_29E2C30D4();
      v292 = v301;
      sub_29E2C3114();
      v370 = v236;
      v110 = v366;
      (v366)(v291, v56);
      (v110)(v290, v56);
      v293 = v302;
      sub_29E2C3104();
      sub_29DEF60A0();
      v294 = sub_29E2C32A4();
      v295 = (v294 & 1) == 0;
      if (v294)
      {
        v296 = v292;
      }

      else
      {
        v296 = v293;
      }

      if (v295)
      {
        v297 = v292;
      }

      else
      {
        v297 = v293;
      }

      (v110)(v296, v56);
      v298 = v303;
      (v377)(v303, v297, v56);
      v28 = v319;
      sub_29E2C3104();

      v299 = v298;
      v120 = v378;
      (v110)(v299, v56);
      (v110)(v304, v56);
      v126 = v334;
      v159 = v318;
LABEL_84:
      if (v323(v159, 1, v56) != 1)
      {
        sub_29DEF630C(v159, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
      }

      goto LABEL_86;
    }

LABEL_83:
    (v376)(v28, v356, v56);
    v110 = v366;
    goto LABEL_84;
  }

  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_29DEF18B0()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v299 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v299 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v299 - v8;
  sub_29DEF60F8(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
  v308 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CEBE0;
  sub_29E2C3314();
  v12 = *(v4 + 16);
  v307 = v9;
  v315 = v4 + 16;
  v316 = v12;
  v12(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  v14 = qword_2A1A67F80;
  v313 = v13;
  v15 = v14;
  sub_29E2BCC74();
  v305 = v15;
  v16 = sub_29E2C3414();
  v304 = v16;
  v309 = v6;
  v18 = v17;
  v19 = *(v4 + 8);
  v312 = v4 + 8;
  v314 = v19;
  v20 = v307;
  v19(v307, v3);
  v21 = sub_29E29D73C(0, 2);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  *&v340[0] = v16;
  *(&v340[0] + 1) = v18;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v23, v24);
  v310 = v3;
  v25 = v340[0];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29E2CFE20;
  *(v11 + 56) = &type metadata for CategoryRow;
  *(v11 + 64) = &off_2A24B7BB0;
  v27 = swift_allocObject();
  *(v11 + 32) = v27;
  *(v27 + 16) = v25;
  v28 = v2;
  *(v27 + 32) = sub_29DEF6410;
  *(v27 + 40) = v26;
  *(v27 + 48) = v304;
  *(v27 + 56) = v18;
  *(v27 + 64) = v23;
  *(v27 + 72) = v24;
  *(v27 + 80) = 0;
  *(v27 + 88) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v316(v309, v20, v310);
  sub_29E2BCC74();
  v305 = v305;
  v29 = sub_29E2C3414();
  v31 = v30;
  v314(v20, v310);
  v32 = sub_29E29D73C(0, 3);
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  *&v340[0] = v29;
  *(&v340[0] + 1) = v31;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v34, v35);
  v36 = v340[0];
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E2CFE30;
  *(v11 + 96) = &type metadata for CategoryRow;
  *(v11 + 104) = &off_2A24B7BB0;
  v38 = swift_allocObject();
  *(v11 + 72) = v38;
  *(v38 + 16) = v36;
  *(v38 + 32) = sub_29DEF6410;
  *(v38 + 40) = v37;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0;
  *(v38 + 64) = v34;
  *(v38 + 72) = v35;
  *(v38 + 80) = 0;
  *(v38 + 88) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v316(v309, v20, v310);
  v311 = v28;
  sub_29E2BCC74();
  v305 = v305;
  v39 = sub_29E2C3414();
  v41 = v40;
  v42 = v314;
  v314(v20, v310);
  v43 = sub_29E29D73C(0, 4);
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  *&v340[0] = v39;
  *(&v340[0] + 1) = v41;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v45, v46);
  v47 = v340[0];
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29E2CFE40;
  *(v11 + 136) = &type metadata for CategoryRow;
  *(v11 + 144) = &off_2A24B7BB0;
  v49 = swift_allocObject();
  *(v11 + 112) = v49;
  *(v49 + 16) = v47;
  *(v49 + 32) = sub_29DEF6410;
  *(v49 + 40) = v48;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0;
  *(v49 + 64) = v45;
  *(v49 + 72) = v46;
  *(v49 + 80) = 0;
  *(v49 + 88) = 0;
  *(v49 + 96) = 0;
  *(v49 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v316(v309, v20, v310);
  sub_29E2BCC74();
  v305 = v305;
  v50 = sub_29E2C3414();
  v52 = v51;
  v42(v20, v310);
  v53 = sub_29E29D73C(0, 5);
  if (v54)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0;
  }

  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  *&v340[0] = v50;
  *(&v340[0] + 1) = v52;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v55, v56);
  v57 = v340[0];
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_29E2CFE50;
  *(v11 + 176) = &type metadata for CategoryRow;
  *(v11 + 184) = &off_2A24B7BB0;
  v59 = swift_allocObject();
  *(v11 + 152) = v59;
  *(v59 + 16) = v57;
  v60 = v310;
  *(v59 + 32) = sub_29DEF6410;
  *(v59 + 40) = v58;
  *(v59 + 48) = 0;
  *(v59 + 56) = 0;
  *(v59 + 64) = v55;
  *(v59 + 72) = v56;
  *(v59 + 80) = 1;
  *(v59 + 88) = 0;
  *(v59 + 96) = 0;
  *(v59 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v316(v309, v20, v60);
  sub_29E2BCC74();
  v304 = v305;
  v61 = sub_29E2C3414();
  v63 = v62;
  v314(v20, v60);
  *(v11 + 216) = &type metadata for CategoryRow;
  *(v11 + 224) = &off_2A24B7BB0;
  v64 = swift_allocObject();
  *(v11 + 192) = v64;
  v305 = 0xD000000000000016;
  *(v64 + 16) = 0xD000000000000016;
  *(v64 + 24) = 0x800000029E2EF820;
  *(v64 + 32) = sub_29DEC10EC;
  *(v64 + 40) = 0;
  *(v64 + 48) = v61;
  *(v64 + 56) = v63;
  *(v64 + 64) = 0;
  *(v64 + 72) = 0;
  *(v64 + 80) = 1;
  *(v64 + 81) = v337[0];
  *(v64 + 84) = *(v337 + 3);
  *(v64 + 88) = 0;
  *(v64 + 96) = 0;
  *(v64 + 104) = 0x3FF0000000000000;
  v65 = v306;
  v66 = v306[1];
  v67 = v306[2];
  v344 = *(v306 + 6);
  v343[0] = v66;
  v343[1] = v67;
  sub_29DEF4004(v343, v339);
  *(v11 + 256) = &type metadata for QuantityRow;
  *(v11 + 264) = &off_2A24B1540;
  v68 = swift_allocObject();
  *(v11 + 232) = v68;
  v69 = v339[5];
  v68[5] = v339[4];
  v68[6] = v69;
  v70 = v339[7];
  v68[7] = v339[6];
  v68[8] = v70;
  v71 = v339[1];
  v68[1] = v339[0];
  v68[2] = v71;
  v72 = v339[3];
  v68[3] = v339[2];
  v68[4] = v72;
  v338 = v11;
  if (*(v65 + 96) == 1)
  {
    v73 = *(v65 + 72);
    v341[0] = *(v65 + 56);
    v341[1] = v73;
    v342 = *(v65 + 11);
    sub_29E172E50(v341, v340);
    v75 = *(v11 + 16);
    v74 = *(v11 + 24);
    if (v75 >= v74 >> 1)
    {
      v11 = sub_29E143C38((v74 > 1), v75 + 1, 1, v11);
    }

    v318 = &type metadata for QuantityRow;
    v319 = &off_2A24B1540;
    v76 = swift_allocObject();
    *&v317 = v76;
    v77 = v340[5];
    v76[5] = v340[4];
    v76[6] = v77;
    v78 = v340[7];
    v76[7] = v340[6];
    v76[8] = v78;
    v79 = v340[1];
    v76[1] = v340[0];
    v76[2] = v79;
    v80 = v340[3];
    v76[3] = v340[2];
    v76[4] = v80;
    *(v11 + 16) = v75 + 1;
    sub_29DE8EE78(&v317, v11 + 40 * v75 + 32);
    v338 = v11;
  }

  v308 = swift_allocObject();
  *(v308 + 16) = xmmword_29E2CFE60;
  v306 = swift_allocObject();
  *(v306 + 2) = 2;
  v81 = sub_29DEC1380(2);
  v302 = v82;
  v303 = v81;
  v83 = v307;
  sub_29E2C3314();
  v84 = v309;
  v85 = v310;
  v86 = v316;
  v316(v309, v83, v310);
  sub_29E2BCC74();
  v304 = v304;
  v87 = sub_29E2C3414();
  v300 = v88;
  v301 = v87;
  v89 = v314;
  v314(v83, v85);
  sub_29E2C3314();
  v86(v84, v83, v85);
  sub_29E2BCC74();
  v304 = v304;
  v90 = sub_29E2C3414();
  v92 = v91;
  v89(v83, v85);
  v93 = v308;
  *(v308 + 56) = &type metadata for CategoryRow;
  *(v93 + 64) = &off_2A24B7BB0;
  v94 = v93;
  v95 = swift_allocObject();
  *(v94 + 32) = v95;
  v96 = v302;
  *(v95 + 16) = v303;
  *(v95 + 24) = v96;
  v97 = v306;
  *(v95 + 32) = sub_29DEF63E8;
  *(v95 + 40) = v97;
  v98 = v300;
  *(v95 + 48) = v301;
  *(v95 + 56) = v98;
  *(v95 + 64) = v90;
  *(v95 + 72) = v92;
  *(v95 + 80) = 0;
  *(v95 + 81) = *v320;
  *(v95 + 84) = *&v320[3];
  *(v95 + 88) = 0;
  *(v95 + 96) = 0;
  *(v95 + 104) = 0x3FF0000000000000;
  v99 = swift_allocObject();
  *(v99 + 16) = 1;
  v100 = sub_29DEC1380(1);
  v302 = v101;
  v303 = v100;
  sub_29E2C3314();
  v102 = v85;
  v103 = v316;
  v316(v84, v83, v85);
  sub_29E2BCC74();
  v306 = v304;
  v104 = sub_29E2C3414();
  v106 = v105;
  v314(v83, v102);
  v107 = v308;
  *(v308 + 96) = &type metadata for CategoryRow;
  *(v107 + 104) = &off_2A24B7BB0;
  v108 = swift_allocObject();
  *(v107 + 72) = v108;
  v109 = v302;
  *(v108 + 16) = v303;
  *(v108 + 24) = v109;
  *(v108 + 32) = sub_29DEF6414;
  *(v108 + 40) = v99;
  *(v108 + 48) = 0;
  *(v108 + 56) = 0;
  *(v108 + 64) = v104;
  *(v108 + 72) = v106;
  *(v108 + 80) = 0;
  *(v108 + 81) = *v321;
  *(v108 + 84) = *&v321[3];
  *(v108 + 88) = 0;
  *(v108 + 96) = 0;
  *(v108 + 104) = 0x3FF0000000000000;
  v110 = swift_allocObject();
  *(v110 + 16) = 3;
  v111 = sub_29DEC1380(3);
  v303 = v112;
  v304 = v111;
  sub_29E2C3314();
  v114 = v309;
  v113 = v310;
  v103(v309, v83, v310);
  sub_29E2BCC74();
  v302 = v306;
  v115 = v114;
  v116 = sub_29E2C3414();
  v118 = v117;
  v314(v83, v113);
  v119 = v308;
  *(v308 + 136) = &type metadata for CategoryRow;
  *(v119 + 144) = &off_2A24B7BB0;
  v120 = swift_allocObject();
  *(v119 + 112) = v120;
  v121 = v303;
  *(v120 + 16) = v304;
  *(v120 + 24) = v121;
  *(v120 + 32) = sub_29DEF6414;
  *(v120 + 40) = v110;
  *(v120 + 48) = 0;
  *(v120 + 56) = 0;
  *(v120 + 64) = v116;
  *(v120 + 72) = v118;
  *(v120 + 80) = 1;
  *(v120 + 81) = *v322;
  *(v120 + 84) = *&v322[3];
  *(v120 + 88) = 0;
  *(v120 + 96) = 0;
  *(v120 + 104) = 0x3FF0000000000000;
  v306 = swift_allocObject();
  *(v306 + 2) = 5;
  v122 = sub_29DEC1A00(5);
  v303 = v123;
  v304 = v122;
  sub_29E2C3314();
  v124 = v316;
  v316(v115, v83, v113);
  sub_29E2BCC74();
  v305 = v302;
  v125 = sub_29E2C3414();
  v301 = v126;
  v302 = v125;
  v127 = v314;
  v314(v83, v113);
  sub_29E2C3314();
  v124(v115, v83, v113);
  sub_29E2BCC74();
  v305 = v305;
  v128 = sub_29E2C3414();
  v130 = v129;
  v127(v83, v113);
  v131 = v308;
  *(v308 + 176) = &type metadata for CategoryRow;
  v131[23] = &off_2A24B7BB0;
  v132 = swift_allocObject();
  v131[19] = v132;
  v133 = v303;
  *(v132 + 16) = v304;
  *(v132 + 24) = v133;
  v134 = v306;
  *(v132 + 32) = sub_29DEF63F0;
  *(v132 + 40) = v134;
  v135 = v301;
  *(v132 + 48) = v302;
  *(v132 + 56) = v135;
  *(v132 + 64) = v128;
  *(v132 + 72) = v130;
  *(v132 + 80) = 0;
  *(v132 + 81) = *v323;
  *(v132 + 84) = *&v323[3];
  *(v132 + 88) = 0;
  *(v132 + 96) = 0;
  *(v132 + 104) = 0x3FF0000000000000;
  v304 = swift_allocObject();
  *(v304 + 2) = 4;
  v136 = sub_29DEC1A00(4);
  v302 = v137;
  v303 = v136;
  sub_29E2C3314();
  v138 = v316;
  v316(v115, v83, v113);
  sub_29E2BCC74();
  v306 = v305;
  v139 = sub_29E2C3414();
  v141 = v140;
  v314(v83, v113);
  v131[27] = &type metadata for CategoryRow;
  v131[28] = &off_2A24B7BB0;
  v142 = swift_allocObject();
  v131[24] = v142;
  v143 = v302;
  *(v142 + 16) = v303;
  *(v142 + 24) = v143;
  v144 = v304;
  *(v142 + 32) = sub_29DEF6418;
  *(v142 + 40) = v144;
  *(v142 + 48) = 0;
  *(v142 + 56) = 0;
  *(v142 + 64) = v139;
  *(v142 + 72) = v141;
  *(v142 + 80) = 0;
  *(v142 + 81) = *v324;
  *(v142 + 84) = *&v324[3];
  *(v142 + 88) = 0;
  *(v142 + 96) = 0;
  *(v142 + 104) = 0x3FF0000000000000;
  v305 = swift_allocObject();
  *(v305 + 2) = 2;
  v145 = sub_29DEC1A00(2);
  v303 = v146;
  v304 = v145;
  sub_29E2C3314();
  v138(v115, v83, v113);
  sub_29E2BCC74();
  v306 = v306;
  v147 = sub_29E2C3414();
  v149 = v148;
  v150 = v314;
  v314(v83, v113);
  v131[32] = &type metadata for CategoryRow;
  v131[33] = &off_2A24B7BB0;
  v151 = swift_allocObject();
  v131[29] = v151;
  v152 = v303;
  *(v151 + 16) = v304;
  *(v151 + 24) = v152;
  v153 = v305;
  *(v151 + 32) = sub_29DEF6418;
  *(v151 + 40) = v153;
  *(v151 + 48) = 0;
  *(v151 + 56) = 0;
  *(v151 + 64) = v147;
  *(v151 + 72) = v149;
  *(v151 + 80) = 0;
  *(v151 + 81) = *v325;
  *(v151 + 84) = *&v325[3];
  *(v151 + 88) = 0;
  *(v151 + 96) = 0;
  *(v151 + 104) = 0x3FF0000000000000;
  v154 = swift_allocObject();
  *(v154 + 16) = 3;
  v155 = sub_29DEC1A00(3);
  v304 = v156;
  v305 = v155;
  sub_29E2C3314();
  v316(v309, v83, v113);
  sub_29E2BCC74();
  v306 = v306;
  v157 = sub_29E2C3414();
  v159 = v158;
  v150(v83, v113);
  v131[37] = &type metadata for CategoryRow;
  v131[38] = &off_2A24B7BB0;
  v160 = swift_allocObject();
  v131[34] = v160;
  v161 = v304;
  *(v160 + 16) = v305;
  *(v160 + 24) = v161;
  *(v160 + 32) = sub_29DEF6418;
  *(v160 + 40) = v154;
  *(v160 + 48) = 0;
  *(v160 + 56) = 0;
  *(v160 + 64) = v157;
  *(v160 + 72) = v159;
  *(v160 + 80) = 0;
  *(v160 + 81) = *v326;
  *(v160 + 84) = *&v326[3];
  *(v160 + 88) = 0;
  *(v160 + 96) = 0;
  *(v160 + 104) = 0x3FF0000000000000;
  v162 = swift_allocObject();
  *(v162 + 16) = 1;
  v163 = sub_29DEC1A00(1);
  v304 = v164;
  v305 = v163;
  sub_29E2C3314();
  v316(v309, v83, v113);
  sub_29E2BCC74();
  v303 = v306;
  v165 = sub_29E2C3414();
  v167 = v166;
  v314(v83, v113);
  v131[42] = &type metadata for CategoryRow;
  v131[43] = &off_2A24B7BB0;
  v168 = swift_allocObject();
  v131[39] = v168;
  v169 = v304;
  *(v168 + 16) = v305;
  *(v168 + 24) = v169;
  *(v168 + 32) = sub_29DEF6418;
  *(v168 + 40) = v162;
  *(v168 + 48) = 0;
  *(v168 + 56) = 0;
  *(v168 + 64) = v165;
  *(v168 + 72) = v167;
  *(v168 + 80) = 1;
  *(v168 + 81) = *v327;
  *(v168 + 84) = *&v327[3];
  *(v168 + 88) = 0;
  *(v168 + 96) = 0;
  *(v168 + 104) = 0x3FF0000000000000;
  v306 = swift_allocObject();
  *(v306 + 2) = 4;
  v170 = sub_29DEC15B0(4);
  v304 = v171;
  v305 = v170;
  sub_29E2C3314();
  v172 = v309;
  v173 = v113;
  v174 = v316;
  v316(v309, v83, v113);
  sub_29E2BCC74();
  v303 = v303;
  v175 = sub_29E2C3414();
  v301 = v176;
  v302 = v175;
  v177 = v113;
  v178 = v314;
  v314(v83, v177);
  sub_29E2C3314();
  v174(v172, v83, v173);
  sub_29E2BCC74();
  v303 = v303;
  v179 = v172;
  v180 = sub_29E2C3414();
  v182 = v181;
  v178(v83, v173);
  v183 = v308;
  *(v308 + 376) = &type metadata for CategoryRow;
  v183[48] = &off_2A24B7BB0;
  v184 = swift_allocObject();
  v183[44] = v184;
  v185 = v304;
  *(v184 + 16) = v305;
  *(v184 + 24) = v185;
  v186 = v306;
  *(v184 + 32) = sub_29DEF63F8;
  *(v184 + 40) = v186;
  v187 = v301;
  *(v184 + 48) = v302;
  *(v184 + 56) = v187;
  *(v184 + 64) = v180;
  *(v184 + 72) = v182;
  *(v184 + 80) = 0;
  *(v184 + 81) = *v328;
  *(v184 + 84) = *&v328[3];
  *(v184 + 88) = 0;
  *(v184 + 96) = 0;
  *(v184 + 104) = 0x3FF0000000000000;
  v188 = swift_allocObject();
  *(v188 + 16) = 3;
  v189 = sub_29DEC15B0(3);
  v304 = v190;
  v305 = v189;
  sub_29E2C3314();
  v316(v179, v83, v173);
  sub_29E2BCC74();
  v306 = v303;
  v191 = sub_29E2C3414();
  v193 = v192;
  v314(v83, v173);
  v183[52] = &type metadata for CategoryRow;
  v183[53] = &off_2A24B7BB0;
  v194 = swift_allocObject();
  v183[49] = v194;
  v195 = v304;
  *(v194 + 16) = v305;
  *(v194 + 24) = v195;
  *(v194 + 32) = sub_29DEF641C;
  *(v194 + 40) = v188;
  *(v194 + 48) = 0;
  *(v194 + 56) = 0;
  *(v194 + 64) = v191;
  *(v194 + 72) = v193;
  *(v194 + 80) = 0;
  *(v194 + 81) = *v329;
  *(v194 + 84) = *&v329[3];
  *(v194 + 88) = 0;
  *(v194 + 96) = 0;
  *(v194 + 104) = 0x3FF0000000000000;
  v305 = swift_allocObject();
  *(v305 + 2) = 2;
  v196 = sub_29DEC15B0(2);
  v303 = v197;
  v304 = v196;
  v198 = v83;
  sub_29E2C3314();
  v199 = v83;
  v200 = v173;
  v316(v179, v199, v173);
  sub_29E2BCC74();
  v306 = v306;
  v201 = sub_29E2C3414();
  v203 = v202;
  v204 = v198;
  v205 = v314;
  v314(v198, v200);
  v206 = v308;
  *(v308 + 456) = &type metadata for CategoryRow;
  *(v206 + 464) = &off_2A24B7BB0;
  v207 = v206;
  v208 = swift_allocObject();
  *(v207 + 432) = v208;
  v209 = v303;
  *(v208 + 16) = v304;
  *(v208 + 24) = v209;
  v210 = v305;
  *(v208 + 32) = sub_29DEF641C;
  *(v208 + 40) = v210;
  *(v208 + 48) = 0;
  *(v208 + 56) = 0;
  *(v208 + 64) = v201;
  *(v208 + 72) = v203;
  *(v208 + 80) = 0;
  *(v208 + 81) = *v330;
  *(v208 + 84) = *&v330[3];
  *(v208 + 88) = 0;
  *(v208 + 96) = 0;
  *(v208 + 104) = 0x3FF0000000000000;
  v211 = swift_allocObject();
  *(v211 + 16) = 1;
  v212 = sub_29DEC15B0(1);
  v304 = v213;
  v305 = v212;
  sub_29E2C3314();
  v214 = v310;
  v316(v179, v204, v310);
  sub_29E2BCC74();
  v303 = v306;
  v215 = sub_29E2C3414();
  v217 = v216;
  v205(v204, v214);
  v218 = v308;
  *(v308 + 496) = &type metadata for CategoryRow;
  *(v218 + 504) = &off_2A24B7BB0;
  v219 = swift_allocObject();
  *(v218 + 472) = v219;
  v220 = v304;
  *(v219 + 16) = v305;
  *(v219 + 24) = v220;
  *(v219 + 32) = sub_29DEF641C;
  *(v219 + 40) = v211;
  *(v219 + 48) = 0;
  *(v219 + 56) = 0;
  *(v219 + 64) = v215;
  *(v219 + 72) = v217;
  *(v219 + 80) = 1;
  *(v219 + 81) = *v331;
  *(v219 + 84) = *&v331[3];
  *(v219 + 88) = 0;
  *(v219 + 96) = 0;
  *(v219 + 104) = 0x3FF0000000000000;
  v306 = swift_allocObject();
  *(v306 + 2) = 3;
  v221 = sub_29DEC1C28(3);
  v304 = v222;
  v305 = v221;
  sub_29E2C3314();
  v223 = v214;
  v224 = v214;
  v225 = v316;
  v316(v179, v204, v224);
  sub_29E2BCC74();
  v303 = v303;
  v226 = sub_29E2C3414();
  v301 = v227;
  v302 = v226;
  v228 = v314;
  v314(v204, v223);
  sub_29E2C3314();
  v225(v179, v204, v223);
  sub_29E2BCC74();
  v303 = v303;
  v229 = sub_29E2C3414();
  v231 = v230;
  v232 = v307;
  v228(v307, v223);
  v233 = v308;
  *(v308 + 536) = &type metadata for CategoryRow;
  v233[68] = &off_2A24B7BB0;
  v234 = swift_allocObject();
  v233[64] = v234;
  v235 = v304;
  *(v234 + 16) = v305;
  *(v234 + 24) = v235;
  v236 = v306;
  *(v234 + 32) = sub_29DEF6400;
  *(v234 + 40) = v236;
  v237 = v301;
  *(v234 + 48) = v302;
  *(v234 + 56) = v237;
  *(v234 + 64) = v229;
  *(v234 + 72) = v231;
  *(v234 + 80) = 0;
  *(v234 + 81) = *v332;
  *(v234 + 84) = *&v332[3];
  *(v234 + 88) = 0;
  *(v234 + 96) = 0;
  *(v234 + 104) = 0x3FF0000000000000;
  v305 = swift_allocObject();
  *(v305 + 2) = 2;
  v304 = sub_29DEC1C28(2);
  v302 = v238;
  v239 = v232;
  sub_29E2C3314();
  v240 = v179;
  v241 = v223;
  v242 = v316;
  v316(v179, v239, v223);
  sub_29E2BCC74();
  v306 = v303;
  v243 = sub_29E2C3414();
  v245 = v244;
  v246 = v241;
  v247 = v241;
  v248 = v314;
  v314(v239, v246);
  v233[72] = &type metadata for CategoryRow;
  v233[73] = &off_2A24B7BB0;
  v249 = swift_allocObject();
  v233[69] = v249;
  v250 = v302;
  *(v249 + 16) = v304;
  *(v249 + 24) = v250;
  v251 = v305;
  *(v249 + 32) = sub_29DEF6420;
  *(v249 + 40) = v251;
  *(v249 + 48) = 0;
  *(v249 + 56) = 0;
  *(v249 + 64) = v243;
  *(v249 + 72) = v245;
  *(v249 + 80) = 0;
  *(v249 + 81) = *v333;
  *(v249 + 84) = *&v333[3];
  *(v249 + 88) = 0;
  *(v249 + 96) = 0;
  *(v249 + 104) = 0x3FF0000000000000;
  v305 = swift_allocObject();
  *(v305 + 2) = 1;
  v304 = sub_29DEC1C28(1);
  v302 = v252;
  sub_29E2C3314();
  v242(v240, v239, v247);
  sub_29E2BCC74();
  v303 = v306;
  v253 = sub_29E2C3414();
  v255 = v254;
  v256 = v247;
  v248(v239, v247);
  v233[77] = &type metadata for CategoryRow;
  v233[78] = &off_2A24B7BB0;
  v257 = swift_allocObject();
  v233[74] = v257;
  v258 = v302;
  *(v257 + 16) = v304;
  *(v257 + 24) = v258;
  v259 = v305;
  *(v257 + 32) = sub_29DEF6420;
  *(v257 + 40) = v259;
  *(v257 + 48) = 0;
  *(v257 + 56) = 0;
  *(v257 + 64) = v253;
  *(v257 + 72) = v255;
  *(v257 + 80) = 1;
  *(v257 + 81) = *v334;
  *(v257 + 84) = *&v334[3];
  *(v257 + 88) = 0;
  *(v257 + 96) = 0;
  *(v257 + 104) = 0x3FF0000000000000;
  v306 = swift_allocObject();
  *(v306 + 2) = 3;
  v260 = sub_29DEC17D8(3);
  v304 = v261;
  v305 = v260;
  sub_29E2C3314();
  v262 = v309;
  v263 = v316;
  v316(v309, v239, v247);
  sub_29E2BCC74();
  v303 = v303;
  v264 = sub_29E2C3414();
  v301 = v265;
  v302 = v264;
  v266 = v314;
  v314(v239, v256);
  sub_29E2C3314();
  v263(v262, v239, v256);
  sub_29E2BCC74();
  v303 = v303;
  v267 = v262;
  v268 = sub_29E2C3414();
  v270 = v269;
  v266(v239, v256);
  v271 = v308;
  *(v308 + 656) = &type metadata for CategoryRow;
  v271[83] = &off_2A24B7BB0;
  v272 = swift_allocObject();
  v271[79] = v272;
  v273 = v304;
  *(v272 + 16) = v305;
  *(v272 + 24) = v273;
  v274 = v306;
  *(v272 + 32) = sub_29DEF6408;
  *(v272 + 40) = v274;
  v275 = v301;
  *(v272 + 48) = v302;
  *(v272 + 56) = v275;
  *(v272 + 64) = v268;
  *(v272 + 72) = v270;
  *(v272 + 80) = 0;
  *(v272 + 81) = *v335;
  *(v272 + 84) = *&v335[3];
  *(v272 + 88) = 0;
  *(v272 + 96) = 0;
  *(v272 + 104) = 0x3FF0000000000000;
  v276 = swift_allocObject();
  *(v276 + 16) = 2;
  v277 = sub_29DEC17D8(2);
  v305 = v278;
  v306 = v277;
  sub_29E2C3314();
  v279 = v256;
  v316(v267, v239, v256);
  sub_29E2BCC74();
  v280 = v303;
  v281 = v267;
  v282 = sub_29E2C3414();
  v284 = v283;
  v285 = v279;
  v286 = v314;
  v314(v239, v285);
  v271[87] = &type metadata for CategoryRow;
  v271[88] = &off_2A24B7BB0;
  v287 = swift_allocObject();
  v271[84] = v287;
  v288 = v305;
  *(v287 + 16) = v306;
  *(v287 + 24) = v288;
  *(v287 + 32) = sub_29DEF6424;
  *(v287 + 40) = v276;
  *(v287 + 48) = 0;
  *(v287 + 56) = 0;
  *(v287 + 64) = v282;
  *(v287 + 72) = v284;
  *(v287 + 80) = 0;
  *(v287 + 81) = v336[0];
  *(v287 + 84) = *(v336 + 3);
  *(v287 + 88) = 0;
  *(v287 + 96) = 0;
  *(v287 + 104) = 0x3FF0000000000000;
  v289 = swift_allocObject();
  *(v289 + 16) = 1;
  v290 = sub_29DEC17D8(1);
  v306 = v291;
  sub_29E2C3314();
  v292 = v310;
  v316(v281, v239, v310);
  sub_29E2BCC74();
  v293 = sub_29E2C3414();
  v295 = v294;
  v286(v239, v292);
  v271[92] = &type metadata for CategoryRow;
  v271[93] = &off_2A24B7BB0;
  v296 = swift_allocObject();
  v271[89] = v296;
  v297 = v306;
  *(v296 + 16) = v290;
  *(v296 + 24) = v297;
  *(v296 + 32) = sub_29DEF6424;
  *(v296 + 40) = v289;
  *(v296 + 48) = 0;
  *(v296 + 56) = 0;
  *(v296 + 64) = v293;
  *(v296 + 72) = v295;
  *(v296 + 80) = 1;
  *(v296 + 81) = v317;
  *(v296 + 84) = *(&v317 + 3);
  *(v296 + 88) = 0;
  *(v296 + 96) = 0;
  *(v296 + 104) = 0x3FF0000000000000;
  sub_29DFCB7C8(v271);
  return v338;
}

uint64_t sub_29DEF3D00()
{
  sub_29DEF630C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_fertilityChart, &unk_2A1820F90, type metadata accessor for CycleChartsModel);
  sub_29DEF630C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartsPDFModelProvider_symptomsChart, &unk_2A1820F90, type metadata accessor for CycleChartsModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleChartsPDFModelProvider()
{
  result = qword_2A18188A8;
  if (!qword_2A18188A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEF3E14()
{
  sub_29DEF60F8(319, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29DEF3EEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for CycleDay() + 20)) daySummary];
  v4 = [v3 basalBodyTemperature];

  v5 = 2;
  if (v4)
  {
    v5 = v4;
  }

  *a2 = v5;
}

uint64_t sub_29DEF3F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29DEBB7E8(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29DE8EE78(&v12, v10 + 40 * a1 + 32);
}

double sub_29DEF4004@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v27 = a1[1];
  v28 = v4;
  v26 = *(a1 + 16);
  v5 = a1[3];
  v29 = a1[4];
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() hkmc_supplementaryDataColor];
  KeyPath = swift_getKeyPath();
  sub_29E2C3314();
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
  v31 = v26 & 1;
  v19 = a1[4];
  v20 = v27;
  v21 = v28;
  *a2 = v14;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v31;
  *(a2 + 25) = *v30;
  *(a2 + 28) = *&v30[3];
  *(a2 + 32) = v5;
  v22 = KeyPath;
  *(a2 + 40) = v29;
  *(a2 + 48) = v22;
  *(a2 + 56) = v16;
  *(a2 + 64) = v18;
  result = 8.0;
  *(a2 + 72) = xmmword_29E2CFE70;
  *(a2 + 88) = xmmword_29E2CFE70;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0x404F000000000000;
  return result;
}

uint64_t sub_29DEF42C8()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = v206 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v206 - v8;
  sub_29DEF60F8(0, &qword_2A181DA80, sub_29DEF615C, MEMORY[0x29EDC9E90]);
  v220 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CFE80;
  sub_29E2C3314();
  v214 = *(v4 + 16);
  v215 = v4 + 16;
  v214(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  v13 = qword_2A1A67F80;
  v213 = v12;
  v14 = v13;
  sub_29E2BCC74();
  v219 = v14;
  v15 = sub_29E2C3414();
  v209 = v2;
  v16 = v15;
  v18 = v17;
  v212 = *(v4 + 8);
  v216 = v4 + 8;
  v212(v9, v3);
  v19 = sub_29E29D73C(0, 2);
  v21 = v9;
  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  *&v223 = v16;
  *(&v223 + 1) = v18;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v22, v23);
  v221 = v3;
  v24 = v223;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E2CFE20;
  *(v11 + 56) = &type metadata for CategoryRow;
  *(v11 + 64) = &off_2A24B7BB0;
  v26 = swift_allocObject();
  *(v11 + 32) = v26;
  *(v26 + 16) = v24;
  *(v26 + 32) = sub_29DEF63D8;
  *(v26 + 40) = v25;
  *(v26 + 48) = v16;
  *(v26 + 56) = v18;
  *(v26 + 64) = v22;
  *(v26 + 72) = v23;
  *(v26 + 80) = 0;
  *(v26 + 88) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v208 = v6;
  v214(v6, v21, v221);
  sub_29E2BCC74();
  v219 = v219;
  v27 = sub_29E2C3414();
  v29 = v28;
  v30 = v212;
  v212(v21, v221);
  v31 = sub_29E29D73C(0, 3);
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  *&v223 = v27;
  *(&v223 + 1) = v29;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v33, v24);
  v34 = v223;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CFE30;
  *(v11 + 96) = &type metadata for CategoryRow;
  *(v11 + 104) = &off_2A24B7BB0;
  v36 = swift_allocObject();
  *(v11 + 72) = v36;
  *(v36 + 16) = v34;
  *(v36 + 32) = sub_29DEF6410;
  *(v36 + 40) = v35;
  *(v36 + 48) = 0;
  *(v36 + 56) = 0;
  *(v36 + 64) = v33;
  *(v36 + 72) = v24;
  *(v36 + 80) = 0;
  *(v36 + 88) = 0;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v37 = v208;
  v214(v208, v21, v221);
  sub_29E2BCC74();
  v219 = v219;
  v38 = v37;
  v39 = sub_29E2C3414();
  v41 = v40;
  v30(v21, v221);
  v42 = v30;
  v43 = sub_29E29D73C(0, 4);
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  *&v223 = v39;
  *(&v223 + 1) = v41;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v45, v46);
  v47 = v223;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29E2CFE40;
  *(v11 + 136) = &type metadata for CategoryRow;
  *(v11 + 144) = &off_2A24B7BB0;
  v49 = swift_allocObject();
  *(v11 + 112) = v49;
  *(v49 + 16) = v47;
  *(v49 + 32) = sub_29DEF6410;
  *(v49 + 40) = v48;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0;
  *(v49 + 64) = v45;
  *(v49 + 72) = v46;
  *(v49 + 80) = 0;
  *(v49 + 88) = 0;
  *(v49 + 96) = 0;
  *(v49 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v50 = v214;
  v214(v38, v21, v221);
  sub_29E2BCC74();
  v218 = v219;
  v51 = sub_29E2C3414();
  v53 = v52;
  v42(v21, v221);
  v54 = sub_29E29D73C(0, 5);
  if (v55)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  *&v223 = v51;
  *(&v223 + 1) = v53;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v56, v57);
  v58 = v223;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_29E2CFE50;
  *(v11 + 176) = &type metadata for CategoryRow;
  *(v11 + 184) = &off_2A24B7BB0;
  v60 = swift_allocObject();
  *(v11 + 152) = v60;
  *(v60 + 16) = v58;
  *(v60 + 32) = sub_29DEF6410;
  *(v60 + 40) = v59;
  *(v60 + 48) = 0;
  *(v60 + 56) = 0;
  *(v60 + 64) = v56;
  *(v60 + 72) = v57;
  *(v60 + 80) = 1;
  *(v60 + 88) = 0;
  *(v60 + 96) = 0;
  *(v60 + 104) = 0x3FF0000000000000;
  v226 = v11;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_29E2CFE90;
  v219 = "rt";
  sub_29E2C3314();
  v220 = "EDING_ALERT_MESSAGE";
  v50(v38, v21, v221);
  sub_29E2BCC74();
  v218 = v218;
  v62 = sub_29E2C3414();
  v64 = v63;
  v65 = v21;
  v66 = v21;
  v67 = v212;
  v212(v65, v221);
  v68 = sub_29E29D73C(1, 2);
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0;
  }

  *&v223 = v62;
  *(&v223 + 1) = v64;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v70, *(&v58 + 1));
  v71 = v223;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_29E2CFEA0;
  *(v61 + 56) = &type metadata for CategoryRow;
  *(v61 + 64) = &off_2A24B7BB0;
  v73 = swift_allocObject();
  *(v61 + 32) = v73;
  *(v73 + 16) = v71;
  *(v73 + 32) = sub_29DEF6410;
  *(v73 + 40) = v72;
  *(v73 + 48) = v62;
  *(v73 + 56) = v64;
  *(v73 + 64) = v70;
  *(v73 + 72) = *(&v58 + 1);
  *(v73 + 80) = 0;
  *(v73 + 88) = 0;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v211 = v66;
  v214(v208, v66, v221);
  sub_29E2BCC74();
  v218 = v218;
  v74 = sub_29E2C3414();
  v76 = v75;
  v67(v66, v221);
  v77 = sub_29E29D73C(1, 3);
  if (v78)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0;
  }

  if (v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0xE000000000000000;
  }

  *&v223 = v74;
  *(&v223 + 1) = v76;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v79, v80);
  v81 = v223;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_29E2CFEB0;
  *(v61 + 96) = &type metadata for CategoryRow;
  *(v61 + 104) = &off_2A24B7BB0;
  v83 = swift_allocObject();
  *(v61 + 72) = v83;
  *(v83 + 16) = v81;
  *(v83 + 32) = sub_29DEF6410;
  *(v83 + 40) = v82;
  *(v83 + 48) = 0;
  *(v83 + 56) = 0;
  *(v83 + 64) = v79;
  *(v83 + 72) = v80;
  *(v83 + 80) = 0;
  *(v83 + 88) = 0;
  *(v83 + 96) = 0;
  *(v83 + 104) = 0x3FF0000000000000;
  v84 = v211;
  sub_29E2C3314();
  v85 = v208;
  v214(v208, v84, v221);
  sub_29E2BCC74();
  v218 = v218;
  v86 = v85;
  v87 = sub_29E2C3414();
  v89 = v88;
  v90 = v212;
  v212(v84, v221);
  v91 = sub_29E29D73C(1, 4);
  if (v92)
  {
    v93 = v91;
  }

  else
  {
    v93 = 0;
  }

  if (v92)
  {
    v94 = v92;
  }

  else
  {
    v94 = 0xE000000000000000;
  }

  *&v223 = v87;
  *(&v223 + 1) = v89;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v93, v94);
  v95 = v223;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_29E2CFEC0;
  *(v61 + 136) = &type metadata for CategoryRow;
  *(v61 + 144) = &off_2A24B7BB0;
  v97 = swift_allocObject();
  *(v61 + 112) = v97;
  *(v97 + 16) = v95;
  *(v97 + 32) = sub_29DEF6410;
  *(v97 + 40) = v96;
  *(v97 + 48) = 0u;
  *(v97 + 64) = v93;
  *(v97 + 72) = v94;
  *(v97 + 80) = 0;
  *(v97 + 88) = 0u;
  *(v97 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v98 = v214;
  v214(v86, v84, v221);
  sub_29E2BCC74();
  v218 = v218;
  v99 = sub_29E2C3414();
  v101 = v100;
  v90(v84, v221);
  v102 = sub_29E29D73C(1, 5);
  if (v103)
  {
    v104 = v102;
  }

  else
  {
    v104 = 0;
  }

  if (v103)
  {
    v105 = v103;
  }

  else
  {
    v105 = 0xE000000000000000;
  }

  *&v223 = v99;
  *(&v223 + 1) = v101;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v104, v105);
  v106 = v223;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_29E2CFED0;
  *(v61 + 176) = &type metadata for CategoryRow;
  *(v61 + 184) = &off_2A24B7BB0;
  v108 = swift_allocObject();
  *(v61 + 152) = v108;
  *(v108 + 16) = v106;
  *(v108 + 32) = sub_29DEF6410;
  *(v108 + 40) = v107;
  *(v108 + 48) = 0;
  *(v108 + 56) = 0;
  *(v108 + 64) = v104;
  *(v108 + 72) = v105;
  *(v108 + 80) = 1;
  *(v108 + 88) = 0;
  *(v108 + 96) = 0;
  v219 = "NANCY_CHART_TITLE";
  *(v108 + 104) = 0x3FF0000000000000;
  v109 = v211;
  sub_29E2C3314();
  v98(v208, v109, v221);
  sub_29E2BCC74();
  v218 = v218;
  v110 = sub_29E2C3414();
  v112 = v111;
  v113 = v109;
  v90(v109, v221);
  v114 = sub_29E29D73C(2, 2);
  if (v115)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0;
  }

  *&v223 = v110;
  *(&v223 + 1) = v112;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v116, *(&v106 + 1));
  v117 = v223;
  v118 = swift_allocObject();
  v118[1] = vdupq_n_s64(2uLL);
  *(v61 + 216) = &type metadata for CategoryRow;
  *(v61 + 224) = &off_2A24B7BB0;
  v119 = swift_allocObject();
  *(v61 + 192) = v119;
  *(v119 + 16) = v117;
  v120 = v221;
  *(v119 + 32) = sub_29DEF6410;
  *(v119 + 40) = v118;
  *(v119 + 48) = v110;
  *(v119 + 56) = v112;
  *(v119 + 64) = v116;
  *(v119 + 72) = *(&v106 + 1);
  *(v119 + 80) = 0;
  *(v119 + 88) = 0;
  *(v119 + 96) = 0;
  *(v119 + 104) = 0x3FF0000000000000;
  v121 = v113;
  sub_29E2C3314();
  v122 = v113;
  v123 = v214;
  v214(v208, v122, v120);
  sub_29E2BCC74();
  v218 = v218;
  v124 = sub_29E2C3414();
  v126 = v125;
  v127 = v120;
  v212(v121, v120);
  v128 = sub_29E29D73C(2, 3);
  if (v129)
  {
    v130 = v128;
  }

  else
  {
    v130 = 0;
  }

  if (v129)
  {
    v131 = v129;
  }

  else
  {
    v131 = 0xE000000000000000;
  }

  *&v223 = v124;
  *(&v223 + 1) = v126;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v130, v131);
  v132 = v223;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_29E2CFEE0;
  *(v61 + 256) = &type metadata for CategoryRow;
  *(v61 + 264) = &off_2A24B7BB0;
  v134 = swift_allocObject();
  *(v61 + 232) = v134;
  *(v134 + 16) = v132;
  *(v134 + 32) = sub_29DEF6410;
  *(v134 + 40) = v133;
  *(v134 + 48) = 0;
  *(v134 + 56) = 0;
  *(v134 + 64) = v130;
  *(v134 + 72) = v131;
  *(v134 + 80) = 0;
  *(v134 + 88) = 0;
  *(v134 + 96) = 0;
  *(v134 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v123(v208, v121, v120);
  sub_29E2BCC74();
  v218 = v218;
  v135 = sub_29E2C3414();
  v137 = v136;
  v138 = v212;
  v212(v121, v127);
  v139 = sub_29E29D73C(2, 4);
  if (v140)
  {
    v141 = v139;
  }

  else
  {
    v141 = 0;
  }

  if (v140)
  {
    v142 = v140;
  }

  else
  {
    v142 = 0xE000000000000000;
  }

  *&v223 = v135;
  *(&v223 + 1) = v137;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v141, v142);
  v143 = v223;
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_29E2CFEF0;
  *(v61 + 296) = &type metadata for CategoryRow;
  *(v61 + 304) = &off_2A24B7BB0;
  v145 = swift_allocObject();
  *(v61 + 272) = v145;
  *(v145 + 16) = v143;
  *(v145 + 32) = sub_29DEF6410;
  *(v145 + 40) = v144;
  *(v145 + 48) = 0;
  *(v145 + 56) = 0;
  *(v145 + 64) = v141;
  *(v145 + 72) = v142;
  *(v145 + 80) = 0;
  *(v145 + 88) = 0;
  *(v145 + 96) = 0;
  *(v145 + 104) = 0x3FF0000000000000;
  sub_29E2C3314();
  v146 = v208;
  v147 = v127;
  v214(v208, v121, v127);
  sub_29E2BCC74();
  v207 = v218;
  v148 = v146;
  v149 = sub_29E2C3414();
  v151 = v150;
  v138(v121, v147);
  sub_29E29D73C(2, 5);
  if (v152)
  {
    v153 = v152;
  }

  else
  {
    v153 = 0xE000000000000000;
  }

  *&v223 = v149;
  *(&v223 + 1) = v151;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v143, v153);
  v154 = v223;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_29E2CFF00;
  *(v61 + 336) = &type metadata for CategoryRow;
  *(v61 + 344) = &off_2A24B7BB0;
  v156 = swift_allocObject();
  *(v61 + 312) = v156;
  *(v156 + 16) = v154;
  *(v156 + 32) = sub_29DEF6410;
  *(v156 + 40) = v155;
  *(v156 + 48) = 0;
  *(v156 + 56) = 0;
  *(v156 + 64) = v143;
  *(v156 + 72) = v153;
  *(v156 + 80) = 1;
  *(v156 + 88) = 0;
  *(v156 + 96) = 0;
  *(v156 + 104) = 0x3FF0000000000000;
  sub_29DFCB7C8(v61);
  sub_29E2C3314();
  v214(v148, v121, v147);
  sub_29E2BCC74();
  v157 = sub_29E2C3414();
  v159 = v158;
  v138(v121, v147);
  v160 = v226;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_29E143C38(0, v160[2] + 1, 1, v160);
  }

  v162 = v160[2];
  v161 = v160[3];
  if (v162 >= v161 >> 1)
  {
    v160 = sub_29E143C38((v161 > 1), v162 + 1, 1, v160);
  }

  v224 = &type metadata for CategoryRow;
  v225 = &off_2A24B7BB0;
  v163 = swift_allocObject();
  *&v223 = v163;
  *(v163 + 16) = 0xD000000000000016;
  *(v163 + 24) = 0x800000029E2EF820;
  *(v163 + 32) = sub_29DEC10EC;
  *(v163 + 40) = 0;
  *(v163 + 48) = v157;
  *(v163 + 56) = v159;
  *(v163 + 64) = 0;
  *(v163 + 72) = 0;
  *(v163 + 80) = 1;
  *(v163 + 88) = 0;
  *(v163 + 96) = 0;
  *(v163 + 104) = 0x3FF0000000000000;
  v160[2] = *(&v154 + 1) + 1;
  sub_29DE8EE78(&v223, &v160[5 * *(&v154 + 1) + 4]);
  v226 = v160;
  v164 = HKMCSymptomSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v165 = sub_29E2C3614();

  if (v165 >> 62)
  {
    v166 = sub_29E2C4484();
  }

  else
  {
    v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = MEMORY[0x29EDCA190];
  if (v166)
  {
    *&v223 = MEMORY[0x29EDCA190];
    result = sub_29E1812A4(0, v166 & ~(v166 >> 63), 0);
    if (v166 < 0)
    {
LABEL_92:
      __break(1u);
      return result;
    }

    v169 = 0;
    v170 = v223;
    do
    {
      if ((v165 & 0xC000000000000001) != 0)
      {
        v171 = MEMORY[0x29ED80D70](v169, v165);
      }

      else
      {
        v171 = *(v165 + 8 * v169 + 32);
      }

      v172 = v171;
      [v171 code];
      v173 = HKMCMenstrualSymptomFromDataTypeCode();

      *&v223 = v170;
      v175 = *(v170 + 16);
      v174 = *(v170 + 24);
      v176 = v170;
      if (v175 >= v174 >> 1)
      {
        sub_29E1812A4((v174 > 1), v175 + 1, 1);
        v176 = v223;
      }

      ++v169;
      *(v176 + 16) = v175 + 1;
      v177 = v176 + 16 * v175;
      *(v177 + 32) = v173;
      *(v177 + 40) = 0;
      v170 = v176;
    }

    while (v166 != v169);
  }

  else
  {

    v170 = MEMORY[0x29EDCA190];
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v178 = *(v170 + 16);
    if (v178)
    {
      goto LABEL_82;
    }

    goto LABEL_91;
  }

  result = sub_29E14D8D8(v170);
  v170 = result;
  v178 = *(result + 16);
  if (!v178)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_82:
  *(v170 + 40) = 1;
  *(v170 + 16 * v178 + 25) = 1;
  v222 = v167;
  sub_29E18126C(0, v178, 0);
  v179 = v222;
  v206[1] = v170;
  v180 = (v170 + 41);
  v181 = v208;
  do
  {
    v182 = *(v180 - 9);
    v183 = *(v180 - 1);
    LODWORD(v220) = *v180;
    v219 = swift_allocObject();
    *(v219 + 2) = v182;
    v184 = v211;
    sub_29E2C3314();
    v185 = v221;
    v214(v181, v184, v221);
    v210 = v207;
    sub_29E2BCC74();
    v186 = sub_29E2C3414();
    v188 = v187;
    v212(v184, v185);
    v189 = sub_29E229E7C();
    v191 = v190;
    *&v223 = v186;
    *(&v223 + 1) = v188;
    MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](v189, v191);
    v181 = v208;

    v192 = 0;
    v193 = 0;
    v217 = *(&v223 + 1);
    v218 = v223;
    if (v183 == 1)
    {
      v194 = v211;
      sub_29E2C3314();
      v195 = v221;
      v214(v181, v194, v221);
      v196 = v210;
      sub_29E2BCC74();
      v192 = sub_29E2C3414();
      v193 = v197;
      v212(v194, v195);
    }

    v198 = sub_29E229E7C();
    v200 = v199;
    v222 = v179;
    v202 = *(v179 + 16);
    v201 = *(v179 + 24);
    if (v202 >= v201 >> 1)
    {
      sub_29E18126C((v201 > 1), v202 + 1, 1);
      v181 = v208;
      v179 = v222;
    }

    v224 = &type metadata for CategoryRow;
    v225 = &off_2A24B7BB0;
    v203 = swift_allocObject();
    *&v223 = v203;
    v204 = v217;
    *(v203 + 16) = v218;
    *(v203 + 24) = v204;
    v205 = v219;
    *(v203 + 32) = sub_29DEF63E0;
    *(v203 + 40) = v205;
    *(v203 + 48) = v192;
    *(v203 + 56) = v193;
    *(v203 + 64) = v198;
    *(v203 + 72) = v200;
    *(v203 + 80) = v220;
    *(v203 + 88) = 0;
    *(v203 + 96) = 0;
    *(v203 + 104) = 0x3FF0000000000000;
    *(v179 + 16) = v202 + 1;
    sub_29DE8EE78(&v223, v179 + 40 * v202 + 32);
    v180 += 16;
    --v178;
  }

  while (v178);

  sub_29DFCB7C8(v179);
  return v226;
}

void sub_29DEF5C44(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v63 = a3;
  *&v66 = a1;
  v9 = sub_29E2BCEA4();
  v65 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v56[-v13];
  v15 = sub_29E2C31A4();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v69 = v6;
  swift_getMetatypeMetadata();
  v19 = a2;
  sub_29E2C3424();
  v20 = sub_29E1F4994(v19);
  v58 = v21;
  v59 = v18;
  v57 = v22;
  v61 = v16;
  v62 = v15;
  v23 = *(v16 + 16);
  v64 = a4;
  v24 = v15;
  v25 = v11;
  v26 = v9;
  v27 = v65;
  v23(v18, a4, v24);
  v28 = *(v27 + 16);
  v60 = v14;
  v28(v14, v68, v26);
  v28(v25, v67, v26);
  v29 = [v66 recentBasalBodyTemperature];
  if (!v29)
  {
    v44 = objc_opt_self();
    v45 = v20;
    v46 = v20;
    v47 = [v44 degreeCelsiusUnit];
    sub_29DE9408C(0, &qword_2A18188B8);
    v48 = sub_29E2C40D4();

    v42 = v45;
    if (v48)
    {
      v43 = xmmword_29E2CFF10;
      v41 = 37.0;
      *&v49 = 35.0;
    }

    else
    {
      v50 = [v44 degreeFahrenheitUnit];
      v51 = sub_29E2C40D4();

      if ((v51 & 1) == 0)
      {
        v43 = 0uLL;
        v52 = 1;
        v54 = 1.0;
LABEL_12:
        v69 = v43;
        v70 = v52;
        v71 = v54;
        v72 = v42;
        type metadata accessor for CycleChartsPDFModelProvider();
        swift_allocObject();
        sub_29DEEF250(v63, v59, v60, v25, &v69, v42, v58, v57 & 1);
        v55 = *(v27 + 8);
        v55(v67, v26);
        v55(v68, v26);
        (*(v61 + 8))(v64, v62);
        return;
      }

      v43 = xmmword_29E2CFF20;
      v41 = 99.0;
      *&v49 = 96.0;
    }

    v40 = *&v49;
LABEL_9:
    v52 = 0;
    v53 = v41 - v40 > 1.0;
    v54 = 0.5;
    if (v53)
    {
      v54 = 1.0;
    }

    goto LABEL_12;
  }

  v30 = v29;
  v31 = v20;
  v32 = v30;
  v33 = sub_29E24F420();
  v35 = v34;
  [v33 doubleValueForUnit_];
  *&v37 = floor(v36);
  v66 = v37;
  [v35 doubleValueForUnit_];
  v39 = v38;

  v40 = *&v66;
  v41 = ceil(v39);
  if (*&v66 <= v41)
  {
    v42 = v20;
    *&v43 = v66;
    *(&v43 + 1) = v41;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_29DEF60A0()
{
  result = qword_2A1A61A40;
  if (!qword_2A1A61A40)
  {
    sub_29E2C31A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61A40);
  }

  return result;
}

void sub_29DEF60F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DEF615C()
{
  result = qword_2A18188C0;
  if (!qword_2A18188C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18188C0);
  }

  return result;
}

uint64_t sub_29DEF61C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_29DEF6210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DEF6278(uint64_t a1, uint64_t a2)
{
  sub_29DEF60F8(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEF630C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DEF60F8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DEF637C(uint64_t a1)
{
  sub_29DEC65FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DEF64B4()
{
  if (!*(v0 + 88))
  {
    sub_29E2C4A24();
    v1 = *(v0 + 96);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_29E2C4A24();
    return;
  }

  sub_29E2C4A24();
  sub_29E2C34B4();
  v1 = *(v0 + 96);
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_29E2C4A24();
  v2 = v1;
  sub_29E2C40E4();
}

void *sub_29DEF6574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = 0;
  v5[3] = 0;
  v5[2] = 0;
  swift_unknownObjectWeakInit();
  v5[7] = 0;
  swift_unknownObjectWeakInit();
  v5[9] = 0;
  swift_unknownObjectWeakInit();
  v5[10] = a1;
  v5[11] = a2;
  v5[12] = a3;
  swift_beginAccess();
  v5[2] = a4;
  v5[3] = a5;

  return v5;
}

uint64_t sub_29DEF6630()
{

  sub_29DE8EDC0(v0 + 32);
  sub_29DE8EDC0(v0 + 48);
  sub_29DE8EDC0(v0 + 64);

  return swift_deallocClassInstance();
}

void *sub_29DEF66D8()
{
  v1 = *(*v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t sub_29DEF6714()
{
  sub_29E2C4A04();
  sub_29DEF64B4();
  return sub_29E2C4A54();
}

uint64_t sub_29DEF677C()
{
  sub_29E2C4A04();
  sub_29DEF64B4();
  return sub_29E2C4A54();
}

uint64_t sub_29DEF67BC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_29E2BF404();
  return v2;
}

uint64_t sub_29DEF680C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t sub_29DEF68BC()
{
  swift_getWitnessTable();
  swift_getWitnessTable();

  return sub_29E252C78();
}

uint64_t sub_29DEF693C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29DEF69A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60E48](a1, WitnessTable);
}

uint64_t sub_29DEF6A0C()
{
  v1 = *(*v0 + 80);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DEF6A48(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for TileHeaderItem();
    v9[4] = sub_29DEF6BB0(&qword_2A18188D8);
    v9[0] = v4;
    v8 = *(v6 + 8);

    v8(v9, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

uint64_t sub_29DEF6BB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TileHeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_29DEF6BF0(void *a1, void *a2)
{
  v2 = a1[11];
  v3 = a2[11];
  if (v2)
  {
    if (v3)
    {
      if (a1[10] == a2[10] && v2 == v3)
      {
        goto LABEL_8;
      }

      v5 = a1;
      v6 = a2;
      v7 = sub_29E2C4914();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

LABEL_8:
  v9 = a1[12];
  v10 = a2[12];
  result = (v9 | v10) == 0;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    sub_29DEC3644();
    v13 = v10;
    v14 = v9;
    v15 = sub_29E2C40D4();

    return v15 & 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EditableDaySummarySection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EditableDaySummarySection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29DEF6E8C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEF6EC4()
{
  sub_29DEF8500(319, &qword_2A18188F0, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PregnancyAnalyticModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29DEF6FD0()
{
  type metadata accessor for HKMCPregnancyState(319);
  if (v0 <= 0x3F)
  {
    sub_29E2BCBB4();
    if (v1 <= 0x3F)
    {
      sub_29DEF86C4(319, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29DEF70F8()
{
  result = qword_2A1818918;
  if (!qword_2A1818918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818918);
  }

  return result;
}

uint64_t sub_29DEF717C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29DEF8500(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29DEF71F4()
{
  result = qword_2A1818930;
  if (!qword_2A1818930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818930);
  }

  return result;
}

unint64_t sub_29DEF727C()
{
  result = qword_2A1818948;
  if (!qword_2A1818948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818948);
  }

  return result;
}

uint64_t sub_29DEF72D0()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29DEF86C4(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v74 - v4;
  sub_29DEF86C4(0, &qword_2A1817D40, MEMORY[0x29EDB9950], v2);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v74 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v79 = &v74 - v13;
  v14 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v14);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v74 - v17;
  v19 = *v0;
  v80 = v20;
  v76 = v8;
  if (v19)
  {
    if (v19 == 1)
    {
      v21 = 0xE400000000000000;
      v22 = 1953064005;
    }

    else
    {
      v21 = 0xEB00000000676E69;
      v22 = 0x6472616F6266664FLL;
    }
  }

  else
  {
    v22 = 0x696472616F626E4FLL;
    v21 = 0xEA0000000000676ELL;
  }

  v75 = v16;
  v23 = MEMORY[0x29EDC99B0];
  v85 = MEMORY[0x29EDC99B0];
  *&v84 = v22;
  *(&v84 + 1) = v21;
  sub_29DEA049C(&v84, v83);
  v24 = MEMORY[0x29EDCA198];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v24;
  sub_29E008970(v83, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v26 = v86;
  v27 = *(v1 + 1);
  v28 = *(v1 + 2);
  v85 = v23;
  *&v84 = v27;
  *(&v84 + 1) = v28;
  sub_29DEA049C(&v84, v83);
  sub_29E2BF404();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v82 = v26;
  sub_29E008970(v83, 1885697139, 0xE400000000000000, v29);
  v30 = v82;
  v86 = v82;
  v31 = sub_29E2C33A4();

  v32 = sub_29DEF84B4();
  v85 = v32;
  *&v84 = v31;
  sub_29DEA049C(&v84, v83);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v82 = v30;
  sub_29E008970(v83, 0x6E6F69746361, 0xE600000000000000, v33);
  v34 = v82;
  v35 = sub_29E2C33A4();

  v85 = v32;
  *&v84 = v35;
  sub_29DEA049C(&v84, v83);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v82 = v34;
  sub_29E008970(v83, 0x696F507972746E65, 0xEA0000000000746ELL, v36);
  v37 = v82;
  v86 = v82;
  v38 = v1[26];
  v81 = v14;
  v78 = v5;
  if (v38 <= 1)
  {
    if (v38)
    {
      v39 = "Estimated Gestational Age";
      v40 = 0xD000000000000012;
    }

    else
    {
      v40 = 0xD000000000000015;
      v39 = "Estimated Due Date";
    }
  }

  else if (v38 == 2)
  {
    v39 = "Embryo Transfer Date";
    v40 = 0xD000000000000019;
  }

  else
  {
    if (v38 != 3)
    {
      sub_29DF7B37C(0x7461447472617473, 0xEF646F6874654D65, &v84);
      sub_29DEF85E4(&v84, &qword_2A1819920, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29DEF8500);
      goto LABEL_16;
    }

    v39 = "weeksSincePregnancyEndDate";
    v40 = 0xD000000000000014;
  }

  v85 = MEMORY[0x29EDC99B0];
  *&v84 = v40;
  *(&v84 + 1) = v39 | 0x8000000000000000;
  sub_29DEA049C(&v84, v83);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v82 = v37;
  sub_29E008970(v83, 0x7461447472617473, 0xEF646F6874654D65, v41);
  v86 = v82;
LABEL_16:
  sub_29E2BCBA4();
  v42 = objc_opt_self();
  v77 = v18;
  v43 = sub_29E2BCB04();
  v44 = &v1[*(type metadata accessor for PregnancyFlowMetric(0) + 36)];
  v45 = type metadata accessor for PregnancyAnalyticModel(0);
  v46 = sub_29E2BCB04();
  v47 = sub_29E2C33A4();
  v48 = [v42 gestationalAgeInComponentsOnDate:v43 pregnancyStartDate:v46 startTimeZoneName:v47];

  if (v48)
  {
    sub_29E2BC544();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v80;
  v51 = sub_29E2BC5F4();
  v52 = *(v51 - 8);
  (*(v52 + 56))(v11, v49, 1, v51);
  v53 = v11;
  v54 = v79;
  sub_29DEF8550(v53, v79);
  v55 = v76;
  sub_29DEF8644(v54, v76, &qword_2A1817D40, MEMORY[0x29EDB9950]);
  if ((*(v52 + 48))(v55, 1, v51) == 1)
  {
    sub_29DEF85E4(v55, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68], sub_29DEF86C4);
    v56 = v77;
  }

  else
  {
    v57 = sub_29E2BC514();
    v59 = v58;
    (*(v52 + 8))(v55, v51);
    v56 = v77;
    if ((v59 & 1) == 0)
    {
      v85 = MEMORY[0x29EDC9BA8];
      *&v84 = v57;
      sub_29DEA049C(&v84, v83);
      v60 = v86;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v60;
      sub_29E008970(v83, 0x6F69746174736567, 0xEE006567416C616ELL, v61);
      v86 = v82;
    }
  }

  v62 = &v44[*(v45 + 24)];
  v63 = v78;
  sub_29DEF8644(v62, v78, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  v64 = v81;
  if ((*(v50 + 48))(v63, 1, v81) == 1)
  {
    v65 = MEMORY[0x29EDC9C68];
    sub_29DEF85E4(v54, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68], sub_29DEF86C4);
    (*(v50 + 8))(v56, v64);
    sub_29DEF85E4(v63, &unk_2A1A62850, MEMORY[0x29EDB9BC8], v65, sub_29DEF86C4);
  }

  else
  {
    v66 = v75;
    (*(v50 + 32))(v75, v63, v64);
    v67 = sub_29DEF7E50();
    if (v68)
    {
      v69 = *(v50 + 8);
      v69(v66, v64);
      sub_29DEF85E4(v54, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68], sub_29DEF86C4);
      v69(v56, v64);
    }

    else
    {
      v85 = MEMORY[0x29EDC9BA8];
      *&v84 = v67;
      sub_29DEA049C(&v84, v83);
      v70 = v86;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v70;
      sub_29E008970(v83, 0xD00000000000001ALL, 0x800000029E2EFAC0, v71);
      v72 = *(v50 + 8);
      v72(v66, v64);
      sub_29DEF85E4(v54, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68], sub_29DEF86C4);
      v72(v56, v64);
      return v82;
    }
  }

  return v86;
}

uint64_t sub_29DEF7E50()
{
  v0 = sub_29E2C0514();
  v43 = *(v0 - 8);
  v44 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v42 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29E2BC5F4();
  v2 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v41 - v9;
  v11 = sub_29E2BCC94();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2BCEA4();
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x29EDB9C78], v11, v16);
  sub_29E2BCCA4();
  (*(v12 + 8))(v14, v11);
  sub_29E2BCCC4();
  sub_29E2BCCC4();
  sub_29DEF86C4(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v19 = sub_29E2BCE84();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CAB20;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDB9CA8], v19);
  sub_29DE924A4(v22);
  swift_setDeallocating();
  v23 = v22 + v21;
  v24 = v7;
  (*(v20 + 8))(v23, v19);
  swift_deallocClassInstance();
  sub_29E2BCD04();

  v25 = sub_29E2BC514();
  LOBYTE(v20) = v26;
  (*(v2 + 8))(v4, v47);
  if (v20)
  {
    v27 = v45;
    v28 = v46;
    if (HKShowSensitiveLogItems())
    {
      v47 = v24;
      v29 = v42;
      sub_29E2C04B4();
      v30 = sub_29E2C0504();
      v31 = sub_29E2C3A14();
      v32 = v28;
      v33 = v27;
      if (os_log_type_enabled(v30, v31))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v50 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_29DFAA104(0xD000000000000013, 0x800000029E2D01F0, &v50);
        _os_log_impl(&dword_29DE74000, v30, v31, "[%s] Could not get weekOfMonth to populate weeksSincePregnancyEndDate.", v34, 0xCu);
        sub_29DE93B3C(v35);
        MEMORY[0x29ED82140](v35, -1, -1);
        MEMORY[0x29ED82140](v34, -1, -1);
      }

      (*(v43 + 8))(v29, v44);
      v36 = *(v33 + 8);
      v36(v47, v32);
      v36(v10, v32);
    }

    else
    {
      v39 = *(v27 + 8);
      v39(v24, v28);
      v39(v10, v28);
    }

    (*(v48 + 8))(v18, v49);
    return 0;
  }

  else
  {
    v37 = *(v45 + 8);
    v38 = v46;
    v37(v7, v46);
    v37(v10, v38);
    (*(v48 + 8))(v18, v49);
  }

  return v25;
}

unint64_t sub_29DEF84B4()
{
  result = qword_2A1A619D0;
  if (!qword_2A1A619D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A619D0);
  }

  return result;
}

void sub_29DEF8500(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29DEF8550(uint64_t a1, uint64_t a2)
{
  sub_29DEF86C4(0, &qword_2A1817D40, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEF85E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29DEF8644(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DEF86C4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29DEF86C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DEF87DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](0xD000000000000041, 0x800000029E2EFCF0);
  v4 = [a1 invalidateEverything];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x29ED7FCC0](v6, v7);

  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E2EFD40);
  v8 = [a1 invalidateDataSourceCounts];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x29ED7FCC0](v10, v11);

  MEMORY[0x29ED7FCC0](0x65486D657469202CLL, 0xED00003A74686769);
  if (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateItemHeight))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x29ED7FCC0](v12, v13);

  MEMORY[0x29ED7FCC0](0x72416D6F6F7A202CLL, 0xEB000000003A6165);
  if (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateZoomArea))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin52CycleTimelineCollectionViewLayoutInvalidationContext_invalidateZoomArea))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x29ED7FCC0](v14, v15);

  result = MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

id sub_29DEF8A2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleTimelineCollectionViewLayoutInvalidationContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29DEF8AA0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v1] setDatePickerMode_];
  [*&v0[v1] setPreferredDatePickerStyle_];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2CE070;
  v5 = [*&v0[v1] leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:4.0];
  *(v4 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [*&v0[v1] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 48) = v16;
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [*&v0[v1] trailingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 56) = v20;
  sub_29DEB8834();
  v21 = sub_29E2C3604();

  [v3 activateConstraints_];

  v22 = *&v0[v1];

  return [v22 addTarget:v0 action:sel_datePickerChangedWithPicker_ forControlEvents:4096];
}

uint64_t sub_29DEF9068@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29DEF90C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_item;
  swift_beginAccess();
  sub_29DEF9180(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_29DEF9180(uint64_t a1, uint64_t a2)
{
  sub_29DEF964C(0, &qword_2A18180D8, &qword_2A181CC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_29DEF91FC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x29EDC7A48]) init];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_selectedItemUniqueIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  if (a2)
  {
    v8 = sub_29E2C33A4();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, 0, v8);

  v10 = v9;
  sub_29DEF8AA0();

  return v10;
}

uint64_t sub_29DEF9304()
{
  v1 = v0;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17[-v7];
  v9 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker) date];
    sub_29E2BCB44();

    (*(v10 + 8))(v0, v8, ObjectType, v10);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v8, v2);
  }

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v13, v18);
  if (!v19)
  {
    sub_29DEF95F0(v18, &qword_2A18180D8, &qword_2A181CC80);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    return sub_29DEF95F0(&v20, &qword_2A1818988, &qword_2A1818990);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  sub_29DEB1BC4(0, &qword_2A1818990);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    return sub_29DEF95F0(&v20, &qword_2A1818988, &qword_2A1818990);
  }

  if (!*(&v21 + 1))
  {
    return sub_29DEF95F0(&v20, &qword_2A1818988, &qword_2A1818990);
  }

  v14 = sub_29DE966D4(&v20, *(&v21 + 1));
  v15 = [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23DatePickerTableViewCell_datePicker) date];
  sub_29E2BCB44();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_29E27B26C(v14, v5);
    swift_unknownObjectRelease();
  }

  (*(v3 + 8))(v5, v2);
  return sub_29DE93B3C(&v20);
}

uint64_t sub_29DEF95F0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29DEF964C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29DEF964C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DEB1BC4(255, a3);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_29DEF96A4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_shouldEnableScrolling] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29DEF97AC();

  return v12;
}

void sub_29DEF97AC()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAlwaysBounceVertical_];
  [v1 setScrollEnabled_];
  [v1 setShowsVerticalScrollIndicator_];
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  [v1 addSubview_];
  v36 = objc_opt_self();
  sub_29DE99B54();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2D0520;
  v4 = [v1 topAnchor];
  v5 = [v0 &selRef_hkmc_menstruationColor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [v0 &selRef_setDuration_ + 5];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  v16 = [v2 topAnchor];
  v17 = [v1 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v3 + 64) = v18;
  v19 = [v2 leadingAnchor];
  v20 = [v1 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v3 + 72) = v21;
  v22 = [v2 trailingAnchor];
  v23 = [v1 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v3 + 80) = v24;
  v25 = [v2 widthAnchor];
  v26 = [v1 widthAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v3 + 88) = v27;
  sub_29DEB8834();
  v28 = sub_29E2C3604();

  [v36 activateConstraints_];

  v29 = [v2 bottomAnchor];
  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  LODWORD(v32) = 1132068864;
  [v31 setPriority_];
  [v31 setActive_];
  v33 = [v2 heightAnchor];
  v34 = [v0 heightAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor_];

  [v35 setActive_];
  v37 = [objc_opt_self() systemGroupedBackgroundColor];
  [v0 setBackgroundColor_];
}

id sub_29DEF9D44(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_shouldEnableScrolling] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_29DEF97AC();
  }

  return v7;
}

uint64_t sub_29DEF9E5C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView];
  if (v1)
  {
    v2 = v1;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView];
      [v2 frame];
      CGRectGetHeight(v6);
      [v3 contentInset];
      [v3 setContentInset_];
    }
  }

  sub_29DEF9F40();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_29E222300();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_29DEF9F40()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView];
    v12 = v2;
    [v3 layoutIfNeeded];
    [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_contentView] systemLayoutSizeFittingSize_];
    v5 = v4;
    [v0 frame];
    Height = CGRectGetHeight(v14);
    [v12 frame];
    v7 = Height - CGRectGetHeight(v15) < v5;
    v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_shouldEnableScrolling;
    v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_shouldEnableScrolling] = v7;
    [v3 setScrollEnabled_];
    [v3 setShowsVerticalScrollIndicator_];
    v9 = *&v0[v1];
    if (v9)
    {
      v10 = v0[v8];
      v11 = v9;
      sub_29E1F321C(v10, 1);
    }
  }
}

void sub_29DEFA0CC(void *a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView;
  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_footerView] = a1;

  v5 = a1;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v6 = objc_opt_self();
  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CDBD0;
  v8 = [v5 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v5 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  sub_29DEB8834();
  v17 = sub_29E2C3604();

  [v6 activateConstraints_];

  v18 = *&v1[v3];
  if (v18)
  {
    v19 = v18;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v20 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView];
      [v19 frame];
      CGRectGetHeight(v23);
      [v20 contentInset];
      [v20 setContentInset_];
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x29EDC7E60]) initWithScrollView:*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34LoggingCardScrollableContainerView_scrollView] edge:4];
  [v5 addInteraction_];
}

void sub_29DEFA428(uint64_t a1)
{
  sub_29DEFD448(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = (&v13 - v4);
  sub_29DEFC850(a1, &v13 - v4);
  v6 = type metadata accessor for CycleChartCycle(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) == 1)
  {
    sub_29DEFC8E4(v5);
    v8 = 0;
  }

  else
  {
    v8 = v5[1];
    sub_29DEFC970(v5, type metadata accessor for CycleChartCycle);
  }

  v9 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle];
  swift_beginAccess();
  if (v7(v9, 1, v6))
  {
    if (!v8)
    {
      return;
    }

    goto LABEL_6;
  }

  v11 = v9[1];
  v10 = v11;
  if (!v8)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v11)
  {
LABEL_6:
    v10 = v8;
LABEL_7:

LABEL_8:
    [v1 setNeedsDisplay];
    return;
  }

  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v12 = sub_29E2C40D4();

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }
}

uint64_t sub_29DEFA680()
{
  v1 = v0;
  swift_getObjectType();
  v6 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](58, 0xE100000000000000);
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
  swift_beginAccess();
  v3 = type metadata accessor for CycleChartCycle(0);
  (*(*(v3 - 8) + 48))(v1 + v2, 1, v3);
  v4 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v4);

  return v6;
}

id sub_29DEFA764(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role] = 0;
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_header];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
  v12 = type metadata accessor for CycleChartCycle(0);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_dayProvider] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = MEMORY[0x29EDCA190];
  v19.receiver = v4;
  v19.super_class = type metadata accessor for CycleChart();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29DE9408C(0, &qword_2A181ADA0);
  v14 = v13;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor_];

  [v16 setUserInteractionEnabled_];
  return v16;
}

void sub_29DEFAA88(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v230 = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v10 = sub_29E2C0514();
  v225 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for CycleChartCycle(0);
  v223 = *(v224 - 8);
  MEMORY[0x2A1C7C4A8](v224);
  v209 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29DEFD448(0, &qword_2A18189F8, sub_29DEFCBC0, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = (&v208 - v19);
  MEMORY[0x2A1C7C4A8](v21);
  v212 = &v208 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = (&v208 - v24);
  MEMORY[0x2A1C7C4A8](v26);
  v208 = &v208 - v27;
  MEMORY[0x2A1C7C4A8](v28);
  v30 = (&v208 - v29);
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v31 - 8);
  v215 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v216 = &v208 - v34;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v35 - 8);
  v217 = &v208 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFD448(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, v14);
  MEMORY[0x2A1C7C4A8](v37 - 8);
  v39 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  *&v214 = &v208 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v219 = &v208 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v213 = &v208 - v45;
  MEMORY[0x2A1C7C4A8](v46);
  v218 = &v208 - v47;
  MEMORY[0x2A1C7C4A8](v48);
  v210 = &v208 - v49;
  MEMORY[0x2A1C7C4A8](v50);
  v211 = &v208 - v51;
  MEMORY[0x2A1C7C4A8](v52);
  v54 = &v208 - v53;
  v222 = sub_29E2C48F4();
  v221 = *(v222 - 8);
  MEMORY[0x2A1C7C4A8](v222);
  v220 = &v208 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227.receiver = v4;
  v227.super_class = ObjectType;
  objc_msgSendSuper2(&v227, sel_drawRect_, a1, a2, a3, a4);
  v56 = UIGraphicsGetCurrentContext();
  if (v56)
  {
    v225 = *&v4;
    v57 = v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role];
    v226 = v56;
    if (v57)
    {
      if (v57 == 1)
      {
        v58 = v225;
        v59 = *(*&v225 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_dayProvider);
        if (v59)
        {
          v60 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
          swift_beginAccess();
          sub_29DEFC850(*&v58 + v60, v39);
          v61 = (*(v223 + 48))(v39, 1, v224);
          v62 = v226;
          if (v61 == 1)
          {

            sub_29DEFC8E4(v39);
          }

          else
          {
            v110 = v39;
            v111 = v209;
            sub_29DEFCEC4(v110, v209);
            v112 = (*&v58 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer);
            swift_beginAccess();
            if (v112[2])
            {

              sub_29DEFC970(v111, type metadata accessor for CycleChartCycle);
              swift_endAccess();
            }

            else
            {
              v139 = *v112;
              swift_endAccess();

              v140 = [*&v58 traitCollection];
              sub_29DF58BA0(v62, v111, v59, v140, a1, a2, a3, a4, v139);

              sub_29DEFC970(v111, type metadata accessor for CycleChartCycle);
            }
          }

          return;
        }
      }

      else
      {
        v80 = v225;
        v81 = (*&v225 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer);
        swift_beginAccess();
        if ((v81[2] & 1) == 0)
        {
          v102 = *v81;
          v103 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
          swift_beginAccess();
          v104 = *&v80 + v103;
          v105 = v219;
          sub_29DEFC850(v104, v219);
          v106 = [*&v80 traitCollection];
          sub_29DEFC9D4(v226, v106, a1, a2, a3, a4);
          v107 = *&v214;
          sub_29DEFC850(v105, *&v214);
          v108 = v224;
          if ((*(v223 + 48))(v107, 1, v224) == 1)
          {
            sub_29DEFC8E4(v107);
            v109 = MEMORY[0x29EDCA190];
          }

          else
          {
            v119 = v217;
            sub_29E02CAF8((v107 + *(v108 + 24)), v217);
            v225 = COERCE_DOUBLE(sub_29E2BCD54());
            v120 = sub_29E2C31A4();
            v121 = *(v120 - 8);
            v122 = v216;
            (*(v121 + 16))(v216, v119, v120);
            v123 = *(v121 + 56);
            v123(v122, 0, 1, v120);
            v124 = v215;
            v123(v215, 1, 1, v120);
            v125 = sub_29E059C18(v122, v124);
            sub_29DEFC970(v124, sub_29DEDB978);
            v126 = sub_29DEFC970(v122, sub_29DEDB978);
            if (v225 == 0.0)
            {
              goto LABEL_73;
            }

            MEMORY[0x2A1C7C4A8](v126);
            *(&v208 - 2) = v119;
            v109 = sub_29E0B3C98(sub_29DEFD020, (&v208 - 4), 0, v125, v127);
            sub_29DEFC970(v119, sub_29DEFCC2C);
            sub_29DEFC970(v107, type metadata accessor for CycleChartCycle);
          }

          v128 = 0;
          v129 = *(v109 + 16);
          while (1)
          {
            if (v128 == v129)
            {
              sub_29DEFCBC0();
              v133 = v132;
              (*(*(v132 - 8) + 56))(v17, 1, 1, v132);
              v128 = v129;
            }

            else
            {
              if ((v128 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              if (v128 >= *(v109 + 16))
              {
                goto LABEL_68;
              }

              sub_29DEFCBC0();
              v133 = v134;
              v135 = *(v134 - 8);
              sub_29DEFCF28(v109 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v128++, v17);
              (*(v135 + 56))(v17, 0, 1, v133);
            }

            sub_29DEFCF8C(v17, v20);
            sub_29DEFCBC0();
            if ((*(*(v133 - 8) + 48))(v20, 1, v133) == 1)
            {

              sub_29DEFC8E4(v219);
              return;
            }

            v136 = *v20;
            v235.origin.x = a1;
            v235.origin.y = a2;
            v235.size.width = a3;
            v235.size.height = a4;
            MinX = CGRectGetMinX(v235);
            v236.origin.x = a1;
            v236.origin.y = a2;
            v236.size.width = a3;
            v236.size.height = a4;
            MinY = CGRectGetMinY(v236);
            if (v136 > 0)
            {
              sub_29DEFCCC0(v226, v106, MinX + v102 * v136, MinY, a3, a4);
            }

            v130 = *(v133 + 48);
            v131 = sub_29E2C31A4();
            (*(*(v131 - 8) + 8))(v20 + v130, v131);
          }
        }
      }

      return;
    }

    v72 = v225;
    v73 = [*&v225 traitCollection];
    [v73 displayScale];
    v75 = v74;

    v76 = (*&v72 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_header);
    v77 = 1.0 / v75;
    if (*(*&v72 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_header + 32))
    {
      v78 = 0;
      v79 = v226;
    }

    else
    {
      v82 = v76[2];
      v219 = v76[3];
      v209 = v82;
      v84 = *v76;
      v83 = v76[1];
      v85 = sub_29E19B240(*v76, v83);
      v86 = v221;
      v87 = v220;
      v88 = v222;
      (*(v221 + 104))(v220, *MEMORY[0x29EDC9EC0], v222);
      v231.origin.x = a1;
      v231.origin.y = a2;
      v231.size.width = a3;
      v231.size.height = a4;
      v89 = CGRectGetMinY(v231);
      v214 = v77;
      v90 = sub_29E1CBDFC(v87, v77, v85 + v89) - v89;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v232.origin.x = a1;
      v232.origin.y = a2;
      v232.size.width = a3;
      v232.size.height = a4;
      CGRectDivide(v232, &slice, &remainder, v90, CGRectMinYEdge);
      (*(v86 + 8))(v87, v88);
      x = slice.origin.x;
      y = slice.origin.y;
      width = slice.size.width;
      height = slice.size.height;
      v95 = [objc_opt_self() systemBackgroundColor];
      v96 = [*&v72 &off_29F3633F8];
      v97 = [v95 resolvedColorWithTraitCollection_];

      v79 = v226;
      CGContextSaveGState(v226);
      v98 = [v97 CGColor];
      CGContextSetFillColorWithColor(v79, v98);

      v233.origin.x = x;
      v233.origin.y = y;
      v233.size.width = width;
      v233.size.height = height;
      CGContextFillRect(v79, v233);
      CGContextRestoreGState(v79);

      v72 = v225;
      CGContextSaveGState(v79);
      v99 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
      swift_beginAccess();
      sub_29DEFC850(*&v72 + v99, v54);
      v100 = [*&v72 &off_29F3633F8];
      sub_29E19BA04(v79, v54, v100, v84, v83, x, y, width, height, *&v209);

      sub_29DEFC8E4(v54);
      CGContextRestoreGState(v79);
      v234.origin.x = x;
      v234.origin.y = y;
      v234.size.width = width;
      v234.size.height = height;
      CGContextClipToRect(v79, v234);
      v101 = (*&v72 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer);
      swift_beginAccess();
      if (v101[2])
      {
        v78 = 0;
        v77 = v214;
      }

      else
      {
        v113 = *v101;
        v114 = v211;
        sub_29DEFC850(*&v72 + v99, v211);
        v115 = [*&v72 &off_29F3633F8];
        sub_29DEFC9D4(v79, v115, a1, a2, a3, a4);
        v116 = v210;
        sub_29DEFC850(v114, v210);
        v117 = v224;
        if ((*(v223 + 48))(v116, 1, v224) == 1)
        {
          sub_29DEFC8E4(v116);
          v219 = 0;
          v118 = MEMORY[0x29EDCA190];
          v77 = v214;
        }

        else
        {
          v141 = v217;
          sub_29E02CAF8((v116 + *(v117 + 24)), v217);
          v142 = sub_29E2BCD54();
          v143 = sub_29E2C31A4();
          v144 = *(v143 - 8);
          v145 = v216;
          (*(v144 + 16))(v216, v141, v143);
          v146 = *(v144 + 56);
          v146(v145, 0, 1, v143);
          v147 = v215;
          v146(v215, 1, 1, v143);
          v148 = sub_29E059C18(v145, v147);
          sub_29DEFC970(v147, sub_29DEDB978);
          v149 = sub_29DEFC970(v145, sub_29DEDB978);
          v77 = v214;
          if (!v142)
          {
            goto LABEL_75;
          }

          MEMORY[0x2A1C7C4A8](v149);
          *(&v208 - 2) = v141;
          v118 = sub_29E0B3C98(sub_29DEFD4F4, (&v208 - 4), 0, v148, v142);
          v219 = 0;
          sub_29DEFC970(v141, sub_29DEFCC2C);
          sub_29DEFC970(v210, type metadata accessor for CycleChartCycle);
          v79 = v226;
        }

        v150 = 0;
        v151 = *(v118 + 16);
        v152 = v208;
        while (1)
        {
          if (v150 == v151)
          {
            sub_29DEFCBC0();
            v156 = v155;
            (*(*(v155 - 8) + 56))(v152, 1, 1, v155);
            v150 = v151;
          }

          else
          {
            if ((v150 & 0x8000000000000000) != 0)
            {
              goto LABEL_71;
            }

            if (v150 >= *(v118 + 16))
            {
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
            }

            sub_29DEFCBC0();
            v156 = v157;
            v158 = *(v157 - 8);
            sub_29DEFCF28(v118 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v150++, v152);
            (*(v158 + 56))(v152, 0, 1, v156);
            v79 = v226;
          }

          sub_29DEFCF8C(v152, v30);
          sub_29DEFCBC0();
          if ((*(*(v156 - 8) + 48))(v30, 1, v156) == 1)
          {
            break;
          }

          v159 = *v30;
          v237.origin.x = a1;
          v237.origin.y = a2;
          v237.size.width = a3;
          v237.size.height = a4;
          v160 = CGRectGetMinX(v237);
          v238.origin.x = a1;
          v238.origin.y = a2;
          v238.size.width = a3;
          v238.size.height = a4;
          v161 = CGRectGetMinY(v238);
          if (v159 > 0)
          {
            sub_29DEFCCC0(v79, v115, v160 + v113 * v159, v161, a3, a4);
          }

          v153 = *(v156 + 48);
          v154 = sub_29E2C31A4();
          (*(*(v154 - 8) + 8))(v30 + v153, v154);
        }

        sub_29DEFC8E4(v211);
        v72 = v225;
        v78 = v219;
      }

      CGContextResetClip(v79);
    }

    v162 = (*&v72 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer);
    swift_beginAccess();
    if (v162[2])
    {
    }

    else
    {
      v225 = *v162;
      v163 = sub_29DF5A018();
      v164 = v221;
      v165 = v220;
      v166 = v222;
      (*(v221 + 104))(v220, *MEMORY[0x29EDC9EC8], v222);
      v239.origin.x = a1;
      v239.origin.y = a2;
      v239.size.width = a3;
      v239.size.height = a4;
      MaxY = CGRectGetMaxY(v239);
      v168 = MaxY - sub_29E1CBDFC(v165, v77, MaxY - v163);
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v240.origin.x = a1;
      v240.origin.y = a2;
      v240.size.width = a3;
      v240.size.height = a4;
      CGRectDivide(v240, &slice, &remainder, v168, CGRectMaxYEdge);
      (*(v164 + 8))(v165, v166);
      v169 = slice.origin.x;
      v170 = slice.origin.y;
      v172 = slice.size.width;
      v171 = slice.size.height;
      sub_29DEFD040(v79, *&v72, v225, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
      v241.origin.x = v169;
      v241.origin.y = v170;
      v241.size.width = v172;
      v241.size.height = v171;
      CGContextClipToRect(v79, v241);
      v173 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
      swift_beginAccess();
      v174 = *&v72 + v173;
      v175 = v218;
      sub_29DEFC850(v174, v218);
      v176 = [*&v72 traitCollection];
      v177 = v79;
      v178 = v176;
      sub_29DEFC9D4(v177, v176, a1, a2, a3, a4);
      v179 = v213;
      sub_29DEFC850(v175, v213);
      v180 = v224;
      v181 = (*(v223 + 48))(v179, 1, v224);
      v219 = v78;
      if (v181 == 1)
      {
        sub_29DEFC8E4(v179);
        v182 = MEMORY[0x29EDCA190];
      }

      else
      {
        v183 = v217;
        sub_29E02CAF8((v179 + *(v180 + 24)), v217);
        v184 = sub_29E2BCD54();
        v185 = sub_29E2C31A4();
        v186 = *(v185 - 8);
        v187 = v216;
        (*(v186 + 16))(v216, v183, v185);
        v188 = *(v186 + 56);
        v188(v187, 0, 1, v185);
        v189 = v215;
        v188(v215, 1, 1, v185);
        v190 = sub_29E059C18(v187, v189);
        sub_29DEFC970(v189, sub_29DEDB978);
        v191 = sub_29DEFC970(v187, sub_29DEDB978);
        if (!v184)
        {
          goto LABEL_74;
        }

        MEMORY[0x2A1C7C4A8](v191);
        *(&v208 - 2) = v183;
        v192 = v184;
        v193 = v219;
        v182 = sub_29E0B3C98(sub_29DEFD4F4, (&v208 - 4), 0, v190, v192);
        v219 = v193;
        sub_29DEFC970(v183, sub_29DEFCC2C);
        sub_29DEFC970(v179, type metadata accessor for CycleChartCycle);
      }

      v194 = v225;
      v195 = 0;
      v196 = *(v182 + 16);
      v197 = v212;
      while (1)
      {
        if (v195 == v196)
        {
          sub_29DEFCBC0();
          v201 = v200;
          (*(*(v200 - 8) + 56))(v197, 1, 1, v200);
          v195 = v196;
        }

        else
        {
          if ((v195 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          if (v195 >= *(v182 + 16))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          sub_29DEFCBC0();
          v201 = v202;
          v203 = *(v202 - 8);
          sub_29DEFCF28(v182 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v195++, v197);
          (*(v203 + 56))(v197, 0, 1, v201);
        }

        sub_29DEFCF8C(v197, v25);
        sub_29DEFCBC0();
        if ((*(*(v201 - 8) + 48))(v25, 1, v201) == 1)
        {
          break;
        }

        v204 = *v25;
        v242.origin.x = a1;
        v242.origin.y = a2;
        v242.size.width = a3;
        v242.size.height = a4;
        v205 = CGRectGetMinX(v242);
        v243.origin.x = a1;
        v243.origin.y = a2;
        v243.size.width = a3;
        v243.size.height = a4;
        v206 = CGRectGetMinY(v243);
        if (v204 > 0)
        {
          sub_29DEFCCC0(v226, v178, v205 + v194 * v204, v206, a3, a4);
        }

        v198 = *(v201 + 48);
        v199 = sub_29E2C31A4();
        (*(*(v199 - 8) + 8))(v25 + v198, v199);
      }

      sub_29DEFC8E4(v218);
      v207 = v226;
      CGContextResetClip(v226);
    }
  }

  else
  {
    v63 = v225;
    v64 = v10;
    sub_29E2C04B4();
    v65 = sub_29E2C0504();
    v66 = sub_29E2C3A14();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = COERCE_DOUBLE(swift_slowAlloc());
      slice.origin.x = v68;
      *v67 = 136446210;
      v69 = sub_29E2C4AE4();
      v71 = sub_29DFAA104(v69, v70, &slice);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_29DE74000, v65, v66, "[%{public}s] Skipping drawing with no current context", v67, 0xCu);
      sub_29DE93B3C(*&v68);
      MEMORY[0x29ED82140](*&v68, -1, -1);
      MEMORY[0x29ED82140](v67, -1, -1);
    }

    (*(*&v63 + 8))(v12, v64);
  }
}

uint64_t sub_29DEFC620()
{
  sub_29DEFC8E4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle);
}

uint64_t type metadata accessor for CycleChartSectionView()
{
  result = qword_2A18189D8;
  if (!qword_2A18189D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DEFC700()
{
  sub_29DEFD448(319, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_29DEFC7FC()
{
  result = qword_2A18189F0;
  if (!qword_2A18189F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18189F0);
  }

  return result;
}

uint64_t sub_29DEFC850(uint64_t a1, uint64_t a2)
{
  sub_29DEFD448(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEFC8E4(uint64_t a1)
{
  sub_29DEFD448(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DEFC970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DEFC9D4(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = [objc_opt_self() systemGrayColor];
  CGContextSaveGState(a1);
  v12 = [v22 resolvedColorWithTraitCollection_];
  [a2 displayScale];
  v14 = 1.0 / v13;
  v15 = 1.0 / v13 * 0.5;
  sub_29DEFD448(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CD7A0;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v17 = CGRectGetMaxX(v24) - v15;
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MinY = CGRectGetMinY(v25);
  *(v16 + 32) = v17;
  *(v16 + 40) = MinY;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v19 = CGRectGetMaxX(v26) - v15;
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  MaxY = CGRectGetMaxY(v27);
  *(v16 + 48) = v19;
  *(v16 + 56) = MaxY;
  v21 = [v12 CGColor];
  CGContextSetStrokeColorWithColor(a1, v21);

  CGContextSetLineWidth(a1, v14);
  sub_29E2C38F4();

  CGContextRestoreGState(a1);
}

void sub_29DEFCBC0()
{
  if (!qword_2A1818A00)
  {
    sub_29E2C31A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1818A00);
    }
  }
}

void sub_29DEFCC2C()
{
  if (!qword_2A1819F90)
  {
    sub_29E2C31A4();
    sub_29DEFD4AC(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E2C32E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819F90);
    }
  }
}

void sub_29DEFCCC0(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextSaveGState(a1);
  sub_29E2C38E4();
  v12 = [objc_opt_self() systemGray3Color];
  CGContextSaveGState(a1);
  v13 = [v12 resolvedColorWithTraitCollection_];
  [a2 displayScale];
  v15 = 1.0 / v14;
  v16 = 1.0 / v14 * 0.5;
  sub_29DEFD448(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E2CD7A0;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v18 = v16 + CGRectGetMinX(v24);
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  MinY = CGRectGetMinY(v25);
  *(v17 + 32) = v18;
  *(v17 + 40) = MinY;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v20 = v16 + CGRectGetMinX(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  MaxY = CGRectGetMaxY(v27);
  *(v17 + 48) = v20;
  *(v17 + 56) = MaxY;
  v22 = [v13 CGColor];
  CGContextSetStrokeColorWithColor(a1, v22);

  CGContextSetLineWidth(a1, v15);
  sub_29E2C38F4();

  CGContextRestoreGState(a1);

  CGContextRestoreGState(a1);
}

uint64_t sub_29DEFCEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartCycle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEFCF28(uint64_t a1, uint64_t a2)
{
  sub_29DEFCBC0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEFCF8C(uint64_t a1, uint64_t a2)
{
  sub_29DEFD448(0, &qword_2A18189F8, sub_29DEFCBC0, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29DEFD040(CGContext *a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  sub_29DEFD448(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v37 - v18;
  v20 = [objc_opt_self() systemBackgroundColor];
  v21 = [a2 traitCollection];
  v22 = [v20 resolvedColorWithTraitCollection_];

  CGContextSaveGState(a1);
  v23 = [v22 CGColor];
  CGContextSetFillColorWithColor(a1, v23);

  v40.origin.x = a4;
  v40.origin.y = a5;
  v40.size.width = a6;
  v40.size.height = a7;
  CGContextFillRect(a1, v40);
  CGContextRestoreGState(a1);

  CGContextSaveGState(a1);
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
  swift_beginAccess();
  sub_29DEFC850(a2 + v24, v19);
  v25 = [a2 traitCollection];
  sub_29DEFC9D4(a1, v25, a4, a5, a6, a7);
  sub_29DEFC850(v19, v16);
  v26 = type metadata accessor for CycleChartCycle(0);
  v27 = (*(*(v26 - 8) + 48))(v16, 1, v26);
  v38 = v25;
  v39 = v19;
  if (v27 == 1)
  {
    sub_29DEFC8E4(v16);
    v28 = MEMORY[0x29EDCA190];
    v29 = *(MEMORY[0x29EDCA190] + 16);
    if (!v29)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v28 = sub_29E1CEFD4();
    sub_29DEFC970(v16, type metadata accessor for CycleChartCycle);
    v29 = v28[2];
    if (!v29)
    {
      goto LABEL_7;
    }
  }

  v30 = (v28 + 5);
  do
  {
    v31 = *(v30 - 1) * a3;
    v32 = *v30;
    v41.origin.x = a4;
    v41.origin.y = a5;
    v41.size.width = a6;
    v41.size.height = a7;
    v33 = v31 + CGRectGetMinX(v41);
    v42.origin.x = a4;
    v42.origin.y = a5;
    v42.size.width = a6;
    v42.size.height = a7;
    v34 = CGRectGetMinY(v42) + 4.0;
    sub_29DF598BC();
    type metadata accessor for Key(0);
    sub_29DEFD4AC(&qword_2A18177F0, type metadata accessor for Key);
    v35 = sub_29E2C31F4();

    [v32 drawAtPoint:v35 withAttributes:{v33 + 4.0, v34}];

    v30 += 2;
    --v29;
  }

  while (v29);
LABEL_7:

  v36 = v38;
  sub_29DF5A1D4(a1, v38, a4, a5, a6, a7);

  sub_29DEFC8E4(v39);
  CGContextRestoreGState(a1);
}

void sub_29DEFD448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DEFD4AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29DEFD50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v6 = v5;

  if (v4 == 0xD000000000000035 && 0x800000029E2EFFB0 == v6)
  {
  }

  else
  {
    v8 = sub_29E2C4914();

    if ((v8 & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  v10 = type metadata accessor for SleepingWristTemperatureDataTypeDetailDebugActionProvider();
  v11 = swift_allocObject();
  *(a2 + 24) = v10;
  result = sub_29DEFD5F4();
  *(a2 + 32) = result;
  *a2 = v11;
  return result;
}

unint64_t sub_29DEFD5F4()
{
  result = qword_2A1818A08;
  if (!qword_2A1818A08)
  {
    type metadata accessor for SleepingWristTemperatureDataTypeDetailDebugActionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818A08);
  }

  return result;
}

void sub_29DEFD6E8()
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

id sub_29DEFD7B0()
{
  sub_29DECE8A4(0, &qword_2A1A619B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29DE927B8(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29DEFD88C()
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

uint64_t sub_29DEFDA7C()
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

void sub_29DEFDC78()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v249 = &v226 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_29E2C3384();
  v247 = *(v235 - 8);
  MEMORY[0x2A1C7C4A8](v235);
  v3 = &v226 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v226 - v5;
  sub_29DEFFE04();
  v7 = sub_29E2BDD14();
  v8 = *(v7 - 8);
  v240 = *(v8 + 72);
  v241 = v8;
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2D0690;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v246 = qword_2A1A67F80;
  v11 = qword_2A1A67F80;
  v12 = sub_29E2C33A4();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v11 compatibleWithTraitCollection:0];

  if (v13)
  {
    v229 = v10;
    v14 = v10 + v9;
    v237 = v10 + v9;
    *v14 = v13;
    *(v14 + 8) = 0;
    v15 = *MEMORY[0x29EDC1608];
    v16 = *(v241 + 104);
    v241 += 104;
    v238 = v16;
    (v16)(v10 + v9, v15, v7);
    v236 = v7;
    v17 = (v10 + v9 + v240);
    sub_29E2C3314();
    v18 = v247;
    v19 = *(v247 + 16);
    v242 = v247 + 16;
    v244 = "Pregnancy Warning Signs";
    v245 = v19;
    v20 = v235;
    v19(v3, v6, v235);
    sub_29E2BCC74();
    v234 = v11;
    v21 = sub_29E2C3414();
    v23 = v22;
    v24 = *(v18 + 8);
    v247 = v18 + 8;
    v24(v6, v20);
    v243 = v24;
    *v17 = v21;
    v17[1] = v23;
    (v238)(v17, *MEMORY[0x29EDC1610], v236);
    v233 = 2 * v240;
    v25 = v237 + 2 * v240;
    v239 = 0xD000000000000013;
    sub_29E2C3314();
    v248 = v3;
    v245(v3, v6, v20);
    sub_29E2BCC74();
    v232 = v234;
    v26 = sub_29E2C3414();
    v28 = v27;
    v24(v6, v20);
    *v25 = v26;
    *(v25 + 8) = v28;
    *(v25 + 16) = 0;
    LODWORD(v234) = *MEMORY[0x29EDC1630];
    v29 = v238;
    v238(v25);
    v30 = v240;
    v31 = (v237 + v233 + v240);
    sub_29E2C3314();
    v245(v248, v6, v20);
    sub_29E2BCC74();
    v232 = v232;
    v32 = sub_29E2C3414();
    v34 = v33;
    v243(v6, v20);
    *v31 = v32;
    v31[1] = v34;
    v31[2] = 0;
    LODWORD(v233) = *MEMORY[0x29EDC15D0];
    v35 = v236;
    v29(v31);
    v36 = 4 * v30;
    v231 = (4 * v30);
    v37 = v237;
    v38 = v237 + v36;
    sub_29E2C3314();
    v245(v248, v6, v20);
    sub_29E2BCC74();
    v232 = v232;
    v39 = sub_29E2C3414();
    v41 = v40;
    v42 = v243;
    v243(v6, v20);
    *v38 = v39;
    *(v38 + 8) = v41;
    *(v38 + 16) = 0;
    v43 = v234;
    (v238)(v38, v234, v35);
    v44 = &v231[v240 + v37];
    sub_29E2C3314();
    v45 = v245;
    v245(v248, v6, v20);
    sub_29E2BCC74();
    v232 = v232;
    v46 = sub_29E2C3414();
    v48 = v47;
    v42(v6, v20);
    *v44 = v46;
    *(v44 + 1) = v48;
    v44[16] = 0;
    v49 = v43;
    v50 = v236;
    v51 = v238;
    (v238)(v44, v49, v236);
    v52 = v237 + 6 * v240;
    sub_29E2C3314();
    v53 = v248;
    v45(v248, v6, v20);
    sub_29E2BCC74();
    v231 = v232;
    v54 = sub_29E2C3414();
    v56 = v55;
    v243(v6, v20);
    *v52 = v54;
    *(v52 + 8) = v56;
    *(v52 + 16) = 0;
    v51(v52, v234, v50);
    v232 = (8 * v240);
    v57 = v237;
    v58 = (v237 + 7 * v240);
    sub_29E2C3314();
    v245(v53, v6, v20);
    sub_29E2BCC74();
    v231 = v231;
    v59 = sub_29E2C3414();
    v61 = v60;
    v243(v6, v20);
    *v58 = v59;
    v58[1] = v61;
    v58[2] = 0;
    v62 = v238;
    (v238)(v58, v233, v236);
    v63 = &v232[v57];
    sub_29E2C3314();
    v245(v248, v6, v20);
    sub_29E2BCC74();
    v231 = v231;
    v64 = sub_29E2C3414();
    v66 = v65;
    v67 = v20;
    v243(v6, v20);
    *v63 = v64;
    *(v63 + 1) = v66;
    v63[16] = 0;
    v68 = v234;
    v69 = v236;
    v62(v63, v234, v236);
    v70 = v237;
    v71 = &v232[v240 + v237];
    sub_29E2C3314();
    v245(v248, v6, v20);
    sub_29E2BCC74();
    v232 = v231;
    v72 = sub_29E2C3414();
    v74 = v73;
    v75 = v243;
    v243(v6, v67);
    *v71 = v72;
    *(v71 + 1) = v74;
    v71[16] = 0;
    (v238)(v71, v68, v69);
    *&v230 = v70 + 10 * v240;
    sub_29DECE8A4(0, &qword_2A1A62780);
    v231 = v76;
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_29E2D06A0;
    sub_29E2C3314();
    v245(v248, v6, v67);
    sub_29E2BCC74();
    v232 = v232;
    v78 = sub_29E2C3414();
    v80 = v79;
    v75(v6, v67);
    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    sub_29E2C3314();
    v81 = v248;
    v245(v248, v6, v67);
    sub_29E2BCC74();
    v232 = v232;
    v82 = v81;
    v83 = sub_29E2C3414();
    v85 = v84;
    v243(v6, v67);
    *(v77 + 48) = v83;
    *(v77 + 56) = v85;
    sub_29E2C3314();
    v86 = v245;
    v245(v82, v6, v67);
    sub_29E2BCC74();
    v232 = v232;
    v87 = sub_29E2C3414();
    v89 = v88;
    v90 = v243;
    v243(v6, v67);
    *(v77 + 64) = v87;
    *(v77 + 72) = v89;
    sub_29E2C3314();
    v86(v248, v6, v67);
    sub_29E2BCC74();
    v232 = v232;
    v91 = sub_29E2C3414();
    v93 = v92;
    v94 = v235;
    v90(v6, v235);
    *(v77 + 80) = v91;
    *(v77 + 88) = v93;
    sub_29E2C3314();
    v95 = v248;
    v86(v248, v6, v94);
    sub_29E2BCC74();
    v228 = v232;
    v96 = v95;
    v97 = sub_29E2C3414();
    v99 = v98;
    v100 = v94;
    v90(v6, v94);
    *(v77 + 96) = v97;
    *(v77 + 104) = v99;
    *v230 = v77;
    LODWORD(v232) = *MEMORY[0x29EDC15D8];
    v101 = v236;
    v102 = v238;
    (v238)();
    v103 = v240;
    v104 = v96;
    v105 = v237;
    v106 = (v237 + 11 * v240);
    sub_29E2C3314();
    v245(v104, v6, v100);
    sub_29E2BCC74();
    *&v230 = v228;
    v107 = sub_29E2C3414();
    v109 = v108;
    v243(v6, v100);
    *v106 = v107;
    v106[1] = v109;
    v106[2] = 0;
    v102(v105 + 11 * v103, v233, v101);
    v110 = v105 + 12 * v103;
    sub_29E2C3314();
    v111 = v235;
    v245(v248, v6, v235);
    sub_29E2BCC74();
    *&v230 = v230;
    v112 = sub_29E2C3414();
    v114 = v113;
    v243(v6, v111);
    *v110 = v112;
    *(v110 + 8) = v114;
    *(v110 + 16) = 0;
    v115 = v238;
    (v238)(v110, v234, v236);
    v116 = v237;
    v117 = v237 + 13 * v240;
    sub_29E2C3314();
    v245(v248, v6, v111);
    sub_29E2BCC74();
    v228 = v230;
    v118 = sub_29E2C3414();
    v120 = v119;
    v243(v6, v111);
    *v117 = v118;
    *(v117 + 8) = v120;
    *(v117 + 16) = 0;
    v115(v117, v234, v236);
    *&v230 = v116 + 14 * v240;
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_29E2CFE80;
    sub_29E2C3314();
    v122 = v245;
    v245(v248, v6, v111);
    sub_29E2BCC74();
    v228 = v228;
    v123 = sub_29E2C3414();
    v125 = v124;
    v243(v6, v111);
    *(v121 + 32) = v123;
    *(v121 + 40) = v125;
    sub_29E2C3314();
    v126 = v248;
    v122(v248, v6, v111);
    sub_29E2BCC74();
    v228 = v228;
    v127 = v126;
    v128 = sub_29E2C3414();
    v130 = v129;
    v131 = v243;
    v243(v6, v111);
    *(v121 + 48) = v128;
    *(v121 + 56) = v130;
    sub_29E2C3314();
    v132 = v111;
    v133 = v245;
    v245(v127, v6, v132);
    sub_29E2BCC74();
    v228 = v228;
    v134 = sub_29E2C3414();
    v136 = v135;
    v137 = v235;
    v131(v6, v235);
    *(v121 + 64) = v134;
    *(v121 + 72) = v136;
    sub_29E2C3314();
    v133(v248, v6, v137);
    sub_29E2BCC74();
    v228 = v228;
    v138 = sub_29E2C3414();
    v140 = v139;
    v141 = v235;
    v131(v6, v235);
    *(v121 + 80) = v138;
    *(v121 + 88) = v140;
    *v230 = v121;
    v142 = v236;
    v143 = v238;
    (v238)();
    *&v230 = 16 * v240;
    v144 = v237;
    v145 = (v237 + 15 * v240);
    sub_29E2C3314();
    v146 = v245;
    v245(v248, v6, v141);
    sub_29E2BCC74();
    v228 = v228;
    v147 = sub_29E2C3414();
    v149 = v148;
    v150 = v141;
    v151 = v243;
    v243(v6, v150);
    *v145 = v147;
    v145[1] = v149;
    v145[2] = 0;
    v143(v145, v233, v142);
    v152 = v144 + v230;
    sub_29E2C3314();
    v153 = v235;
    v146(v248, v6, v235);
    sub_29E2BCC74();
    v228 = v228;
    v154 = sub_29E2C3414();
    v156 = v155;
    v151(v6, v153);
    *v152 = v154;
    *(v152 + 8) = v156;
    *(v152 + 16) = 0;
    v157 = v234;
    v158 = v236;
    (v238)(v152, v234, v236);
    v159 = v240;
    v160 = v237;
    v161 = v237 + v230 + v240;
    sub_29E2C3314();
    v245(v248, v6, v153);
    sub_29E2BCC74();
    v227 = v228;
    v162 = sub_29E2C3414();
    v164 = v163;
    v165 = v235;
    v243(v6, v235);
    *v161 = v162;
    *(v161 + 8) = v164;
    *(v161 + 16) = 0;
    (v238)(v161, v157, v158);
    v228 = (v160 + 18 * v159);
    v166 = swift_allocObject();
    v230 = xmmword_29E2CE0D0;
    *(v166 + 16) = xmmword_29E2CE0D0;
    sub_29E2C3314();
    v245(v248, v6, v165);
    sub_29E2BCC74();
    v227 = v227;
    v167 = sub_29E2C3414();
    v169 = v168;
    v170 = v243;
    v243(v6, v165);
    *(v166 + 32) = v167;
    *(v166 + 40) = v169;
    sub_29E2C3314();
    v171 = v245;
    v245(v248, v6, v165);
    sub_29E2BCC74();
    v227 = v227;
    v172 = sub_29E2C3414();
    v174 = v173;
    v170(v6, v165);
    *(v166 + 48) = v172;
    *(v166 + 56) = v174;
    sub_29E2C3314();
    v175 = v248;
    v171(v248, v6, v165);
    sub_29E2BCC74();
    v227 = v227;
    v176 = sub_29E2C3414();
    v178 = v177;
    v170(v6, v165);
    *(v166 + 64) = v176;
    *(v166 + 72) = v178;
    *v228 = v166;
    v179 = v236;
    v180 = v238;
    (v238)();
    v181 = (v237 + 19 * v240);
    sub_29E2C3314();
    v182 = v245;
    v245(v175, v6, v165);
    sub_29E2BCC74();
    v228 = v227;
    v183 = sub_29E2C3414();
    v185 = v184;
    v243(v6, v165);
    *v181 = v183;
    v181[1] = v185;
    v181[2] = 0;
    v180(v181, v233, v179);
    v186 = v237;
    v187 = v240;
    v188 = v237 + 20 * v240;
    sub_29E2C3314();
    v189 = v235;
    v182(v248, v6, v235);
    sub_29E2BCC74();
    v228 = v228;
    v190 = sub_29E2C3414();
    v192 = v191;
    v193 = v189;
    v243(v6, v189);
    *v188 = v190;
    *(v188 + 8) = v192;
    *(v188 + 16) = 0;
    v194 = v234;
    v195 = v236;
    (v238)(v186 + 20 * v187, v234, v236);
    v196 = v186 + 21 * v187;
    sub_29E2C3314();
    v245(v248, v6, v193);
    sub_29E2BCC74();
    v227 = v228;
    v197 = sub_29E2C3414();
    v199 = v198;
    v243(v6, v193);
    *v196 = v197;
    *(v196 + 8) = v199;
    *(v196 + 16) = 0;
    (v238)(v196, v194, v195);
    v228 = (v186 + 22 * v240);
    v200 = swift_allocObject();
    *(v200 + 16) = v230;
    sub_29E2C3314();
    v245(v248, v6, v193);
    sub_29E2BCC74();
    v231 = v227;
    v201 = sub_29E2C3414();
    v203 = v202;
    v204 = v243;
    v243(v6, v193);
    *(v200 + 32) = v201;
    *(v200 + 40) = v203;
    sub_29E2C3314();
    v245(v248, v6, v193);
    sub_29E2BCC74();
    v231 = v231;
    v205 = sub_29E2C3414();
    v207 = v206;
    v204(v6, v193);
    *(v200 + 48) = v205;
    *(v200 + 56) = v207;
    sub_29E2C3314();
    v208 = v245;
    v245(v248, v6, v193);
    sub_29E2BCC74();
    v231 = v231;
    v209 = sub_29E2C3414();
    v211 = v210;
    v212 = v193;
    v213 = v243;
    v243(v6, v193);
    *(v200 + 64) = v209;
    *(v200 + 72) = v211;
    *v228 = v200;
    v214 = v238;
    (v238)();
    v215 = (v237 + 23 * v240);
    sub_29E2C3314();
    v216 = v248;
    v208(v248, v6, v212);
    sub_29E2BCC74();
    v217 = v231;
    v218 = sub_29E2C3414();
    v220 = v219;
    v213(v6, v212);
    *v215 = v218;
    v215[1] = v220;
    v215[2] = 0;
    v221 = v236;
    v214(v215, v233, v236);
    v222 = v237 + 24 * v240;
    sub_29E2C3314();
    v245(v216, v6, v212);
    sub_29E2BCC74();
    v223 = sub_29E2C3414();
    v225 = v224;
    v243(v6, v212);
    *v222 = v223;
    *(v222 + 8) = v225;
    *(v222 + 16) = 0;
    v214(v222, v234, v221);
  }

  else
  {
    __break(1u);
  }
}

void sub_29DEFFE04()
{
  if (!qword_2A1818A10)
  {
    sub_29E2BDD14();
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818A10);
    }
  }
}

__n128 sub_29DEFFF28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29DEFFF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_29DEFFF84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29DEFFFE0(void *a1, char a2, void *a3, _OWORD *a4, uint64_t (*a5)(), uint64_t a6)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_29E1F5D5C(a4, a5, a6);
    }

    else
    {
      sub_29E1F4F50(a3, a4, a5, a6);
    }
  }

  else
  {
    v10 = swift_allocObject();
    v11 = a4[1];
    *(v10 + 16) = *a4;
    *(v10 + 32) = v11;
    *(v10 + 42) = *(a4 + 26);
    *(v10 + 64) = a1;
    *(v10 + 72) = a5;
    *(v10 + 80) = a6;
    sub_29DF01474(a4, &v13);
    v12 = a1;
  }
}

void sub_29DF000D8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_29E2BF344();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  sub_29E0DA85C(v4, v11);

  v12 = objc_allocWithZone(type metadata accessor for MenstrualCyclesRoomViewController());
  v13 = sub_29E0A6D80(v10);
  v14 = objc_opt_self();
  [v14 begin];
  [v4 pushViewController:v13 animated:1];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = v13;
  aBlock[4] = sub_29DF0136C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B2BC0;
  v16 = _Block_copy(aBlock);

  v17 = v13;

  [v14 setCompletionBlock_];
  _Block_release(v16);
  [v14 commit];
}

uint64_t sub_29DF002BC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v5 = sub_29E2C2B34();
  v28 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B54();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C2B74();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v23 - v16;
  sub_29DEB1E60();
  v24 = sub_29E2C3CF4();
  sub_29E2C2B64();
  sub_29E2C2B94();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v18 = swift_allocObject();
  v18[2] = v23;
  v18[3] = a2;
  v18[4] = a3;
  aBlock[4] = sub_29DF01394;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B2C10;
  v19 = _Block_copy(aBlock);

  v20 = a3;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DF0141C(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DF013C4();
  sub_29DF0141C(&qword_2A1A626D0, sub_29DF013C4);
  sub_29E2C43F4();
  v21 = v24;
  MEMORY[0x29ED804A0](v17, v10, v7, v19);
  _Block_release(v19);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);
  return (v25)(v17, v11);
}

uint64_t sub_29DF0069C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v53[0] = 0x656D614E74736574;
  *(&v53[0] + 1) = 0xE800000000000000;
  sub_29E2C4514();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_92;
  }

  v6 = sub_29E1842D0(v52);
  if ((v7 & 1) == 0)
  {
LABEL_92:
    __break(1u);
LABEL_93:

    goto LABEL_26;
  }

  sub_29DEA6E90(*(a1 + 56) + 32 * v6, v51);
  sub_29DF014AC(v52);
  sub_29DEA049C(v51, v53);
  swift_dynamicCast();
  v3 = v49;
  v2 = v50;
  *&v51[0] = 0x6F69746172657469;
  *(&v51[0] + 1) = 0xEA0000000000736ELL;
  sub_29E2C4514();
  if (!*(a1 + 16) || (v8 = sub_29E1842D0(v52), (v9 & 1) == 0))
  {
    sub_29DF014AC(v52);
    goto LABEL_26;
  }

  sub_29DEA6E90(*(a1 + 56) + 32 * v8, v53);
  sub_29DF014AC(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v21 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  result = *(&v51[0] + 1);
  v11 = HIBYTE(*(&v51[0] + 1)) & 0xFLL;
  v12 = *&v51[0] & 0xFFFFFFFFFFFFLL;
  if ((*(&v51[0] + 1) & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(*(&v51[0] + 1)) & 0xFLL;
  }

  else
  {
    v13 = *&v51[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_93;
  }

  if ((*(&v51[0] + 1) & 0x1000000000000000) != 0)
  {
    v17 = sub_29DF269F4(*&v51[0], *(&v51[0] + 1), 10);
    v22 = v47;
LABEL_88:

    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

LABEL_27:
    *&v51[0] = 0x65446C6C6F726373;
    *(&v51[0] + 1) = 0xEB0000000061746CLL;
    sub_29E2C4514();
    if (*(a1 + 16) && (v23 = sub_29E1842D0(v52), (v24 & 1) != 0))
    {
      sub_29DEA6E90(*(a1 + 56) + 32 * v23, v53);
      sub_29DF014AC(v52);
      if (swift_dynamicCast())
      {
        v25 = sub_29DF2349C(*&v51[0], *(&v51[0] + 1));
        if (v26)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        v28 = (v26 & 1) != 0;
LABEL_36:
        *&v51[0] = 0x545052657375;
        *(&v51[0] + 1) = 0xE600000000000000;
        sub_29E2C4514();
        if (*(a1 + 16) && (v29 = sub_29E1842D0(v52), (v30 & 1) != 0))
        {
          sub_29DEA6E90(*(a1 + 56) + 32 * v29, v53);
          sub_29DF014AC(v52);

          result = swift_dynamicCast();
          if (result)
          {
            if (v51[0] == __PAIR128__(0xE300000000000000, 5457241))
            {

              v31 = 1;
            }

            else
            {
              v31 = sub_29E2C4914();
            }

            goto LABEL_43;
          }
        }

        else
        {

          result = sub_29DF014AC(v52);
        }

        v31 = 0;
LABEL_43:
        *a2 = v3;
        *(a2 + 8) = v2;
        *(a2 + 16) = v21;
        *(a2 + 24) = v22 & 1;
        *(a2 + 32) = v27;
        *(a2 + 40) = v28;
        *(a2 + 41) = v31 & 1;
        return result;
      }
    }

    else
    {
      sub_29DF014AC(v52);
    }

    v28 = 1;
    v27 = 0.0;
    goto LABEL_36;
  }

  if ((*(&v51[0] + 1) & 0x2000000000000000) == 0)
  {
    if ((*&v51[0] & 0x1000000000000000) != 0)
    {
      v14 = ((*(&v51[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v48 = *(&v51[0] + 1);
      v14 = sub_29E2C4604();
      result = v48;
    }

    v15 = *v14;
    if (v15 == 43)
    {
      if (v12 >= 1)
      {
        v35 = v12 - 1;
        if (v12 != 1)
        {
          v17 = 0;
          if (v14)
          {
            v36 = v14 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_86;
              }

              v38 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_86;
              }

              v17 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_86;
              }

              ++v36;
              if (!--v35)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_87;
        }

        goto LABEL_86;
      }

      goto LABEL_98;
    }

    if (v15 != 45)
    {
      if (v12)
      {
        v17 = 0;
        if (v14)
        {
          while (1)
          {
            v42 = *v14 - 48;
            if (v42 > 9)
            {
              goto LABEL_86;
            }

            v43 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_86;
            }

            v17 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              goto LABEL_86;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_87;
      }

LABEL_86:
      v17 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_87;
    }

    if (v12 >= 1)
    {
      v16 = v12 - 1;
      if (v12 != 1)
      {
        v17 = 0;
        if (v14)
        {
          v18 = v14 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_86;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_86;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_86;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_85;
            }
          }
        }

LABEL_87:
        LOBYTE(v53[0]) = v14;
        v22 = v14;
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v52[0] = *&v51[0];
  v52[1] = *(&v51[0] + 1) & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v51[0]) != 43)
  {
    if (LOBYTE(v51[0]) != 45)
    {
      if (v11)
      {
        v17 = 0;
        v44 = v52;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v11)
          {
LABEL_85:
            LOBYTE(v14) = 0;
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    if (v11)
    {
      v14 = (v11 - 1);
      if (v11 != 1)
      {
        v17 = 0;
        v32 = v52 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v14)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_97;
  }

  if (v11)
  {
    v14 = (v11 - 1);
    if (v11 != 1)
    {
      v17 = 0;
      v39 = v52 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v14)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_29DF00CCC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_29E2BF344();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v50 - v15;
  sub_29E2C04B4();
  sub_29E2BF404();
  sub_29E2BF404();
  v17 = sub_29E2C0504();
  v18 = sub_29E2C3A34();

  if (os_log_type_enabled(v17, v18))
  {
    v56 = a2;
    v54 = v13;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v58 = v20;
    *v19 = 136446466;
    if (!a3)
    {
LABEL_21:

      __break(1u);
      goto LABEL_22;
    }

    v21 = v20;
    v51 = v11;
    v52 = v10;
    v53 = a1;
    result = sub_29DFAA104(v56, a3, &v58);
    *(v19 + 4) = result;
    *(v19 + 12) = 2082;
    if (!a4)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v23 = sub_29E2C3224();
    v25 = sub_29DFAA104(v23, v24, &v58);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_29DE74000, v17, v18, "Executing test %{public}s with options %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v21, -1, -1);
    MEMORY[0x29ED82140](v19, -1, -1);

    v10 = v52;
    v26 = *(v51 + 8);
    v26(v16, v52);
    a1 = v53;
    v13 = v54;
    a2 = v56;
  }

  else
  {

    v26 = *(v11 + 8);
    result = (v26)(v16, v10);
    if (!a4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  v27 = sub_29E2BF404();
  sub_29DF0069C(v27, &v58);
  if (!a3)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_29E2BF404();
  v28 = sub_29E2C47E4();

  if (v28 <= 2)
  {
    if (a1)
    {
      v29 = sub_29E2BE284();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      *(v31 + 24) = a1;
      v32 = v59[0];
      *(v31 + 32) = v58;
      *(v31 + 48) = v32;
      *(v31 + 58) = *(v59 + 10);
      *(v31 + 80) = sub_29DF01504;
      *(v31 + 88) = v30;
      v33 = v29;
      v34 = a1;

      sub_29DF000D8(sub_29DF01358, v31, 2.0);

      return 1;
    }

    goto LABEL_24;
  }

  if (a2 == 0x64616F4C6D6F6F72 && a3 == 0xE800000000000000 || (result = sub_29E2C4914(), (result & 1) != 0))
  {
    if (a1)
    {
      v35 = sub_29E2BE284();
      v36 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      v37 = v55;
      sub_29E0DA85C(v35, v36);

      v38 = objc_allocWithZone(type metadata accessor for MenstrualCyclesRoomViewController());
      v39 = sub_29E0A6D80(v37);
      [v35 pushViewController:v39 animated:1];
      v40 = swift_allocObject();
      *(v40 + 16) = v35;
      v41 = v35;
      sub_29E1F54D0(a1, &v58, sub_29DF01318, v40);

      sub_29DF012E8(&v58);
      return 1;
    }

    goto LABEL_25;
  }

  sub_29DF012E8(&v58);
  sub_29E2C04B4();
  sub_29E2BF404();
  v42 = sub_29E2C0504();
  v43 = sub_29E2C3A14();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v13;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = a2;
    v48 = v46;
    v57 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29DFAA104(v47, a3, &v57);
    _os_log_impl(&dword_29DE74000, v42, v43, "No test configured by name %{public}s", v45, 0xCu);
    sub_29DE93B3C(v48);
    MEMORY[0x29ED82140](v48, -1, -1);
    MEMORY[0x29ED82140](v45, -1, -1);

    v49 = v44;
  }

  else
  {

    v49 = v13;
  }

  v26(v49, v10);
  return 0;
}

void sub_29DF01318()
{
  v1 = [*(v0 + 16) popToRootViewControllerAnimated_];
}

uint64_t sub_29DF0137C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DF013C4()
{
  if (!qword_2A1A626E0)
  {
    sub_29E2C2B34();
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A626E0);
    }
  }
}

uint64_t sub_29DF0141C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DF0150C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29DF01554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29DF015A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29DF015C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_29DF01610(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29DF0166C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29DF016B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29DF0171C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29DF01730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29DF01778(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29DF01800()
{
  if (sub_29E2BF334() == 1)
  {
    v1 = *(v0 + 40);
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 32);
    sub_29E2BF324();
    sub_29E2BF2F4();
    type metadata accessor for CycleLogHeaderDataSource();
    v5 = swift_allocObject();
    *(v5 + 56) = v1;
    sub_29DE9DC34(v17, v15);
    sub_29DE9DC34(v16, v14);
    type metadata accessor for CycleLogNavigationHandler();
    v6 = swift_allocObject();
    *(v6 + 48) = 0;
    *(v6 + 136) = 0;
    *(v6 + 16) = v3;

    v7 = HKLogMenstrualCyclesCategory();
    v8 = *(v3 + 24);
    v9 = [v8 healthStore];
    v10 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v7 healthDataSource:v9];

    *(v6 + 24) = v10;
    *(v6 + 32) = v2;
    *(v6 + 40) = v4;
    *(v6 + 144) = v1;
    sub_29DE9DC34(v15, v6 + 56);
    sub_29DE9DC34(v14, v6 + 96);

    [v8 registerObserver_];
    sub_29DE93B3C(v14);
    sub_29DE93B3C(v15);
    *(v5 + 48) = v6;
    sub_29DF05020(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
    sub_29E2BEBB4();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29E2CAB20;
    sub_29E2BEBA4();
    sub_29E0018F0(v11, 0);
    sub_29DE93B3C(v16);
    sub_29DE93B3C(v17);
    sub_29DF0434C(&qword_2A1818B28, type metadata accessor for CycleLogHeaderDataSource);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for CycleLogHeaderDataSource();
    sub_29DF0434C(&qword_2A1818B28, type metadata accessor for CycleLogHeaderDataSource);

    sub_29E2BE4B4();
  }

  sub_29DF04D5C();
  sub_29DF0434C(&qword_2A1818B38, sub_29DF04D5C);

  v12 = sub_29E2BE494();

  return v12;
}

uint64_t sub_29DF01C94(uint64_t a1)
{
  if (sub_29E2BF334() == 1)
  {
    sub_29DF01E7C(a1);
    type metadata accessor for CycleTrackingSizeClassResponsiveDataSource(0);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for CycleTrackingSizeClassResponsiveDataSource(0);

    sub_29E2BE4B4();
  }

  sub_29DF04E18();
  sub_29DF0434C(&qword_2A1818B48, sub_29DF04E18);

  v2 = sub_29E2BE494();

  return v2;
}

uint64_t sub_29DF01E7C(uint64_t a1)
{
  v100 = 0;
  sub_29DF04E9C();
  v104 = v3;
  v105 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v103 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for CycleLogModel();
  MEMORY[0x2A1C7C4A8](v102);
  v88 = (&v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v6);
  v85 = (&v84 - v7);
  MEMORY[0x2A1C7C4A8](v8);
  v92 = (&v84 - v9);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v101 = v13;
  swift_retain_n();
  swift_retain_n();
  sub_29E2BF324();
  v96 = a1;
  sub_29E2BF2F4();
  v93 = type metadata accessor for CycleLogDataSource();
  v14 = swift_allocObject();
  *(v14 + 48) = MEMORY[0x29EDCA1A0];
  v15 = objc_opt_self();
  v16 = *(v10 + 24);

  v17 = [v16 healthStore];
  v94 = v15;
  v18 = [v15 sharedInstanceForHealthStore_];

  v84 = *(v10 + 40);
  *(v14 + 56) = sub_29DF02FCC(v10, 0, v18, v84, v13, v11);
  sub_29DE9DC34(v111, v107);
  sub_29DE9DC34(v110, v106);
  v19 = type metadata accessor for CycleLogNavigationHandler();
  v20 = swift_allocObject();
  *(v20 + 48) = 0;
  *(v20 + 136) = 0;
  *(v20 + 16) = v10;
  v97 = v10;

  v21 = HKLogMenstrualCyclesCategory();
  v22 = [v16 healthStore];
  v23 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v21 healthDataSource:v22];

  *(v20 + 24) = v23;
  *(v20 + 32) = v11;
  *(v20 + 40) = v12;
  *(v20 + 144) = v101;
  sub_29DE9DC34(v107, v20 + 56);
  sub_29DE9DC34(v106, v20 + 96);
  v87 = v11;

  v99 = v12;

  v98 = v16;
  [v16 registerObserver_];
  sub_29DE93B3C(v106);
  sub_29DE93B3C(v107);
  *(v14 + 64) = v20;
  *(v14 + 72) = 0;

  v24 = v92;
  v25 = sub_29E2C10E4();
  v108 = v19;
  v109 = &off_2A24C20B8;
  v95 = v19;
  v26 = v24;
  v107[0] = v20;
  if (*(v24 + *(v102 + 32)) == 1)
  {

    v27 = MEMORY[0x29EDCA190];
  }

  else
  {
    v28 = *v24;
    MEMORY[0x2A1C7C4A8](v25);
    *(&v84 - 2) = v24;
    *(&v84 - 1) = v107;
    swift_retain_n();
    v29 = v100;
    v27 = sub_29E248D48(sub_29DF04F98, (&v84 - 4), v28);
    v100 = v29;
  }

  sub_29DE93B3C(v107);
  sub_29DF0514C(v26, type metadata accessor for CycleLogModel);
  v30 = sub_29E0018F0(v27, *(v27 + 16) == 0);
  v107[0] = *(v30[7] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_model);
  sub_29DF04F30();
  v32 = v31;
  v33 = sub_29DF0434C(&qword_2A1818B60, sub_29DF04F30);

  v34 = v103;
  v92 = v32;
  v91 = v33;
  sub_29E2C1364();
  swift_allocObject();
  swift_weakInit();
  v35 = sub_29DF0434C(&qword_2A1818B68, sub_29DF04E9C);
  v36 = v104;
  v90 = v35;
  sub_29E2C1384();

  v37 = *(v105 + 8);
  v105 += 8;
  v89 = v37;
  v37(v34, v36);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
  v86 = v30;

  sub_29DE93B3C(v110);
  sub_29DE93B3C(v111);
  sub_29E2BF324();
  sub_29E2BF2F4();
  v38 = swift_allocObject();
  *(v38 + 48) = MEMORY[0x29EDCA1A0];
  v39 = v87;

  v40 = v97;

  v41 = v98;
  v42 = [v98 healthStore];
  v43 = [v94 sharedInstanceForHealthStore_];

  v84 = v84;
  LOBYTE(v30) = v101;
  *(v38 + 56) = sub_29DF02FCC(v40, 1, v43, v84, v101, v39);
  sub_29DE9DC34(v111, v107);
  sub_29DE9DC34(v110, v106);
  v44 = v95;
  v45 = swift_allocObject();
  *(v45 + 48) = 0;
  *(v45 + 136) = 0;
  *(v45 + 16) = v40;

  v46 = HKLogMenstrualCyclesCategory();
  v47 = [v41 healthStore];
  v48 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v46 healthDataSource:v47];

  *(v45 + 24) = v48;
  *(v45 + 32) = v39;
  *(v45 + 40) = v99;
  *(v45 + 144) = v30;
  sub_29DE9DC34(v107, v45 + 56);
  sub_29DE9DC34(v106, v45 + 96);
  [v41 registerObserver_];
  sub_29DE93B3C(v106);
  sub_29DE93B3C(v107);
  *(v38 + 64) = v45;
  *(v38 + 72) = 1;

  v49 = v85;
  v50 = sub_29E2C10E4();
  v108 = v44;
  v109 = &off_2A24C20B8;
  v107[0] = v45;
  if (*(v49 + *(v102 + 32)) == 1)
  {

    v51 = MEMORY[0x29EDCA190];
  }

  else
  {
    v52 = *v49;
    MEMORY[0x2A1C7C4A8](v50);
    *(&v84 - 2) = v49;
    *(&v84 - 1) = v107;
    swift_retain_n();
    v53 = v100;
    v51 = sub_29E248D48(sub_29DF052D0, (&v84 - 4), v52);
    v100 = v53;
  }

  sub_29DE93B3C(v107);
  sub_29DF0514C(v49, type metadata accessor for CycleLogModel);
  v54 = sub_29E0018F0(v51, *(v51 + 16) == 0);
  v107[0] = *(v54[7] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_model);

  v55 = v103;
  sub_29E2C1364();
  swift_allocObject();
  swift_weakInit();
  v56 = v104;
  sub_29E2C1384();

  v89(v55, v56);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
  v85 = v54;

  sub_29DE93B3C(v110);
  sub_29DE93B3C(v111);
  sub_29E2BF324();
  sub_29E2BF2F4();
  v57 = swift_allocObject();
  *(v57 + 48) = MEMORY[0x29EDCA1A0];

  v58 = v97;

  v59 = v98;
  v60 = [v98 healthStore];
  v61 = [v94 sharedInstanceForHealthStore_];

  v62 = v84;
  LOBYTE(v56) = v101;
  *(v57 + 56) = sub_29DF02FCC(v58, 2, v61, v62, v101, v39);
  sub_29DE9DC34(v111, v107);
  sub_29DE9DC34(v110, v106);
  v63 = v95;
  v64 = swift_allocObject();
  *(v64 + 48) = 0;
  *(v64 + 136) = 0;
  *(v64 + 16) = v58;

  v65 = HKLogMenstrualCyclesCategory();
  v66 = [v59 healthStore];
  v67 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v65 healthDataSource:v66];

  *(v64 + 24) = v67;
  *(v64 + 32) = v39;
  *(v64 + 40) = v99;
  *(v64 + 144) = v56;
  sub_29DE9DC34(v107, v64 + 56);
  sub_29DE9DC34(v106, v64 + 96);
  [v59 registerObserver_];
  sub_29DE93B3C(v106);
  sub_29DE93B3C(v107);
  *(v57 + 64) = v64;
  *(v57 + 72) = 2;

  v68 = v88;
  v69 = sub_29E2C10E4();
  v108 = v63;
  v109 = &off_2A24C20B8;
  v107[0] = v64;
  if (*(v68 + *(v102 + 32)) == 1)
  {

    v70 = MEMORY[0x29EDCA190];
  }

  else
  {
    v71 = *v68;
    MEMORY[0x2A1C7C4A8](v69);
    *(&v84 - 2) = v68;
    *(&v84 - 1) = v107;
    swift_retain_n();
    v70 = sub_29E248D48(sub_29DF052D0, (&v84 - 4), v71);
  }

  sub_29DE93B3C(v107);
  sub_29DF0514C(v68, type metadata accessor for CycleLogModel);
  v72 = sub_29E0018F0(v70, *(v70 + 16) == 0);
  v107[0] = *(v72[7] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleLogModelProvider_model);

  v73 = v103;
  sub_29E2C1364();
  swift_allocObject();
  swift_weakInit();
  v74 = v104;
  sub_29E2C1384();

  v89(v73, v74);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  sub_29DE93B3C(v110);
  sub_29DE93B3C(v111);
  v75 = type metadata accessor for CycleLogLayoutEngine();
  v76 = swift_allocObject();
  *(v76 + 16) = 0x4072C00000000000;
  *(v76 + 32) = 0;
  swift_unknownObjectWeakInit();
  v77 = sub_29DF0434C(&unk_2A1818B70, type metadata accessor for CycleLogDataSource);
  v111[3] = v75;
  v111[4] = sub_29DF0434C(&qword_2A1817CB0, type metadata accessor for CycleLogLayoutEngine);
  v111[0] = v76;
  type metadata accessor for CycleTrackingMultiColumnDataSource(0);
  swift_allocObject();
  sub_29DF05020(0, &qword_2A1818B80, sub_29DF04FC0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_29E2CD7A0;
  *(v78 + 32) = v85;
  *(v78 + 40) = v77;
  *(v78 + 48) = v72;
  *(v78 + 56) = v77;
  sub_29DE9DC34(v111, v110);

  v79 = sub_29E2BEAF4();
  sub_29DE93B3C(v111);
  *(v76 + 32) = MEMORY[0x29EDC2200];
  swift_unknownObjectWeakAssign();
  type metadata accessor for CycleTrackingSizeClassResponsiveDataSource(0);
  v80 = swift_allocObject();

  v82 = sub_29DF0384C(v81, v79, v80);

  return v82;
}