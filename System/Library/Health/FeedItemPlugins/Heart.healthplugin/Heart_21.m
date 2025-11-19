void sub_29D8D0488()
{
  if (!qword_2A1A24720)
  {
    sub_29D9349A8();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24720);
    }
  }
}

uint64_t sub_29D8D04E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8D0500(uint64_t a1, uint64_t a2)
{
  sub_29D8D0488();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8D0564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8D0630@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1760];
  v3 = sub_29D9346E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D8D06A4(uint64_t a1)
{
  swift_getObjectType();
  sub_29D8D0F88();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A17B78C8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D92F7AC();
  v8 = sub_29D934C58();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = sub_29D934C48();
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t sub_29D8D08E4()
{
  v1 = v0 + qword_2A17B78C8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D8D0934(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17B78C8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D8D09A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B78C8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

void (*sub_29D8D0A48(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_29D936958();
  return sub_29D69F0C0;
}

uint64_t sub_29D8D0AD0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
  swift_initStackObject();
  v8 = sub_29D907334(0, 0xE000000000000000)[4];
  (*(v3 + 104))(v7, *MEMORY[0x29EDC1760], v2);
  sub_29D935E88();
  sub_29D9347C8();
  sub_29D9347A8();
  (*(v3 + 8))(v7, v2);
  sub_29D92F7C4();
  sub_29D9368C8();

  v9 = sub_29D9368F8();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

id sub_29D8D0CA0(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_29D934C58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = objc_allocWithZone(type metadata accessor for ElectrocardiogramSpecifierDataSource(0));
  v9 = sub_29D8D06A4(v7);
  sub_29D8D0F30();
  v10 = v9;
  v11 = sub_29D9365D8();
  sub_29D92F7E0();
  v12 = sub_29D939D28();

  [v11 setTitle_];

  (*(v3 + 8))(a1, v2);
  return v11;
}

id sub_29D8D0EE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D8D0F30()
{
  result = qword_2A17B78F0;
  if (!qword_2A17B78F0)
  {
    type metadata accessor for ElectrocardiogramSpecifierDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B78F0);
  }

  return result;
}

void sub_29D8D0F88()
{
  if (!qword_2A17B1FF0)
  {
    sub_29D934C58();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1FF0);
    }
  }
}

uint64_t sub_29D8D0FE0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D6A0CD0();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

id sub_29D8D10A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = HKLogHeartRateCategory();
    v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 16)];

    v5 = *(v0 + 32);
    *(v0 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29D8D1130(char a1, char a2, int a3, uint64_t a4, int a5, int a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a3;
  v10 = *v6;
  v11 = MEMORY[0x29EDC9C68];
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v15);
  v17 = &v30[-v16];
  sub_29D8D5AD4(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v11);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v22 = &v30[-v21];
  v23 = sub_29D93A028();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_29D6A0A20(a4, v17);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  sub_29D6B1204(v17, v26 + v24);
  v27 = v26 + v25;
  *v27 = v6;
  *(v27 + 8) = a1;
  *(v27 + 9) = a2;
  v28 = v32;
  *(v27 + 10) = v31;
  *(v27 + 11) = v28;
  *(v27 + 12) = v33;
  *(v26 + ((v25 + 20) & 0xFFFFFFFFFFFFFFF8)) = v10;

  sub_29D6BEBA4(0, 0, v22, &unk_29D953F88, v26);
}

uint64_t sub_29D8D13A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 168) = a5;
  *(v8 + 176) = v17;
  *(v8 + 412) = v16;
  *(v8 + 411) = a8;
  *(v8 + 410) = a7;
  *(v8 + 409) = a6;
  *(v8 + 160) = a4;
  v9 = sub_29D9339F8();
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D14F8, 0, 0);
}

uint64_t sub_29D8D14F8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = *MEMORY[0x29EDBA3A8];
  v5 = sub_29D939D68();
  v7 = v6;
  v8 = *MEMORY[0x29EDBA360];
  v0[29] = *MEMORY[0x29EDBA360];
  v9 = [v8 integerValue];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v10 = v0[28];
    v11 = v0[23];
    v12 = v0[24];
    v14 = v0[20];
    v13 = v0[21];

    v5 = sub_29D8D29EC(v14);
    v7 = v15;
    sub_29D9339A8();
    (*(v12 + 56))(v10, 0, 1, v11);
    v9 = sub_29D8D4270(v10, v14);
    sub_29D6A0D34(v10);
  }

  v0[30] = v9;
  v0[31] = v7;
  v16 = v0[21];
  v0[32] = v5;
  v0[33] = *(v16 + 40);
  v17 = swift_task_alloc();
  v0[34] = v17;
  *v17 = v0;
  v17[1] = sub_29D8D1678;

  return sub_29D6B41B0();
}

uint64_t sub_29D8D1678(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 272);
  v9 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {
    v6 = v4[31];

    v7 = sub_29D8D2368;
  }

  else
  {
    v7 = sub_29D8D1798;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D8D1798()
{
  v1 = v0[27];
  sub_29D9339E8();
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_29D8D1830;
  v3 = v0[33];

  return sub_29D6B4650();
}

uint64_t sub_29D8D1830(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v9 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v5 = v3[36];
    v6 = v3[31];
    (*(v3[24] + 8))(v3[27], v3[23]);

    v7 = sub_29D8D1ACC;
  }

  else
  {
    v7 = sub_29D8D197C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D8D197C()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = *(v0 + 264);
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = [*(v0 + 312) startDate];
    sub_29D933998();

    v8 = sub_29D6B4DEC(v3, v4);
    v9 = *(v6 + 8);
    v10 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v5);
  }

  else
  {
    v11 = *(v0 + 192);
    v8 = [*(v0 + 232) integerValue];
    v9 = *(v11 + 8);
    v10 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  *(v0 + 328) = v9;
  *(v0 + 336) = v8;
  v12 = *(v0 + 216);
  v13 = *(v0 + 184);
  *(v0 + 344) = v10;
  v9(v12, v13);
  v14 = swift_task_alloc();
  *(v0 + 352) = v14;
  *v14 = v0;
  v14[1] = sub_29D8D1CF0;
  v15 = *(v0 + 168);

  return sub_29D8D5158();
}

uint64_t sub_29D8D1ACC()
{
  v22 = v0;
  v1 = v0[40];
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
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v7, 0x16u);
    sub_29D6ACA3C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  else
  {
  }

  v16 = v0[27];
  v15 = v0[28];
  v18 = v0[25];
  v17 = v0[26];

  v19 = v0[1];

  return v19();
}

uint64_t sub_29D8D1CF0(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 152) = a1;
  *(v3 + 144) = v1;
  v4 = *(v2 + 352);
  v6 = *v1;

  return MEMORY[0x2A1C73D48](sub_29D8D1DF4, 0, 0);
}

uint64_t sub_29D8D1DF4()
{
  v1 = v0[25];
  sub_29D9339E8();
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_29D8D1E94;
  v3 = v0[25];
  v4 = v0[21];

  return sub_29D8D4938(v3);
}

uint64_t sub_29D8D1E94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v16 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v6 = *(v4 + 344);
    v7 = *(v4 + 288);
    v8 = *(v4 + 248);
    (*(v4 + 328))(*(v4 + 200), *(v4 + 184));

    v9 = sub_29D8D258C;
  }

  else
  {
    v10 = *(v4 + 152);
    v11 = *(v4 + 344);
    v12 = *(v4 + 328);
    v13 = *(v4 + 200);
    v14 = *(v4 + 184);
    *(v4 + 376) = a1;
    *(v4 + 414) = v10;
    v12(v13, v14);
    v9 = sub_29D8D2000;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29D8D2000()
{
  v1 = v0;
  v17 = *(v0 + 414);
  v18 = v0 + 16;
  v19 = v0 + 408;
  v16 = *(v0 + 376);
  v2 = *(v0 + 336);
  v15 = *(v0 + 280);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 412);
  v7 = *(v0 + 411);
  v8 = *(v1 + 409);
  v9 = *(v1 + 168);
  type metadata accessor for BloodPressureJournalLoggingAnalyticsEvent();
  v10 = swift_allocObject();
  *(v1 + 384) = v10;
  *(v10 + 16) = v8;
  *(v10 + 18) = v7;
  *(v10 + 24) = v4;
  *(v10 + 32) = v3;
  *(v10 + 40) = v5;
  *(v10 + 48) = v6;
  *(v10 + 50) = v17;
  *(v10 + 56) = v15;
  *(v10 + 72) = v2;
  *(v10 + 80) = v16;
  v11 = sub_29D8D10A0();
  *(v1 + 392) = v11;
  *(v1 + 16) = v1;
  *(v1 + 56) = v19;
  *(v1 + 24) = sub_29D8D21C4;
  v12 = swift_continuation_init();
  sub_29D6ACB00();
  *(v1 + 136) = v13;
  *(v1 + 80) = MEMORY[0x29EDCA5F8];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_29D8D0FE0;
  *(v1 + 104) = &unk_2A244D3D0;
  *(v1 + 112) = v12;
  [v11 submitEvent:v10 completion:?];

  return MEMORY[0x2A1C73CC0](v18);
}

uint64_t sub_29D8D21C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_29D8D27B0;
  }

  else
  {
    v3 = sub_29D8D22D4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8D22D4()
{
  v1 = *(v0 + 384);

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29D8D2368()
{
  v22 = v0;
  v1 = v0[37];
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
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v7, 0x16u);
    sub_29D6ACA3C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  else
  {
  }

  v16 = v0[27];
  v15 = v0[28];
  v18 = v0[25];
  v17 = v0[26];

  v19 = v0[1];

  return v19();
}

uint64_t sub_29D8D258C()
{
  v22 = v0;
  v1 = v0[46];
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
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v7, 0x16u);
    sub_29D6ACA3C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  else
  {
  }

  v16 = v0[27];
  v15 = v0[28];
  v18 = v0[25];
  v17 = v0[26];

  v19 = v0[1];

  return v19();
}

uint64_t sub_29D8D27B0()
{
  v25 = v0;
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  swift_willThrow();

  v4 = v0[50];
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = v4;
  v7 = sub_29D937878();
  v8 = sub_29D93A288();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136446466;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] [Logging Analytics] Failed to submit analytics with error: %@", v10, 0x16u);
    sub_29D6ACA3C(v11);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[27];
  v18 = v0[28];
  v21 = v0[25];
  v20 = v0[26];

  v22 = v0[1];

  return v22();
}

uint64_t sub_29D8D29EC(uint64_t a1)
{
  v2 = v1;
  v199 = *v2;
  v212 = sub_29D933B68();
  v218 = *(v212 - 8);
  v4 = *(v218 + 64);
  MEMORY[0x2A1C7C4A8](v212, v5);
  v211 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_29D933BA8();
  v221 = *(v210 - 8);
  v7 = v221[8];
  MEMORY[0x2A1C7C4A8](v210, v8);
  v209 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_29D933B28();
  v217 = *(v220 - 8);
  v10 = *(v217 + 64);
  MEMORY[0x2A1C7C4A8](v220, v11);
  v208 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D933CE8();
  v219 = *(v13 - 8);
  v14 = *(v219 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v207 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x29EDC9C68];
  sub_29D8D5AD4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8, v20);
  v205 = &v168 - v21;
  sub_29D8D5AD4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v17);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v204 = &v168 - v25;
  v206 = sub_29D933318();
  v213 = *(v206 - 8);
  v26 = *(v213 + 64);
  MEMORY[0x2A1C7C4A8](v206, v27);
  v216 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v17);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x2A1C7C4A8](v29 - 8, v31);
  v195 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v168 - v36;
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v41 = &v168 - v40;
  v43 = MEMORY[0x2A1C7C4A8](v39, v42);
  v200 = &v168 - v44;
  MEMORY[0x2A1C7C4A8](v43, v45);
  v47 = &v168 - v46;
  v48 = sub_29D9339F8();
  v49 = *(v48 - 8);
  v50 = v49[8];
  v52 = MEMORY[0x2A1C7C4A8](v48, v51);
  v194 = &v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x2A1C7C4A8](v52, v54);
  v196 = &v168 - v56;
  v58 = MEMORY[0x2A1C7C4A8](v55, v57);
  v60 = &v168 - v59;
  v62 = MEMORY[0x2A1C7C4A8](v58, v61);
  v215 = &v168 - v63;
  v65 = MEMORY[0x2A1C7C4A8](v62, v64);
  v67 = &v168 - v66;
  MEMORY[0x2A1C7C4A8](v65, v68);
  v214 = &v168 - v69;
  sub_29D6A0A20(a1, v47);
  v202 = v49[6];
  v203 = v49 + 6;
  if (v202(v47, 1, v48) != 1)
  {
    v170 = v41;
    v168 = v37;
    v171 = v60;
    v193 = v67;
    v201 = v49;
    v70 = v49[4];
    v192 = v49 + 4;
    v191 = v70;
    v70(v214, v47, v48);
    v71 = *(v219 + 56);
    v190 = v219 + 56;
    v189 = v71;
    v71(v204, 1, 1, v13);
    v72 = sub_29D933D38();
    v73 = *(v72 - 8);
    v74 = *(v73 + 56);
    v188 = v72;
    v187 = v74;
    v186 = v73 + 56;
    (v74)(v205, 1, 1);
    sub_29D933308();
    sub_29D9332D8();
    sub_29D9332F8();
    v75 = v207;
    sub_29D933C88();
    sub_29D933AD8();
    v76 = *MEMORY[0x29EDB9C80];
    v197 = v13;
    v77 = v217;
    v78 = *(v217 + 104);
    v79 = v208;
    v184 = v76;
    v185 = v217 + 104;
    v183 = v78;
    v78(v208);
    v80 = v221[13];
    v81 = v209;
    v181 = *MEMORY[0x29EDB9C98];
    v82 = v210;
    v182 = v221 + 13;
    v180 = v80;
    v80(v209);
    v83 = *MEMORY[0x29EDB9C90];
    v84 = v218;
    v85 = *(v218 + 104);
    v198 = v48;
    v86 = v211;
    v178 = v83;
    v87 = v212;
    v179 = v218 + 104;
    v177 = v85;
    v85(v211);
    v88 = v200;
    v89 = v216;
    sub_29D933C98();
    v90 = *(v84 + 8);
    v91 = v86;
    v92 = v198;
    v218 = v84 + 8;
    v176 = v90;
    v90(v91, v87);
    v93 = v221[1];
    ++v221;
    v175 = v93;
    v93(v81, v82);
    v94 = *(v77 + 8);
    v95 = v219;
    v217 = v77 + 8;
    v174 = v94;
    v94(v79, v220);
    v96 = v197;
    v97 = v201 + 1;
    v98 = v201[1];
    v98(v215, v92);
    v100 = *(v95 + 8);
    v99 = v95 + 8;
    v173 = v100;
    v100(v75, v96);
    v102 = v213 + 8;
    v101 = *(v213 + 8);
    v101(v89, v206);
    v103 = v88;
    if (v202(v88, 1, v92) == 1)
    {
      v104 = v214;
    }

    else
    {
      v191(v193, v88, v92);
      v219 = v99;
      v172 = v98;
      v169 = v101;
      v189(v204, 1, 1, v96);
      v187(v205, 1, 1, v188);
      v105 = v216;
      sub_29D933308();
      v201 = v97;
      sub_29D9332D8();
      sub_29D9332F8();
      v106 = v207;
      sub_29D933C88();
      v107 = v215;
      sub_29D933AD8();
      v213 = v102;
      v108 = v208;
      v183(v208, v184, v220);
      v109 = v209;
      v110 = v210;
      v180(v209, v181, v210);
      v111 = v211;
      v112 = v212;
      v177(v211, v178, v212);
      v113 = v170;
      sub_29D933C98();
      v114 = v111;
      v92 = v198;
      v176(v114, v112);
      v115 = v109;
      v116 = v197;
      v117 = v113;
      v175(v115, v110);
      v174(v108, v220);
      v172(v107, v92);
      v173(v106, v116);
      v169(v105, v206);
      if (v202(v113, 1, v92) == 1)
      {
        v104 = v214;
        v98 = v172;
        v172(v193, v92);
      }

      else
      {
        v191(v171, v113, v92);
        v189(v204, 1, 1, v116);
        v187(v205, 1, 1, v188);
        v118 = v216;
        sub_29D933308();
        sub_29D9332D8();
        sub_29D9332F8();
        v119 = v207;
        sub_29D933C88();
        v120 = v215;
        sub_29D933AD8();
        v121 = v208;
        v183(v208, v184, v220);
        v122 = v209;
        v123 = v210;
        v180(v209, v181, v210);
        v124 = v211;
        v125 = v212;
        v177(v211, v178, v212);
        v126 = v168;
        sub_29D933C98();
        v127 = v124;
        v92 = v198;
        v176(v127, v125);
        v175(v122, v123);
        v174(v121, v220);
        v128 = v120;
        v129 = v197;
        v98 = v172;
        v172(v128, v92);
        v130 = v119;
        v131 = v169;
        v173(v130, v129);
        v131(v118, v206);
        if (v202(v126, 1, v92) == 1)
        {
          v104 = v214;
          v132 = v126;
        }

        else
        {
          v191(v196, v126, v92);
          v189(v204, 1, 1, v129);
          v187(v205, 1, 1, v188);
          v133 = v216;
          sub_29D933308();
          sub_29D9332D8();
          sub_29D9332F8();
          v134 = v207;
          sub_29D933C88();
          v135 = v215;
          sub_29D933AD8();
          v136 = v208;
          v183(v208, v184, v220);
          v138 = v209;
          v137 = v210;
          v180(v209, v181, v210);
          v140 = v211;
          v139 = v212;
          v177(v211, v178, v212);
          v141 = v195;
          sub_29D933C98();
          v142 = v140;
          v92 = v198;
          v176(v142, v139);
          v143 = v137;
          v144 = v172;
          v175(v138, v143);
          v174(v136, v220);
          v144(v135, v92);
          v145 = v134;
          v132 = v141;
          v173(v145, v197);
          v169(v133, v206);
          if (v202(v141, 1, v92) != 1)
          {
            v157 = v144;
            v158 = v194;
            v191(v194, v132, v92);
            v159 = v214;
            v160 = v193;
            v161 = sub_29D933968();
            v162 = v171;
            if ((v161 & 1) != 0 && (sub_29D702F18(), (sub_29D939CB8() & 1) == 0))
            {
              v157(v158, v92);
              v157(v196, v92);
              v157(v162, v92);
              v157(v160, v92);
              v157(v159, v92);
              v167 = 1852993389;
            }

            else
            {
              v163 = sub_29D933968();
              v164 = v196;
              if (v163)
              {
                sub_29D702F18();
                if ((sub_29D939CB8() & 1) == 0)
                {
                  v157(v158, v92);
                  v157(v164, v92);
                  v157(v162, v92);
                  v157(v160, v92);
                  v157(v159, v92);
                  return 0x6F6F6E7265746661;
                }
              }

              if (sub_29D933968() & 1) == 0 || (sub_29D702F18(), (sub_29D939CB8()))
              {
                if ((sub_29D933968() & 1) != 0 && (sub_29D702F18(), (sub_29D939CB8() & 1) == 0))
                {
                  v157(v158, v92);
                  v157(v164, v92);
                  v157(v162, v92);
                  v157(v160, v92);
                  v157(v159, v92);
                  return 0x746867696ELL;
                }

                else
                {
                  v165 = *MEMORY[0x29EDBA3A8];
                  v166 = sub_29D939D68();
                  v157(v158, v92);
                  v157(v164, v92);
                  v157(v162, v92);
                  v157(v160, v92);
                  v157(v159, v92);
                  return v166;
                }
              }

              v157(v158, v92);
              v157(v164, v92);
              v157(v162, v92);
              v157(v160, v92);
              v157(v159, v92);
              v167 = 1852143205;
            }

            return v167 | 0x676E6900000000;
          }

          v104 = v214;
          v144(v196, v92);
          v98 = v144;
        }

        v146 = v193;
        v98(v171, v92);
        v117 = v132;
        v98(v146, v92);
      }

      v103 = v117;
    }

    v98(v104, v92);
    v47 = v103;
  }

  sub_29D6A0D34(v47);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v147 = sub_29D937898();
  sub_29D69C6C0(v147, qword_2A1A2C008);
  v148 = sub_29D937878();
  v149 = sub_29D93A288();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v222 = v151;
    *v150 = 136446210;
    v152 = sub_29D93AF08();
    v154 = sub_29D6C2364(v152, v153, &v222);

    *(v150 + 4) = v154;
    _os_log_impl(&dword_29D677000, v148, v149, "[%{public}s] [Logging Analytics] Failed to create dates for window type calculations", v150, 0xCu);
    sub_29D69417C(v151);
    MEMORY[0x29ED6BE30](v151, -1, -1);
    MEMORY[0x29ED6BE30](v150, -1, -1);
  }

  v155 = *MEMORY[0x29EDBA3A8];
  return sub_29D939D68();
}

