uint64_t sub_29DFE0690()
{
  v1 = v0;
  v2 = *v0;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8]();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1[2] healthStore];
  v6 = [objc_allocWithZone(MEMORY[0x29EDBAA90]) initWithHealthStore_];

  v7 = sub_29E2C3734();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = 0xD00000000000001DLL;
  v8[6] = 0x800000029E2F7D80;
  v8[7] = v2;
  sub_29E13C63C(0, 0, v4, &unk_29E2D7F30, v8);
}

uint64_t sub_29DFE080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_29E2C0514();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29DFE08DC, 0, 0);
}

uint64_t sub_29DFE08DC()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBAA70]) initWithPush:1 pull:0 lite:1];
  v3 = [objc_allocWithZone(MEMORY[0x29EDBAAA8]) initWithChangesSyncRequest_];
  v0[26] = v3;

  v4 = sub_29E2C33A4();
  v0[27] = v4;
  v0[2] = v0;
  v0[3] = sub_29DFE0A64;
  v5 = swift_continuation_init();
  sub_29DFE1154();
  v0[17] = v6;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27F6E4;
  v0[13] = &unk_2A24B70E0;
  v0[14] = v5;
  [v1 syncWithRequest:v3 reason:v4 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DFE0A64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_29DFE0D44;
  }

  else
  {
    v2 = sub_29DFE0B74;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29DFE0B74()
{
  v18 = v0;
  v1 = *(v0 + 208);

  sub_29E2C04B4();
  sub_29E2BF404();
  v2 = sub_29E2C0504();
  v3 = sub_29E2C3A34();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29DFAA104(v15, v16, &v17);
    _os_log_impl(&dword_29DE74000, v2, v3, "[%{public}s] Requested sync for %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_29DFE0D44()
{
  v27 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  swift_willThrow();

  sub_29E2C04B4();
  sub_29E2BF404();
  v4 = v1;
  v5 = sub_29E2C0504();
  v6 = sub_29E2C3A14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[28];
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  if (v7)
  {
    v25 = v0[24];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v12 = 136446722;
    v15 = sub_29E2C4AE4();
    v17 = sub_29DFAA104(v15, v16, v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29DFAA104(v22, v23, v26);
    *(v12 + 22) = 2114;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v13 = v19;
    _os_log_impl(&dword_29DE74000, v5, v6, "[%{public}s] Error requesting sync for %{public}s: %{public}@", v12, 0x20u);
    sub_29DF58A90(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_29DFE0FA4()
{

  sub_29DE8EF50(*(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_29DFE1020()
{
  if (!qword_2A181A5B8)
  {
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A5B8);
    }
  }
}

uint64_t sub_29DFE1080(uint64_t a1)
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
  v10[1] = sub_29DECA6A0;

  return sub_29DFE080C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_29DFE1154()
{
  if (!qword_2A181A6D0)
  {
    sub_29DE96670();
    v0 = sub_29E2C3754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A6D0);
    }
  }
}

uint64_t sub_29DFE11D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DECA6A0;

  return sub_29DFDFDD0(a1, v4, v5, v7, v6);
}

uint64_t sub_29DFE1298()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DFE12E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29DE9657C;

  return sub_29DFDE9F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_29DFE13D0()
{
  result = qword_2A181A5C0;
  if (!qword_2A181A5C0)
  {
    sub_29DF1482C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A5C0);
  }

  return result;
}

uint64_t sub_29DFE1438()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v10[-v6];
  sub_29E2C4244();
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return sub_29E2C4254();
}

uint64_t sub_29DFE1670(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v45 - v8;
  sub_29DFE1D90();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v53 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BC704();
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v45 - v15;
  v17 = sub_29E2C4164();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C4214();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E2C4274();
  v51 = *(v25 - 8);
  v52 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v50 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v45 - v28;
  sub_29E2C4224();
  v30 = [objc_opt_self() systemBlueColor];
  sub_29E2C41E4();
  (*(v22 + 104))(v24, *MEMORY[0x29EDC78C0], v21);
  v31 = v47;
  sub_29E2C4154();
  v32 = v17;
  v33 = v48;
  (*(v18 + 104))(v20, *MEMORY[0x29EDC7898], v32);
  v34 = v46;
  sub_29E2C4174();
  sub_29E2BC6F4();
  sub_29DE9408C(0, &unk_2A1A61A00);
  v59 = sub_29E2C3FD4();
  sub_29DFE1DE8();
  sub_29E2BC714();
  sub_29E2C3314();
  (*(v33 + 16))(v34, v9, v31);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v35 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v33 + 8))(v9, v31);
  v37 = v55;
  v36 = v56;
  (*(v55 + 16))(v49, v16, v56);
  v38 = v53;
  sub_29E2BC6B4();
  v39 = sub_29E2BC6A4();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_29E2C41C4();
  sub_29DE9408C(0, &qword_2A1819798);
  v40 = v51;
  v41 = v52;
  (*(v51 + 16))(v50, v29, v52);
  sub_29DE9408C(0, &qword_2A181A5D8);
  v42 = swift_allocObject();
  *(v42 + 16) = v57;
  *(v42 + 24) = v58;

  sub_29E2C4114();
  v43 = sub_29E2C4284();
  (*(v37 + 8))(v16, v36);
  (*(v40 + 8))(v29, v41);
  return v43;
}

void sub_29DFE1D90()
{
  if (!qword_2A181A5C8)
  {
    sub_29E2BC6A4();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A5C8);
    }
  }
}

unint64_t sub_29DFE1DE8()
{
  result = qword_2A181A5D0;
  if (!qword_2A181A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A5D0);
  }

  return result;
}

void sub_29DFE1E3C()
{
  v1 = v0;
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v47 = &v43 - v5;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CycleChartCycle(0);
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_titleLabel);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_activeCycle;
  swift_beginAccess();
  v15 = *(v10 + 48);
  v16 = v15(v0 + v14, 1, v9);
  v17 = 0;
  if (!v16)
  {
    sub_29DFE394C(v1 + v14, v12);
    v18 = sub_29E1D01A0();
    v49 = v15;
    v20 = v19;
    sub_29DFE39B0(v12, type metadata accessor for CycleChartCycle);
    v50 = v18;
    v51 = v20;
    sub_29DE9DE68();
    sub_29E2C4364();
    v15 = v49;

    v17 = sub_29E2C33A4();
  }

  [v13 setText_];

  v21 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_daysCountView);
  v22 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysCountLabel);
  if (v15(v1 + v14, 1, v9))
  {
    v23 = v22;
    v24 = 0;
  }

  else
  {
    sub_29DFE394C(v1 + v14, v12);
    v49 = v15;
    v25 = *(v9 + 28);
    v26 = v22;
    sub_29E02CAF8(&v12[v25], v8);
    v27 = sub_29E2C31A4();
    v28 = *(v27 - 8);
    v29 = *(v28 + 16);
    v45 = v21;
    v30 = v47;
    v29(v47, v8, v27);
    v44 = v9;
    v31 = *(v28 + 56);
    v31(v30, 0, 1, v27);
    v46 = v12;
    v32 = v48;
    v31(v48, 1, 1, v27);
    v9 = v44;
    v33 = sub_29E059C18(v30, v32);
    v34 = v32;
    v12 = v46;
    sub_29DFE39B0(v34, sub_29DEDB978);
    v15 = v49;
    sub_29DFE39B0(v30, sub_29DEDB978);
    sub_29DFE39B0(v8, sub_29DEFCC2C);
    v50 = v33;
    sub_29DEA68FC();
    sub_29E2C43C4();
    sub_29DFE39B0(v12, type metadata accessor for CycleChartCycle);
    v24 = sub_29E2C33A4();
    v21 = v45;
  }

  [v22 setText_];

  v35 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysUnitLabel);
  if (v15(v1 + v14, 1, v9))
  {
    v36 = v35;
    v37 = 0;
  }

  else
  {
    sub_29DFE394C(v1 + v14, v12);
    v38 = v35;
    sub_29E1D03CC();
    sub_29DFE39B0(v12, type metadata accessor for CycleChartCycle);
    v37 = sub_29E2C33A4();
  }

  [v35 setText_];

  v39 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_dateIntervalLabel);
  if (v15(v1 + v14, 1, v9) || (sub_29DFE394C(v1 + v14, v12), sub_29E1D0814(), v42 = v41, sub_29DFE39B0(v12, type metadata accessor for CycleChartCycle), !v42))
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_29E2C33A4();
  }

  [v39 setText_];
}

char *sub_29DFE23D8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_activeCycle;
  v3 = type metadata accessor for CycleChartCycle(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_titleLabel;
  *&v0[v4] = sub_29DFE3D84(MEMORY[0x29EDC80F8], 0);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_daysCountView;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for CycleChartsDaysCountHeaderView()) init];
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_dateIntervalLabel;
  *&v0[v6] = sub_29DFE3D84(MEMORY[0x29EDC8118], 0);
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_titleLabel];
  v9 = v7;
  [v9 addSubview_];
  [v9 addSubview_];
  [v9 addSubview_];
  sub_29DFE2538();
  sub_29DFE1E3C();

  return v9;
}

id sub_29DFE2538()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_daysCountView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartsHeaderView_dateIntervalLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = objc_opt_self();
  sub_29DE99B54();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2D7F70;
  v5 = [v1 topAnchor];
  v6 = [v0 &selRef_hkmc_menstruationColor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [v0 &selRef_bounds + 4];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v2 topAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  v17 = [v2 trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v4 + 64) = v19;
  v20 = [v2 leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v4 + 72) = v22;
  v23 = [v3 topAnchor];
  v24 = [v2 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v4 + 80) = v25;
  v26 = [v3 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v4 + 88) = v28;
  v29 = [v3 leadingAnchor];
  v30 = [v0 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v4 + 96) = v31;
  v32 = [v0 bottomAnchor];
  v33 = [v3 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v4 + 104) = v34;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v35 = sub_29E2C3604();

  [v43 activateConstraints_];

  LODWORD(v36) = 1148846080;
  [v1 setContentHuggingPriority:1 forAxis:v36];
  type metadata accessor for UILayoutPriority(0);
  sub_29DFE4164(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  sub_29E2C0534();
  LODWORD(v37) = v44;
  [v1 setContentCompressionResistancePriority:1 forAxis:v37];
  sub_29E2C0534();
  LODWORD(v38) = v44;
  [v2 setContentHuggingPriority:1 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v39];
  sub_29E2C0534();
  LODWORD(v40) = v44;
  [v3 setContentHuggingPriority:1 forAxis:v40];
  sub_29E2C0534();
  LODWORD(v41) = v44;
  return [v3 setContentCompressionResistancePriority:1 forAxis:v41];
}

uint64_t type metadata accessor for CycleChartsHeaderView()
{
  result = qword_2A181A5E8;
  if (!qword_2A181A5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DFE2D64()
{
  sub_29DFE4100(319, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_29DFE2E34()
{
  v1 = sub_29E2C4274();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView____lazy_storage___pdfButton;
  v9 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView____lazy_storage___pdfButton);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView____lazy_storage___pdfButton);
  }

  else
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29DFE1438();
    sub_29DE9408C(0, &qword_2A1819798);
    (*(v2 + 16))(v4, v7, v1);
    sub_29DE9408C(0, &qword_2A181A5D8);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_29DFE41AC;
    *(v12 + 24) = v11;

    v13 = v0;
    sub_29E2C4114();
    v14 = sub_29E2C4284();

    (*(v2 + 8))(v7, v1);

    v15 = *(v13 + v8);
    *(v13 + v8) = v14;
    v10 = v14;

    v9 = 0;
  }

  v16 = v9;
  return v10;
}

void sub_29DFE308C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_showPDF];
    if (v2)
    {
      sub_29DE8EE38(*&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_showPDF]);

      v2();
      sub_29DE8EF50(v2);
    }

    else
    {
    }
  }
}

char *sub_29DFE3124()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysCountLabel;
  *&v0[v2] = sub_29DFE3A10();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysUnitLabel;
  *&v0[v3] = sub_29DFE3D84(MEMORY[0x29EDC80E0], 1);
  v4 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_showPDF];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView____lazy_storage___pdfButton] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysCountLabel];
  v7 = v5;
  [v7 addSubview_];
  [v7 addSubview_];
  v8 = sub_29DFE2E34();
  [v7 addSubview_];

  sub_29DFE322C();
  return v7;
}

void sub_29DFE322C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysCountLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView_daysUnitLabel];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_29DFE2E34();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView____lazy_storage___pdfButton;
  v5 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_8500AFF12A8E9400BC4D6E25DA312FB030CycleChartsDaysCountHeaderView____lazy_storage___pdfButton] titleLabel];
  if (!v5)
  {
    v5 = *&v1[v4];
  }

  v39 = objc_opt_self();
  sub_29DE99B54();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E2CDBD0;
  v7 = [v5 firstBaselineAnchor];
  v8 = [v2 &selRef_addOperation_];
  v40 = v5;
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v1 &selRef_bounds + 4];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [*&v1[v4] leadingAnchor];
  v14 = [v38 &selRef_bounds + 4];
  v15 = [v13 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v14 multiplier:1.0];

  *(v6 + 48) = v15;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v16 = sub_29E2C3604();

  [v39 activateConstraints_];

  LODWORD(v17) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v17];
  type metadata accessor for UILayoutPriority(0);
  sub_29DFE4164(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  sub_29E2C0534();
  LODWORD(v18) = v41;
  [v38 setContentCompressionResistancePriority:0 forAxis:v18];
  v19 = *&v1[v4];
  sub_29E2C0524();
  LODWORD(v20) = v41;
  [v19 setContentCompressionResistancePriority:0 forAxis:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2D6FB0;
  v22 = [v2 topAnchor];
  v23 = [v1 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [v2 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v21 + 40) = v27;
  v28 = [v2 firstBaselineAnchor];
  v29 = [v38 firstBaselineAnchor];
  v30 = [v28 &selRef:v29 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v21 + 48) = v30;
  v31 = [v2 leadingAnchor];
  v32 = [v1 leadingAnchor];
  v33 = [v31 &selRef:v32 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v21 + 56) = v33;
  v34 = [v38 leadingAnchor];
  v35 = [v2 trailingAnchor];
  v36 = [v34 &selRef:v35 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v21 + 64) = v36;
  v37 = sub_29E2C3604();

  [v39 activateConstraints_];
}

uint64_t sub_29DFE394C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartCycle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFE39B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29DFE3A10()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = *MEMORY[0x29EDC76C8];
  v2 = MEMORY[0x29EDC7700];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = *v2;
  v7 = [v3 fontDescriptorWithDesign_];
  if (v7)
  {
    v8 = v7;

    v3 = v8;
  }

  v9 = MEMORY[0x29EDC9E90];
  sub_29DFE4100(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v11 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29DFE4100(0, &qword_2A1819168, sub_29DF38418, v9);
  v12 = swift_initStackObject();
  v13 = MEMORY[0x29EDC7708];
  *(v12 + 16) = xmmword_29E2CAB20;
  v14 = *v13;
  *(v12 + 32) = *v13;
  *(v12 + 40) = v6;
  v15 = v11;
  v16 = v14;
  v17 = sub_29E1852C8(v12);
  swift_setDeallocating();
  sub_29DFE39B0(v12 + 32, sub_29DF38418);
  sub_29DF38488();
  *(inited + 64) = v18;
  *(inited + 40) = v17;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29DFE39B0(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29DFE4164(&qword_2A18177E0, type metadata accessor for AttributeName);
  v19 = sub_29E2C31F4();

  v20 = [v3 fontDescriptorByAddingAttributes_];

  v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  [v0 setFont_];

  v22 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  return v0;
}

id sub_29DFE3D84(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v4 setAdjustsFontForContentSizeCategory_];
  v5 = MEMORY[0x29EDC7700];
  v6 = *MEMORY[0x29EDC76C0];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];
  if (v8)
  {
    v9 = v8;

    v7 = v9;
  }

  v10 = *v5;
  v11 = [v7 fontDescriptorWithDesign_];
  if (v11)
  {
    v12 = v11;

    v7 = v12;
  }

  v13 = MEMORY[0x29EDC9E90];
  sub_29DFE4100(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v15 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29DFE4100(0, &qword_2A1819168, sub_29DF38418, v13);
  v16 = swift_initStackObject();
  v17 = MEMORY[0x29EDC7708];
  *(v16 + 16) = xmmword_29E2CAB20;
  v18 = *v17;
  *(v16 + 32) = *v17;
  *(v16 + 40) = v10;
  v19 = v15;
  v20 = v18;
  v21 = sub_29E1852C8(v16);
  swift_setDeallocating();
  sub_29DFE39B0(v16 + 32, sub_29DF38418);
  sub_29DF38488();
  *(inited + 64) = v22;
  *(inited + 40) = v21;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29DFE39B0(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29DFE4164(&qword_2A18177E0, type metadata accessor for AttributeName);
  v23 = sub_29E2C31F4();

  v24 = [v7 fontDescriptorByAddingAttributes_];

  v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
  [v4 setFont_];

  v26 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  return v4;
}

void sub_29DFE4100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DFE4164(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29DFE41B4(void *a1)
{
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_pillView;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for StaticPillView()) initWithFrame_];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x29EDC80E0];
  v7 = v5;
  v8 = [v5 preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setNumberOfLines_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_subtitleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11 = [v7 preferredFontForTextStyle_];
  [v10 setFont_];

  [v10 setNumberOfLines_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v9] = v10;
  v74.receiver = v1;
  v74.super_class = type metadata accessor for OnboardingCycleTimelineInfoView();
  v12 = objc_msgSendSuper2(&v74, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_pillView];
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_pillView;
  v15 = *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel];
  *&v13[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel] = a1;
  v73 = a1;
  v16 = v12;
  v17 = v13;

  sub_29DE98774();
  LODWORD(v18) = 1148846080;
  [*&v12[v14] setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [*&v12[v14] setContentCompressionResistancePriority:0 forAxis:v19];
  [*&v12[v14] &off_29F3635B8 + 2];
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_titleLabel;
  v21 = *&v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_titleLabel];
  v22 = sub_29E2C33A4();

  [v21 setText_];

  v23 = *&v16[v20];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 labelColor];
  [v25 setTextColor_];

  v27 = *MEMORY[0x29EDC8138];
  v28 = *&v16[v20];
  v29 = [v7 hk:v27 preferredFontForTextStyle:2 symbolicTraits:?];
  [v28 setFont_];

  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_subtitleLabel;
  v31 = *&v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_subtitleLabel];
  v32 = sub_29E2C33A4();

  [v31 setText_];

  v70 = v30;
  v33 = *&v16[v30];
  v34 = [v24 labelColor];
  [v33 setTextColor_];

  v35 = *&v12[v14];
  v36 = v16;
  [v36 addSubview_];
  [v36 addSubview_];
  [v36 addSubview_];
  v71 = objc_opt_self();
  sub_29DE99B54();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E2D7FC0;
  v38 = [*&v12[v14] leadingAnchor];
  v39 = [v36 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v37 + 32) = v40;
  v41 = [*&v12[v14] topAnchor];
  v42 = [v36 topAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v37 + 40) = v43;
  v44 = [*&v16[v20] topAnchor];
  v45 = [v36 topAnchor];

  v46 = [v44 &selRef:v45 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v37 + 48) = v46;
  v47 = [*&v16[v20] leadingAnchor];
  v48 = [*&v12[v14] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:16.0];

  *(v37 + 56) = v49;
  v50 = [*&v16[v20] trailingAnchor];
  v51 = [v36 trailingAnchor];

  v52 = [v50 &selRef:v51 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v37 + 64) = v52;
  v53 = [*&v16[v70] leadingAnchor];
  v54 = [*&v16[v20] leadingAnchor];
  v55 = [v53 &selRef:v54 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v37 + 72) = v55;
  v56 = [*&v16[v70] trailingAnchor];
  v57 = [*&v16[v20] trailingAnchor];
  v58 = [v56 &selRef:v57 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v37 + 80) = v58;
  v59 = [*&v16[v70] topAnchor];
  v60 = [*&v16[v20] bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:8.0];

  *(v37 + 88) = v61;
  v62 = [v36 bottomAnchor];

  v63 = [*&v16[v70] bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:16.0];

  *(v37 + 96) = v64;
  sub_29DEB8834();
  v65 = sub_29E2C3604();

  [v71 activateConstraints_];

  sub_29DEAC750();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_29E2CAB20;
  v67 = sub_29E2C0B54();
  v68 = MEMORY[0x29EDC7870];
  *(v66 + 32) = v67;
  *(v66 + 40) = v68;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v36;
}

id sub_29DFE4A98(void *a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_pillView;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for StaticPillView()) initWithFrame_];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x29EDC80E0];
  v7 = [v5 preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setNumberOfLines_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_subtitleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v10 = [v5 preferredFontForTextStyle_];
  [v9 setFont_];

  [v9 setNumberOfLines_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v9;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for OnboardingCycleTimelineInfoView();
  v11 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29DFE4CE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingCycleTimelineInfoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DFE4D98(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_titleLabel);
  v2 = [objc_opt_self() hk:*MEMORY[0x29EDC8138] preferredFontForTextStyle:2 symbolicTraits:?];
  [v1 setFont_];
}

char *sub_29DFE4E24()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v18 - v6;
  v8 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
  LOWORD(v17) = 256;
  v19 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:6 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v8 cycleFactors:0 partiallyLoggedPeriod:v17 fetched:?];

  sub_29E2C3314();
  v9 = *(v2 + 16);
  v9(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = v10;
  v12 = sub_29E2C3414();
  v18[0] = v13;
  v18[1] = v12;
  v14 = *(v2 + 8);
  v14(v7, v1);
  sub_29E2C3314();
  v9(v5, v7, v1);
  sub_29E2BCC74();
  sub_29E2C3414();
  v14(v7, v1);
  v15 = objc_allocWithZone(type metadata accessor for OnboardingCycleTimelineInfoView());
  return sub_29DFE41B4(v19);
}

char *sub_29DFE5174()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v18 - v6;
  v8 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
  LOWORD(v17) = 256;
  v19 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:2 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v8 cycleFactors:0 partiallyLoggedPeriod:v17 fetched:?];

  sub_29E2C3314();
  v9 = *(v2 + 16);
  v9(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = v10;
  v12 = sub_29E2C3414();
  v18[0] = v13;
  v18[1] = v12;
  v14 = *(v2 + 8);
  v14(v7, v1);
  sub_29E2C3314();
  v9(v5, v7, v1);
  sub_29E2BCC74();
  sub_29E2C3414();
  v14(v7, v1);
  v15 = objc_allocWithZone(type metadata accessor for OnboardingCycleTimelineInfoView());
  return sub_29DFE41B4(v19);
}

char *sub_29DFE54C4()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v18 - v6;
  v8 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
  LOWORD(v17) = 256;
  v19 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:4 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v8 cycleFactors:0 partiallyLoggedPeriod:v17 fetched:?];

  sub_29E2C3314();
  v9 = *(v2 + 16);
  v9(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = v10;
  v12 = sub_29E2C3414();
  v18[0] = v13;
  v18[1] = v12;
  v14 = *(v2 + 8);
  v14(v7, v1);
  sub_29E2C3314();
  v9(v5, v7, v1);
  sub_29E2BCC74();
  sub_29E2C3414();
  v14(v7, v1);
  v15 = objc_allocWithZone(type metadata accessor for OnboardingCycleTimelineInfoView());
  return sub_29DFE41B4(v19);
}

