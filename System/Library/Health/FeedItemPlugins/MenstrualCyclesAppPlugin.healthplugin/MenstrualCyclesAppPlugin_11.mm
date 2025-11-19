uint64_t sub_29DFAA6B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_29DFAA750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DFAA7D4()
{
  if (sub_29E2BF334() == 1)
  {
    v0 = sub_29E2BF314();
    sub_29E2BF324();
    sub_29E2BF2F4();
    type metadata accessor for AddPregnancyDataSource();
    swift_allocObject();
    sub_29E272BBC(v0, v4, &v3, 0);

    sub_29DFAA750(&qword_2A1819F30, type metadata accessor for AddPregnancyDataSource);
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

    type metadata accessor for AddPregnancyDataSource();
    sub_29DFAA750(&qword_2A1819F30, type metadata accessor for AddPregnancyDataSource);

    sub_29E2BE4B4();
  }

  sub_29DFAAA58(0);
  sub_29DFAA750(&unk_2A1819F40, sub_29DFAAA58);

  v1 = sub_29E2BE494();

  return v1;
}

void sub_29DFAAA94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E2BE3B4();
    sub_29DFAA750(a4, a5);
    v8 = sub_29E2BEDE4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DFAAB48()
{
  if (!qword_2A1A61CA8)
  {
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61CA8);
    }
  }
}

id sub_29DFAAF38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleCycleViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SingleCycleViewDataSource()
{
  result = qword_2A1819F70;
  if (!qword_2A1819F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DFAB050()
{
  result = sub_29E2C31A4();
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

unint64_t sub_29DFAB110()
{
  result = qword_2A1819F80;
  if (!qword_2A1819F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819F80);
  }

  return result;
}

uint64_t sub_29DFAB164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29DFAB1C4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___relativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___relativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___relativeDateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    [v4 setDateStyle_];
    [v4 setDoesRelativeDateFormatting_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DFAB260()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___nonRelativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___nonRelativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___nonRelativeDateFormatter);
  }

  else
  {
    v4 = sub_29DFAB1C4();
    [v4 copy];

    sub_29E2C43D4();
    swift_unknownObjectRelease();
    sub_29DFAC85C();
    swift_dynamicCast();
    [v8 setDoesRelativeDateFormatting_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DFAB334(char a1)
{
  v2 = v1;
  v4 = sub_29E2BCC84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___relativeDateFormatter] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter____lazy_storage___nonRelativeDateFormatter] = 0;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter_style] = a1 & 1;
  v8 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v9 = sub_29E2BCC44();
  v10 = *(v5 + 8);
  v10(v7, v4);
  [v8 setLocale_];

  [v8 setFormattingContext_];
  v11 = sub_29E2C33A4();
  [v8 setLocalizedDateFormatFromTemplate_];

  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter_weekdayFormatter] = v8;
  v12 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v13 = sub_29E2BCC44();
  v10(v7, v4);
  [v12 setLocale_];

  v14 = sub_29E2C33A4();
  [v12 setLocalizedDateFormatFromTemplate_];

  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter_monthAndDayFormatter] = v12;
  v15 = type metadata accessor for RelativeWeekdayWithMonthAndDayFormatter();
  v17.receiver = v2;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_29DFAB678()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E2C3384();
  v43 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v42 - v6;
  v8 = sub_29DFAB1C4();
  v9 = sub_29E2BCB04();
  v10 = [v8 stringFromDate_];

  v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v13 = v12;

  v14 = sub_29DFAB260();
  v15 = sub_29E2BCB04();
  v16 = [v14 stringFromDate_];

  v17 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v19 = v18;

  v20 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter_monthAndDayFormatter);
  v21 = sub_29E2BCB04();
  v22 = [v20 stringFromDate_];

  v23 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v44 = v24;
  v45 = v23;

  if (v11 == v17 && v13 == v19)
  {

LABEL_5:
    v26 = v46;
    v27 = v43;

    v28 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39RelativeWeekdayWithMonthAndDayFormatter_weekdayFormatter);
    v29 = sub_29E2BCB04();
    v30 = [v28 stringFromDate_];

    v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v13 = v31;

    sub_29E2C3314();
    v32 = *(v27 + 16);
    goto LABEL_7;
  }

  v25 = sub_29E2C4914();

  if (v25)
  {
    goto LABEL_5;
  }

  sub_29E2C3314();
  v27 = v43;
  v32 = *(v43 + 16);
  v26 = v46;
LABEL_7:
  v33 = v48;
  v32(v26, v7, v48);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v34 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v27 + 8))(v7, v33);
  sub_29DFAC7F8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CD7A0;
  v36 = MEMORY[0x29EDC99B0];
  *(v35 + 56) = MEMORY[0x29EDC99B0];
  v37 = sub_29DEB1A44();
  *(v35 + 32) = v11;
  *(v35 + 40) = v13;
  *(v35 + 96) = v36;
  *(v35 + 104) = v37;
  v38 = v44;
  v39 = v45;
  *(v35 + 64) = v37;
  *(v35 + 72) = v39;
  *(v35 + 80) = v38;
  v40 = sub_29E2C3404();

  return v40;
}

id sub_29DFABC30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelativeWeekdayWithMonthAndDayFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29DFABCF4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    [v3 setDateStyle_];
    [v3 setDoesRelativeDateFormatting_];
    [v3 setFormattingContext_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_29DFABD9C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_29DFABCF4();
    [v3 copy];

    sub_29E2C43D4();
    swift_unknownObjectRelease();
    sub_29DFAC85C();
    swift_dynamicCast();
    [v7 setDoesRelativeDateFormatting_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v7;
    v2 = v7;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29DFABE68(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v62 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v67 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v68 = &v59 - v7;
  v8 = sub_29E2BCE84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E2BCEA4();
  v12 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFAC7F8(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v59 - v16;
  v18 = sub_29E2BCBB4();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v70 = &v59 - v23;
  sub_29E2BCE44();
  (*(v9 + 104))(v11, *MEMORY[0x29EDB9CB8], v8);
  v69 = a1;
  v24 = __OFSUB__(0, a1);
  v25 = -a1;
  if (v24)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  sub_29E2BCBA4();
  v60 = v25;
  sub_29E2BCE04();
  v65 = *(v19 + 8);
  v66 = v19 + 8;
  v65(v21, v18);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v71);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_29DE93920(v17);
    return 0;
  }

  v8 = v70;
  (*(v19 + 32))(v70, v17, v18);
  v19 = v69;
  if (v69 < 0)
  {
    v41 = v68;
    sub_29E2C3314();
    v43 = v63;
    v42 = v64;
    (*(v63 + 16))(v67, v41, v64);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v44 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v43 + 8))(v41, v42);
    sub_29DFAC7F8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
    v45 = swift_allocObject();
    v46 = MEMORY[0x29EDC9BA8];
    *(v45 + 16) = xmmword_29E2CAB20;
    v47 = MEMORY[0x29EDC9C10];
    *(v45 + 56) = v46;
    *(v45 + 64) = v47;
    *(v45 + 32) = v60;
    v48 = sub_29E2C33B4();

    v49 = v8;
    v50 = v18;
    goto LABEL_14;
  }

  v9 = v18;
  v27 = v61;
  v28 = sub_29DFABCF4();
  v29 = sub_29E2BCB04();
  v30 = [v28 stringFromDate_];

  v31 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v33 = v32;

  v34 = sub_29DFABD9C();
  v35 = sub_29E2BCB04();
  v36 = [v34 stringFromDate_];

  v37 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v39 = v38;

  if (v31 == v37 && v33 == v39)
  {

    v40 = v67;
    v17 = v68;
  }

  else
  {
    v51 = sub_29E2C4914();

    v40 = v67;
    v17 = v68;
    if ((v51 & 1) == 0)
    {
      v56 = *(v27 + 16);
      v57 = sub_29E2BCB04();
      v58 = [v56 stringFromDate_];

      v48 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v65(v8, v18);
      return v48;
    }
  }

  sub_29E2C3314();
  v25 = v63;
  v18 = v64;
  (*(v63 + 16))(v40, v17, v64);
  if (qword_2A1A62788 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v52 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v25 + 8))(v17, v18);
  sub_29DFAC7F8(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v53 = swift_allocObject();
  v54 = MEMORY[0x29EDC9BA8];
  *(v53 + 16) = xmmword_29E2CAB20;
  v55 = MEMORY[0x29EDC9C10];
  *(v53 + 56) = v54;
  *(v53 + 64) = v55;
  *(v53 + 32) = v19;
  v48 = sub_29E2C33B4();

  v49 = v8;
  v50 = v9;
LABEL_14:
  v65(v49, v50);
  return v48;
}

uint64_t sub_29DFAC72C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_29DFAC7A4()
{
  result = qword_2A1819FC0;
  if (!qword_2A1819FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819FC0);
  }

  return result;
}

void sub_29DFAC7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DFAC85C()
{
  result = qword_2A1819FC8;
  if (!qword_2A1819FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1819FC8);
  }

  return result;
}

__n128 sub_29DFAC8A8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29DFAC8BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29DFAC904(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29DFAC954(void *a1, char a2, void *a3)
{
  v6 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = &v27 - v14;
  v16 = [a3 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  [a1 mostLikelyDays];
  sub_29E2C30D4();
  v17 = sub_29E2C3164();
  result = sub_29E2C3164();
  v19 = v17 - result;
  if (__OFSUB__(v17, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (sub_29DFAE5E0(a1, a2 & 1))
  {
    v20 = [a1 mostLikelyDays];
    v22 = v21 <= 0 ? 0x7FFFFFFFFFFFFFFFLL : &v20[v21 - 1];
    result = sub_29E2C3164();
    v19 = v22 - result;
    if (__OFSUB__(v22, result))
    {
      goto LABEL_14;
    }
  }

  v23 = a2 & 1;
  if (v19 < 0)
  {
    v24 = sub_29DFACE98(0, 0, a1, v23, a3);
  }

  else if (v19)
  {
    v24 = sub_29DFADA3C(0, 0, a1, v23, a3);
  }

  else
  {
    v24 = sub_29DFAE6A4(0, 0, a1, v23);
  }

  v25 = v24;
  v26 = *(v9 + 8);
  v26(v11, v8);
  v26(v15, v8);
  return v25;
}

uint64_t sub_29DFACBEC(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v29 = a1;
  v30 = a2;
  v8 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x2A1C7C4A8](v14).n128_u64[0];
  v17 = &v29 - v16;
  v18 = [a5 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  [a3 mostLikelyDays];
  sub_29E2C30D4();
  v19 = sub_29E2C3164();
  result = sub_29E2C3164();
  v21 = v19 - result;
  if (__OFSUB__(v19, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (sub_29DFAE5E0(a3, a4 & 1))
  {
    v22 = [a3 mostLikelyDays];
    v24 = v23 <= 0 ? 0x7FFFFFFFFFFFFFFFLL : &v22[v23 - 1];
    result = sub_29E2C3164();
    v21 = v24 - result;
    if (__OFSUB__(v24, result))
    {
      goto LABEL_14;
    }
  }

  v25 = a4 & 1;
  if (v21 < 0)
  {
    v26 = sub_29DFACE98(v29, v30, a3, v25, a5);
  }

  else if (v21)
  {
    v26 = sub_29DFADA3C(v29, v30, a3, v25, a5);
  }

  else
  {
    v26 = sub_29DFAE6A4(v29, v30, a3, v25);
  }

  v27 = v26;
  v28 = *(v11 + 8);
  v28(v13, v10);
  v28(v17, v10);
  return v27;
}

uint64_t sub_29DFACE98(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v63 = a5;
  v71 = a3;
  v61 = a1;
  v67 = sub_29E2C31A4();
  v64 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29E2BCEA4();
  v65 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCBB4();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29E2BCC84();
  v13 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2C3384();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x2A1C7C4A8](v20).n128_u64[0];
  v23 = &v57 - v22;
  if (a2)
  {
    v59 = a4;
    if (a4)
    {
      sub_29E2BF404();
      if ([v71 predictionPrimarySource] == 3 || objc_msgSend(v71, sel_predictionPrimarySource) == 4)
      {
        sub_29E2C3394();
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v24 = qword_2A1A67F80;
        sub_29E2BCC74();
        v58 = sub_29E2C3414();
        v60 = v25;
LABEL_18:
        v29 = v71;
        sub_29DFAE5E0(v71, v59 & 1);
        sub_29DEB19DC();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_29E2CD7A0;
        *(v30 + 56) = MEMORY[0x29EDC99B0];
        v31 = sub_29DEB1A44();
        *(v30 + 64) = v31;
        *(v30 + 32) = v61;
        *(v30 + 40) = a2;
        v32 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
        sub_29E2BCC74();
        v33 = sub_29E2BCC44();
        (*(v13 + 8))(v15, v62);
        [v32 setLocale_];

        v34 = sub_29E2C33A4();
        [v32 setLocalizedDateFormatFromTemplate_];

        v35 = [v63 currentCalendar];
        sub_29E2BCDC4();

        [v29 mostLikelyDays];
        sub_29E2C30D4();
        v36 = v66;
        sub_29E2C3194();
        (*(v64 + 8))(v8, v67);
        (*(v65 + 8))(v10, v68);
        v37 = sub_29E2BCB04();
        (*(v69 + 8))(v36, v70);
        v38 = [v32 stringFromDate_];

        v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v41 = v40;

        *(v30 + 96) = MEMORY[0x29EDC99B0];
        *(v30 + 104) = v31;
        *(v30 + 72) = v39;
        *(v30 + 80) = v41;
        goto LABEL_23;
      }
    }

    else
    {
      sub_29E2BF404();
    }

    sub_29E2C3314();
    (*(v17 + 16))(v19, v23, v16);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v27 = qword_2A1A67F80;
    sub_29E2BCC74();
    v58 = sub_29E2C3414();
    v60 = v28;
    (*(v17 + 8))(v23, v16);
    goto LABEL_18;
  }

  if ((a4 & 1) != 0 && ([v71 predictionPrimarySource] == 3 || objc_msgSend(v71, sel_predictionPrimarySource) == 4))
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v26 = qword_2A1A67F80;
    sub_29E2BCC74();
    v61 = sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v17 + 16))(v19, v23, v16);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v42 = qword_2A1A67F80;
    sub_29E2BCC74();
    v61 = sub_29E2C3414();
    (*(v17 + 8))(v23, v16);
  }

  v43 = v71;
  sub_29DFAE5E0(v71, a4 & 1);
  sub_29DEB19DC();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29E2CAB20;
  v45 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v46 = sub_29E2BCC44();
  (*(v13 + 8))(v15, v62);
  [v45 setLocale_];

  v47 = sub_29E2C33A4();
  [v45 setLocalizedDateFormatFromTemplate_];

  v48 = [v63 currentCalendar];
  sub_29E2BCDC4();

  [v43 mostLikelyDays];
  sub_29E2C30D4();
  v49 = v66;
  sub_29E2C3194();
  (*(v64 + 8))(v8, v67);
  (*(v65 + 8))(v10, v68);
  v50 = sub_29E2BCB04();
  (*(v69 + 8))(v49, v70);
  v51 = [v45 stringFromDate_];

  v52 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v54 = v53;

  *(v44 + 56) = MEMORY[0x29EDC99B0];
  *(v44 + 64) = sub_29DEB1A44();
  *(v44 + 32) = v52;
  *(v44 + 40) = v54;
LABEL_23:
  v55 = sub_29E2C3404();

  return v55;
}

uint64_t sub_29DFADA3C(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v63 = a5;
  v71 = a3;
  v61 = a1;
  v67 = sub_29E2C31A4();
  v64 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29E2BCEA4();
  v65 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCBB4();
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v66 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29E2BCC84();
  v13 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2C3384();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x2A1C7C4A8](v20).n128_u64[0];
  v23 = &v57 - v22;
  if (a2)
  {
    v59 = a4;
    if (a4)
    {
      sub_29E2BF404();
      if ([v71 predictionPrimarySource] == 3 || objc_msgSend(v71, sel_predictionPrimarySource) == 4)
      {
        sub_29E2C3394();
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v24 = qword_2A1A67F80;
        sub_29E2BCC74();
        v58 = sub_29E2C3414();
        v60 = v25;
LABEL_18:
        v29 = v71;
        sub_29DFAE5E0(v71, v59 & 1);
        sub_29DEB19DC();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_29E2CD7A0;
        *(v30 + 56) = MEMORY[0x29EDC99B0];
        v31 = sub_29DEB1A44();
        *(v30 + 64) = v31;
        *(v30 + 32) = v61;
        *(v30 + 40) = a2;
        v32 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
        sub_29E2BCC74();
        v33 = sub_29E2BCC44();
        (*(v13 + 8))(v15, v62);
        [v32 setLocale_];

        v34 = sub_29E2C33A4();
        [v32 setLocalizedDateFormatFromTemplate_];

        v35 = [v63 currentCalendar];
        sub_29E2BCDC4();

        [v29 mostLikelyDays];
        sub_29E2C30D4();
        v36 = v66;
        sub_29E2C3194();
        (*(v64 + 8))(v8, v67);
        (*(v65 + 8))(v10, v68);
        v37 = sub_29E2BCB04();
        (*(v69 + 8))(v36, v70);
        v38 = [v32 stringFromDate_];

        v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v41 = v40;

        *(v30 + 96) = MEMORY[0x29EDC99B0];
        *(v30 + 104) = v31;
        *(v30 + 72) = v39;
        *(v30 + 80) = v41;
        goto LABEL_23;
      }
    }

    else
    {
      sub_29E2BF404();
    }

    sub_29E2C3314();
    (*(v17 + 16))(v19, v23, v16);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v27 = qword_2A1A67F80;
    sub_29E2BCC74();
    v58 = sub_29E2C3414();
    v60 = v28;
    (*(v17 + 8))(v23, v16);
    goto LABEL_18;
  }

  if ((a4 & 1) != 0 && ([v71 predictionPrimarySource] == 3 || objc_msgSend(v71, sel_predictionPrimarySource) == 4))
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v26 = qword_2A1A67F80;
    sub_29E2BCC74();
    v61 = sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v17 + 16))(v19, v23, v16);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v42 = qword_2A1A67F80;
    sub_29E2BCC74();
    v61 = sub_29E2C3414();
    (*(v17 + 8))(v23, v16);
  }

  v43 = v71;
  sub_29DFAE5E0(v71, a4 & 1);
  sub_29DEB19DC();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29E2CAB20;
  v45 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v46 = sub_29E2BCC44();
  (*(v13 + 8))(v15, v62);
  [v45 setLocale_];

  v47 = sub_29E2C33A4();
  [v45 setLocalizedDateFormatFromTemplate_];

  v48 = [v63 currentCalendar];
  sub_29E2BCDC4();

  [v43 mostLikelyDays];
  sub_29E2C30D4();
  v49 = v66;
  sub_29E2C3194();
  (*(v64 + 8))(v8, v67);
  (*(v65 + 8))(v10, v68);
  v50 = sub_29E2BCB04();
  (*(v69 + 8))(v49, v70);
  v51 = [v45 stringFromDate_];

  v52 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v54 = v53;

  *(v44 + 56) = MEMORY[0x29EDC99B0];
  *(v44 + 64) = sub_29DEB1A44();
  *(v44 + 32) = v52;
  *(v44 + 40) = v54;
LABEL_23:
  v55 = sub_29E2C3404();

  return v55;
}

uint64_t sub_29DFAE5E0(void *a1, char a2)
{
  if ([a1 predictionPrimarySource] == 3 || objc_msgSend(a1, sel_predictionPrimarySource) == 4)
  {
    if (a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_29E2C4914();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_29DFAE6A4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2C3384();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = MEMORY[0x2A1C7C4A8](v13).n128_u64[0];
  v16 = &v24[-v15];
  if (a2)
  {
    if (a4)
    {
      sub_29E2BF404();
      if ([a3 predictionPrimarySource] == 3 || objc_msgSend(a3, sel_predictionPrimarySource) == 4)
      {
        sub_29E2C3394();
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v17 = qword_2A1A67F80;
        sub_29E2BCC74();
        sub_29E2C3414();
LABEL_18:
        sub_29DEB19DC();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_29E2CAB20;
        *(v21 + 56) = MEMORY[0x29EDC99B0];
        *(v21 + 64) = sub_29DEB1A44();
        *(v21 + 32) = a1;
        *(v21 + 40) = a2;
        v19 = sub_29E2C3404();

        return v19;
      }
    }

    else
    {
      sub_29E2BF404();
    }

    sub_29E2C3314();
    (*(v10 + 16))(v12, v16, v9);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v20 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v10 + 8))(v16, v9);
    goto LABEL_18;
  }

  if ((a4 & 1) != 0 && ([a3 predictionPrimarySource] == 3 || objc_msgSend(a3, sel_predictionPrimarySource) == 4))
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v10 + 16))(v12, v16, v9);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v22 = qword_2A1A67F80;
    sub_29E2BCC74();
    v19 = sub_29E2C3414();
    (*(v10 + 8))(v16, v9);
  }

  return v19;
}