uint64_t sub_29D8D4270(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v59 = *v2;
  v4 = sub_29D933CE8();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933318();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v57 - v20;
  v22 = sub_29D9339F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v63 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v57 - v29;
  sub_29D6A0A20(a1, v21);
  v31 = *(v23 + 48);
  if (v31(v21, 1, v22) == 1)
  {
    v18 = v21;
LABEL_5:
    sub_29D6A0D34(v18);
    return [*MEMORY[0x29EDBA360] integerValue];
  }

  v58 = v9;
  v32 = *(v23 + 32);
  v32(v30, v21, v22);
  sub_29D6A0A20(v65, v18);
  if (v31(v18, 1, v22) == 1)
  {
    (*(v23 + 8))(v30, v22);
    goto LABEL_5;
  }

  v34 = v63;
  v32(v63, v18, v22);
  v35 = v34;
  sub_29D933C88();
  sub_29D8D5AD4(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v36 = sub_29D933CC8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_29D93DDB0;
  (*(v37 + 104))(v40 + v39, *MEMORY[0x29EDB9CC8], v36);
  sub_29D6E3748(v40);
  swift_setDeallocating();
  (*(v37 + 8))(v40 + v39, v36);
  swift_deallocClassInstance();
  v41 = v64;
  sub_29D933B38();

  (*(v60 + 8))(v8, v61);
  v42 = sub_29D9332C8();
  if ((v43 & 1) == 0)
  {
    v55 = v42;
    (*(v62 + 8))(v41, v58);
    v56 = *(v23 + 8);
    v23 += 8;
    v56(v35, v22);
    v56(v30, v22);
    result = v55;
    if ((v55 & 0x8000000000000000) == 0)
    {
      return result;
    }

    result = -v55;
    if (!__OFSUB__(0, v55))
    {
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v39 = v58;
  if (qword_2A1A25718 != -1)
  {
LABEL_16:
    swift_once();
  }

  v44 = sub_29D937898();
  sub_29D69C6C0(v44, qword_2A1A2C008);
  v45 = sub_29D937878();
  v46 = sub_29D93A288();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66 = v48;
    *v47 = 136446210;
    v49 = sub_29D93AF08();
    v51 = sub_29D6C2364(v49, v50, &v66);

    *(v47 + 4) = v51;
    v35 = v63;
    _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s] [Logging Analytics] Failed to compute difference in hours", v47, 0xCu);
    sub_29D69417C(v48);
    v52 = v48;
    v41 = v64;
    MEMORY[0x29ED6BE30](v52, -1, -1);
    MEMORY[0x29ED6BE30](v47, -1, -1);
  }

  v53 = [*MEMORY[0x29EDBA360] integerValue];
  (*(v62 + 8))(v41, v39);
  v54 = *(v23 + 8);
  v54(v35, v22);
  v54(v30, v22);
  return v53;
}

uint64_t sub_29D8D4938(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29D9339F8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_29D8D5A00(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_29D8D5A00(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA210]);
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D4B08, 0, 0);
}

uint64_t sub_29D8D4B08()
{
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v1 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v1)
  {
    v3 = v1;
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v21 = v0[3];
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    sub_29D939AB8();

    sub_29D8D5A68(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
    v8 = *(v5 + 72);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    (*(v5 + 16))(v10 + v9, v4, v7);
    v11 = MEMORY[0x29EDB9980];
    sub_29D8D5A68(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
    sub_29D8D5A00(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v11);
    v13 = *(*(v12 - 8) + 72);
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED63750](KeyPath, 1);
    sub_29D939B28();
    v16 = *(v21 + 16);
    v17 = *(MEMORY[0x29EDBA230] + 4);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_29D8D4DB8;
    v19 = v0[9];
    v2 = v0[7];
    v1 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C5B578](v1, v2);
}

uint64_t sub_29D8D4DB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_29D8D5098;
  }

  else
  {
    v5 = sub_29D8D4ECC;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8D4ECC()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = v0[14];
    }

    result = sub_29D93A928();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v0[14];

    v11 = [*MEMORY[0x29EDBA360] integerValue];
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x29ED6AE30](0, v0[14]);
    v19 = v0[14];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[14] + 32);
  }

  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  v9 = *(v7 + 40);
  v10 = [v3 startDate];
  sub_29D933998();

  v11 = sub_29D6B4DEC(v8, v4);
  (*(v5 + 8))(v4, v6);
LABEL_11:
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v17 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v15 + 8))(v14, v16);

  v18 = v0[1];

  return v18(v11);
}

uint64_t sub_29D8D5098()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_29D8D5158()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_29D8D5A00(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D526C, 0, 0);
}

uint64_t sub_29D8D526C()
{
  v1 = MEMORY[0x29EDBA210];
  sub_29D8D5A68(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  sub_29D8D5A00(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, v1);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v5 = [swift_getObjCClassFromMetadata() bloodPressureType];
  if (v5)
  {
    v7 = v5;
    v8 = v0[6];
    v9 = v0[2];
    sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
    sub_29D939AB8();

    v10 = MEMORY[0x29EDB9980];
    sub_29D8D5A68(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
    sub_29D8D5A00(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v10);
    v12 = *(*(v11 - 8) + 72);
    v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED63750](KeyPath, 1);
    sub_29D939B28();
    v15 = *(v9 + 16);
    v16 = *(MEMORY[0x29EDBA230] + 4);
    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    v17[1] = sub_29D8D5560;
    v18 = v0[6];
    v6 = v0[4];
    v5 = v15;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C5B578](v5, v6);
}

uint64_t sub_29D8D5560(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_29D8D573C;
  }

  else
  {
    v5 = sub_29D8D5674;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8D5674()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    v2 = sub_29D93A928();
    v9 = v0[8];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  (*(v4 + 8))(v3, v5);
  v6 = v0[6];

  v7 = v0[1];

  return v7(v2 == 0);
}

uint64_t sub_29D8D573C()
{
  v26 = v0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v11 = v0[3];
    v24 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136446466;
    v15 = sub_29D93AF08();
    v23 = v8;
    v17 = sub_29D6C2364(v15, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v7;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] [Logging Analytics] Failed to fetch latest blood pressure sample: %@", v12, 0x16u);
    sub_29D6ACA3C(v13);
    MEMORY[0x29ED6BE30](v13, -1, -1);
    sub_29D69417C(v14);
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21(2);
}

void sub_29D8D597C(id *a1)
{
  v1 = [*a1 endDate];
  sub_29D933998();
}

void sub_29D8D5A00(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D8D5A68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D8D5A00(255, a3, &unk_2A17B37A0, 0x29EDBAD60, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D8D5AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8D5B38(uint64_t a1)
{
  v3 = v2;
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 20) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v18 = *(v1 + 16);
  v9 = v1 + v6;
  v10 = *v9;
  v11 = *(v1 + v7);
  v12 = *(v9 + 11);
  v13 = *(v9 + 10);
  v14 = *(v9 + 9);
  v15 = *(v9 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_29D6AC948;

  return sub_29D8D13A4(a1, v18, v8, v1 + v5, v10, v15, v14, v13);
}

void sub_29D8D5CEC()
{
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = sub_29D693E2C(v2, v2[3]);
    v6 = *(v3 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_29D9365B8();
    v12 = v11;
    (*(v6 + 8))(v9, v3);
    if (v12 >> 60 == 15)
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v13 = sub_29D937898();
      sub_29D69C6C0(v13, qword_2A1A2BF28);
      v14 = sub_29D937878();
      v15 = sub_29D93A298();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36 = v17;
        *v16 = 136446210;
        v37 = ObjectType;
        swift_getMetatypeMetadata();
        v18 = sub_29D939DA8();
        v20 = sub_29D6C2364(v18, v19, &v36);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] No user data found, expected related sample types cache object", v16, 0xCu);
        sub_29D69417C(v17);
        MEMORY[0x29ED6BE30](v17, -1, -1);
        MEMORY[0x29ED6BE30](v16, -1, -1);
      }
    }

    else
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v21 = sub_29D937898();
      sub_29D69C6C0(v21, qword_2A1A2BF28);
      v22 = sub_29D937878();
      v23 = sub_29D93A2A8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35 = v10;
        v26 = v25;
        v36 = v25;
        *v24 = 136446210;
        v37 = ObjectType;
        swift_getMetatypeMetadata();
        v27 = sub_29D939DA8();
        v29 = sub_29D6C2364(v27, v28, &v36);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s] Cache object set, decoding", v24, 0xCu);
        sub_29D69417C(v26);
        v30 = v26;
        v10 = v35;
        MEMORY[0x29ED6BE30](v30, -1, -1);
        MEMORY[0x29ED6BE30](v24, -1, -1);
      }

      v31 = sub_29D9330D8();
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_29D9330C8();
      sub_29D8D747C();
      sub_29D9330B8();

      sub_29D8D6278(v37);
      sub_29D71847C(v10, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8D6278(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject;
  v3 = *(v1 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject);
  *(v1 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView);
  if (v4)
  {
    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v4;
      sub_29D935E88();
      v7 = sub_29D84195C();
      sub_29D784264(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_29D8D6338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject] = 0;
  *&v3[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView] = 0;
  if (a2)
  {
    v6 = sub_29D939D28();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_29D8D6448(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject] = 0;
  *&v1[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_29D8D6508()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_cacheObject];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
    swift_beginAccess();
    sub_29D718208(v2 + v3, v17);
    v4 = v18;
    if (v18)
    {
      v5 = sub_29D693E2C(v17, v18);
      v6 = *(v4 - 8);
      v7 = *(v6 + 64);
      MEMORY[0x2A1C7C4A8](v5, v5);
      v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v6 + 16))(v9);
      sub_29D935E88();
      v10 = sub_29D936588();
      (*(v6 + 8))(v9, v4);
      v11 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorsTileView());
      v12 = v2;
      v13 = sub_29D8D74D0(v1, v10, v12, v11);
      sub_29D69417C(v17);
      v14 = *&v12[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView];
      *&v12[OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_tileView] = v13;
      v15 = v13;

      [v12 setView_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_29D8D6718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8D67CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D8D6824(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  sub_29D718124(a1, v1 + v3);
  swift_endAccess();
  sub_29D8D5CEC();
  return sub_29D822AD8(a1);
}

void (*sub_29D8D6890(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D8D68F4;
}

void sub_29D8D68F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_29D8D5CEC();
  }
}

void sub_29D8D6928()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v0 + v2, v25);
  v3 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_29D693E2C(v25, v26);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_29D936588();
  (*(v5 + 8))(v8, v3);
  v10 = [v9 displayTypeController];

  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_29D6AA400();
  v11 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v12 = [v10 displayTypeForObjectType_];

  sub_29D69417C(v25);
  if (v12)
  {
    v13 = [v12 displayCategory];
    [v13 color];
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2BF28);
    v15 = sub_29D937878();
    v16 = sub_29D93A298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      v25[0] = ObjectType;
      swift_getMetatypeMetadata();
      v19 = sub_29D939DA8();
      v21 = sub_29D6C2364(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s] No display type found for burden quantity type", v17, 0xCu);
      sub_29D69417C(v18);
      MEMORY[0x29ED6BE30](v18, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);
    }

    v22 = [objc_opt_self() blueColor];
  }
}

uint64_t sub_29D8D6D78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60E48](a1, WitnessTable);
}

uint64_t sub_29D8D6E78(unsigned __int8 a1, uint64_t a2)
{
  sub_29D715528(v26);
  v4 = type metadata accessor for AFibBurdenLifeFactorDescriptionDataSource(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_29D7C7DE4(v26);
  sub_29D8D7A5C(v26);
  v25[0] = v7;
  v25[1] = MEMORY[0x29EDC1E78];
  v25[2] = sub_29D8D7044(a2);
  v25[3] = v8;
  result = sub_29D8D734C(a1, a2);
  v10 = 0;
  v25[4] = result;
  v25[5] = v11;
  v12 = MEMORY[0x29EDCA190];
LABEL_2:
  if (v10 <= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13 + 1;
  v15 = &v25[2 * v10];
  while (1)
  {
    if (v10 == 3)
    {
      sub_29D8D7AB0(0, &qword_2A17B7928, &qword_2A17B1090);
      swift_arrayDestroy();
      v22 = sub_29D935F88();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      return sub_29D935F98();
    }

    if (v14 == ++v10)
    {
      break;
    }

    v16 = v15 + 2;
    v17 = *v15;
    v15 += 2;
    if (v17)
    {
      v18 = *(v16 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D68FDBC(0, v12[2] + 1, 1, v12);
        v12 = result;
      }

      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_29D68FDBC((v19 > 1), v20 + 1, 1, v12);
        v12 = result;
      }

      v12[2] = v20 + 1;
      v21 = &v12[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8D7044(uint64_t a1)
{
  v27 = sub_29D936018();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v27, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D697F20(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D936378();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 24);
  v19 = sub_29D933E88();
  v20 = sub_29D933E78();
  v30 = v19;
  v31 = MEMORY[0x29EDC3640];
  v29 = v20;
  v21 = [v18 profileIdentifier];
  v22 = sub_29D9350C8();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  MEMORY[0x29ED658D0](v21, v11);

  sub_29D782E90(v11);
  sub_29D6945AC(a1 + 32, v28);
  sub_29D93A3C8();
  sub_29D936328();
  v23 = *(a1 + 16);
  if (v23 == 1)
  {
    sub_29D934528();
    sub_29D9344E8();
  }

  else
  {
    sub_29D73439C(v23);
  }

  sub_29D935FF8();
  v24 = sub_29D936008();
  (*(v2 + 8))(v6, v27);
  (*(v13 + 8))(v17, v12);
  swift_getOpaqueTypeConformance2();
  return v24;
}

uint64_t sub_29D8D734C(unsigned __int8 a1, uint64_t a2)
{
  sub_29D93A388();
  sub_29D693E2C(v8, v8[3]);
  sub_29D933EC8();
  v4 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorAppRecommendationsFetchedResultsControllerDataSource(0));
  v4[qword_2A17B5030] = a1;
  *&v4[qword_2A17B5038] = a2;

  sub_29D73439C(a1);
  sub_29D8D7B10();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 32) = sub_29D933FE8();
  v6 = sub_29D936F38();
  sub_29D69417C(v8);
  sub_29D8D7B60(&qword_2A17B7930, 255, type metadata accessor for AFibBurdenLifeFactorAppRecommendationsFetchedResultsControllerDataSource);
  return v6;
}

unint64_t sub_29D8D747C()
{
  result = qword_2A17B7920;
  if (!qword_2A17B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7920);
  }

  return result;
}

char *sub_29D8D74D0(uint64_t a1, void *a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel] = 0;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule] = 0;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView] = 0;
  v8 = &a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate];
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier];
  v25 = sub_29D6C3970(261);
  v26 = v10;
  MEMORY[0x29ED6A240](0x656C69542ELL, 0xE500000000000000);
  v11 = v26;
  *v9 = v25;
  v9[1] = v11;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_cacheObject] = a1;
  *&a4[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_healthStore] = a2;
  *(v8 + 1) = &off_2A244D3F8;
  swift_unknownObjectWeakAssign();
  v24.receiver = a4;
  v24.super_class = type metadata accessor for AFibBurdenLifeFactorsTileView();
  v12 = a2;
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = sub_29D8416B8();
  [v13 addSubview_];

  v15 = sub_29D84188C();
  [v13 addSubview_];

  v16 = sub_29D84195C();
  [v13 addSubview_];

  sub_29D841B18();
  v17 = *&v13[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier];
  v18 = *&v13[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier + 8];
  sub_29D935E88();
  v19 = sub_29D939D28();
  [v13 setAccessibilityIdentifier_];

  v20 = *&v13[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel];
  v25 = v17;
  v26 = v18;
  sub_29D935E88();
  v21 = v20;
  MEMORY[0x29ED6A240](0x706972637365442ELL, 0xEC0000006E6F6974);
  v22 = sub_29D939D28();

  [v21 setAccessibilityIdentifier_];

  return v13;
}

void sub_29D8D7740(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Heart39AFibBurdenLifeFactorsTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v1 + v4, v25);
  v5 = v26;
  if (v26)
  {
    v6 = sub_29D693E2C(v25, v26);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x2A1C7C4A8](v6, v6);
    v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_29D936588();
    (*(v7 + 8))(v10, v5);
    sub_29D718208(v2 + v4, v23);
    v12 = v24;
    if (v24)
    {
      v13 = sub_29D693E2C(v23, v24);
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x2A1C7C4A8](v13, v13);
      v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      sub_29D9365A8();
      (*(v14 + 8))(v17, v12);
      type metadata accessor for AFibBurdenLifeFactorDetailViewModel();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v18 + 16) = a1;
      *(v18 + 24) = v11;
      sub_29D6959E8(v22, v18 + 32);
      swift_unknownObjectWeakAssign();
      sub_29D69417C(v23);
      sub_29D69417C(v25);
      sub_29D8D6E78(a1, v18);
      v19 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorDetailViewController());

      v20 = sub_29D936D88();
      swift_unknownObjectWeakAssign();
      v21 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
      [v2 hk:v21 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29D8D7AB0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D695734(255, a3);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D8D7B10()
{
  if (!qword_2A17B50A8)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B50A8);
    }
  }
}

uint64_t sub_29D8D7B60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29D8D7BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_29D9339F8();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_29D9331D8();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v11 = sub_29D9372B8();
  v4[25] = v11;
  v12 = *(v11 - 8);
  v4[26] = v12;
  v13 = *(v12 + 64) + 15;
  v4[27] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8D7D90, 0, 0);
}