char *sub_29DFE5814(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v43 - v8;
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        v34 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
        LOWORD(v42) = 256;
        v35 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:2 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v34 cycleFactors:0 partiallyLoggedPeriod:v42 fetched:?];

        sub_29E2C3394();
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v36 = qword_2A1A67F80;
        sub_29E2BCC74();
        v37 = v36;
        sub_29E2C3414();
        sub_29E2C3314();
        (*(v4 + 16))(v7, v9, v3);
        sub_29E2BCC74();
        sub_29E2C3414();
        (*(v4 + 8))(v9, v3);
        objc_allocWithZone(type metadata accessor for OnboardingCycleTimelineInfoView());
        v20 = v35;
        return sub_29DFE41B4(v20);
      }

      v21 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
      LOWORD(v40) = 256;
      v44 = [objc_opt_self() dayViewModelWithMenstruationLevel:2 fertileWindowLevel:0 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v21 cycleFactors:0 partiallyLoggedPeriod:v40 fetched:?];

      sub_29E2C3314();
      v22 = v4;
      v23 = *(v4 + 16);
      v23(v7, v9, v3);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v24 = qword_2A1A67F80;
      sub_29E2BCC74();
      v25 = v24;
      sub_29E2C3414();
      v43 = v26;
      v15 = *(v22 + 8);
      v15(v9, v3);
      sub_29E2C3314();
      v23(v7, v9, v3);
    }

    else
    {
      if (a1)
      {
        v28 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:1 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
        LOWORD(v41) = 256;
        v44 = [objc_opt_self() dayViewModelWithMenstruationLevel:5 fertileWindowLevel:0 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v28 cycleFactors:0 partiallyLoggedPeriod:v41 fetched:?];

        sub_29E2C3314();
        v29 = *(v4 + 16);
        v29(v7, v9, v3);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v30 = qword_2A1A67F80;
        sub_29E2BCC74();
        v31 = v30;
        sub_29E2C3414();
        v43 = v32;
        v33 = *(v4 + 8);
        v33(v9, v3);
        sub_29E2C3314();
        v29(v7, v9, v3);
        sub_29E2BCC74();
        sub_29E2C3414();
        v33(v9, v3);
        goto LABEL_24;
      }

      v10 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
      LOWORD(v38) = 256;
      v44 = [objc_opt_self() dayViewModelWithMenstruationLevel:4 fertileWindowLevel:0 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v10 cycleFactors:0 partiallyLoggedPeriod:v38 fetched:?];

      sub_29E2C3314();
      v11 = *(v4 + 16);
      v11(v7, v9, v3);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v12 = qword_2A1A67F80;
      sub_29E2BCC74();
      v13 = v12;
      sub_29E2C3414();
      v43 = v14;
      v15 = *(v4 + 8);
      v15(v9, v3);
      sub_29E2C3314();
      v11(v7, v9, v3);
    }

    sub_29E2BCC74();
    sub_29E2C3414();
    v15(v9, v3);
LABEL_24:
    objc_allocWithZone(type metadata accessor for OnboardingCycleTimelineInfoView());
    v20 = v44;
    return sub_29DFE41B4(v20);
  }

  if (a1 > 5u)
  {
    if (a1 == 6)
    {

      return sub_29DFE5174();
    }

    else
    {

      return sub_29DFE54C4();
    }
  }

  else
  {
    if (a1 == 4)
    {
      v16 = [objc_opt_self() daySummaryWithDayIndex:0 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
      LOWORD(v39) = 256;
      v17 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:3 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v16 cycleFactors:0 partiallyLoggedPeriod:v39 fetched:?];

      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v18 = qword_2A1A67F80;
      sub_29E2BCC74();
      v19 = v18;
      sub_29E2C3414();
      sub_29E2C3394();
      sub_29E2BCC74();
      sub_29E2C3414();
      objc_allocWithZone(type metadata accessor for OnboardingCycleTimelineInfoView());
      v20 = v17;
      return sub_29DFE41B4(v20);
    }

    return sub_29DFE4E24();
  }
}

uint64_t sub_29DFE6390@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2C31A4();
  sub_29DEC65FC();
  sub_29DFE9600(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
  if (sub_29E2C3304())
  {
    v3 = *(*(v2 - 8) + 56);

    return v3(a1, 1, 1, v2);
  }

  else
  {
    sub_29DFE9600(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    result = sub_29E2C3284();
    if (result)
    {
      result = sub_29E2C32B4();
      if (result)
      {
        sub_29DFE9600(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
        sub_29E2C4334();
        return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_29DFE6598(uint64_t a1, char a2)
{
  sub_29E2C4584();

  if (a2)
  {
    v3 = 0x57656C6974726566;
  }

  else
  {
    v3 = 0x61757274736E656DLL;
  }

  if (a2)
  {
    v4 = 0xED0000776F646E69;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  MEMORY[0x29ED7FCC0](v3, v4);

  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  sub_29E2BCC24();
  sub_29DFE9600(&qword_2A1A616C0, MEMORY[0x29EDB9C08]);
  v5 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v5);

  return 0xD00000000000002CLL;
}

uint64_t sub_29DFE66D8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(__n128), uint64_t a6, char a7, void *a8, uint64_t a9)
{
  v21 = a4;
  v22 = a8;
  v14 = sub_29E2BCBB4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v16);
  v19 = sub_29DFE6B6C(a1, a2, a3, v21, v18, a7 & 1, v22, a9);
  (*(v15 + 8))(v18, v14);
  return v19;
}

uint64_t sub_29DFE6800@<X0>(uint64_t *a1@<X8>)
{
  [v1 allDays];
  v11 = sub_29E2C48D4();
  v12 = v3;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  v4 = [v1 predictionPrimarySource];
  v5 = v4 == 3;
  if (v4 == 3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x29ED7FCC0](v6, v7);

  *a1 = v11;
  a1[1] = v12;
  v8 = *MEMORY[0x29EDC3818];
  v9 = sub_29E2BD3D4();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_29DFE6914()
{
  sub_29DFE9478(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v0 = sub_29E2BCE84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2D47D0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x29EDB9CC0], v0);
  v6(v5 + v2, *MEMORY[0x29EDB9CD0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x29EDB9CD8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x29EDB9CB8], v0);
  v6(v5 + 4 * v2, *MEMORY[0x29EDB9CC8], v0);
  v6(v5 + 5 * v2, *MEMORY[0x29EDB9CE0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x29EDB9CE8], v0);
  sub_29DE924A4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29E2BCD14();
}

uint64_t sub_29DFE6B6C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8)
{
  v273 = a8;
  v303 = a7;
  v291 = a5;
  v298 = a4;
  v288 = a3;
  v275 = a2;
  v309 = a1;
  v254 = sub_29E2BC5F4();
  v253 = *(v254 - 8);
  MEMORY[0x2A1C7C4A8](v254);
  v252 = &v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for SharingNotificationBody();
  MEMORY[0x2A1C7C4A8](v272);
  v289 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_29E2BCD24();
  v270 = *(v271 - 8);
  MEMORY[0x2A1C7C4A8](v271);
  v268 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_29E2BCD74();
  v266 = *(v269 - 8);
  MEMORY[0x2A1C7C4A8](v269);
  v265 = &v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = sub_29E2BCCF4();
  v264 = *(v287 - 8);
  MEMORY[0x2A1C7C4A8](v287);
  v263 = &v246 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29DFE9478(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v267 = &v246 - v16;
  sub_29DFE9478(0, &qword_2A1A5E2A0, sub_29DEC65FC, v14);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v255 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v261 = &v246 - v20;
  sub_29DFE9478(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], v14);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v256 = &v246 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v262 = &v246 - v24;
  v300 = sub_29E2BCEA4();
  v310 = *(v300 - 8);
  MEMORY[0x2A1C7C4A8](v300);
  v299 = &v246 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_29E2BCBB4();
  v290 = *(v305 - 8);
  MEMORY[0x2A1C7C4A8](v305);
  v274 = &v246 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v301 = &v246 - v28;
  MEMORY[0x2A1C7C4A8](v29);
  v302 = &v246 - v30;
  MEMORY[0x2A1C7C4A8](v31);
  v283 = &v246 - v32;
  v307 = sub_29E2C31A4();
  v292 = *(v307 - 8);
  MEMORY[0x2A1C7C4A8](v307);
  v249 = &v246 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v247 = &v246 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v250 = &v246 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v251 = &v246 - v39;
  MEMORY[0x2A1C7C4A8](v40);
  v308 = &v246 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v306 = &v246 - v43;
  v282 = sub_29E2BCC24();
  v281 = *(v282 - 8);
  MEMORY[0x2A1C7C4A8](v282);
  v280 = &v246 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFE9478(0, &unk_2A1A616B0, MEMORY[0x29EDB9C08], v14);
  MEMORY[0x2A1C7C4A8](v45 - 8);
  v259 = &v246 - v46;
  v293 = sub_29E2C0514();
  v294 = *(v293 - 8);
  MEMORY[0x2A1C7C4A8](v293);
  v277 = &v246 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v48);
  v285 = &v246 - v49;
  MEMORY[0x2A1C7C4A8](v50);
  v246 = &v246 - v51;
  MEMORY[0x2A1C7C4A8](v52);
  v248 = &v246 - v53;
  MEMORY[0x2A1C7C4A8](v54);
  v260 = &v246 - v55;
  MEMORY[0x2A1C7C4A8](v56);
  v276 = &v246 - v57;
  sub_29DFE9478(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], v14);
  MEMORY[0x2A1C7C4A8](v58 - 8);
  v258 = &v246 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v60);
  v62 = &v246 - v61;
  MEMORY[0x2A1C7C4A8](v63);
  v65 = &v246 - v64;
  v278 = sub_29E2BC4D4();
  v66 = *(v278 - 8);
  MEMORY[0x2A1C7C4A8](v278);
  v68 = &v246 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29E2BC904();
  v70 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v257 = &v246 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v72);
  v279 = &v246 - v73;
  MEMORY[0x2A1C7C4A8](v74);
  v76 = &v246 - v75;
  MEMORY[0x2A1C7C4A8](v77);
  v297 = &v246 - v78;
  v79 = [objc_allocWithZone(MEMORY[0x29EDBCCC0]) init];
  LODWORD(v284) = a6;
  v80 = (a6 & 1) == 0;
  if (a6)
  {
    v81 = 5;
  }

  else
  {
    v81 = 4;
  }

  v82 = MEMORY[0x29EDC32E0];
  if (v80)
  {
    v82 = MEMORY[0x29EDC32E8];
  }

  v83 = *v82;
  v304 = v79;
  [v79 setCategoryIdentifier_];
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v84 = [qword_2A1A67F80 bundleURL];
  sub_29E2BC8D4();

  sub_29E2BC8B4();
  v295 = *(v70 + 8);
  v296 = v70 + 8;
  v295(v76, v69);
  sub_29E2BDF94();

  sub_29DF24A0C(1);
  sub_29DF24EEC(v81);
  sub_29DF25054(0);
  sub_29DF2544C(0, 1);
  sub_29E2BC474();
  v85 = *(v70 + 48);
  if (v85(v65, 1, v69) != 1)
  {
    (*(v66 + 8))(v68, v278);
    v86 = *(v70 + 32);
    v86(v297, v65, v69);
    sub_29E2BDFA4();
    v87 = v85(v62, 1, v69);
    v286 = v69;
    if (v87 == 1)
    {
      sub_29DFE9590(v62, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
      v88 = v305;
      v89 = v306;
      v90 = v308;
      v92 = v303;
      v91 = v304;
      v93 = v282;
      v94 = v281;
    }

    else
    {
      v95 = v279;
      v86(v279, v62, v69);
      v96 = v276;
      sub_29E2C04B4();
      v97 = v257;
      v278 = *(v70 + 16);
      (v278)(v257, v95, v69);
      v98 = sub_29E2C0504();
      v99 = sub_29E2C3A04();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v312 = v101;
        *v100 = 136446466;
        *(v100 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v312);
        *(v100 + 12) = 2080;
        sub_29DFE9600(&qword_2A181A648, MEMORY[0x29EDB9B18]);
        v102 = sub_29E2C48D4();
        v103 = v97;
        v105 = v104;
        v295(v103, v69);
        v106 = sub_29DFAA104(v102, v105, &v312);

        *(v100 + 14) = v106;
        _os_log_impl(&dword_29DE74000, v98, v99, "[%{public}s] contentURL is %s", v100, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v101, -1, -1);
        MEMORY[0x29ED82140](v100, -1, -1);

        (*(v294 + 8))(v276, v293);
      }

      else
      {

        v295(v97, v69);
        (*(v294 + 8))(v96, v293);
      }

      v107 = v303;
      v93 = v282;
      v108 = v258;
      v109 = v279;
      (v278)(v258, v279, v69);
      (*(v70 + 56))(v108, 0, 1, v69);
      v94 = v281;
      v110 = v259;
      (*(v281 + 56))(v259, 1, 1, v93);
      sub_29DFE94DC();
      sub_29E2BED64();
      sub_29DFE9590(v110, &unk_2A1A616B0, MEMORY[0x29EDB9C08]);
      sub_29DFE9590(v108, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
      v111 = sub_29E2C31F4();

      v91 = v304;
      [v304 setUserInfo_];

      v295(v109, v69);
      v88 = v305;
      v89 = v306;
      v92 = v107;
      v90 = v308;
    }

    v112 = [v309 identifier];
    v113 = v280;
    sub_29E2BCC04();

    sub_29E2BCBD4();
    (*(v94 + 8))(v113, v93);
    v114 = sub_29E2C33A4();

    [v91 setThreadIdentifier_];

    v281 = sub_29DFE94DC();
    v115 = sub_29E2BED74();
    [v91 setSound_];

    v116 = *(v290 + 16);
    v117 = v291;
    v282 = v290 + 16;
    v116(v283, v291, v88);
    v118 = v298;
    v310[2](v299, v298, v300);
    sub_29E2C3144();
    LOBYTE(v115) = v284;
    LODWORD(v283) = v284 & 1;
    sub_29E063EAC(v117, v118, v284 & 1, v92, v90);
    if (v115)
    {
      v284 = v116;
      v119 = [v92 predictionPrimarySource];
      LODWORD(v280) = v119 == 3;
      [v92 allDays];
      v120 = v261;
      sub_29E2C3AA4();
      sub_29DEC65FC();
      v122 = v121;
      v123 = *(*(v121 - 8) + 48);
      if (v123(v120, 1, v121) == 1)
      {
        sub_29DFE9590(v120, &qword_2A1A5E2A0, sub_29DEC65FC);
        v124 = v292;
        v125 = v262;
        (*(v292 + 56))(v262, 1, 1, v307);
LABEL_22:
        sub_29DFE9590(v125, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
LABEL_23:
        [v303 allDays];
        v130 = v255;
        sub_29E2C3AA4();
        if (v123(v130, 1, v122) == 1)
        {
          sub_29DFE9590(v130, &qword_2A1A5E2A0, sub_29DEC65FC);
          v131 = v256;
          (*(v124 + 56))(v256, 1, 1, v307);
LABEL_30:
          sub_29DFE9590(v131, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
LABEL_31:
          LODWORD(v278) = sub_29E2C30E4();
          goto LABEL_32;
        }

        v131 = v256;
        sub_29DFE6390(v256);
        v153 = v292;
        sub_29DFE9530(v130, sub_29DEC65FC);
        v154 = v307;
        if ((*(v153 + 48))(v131, 1, v307) == 1)
        {
          goto LABEL_30;
        }

        v219 = v249;
        (*(v153 + 32))(v249, v131, v154);
        sub_29DFE9600(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
        if ((sub_29E2C32A4() & 1) == 0)
        {
          (*(v153 + 8))(v219, v154);
          goto LABEL_31;
        }

        if (v119 != 3)
        {
          (*(v292 + 8))(v219, v307);
          goto LABEL_31;
        }

        v220 = v246;
        sub_29E2C04B4();
        v221 = sub_29E2C0504();
        v222 = sub_29E2C3A14();
        v223 = os_log_type_enabled(v221, v222);
        v225 = v306;
        v224 = v307;
        if (v223)
        {
          v226 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          v312 = v227;
          *v226 = 136446210;
          *(v226 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v312);
          _os_log_impl(&dword_29DE74000, v221, v222, "[%{public}s] Ovulation is confirmed via wrist temperature before the fertile window has ended, no notification should be scheduled", v226, 0xCu);
          sub_29DE93B3C(v227);
          MEMORY[0x29ED82140](v227, -1, -1);
          MEMORY[0x29ED82140](v226, -1, -1);
        }

        (*(v294 + 8))(v220, v293);
        v228 = *(v292 + 8);
        v228(v219, v224);
        v228(v308, v224);
        v228(v225, v224);
        goto LABEL_28;
      }

      v125 = v262;
      sub_29DFE6390(v262);
      sub_29DFE9530(v120, sub_29DEC65FC);
      v124 = v292;
      if ((*(v292 + 48))(v125, 1, v307) == 1)
      {
        goto LABEL_22;
      }

      v214 = v125;
      v215 = v250;
      v216 = v307;
      (*(v124 + 32))(v250, v214, v307);
      if ((sub_29E2C30E4() & 1) == 0)
      {
        (*(v124 + 8))(v215, v216);
        goto LABEL_23;
      }

      if (v119 == 3)
      {
        (*(v124 + 8))(v215, v307);
        goto LABEL_23;
      }

      v229 = v248;
      sub_29E2C04B4();
      v230 = v247;
      v139 = v307;
      (*(v124 + 16))(v247, v215, v307);
      v231 = v303;
      v232 = v124;
      v233 = sub_29E2C0504();
      v234 = sub_29E2C3A34();

      if (!os_log_type_enabled(v233, v234))
      {

        v244 = *(v124 + 8);
        v244(v230, v139);
        (*(v294 + 8))(v229, v293);
        v244(v215, v139);
        v244(v308, v139);
        v244(v306, v139);
        goto LABEL_28;
      }

      v235 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v312 = v236;
      *v235 = 136446722;
      *(v235 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v312);
      *(v235 + 12) = 2080;
      LOBYTE(v311) = v283;
      v237 = sub_29E2C3464();
      v239 = sub_29DFAA104(v237, v238, &v312);

      *(v235 + 14) = v239;
      *(v235 + 22) = 2080;
      v311 = sub_29E2C3164();
      v240 = sub_29E2C3464();
      v242 = v241;
      v149 = *(v232 + 8);
      v149(v230, v139);
      v243 = sub_29DFAA104(v240, v242, &v312);

      *(v235 + 24) = v243;
      _os_log_impl(&dword_29DE74000, v233, v234, "[%{public}s] No %s notification scheduled, as we're currently past day and there is no confirmed ovulation %s", v235, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v236, -1, -1);
      MEMORY[0x29ED82140](v235, -1, -1);

      (*(v294 + 8))(v248, v293);
      v149(v250, v139);
    }

    else
    {
      v126 = v90;
      sub_29DFE9600(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
      v127 = v307;
      v128 = sub_29E2C32A4();
      v129 = v286;
      if (v128)
      {
        v284 = v116;
        LODWORD(v280) = 0;
        LODWORD(v278) = 0;
LABEL_32:
        sub_29E2C3194();
        v155 = v299;
        sub_29E2BCE44();
        v156 = v264;
        v157 = v263;
        (*(v264 + 104))(v263, *MEMORY[0x29EDB9C88], v287);
        v158 = v266;
        v159 = v265;
        v160 = v269;
        (*(v266 + 104))(v265, *MEMORY[0x29EDB9C98], v269);
        v161 = v270;
        v162 = v268;
        v163 = v271;
        (*(v270 + 104))(v268, *MEMORY[0x29EDB9C90], v271);
        v164 = v267;
        sub_29E2BCDD4();
        (*(v161 + 8))(v162, v163);
        (*(v158 + 8))(v159, v160);
        (*(v156 + 8))(v157, v287);
        v165 = v310[1];
        ++v310;
        v165(v155, v300);
        v166 = v290;
        v167 = v290 + 8;
        v168 = *(v290 + 8);
        v169 = v305;
        v168(v301, v305);
        v170 = *(v166 + 48);
        v171 = v170(v164, 1, v169);
        v287 = v167;
        v279 = v168;
        if (v171 == 1)
        {
          sub_29E2C3194();
          if (v170(v164, 1, v169) != 1)
          {
            sub_29DFE9590(v164, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
          }
        }

        else
        {
          (*(v166 + 32))(v302, v164, v169);
        }

        v172 = v283;
        sub_29DFAF228();
        v173 = sub_29E2C33A4();

        v174 = v304;
        [v304 setTitle_];

        v175 = v174;
        v176 = sub_29E2BD704();
        v177 = v289;
        (*(*(v176 - 8) + 16))(v289, v273, v176);
        v178 = v272;
        *(v177 + *(v272 + 20)) = v278 & 1;
        *(v177 + *(v178 + 24)) = v280;
        sub_29DFAF43C(v177, v172);
        v179 = sub_29E2C33A4();

        [v175 setBody_];

        sub_29DE99B54();
        v180 = swift_allocObject();
        *(v180 + 16) = xmmword_29E2CE220;
        *(v180 + 32) = sub_29E2BED54();
        sub_29DE9408C(0, &qword_2A181A640);
        v181 = sub_29E2C3604();

        [v175 setAttachments_];

        v182 = v306;
        v183 = v302;
        if (sub_29E2BCB24())
        {
          v310 = 0;
        }

        else
        {
          v184 = v299;
          sub_29E2BCE44();
          v185 = v252;
          sub_29DFE6914();
          v186 = sub_29E2BC524();
          v187 = [objc_opt_self() triggerWithDateMatchingComponents:v186 repeats:0];

          (*(v253 + 8))(v185, v254);
          v165(v184, v300);
          v310 = v187;
        }

        v188 = v285;
        sub_29E2C04B4();
        v189 = v274;
        v284(v274, v183, v169);
        sub_29E2BF404();
        v190 = v175;
        v191 = sub_29E2C0504();
        v192 = sub_29E2C3A34();

        if (os_log_type_enabled(v191, v192))
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v312 = v194;
          *v193 = 136446978;
          *(v193 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v312);
          *(v193 + 12) = 2080;
          *(v193 + 14) = sub_29DFAA104(v275, v288, &v312);
          *(v193 + 22) = 2080;
          sub_29DFE9600(&qword_2A1817C98, MEMORY[0x29EDB9BC8]);
          v195 = sub_29E2C48D4();
          v196 = v189;
          v198 = v197;
          v199 = v279;
          (v279)(v196, v169);
          v200 = sub_29DFAA104(v195, v198, &v312);

          *(v193 + 24) = v200;
          *(v193 + 32) = 2080;
          v311 = v190;
          sub_29DE9408C(0, &qword_2A181A638);
          v201 = v190;
          v202 = sub_29E2C3464();
          v204 = sub_29DFAA104(v202, v203, &v312);

          *(v193 + 34) = v204;
          _os_log_impl(&dword_29DE74000, v191, v192, "[%{public}s] Creating notification %s on %s with content: %s", v193, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v194, -1, -1);
          v205 = v193;
          v182 = v306;
          MEMORY[0x29ED82140](v205, -1, -1);

          (*(v294 + 8))(v285, v293);
        }

        else
        {

          v199 = v279;
          (v279)(v189, v169);
          (*(v294 + 8))(v188, v293);
        }

        v206 = v286;
        v207 = v295;
        v208 = sub_29E2C33A4();
        v209 = objc_opt_self();
        v210 = v310;
        v211 = [v209 requestWithIdentifier:v208 content:v190 trigger:v310];

        sub_29DFE9530(v289, type metadata accessor for SharingNotificationBody);
        v199(v302, v305);
        v212 = *(v292 + 8);
        v213 = v307;
        v212(v308, v307);
        v212(v182, v213);
        v207(v297, v206);
        return v211;
      }

      v132 = v89;
      sub_29E2C04B4();
      v133 = v292;
      v134 = v251;
      (*(v292 + 16))(v251, v126, v127);
      v135 = v303;
      v136 = v126;
      v137 = v134;
      v138 = sub_29E2C0504();
      v139 = v127;
      v140 = sub_29E2C3A34();

      if (!os_log_type_enabled(v138, v140))
      {

        v217 = *(v133 + 8);
        v217(v134, v139);
        (*(v294 + 8))(v260, v293);
        v217(v136, v139);
        v217(v132, v139);
        v151 = v297;
        v152 = v129;
        goto LABEL_47;
      }

      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v312 = v142;
      *v141 = 136446722;
      *(v141 + 4) = sub_29DFAA104(0xD000000000000021, 0x800000029E2F82F0, &v312);
      *(v141 + 12) = 2080;
      LOBYTE(v311) = v283;
      v143 = sub_29E2C3464();
      v145 = sub_29DFAA104(v143, v144, &v312);

      *(v141 + 14) = v145;
      *(v141 + 22) = 2080;
      v311 = sub_29E2C3164();
      v146 = sub_29E2C3464();
      v148 = v147;
      v149 = *(v133 + 8);
      v149(v137, v139);
      v150 = sub_29DFAA104(v146, v148, &v312);

      *(v141 + 24) = v150;
      _os_log_impl(&dword_29DE74000, v138, v140, "[%{public}s] No %s notification scheduled, as we're currently past day %s", v141, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v142, -1, -1);
      MEMORY[0x29ED82140](v141, -1, -1);

      (*(v294 + 8))(v260, v293);
    }

    v149(v308, v139);
    v149(v306, v139);
LABEL_28:
    v151 = v297;
    v152 = v286;
LABEL_47:
    v295(v151, v152);
    return 0;
  }

  sub_29DFE9590(v65, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
  v312 = 0;
  v313 = 0xE000000000000000;
  sub_29E2C4584();

  v312 = 0xD00000000000001ALL;
  v313 = 0x800000029E2F6EE0;
  sub_29DFE9600(&qword_2A181A6F0, MEMORY[0x29EDB9940]);
  v245 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v245);

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29DFE9478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DFE94DC()
{
  result = qword_2A181A630;
  if (!qword_2A181A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A630);
  }

  return result;
}

uint64_t sub_29DFE9530(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DFE9590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DFE9478(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DFE9600(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DFE9648(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_29DFE96C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x29EDCA398];
  sub_29DFF5600(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v22 - v10;
  sub_29DFF5AC8(a3, v22 - v10, &qword_2A1A5E2F0, v8);
  v12 = sub_29E2C3734();
  v13 = *(v12 - 8);
  LODWORD(v8) = (*(v13 + 48))(v11, 1, v12);

  if (v8 == 1)
  {
    sub_29DFF61C4(v11, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E2C3724();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_29E2C36A4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_29E2C3454() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_29DFF61C4(a3, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29DFF61C4(a3, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_29DFE99B4(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v92 = a5;
  v94 = a4;
  v91 = a3;
  v86 = a2;
  v7 = *v5;
  v95 = a1;
  v96 = v7;
  v8 = sub_29E2BCBB4();
  v81 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v90 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v89 = &v79 - v11;
  v12 = type metadata accessor for EditPregnancyView(0);
  MEMORY[0x2A1C7C4A8](v12);
  v93 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = (&v79 - v15);
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v79 - v18;
  v20 = sub_29E2C0514();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v88 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v79 - v24;
  v26 = HKShowSensitiveLogItems();
  v97 = v16;
  if (v26)
  {
    sub_29E2C04B4();
    v27 = sub_29E2C0504();
    LODWORD(v85) = sub_29E2C3A34();
    if (os_log_type_enabled(v27, v85))
    {
      v28 = swift_slowAlloc();
      v79 = v28;
      v80 = swift_slowAlloc();
      v103[0] = v80;
      *v28 = 136315138;
      v29 = sub_29E2C4AE4();
      v31 = sub_29DFAA104(v29, v30, v103);
      v83 = v20;
      v32 = v27;
      v33 = v21;
      v34 = v12;
      v35 = v8;
      v36 = v6;
      v37 = v31;
      v16 = v97;

      v38 = v79;
      *(v79 + 1) = v37;
      v6 = v36;
      v8 = v35;
      v12 = v34;
      _os_log_impl(&dword_29DE74000, v32, v85, "[%s] Showing the Edit Pregnancy View", v38, 0xCu);
      v39 = v80;
      sub_29DE93B3C(v80);
      MEMORY[0x29ED82140](v39, -1, -1);
      MEMORY[0x29ED82140](v38, -1, -1);

      (*(v33 + 8))(v25, v83);
    }

    else
    {

      (*(v21 + 8))(v25, v20);
    }
  }

  v82 = v8;
  v87 = v12;
  v40 = v81;
  (*(v81 + 56))(v19, 1, 1, v8);
  v85 = v86;
  v41 = sub_29E0463FC(v85, 0, v19);
  *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_flowType) = 1;
  v42 = *(v6 + 32);
  *v16 = swift_getKeyPath();
  sub_29DFF5600(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PregnancyDatesInputViewModel();
  sub_29DFF65C0(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  swift_retain_n();
  v43 = v42;
  sub_29E2C2A44();
  v103[3] = v96;
  v103[4] = &off_2A24BBDA8;
  v103[0] = v6;
  v84 = v6;
  v44 = v96;
  v86 = type metadata accessor for EditPregnancyView.ViewModel(0);
  v45 = swift_allocObject();
  v46 = sub_29DEF61C0(v103, v44);
  v83 = &v79;
  v47 = MEMORY[0x2A1C7C4A8](v46);
  v49 = (&v79 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  v51 = *v49;
  v101 = v44;
  v102 = &off_2A24BBDA8;
  *&v100 = v51;
  *(v45 + 16) = 0;
  *(v45 + 20) = 1;

  v96 = v43;

  sub_29E2C04B4();
  sub_29E2C03F4();
  sub_29E2BD014();
  swift_getKeyPath();
  v99 = v41;
  sub_29E2BCFE4();

  v52 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyStartDate;
  swift_beginAccess();
  v53 = v40;
  v54 = *(v40 + 16);
  v55 = v82;
  v54(v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_oldStartDate, &v41[v52], v82);
  swift_getKeyPath();
  v98 = v41;
  sub_29E2BCFE4();

  v56 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__pregnancyEndDate;
  swift_beginAccess();
  v54(v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_oldEndDate, &v41[v56], v55);
  v57 = v96;
  *(v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_healthStore) = v96;
  v58 = v85;
  *(v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancySample) = v85;
  v59 = [v58 endDate];
  v60 = v89;
  sub_29E2BCB44();

  v61 = v90;
  sub_29E2BCA84();
  LOBYTE(v59) = sub_29E2BCB34();

  v62 = *(v53 + 8);
  v62(v61, v55);
  v62(v60, v55);
  *(v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_pregnancyOccurrenceType) = (v59 & 1) == 0;
  *(v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_shouldShowCancelButton) = v91 & 1;
  v63 = (v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_cycleFactorsNotificationHandler);
  v64 = v92;
  *v63 = v94;
  v63[1] = v64;
  sub_29DE8EE78(&v100, v45 + OBJC_IVAR____TtCV24MenstrualCyclesAppPlugin17EditPregnancyView9ViewModel_coordinator);
  swift_unknownObjectRetain();
  sub_29DE93B3C(v103);
  v65 = v97;
  v66 = (v97 + *(v87 + 24));
  *&v100 = v45;

  sub_29E2C27C4();

  v67 = v103[1];
  *v66 = v103[0];
  v66[1] = v67;
  sub_29DFF5B48(v65, v93, type metadata accessor for EditPregnancyView);
  sub_29DFF5664();
  v69 = objc_allocWithZone(v68);
  v70 = sub_29E2C1C34();
  v71 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController;
  v72 = v84;
  v73 = *(v84 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController);
  sub_29DE99B54();
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_29E2CE220;
  *(v74 + 32) = v70;
  sub_29DE9408C(0, &qword_2A1820CC0);
  v75 = v73;
  v76 = v70;
  v77 = sub_29E2C3604();

  [v75 setViewControllers:v77 animated:0];

  [v95 presentViewController:*(v72 + v71) animated:1 completion:0];
  sub_29DFEB0C0(12);

  return sub_29DFF5C3C(v65, type metadata accessor for EditPregnancyView);
}

void *sub_29DFEA410(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v13 = v12;
  v68 = a7;
  v81 = a6;
  v75 = a4;
  v83 = a10;
  v84 = a5;
  v71 = *v12;
  v18 = sub_29E2C0514();
  v78 = *(v18 - 8);
  v79 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v82 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFF5600(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v69 = &v66 - v21;
  v22 = sub_29E2BE2A4();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[16] = 0;
  v13[18] = 0;
  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_flowType) = 1;
  v26 = (v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_completionHandler);
  *v26 = 0;
  v26[1] = 0;
  v67 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_shouldSkipUserNotificationsDeniedCheck;
  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_shouldSkipUserNotificationsDeniedCheck) = 0;
  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_experienceStore) = 0;
  v13[4] = a1;
  v80 = a2;
  v27 = a2;
  v28 = a8;
  sub_29DE9DC34(v27, (v13 + 5));
  (*(v23 + 16))(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_presentationLaunchSource, a3, v22);
  (*(v23 + 104))(v25, *MEMORY[0x29EDC1D80], v22);
  v29 = a1;
  v77 = a3;
  LOBYTE(a1) = sub_29E2BE294();
  v30 = *(v23 + 8);
  v74 = v22;
  v73 = v23 + 8;
  v72 = v30;
  v30(v25, v22);
  if (a1)
  {
    v31 = 4;
  }

  else
  {
    v31 = 5;
  }

  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_analyticsLaunchSource) = v31;
  v32 = v75;
  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController) = v75;
  *(v13 + 8) = 0;
  v33 = MEMORY[0x29EDCA190];
  *(v13 + 18) = 0;
  v13[3] = v33;
  v34 = *v26;
  v35 = v83;
  *v26 = a9;
  v26[1] = v35;
  v70 = v32;
  v75 = a9;
  sub_29DE8EE38(a9);
  sub_29DE8EF50(v34);
  if (v28)
  {
    v36 = v28;
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x29EDBAC50]) initWithHealthStore_];
  }

  v37 = v29;
  v13[17] = v36;
  v39 = v81;
  v38 = v82;
  if (v81)
  {
    v40 = v28;
    v41 = v39;
  }

  else
  {
    v42 = objc_allocWithZone(MEMORY[0x29EDC33E0]);
    v43 = v28;
    v41 = [v42 initWithHealthStore_];
  }

  v13[15] = v41;
  sub_29DFF5790(v84, &v85);
  if (v86)
  {
    sub_29DE8EE78(&v85, &v87);
    swift_unknownObjectRetain();
  }

  else
  {
    v44 = sub_29E2BD784();
    swift_unknownObjectRetain();
    v45 = v37;
    v46 = sub_29E2BD774();
    v88 = v44;
    v89 = MEMORY[0x29EDC3970];
    *&v87 = v46;
    if (v86)
    {
      sub_29DFF5D9C(&v85, &unk_2A1819970, &unk_2A181A6C0, MEMORY[0x29EDC3A40], sub_29DEB1BC4);
    }
  }

  sub_29DE8EE78(&v87, (v13 + 10));
  *(v13 + v67) = v68 & 1;
  v76 = v28;
  if (a11)
  {
    v47 = a11;
  }

  else
  {
    v48 = HKLogMenstrualCyclesCategory();
    v47 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v48 healthDataSource:v37];
  }

  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_eventSubmissionManager) = v47;
  *(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_experienceStore) = a12;
  v49 = a11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v50 = v13[17];
  v51 = sub_29E2C3734();
  v52 = v69;
  (*(*(v51 - 8) + 56))(v69, 1, 1, v51);
  sub_29E2C3714();
  v53 = v50;

  v54 = sub_29E2C3704();
  v55 = swift_allocObject();
  v56 = MEMORY[0x29EDCA390];
  v55[2] = v54;
  v55[3] = v56;
  v55[4] = v53;
  v55[5] = v13;
  v55[6] = v71;
  sub_29DFE96C0(0, 0, v52, &unk_29E2D8328, v55);

  [v13[15] registerObserver:v13 isUserInitiated:1];
  sub_29E2C04B4();

  v57 = sub_29E2C0504();
  v58 = sub_29E2C3A34();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = v49;
    v61 = swift_slowAlloc();
    *&v87 = v61;
    *v59 = 136315138;
    *&v85 = v13;

    v62 = sub_29E2C3464();
    v64 = sub_29DFAA104(v62, v63, &v87);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_29DE74000, v57, v58, "[%s] Initializing", v59, 0xCu);
    sub_29DE93B3C(v61);
    MEMORY[0x29ED82140](v61, -1, -1);
    MEMORY[0x29ED82140](v59, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_29DE8EF50(v75);
    sub_29DFF5D9C(v84, &unk_2A1819970, &unk_2A181A6C0, MEMORY[0x29EDC3A40], sub_29DEB1BC4);
    v72(v77, v74);
    sub_29DE93B3C(v80);
    (*(v78 + 8))(v82, v79);
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_29DE8EF50(v75);
    sub_29DFF5D9C(v84, &unk_2A1819970, &unk_2A181A6C0, MEMORY[0x29EDC3A40], sub_29DEB1BC4);
    v72(v77, v74);
    sub_29DE93B3C(v80);
    (*(v78 + 8))(v38, v79);
  }

  return v13;
}

id *sub_29DFEAC68()
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
    v16 = v1;
    v17 = v9;
    *v8 = 136315138;

    v10 = sub_29E2C3464();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] deinit", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  sub_29DE93B3C((v1 + 5));
  sub_29DE93B3C((v1 + 10));
  swift_unknownObjectRelease();

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_presentationLaunchSource;
  v14 = sub_29E2BE2A4();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  sub_29DE8EF50(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_completionHandler));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_29DFEAF18()
{
  sub_29DFEAC68();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PregnancyOffboardingCoordinator()
{
  result = qword_2A181A688;
  if (!qword_2A181A688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DFEAFC4()
{
  result = sub_29E2BE2A4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_29DFEB0C0(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[15];
  type metadata accessor for RoomInteractionEvent();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD00000000000002ALL;
  *(v6 + 24) = 0x800000029E2EEF80;
  *(v6 + 32) = 8;
  *(v6 + 33) = a1;
  *(v6 + 34) = 2;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = v5;
  v7 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_eventSubmissionManager);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v11[4] = sub_29DFF56F8;
  v11[5] = v8;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29DFE9648;
  v11[3] = &unk_2A24B73E8;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  [v7 submitEvent:v6 completion:v9];
  _Block_release(v9);
}

void sub_29DFEB24C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_flowType) = 2;
  sub_29DFEB3D0(a1, a2, ((a3 != 2) ^ a3) & 1);
  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {

        sub_29DFEC8DC();
      }

      else
      {
        *(v3 + 24) = a1;
        sub_29E2BF404();

        v7 = objc_allocWithZone(type metadata accessor for PregnancyOffboardingConfirmationViewController());
        sub_29E1F1714();
        v10 = v8;
        *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOffboardingConfirmationViewController_coordinator] = v3;

        v9 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController);

        [v9 showViewController:v10 sender:v4];
      }

      return;
    }

    v6 = 0;
    goto LABEL_16;
  }

  if (!sub_29DFEBE08())
  {
    v6 = 1;
LABEL_16:

    sub_29DFEC3C8(v6);
    return;
  }

  sub_29DFEC13C(1);
}