uint64_t sub_29DFAEBAC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v14 = &v24[-v13];
  result = 0;
  if (a4)
  {
    if ([a3 predictionPrimarySource] == 3)
    {
      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v16 = qword_2A1A67F80;
      sub_29E2BCC74();
      v17 = v16;
      sub_29E2C3414();
      sub_29DEB19DC();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_29E2CAB20;
      sub_29E2C3314();
      (*(v8 + 16))(v10, v14, v7);
      sub_29E2BCC74();
      v19 = sub_29E2C3414();
      v21 = v20;
      (*(v8 + 8))(v14, v7);
      *(v18 + 56) = MEMORY[0x29EDC99B0];
      *(v18 + 64) = sub_29DEB1A44();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      v22 = sub_29E2C33B4();

      return v22;
    }

    else
    {
      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v23 = qword_2A1A67F80;
      sub_29E2BCC74();
      return sub_29E2C3414();
    }
  }

  return result;
}

uint64_t sub_29DFAEF58(void *a1, char a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v17[-v11];
  if (a2)
  {
    if ([a1 predictionPrimarySource] != 3)
    {
      [a1 predictionPrimarySource];
    }

    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v6 + 16))(v8, v12, v5);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v13 = qword_2A1A67F80;
    sub_29E2BCC74();
    v14 = sub_29E2C3414();
    (*(v6 + 8))(v12, v5);
    return v14;
  }
}

uint64_t sub_29DFAF228()
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

uint64_t sub_29DFAF43C(uint64_t a1, char a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v24[-v10];
  if ((a2 & 1) != 0 && *(a1 + *(type metadata accessor for SharingNotificationBody() + 24)) == 1)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    v13 = sub_29E2BD6F4();
    v15 = v14;
    sub_29DEB19DC();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29E2CAB20;
    *(v16 + 56) = MEMORY[0x29EDC99B0];
    *(v16 + 64) = sub_29DEB1A44();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
  }

  else
  {
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
    v18 = sub_29E2BD6F4();
    v20 = v19;
    sub_29DEB19DC();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29E2CAB20;
    *(v21 + 56) = MEMORY[0x29EDC99B0];
    *(v21 + 64) = sub_29DEB1A44();
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
  }

  v22 = sub_29E2C33B4();

  return v22;
}

uint64_t type metadata accessor for SharingNotificationBody()
{
  result = qword_2A1819FD0;
  if (!qword_2A1819FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DFAF880()
{
  result = sub_29E2BD704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29DFAF920(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex);
    if (v3 > 4)
    {
      __break(1u);
      return result;
    }

    v2 = *(&unk_2A24ADE30 + v3 + 4);
  }

  *(v1 + 32) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_29E21F33C(*MEMORY[0x29EDC3238]);
    [*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setCervicalMucusQuality_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29DFAF9DC(uint64_t a1, unint64_t a2)
{
  if (a2 <= 4)
  {
    return sub_29E225EAC(*(&unk_2A24ADE30 + a2 + 4));
  }

  __break(1u);
  return result;
}

id sub_29DFAFA00()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter);
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

uint64_t sub_29DFAFB74(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors) = a1;

  sub_29DFB2FD8();
  sub_29DFB1750();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    v5 = sub_29E2C4484();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactors);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v5, v7);
    v9 = v5 + v7;
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = sub_29E2C4484();
  v8 = __OFADD__(v5, v12);
  v9 = v5 + v12;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v10 = *(v1 + v2);
  if (v10 >> 62)
  {
LABEL_16:
    v13 = v9;
    v11 = sub_29E2C4484();
    v9 = v13;
    goto LABEL_8;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  sub_29E259F30(v9, v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_29DFAFCA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactors;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactors) = a1;

  sub_29DFB2FD8();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors;
  v5 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if (v5 >> 62)
  {
    v6 = sub_29E2C4484();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *(v1 + v2);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v6, v8);
    v10 = v6 + v8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = sub_29E2C4484();
  v9 = __OFADD__(v6, v13);
  v10 = v6 + v13;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_6:
  v11 = *(v1 + v4);
  if (v11 >> 62)
  {
LABEL_16:
    v14 = v10;
    v12 = sub_29E2C4484();
    v10 = v14;
    goto LABEL_8;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  sub_29E259F30(v10, v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_29DFAFDD4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections) = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSections) = *(v1 + v2);
    sub_29E2BF404();
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_29DFAFEC8()
{
  if (*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorsQueryTask])
  {

    sub_29E2C3744();
  }

  if (*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorObserverQuery])
  {
    [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_providedHealthStore] stopQuery_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleFactorsHistoricalCollectionViewSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DFB00E8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BCBB4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v71 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BC5F4();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v77 = sub_29E2C3384();
  v11 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v70 - v15;
  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a2 && v17 == a3)
  {

LABEL_10:
    v21 = sub_29E2C33A4();
    v22 = sub_29E2C33A4();
    v23 = sub_29E2BCF24();
    v24 = [a1 dequeueReusableSupplementaryViewOfKind:v21 withReuseIdentifier:v22 forIndexPath:v23];

    type metadata accessor for HistoryListHeaderView();
    a1 = swift_dynamicCastClassUnconditional();
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 clearColor];
    [a1 setBackgroundColor_];

    v28 = sub_29E2BCFA4();
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v29 = v78;
      v30 = *(v78 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections);
      if (v28 < *(v30 + 16))
      {
        if ((*(v30 + v28 + 32) & 1) == 0)
        {
          sub_29E2C3314();
          v26 = v77;
          (*(v11 + 16))(v13, v16, v77);
          if (qword_2A1A62788 == -1)
          {
LABEL_27:
            v50 = qword_2A1A67F80;
            sub_29E2BCC74();
            sub_29E2C3414();
            (*(v11 + 8))(v16, v26);
            v51 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel];
            v52 = sub_29E2C33A4();

            [v51 setText_];

            return a1;
          }

LABEL_44:
          swift_once();
          goto LABEL_27;
        }

        v31 = sub_29E2BCFA4();
        v32 = v31 - 1;
        if (!__OFSUB__(v31, 1))
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v33 = *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactorYears);
            if (v32 < *(v33 + 16))
            {
              v35 = v74;
              v34 = v75;
              v36 = v76;
              (*(v75 + 16))(v74, v33 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v32, v76);
              v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sectionedHistoricalCycleFactors;
              swift_beginAccess();
              v38 = *(v29 + v37);
              if (!*(v38 + 16))
              {
                goto LABEL_39;
              }

              sub_29E2BF404();
              v39 = sub_29E18464C(v35);
              if ((v40 & 1) == 0)
              {

                goto LABEL_39;
              }

              v41 = *(*(v38 + 56) + 8 * v39);
              sub_29E2BF404();

              if (v41 >> 62)
              {
                if (sub_29E2C4484())
                {
                  goto LABEL_20;
                }
              }

              else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_20:
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v42 = MEMORY[0x29ED80D70](0, v41);
                }

                else
                {
                  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_55;
                  }

                  v42 = *(v41 + 32);
                }

                v43 = v42;

                v44 = sub_29DFAFA00();
                v45 = [v43 endDate];
                v46 = v71;
                sub_29E2BCB44();

                v47 = sub_29E2BCB04();
                (*(v72 + 8))(v46, v73);
                v48 = [v44 stringFromDate_];

                if (!v48)
                {
                  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
                  v48 = sub_29E2C33A4();
                }

                v49 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel];
                [v49 setText_];

LABEL_39:
                (*(v34 + 8))(v35, v36);
                return a1;
              }

              (*(v34 + 8))(v35, v36);
LABEL_37:

              return a1;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    goto LABEL_10;
  }

  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a2 && v20 == a3)
  {
  }

  else
  {
    v53 = sub_29E2C4914();

    if ((v53 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v54 = sub_29E2BCFA4();
  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v55 = *(v78 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections);
  if (v54 >= *(v55 + 16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    if (sub_29E2C4484())
    {
      goto LABEL_34;
    }

    goto LABEL_55;
  }

  if (*(v55 + v54 + 32))
  {
    goto LABEL_55;
  }

  v56 = *(v78 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if (v56 >> 62)
  {
    goto LABEL_49;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    v57 = sub_29E2C33A4();
    v58 = sub_29E2C33A4();
    v59 = sub_29E2BCF24();
    v60 = [a1 dequeueReusableSupplementaryViewOfKind:v57 withReuseIdentifier:v58 forIndexPath:v59];

    type metadata accessor for TappableCollectionViewFooterView();
    a1 = swift_dynamicCastClassUnconditional();
    v76 = sub_29DFB192C();
    v62 = v61;
    sub_29E2C3314();
    v63 = v77;
    (*(v11 + 16))(v13, v16, v77);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v64 = qword_2A1A67F80;
    sub_29E2BCC74();
    v65 = sub_29E2C3414();
    v67 = v66;
    (*(v11 + 8))(v16, v63);
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29E291F20(v76, v62, v65, v67, sub_29DFB4364, v68);

    goto LABEL_37;
  }

LABEL_55:
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29DFB0B50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_29E25A29C();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_29DFB0D04(void *a1)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v57[0] = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v57 - v8;
  v10 = type metadata accessor for CycleFactorsSectionViewModel(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = (v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_29E2BCFA4();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections);
  if (v13 >= *(v14 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v14 + v13 + 32))
  {
    v15 = sub_29DFB39C4();
    v16 = sub_29E2C33A4();
    v17 = sub_29E2BCF24();
    v18 = [a1 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v17];

    type metadata accessor for HistoricalSampleCell();
    v19 = swift_dynamicCastClassUnconditional();
    sub_29E08C870([v15 hkmc_cycleFactor]);
    sub_29E237BF0();
    v20 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel);
    v21 = sub_29E2C33A4();

    [v20 setText_];

    v22 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel);
    v23 = sub_29E2C33A4();

    [v22 setText_];

LABEL_20:
    return v19;
  }

  v24 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_17:
    v51 = sub_29E2C33A4();
    v52 = sub_29E2BCF24();
    v53 = [a1 dequeueReusableCellWithReuseIdentifier:v51 forIndexPath:v52];

    type metadata accessor for CycleFactorsNoneCollectionViewCell();
    v19 = swift_dynamicCastClassUnconditional();
    sub_29E2C3314();
    v54 = v57[0];
    (*(v57[0] + 16))(v6, v9, v4);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v55 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v54 + 8))(v9, v4);
    v22 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label);
    v23 = sub_29E2C33A4();

    [v22 setText_];
    goto LABEL_20;
  }

LABEL_16:
  if (!sub_29E2C4484())
  {
    goto LABEL_17;
  }

LABEL_7:
  v25 = sub_29DFB39C4();
  v26 = sub_29E2C33A4();
  v27 = sub_29E2BCF24();
  v28 = [a1 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

  type metadata accessor for HistoricalSampleCell();
  v19 = swift_dynamicCastClassUnconditional();
  v29 = [v25 hkmc_cycleFactor];
  v30 = sub_29E08C870(v29);
  v32 = v31;
  v33 = sub_29E08D578(v29);
  sub_29DE9408C(0, &qword_2A1A61D70);
  v34 = [swift_getObjCClassFromMetadata() pregnancyType];
  if (v34 && (v35 = v34, v36 = v33, v37 = sub_29E2C40D4(), v35, v36, (v37 & 1) != 0))
  {
    v38 = sub_29E239064(v36, 1);
    if (!v39)
    {
      v38 = sub_29E23894C();
    }

    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = sub_29E23894C();
    v41 = v42;
  }

  v43 = [v25 startDate];
  sub_29E2BCB44();

  v44 = [v25 endDate];
  sub_29E2BCB44();

  *v12 = v25;
  v12[1] = v30;
  v12[2] = v32;
  v12[3] = v40;
  v12[4] = v41;
  *(v12 + *(v10 + 36)) = 0;
  v45 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel);
  v46 = v25;
  v47 = v45;
  v48 = sub_29E2C33A4();
  [v47 setText_];

  v49 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel);
  v50 = sub_29E2C33A4();
  [v49 setText_];

  sub_29DFB4308(v12);
  return v19;
}

uint64_t sub_29DFB1750()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    sub_29E2BF404();
    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = MEMORY[0x29EDCA1A0];
    v5 = MEMORY[0x29EDCA1A0];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED80D70](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [v7 hkmc_cycleFactor] - 1;
      if (v10 <= 8 && ((0x1FBu >> v10) & 1) != 0)
      {
        v6 = sub_29DE92374(*(&off_29F3627E8 + v10));
      }

      else
      {
        v6 = v4;
      }

      v5 = sub_29E0660BC(v6, v5);

      ++v3;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v5 = MEMORY[0x29EDCA1A0];
LABEL_16:

  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_periodPredictionStatus;
  v12 = *(v20 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_periodPredictionStatus);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_fertileWindowPredictionStatus;
  v14 = *(v20 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_fertileWindowPredictionStatus);
  *(v20 + v11) = !sub_29E0922B0(0, v5);
  v15 = sub_29E0922B0(1u, v5);

  v16 = 0;
  *(v20 + v13) = !v15;
  if (v12 != 2 && v14 != 2)
  {
    v18 = *(v20 + v11);
    if (v18 == 2 || ((v12 ^ v18) & 1) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15 ^ v14 ^ 1;
    }
  }

  return v16 & 1;
}

uint64_t sub_29DFB192C()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25[-v8];
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors;
  v11 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if (v11 >> 62)
  {
    v23 = v7;
    v24 = sub_29E2C4484();
    v7 = v23;
    if (!v24)
    {
      return 0;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v12 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_periodPredictionStatus);
  if (v12 == 2)
  {
    return 0;
  }

  v13 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_fertileWindowPredictionStatus);
  if (v13 == 2)
  {
    return 0;
  }

  if ((v13 & 1) == 0)
  {
    v16 = v7;
    sub_29E2C3314();
    (*(v3 + 16))(v5, v9, v16);
    goto LABEL_10;
  }

  if (v12)
  {
    return 0;
  }

  v15 = v7;
  sub_29E2C3314();
  v16 = v15;
  (*(v3 + 16))(v5, v9, v15);
LABEL_10:
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v9, v16);
  sub_29DF45BA8(0, &qword_2A1A61CA0, &qword_2A1A61C60, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CAB20;
  v19 = *(v0 + v10);
  if (v19 >> 62)
  {
    v20 = sub_29E2C4484();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x29EDC9C10];
  *(v18 + 56) = MEMORY[0x29EDC9BA8];
  *(v18 + 64) = v21;
  *(v18 + 32) = v20;
  v22 = sub_29E2C33B4();

  return v22;
}

size_t sub_29DFB1CC8()
{
  v1 = v0;
  sub_29DFB4064(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v60 = &v57 - v3;
  sub_29DEE975C();
  v5 = v4;
  v61 = *(v4 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  MEMORY[0x2A1C7C4A8](v7);
  v59 = &v57 - v8;
  sub_29DFB410C();
  v67 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29E2BCBB4();
  v65 = *(v68 - 1);
  MEMORY[0x2A1C7C4A8](v68);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2C0514();
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v18 = v1;
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();

  v21 = os_log_type_enabled(v19, v20);
  v66 = v18;
  v62 = v5;
  v57 = v6;
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v70 = v23;
    *v22 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DFB40C8();
    v24 = sub_29E2C3424();
    v26 = sub_29DFAA104(v24, v25, &v70);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Starting Cycle Factors query", v22, 0xCu);
    sub_29DE93B3C(v23);
    MEMORY[0x29ED82140](v23, -1, -1);
    MEMORY[0x29ED82140](v22, -1, -1);
  }

  (*(v63 + 8))(v17, v64);
  v27 = objc_opt_self();
  sub_29E2BCA74();
  v28 = sub_29E2BCB04();
  v29 = *(v65 + 8);
  v30 = v68;
  v29(v14, v68);
  sub_29E2BCA84();
  v31 = sub_29E2BCB04();
  v29(v14, v30);
  v68 = [v27 predicateForSamplesWithStartDate:v28 endDate:v31 options:2];

  v32 = HKMCCycleFactorsTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v33 = sub_29E2C3614();

  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v66;
    if (v34)
    {
      goto LABEL_5;
    }

LABEL_15:

LABEL_16:
    sub_29DFB4064(0, &qword_2A181A098, sub_29DFB4174, MEMORY[0x29EDC9E90]);
    sub_29DFB4174();
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED78E10](KeyPath, 1);
    sub_29DE9408C(0, &qword_2A1A61D50);
    v44 = v59;
    sub_29E2C2FA4();
    v45 = sub_29E2C3734();
    v46 = v60;
    (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
    v48 = v61;
    v47 = v62;
    v49 = v58;
    (*(v61 + 16))(v58, v44, v62);
    sub_29E2C3714();
    v50 = v35;
    v51 = sub_29E2C3704();
    v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v53 = (v57 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = MEMORY[0x29EDCA390];
    *(v54 + 16) = v51;
    *(v54 + 24) = v55;
    (*(v48 + 32))(v54 + v52, v49, v47);
    *(v54 + v53) = v50;
    v56 = sub_29E13C63C(0, 0, v46, &unk_29E2D6C08, v54);

    (*(v48 + 8))(v44, v47);
    *&v50[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorsQueryTask] = v56;
  }

  v34 = sub_29E2C4484();
  v35 = v66;
  if (!v34)
  {
    goto LABEL_15;
  }

LABEL_5:
  v70 = MEMORY[0x29EDCA190];
  result = sub_29E1813D8(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v70;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x29ED80D70](v37, v33);
      }

      else
      {
        v39 = *(v33 + 8 * v37 + 32);
      }

      v40 = v39;
      sub_29DE9408C(0, &qword_2A1A61D50);
      sub_29E2C2F24();

      v70 = v38;
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_29E1813D8(v41 > 1, v42 + 1, 1);
        v38 = v70;
      }

      ++v37;
      *(v38 + 16) = v42 + 1;
      (*(v10 + 32))(v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v42, v12, v67);
    }

    while (v34 != v37);

    v35 = v66;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DFB2510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_29E2C3714();
  v5[4] = sub_29E2C3704();
  v7 = sub_29E2C36A4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2A1C73D48](sub_29DFB25A8, v7, v6);
}

uint64_t sub_29DFB25A8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_providedHealthStore);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  sub_29DEE975C();
  *v2 = v0;
  v2[1] = sub_29DFB2668;

  return MEMORY[0x2A1C5B578](v1, v3);
}

uint64_t sub_29DFB2668(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_29DFB2800;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_29DFB2794;
  }

  return MEMORY[0x2A1C73D48](v7, v5, v6);
}

uint64_t sub_29DFB2794()
{
  v1 = *(v0 + 64);

  sub_29DFAFCA0(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29DFB2800()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_29DFB2860()
{
  v1 = v0;
  v2 = HKMCCycleFactorsTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v3 = sub_29E2C3614();

  if (v3 >> 62)
  {
    sub_29DE9408C(0, &unk_2A1A61D90);
    sub_29E2BF404();
    sub_29E2C4744();
  }

  else
  {
    sub_29E2BF404();
    sub_29E2C4924();
    sub_29DE9408C(0, &unk_2A1A61D90);
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(MEMORY[0x29EDBAEC8]);
  sub_29DE9408C(0, &unk_2A1A61D90);

  v6 = sub_29E2C3604();

  v11[4] = sub_29DFB3FB8;
  v11[5] = v4;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29DFB3EB8;
  v11[3] = &unk_2A24B6688;
  v7 = _Block_copy(v11);
  v8 = [v5 initWithTypes:v6 anchor:0 resultsHandler:v7];

  _Block_release(v7);

  v9 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorObserverQuery);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorObserverQuery) = v8;
  v10 = v8;

  if (v10)
  {
    [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_providedHealthStore) executeQuery_];
  }
}