uint64_t sub_29D8D7D90()
{
  v1 = v0[27];
  v2 = v0[6];
  v0[28] = sub_29D933BB8();
  sub_29D9372A8();
  v3 = *(MEMORY[0x29EDC2DC8] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_29D8D7E44;
  v5 = v0[27];
  v6 = v0[7];

  return MEMORY[0x2A1C63A68](v6);
}

uint64_t sub_29D8D7E44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_29D8D87D0;
  }

  else
  {
    v5 = sub_29D8D7F58;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D8D7F58()
{
  v115 = v0;
  v1 = v0[30];
  sub_29D6AA400();
  v2 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v3 = v2;
  if (*(v1 + 16) && (v4 = v0[30], v5 = sub_29D690AEC(v2), (v6 & 1) != 0))
  {
    v7 = v0[23];
    v8 = v0[21];
    v108 = v0[20];
    v10 = v0[18];
    v9 = v0[19];
    v12 = v0[10];
    v11 = v0[11];
    (*(v8 + 16))(v7, *(v0[30] + 56) + *(v8 + 72) * v5);

    sub_29D9331A8();
    sub_29D9331C8();
    v103 = *(v11 + 16);
    v103(v10, v9, v12);
    sub_29D933198();
    v13 = *(v11 + 8);
    v13(v9, v12);
    (*(v8 + 8))(v7, v108);
    v14 = v13;
  }

  else
  {
    v15 = v0[30];
    v16 = v0[24];
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    v20 = v0[10];
    v21 = v0[11];
    v23 = v0[8];
    v22 = v0[9];

    v23();
    v24 = *(v21 + 16);
    v24(v18, v17, v20);
    v103 = v24;
    v24(v19, v17, v20);
    sub_29D933188();
    v14 = *(v21 + 8);
    v14(v17, v20);
  }

  v25 = v0[28];
  v26 = v0[24];
  v27 = v0[19];
  v95 = v0[16];
  v97 = v0[15];
  v98 = v0[14];
  v28 = v0[10];
  v109 = v0[6];
  v29 = sub_29D933AF8();
  sub_29D9331A8();
  v30 = sub_29D933958();
  v14(v27, v28);
  v31 = [v25 hk:v29 startOfWeekWithFirstWeekday:v30 beforeDate:0 addingWeeks:?];

  sub_29D933998();
  v32 = sub_29D933AF8();
  sub_29D933178();
  v33 = sub_29D933958();
  v106 = v14;
  v14(v27, v28);
  v34 = [v25 hk:v32 startOfWeekWithFirstWeekday:v33 beforeDate:1 addingWeeks:?];

  sub_29D933998();
  v35 = v103;
  v103(v98, v97, v28);
  if (sub_29D9339B8() == -1)
  {
    v100 = v0[21];
    v96 = (v0[11] + 40);
    v36 = MEMORY[0x29EDCA190];
    v102 = v0;
    while (1)
    {
      v55 = v0[28];
      v35(v0[13], v0[14], v0[10]);
      v56 = sub_29D933958();
      v57 = [v55 dateByAddingUnit:0x2000 value:-26 toDate:v56 options:0];

      if (!v57)
      {
        break;
      }

      v58 = v0[22];
      v59 = v0[19];
      v60 = v0;
      v61 = v36;
      v62 = v60[18];
      v64 = v60[12];
      v63 = v60[13];
      v65 = v60[10];
      sub_29D933998();

      v35(v59, v64, v65);
      v35(v62, v63, v65);
      v36 = v61;
      sub_29D933188();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_29D690144(0, v61[2] + 1, 1, v61);
      }

      v67 = v36[2];
      v66 = v36[3];
      v0 = v102;
      if (v67 >= v66 >> 1)
      {
        v36 = sub_29D690144(v66 > 1, v67 + 1, 1, v36);
      }

      v68 = v102[22];
      v69 = v102[20];
      v70 = v102[16];
      v71 = v102[14];
      v72 = v102[12];
      v73 = v102[10];
      v106(v102[13], v73);
      v36[2] = v67 + 1;
      (*(v100 + 32))(v36 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v67, v68, v69);
      (*v96)(v71, v72, v73);
      v35 = v103;
      if (sub_29D9339B8() != -1)
      {
        goto LABEL_7;
      }
    }

    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v74 = sub_29D937898();
    sub_29D69C6C0(v74, qword_2A1A2BF28);
    v75 = sub_29D937878();
    v76 = sub_29D93A298();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v0[28];
    if (v77)
    {
      v79 = v0[14];
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v114 = v81;
      *v80 = 136446467;
      v0[5] = &type metadata for AFibBurdenPDFChartDateIntervalProvider;
      sub_29D8D88F4();
      v82 = sub_29D939DA8();
      v84 = sub_29D6C2364(v82, v83, &v114);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2085;
      swift_beginAccess();
      v85 = sub_29D933918();
      v87 = sub_29D6C2364(v85, v86, &v114);

      *(v80 + 14) = v87;
      _os_log_impl(&dword_29D677000, v75, v76, "[%{public}s] Hitting critical error while trying to add -26 weeks to: %{sensitive}s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v81, -1, -1);
      MEMORY[0x29ED6BE30](v80, -1, -1);
    }

    v88 = v0[26];
    v113 = v0[27];
    v89 = v0[24];
    v105 = v0[25];
    v91 = v0[20];
    v90 = v0[21];
    v93 = v0[15];
    v92 = v0[16];
    v101 = v0[14];
    v94 = v0[10];
    v106(v0[13], v94);
    v106(v93, v94);
    v106(v92, v94);
    (*(v90 + 8))(v89, v91);
    (*(v88 + 8))(v113, v105);
    v106(v101, v94);
    v36 = MEMORY[0x29EDCA190];
  }

  else
  {
    v36 = MEMORY[0x29EDCA190];
LABEL_7:
    v111 = v0[27];
    v37 = v0[26];
    v104 = v0[25];
    v38 = v0[24];
    v40 = v0[20];
    v39 = v0[21];
    v42 = v0[15];
    v41 = v0[16];
    v99 = v0[14];
    v43 = v0[10];

    v106(v42, v43);
    v106(v41, v43);
    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v111, v104);
    v106(v99, v43);
  }

  v44 = v0[27];
  v46 = v0[23];
  v45 = v0[24];
  v47 = v0[22];
  v49 = v0[18];
  v48 = v0[19];
  v51 = v0[16];
  v50 = v0[17];
  v52 = v0[15];
  v107 = v0[14];
  v110 = v0[13];
  v112 = v0[12];

  v53 = v0[1];

  return v53(v36);
}

uint64_t sub_29D8D87D0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v13 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);
  v11 = *(v0 + 248);

  return v10();
}

unint64_t sub_29D8D88F4()
{
  result = qword_2A17B7938;
  if (!qword_2A17B7938)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7938);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalSettingsViewController()
{
  result = qword_2A17B7960;
  if (!qword_2A17B7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8D8A08()
{
  v1 = *(v0 + qword_2A17B7950);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v1;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v2[3] = v3;
  v4 = *(v0 + qword_2A17B7958);
  v5 = v1;
  sub_29D6AA594(v4, 7);
}

void sub_29D8D8AAC(void *a1)
{
  v1 = a1;
  sub_29D8D8A08();
}

void sub_29D8D8AF4(uint64_t a1)
{
  v2 = qword_2A17B7940;
  sub_29D933F18();
  *(a1 + v2) = sub_29D933F08();
  *(a1 + qword_2A17B7948) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D8D8B84()
{
  v1 = v0;
  sub_29D8D9740(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v20 - v5;
  sub_29D8D95AC();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + qword_2A17B7940);
  v23 = sub_29D933EE8();
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v14 = sub_29D93A468();
  v22 = v14;
  v15 = sub_29D93A448();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_29D8D9678();
  sub_29D8D96F0(&qword_2A17B7988, sub_29D8D9678);
  sub_29D706380();
  sub_29D938538();
  sub_29D7339C0(v6);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D8D96F0(&qword_2A17B7990, sub_29D8D95AC);
  v16 = v21;
  v17 = sub_29D938588();

  (*(v8 + 8))(v12, v16);
  v18 = *(v1 + qword_2A17B7948);
  *(v1 + qword_2A17B7948) = v17;
}

uint64_t sub_29D8D8E74(void **a1)
{
  v2 = type metadata accessor for BloodPressureJournalSettingsView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_29D938D18();

    sub_29D8D9740(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
    sub_29D939848();
    sub_29D8D9550(v6);
    v10 = v16;
    v11 = [v7 authorizationStatus];
    if (((v11 == 1) ^ *(v10 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled)))
    {
      v12 = v11 == 1;
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath, v14);
      *&v15[-16] = v10;
      v15[-8] = v12;
      v16 = v10;
      sub_29D8D96F0(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
      sub_29D933E08();
    }

    else
    {
      *(v10 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled) = v11 == 1;
    }
  }

  return result;
}

void sub_29D8D908C(void *a1)
{
  v1 = a1;
  sub_29D8D8B84();
}

void sub_29D8D9134()
{
  v1 = *(v0 + qword_2A17B7940);

  v2 = *(v0 + qword_2A17B7948);

  v3 = *(v0 + qword_2A17B7950);
}

id sub_29D8D9184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D8D91BC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B7940);

  v3 = *(a1 + qword_2A17B7948);

  v4 = *(a1 + qword_2A17B7950);
}

id sub_29D8D9220(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for BloodPressureJournalSettingsView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v32[-v16];
  v18 = qword_2A17B7940;
  sub_29D933F18();
  *(v3 + v18) = sub_29D933F08();
  *(v3 + qword_2A17B7948) = 0;
  v19 = *(a1 + 40);
  type metadata accessor for BloodPressureJournalSettingsViewModel();
  sub_29D8D96F0(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);

  sub_29D939868();
  v20 = &v17[v9[7]];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v17[v9[8]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v17[v9[9]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v17[v9[10]];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v17[v9[11]];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v17[v9[12]];
  *v25 = 0;
  v25[1] = 0;
  *&v17[v9[13]] = 0x4020000000000000;
  *&v17[v9[14]] = 0x4030000000000000;
  *&v17[v9[15]] = 0x4028000000000000;
  *&v17[v9[16]] = 0x4051800000000000;
  *&v17[v9[17]] = 0x4018000000000000;
  *&v17[v9[18]] = 0x4024000000000000;
  *&v17[v9[19]] = 0x4024000000000000;
  *&v17[v9[20]] = 0x4054000000000000;
  *&v17[v9[21]] = 0x4041000000000000;
  v26 = &v17[v9[22]];
  v32[15] = 0;
  sub_29D939688();
  v27 = v33;
  *v26 = v32[16];
  *(v26 + 1) = v27;
  *(v4 + qword_2A17B7958) = a2;
  *(v4 + qword_2A17B7950) = a3;
  sub_29D8D94EC(v17, v14);
  v28 = a3;
  v29 = sub_29D938CF8();
  sub_29D8D8B84();
  v30 = [objc_opt_self() defaultCenter];
  [v30 addObserver:v29 selector:sel_fetchNotificationAuthorizationStatus name:*MEMORY[0x29EDC8030] object:0];

  sub_29D8D9550(v17);
  return v29;
}

uint64_t sub_29D8D94EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8D9550(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressureJournalSettingsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8D95AC()
{
  if (!qword_2A17B7970)
  {
    sub_29D8D9678();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8D96F0(&qword_2A17B7988, sub_29D8D9678);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7970);
    }
  }
}

void sub_29D8D9678()
{
  if (!qword_2A17B7978)
  {
    sub_29D69567C(255, &qword_2A17B7980, 0x29EDBCCE0);
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7978);
    }
  }
}

uint64_t sub_29D8D96F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D8D9740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8D97C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_29D8DB580(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
  swift_beginAccess();
  sub_29D8DBC08(v1 + v13, v12, sub_29D8DB580);
  sub_29D6B805C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v12, 1, v14) != 1)
  {
    return sub_29D8DBCD4(v12, a1, sub_29D6B805C);
  }

  sub_29D8DBBA8(v12, sub_29D8DB580);
  sub_29D8D99E0(v1, a1);
  sub_29D8DBC08(a1, v9, sub_29D6B805C);
  (*(v16 + 56))(v9, 0, 1, v15);
  swift_beginAccess();
  sub_29D8DBC70(v9, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_29D8D99E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  sub_29D693E2C(a1 + 3, a1[6]);
  sub_29D937238();
  v4 = sub_29D9371A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_29D8D9BC0()
{
  v1 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_29D8D9C04();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_29D8D9C04()
{
  sub_29D6B805C(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8D97C4(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29D8DBBA8(v4, sub_29D6B805C);
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    v11 = *MEMORY[0x29EDC5130];
    v12 = sub_29D9371B8();
    v13 = [v12 areAllRequirementsSatisfied];

    if (v13)
    {
      v14 = *MEMORY[0x29EDBA568];
      v15 = sub_29D9371B8();
      v16 = [v15 areAllRequirementsSatisfied];

      (*(v6 + 8))(v10, v5);
      return v16;
    }

    (*(v6 + 8))(v10, v5);
  }

  return 0;
}

id sub_29D8D9DF8()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 16);
  result = [v1 sharedInstanceForHealthStore_];
  if (result)
  {
    v4 = result;
    v5 = sub_29D93A138();
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x29EDC47D8]) initWithDisplayType:v6 healthStore:v2 shouldEmbedInScrollView:0];

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_29D8D9EC0@<X0>(uint64_t *a1@<X8>)
{
  sub_29D8DB5B4(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v39 - v6;
  v8 = [*(v1 + 16) profileIdentifier];
  v9 = [v8 type];

  if (v9 == 1 && (sub_29D8D9BC0() & 1) != 0)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v10 = sub_29D9334A8();
    v12 = v11;
    v13 = sub_29D8DB9C4();
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      *a1 = v10;
      a1[1] = v12;
      a1[2] = v13;
      a1[3] = v14;
      v16 = *MEMORY[0x29EDC43E0];
      v17 = sub_29D939D68();
      v43 = 0xD000000000000040;
      v44 = 0x800000029D96D520;
      v41 = v17;
      v42 = v18;
      v41 = sub_29D939E88();
      v42 = v19;
      sub_29D939E38();
      v20 = v42;
      a1[4] = v41;
      a1[5] = v20;
      sub_29D9336E8();
      v21 = sub_29D9336F8();
      v22 = *(v21 - 8);
      result = (*(v22 + 48))(v7, 1, v21);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        sub_29D6EA34C(0, v24);
        v26 = *(v25 + 80);
        (*(v22 + 32))(a1 + v26, v7, v21);
        v27 = *MEMORY[0x29EDC15C0];
        v28 = sub_29D934538();
        (*(*(v28 - 8) + 104))(a1 + v26, v27, v28);
        v29 = *MEMORY[0x29EDC15E8];
        v30 = sub_29D934548();
        v31 = *(v30 - 8);
        (*(v31 + 104))(a1, v29, v30);
        return (*(v31 + 56))(a1, 0, 1, v30);
      }

      return result;
    }

    *a1 = v10;
    a1[1] = v12;
    *(a1 + 16) = 0;
    v37 = *MEMORY[0x29EDC1630];
    v38 = sub_29D934548();
    v40 = *(v38 - 8);
    (*(v40 + 104))(a1, v37, v38);
    v33 = *(v40 + 56);
    v35 = a1;
    v36 = 0;
    v34 = v38;
  }

  else
  {
    v32 = sub_29D934548();
    v33 = *(*(v32 - 8) + 56);
    v34 = v32;
    v35 = a1;
    v36 = 1;
  }

  return v33(v35, v36, 1, v34);
}