uint64_t sub_29DFEB3D0(uint64_t a1, uint64_t a2, int a3)
{
  v90 = a3;
  v86 = a1;
  v4 = *v3;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PregnancyFlowMetric(0);
  MEMORY[0x2A1C7C4A8](v87);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v92 = &v78 - v11;
  v80 = sub_29E2BCF04();
  v79 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v78 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v84 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v78 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v93 = &v78 - v23;
  v85 = type metadata accessor for PregnancyAnalyticModel(0);
  MEMORY[0x2A1C7C4A8](v85);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v88 = &v78 - v27;
  v91 = v3;
  v28 = v3[16];
  if (v28)
  {
    v29 = v4;
    v30 = v28;
    v83 = [v30 state];
    v31 = [v30 pregnancyStartDate];
    if (v31)
    {
      v32 = v93;
      v33 = v31;
      sub_29E2BCB44();

      v34 = *(v14 + 56);
      v34(v32, 0, 1, v13);
    }

    else
    {
      v34 = *(v14 + 56);
      v34(v93, 1, 1, v13);
    }

    v44 = [v30 pregnancyEndDate];
    if (v44)
    {
      v45 = v44;
      sub_29E2BCB44();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v34(v21, v46, 1, v13);
    v47 = [v30 sample];
    v82 = v29;
    if (v47 && (v48 = v47, v49 = [v47 _timeZoneName], v48, v49))
    {
      v50 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v81 = v51;
    }

    else
    {
      v50 = 0;
      v81 = 0;
    }

    *v25 = v83;
    sub_29DFF5AC8(v93, v18, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v52 = *(v14 + 48);
    if (v52(v18, 1, v13) == 1)
    {
      v53 = v21;
      v54 = v50;
      v55 = v84;
      sub_29E2BCBA4();
      v56 = v52(v18, 1, v13);
      v57 = v55;
      v50 = v54;
      v21 = v53;
      v58 = v82;
      if (v56 != 1)
      {
        sub_29DFF61C4(v18, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
      }
    }

    else
    {
      v57 = v84;
      (*(v14 + 32))(v84, v18, v13);
      v58 = v82;
    }

    v84 = v30;
    v59 = v85;
    (*(v14 + 32))(&v25[*(v85 + 20)], v57, v13);
    sub_29DFF5AC8(v21, &v25[*(v59 + 24)], &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v60 = v92;
    v61 = v81;
    if (!v81)
    {
      v62 = v78;
      sub_29E2BCEF4();
      v50 = sub_29E2BCED4();
      v61 = v63;
      (*(v79 + 8))(v62, v80);
    }

    v64 = MEMORY[0x29EDB9BC8];
    sub_29DFF61C4(v21, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    sub_29DFF61C4(v93, &unk_2A1A62850, v64);
    v65 = v88;
    v66 = &v25[*(v59 + 28)];
    *v66 = v50;
    v66[1] = v61;
    sub_29DFF5BB0(v25, v65, type metadata accessor for PregnancyAnalyticModel);
    if (v86)
    {
      if (v86 == 1)
      {
        v67 = 0xEF44496C61636964;
        v68 = 0x654D776569766552;
      }

      else if (v86 == 2)
      {
        v67 = 0xEC0000006E6F6974;
        v68 = 0x616D7269666E6F43;
      }

      else
      {
        v67 = 0x800000029E2F8500;
        v68 = 0xD000000000000014;
      }
    }

    else
    {
      v67 = 0xED000079636E616ELL;
      v68 = 0x6765725074696445;
    }

    v69 = v91;
    v70 = *(v91 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_analyticsLaunchSource);
    sub_29DFF5B48(v65, v60 + *(v87 + 36), type metadata accessor for PregnancyAnalyticModel);
    *v60 = 2;
    *(v60 + 8) = v68;
    *(v60 + 16) = v67;
    *(v60 + 24) = v90;
    *(v60 + 25) = v70;
    *(v60 + 26) = 4;
    v71 = v69[4];
    v72 = v89;
    sub_29DFF5B48(v60, v89, type metadata accessor for PregnancyFlowMetric);
    type metadata accessor for PregnancyFlowAnalyticsEvent();
    v73 = swift_allocObject();
    *(v73 + 16) = v71;
    sub_29DFF5BB0(v72, v73 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27PregnancyFlowAnalyticsEvent_metric, type metadata accessor for PregnancyFlowMetric);
    v74 = *(v69 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_eventSubmissionManager);
    v75 = swift_allocObject();
    *(v75 + 16) = v58;
    aBlock[4] = sub_29DFF5C18;
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24B74B0;
    v76 = _Block_copy(aBlock);
    v77 = v71;

    [v74 submitEvent:v73 completion:v76];
    _Block_release(v76);

    sub_29DFF5C3C(v60, type metadata accessor for PregnancyFlowMetric);
    return sub_29DFF5C3C(v65, type metadata accessor for PregnancyAnalyticModel);
  }

  else
  {
    result = HKShowSensitiveLogItems();
    if (result)
    {
      v36 = v5;
      sub_29E2C04B4();
      v37 = sub_29E2C0504();
      v38 = sub_29E2C3A14();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v95 = v40;
        *v39 = 136315138;
        aBlock[0] = v4;
        swift_getMetatypeMetadata();
        v41 = sub_29E2C3464();
        v43 = sub_29DFAA104(v41, v42, &v95);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_29DE74000, v37, v38, "[%s] Expected pregnancyModel in OffboardingCoordinator, skipping firing OnboardingAnalyticsEvent", v39, 0xCu);
        sub_29DE93B3C(v40);
        MEMORY[0x29ED82140](v40, -1, -1);
        MEMORY[0x29ED82140](v39, -1, -1);
      }

      return (*(v6 + 8))(v8, v36);
    }
  }

  return result;
}

BOOL sub_29DFEBE08()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v25 - v8;
  v10 = v1[18];
  if (v10)
  {
    v11 = v10;
    v12 = [v11 pregnancyEstimatedDueDate];
    v13 = v12 != 0;
    if (v12)
    {
      v14 = v12;
      sub_29E2BCB44();

      v15 = sub_29E2BCBB4();
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    }

    else
    {

      v23 = sub_29E2BCBB4();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    }

    sub_29DFF61C4(v9, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  }

  else
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      v25[1] = v2;
      *v18 = 136315138;
      swift_getMetatypeMetadata();
      v20 = sub_29E2C3464();
      v22 = sub_29DFAA104(v20, v21, v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%s] Not showing medical id", v18, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  return v13;
}

void sub_29DFEC13C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[18];
  if (v9)
  {
    v10 = objc_allocWithZone(type metadata accessor for PregnancyOffboardingReviewMedicalIDViewController());
    v11 = v9;
    sub_29E0A2324(v11, a1 & 1);
    v23 = v12;
    *&v12[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_coordinator] = v2;

    v13 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController);

    [v13 showViewController:v23 sender:v2];

    v14 = v23;
  }

  else
  {
    sub_29E2C04B4();
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A14();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      v24[1] = v4;
      *v17 = 136315138;
      swift_getMetatypeMetadata();
      v19 = sub_29E2C3464();
      v21 = sub_29DFAA104(v19, v20, v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%s] Tried to show ReviewMedicalIDViewController when MedicalIDData was nil", v17, 0xCu);
      sub_29DE93B3C(v18);
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_29DFEC3C8(char a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_shouldSkipUserNotificationsDeniedCheck);
  v5 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
  v6 = v3;
  v7 = [v5 init];
  type metadata accessor for OnboardingUserInfo();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  v10 = sub_29E2C31A4();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayFromAnalysis) = 0;
  v11 = v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
  *v11 = 5;
  *(v11 + 8) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLengthFromAnalysis) = 0;
  v12 = v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
  *v12 = 28;
  *(v12 + 8) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLengthFromAnalysis) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled) = 1;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled) = 1;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled) = 1;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible) = 0;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) = 1;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
  v14 = HKLogMenstrualCyclesCategory();
  v15 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v16 = sub_29E2C33A4();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  *(v8 + v13) = v17;
  v18 = MEMORY[0x29EDCA190];
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds) = MEMORY[0x29EDCA190];
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) = 1;
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation;
  v20 = sub_29E2BE2A4();
  (*(*(v20 - 8) + 56))(v8 + v19, 1, 1, v20);
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_ongoingCycleFactors) = v18;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors) = v18;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors) = v18;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) = v18;
  *(v8 + 16) = v7;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_healthStore) = v6;
  type metadata accessor for CountryGatingOnboardingHandler();
  v21 = swift_allocObject();
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0;
  *(v21 + 16) = v6;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) = v21;
  v22 = v6;
  v23 = v7;

  sub_29DFF75C8(0);

  if (v4 == 1)
  {
  }

  else
  {
    v24 = [objc_opt_self() currentNotificationCenter];
    v25 = swift_allocObject();
    v25[3] = 0;
    v25[4] = 0;
    v25[2] = v8;
    aBlock[4] = sub_29DFF5ABC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF6E81C;
    aBlock[3] = &unk_2A24B7460;
    v26 = _Block_copy(aBlock);

    [v24 getNotificationSettingsWithCompletionHandler_];
    _Block_release(v26);
  }

  sub_29DE9DC34(v2 + 80, aBlock);
  v27 = objc_allocWithZone(type metadata accessor for AddOngoingCycleFactorsViewController());

  sub_29E243954(v8, 2, 0, aBlock, v2, a1 & 1, 1);
  v29 = v28;
  *&v28[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate + 8] = &off_2A24B7388;
  swift_unknownObjectWeakAssign();
  [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController) showViewController:v29 sender:v2];
}