uint64_t sub_29DFB2AB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_29E2C0514();
  v37 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B34();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C2B54();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a4)
    {
      sub_29E2C04B4();
      v18 = v17;
      v19 = a4;
      v20 = sub_29E2C0504();
      v21 = sub_29E2C3A14();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock[0] = v23;
        *v22 = 136446466;
        ObjectType = swift_getObjectType();
        sub_29DFB40C8();
        v24 = sub_29E2C3424();
        v25 = v5;
        v27 = sub_29DFAA104(v24, v26, aBlock);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2082;
        ObjectType = a4;
        v28 = a4;
        sub_29DF45BA8(0, &qword_2A1A5DFD0, &qword_2A1A61C90, MEMORY[0x29EDC9F18], MEMORY[0x29EDC9C68]);
        v29 = sub_29E2C3424();
        v31 = sub_29DFAA104(v29, v30, aBlock);

        *(v22 + 14) = v31;
        _os_log_impl(&dword_29DE74000, v20, v21, "[%{public}s] Error in factors observer query: %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v23, -1, -1);
        MEMORY[0x29ED82140](v22, -1, -1);

        return (*(v37 + 8))(v7, v25);
      }

      else
      {

        return (*(v37 + 8))(v7, v5);
      }
    }

    else
    {
      sub_29DE9408C(0, &qword_2A1A626C0);
      v37 = sub_29E2C3CF4();
      v32 = swift_allocObject();
      *(v32 + 16) = v17;
      aBlock[4] = sub_29DFB4040;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DF49BB8;
      aBlock[3] = &unk_2A24B66D8;
      v33 = _Block_copy(aBlock);
      v34 = v17;

      sub_29E2C2B44();
      aBlock[0] = MEMORY[0x29EDCA190];
      sub_29DF4B3B0();
      sub_29DFB4064(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29DF4B408();
      sub_29E2C43F4();
      v35 = v37;
      MEMORY[0x29ED804D0](0, v15, v11, v33);
      _Block_release(v33);

      (*(v9 + 8))(v11, v8);
      return (*(v13 + 8))(v15, v12);
    }
  }

  return result;
}

uint64_t sub_29DFB2FD8()
{
  v1 = v0;
  v87 = sub_29E2BCBB4();
  v2 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v86 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E2BCEA4();
  v4 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v84 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BC5F4();
  v72 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v90 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v68 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v88 = &v68 - v12;
  v13 = MEMORY[0x29EDCA190];
  v14 = sub_29E185F08(MEMORY[0x29EDCA190]);
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sectionedHistoricalCycleFactors;
  swift_beginAccess();
  v92 = v15;
  *(v1 + v15) = v14;

  v91 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactorYears;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactorYears) = v13;

  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactors;
  v17 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactors);
  if (v17 >> 62)
  {
    if (!sub_29E2C4484())
    {
      goto LABEL_3;
    }
  }

  else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v18 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
    if (v18 >> 62)
    {
      goto LABEL_38;
    }

    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }
  }

LABEL_5:
  for (i = &unk_2A24AEDC0; ; i = MEMORY[0x29EDCA190])
  {
    v20 = *(v1 + v16);
    if (v20 >> 62)
    {
      v66 = *(v1 + v16);
      v67 = sub_29E2C4484();
      v20 = v66;
      v16 = v67;
      if (!v67)
      {
        return sub_29DFAFDD4(i);
      }
    }

    else
    {
      v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return sub_29DFAFDD4(i);
      }
    }

    if (v16 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_38:
    if (sub_29E2C4484())
    {
      goto LABEL_5;
    }

LABEL_39:
    ;
  }

  v69 = v10;
  v80 = v20 & 0xC000000000000001;
  v79 = *MEMORY[0x29EDB9CC0];
  v78 = (v2 + 8);
  v77 = *MEMORY[0x29EDB9CD0];
  v76 = (v4 + 8);
  v75 = (v72 + 16);
  v74 = (v72 + 8);
  v71 = v72 + 32;
  v21 = v20;
  sub_29E2BF404();
  v22 = v21;
  v23 = 0;
  v73 = xmmword_29E2CD7A0;
  v70 = xmmword_29E2CE220;
  v83 = v6;
  v89 = v1;
  v82 = v21;
  v81 = v16;
  do
  {
    v26 = i;
    if (v80)
    {
      v27 = MEMORY[0x29ED80D70](v23, v22);
    }

    else
    {
      v27 = *(v22 + 8 * v23 + 32);
    }

    v28 = v27;
    v29 = v84;
    sub_29E2BCE44();
    sub_29DFB4064(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
    v30 = sub_29E2BCE84();
    v31 = *(v30 - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v73;
    v35 = v34 + v33;
    v36 = *(v31 + 104);
    v36(v35, v79, v30);
    v36(v35 + v32, v77, v30);
    sub_29DE924A4(v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = [v28 endDate];
    v38 = v86;
    sub_29E2BCB44();

    v39 = v88;
    sub_29E2BCD14();

    (*v78)(v38, v87);
    (*v76)(v29, v85);
    v40 = v89;
    if (*(*(v89 + v92) + 16) && (sub_29E2BF404(), sub_29E18464C(v39), v42 = v41, , (v42 & 1) != 0))
    {
      v43 = v39;
      v44 = v69;
      v45 = v83;
      (*v75)(v69, v43, v83);
      v46 = sub_29DFAFE68();
      v48 = sub_29E10949C(v93);
      i = v26;
      if (*v47)
      {
        v49 = v47;
        v50 = v28;
        MEMORY[0x29ED7FDC0]();
        if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29E2C3644();
        }

        sub_29E2C3674();
        (v48)(v93, 0);
        v24 = *v74;
        (*v74)(v69, v45);
        (v46)(v94, 0);

        v25 = v88;
      }

      else
      {
        (v48)(v93, 0);
        v24 = *v74;
        (*v74)(v44, v45);
        (v46)(v94, 0);

        v25 = v43;
      }

      v24(v25, v45);
    }

    else
    {
      i = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v83;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        i = sub_29E14453C(0, *(v26 + 2) + 1, 1, v26);
      }

      v54 = *(i + 2);
      v53 = *(i + 3);
      if (v54 >= v53 >> 1)
      {
        i = sub_29E14453C((v53 > 1), v54 + 1, 1, i);
      }

      *(i + 2) = v54 + 1;
      i[v54 + 32] = 1;
      sub_29DF5C17C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v55 = swift_allocObject();
      *(v55 + 16) = v70;
      *(v55 + 32) = v28;
      v56 = v92;
      swift_beginAccess();
      v57 = v28;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v93[0] = *(v40 + v56);
      *(v40 + v56) = 0x8000000000000000;
      sub_29E008C8C(v55, v39, v58);
      *(v40 + v56) = v93[0];
      swift_endAccess();
      (*v75)(v90, v39, v52);
      v59 = v91;
      v60 = *(v40 + v91);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v40 + v59) = v60;
      if ((v61 & 1) == 0)
      {
        v60 = sub_29E144508(0, v60[2] + 1, 1, v60);
        *(v40 + v91) = v60;
      }

      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v60 = sub_29E144508(v62 > 1, v63 + 1, 1, v60);
      }

      v60[2] = v63 + 1;
      v64 = v72;
      (*(v72 + 32))(v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v90, v52);
      *(v40 + v91) = v60;

      (*(v64 + 8))(v39, v52);
    }

    ++v23;
    v22 = v82;
  }

  while (v81 != v23);

  return sub_29DFAFDD4(i);
}

id sub_29DFB39C4()
{
  v1 = v0;
  v2 = sub_29E2BC5F4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E2BCFA4();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections;
  v8 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections);
  if (v6 >= *(v8 + 16))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*(v8 + v6 + 32))
  {
    sub_29E2BF404();
    v6 = sub_29E2BCFA4();
    v9 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactorYears);
        if (v9 < *(v10 + 16))
        {
          (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
          v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sectionedHistoricalCycleFactors;
          swift_beginAccess();
          v12 = *(v1 + v11);
          if (!*(v12 + 16))
          {
            goto LABEL_33;
          }

          sub_29E2BF404();
          v13 = sub_29E18464C(v5);
          if ((v14 & 1) == 0)
          {
LABEL_32:

LABEL_33:
            v25 = 0;
            v26 = 0xE000000000000000;
            sub_29E2C4584();
            MEMORY[0x29ED7FCC0](0xD000000000000029, 0x800000029E2F65E0);
            v22 = sub_29E2BCFA4();
            if ((v22 & 0x8000000000000000) == 0)
            {
              v23 = *(v1 + v7);
              if (v22 < *(v23 + 16))
              {
LABEL_37:
                v24[7] = *(v23 + v22 + 32);
                sub_29E2C4664();
                result = sub_29E2C4724();
                __break(1u);
                return result;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_37;
          }

          v15 = v13;

          v1 = *(*(v12 + 56) + 8 * v15);
          sub_29E2BF404();

          v16 = sub_29E2BCF64();
          if ((v1 & 0xC000000000000001) == 0)
          {
            if ((v16 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v16 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v17 = *(v1 + 8 * v16 + 32);
LABEL_13:
              v18 = v17;

              (*(v3 + 8))(v5, v2);
              return v18;
            }

            __break(1u);
            goto LABEL_32;
          }

LABEL_29:
          v17 = MEMORY[0x29ED80D70]();
          goto LABEL_13;
        }

        goto LABEL_27;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v6 = sub_29E2BCF64();
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_24:
    v21 = v6;
    sub_29E2BF404();
    v18 = MEMORY[0x29ED80D70](v21, v2);

    return v18;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = *(v2 + 8 * v6 + 32);

  return v20;
}

unint64_t sub_29DFB3DD4()
{
  result = qword_2A181A058;
  if (!qword_2A181A058)
  {
    sub_29DF5C17C(255, &qword_2A181A060, &type metadata for CycleFactorSection, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A058);
  }

  return result;
}

unint64_t sub_29DFB3E64()
{
  result = qword_2A181A068;
  if (!qword_2A181A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A068);
  }

  return result;
}

uint64_t sub_29DFB3EB8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  if (a4)
  {
    sub_29DE9408C(0, &unk_2A1A61D90);
    sub_29DE9408C(0, &qword_2A1A61D30);
    sub_29DFB3FD8();
    v6 = sub_29E2C3214();
  }

  v10 = a2;
  v11 = a3;
  v12 = a5;
  v9(v10, a3, v6, a5);
}

uint64_t sub_29DFB3FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DFB3FD8()
{
  result = qword_2A1A61D80;
  if (!qword_2A1A61D80)
  {
    sub_29DE9408C(255, &unk_2A1A61D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61D80);
  }

  return result;
}

void sub_29DFB4064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DFB40C8()
{
  result = qword_2A181A070;
  if (!qword_2A181A070)
  {
    type metadata accessor for CycleFactorsHistoricalCollectionViewSource();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181A070);
  }

  return result;
}

void sub_29DFB410C()
{
  if (!qword_2A181A090)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2C2F54();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A090);
    }
  }
}

void sub_29DFB4174()
{
  if (!qword_2A181A0A0)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2BC634();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A0A0);
    }
  }
}

uint64_t sub_29DFB41E8(uint64_t a1)
{
  sub_29DEE975C();
  v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29DFB2510(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_29DFB4308(uint64_t a1)
{
  v2 = type metadata accessor for CycleFactorsSectionViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DFB436C(unint64_t a1)
{
  v3 = sub_29E2BC5F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections);
  if (*(v8 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*(v8 + a1 + 32) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors;
    v18 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
    if (!(v18 >> 62))
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return 1;
      }

LABEL_13:
      v19 = *(v1 + v3);
      if (!(v19 >> 62))
      {
        return *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return sub_29E2C4484();
    }

LABEL_18:
    if (!sub_29E2C4484())
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (!a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactorYears);
  if (*(v9 + 16) < a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  (*(v4 + 16))(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (a1 - 1), v3, v5);
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sectionedHistoricalCycleFactors;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = *(v11 + 16);
  sub_29E2BF404();
  if (v12)
  {
    sub_29E2BF404();
    v13 = sub_29E18464C(v7);
    if (v14)
    {
      v15 = v13;

      v16 = *(*(v11 + 56) + 8 * v15);
      sub_29E2BF404();

      if (!(v16 >> 62))
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

        (*(v4 + 8))(v7, v3);
        return v17;
      }

LABEL_22:
      v17 = sub_29E2C4484();
      goto LABEL_10;
    }
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_29E2C4584();

  v23 = 0xD000000000000029;
  v24 = 0x800000029E2F65E0;
  v22 = a1;
  v21 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v21);

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29DFB46A0()
{
  v1 = sub_29E2BCFA4();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections);
  if (v1 >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v5 = sub_29E2C4484();
    return v5 != 0;
  }

  if (*(v2 + v1 + 32))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors);
  if (v4 >> 62)
  {
    goto LABEL_10;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  return v5 != 0;
}

uint64_t sub_29DFB4740()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29DFB47B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v47 = a1;
  v48 = v3;
  v4 = sub_29E2C0514();
  v46 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFB66BC(0, &qword_2A18187B0, sub_29DEFCC2C);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v45 - v8;
  sub_29DEFCC2C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v45 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = aBlock;
  if (aBlock)
  {
    if (aBlock == 1)
    {
      return result;
    }

    if (aBlock != 2)
    {
      sub_29DFB65B0(aBlock);
    }
  }

  sub_29DFB6444(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_deviationsReviewWindow, v9);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    sub_29DFB64C4(v9, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = xmmword_29E2D6C10;

    sub_29E2C1224();
    v26 = v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_calendarChanges;
    v27 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_calendarChanges + 8);
    if (v27)
    {
      v29 = *(v26 + 3);
      v28 = *(v26 + 4);
      v30 = *(v26 + 2);
      v59 = *v26;
      v60 = v27;
      v61 = v30;
      v62 = v29;
      v63 = v28;

      sub_29E2BF404();
      sub_29E2BF404();
      sub_29E0EF50C();

      if (*(v26 + 1))
      {
LABEL_11:
        v32 = *(v26 + 8);
        v31 = *(v26 + 9);
        v34 = *(v26 + 6);
        v33 = *(v26 + 7);
        v54 = v26[40];
        v55 = v34;
        v56 = v33;
        v57 = v32;
        v58 = v31;

        sub_29E2BF404();
        sub_29E2BF404();
        sub_29E0EF50C();

LABEL_14:
        sub_29DFB6528(v17, v14);
        v46 = MEMORY[0x29ED80290](v14);
        v36 = v35;
        v37 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_menstrualCyclesStore);
        sub_29DE9408C(0, &qword_2A1A5E0B0);
        sub_29DEE8BBC();
        v38 = sub_29E2C31F4();

        v39 = sub_29E2C31F4();

        sub_29DE9408C(0, &qword_2A1A61D50);
        v40 = v47;
        v41 = sub_29E2C3604();
        v42 = swift_allocObject();
        swift_weakInit();
        v43 = swift_allocObject();
        v43[2] = v42;
        v43[3] = v40;
        v43[4] = v48;
        v52 = sub_29DFB658C;
        v53 = v43;
        *&aBlock = MEMORY[0x29EDCA5F8];
        *(&aBlock + 1) = 1107296256;
        v50 = sub_29DFB5334;
        v51 = &unk_2A24B6778;
        v44 = _Block_copy(&aBlock);
        sub_29E2BF404();

        [v37 confirmAndSaveDeviationWithMenstrualFlowByDayIndex:v38 intermenstrualBleedingByDayIndex:v39 addedCycleFactors:v41 initialAnalysisWindow:v46 completion:{v36, v44}];
        _Block_release(v44);

        return sub_29DEDD78C(v17);
      }
    }

    else
    {
      sub_29E186128(MEMORY[0x29EDCA190]);
      if (*(v26 + 1))
      {
        goto LABEL_11;
      }
    }

    sub_29E186128(MEMORY[0x29EDCA190]);
    goto LABEL_14;
  }

  sub_29DFB6758(v9, &qword_2A18187B0, sub_29DEFCC2C);
  sub_29E2C04B4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A24();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&aBlock = v22;
    *v21 = 136446210;
    v23 = sub_29E2C4AE4();
    v25 = sub_29DFAA104(v23, v24, &aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Failed to form a deviations review window", v21, 0xCu);
    sub_29DE93B3C(v22);
    MEMORY[0x29ED82140](v22, -1, -1);
    MEMORY[0x29ED82140](v21, -1, -1);
  }

  return (*(v46 + 8))(v6, v4);
}