void sub_29D8DA344()
{
  v1 = sub_29D934548();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6E9F00(0);
  v108 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v105 - v16;
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = (&v105 - v19);
  v21 = *(v2 + 56);
  v21(&v105 - v19, 1, 1, v1);
  v109 = v0;
  v22 = sub_29D8D9DF8();
  if (v22)
  {
    v23 = v22;
    sub_29D8DBBA8(v20, sub_29D6E9F00);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *v20 = sub_29D6EA5AC;
    v20[1] = v24;
    (*(v2 + 104))(v20, *MEMORY[0x29EDC15A0], v1);
    v21(v20, 0, 1, v1);
  }

  v115 = v21;
  v119 = v2 + 56;
  v110 = v20;
  v122 = v13;
  sub_29D8DB5B4(0, &qword_2A17B20F8, sub_29D6E9F00, MEMORY[0x29EDC9E90]);
  v25 = *(v8 + 72);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v121 = v6;
  v28 = qword_2A1A2C038;
  v29 = sub_29D939D28();
  v30 = [objc_opt_self() imageNamed:v29 inBundle:v28];

  v117 = v28;
  if (v30)
  {
    v107 = v27;
    v31 = v27 + v26;
    v118 = v31;
    *v31 = v30;
    *(v31 + 8) = 0;
    v32 = *MEMORY[0x29EDC1608];
    v120 = v2;
    v33 = *(v2 + 104);
    v33(v31, v32, v1);
    v123 = (v2 + 104);
    v34 = v115;
    v115(v31, 0, 1, v1);
    v35 = (v31 + v25);
    v116 = "low_cardio_fitness_article_hero";
    *v35 = sub_29D9334A8();
    v35[1] = v36;
    v33(v31 + v25, *MEMORY[0x29EDC1610], v1);
    v34((v31 + v25), 0, 1, v1);
    v37 = v118 + 2 * v25;
    v113 = 0xD000000000000013;
    *v37 = sub_29D9334A8();
    *(v37 + 8) = v38;
    *(v37 + 16) = 0;
    v112 = *MEMORY[0x29EDC1630];
    (v33)(v37);
    v34(v37, 0, 1, v1);
    v39 = v118;
    v40 = (v118 + 3 * v25);
    *v40 = sub_29D9334A8();
    v40[1] = v41;
    v40[2] = 0;
    v111 = *MEMORY[0x29EDC15D0];
    (v33)(v39 + 3 * v25);
    v114 = v33;
    v42 = v115;
    v115((v39 + 3 * v25), 0, 1, v1);
    v106 = 4 * v25;
    v43 = v39 + 4 * v25;
    *v43 = sub_29D9334A8();
    *(v43 + 8) = v44;
    *(v43 + 16) = 0;
    v45 = v112;
    v33(v43, v112, v1);
    v42(v43, 0, 1, v1);
    v46 = v118;
    v47 = v118 + v106 + v25;
    *v47 = sub_29D9334A8();
    *(v47 + 8) = v48;
    *(v47 + 16) = 0;
    v114(v47, v45, v1);
    v42(v47, 0, 1, v1);
    v49 = (v46 + 6 * v25);
    *v49 = sub_29D9334A8();
    v49[1] = v50;
    v49[2] = 0;
    v51 = v111;
    v52 = v114;
    v114(v49, v111, v1);
    v42(v49, 0, 1, v1);
    sub_29D8DBC08(v110, v46 + 7 * v25, sub_29D6E9F00);
    v53 = (v46 + 8 * v25);
    *v53 = sub_29D9334A8();
    v53[1] = v54;
    v53[2] = 0;
    v52(v53, v51, v1);
    v115(v53, 0, 1, v1);
    v55 = v46 + 9 * v25;
    *v55 = sub_29D9334A8();
    *(v55 + 8) = v56;
    *(v55 + 16) = 0;
    v57 = v112;
    v58 = v114;
    v114(v55, v112, v1);
    v59 = v115;
    v115(v55, 0, 1, v1);
    v60 = v118;
    v61 = v118 + 10 * v25;
    *v61 = sub_29D9334A8();
    *(v61 + 8) = v62;
    *(v61 + 16) = 0;
    v58(v60 + 10 * v25, v57, v1);
    v59((v60 + 10 * v25), 0, 1, v1);
    v63 = (v60 + 11 * v25);
    *v63 = sub_29D9334A8();
    v63[1] = v64;
    v63[2] = 0;
    v114(v63, v111, v1);
    v59(v63, 0, 1, v1);
    v65 = (v60 + 12 * v25);
    v66 = sub_29D9334A8();
    v105 = v67;
    v106 = v66;
    sub_29D8DBB58(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_29D943EA0;
    *(v68 + 32) = sub_29D9334A8();
    *(v68 + 40) = v69;
    *(v68 + 48) = sub_29D9334A8();
    *(v68 + 56) = v70;
    *(v68 + 64) = sub_29D9334A8();
    *(v68 + 72) = v71;
    v72 = v105;
    *v65 = v106;
    v65[1] = v72;
    v65[2] = v68;
    v73 = v114;
    v114(v65, *MEMORY[0x29EDC15F0], v1);
    v74 = v115;
    v115(v65, 0, 1, v1);
    v75 = v118;
    sub_29D8D9EC0((v118 + 13 * v25));
    v76 = (v75 + 14 * v25);
    *v76 = sub_29D9334A8();
    v76[1] = v77;
    v76[2] = 0;
    v73(v76, v111, v1);
    v74(v76, 0, 1, v1);
    v109 = 16 * v25;
    v78 = v118;
    v79 = v118 + 15 * v25;
    *v79 = sub_29D9334A8();
    *(v79 + 8) = v80;
    *(v79 + 16) = 0;
    v73(v78 + 15 * v25, v112, v1);
    v81 = v115;
    v115((v78 + 15 * v25), 0, 1, v1);
    v82 = (v78 + v109);
    *v82 = sub_29D9334A8();
    v82[1] = v83;
    v82[2] = 0;
    v73(v82, v111, v1);
    v81(v82, 0, 1, v1);
    v84 = v118;
    v85 = v118 + v109 + v25;
    *v85 = sub_29D9334A8();
    *(v85 + 8) = v86;
    *(v85 + 16) = 0;
    v87 = v112;
    v88 = v114;
    v114(v85, v112, v1);
    v81(v85, 0, 1, v1);
    v89 = v84 + 18 * v25;
    *v89 = sub_29D9334A8();
    *(v89 + 8) = v90;
    *(v89 + 16) = 0;
    v91 = v87;
    v92 = v123;
    v88(v89, v91, v1);
    v81(v89, 0, 1, v1);
    v93 = (v92 - 7);
    v123 = v92 - 9;
    v94 = MEMORY[0x29EDCA190];
    v95 = 19;
    v96 = v84;
    v97 = v121;
    v98 = v122;
    do
    {
      sub_29D8DBC08(v96, v17, sub_29D6E9F00);
      sub_29D8DBCD4(v17, v98, sub_29D6E9F00);
      if ((*v93)(v98, 1, v1) == 1)
      {
        sub_29D8DBBA8(v98, sub_29D6E9F00);
      }

      else
      {
        v99 = v25;
        v100 = v17;
        v101 = *v123;
        (*v123)(v97, v98, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_29D68FA8C(0, v94[2] + 1, 1, v94);
        }

        v103 = v94[2];
        v102 = v94[3];
        if (v103 >= v102 >> 1)
        {
          v94 = sub_29D68FA8C(v102 > 1, v103 + 1, 1, v94);
        }

        v94[2] = v103 + 1;
        v104 = v94 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v103;
        v97 = v121;
        v101(v104, v121, v1);
        v98 = v122;
        v17 = v100;
        v25 = v99;
      }

      v96 += v25;
      --v95;
    }

    while (v95);
    sub_29D8DBBA8(v110, sub_29D6E9F00);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D8DB3F4()
{
  sub_29D69417C((v0 + 24));
  sub_29D8DBBA8(v0 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus, sub_29D8DB580);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LowCardioFitnessArticleDataProvider()
{
  result = qword_2A1A23980;
  if (!qword_2A1A23980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8DB4D0()
{
  sub_29D8DB580(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_29D8DB5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8DB698()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D8DB740()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

void sub_29D8DB7E0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29D8DB8A4()
{
  sub_29D8DBB58(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 48) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA490]);
  v1 = sub_29D7AF2C4(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_29D8DB9C4()
{
  v0 = objc_opt_self();
  v1 = sub_29D939D28();
  v2 = [v0 modelSpecificLocalizedStringKeyForKey_];

  if (v2)
  {
    sub_29D939D68();

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v3 = sub_29D9334A8();

    return v3;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    return sub_29D9334A8();
  }
}

void sub_29D8DBB58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8DBBA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8DBC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8DBC70(uint64_t a1, uint64_t a2)
{
  sub_29D8DB580(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8DBCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8DBD3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_29D9331D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_29D8DBF10@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v20 = a3;
    v14 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    while (1)
    {
      sub_29D8E2028(v14, v12, type metadata accessor for BloodPressureMinMaxCoordinate);
      v16 = a1(v12);
      if (v3)
      {
        return sub_29D8E2110(v12, type metadata accessor for BloodPressureMinMaxCoordinate);
      }

      if (v16)
      {
        break;
      }

      sub_29D8E2110(v12, type metadata accessor for BloodPressureMinMaxCoordinate);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v20;
        return (*(v8 + 56))(a3, v17, 1, v7);
      }
    }

    a3 = v20;
    sub_29D8E2458(v12, v20, type metadata accessor for BloodPressureMinMaxCoordinate);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v8 + 56))(a3, v17, 1, v7);
}

uint64_t sub_29D8DC0DC(uint64_t a1)
{
  v3 = v1;
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D8E24C0(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  v4 = *(a1 + 20);
  sub_29D9331D8();
  sub_29D8E24C0(&qword_2A17B1EF0, MEMORY[0x29EDB98E8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v3 + *(a1 + 24)));
  return sub_29D93AE98();
}

uint64_t sub_29D8DC1DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_29D9339F8();
  sub_29D8E24C0(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  v5 = *(a2 + 20);
  sub_29D9331D8();
  sub_29D8E24C0(&qword_2A17B1EF0, MEMORY[0x29EDB98E8]);
  sub_29D939C98();
  return MEMORY[0x29ED6B260](*(v4 + *(a2 + 24)));
}

uint64_t sub_29D8DC2CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D8E24C0(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  v5 = *(a2 + 20);
  sub_29D9331D8();
  sub_29D8E24C0(&qword_2A17B1EF0, MEMORY[0x29EDB98E8]);
  sub_29D939C98();
  MEMORY[0x29ED6B260](*(v4 + *(a2 + 24)));
  return sub_29D93AE98();
}

BOOL sub_29D8DC3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_29D933988() & 1) != 0 && (v6 = *(a3 + 20), (sub_29D933158()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D8DC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_29D9339F8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = sub_29D9331D8();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8DC584, 0, 0);
}

uint64_t sub_29D8DC584()
{
  v30 = v0;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[10];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v27 = v0[5];
    v28 = v0[11];
    v26 = v0[4];
    v8 = v0[3];
    v9 = sub_29D8DF704(v1);
    v10 = *(v6 + 16);
    v10(v4, v8, v7);
    v10(v5, v26, v7);
    sub_29D933188();
    v11 = sub_29D8DC9D0(v9, v2);

    (*(v3 + 8))(v2, v28);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2BF10);
    v13 = sub_29D937878();
    v14 = sub_29D93A2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v29);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Could not find or compute pregnancy/post-pregnancy windows. Returning single general interval.", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }

    v11 = sub_29D8E1D28(v0[3], v0[4]);
  }

  v21 = v0[13];
  v23 = v0[9];
  v22 = v0[10];

  v24 = v0[1];

  return v24(v11);
}

uint64_t sub_29D8DC7EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v18 - v12;
  v14 = sub_29D9331A8();
  a3(v14);
  v15 = sub_29D933988();
  v16 = *(v5 + 8);
  v16(v10, v4);
  v16(v13, v4);
  return v15 & 1;
}

uint64_t sub_29D8DC928(void **a1)
{
  v2 = *(type metadata accessor for BloodPressurePDFSampleInterval() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_29D8DF6DC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_29D8DDD60(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_29D8DC9D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v162 = sub_29D9331D8();
  v6 = *(v162 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v162, v8);
  v154 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v156 = &v135 - v12;
  v13 = type metadata accessor for BloodPressurePDFSampleInterval();
  v161 = *(v13 - 8);
  v14 = *(v161 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v145 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v147 = &v135 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v146 = &v135 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v149 = &v135 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v155 = &v135 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v150 = &v135 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v148 = &v135 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v151 = &v135 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v160 = &v135 - v41;
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v135 - v43;
  v45 = sub_29D9339F8();
  v163 = *(v45 - 8);
  v46 = v163[8];
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v157 = &v135 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v159 = &v135 - v52;
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v56 = &v135 - v55;
  v58 = MEMORY[0x2A1C7C4A8](v54, v57);
  v61 = &v135 - v60;
  v62 = *(a1 + 16);
  if (v62 == 1)
  {
    v153 = v6;
    v143 = *(v161 + 80);
    v144 = (v143 + 32) & ~v143;
    sub_29D8E2028(a1 + v144, v44, type metadata accessor for BloodPressurePDFSampleInterval);
    v158 = v13;
    v74 = *(v13 + 20);
    sub_29D9331A8();
    sub_29D9331A8();
    sub_29D8E24C0(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
    v75 = sub_29D939CB8();
    v152 = a2;
    v76 = v163[1];
    v76(v56, v45);
    v76(v61, v45);
    if ((v75 & 1) == 0)
    {
      sub_29D933178();
      sub_29D933178();
      v77 = sub_29D939CB8();
      v76(v56, v45);
      v76(v61, v45);
      if ((v77 & 1) == 0)
      {
        sub_29D8E2248(0, &qword_2A17B10E0, type metadata accessor for BloodPressurePDFSampleInterval, MEMORY[0x29EDC9E90]);
        v129 = v144;
        v130 = *(v161 + 72) + v144;
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_29D93DDB0;
        v162 = v72 + v129;
        sub_29D9331A8();
        sub_29D933178();
        LODWORD(v161) = v44[*(v158 + 24)];
        v131 = v163[2];
        v131(v162, v61, v45);
        v131(v159, v61, v45);
        v131(v157, v56, v45);
        v132 = v158;
        v133 = v162;
        v134 = v162 + *(v158 + 20);
        sub_29D933188();
        v76(v56, v45);
        v76(v61, v45);
        *(v133 + *(v132 + 24)) = v161;
        sub_29D8E2110(v44, type metadata accessor for BloodPressurePDFSampleInterval);
        return v72;
      }
    }

    v58 = sub_29D8E2110(v44, type metadata accessor for BloodPressurePDFSampleInterval);
    a2 = v152;
    v6 = v153;
    v13 = v158;
  }

  else if (!v62)
  {
    if (qword_2A1A24658 == -1)
    {
LABEL_4:
      v63 = sub_29D937898();
      sub_29D69C6C0(v63, qword_2A1A2BF10);
      v64 = sub_29D937878();
      v65 = sub_29D93A2A8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v164 = v67;
        *v66 = 136446210;
        v68 = sub_29D93AF08();
        v70 = sub_29D6C2364(v68, v69, &v164);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_29D677000, v64, v65, "[%{public}s] Expected at least 1 input window, found 0 windows. Returning single general interval.", v66, 0xCu);
        sub_29D69417C(v67);
        MEMORY[0x29ED6BE30](v67, -1, -1);
        MEMORY[0x29ED6BE30](v66, -1, -1);
      }

      v71 = v163;
      sub_29D9331A8();
      sub_29D933178();
      v72 = sub_29D8E1D28(v61, v56);
      v73 = v71[1];
      v73(v56, v45);
      v73(v61, v45);
      return v72;
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  MEMORY[0x2A1C7C4A8](v58, v59);
  *(&v135 - 2) = a2;
  sub_29D935E88();
  v78 = sub_29D92976C(sub_29D8DDCDC, (&v135 - 4), a1);
  v79 = v78;
  v164 = MEMORY[0x29EDCA190];
  if (!*(v78 + 16))
  {

    return MEMORY[0x29EDCA190];
  }

  v141 = *(v78 + 16);
  v144 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v136 = v78 + v144;
  v80 = v160;
  sub_29D8E2028(v78 + v144, v160, type metadata accessor for BloodPressurePDFSampleInterval);
  v81 = *(v13 + 20);
  v153 = v6;
  v82 = *(v6 + 16);
  v138 = v6 + 16;
  v137 = v82;
  v82(v156, &v80[v81], v162);
  sub_29D9331A8();
  sub_29D9331A8();
  LOBYTE(v80) = sub_29D933978();
  v158 = v13;
  v72 = v61;
  v83 = v56;
  v56 = (v163 + 1);
  v84 = v163[1];
  v84(v83, v45);
  v143 = v84;
  v84(v72, v45);
  v152 = a2;
  v140 = v83;
  v142 = v79;
  if (v80)
  {
    sub_29D9331A8();
    sub_29D9331A8();
    v85 = v163[2];
    v86 = v151;
    v85(v151, v72, v45);
    v85(v159, v72, v45);
    v139 = v85;
    v85(v157, v83, v45);
    v87 = v158;
    v88 = v86 + *(v158 + 20);
    sub_29D933188();
    v89 = v143;
    (v143)(v83, v45);
    v61 = v89;
    v150 = v56;
    (v89)(v72, v45);
    *(v86 + *(v87 + 24)) = 0;
    v90 = v148;
    sub_29D8E2028(v86, v148, type metadata accessor for BloodPressurePDFSampleInterval);
    v91 = sub_29D690110(0, 1, 1, MEMORY[0x29EDCA190]);
    v93 = v91[2];
    v92 = v91[3];
    if (v93 >= v92 >> 1)
    {
      v91 = sub_29D690110(v92 > 1, v93 + 1, 1, v91);
    }

    v94 = v155;
    v96 = v160;
    v95 = v161;
    v91[2] = v93 + 1;
    sub_29D8E2458(v90, v91 + v144 + *(v95 + 72) * v93, type metadata accessor for BloodPressurePDFSampleInterval);
    v164 = v91;
    v97 = v142;
    v98 = sub_29D935E88();
    sub_29D88BF3C(v98);
    sub_29D8E2110(v151, type metadata accessor for BloodPressurePDFSampleInterval);
    v99 = *(v153 + 8);
    (v99)(v156, v162);
    sub_29D8E2110(v96, type metadata accessor for BloodPressurePDFSampleInterval);
    v100 = v61;
    v56 = v150;
  }

  else
  {
    v101 = sub_29D935E88();
    sub_29D88BF3C(v101);
    sub_29D9331A8();
    sub_29D933178();
    v102 = v158;
    LODWORD(v151) = v160[*(v158 + 24)];
    v103 = v163[2];
    v104 = v150;
    v103(v150, v72, v45);
    v103(v159, v72, v45);
    v103(v157, v83, v45);
    v105 = v104 + *(v102 + 20);
    sub_29D933188();
    v100 = v143;
    (v143)(v83, v45);
    v100(v72, v45);
    *(v104 + *(v102 + 24)) = v151;
    v106 = v164;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = v103;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v106 = sub_29D702CAC(v106);
    }

    v94 = v155;
    v99 = *(v153 + 8);
    (v99)(v156, v162);
    sub_29D8E2110(v160, type metadata accessor for BloodPressurePDFSampleInterval);
    v61 = v144;
    v108 = v152;
    v97 = v142;
    if (!v106[2])
    {
      __break(1u);
      goto LABEL_36;
    }

    sub_29D8DDCFC(v150, v106 + v144);
    v164 = v106;
  }

  if (v141 > *(v97 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v160 = v99;
  v161 = *(v161 + 72);
  v109 = v149;
  sub_29D8E2028(v136 + v161 * (v141 - 1), v149, type metadata accessor for BloodPressurePDFSampleInterval);

  sub_29D8E2458(v109, v94, type metadata accessor for BloodPressurePDFSampleInterval);
  v110 = v158;
  v137(v154, v94 + *(v158 + 20), v162);
  sub_29D933178();
  v111 = v45;
  v112 = v140;
  sub_29D933178();
  LOBYTE(v109) = sub_29D933968();
  v100(v112, v111);
  v100(v72, v111);
  if (v109)
  {
    sub_29D933178();
    sub_29D933178();
    v108 = v146;
    v113 = v139;
    v139(v146, v72, v111);
    v113(v159, v72, v111);
    v113(v157, v112, v111);
    v114 = v108 + *(v110 + 20);
    sub_29D933188();
    v115 = v112;
    v116 = v143;
    (v143)(v115, v111);
    v116(v72, v111);
    *(v108 + *(v110 + 24)) = 0;
    v99 = v147;
    sub_29D8E2028(v108, v147, type metadata accessor for BloodPressurePDFSampleInterval);
    v72 = v164;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v117 = v144;
      v119 = *(v72 + 16);
      v118 = *(v72 + 24);
      v120 = v155;
      if (v119 >= v118 >> 1)
      {
        v72 = sub_29D690110(v118 > 1, v119 + 1, 1, v72);
      }

      sub_29D8E2110(v108, type metadata accessor for BloodPressurePDFSampleInterval);
      (v160)(v154, v162);
      sub_29D8E2110(v120, type metadata accessor for BloodPressurePDFSampleInterval);
      *(v72 + 16) = v119 + 1;
      sub_29D8E2458(v99, v72 + v117 + v119 * v161, type metadata accessor for BloodPressurePDFSampleInterval);
      return v72;
    }

LABEL_36:
    v72 = sub_29D690110(0, *(v72 + 16) + 1, 1, v72);
    goto LABEL_23;
  }

  sub_29D9331A8();
  sub_29D933178();
  LODWORD(v156) = *(v94 + *(v110 + 24));
  v121 = v145;
  v122 = v139;
  v139(v145, v72, v111);
  v122(v159, v72, v111);
  v122(v157, v112, v111);
  v123 = v121 + *(v110 + 20);
  sub_29D933188();
  v124 = v112;
  v125 = v143;
  (v143)(v124, v111);
  v125(v72, v111);
  *(v121 + *(v110 + 24)) = v156;
  v72 = v164;
  v126 = v164[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_29D702CAC(v72);
  }

  v127 = v144;
  (v160)(v154, v162);
  result = sub_29D8E2110(v155, type metadata accessor for BloodPressurePDFSampleInterval);
  if (v126)
  {
    if (v126 <= *(v72 + 16))
    {
      sub_29D8DDCFC(v121, v72 + v127 + (v126 - 1) * v161);
      return v72;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8DDB24()
{
  v0 = sub_29D9339F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for BloodPressurePDFSampleInterval() + 20);
  sub_29D9331A8();
  v7 = sub_29D9331B8();
  v8 = *(v1 + 8);
  v8(v5, v0);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    sub_29D933178();
    v9 = sub_29D9331B8();
    v8(v5, v0);
  }

  return v9 & 1;
}

uint64_t type metadata accessor for BloodPressurePDFSampleInterval()
{
  result = qword_2A17B7998;
  if (!qword_2A17B7998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8DDCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressurePDFSampleInterval();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8DDD60(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_29D93AD28();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        type metadata accessor for BloodPressurePDFSampleInterval();
        v6 = sub_29D939F98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BloodPressurePDFSampleInterval() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_29D8DE1FC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_29D8DDE8C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29D8DDE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_29D9339F8();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v60, v10);
  v59 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v58 = &v44 - v14;
  v15 = type metadata accessor for BloodPressurePDFSampleInterval();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v53 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v57 = &v44 - v22;
  result = MEMORY[0x2A1C7C4A8](v21, v23);
  v56 = &v44 - v26;
  v46 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v25 + 72);
    v54 = (v8 + 8);
    v55 = v15;
    v29 = v27 + v28 * (a3 - 1);
    v51 = -v28;
    v52 = v27;
    v30 = a1 - a3;
    v45 = v28;
    v31 = v27 + v28 * a3;
LABEL_5:
    v49 = v29;
    v50 = a3;
    v47 = v31;
    v48 = v30;
    v61 = v30;
    while (1)
    {
      v32 = v56;
      sub_29D8E2028(v31, v56, type metadata accessor for BloodPressurePDFSampleInterval);
      v33 = v57;
      sub_29D8E2028(v29, v57, type metadata accessor for BloodPressurePDFSampleInterval);
      v34 = v32 + *(v15 + 20);
      v35 = v58;
      sub_29D9331A8();
      v36 = v33 + *(v15 + 20);
      v37 = v59;
      sub_29D9331A8();
      v62 = sub_29D933978();
      v38 = *v54;
      v39 = v37;
      v40 = v60;
      (*v54)(v39, v60);
      v41 = v40;
      v15 = v55;
      v38(v35, v41);
      sub_29D8E2110(v33, type metadata accessor for BloodPressurePDFSampleInterval);
      result = sub_29D8E2110(v32, type metadata accessor for BloodPressurePDFSampleInterval);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v29 = v49 + v45;
        v30 = v48 - 1;
        v31 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v42 = v53;
      sub_29D8E2458(v31, v53, type metadata accessor for BloodPressurePDFSampleInterval);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_29D8E2458(v42, v29, type metadata accessor for BloodPressurePDFSampleInterval);
      v29 += v51;
      v31 += v51;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29D8DE1FC(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v165 = sub_29D9339F8();
  v8 = *(v165 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v165, v10);
  v164 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v163 = &v142 - v14;
  v15 = type metadata accessor for BloodPressurePDFSampleInterval();
  v155 = *(v15 - 8);
  v16 = *(v155 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v150 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v159 = &v142 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v162 = &v142 - v25;
  result = MEMORY[0x2A1C7C4A8](v24, v26);
  v166 = &v142 - v28;
  v29 = *(a3 + 1);
  if (v29 < 1)
  {
    v31 = MEMORY[0x29EDCA190];
    v32 = a3;
LABEL_96:
    v15 = *v146;
    if (!*v146)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_98:
      v169 = v31;
      v136 = *(v31 + 2);
      if (v136 >= 2)
      {
        while (1)
        {
          v137 = *v32;
          if (!*v32)
          {
            goto LABEL_132;
          }

          v138 = v31;
          v31 = v32;
          v32 = (v136 - 1);
          v139 = *&v138[16 * v136];
          v140 = *&v138[16 * v136 + 24];
          sub_29D8DED74(v137 + *(v155 + 72) * v139, (v137 + *(v155 + 72) * *&v138[16 * v136 + 16]), v137 + *(v155 + 72) * v140, v15);
          if (v5)
          {
          }

          if (v140 < v139)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_29D8DF4A0(v138);
          }

          if (v136 - 2 >= *(v138 + 2))
          {
            goto LABEL_122;
          }

          v141 = &v138[16 * v136];
          *v141 = v139;
          *(v141 + 1) = v140;
          v169 = v138;
          result = sub_29D8DF414(v32);
          v136 = *(v169 + 2);
          v32 = v31;
          v31 = v169;
          if (v136 <= 1)
          {
          }
        }
      }
    }

LABEL_128:
    result = sub_29D8DF4A0(v31);
    v31 = result;
    goto LABEL_98;
  }

  v143 = a4;
  v30 = 0;
  v161 = (v8 + 8);
  v31 = MEMORY[0x29EDCA190];
  v160 = v15;
  v32 = a3;
  v144 = a3;
  while (1)
  {
    v148 = v31;
    if (v30 + 1 >= v29)
    {
      v48 = v30 + 1;
    }

    else
    {
      v156 = v29;
      v145 = v5;
      v33 = *v32;
      v34 = *v32 + *(v155 + 72) * (v30 + 1);
      v158 = *(v155 + 72);
      v35 = v158;
      v36 = v33;
      v168 = v33;
      v37 = v34;
      v38 = v166;
      sub_29D8E2028(v34, v166, type metadata accessor for BloodPressurePDFSampleInterval);
      v39 = v162;
      sub_29D8E2028(v36 + v35 * v30, v162, type metadata accessor for BloodPressurePDFSampleInterval);
      v40 = v38 + *(v15 + 20);
      v147 = v30;
      v41 = v163;
      sub_29D9331A8();
      v42 = v39 + *(v15 + 20);
      v43 = v164;
      sub_29D9331A8();
      LODWORD(v157) = sub_29D933978();
      v44 = *v161;
      v45 = v165;
      (*v161)(v43, v165);
      v154 = v44;
      v44(v41, v45);
      sub_29D8E2110(v39, type metadata accessor for BloodPressurePDFSampleInterval);
      result = sub_29D8E2110(v166, type metadata accessor for BloodPressurePDFSampleInterval);
      v46 = v147 + 2;
      v47 = v168 + v158 * (v147 + 2);
      while (1)
      {
        v48 = v156;
        if (v156 == v46)
        {
          break;
        }

        v49 = v166;
        v168 = v46;
        sub_29D8E2028(v47, v166, type metadata accessor for BloodPressurePDFSampleInterval);
        v50 = v162;
        sub_29D8E2028(v37, v162, type metadata accessor for BloodPressurePDFSampleInterval);
        v51 = v160;
        v52 = v49 + *(v160 + 20);
        v53 = v163;
        sub_29D9331A8();
        v54 = v50 + *(v51 + 20);
        v55 = v164;
        sub_29D9331A8();
        LOBYTE(v167) = sub_29D933978() & 1;
        LODWORD(v167) = v167;
        v56 = v31;
        v57 = v165;
        v58 = v154;
        v154(v55, v165);
        v59 = v57;
        v31 = v56;
        v58(v53, v59);
        sub_29D8E2110(v50, type metadata accessor for BloodPressurePDFSampleInterval);
        result = sub_29D8E2110(v166, type metadata accessor for BloodPressurePDFSampleInterval);
        v46 = v168 + 1;
        v47 += v158;
        v37 += v158;
        if ((v157 & 1) != v167)
        {
          v48 = v168;
          break;
        }
      }

      v15 = v160;
      v5 = v145;
      v32 = v144;
      v30 = v147;
      if (v157)
      {
        if (v48 < v147)
        {
          goto LABEL_125;
        }

        if (v147 < v48)
        {
          v60 = v158 * (v48 - 1);
          v61 = v48 * v158;
          v156 = v48;
          v62 = v48;
          v63 = v147;
          v64 = v147 * v158;
          do
          {
            if (v63 != --v62)
            {
              v65 = *v32;
              if (!*v32)
              {
                goto LABEL_131;
              }

              sub_29D8E2458(v65 + v64, v150, type metadata accessor for BloodPressurePDFSampleInterval);
              if (v64 < v60 || v65 + v64 >= (v65 + v61))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v64 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_29D8E2458(v150, v65 + v60, type metadata accessor for BloodPressurePDFSampleInterval);
              v31 = v148;
            }

            ++v63;
            v60 -= v158;
            v61 -= v158;
            v64 += v158;
          }

          while (v63 < v62);
          v5 = v145;
          v30 = v147;
          v48 = v156;
        }
      }
    }

    v66 = *(v32 + 1);
    if (v48 >= v66)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v48, v30))
    {
      goto LABEL_124;
    }

    if (v48 - v30 >= v143)
    {
LABEL_32:
      v68 = v48;
      if (v48 < v30)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v30, v143))
    {
      goto LABEL_126;
    }

    if (v30 + v143 >= v66)
    {
      v67 = *(v32 + 1);
    }

    else
    {
      v67 = v30 + v143;
    }

    if (v67 < v30)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v48 == v67)
    {
      goto LABEL_32;
    }

    v145 = v5;
    v117 = *v32;
    v118 = *(v155 + 72);
    v119 = *v32 + v118 * (v48 - 1);
    v157 = -v118;
    v147 = v30;
    v120 = v30 - v48;
    v158 = v117;
    v149 = v118;
    v121 = v117 + v48 * v118;
    v151 = v67;
LABEL_87:
    v156 = v48;
    v152 = v121;
    v153 = v120;
    v122 = v121;
    v123 = v120;
    v154 = v119;
LABEL_88:
    v167 = v123;
    v124 = v166;
    sub_29D8E2028(v122, v166, type metadata accessor for BloodPressurePDFSampleInterval);
    v125 = v162;
    sub_29D8E2028(v119, v162, type metadata accessor for BloodPressurePDFSampleInterval);
    v126 = v124 + *(v15 + 20);
    v127 = v163;
    sub_29D9331A8();
    v128 = v125 + *(v15 + 20);
    v129 = v164;
    sub_29D9331A8();
    LODWORD(v168) = sub_29D933978();
    v130 = *v161;
    v131 = v129;
    v132 = v165;
    (*v161)(v131, v165);
    v130(v127, v132);
    sub_29D8E2110(v125, type metadata accessor for BloodPressurePDFSampleInterval);
    result = sub_29D8E2110(v124, type metadata accessor for BloodPressurePDFSampleInterval);
    if (v168)
    {
      break;
    }

    v15 = v160;
LABEL_86:
    v48 = v156 + 1;
    v119 = v154 + v149;
    v120 = v153 - 1;
    v68 = v151;
    v121 = v152 + v149;
    if (v156 + 1 != v151)
    {
      goto LABEL_87;
    }

    v5 = v145;
    v32 = v144;
    v31 = v148;
    v30 = v147;
    if (v151 < v147)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D68FFE8(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v70 = *(v31 + 2);
    v69 = *(v31 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_29D68FFE8((v69 > 1), v70 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v71;
    v72 = &v31[16 * v70];
    *(v72 + 4) = v30;
    *(v72 + 5) = v68;
    v73 = *v146;
    if (!*v146)
    {
      goto LABEL_133;
    }

    v151 = v68;
    if (v70)
    {
      v74 = v73;
      while (1)
      {
        v75 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v76 = *(v31 + 4);
          v77 = *(v31 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_53:
          if (v79)
          {
            goto LABEL_112;
          }

          v92 = &v31[16 * v71];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_115;
          }

          v98 = &v31[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_119;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v71 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v102 = &v31[16 * v71];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_67:
        if (v97)
        {
          goto LABEL_114;
        }

        v105 = &v31[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_117;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_74:
        v113 = v75 - 1;
        if (v75 - 1 >= v71)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v32)
        {
          goto LABEL_130;
        }

        v114 = *&v31[16 * v113 + 32];
        v115 = *&v31[16 * v75 + 40];
        sub_29D8DED74(*v32 + *(v155 + 72) * v114, (*v32 + *(v155 + 72) * *&v31[16 * v75 + 32]), *v32 + *(v155 + 72) * v115, v74);
        if (v5)
        {
        }

        if (v115 < v114)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_29D8DF4A0(v31);
        }

        if (v113 >= *(v31 + 2))
        {
          goto LABEL_109;
        }

        v116 = &v31[16 * v113];
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v169 = v31;
        result = sub_29D8DF414(v75);
        v31 = v169;
        v71 = *(v169 + 2);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v31[16 * v71 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_110;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_111;
      }

      v87 = &v31[16 * v71];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_113;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_116;
      }

      if (v91 >= v83)
      {
        v109 = &v31[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_120;
        }

        if (v78 < v112)
        {
          v75 = v71 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v29 = *(v32 + 1);
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_96;
    }
  }

  v133 = v167;
  if (v158)
  {
    v134 = v159;
    sub_29D8E2458(v122, v159, type metadata accessor for BloodPressurePDFSampleInterval);
    v15 = v160;
    swift_arrayInitWithTakeFrontToBack();
    sub_29D8E2458(v134, v119, type metadata accessor for BloodPressurePDFSampleInterval);
    v119 += v157;
    v122 += v157;
    v135 = __CFADD__(v133, 1);
    v123 = v133 + 1;
    if (v135)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_29D8DED74(unint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v75 = a4;
  v70 = sub_29D9339F8();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v70, v9);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v68 = &v59 - v13;
  v74 = type metadata accessor for BloodPressurePDFSampleInterval();
  v14 = *(*(v74 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v74, v15);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v16, v18);
  v72 = &v59 - v20;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if ((a2 - a1) == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_60;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_61;
  }

  v24 = (a2 - a1) / v22;
  v78 = a1;
  v77 = v75;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    if (v75 < a2 || a2 + v26 <= v75)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v75 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a2;
    v42 = v75 + v26;
    if (v26 >= 1)
    {
      v43 = -v22;
      v62 = (v7 + 8);
      v63 = -v22;
      v44 = v42;
      v73 = a1;
      v45 = v68;
      do
      {
        v60 = v42;
        v46 = v64;
        v64 = (v64 + v43);
        v65 = v46;
        while (1)
        {
          if (v46 <= a1)
          {
            v78 = v46;
            v76 = v60;
            goto LABEL_58;
          }

          v47 = a3;
          v61 = v42;
          v71 = a3 + v43;
          v48 = v44 + v43;
          v49 = v72;
          sub_29D8E2028(v44 + v43, v72, type metadata accessor for BloodPressurePDFSampleInterval);
          v50 = v67;
          sub_29D8E2028(v64, v67, type metadata accessor for BloodPressurePDFSampleInterval);
          v51 = v74;
          v52 = v44;
          v53 = v49 + *(v74 + 20);
          sub_29D9331A8();
          v54 = v50 + *(v51 + 20);
          v55 = v69;
          sub_29D9331A8();
          LODWORD(v66) = sub_29D933978();
          v56 = *v62;
          v57 = v55;
          v58 = v70;
          (*v62)(v57, v70);
          v56(v45, v58);
          sub_29D8E2110(v50, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D8E2110(v72, type metadata accessor for BloodPressurePDFSampleInterval);
          if (v66)
          {
            break;
          }

          v42 = v48;
          a3 = v71;
          if (v47 < v52 || v71 >= v52)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v73;
          }

          else
          {
            a1 = v73;
            if (v47 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v44 = v48;
          v43 = v63;
          v46 = v65;
          if (v48 <= v75)
          {
            v64 = v65;
            goto LABEL_57;
          }
        }

        v44 = v52;
        a3 = v71;
        if (v47 < v65 || v71 >= v65)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v73;
          v42 = v61;
          v43 = v63;
        }

        else
        {
          a1 = v73;
          v42 = v61;
          v43 = v63;
          if (v47 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v44 > v75);
    }

LABEL_57:
    v78 = v64;
    v76 = v42;
  }

  else
  {
    v25 = v24 * v22;
    if (v75 < a1 || a1 + v25 <= v75)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v75 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = v75 + v25;
    v76 = v75 + v25;
    v71 = a3;
    if (v25 >= 1 && a2 < a3)
    {
      v64 = (v7 + 8);
      v65 = v22;
      v28 = v67;
      do
      {
        v73 = a1;
        v29 = v72;
        sub_29D8E2028(a2, v72, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D8E2028(v75, v28, type metadata accessor for BloodPressurePDFSampleInterval);
        v30 = a2;
        v31 = v74;
        v32 = v29 + *(v74 + 20);
        v33 = v68;
        sub_29D9331A8();
        v34 = v28 + *(v31 + 20);
        v35 = v69;
        sub_29D9331A8();
        LOBYTE(v34) = sub_29D933978();
        v36 = *v64;
        v37 = v35;
        v38 = v70;
        (*v64)(v37, v70);
        v36(v33, v38);
        sub_29D8E2110(v28, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D8E2110(v29, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v34)
        {
          v39 = v65;
          a2 = (v65 + v30);
          v40 = v73;
          if (v73 < v30 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v39 = v65;
          v41 = v65 + v75;
          v40 = v73;
          if (v73 < v75 || v73 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v30;
          }

          else
          {
            a2 = v30;
            if (v73 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v77 = v41;
          v75 = v41;
        }

        a1 = v39 + v40;
        v78 = a1;
      }

      while (v75 < v66 && a2 < v71);
    }
  }

LABEL_58:
  sub_29D8DF4CC(&v78, &v77, &v76, type metadata accessor for BloodPressurePDFSampleInterval);
  return 1;
}

uint64_t sub_29D8DF414(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29D8DF4A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_29D8DF4CC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_29D8DF5B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29D8E2248(0, &qword_2A17B10E8, sub_29D6944A4, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_29D8DF704(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressurePDFSampleInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v341 = &v325 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v340 = &v325 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = &v325 - v13;
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v329 = &v325 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v353 = &v325 - v19;
  v20 = MEMORY[0x29EDC9C68];
  sub_29D8E2248(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21 - 8, v23);
  v352 = &v325 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v325 - v28;
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v328 = &v325 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v337 = &v325 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v338 = &v325 - v38;
  MEMORY[0x2A1C7C4A8](v37, v39);
  v351 = &v325 - v40;
  sub_29D8E2248(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v20);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v41 - 8, v43);
  v354 = &v325 - v44;
  v376 = sub_29D9339F8();
  v45 = *(v376 - 8);
  v46 = *(v45 + 64);
  v48 = MEMORY[0x2A1C7C4A8](v376, v47);
  v360 = &v325 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v359 = &v325 - v52;
  v54 = MEMORY[0x2A1C7C4A8](v51, v53);
  v332 = &v325 - v55;
  v57 = MEMORY[0x2A1C7C4A8](v54, v56);
  v59 = &v325 - v58;
  v61 = MEMORY[0x2A1C7C4A8](v57, v60);
  v366 = &v325 - v62;
  v64 = MEMORY[0x2A1C7C4A8](v61, v63);
  v382 = &v325 - v65;
  MEMORY[0x2A1C7C4A8](v64, v66);
  v386 = &v325 - v67;
  v387 = sub_29D9331D8();
  v68 = *(v387 - 8);
  v69 = *(v68 + 64);
  v71 = MEMORY[0x2A1C7C4A8](v387, v70);
  v349 = &v325 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x2A1C7C4A8](v71, v73);
  v357 = &v325 - v75;
  v77 = MEMORY[0x2A1C7C4A8](v74, v76);
  v327 = &v325 - v78;
  v80 = MEMORY[0x2A1C7C4A8](v77, v79);
  v326 = &v325 - v81;
  v83 = MEMORY[0x2A1C7C4A8](v80, v82);
  v330 = &v325 - v84;
  v86 = MEMORY[0x2A1C7C4A8](v83, v85);
  v335 = &v325 - v87;
  v89 = MEMORY[0x2A1C7C4A8](v86, v88);
  v334 = &v325 - v90;
  v92 = MEMORY[0x2A1C7C4A8](v89, v91);
  v333 = &v325 - v93;
  v95 = MEMORY[0x2A1C7C4A8](v92, v94);
  v336 = &v325 - v96;
  v98 = MEMORY[0x2A1C7C4A8](v95, v97);
  v348 = &v325 - v99;
  v101 = MEMORY[0x2A1C7C4A8](v98, v100);
  v347 = &v325 - v102;
  v104 = MEMORY[0x2A1C7C4A8](v101, v103);
  v339 = &v325 - v105;
  v107 = MEMORY[0x2A1C7C4A8](v104, v106);
  v344 = &v325 - v108;
  v110 = MEMORY[0x2A1C7C4A8](v107, v109);
  v343 = &v325 - v111;
  v113 = MEMORY[0x2A1C7C4A8](v110, v112);
  v342 = &v325 - v114;
  v116 = MEMORY[0x2A1C7C4A8](v113, v115);
  v355 = &v325 - v117;
  v119 = MEMORY[0x2A1C7C4A8](v116, v118);
  v331 = &v325 - v120;
  v122 = MEMORY[0x2A1C7C4A8](v119, v121);
  v365 = &v325 - v123;
  v125 = MEMORY[0x2A1C7C4A8](v122, v124);
  v364 = &v325 - v126;
  v128 = MEMORY[0x2A1C7C4A8](v125, v127);
  v374 = &v325 - v129;
  MEMORY[0x2A1C7C4A8](v128, v130);
  v373 = &v325 - v131;
  v372 = type metadata accessor for PregnancyModel();
  v132 = *(*(v372 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v372, v133);
  v136 = &v325 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (!v137)
  {
    return result;
  }

  v358 = v3;
  v345 = v59;
  v346 = v29;
  v350 = v14;
  v368 = v2;
  v389 = MEMORY[0x29EDCA190];
  v139 = a1 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
  v380 = (v45 + 16);
  v384 = (v68 + 16);
  v378 = v68 + 32;
  v363 = *(v134 + 72);
  v362 = v45 + 48;
  v356 = (v45 + 32);
  v367 = v68;
  v381 = (v68 + 8);
  v377 = (v45 + 8);
  v375 = MEMORY[0x29EDCA190];
  v369 = MEMORY[0x29EDCA190];
  v140 = v376;
  v141 = v354;
  do
  {
    sub_29D8E2028(v139, v136, type metadata accessor for PregnancyModel);
    v143 = *v380;
    (*v380)(v386, v136, v140);
    v144 = *(v372 + 20);
    v379 = v143;
    v143(v382, &v136[v144], v140);
    v145 = v373;
    sub_29D933188();
    v385 = *v384;
    v385(v374, v145, v387);
    v146 = v375;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_29D690144(0, (v146[2] + 1), 1, v146);
    }

    v148 = v146[2];
    v147 = v146[3];
    if (v148 >= v147 >> 1)
    {
      v146 = sub_29D690144(v147 > 1, v148 + 1, 1, v146);
    }

    v146[2] = (v148 + 1);
    v371 = (*(v367 + 80) + 32) & ~*(v367 + 80);
    v375 = v146;
    v383 = *(v367 + 72);
    v361 = v146 + v371;
    v149 = v146 + v371 + v383 * v148;
    v150 = *(v367 + 32);
    v151 = v387;
    v150(v149, v374, v387);
    sub_29D8E2090(&v136[*(v372 + 24)], v141, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v140 = v376;
    if ((*v362)(v141, 1, v376) == 1)
    {
      v142 = *v381;
      (*v381)(v373, v151);
      sub_29D8E2110(v136, type metadata accessor for PregnancyModel);
      sub_29D8E2170(v141, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    }

    else
    {
      v370 = v150;
      v152 = v366;
      (*v356)(v366, v141, v140);
      v153 = v379;
      v379(v386, &v136[v144], v140);
      v153(v382, v152, v140);
      v154 = v364;
      sub_29D933188();
      v385(v365, v154, v387);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v369 = sub_29D690144(0, v369[2] + 1, 1, v369);
      }

      v156 = v369[2];
      v155 = v369[3];
      if (v156 >= v155 >> 1)
      {
        v369 = sub_29D690144(v155 > 1, v156 + 1, 1, v369);
      }

      v157 = *v381;
      v158 = v387;
      (*v381)(v364, v387);
      (*v377)(v366, v140);
      v157(v373, v158);
      v142 = v157;
      sub_29D8E2110(v136, type metadata accessor for PregnancyModel);
      v159 = v369;
      v369[2] = v156 + 1;
      v160 = v158;
      v150 = v370;
      v370(&v159[v371 + v156 * v383], v365, v160);
      v141 = v354;
    }

    v139 += v363;
    --v137;
  }

  while (v137);
  v161 = v375;
  if (!v375[2])
  {

    return MEMORY[0x29EDCA190];
  }

  v162 = v331;
  v163 = v387;
  v385(v331, v361, v387);
  v164 = v332;
  sub_29D9331A8();
  v165 = v163;
  v374 = v142;
  (v142)(v162, v163);
  v166 = v345;
  v373 = *v356;
  (v373)(v345, v164, v140);
  v167 = v161[2];
  v370 = v150;
  if (v167)
  {
    v168 = v161 + v371;
    v366 = MEMORY[0x29EDCA190];
    do
    {
      v170 = v355;
      v385(v355, v168, v165);
      v171 = v386;
      v172 = v165;
      sub_29D933178();
      sub_29D8E24C0(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
      v173 = sub_29D939CB8();
      v174 = *v377;
      (*v377)(v171, v140);
      if (v173)
      {
        sub_29D9331A8();
        v175 = sub_29D933978();
        v174(v171, v140);
        if (v175)
        {
          v379(v171, v166, v140);
          sub_29D933178();
          v176 = v342;
          sub_29D933188();
          v385(v343, v176, v387);
          v177 = v366;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v177 = sub_29D690144(0, *(v177 + 2) + 1, 1, v177);
          }

          v179 = *(v177 + 2);
          v178 = *(v177 + 3);
          v180 = v179 + 1;
          if (v179 >= v178 >> 1)
          {
            v177 = sub_29D690144(v178 > 1, v179 + 1, 1, v177);
          }

          v181 = v387;
          v182 = v374;
          (v374)(v342, v387);
          v183 = v343;
        }

        else
        {
          v385(v344, v170, v387);
          v177 = v366;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v177 = sub_29D690144(0, *(v177 + 2) + 1, 1, v177);
          }

          v179 = *(v177 + 2);
          v184 = *(v177 + 3);
          v180 = v179 + 1;
          if (v179 >= v184 >> 1)
          {
            v177 = sub_29D690144(v184 > 1, v179 + 1, 1, v177);
          }

          v183 = v344;
          v181 = v387;
          v182 = v374;
        }

        *(v177 + 2) = v180;
        v366 = v177;
        v185 = &v177[v371];
        v169 = v383;
        v370(&v185[v179 * v383], v183, v181);
        v186 = v386;
        v187 = v355;
        sub_29D933178();
        v182(v187, v181);
        v166 = v345;
        v174(v345, v140);
        (v373)(v166, v186, v140);
        v165 = v181;
      }

      else
      {
        (v374)(v170, v172);
        v165 = v172;
        v169 = v383;
      }

      v168 += v169;
      --v167;
    }

    while (v167);

    v150 = v370;
    v188 = v366;
  }

  else
  {

    v188 = MEMORY[0x29EDCA190];
  }

  v189 = v351;
  v190 = v367;
  v372 = *(v367 + 56);
  v373 = (v367 + 56);
  (v372)(v351, 1, 1, v165);
  v191 = *(v188 + 2);
  v192 = v339;
  v366 = v188;
  if (!v191)
  {
    sub_29D935E88();

    v361 = 0;
    v241 = MEMORY[0x29EDCA190];
    v191 = v350;
    v192 = v346;
    v240 = v385;
    goto LABEL_67;
  }

  v193 = &v188[v371];
  v375 = (v190 + 48);
  sub_29D935E88();
  v363 = 0;
  v364 = MEMORY[0x29EDCA190];
  v356 = v193;
  v194 = v193;
  v361 = v191;
  v195 = v338;
  do
  {
    v385(v192, v194, v165);
    sub_29D8E2090(v189, v195, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    v365 = *v375;
    if ((v365)(v195, 1, v165) == 1)
    {
      v196 = MEMORY[0x29EDB98E8];
      sub_29D8E2170(v189, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
      v197 = v196;
      v165 = v387;
      sub_29D8E2170(v195, &qword_2A17B3A18, v197);
LABEL_39:
      v150(v189, v192, v165);
      (v372)(v189, 0, 1, v165);
      goto LABEL_40;
    }

    v198 = v192;
    v199 = v347;
    v150(v347, v195, v165);
    v200 = v165;
    sub_29D933178();
    sub_29D9331A8();
    v201 = v348;
    sub_29D933188();
    v202 = sub_29D9331C8();
    if (v204 != 0.0)
    {
      MEMORY[0x2A1C7C4A8](v202, v203);
      *(&v325 - 2) = v201;
      v206 = v337;
      v207 = v363;
      sub_29D8DBD3C(sub_29D8E2214, v369, v337);
      v363 = v207;
      if ((v365)(v206, 1, v200) == 1)
      {
        v208 = v200;
        v209 = v374;
        (v374)(v347, v208);
        v210 = MEMORY[0x29EDB98E8];
        sub_29D8E2170(v351, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
        v211 = v210;
        v165 = v387;
        sub_29D8E2170(v206, &qword_2A17B3A18, v211);
        v150 = v370;
        v192 = v339;
      }

      else
      {
        v212 = v336;
        v370(v336, v206, v200);
        v213 = v386;
        sub_29D933178();
        v214 = v382;
        sub_29D933178();
        v215 = sub_29D933968();
        v216 = v140;
        v217 = *v377;
        (*v377)(v214, v216);
        v217(v213, v216);
        v192 = v339;
        if (v215)
        {
          sub_29D9331A8();
          sub_29D933178();
          v218 = v333;
          sub_29D933188();
          v385(v334, v218, v387);
          v219 = v364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v219 = sub_29D690144(0, v219[2] + 1, 1, v219);
          }

          v150 = v370;
          v364 = v219;
          v221 = v219[2];
          v220 = v219[3];
          v222 = v221 + 1;
          v223 = v221;
          if (v221 >= v220 >> 1)
          {
            v364 = sub_29D690144(v220 > 1, v221 + 1, 1, v364);
          }

          v224 = v387;
          v209 = v374;
          (v374)(v333, v387);
          v209(v336, v224);
          v209(v347, v224);
          sub_29D8E2170(v351, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
          v225 = v364;
          *(v364 + 2) = v222;
          v165 = v224;
          v226 = v225 + v371 + v223 * v383;
          v227 = &v366;
        }

        else
        {
          v385(v335, v212, v387);
          v228 = v364;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v228 = sub_29D690144(0, v228[2] + 1, 1, v228);
          }

          v150 = v370;
          v229 = v347;
          v364 = v228;
          v231 = v228[2];
          v230 = v228[3];
          v232 = v231 + 1;
          v362 = v231;
          if (v231 >= v230 >> 1)
          {
            v364 = sub_29D690144(v230 > 1, v231 + 1, 1, v364);
          }

          v224 = v387;
          v209 = v374;
          (v374)(v212, v387);
          v209(v229, v224);
          sub_29D8E2170(v351, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
          v233 = v364;
          *(v364 + 2) = v232;
          v165 = v224;
          v226 = v233 + v371 + v362 * v383;
          v227 = &v367;
        }

        v150(v226, *(v227 - 32), v224);
        v140 = v376;
      }

      v209(v348, v165);
      v195 = v338;
      v189 = v351;
      goto LABEL_39;
    }

    v205 = v374;
    (v374)(v199, v200);
    v205(v198, v200);
    v205(v201, v200);
    v165 = v200;
    v150 = v370;
    v192 = v198;
    v189 = v351;
LABEL_40:
    v194 += v383;
    --v191;
  }

  while (v191);
  if (v361 > *(v366 + 2))
  {
    __break(1u);
LABEL_102:
    v194 = sub_29D690144(0, *(v194 + 2) + 1, 1, v194);
    goto LABEL_64;
  }

  v234 = v330;
  v235 = v385;
  v236 = (v385)(v330, v356 + (v361 - 1) * v383, v165);
  MEMORY[0x2A1C7C4A8](v236, v237);
  *(&v325 - 2) = v234;
  v238 = v328;
  v239 = v363;
  sub_29D8DBD3C(sub_29D8E21E0, v369, v328);
  v361 = v239;

  if ((v365)(v238, 1, v165) == 1)
  {
    sub_29D8E2170(v238, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    (v374)(v234, v165);
    v191 = v350;
    v192 = v346;
    v240 = v235;
    v188 = v366;
    v241 = v364;
    goto LABEL_67;
  }

  v195 = v326;
  v150(v326, v238, v165);
  v140 = v327;
  v235(v327, v195, v165);
  v194 = v364;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v191 = v350;
  v192 = v346;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_64:
  v244 = *(v194 + 2);
  v243 = *(v194 + 3);
  v245 = v194;
  if (v244 >= v243 >> 1)
  {
    v245 = sub_29D690144(v243 > 1, v244 + 1, 1, v194);
  }

  v246 = v195;
  v247 = v387;
  v248 = v374;
  (v374)(v246, v387);
  *(v245 + 16) = v244 + 1;
  v241 = v245;
  v150((v245 + v371 + v244 * v383), v140, v247);
  v248(v330, v247);
  v240 = v385;
  v188 = v366;
LABEL_67:
  v249 = *(v188 + 2);
  v250 = v353;
  v364 = v241;
  if (v249)
  {
    v388[0] = MEMORY[0x29EDCA190];
    sub_29D935E88();
    v375 = v249;
    sub_29D7EE660(0, v249, 0);
    v251 = v387;
    v252 = v388[0];
    v253 = &v188[v371];
    v254 = v382;
    do
    {
      v255 = v357;
      v240(v357, v253, v251);
      v256 = v386;
      sub_29D9331A8();
      sub_29D933178();
      v257 = v376;
      v258 = v379;
      v379(v250, v256, v376);
      v258(v359, v256, v257);
      v258(v360, v254, v257);
      v250 = v353;
      v259 = v368;
      v260 = &v353[*(v368 + 20)];
      sub_29D933188();
      v261 = *v377;
      (*v377)(v254, v257);
      v261(v256, v257);
      v251 = v387;
      (v374)(v255, v387);
      *(v250 + *(v259 + 24)) = 1;
      v388[0] = v252;
      v263 = v252[2];
      v262 = v252[3];
      if (v263 >= v262 >> 1)
      {
        sub_29D7EE660(v262 > 1, v263 + 1, 1);
        v251 = v387;
        v252 = v388[0];
      }

      v252[2] = v263 + 1;
      sub_29D8E2458(v250, v252 + ((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v263, type metadata accessor for BloodPressurePDFSampleInterval);
      v253 += v383;
      v375 = (v375 - 1);
      v240 = v385;
    }

    while (v375);
    v369 = v252;
    v191 = v350;
    v192 = v346;
    v241 = v364;
  }

  else
  {
    sub_29D935E88();
    v369 = MEMORY[0x29EDCA190];
  }

  v264 = v241[2];
  v265 = MEMORY[0x29EDCA190];
  v266 = v351;
  if (v264)
  {
    v388[0] = MEMORY[0x29EDCA190];
    sub_29D7EE660(0, v264, 0);
    v267 = v387;
    v265 = v388[0];
    v268 = v241 + v371;
    v269 = v329;
    v270 = v385;
    do
    {
      v375 = v265;
      v271 = v357;
      v270(v357, v268, v267);
      sub_29D9331A8();
      v272 = v382;
      sub_29D933178();
      v273 = v376;
      v274 = v379;
      v379(v269, v386, v376);
      v274(v359, v386, v273);
      v274(v360, v272, v273);
      v275 = v368;
      v276 = v269 + *(v368 + 20);
      sub_29D933188();
      v277 = *v377;
      v278 = v272;
      v279 = v386;
      (*v377)(v278, v273);
      v277(v279, v273);
      v267 = v387;
      v280 = v271;
      v265 = v375;
      (v374)(v280, v387);
      *(v269 + *(v275 + 24)) = 2;
      v388[0] = v265;
      v282 = v265[2];
      v281 = v265[3];
      if (v282 >= v281 >> 1)
      {
        sub_29D7EE660(v281 > 1, v282 + 1, 1);
        v269 = v329;
        v267 = v387;
        v265 = v388[0];
      }

      v265[2] = (v282 + 1);
      sub_29D8E2458(v269, v265 + ((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v282, type metadata accessor for BloodPressurePDFSampleInterval);
      v268 += v383;
      --v264;
      v270 = v385;
    }

    while (v264);
    v191 = v350;
    v192 = v346;
    v266 = v351;
  }

  sub_29D88BF3C(v369);
  sub_29D88BF3C(v265);
  v283 = v389;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v285 = v368;
  v286 = v358;
  if ((v284 & 1) == 0)
  {
    v283 = sub_29D702CAC(v283);
  }

  v287 = v387;
  v362 = v283;
  v288 = v283[2];
  v363 = (*(v286 + 80) + 32) & ~*(v286 + 80);
  v289 = v283 + v363;
  v388[0] = (v283 + v363);
  v388[1] = v288;
  v290 = v361;
  sub_29D8DDD60(v388);
  v361 = v290;
  v291 = v362;
  (v372)(v192, 1, 1, v287);
  v292 = v291[2];
  if (!v292)
  {
    v320 = v291;
    goto LABEL_98;
  }

  v293 = *(v286 + 72);
  v375 = (v367 + 48);
  sub_29D935E88();
  v369 = v291;
  v294 = v385;
  v365 = v293;
  while (2)
  {
    v383 = v289;
    sub_29D8E2028(v289, v191, type metadata accessor for BloodPressurePDFSampleInterval);
    v299 = v352;
    sub_29D8E2090(v192, v352, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    if ((*v375)(v299, 1, v287) == 1)
    {
      v295 = MEMORY[0x29EDB98E8];
      sub_29D8E2170(v192, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
      v296 = v295;
      v287 = v387;
      sub_29D8E2170(v299, &qword_2A17B3A18, v296);
      v297 = v285;
LABEL_85:
      v298 = v383;
      goto LABEL_86;
    }

    v371 = v292;
    v300 = v349;
    v370(v349, v299, v287);
    v301 = v386;
    v302 = v287;
    sub_29D933178();
    v303 = *(v285 + 20);
    v304 = v382;
    sub_29D9331A8();
    v305 = sub_29D933978();
    v306 = v376;
    v307 = *v377;
    (*v377)(v304, v376);
    v307(v301, v306);
    if ((v305 & 1) == 0)
    {
      (v374)(v300, v302);
      v192 = v346;
      sub_29D8E2170(v346, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
      v297 = v368;
      v191 = v350;
      v287 = v302;
      v294 = v385;
      v292 = v371;
      v293 = v365;
      goto LABEL_85;
    }

    sub_29D933178();
    sub_29D9331A8();
    v308 = v340;
    v309 = v379;
    v379(v340, v301, v306);
    v309(v359, v301, v306);
    v309(v360, v382, v306);
    v310 = v368;
    v311 = v308 + *(v368 + 20);
    v312 = v382;
    sub_29D933188();
    v307(v312, v306);
    v307(v301, v306);
    *(v308 + *(v310 + 24)) = 0;
    sub_29D8E2028(v308, v341, type metadata accessor for BloodPressurePDFSampleInterval);
    v313 = v369;
    v314 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v350;
    v298 = v383;
    if ((v314 & 1) == 0)
    {
      v313 = sub_29D690110(0, v313[2] + 1, 1, v313);
    }

    v316 = v313[2];
    v315 = v313[3];
    v192 = v346;
    v317 = v349;
    v294 = v385;
    if (v316 >= v315 >> 1)
    {
      v369 = sub_29D690110(v315 > 1, v316 + 1, 1, v313);
    }

    else
    {
      v369 = v313;
    }

    sub_29D8E2110(v340, type metadata accessor for BloodPressurePDFSampleInterval);
    v318 = v387;
    (v374)(v317, v387);
    sub_29D8E2170(v192, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    v319 = v369;
    v369[2] = v316 + 1;
    v287 = v318;
    v293 = v365;
    sub_29D8E2458(v341, v319 + v363 + v316 * v365, type metadata accessor for BloodPressurePDFSampleInterval);
    v297 = v368;
    v292 = v371;
LABEL_86:
    v285 = v297;
    v294(v192, v191 + *(v297 + 20), v287);
    sub_29D8E2110(v191, type metadata accessor for BloodPressurePDFSampleInterval);
    (v372)(v192, 0, 1, v287);
    v289 = &v293[v298];
    if (--v292)
    {
      continue;
    }

    break;
  }

  v266 = v351;
  v320 = v369;
LABEL_98:
  v388[0] = v320;
  sub_29D935E88();
  v321 = v361;
  sub_29D8DC928(v388);
  v323 = v376;
  v322 = v377;
  if (v321)
  {

    __break(1u);
  }

  else
  {
    v324 = MEMORY[0x29EDB98E8];
    sub_29D8E2170(v192, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    sub_29D8E2170(v266, &qword_2A17B3A18, v324);
    (*v322)(v345, v323);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v388[0];
  }

  return result;
}

uint64_t sub_29D8E1D28(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v33 = a1;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v33 - v11;
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v33 - v15;
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for BloodPressurePDFSampleInterval();
  v21 = v20 - 8;
  v34 = *(v20 - 8);
  v36 = v34;
  v22 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3[2];
  v26(v19, v33, v2);
  v26(v16, v35, v2);
  v26(v25, v19, v2);
  v26(v12, v19, v2);
  v26(v8, v16, v2);
  v27 = &v25[*(v21 + 28)];
  sub_29D933188();
  v28 = v3[1];
  v28(v16, v2);
  v28(v19, v2);
  v25[*(v21 + 32)] = 0;
  sub_29D8E2248(0, &qword_2A17B10E0, type metadata accessor for BloodPressurePDFSampleInterval, MEMORY[0x29EDC9E90]);
  v29 = *(v34 + 72);
  v30 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93DDB0;
  sub_29D8E2458(v25, v31 + v30, type metadata accessor for BloodPressurePDFSampleInterval);
  return v31;
}

uint64_t sub_29D8E2028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8E2090(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D8E2248(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D8E2110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8E2170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8E2248(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D8E2248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8E22D4()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    result = sub_29D9331D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D8E2374()
{
  result = qword_2A17B79A8;
  if (!qword_2A17B79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B79A8);
  }

  return result;
}

uint64_t sub_29D8E2458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8E24C0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_29D8E2508(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v1[2] = a1;
  v4 = qword_2A1A24658;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2BF10);
  v7 = sub_29D937878();
  v8 = sub_29D93A268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] Initializing CurrentClassificationGuidelinesPublisherWithInitialValue", v9, 0xCu);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  return v2;
}

uint64_t sub_29D8E2694(uint64_t a1)
{
  v3 = *v1;
  v4 = _s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa();
  v5 = v1[2];
  v6 = sub_29D8E4030(a1, v5);

  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v7 = sub_29D937898();
  sub_29D69C6C0(v7, qword_2A1A2BF10);
  v8 = sub_29D937878();
  v9 = sub_29D93A268();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v10 = 136446210;
    v11 = sub_29D93AF08();
    v13 = v6;
    v14 = sub_29D6C2364(v11, v12, v17);

    *(v10 + 4) = v14;
    v6 = v13;
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s] Received subscriber, creating subscription", v10, 0xCu);
    sub_29D69417C(v16);
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  v17[3] = v4;
  v17[4] = swift_getWitnessTable();
  v17[0] = v6;
  sub_29D9381F8();
  return sub_29D69417C(v17);
}

uint64_t sub_29D8E28D4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_29D93A7F8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D8E29A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_29D93A7F8();
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}

uint64_t sub_29D8E2A60(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x29EDCA1E8];
  v5 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = sub_29D93A7F8();
  (*(*(v7 - 8) + 40))(&v1[v5], a1, v7);
  return swift_endAccess();
}

uint64_t sub_29D8E2B28(uint64_t a1)
{
  v2 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x68);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2A1C71028]();
}

void sub_29D8E2BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v53 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D93A7F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v51 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v55 = v12;
    v56 = v9;
    v52 = a1;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    v54 = sub_29D69C6C0(v20, qword_2A1A2BF10);
    v21 = sub_29D937878();
    v22 = sub_29D93A268();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51[0] = a5;
      v25 = v24;
      v58 = v24;
      *v23 = 136446466;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, &v58);
      v51[1] = a3;
      v29 = v28;

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v57 = v52;
      v30 = sub_29D93AD38();
      v32 = sub_29D6C2364(v30, v31, &v58);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s] Received initial guidelines: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    v33 = v55;
    sub_29D8E29A0(v17);
    v34 = v56;
    if ((*(v56 + 48))(v17, 1, a4))
    {
      (*(v13 + 8))(v17, v33);
    }

    else
    {
      v43 = v53;
      (*(v34 + 16))(v53, v17, a4);
      (*(v13 + 8))(v17, v33);
      v58 = v52;
      sub_29D938208();
      (*(v34 + 8))(v43, a4);
    }

    *(v19 + *((*MEMORY[0x29EDCA1E8] & *v19) + 0x70)) = 1;
    v44 = sub_29D937878();
    v45 = sub_29D93A268();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58 = v47;
      *v46 = 136446210;
      v48 = sub_29D93AF08();
      v50 = sub_29D6C2364(v48, v49, &v58);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Sent initial guidelines and set hasSentInitialValue to true", v46, 0xCu);
      sub_29D69417C(v47);
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }
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
    v37 = sub_29D93A288();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = v39;
      *v38 = 136446210;
      v40 = sub_29D93AF08();
      v42 = sub_29D6C2364(v40, v41, &v58);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s] Self is nil, cannot send initial guidelines", v38, 0xCu);
      sub_29D69417C(v39);
      MEMORY[0x29ED6BE30](v39, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }
  }
}

void sub_29D8E315C()
{
  swift_getObjectType();
  v1 = *v0;
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x50);
  v5 = sub_29D93A7F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = *(v0 + *((v3 & v1) + 0x68));
  if (v10)
  {
    [v10 stopObserving_];
    (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
    sub_29D8E2A60(v9);
    v11 = *((*v2 & *v0) + 0x68);
    v12 = *(v0 + v11);
    *(v0 + v11) = 0;

    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v13 = sub_29D937898();
    sub_29D69C6C0(v13, qword_2A1A2BF10);
    v14 = sub_29D937878();
    v15 = sub_29D93A2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136446210;
      v18 = sub_29D93AF08();
      v20 = sub_29D6C2364(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s] Subscription cancelled, stopped observing", v16, 0xCu);
      sub_29D69417C(v17);
      MEMORY[0x29ED6BE30](v17, -1, -1);
      MEMORY[0x29ED6BE30](v16, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8E33B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](a1, a2);
  v53 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D93A7F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v51 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v52 = a1;
    v55 = v9;
    v51[1] = a5;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    v54 = sub_29D69C6C0(v20, qword_2A1A2BF10);
    v21 = sub_29D937878();
    v22 = sub_29D93A268();
    v23 = os_log_type_enabled(v21, v22);
    v51[2] = a3;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51[0] = v19;
      v26 = v25;
      v57 = v25;
      *v24 = 136446466;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &v57);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v56 = v52;
      v30 = sub_29D93AD38();
      v32 = sub_29D6C2364(v30, v31, &v57);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s] Received updated guidelines: %s", v24, 0x16u);
      swift_arrayDestroy();
      v33 = v26;
      v19 = v51[0];
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    sub_29D8E29A0(v17);
    v34 = v55;
    if ((*(v55 + 48))(v17, 1, a4))
    {
      (*(v13 + 8))(v17, v12);
    }

    else
    {
      v43 = v53;
      (*(v34 + 16))(v53, v17, a4);
      (*(v13 + 8))(v17, v12);
      v57 = v52;
      sub_29D938208();
      (*(v34 + 8))(v43, a4);
    }

    v44 = sub_29D937878();
    v45 = sub_29D93A268();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v57 = v47;
      *v46 = 136446210;
      v48 = sub_29D93AF08();
      v50 = sub_29D6C2364(v48, v49, &v57);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Sent updated guidelines", v46, 0xCu);
      sub_29D69417C(v47);
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }
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
    v37 = sub_29D93A288();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v57 = v39;
      *v38 = 136446210;
      v40 = sub_29D93AF08();
      v42 = sub_29D6C2364(v40, v41, &v57);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s] Self is nil, cannot send updated guidelines", v38, 0xCu);
      sub_29D69417C(v39);
      MEMORY[0x29ED6BE30](v39, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }
  }
}

void sub_29D8E3934(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D8E407C();
}

void sub_29D8E3994(void *a1)
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x50);
  v2 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x58);
  sub_29D8E4488();
}

id sub_29D8E39D4()
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x50);
  v2 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = _s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D8E3A44(char *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x60);
  v4 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x50);
  v5 = sub_29D93A7F8();
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  v6 = *&a1[*((*v2 & *a1) + 0x68)];
}

id sub_29D8E3BB0(uint64_t a1, void *a2)
{
  v40 = a2;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = MEMORY[0x29EDCA1E8];
  v5 = *MEMORY[0x29EDCA1E8] & *v2;
  v39 = *v2;
  v6 = *(v5 + 80);
  v38 = sub_29D93A7F8();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v38, v9);
  v11 = &v36 - v10;
  v12 = *((v3 & v39) + 0x60);
  v13 = *(v6 - 1);
  v14 = *(v13 + 56);
  v14(&v2[v12], 1, 1, v6);
  v15 = v4;
  v16 = *((*v4 & *v2) + 0x68);
  *&v2[v16] = 0;
  v2[*((*v15 & *v2) + 0x70)] = 0;
  (*(v13 + 16))(v11, v37, v6);
  v14(v11, 0, 1, v6);
  swift_beginAccess();
  (*(v7 + 40))(&v2[v12], v11, v38);
  swift_endAccess();
  v17 = *&v2[v16];
  v18 = v40;
  *&v2[v16] = v40;
  v19 = v18;

  v20 = *((v3 & v39) + 0x58);
  v40 = v6;
  v21 = _s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa();
  v43.receiver = v2;
  v43.super_class = v21;
  v22 = objc_msgSendSuper2(&v43, sel_init);
  [v19 startObserving_];
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v23 = sub_29D937898();
  sub_29D69C6C0(v23, qword_2A1A2BF10);
  v24 = sub_29D937878();
  v25 = sub_29D93A268();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136446210;
    v28 = ObjectType;
    v29 = sub_29D93AF08();
    v31 = sub_29D6C2364(v29, v30, aBlock);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] Starting to observe classification manager", v26, 0xCu);
    sub_29D69417C(v27);
    MEMORY[0x29ED6BE30](v27, -1, -1);
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  else
  {

    v28 = ObjectType;
  }

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = v40;
  v33[3] = v20;
  v33[4] = v32;
  v33[5] = v28;
  aBlock[4] = sub_29D8E44DC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D83C0B4;
  aBlock[3] = &unk_2A244D6C0;
  v34 = _Block_copy(aBlock);

  [v19 currentClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v34);

  return v22;
}

id sub_29D8E4030(uint64_t a1, void *a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = objc_allocWithZone(_s59CurrentClassificationGuidelinesSubscriptionWithInitialValueCMa());
  return sub_29D8E3BB0(a1, a2);
}

void sub_29D8E407C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x29EDCA1E8];
  v4 = (*MEMORY[0x29EDCA1E8] & *v0);
  if (*(v0 + v4[14]) == 1)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF10);
    v6 = sub_29D937878();
    v7 = sub_29D93A268();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136446210;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, aBlock);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Preferred guidelines updated, fetching new guidelines", v8, 0xCu);
      sub_29D69417C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    v13 = *(v1 + *((*v3 & *v1) + 0x68));
    if (v13)
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v4[10];
      v15[3] = v4[11];
      v15[4] = v14;
      v15[5] = ObjectType;
      aBlock[4] = sub_29D8E44B8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D83C0B4;
      aBlock[3] = &unk_2A244D670;
      v16 = _Block_copy(aBlock);
      v17 = v13;

      [v17 currentClassificationGuidelinesWithCompletionHandler_];
      _Block_release(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2BF10);
    oslog = sub_29D937878();
    v19 = sub_29D93A268();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D677000, oslog, v19, "[%{public}s] Preferred guidelines updated, but initial value not yet sent, skipping", v20, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D8E44C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D8E44F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_29D8E45D0(char a1, uint64_t a2, void (*a3)(), uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v64 = a3;
  swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v59 - v11;
  v13 = sub_29D9336F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v59 - v20;
  sub_29D6D962C(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = sub_29D937878();
    v24 = sub_29D93A2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446466;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Dismissing onboarding and landing back where user was before", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    if (v64)
    {
      v69 = v64;
      v70 = v63;
      aBlock = MEMORY[0x29EDCA5F8];
      v66 = 1107296256;
      v67 = sub_29D6C1F10;
      v68 = &unk_2A244D7B8;
      v30 = _Block_copy(&aBlock);
    }

    else
    {
      v30 = 0;
    }

    [v5 dismissViewControllerAnimated:1 completion:v30];
    _Block_release(v30);
  }

  else
  {
    v62 = v5;
    v31 = *(v14 + 32);
    v31(v21, v12, v13);
    if ((a1 & 1) != 0 && *(v62 + OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion) == 1)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v32 = sub_29D937898();
      sub_29D69C6C0(v32, qword_2A1A2C008);
      v33 = sub_29D937878();
      v34 = sub_29D93A2A8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v60 = v34;
        v36 = v35;
        v61 = swift_slowAlloc();
        aBlock = v61;
        *v36 = 136446466;
        v37 = sub_29D93AF08();
        v39 = sub_29D6C2364(v37, v38, &aBlock);
        v59 = v33;
        v40 = v39;

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        *(v36 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
        v41 = v59;
        _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s.%{public}s]: Dismissing onboarding and navigating to Hypertension Notifications room", v36, 0x16u);
        v42 = v61;
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v42, -1, -1);
        MEMORY[0x29ED6BE30](v36, -1, -1);
      }

      else
      {
      }

      (*(v14 + 16))(v18, v21, v13);
      v54 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v55 = swift_allocObject();
      v31((v55 + v54), v18, v13);
      v56 = (v55 + ((v15 + v54 + 7) & 0xFFFFFFFFFFFFFFF8));
      v57 = v63;
      v58 = v64;
      *v56 = v64;
      v56[1] = v57;
      v69 = sub_29D8E81F0;
      v70 = v55;
      aBlock = MEMORY[0x29EDCA5F8];
      v66 = 1107296256;
      v67 = sub_29D6C1F10;
      v68 = &unk_2A244D830;
      v53 = _Block_copy(&aBlock);
      sub_29D695554(v58);

      [v62 dismissViewControllerAnimated:1 completion:v53];
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v43 = sub_29D937898();
      sub_29D69C6C0(v43, qword_2A1A2C008);
      v44 = sub_29D937878();
      v45 = sub_29D93A2A8();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v62;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136446466;
        v50 = sub_29D93AF08();
        v52 = sub_29D6C2364(v50, v51, &aBlock);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2082;
        *(v48 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
        _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s.%{public}s]: Dismissing onboarding and landing back where user was before", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v49, -1, -1);
        MEMORY[0x29ED6BE30](v48, -1, -1);
      }

      if (v64)
      {
        v69 = v64;
        v70 = v63;
        aBlock = MEMORY[0x29EDCA5F8];
        v66 = 1107296256;
        v67 = sub_29D6C1F10;
        v68 = &unk_2A244D7E0;
        v53 = _Block_copy(&aBlock);
      }

      else
      {
        v53 = 0;
      }

      [v47 dismissViewControllerAnimated:1 completion:v53];
    }

    _Block_release(v53);
    (*(v14 + 8))(v21, v13);
  }
}