uint64_t sub_29DFEC8DC()
{
  v1 = v0;
  v53 = *v0;
  v2 = sub_29E2C2B34();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E2C2B54();
  v51 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29DFF5600(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v45 - v8;
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], v6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v45 - v14;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v45 - v17;
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v45 - v21;
  if (*(v0 + 18) == 1)
  {
    v45 = v15;
    v46 = v20;
    v23 = sub_29E2BCBB4();
    v24 = *(v23 - 8);
    v48 = v9;
    v25 = *(v24 + 56);
    v47 = v2;
    v25(v22, 1, 1, v23);
    v25(v18, 1, 1, v23);
    v26 = sub_29E2C3734();
    (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
    v27 = MEMORY[0x29EDB9BC8];
    sub_29DFF5AC8(v22, v15, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    sub_29DFF5AC8(v18, v12, &unk_2A1A62850, v27);
    sub_29E2C3714();

    v28 = sub_29E2C3704();
    v29 = *(v46 + 80);
    v30 = (v29 + 40) & ~v29;
    v31 = (v11 + v29 + v30) & ~v29;
    v46 = v3;
    v32 = (v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v33[2] = v28;
    v33[3] = MEMORY[0x29EDCA390];
    v33[4] = v1;
    v34 = v33 + v30;
    v9 = v48;
    sub_29DEB4EA4(v45, v34);
    sub_29DEB4EA4(v12, v33 + v31);
    *(v33 + v32) = v53;
    v3 = v46;
    sub_29E13C63C(0, 0, v9, &unk_29E2D8360, v33);

    sub_29DFF61C4(v18, &unk_2A1A62850, v27);
    v35 = v27;
    v2 = v47;
    sub_29DFF61C4(v22, &unk_2A1A62850, v35);
  }

  v36 = v1[3];
  if (v36 >> 62)
  {
    if (!sub_29E2C4484())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v37 = sub_29E2C3734();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    sub_29E2C3714();

    v38 = sub_29E2C3704();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = MEMORY[0x29EDCA390];
    v39[4] = v1;
    v39[5] = v53;
    sub_29E13C63C(0, 0, v9, &unk_29E2D8350, v39);
  }

LABEL_6:
  sub_29DE9408C(0, &qword_2A1A626C0);
  v40 = sub_29E2C3CF4();
  aBlock[4] = sub_29DFF6048;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B7618;
  v41 = _Block_copy(aBlock);

  v42 = v50;
  sub_29E2C2B44();
  v54 = MEMORY[0x29EDCA190];
  sub_29DFF65C0(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DFF5600(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  v43 = v52;
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v42, v43, v41);
  _Block_release(v41);

  (*(v3 + 8))(v43, v2);
  (*(v51 + 8))(v42, v49);
}

uint64_t sub_29DFED01C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = *v3;
  v6 = MEMORY[0x29EDB9BC8];
  v7 = MEMORY[0x29EDC9C68];
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v26 - v13;
  sub_29DFF5600(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], v7);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_29E2C3734();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_29DFF5AC8(a1, v14, &unk_2A1A62850, v6);
  sub_29DFF5AC8(a2, v11, &unk_2A1A62850, v6);
  sub_29E2C3714();

  v19 = sub_29E2C3704();
  v20 = *(v9 + 80);
  v21 = (v20 + 40) & ~v20;
  v22 = (v10 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  v24 = MEMORY[0x29EDCA390];
  v23[2] = v19;
  v23[3] = v24;
  v23[4] = v3;
  sub_29DEB4EA4(v14, v23 + v21);
  sub_29DEB4EA4(v11, v23 + v22);
  *(v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_29E13C63C(0, 0, v17, &unk_29E2D8368, v23);
}

uint64_t sub_29DFED2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = sub_29E2C0514();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  sub_29E2C3714();
  v5[25] = sub_29E2C3704();
  v8 = sub_29E2C36A4();
  v5[26] = v8;
  v5[27] = v7;

  return MEMORY[0x2A1C73D48](sub_29DFED3D0, v8, v7);
}

uint64_t sub_29DFED3D0()
{
  v1 = v0;
  v2 = v0[20];
  v3 = *(v2 + 32);
  v1[28] = v3;
  if (*(v2 + 24) >> 62)
  {
    sub_29DE9408C(0, &qword_2A181A6C8);
    v8 = v3;
    sub_29E2BF404();
    sub_29E2C4744();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v4 = v3;
    sub_29E2C4924();
    sub_29DE9408C(0, &qword_2A181A6C8);
  }

  sub_29DE9408C(0, &qword_2A181A6C8);
  v5 = sub_29E2C3604();
  v1[29] = v5;

  v1[2] = v1;
  v1[3] = sub_29DFED5C8;
  v6 = swift_continuation_init();
  sub_29DFF5F10(0, &qword_2A181A6D0);
  v1[17] = v7;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29E27F6E4;
  v1[13] = &unk_2A24B7690;
  v1[14] = v6;
  [v3 saveObjects:v5 withCompletion:v1 + 10];

  return MEMORY[0x2A1C73CC0](v1 + 2);
}

uint64_t sub_29DFED5C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_29DFED76C;
  }

  else
  {
    v5 = sub_29DFED6F8;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFED6F8()
{
  v1 = v0[28];
  v2 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_29DFED76C()
{
  v27 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);

  swift_willThrow();

  sub_29E2C04B4();
  v4 = v1;
  v5 = sub_29E2C0504();
  v6 = sub_29E2C3A14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = *(v0 + 184);
    v25 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315394;
    *(v0 + 144) = v10;
    swift_getMetatypeMetadata();
    v13 = sub_29E2C3464();
    v15 = sub_29DFAA104(v13, v14, v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v0 + 152) = v7;
    v16 = v7;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, v26);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v5, v6, "[%s] Error when saving samples %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    v22 = *(v0 + 176);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

void sub_29DFED9C4()
{
  sub_29DFF5600(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v25 = &v23 - v1;
  v26 = sub_29E2BC4D4();
  v24 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BC904();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v23 - v9;
  v11 = sub_29E2BE2A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFEDFD4(nullsub_1, 0);
  (*(v12 + 104))(v14, *MEMORY[0x29EDC1D80], v11);
  sub_29DFF65C0(&qword_2A181A6E8, MEMORY[0x29EDC1D90]);
  v15 = sub_29E2C3304();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    v23 = [objc_opt_self() sharedApplication];
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v16 = [qword_2A1A67F80 bundleURL];
    sub_29E2BC8D4();

    sub_29E2BC8B4();
    v17 = *(v5 + 8);
    v17(v7, v4);
    sub_29E2BDF94();

    sub_29DF24A0C(8);
    MEMORY[0x29ED78C70](47, 0xE100000000000000);
    sub_29DF25054(2);
    sub_29DF2544C(0, 1);
    v18 = v25;
    sub_29E2BC474();
    if ((*(v5 + 48))(v18, 1, v4) == 1)
    {
      sub_29DFF61C4(v18, &qword_2A181A1F0, MEMORY[0x29EDB9B18]);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_29E2C4584();

      v27 = 0xD00000000000001ALL;
      v28 = 0x800000029E2F6EE0;
      sub_29DFF65C0(&qword_2A181A6F0, MEMORY[0x29EDB9940]);
      v22 = sub_29E2C48D4();
      MEMORY[0x29ED7FCC0](v22);

      sub_29E2C4724();
      __break(1u);
    }

    else
    {
      (*(v24 + 8))(v3, v26);
      (*(v5 + 32))(v10, v18, v4);
      v19 = sub_29E2BC8C4();
      v17(v10, v4);
      sub_29E18628C(MEMORY[0x29EDCA190]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_29DFF65C0(&qword_2A18177A8, type metadata accessor for OpenExternalURLOptionsKey);
      v20 = sub_29E2C31F4();

      v21 = v23;
      [v23 openURL:v19 options:v20 completionHandler:0];
    }
  }
}

void sub_29DFEDFD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    aBlock[0] = v6;
    *v14 = 136315138;
    swift_getMetatypeMetadata();
    v16 = sub_29E2C3464();
    v18 = sub_29DFAA104(v16, v17, &v29);
    v27 = v7;
    v19 = a1;
    v20 = v18;

    *(v14 + 4) = v20;
    a1 = v19;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%s] Dismissing", v14, 0xCu);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    v21 = v14;
    a2 = v28;
    MEMORY[0x29ED82140](v21, -1, -1);

    (*(v8 + 8))(v10, v27);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_navigationController);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  aBlock[4] = sub_29DE9B5DC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B75C8;
  v24 = _Block_copy(aBlock);
  v25 = v22;

  [v25 dismissViewControllerAnimated:1 completion:v24];
  _Block_release(v24);
}

uint64_t sub_29DFEE2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v8 = sub_29E2C0514();
  v7[28] = v8;
  v7[29] = *(v8 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  sub_29E2C3714();
  v7[33] = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  v7[34] = v10;
  v7[35] = v9;

  return MEMORY[0x2A1C73D48](sub_29DFEE41C, v10, v9);
}

uint64_t sub_29DFEE41C()
{
  v49 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  if (os_log_type_enabled(v1, v2))
  {
    v46 = v0[32];
    v4 = v0[28];
    v3 = v0[29];
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136315138;
    v0[20] = v5;
    swift_getMetatypeMetadata();
    v8 = sub_29E2C3464();
    v10 = sub_29DFAA104(v8, v9, &v48);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Update medical ID if necessary", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);

    v11 = *(v3 + 8);
    v11(v46, v4);
  }

  else
  {
    v12 = v0[32];
    v13 = v0[28];
    v14 = v0[29];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[36] = v11;
  v15 = *(v0[22] + 144);
  v0[37] = v15;
  if (v15)
  {
    v16 = v0[27];
    sub_29DFF5AC8(v0[23], v16, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v17 = sub_29E2BCBB4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v19(v16, 1, v17);
    v21 = v15;
    v22 = 0;
    if (v20 != 1)
    {
      v23 = v0[27];
      v22 = sub_29E2BCB04();
      (*(v18 + 8))(v23, v17);
    }

    v24 = v0[26];
    v25 = v0[24];
    [v21 setPregnancyStartDate_];

    sub_29DFF5AC8(v25, v24, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    if (v19(v24, 1, v17) == 1)
    {
      v26 = 0;
    }

    else
    {
      v39 = v0[26];
      v26 = sub_29E2BCB04();
      (*(v18 + 8))(v39, v17);
    }

    v40 = v0[22];
    [v21 setPregnancyEstimatedDueDate_];

    v41 = *(v40 + 136);
    v0[2] = v0;
    v0[7] = v0 + 39;
    v0[3] = sub_29DFEE9A0;
    v42 = swift_continuation_init();
    sub_29DFF5F10(0, &qword_2A1820990);
    v0[17] = v43;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29E27ED68;
    v0[13] = &unk_2A24B7668;
    v0[14] = v42;
    [v41 updateMedicalIDData:v21 completion:v0 + 10];

    return MEMORY[0x2A1C73CC0](v0 + 2);
  }

  else
  {

    sub_29E2C04B4();
    v27 = sub_29E2C0504();
    v28 = sub_29E2C3A34();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[31];
    v31 = v0[28];
    if (v29)
    {
      v32 = v0[25];
      v47 = v0[31];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      v0[19] = v32;
      swift_getMetatypeMetadata();
      v35 = sub_29E2C3464();
      v37 = sub_29DFAA104(v35, v36, &v48);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29DE74000, v27, v28, "[%s] Medical ID data is nil. Failed to update Medical ID", v33, 0xCu);
      sub_29DE93B3C(v34);
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v33, -1, -1);

      v38 = v47;
    }

    else
    {

      v38 = v30;
    }

    v11(v38, v31);

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_29DFEE9A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_29DFEEB70;
  }

  else
  {
    v5 = sub_29DFEEAD0;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFEEAD0()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29DFEEB70()
{
  v26 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  swift_willThrow();

  sub_29E2C04B4();
  v3 = v1;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v23 = *(v0 + 240);
    v24 = *(v0 + 288);
    v7 = *(v0 + 224);
    v8 = *(v0 + 200);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315394;
    *(v0 + 144) = v8;
    swift_getMetatypeMetadata();
    v11 = sub_29E2C3464();
    v13 = sub_29DFAA104(v11, v12, v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 168) = v6;
    v14 = v6;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v15 = sub_29E2C3464();
    v17 = sub_29DFAA104(v15, v16, v25);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%s] Unable to update Medical ID with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    v24(v23, v7);
  }

  else
  {
    v18 = *(v0 + 288);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_29DFEEDF8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29E2BCC24();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v53 = v6;
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v50 - v12;
  sub_29E2C04B4();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();
  v16 = os_log_type_enabled(v14, v15);
  v55 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v52 = v7;
    v18 = v17;
    v50 = swift_slowAlloc();
    v51 = v8;
    v58 = v50;
    *v18 = 136315138;
    aBlock[0] = v3;
    swift_getMetatypeMetadata();
    v19 = sub_29E2C3464();
    v21 = a1;
    v22 = v5;
    v23 = v4;
    v24 = v10;
    v25 = sub_29DFAA104(v19, v20, &v58);

    *(v18 + 4) = v25;
    v10 = v24;
    v4 = v23;
    v5 = v22;
    a1 = v21;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%s] Update medical ID if necessary", v18, 0xCu);
    v26 = v50;
    sub_29DE93B3C(v50);
    v8 = v51;
    MEMORY[0x29ED82140](v26, -1, -1);
    v27 = v18;
    v7 = v52;
    MEMORY[0x29ED82140](v27, -1, -1);
  }

  v28 = *(v8 + 8);
  v28(v13, v7);
  v29 = v56;
  v30 = *(v56 + 144);
  if (v30)
  {
    v31 = v30;
    [v31 setPregnancyStartDate_];
    [v31 setPregnancyEstimatedDueDate_];
    v32 = *(v29 + 136);
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = v54;
    (*(v5 + 16))(v54, a1, v4);
    v35 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v36 = (v53 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    (*(v5 + 32))(v37 + v35, v34, v4);
    *(v37 + v36) = v55;
    aBlock[4] = sub_29DFF63E0;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24B7730;
    v38 = _Block_copy(aBlock);

    [v32 updateMedicalIDData:v31 completion:v38];
    _Block_release(v38);
  }

  else
  {
    sub_29E2C04B4();
    v39 = sub_29E2C0504();
    v40 = sub_29E2C3A34();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v7;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136315138;
      aBlock[0] = v55;
      swift_getMetatypeMetadata();
      v44 = sub_29E2C3464();
      v46 = v10;
      v47 = sub_29DFAA104(v44, v45, &v58);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_29DE74000, v39, v40, "[%s] Medical ID data is nil. Failed to update Medical ID", v42, 0xCu);
      sub_29DE93B3C(v43);
      MEMORY[0x29ED82140](v43, -1, -1);
      MEMORY[0x29ED82140](v42, -1, -1);

      v48 = v46;
      v49 = v41;
    }

    else
    {

      v48 = v10;
      v49 = v7;
    }

    v28(v48, v49);
  }
}

uint64_t sub_29DFEF338(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v53 = a5;
  v50 = a4;
  v7 = sub_29E2BCC24();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  sub_29DFF5600(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_29E2C0514();
  v52 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v47 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v49 = result;
      sub_29E2C04B4();
      v19 = sub_29E2C0504();
      v20 = sub_29E2C3A34();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v54 = v48;
        *v21 = 136315138;
        v55 = v53;
        swift_getMetatypeMetadata();
        v22 = sub_29E2C3464();
        v24 = sub_29DFAA104(v22, v23, &v54);
        v47 = v12;
        v25 = v24;

        *(v21 + 4) = v25;
        _os_log_impl(&dword_29DE74000, v19, v20, "[%s] Successfully updated Medical ID", v21, 0xCu);
        v26 = v48;
        sub_29DE93B3C(v48);
        MEMORY[0x29ED82140](v26, -1, -1);
        v27 = v21;
        v28 = v53;
        MEMORY[0x29ED82140](v27, -1, -1);

        (*(v52 + 8))(v17, v47);
      }

      else
      {

        (*(v52 + 8))(v17, v12);
        v28 = v53;
      }

      v43 = sub_29E2C3734();
      (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
      v44 = v51;
      (*(v51 + 16))(&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v7);
      v45 = (*(v44 + 80) + 40) & ~*(v44 + 80);
      v46 = swift_allocObject();
      *(v46 + 2) = 0;
      *(v46 + 3) = 0;
      *(v46 + 4) = v49;
      (*(v44 + 32))(&v46[v45], &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      *&v46[(v8 + v45 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;
      sub_29E13C63C(0, 0, v11, &unk_29E2D8378, v46);
    }

    else
    {
      sub_29E2C04B4();
      v29 = a2;
      v30 = sub_29E2C0504();
      v31 = sub_29E2C3A14();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v53;
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v54 = v35;
        *v34 = 136315394;
        v55 = v33;
        swift_getMetatypeMetadata();
        v36 = sub_29E2C3464();
        v38 = sub_29DFAA104(v36, v37, &v54);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v55 = a2;
        v39 = a2;
        sub_29DFF5734(0, &qword_2A1A5DFD0, &qword_2A1A61C90, MEMORY[0x29EDC9F18], sub_29DEB1BC4);
        v40 = sub_29E2C3464();
        v42 = sub_29DFAA104(v40, v41, &v54);

        *(v34 + 14) = v42;
        _os_log_impl(&dword_29DE74000, v30, v31, "[%s] Unable to update Medical ID with error: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v35, -1, -1);
        MEMORY[0x29ED82140](v34, -1, -1);
      }

      else
      {
      }

      return (*(v52 + 8))(v14, v12);
    }
  }

  return result;
}

uint64_t sub_29DFEF910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_29E2BCC24();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_29E2C0514();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29DFEFA3C, 0, 0);
}

uint64_t sub_29DFEFA3C()
{
  v23 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    v0[4] = v6;
    swift_getMetatypeMetadata();
    v9 = sub_29E2C3464();
    v11 = sub_29DFAA104(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[2] = 0xD000000000000026;
    v0[3] = 0x800000029E2F8550;
    v12 = sub_29E2C3464();
    v14 = sub_29DFAA104(v12, v13, &v22);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Attempting to update the setup record: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    v15 = *(v5 + 8);
    v15(v3, v4);
  }

  else
  {
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[12];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v0[15] = v15;
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_29DFEFC88;
  v20 = v0[6];

  return sub_29DFF0130(0, v20, 1);
}

uint64_t sub_29DFEFC88()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2A1C73D48](sub_29DFEFDD8, 0, 0);
}

uint64_t sub_29DFEFDD8()
{
  v36 = v0;
  v1 = HKShowSensitiveLogItems();
  v2 = v0[17];
  if (v1)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = v0[6];
    sub_29E2C04B4();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v2;
    v8 = sub_29E2C0504();
    v9 = sub_29E2C3A14();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    v12 = v0[15];
    v13 = v0[13];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];
    if (v10)
    {
      v34 = v0[15];
      v33 = v0[13];
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v18 = 136315650;
      v19 = sub_29E2C4AE4();
      v32 = v15;
      v21 = sub_29DFAA104(v19, v20, &v35);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      sub_29DFF65C0(&qword_2A1A616C0, MEMORY[0x29EDB9C08]);
      v22 = sub_29E2C48D4();
      v24 = v23;
      (*(v17 + 8))(v14, v16);
      v25 = sub_29DFAA104(v22, v24, &v35);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2112;
      v26 = v11;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v27;
      *v30 = v27;
      _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Unable to update the setup record with UUID %s error: %@", v18, 0x20u);
      sub_29DFF5D9C(v30, &qword_2A1A619E0, &qword_2A1A619F0, 0x29EDC9738, sub_29DE9408C);
      MEMORY[0x29ED82140](v30, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);

      v34(v33, v32);
    }

    else
    {

      (*(v17 + 8))(v14, v16);
      v12(v13, v15);
    }
  }

  else
  {
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_29DFF0130(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 488) = a2;
  *(v4 + 496) = v3;
  *(v4 + 785) = a3;
  *(v4 + 480) = a1;
  *(v4 + 504) = *v3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = swift_task_alloc();
  sub_29DFF5600(0, &unk_2A1A616B0, MEMORY[0x29EDB9C08], v5);
  *(v4 + 528) = swift_task_alloc();
  v6 = sub_29E2BCC24();
  *(v4 + 536) = v6;
  *(v4 + 544) = *(v6 - 8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v7 = sub_29E2BCBB4();
  *(v4 + 584) = v7;
  *(v4 + 592) = *(v7 - 8);
  *(v4 + 600) = swift_task_alloc();
  v8 = sub_29E2C0514();
  *(v4 + 608) = v8;
  *(v4 + 616) = *(v8 - 8);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 648) = swift_task_alloc();
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  sub_29E2C3714();
  *(v4 + 672) = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  *(v4 + 680) = v10;
  *(v4 + 688) = v9;

  return MEMORY[0x2A1C73D48](sub_29DFF0428, v10, v9);
}