uint64_t sub_29DFB4E3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v40 - v12;
  if (a1)
  {
    sub_29E2BF404();
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();
    v16 = os_log_type_enabled(v14, v15);
    v42 = a4;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v7;
      v19 = v18;
      v45[0] = v18;
      *v17 = 136446210;
      v20 = sub_29E2C4AE4();
      v22 = sub_29DFAA104(v20, v21, v45);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Updating cycle factors last reviewed date in KVD", v17, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);

      (*(v8 + 8))(v13, v41);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    sub_29DE9408C(0, &qword_2A1819A60);
    v36 = sub_29E2C3B64();
    v45[0] = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v45[1] = v37;
    MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
    sub_29E2C33A4();

    v38 = objc_allocWithZone(sub_29E2BDF64());
    v39 = sub_29E2BDF54();
    [v36 addOperation_];

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v44 = a1;
      *(&v44 + 1) = v42;
      sub_29E2BF404();
      return sub_29E2C1224();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v44 = xmmword_29E2CFE20;
      sub_29E2C1224();
    }

    sub_29E2C04B4();
    v23 = a2;
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A14();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v44 = v27;
      *v26 = 136446466;
      v28 = sub_29E2C4AE4();
      v30 = sub_29DFAA104(v28, v29, &v44);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v43 = a2;
      v31 = a2;
      sub_29DF45BA8(0, &qword_2A1A5DFD0, &qword_2A1A61C90, MEMORY[0x29EDC9F18], MEMORY[0x29EDC9C68]);
      v32 = sub_29E2C3434();
      v34 = sub_29DFAA104(v32, v33, &v44);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Received an error when trying to saveAndAnalyzeMenstrualFlow %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_29DFB5334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29DE9408C(0, &qword_2A1A61D50);
    v4 = sub_29E2C3614();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29DFB53D8()
{
  sub_29DFB66BC(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v89 = v70 - v2;
  v3 = sub_29E2BCC84();
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v85 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29E2C3384();
  v84 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v82 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v83 = v70 - v7;
  v92 = sub_29E2BC9D4();
  v81 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v80 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29E2BCA44();
  v93 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v76 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_29E2BCA54();
  v78 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79);
  v74 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v75 = v70 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v77 = v70 - v14;
  sub_29DFB66BC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v90 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v70 - v18;
  v20 = sub_29E2BCBB4();
  v96 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v73 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v95 = v70 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = v70 - v25;
  MEMORY[0x2A1C7C4A8](v27);
  v29 = v70 - v28;
  v94 = v0;
  v30 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_deviations];
  sub_29DEE7878(v30, v19);
  v31 = sub_29E2C31A4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v19, 1, v31) == 1)
  {
    v34 = MEMORY[0x29EDBA2F8];
    v35 = v19;
LABEL_5:
    sub_29DFB6758(v35, &qword_2A1A5E340, v34);
    return 0;
  }

  v72 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_userCalendar;
  sub_29E2C3194();
  v71 = *(v32 + 8);
  v71(v19, v31);
  v36 = v96;
  v37 = *(v96 + 32);
  v70[1] = v96 + 32;
  v70[0] = v37;
  v37(v29, v26, v20);
  v38 = v90;
  sub_29DEE752C(v30, v90);
  if (v33(v38, 1, v31) == 1)
  {
    (*(v36 + 8))(v29, v20);
    v34 = MEMORY[0x29EDBA2F8];
    v35 = v38;
    goto LABEL_5;
  }

  v40 = v73;
  v94 = v29;
  sub_29E2C3194();
  v71(v38, v31);
  v41 = (v70[0])(v95, v40, v20);
  v42 = v74;
  MEMORY[0x29ED78EF0](v41);
  v43 = v76;
  sub_29E2BCA34();
  v44 = v75;
  sub_29E2BC9B4();
  v45 = *(v93 + 8);
  v93 += 8;
  v73 = v45;
  (v45)(v43, v91);
  v90 = v20;
  v46 = *(v78 + 8);
  v47 = v79;
  v46(v42, v79);
  v48 = v80;
  sub_29E2BC9C4();
  v49 = v77;
  sub_29E2BC994();
  v72 = *(v81 + 8);
  v72(v48, v92);
  v46(v44, v47);
  v71 = sub_29DFB6710(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
  sub_29E2BCB94();
  v50 = (v46)(v49, v47);
  v81 = v97;
  v78 = v98;
  MEMORY[0x29ED78EF0](v50);
  sub_29E2BCA34();
  sub_29E2BC9B4();
  (v73)(v43, v91);
  v46(v42, v47);
  sub_29E2BC9C4();
  sub_29E2BC994();
  v72(v48, v92);
  v46(v44, v47);
  sub_29E2BCB94();
  v46(v49, v47);
  v92 = v98;
  v93 = v97;
  v51 = v83;
  sub_29E2C3314();
  v52 = v84;
  v53 = *(v84 + 16);
  v54 = v82;
  v55 = v86;
  v53(v82, v51, v86);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v56 = qword_2A1A67F80;
  sub_29E2BCC74();
  v57 = v56;
  v91 = sub_29E2C3414();
  v80 = v58;
  v59 = *(v52 + 8);
  v59(v51, v55);
  sub_29E2C3314();
  v53(v54, v51, v55);
  sub_29E2BCC74();
  sub_29E2C3414();
  v59(v51, v55);
  v60 = v89;
  sub_29E2BCC54();
  (*(v87 + 56))(v60, 0, 1, v88);
  sub_29DF45BA8(0, &qword_2A1A61CA0, &qword_2A1A61C60, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_29E2CE0D0;
  v62 = MEMORY[0x29EDC99B0];
  *(v61 + 56) = MEMORY[0x29EDC99B0];
  v63 = sub_29DEB1A44();
  v64 = v78;
  *(v61 + 32) = v81;
  *(v61 + 40) = v64;
  *(v61 + 96) = v62;
  *(v61 + 104) = v63;
  v65 = v91;
  *(v61 + 64) = v63;
  *(v61 + 72) = v65;
  *(v61 + 80) = v80;
  *(v61 + 136) = v62;
  *(v61 + 144) = v63;
  v66 = v92;
  *(v61 + 112) = v93;
  *(v61 + 120) = v66;
  v67 = sub_29E2C33F4();

  sub_29DFB6758(v60, &unk_2A1A626B0, MEMORY[0x29EDB9C70]);
  v68 = *(v96 + 8);
  v69 = v90;
  v68(v95, v90);
  v68(v94, v69);
  return v67;
}

uint64_t sub_29DFB5FB8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel__state;
  sub_29DFB62EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29DFB6638(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_calendarChanges), *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_calendarChanges + 8));

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_gregorianCalendar;
  v4 = sub_29E2BCEA4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);

  v5(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_userCalendar, v4);
  sub_29DFB6758(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38DeviationsFactorsConfirmationViewModel_deviationsReviewWindow, &qword_2A18187B0, sub_29DEFCC2C);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviationsFactorsConfirmationViewModel()
{
  result = qword_2A181A0E8;
  if (!qword_2A181A0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DFB61A4()
{
  sub_29DFB62EC();
  if (v0 <= 0x3F)
  {
    sub_29E2BCEA4();
    if (v1 <= 0x3F)
    {
      sub_29DFB66BC(319, &qword_2A18187B0, sub_29DEFCC2C);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29DFB62EC()
{
  if (!qword_2A181A0F8)
  {
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A0F8);
    }
  }
}

double sub_29DFB633C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_29DFB63BC(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29DFB65F4(v1);

  return sub_29E2C1224();
}

uint64_t sub_29DFB6444(uint64_t a1, uint64_t a2)
{
  sub_29DFB66BC(0, &qword_2A18187B0, sub_29DEFCC2C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFB64C4(uint64_t a1, uint64_t a2)
{
  sub_29DEFCC2C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFB6528(uint64_t a1, uint64_t a2)
{
  sub_29DEFCC2C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFB6598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DFB65B0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_29DFB65F4(unint64_t result)
{
  if (result >= 3)
  {
    sub_29E2BF404();

    return sub_29E2BF404();
  }

  return result;
}

uint64_t sub_29DFB6638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_29DFB66BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29DFB6710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DFB6758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29DFB66BC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29DFB67B4(unint64_t a1, uint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x29ED80D70](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_29DFB9C04(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_29DFB68B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  return sub_29E142298(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t sub_29DFB6910()
{
  v1 = *v0;
  sub_29E2C4A04();
  sub_29E063C1C(v3, v1);
  sub_29E2C4A24();
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29DFB6980(uint64_t a1)
{
  sub_29E063C1C(a1, *v1);
  sub_29E2C4A24();
  return sub_29E2C4A24();
}

uint64_t sub_29DFB69CC()
{
  v1 = *v0;
  sub_29E2C4A04();
  sub_29E063C1C(v3, v1);
  sub_29E2C4A24();
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29DFB6A38()
{
  v1 = v0;
  v21[1] = *v0;
  v2 = sub_29E2C0514();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFBBD08(0, &qword_2A181A570, MEMORY[0x29EDC2008]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v21 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v10 = v25;
  if (*(v0 + 58) & v25)
  {
    v11 = MEMORY[0x29EDC2000];
  }

  else
  {
    v11 = MEMORY[0x29EDC1FF8];
  }

  (*(v7 + 104))(v9, *v11, v6);
  sub_29E2BE644();
  sub_29DFB7498();
  sub_29DFB6D80();
  sub_29E2C04B4();
  swift_retain_n();
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446722;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v10;
    *(v14 + 18) = 1024;
    v19 = *(v1 + 58);

    *(v14 + 20) = v19;

    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Updating history tile visibility with mcd onboarding %{BOOL}d mc onboarding %{BOOL}d", v14, 0x18u);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  else
  {
  }

  return (*(v22 + 8))(v4, v23);
}

uint64_t sub_29DFB6D80()
{
  if (*(v0 + 96) == 1)
  {
    v1 = sub_29DFBA098();
    v2 = sub_29E144584(0, 1, 1, MEMORY[0x29EDCA190]);
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_29E144584((v3 > 1), v4 + 1, 1, v2);
    }

    v14 = type metadata accessor for TileHeaderItem();
    v15 = sub_29DFBC394(&unk_2A1820CE0, 255, type metadata accessor for TileHeaderItem);
    *&v13 = v1;
    v2[2] = v4 + 1;
    sub_29DF3CBE8(&v13, &v2[5 * v4 + 4]);
  }

  else
  {
    v2 = MEMORY[0x29EDCA190];
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v8 = type metadata accessor for CycleDeviationsItem();
  v9 = swift_allocObject();
  *(v9 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 25) = v7;
  *(v9 + 40) = &off_2A24B6838;
  swift_unknownObjectWeakAssign();
  *(v9 + 56) = &off_2A24B6828;
  swift_unknownObjectWeakAssign();
  sub_29E2BF404();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29E144584(0, v2[2] + 1, 1, v2);
  }

  v11 = v2[2];
  v10 = v2[3];
  if (v11 >= v10 >> 1)
  {
    v2 = sub_29E144584((v10 > 1), v11 + 1, 1, v2);
  }

  v14 = v8;
  v15 = sub_29DFBC394(&qword_2A181A110, 255, type metadata accessor for CycleDeviationsItem);
  *&v13 = v9;
  v2[2] = v11 + 1;
  sub_29DF3CBE8(&v13, &v2[5 * v11 + 4]);
  sub_29E2BE5F4();
  sub_29E13D98C(v2);

  sub_29E2BEC94();
}

uint64_t sub_29DFB7030(uint64_t a1, int a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 57);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  *(v2 + 57) = BYTE1(a2) & 1;
  sub_29E2BF404();
  if (sub_29E142298(v5, a1) & 1) == 0 || ((v6 ^ a2))
  {
  }

  else
  {

    if (((((a2 & 0x100) != 0) ^ v7) & 1) == 0)
    {
      return result;
    }
  }

  sub_29DFB6A38(result);

  return sub_29DFB6D80();
}

void *sub_29DFB70F8(void *a1, char a2, uint64_t a3, char a4)
{
  sub_29DFBC07C(0, &qword_2A1A5E3D8, MEMORY[0x29EDB8AF0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v19 - v12;
  *(v4 + 80) = 0;
  v14 = MEMORY[0x29EDCA190];
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
  {
    v15 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v15 = MEMORY[0x29EDCA1A0];
  }

  *(v4 + 88) = v15;
  *(v4 + 104) = 0;
  *(v4 + 58) = a2 & 1;
  *(v4 + 48) = v14;
  *(v4 + 56) = 0;
  *(v4 + 57) = (a4 & 1) == 0;
  *(v4 + 64) = a3;
  *(v4 + 72) = a1;
  *(v4 + 96) = a4 & 1;

  v20 = a1;
  v16 = sub_29E0018F0(v14, 1);
  swift_beginAccess();
  sub_29DFBC07C(0, &qword_2A1A5E3C8, MEMORY[0x29EDB8B00]);
  swift_retain_n();

  sub_29E2C11E4();
  swift_endAccess();

  v19[1] = a3;
  swift_allocObject();
  swift_weakInit();
  sub_29DFBC100();
  sub_29E2C1384();

  v17 = *(v11 + 8);
  v17(v13, v10);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  swift_beginAccess();

  sub_29E2C11E4();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  sub_29E2C1384();

  v17(v13, v10);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  sub_29DFB7814();

  return v16;
}

uint64_t sub_29DFB7498()
{
  v21[1] = *v0;
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 57);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_29E2C1214();

  v7 = v22;
  if (v6)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  swift_bridgeObjectRetain_n();
  sub_29DFB7030(v5, v8 | v7);
  sub_29E2C04B4();
  sub_29E2BF404();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v21[0] = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446722;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (v5 >> 62)
    {
      v16 = sub_29E2C4484();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21[2] = v16;
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, &v22);

    *(v11 + 14) = v19;
    *(v11 + 22) = 1024;

    *(v11 + 24) = v7;

    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Configuring history tile with %s deviations, meetsUsageRequirements %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    return (*(v2 + 8))(v4, v21[0]);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_29DFB77B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_29DFB7814()
{
  v1 = v0;
  v2 = *v0;
  sub_29DFBC3DC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  if (v0[10])
  {

    sub_29E2C3744();
  }

  v6 = sub_29E2C3734();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = [v0[9] healthStore];
  sub_29E2C3714();

  v9 = sub_29E2C3704();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA390];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v7;
  v10[6] = v2;

  v1[10] = sub_29E13C63C(0, 0, v5, &unk_29E2D6F58, v10);
}

uint64_t sub_29DFB7A2C()
{
}

uint64_t sub_29DFB7A7C()
{
  v1 = v0;
  sub_29DFBC3DC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_29E2C3734();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  v6 = *(v0 + 80);
  sub_29E2C3714();

  v7 = sub_29E2C3704();
  v8 = swift_allocObject();
  v9 = MEMORY[0x29EDCA390];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_29E13C984(0, 0, v4, &unk_29E2D6F48, v8);

  return v1;
}

uint64_t sub_29DFB7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_29E2C3714();
  v4[4] = sub_29E2C3704();
  v6 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DFB7CB0, v6, v5);
}

uint64_t sub_29DFB7CB0()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    sub_29E2C3744();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29DFB7D48()
{
  sub_29DFB7A7C();

  return swift_deallocClassInstance();
}

uint64_t sub_29DFB7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_29DFBC26C(0, &unk_2A181D970, MEMORY[0x29EDBA248]);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  sub_29DFBC2DC();
  v6[19] = swift_task_alloc();
  sub_29DFBC26C(0, &qword_2A181A128, MEMORY[0x29EDBA260]);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  sub_29DFBC26C(0, &unk_2A181D990, MEMORY[0x29EDBA250]);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  sub_29DFBC26C(0, &qword_2A181A130, MEMORY[0x29EDBA270]);
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();
  v11 = sub_29E2BCBB4();
  v6[29] = v11;
  v6[30] = *(v11 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v12 = sub_29E2BCEA4();
  v6[33] = v12;
  v6[34] = *(v12 - 8);
  v6[35] = swift_task_alloc();
  v13 = sub_29E2C0514();
  v6[36] = v13;
  v6[37] = *(v13 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = sub_29E2C3714();
  v6[41] = sub_29E2C3704();
  v15 = sub_29E2C36A4();
  v6[42] = v15;
  v6[43] = v14;

  return MEMORY[0x2A1C73D48](sub_29DFB8178, v15, v14);
}

uint64_t sub_29DFB8178()
{
  v31 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136446210;
    v9 = sub_29E2C4AE4();
    v11 = sub_29DFAA104(v9, v10, &v30);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%{public}s] Fetching history deviations", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);
  }

  v12 = *(v6 + 8);
  v12(v4, v5);
  v0[44] = v12;
  v13 = v0[31];
  v14 = v0[29];
  v15 = v0[30];
  v16 = v0[28];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[20];
  sub_29E2BCE44();
  sub_29E2BCB54();
  sub_29E2BCCC4();
  v20 = *(v15 + 8);
  v0[45] = v20;
  v0[46] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v13, v14);
  v21 = sub_29DFBB14C();
  v0[47] = v21;
  v22 = HKMCDeviationSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v23 = sub_29E2C3614();

  v24 = v21;
  sub_29DFB8EC8(v21, 0, 1, v23, v16);

  sub_29E2C3024();
  sub_29E2C3014();
  (*(v18 + 8))(v17, v19);
  swift_beginAccess();
  v0[48] = sub_29E2C3704();
  v25 = sub_29DFBC350(&qword_2A181D9B0, &unk_2A181D990, MEMORY[0x29EDBA250]);
  v26 = swift_task_alloc();
  v0[49] = v26;
  *v26 = v0;
  v26[1] = sub_29DFB84BC;
  v27 = v0[23];
  v28 = v0[19];

  return MEMORY[0x2A1C73B18](v28, v27, v25);
}

uint64_t sub_29DFB84BC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_29E2C36A4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_29DFB89BC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_29E2C36A4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_29DFB8654;
  }

  return MEMORY[0x2A1C73D48](v7, v4, v6);
}

uint64_t sub_29DFB8654()
{

  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return MEMORY[0x2A1C73D48](sub_29DFB86B8, v1, v2);
}

uint64_t sub_29DFB86B8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[47];
    v22 = v0[45];
    v5 = v0[34];
    v23 = v0[33];
    v24 = v0[35];
    v21 = v0[32];
    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[24];
    v11 = v0[25];
    v12 = v0[23];

    (*(v10 + 8))(v11, v12);
    (*(v8 + 8))(v7, v9);
    v22(v21, v6);
    (*(v5 + 8))(v24, v23);

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v3 + 32))(v0[18], v1, v2);
    if (swift_weakLoadStrong())
    {
      v15 = sub_29E2C2FF4();
      v16 = sub_29E2C3004();
      sub_29DFB93F4(v15, v16);
    }

    (*(v0[17] + 8))(v0[18], v0[16]);
    v0[48] = sub_29E2C3704();
    v17 = sub_29DFBC350(&qword_2A181D9B0, &unk_2A181D990, MEMORY[0x29EDBA250]);
    v18 = swift_task_alloc();
    v0[49] = v18;
    *v18 = v0;
    v18[1] = sub_29DFB84BC;
    v19 = v0[23];
    v20 = v0[19];

    return MEMORY[0x2A1C73B18](v20, v19, v17);
  }
}

uint64_t sub_29DFB89BC()
{
  v0[11] = v0[50];
  v0[51] = sub_29DEB1BC4(0, &qword_2A1A61C90);
  swift_willThrowTypedImpl();

  v1 = v0[42];
  v2 = v0[43];

  return MEMORY[0x2A1C73D48](sub_29DFB8A60, v1, v2);
}

uint64_t sub_29DFB8A60()
{
  v50 = v0;
  v1 = *(v0 + 400);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  (*(v3 + 8))(v2, v4);
  sub_29E2C04B4();
  v5 = v1;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A14();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 400);
    v43 = *(v0 + 304);
    v46 = *(v0 + 352);
    v41 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136446466;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, &v49);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 96) = v8;
    v14 = v8;
    v15 = sub_29E2C3434();
    v17 = sub_29DFAA104(v15, v16, &v49);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Error in deviations sample: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    v46(v43, v41);
  }

  else
  {
    v18 = *(v0 + 352);
    v19 = *(v0 + 304);
    v20 = *(v0 + 288);

    v18(v19, v20);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    swift_beginAccess();
    v42 = *(v0 + 376);
    v44 = *(v0 + 400);
    v23 = *(v0 + 360);
    v24 = *(v0 + 272);
    v47 = *(v0 + 280);
    v25 = *(v0 + 256);
    v40 = *(v0 + 264);
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    if (*(v22 + 80))
    {
      swift_endAccess();

      sub_29E2C3744();

      (*(v28 + 8))(v27, v29);
      v23(v25, v26);
      (*(v24 + 8))(v47, v40);
    }

    else
    {
      (*(v28 + 8))(*(v0 + 224), *(v0 + 208));
      v23(v25, v26);
      (*(v24 + 8))(v47, v40);
      swift_endAccess();
    }
  }

  else
  {
    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v32 = *(v0 + 272);
    v33 = *(v0 + 256);
    v45 = *(v0 + 264);
    v48 = *(v0 + 280);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    v37 = *(v0 + 208);
    v36 = *(v0 + 216);

    (*(v36 + 8))(v35, v37);
    v31(v33, v34);
    (*(v32 + 8))(v48, v45);
  }

  v38 = *(v0 + 8);

  return v38();
}