void sub_29D8E4E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D8AF604(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
  v7 = sub_29D939C58();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_29D82D6B4;
  v10[5] = v8;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D73C804;
  v10[3] = &unk_2A244D880;
  v9 = _Block_copy(v10);
  sub_29D695554(a2);

  [v5 openURL:v6 options:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_29D8E50C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A244D8A8;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D8E51A0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A244D790;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_29D8E5270(char a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for HypertensionNotificationsOnboardingEvent();
  v8 = swift_allocObject();
  v8[16] = a1;
  v8[17] = a2;
  v8[18] = 4;
  v8[19] = a3;
  v9 = *(v3 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager);
  v10 = swift_allocObject();
  *(v10 + 16) = ObjectType;
  v13[4] = sub_29D8E81D0;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D8E44F0;
  v13[3] = &unk_2A244D768;
  v11 = _Block_copy(v13);

  [v9 submitEvent:v8 completion:v11];
  _Block_release(v11);
}

void sub_29D8E53B0()
{
  v1 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsConfirmDetailsViewController());
  v11 = sub_29D6A0E48();
  *&v11[qword_2A17B18B8 + 8] = &off_2A244D6E8;
  swift_unknownObjectWeakAssign();
  v2 = v0 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29D940030;
    *(v5 + 32) = v11;
    v6 = *(v3 + 24);
    v7 = v11;
    v6(v5, 0, ObjectType, v3);

    sub_29D936978();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v2 + 8);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 8))(v9, v8);
    sub_29D936978();
    if (v10)
    {
      [v10 setDelegate_];
    }
  }
}