uint64_t sub_29DFF0428()
{
  v22 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[83];
    v4 = v0[77];
    v5 = v0[76];
    v6 = v0[63];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v0[55] = v6;
    swift_getMetatypeMetadata();
    v9 = sub_29E2C3464();
    v11 = sub_29DFAA104(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Updating setup completion record", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    v12 = *(v4 + 8);
    v12(v3, v5);
  }

  else
  {
    v13 = v0[83];
    v14 = v0[77];
    v15 = v0[76];

    v12 = *(v14 + 8);
    v12(v13, v15);
  }

  v0[87] = v12;
  v16 = v0[62];
  if (*(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_experienceStore))
  {
    v17 = *(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31PregnancyOffboardingCoordinator_unitTest_experienceStore);
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x29EDC33A0]) initWithHealthStore_];
  }

  v0[88] = v17;
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_29DFF06D0;
  v18 = swift_continuation_init();
  sub_29DFF5DF8();
  v0[33] = v19;
  v0[26] = MEMORY[0x29EDCA5F8];
  v0[27] = 1107296256;
  v0[28] = sub_29E0CEEB4;
  v0[29] = &unk_2A24B7528;
  v0[30] = v18;
  swift_unknownObjectRetain();
  [v17 fetchExperienceModelWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DFF06D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 712) = v2;
  v3 = *(v1 + 688);
  v4 = *(v1 + 680);
  if (v2)
  {
    v5 = sub_29DFF1BE4;
  }

  else
  {
    v5 = sub_29DFF0800;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFF0800()
{
  v141 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);
  *(v0 + 720) = v2;
  v3 = [v2 pregnancyModeSetupCompletionSet];
  sub_29DE9408C(0, &qword_2A1A5E100);
  sub_29DFF5E88();
  v4 = sub_29E2C3814();

  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  sub_29DFFC758(sub_29DFF5EF0, v5, v4);
  v7 = v6;
  *(v0 + 728) = v6;

  if (v7)
  {
    v8 = *(v0 + 785);
    v9 = [v7 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_29DFF65C0(&qword_2A181A6E0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v10 = sub_29E2C3814();

    *(v0 + 472) = v10;
    v11 = [v7 postPregnancyFeatureAdjustmentCompletionLog];
    v12 = sub_29E2C3214();

    if (v8 == 1)
    {
      v13 = *MEMORY[0x29EDC3338];
      if (sub_29E09237C(*MEMORY[0x29EDC3338], v10))
      {
        v14 = *(v0 + 600);

        sub_29E2BCBA4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140[0] = v12;
        sub_29E008E7C(v14, v13, isUniquelyReferenced_nonNull_native);
      }
    }

    v16 = *(v0 + 480);
    v133 = [v7 version];
    v17 = *(v0 + 576);
    if (v16)
    {
      v18 = *(v0 + 568);
      v19 = *(v0 + 544);
      v20 = *(v0 + 536);
      v21 = *(v0 + 528);
      v22 = [*(v0 + 480) UUID];
      sub_29E2BCC04();

      v23 = *(v19 + 32);
      v23(v21, v18, v20);
      (*(v19 + 56))(v21, 0, 1, v20);
      v23(v17, v21, v20);
    }

    else
    {
      v47 = *(v0 + 544);
      v48 = *(v0 + 536);
      v49 = *(v0 + 528);
      (*(v47 + 56))(v49, 1, 1, v48);
      v50 = [v7 sampleUUID];
      sub_29E2BCC04();

      if ((*(v47 + 48))(v49, 1, v48) != 1)
      {
        sub_29DFF61C4(*(v0 + 528), &unk_2A1A616B0, MEMORY[0x29EDB9C08]);
      }
    }

    v51 = [v7 educationalStepsReviewDate];
    if (v51)
    {
      v52 = v51;
      sub_29E2BCB44();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = *(*(v0 + 592) + 56);
    v55 = 1;
    v54(*(v0 + 520), v53, 1, *(v0 + 584));
    v56 = [v7 configurationStepsReviewDate];
    if (v56)
    {
      v57 = v56;
      sub_29E2BCB44();

      v55 = 0;
    }

    v58 = *(v0 + 592);
    v59 = *(v0 + 584);
    v60 = *(v0 + 520);
    v54(*(v0 + 512), v55, 1, v59);
    *(v0 + 736) = *(v0 + 472);
    v131 = sub_29E2BCBE4();
    v61 = *(v58 + 48);
    if (v61(v60, 1, v59) == 1)
    {
      v128 = 0;
    }

    else
    {
      v62 = *(v0 + 592);
      v63 = *(v0 + 584);
      v64 = *(v0 + 520);
      v128 = sub_29E2BCB04();
      (*(v62 + 8))(v64, v63);
    }

    v65 = *(v0 + 584);
    v66 = *(v0 + 512);
    if (v61(v66, 1, v65) == 1)
    {
      v67 = 0;
    }

    else
    {
      v68 = *(v0 + 592);
      v67 = sub_29E2BCB04();
      (*(v68 + 8))(v66, v65);
    }

    v118 = *(v0 + 576);
    v69 = *(v0 + 544);
    v70 = *(v0 + 536);
    v122 = *(v0 + 488);
    v125 = *(v0 + 560);
    v71 = objc_allocWithZone(MEMORY[0x29EDC33D8]);
    v72 = sub_29E2C3804();
    v73 = sub_29E2C31F4();

    v74 = [v71 initWithVersion:v133 sampleUUID:v131 educationalStepsReviewDate:v128 configurationStepsReviewDate:v67 pregnancyAdjustedFeaturesSet:v72 postPregnancyFeatureAdjustmentCompletionLog:v73];
    *(v0 + 744) = v74;

    v135 = *(v69 + 8);
    v135(v118, v70);
    sub_29E2C04B4();
    v75 = *(v69 + 16);
    v75(v125, v122, v70);
    v76 = sub_29E2C0504();
    v77 = sub_29E2C3A34();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 696);
    v136 = *(v0 + 608);
    loga = *(v0 + 656);
    if (v78)
    {
      v120 = *(v0 + 568);
      v80 = *(v0 + 560);
      v132 = v74;
      v81 = *(v0 + 536);
      v123 = v77;
      v82 = *(v0 + 504);
      v129 = *(v0 + 696);
      v83 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v140[0] = v126;
      *v83 = 136315394;
      *(v0 + 432) = v82;
      swift_getMetatypeMetadata();
      v84 = sub_29E2C3464();
      v86 = sub_29DFAA104(v84, v85, v140);

      *(v83 + 4) = v86;
      *(v83 + 12) = 2080;
      v75(v120, v80, v81);
      v87 = sub_29E2C3464();
      v89 = v88;
      v90 = v81;
      v74 = v132;
      v135(v80, v90);
      v91 = sub_29DFAA104(v87, v89, v140);

      *(v83 + 14) = v91;
      _os_log_impl(&dword_29DE74000, v76, v123, "[%s] Save the new setup completion record, merging with record for %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v126, -1, -1);
      MEMORY[0x29ED82140](v83, -1, -1);

      v129(loga, v136);
    }

    else
    {
      v92 = *(v0 + 560);
      v93 = *(v0 + 536);

      v135(v92, v93);
      v79(loga, v136);
    }

    v94 = *(v0 + 704);
    v95 = sub_29E2BCBE4();
    *(v0 + 752) = v95;
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 784;
    *(v0 + 152) = sub_29DFF1570;
    v96 = swift_continuation_init();
    sub_29DFF5F10(0, &qword_2A1820990);
    *(v0 + 392) = v97;
    *(v0 + 336) = MEMORY[0x29EDCA5F8];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_29E27ED68;
    *(v0 + 360) = &unk_2A24B7578;
    *(v0 + 368) = v96;
    [v94 persistSetupRecord:v74 mergeWith:v95 completion:v0 + 336];
    v98 = v0 + 144;
  }

  else
  {
    v24 = *(v0 + 552);
    v25 = *(v0 + 544);
    v26 = *(v0 + 536);
    v27 = *(v0 + 488);
    sub_29E2C04B4();
    v28 = *(v25 + 16);
    v28(v24, v27, v26);
    v29 = sub_29E2C0504();
    v30 = sub_29E2C3A14();
    log = v29;
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 696);
    v33 = *(v0 + 648);
    v34 = *(v0 + 608);
    if (v31)
    {
      v127 = v30;
      v35 = *(v0 + 568);
      v119 = *(v0 + 552);
      v36 = *(v0 + 544);
      v37 = *(v0 + 536);
      v134 = *(v0 + 696);
      v38 = *(v0 + 504);
      v130 = *(v0 + 648);
      v39 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v140[0] = v121;
      *v39 = 136315394;
      *(v0 + 424) = v38;
      swift_getMetatypeMetadata();
      v40 = sub_29E2C3464();
      v124 = v34;
      v42 = sub_29DFAA104(v40, v41, v140);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v28(v35, v119, v37);
      v43 = sub_29E2C3464();
      v45 = v44;
      (*(v36 + 8))(v119, v37);
      v46 = sub_29DFAA104(v43, v45, v140);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_29DE74000, log, v127, "[%s] No existing setup record with sampleUUID: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v121, -1, -1);
      MEMORY[0x29ED82140](v39, -1, -1);

      swift_unknownObjectRelease();
      v134(v130, v124);
    }

    else
    {
      v99 = *(v0 + 552);
      v100 = *(v0 + 544);
      v101 = *(v0 + 536);

      swift_unknownObjectRelease();
      (*(v100 + 8))(v99, v101);
      v32(v33, v34);
    }

    sub_29E2C04B4();
    v102 = sub_29E2C0504();
    v103 = sub_29E2C3A34();
    v104 = os_log_type_enabled(v102, v103);
    v105 = *(v0 + 696);
    v106 = *(v0 + 640);
    v107 = *(v0 + 608);
    if (v104)
    {
      v108 = *(v0 + 504);
      logb = *(v0 + 696);
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v140[0] = v110;
      *v109 = 136315138;
      *(v0 + 416) = v108;
      swift_getMetatypeMetadata();
      v111 = sub_29E2C3464();
      v113 = sub_29DFAA104(v111, v112, v140);

      *(v109 + 4) = v113;
      _os_log_impl(&dword_29DE74000, v102, v103, "[%s] Triggering nano sync", v109, 0xCu);
      sub_29DE93B3C(v110);
      MEMORY[0x29ED82140](v110, -1, -1);
      MEMORY[0x29ED82140](v109, -1, -1);

      (logb)(v106, v107);
    }

    else
    {

      v105(v106, v107);
    }

    v114 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
    *(v0 + 768) = v114;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_29DFF1978;
    v115 = swift_continuation_init();
    sub_29DFF5F10(0, &qword_2A181A6D0);
    *(v0 + 328) = v116;
    *(v0 + 272) = MEMORY[0x29EDCA5F8];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_29E27F6E4;
    *(v0 + 296) = &unk_2A24B7550;
    *(v0 + 304) = v115;
    [v114 forceNanoSyncWithOptions:0 completion:v0 + 272];
    v98 = v0 + 80;
  }

  return MEMORY[0x2A1C73CC0](v98);
}

uint64_t sub_29DFF1570()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 760) = v2;
  v3 = *(v1 + 688);
  v4 = *(v1 + 680);
  if (v2)
  {
    v5 = sub_29DFF2050;
  }

  else
  {
    v5 = sub_29DFF16A0;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFF16A0()
{
  v23 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);

  swift_unknownObjectRelease();

  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A34();
  if (os_log_type_enabled(v4, v5))
  {
    v21 = *(v0 + 696);
    v6 = *(v0 + 640);
    v7 = *(v0 + 608);
    v8 = *(v0 + 504);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v0 + 416) = v8;
    swift_getMetatypeMetadata();
    v11 = sub_29E2C3464();
    v13 = sub_29DFAA104(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%s] Triggering nano sync", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    v21(v6, v7);
  }

  else
  {
    v14 = *(v0 + 696);
    v15 = *(v0 + 640);
    v16 = *(v0 + 608);

    v14(v15, v16);
  }

  v17 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
  *(v0 + 768) = v17;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_29DFF1978;
  v18 = swift_continuation_init();
  sub_29DFF5F10(0, &qword_2A181A6D0);
  *(v0 + 328) = v19;
  *(v0 + 272) = MEMORY[0x29EDCA5F8];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_29E27F6E4;
  *(v0 + 296) = &unk_2A24B7550;
  *(v0 + 304) = v18;
  [v17 forceNanoSyncWithOptions:0 completion:v0 + 272];

  return MEMORY[0x2A1C73CC0](v0 + 80);
}

uint64_t sub_29DFF1978()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 776) = v2;
  v3 = *(v1 + 688);
  v4 = *(v1 + 680);
  if (v2)
  {
    v5 = sub_29DFF24E8;
  }

  else
  {
    v5 = sub_29DFF1AA8;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFF1AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DFF1BE4()
{
  v39 = v0;
  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = v0[89];
  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v35 = v0[79];
    v36 = v0[87];
    v5 = v0[76];
    v6 = v0[63];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315394;
    v0[51] = v6;
    swift_getMetatypeMetadata();
    v9 = sub_29E2C3464();
    v11 = sub_29DFAA104(v9, v10, v38);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[58] = v1;
    v12 = v1;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v13 = sub_29E2C3464();
    v15 = sub_29DFAA104(v13, v14, v38);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%s] Unable to update setup record, error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    v36(v35, v5);
  }

  else
  {
    v16 = v0[87];
    v17 = v0[79];
    v18 = v0[76];

    v16(v17, v18);
  }

  sub_29E2C04B4();
  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[87];
  v23 = v0[80];
  v24 = v0[76];
  if (v21)
  {
    v25 = v0[63];
    v37 = v0[87];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38[0] = v27;
    *v26 = 136315138;
    v0[52] = v25;
    swift_getMetatypeMetadata();
    v28 = sub_29E2C3464();
    v30 = sub_29DFAA104(v28, v29, v38);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%s] Triggering nano sync", v26, 0xCu);
    sub_29DE93B3C(v27);
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v26, -1, -1);

    v37(v23, v24);
  }

  else
  {

    v22(v23, v24);
  }

  v31 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
  v0[96] = v31;
  v0[10] = v0;
  v0[11] = sub_29DFF1978;
  v32 = swift_continuation_init();
  sub_29DFF5F10(0, &qword_2A181A6D0);
  v0[41] = v33;
  v0[34] = MEMORY[0x29EDCA5F8];
  v0[35] = 1107296256;
  v0[36] = sub_29E27F6E4;
  v0[37] = &unk_2A24B7550;
  v0[38] = v32;
  [v31 forceNanoSyncWithOptions:0 completion:v0 + 34];

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29DFF2050()
{
  v43 = v0;
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[91];
  v4 = v0[90];
  swift_willThrow();

  swift_unknownObjectRelease();

  v5 = v0[95];
  sub_29E2C04B4();
  v6 = v5;
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A14();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v0[79];
    v40 = v0[87];
    v9 = v0[76];
    v10 = v0[63];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v42[0] = v12;
    *v11 = 136315394;
    v0[51] = v10;
    swift_getMetatypeMetadata();
    v13 = sub_29E2C3464();
    v15 = sub_29DFAA104(v13, v14, v42);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[58] = v5;
    v16 = v5;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, v42);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%s] Unable to update setup record, error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    v40(v39, v9);
  }

  else
  {
    v20 = v0[87];
    v21 = v0[79];
    v22 = v0[76];

    v20(v21, v22);
  }

  sub_29E2C04B4();
  v23 = sub_29E2C0504();
  v24 = sub_29E2C3A34();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[87];
  v27 = v0[80];
  v28 = v0[76];
  if (v25)
  {
    v29 = v0[63];
    v41 = v0[87];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136315138;
    v0[52] = v29;
    swift_getMetatypeMetadata();
    v32 = sub_29E2C3464();
    v34 = sub_29DFAA104(v32, v33, v42);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_29DE74000, v23, v24, "[%s] Triggering nano sync", v30, 0xCu);
    sub_29DE93B3C(v31);
    MEMORY[0x29ED82140](v31, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);

    v41(v27, v28);
  }

  else
  {

    v26(v27, v28);
  }

  v35 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
  v0[96] = v35;
  v0[10] = v0;
  v0[11] = sub_29DFF1978;
  v36 = swift_continuation_init();
  sub_29DFF5F10(0, &qword_2A181A6D0);
  v0[41] = v37;
  v0[34] = MEMORY[0x29EDCA5F8];
  v0[35] = 1107296256;
  v0[36] = sub_29E27F6E4;
  v0[37] = &unk_2A24B7550;
  v0[38] = v36;
  [v35 forceNanoSyncWithOptions:0 completion:v0 + 34];

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29DFF24E8()
{
  v26 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);

  swift_willThrow();

  sub_29E2C04B4();
  v3 = v1;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 776);
    v23 = *(v0 + 624);
    v24 = *(v0 + 696);
    v7 = *(v0 + 608);
    v8 = *(v0 + 504);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315394;
    *(v0 + 400) = v8;
    swift_getMetatypeMetadata();
    v11 = sub_29E2C3464();
    v13 = sub_29DFAA104(v11, v12, v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 456) = v6;
    v14 = v6;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, v25);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%s] Unable to trigger nanosync with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    v24(v23, v7);
  }

  else
  {
    v18 = *(v0 + 696);
    v19 = *(v0 + 624);
    v20 = *(v0 + 608);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_29DFF27F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = sub_29E2C0514();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_29E2C3714();
  v6[9] = sub_29E2C3704();
  v8 = swift_task_alloc();
  v6[10] = v8;
  *v8 = v6;
  v8[1] = sub_29DFF2900;

  return sub_29E27F790();
}