size_t sub_29DFB8EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  LODWORD(v6) = a3;
  v38 = a1;
  sub_29DFBC26C(0, &qword_2A181A090, MEMORY[0x29EDBA210]);
  v37 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v30 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v33 = &v30 - v17;
  v35 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v39 = MEMORY[0x29EDCA190];
    result = sub_29E1813D8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v39;
    v36 = a4;
    v32 = a2;
    v31 = v6;
    v30 = a5;
    if (!i)
    {
      break;
    }

    if (v35)
    {
      a2 = sub_29E2C4484();
      if ((a4 & 0xC000000000000001) != 0)
      {
LABEL_7:
        v6 = 0;
        v34 = v10 + 32;
        v12 = v33;
        while (1)
        {
          a4 = (v6 + 1);
          a5 = __OFADD__(v6, 1);
          if (a2 == v6)
          {
            break;
          }

          MEMORY[0x29ED80D70](v6, v36);
          if (a5)
          {
            goto LABEL_49;
          }

          sub_29DE9408C(0, &qword_2A1A61D50);
          sub_29E2C2F24();
          swift_unknownObjectRelease();
          v39 = v20;
          v22 = *(v20 + 16);
          v21 = *(v20 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_29E1813D8(v21 > 1, v22 + 1, 1);
            v20 = v39;
          }

          *(v20 + 16) = v22 + 1;
          (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v15, v37);
          ++v6;
          if (a4 == i)
          {
            v23 = 0;
            a4 = v36;
            goto LABEL_27;
          }
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      a2 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((a4 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }
    }

    a5 = (a4 + 32);
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v10 + 32;
    a4 = i;
    while (a2)
    {
      if (!v6)
      {
        goto LABEL_51;
      }

      v24 = *a5;
      sub_29DE9408C(0, &qword_2A1A61D50);
      v25 = v24;
      sub_29E2C2F24();

      v39 = v20;
      v15 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v15 >= v26 >> 1)
      {
        sub_29E1813D8(v26 > 1, v15 + 1, 1);
        v20 = v39;
      }

      *(v20 + 16) = v15 + 1;
      (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v15, v12, v37);
      --v6;
      ++a5;
      --a2;
      if (!--a4)
      {
        v23 = 1;
        a4 = v36;
        goto LABEL_26;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v23 = (a4 & 0xC000000000000001) == 0;
LABEL_26:
  v12 = v33;
LABEL_27:
  v15 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    a2 = a4;
  }

  else
  {
    a2 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  a5 = (v10 + 32);
  if (v35)
  {
    while (i != sub_29E2C4484())
    {
LABEL_34:
      if (v23)
      {
        if (i < 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (i >= *(v15 + 16))
        {
          goto LABEL_47;
        }

        v27 = *(a4 + 8 * i + 32);
      }

      else
      {
        v27 = MEMORY[0x29ED80D70](i, a4);
      }

      v6 = v27;
      if (__OFADD__(i, 1))
      {
        goto LABEL_46;
      }

      sub_29DE9408C(0, &qword_2A1A61D50);
      sub_29E2C2F24();

      v39 = v20;
      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      v6 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        sub_29E1813D8(v28 > 1, v29 + 1, 1);
        v20 = v39;
      }

      *(v20 + 16) = v6;
      (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v12, v37);
      ++i;
      a4 = v36;
      if (!v35)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    if (i != *(v15 + 16))
    {
      goto LABEL_34;
    }
  }

  sub_29DE9408C(0, &qword_2A1A61D50);
  return sub_29E2C2FD4();
}

uint64_t sub_29DFB93F4(unint64_t a1, id *a2)
{
  v51 = *v2;
  v57 = sub_29E2BCC24();
  v5 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v47 - v9;
  v56 = 0;
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E2C04B4();
  sub_29E2BF404();
  sub_29E2BF404();
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A34();

  v54 = a1;

  v52 = v16;
  v17 = a2 >> 62;
  if (!os_log_type_enabled(v15, v16))
  {

    (*(v12 + 8))(v14, v11);
    v22 = v54;
    v18 = v55;
    goto LABEL_8;
  }

  v49 = v15;
  v50 = v12;
  v53 = a2 >> 62;
  v48 = v11;
  v18 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v59 = v11;
  *v18 = 136446722;
  v19 = sub_29E2C4AE4();
  v21 = sub_29DFAA104(v19, v20, &v59);

  *(v18 + 4) = v21;
  *(v18 + 12) = 2080;
  v22 = v54;
  if (v54 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v58 = i;
    v24 = sub_29E2C3464();
    v26 = sub_29DFAA104(v24, v25, &v59);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2080;
    v27 = v53 ? sub_29E2C4484() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v27;
    v28 = sub_29E2C3464();
    v30 = sub_29DFAA104(v28, v29, &v59);

    *(v18 + 24) = v30;
    v31 = v49;
    _os_log_impl(&dword_29DE74000, v49, v52, "[%{public}s] Received deviations anchored query result: %s samples added, %s deleted objects", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v18, -1, -1);

    (*(v50 + 8))(v14, v48);
    v18 = v55;
    v17 = v53;
LABEL_8:
    v59 = *(v18 + 48);
    sub_29E2BF404();
    sub_29E2BF404();
    sub_29DFCB5D4(v22);
    if (v17)
    {
      if (!sub_29E2C4484())
      {
        goto LABEL_25;
      }

      v22 = sub_29E2C4484();
      if (!v22)
      {
        v14 = MEMORY[0x29EDCA190];
        goto LABEL_22;
      }
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    v58 = MEMORY[0x29EDCA190];
    v14 = &v58;
    sub_29E18167C(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      break;
    }

    v14 = v58;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v22; ++j)
      {
        MEMORY[0x29ED80D70](j, a2);
        v33 = [swift_unknownObjectRetain() UUID];
        sub_29E2BCC04();
        swift_unknownObjectRelease_n();

        v58 = v14;
        v7 = v14[2];
        v34 = v14[3];
        if (v7 >= v34 >> 1)
        {
          sub_29E18167C(v34 > 1, v7 + 1, 1);
          v14 = v58;
        }

        v14[2] = v7 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, v10, v57);
      }
    }

    else
    {
      a2 += 4;
      v10 = (v5 + 32);
      do
      {
        v35 = *a2;
        v36 = [v35 UUID];
        sub_29E2BCC04();

        v58 = v14;
        v38 = v14[2];
        v37 = v14[3];
        if (v38 >= v37 >> 1)
        {
          sub_29E18167C(v37 > 1, v38 + 1, 1);
          v14 = v58;
        }

        v14[2] = v38 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v38, v7, v57);
        ++a2;
        --v22;
      }

      while (v22);
    }

    v18 = v55;
LABEL_22:
    v39 = sub_29E14EE24(v14);

    sub_29E2BF404();
    v17 = v56;
    v11 = sub_29DFBB3AC(&v59, v39);

    if (v59 >> 62)
    {
      goto LABEL_35;
    }

    v40 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40 >= v11)
    {
      goto LABEL_24;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  __break(1u);
LABEL_35:
  v40 = sub_29E2C4484();
  if (v40 < v11)
  {
    goto LABEL_36;
  }

LABEL_24:
  v56 = v17;
  sub_29E14F900(v11, v40);

LABEL_25:
  v58 = v59;
  swift_getKeyPath();
  v41 = MEMORY[0x29EDC9A40];
  sub_29DFBC26C(0, &qword_2A181D9F0, MEMORY[0x29EDC9A40]);
  sub_29DFBC350(&qword_2A181A138, &qword_2A181D9F0, v41);
  sub_29DFBC394(&qword_2A1A616E0, 255, MEMORY[0x29EDB9BC8]);
  sub_29E2BF404();
  v42 = sub_29E2C35A4();

  sub_29E2BF404();

  v59 = v42;
  if (v42 >> 62)
  {
    v43 = sub_29E2C4484();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43 >= 2)
  {
    v58 = MEMORY[0x29EDCA190];
    v44 = HKMCDeviationSampleTypes();
    sub_29DE9408C(0, &qword_2A1A61D70);
    v45 = sub_29E2C3614();

    sub_29DFB67B4(v45, &v59, &v58);

    v42 = v58;
  }

  sub_29DFB9D9C(v42);
}

void sub_29DFB9C04(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*a2 >> 62)
  {
LABEL_19:
    v4 = sub_29E2C4484();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_29E2BF404();
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x29ED80D70](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_29DE9408C(0, &qword_2A1A619F0);
      v9 = [v7 categoryType];
      v10 = sub_29E2C40D4();

      if (v10)
      {
        break;
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_13;
      }
    }

    v11 = v7;
    MEMORY[0x29ED7FDC0]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29E2C3644();
    }

    sub_29E2C3674();
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_29DFB9D9C(unint64_t a1)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();
  sub_29E2C1214();

  v7 = v25;
  if (*(v1 + 96))
  {
    v8 = 0;
  }

  else
  {
    v8 = 256;
  }

  v9 = sub_29E2BF404();
  sub_29DFB7030(v9, v8 | v7);
  sub_29E2C04B4();
  sub_29E2BF404();
  v10 = sub_29E2C0504();
  v11 = sub_29E2C3A34();
  if (os_log_type_enabled(v10, v11))
  {
    v23 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446722;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    if (a1 >> 62)
    {
      v17 = sub_29E2C4484();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v17;
    v18 = sub_29E2C3464();
    v20 = sub_29DFAA104(v18, v19, &v25);

    *(v12 + 14) = v20;
    *(v12 + 22) = 1024;

    *(v12 + 24) = v7;

    _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Configuring history tile with %s deviations and meetsUsageRequirements %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    return (*(v4 + 8))(v6, v23);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_29DFBA098()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_29DFBA0F8();
    *(v0 + 104) = v1;
  }

  return v1;
}

void *sub_29DFBA0F8()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v17 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v12 = [objc_opt_self() systemIndigoColor];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67E58;
  v19 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E2F6B20);
  v13 = v18;
  v14 = v19;
  type metadata accessor for TileHeaderItem();
  swift_allocObject();
  v15 = sub_29DEF6574(v9, v11, v12, v13, v14);
  v15[5] = &off_2A24B6838;
  swift_unknownObjectWeakAssign();
  v15[7] = &off_2A24B6828;
  swift_unknownObjectWeakAssign();
  return v15;
}

uint64_t sub_29DFBA428(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_29DFBA43C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_29DFBA484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29DFBA4D8()
{
  result = qword_2A181A100;
  if (!qword_2A181A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A100);
  }

  return result;
}

void sub_29DFBA558(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Showing the Deviation History View Controller", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    v17 = v12;
    a2 = v21;
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = *(v3 + 72);
  v19 = objc_allocWithZone(type metadata accessor for DeviationsHistoryCollectionViewController());
  v20 = sub_29DF2F28C(v18);
  [a2 showViewController:v20 sender:v3];
}

uint64_t sub_29DFBA774(int a1)
{
  v12 = a1;
  v13 = sub_29E2BCFB4();
  v1 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFBBD08(0, &unk_2A181A550, MEMORY[0x29EDC2020]);
  sub_29DFBBD70();
  result = sub_29E2BE6D4();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = (v1 + 8);
      do
      {
        MEMORY[0x29ED79720](v6, 0);
        sub_29E2BE764();
        (*v7)(v3, v13);
        sub_29DE9DC34(v16, v15);
        sub_29DEB1BC4(0, &qword_2A1819BD0);
        type metadata accessor for CycleDeviationsItem();
        if (swift_dynamicCast() || (sub_29DE9DC34(v16, v15), type metadata accessor for TileHeaderItem(), (swift_dynamicCast() & 1) != 0))
        {
          v8 = v14;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v8 + 72);
            ObjectType = swift_getObjectType();
            (*(v9 + 8))(v12 & 1, v16, ObjectType, v9);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        result = sub_29DE93B3C(v16);
        ++v6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29DFBA9D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15[-v9];
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  sub_29E2C0844();
  v12 = sub_29E2BE0B4();
  swift_allocObject();
  v13 = sub_29E2BE094();
  a1[3] = v12;
  result = sub_29DFBC394(&unk_2A181CC00, 255, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_29DFBADC8(unint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_29E2BCC24();
  v22 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v32 = &v21 - v8;
  if (a1 >> 62)
  {
LABEL_21:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = sub_29E2C4484();
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v25 = a1 & 0xC000000000000001;
  v21 = a1;
  v23 = a1 + 32;
  v29 = v22 + 16;
  v30 = v31 + 56;
  v10 = (v22 + 8);
  while (1)
  {
    if (v9 == v26)
    {
      return 0;
    }

    v28 = v9;
    if (v25)
    {
      v11 = MEMORY[0x29ED80D70](v9, v21, v7);
    }

    else
    {
      if (v9 >= *(v24 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v23 + 8 * v9);
    }

    v27 = v11;
    a1 = [v11 UUID];
    sub_29E2BCC04();

    if (*(v31 + 16))
    {
      v12 = v31;
      sub_29DFBC394(&qword_2A181BAC0, 255, MEMORY[0x29EDB9C08]);
      a1 = v32;
      v13 = sub_29E2C3244();
      v14 = -1 << *(v12 + 32);
      v15 = v13 & ~v14;
      if ((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        break;
      }
    }

LABEL_4:
    (*v10)(v32, v3);

    v9 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_20;
    }
  }

  v16 = ~v14;
  v17 = *(v22 + 72);
  v18 = *(v22 + 16);
  while (1)
  {
    v18(v5, *(v31 + 48) + v17 * v15, v3);
    sub_29DFBC394(&qword_2A181D9E0, 255, MEMORY[0x29EDB9C08]);
    a1 = sub_29E2C3304();
    v19 = *v10;
    (*v10)(v5, v3);
    if (a1)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v19(v32, v3);

  return v28;
}

id sub_29DFBB14C()
{
  v0 = sub_29E2BCE84();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFBC3DC(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v10 = &v16 - v9;
  (*(v1 + 104))(v3, *MEMORY[0x29EDB9CD8], v0, v8);
  sub_29E2BCE04();
  (*(v1 + 8))(v3, v0);
  sub_29DEAA194(v10, v6);
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    v13 = sub_29E2BCB04();
    (*(v12 + 8))(v6, v11);
  }

  v14 = [objc_opt_self() predicateForSamplesWithStartDate:v13 endDate:0 options:2];

  sub_29DE93920(v10);
  return v14;
}

unint64_t sub_29DFBB3AC(unint64_t *a1, uint64_t a2)
{
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  result = sub_29DFBADC8(*a1, a2);
  v44 = v2;
  if (v2)
  {
    return v3;
  }

  v46 = a1;
  if (v15)
  {
    if (v13 >> 62)
    {
      return sub_29E2C4484();
    }

    return *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v52 = v7 + 16;
  v53 = v9;
  v54 = a2 + 56;
  v55 = (v7 + 8);
  v45 = v7;
  v57 = v6;
  v16 = result + 1;
  v56 = v12;
  while (1)
  {
    if (v13 >> 62)
    {
      if (v16 == sub_29E2C4484())
      {
        return v3;
      }
    }

    else if (v16 == *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v50 = v13;
    v51 = v3;
    v49 = v16;
    v47 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x29ED80D70](v16, v13);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    v48 = v17;
    v18 = [v17 UUID];
    sub_29E2BCC04();

    if (!*(a2 + 16))
    {
      break;
    }

    sub_29DFBC394(&qword_2A181BAC0, 255, MEMORY[0x29EDB9C08]);
    v19 = sub_29E2C3244();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      break;
    }

    v22 = ~v20;
    v23 = *(v45 + 72);
    v24 = *(v45 + 16);
    while (1)
    {
      v25 = a2;
      v26 = v53;
      v27 = v57;
      v24(v53, *(a2 + 48) + v23 * v21, v57);
      sub_29DFBC394(&qword_2A181D9E0, 255, MEMORY[0x29EDB9C08]);
      v28 = sub_29E2C3304();
      v29 = *v55;
      (*v55)(v26, v27);
      if (v28)
      {
        break;
      }

      v21 = (v21 + 1) & v22;
      a2 = v25;
      if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v29(v56, v57);

    a2 = v25;
    v13 = v50;
    v3 = v51;
    v31 = v49;
LABEL_40:
    v42 = __OFADD__(v31, 1);
    v16 = v31 + 1;
    if (v42)
    {
      goto LABEL_50;
    }
  }

LABEL_22:
  (*v55)(v56, v57);

  v30 = v51;
  v31 = v49;
  if (v51 == v49)
  {
    v13 = v50;
    v3 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

  v13 = v50;
  if (v47)
  {
    v32 = MEMORY[0x29ED80D70](v51, v50);
    v33 = MEMORY[0x29ED80D70](v31, v13);
  }

  else
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v34 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51 >= v34)
    {
      goto LABEL_54;
    }

    if (v49 >= v34)
    {
      goto LABEL_55;
    }

    v35 = *(v50 + 32 + 8 * v49);
    v32 = *(v50 + 32 + 8 * v51);
    v33 = v35;
  }

  v36 = v33;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = sub_29E151750(v13);
    v37 = (v13 >> 62) & 1;
  }

  else
  {
    LODWORD(v37) = 0;
  }

  v38 = v13 & 0xFFFFFFFFFFFFFF8;
  v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
  *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20) = v36;

  if ((v13 & 0x8000000000000000) == 0 && !v37)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  v13 = sub_29E151750(v13);
  v38 = v13 & 0xFFFFFFFFFFFFFF8;
  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (v31 >= *(v38 + 16))
    {
      goto LABEL_52;
    }

    v40 = v38 + 8 * v31;
    v41 = *(v40 + 32);
    *(v40 + 32) = v32;

    *v46 = v13;
    v42 = __OFADD__(v30, 1);
    v3 = v30 + 1;
    if (v42)
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return sub_29E2C4484();
}

uint64_t sub_29DFBB8A4(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
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
      v29 = v17;
      *v16 = 136446466;
      v18 = sub_29E2C4AE4();
      v20 = sub_29DFAA104(v18, v19, &v29);
      v27 = v4;
      v21 = v20;

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = a1 & 1;
      v28 = a1 & 1;
      v23 = sub_29E2C3464();
      v25 = sub_29DFAA104(v23, v24, &v29);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Received onboarding completion update, new value: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);

      (*(v5 + 8))(v7, v27);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      v22 = a1 & 1;
    }

    *(v2 + 58) = v22;
    return sub_29DFB6A38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29DFBBBEC(void *a1)
{
  type metadata accessor for CycleDeviationsSectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_29DFBC394(&qword_2A181A118, 255, type metadata accessor for CycleDeviationsSectionCell);
  sub_29E2BE2B4();
  v3 = sub_29E2C33A4();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  type metadata accessor for TileHeaderCell();
  v4 = swift_getObjCClassFromMetadata();
  type metadata accessor for TileHeaderItem();
  sub_29DEF6428();
  v5 = sub_29E2C33A4();

  [a1 registerClass:v4 forCellWithReuseIdentifier:v5];
}

void sub_29DFBBD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29E2BED34();
    v7 = a3(a1, v6, MEMORY[0x29EDC2280]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29DFBBD70()
{
  result = qword_2A1820CD0;
  if (!qword_2A1820CD0)
  {
    sub_29DFBBD08(255, &unk_2A181A550, MEMORY[0x29EDC2020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820CD0);
  }

  return result;
}

void *sub_29DFBBDE4()
{
  v1 = sub_29E2C0AD4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0B44();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0ADB14(v8);
  if ((*(v0 + 96) & 1) == 0)
  {
    (*(v2 + 104))(v4, *MEMORY[0x29EDC7860], v1);
    sub_29E2C0B04();
  }

  sub_29DE9408C(0, &qword_2A1819BB0);
  v9 = sub_29E2C3F34();
  [v9 setContentInsetsReference_];
  [v9 setContentInsets_];
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_29DFBBFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DECA6A0;

  return sub_29DFB7C18(a1, v4, v5, v6);
}

void sub_29DFBC07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29DFBC100()
{
  result = qword_2A1A5E3E0;
  if (!qword_2A1A5E3E0)
  {
    sub_29DFBC07C(255, &qword_2A1A5E3D8, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E3E0);
  }

  return result;
}

uint64_t sub_29DFBC1A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29DFB7DA0(a1, v4, v5, v6, v7, v8);
}

void sub_29DFBC26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DE9408C(255, &qword_2A1A61D50);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29DFBC2DC()
{
  if (!qword_2A181D980)
  {
    sub_29DFBC26C(255, &unk_2A181D970, MEMORY[0x29EDBA248]);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D980);
    }
  }
}

uint64_t sub_29DFBC350(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29DFBC26C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DFBC394(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29DFBC3DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id sub_29DFBC430(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = a1;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for CycleChart();
  v11 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);
  sub_29DEC8D40();
  v12 = v11;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v12;
}

id sub_29DFBC678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleChart();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_29DFBC6EC()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_headerLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_subHeaderLabel;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_container;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x29EDC7B40]) init];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_scrollView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_contentView;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_leadingSafeareaConstraint] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_trailingSafeareaConstraint] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_topSafeAreaConstraint] = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_bottomSafeAreaConstraint] = 0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NoHistoricalSamplesBackgroundView();
  v6 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_headerLabel];
  v8 = v6;
  v9 = v7;
  v10 = sub_29E2C33A4();

  [v9 setText_];

  v11 = *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_subHeaderLabel];
  v12 = sub_29E2C33A4();

  [v11 setText_];

  sub_29DFBCA30();
  return v8;
}

void sub_29DFBC8F8(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_leadingSafeareaConstraint);
  if (v5)
  {
    v6 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_trailingSafeareaConstraint);
    if (v6)
    {
      v7 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_topSafeAreaConstraint);
      if (v7)
      {
        v8 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_bottomSafeAreaConstraint);
        if (v8)
        {
          v13 = v5;
          v14 = v6;
          v15 = v7;
          v16 = v8;
          [v13 setConstant_];
          [v14 setConstant_];
          [v15 setConstant_];
          [v16 setConstant_];
        }
      }
    }
  }
}