id sub_29D8E557C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D8E5640(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a2;
  swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v30 - v12;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A268();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a3;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136446466;
    v21 = sub_29D93AF08();
    v23 = sub_29D6C2364(v21, v22, &v33);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D966690, &v33);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s.%{public}s]: Onboarding finished", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v20, -1, -1);
    v24 = v19;
    a4 = v18;
    a3 = v31;
    MEMORY[0x29ED6BE30](v24, -1, -1);
  }

  if (a1)
  {
    v25 = v5 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      v28 = HKHRHypertensionNotificationsDetailRoomBaseLink();
      sub_29D9336D8();

      v29 = sub_29D9336F8();
      (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
      (*(v26 + 40))(v32 & 1, v13, a3, a4, ObjectType, v26);
      sub_29D936978();
      sub_29D742868(v13, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    }
  }
}

uint64_t sub_29D8E597C(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v10 = sub_29D939968();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D939998();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v31, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v20 = sub_29D93A468();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v23 = v29;
  v22 = v30;
  *(v21 + 40) = a4;
  *(v21 + 48) = v23;
  *(v21 + 56) = v22;
  aBlock[4] = sub_29D8E8280;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244D8F8;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = a4;
  sub_29D939988();
  v33 = MEMORY[0x29EDCA190];
  sub_29D8AF604(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D742804(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v19, v14, v24);
  _Block_release(v24);

  (*(v32 + 8))(v14, v10);
  (*(v15 + 8))(v19, v31);
}

void sub_29D8E5C8C(int a1, void *a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  if (a1 == 6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = a2;
    sub_29D8E64D0(a4, a5, sub_29D8E8298, v9);
  }

  else if (a1 == 5)
  {
    sub_29D8E5F9C(a3, 0, 0);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v11 = sub_29D937898();
    sub_29D69C6C0(v11, qword_2A1A2C008);
    v12 = a4;
    v13 = sub_29D937878();
    v14 = sub_29D93A2A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446978;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v28);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_29D6C2364(0xD00000000000001ALL, 0x800000029D9694F0, &v28);
      *(v15 + 22) = 2080;
      ObjectType = swift_getObjectType();
      (*(a5 + 8))(ObjectType, a5);
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v28);

      *(v15 + 24) = v23;
      *(v15 + 32) = 2080;
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v28);

      *(v15 + 34) = v26;
      _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    sub_29D8E6B8C(a1, v12, a5);
  }
}