uint64_t sub_29DFF2900(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  v5 = sub_29E2C36A4();
  if (v1)
  {
    v6 = sub_29DFF2C10;
  }

  else
  {
    v6 = sub_29DFF2A60;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29DFF2A60()
{
  v19 = v0;
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[3];
    v3 = *(v2 + 144);
    *(v2 + 144) = v0[11];
  }

  else
  {
    sub_29E2C04B4();
    v4 = sub_29E2C0504();
    v5 = sub_29E2C3A14();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    if (v6)
    {
      v10 = v0[4];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v0[2] = v10;
      swift_getMetatypeMetadata();
      v13 = sub_29E2C3464();
      v15 = sub_29DFAA104(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29DE74000, v4, v5, "[%s] Medical ID came back nil. No need to show Medical ID content", v11, 0xCu);
      sub_29DE93B3C(v12);
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_29DFF2C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DFF2C80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v27 - v10;
  v12 = v2[18];
  if (v12)
  {
    v13 = v12;
    v14 = [v13 pregnancyStartDate];
    if (v14)
    {
      v15 = v14;
      sub_29E2BCB44();

      v16 = sub_29E2BCBB4();
      (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    }

    else
    {

      v26 = sub_29E2BCBB4();
      (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    }

    return sub_29DEB4EA4(v11, a1);
  }

  else
  {
    sub_29E2C04B4();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      v27[1] = v4;
      *v19 = 136315138;
      swift_getMetatypeMetadata();
      v21 = sub_29E2C3464();
      v23 = sub_29DFAA104(v21, v22, v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%s] Not showing medical id", v19, 0xCu);
      sub_29DE93B3C(v20);
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v24 = sub_29E2BCBB4();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }
}

uint64_t sub_29DFF2FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_29E2C0514();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_29E2C3714();
  v6[8] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DFF30C8, v9, v8);
}

uint64_t sub_29DFF30C8()
{
  v24 = v0;

  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v1 = sub_29E2C0504();
    v2 = sub_29E2C3A34();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      v9 = sub_29E2C4AE4();
      v11 = sub_29DFAA104(v9, v10, &v23);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Received pregnancy model update", v7, 0xCu);
      sub_29DE93B3C(v8);
      MEMORY[0x29ED82140](v8, -1, -1);
      MEMORY[0x29ED82140](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[3];
  v13 = *(v12 + 128);
  if (v13)
  {
    v14 = v0[2];
    sub_29DE9408C(0, &unk_2A1A5E190);
    v15 = v14;
    v16 = v13;
    v17 = sub_29E2C40D4();

    if (v17)
    {
      goto LABEL_10;
    }

    v18 = *(v12 + 128);
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[2];
  *(v12 + 128) = v19;

  v20 = v19;
LABEL_10:

  v21 = v0[1];

  return v21();
}

uint64_t sub_29DFF3468(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29DFF3480(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29DFF34DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_29DFF352C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

id sub_29DFF356C(void *a1)
{
  v3 = *v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    v16[1] = v3;
    *v10 = 136315138;
    swift_getMetatypeMetadata();
    v12 = sub_29E2C3464();
    v14 = sub_29DFAA104(v12, v13, v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%s] didDismissOnboarding", v10, 0xCu);
    sub_29DE93B3C(v11);
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29DFF376C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  sub_29DFF5600(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_29E2C3734();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_29E2C3714();

  v11 = a2;
  v12 = a1;
  v13 = sub_29E2C3704();
  v14 = swift_allocObject();
  v15 = MEMORY[0x29EDCA390];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v3;
  v14[5] = v11;
  v14[6] = v12;
  v14[7] = v6;
  sub_29E13C63C(0, 0, v9, &unk_29E2D8338, v14);
}

uint64_t sub_29DFF390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = sub_29E2BCC24();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v9 = sub_29E2C0514();
  v7[27] = v9;
  v7[28] = *(v9 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  sub_29E2C3714();
  v7[31] = sub_29E2C3704();
  v11 = sub_29E2C36A4();
  v7[32] = v11;
  v7[33] = v10;

  return MEMORY[0x2A1C73D48](sub_29DFF3A78, v11, v10);
}

uint64_t sub_29DFF3A78()
{
  v30 = v0;
  sub_29E2C04B4();
  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[30];
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    v0[18] = v6;
    swift_getMetatypeMetadata();
    v9 = sub_29E2C3464();
    v11 = sub_29DFAA104(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29DE74000, v1, v2, "[%s] Attempting to save the new sample and delete the old one", v7, 0xCu);
    sub_29DE93B3C(v8);
    MEMORY[0x29ED82140](v8, -1, -1);
    MEMORY[0x29ED82140](v7, -1, -1);

    v12 = *(v5 + 8);
    v12(v3, v4);
  }

  else
  {
    v13 = v0[30];
    v14 = v0[27];
    v15 = v0[28];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v0[34] = v12;
  v16 = v0[20];
  v17 = v0[21];
  v18 = *(v0[19] + 32);
  v0[35] = v18;
  sub_29DE99B54();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E2CE220;
  *(v19 + 32) = v16;
  sub_29DE9408C(0, &qword_2A181A6C8);
  v20 = v18;
  v21 = v16;
  v22 = sub_29E2C3604();
  v0[36] = v22;

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E2CE220;
  *(v23 + 32) = v17;
  v24 = v17;
  v25 = sub_29E2C3604();
  v0[37] = v25;

  v0[2] = v0;
  v0[3] = sub_29DFF3DA8;
  v26 = swift_continuation_init();
  sub_29DFF5F10(0, &qword_2A181A6D0);
  v0[17] = v27;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27F6E4;
  v0[13] = &unk_2A24B7500;
  v0[14] = v26;
  [v20 saveObjects:v22 deleteObjects:v25 associations:0 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29DFF3DA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_29DFF41DC;
  }

  else
  {
    v5 = sub_29DFF3ED8;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFF3ED8()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  v5 = [v3 UUID];
  sub_29E2BCC04();

  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_29DFF3FC8;
  v7 = *(v0 + 208);

  return sub_29DFF0130(v4, v7, 0);
}

uint64_t sub_29DFF3FC8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[24] + 8))(v2[26], v2[23]);
  v3 = v2[33];
  v4 = v2[32];
  if (v0)
  {
    v5 = sub_29DFF4514;
  }

  else
  {
    v5 = sub_29DFF4150;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29DFF4150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DFF41DC()
{
  v37 = v0;
  v1 = v0[37];
  v3 = v0[35];
  v2 = v0[36];

  swift_willThrow();

  v4 = v0[38];
  if (HKShowSensitiveLogItems())
  {
    v5 = v0[21];
    sub_29E2C04B4();
    v6 = v5;
    v7 = v4;
    v8 = sub_29E2C0504();
    v9 = sub_29E2C3A14();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[34];
    v12 = v0[29];
    v13 = v0[27];
    if (v10)
    {
      v34 = v0[29];
      v35 = v0[34];
      v15 = v0[24];
      v14 = v0[25];
      v30 = v0[21];
      v31 = v0[23];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v16 = 136315650;
      v18 = sub_29E2C4AE4();
      v33 = v13;
      v20 = sub_29DFAA104(v18, v19, v36);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = [v30 UUID];
      sub_29E2BCC04();

      v22 = sub_29E2BCBD4();
      v24 = v23;
      (*(v15 + 8))(v14, v31);
      v25 = sub_29DFAA104(v22, v24, v36);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2112;
      v26 = v4;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v27;
      *v17 = v27;
      _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Unable to update pregnancy with UUID %s error: %@", v16, 0x20u);
      sub_29DFF5D9C(v17, &qword_2A1A619E0, &qword_2A1A619F0, 0x29EDC9738, sub_29DE9408C);
      MEMORY[0x29ED82140](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v32, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);

      v35(v34, v33);
    }

    else
    {

      v11(v12, v13);
    }
  }

  else
  {
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_29DFF4514()
{
  v34 = v0;

  v1 = v0[40];
  if (HKShowSensitiveLogItems())
  {
    v2 = v0[21];
    sub_29E2C04B4();
    v3 = v2;
    v4 = v1;
    v5 = sub_29E2C0504();
    v6 = sub_29E2C3A14();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[34];
    v9 = v0[29];
    v10 = v0[27];
    if (v7)
    {
      v31 = v0[29];
      v32 = v0[34];
      v12 = v0[24];
      v11 = v0[25];
      v27 = v0[21];
      v28 = v0[23];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v13 = 136315650;
      v15 = sub_29E2C4AE4();
      v30 = v10;
      v17 = sub_29DFAA104(v15, v16, &v33);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = [v27 UUID];
      sub_29E2BCC04();

      v19 = sub_29E2BCBD4();
      v21 = v20;
      (*(v12 + 8))(v11, v28);
      v22 = sub_29DFAA104(v19, v21, &v33);

      *(v13 + 14) = v22;
      *(v13 + 22) = 2112;
      v23 = v1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v24;
      *v14 = v24;
      _os_log_impl(&dword_29DE74000, v5, v6, "[%s] Unable to update pregnancy with UUID %s error: %@", v13, 0x20u);
      sub_29DFF5D9C(v14, &qword_2A1A619E0, &qword_2A1A619F0, 0x29EDC9738, sub_29DE9408C);
      MEMORY[0x29ED82140](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v13, -1, -1);

      v32(v31, v30);
    }

    else
    {

      v8(v9, v10);
    }
  }

  else
  {
  }

  v25 = v0[1];

  return v25();
}

void sub_29DFF4834()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    aBlock[0] = v2;
    *v9 = 136315138;
    swift_getMetatypeMetadata();
    v11 = sub_29E2C3464();
    v17 = v3;
    v13 = sub_29DFAA104(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%s] Triggering nano sync", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    (*(v4 + 8))(v6, v17);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v14 = [objc_allocWithZone(MEMORY[0x29EDBAC90]) initWithHealthStore_];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  aBlock[4] = sub_29DFF6608;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DFE9648;
  aBlock[3] = &unk_2A24B77A8;
  v16 = _Block_copy(aBlock);

  [v14 forceNanoSyncWithOptions:0 completion:v16];

  _Block_release(v16);
}

uint64_t sub_29DFF4AF8(char a1, void *a2, void *a3)
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v33 - v11;
  if (a1)
  {
    sub_29E2C04B4();
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      v34 = a3;
      *v15 = 136315138;
      swift_getMetatypeMetadata();
      v17 = sub_29E2C3464();
      v19 = sub_29DFAA104(v17, v18, &v33);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29DE74000, v13, v14, "[%s] Success triggering nano sync", v15, 0xCu);
      sub_29DE93B3C(v16);
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_29E2C04B4();
    v21 = a2;
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      v34 = a3;
      *v24 = 136315394;
      swift_getMetatypeMetadata();
      v26 = sub_29E2C3464();
      v28 = sub_29DFAA104(v26, v27, &v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v34 = a2;
      v29 = a2;
      sub_29DFF5734(0, &qword_2A1A5DFD0, &qword_2A1A61C90, MEMORY[0x29EDC9F18], sub_29DEB1BC4);
      v30 = sub_29E2C3424();
      v32 = sub_29DFAA104(v30, v31, &v33);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_29DE74000, v22, v23, "[%s] Error forcing nano sync %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v24, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_29DFF4E4C(id *a1)
{
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 sampleUUID];
  sub_29E2BCC04();

  v8 = _s24MenstrualCyclesAppPlugin34ReviewPregnancyInMedicalIDUserDataV23__derived_struct_equalsySbAC_ACtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_29DFF4F58(char a1, void *a2, void *a3, const char *a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v12 = a2;
    v13 = sub_29E2C0504();
    v14 = sub_29E2C3A14();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v27 = v17;
      v28 = a3;
      *v16 = 136315394;
      swift_getMetatypeMetadata();
      v18 = sub_29E2C3464();
      v20 = sub_29DFAA104(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v28 = a2;
      v21 = a2;
      sub_29DFF5734(0, &qword_2A1A5DFD0, &qword_2A1A61C90, MEMORY[0x29EDC9F18], sub_29DEB1BC4);
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, &v27);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_29DE74000, v13, v14, v26, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

BOOL sub_29DFF51A8(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0uLL:
      return !v5;
    case 1uLL:
      return v5 == 1;
    case 2uLL:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a1[1];
  return (sub_29E142298(v4, v5) & 1) != 0 && (sub_29E142298(v8, v7) & 1) != 0;
}

uint64_t sub_29DFF524C()
{
  v1 = *v0;
  v2 = 0x616D7269666E6F43;
  v3 = 0xD000000000000014;
  if (*v0 == 1)
  {
    v3 = 0x654D776569766552;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6765725074696445;
  }
}

uint64_t sub_29DFF532C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_29DFF65C0(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_29E2BCBB4();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_29DFF5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_29DFF5538(uint64_t a1)
{
  v2 = sub_29E2C1494();
  v3 = MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29E2C18B4();
}

void sub_29DFF5600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DFF5664()
{
  if (!qword_2A181A6B0)
  {
    type metadata accessor for EditPregnancyView(255);
    sub_29DFF65C0(&qword_2A181A6B8, type metadata accessor for EditPregnancyView);
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A6B0);
    }
  }
}

uint64_t sub_29DFF571C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DFF5734(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E2C4304();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29DFF5790(uint64_t a1, uint64_t a2)
{
  sub_29DFF5734(0, &unk_2A1819970, &unk_2A181A6C0, MEMORY[0x29EDC3A40], sub_29DEB1BC4);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFF5820(uint64_t a1)
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

  return sub_29DFF27F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29DFF58E8()
{
  v1 = *v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    v14[1] = v1;
    *v8 = 136315138;
    swift_getMetatypeMetadata();
    v10 = sub_29E2C3464();
    v12 = sub_29DFAA104(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] didCompleteOnboarding", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29DFF5AC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DFF5600(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29DFF5B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFF5BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFF5C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DFF5C9C(uint64_t a1)
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
  v10[1] = sub_29DECA6A0;

  return sub_29DFF390C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29DFF5D9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29DFF5734(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29DFF5DF8()
{
  if (!qword_2A1A5E2E0)
  {
    sub_29DE9408C(255, &unk_2A1A5E138);
    sub_29DEB1BC4(255, &qword_2A1A61C90);
    v0 = sub_29E2C3754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2E0);
    }
  }
}

unint64_t sub_29DFF5E88()
{
  result = qword_2A1A5E0F0;
  if (!qword_2A1A5E0F0)
  {
    sub_29DE9408C(255, &qword_2A1A5E100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E0F0);
  }

  return result;
}

void sub_29DFF5F10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29DEB1BC4(255, &qword_2A1A61C90);
    v3 = sub_29E2C3754();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29DFF5F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DECA6A0;

  return sub_29DFED2DC(a1, v4, v5, v7, v6);
}

uint64_t sub_29DFF6050(uint64_t a1)
{
  v3 = v2;
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29DECA6A0;

  return sub_29DFEE2A4(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_29DFF61C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DFF5600(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DFF6234()
{
  sub_29DFF5600(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 40) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  swift_unknownObjectRelease();

  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return MEMORY[0x2A1C733A0](v0, ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29DFF63E0(char a1, void *a2)
{
  v5 = *(sub_29E2BCC24() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_29DFEF338(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_29DFF6490(uint64_t a1)
{
  v4 = *(sub_29E2BCC24() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29DE9657C;

  return sub_29DFEF910(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_29DFF65C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DFF6610()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DFF6658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29DFF2FD0(a1, v4, v5, v6, v7, v8);
}

void sub_29DFF6778()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24))
  {
    v6 = *(v1 + 32);
    swift_getObjectType();
    v7 = *(v1 + 48);
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v17 = v7;
    v8();
    swift_unknownObjectRelease();
    v9 = v17;
  }

  else
  {
    sub_29E2C04B4();
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v14 = sub_29E2C4AE4();
      v16 = sub_29DFAA104(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Onboarding Delegate unexpectedly nil", v12, 0xCu);
      sub_29DE93B3C(v13);
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    [*(v1 + 48) dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29DFF69E8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *sub_29DFF6A5C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled;
  v3 = &unk_2A24AEFB0;
  if ((*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled) & 1) == 0)
  {
    v4 = 0;
    v5 = MEMORY[0x29EDCA190];
    do
    {
      v8 = *(&unk_2A24AEFB0 + v4 + 32);
      if (v8 != 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_29E181130(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_29E181130((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + v7 + 32) = v8;
      }

      ++v4;
    }

    while (v4 != 8);
    v9 = *(v5 + 16);
    if (v9)
    {
      v10 = (v5 + 32);
      v3 = MEMORY[0x29EDCA190];
      do
      {
        v14 = *v10++;
        v13 = v14;
        if ((v14 - 5) > 2)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_29E181130(0, *(v3 + 2) + 1, 1);
          }

          v12 = *(v3 + 2);
          v11 = *(v3 + 3);
          if (v12 >= v11 >> 1)
          {
            sub_29E181130((v11 > 1), v12 + 1, 1);
          }

          *(v3 + 2) = v12 + 1;
          v3[v12 + 32] = v13;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v3 = MEMORY[0x29EDCA190];
    }
  }

  if (!*(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 56) || (*(v1 + v2) & 1) == 0)
  {
    v15 = *(v3 + 2);
    if (v15)
    {
      v16 = (v3 + 32);
      v17 = MEMORY[0x29EDCA190];
      do
      {
        v21 = *v16++;
        v20 = v21;
        if (v21 != 4)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_29E181130(0, *(v17 + 16) + 1, 1);
          }

          v19 = *(v17 + 16);
          v18 = *(v17 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_29E181130((v18 > 1), v19 + 1, 1);
          }

          *(v17 + 16) = v19 + 1;
          *(v17 + v19 + 32) = v20;
        }

        --v15;
      }

      while (v15);
    }

    else
    {
      v17 = MEMORY[0x29EDCA190];
    }

    return v17;
  }

  return v3;
}

uint64_t sub_29DFF6CD4()
{
  v1 = *v0;

  sub_29DE95334(sub_29DFF6D30, v1);
}

id sub_29DFF6D34()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = HKPreferredRegulatoryDomainProvider();
    *(v0 + 32) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29DFF6D98()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v17 = *(v1 + 40);
    sub_29DFF8884(0, &qword_2A181A700, sub_29DFF8800);
    swift_unknownObjectRetain();
    v13 = sub_29E2C3424();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Set heart rate input supported country code: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29DFF6FF0()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v17 = *(v1 + 48);
    sub_29DFF8884(0, &qword_2A181A700, sub_29DFF8800);
    swift_unknownObjectRetain();
    v13 = sub_29E2C3424();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Set deviation detection supported country code: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29DFF7248()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v17 = *(v1 + 56);
    sub_29DFF8884(0, &qword_2A181A700, sub_29DFF8800);
    swift_unknownObjectRetain();
    v13 = sub_29E2C3424();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Set wrist temperature input supported country code: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29DFF74A0()
{
  v1 = *v0;
  v2 = sub_29DFF6D34();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v7[4] = sub_29DFF8864;
  v7[5] = v4;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1107296256;
  v7[2] = sub_29DF4C2A0;
  v7[3] = &unk_2A24B7860;
  v5 = _Block_copy(v7);

  [v2 fetchMobileCountryCodeFromCellularWithCompletion_];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_29DFF75C8(void *a1)
{
  v2 = v1;
  v79 = *v1;
  v4 = sub_29E2BFC94();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v68 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v68 - v10;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v77 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  MEMORY[0x2A1C7C4A8](v16);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v68 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v68 - v23;
  if (a1)
  {
    v69 = v22;
    v70 = v21;
    v25 = a1;
  }

  else
  {
    v25 = v2[3];
    if (!v25)
    {
      sub_29E2C04B4();
      v60 = sub_29E2C0504();
      v61 = sub_29E2C3A34();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v83 = v63;
        *v62 = 136315138;
        v64 = sub_29E2C4AE4();
        v66 = v13;
        v67 = sub_29DFAA104(v64, v65, &v83);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_29DE74000, v60, v61, "[%s] No country code provided or fetched", v62, 0xCu);
        sub_29DE93B3C(v63);
        MEMORY[0x29ED82140](v63, -1, -1);
        MEMORY[0x29ED82140](v62, -1, -1);

        return (*(v66 + 8))(v19, v12);
      }

      else
      {

        return (*(v13 + 8))(v19, v12);
      }
    }

    v69 = v22;
    v70 = v21;
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  sub_29E2C04B4();
  swift_unknownObjectRetain();
  v26 = sub_29E2C0504();
  v27 = sub_29E2C3A34();
  swift_unknownObjectRelease();
  v28 = os_log_type_enabled(v26, v27);
  v73 = v2;
  v76 = v8;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v83 = v30;
    *v29 = 136315394;
    v31 = sub_29E2C4AE4();
    v81 = v11;
    v33 = v12;
    v34 = sub_29DFAA104(v31, v32, &v83);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v82 = v25;
    sub_29DFF8800();
    swift_unknownObjectRetain();
    v35 = sub_29E2C3424();
    v37 = sub_29DFAA104(v35, v36, &v83);
    v11 = v81;

    *(v29 + 14) = v37;
    v12 = v33;
    v2 = v73;
    _os_log_impl(&dword_29DE74000, v26, v27, "[%s] Fetched country code: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v30, -1, -1);
    MEMORY[0x29ED82140](v29, -1, -1);
  }

  (*(v13 + 8))(v24, v12);
  v38 = *MEMORY[0x29EDBA718];
  v39 = v2[2];
  v40 = [v25 ISOCode];
  v80 = v39;
  if (!v40)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v40 = sub_29E2C33A4();
    v39 = v80;
  }

  v41 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v38 healthStore:v39 currentCountryCode:v40];

  v81 = sub_29DECF234();
  v72 = v41;
  sub_29E2BFCD4();
  v71 = v13;
  v42 = sub_29E2BFCA4();
  v43 = [v42 areAllRequirementsSatisfied];

  if (v43)
  {
    swift_unknownObjectRetain();
    v44 = v25;
  }

  else
  {
    v44 = 0;
  }

  v2[5] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_29DFF6D98();
  swift_unknownObjectRelease();
  (*(v74 + 8))(v11, v75);
  v45 = *MEMORY[0x29EDBA720];
  v46 = [v25 ISOCode];
  v47 = v76;
  if (!v46)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v46 = sub_29E2C33A4();
    v47 = v76;
  }

  v48 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v45 healthStore:v39 currentCountryCode:v46];

  v76 = v48;
  sub_29E2BFCD4();
  v49 = sub_29E2BFCA4();
  v50 = [v49 areAllRequirementsSatisfied];

  if (v50)
  {
    swift_unknownObjectRetain();
    v51 = v25;
  }

  else
  {
    v51 = 0;
  }

  v73[7] = v51;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_29DFF7248();
  swift_unknownObjectRelease();
  (*(v74 + 8))(v47, v75);
  v52 = *MEMORY[0x29EDBA710];
  v53 = [v25 ISOCode];
  if (!v53)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v53 = sub_29E2C33A4();
  }

  v54 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v55 = [v54 initWithFeatureIdentifier:v52 healthStore:v80 currentCountryCode:v53];

  sub_29E2BFCD4();
  v56 = sub_29E2BFCA4();
  v57 = [v56 areAllRequirementsSatisfied];

  if (v57)
  {
    swift_unknownObjectRetain();
    v58 = v25;
  }

  else
  {
    v58 = 0;
  }

  v73[6] = v58;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_29DFF6FF0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v74 + 8))(v78, v75);
}

uint64_t sub_29DFF8328(void *a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v37 - v9;
  if (a1)
  {
    sub_29E2C04B4();
    swift_unknownObjectRetain();
    v11 = sub_29E2C0504();
    v12 = sub_29E2C3A34();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38 = v4;
      v15 = v14;
      v40[0] = v14;
      *v13 = 136446466;
      v16 = sub_29E2C4AE4();
      v18 = sub_29DFAA104(v16, v17, v40);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      v39 = a1;
      sub_29DFF8884(0, &qword_2A181A700, sub_29DFF8800);
      v19 = sub_29E2C42F4();
      v21 = sub_29DFAA104(v19, v20, v40);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Successfully fetched country code: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v15, -1, -1);
      MEMORY[0x29ED82140](v13, -1, -1);

      (*(v5 + 8))(v7, v38);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong || (v36 = *(Strong + 24), swift_unknownObjectRetain(), , !v36))
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      *(result + 24) = a1;
      swift_unknownObjectRetain();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_29E2C04B4();
    v22 = a2;
    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A14();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136446466;
      v27 = sub_29E2C4AE4();
      v29 = sub_29DFAA104(v27, v28, v40);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v39 = a2;
      v30 = a2;
      sub_29DFF8884(0, &qword_2A1A5DFD0, sub_29DE96670);
      v31 = sub_29E2C3424();
      v33 = sub_29DFAA104(v31, v32, v40);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%{public}s] Error fetching country code: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v26, -1, -1);
      MEMORY[0x29ED82140](v25, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_29DFF877C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_29DFF8800()
{
  result = qword_2A181A6F8;
  if (!qword_2A181A6F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181A6F8);
  }

  return result;
}

uint64_t sub_29DFF886C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DFF8884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29DFF88D8()
{
  v0 = sub_29E2BD254();
  MEMORY[0x29ED7FCC0](v0, v1);

  v3 = sub_29E2C3564();
  sub_29E2C34E4();

  return v3;
}

id sub_29DFF89F0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v110 = a1;
  v127 = a2;
  v131[4] = *MEMORY[0x29EDCA608];
  v117 = sub_29E2BD864();
  v114 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117);
  v112 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29E2BDA84();
  v113 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v111 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFF9AE4(0, &qword_2A1A62688, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v109 = &v96 - v5;
  v107 = sub_29E2BD234();
  v106 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107);
  v108 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_29E2BD4C4();
  v128 = *(v126 - 8);
  MEMORY[0x2A1C7C4A8](v126);
  v118 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_29E2BD824();
  v125 = *(v116 - 8);
  MEMORY[0x2A1C7C4A8](v116);
  v123 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_29E2BC3A4();
  v122 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v121 = &v96 - v12;
  *&v120 = sub_29E2C0514();
  v119 = *(v120 - 8);
  MEMORY[0x2A1C7C4A8](v120);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v96 - v16;
  v18 = sub_29E2BD754();
  v20 = v19;
  v21 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v22 = sub_29E2BC914();
  sub_29DEB5BF8(v18, v20);
  v23 = [v21 initWithData_];

  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = [v23 projection];
  if (!v24)
  {
LABEL_8:

    goto LABEL_9;
  }

  v25 = v24;
  sub_29DFF9A48();
  v26 = sub_29E17A408(v25);

  if (!v26)
  {
LABEL_9:
    v35 = *(v128 + 56);
    v36 = v127;
    v37 = v126;

    return v35(v36, 1, 1, v37);
  }

  v27 = sub_29E2BD754();
  v29 = v28;
  v30 = objc_allocWithZone(MEMORY[0x29EDC44E8]);
  v31 = sub_29E2BC914();
  sub_29DEB5BF8(v27, v29);
  v32 = [v30 initWithData_];

  if (!v32)
  {
    goto LABEL_7;
  }

  result = [v32 projectionKind];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v34 = sub_29E17ABE4(result);

  if (v34 == 2)
  {
LABEL_7:
    v23 = v26;
    goto LABEL_8;
  }

  v38 = sub_29E2BD724();
  v40 = v39;
  v41 = type metadata accessor for ProjectionHighlightTileViewModelContextData();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projection] = v26;
  v103 = v34 & 1;
  v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43ProjectionHighlightTileViewModelContextData_projectionKind] = v34 & 1;
  v130.receiver = v42;
  v130.super_class = v41;
  v43 = v26;
  v44 = objc_msgSendSuper2(&v130, sel_init);
  v45 = objc_opt_self();
  v131[0] = 0;
  v46 = [v45 archivedDataWithRootObject:v44 requiringSecureCoding:1 error:v131];
  v47 = v131[0];
  if (v46)
  {
    v98 = v34;
    v105 = sub_29E2BC924();
    v104 = v48;

    sub_29E2C04B4();
    v49 = v43;
    v50 = sub_29E2C0504();
    v51 = sub_29E2C3A04();

    v52 = os_log_type_enabled(v50, v51);
    v102 = v49;
    v101 = v44;
    v100 = v40;
    v99 = v38;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v131[0] = v54;
      *v53 = 136446466;
      *(v53 + 4) = sub_29DFAA104(0xD000000000000026, 0x800000029E2F8720, v131);
      *(v53 + 12) = 2080;
      v55 = v49;
      v56 = [v55 description];
      v57 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v59 = v58;

      v60 = sub_29DFAA104(v57, v59, v131);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_29DE74000, v50, v51, "[%{public}s] Appending chartFeedItems with projection: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v54, -1, -1);
      MEMORY[0x29ED82140](v53, -1, -1);
    }

    (*(v119 + 8))(v17, v120);
    v61 = v121;
    sub_29E0C2A58(v103, v121);
    (*(v122 + 16))(v10, v61, v124);
    v62 = v123;
    sub_29E2BD804();
    v119 = sub_29E2BD684();
    v97 = v63;
    v64 = v110;
    sub_29DFF88D8();
    type metadata accessor for ProjectionHighlightTileViewController();
    sub_29E2BD284();
    (*(v106 + 104))(v108, *MEMORY[0x29EDC3710], v107);
    sub_29DF1DE4C(v105, v104);
    v65 = v64;
    v66 = v118;
    sub_29E2BD374();
    v67 = v125;
    v68 = v109;
    v69 = v116;
    (*(v125 + 16))(v109, v62, v116);
    (*(v67 + 56))(v68, 0, 1, v69);
    sub_29E2BD404();
    if (v98)
    {
      v70 = sub_29E2BD494();
      v71 = &unk_2A24AF008;
    }

    else
    {
      v70 = sub_29E2BD494();
      v71 = &unk_2A24AEFD8;
    }

    sub_29DECE164(v71);
    sub_29DECE1D4(v71 + 32);
    v70(v131, 0);
    sub_29DFF9A94();
    inited = swift_initStackObject();
    v120 = xmmword_29E2CAB20;
    *(inited + 16) = xmmword_29E2CAB20;
    *(inited + 32) = sub_29E2BD664();
    *(inited + 40) = v84;
    v85 = sub_29E2BD494();
    sub_29DECE164(inited);
    swift_setDeallocating();
    sub_29DECE1D4(inited + 32);
    v85(v131, 0);
    v86 = swift_initStackObject();
    *(v86 + 16) = v120;
    *(v86 + 32) = v119;
    *(v86 + 40) = v97;
    v87 = sub_29E2BD494();
    sub_29DECE164(v86);
    swift_setDeallocating();
    sub_29DECE1D4(v86 + 32);
    v87(v131, 0);
    (*(v114 + 104))(v112, *MEMORY[0x29EDC3A08], v117);
    v88 = v111;
    sub_29E2BDA94();
    v89 = v115;
    sub_29E2BD314();
    (*(v113 + 8))(v88, v89);
    sub_29E2BD344();
    sub_29DFF9AE4(0, &qword_2A1A5E038, MEMORY[0x29EDC3828], MEMORY[0x29EDC9E90]);
    v90 = sub_29E2BD454();
    v91 = *(v90 - 8);
    v92 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = v120;
    sub_29E2BD444();
    sub_29E14EFC0(v93);
    swift_setDeallocating();
    (*(v91 + 8))(v93 + v92, v90);
    swift_deallocClassInstance();
    sub_29E2BD484();
    sub_29DEB5BF8(v105, v104);

    (*(v125 + 8))(v123, v69);
    (*(v122 + 8))(v121, v124);
    v94 = v127;
    v95 = v126;
    (*(v128 + 32))(v127, v66, v126);
    return (*(v128 + 56))(v94, 0, 1, v95);
  }

  else
  {
    v72 = v47;

    v73 = sub_29E2BC7E4();

    swift_willThrow();
    sub_29E2C04B4();
    v74 = v73;
    v75 = sub_29E2C0504();
    v76 = sub_29E2C3A14();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v131[0] = v78;
      *v77 = 136446466;
      *(v77 + 4) = sub_29DFAA104(0xD000000000000026, 0x800000029E2F8720, v131);
      *(v77 + 12) = 2080;
      v129 = v73;
      v79 = v73;
      sub_29DE96670();
      v80 = sub_29E2C3424();
      v82 = sub_29DFAA104(v80, v81, v131);

      *(v77 + 14) = v82;
      _os_log_impl(&dword_29DE74000, v75, v76, "[%{public}s] Failed to encode context data for submitting a feed item with error: %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v78, -1, -1);
      MEMORY[0x29ED82140](v77, -1, -1);
    }

    else
    {
    }

    (*(v119 + 8))(v14, v120);
    return (*(v128 + 56))(v127, 1, 1, v126);
  }
}

unint64_t sub_29DFF9A48()
{
  result = qword_2A1A62790;
  if (!qword_2A1A62790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A62790);
  }

  return result;
}

void sub_29DFF9A94()
{
  if (!qword_2A1A62780)
  {
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A62780);
    }
  }
}

void sub_29DFF9AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29DFF9B48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleViewModelProvider] = 0;
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_currentViewModel;
  v7 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_topConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_bottomConstraint] = 0;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator;
  sub_29DE9408C(0, &qword_2A1818D18);
  v9 = sub_29E05D384();
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

  v11 = [objc_opt_self() tertiaryLabelColor];
  [v10 setTintColor_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v10;
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isTopCell] = 2;
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isBottomCell] = 2;
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isSection] = 2;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView] = [objc_allocWithZone(type metadata accessor for SingleCycleView()) initWithFrame_];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29DFF9E6C();
  sub_29DFFC6F4(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CAB20;
  v14 = sub_29E2C0B54();
  v15 = MEMORY[0x29EDC7870];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  MEMORY[0x29ED807F0](v13, sel_respondToContentSizeChanges);
  swift_unknownObjectRelease();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CAB20;
  v17 = sub_29E2C08C4();
  v18 = MEMORY[0x29EDC7810];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x29ED807F0](v16, sel_respondToHorizontalSizeChanges);

  swift_unknownObjectRelease();

  return v12;
}