uint64_t sub_29DFBCA30()
{
  v1 = v0;
  swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_headerLabel];
  v5 = [v2 secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  [v4 setLineBreakMode_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_subHeaderLabel];
  v7 = [v2 secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  [v6 setTextAlignment_];
  [v6 setLineBreakMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v8 = sub_29E2C3FD4();
  [v4 setFont_];

  v9 = sub_29E2C3FD4();
  [v6 setFont_];

  v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_scrollView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setShowsVerticalScrollIndicator_];
  [v10 setShowsHorizontalScrollIndicator_];
  [v10 setAlwaysBounceVertical_];
  v11 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_contentView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  [v10 addSubview_];
  [v11 addSubview_];
  [v11 addSubview_];
  [v11 addLayoutGuide_];
  sub_29DFBCDD8();
  sub_29DFBD158();
  sub_29DFBD484();
  sub_29DFBD7B4();
  sub_29DEAC750();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CAB20;
  v13 = sub_29E2C0B54();
  v14 = MEMORY[0x29EDC7870];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

void sub_29DFBCDD8()
{
  sub_29DE99B54();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E2D48B0;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_headerLabel);
  v3 = [v2 topAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_container);
  v5 = [v4 &selRef_hkmc_menstruationColor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [v2 centerXAnchor];
  v8 = [v4 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [v2 widthAnchor];
  v11 = [v4 widthAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_subHeaderLabel);
  v14 = [v13 topAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:5.0];

  *(v1 + 56) = v16;
  v17 = [v13 centerXAnchor];
  v18 = [v4 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v1 + 64) = v19;
  v20 = [v13 widthAnchor];
  v21 = [v4 widthAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 72) = v22;
  v23 = [v13 bottomAnchor];
  v24 = [v4 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v1 + 80) = v25;
  v26 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v27 = sub_29E2C3604();

  [v26 activateConstraints_];
}

void sub_29DFBD158()
{
  sub_29E2C3E74();
  [v0 hk_safeAreaAdjustedEdgeInsets_];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_scrollView];
  v10 = [v9 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v4];

  v13 = [v0 trailingAnchor];
  v14 = [v9 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:v8];

  v16 = [v9 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v2];

  v19 = [v0 bottomAnchor];
  v20 = [v9 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v6];

  v22 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_leadingSafeareaConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_leadingSafeareaConstraint] = v12;
  v23 = v12;

  v24 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_trailingSafeareaConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_trailingSafeareaConstraint] = v15;
  v25 = v15;

  v26 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_topSafeAreaConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_topSafeAreaConstraint] = v18;
  v27 = v18;

  v28 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_bottomSafeAreaConstraint];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_bottomSafeAreaConstraint] = v21;
  v29 = v21;

  sub_29DE99B54();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29E2CE070;
  *(v30 + 32) = v27;
  *(v30 + 40) = v23;
  *(v30 + 48) = v29;
  *(v30 + 56) = v25;
  v31 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v32 = v23;
  v33 = v25;
  v34 = v27;
  v35 = v29;
  v36 = sub_29E2C3604();

  [v31 activateConstraints_];
}

void sub_29DFBD484()
{
  sub_29DE99B54();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E2D6FB0;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_contentView);
  v3 = [v2 topAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_scrollView);
  v5 = [v4 contentLayoutGuide];
  v6 = [v5 topAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v4 contentLayoutGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v4 contentLayoutGuide];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v1 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v4 contentLayoutGuide];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v1 + 56) = v19;
  v20 = [v2 widthAnchor];
  v21 = [v4 frameLayoutGuide];
  v22 = [v21 widthAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v1 + 64) = v23;
  v24 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v25 = sub_29E2C3604();

  [v24 activateConstraints_];
}

void sub_29DFBD7B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_container);
  v2 = [v1 centerYAnchor];
  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_contentView);
  v4 = [v3 centerYAnchor];
  v5 = [v2 constraintEqualToAnchor_];

  LODWORD(v6) = 1144750080;
  [v5 setPriority_];
  v7 = [v3 heightAnchor];
  v8 = [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_scrollView) frameLayoutGuide];
  v9 = [v8 heightAnchor];

  v10 = [v7 constraintGreaterThanOrEqualToAnchor_];
  LODWORD(v11) = 1132068864;
  [v10 setPriority_];
  sub_29DE99B54();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2D2410;
  v13 = [v1 leadingAnchor];
  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v1 trailingAnchor];
  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v1 topAnchor];
  v20 = [v3 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor_];

  *(v12 + 48) = v21;
  v22 = [v1 bottomAnchor];
  v23 = [v3 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor_];

  *(v12 + 56) = v24;
  *(v12 + 64) = v5;
  *(v12 + 72) = v10;
  v25 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v26 = v5;
  v27 = v10;
  v28 = sub_29E2C3604();

  [v25 activateConstraints_];
}

id sub_29DFBDB6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoHistoricalSamplesBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DFBDC84()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_headerLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_subHeaderLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_container;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B40]) init];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_scrollView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_contentView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_leadingSafeareaConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_trailingSafeareaConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_topSafeAreaConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_bottomSafeAreaConstraint) = 0;
  sub_29E2C4724();
  __break(1u);
}

void sub_29DFBDDB8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_headerLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33NoHistoricalSamplesBackgroundView_subHeaderLabel);
  v5 = sub_29E2C3FD4();
  [v4 setFont_];
}

uint64_t sub_29DFBDEC8(uint64_t a1)
{
  if (a1 != 5)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29DFBDFB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a2;
  v88 = a3;
  swift_getObjectType();
  v6 = MEMORY[0x29EDC9C68];
  sub_29DFC45FC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v84 = &v81 - v8;
  sub_29DFC45FC(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v81 - v10;
  v12 = sub_29E2BC904();
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v83 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v89 = &v81 - v15;
  v16 = sub_29E2C0514();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v81 - v20;
  sub_29E2C04F4();
  v22 = sub_29E2C0504();
  v23 = sub_29E2C3A34();
  v24 = os_log_type_enabled(v22, v23);
  v95 = a1;
  v91 = v17;
  v92 = v4;
  v86 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v96[0] = v26;
    *v25 = 136446466;
    v27 = sub_29E2C4AE4();
    v29 = sub_29DFAA104(v27, v28, v96);
    a1 = v95;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29DFAA104(0xD00000000000003CLL, 0x800000029E2F6D90, v96);
    _os_log_impl(&dword_29DE74000, v22, v23, "%{public}s %{public}s running", v25, 0x16u);
    swift_arrayDestroy();
    v30 = v26;
    v16 = v86;
    v17 = v91;
    MEMORY[0x29ED82140](v30, -1, -1);
    MEMORY[0x29ED82140](v25, -1, -1);
  }

  v31 = *(v17 + 8);
  v31(v21, v16);
  sub_29DFBFFCC();
  v32 = [a1 notification];
  sub_29E2C3A94();

  v34 = v93;
  v33 = v94;
  v35 = (*(v93 + 48))(v11, 1, v94);
  v85 = v31;
  if (v35 == 1)
  {
    sub_29DFC475C(v11, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
    v36 = v90;
  }

  else
  {
    v82 = *(v34 + 32);
    v82(v89, v11, v33);
    v37 = [a1 actionIdentifier];
    v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v40 = v39;

    if (v38 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v40 == v41)
    {
    }

    else
    {
      v42 = sub_29E2C4914();

      if ((v42 & 1) == 0)
      {
        v72 = sub_29E2C3734();
        v73 = v84;
        (*(*(v72 - 8) + 56))(v84, 1, 1, v72);
        v75 = v93;
        v74 = v94;
        v76 = v83;
        (*(v93 + 16))(v83, v89, v94);
        sub_29E2C3714();
        v77 = sub_29E2C3704();
        v78 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v79 = swift_allocObject();
        v80 = MEMORY[0x29EDCA390];
        *(v79 + 16) = v77;
        *(v79 + 24) = v80;
        v82((v79 + v78), v76, v74);
        sub_29E13C63C(0, 0, v73, &unk_29E2D7048, v79);

        (*(v75 + 8))(v89, v74);
        goto LABEL_13;
      }
    }

    (*(v93 + 8))(v89, v94);
    a1 = v95;
    v36 = v90;
    v31 = v85;
  }

  sub_29E2C04F4();
  v43 = a1;
  v44 = sub_29E2C0504();
  v45 = sub_29E2C3A34();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v97 = v47;
    *v46 = 136446722;
    v48 = sub_29E2C4AE4();
    v50 = sub_29DFAA104(v48, v49, &v97);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = [v43 notification];
    v52 = [v51 request];

    v53 = [v52 content];
    v54 = [v53 userInfo];

    sub_29E2C3214();
    v55 = sub_29E2C3224();
    v57 = v56;

    v58 = sub_29DFAA104(v55, v57, &v97);

    *(v46 + 14) = v58;
    *(v46 + 22) = 2080;
    v59 = [v43 actionIdentifier];
    v60 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v62 = v61;

    v96[0] = v60;
    v96[1] = v62;
    v63 = sub_29E2C3464();
    v65 = sub_29DFAA104(v63, v64, &v97);

    *(v46 + 24) = v65;
    _os_log_impl(&dword_29DE74000, v44, v45, "%{public}s Not opening URL for %s action: %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v47, -1, -1);
    MEMORY[0x29ED82140](v46, -1, -1);

    v85(v90, v86);
  }

  else
  {

    v31(v36, v16);
  }

LABEL_13:
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  v68 = v95;
  *(v67 + 16) = v66;
  *(v67 + 24) = v68;
  v69 = v88;
  *(v67 + 32) = v87;
  *(v67 + 40) = v69;
  v70 = v68;

  sub_29DFC085C(v70, sub_29DFC4660, v67);
}

void sub_29DFBE908()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  }

  else
  {
    v3 = sub_29DFC1C94(v0);
    v2 = 0;
  }

  v4 = v2;
  v5 = HKLogMenstrualCyclesCategory();
  v6 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v5 healthDataSource:v3];

  v7 = swift_allocObject();
  type metadata accessor for CycleDeviationAnalyticsEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000002BLL;
  *(v8 + 24) = 0x800000029E2EEF20;
  *(v8 + 40) = 7;
  sub_29DE9408C(0, &qword_2A1A5E0B0);
  *(v8 + 64) = sub_29E2C40B4();
  *(v8 + 72) = sub_29E2C40B4();
  *(v8 + 80) = sub_29E2C40B4();
  *(v8 + 88) = sub_29E2C40B4();
  *(v8 + 32) = 2;
  v9 = *(v8 + 40);
  *(v8 + 40) = 7;
  sub_29DEE8B58(v9);
  v10 = MEMORY[0x29EDCA190];
  *(v8 + 56) = 0;
  *(v8 + 48) = v10;
  *(v8 + 58) = 0;
  *(v7 + 16) = v8;
  v11 = [objc_allocWithZone(MEMORY[0x29EDBAB40]) initWithHealthStore_];
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = ObjectType;
  v15[4] = sub_29DFC490C;
  v15[5] = v12;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1107296256;
  v15[2] = sub_29DEE7478;
  v15[3] = &unk_2A24B6A60;
  v13 = _Block_copy(v15);

  v14 = v6;

  [v11 numberOfDeviceContextsPerDeviceType_];
  _Block_release(v13);
}

uint64_t sub_29DFBEB74(int a1, int a2, void *a3, int a4)
{
  v94 = a4;
  v95 = a3;
  v96 = a2;
  LODWORD(v4) = a1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x29EDC9C68];
  sub_29DFC45FC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v84 - v7;
  sub_29DFC45FC(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v92 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v89 = &v84 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v87 = &v84 - v14;
  v15 = sub_29E2BC4D4();
  v16 = *(v15 - 8);
  v97 = v15;
  v98 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v91 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v88 = &v84 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v86 = &v84 - v21;
  v22 = sub_29E2BC904();
  v104 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v93 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v90 = &v84 - v25;
  MEMORY[0x2A1C7C4A8](v26);
  v105 = &v84 - v27;
  v99 = v28;
  MEMORY[0x2A1C7C4A8](v29);
  v85 = &v84 - v30;
  v31 = sub_29E2C0514();
  v102 = *(v31 - 8);
  v103 = v31;
  MEMORY[0x2A1C7C4A8](v31);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [objc_opt_self() sharedApplication];
  v35 = [v34 applicationState];

  sub_29E2C04F4();
  v36 = sub_29E2C0504();
  v37 = sub_29E2C3A34();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v101 = v4;
    v4 = v38;
    v39 = swift_slowAlloc();
    v107 = v39;
    *v4 = 136446722;
    v40 = sub_29E2C4AE4();
    v42 = sub_29DFAA104(v40, v41, &v107);
    ObjectType = v8;
    v43 = v42;

    *(v4 + 4) = v43;
    *(v4 + 12) = 2080;
    LOBYTE(v106) = v101;
    v44 = sub_29E2C3424();
    v46 = sub_29DFAA104(v44, v45, &v107);

    *(v4 + 14) = v46;
    *(v4 + 22) = 2080;
    v47 = v35;
    v106 = v35;
    v48 = sub_29E2C48D4();
    v50 = sub_29DFAA104(v48, v49, &v107);

    *(v4 + 24) = v50;
    v8 = ObjectType;
    _os_log_impl(&dword_29DE74000, v36, v37, "%{public}s Opening URL for %s in app state %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v39, -1, -1);
    v51 = v4;
    LOBYTE(v4) = v101;
    MEMORY[0x29ED82140](v51, -1, -1);
  }

  else
  {
    v47 = v35;
  }

  result = (*(v102 + 8))(v33, v103);
  v53 = v104;
  v54 = v105;
  if (v4 <= 1u)
  {
    if (v4)
    {
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v75 = [qword_2A1A67F80 bundleURL];
      sub_29E2BC8D4();

      sub_29E2BC8B4();
      v103 = *(v53 + 8);
      v103(v54, v22);
      v76 = v88;
      sub_29E2BDF94();

      sub_29DF24A0C(1);
      sub_29DF24EEC(0);
      sub_29DF25054(v47 == 0);
      sub_29DF2544C(0, 1);
      v57 = v89;
      sub_29E2BC474();
      if ((*(v53 + 48))(v57, 1, v22) != 1)
      {
        (*(v98 + 8))(v76, v97);
        v77 = v53;
        v78 = *(v53 + 32);
        v60 = v90;
        v78(v90, v57, v22);
        v79 = sub_29E2C3734();
        (*(*(v79 - 8) + 56))(v8, 1, 1, v79);
        (*(v77 + 16))(v54, v60, v22);
        sub_29E2C3714();
        v80 = sub_29E2C3704();
        v81 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v64 = swift_allocObject();
        v82 = MEMORY[0x29EDCA390];
        *(v64 + 16) = v80;
        *(v64 + 24) = v82;
        v78((v64 + v81), v54, v22);
        v66 = &unk_29E2D7058;
        goto LABEL_19;
      }
    }

    else
    {
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v67 = [qword_2A1A67F80 bundleURL];
      sub_29E2BC8D4();

      sub_29E2BC8B4();
      v103 = *(v53 + 8);
      v103(v54, v22);
      v68 = v86;
      sub_29E2BDF94();

      sub_29DF24A0C(1);
      sub_29DF24EEC(v96);
      sub_29DF25054(v47 == 0);
      sub_29DF2544C(v95, v94 & 1);
      v57 = v87;
      sub_29E2BC474();
      if ((*(v53 + 48))(v57, 1, v22) != 1)
      {
        (*(v98 + 8))(v68, v97);
        v69 = v53;
        v70 = *(v53 + 32);
        v60 = v85;
        v70(v85, v57, v22);
        v71 = sub_29E2C3734();
        (*(*(v71 - 8) + 56))(v8, 1, 1, v71);
        (*(v69 + 16))(v54, v60, v22);
        sub_29E2C3714();
        v72 = sub_29E2C3704();
        v73 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v64 = swift_allocObject();
        v74 = MEMORY[0x29EDCA390];
        *(v64 + 16) = v72;
        *(v64 + 24) = v74;
        v70((v64 + v73), v54, v22);
        v66 = &unk_29E2D7060;
        goto LABEL_19;
      }
    }

LABEL_21:
    sub_29DFC475C(v57, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_29E2C4584();

    v107 = 0xD00000000000001ALL;
    v108 = 0x800000029E2F6EE0;
    sub_29DFC4A20(&qword_2A181A6F0, MEMORY[0x29EDB9940]);
    v83 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v83);

    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (v4 - 2 < 3)
  {
    return result;
  }

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v55 = [qword_2A1A67F80 bundleURL];
  sub_29E2BC8D4();

  sub_29E2BC8B4();
  v103 = *(v53 + 8);
  v103(v54, v22);
  v56 = v91;
  sub_29E2BDF94();

  sub_29DF24A0C(7);
  sub_29DF24EEC(v96);
  sub_29DF25054(v47 == 0);
  sub_29DF2544C(0, 1);
  v57 = v92;
  sub_29E2BC474();
  if ((*(v53 + 48))(v57, 1, v22) == 1)
  {
    goto LABEL_21;
  }

  (*(v98 + 8))(v56, v97);
  v58 = v53;
  v59 = *(v53 + 32);
  v60 = v93;
  v59(v93, v57, v22);
  v61 = sub_29E2C3734();
  (*(*(v61 - 8) + 56))(v8, 1, 1, v61);
  (*(v58 + 16))(v54, v60, v22);
  sub_29E2C3714();
  v62 = sub_29E2C3704();
  v63 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v64 = swift_allocObject();
  v65 = MEMORY[0x29EDCA390];
  *(v64 + 16) = v62;
  *(v64 + 24) = v65;
  v59((v64 + v63), v54, v22);
  v66 = &unk_29E2D7050;
LABEL_19:
  sub_29E13C63C(0, 0, v8, v66, v64);

  return (v103)(v60, v22);
}

uint64_t sub_29DFBF928(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C2B34();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B54();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v12 = sub_29E2C3CF4();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_29DE9B5DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B6BF0;
  v14 = _Block_copy(aBlock);

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29DFC4A20(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DFC45FC(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_29DFBFC18(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  if (v8)
  {
    v14 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  }

  else
  {
    v14 = sub_29DFC14A8(a1, v3);
  }

  v9 = objc_allocWithZone(MEMORY[0x29EDC3410]);
  v10 = v8;
  v11 = [v9 initWithHealthStore_];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = ObjectType;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v19 = sub_29DFC4A10;
      v20 = v12;
      aBlock = MEMORY[0x29EDCA5F8];
      v16 = 1107296256;
      v17 = sub_29DFE9648;
      v18 = &unk_2A24B6B78;
      v13 = _Block_copy(&aBlock);

      [v11 savePeriodNotYetStartedWithCompletion_];
      goto LABEL_12;
    }
  }

  else if (a1 >= 2u)
  {
    v19 = sub_29DFC4A10;
    v20 = v12;
    aBlock = MEMORY[0x29EDCA5F8];
    v16 = 1107296256;
    v17 = sub_29DFE9648;
    v18 = &unk_2A24B6BA0;
    v13 = _Block_copy(&aBlock);

    [v11 savePeriodNotYetEndedWithCompletion_];
LABEL_12:

    _Block_release(v13);
    return;
  }
}

uint64_t sub_29DFBFEC4(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

void sub_29DFBFFCC()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  if (v2 || (v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init], v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationSyncStore;
    v11 = v2;
    if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationSyncStore))
    {
      v6 = v2;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x29EDBACA8]) initWithClientIdentifier:*MEMORY[0x29EDC3328] healthStore:v2];
      v8 = *(v0 + v5);
      *(v0 + v5) = v7;
    }

    v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationContentStateManager;
    if (!*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationContentStateManager))
    {
      sub_29E2BD1E4();
      v10 = v11;
      *(v0 + v9) = sub_29E2BD1C4();

      sub_29E2BD1D4();
    }
  }
}

void sub_29DFC013C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29DFC01B4(a2, a3, a4);
  }
}