void sub_29D8E5F9C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }

    if (a1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v9 = 5;
    goto LABEL_12;
  }

  if (a1 == 4)
  {
    v9 = 3;
LABEL_12:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v10 = sub_29D937898();
    sub_29D69C6C0(v10, qword_2A1A2C008);
    v11 = sub_29D937878();
    v12 = sub_29D93A268();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v47[0] = v46;
      *v13 = 136446978;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, v47);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_29D6C2364(0xD000000000000027, 0x800000029D9698D0, v47);
      *(v13 + 22) = 2080;
      v48 = a1;
      v17 = sub_29D939DA8();
      v19 = v4;
      v20 = a1;
      v21 = sub_29D6C2364(v17, v18, v47);

      *(v13 + 24) = v21;
      a1 = v20;
      v4 = v19;
      *(v13 + 32) = 2080;
      v48 = v9;
      v22 = sub_29D939DA8();
      v24 = sub_29D6C2364(v22, v23, v47);

      *(v13 + 34) = v24;
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Transitioning from %s to %s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    v25 = sub_29D71C528(v9);
    v27 = v26;
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 24);
    v30 = swift_unknownObjectRetain();
    v29(v30, &off_2A244D6E8, ObjectType, v27);
    v31 = v4 + OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v31 + 8);
      swift_getObjectType();
      memset(v47, 0, sizeof(v47));
      v33 = *(v32 + 32);
      v34 = v25;
      v33();
      sub_29D936978();

      sub_29D742868(v47, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D6C5040);
    }

    else
    {
    }

    sub_29D8E5270(a1, 1, 5);
    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v35 = sub_29D937898();
  sub_29D69C6C0(v35, qword_2A1A2C008);
  v36 = sub_29D937878();
  v37 = sub_29D93A2A8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v47[0] = v39;
    *v38 = 136446722;
    v40 = sub_29D93AF08();
    v42 = sub_29D6C2364(v40, v41, v47);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_29D6C2364(0xD000000000000027, 0x800000029D9698D0, v47);
    *(v38 + 22) = 2080;
    v48 = 5;
    v43 = sub_29D939DA8();
    v45 = sub_29D6C2364(v43, v44, v47);

    *(v38 + 24) = v45;
    _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s.%{public}s]: No stage after %s, finishing", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v39, -1, -1);
    MEMORY[0x29ED6BE30](v38, -1, -1);
  }

  sub_29D8E5270(5, 3, 5);
  sub_29D8E5640(1, 1, a2, a3);
}

void sub_29D8E64D0(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  ObjectType = swift_getObjectType();
  if (qword_2A17B0D68 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    sub_29D9334A8();
    sub_29D9334A8();
    sub_29D9334A8();
    v7 = swift_allocObject();
    v7[2] = a3;
    v7[3] = a4;
    v7[4] = ObjectType;

    v8 = sub_29D939D28();

    v43 = sub_29D8E82CC;
    v44 = v7;
    aBlock = MEMORY[0x29EDCA5F8];
    v40 = 1107296256;
    v41 = sub_29D799960;
    v42 = &unk_2A244D970;
    v9 = _Block_copy(&aBlock);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:0 handler:{v9, 0xE000000000000000}];
    _Block_release(v9);

    v12 = v11;
    sub_29D9334A8();
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = ObjectType;

    v14 = sub_29D939D28();

    v43 = sub_29D8E8308;
    v44 = v13;
    aBlock = MEMORY[0x29EDCA5F8];
    v40 = 1107296256;
    v41 = sub_29D799960;
    v42 = &unk_2A244D9C0;
    v15 = _Block_copy(&aBlock);

    v16 = [v10 actionWithTitle:v14 style:1 handler:{v15, 0xE000000000000000}];
    _Block_release(v15);

    v17 = qword_2A1A25718;
    ObjectType = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    v19 = sub_29D937878();
    v20 = sub_29D93A2A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136446722;
      v23 = sub_29D93AF08();
      v25 = sub_29D6C2364(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D96D8A0, &aBlock);
      *(v21 + 22) = 2080;
      v26 = sub_29D939DA8();
      v28 = sub_29D6C2364(v26, v27, &aBlock);

      *(v21 + 24) = v28;
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s]: Showing warning for %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v22, -1, -1);
      MEMORY[0x29ED6BE30](v21, -1, -1);
    }

    a3 = MEMORY[0x29EDCA170];
    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D941B10;
    *(inited + 32) = ObjectType;
    *(inited + 40) = v12;
    a4 = v12;
    v30 = sub_29D939D28();
    v31 = sub_29D939D28();

    v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

    if ((inited & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x29ED6AE30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v33 = *(inited + 32);
    }

    v34 = v33;
    [v32 addAction_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v35 = *(inited + 40);
      goto LABEL_12;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v35 = MEMORY[0x29ED6AE30](1, inited);
LABEL_12:
  v36 = v35;
  [v32 addAction_];

  swift_setDeallocating();
  v37 = *(inited + 16);
  swift_arrayDestroy();
  [v32 setPreferredAction_];
  [a1 presentViewController:v32 animated:1 completion:0];
}

void sub_29D8E6B8C(int a1, void *a2, uint64_t a3)
{
  v70 = a2;
  ObjectType = swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v65 - v9;
  v11 = sub_29D9346B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0x2A17B0000uLL;
  v73 = a1;
  v71 = a3;
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_2A17B0D68 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (qword_2A17B0D68 == -1)
    {
      goto LABEL_17;
    }

LABEL_45:
    swift_once();
    goto LABEL_17;
  }

  if (a1 == 2)
  {
    v69 = ObjectType;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v65 = sub_29D9334A8();
    v66 = v25;
    v72 = sub_29D9334A8();
    v20 = v26;
    v21 = sub_29D9334A8();
    v23 = v27;
    v24 = MEMORY[0x29EDC1720];
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v69 = ObjectType;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v65 = sub_29D9334A8();
    v66 = v18;
    v72 = sub_29D9334A8();
    v20 = v19;
    v21 = sub_29D9334A8();
    v23 = v22;
    v24 = MEMORY[0x29EDC1728];
LABEL_13:
    (*(v12 + 104))(v16, *v24, v11);
    sub_29D934698();
    (*(v12 + 8))(v16, v11);
    v28 = v20;
    v29 = sub_29D8E75EC(v21, v23, v10);

    v30 = v10;
    v31 = v66;
    sub_29D742868(v30, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    v17 = 0x2A17B0000;
    goto LABEL_18;
  }

  if (qword_2A17B0D68 != -1)
  {
    goto LABEL_45;
  }

LABEL_17:
  v72 = sub_29D9334A8();
  v28 = v32;
  v29 = 0;
  v65 = 0;
  v31 = 0;
LABEL_18:
  if (*(v17 + 3432) != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    sub_29D9334A8();
    v33 = sub_29D939D28();

    v34 = [objc_opt_self() actionWithTitle:v33 style:1 handler:0];

    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_29D940030;
    *(v35 + 32) = v34;
    v76 = v35;
    if (v29)
    {
      v36 = v29;
      v37 = v34;
      v38 = v36;
      MEMORY[0x29ED6A300]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
      v39 = v76;
    }

    else
    {
      v39 = v35;
      v38 = v34;
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v40 = sub_29D937898();
    sub_29D69C6C0(v40, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    v43 = os_log_type_enabled(v41, v42);
    v68 = v34;
    v69 = v29;
    v67 = v38;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v66 = v31;
      v45 = v44;
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 136446722;
      v47 = sub_29D93AF08();
      v49 = v28;
      v50 = sub_29D6C2364(v47, v48, &v75);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D966800, &v75);
      *(v45 + 22) = 2082;
      v74 = v73;
      v51 = sub_29D939DA8();
      v53 = sub_29D6C2364(v51, v52, &v75);

      *(v45 + 24) = v53;
      v28 = v49;
      _os_log_impl(&dword_29D677000, v41, v42, "[%{public}s.%{public}s]: Showing blocking alert due to reason %{public}s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      v54 = v45;
      v31 = v66;
      MEMORY[0x29ED6BE30](v54, -1, -1);
    }

    if (v31)
    {
      v31 = sub_29D939D28();
    }

    v55 = sub_29D939D28();

    v56 = [objc_opt_self() alertControllerWithTitle:v31 message:v55 preferredStyle:1];

    if (v39 >> 62)
    {
      break;
    }

    v31 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_44;
    }

LABEL_32:
    v57 = 0;
    v29 = &selRef_initWithResultsHandler_;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x29ED6AE30](v57, v39);
      }

      else
      {
        if (v57 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v58 = *(v39 + 8 * v57 + 32);
      }

      v28 = v58;
      v59 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        break;
      }

      [v56 addAction_];

      ++v57;
      if (v59 == v31)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v31 = sub_29D93A928();
  if (v31)
  {
    goto LABEL_32;
  }

LABEL_44:

  v60 = v67;
  [v56 setPreferredAction_];
  v61 = v70;
  v62 = swift_getObjectType();
  [v61 presentViewController:v56 animated:1 completion:0];

  v63 = (*(v71 + 8))(v62);
  sub_29D8E5270(v63, 1, v73);
}