void sub_29DFF9E6C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor_];

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView;
  v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView];
  v6 = [v2 clearColor];
  [v5 setBackgroundColor_];

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel;
  v8 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel];
  v9 = [v2 labelColor];
  [v8 setTextColor_];

  [*&v1[v7] setNumberOfLines_];
  v10 = *&v1[v7];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v11 = v10;
  v12 = sub_29E2C3FD4();
  [v11 setFont_];

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel;
  v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel];
  v15 = sub_29E2C3FD4();
  [v14 setFont_];

  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel;
  v17 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel];
  v18 = sub_29E2C3FD4();
  [v17 setFont_];

  v19 = *&v1[v13];
  v20 = [v2 secondaryLabelColor];
  [v19 setTextColor_];

  [*&v1[v13] setNumberOfLines_];
  v21 = *&v1[v16];
  v22 = [v2 secondaryLabelColor];
  [v21 setTextColor_];

  [*&v1[v16] setNumberOfLines_];
  [*&v1[v7] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v16] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator] setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  [v1 addSubview_];
  [v1 addSubview_];
  [v1 addSubview_];
  [v1 addSubview_];
  [v1 setPreservesSuperviewLayoutMargins_];
  v24 = [*&v1[v7] topAnchor];
  v25 = [v1 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  v27 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_topConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_topConstraint] = v26;

  v28 = [*&v1[v4] bottomAnchor];
  v29 = [v1 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  v31 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_bottomConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_bottomConstraint] = v30;

  sub_29DFFBD48();
  sub_29DFFA60C();
  v32 = *&v1[v16];
  type metadata accessor for UILayoutPriority(0);
  sub_29DFFC4B0(&qword_2A1A61A28, type metadata accessor for UILayoutPriority);
  v33 = v32;
  sub_29E2C0524();
  LODWORD(v34) = v41;
  [v33 setContentHuggingPriority:1 forAxis:v34];

  v35 = *&v1[v16];
  sub_29E2C0534();
  LODWORD(v36) = v41;
  [v35 setContentCompressionResistancePriority:1 forAxis:v36];

  v37 = *&v1[v7];
  sub_29E2C0524();
  LODWORD(v38) = v41;
  [v37 setContentHuggingPriority:1 forAxis:v38];

  v39 = *&v1[v7];
  sub_29E2C0534();
  LODWORD(v40) = v41;
  [v39 setContentCompressionResistancePriority:1 forAxis:v40];
}

void sub_29DFFA4A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = v1;
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel);
  v5 = sub_29E2C3FD4();
  [v4 setFont_];

  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel);
  v7 = sub_29E2C3FD4();
  [v6 setFont_];

  sub_29DFFA60C();

  sub_29DFFAC48();
}

void sub_29DFFA60C()
{
  IsRightToLeft = HKUICalendarLocaleIsRightToLeft();
  sub_29DE99B54();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CD3B0;
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView;
  if (IsRightToLeft)
  {
    v4 = &selRef_rightAnchor;
  }

  else
  {
    v4 = &selRef_leftAnchor;
  }

  if (IsRightToLeft)
  {
    v5 = &selRef_leftAnchor;
  }

  else
  {
    v5 = &selRef_rightAnchor;
  }

  v6 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView] *v4];
  v7 = [v0 *v4];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 32) = v8;
  v9 = [v0 *v5];
  v10 = [*&v0[v3] *v5];
  v11 = [v9 constraintEqualToAnchor_];

  v56 = v2;
  *(v2 + 40) = v11;
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2D8450;
  v15 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_topConstraint];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  *(v14 + 32) = v15;
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel;
  v18 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel];
  v19 = v15;
  v20 = [v18 leadingAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  v16[5] = v23;
  v24 = [*&v0[v17] trailingAnchor];
  v25 = [v24 constraintEqualToAnchor_];

  v16[6] = v25;
  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel;
  v27 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel] topAnchor];
  v28 = [*&v0[v17] bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:2.0];

  v16[7] = v29;
  v30 = [*&v0[v26] leadingAnchor];
  v31 = [v0 layoutMarginsGuide];
  v32 = [v31 leadingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  v16[8] = v33;
  v34 = [*&v0[v26] &selRef_bounds + 4];
  v35 = [v0 layoutMarginsGuide];
  v36 = [v35 &selRef_bounds + 4];

  v37 = [v34 &selRef:v36 :? setInteractiveTextSelectionDisabled:? + 5];
  v16[9] = v37;
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel;
  v39 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel] topAnchor];
  v40 = [*&v0[v26] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:2.0];

  v16[10] = v41;
  v42 = [*&v0[v38] leadingAnchor];
  v43 = [v0 &off_29F3632A8 + 1];
  v44 = [v43 leadingAnchor];

  v45 = [v42 &selRef:v44 :? setInteractiveTextSelectionDisabled:? + 5];
  v16[11] = v45;
  v46 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView] topAnchor];
  v47 = [*&v0[v38] bottomAnchor];
  v48 = [v46 &selRef:v47 :? setInteractiveTextSelectionDisabled:? + 5];

  v16[12] = v48;
  v49 = [*&v0[v38] trailingAnchor];
  v50 = [v0 &off_29F3632A8 + 1];
  v51 = [v50 trailingAnchor];

  v52 = [v49 &selRef:v51 :? setInteractiveTextSelectionDisabled:? + 5];
  v16[13] = v52;
  v53 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_bottomConstraint];
  if (!v53)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v54 = objc_opt_self();
  v16[14] = v53;
  v55 = v53;
  sub_29DFCBB84(v56);
  sub_29DE9408C(0, &qword_2A1A61A10);
  v57 = sub_29E2C3604();

  [v54 activateConstraints_];
}

void sub_29DFFAC48()
{
  v1 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isTopCell];
  if (v1 != 2)
  {
    v2 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isBottomCell];
    if (v2 != 2)
    {
      v3 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isSection];
      if (v3 != 2)
      {
        v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_topConstraint];
        if (v4)
        {
          v5 = v4;
          v6 = [v0 traitCollection];
          v7 = [v6 horizontalSizeClass];

          v8 = 5.0;
          if (v7 == 2)
          {
            v8 = 15.0;
          }

          if ((v1 & v3 & 1) == 0)
          {
            v8 = 15.0;
          }

          [v5 setConstant_];
        }

        v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_bottomConstraint];
        if (v9)
        {
          v13 = v9;
          if ((v2 & v3 & 1) == 0 || (v10 = [v0 traitCollection], v11 = objc_msgSend(v10, sel_horizontalSizeClass), v10, v12 = -8.0, v11 != 2))
          {
            v12 = 0.0;
          }

          [v13 setConstant_];
        }
      }
    }
  }
}

uint64_t sub_29DFFAE1C()
{
  sub_29DFFC6F4(0, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x2A1C7C4A8](v4).n128_u64[0];
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel] removeFromSuperview];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator] removeFromSuperview];
  v10 = [objc_allocWithZone(type metadata accessor for SingleCycleView()) initWithFrame_];
  v11 = *&v0[v9];
  *&v0[v9] = v10;

  sub_29DFF9E6C();
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_currentViewModel;
  swift_beginAccess();
  sub_29DFFC2C8(&v0[v12], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_29DFFC35C(v3);
  }

  sub_29DFFC3E8(v3, v8, type metadata accessor for CycleHistorySingleCycleViewModel);
  [v0 bounds];
  Width = CGRectGetWidth(v16);
  sub_29DFFB090(v8, Width);
  return sub_29DFFC450(v8, type metadata accessor for CycleHistorySingleCycleViewModel);
}

void sub_29DFFB090(void *a1, double Width)
{
  v3 = v2;
  v6 = MEMORY[0x29EDC9C68];
  sub_29DFFC6F4(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v104 = &v91 - v8;
  sub_29DEC6594();
  v103 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v102 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v101 = &v91 - v12;
  v107 = sub_29E2C31A4();
  v105 = *(v107 - 8);
  MEMORY[0x2A1C7C4A8](v107);
  v106 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v91 - v15;
  sub_29DEC65FC();
  v99 = *(v17 - 8);
  v100 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v108 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFFC6F4(0, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, v6);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = &v91 - v20;
  sub_29DFFC260(a1, &v91 - v20, type metadata accessor for CycleHistorySingleCycleViewModel);
  v22 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  (*(*(v22 - 1) + 56))(v21, 0, 1, v22);
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_currentViewModel;
  swift_beginAccess();
  sub_29DFFC1CC(v21, &v3[v23]);
  swift_endAccess();
  v24 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel];
  v25 = sub_29DFD19B0();
  [v24 setAttributedText_];

  v26 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel];
  sub_29DFD2960();
  v28 = v27;
  [v26 setAttributedText_];

  v29 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel];
  sub_29DFD31B4();
  v30 = sub_29E2C33A4();

  [v29 setText_];

  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isTopCell] = *(a1 + v22[7]);
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isBottomCell] = *(a1 + v22[8]);
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isSection] = *(a1 + v22[9]);
  sub_29DFFAC48();
  v31 = *(a1 + v22[5]);
  [v31 registerObserver_];
  v32 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleViewModelProvider];
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleViewModelProvider] = v31;
  v98 = v31;

  v33 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView;
  v34 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView];
  v35 = *(a1 + v22[11]);
  v36 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient;
  v37 = *&v34[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient];
  v38 = v34;
  v39 = [v37 superlayer];
  if (v39)
  {

    if ((v35 & 1) == 0)
    {
      goto LABEL_7;
    }

    [*&v34[v36] removeFromSuperlayer];
  }

  else
  {
    if (v35)
    {
      goto LABEL_7;
    }

    v40 = [v38 layer];
    [v40 addSublayer_];
  }

  [v38 setNeedsLayout];
LABEL_7:

  v41 = *&v3[v33];
  v42 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView;
  v43 = *&v41[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
  v44 = v41;
  [v43 setScrollEnabled_];
  [*&v41[v42] setUserInteractionEnabled_];

  [*&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator] setHidden_];
  [v3 bounds];
  if (CGRectGetWidth(v112) > 0.0)
  {
    [v3 bounds];
    Width = CGRectGetWidth(v113);
  }

  v45 = *&v3[v33];
  v46 = *a1;
  v47 = *(a1 + v22[6]);
  v48 = *(type metadata accessor for CycleHistorySingleCycleModel(0) + 20);
  v45[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter] = v47;
  v49 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource;
  v50 = *&v45[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource];
  if (v50)
  {
    v51 = *(v50 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle);
    sub_29DE9408C(0, &qword_2A1A5E0A0);
    v52 = v51;
    v53 = v45;
    v54 = v52;
    v55 = v46;
    v56 = sub_29E2C40D4();

    if (v56)
    {

LABEL_19:
      return;
    }

    v96 = v48;
    v97 = v54;
  }

  else
  {
    v96 = v48;
    v57 = v45;
    v97 = 0;
  }

  v58 = [v46 menstruationSegment];
  v59 = [v58 days];

  sub_29E1CB854(Width);
  if (__OFADD__(v59, v60))
  {
    __break(1u);
  }

  else
  {
    v61 = [v46 lastDayIndex];
    v95 = v49;
    if (v61)
    {
      v62 = v61;
      [v61 integerValue];
    }

    v63 = [v46 menstruationSegment];
    [v63 days];

    sub_29E2C30D4();
    v64 = v106;
    sub_29E2C30D4();
    sub_29DFFC4B0(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v65 = v46;
    v66 = v107;
    if (sub_29E2C32B4())
    {
      v67 = v105;
      v94 = v65;
      v68 = *(v105 + 32);
      v69 = v101;
      v68(v101, v16, v66);
      v92 = a1;
      v70 = v103;
      v68((v69 + *(v103 + 48)), v64, v66);
      v71 = v102;
      sub_29DFFC260(v69, v102, sub_29DEC6594);
      v72 = *(v70 + 48);
      v68(v108, v71, v66);
      v91 = v16;
      v106 = v45;
      v73 = *(v67 + 8);
      v73(v71 + v72, v66);
      v93 = v73;
      sub_29DFFC3E8(v69, v71, sub_29DEC6594);
      v74 = *(v70 + 48);
      v75 = v100;
      v76 = v108;
      v68(&v108[*(v100 + 36)], (v71 + v74), v66);
      v73(v71, v66);
      v77 = v104;
      sub_29DFFC260(v76, v104, sub_29DEC65FC);
      (*(v99 + 56))(v77, 0, 1, v75);
      v78 = v98;
      v110 = [v98 activeDayRange];
      v111 = v79;
      sub_29E2C3AB4();
      [v78 setActiveDayRange_];
      v80 = *(v67 + 16);
      v81 = v91;
      v80(v91, &v92[v96], v66);
      v82 = type metadata accessor for SingleCycleViewDataSource();
      v83 = objc_allocWithZone(v82);
      v83[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState] = 0;
      v84 = v94;
      *&v83[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle] = v94;
      *&v83[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycleViewModelProvider] = v78;
      v80(&v83[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_today], v81, v66);
      v109.receiver = v83;
      v109.super_class = v82;
      v85 = v78;
      v86 = v84;
      v87 = objc_msgSendSuper2(&v109, sel_init);
      v93(v81, v66);
      v54 = v106;
      v88 = *&v106[v95];
      *&v106[v95] = v87;
      v89 = v87;

      v90 = *&v54[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
      [v90 setDataSource_];

      [v90 reloadData];
      sub_29DFFC450(v76, sub_29DEC65FC);
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_29DFFBB94()
{
  sub_29DFFC6F4(0, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, MEMORY[0x29EDC9C68]);
  *&v2 = MEMORY[0x2A1C7C4A8](v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleViewModelProvider);
  if (v5)
  {
    [v5 removeObserver_];
  }

  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView);
  v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter] = 51;
  v7 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource];
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource] = 0;
  v8 = v6;

  [*&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView] setDataSource_];
  v9 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_currentViewModel;
  swift_beginAccess();
  sub_29DFFC1CC(v4, v0 + v10);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isTopCell) = 2;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isBottomCell) = 2;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isSection) = 2;
  return result;
}

void sub_29DFFBD48()
{
  v1 = [v0 layoutMarginsGuide];
  v13 = [v1 trailingAnchor];

  v2 = objc_opt_self();
  sub_29DE99B54();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CD3B0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator;
  v5 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator] trailingAnchor];
  v6 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [*&v0[v4] firstBaselineAnchor];
  v8 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel] firstBaselineAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v10 = sub_29E2C3604();

  [v2 activateConstraints_];

  LODWORD(v11) = 1148846080;
  [*&v0[v4] setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [*&v0[v4] setContentCompressionResistancePriority:0 forAxis:v12];
}