uint64_t sub_29DFC01B4(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v67 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_29E2BCBB4();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v57 - v10;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v57 - v17;
  sub_29E2C04F4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();
  v21 = os_log_type_enabled(v19, v20);
  v64 = ObjectType;
  v65 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v22 = 136315394;
    v23 = sub_29E2C4AE4();
    v60 = v19;
    v25 = sub_29DFAA104(v23, v24, aBlock);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_29DFAA104(0xD00000000000003ALL, 0x800000029E2F6E10, aBlock);
    v26 = v60;
    _os_log_impl(&dword_29DE74000, v60, v20, "%s %s running", v22, 0x16u);
    v27 = v61;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v22, -1, -1);
  }

  else
  {
  }

  v28 = *(v13 + 8);
  v29 = v28(v18, v12);
  if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_shouldDismissNotificationsUrgently) != 1)
  {
    return v67(v29);
  }

  v61 = v28;
  v30 = [a1 notification];
  v31 = [v30 request];

  v32 = [v31 identifier];
  v33 = v32;
  if (!v32)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v33 = sub_29E2C33A4();
  }

  v59 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v35 = v34;
  sub_29E2BCBA4();
  sub_29E2C3784();
  sub_29E2BCAB4();
  v36 = objc_allocWithZone(MEMORY[0x29EDBAC98]);
  v37 = sub_29E2BCB04();
  v60 = [v36 initWithAction:1 categoryIdentifier:v33 expirationDate:v37];

  v38 = v65;
  sub_29E2C04F4();
  sub_29E2BF404();
  v39 = sub_29E2C0504();
  v40 = sub_29E2C3A34();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136446466;
    v43 = sub_29E2C4AE4();
    v58 = v12;
    v45 = v4;
    v46 = sub_29DFAA104(v43, v44, aBlock);

    *(v41 + 4) = v46;
    v4 = v45;
    *(v41 + 12) = 2080;
    v47 = v59;
    *(v41 + 14) = sub_29DFAA104(v59, v35, aBlock);
    _os_log_impl(&dword_29DE74000, v39, v40, "%{public}s Sending dismiss instruction for %s)", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v42, -1, -1);
    MEMORY[0x29ED82140](v41, -1, -1);

    v61(v65, v58);
  }

  else
  {

    v61(v38, v12);
    v47 = v59;
  }

  v49 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationSyncStore);
  if (v49)
  {
    v50 = swift_allocObject();
    v50[2] = v47;
    v50[3] = v35;
    v51 = v66;
    v50[4] = v67;
    v50[5] = v51;
    v50[6] = v64;
    aBlock[4] = sub_29DFC48E4;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24B69E8;
    v52 = _Block_copy(aBlock);
    v53 = v49;

    v54 = v60;
    [v53 sendNotificationInstruction:v60 completion:v52];
    _Block_release(v52);
  }

  else
  {

    v53 = v60;
  }

  v55 = v63;
  v56 = *(v62 + 8);
  v56(v68, v63);
  return (v56)(v11, v55);
}

void sub_29DFC085C(void *a1, void (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v108 = a2;
  v109 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_29E2BDB04();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v96 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v98 = &v93 - v8;
  v95 = v9;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v93 - v11;
  sub_29DFC45FC(0, &unk_2A1A616B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v101 = (&v93 - v14);
  v15 = sub_29E2BCC24();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v97 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v102 = &v93 - v19;
  v20 = sub_29E2C0514();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v112 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v100 = &v93 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v93 - v26;
  sub_29E2C04F4();
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A34();
  v30 = os_log_type_enabled(v28, v29);
  v107 = ObjectType;
  v111 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v103 = v16;
    v32 = v31;
    v33 = swift_slowAlloc();
    v104 = v15;
    v94 = v12;
    v34 = v33;
    v115[0] = v33;
    *v32 = 136315394;
    v35 = sub_29E2C4AE4();
    v37 = sub_29DFAA104(v35, v36, v115);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_29DFAA104(0xD000000000000034, 0x800000029E2F6DD0, v115);
    _os_log_impl(&dword_29DE74000, v28, v29, "%s %s running", v32, 0x16u);
    swift_arrayDestroy();
    v38 = v34;
    v12 = v94;
    v15 = v104;
    MEMORY[0x29ED82140](v38, -1, -1);
    v39 = v32;
    v16 = v103;
    MEMORY[0x29ED82140](v39, -1, -1);
  }

  v40 = v20;
  v110 = *(v21 + 8);
  v110(v27, v20);
  v41 = [a1 notification];
  v42 = [v41 request];

  v43 = [v42 content];
  v44 = [v43 userInfo];

  v45 = sub_29E2C3214();
  v113 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v114 = v46;
  sub_29E2C4514();
  if (!*(v45 + 16) || (v47 = sub_29E1842D0(v115), (v48 & 1) == 0))
  {
    sub_29DF014AC(v115);
    goto LABEL_9;
  }

  sub_29DEA6E90(*(v45 + 56) + 32 * v47, v116);
  sub_29DF014AC(v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v50 = v112;
    sub_29E2C04F4();
    sub_29E2BF404();
    v51 = sub_29E2C0504();
    v52 = sub_29E2C3A14();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v115[0] = v54;
      *v53 = 136446466;
      v55 = sub_29E2C4AE4();
      v57 = sub_29DFAA104(v55, v56, v115);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = sub_29E2C3224();
      v60 = v59;

      v61 = sub_29DFAA104(v58, v60, v115);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_29DE74000, v51, v52, "%{public}s Could not set notification acknowledgement: Missing identifier in user info: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v54, -1, -1);
      MEMORY[0x29ED82140](v53, -1, -1);

      v62 = v112;
    }

    else
    {

      v62 = v50;
    }

    v63 = (v110)(v62, v40);
    v108(v63);

    return;
  }

  v49 = v101;
  sub_29E2BCBC4();

  if ((*(v16 + 48))(v49, 1, v15) == 1)
  {
    sub_29DFC475C(v49, &unk_2A1A616B0, MEMORY[0x29EDB9C08]);
    goto LABEL_9;
  }

  v64 = v102;
  (*(v16 + 32))(v102, v49, v15);
  v112 = v42;
  v65 = [v42 identifier];
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  v103 = v16;
  v66 = *(v16 + 16);
  v104 = v15;
  v66(v97, v64, v15);
  sub_29E2BDAE4();
  v67 = v100;
  sub_29E2C04F4();
  v68 = *(v105 + 16);
  v69 = v98;
  v68(v98, v12, v106);
  v70 = sub_29E2C0504();
  v71 = sub_29E2C3A34();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v97 = v68;
    v73 = v72;
    v74 = swift_slowAlloc();
    v115[0] = v74;
    *v73 = 136446466;
    v75 = sub_29E2C4AE4();
    v77 = sub_29DFAA104(v75, v76, v115);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2080;
    v78 = sub_29E2BDAF4();
    v80 = v79;
    v101 = *(v105 + 8);
    v101(v69, v106);
    v81 = sub_29DFAA104(v78, v80, v115);

    *(v73 + 14) = v81;
    _os_log_impl(&dword_29DE74000, v70, v71, "%{public}s Updating notification content state to %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v74, -1, -1);
    v82 = v73;
    v68 = v97;
    MEMORY[0x29ED82140](v82, -1, -1);

    v83 = v100;
  }

  else
  {

    v101 = *(v105 + 8);
    v101(v69, v106);
    v83 = v67;
  }

  v110(v83, v40);
  if (*(v99 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthSharingNotificationContentStateManager))
  {

    v84 = sub_29E2BD1B4();
    v111 = v84;

    v115[0] = v84;
    v85 = v96;
    v86 = v106;
    v68(v96, v12, v106);
    v87 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v88 = v105;
    v89 = (v95 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    (*(v88 + 32))(v90 + v87, v85, v86);
    v91 = (v90 + v89);
    v92 = v109;
    *v91 = v108;
    v91[1] = v92;
    *(v90 + ((v89 + 23) & 0xFFFFFFFFFFFFFFF8)) = v107;
    sub_29DFC4878();
    sub_29DFC4A20(&qword_2A181A208, sub_29DFC4878);

    sub_29E2C12B4();

    swift_beginAccess();
    sub_29E2C1034();
    swift_endAccess();
  }

  else
  {
  }

  v101(v12, v106);
  (*(v103 + 8))(v102, v104);
}

id sub_29DFC14A8(char a1, uint64_t a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04F4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446466;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v26 = a1;
    v16 = sub_29E2C3464();
    v18 = sub_29DFAA104(v16, v17, &v27);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_29DE74000, v8, v9, "%{public}s Creating a HKHealthStore to handle notification action %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v12, -1, -1);
    v19 = v11;
    a2 = v25;
    MEMORY[0x29ED82140](v19, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v21 = *(a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  *(a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore) = v20;
  v22 = v20;

  return v22;
}

uint64_t sub_29DFC16E4(char a1, void *a2, int a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v55 = a3;
  v10 = sub_29E2BCC94();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29E2BCEA4();
  v54 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2C0514();
  v57 = *(v16 - 8);
  v58 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = v52 - v20;
  if (a1)
  {
    sub_29E2C04F4();
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      v60 = v52[0];
      *v24 = 136446466;
      v25 = sub_29E2C4AE4();
      v53 = a4;
      v27 = sub_29DFAA104(v25, v26, &v60);
      v52[1] = a5;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      LOBYTE(v59) = v55;
      v29 = sub_29E2C3464();
      v31 = sub_29DFAA104(v29, v30, &v60);
      a4 = v53;

      *(v24 + 14) = v31;
      _os_log_impl(&dword_29DE74000, v22, v23, "%{public}s Saved samples for action: %s", v24, 0x16u);
      v32 = v52[0];
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v32, -1, -1);
      MEMORY[0x29ED82140](v24, -1, -1);
    }

    (*(v57 + 8))(v18, v58);
    (*(v11 + 104))(v13, *MEMORY[0x29EDB9C78], v10);
    sub_29E2BCCA4();
    (*(v11 + 8))(v13, v10);
    v33 = sub_29E2BCD84();
    (*(v54 + 8))(v15, v56);
    v34 = HKMCTodayIndex();

    v35 = [objc_opt_self() submitMetricForMethod:*MEMORY[0x29EDC3298] loggedDayIndex:v34 currentDayIndex:v34];
  }

  else
  {
    sub_29E2C04F4();
    v36 = a2;
    v37 = sub_29E2C0504();
    v38 = sub_29E2C3A14();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60 = v40;
      *v39 = 136446722;
      v41 = sub_29E2C4AE4();
      v43 = sub_29DFAA104(v41, v42, &v60);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      LOBYTE(v59) = v55;
      v44 = sub_29E2C3464();
      v46 = sub_29DFAA104(v44, v45, &v60);

      *(v39 + 14) = v46;
      *(v39 + 22) = 2082;
      v59 = a2;
      v47 = a2;
      sub_29DFC45FC(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v48 = sub_29E2C3434();
      v50 = sub_29DFAA104(v48, v49, &v60);

      *(v39 + 24) = v50;
      _os_log_impl(&dword_29DE74000, v37, v38, "%{public}s Failed saving samples for action %s with error: %{public}s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v40, -1, -1);
      MEMORY[0x29ED82140](v39, -1, -1);
    }

    v35 = (*(v57 + 8))(v21, v58);
  }

  return a4(v35);
}

id sub_29DFC1C94(uint64_t a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04F4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v20[1] = 0xD00000000000001ELL;
    v20[2] = 0x800000029E2F6E90;
    v13 = sub_29E2C3464();
    v15 = sub_29DFAA104(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Creating a HKHealthStore to handle  %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v16 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v17 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore);
  *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26MenstrualCyclesAppDelegate_healthStore) = v16;
  v18 = v16;

  return v18;
}

uint64_t sub_29DFC1EDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  sub_29DFC4A20(&qword_2A181A278, type metadata accessor for MenstrualCyclesAppDelegate);
  swift_unknownObjectRetain();
  v8 = sub_29E2BDE54();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(a3 + 16) = v8;
  swift_unknownObjectRelease();
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v12[4] = sub_29DFC4918;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29DFE9648;
  v12[3] = &unk_2A24B6AB0;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();

  [a4 submitEvent:v8 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_29DFC2074(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04E4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29DFC45FC(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting MenstrualCycles analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29DFC22BC(void **a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v48 = a4;
  v7 = sub_29E2BDB04();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29E2C0514();
  v11 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v45 - v15;
  v17 = *a1;
  if (v17)
  {
    sub_29E2C04F4();
    v18 = v17;
    v19 = sub_29E2C0504();
    v20 = sub_29E2C3A14();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136446466;
      v23 = sub_29E2C4AE4();
      v25 = sub_29DFAA104(v23, v24, &v50);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v49 = v17;
      v26 = v17;
      sub_29DE96670();
      v27 = sub_29E2C3434();
      v29 = sub_29DFAA104(v27, v28, &v50);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_29DE74000, v19, v20, "%{public}s Could not set notification acknowledgement: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v22, -1, -1);
      MEMORY[0x29ED82140](v21, -1, -1);
    }

    v30 = (*(v11 + 8))(v16, v47);
  }

  else
  {
    sub_29E2C04F4();
    (*(v8 + 16))(v10, a2, v7);
    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A34();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = a3;
      v34 = v33;
      v45 = swift_slowAlloc();
      v50 = v45;
      *v34 = 136446466;
      v35 = sub_29E2C4AE4();
      v37 = sub_29DFAA104(v35, v36, &v50);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = sub_29E2BDAF4();
      v40 = v39;
      (*(v8 + 8))(v10, v7);
      v41 = sub_29DFAA104(v38, v40, &v50);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29DE74000, v31, v32, "%{public}s Successfully set notification acknowledgement for content state: %s", v34, 0x16u);
      v42 = v45;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v42, -1, -1);
      v43 = v34;
      a3 = v46;
      MEMORY[0x29ED82140](v43, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v30 = (*(v11 + 8))(v13, v47);
  }

  return a3(v30);
}

uint64_t sub_29DFC2710(int a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v60 = a6;
  LODWORD(v59) = a1;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v53 - v16;
  sub_29E2C04F4();
  sub_29E2BF404();
  v18 = sub_29E2C0504();
  v19 = sub_29E2C3A34();

  v20 = os_log_type_enabled(v18, v19);
  v56 = a7;
  v57 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v55 = v12;
    v53 = v23;
    v62 = v23;
    *v22 = 136446722;
    v24 = sub_29E2C4AE4();
    v26 = v19;
    v27 = sub_29DFAA104(v24, v25, &v62);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = a4;
    *(v22 + 14) = sub_29DFAA104(a3, a4, &v62);
    *(v22 + 22) = 1024;
    v29 = v59;
    *(v22 + 24) = v59 & 1;
    _os_log_impl(&dword_29DE74000, v18, v26, "%{public}s Sent dismiss instruction for %s successfully: %{BOOL}d", v22, 0x1Cu);
    v30 = v53;
    swift_arrayDestroy();
    v12 = v55;
    MEMORY[0x29ED82140](v30, -1, -1);
    v31 = v22;
    a2 = v54;
    MEMORY[0x29ED82140](v31, -1, -1);

    v32 = *(v13 + 8);
    v33 = v32(v17, v12);
    if (v29)
    {
      return a5(v33);
    }
  }

  else
  {
    v28 = a4;

    v32 = *(v13 + 8);
    v33 = v32(v17, v12);
    if (v59)
    {
      return a5(v33);
    }
  }

  if (a2)
  {
    v59 = v13;
    v34 = a2;
    sub_29E2C04F4();
    sub_29E2BF404();
    v35 = a2;
    v36 = sub_29E2C0504();
    v37 = sub_29E2C3A14();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v28;
      v39 = swift_slowAlloc();
      v40 = a2;
      v41 = swift_slowAlloc();
      v62 = v41;
      *v39 = 136446722;
      v42 = sub_29E2C4AE4();
      v56 = a5;
      v44 = v12;
      v45 = sub_29DFAA104(v42, v43, &v62);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_29DFAA104(v57, v38, &v62);
      *(v39 + 22) = 2082;
      v61 = v40;
      v46 = v40;
      sub_29DE96670();
      v47 = sub_29E2C3434();
      v49 = sub_29DFAA104(v47, v48, &v62);
      a5 = v56;

      *(v39 + 24) = v49;
      _os_log_impl(&dword_29DE74000, v36, v37, "%{public}s Unable to send dismiss instruction for %s. %{public}s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v41, -1, -1);
      MEMORY[0x29ED82140](v39, -1, -1);

      v50 = v58;
      v51 = v44;
    }

    else
    {

      v50 = v58;
      v51 = v12;
    }

    v33 = v32(v50, v51);
  }

  return a5(v33);
}

uint64_t sub_29DFC2B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E2C3714();
  *(v4 + 24) = sub_29E2C3704();
  v6 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DFC2C10, v6, v5);
}

uint64_t sub_29DFC2C10()
{

  v1 = objc_opt_self();
  v2 = [v1 sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    if ([v3 respondsToSelector_])
    {
      v4 = [v1 sharedApplication];
      sub_29E186154(MEMORY[0x29EDCA190]);
      v5 = sub_29E2BC8C4();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29DFC4A20(&qword_2A1817768, type metadata accessor for OpenURLOptionsKey);
      v6 = sub_29E2C31F4();
      [v3 application:v4 openURL:v5 options:v6];
    }

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29DFC2DBC()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_29E2C4914();
  }

  return v5 & 1;
}

uint64_t sub_29DFC2E4C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04F4();
  v10 = a1;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446466;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, &v29);
    v28 = a2;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = [v10 request];
    v21 = [v20 identifier];

    v22 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v24 = v23;

    v25 = sub_29DFAA104(v22, v24, &v29);

    *(v14 + 14) = v25;
    a2 = v28;
    _os_log_impl(&dword_29DE74000, v11, v12, "%{public}s Received foreground notification presentation: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return a2(27);
}

uint64_t sub_29DFC30B8(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x29EDC9C68];
  sub_29DFC45FC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v76 - v4;
  sub_29DFC45FC(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], v2);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v84 = &v76 - v7;
  v8 = sub_29E2BC4D4();
  v82 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BC904();
  v83 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v12;
  MEMORY[0x2A1C7C4A8](v14);
  v86 = &v76 - v15;
  v16 = sub_29E2C0514();
  v88 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v76 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v76 - v23;
  if (a1)
  {
    v78 = v8;
    v80 = v16;
    v81 = a1;
    v25 = [v81 request];
    v26 = [v25 content];

    v27 = [v26 categoryIdentifier];
    v28 = v27;
    if (!v27)
    {
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v28 = sub_29E2C33A4();
    }

    v29 = HKMCAllNotificationCategories();
    type metadata accessor for HKMCNotificationCategory(0);
    v30 = sub_29E2C3614();

    v79 = v28;
    v89 = v28;
    MEMORY[0x2A1C7C4A8](v31);
    v74 = &v89;
    LOBYTE(v29) = sub_29E151734(sub_29DFC4A68, (&v76 - 4), v30);

    if (v29)
    {
      sub_29E2C04F4();
      v32 = sub_29E2C0504();
      v33 = sub_29E2C3A34();
      v34 = os_log_type_enabled(v32, v33);
      v77 = v5;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v89 = v36;
        *v35 = 136446210;
        v37 = sub_29E2C4AE4();
        v39 = sub_29DFAA104(v37, v38, &v89);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_29DE74000, v32, v33, "%{public}s Received request to launch MenstrualCycles notification settings", v35, 0xCu);
        sub_29DE93B3C(v36);
        MEMORY[0x29ED82140](v36, -1, -1);
        MEMORY[0x29ED82140](v35, -1, -1);
      }

      (*(v88 + 8))(v21, v80);
      v40 = v13;
      v41 = v11;
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v42 = [qword_2A1A67F80 bundleURL];
      sub_29E2BC8D4();

      sub_29E2BC8B4();
      v43 = v83;
      v88 = *(v83 + 8);
      (v88)(v40, v41);
      sub_29E2BDF94();

      sub_29DF24A0C(8);
      sub_29DF24EEC(1u);
      sub_29DF25054(0);
      sub_29DF2544C(0, 1);
      v44 = v84;
      sub_29E2BC474();
      if ((*(v43 + 48))(v44, 1, v41) == 1)
      {
        sub_29DFC475C(v44, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_29E2C4584();

        v89 = 0xD00000000000001ALL;
        v90 = 0x800000029E2F6EE0;
        sub_29DFC4A20(&qword_2A181A6F0, MEMORY[0x29EDB9940]);
        v73 = sub_29E2C48D4();
        MEMORY[0x29ED7FCC0](v73);

        v75 = 0;
        v74 = 159;
        result = sub_29E2C4724();
        __break(1u);
      }

      else
      {
        (*(v82 + 8))(v10, v78);
        v45 = *(v43 + 32);
        v46 = v86;
        v45(v86, v44, v41);
        v47 = sub_29E2C3734();
        v48 = v77;
        (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
        (*(v43 + 16))(v40, v46, v41);
        sub_29E2C3714();
        v49 = sub_29E2C3704();
        v50 = *(v43 + 80);
        v51 = v41;
        v52 = v40;
        v53 = (v50 + 32) & ~v50;
        v54 = swift_allocObject();
        v55 = MEMORY[0x29EDCA390];
        *(v54 + 16) = v49;
        *(v54 + 24) = v55;
        v45((v54 + v53), v52, v51);
        sub_29E13C63C(0, 0, v48, &unk_29E2D7068, v54);

        return (v88)(v46, v51);
      }
    }

    else
    {
      sub_29E2C04F4();
      v64 = sub_29E2C0504();
      v65 = sub_29E2C3A14();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v80;
      if (v66)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v89 = v69;
        *v68 = 136446210;
        v70 = sub_29E2C4AE4();
        v72 = sub_29DFAA104(v70, v71, &v89);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_29DE74000, v64, v65, "%{public}s Declined to open MenstrualCycles notification settings: Invalid category", v68, 0xCu);
        sub_29DE93B3C(v69);
        MEMORY[0x29ED82140](v69, -1, -1);
        MEMORY[0x29ED82140](v68, -1, -1);
      }

      return (*(v88 + 8))(v24, v67);
    }
  }

  else
  {
    sub_29E2C04F4();
    v57 = sub_29E2C0504();
    v58 = sub_29E2C3A14();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v89 = v60;
      *v59 = 136446210;
      v61 = sub_29E2C4AE4();
      v63 = sub_29DFAA104(v61, v62, &v89);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_29DE74000, v57, v58, "%{public}s Declined to open MenstrualCycles notification settings: No notification", v59, 0xCu);
      sub_29DE93B3C(v60);
      MEMORY[0x29ED82140](v60, -1, -1);
      MEMORY[0x29ED82140](v59, -1, -1);
    }

    return (*(v88 + 8))(v18, v16);
  }

  return result;
}