id sub_29D8E75EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v8);
  v10 = aBlock - v9;
  sub_29D6D962C(a3, aBlock - v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_29D8C8D38(v10, v12 + v11);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v13 = sub_29D939D28();
  aBlock[4] = sub_29D8E8334;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D799960;
  aBlock[3] = &unk_2A244DA10;
  v14 = _Block_copy(aBlock);

  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  return v15;
}

uint64_t sub_29D8E77EC()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_29D8E78D0(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2C008);
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446466;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D96D8A0, &v18);
    _os_log_impl(&dword_29D677000, v10, v11, a5, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  return a2(a6, 0);
}

void sub_29D8E7A84(uint64_t a1, uint64_t a2)
{
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v37 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v37 - v14;
  v16 = sub_29D9336F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D962C(a2, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29D742868(v15, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    v22 = [objc_opt_self() defaultWorkspace];
    if (v22)
    {
      v23 = v22;
      v24 = sub_29D9336B8();
      [v23 openSensitiveURL:v24 withOptions:0];

      (*(v17 + 8))(v21, v16);
      return;
    }

    (*(v17 + 8))(v21, v16);
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v25 = sub_29D937898();
  sub_29D69C6C0(v25, qword_2A1A2C008);
  sub_29D6D962C(a2, v12);
  v26 = sub_29D937878();
  v27 = sub_29D93A288();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315650;
    v30 = sub_29D93AF08();
    v32 = sub_29D6C2364(v30, v31, &v38);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D969840, &v38);
    *(v28 + 22) = 2080;
    sub_29D6D962C(v12, v8);
    v33 = sub_29D939DA8();
    v35 = v34;
    sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    v36 = sub_29D6C2364(v33, v35, &v38);

    *(v28 + 24) = v36;
    _os_log_impl(&dword_29D677000, v26, v27, "[%s.%s]: Unable to create alert action from url %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v29, -1, -1);
    MEMORY[0x29ED6BE30](v28, -1, -1);
  }

  else
  {

    sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
  }
}

void sub_29D8E7F70(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2C008);
    v5 = a2;
    v6 = sub_29D937878();
    v7 = sub_29D93A288();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      v13 = a2;
      sub_29D6A0CD0();
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] error submitting event %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D8E81D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D8E81F0()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_29D8E4E50(v0 + v2, v4, v5);
}

void sub_29D8E8298(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  sub_29D8E5F9C(v5, a1, a2);
}

void sub_29D8E8334(uint64_t a1)
{
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D8E7A84(a1, v1 + v5);
}

void sub_29D8E8400()
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2C008);
  v1 = sub_29D937878();
  v2 = sub_29D93A268();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_29D93AF08();
    v7 = sub_29D6C2364(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000025, 0x800000029D966850, &v8);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: User dismissed modal view", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  sub_29D8E5640(0, 0, 0, 0);
}

void sub_29D8E8640(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29D93A928())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D872D84();
  v8 = sub_29D93A9E8();
LABEL_6:
  if (sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v7)
    {

      sub_29D935E88();
      sub_29D93A8D8();
      sub_29D69567C(0, a2, a3);
      sub_29D6E5B70(a4, a2, a3);
      sub_29D93A118();
      v6 = v46;
      v13 = v47;
      v14 = v48;
      v15 = v49;
      v16 = v50;
    }

    else
    {
      v36 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v14 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v16 = v38 & *(v6 + 56);

      sub_29D935E88();
      v15 = 0;
    }

    while (1)
    {
      if (v6 < 0)
      {
        if (!sub_29D93A958())
        {
LABEL_55:
          sub_29D7AF2E8();

          return;
        }

        sub_29D69567C(0, a2, a3);
        swift_dynamicCast();
        v41 = v45;
      }

      else
      {
        if (v16)
        {
          v39 = v15;
        }

        else
        {
          v42 = v15;
          do
          {
            v39 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_58;
            }

            if (v39 >= ((v14 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v16 = *(v13 + 8 * v39);
            ++v42;
          }

          while (!v16);
          v15 = v39;
        }

        v40 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v41 = *(*(v6 + 48) + ((v39 << 9) | (8 * v40)));
      }

      sub_29D8EB2A8(v41);
    }
  }

  v43 = a3;
  if (v7)
  {

    sub_29D935E88();
    sub_29D93A8D8();
    sub_29D69567C(0, a2, a3);
    sub_29D6E5B70(a4, a2, a3);
    sub_29D93A118();
    v6 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
    v12 = v50;
  }

  else
  {
    v17 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(v6 + 56);

    sub_29D935E88();
    v11 = 0;
  }

  v20 = (v10 + 64) >> 6;
  v21 = v8 + 56;
  while (v6 < 0)
  {
    if (!sub_29D93A958())
    {
      goto LABEL_55;
    }

    sub_29D69567C(0, a2, v43);
    swift_dynamicCast();
    v24 = v45;
LABEL_29:
    v27 = *(v8 + 40);
    v28 = sub_29D93A6F8();
    v29 = -1 << *(v8 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      do
      {
        if (++v31 == v33 && (v32 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = *(v21 + 8 * v31);
      }

      while (v35 == -1);
      v22 = __clz(__rbit64(~v35)) + (v31 << 6);
    }

    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v8 + 48) + 8 * v22) = v24;
    ++*(v8 + 16);
  }

  if (v12)
  {
    v23 = v11;
LABEL_28:
    v26 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v45 = *(*(v6 + 48) + ((v23 << 9) | (8 * v26)));
    v24 = v45;
    goto LABEL_29;
  }

  v25 = v11;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_55;
    }

    v12 = *(v9 + 8 * v23);
    ++v25;
    if (v12)
    {
      v11 = v23;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_29D8E8B1C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  result = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  *(v0 + 32) = result;
  qword_2A1A2BD20 = v0;
  return result;
}

uint64_t sub_29D8E8BAC(uint64_t a1)
{
  v3 = sub_29D9341E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v43 = v7;
  v44 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v45 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D934148();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D934178();
  v17 = *(v40 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v40, v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + 16);
  v50 = v1;
  v48 = v3;
  v39 = v22;
  v22((v1 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_context), a1, v3);
  v49 = a1;
  v38[1] = sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v23 = sub_29D933F58();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D93DDB0;
  (*(v24 + 104))(v27 + v26, *MEMORY[0x29EDC3780], v23);
  if (qword_2A1A22C90 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD20 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v41 + 104))(v16, *MEMORY[0x29EDC3898], v42);
  sub_29D934158();
  v28 = v50;
  (*(v17 + 32))(v50 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_domain, v21, v40);
  v29 = v44;
  v31 = v48;
  v30 = v49;
  v39(v44, v49, v48);
  v32 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v33 = swift_allocObject();
  (*(v4 + 32))(v33 + v32, v29, v31);
  sub_29D6C320C();
  sub_29D8EA570(&qword_2A1A24AE0, sub_29D6C320C);
  v34 = v45;
  sub_29D938378();
  sub_29D8EA570(&qword_2A1A24A20, sub_29D6C3178);
  v35 = v47;
  v36 = sub_29D938418();
  (*(v4 + 8))(v30, v31);
  (*(v46 + 8))(v34, v35);
  *(v28 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_publisher) = v36;
  return v28;
}

uint64_t sub_29D8E9178@<X0>(uint64_t *a1@<X8>)
{
  sub_29D934188();
  sub_29D693E2C(v8, v8[3]);
  v2 = sub_29D934118();
  v3 = sub_29D8E922C();
  v5 = sub_29D73BA9C(v3, v4);

  sub_29D69417C(v8);
  v6 = sub_29D8E96E8(v5);

  *a1 = v6;
  return result;
}

uint64_t sub_29D8E922C()
{
  v0 = sub_29D937898();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9342F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v42 - v13;
  MEMORY[0x2A1C7C4A8](v12, v15);
  v45 = &v42 - v16;
  v17 = sub_29D934358();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9341D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v45;
    (*(v5 + 32))(v45, v27, v4);
    sub_29D934D28();
    v29 = *(v5 + 16);
    v29(v14, v28, v4);
    v30 = sub_29D937878();
    v31 = sub_29D93A288();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_29D6C2364(0xD000000000000010, 0x800000029D96DC70, &v47);
      *(v32 + 12) = 2082;
      v29(v10, v14, v4);
      v34 = sub_29D939DA8();
      v36 = v35;
      v37 = *(v5 + 8);
      v37(v14, v4);
      v38 = sub_29D6C2364(v34, v36, &v47);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s] Failed to get country code: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);

      (*(v43 + 8))(v46, v44);
      v37(v45, v4);
    }

    else
    {

      v41 = *(v5 + 8);
      v41(v14, v4);
      (*(v43 + 8))(v46, v44);
      v41(v45, v4);
    }

    return 0;
  }

  else
  {
    (*(v18 + 32))(v22, v27, v17);
    v39 = sub_29D934348();
    (*(v18 + 8))(v22, v17);
    return v39;
  }
}

uint64_t sub_29D8E96E8(uint64_t a1)
{
  v3 = sub_29D9341E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  sub_29D6C3390();
  v8 = v7;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3488();
  v27 = *(v13 - 8);
  v28 = v13;
  v14 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v26 = v1;
  LOBYTE(a1) = sub_29D934198();
  sub_29D6B7D8C();
  v29 = v18;
  sub_29D8EA570(&qword_2A1A22420, sub_29D6B7D8C);
  if (a1)
  {
    v19 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D8EA570(&qword_2A1A224E0, sub_29D6C3390);
    v19 = sub_29D938418();
    (*(v25 + 8))(v12, v8);
  }

  v30 = v19;
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_29D6B7D8C();
  sub_29D6B7370(0, &qword_2A1A25740);
  sub_29D938468();

  sub_29D8EA570(&qword_2A1A22618, sub_29D6C3488);
  v22 = v28;
  v23 = sub_29D938418();
  (*(v27 + 8))(v17, v22);
  return v23;
}

uint64_t sub_29D8E9AA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v51 = a2;
  v61 = a4;
  v62 = a1;
  v4 = sub_29D9349C8();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v53 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29D933F58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v49 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12, v14);
  v63 = &v47[-v15];
  v50 = sub_29D935108();
  v48 = *(v50 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v50, v17);
  v19 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_29D935788();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v47[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for HypertensionNotificationsSettingsCellViewController();
  v25 = sub_29D933FF8();
  v56 = v26;
  v57 = v25;
  v58 = v27;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9350E8();
  sub_29D9334A8();
  sub_29D935758();
  (*(v9 + 104))(v63, *MEMORY[0x29EDC3780], v8);
  v28 = sub_29D9341B8();
  v29 = sub_29D935778();
  v31 = v30;
  v32 = v29;
  (*(v9 + 16))(v49, v63, v8);
  sub_29D935E88();
  sub_29D6AA230(v32, v31);
  v62 = v28;
  v33 = v32;
  v34 = v61;
  sub_29D9340A8();
  sub_29D935768();
  sub_29D9350F8();
  (*(v48 + 8))(v19, v50);
  sub_29D934098();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v35 = v8;
  v36 = v9;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934298();
  *(inited + 40) = v38;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v39 = v34;
  sub_29D9340D8();
  v40 = v53;
  v41 = v54;
  v42 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x29EDC19C0], v55);
  sub_29D9349B8();
  (*(v41 + 8))(v40, v42);
  sub_29D9340E8();
  sub_29D934088();
  if (qword_2A1A22C90 != -1)
  {
    swift_once();
  }

  v43 = sub_29D935E88();
  v44 = sub_29D7AF540(v43);

  sub_29D8E8640(v44, &qword_2A1A24918, 0x29EDBAA68, &qword_2A17B4C40);

  sub_29D9340B8();

  sub_29D6AA284(v33, v31);
  (*(v36 + 8))(v63, v35);
  (*(v59 + 8))(v24, v60);
  v45 = sub_29D9340F8();
  return (*(*(v45 - 8) + 56))(v39, 0, 1, v45);
}

uint64_t sub_29D8EA330()
{
  v1 = OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_context;
  v4 = sub_29D9341E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_publisher);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline()
{
  result = qword_2A1A22C78;
  if (!qword_2A1A22C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8EA484@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D8EA500@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(sub_29D9341E8() - 8) + 80);

  return sub_29D8E9178(a1);
}

uint64_t sub_29D8EA570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D8EA5B8@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a1;
  v93 = a3;
  sub_29D6C36A4(0);
  v95 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v94 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934148();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D934178();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v92 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9341E8();
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v89 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D937178();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D937158();
  v79 = *(v26 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D9371A8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v84 = v37;
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v96 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v79 - v43;
  v85 = a2;
  v86 = sub_29D8EB124();
  v81 = v45;
  v46 = sub_29D9340F8();
  v47 = *(*(v46 - 8) + 56);
  v87 = v44;
  v47(v44, 1, 1, v46);
  (*(v32 + 16))(v36, v80, v31);
  if ((*(v32 + 88))(v36, v31) != *MEMORY[0x29EDC2D70])
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v64 = sub_29D937898();
    sub_29D69C6C0(v64, qword_2A1A2C008);
    v65 = sub_29D937878();
    v66 = sub_29D93A2A8();
    v67 = os_log_type_enabled(v65, v66);
    v61 = v87;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v97[0] = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_29D6C2364(0xD000000000000010, 0x800000029D96DC70, v97);
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D96DC90, v97);
      _os_log_impl(&dword_29D677000, v65, v66, "[%s.%s] Not creating hypertension notifications settings feed item.", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v69, -1, -1);
      MEMORY[0x29ED6BE30](v68, -1, -1);
    }

    v60 = v89;
    (*(v32 + 8))(v36, v31);
    goto LABEL_14;
  }

  (*(v32 + 96))(v36, v31);
  v48 = v79;
  (*(v79 + 32))(v30, v36, v26);
  sub_29D937108();
  v49 = *MEMORY[0x29EDBA560];
  v50 = sub_29D937188();
  (*(v21 + 8))(v25, v20);
  v51 = [v50 areAllRequirementsSatisfied];

  if (!v51)
  {
    (*(v48 + 8))(v30, v26);
    v60 = v89;
    v61 = v87;
LABEL_14:
    v63 = v85;
    goto LABEL_15;
  }

  v80 = v30;
  v52 = v86;
  v53 = v81;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v54 = sub_29D937898();
  sub_29D69C6C0(v54, qword_2A1A2C008);
  v55 = sub_29D937878();
  v56 = sub_29D93A2A8();
  v57 = v48;
  if (os_log_type_enabled(v55, v56))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v97[0] = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_29D6C2364(0xD000000000000010, 0x800000029D96DC70, v97);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D96DC90, v97);
    _os_log_impl(&dword_29D677000, v55, v56, "[%s.%s] Creating hypertension notifications settings feed item", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v59, -1, -1);
    MEMORY[0x29ED6BE30](v58, -1, -1);
  }

  v60 = v89;
  v61 = v87;
  type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline();
  v62 = v96;
  v63 = v85;
  sub_29D8E9AA8(v85, v52, v53, v96);
  (*(v57 + 8))(v80, v26);
  sub_29D754518(v61);
  sub_29D6C37D4(v62, v61);
LABEL_15:
  (*(v82 + 16))(v60, v63, v83);
  sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v70 = sub_29D933F58();
  v71 = *(v70 - 8);
  v72 = *(v71 + 72);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_29D93DDB0;
  (*(v71 + 104))(v74 + v73, *MEMORY[0x29EDC3780], v70);
  if (qword_2A1A22C90 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD20 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v90 + 104))(v88, *MEMORY[0x29EDC3898], v91);
  sub_29D934158();
  sub_29D6D0B8C(v61, v96);
  sub_29D938338();
  v75 = sub_29D934228();
  v76 = MEMORY[0x29EDC38C8];
  v77 = v93;
  v93[3] = v75;
  v77[4] = v76;
  sub_29D693F78(v77);
  sub_29D8EA570(&qword_2A1A22360, sub_29D6C36A4);
  sub_29D934218();
  return sub_29D754518(v61);
}

uint64_t sub_29D8EB0A4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_29D8EA5B8(a1, v6, a2);
}

unint64_t sub_29D8EB124()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9341B8();
  v7 = sub_29D933FA8();

  if (v7)
  {
    v8 = [v7 identifier];

    sub_29D933A38();
    v9 = sub_29D933A18();
    v11 = v10;
    (*(v1 + 8))(v5, v0);
  }

  else
  {
    v11 = 0xE800000000000000;
    v9 = 0x636974736F6E6761;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_29D93AA18();

  v13 = 0xD000000000000029;
  v14 = 0x800000029D96DD60;
  MEMORY[0x29ED6A240](v9, v11);

  return v13;
}

void sub_29D8EB2A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_29D93A6F8();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_29D93A708();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

id sub_29D8EB3E8(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = objc_allocWithZone(type metadata accessor for BloodPressureJournalHypertensiveCrisisViewController());

      return sub_29D82F1F4(v7);
    }

    v11 = objc_allocWithZone(type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController());
    v12 = &v11[qword_2A17B22E8];
    *v12 = 0;
    v12[1] = 0;
    *&v11[qword_2A17B22F0] = v2;
    v11[qword_2A17B22F8] = 1;
    *&v11[qword_2A17B2300] = *(v2 + 24);

    v5 = 1;
  }

  else
  {
    if (a1)
    {
      v9 = objc_allocWithZone(type metadata accessor for BloodPressureJournalAddDataMainViewController(0));

      return sub_29D78B96C(v10);
    }

    v3 = objc_allocWithZone(type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController());
    v4 = &v3[qword_2A17B22E8];
    *v4 = 0;
    v4[1] = 0;
    *&v3[qword_2A17B22F0] = v2;
    v3[qword_2A17B22F8] = 0;
    *&v3[qword_2A17B2300] = *(v2 + 24);

    v5 = 0;
  }

  return sub_29D81C20C(v5);
}

uint64_t sub_29D8EB548()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_29D8EB5AC()
{
  result = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x29EDC7700]];
  qword_2A17B7A00 = result;
  return result;
}

id sub_29D8EB5F8()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_2A17B7A08 = result;
  return result;
}

id sub_29D8EB634()
{
  if (qword_2A17B0C28 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17D0950;
  qword_2A17B7A10 = qword_2A17D0950;

  return v1;
}

id sub_29D8EB698()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView);
  }

  else
  {
    v4 = sub_29D8EB6F8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D8EB6F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 tintColor];
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D941B10;
  v5 = [v0 heightAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v4 + 32) = v6;
  v7 = [v0 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v4 + 40) = v8;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v9 = sub_29D939F18();

  [v3 activateConstraints_];

  return v0;
}

id sub_29D8EB8B8()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel);
  }

  else
  {
    v4 = v0;
    if (qword_2A17B0D28 != -1)
    {
      swift_once();
    }

    sub_29D7513E4(*(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_number));
    if (qword_2A17B0D20 != -1)
    {
      swift_once();
    }

    v5 = qword_2A17B7A08;
    if (qword_2A17B0D18 != -1)
    {
      swift_once();
    }

    v6 = qword_2A17B7A00;
    v7 = objc_allocWithZone(MEMORY[0x29EDC7B38]);
    v8 = v6;
    v9 = [v7 init];
    [v9 setTextColor_];
    v10 = sub_29D939D28();

    [v9 setText_];

    [v9 setFont_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_29D8EBA80()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    if (*(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_title + 8))
    {
      v5 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_title);
      v6 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_title + 8);
      sub_29D935E88();
      v7 = sub_29D939D28();
    }

    else
    {
      v7 = 0;
    }

    [v4 setText_];

    v8 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D8EBBB8()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_details);
    v6 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_details + 8);
    sub_29D935E88();
    v7 = sub_29D939D28();

    [v4 setText_];

    v8 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D8EBCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtC5Heart16NumberedTextView_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView_number] = a1;
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC5Heart16NumberedTextView_details];
  *v7 = a4;
  *(v7 + 1) = a5;
  v10.receiver = v5;
  v10.super_class = type metadata accessor for NumberedTextView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D8EBE40();

  return v8;
}