uint64_t type metadata accessor for CycleHistorySingleCycleView()
{
  result = qword_2A181A750;
  if (!qword_2A181A750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DFFC0D0()
{
  sub_29DFFC6F4(319, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29DFFC1CC(uint64_t a1, uint64_t a2)
{
  sub_29DFFC6F4(0, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFFC260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFFC2C8(uint64_t a1, uint64_t a2)
{
  sub_29DFFC6F4(0, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFFC35C(uint64_t a1)
{
  sub_29DFFC6F4(0, &unk_2A181A760, type metadata accessor for CycleHistorySingleCycleViewModel, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DFFC3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFFC450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DFFC4B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DFFC4F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_daysLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_factorsLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_periodLengthLabel;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleViewModelProvider) = 0;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_currentViewModel;
  v6 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_topConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_bottomConstraint) = 0;
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_disclosureIndicator;
  sub_29DE9408C(0, &qword_2A1818D18);
  v8 = sub_29E05D384();
  v9 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

  v10 = [objc_opt_self() tertiaryLabelColor];
  [v9 setTintColor_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isTopCell) = 2;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isBottomCell) = 2;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_isSection) = 2;
  sub_29E2C4724();
  __break(1u);
}

void sub_29DFFC6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DFFC758(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A5E100);
    sub_29DFF5E88();
    sub_29E2C3834();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);
    sub_29E2BF404();
    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_29E2C44C4())
        {
          sub_29DE9408C(0, &qword_2A1A5E100);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_29DF219B8();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_29DFFC99C()
{
  v1 = *v0;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_experienceStore);
  [v2 registerObserver:v0 completionHandler:0];
  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_pregnancyModelProvider);
  swift_unknownObjectRetain();
  sub_29E2BD5B4();
  [v3 registerObserver:v0 isUserInitiated:sub_29E2BDA24() & 1];
  swift_unknownObjectRelease();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v7[4] = sub_29E000BD0;
  v7[5] = v5;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1107296256;
  v7[2] = sub_29DF2816C;
  v7[3] = &unk_2A24B78D8;
  v6 = _Block_copy(v7);

  [v2 fetchExperienceModelWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_29DFFCB34()
{
  [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_experienceStore) unregisterObserver_];
  [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_pregnancyModelProvider) unregisterObserver_];
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_context;
  v2 = sub_29E2BD624();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SetupPregnancyModeFeaturesGenerator()
{
  result = qword_2A1A5FED0;
  if (!qword_2A1A5FED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DFFCC90()
{
  result = sub_29E2BD624();
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

uint64_t sub_29DFFCD44()
{
  sub_29E000874();
  v2 = *(v1 - 8);
  v21 = v1;
  v22 = v2;
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E000AA0();
  v6 = *(v5 - 8);
  v23 = v5;
  v24 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E000B34();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v20 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_experienceModelSubject);
  v27 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_pregnancyModelSubject);
  v28 = v12;
  sub_29E0009EC(0, &unk_2A1A5E5A0, sub_29E000978);
  sub_29E0009EC(0, &qword_2A1A5E580, sub_29DF737B0);
  sub_29E000A50(&qword_2A1A5E5B0, &unk_2A1A5E5A0, sub_29E000978);
  sub_29E000A50(&unk_2A1A5E590, &qword_2A1A5E580, sub_29DF737B0);

  sub_29E2C0E54();
  sub_29E2BD5F4();
  v13 = v21;
  sub_29E2C0E34();
  (*(v22 + 8))(v4, v13);
  sub_29E0005E4(&qword_2A1A5E8F8, sub_29E000AA0);
  v14 = v20;
  v15 = v23;
  sub_29E2C12A4();
  (*(v24 + 8))(v8, v15);
  sub_29E0005E4(&qword_2A1A5EA80, sub_29E000B34);
  v16 = v25;
  v17 = sub_29E2C1274();
  (*(v26 + 8))(v14, v16);
  return v17;
}

uint64_t sub_29DFFD0F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v3 = v2;

  return sub_29E2BF404();
}

uint64_t sub_29DFFD12C(unint64_t a1, void *a2)
{
  v4 = *v2;
  v191 = a1;
  v192 = v4;
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v165 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v165 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v165 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v190 = &v165 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v181 = &v165 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v179 = &v165 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v165 - v25;
  sub_29DF1D934(0);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v182 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E2BD4C4();
  v30 = *(v29 - 8);
  v185 = v29;
  v186 = v30;
  MEMORY[0x2A1C7C4A8](v29);
  v180 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  MEMORY[0x2A1C7C4A8](v184);
  v177 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v178 = &v165 - v34;
  MEMORY[0x2A1C7C4A8](v35);
  v187 = &v165 - v36;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v37 - 8);
  v188 = &v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E2BCC24();
  MEMORY[0x2A1C7C4A8](v39);
  v41 = (&v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v42);
  v183 = v2;
  if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_isiPad))
  {
    sub_29E2C04B4();
    v46 = sub_29E2C0504();
    v47 = sub_29E2C3A34();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v5;
      v49 = v6;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v194 = v51;
      *v50 = 136315138;
      v195[0] = v192;
      swift_getMetatypeMetadata();
      v52 = sub_29E2C3464();
      v54 = sub_29DFAA104(v52, v53, &v194);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_29DE74000, v46, v47, "[%s] Not available on iPad", v50, 0xCu);
      sub_29DE93B3C(v51);
      MEMORY[0x29ED82140](v51, -1, -1);
      MEMORY[0x29ED82140](v50, -1, -1);

      (*(v49 + 8))(v8, v48);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return MEMORY[0x29EDCA190];
  }

  if (!a2)
  {
    if (HKShowSensitiveLogItems())
    {
      v61 = v5;
      v62 = v6;
      sub_29E2C04B4();
      v63 = sub_29E2C0504();
      v64 = sub_29E2C3A34();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v194 = v66;
        *v65 = 136315138;
        v195[0] = v192;
        swift_getMetatypeMetadata();
        v67 = sub_29E2C3464();
        v69 = sub_29DFAA104(v67, v68, &v194);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_29DE74000, v63, v64, "[%s] Not submitting tile, no model found", v65, 0xCu);
        sub_29DE93B3C(v66);
        MEMORY[0x29ED82140](v66, -1, -1);
        MEMORY[0x29ED82140](v65, -1, -1);
      }

      (*(v62 + 8))(v11, v61);
    }

    return MEMORY[0x29EDCA190];
  }

  v174 = v45;
  v175 = (&v165 - v44);
  v176 = v43;
  v55 = a2;
  if ([v55 state] != 1 && objc_msgSend(v55, sel_state) != 2)
  {
    if (HKShowSensitiveLogItems())
    {
      v80 = v5;
      v81 = v6;
      sub_29E2C04B4();
      v82 = sub_29E2C0504();
      v83 = sub_29E2C3A34();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v195[0] = v85;
        *v84 = 136315138;
        v86 = sub_29DFFF808();
        v88 = v55;
        v89 = sub_29DFAA104(v86, v87, v195);

        *(v84 + 4) = v89;
        v55 = v88;
        _os_log_impl(&dword_29DE74000, v82, v83, "[%s] Not submitting tile, state is not present", v84, 0xCu);
        sub_29DE93B3C(v85);
        MEMORY[0x29ED82140](v85, -1, -1);
        MEMORY[0x29ED82140](v84, -1, -1);
      }

      (*(v81 + 8))(v14, v80);
    }

    goto LABEL_23;
  }

  v189 = [v55 sample];
  if (!v189)
  {
    if (HKShowSensitiveLogItems())
    {
      v70 = v5;
      v71 = v6;
      sub_29E2C04B4();
      v72 = sub_29E2C0504();
      v73 = sub_29E2C3A34();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v194 = v75;
        *v74 = 136315138;
        v195[0] = v192;
        swift_getMetatypeMetadata();
        v76 = sub_29E2C3464();
        v78 = v55;
        v79 = sub_29DFAA104(v76, v77, &v194);

        *(v74 + 4) = v79;
        v55 = v78;
        _os_log_impl(&dword_29DE74000, v72, v73, "[%s] Not submitting tile, state is not present", v74, 0xCu);
        sub_29DE93B3C(v75);
        MEMORY[0x29ED82140](v75, -1, -1);
        MEMORY[0x29ED82140](v74, -1, -1);
      }

      (*(v71 + 8))(v17, v70);
    }

LABEL_23:

    return MEMORY[0x29EDCA190];
  }

  v166 = v26;
  v170 = v55;
  v56 = v191;
  v168 = v6;
  v167 = v5;
  if ((v191 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A5E100);
    sub_29DFF5E88();
    sub_29E2C3834();
    v56 = v195[0];
    v57 = v195[1];
    v58 = v195[2];
    v59 = v195[3];
    v60 = v195[4];
  }

  else
  {
    v90 = -1 << *(v191 + 32);
    v57 = (v191 + 56);
    v58 = ~v90;
    v91 = -v90;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    else
    {
      v92 = -1;
    }

    v60 = v92 & *(v191 + 56);
    sub_29E2BF404();
    v59 = 0;
  }

  v169 = v58;
  v93 = (v58 + 64) >> 6;
  ++v174;
  v173 = v57;
  if (v56 < 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  v94 = v59;
  v95 = v60;
  v96 = v59;
  if (!v60)
  {
    while (1)
    {
      v96 = (v94 + 1);
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v96 >= v93)
      {
        goto LABEL_40;
      }

      v95 = *&v57[8 * v96];
      ++v94;
      if (v95)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_33:
  v55 = ((v95 - 1) & v95);
  v97 = *(*(v56 + 48) + ((v96 << 9) | (8 * __clz(__rbit64(v95)))));
  if (!v97)
  {
LABEL_40:
    sub_29DF219B8();
    v107 = HKShowSensitiveLogItems();
    v108 = v168;
    v109 = v170;
    if (v107)
    {
      v110 = v190;
      sub_29E2C04B4();
      v111 = sub_29E2C0504();
      v112 = sub_29E2C3A34();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v194 = v114;
        *v113 = 136315138;
        v115 = sub_29DFFF808();
        v117 = sub_29DFAA104(v115, v116, &v194);

        *(v113 + 4) = v117;
        v109 = v170;
        _os_log_impl(&dword_29DE74000, v111, v112, "[%s] Not submitting tile no setup record for sample UUID", v113, 0xCu);
        sub_29DE93B3C(v114);
        MEMORY[0x29ED82140](v114, -1, -1);
        MEMORY[0x29ED82140](v113, -1, -1);
      }

      (*(v108 + 8))(v110, v167);
    }

LABEL_45:
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v171 = v59;
    v172 = v60;
    v99 = v56;
    v191 = v97;
    v100 = [v97 sampleUUID];
    v101 = v175;
    sub_29E2BCC04();

    v102 = [v189 UUID];
    sub_29E2BCC04();

    LOBYTE(v102) = _s24MenstrualCyclesAppPlugin34ReviewPregnancyInMedicalIDUserDataV23__derived_struct_equalsySbAC_ACtFZ_0();
    v103 = *v174;
    v104 = v41;
    v105 = v41;
    v106 = v176;
    (*v174)(v105, v176);
    v103(v101, v106);
    if (v102)
    {
      break;
    }

    v59 = v96;
    v60 = v55;
    v56 = v99;
    v41 = v104;
    v57 = v173;
    if ((v99 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_35:
    v98 = sub_29E2C44C4();
    if (v98)
    {
      v193 = v98;
      sub_29DE9408C(0, &qword_2A1A5E100);
      swift_dynamicCast();
      v97 = v194;
      v96 = v59;
      v55 = v60;
      if (v194)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  sub_29DF219B8();
  v119 = v191;
  v120 = [v119 configurationStepsReviewDate];
  if (v120)
  {
    v121 = v120;

    v122 = v188;
    sub_29E2BCB44();

    v123 = sub_29E2BCBB4();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    sub_29E000780(v122, sub_29DEB3B00);
    v124 = HKShowSensitiveLogItems();
    v125 = v168;
    v126 = v170;
    if (v124)
    {
      v127 = v181;
      sub_29E2C04B4();
      v128 = sub_29E2C0504();
      v129 = sub_29E2C3A34();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v194 = v131;
        *v130 = 136315138;
        v132 = sub_29DFFF808();
        v134 = sub_29DFAA104(v132, v133, &v194);
        v126 = v170;

        *(v130 + 4) = v134;
        _os_log_impl(&dword_29DE74000, v128, v129, "[%s] Not submitting tile, configuration steps for sample UUID reviewed", v130, 0xCu);
        sub_29DE93B3C(v131);
        MEMORY[0x29ED82140](v131, -1, -1);
        MEMORY[0x29ED82140](v130, -1, -1);
      }

      (*(v125 + 8))(v127, v167);
    }

    goto LABEL_45;
  }

  v135 = sub_29E2BCBB4();
  v136 = v188;
  (*(*(v135 - 8) + 56))(v188, 1, 1, v135);
  sub_29E000780(v136, sub_29DEB3B00);
  sub_29DE9408C(0, &unk_2A1A5E190);
  v55 = v170;
  v56 = v119;
  v93 = v187;
  sub_29E2C2ED4();
  sub_29DE9408C(0, &qword_2A1A5E100);
  sub_29E2C2ED4();
  v137 = v182;
  sub_29DFFE4BC(v93, v182);
  v138 = v137;
  v96 = v185;
  v139 = v186;
  if ((*(v186 + 48))(v138, 1, v185) == 1)
  {
    sub_29E000780(v138, sub_29DF1D934);
    v140 = HKShowSensitiveLogItems();
    v141 = v168;
    if (v140)
    {
      v142 = v179;
      sub_29E2C04B4();
      v143 = sub_29E2C0504();
      v144 = sub_29E2C3A14();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v194 = v146;
        *v145 = 136315138;
        v147 = sub_29DFFF808();
        v149 = sub_29DFAA104(v147, v148, &v194);

        *(v145 + 4) = v149;
        _os_log_impl(&dword_29DE74000, v143, v144, "[%s] Failed to encode PromptTileView.ViewModel for Review Adjusted Features tile", v145, 0xCu);
        sub_29DE93B3C(v146);
        v150 = v146;
        v93 = v187;
        MEMORY[0x29ED82140](v150, -1, -1);
        MEMORY[0x29ED82140](v145, -1, -1);
      }

      (*(v141 + 8))(v142, v167);
    }

    sub_29E000780(v93, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
    return MEMORY[0x29EDCA190];
  }

  v59 = *(v139 + 32);
  v60 = v180;
  (v59)(v180, v138, v96);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v57 = v178;
    sub_29DE9E9C8(v93, v178);
    v41 = sub_29E2C0504();
    v151 = sub_29E2C3A34();
    if (os_log_type_enabled(v41, v151))
    {
      v152 = swift_slowAlloc();
      LODWORD(v191) = v151;
      v153 = v152;
      v154 = swift_slowAlloc();
      v194 = v154;
      *v153 = 136315394;
      v155 = sub_29DFFF808();
      v157 = sub_29DFAA104(v155, v156, &v194);

      *(v153 + 4) = v157;
      *(v153 + 12) = 2080;
      sub_29DE9E9C8(v57, v177);
      v158 = sub_29E2C3464();
      v160 = v159;
      sub_29E000780(v57, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
      v161 = sub_29DFAA104(v158, v160, &v194);
      v60 = v180;

      *(v153 + 14) = v161;
      v96 = v185;
      _os_log_impl(&dword_29DE74000, v41, v191, "[%s] Submitting Review Adjusted Features tile with: %s", v153, 0x16u);
      swift_arrayDestroy();
      v162 = v154;
      v93 = v187;
      MEMORY[0x29ED82140](v162, -1, -1);
      MEMORY[0x29ED82140](v153, -1, -1);

LABEL_64:
      (*(v168 + 8))(v166, v167);
      v139 = v186;
      goto LABEL_65;
    }

LABEL_63:

    sub_29E000780(v57, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
    goto LABEL_64;
  }

LABEL_65:
  sub_29E0006D4(0, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  v163 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_29E2CAB20;
  (v59)(v164 + v163, v60, v96);

  sub_29E000780(v93, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
  return v164;
}

uint64_t sub_29DFFE4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v104 = a2;
  v87 = sub_29E2BD564();
  v86 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v85 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E2BE194();
  v81 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v79 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_29E2BD594();
  v83 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v80 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29E2BD6E4();
  v76 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29E2BD794();
  v75 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BD2E4();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v108 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BD234();
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v107 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v99 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDC9C68];
  sub_29E0006D4(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v105 = &v72 - v15;
  v98 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v98);
  *&v103 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0006D4(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v13);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v72 - v18;
  sub_29E0006D4(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v13);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v95 = &v72 - v21;
  v22 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v23 = sub_29E2C3384();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v29 = &v72 - v28;
  v101 = sub_29E2BE8C4();
  v100 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101);
  v106 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  v97 = *(v24 + 16);
  v97(v26, v29, v23);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v31 = qword_2A1A67F80;
  v32 = qword_2A1A67F80;
  v91 = v31;
  v33 = v32;
  sub_29E2BCC74();
  v96 = v33;
  v94 = sub_29E2C3414();
  v93 = v34;
  v35 = *(v24 + 8);
  v89 = v24 + 8;
  v90 = v35;
  v35(v29, v23);
  v36 = sub_29E2BE974();
  (*(*(v36 - 8) + 56))(v95, 1, 1, v36);
  v37 = sub_29E2BDE24();
  (*(*(v37 - 8) + 56))(v19, 1, 1, v37);
  v113 = MEMORY[0x29EDCA190];
  sub_29E0005E4(&unk_2A181A7D0, MEMORY[0x29EDC2550]);
  sub_29DF1DC70(0);
  v88 = "EDING_ALERT_MESSAGE";
  sub_29E0005E4(&qword_2A181A7E0, sub_29DF1DC70);
  sub_29E2C43F4();
  sub_29E2BEF64();
  swift_allocObject();
  v98 = sub_29E2BEF54();
  sub_29E2C3314();
  v38 = v97;
  v97(v26, v29, v23);
  sub_29E2BCC74();
  v95 = sub_29E2C3414();
  v94 = v39;
  v40 = v90;
  v90(v29, v23);
  sub_29E2C3314();
  v38(v26, v29, v23);
  sub_29E2BCC74();
  v93 = sub_29E2C3414();
  v92 = v41;
  v40(v29, v23);
  sub_29E2C3314();
  v38(v26, v29, v23);
  sub_29E2BCC74();
  v97 = sub_29E2C3414();
  v91 = v42;
  v40(v29, v23);
  v43 = v105;
  sub_29E2BDE34();
  v44 = sub_29E2BDE44();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  sub_29E0006D4(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v45 = sub_29E2BE2A4();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  v103 = xmmword_29E2CAB20;
  *(v48 + 16) = xmmword_29E2CAB20;
  v49 = *MEMORY[0x29EDC1D60];
  v50 = *(v46 + 104);
  v50(v48 + v47, v49, v45);
  sub_29E2BE894();
  v51 = swift_allocObject();
  *(v51 + 16) = v103;
  v50(v51 + v47, v49, v45);
  sub_29E2BE884();
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  sub_29E0005E4(&qword_2A181A7F0, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
  v52 = sub_29E2BC2C4();
  v54 = v53;

  v55 = v104;
  sub_29E0007E0();
  v56 = *(v111 + 104);
  LODWORD(v102) = *MEMORY[0x29EDC3758];
  v105 = (v111 + 104);
  v99 = v56;
  (v56)(v107);
  v57 = sub_29E2BD5D4();
  (*(v109 + 104))(v108, *MEMORY[0x29EDC1B28], v110);
  sub_29E0005E4(&qword_2A181A808, sub_29E0007E0);
  v58 = v106;
  sub_29E2BD2D4();

  sub_29DF1DD38(v52, v54);
  (*(v109 + 8))(v108, v110);
  (*(v111 + 8))(v107, v112);
  (*(v100 + 8))(v58, v101);
  v59 = sub_29E2BD4C4();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v55, 0, 1, v59);
  v61 = *(v60 + 48);
  if (!v61(v55, 1, v59))
  {
    sub_29DFF9A94();
    inited = swift_initStackObject();
    *(inited + 16) = v103;
    *(inited + 32) = sub_29E2BD664();
    *(inited + 40) = v63;
    v64 = sub_29E2BD494();
    sub_29DECE164(inited);
    swift_setDeallocating();
    sub_29DECE1D4(inited + 32);
    v64(&v113, 0);
    v55 = v104;
  }

  if (!v61(v55, 1, v59))
  {
    (*(v76 + 104))(v74, *MEMORY[0x29EDC3910], v78);
    v65 = v73;
    sub_29E2BD7A4();
    v66 = v77;
    sub_29E2BD314();
    (*(v75 + 8))(v65, v66);
  }

  if (!v61(v55, 1, v59))
  {
    sub_29E2BD274();
    sub_29E0006D4(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v67 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v103;
    (v99)(v68 + v67, v102, v112);
    v69 = v79;
    sub_29E110B7C(v79);
    sub_29E2BE184();
    (*(v81 + 8))(v69, v82);
    (*(v86 + 104))(v85, *MEMORY[0x29EDC3898], v87);
    v70 = v80;
    sub_29E2BD574();
    sub_29E2BD584();
    (*(v83 + 8))(v70, v84);
    sub_29E2BD3A4();
  }

  result = (v61)(v55, 1, v59);
  if (!result)
  {
    return sub_29E2BD354();
  }

  return result;
}

void sub_29DFFF838(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v44 - v13;
  if (a1)
  {
    v15 = a1;
    sub_29E2C04B4();
    v16 = v15;
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[1] = a3;
      v45 = a4;
      v21 = v20;
      v46 = v20;
      *v19 = 136315394;
      swift_getMetatypeMetadata();
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, &v46);
      v44[0] = v8;
      v25 = v24;

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      v26 = [v16 pregnancyModeSetupCompletionSet];
      sub_29DE9408C(0, &qword_2A1A5E100);
      sub_29DFF5E88();
      v27 = sub_29E2C3814();

      v45 = v27;
      sub_29E000978();
      v28 = sub_29E2C3464();
      v30 = sub_29DFAA104(v28, v29, &v46);

      *(v19 + 14) = v30;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%s] Received initial model %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v21, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);

      (*(v9 + 8))(v14, v44[0]);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v42 = [v16 pregnancyModeSetupCompletionSet];
      sub_29DE9408C(0, &qword_2A1A5E100);
      sub_29DFF5E88();
      v43 = sub_29E2C3814();

      v46 = v43;
      sub_29E2C10C4();
    }

    else
    {
    }
  }

  else
  {
    sub_29E2C04B4();
    v31 = a2;
    v32 = sub_29E2C0504();
    v33 = sub_29E2C3A14();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136315394;
      v45 = a4;
      swift_getMetatypeMetadata();
      v36 = sub_29E2C3464();
      v38 = sub_29DFAA104(v36, v37, &v46);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v45 = a2;
      sub_29E0006D4(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v39 = sub_29E2C42F4();
      v41 = sub_29DFAA104(v39, v40, &v46);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29DE74000, v32, v33, "[%s] Received error when fetching experience model: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_29DFFFD58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35SetupPregnancyModeFeaturesGenerator_context;
  v5 = sub_29E2BD624();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29DFFFDF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DFFCD44();
  *a1 = result;
  return result;
}

uint64_t sub_29DFFFE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E0005E4(&unk_2A1A5FEF0, type metadata accessor for SetupPregnancyModeFeaturesGenerator);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29DFFFEA0(uint64_t a1)
{
  v2 = sub_29E0005E4(&qword_2A1A5FF00, type metadata accessor for SetupPregnancyModeFeaturesGenerator);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29DFFFF0C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_29E2BD564();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BE194();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = sub_29E2BD274();
  sub_29E0006D4(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v9 = sub_29E2BD234();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CAB20;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x29EDC3758], v9);
  sub_29E110B7C(v8);
  sub_29E2BE184();
  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, *MEMORY[0x29EDC3898], v1);
  return sub_29E2BD574();
}

uint64_t sub_29E000188(void *a1)
{
  v3 = *v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = a1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  v11 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v28 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v29 = v14;
    v30 = v3;
    *v13 = 136315394;
    swift_getMetatypeMetadata();
    v15 = sub_29E2C3464();
    v17 = sub_29DFAA104(v15, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v8 pregnancyModeSetupCompletionSet];
    sub_29DE9408C(0, &qword_2A1A5E100);
    sub_29DFF5E88();
    v19 = sub_29E2C3814();

    v30 = v19;
    sub_29E000978();
    v20 = sub_29E2C3464();
    v22 = sub_29DFAA104(v20, v21, &v29);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%s] Received experience model update %s", v13, 0x16u);
    swift_arrayDestroy();
    v23 = v14;
    v11 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
    MEMORY[0x29ED82140](v23, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);

    (*(v5 + 8))(v7, v28);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v24 = [v8 v11[490]];
  sub_29DE9408C(0, &qword_2A1A5E100);
  sub_29DFF5E88();
  v25 = sub_29E2C3814();

  v30 = v25;
  sub_29E2C10C4();
}

uint64_t sub_29E0005E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E00062C()
{
  if (!qword_2A1A5E6C0)
  {
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E6C0);
    }
  }
}

void sub_29E0006D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E000780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E0007E0()
{
  if (!qword_2A181A7F8)
  {
    type metadata accessor for SetupPregnancyModeFeaturesTileActionHandler();
    sub_29E0005E4(&qword_2A181A800, type metadata accessor for SetupPregnancyModeFeaturesTileActionHandler);
    v0 = sub_29E2BE994();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A7F8);
    }
  }
}