uint64_t sub_29DFC3B14(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v112 = a2;
  v113 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v106 - v12;
  sub_29E2C04F4();
  v14 = a1;
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A34();

  v17 = os_log_type_enabled(v15, v16);
  v111 = v4;
  v108 = ObjectType;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v107 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v110 = v8;
    v22 = v21;
    v115[0] = v21;
    *v18 = 136446978;
    v23 = sub_29E2C4AE4();
    v25 = sub_29DFAA104(v23, v24, v115);
    v109 = v10;
    v26 = v25;

    *(v18 + 4) = v26;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_29DFAA104(0xD00000000000003BLL, 0x800000029E2F6D50, v115);
    *(v18 + 22) = 2112;
    v27 = [v14 notification];
    v28 = [v27 request];

    *(v18 + 24) = v28;
    *v20 = v28;
    *(v18 + 32) = 2080;
    v29 = [v14 actionIdentifier];
    v30 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v32 = v31;

    v33 = sub_29DFAA104(v30, v32, v115);

    *(v18 + 34) = v33;
    v10 = v109;
    _os_log_impl(&dword_29DE74000, v15, v16, "%{public}s %{public}s notification: %@ action: %s", v18, 0x2Au);
    sub_29DF58A90(v20);
    v34 = v20;
    v7 = v107;
    MEMORY[0x29ED82140](v34, -1, -1);
    swift_arrayDestroy();
    v35 = v22;
    v8 = v110;
    MEMORY[0x29ED82140](v35, -1, -1);
    MEMORY[0x29ED82140](v18, -1, -1);
  }

  v36 = *(v8 + 8);
  v36(v13, v7);
  v37 = [v14 actionIdentifier];
  v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v40 = v39;

  v41 = sub_29E179B70(v38, v40);
  if (v41 == 6)
  {
    sub_29E2C04F4();
    v42 = v14;
    v43 = sub_29E2C0504();
    v44 = sub_29E2C3A14();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v110 = v8;
      v47 = v46;
      v115[0] = v46;
      *v45 = 136446466;
      v48 = sub_29E2C4AE4();
      v50 = sub_29DFAA104(v48, v49, v115);
      v109 = v10;
      v51 = v50;

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      v52 = [v42 actionIdentifier];
      v53 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v55 = v54;

      v56 = sub_29DFAA104(v53, v55, v115);

      *(v45 + 14) = v56;
      _os_log_impl(&dword_29DE74000, v43, v44, "%{public}s Skipping handling of unknown notification response action: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v45, -1, -1);

      v57 = v109;
    }

    else
    {

      v57 = v10;
    }

    v87 = (v36)(v57, v7);
    return v112(v87);
  }

  v58 = v41;
  v59 = [v14 notification];
  v60 = [v59 request];

  v61 = [v60 content];
  v62 = [v61 categoryIdentifier];

  v63 = v62;
  if (!v62)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v63 = sub_29E2C33A4();
  }

  v64 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v66 = v65;
  v67 = [v14 &selRef_setLineJoinStyle_];
  if (!v67)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v67 = sub_29E2C33A4();
  }

  [objc_opt_self() submitMetricForCategory:v63 action:v67];

  v68 = *MEMORY[0x29EDC32E8];
  v69 = *MEMORY[0x29EDC32E0];
  v115[0] = MEMORY[0x29EDCA190];
  v70 = v68;
  v71 = v69;
  sub_29E1811FC(0, 2, 0);
  v72 = v115[0];
  v73 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v76 = *(v72 + 16);
  v75 = *(v72 + 24);
  if (v76 >= v75 >> 1)
  {
    v109 = v74;
    v110 = v73;
    sub_29E1811FC((v75 > 1), v76 + 1, 1);
    v74 = v109;
    v73 = v110;
    v72 = v115[0];
  }

  *(v72 + 16) = v76 + 1;
  v77 = v72 + 16 * v76;
  *(v77 + 32) = v73;
  *(v77 + 40) = v74;

  v78 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v80 = v79;

  v82 = *(v72 + 16);
  v81 = *(v72 + 24);
  if (v82 >= v81 >> 1)
  {
    sub_29E1811FC((v81 > 1), v82 + 1, 1);
    v72 = v115[0];
  }

  *(v72 + 16) = v82 + 1;
  v83 = v72 + 16 * v82;
  *(v83 + 32) = v78;
  *(v83 + 40) = v80;
  v84 = sub_29E14EC84(v72);

  v85 = sub_29E091FA0(v64, v66, v84);

  if (v85)
  {

    return sub_29DFBDFB0(v14, v112, v113);
  }

  if (v64 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v66 == v88)
  {

    goto LABEL_23;
  }

  v89 = sub_29E2C4914();

  if (v89)
  {
LABEL_23:
    if (v58 == 4)
    {
    }

    else
    {
      v91 = sub_29E2C4914();

      if ((v91 & 1) == 0)
      {
LABEL_28:
        v90 = 2;
        goto LABEL_29;
      }
    }

    sub_29DFBE908();
    goto LABEL_28;
  }

  v90 = 7;
LABEL_29:
  if (v64 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v66 == v92)
  {
  }

  else
  {
    v93 = sub_29E2C4914();

    if ((v93 & 1) == 0)
    {
      v102 = 0;
      v103 = 1;
      goto LABEL_41;
    }
  }

  v94 = [v14 notification];
  v95 = [v94 request];

  v96 = [v95 content];
  v97 = [v96 userInfo];

  v98 = sub_29E2C3214();
  v116[0] = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v116[1] = v99;
  sub_29E2C4514();
  if (*(v98 + 16) && (v100 = sub_29E1842D0(v115), (v101 & 1) != 0))
  {
    sub_29DEA6E90(*(v98 + 56) + 32 * v100, v116);
    sub_29DF014AC(v115);

    v87 = swift_dynamicCast();
    if (v87)
    {
      v102 = v114;
    }

    else
    {
      v102 = 0;
    }

    v103 = v87 ^ 1;
    v90 = 3;
  }

  else
  {

    v87 = sub_29DF014AC(v115);
    v102 = 0;
    v103 = 1;
    v90 = 3;
  }

LABEL_41:
  if (v58 > 3u)
  {
    if (v58 == 4)
    {
      return v112(v87);
    }

    v104 = 5;
LABEL_46:
    v87 = sub_29DFBEB74(v104, v90, v102, v103);
    return v112(v87);
  }

  if (v58 < 2u)
  {
    v104 = v58;
    goto LABEL_46;
  }

  v105 = swift_allocObject();
  *(v105 + 16) = v112;
  *(v105 + 24) = v113;

  sub_29DFBFC18(v58, sub_29DFC45F4, v105);
}

void sub_29DFC45FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DFC466C(uint64_t a1)
{
  v4 = *(sub_29E2BC904() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DECA6A0;

  return sub_29DFC2B78(a1, v6, v7, v1 + v5);
}

uint64_t sub_29DFC475C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DFC45FC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DFC47CC(void **a1)
{
  v3 = *(sub_29E2BDB04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_29DFC22BC(a1, v1 + v4, v6, v7);
}

void sub_29DFC4878()
{
  if (!qword_2A181A1F8)
  {
    sub_29DE96670();
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A1F8);
    }
  }
}

uint64_t sub_29DFC48F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DFC4920(uint64_t a1)
{
  v4 = *(sub_29E2BC904() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29DFC2B78(a1, v6, v7, v1 + v5);
}

uint64_t sub_29DFC4A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DFC4A88()
{
  v1 = sub_29E2BC904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DFC4B88()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController____lazy_storage___filterMapping;
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController____lazy_storage___filterMapping))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController____lazy_storage___filterMapping);
  }

  else
  {
    v2 = sub_29DFC4BEC();
    *(v0 + v1) = v2;
    sub_29E2BF404();
  }

  sub_29E2BF404();
  return v2;
}

uint64_t sub_29DFC4BEC()
{
  v0 = sub_29E186188(MEMORY[0x29EDCA190]);
  v1 = 0;
  while (1)
  {
    v2 = byte_2A24AE210[v1 + 32];
    if (v2 > 4)
    {
      if (byte_2A24AE210[v1 + 32] <= 6u)
      {
        v3 = (v2 == 5 ? &unk_2A24AE2E0 : &unk_2A24AE330);
      }

      else if (v2 == 7)
      {
        v3 = &unk_2A24AE308;
      }

      else
      {
        v3 = (v2 == 8 ? &unk_2A24AE358 : &unk_2A24AE380);
      }
    }

    else if (byte_2A24AE210[v1 + 32] <= 1u)
    {
      v3 = (byte_2A24AE210[v1 + 32] ? &unk_2A24AE268 : &unk_2A24AE240);
    }

    else if (v2 == 2)
    {
      v3 = &unk_2A24AE290;
    }

    else if (v2 == 3)
    {
      v17 = &unk_2A24AE1D8;
      sub_29DFC6F20(&v17);
      v3 = v17;
    }

    else
    {
      v3 = &unk_2A24AE2B8;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v0;
    v5 = sub_29E184720(v2);
    v7 = *(v0 + 2);
    v8 = (v6 & 1) == 0;
    v9 = __OFADD__(v7, v8);
    v10 = v7 + v8;
    if (v9)
    {
      break;
    }

    v11 = v6;
    if (*(v0 + 3) < v10)
    {
      sub_29E006ACC(v10, isUniquelyReferenced_nonNull_native);
      v5 = sub_29E184720(v2);
      if ((v11 & 1) != (v12 & 1))
      {
        goto LABEL_36;
      }

LABEL_28:
      v0 = v17;
      if (v11)
      {
        goto LABEL_2;
      }

      goto LABEL_29;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v15 = v5;
    sub_29E00AFE4();
    v5 = v15;
    v0 = v17;
    if (v11)
    {
LABEL_2:
      *(*(v0 + 7) + 8 * v5) = v3;

      goto LABEL_3;
    }

LABEL_29:
    *&v0[8 * (v5 >> 6) + 64] |= 1 << v5;
    *(*(v0 + 6) + v5) = v2;
    *(*(v0 + 7) + 8 * v5) = v3;
    v13 = *(v0 + 2);
    v9 = __OFADD__(v13, 1);
    v14 = v13 + 1;
    if (v9)
    {
      goto LABEL_35;
    }

    *(v0 + 2) = v14;
LABEL_3:
    if (++v1 == 10)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_29E2C4964();
  __break(1u);

  __break(1u);
  return result;
}

id sub_29DFC4E50()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BE814();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem] = 51;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController____lazy_storage___filterMapping] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_29E2BE7E4();
  v10 = sub_29E2BE7B4();
  (*(v7 + 8))(v9, v6);
  v11 = [objc_allocWithZone(MEMORY[0x29EDC79B8]) initWithSection_];
  v12 = type metadata accessor for CycleHistoryFiltersCollectionViewController();
  v29.receiver = v1;
  v29.super_class = v12;
  v13 = objc_msgSendSuper2(&v29, sel_initWithCollectionViewLayout_, v11);
  sub_29E2C04B4();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v10;
    v19 = v3;
    v20 = v18;
    v28 = v18;
    *v17 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DFC7BD8();
    v21 = sub_29E2C3424();
    v23 = sub_29DFAA104(v21, v22, &v28);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Initializing", v17, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);

    (*(v19 + 8))(v5, v26);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v13;
}

void sub_29DFC5290()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v32[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  v10 = sub_29E2C33A4();

  [v0 setTitle_];

  v11 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneAndDismiss];
  v12 = [v0 navigationItem];
  [v12 setRightBarButtonItem_];

  v13 = [v0 collectionView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  type metadata accessor for CycleHistoryFilterCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = sub_29E2C33A4();
  [v14 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v16];

  v17 = [v0 collectionView];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;
  type metadata accessor for CycleHistoryFilterSectionHeaderReusableView();
  v19 = swift_getObjCClassFromMetadata();
  v20 = *MEMORY[0x29EDC8048];
  v21 = sub_29E2C33A4();
  [v18 registerClass:v19 forSupplementaryViewOfKind:v20 withReuseIdentifier:v21];

  v22 = [v0 collectionView];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [objc_opt_self() systemBackgroundColor];
  [v23 setBackgroundColor_];

  v25 = [v0 collectionView];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  [v25 setAllowsSelection_];

  v27 = [v0 collectionView];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  [v27 setAllowsMultipleSelection_];

  v29 = [v0 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setPreservesSuperviewLayoutMargins_];

    [v0 setClearsSelectionOnViewWillAppear_];
    v31 = [v0 navigationItem];
    [v31 setLargeTitleDisplayMode_];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_29DFC574C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000017, 0x800000029E2F7060);
    v3 = sub_29E2C33A4();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 navigationItem];
    v5 = [v4 rightBarButtonItem];

    if (v5)
    {
      sub_29E2BF404();
      MEMORY[0x29ED7FCC0](0xD00000000000001ALL, 0x800000029E2F7080);
      v6 = sub_29E2C33A4();

      [v5 setAccessibilityIdentifier_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_29DFC5988()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem;
  v7 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem];
  if (v7 != 51)
  {
    v8 = sub_29DED1D68(v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      sub_29E2C04B4();
      v12 = v1;
      sub_29E2BF404();
      v13 = sub_29E2C0504();
      v14 = sub_29E2C3A34();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v33 = v14;
        v16 = v15;
        v34 = swift_slowAlloc();
        v37 = v34;
        *v16 = 136446466;
        ObjectType = swift_getObjectType();
        sub_29DFC7BD8();
        v17 = sub_29E2C3424();
        v19 = sub_29DFAA104(v17, v18, &v37);
        v32 = v13;
        v20 = v10;
        v21 = v19;

        *(v16 + 4) = v21;
        *(v16 + 12) = 2080;
        ObjectType = v20;
        v36 = v11;
        v22 = sub_29E2C3464();
        v24 = sub_29DFAA104(v22, v23, &v37);

        *(v16 + 14) = v24;
        v25 = v32;
        _os_log_impl(&dword_29DE74000, v32, v33, "[%{public}s] Save selected filter: %s", v16, 0x16u);
        v26 = v34;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v26, -1, -1);
        MEMORY[0x29ED82140](v16, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  v27 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  sub_29DEAA434(v1[v6]);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = v1[v6];
    *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter) = v30;
    sub_29E10C390();
    sub_29E10AD8C();
    result = [v29 tableView];
    if (result)
    {
      v31 = result;
      [result reloadData];

      if (v30 != 51)
      {
        sub_29E0A35D8();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_29DFC5C9C()
{
  sub_29DF8ABC4(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v4 = sub_29E2C33A4();
  v5 = [v17 hk:v4 keyExists:?];

  if (v5)
  {
    v6 = sub_29E2C33A4();
    v7 = [v17 integerForKey_];

    v8 = sub_29DED30B8(v7);
    if (v8 != 51)
    {
      v9 = v8;
      v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem] = v8;
      v10 = [v0 collectionView];
      if (v10)
      {
        v11 = v10;
        sub_29DFC6AAC(v9, v3);
        v12 = sub_29E2BCFB4();
        v13 = *(v12 - 8);
        v14 = 0;
        if ((*(v13 + 48))(v3, 1, v12) != 1)
        {
          v14 = sub_29E2BCF24();
          (*(v13 + 8))(v3, v12);
        }

        [v11 selectItemAtIndexPath:v14 animated:1 scrollPosition:2];
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v15 = v17;
  }
}

char *sub_29DFC5F28(void *a1)
{
  v5 = v1;
  v7 = sub_29E2C33A4();
  v8 = sub_29E2BCF24();
  v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8];

  type metadata accessor for CycleHistoryFilterCollectionViewCell();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = sub_29E2BCFA4();
  if (v11 > 9)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = byte_2A24AE210[v11 + 32];
  v12 = objc_opt_self();
  v13 = &selRef_hkmc_menstruationColor;
  if (v3 >= 3)
  {
    v13 = &selRef_hkmc_cycleHistoryFilterBackgroundColor;
  }

  v14 = [v12 *v13];
  v15 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_highlightColor];
  *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_highlightColor] = v14;

  v16 = sub_29E2BCFA4();
  v4 = sub_29DFC69E0(v16);
  v17 = sub_29E2BCF64();
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (v17 >= *(v4 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = sub_29DED1D68(*(v4 + 32 + v17));
  v7 = v19;
  v20 = &v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_labelString];
  *v20 = v18;
  v20[1] = v19;
  sub_29E2BF404();

  v21 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label];
  if (v7)
  {
    sub_29E2BF404();
    v2 = sub_29E2C33A4();
  }

  else
  {
    v2 = 0;
  }

  [v21 setText_];

  v22 = sub_29E2BCF64();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  if (v22 >= *(v4 + 16))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  v23 = *(v4 + 32 + v22);

  v24 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem);
  v26 = v24 != 51 && v24 == v23;
  [v10 setSelected_];
  sub_29DED2B88(v3);
  sub_29DE9DE68();
  v27 = sub_29E2C4374();
  v29 = v28;

  v4 = sub_29DFC7C1C(1uLL, v27, v29);
  v5 = v30;
  v2 = v31;
  v3 = v32;

  v33 = qword_2A1A60ED8;
  v9 = v9;
  if (v33 != -1)
  {
    goto LABEL_27;
  }

LABEL_18:
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2F7120);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v34 = MEMORY[0x29ED7FC50](v4, v5, v2, v3);
  v36 = v35;

  MEMORY[0x29ED7FCC0](v34, v36);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v37 = 0xE000000000000000;
  if (v7)
  {
    v38 = sub_29E2C4374();
    v37 = v39;
  }

  else
  {
    v38 = 0;
  }

  MEMORY[0x29ED7FCC0](v38, v37);

  v40 = sub_29E2C33A4();

  [v10 setAccessibilityIdentifier_];

  return v10;
}

unint64_t sub_29DFC64C4(void *a1)
{
  v2 = v1;
  sub_29DF8ABC4(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCFA4();
  v12 = sub_29DFC69E0(v11);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem;
  v14 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem);
  if (v14 == 51)
  {

    goto LABEL_8;
  }

  v27 = a1;
  v15 = v12;
  result = sub_29E2BCF64();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v17 = *(v15 + result + 32);

  if (v14 != v17)
  {
LABEL_8:
    v18 = sub_29E2BCFA4();
    v19 = sub_29DFC69E0(v18);
    result = sub_29E2BCF64();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v19 + 16))
    {
      v20 = *(v19 + result + 32);

      *(v2 + v13) = v20;
      return sub_29DFC5988();
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_29DFC6AAC(v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29DF2192C(v6);
    goto LABEL_8;
  }

  (*(v8 + 32))(v10, v6, v7);
  v21 = sub_29E2BCF24();
  v22 = v27;
  [v27 deselectItemAtIndexPath:v21 animated:0];

  v23 = sub_29E2BCF24();
  v24 = [v22 cellForItemAtIndexPath_];

  if (v24)
  {
    type metadata accessor for CycleHistoryFilterCollectionViewCell();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      [v25 setSelected_];
    }
  }

  *(v2 + v13) = 51;
  sub_29DFC5988();
  return (*(v8 + 8))(v10, v7);
}