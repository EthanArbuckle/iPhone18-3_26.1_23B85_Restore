uint64_t sub_29E0FAE98()
{
  v1 = *(v0 + 8);
  sub_29E2C4A04();
  sub_29E2C4A24();
  if (v1)
  {
    sub_29E2C34B4();
  }

  sub_29E2C34B4();
  return sub_29E2C4A54();
}

uint64_t sub_29E0FAF24()
{
  if (*(v0 + 8))
  {
    sub_29E2C4A24();
    sub_29E2C34B4();
  }

  else
  {
    sub_29E2C4A24();
  }

  return sub_29E2C34B4();
}

uint64_t sub_29E0FAFAC()
{
  v1 = *(v0 + 8);
  sub_29E2C4A04();
  sub_29E2C4A24();
  if (v1)
  {
    sub_29E2C34B4();
  }

  sub_29E2C34B4();
  return sub_29E2C4A54();
}

uint64_t sub_29E0FB034(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_29E2C4914() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_29E2C4914();
}

uint64_t sub_29E0FB0E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_29DE9DE68();
    sub_29E2BF404();
    v3 = sub_29E2C2294();
    v5 = v4;
    v7 = v6;
    v8 = sub_29E2C2244();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_29DED6478(v3, v5, v7 & 1);

    v15 = v12 & 1;
    sub_29DE93208(v8, v10, v12 & 1);
    sub_29E2BF404();
    sub_29DED6478(v8, v10, v12 & 1);

    sub_29DE93208(v8, v10, v12 & 1);
    sub_29E2BF404();
    v16 = 0x4014000000000000;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
  }

  sub_29DE9DE68();
  sub_29E2BF404();
  v17 = sub_29E2C2294();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_29E0FC1A4(v8, v10, v15, v14);
  v21 &= 1u;
  sub_29DE93208(v17, v19, v21);
  sub_29E2BF404();
  sub_29DED6ADC(v8, v10, v15, v14);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  sub_29DED6478(v17, v19, v21);

  return sub_29DED6ADC(v8, v10, v15, v14);
}

__n128 sub_29E0FB2F0@<Q0>(uint64_t a1@<X8>)
{
  sub_29E0FB0E4(*(v1 + 8), v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29E0FB340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_29E2C1BD4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  sub_29E0FC104();
  return sub_29E0FB3A4(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_29E0FB3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29E0FBE9C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v28 - v14;
  v16 = *(a3 + 16);
  v30 = 0;
  v31 = v16;
  v28[2] = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_29E0FBF34();
  v28[1] = v18;
  sub_29E0FBF8C(0);
  v28[0] = v19;
  sub_29E03D80C();
  sub_29E0FC0B0(&qword_2A181CB18, sub_29E0FBF8C);
  sub_29E2BF404();
  sub_29E2BF404();
  sub_29E2C29A4();
  LOBYTE(v30) = 0;
  v20 = *(v10 + 16);
  v20(v12, v15, v9);
  v29 = 0;
  v21 = v30;
  *a4 = 0x4028000000000000;
  *(a4 + 8) = v21;
  sub_29E0FBE30();
  v23 = v22;
  v20((a4 + *(v22 + 48)), v12, v9);
  v24 = a4 + *(v23 + 64);
  v25 = v29;
  *v24 = 0x4028000000000000;
  *(v24 + 8) = v25;
  v26 = *(v10 + 8);
  v26(v15, v9);
  return (v26)(v12, v9);
}

unint64_t *sub_29E0FB610@<X0>(unint64_t *result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = v4 == 0;
  v6 = 0x403B000000000000;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = a2 + 32 * v4;
  v8 = *(v7 + 32);
  v9 = *(v7 + 56);
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 9) = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = *(v7 + 40);
  *(a3 + 40) = v9;
  sub_29E2BF404();

  return sub_29E2BF404();
}

uint64_t sub_29E0FB69C()
{
  v1 = sub_29E2C1D34();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E0FBCB8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v0;
  v13 = *(v0 + 1);
  sub_29E0FBD68();
  sub_29E0FC0B0(&qword_2A181CB00, sub_29E0FBD68);
  sub_29E2C21C4();
  sub_29E2C1D24();
  sub_29E0FC0B0(&qword_2A181CB08, sub_29E0FBCB8);
  sub_29E2C25B4();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29E0FB8D4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_29E2C1A74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0FBB94();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v17 = *(v1 + 8);
  v19 = v16;
  v20 = v17;
  v11 = sub_29E0FBC28();
  v12 = sub_29DE9DE68();
  v13 = MEMORY[0x29EDC99B0];
  sub_29E2C23E4();
  (*(v3 + 104))(v5, *MEMORY[0x29EDBBF98], v2);
  v16 = &type metadata for LearnMoreView;
  *&v17 = v13;
  *(&v17 + 1) = v11;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  sub_29E2C24E4();
  (*(v3 + 8))(v5, v2);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_29E0FBB24()
{
  result = qword_2A181CAA0;
  if (!qword_2A181CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CAA0);
  }

  return result;
}

void sub_29E0FBB94()
{
  if (!qword_2A181CAA8)
  {
    sub_29E0FBC28();
    sub_29DE9DE68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181CAA8);
    }
  }
}

unint64_t sub_29E0FBC28()
{
  result = qword_2A181CAB0;
  if (!qword_2A181CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CAB0);
  }

  return result;
}

void sub_29E0FBCB8()
{
  if (!qword_2A181CAB8)
  {
    sub_29E0FBD68();
    sub_29E0FC0B0(&qword_2A181CB00, sub_29E0FBD68);
    v0 = sub_29E2C21D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CAB8);
    }
  }
}

void sub_29E0FBD68()
{
  if (!qword_2A181CAC0)
  {
    sub_29E0FBDFC(255);
    sub_29E0FC0B0(&qword_2A181CAF8, sub_29E0FBDFC);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CAC0);
    }
  }
}

void sub_29E0FBE30()
{
  if (!qword_2A181CAD0)
  {
    sub_29E0FBE9C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181CAD0);
    }
  }
}

void sub_29E0FBE9C()
{
  if (!qword_2A181CAD8)
  {
    sub_29E0FBF34();
    sub_29E0FBF8C(255);
    sub_29E03D80C();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CAD8);
    }
  }
}

void sub_29E0FBF34()
{
  if (!qword_2A181DA00)
  {
    v0 = sub_29E2C3894();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DA00);
    }
  }
}

void sub_29E0FBFC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E0FC024()
{
  if (!qword_2A181CAE8)
  {
    sub_29DF80C94(255, &qword_2A181CAF0, MEMORY[0x29EDBCB48], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181CAE8);
    }
  }
}

uint64_t sub_29E0FC0B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E0FC104()
{
  if (!qword_2A181CB10)
  {
    sub_29E0FBDFC(255);
    v0 = sub_29E2C15D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CB10);
    }
  }
}

uint64_t sub_29E0FC1A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_29DE93208(result, a2, a3 & 1);

    return sub_29E2BF404();
  }

  return result;
}

unint64_t sub_29E0FC1E8()
{
  result = qword_2A181CB20;
  if (!qword_2A181CB20)
  {
    sub_29E0FBFC0(255, &qword_2A181CB28, sub_29E0FC2C0, MEMORY[0x29EDBCAA8]);
    sub_29E0FC0B0(&qword_2A181CB58, sub_29E0FC2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CB20);
  }

  return result;
}

void sub_29E0FC2F4()
{
  if (!qword_2A181CB38)
  {
    sub_29E0FBFC0(255, &qword_2A181CB40, sub_29E0FC38C, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181CB38);
    }
  }
}

void sub_29E0FC3C0()
{
  if (!qword_2A181CB50)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181CB50);
    }
  }
}

uint64_t sub_29E0FC46C(void *a1, char a2)
{
  sub_29DF687B4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin13AnalysisModel__fertileWindowEstimatesForceDisabled;
  v15[15] = 0;
  sub_29E2C11D4();
  v11 = *(v7 + 32);
  v11(v2 + v10, v9, v6);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin13AnalysisModel__periodPredictionsForceDisabled;
  v15[14] = 0;
  sub_29E2C11D4();
  v11(v2 + v12, v9, v6);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin13AnalysisModel__deviationDetectionForceDisabled;
  v15[13] = 0;
  sub_29E2C11D4();
  v11(v2 + v13, v9, v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  [a1 registerObserver_];
  return v2;
}

uint64_t sub_29E0FC660()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin13AnalysisModel__fertileWindowEstimatesForceDisabled;
  sub_29DF687B4();
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin13AnalysisModel__periodPredictionsForceDisabled, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin13AnalysisModel__deviationDetectionForceDisabled, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AnalysisModel()
{
  result = qword_2A181CB78;
  if (!qword_2A181CB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0FC7A4()
{
  sub_29DF687B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E0FC850()
{
  v0 = sub_29DF3FACC();
  sub_29E0922B0(0, v0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1224();
  sub_29E0922B0(1u, v0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29E2C1224();
  sub_29E0922B0(2u, v0);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

uint64_t sub_29E0FCAA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BEE54();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_isOnboardingCompleted) != 1)
      {
        sub_29E2BEE04();
        goto LABEL_11;
      }
    }

    else if (a1 != 3)
    {
LABEL_7:
      __break(1u);
      goto LABEL_8;
    }

LABEL_10:
    sub_29E2BEE14();
    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_8:
  sub_29E2BEE04();
  v8 = sub_29E2BEE34();
  *(v9 + 16) = 0;
  v8(v12, 0);
LABEL_11:
  v10 = sub_29E2BEE44();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_29E0FCC10()
{
  *&v32 = sub_29E2BCFB4();
  v1 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BF5D4();
  v31 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_29E2BE794();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoritableFeedItem;
  swift_beginAccess();
  sub_29E100EF8(v0 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E100E6C(v9);
    sub_29E100D70(0, &qword_2A181DB20, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9E90]);
    v15 = *(v1 + 72);
    v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v31 = swift_allocObject();
    v17 = v31 + v16;
    MEMORY[0x29ED79740](0, 0);
    MEMORY[0x29ED79740](0, 1);
    v18 = *(v1 + 16);
    v19 = (v1 + 8);
    v18(v3, v17, v32);
    sub_29E2BE5F4();
    sub_29E2BED34();
    v20 = sub_29E2BE704();

    if (v20)
    {
      sub_29E2BE5F4();
      sub_29E2BEC14();
    }

    v21 = *v19;
    v22 = v32;
    (*v19)(v3, v32);
    v18(v3, v17 + v15, v22);
    sub_29E2BE5F4();
    v23 = sub_29E2BE704();

    if (v23)
    {
      sub_29E2BE5F4();
      sub_29E2BEC14();
    }

    v21(v3, v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    return swift_deallocClassInstance();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_29E2BE5F4();
    sub_29E100F8C(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v25 = swift_allocObject();
    v32 = xmmword_29E2CAB20;
    *(v25 + 16) = xmmword_29E2CAB20;
    *(v25 + 56) = v10;
    *(v25 + 64) = sub_29E0FE7B8(&qword_2A181CC50, 255, MEMORY[0x29EDC2070]);
    v26 = sub_29DEBB7E8((v25 + 32));
    (*(v11 + 16))(v26, v13, v10);
    sub_29E2BEC94();

    sub_29E2BF5B4();
    sub_29E2BE5F4();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 56) = v4;
    *(v27 + 64) = sub_29E0FE7B8(&qword_2A181CC58, 255, MEMORY[0x29EDC28B0]);
    v28 = sub_29DEBB7E8((v27 + 32));
    v29 = v31;
    (*(v31 + 16))(v28, v6, v4);
    sub_29E2BEC94();

    (*(v29 + 8))(v6, v4);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_29E0FD238()
{
  sub_29E100E6C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoritableFeedItem);
}

uint64_t sub_29E0FD2C8()
{

  sub_29E100E6C(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoritableFeedItem);

  return v0;
}

uint64_t sub_29E0FD368()
{
  sub_29E0FD2C8();

  return swift_deallocClassInstance();
}

void sub_29E0FD3E8()
{
  sub_29E100D70(319, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E0FD550()
{
  sub_29E2BF364();
  sub_29E2C3B74();
  type metadata accessor for TextItemCell();
  sub_29E0FE7B8(&qword_2A181CBF8, 255, type metadata accessor for TextItemCell);
  return sub_29E2C3B74();
}

uint64_t sub_29E0FD5DC@<X0>(uint64_t *a1@<X8>)
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
  v11 = sub_29E2BE0B4();
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  sub_29E2C0844();
  v13 = sub_29E2BE0A4();
  a1[3] = v11;
  result = sub_29E0FE7B8(&unk_2A181CC00, 255, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_29E0FD904()
{
  v2 = v0[6];
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v0[2], v0[3]);
  return v2;
}

uint64_t sub_29E0FD958()
{

  swift_unknownObjectRelease();
}

uint64_t sub_29E0FD9A0()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_29E0FD9F8()
{
  sub_29E0FD9A0();

  return swift_deallocClassInstance();
}

uint64_t sub_29E0FDA78()
{
  v1 = *(*v0 + 64);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29E0FDAAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29E0FDB10()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v18 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000016, 0x800000029E301060);
  v14 = v18;
  type metadata accessor for TextItemCell();
  sub_29E0FE7B8(&qword_2A181CBF8, 255, type metadata accessor for TextItemCell);
  *(v1 + 48) = sub_29E2BE2B4();
  *(v1 + 56) = v15;
  *(v1 + 16) = v11;
  *(v1 + 24) = v13;
  *(v1 + 32) = v14;
  return v1;
}

uint64_t sub_29E0FDE50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29E0FDEB4()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v18 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x74756F6241, 0xE500000000000000);
  v14 = v18;
  type metadata accessor for TextItemCell();
  sub_29E0FE7B8(&qword_2A181CBF8, 255, type metadata accessor for TextItemCell);
  *(v1 + 48) = sub_29E2BE2B4();
  *(v1 + 56) = v15;
  *(v1 + 16) = v11;
  *(v1 + 24) = v13;
  *(v1 + 32) = v14;
  return v1;
}

uint64_t sub_29E0FE158()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E0FE22C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29E0FE298()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E0FE3D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29E0FE438(uint64_t a1, void *a2)
{

  sub_29DE9408C(0, &qword_2A1A5E280);
  sub_29E100F8C(0, &qword_2A1A61CA0, &qword_2A1A61C60, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CD7A0;
  sub_29E2BDCA4();
  v4 = sub_29E2BDC94();
  v6 = v5;
  v7 = MEMORY[0x29EDC99B0];
  *(v3 + 56) = MEMORY[0x29EDC99B0];
  v8 = sub_29DEB1A44();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 64) = v8;
  *(v3 + 72) = 0xD00000000000001DLL;
  *(v3 + 80) = 0x800000029E2EB890;
  v9 = sub_29E2C38D4();
  sub_29DE966D4(a2, a2[3]);
  sub_29E2BD8A4();
  v10 = sub_29E2BDBE4();
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CD3B0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v12 = v9;
  v13 = v10;
  v14 = sub_29E2C3604();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_29DE9DC34(a2, v19);
  sub_29E2BF364();
  v16 = v15;
  v17 = sub_29E2BF464();

  sub_29DE93B3C(a2);
  return v17;
}

uint64_t sub_29E0FE6F0()
{
  sub_29E2BF474();

  return swift_deallocClassInstance();
}

uint64_t sub_29E0FE7B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E0FE8DC(int a1)
{
  v2 = v1;
  v57 = *v1;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0514();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C2B84();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v14 = sub_29E2C3CF4();
  (*(v12 + 104))(v14, *MEMORY[0x29EDCA278], v11);
  v15 = sub_29E2C2BA4();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v60 = v7;
    v61 = v5;
    v17 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_isOnboardingCompleted);
    v59 = a1 & 1;
    *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_isOnboardingCompleted) = a1 & 1;
    sub_29E2C04B4();
    v18 = sub_29E2C0504();
    v19 = sub_29E2C3A34();
    v20 = os_log_type_enabled(v18, v19);
    v58 = v4;
    v21 = a1;
    v22 = v2;
    if (v20)
    {
      v23 = swift_slowAlloc();
      v55 = v2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v56 = a1;
      v26 = v25;
      v65[0] = v25;
      *v24 = 136446722;
      v27 = sub_29E2C4AE4();
      v29 = sub_29DFAA104(v27, v28, v65);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v64 = v17;
      v30 = sub_29E2C3464();
      v32 = sub_29DFAA104(v30, v31, v65);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2080;
      v33 = v59;
      v64 = v59;
      v34 = sub_29E2C3464();
      v36 = sub_29DFAA104(v34, v35, v65);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s] Received isOnboardingCompleted update from: %s to: %s", v24, 0x20u);
      swift_arrayDestroy();
      v37 = v26;
      v21 = v56;
      MEMORY[0x29ED82140](v37, -1, -1);
      v38 = v24;
      v22 = v55;
      MEMORY[0x29ED82140](v38, -1, -1);

      result = (*(v62 + 8))(v10, v63);
      v39 = v33;
    }

    else
    {

      result = (*(v62 + 8))(v10, v63);
      v39 = v59;
    }

    v40 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_options);
    *(v40 + 112) = v39;
    v42 = v60;
    v41 = v61;
    if (v17)
    {
      if ((v21 & 1) == 0)
      {
        sub_29E2BE5F4();
        MEMORY[0x29ED79740](0, 0);
        sub_29E2BED34();
        v43 = sub_29E2BE704();

        v44 = *(v41 + 8);
        v45 = v58;
        v44(v42, v58);
        if (v43)
        {
          sub_29E2BE5F4();
          MEMORY[0x29ED79740](0, 0);
          sub_29E2BEC14();

          v44(v42, v45);
        }

        sub_29E2BE5F4();
        MEMORY[0x29ED79740](0, 1);
        v46 = sub_29E2BE704();

        v44(v42, v45);
        if (v46)
        {
          sub_29E2BE5F4();
          MEMORY[0x29ED79740](0, 1);
          sub_29E2BEC14();

          v44(v42, v45);
        }

        sub_29E2BE5F4();
        MEMORY[0x29ED79740](2, 2);
        v47 = sub_29E2BE704();

        v44(v42, v45);
        if (v47)
        {
          sub_29E2BE5F4();
          MEMORY[0x29ED79740](2, 2);
          sub_29E2BEC14();

          v44(v42, v45);
        }

        sub_29E2BE5F4();
        MEMORY[0x29ED79740](0, 2);
        v48 = sub_29E2BE704();

        result = (v44)(v42, v45);
        if (v48)
        {
          sub_29E2BE5F4();
          MEMORY[0x29ED79740](0, 2);
          sub_29E2BEC14();

          return (v44)(v42, v58);
        }
      }
    }

    else if (v21)
    {
      sub_29E0FCC10();
      sub_29E2BE5F4();
      v66 = type metadata accessor for OptionsItem();
      v67 = sub_29E0FE7B8(&qword_2A181CBE8, v49, type metadata accessor for OptionsItem);
      v65[0] = v40;

      MEMORY[0x29ED79740](0, 2);
      sub_29E2BECD4();

      v50 = *(v41 + 8);
      v51 = v58;
      v50(v42, v58);
      sub_29DE93B3C(v65);
      sub_29E2BE5F4();
      v52 = *(v22 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_about);
      v66 = type metadata accessor for AboutItem();
      v67 = sub_29E0FE7B8(&qword_2A181CBD8, v53, type metadata accessor for AboutItem);
      v65[0] = v52;

      MEMORY[0x29ED79740](2, 2);
      sub_29E2BECD4();

      v50(v42, v51);
      return sub_29DE93B3C(v65);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29E0FF0D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v78 = a6;
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v79 = a1;
  v77 = sub_29E2BEBB4();
  v90 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v76 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_29E2C3384();
  v83 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v80 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v81 = &v74 - v14;
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v74 - v16;
  type metadata accessor for MoreDataSource(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoritableFeedItem;
  v20 = sub_29E2BE794();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_viewDataSources;
  v85 = type metadata accessor for ViewDataSourcesItem();
  v23 = swift_allocObject();
  sub_29E0FDB10();
  v86 = v22;
  *(v18 + v22) = v23;
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_about;
  v74 = type metadata accessor for AboutItem();
  v25 = swift_allocObject();
  sub_29E0FDEB4();
  v75 = v24;
  *(v18 + v24) = v25;
  *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoriteStateDataSourceCancellable) = 0;
  v26 = a5 & 1;
  v87 = a5;
  *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_isOnboardingCompleted) = a5;
  v89 = a7;
  sub_29DE9DC34(a7, &v94);
  sub_29DECE8A4(0, &qword_2A181CC70);
  inited = swift_initStackObject();
  v88 = xmmword_29E2CAB20;
  *(inited + 16) = xmmword_29E2CAB20;
  v28 = v78;
  *(inited + 32) = sub_29E2BD274();
  type metadata accessor for FavoriteStateDataSource(0);
  swift_allocObject();
  *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoriteStateDataSource) = sub_29E0FE438(v28, &v94);

  sub_29E2BE784();

  if (v95)
  {
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    v29 = swift_dynamicCast() ^ 1;
    v30 = v17;
  }

  else
  {
    sub_29DF94318(&v94);
    v30 = v17;
    v29 = 1;
  }

  v21(v30, v29, 1, v20);
  swift_beginAccess();
  sub_29E10124C(v17, v18 + v19);
  swift_endAccess();
  v78 = type metadata accessor for OptionsItem();
  v31 = swift_allocObject();
  *(v31 + 64) = 0x49736E6F6974704FLL;
  *(v31 + 72) = 0xEB000000006D6574;
  v32 = v79;
  v34 = v91;
  v33 = v92;
  *(v31 + 80) = v79;
  *(v31 + 88) = v34;
  v35 = v93;
  *(v31 + 96) = v33;
  *(v31 + 104) = v35;
  *(v31 + 112) = v26;
  v36 = v32;
  swift_retain_n();
  swift_retain_n();
  v37 = v36;
  swift_unknownObjectRetain();
  v38 = v81;
  sub_29E2C3314();
  v39 = v83;
  v40 = v84;
  (*(v83 + 16))(v80, v38, v84);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v41 = qword_2A1A67F80;
  sub_29E2BCC74();
  v82 = sub_29E2C3414();
  v43 = v42;
  (*(v39 + 8))(v38, v40);
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v94 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x736E6F6974704FLL, 0xE700000000000000);
  v44 = v94;
  type metadata accessor for TextItemCell();
  sub_29E0FE7B8(&qword_2A181CBF8, 255, type metadata accessor for TextItemCell);
  v45 = sub_29E2BE2B4();
  v47 = v46;

  swift_unknownObjectRelease();

  *(v31 + 48) = v45;
  *(v31 + 56) = v47;
  *(v31 + 16) = v82;
  *(v31 + 24) = v43;
  *(v31 + 32) = v44;
  v48 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_options;
  *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_options) = v31;
  v93 = type metadata accessor for InternalLiveOnSettingsItem();
  v49 = swift_allocObject();
  v49[8] = v37;
  v50 = v37;
  v49[6] = sub_29E2BE2B4();
  v49[7] = v51;
  v49[2] = 0x100000000000001ALL;
  v49[3] = 0x800000029E300F60;
  v49[4] = 0;
  v49[5] = 0xE000000000000000;
  v52 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_liveOnSettings;
  *(v18 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_liveOnSettings) = v49;
  sub_29E100F8C(0, &qword_2A181CC78, &qword_2A181CC80, MEMORY[0x29EDC1910], MEMORY[0x29EDC9E90]);
  if (v87)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_29E2CE0D0;
    v54 = *(v18 + v48);
    *(v53 + 56) = v78;
    *(v53 + 64) = sub_29E0FE7B8(&qword_2A181CC98, v55, type metadata accessor for OptionsItem);
    *(v53 + 32) = v54;
    v56 = *(v18 + v86);
    *(v53 + 96) = v85;
    *(v53 + 104) = sub_29E0FE7B8(&unk_2A181CC88, v57, type metadata accessor for ViewDataSourcesItem);
    *(v53 + 72) = v56;
    v58 = *(v18 + v75);
    *(v53 + 136) = v74;
    *(v53 + 144) = sub_29E0FE7B8(qword_2A181CCA0, v59, type metadata accessor for AboutItem);
    *(v53 + 112) = v58;
  }

  else
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v88;
    v60 = *(v18 + v86);
    *(v53 + 56) = v85;
    *(v53 + 64) = sub_29E0FE7B8(&unk_2A181CC88, v61, type metadata accessor for ViewDataSourcesItem);
    *(v53 + 32) = v60;
  }

  sub_29E100D70(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v62 = *(v90 + 72);
  v63 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29E2CE0D0;
  sub_29E2BEBA4();
  sub_29E2BEBA4();
  sub_29E13D98C(v53);

  sub_29E2BEBA4();
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_29E100F8C(0, &unk_2A181B3C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v65 = swift_allocObject();
    *(v65 + 16) = v88;
    v66 = *(v18 + v52);
    *(v65 + 56) = v93;
    *(v65 + 64) = sub_29E0FE7B8(&qword_2A181CBD0, v67, type metadata accessor for InternalLiveOnSettingsItem);
    *(v65 + 32) = v66;

    v68 = v76;
    sub_29E2BEBA4();
    v70 = *(v64 + 16);
    v69 = *(v64 + 24);
    if (v70 >= v69 >> 1)
    {
      v64 = sub_29E144B2C(v69 > 1, v70 + 1, 1, v64);
    }

    *(v64 + 16) = v70 + 1;
    (*(v90 + 32))(v64 + v63 + v70 * v62, v68, v77);
  }

  v71 = sub_29E0018F0(v64, 0);

  sub_29E0FCC10();

  v72 = sub_29E2BEC44();

  [v72 registerObserver_];

  sub_29DE93B3C(v89);
  return v71;
}

void sub_29E0FFCC8(void *a1)
{
  v2 = v1;
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v47 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v45 = &v42 - v9;
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v14 = a1;
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A34();

  v17 = os_log_type_enabled(v15, v16);
  v46 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v43 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v50[0] = v20;
    *v19 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E100194();
    v21 = sub_29E2C3424();
    v23 = sub_29DFAA104(v21, v22, v50);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Showing the Options View Controller", v19, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    MEMORY[0x29ED82140](v19, -1, -1);

    (*(v11 + 8))(v13, v43);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v25 = *(v2 + 80);
  v24 = *(v2 + 88);
  v27 = *(v2 + 96);
  v26 = *(v2 + 104);
  v28 = *(v2 + 112);
  v29 = objc_allocWithZone(type metadata accessor for LocalSettingsModel());
  v30 = v25;
  swift_unknownObjectRetain();

  v31 = [v29 init];
  type metadata accessor for OptionsModel();
  swift_allocObject();
  v32 = sub_29DF729A4(v30, v24, v31, v27, v26, v28);

  swift_unknownObjectRelease();

  v33 = v45;
  sub_29E2C3314();
  v34 = v47;
  (*(v47 + 16))(v44, v33, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v35 = qword_2A1A67F80;
  sub_29E2BCC74();
  v36 = sub_29E2C3414();
  v38 = v37;
  (*(v34 + 8))(v33, v6);
  v50[0] = sub_29E068DD4;
  v50[1] = v32;
  v51 = 0;
  v52 = v36;
  v53 = v38;
  sub_29E0E6894();
  v40 = objc_allocWithZone(v39);

  sub_29E2BF404();
  v41 = sub_29E2C2CC4();
  [v46 showAdaptively:v41 sender:v46];
}

unint64_t sub_29E100194()
{
  result = qword_2A181CC20;
  if (!qword_2A181CC20)
  {
    sub_29DE9408C(255, &qword_2A1820CC0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181CC20);
  }

  return result;
}

uint64_t sub_29E1001EC(void *a1)
{
  v41 = *v1;
  v3 = sub_29E2BE194();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v43 = &v38 - v7;
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v12 = a1;
  v13 = sub_29E2C0504();
  v14 = sub_29E2C3A34();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v9;
    v17 = v16;
    v48[0] = v16;
    *v15 = 136446210;
    v47[0] = swift_getObjectType();
    sub_29E100194();
    v18 = sub_29E2C3424();
    v20 = sub_29DFAA104(v18, v19, v48);
    v39 = v8;
    v21 = v20;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Showing the View Data Sources screen", v15, 0xCu);
    sub_29DE93B3C(v17);
    MEMORY[0x29ED82140](v17, -1, -1);
    MEMORY[0x29ED82140](v15, -1, -1);

    (*(v40 + 8))(v11, v39);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v22 = sub_29E2C3BE4();
  if (v22)
  {
    v23 = v22;
    v24 = sub_29E2BE174();
    v25 = sub_29E2BD664();
    if (*(v24 + 16))
    {
      v27 = sub_29DECF000(v25, v26);
      v29 = v28;

      if (v29)
      {
        v30 = *(v24 + 56) + *(v4 + 72) * v27;
        v31 = *(v4 + 16);
        v32 = v43;
        v31(v43, v30, v3);

        sub_29E2C3BF4();
        sub_29E2C3C14();
        v31(v42, v32, v3);
        sub_29DE9DC34(v48, v46);
        sub_29DE9DC34(v47, v45);
        v33 = objc_allocWithZone(sub_29E2BEBD4());
        v34 = v23;
        v35 = sub_29E2BEBC4();
        [v12 showViewController:v35 sender:v44];

        sub_29DE93B3C(v47);
        sub_29DE93B3C(v48);
        return (*(v4 + 8))(v32, v3);
      }
    }

    else
    {
    }
  }

  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](91, 0xE100000000000000);
  v37 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v37);

  MEMORY[0x29ED7FCC0](0xD00000000000003DLL, 0x800000029E300DE0);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E1006D8(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = a1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E100194();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Showing the LiveOn dashboard", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    v17 = v12;
    v2 = v23;
    MEMORY[0x29ED82140](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v18 = *(v2 + 64);
  v19 = objc_allocWithZone(type metadata accessor for InternalLiveOnSettingsViewController());
  v20 = v18;
  v21 = sub_29E013578(v18);

  [v8 showViewController:v21 sender:0];
}

void sub_29E1008F4(void *a1)
{
  v36 = *v1;
  sub_29E100D70(0, &qword_2A181CC30, MEMORY[0x29EDC4378], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_29E2C2E14();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v36 - v12;
  sub_29E2C04B4();
  v14 = a1;
  v15 = sub_29E2C0504();
  v16 = sub_29E2C3A34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41[0] = v19;
    *v18 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E100194();
    v20 = sub_29E2C3424();
    v22 = sub_29DFAA104(v20, v21, v41);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Showing the About screen", v18, 0xCu);
    sub_29DE93B3C(v19);
    MEMORY[0x29ED82140](v19, -1, -1);
    v23 = v18;
    v5 = v37;
    MEMORY[0x29ED82140](v23, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  v24 = sub_29E2C3BE4();
  if (v24)
  {
    v25 = v24;
    v26 = *MEMORY[0x29EDBA708];
    v27 = type metadata accessor for MenstrualCyclesFeatureRegulatoryInfoTransformProvider();
    swift_allocObject();
    v28 = v25;
    v29 = v26;
    v30 = sub_29E2C2E74();
    v41[3] = v27;
    v41[4] = MEMORY[0x29EDC43B8];
    v41[0] = v30;
    v31 = sub_29E2C2D14();
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
    sub_29E2C04B4();
    sub_29E2C2E04();
    sub_29E100DD4();
    v33 = objc_allocWithZone(v32);
    v34 = sub_29E2C2CC4();
    [v14 showAdaptively:v34 sender:{0, v36}];
  }

  else
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](91, 0xE100000000000000);
    v35 = sub_29E2C4AE4();
    MEMORY[0x29ED7FCC0](v35);

    MEMORY[0x29ED7FCC0](0xD00000000000003ALL, 0x800000029E300E20);
    sub_29E2C4724();
    __break(1u);
  }
}

void sub_29E100D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E100DD4()
{
  if (!qword_2A181CC38)
  {
    sub_29E2C2E14();
    sub_29E0FE7B8(&unk_2A181CC40, 255, MEMORY[0x29EDC4398]);
    v0 = sub_29E2C2CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CC38);
    }
  }
}

uint64_t sub_29E100E6C(uint64_t a1)
{
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E100EF8(uint64_t a1, uint64_t a2)
{
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E100F8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_29E100FF4()
{
  v1 = v0;
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v11[-v3 - 8];
  type metadata accessor for FavoriteStateDataSource(0);
  sub_29E2BE784();
  if (v12)
  {
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    v5 = sub_29E2BE794();
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v4, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_29DF94318(v11);
    v7 = sub_29E2BE794();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14MoreDataSource_favoritableFeedItem;
  swift_beginAccess();
  sub_29E1011B8(v4, v1 + v8);
  swift_endAccess();
  sub_29E0FCC10();
  return sub_29E100E6C(v4);
}

uint64_t sub_29E1011B8(uint64_t a1, uint64_t a2)
{
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E10124C(uint64_t a1, uint64_t a2)
{
  sub_29E100D70(0, &unk_2A181CBB0, MEMORY[0x29EDC2070], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ObserverSet.__allocating_init(name:)()
{
  v0 = swift_allocObject();
  ObserverSet.init(name:)();
  return v0;
}

uint64_t ObserverSet.init(name:)()
{
  v1 = HKLogMenstrualCyclesCategory();
  v2 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v3 = sub_29E2C33A4();

  v4 = [v2 initWithName:v3 loggingCategory:v1];

  *(v0 + 16) = v4;
  return v0;
}

void ObserverSet.notifyObservers(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_29E1016EC;
  v9[5] = v7;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29DF4FA14;
  v9[3] = &unk_2A24BB398;
  v8 = _Block_copy(v9);

  [v6 notifyObservers_];
  _Block_release(v8);
}

uint64_t sub_29E1014E4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_29E2C4304();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v18 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a1;
  swift_unknownObjectRetain();
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a4);
    (*(v11 + 32))(v14, v10, a4);
    a2(v14);
    return (*(v11 + 8))(v14, a4);
  }

  else
  {
    v16(v10, 1, 1, a4);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_29E1016F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void ObserverSet.registerObserver(_:queue:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    sub_29DEB1E60();
    v7 = sub_29E2C3CF4();
  }

  v5 = *(v2 + 16);
  v6 = a2;
  [v5 registerObserver:a1 queue:v7];
}

uint64_t ObserverSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_29E10186C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v19 - v10;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin48PregnancyOnboardingCustomizeHealthViewController_onboardingStep] = 4;
  v25 = v2;
  v26 = a1;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin48PregnancyOnboardingCustomizeHealthViewController_coordinator] = a1;

  sub_29E2C3314();
  v21 = *(v6 + 16);
  v21(v9, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  v23 = "EDING_ALERT_MESSAGE";
  sub_29E2C3414();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v22 = sub_29E2C33A4();

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v14 = result;
    [result isiPad];

    sub_29E2C3314();
    v21(v9, v11, v5);
    v15 = v20;
    sub_29E2BCC74();
    sub_29E2C3414();
    v12(v11, v5);
    v16 = sub_29E2C33A4();

    v27.receiver = v25;
    v27.super_class = ObjectType;
    v17 = v22;
    v18 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_icon_contentLayout_, v22, v16, 0, 1);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E101C20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v21[-v10];
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewDidLoad, v9);
  [v1 setModalInPresentation_];
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
    [v15 setIsAccessibilityElement_];
    sub_29E102020(v15);

    sub_29E2C3D94();
    sub_29E2C3314();
    (*(v5 + 16))(v7, v11, v4);
    v16 = v14;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v5 + 8))(v11, v4);
    v17 = sub_29E2C33A4();

    v18 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin48PregnancyOnboardingCustomizeHealthViewController_onboardingStep);
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    *&v21[8] = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v19 = PregnancyOnboardingStep.description.getter(v18);
    MEMORY[0x29ED7FCC0](v19);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
    v20 = sub_29E2C33A4();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E102020(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v2 setContentMode_];
  v3 = [v1 contentView];
  [v3 addSubview_];

  v4 = [v1 contentView];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CDBD0;
  v8 = [v2 topAnchor];
  v9 = [v1 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v7 + 40) = v15;
  v16 = [v2 centerXAnchor];

  v17 = [v1 contentView];
  v18 = [v17 centerXAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v7 + 48) = v19;
  sub_29DEB8834();
  v20 = sub_29E2C3604();

  [v6 activateConstraints_];
}

uint64_t type metadata accessor for CycleDay()
{
  result = qword_2A1A5ED38;
  if (!qword_2A1A5ED38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E102558()
{
  result = sub_29E2C31A4();
  if (v1 <= 0x3F)
  {
    result = sub_29DE9408C(319, &qword_2A1A5E1D8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E1025EC()
{
  sub_29E2C3164();
  v1 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v1);

  MEMORY[0x29ED7FCC0](124, 0xE100000000000000);
  v2 = [*(v0 + *(type metadata accessor for CycleDay() + 20)) accessibilityIdentifier];
  v3 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v5 = v4;

  MEMORY[0x29ED7FCC0](v3, v5);

  return 0x7865646E49796144;
}

uint64_t sub_29E1026D0()
{
  sub_29E2C31A4();
  sub_29E102760();
  if ((sub_29E2C3304() & 1) == 0)
  {
    return 0;
  }

  sub_29DE9408C(0, &qword_2A1A619F0);
  return sub_29E2C40D4() & 1;
}

unint64_t sub_29E102760()
{
  result = qword_2A18199C0;
  if (!qword_2A18199C0)
  {
    sub_29E2C31A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18199C0);
  }

  return result;
}

uint64_t type metadata accessor for EndDatePickerRow()
{
  result = qword_2A181CD38;
  if (!qword_2A181CD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E10282C()
{
  sub_29DEA8E38(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29E2BEFA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E102904@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndDatePickerRow();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v56 = v5;
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v51 = v6;
  v58 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v44 - v7;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v60 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C3384();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v44 - v16;
  sub_29E2C3314();
  v59 = "EDING_ALERT_MESSAGE";
  v48 = *(v12 + 16);
  v48(v14, v17, v11);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67F80;
  v45 = qword_2A1A67F80;
  sub_29E2BCC74();
  v47 = v18;
  v19 = sub_29E2C3414();
  v52 = v20;
  v53 = v19;
  v46 = *(v12 + 8);
  v46(v17, v11);
  v21 = v51;
  sub_29E2C2A34();
  swift_getKeyPath();
  v44 = v11;
  v22 = v1;
  sub_29E2C2A54();

  (*(v58 + 8))(v8, v21);
  v23 = 0;
  v24 = 0;
  v50 = v62;
  v51 = v61;
  v49 = v63;
  v25 = v54;
  v26 = *(v54 + 24);
  v58 = v22;
  if ((*(v22 + v26) & 1) == 0)
  {
    sub_29E2C3314();
    v27 = v44;
    v48(v14, v17, v44);
    v28 = v45;
    sub_29E2BCC74();
    v23 = sub_29E2C3414();
    v24 = v29;
    v46(v17, v27);
  }

  v30 = *(v25 + 20);
  sub_29DEA8ABC();
  v32 = v31;
  v33 = *(v31 + 44);
  v34 = sub_29E2BEFA4();
  v35 = v58;
  (*(*(v34 - 8) + 16))(a1 + v33, v58 + v30, v34);
  v36 = v57;
  sub_29E103588(v35, v57, type metadata accessor for EndDatePickerRow);
  v37 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v38 = swift_allocObject();
  result = sub_29E1034B4(v36, v38 + v37);
  v40 = v52;
  *a1 = v53;
  *(a1 + 8) = v40;
  v41 = v50;
  *(a1 + 16) = v51;
  *(a1 + 24) = v41;
  *(a1 + 32) = v49;
  *(a1 + 40) = v23;
  *(a1 + 48) = v24;
  v42 = (a1 + *(v32 + 48));
  *v42 = 0xD000000000000016;
  v42[1] = 0x800000029E301220;
  v43 = (a1 + *(v32 + 52));
  *v43 = sub_29E103518;
  v43[1] = v38;
  return result;
}

__n128 sub_29E102E7C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v45 = a2;
  v2 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8D5C();
  v37 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v39 = &v37 - v7;
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v37 - v11;
  v13 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v14 = sub_29E2C3384();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v37 - v19;
  sub_29DEA8B80();
  v41 = v21;
  v40 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v38 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  (*(v15 + 16))(v17, v20, v14);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A67F80;
  sub_29E2BCC74();
  v24 = sub_29E2C3414();
  v26 = v25;
  (*(v15 + 8))(v20, v14);
  *&v46 = v24;
  *(&v46 + 1) = v26;
  v27 = v42;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v10 + 8))(v12, v9);
  if (*(v27 + *(type metadata accessor for EndDatePickerRow() + 24)) == 1)
  {
    v28 = v43;
    if (qword_2A1816FD0 != -1)
    {
      swift_once();
    }

    v29 = sub_29DEA8E9C(v37, qword_2A1840FB0);
    sub_29E103588(v29, v28, sub_29DEA8D5C);
  }

  else
  {
    sub_29E2C2A24();
    sub_29E04284C(v43);
  }

  sub_29E2C1C94();
  sub_29DE9DE68();
  v30 = v38;
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v31 = v45;
  (*(v40 + 32))(v45, v30, v41);
  sub_29DEA8B20();
  v33 = v31 + *(v32 + 36);
  v34 = v51;
  *(v33 + 64) = v50;
  *(v33 + 80) = v34;
  *(v33 + 96) = v52;
  v35 = v47;
  *v33 = v46;
  *(v33 + 16) = v35;
  result = v49;
  *(v33 + 32) = v48;
  *(v33 + 48) = result;
  return result;
}

uint64_t sub_29E1034B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndDatePickerRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_29E103518@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EndDatePickerRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_29E102E7C(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_29E103588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E1035F0()
{
  v0 = 0x646F69726550;
  v1 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v3 = v2;
  if (v1 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v3 == v4)
  {
    goto LABEL_45;
  }

  v6 = sub_29E2C4914();

  if (v6)
  {
    return v0;
  }

  v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = sub_29E2C4914();

  if (v12)
  {
    return sub_29E1043D4();
  }

  v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v15 = v14;
  if (v13 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v15 == v16)
  {
    goto LABEL_15;
  }

  v18 = sub_29E2C4914();

  if (v18)
  {
    return sub_29E1043D4();
  }

  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v21 = v20;
  if (v19 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v21 == v22)
  {
    goto LABEL_15;
  }

  v23 = sub_29E2C4914();

  if (v23)
  {
    return sub_29E1043D4();
  }

  v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v26 = v25;
  if (v24 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v26 == v27)
  {
    goto LABEL_15;
  }

  v28 = sub_29E2C4914();

  if (v28)
  {
    return sub_29E1043D4();
  }

  v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v31 = v30;
  if (v29 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v31 == v32)
  {
    goto LABEL_15;
  }

  v33 = sub_29E2C4914();

  if (v33)
  {
    return sub_29E1043D4();
  }

  v34 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v36 = v35;
  if (v34 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v36 == v37)
  {
    goto LABEL_15;
  }

  v38 = sub_29E2C4914();

  if (v38)
  {
    return sub_29E1043D4();
  }

  v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v41 = v40;
  if (v39 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v41 == v42)
  {
    goto LABEL_15;
  }

  v43 = sub_29E2C4914();

  if (v43)
  {
    return sub_29E1043D4();
  }

  v44 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v46 = v45;
  if (v44 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v46 == v47)
  {
    goto LABEL_15;
  }

  v48 = sub_29E2C4914();

  if (v48)
  {
    return sub_29E1043D4();
  }

  v49 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v51 = v50;
  if (v49 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v51 == v52)
  {
    goto LABEL_15;
  }

  v53 = sub_29E2C4914();

  if (v53)
  {
    return sub_29E1043D4();
  }

  v54 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v56 = v55;
  if (v54 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v56 == v57)
  {
LABEL_15:

    return sub_29E1043D4();
  }

  v58 = sub_29E2C4914();

  if (v58)
  {
    return sub_29E1043D4();
  }

  v0 = 0x73726F74636146;
  v59 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v61 = v60;
  if (v59 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v61 == v62)
  {
LABEL_45:

    return v0;
  }

  v63 = sub_29E2C4914();

  if (v63)
  {
    return v0;
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

unint64_t sub_29E103B94(char a1)
{
  result = 0x696472616F626E4FLL;
  switch(a1)
  {
    case 1:
    case 43:
    case 45:
    case 71:
    case 74:
      return 0xD000000000000012;
    case 2:
      return result;
    case 3:
    case 34:
    case 37:
    case 84:
      return 0xD000000000000014;
    case 4:
    case 62:
    case 70:
      return 0xD000000000000018;
    case 5:
    case 16:
    case 54:
      return 0xD000000000000016;
    case 6:
      return 0;
    case 7:
      return 0x61646E656C61432ELL;
    case 9:
      return 0x614474726174532ELL;
    case 10:
      return 0xD000000000000023;
    case 11:
    case 38:
    case 49:
    case 51:
    case 63:
    case 66:
    case 69:
      return 0xD000000000000013;
    case 12:
      return 2003134806;
    case 13:
      return 0x6F69726550646441;
    case 14:
      return 0x74756F6241;
    case 15:
      return 0x736E6F6974704FLL;
    case 17:
      return 0x637564456D6F6F52;
    case 18:
    case 19:
    case 20:
      return 0x656E696C656D6954;
    case 21:
      return 0xD00000000000001CLL;
    case 22:
      return 0xD00000000000002BLL;
    case 23:
    case 85:
      return 0xD000000000000026;
    case 24:
    case 32:
    case 82:
      return 0xD000000000000022;
    case 25:
      return 0xD00000000000002CLL;
    case 26:
    case 60:
      return 0xD00000000000002ALL;
    case 27:
      return 0x676F4C656C637943;
    case 28:
      return 0xD000000000000010;
    case 29:
      v3 = 9;
      goto LABEL_49;
    case 30:
    case 35:
    case 39:
    case 87:
      v3 = 11;
      goto LABEL_49;
    case 31:
      return 0xD00000000000001ELL;
    case 33:
    case 40:
    case 41:
      return 0xD000000000000020;
    case 36:
      return 0xD000000000000010;
    case 42:
    case 72:
      return 0xD000000000000017;
    case 44:
    case 61:
    case 65:
    case 73:
      v3 = 10;
      goto LABEL_49;
    case 46:
      return 0x6F69746163756445;
    case 47:
      return 0xD000000000000010;
    case 48:
      return 0xD000000000000010;
    case 50:
      return 0x6E45646F69726550;
    case 52:
      return 0x5673726F74636146;
    case 55:
      return 0xD000000000000010;
    case 56:
    case 59:
      return 0x6F7463614677654ELL;
    case 68:
      return 0xD000000000000010;
    case 75:
      return 0x2E7972616D6D7553;
    case 76:
      return 0x567972616D6D7553;
    case 78:
    case 80:
    case 86:
      v3 = 5;
      goto LABEL_49;
    case 79:
      return 0xD000000000000024;
    case 81:
      v3 = 13;
LABEL_49:
      result = v3 | 0xD000000000000010;
      break;
    case 83:
      result = 0xD000000000000025;
      break;
    case 88:
      result = 0xD000000000000010;
      break;
    case 89:
      result = 0x69646E4965746144;
      break;
    case 90:
      result = 0xD000000000000010;
      break;
    case 91:
      result = 0x646E6567654CLL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_29E10433C()
{
  sub_29E2C4584();
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;

  result = MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E3018C0);
  qword_2A1A67E58 = v0;
  unk_2A1A67E60 = v2;
  return result;
}

unint64_t sub_29E1043D4()
{
  v0 = 0x646F69726550;
  v1 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v3 = v2;
  if (v1 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v3 == v4)
  {
    goto LABEL_15;
  }

  v6 = sub_29E2C4914();

  if (v6)
  {
    return v0;
  }

  v0 = 0x676E696465656C42;
  v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v9 == v10)
  {
LABEL_15:

    return v0;
  }

  v12 = sub_29E2C4914();

  if ((v12 & 1) == 0)
  {
    v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v15 = v14;
    if (v13 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v15 == v16)
    {
      goto LABEL_15;
    }

    v18 = sub_29E2C4914();

    if (v18)
    {
      return v0;
    }

    v0 = 0x736D6F74706D7953;
    v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v21 = v20;
    if (v19 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v21 == v22)
    {
      goto LABEL_15;
    }

    v23 = sub_29E2C4914();

    if (v23)
    {
      return v0;
    }

    v0 = 0x676E6974746F7053;
    v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v26 = v25;
    if (v24 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v26 == v27)
    {
      goto LABEL_15;
    }

    v28 = sub_29E2C4914();

    if (v28)
    {
      return v0;
    }

    v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v31 = v30;
    if (v29 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v31 == v32)
    {

      return 0xD000000000000015;
    }

    v33 = sub_29E2C4914();

    if (v33)
    {
      return 0xD000000000000015;
    }

    v34 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v36 = v35;
    if (v34 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v36 == v37)
    {

      return 0xD000000000000015;
    }

    v38 = sub_29E2C4914();

    if (v38)
    {
      return 0xD000000000000015;
    }

    v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v41 = v40;
    if (v39 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v41 == v42)
    {

      return 0xD000000000000018;
    }

    v43 = sub_29E2C4914();

    if (v43)
    {
      return 0xD000000000000018;
    }

    v0 = 0x41206C6175786553;
    v44 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v46 = v45;
    if (v44 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v46 == v47)
    {
      goto LABEL_15;
    }

    v48 = sub_29E2C4914();

    if (v48)
    {
      return v0;
    }

    v49 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v51 = v50;
    if (v49 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v51 == v52)
    {
      goto LABEL_44;
    }

    v53 = sub_29E2C4914();

    if (v53)
    {
      return 0xD000000000000016;
    }

    v54 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v56 = v55;
    if (v54 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v56 == v57)
    {
LABEL_44:

      return 0xD000000000000016;
    }

    v58 = sub_29E2C4914();

    if (v58)
    {
      return 0xD000000000000016;
    }

    v0 = 0x73726F74636146;
    v59 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v61 = v60;
    if (v59 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v61 == v62)
    {
      goto LABEL_15;
    }

    v63 = sub_29E2C4914();

    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  return v0;
}

uint64_t sub_29E104A80(char a1, unsigned __int8 a2)
{
  if (a1 == 57)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v18 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E3014E0);

    v3 = 0x800000029E3019A0;
    v4 = 0xD000000000000013;
    if (a2 != 2)
    {
      v4 = 0x6854666F656E6F4ELL;
      v3 = 0xEB00000000657365;
    }

    v5 = 0xE800000000000000;
    v6 = 0x746E616E67657250;
    if (a2)
    {
      v6 = 0x6E6974617463614CLL;
      v5 = 0xE900000000000067;
    }

    if (a2 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (a2 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;
  }

  else
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v18 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E301980);
    v11 = 0x800000029E3019A0;
    v12 = 0xD000000000000013;
    if (a2 != 2)
    {
      v12 = 0x6854666F656E6F4ELL;
      v11 = 0xEB00000000657365;
    }

    v13 = 0xE800000000000000;
    v14 = 0x746E616E67657250;
    if (a2)
    {
      v14 = 0x6E6974617463614CLL;
      v13 = 0xE900000000000067;
    }

    if (a2 <= 1u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (a2 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    MEMORY[0x29ED7FCC0](v15, v16);

    v7 = sub_29E103B94(a1);
  }

  MEMORY[0x29ED7FCC0](v7, v9);

  return v18;
}

uint64_t sub_29E104CCC(char a1, unsigned __int8 a2, char a3)
{
  if (qword_2A1A60ED8 != -1)
  {
    v17 = a1;
    swift_once();
    a1 = v17;
  }

  v18 = xmmword_2A1A67E58;
  v5 = sub_29E103B94(a1);
  v7 = v6;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v5, v7);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  if (a2 <= 1u)
  {
    v12 = 0xD000000000000011;
    v13 = 0x800000029E301A00;
    if (a3)
    {
      v12 = 0xD000000000000016;
    }

    else
    {
      v13 = 0x800000029E301A20;
    }

    v14 = 0x800000029E301A40;
    v15 = 0xD000000000000013;
    if (a3)
    {
      v15 = 0xD000000000000016;
    }

    else
    {
      v14 = 0x800000029E301A60;
    }

    if (a2)
    {
      v10 = v15;
    }

    else
    {
      v10 = v12;
    }

    if (a2)
    {
      v11 = v14;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v8 = 0xD000000000000011;
    v9 = 0x800000029E301A80;
    if (a2 != 3)
    {
      v8 = 0xD000000000000012;
      v9 = 0x800000029E301AA0;
    }

    if (a2 == 2)
    {
      v10 = 0x6974726546676F4CLL;
    }

    else
    {
      v10 = v8;
    }

    if (a2 == 2)
    {
      v11 = 0xEC0000007974696CLL;
    }

    else
    {
      v11 = v9;
    }
  }

  MEMORY[0x29ED7FCC0](v10, v11);

  return v18;
}

uint64_t sub_29E104E9C(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (qword_2A1A60ED8 != -1)
  {
    v23 = a1;
    swift_once();
    a1 = v23;
  }

  v24 = xmmword_2A1A67E58;
  v6 = sub_29E103B94(a1);
  v8 = v7;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v6, v8);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v9 = 0x616D7269666E6F43;
  v10 = 0x800000029E2F8500;
  v11 = 0xD000000000000014;
  if (a2 == 1)
  {
    v11 = 0x654D776569766552;
    v10 = 0xEF44496C61636964;
  }

  if (a2 == 2)
  {
    v10 = 0xEC0000006E6F6974;
  }

  else
  {
    v9 = v11;
  }

  if (a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x6765725074696445;
  }

  if (a2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xED000079636E616ELL;
  }

  MEMORY[0x29ED7FCC0](v12, v13);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  if (a4 <= 2u)
  {
    v20 = 0xE500000000000000;
    v21 = 0x656C746954;
    if (a4 != 1)
    {
      v21 = 0x656C746974627553;
      v20 = 0xE800000000000000;
    }

    if (a4)
    {
      v18 = v21;
    }

    else
    {
      v18 = 1852793673;
    }

    if (a4)
    {
      v19 = v20;
    }

    else
    {
      v19 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0xEC0000006E6F7474;
    v15 = 0x75426C65636E6143;
    if (a4 != 5)
    {
      v15 = 0x77656976627553;
      v14 = 0xE700000000000000;
    }

    v16 = 0xED00006E6F747475;
    v17 = 0x427972616D697250;
    if (a4 != 3)
    {
      v17 = 0x7261646E6F636553;
      v16 = 0xEF6E6F7474754279;
    }

    if (a4 <= 4u)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    if (a4 <= 4u)
    {
      v19 = v16;
    }

    else
    {
      v19 = v14;
    }
  }

  MEMORY[0x29ED7FCC0](v18, v19);

  return v24;
}

uint64_t sub_29E105120(char a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A60ED8 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  v21 = xmmword_2A1A67E58;
  v7 = sub_29E103B94(a1);
  v9 = v8;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v7, v9);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  v10 = 0xEC0000006E6F6974;
  v11 = 0x61757274736E654DLL;
  v12 = 0x746144726568744FLL;
  v13 = 0xE700000000000000;
  v14 = 0x73726F74636146;
  if (a2 != 4)
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  if (a2 == 3)
  {
    v13 = 0xE900000000000061;
  }

  else
  {
    v12 = v14;
  }

  v15 = 0xE900000000000079;
  v16 = 0x636E616E67657250;
  if (a2 != 1)
  {
    v16 = 0x6572502074736F50;
    v15 = 0xEE0079636E616E67;
  }

  if (a2)
  {
    v11 = v16;
    v10 = v15;
  }

  if (a2 <= 2u)
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  if (a2 <= 2u)
  {
    v18 = v10;
  }

  else
  {
    v18 = v13;
  }

  MEMORY[0x29ED7FCC0](v17, v18);

  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](a3, a4);
  return v21;
}

id sub_29E1052E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  v5 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_highlightedText];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_tapCompletion];
  *v6 = nullsub_1;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_29E2C33A4();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v2;
  v11.super_class = type metadata accessor for TappableTableViewFooter();
  v8 = objc_msgSendSuper2(&v11, sel_initWithReuseIdentifier_, v7);

  v9 = v8;
  sub_29E1056C0();

  return v9;
}

void sub_29E1054C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView);
  v12 = sub_29E2C33A4();
  [v11 setText_];

  v13 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_highlightedText);
  *v13 = a3;
  v13[1] = a4;
  sub_29E2BF404();

  v14 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_tapCompletion);
  *v14 = a5;
  v14[1] = a6;

  sub_29E105B70();
}

uint64_t sub_29E1056C0()
{
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView] setEditable_];
  [*&v0[v3] setSelectable_];
  [*&v0[v3] setDelegate_];
  v4 = *&v0[v3];
  v5 = [v1 clearColor];
  [v4 setBackgroundColor_];

  [*&v0[v3] setScrollEnabled_];
  [*&v0[v3] setTextContainerInset_];
  [*&v0[v3] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CE070;
  v8 = [*&v0[v3] leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:12.0];
  *(v7 + 32) = v11;
  v12 = [*&v0[v3] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 topAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v7 + 40) = v16;
  v17 = [v0 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 bottomAnchor];
  v20 = [*&v0[v3] bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v7 + 48) = v21;
  v22 = [v0 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [*&v0[v3] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:12.0];

  *(v7 + 56) = v25;
  v26 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v27 = sub_29E2C3604();

  [v26 activateConstraints_];

  sub_29DEBEA38(0, &qword_2A1817FF0, sub_29DEA6B18);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29E2CAB20;
  v29 = sub_29E2C0B54();
  v30 = MEMORY[0x29EDC7870];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

void sub_29E105B70()
{
  v1 = v0;
  v2 = sub_29DE9408C(0, &unk_2A1A61A00);
  v36 = sub_29E2C3FD4();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView;
  v4 = [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView) text];
  if (v4)
  {
    v34 = v3;
    v5 = v4;
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

    sub_29DEBEA38(0, &qword_2A1817FD0, sub_29DEA0430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    v35 = v1;
    v7 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    *(inited + 40) = v36;
    v8 = *MEMORY[0x29EDC7640];
    *(inited + 64) = v2;
    *(inited + 72) = v8;
    v9 = objc_opt_self();
    v10 = v7;
    v37 = v36;
    v33 = v8;
    v11 = [v9 secondaryLabelColor];
    v12 = sub_29DE9408C(0, &qword_2A1817FE0);
    *(inited + 104) = v12;
    *(inited + 80) = v11;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DEA0430();
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v14 = sub_29E2C33A4();
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v15 = sub_29E2C31F4();

    v16 = [v13 initWithString:v14 attributes:v15];

    v17 = v35;
    if (*(v35 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_highlightedText + 8))
    {
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_29E2CD7A0;
      *(v18 + 32) = v33;
      v19 = v33;
      sub_29E2BF404();
      *(v18 + 40) = [v9 hk_appKeyColor];
      v20 = *MEMORY[0x29EDC7648];
      v21 = MEMORY[0x29EDC99B0];
      *(v18 + 64) = v12;
      *(v18 + 72) = v20;
      *(v18 + 104) = v21;
      *(v18 + 80) = 0x2F2F3A706174;
      *(v18 + 88) = 0xE600000000000000;
      v22 = v20;
      sub_29E185054(v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      v23 = sub_29E2C31F4();

      v24 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v25 = sub_29E2C33A4();

      v26 = [v24 initWithString_];

      v27 = sub_29E2C33A4();

      v28 = [v26 rangeOfString_];
      v30 = v29;

      v17 = v35;
      [v16 addAttributes:v23 range:{v28, v30}];
    }

    else
    {
    }

    v31 = *(v17 + v34);
    v32 = v16;
    [v31 setAttributedText_];
  }

  else
  {
  }
}

id sub_29E105FDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TappableTableViewFooter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E1060BC(uint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_29E2BC8E4();
  if (v8)
  {
    if (v7 == 7364980 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v9 = sub_29E2C4914();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = [*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_footerTextView) text];
    if (v10)
    {
      v11 = v10;
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

      if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_highlightedText + 8))
      {
        v12 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        sub_29E2BF404();
        v13 = sub_29E2C33A4();

        v14 = [v12 initWithString_];

        v15 = sub_29E2C33A4();

        v16 = [v14 rangeOfString_];
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {
          v20 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23TappableTableViewFooter_tapCompletion);

          v20(v21);
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_29E106284@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C1E54();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v24 - v9;
  sub_29E107388(0, &qword_2A181CE70, MEMORY[0x29EDBC038]);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v24 - v16;
  sub_29E2C1E44();
  KeyPath = swift_getKeyPath();
  v19 = &v17[*(v12 + 44)];
  *v19 = KeyPath;
  v19[1] = a1;

  sub_29E2C1E64();
  sub_29E10740C(v17, v14);
  v20 = *(v5 + 16);
  v20(v7, v10, v4);
  sub_29E10740C(v14, a2);
  sub_29E1072FC();
  v20((a2 + *(v21 + 48)), v7, v4);
  v22 = *(v5 + 8);
  v22(v10, v4);
  sub_29E10748C(v17);
  v22(v7, v4);
  return sub_29E10748C(v14);
}

uint64_t sub_29E1064B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_29E2C1AA4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E107240(0, &qword_2A181CE58, sub_29E1072A4);
  return sub_29E106284(v3, a1 + *(v4 + 44));
}

uint64_t sub_29E10652C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v11 = v4;
  v12 = v3;
  sub_29E2BF404();
  v6 = [v5 description];
  v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v9 = v8;

  MEMORY[0x29ED7FCC0](v7, v9);

  *a1 = v11;
  a1[1] = v12;
  return result;
}

void sub_29E1065F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E015174();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v10 = a1[2];
  v22[0] = *a1;
  v22[1] = v9;
  sub_29DE9DE68();
  sub_29E2BF404();
  v11 = v10;
  sub_29E2C27A4();
  v22[0] = sub_29E2C2654();
  sub_29E107080(&qword_2A181AAF8, sub_29E015174);
  sub_29E106C68();
  sub_29E2C2364();

  (*(v6 + 8))(v8, v5);
  v12 = [objc_opt_self() hk:14.0 compactRoundedFontOfSize:?];
  v13 = sub_29E2C2174();
  KeyPath = swift_getKeyPath();
  sub_29E106B18();
  v16 = (a2 + *(v15 + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  v17 = [objc_opt_self() secondaryLabelColor];
  v18 = sub_29E2C2654();
  v19 = swift_getKeyPath();
  sub_29E107388(0, &qword_2A181CDF8, sub_29E106B18);
  v21 = (a2 + *(v20 + 36));
  *v21 = v19;
  v21[1] = v18;
}

void sub_29E106874(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1AA4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E107240(0, &qword_2A181CDD8, sub_29E1069E0);
  v3 = a1 + *(v2 + 44);
  sub_29E106D28(0, &qword_2A181CDF0, &type metadata for LegendItem, MEMORY[0x29EDC9A40]);
  sub_29E107388(0, &qword_2A181CDF8, sub_29E106B18);
  sub_29E106D78();
  sub_29E106DF4();
  sub_29E10701C();
  sub_29E2BF404();
  sub_29E2C29B4();
  v4 = sub_29E2C1BD4();
  sub_29E1069E0();
  v6 = (v3 + *(v5 + 36));
  *v6 = v4;
  v6[1] = sub_29E10684C;
  v6[2] = 0;
}

void sub_29E1069E0()
{
  if (!qword_2A181CDE0)
  {
    sub_29E106A40();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CDE0);
    }
  }
}

void sub_29E106A40()
{
  if (!qword_2A181CDE8)
  {
    sub_29E106D28(255, &qword_2A181CDF0, &type metadata for LegendItem, MEMORY[0x29EDC9A40]);
    sub_29E107388(255, &qword_2A181CDF8, sub_29E106B18);
    sub_29E106D78();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CDE8);
    }
  }
}

void sub_29E106B18()
{
  if (!qword_2A181CE00)
  {
    sub_29E106B98();
    sub_29E106CBC(255, &qword_2A181C7B8, &qword_2A181C7C0, MEMORY[0x29EDBC9F0]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CE00);
    }
  }
}

void sub_29E106B98()
{
  if (!qword_2A181CE08)
  {
    sub_29E015174();
    sub_29E107080(&qword_2A181AAF8, sub_29E015174);
    sub_29E106C68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181CE08);
    }
  }
}

unint64_t sub_29E106C68()
{
  result = qword_2A181CE10;
  if (!qword_2A181CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE10);
  }

  return result;
}

void sub_29E106CBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E106D28(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29E2C1F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E106D28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E106D78()
{
  result = qword_2A181CE18;
  if (!qword_2A181CE18)
  {
    sub_29E106D28(255, &qword_2A181CDF0, &type metadata for LegendItem, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE18);
  }

  return result;
}

unint64_t sub_29E106DF4()
{
  result = qword_2A181CE20;
  if (!qword_2A181CE20)
  {
    sub_29E107388(255, &qword_2A181CDF8, sub_29E106B18);
    sub_29E106EB0();
    sub_29E106FCC(&qword_2A1818520, &qword_2A18184F0, &qword_2A18184F8, MEMORY[0x29EDBCA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE20);
  }

  return result;
}

unint64_t sub_29E106EB0()
{
  result = qword_2A181CE28;
  if (!qword_2A181CE28)
  {
    sub_29E106B18();
    sub_29E015174();
    sub_29E107080(&qword_2A181AAF8, sub_29E015174);
    sub_29E106C68();
    swift_getOpaqueTypeConformance2();
    sub_29E106FCC(&qword_2A181C7E0, &qword_2A181C7B8, &qword_2A181C7C0, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE28);
  }

  return result;
}

uint64_t sub_29E106FCC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E106CBC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E10701C()
{
  result = qword_2A181CE30;
  if (!qword_2A181CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE30);
  }

  return result;
}

uint64_t sub_29E107080(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E1070C8()
{
  if (!qword_2A181CE40)
  {
    sub_29E1069E0();
    sub_29E10712C();
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CE40);
    }
  }
}

unint64_t sub_29E10712C()
{
  result = qword_2A181CE48;
  if (!qword_2A181CE48)
  {
    sub_29E1069E0();
    sub_29E1071AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE48);
  }

  return result;
}

unint64_t sub_29E1071AC()
{
  result = qword_2A181CE50;
  if (!qword_2A181CE50)
  {
    sub_29E106A40();
    sub_29E106DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CE50);
  }

  return result;
}

void sub_29E107240(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E1072A4()
{
  if (!qword_2A181CE60)
  {
    sub_29E1072FC();
    v0 = sub_29E2C2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CE60);
    }
  }
}

void sub_29E1072FC()
{
  if (!qword_2A181CE68)
  {
    sub_29E107388(255, &qword_2A181CE70, MEMORY[0x29EDBC038]);
    sub_29E2C1E54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181CE68);
    }
  }
}

void sub_29E107388(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E106CBC(255, &qword_2A18184F0, &qword_2A18184F8, MEMORY[0x29EDBCA98]);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E10740C(uint64_t a1, uint64_t a2)
{
  sub_29E107388(0, &qword_2A181CE70, MEMORY[0x29EDBC038]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E10748C(uint64_t a1)
{
  sub_29E107388(0, &qword_2A181CE70, MEMORY[0x29EDBC038]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E107504()
{
  if (!qword_2A181CE80)
  {
    sub_29E1072A4();
    sub_29E107080(&qword_2A181CE88, sub_29E1072A4);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CE80);
    }
  }
}

uint64_t sub_29E107598(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  if ((a1 - 2) < 3 || a1 == 1)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v4 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E1077B4(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = sub_29E2BCBB4();
  v3 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCC84();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  if ((a2 - 2) < 3)
  {
    v33 = v7;
    v34 = v6;
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v32[1] = v17;
    v32[2] = v16;
    sub_29DEB19DC();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29E2CAB20;
    v19 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    sub_29E2BCC74();
    v20 = sub_29E2BCC44();
    (*(v11 + 8))(v13, v10);
    [v19 setLocale_];

    v21 = sub_29E2C33A4();
    [v19 setLocalizedDateFormatFromTemplate_];

    v22 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
    v23 = [v22 currentCalendar];

    sub_29E2BCDC4();
    sub_29E2C3194();
    v24 = sub_29E2BCB04();
    (*(v3 + 8))(v5, v36);
    v25 = [v19 stringFromDate_];

    v26 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v28 = v27;

    (*(v33 + 8))(v9, v34);
    *(v18 + 56) = MEMORY[0x29EDC99B0];
    *(v18 + 64) = sub_29DEB1A44();
    *(v18 + 32) = v26;
    *(v18 + 40) = v28;
    v29 = sub_29E2C33B4();

    return v29;
  }

  if (a2 == 1)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v30 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E107D68()
{
  v1 = v0;
  v2 = sub_29E2BC844();
  v13 = *(v2 - 8);
  v14 = v2;
  *&v3 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 64) objectEnumerator];
  sub_29E2C3934();

  sub_29E2BC834();
  if (v16)
  {
    type metadata accessor for InteractiveTimelineViewController();
    do
    {
      if (swift_dynamicCast())
      {
        v7 = v15;
        *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33InteractiveTimelineViewController_supplementaryDisplayTypes] = *(v1 + 56);
        sub_29E2BF404();

        v8 = sub_29E20BFA4();
        v9 = sub_29E2BF404();
        v10 = sub_29E14ED40(v9);

        *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_supplementaryDisplayTypes] = v10;

        sub_29DF82214();
      }

      sub_29E2BC834();
    }

    while (v16);
  }

  return (*(v13 + 8))(v5, v14);
}

uint64_t sub_29E107F38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E107FB4()
{
  v1 = *(*v0 + 24);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29E107FE8()
{
  v1 = *(*v0 + 40);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29E10801C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

unint64_t sub_29E108084()
{
  result = qword_2A1818DF8;
  if (!qword_2A1818DF8)
  {
    type metadata accessor for InteractiveTimelineItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818DF8);
  }

  return result;
}

void sub_29E108220()
{
  v1 = v0;
  sub_29E109438(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_29E2C0654();
  v6 = type metadata accessor for CycleHistorySingleCycleCell();
  v10.receiver = v1;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, sel__bridgedUpdateConfigurationUsingState_, v5);

  MEMORY[0x29ED802C0]();
  v7 = sub_29E2C06E4();
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    sub_29E1093AC(v4);
  }

  else
  {
    v8 = sub_29E2C0694();
    sub_29E1093AC(v4);
    if (v8)
    {
      v9 = *(*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_singleCycleView] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView);
      sub_29E1C8D84(v8);
    }
  }
}

void sub_29E108478()
{
  sub_29E109438(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v26 - v2;
  sub_29E2C06D4();
  v4 = sub_29E2C06E4();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  MEMORY[0x29ED802D0](v3);
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_singleCycleView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v7 = objc_opt_self();
  sub_29DE99B54();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CE070;
  v9 = [v5 leadingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [v5 trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [v5 topAnchor];
  v18 = [v0 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [v5 bottomAnchor];
  v22 = [v0 contentView];
  v23 = [v22 bottomAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v8 + 56) = v24;
  sub_29DEB8834();
  v25 = sub_29E2C3604();

  [v7 activateConstraints_];
}

void sub_29E108808()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_press;
  if (!*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_press])
  {
    v2 = objc_allocWithZone(MEMORY[0x29EDC7B58]);
    v3 = v0;
    v4 = [v2 initWithTarget:v3 action:sel_cycleViewPressed_];
    [v4 setMinimumPressDuration_];
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:v3 action:sel_cycleViewTapped_];

    v6 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_singleCycleView];
    v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView;
    v8 = [*(*(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleView_cycleView) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView) panGestureRecognizer];
    [v8 addTarget:v3 action:sel_cycleViewPanned_];

    [v4 setDelegate_];
    [*(v6 + v7) addGestureRecognizer_];
    [*(v6 + v7) addGestureRecognizer_];
    v9 = *&v0[v1];
    *&v0[v1] = v4;

    v10 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_tap];
    *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_tap] = v5;
  }
}

id sub_29E108A04(void *a1)
{
  result = [a1 state];
  if (result == 2)
  {
    v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_press;
    v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_press);
    if (v4)
    {
      [v4 setEnabled_];
      v5 = *(v1 + v3);
      if (v5)
      {
        [v5 setEnabled_];
      }
    }

    v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_tap;
    result = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_tap);
    if (result)
    {
      [result setEnabled_];
      result = *(v1 + v6);
      if (result)
      {

        return [result setEnabled_];
      }
    }
  }

  return result;
}

void sub_29E108B24(void *a1)
{
  v2 = v1;
  v4 = sub_29E2BCFB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v25 - v10;
  v12 = [v2 viewController];
  if (v12)
  {
    v26 = v12;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 tableView];
      if (!v15)
      {
        __break(1u);
        goto LABEL_20;
      }

      v16 = v15;
      v17 = [v15 indexPathForCell_];

      if (v17)
      {
        sub_29E2BCF44();

        (*(v5 + 32))(v11, v7, v4);
        v18 = [a1 state];
        if (v18 > 2)
        {
          if (v18 != 4)
          {
LABEL_12:
            (*(v5 + 8))(v11, v4);

            return;
          }

          v23 = [v14 tableView];
          if (v23)
          {
            v24 = v23;
            [v23 selectRowAtIndexPath:0 animated:0 scrollPosition:0];

            goto LABEL_17;
          }

LABEL_21:
          __break(1u);
          return;
        }

        if (v18 != 1)
        {
          goto LABEL_12;
        }

        v20 = [v14 tableView];
        if (v20)
        {
          v21 = v20;
          v22 = sub_29E2BCF24();
          [v21 selectRowAtIndexPath:v22 animated:0 scrollPosition:0];

LABEL_17:
          (*(v5 + 8))(v11, v4);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v19 = v26;
  }
}

id sub_29E108E84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleHistorySingleCycleCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E108F38(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_singleCycleView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for CycleHistorySingleCycleView()) init];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_press] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleHistorySingleCycleCell_tap] = 0;
  if (a2)
  {
    v5 = sub_29E2C33A4();
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for CycleHistorySingleCycleCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, 0, v5);

  v7 = v6;
  sub_29E108478();
  sub_29E109438(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CAB20;
  v9 = sub_29E2C08C4();
  v10 = MEMORY[0x29EDC7810];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  MEMORY[0x29ED807F0](v8, sel_respondToHorizontalSizeChanges);

  swift_unknownObjectRelease();

  return v7;
}

void sub_29E109094()
{
  v1 = v0;
  v2 = sub_29E2BCFB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v25 - v8;
  v10 = [v1 viewController];
  if (!v10)
  {
    return;
  }

  v26 = v10;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v11 tableView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [v13 indexPathForCell_];

  if (!v15)
  {
LABEL_11:
    v24 = v26;

    return;
  }

  sub_29E2BCF44();

  (*(v3 + 32))(v9, v5, v2);
  v16 = [v12 tableView];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v18 = sub_29E2BCF24();
  [v17 selectRowAtIndexPath:v18 animated:0 scrollPosition:0];

  v19 = [v12 tableView];
  if (!v19)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 delegate];

  if (!v21)
  {

    goto LABEL_15;
  }

  if ([v21 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v22 = [v12 tableView];
    swift_unknownObjectRelease();
    if (v22)
    {
      v23 = sub_29E2BCF24();
      [v21 tableView:v22 didSelectRowAtIndexPath:v23];
      swift_unknownObjectRelease();

LABEL_15:
      (*(v3 + 8))(v9, v2);
      return;
    }

    goto LABEL_21;
  }

  (*(v3 + 8))(v9, v2);
  swift_unknownObjectRelease();
}

uint64_t sub_29E1093AC(uint64_t a1)
{
  sub_29E109438(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E109438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t (*sub_29E10949C(uint64_t *a1))()
{
  v2 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_29E2BC5F4();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_29E10E298(v4, v9);
  return sub_29E1095B4;
}

void (*sub_29E1095B8(uint64_t *a1))(void *)
{
  v2 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_29E2BC5F4();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_29E10E3D8(v4, v9);
  return sub_29E10F1F0;
}

void sub_29E1096D0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

id sub_29E109748()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController____lazy_storage___yearDateFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController____lazy_storage___yearDateFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController____lazy_storage___yearDateFormatter);
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

uint64_t sub_29E1098BC()
{
  v1 = v0;
  v89 = sub_29E2BCEA4();
  v92 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89);
  v88 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BC5F4();
  v70 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v90 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v66 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v66 - v9;
  v87 = sub_29E2C31A4();
  v11 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v86 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E2BCBB4();
  v13 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x29EDCA190];
  v17 = sub_29E186648(MEMORY[0x29EDCA190]);
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_sectionedCycles;
  swift_beginAccess();
  v93 = v18;
  *(v1 + v18) = v17;

  v19 = sub_29E186868(v16);
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_viewModelProviders;
  swift_beginAccess();
  *(v1 + v20) = v19;

  v21 = v16;
  v91 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years) = v16;

  v22 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis);
  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = [v22 cycles];
  if (v23)
  {
    v24 = v23;
    sub_29DE9408C(0, &qword_2A1A5E0A0);
    v21 = sub_29E2C3614();

LABEL_4:
    v25 = v21;
    goto LABEL_6;
  }

  v25 = MEMORY[0x29EDCA190];
LABEL_6:
  v67 = v7;
  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }
  }

  v65 = v25;
  result = sub_29E2C4484();
  v25 = v65;
  if (!result)
  {
  }

LABEL_8:
  if (result >= 1)
  {
    v27 = 0;
    v80 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_gregorianCalendar;
    v79 = v25 & 0xC000000000000001;
    v78 = (v11 + 8);
    v77 = *MEMORY[0x29EDB9CC0];
    v76 = *MEMORY[0x29EDB9CD0];
    v75 = (v92 + 8);
    v74 = (v70 + 16);
    v73 = (v70 + 8);
    v72 = (v13 + 8);
    v69 = v70 + 32;
    v71 = xmmword_29E2CD7A0;
    v68 = xmmword_29E2CE220;
    v84 = v3;
    v83 = v10;
    v82 = v25;
    v81 = result;
    do
    {
      if (v79)
      {
        v29 = MEMORY[0x29ED80D70](v27);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v92 = v29;
      v30 = [v29 menstruationSegment];
      [v30 days];

      v31 = v86;
      sub_29E2C30D4();
      sub_29E2C3194();
      (*v78)(v31, v87);
      v32 = v88;
      sub_29E2BCE44();
      sub_29E10F04C(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
      v33 = sub_29E2BCE84();
      v34 = *(v33 - 8);
      v35 = v1;
      v36 = v15;
      v37 = *(v34 + 72);
      v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v71;
      v40 = v39 + v38;
      v41 = *(v34 + 104);
      v41(v40, v77, v33);
      v42 = v40 + v37;
      v15 = v36;
      v1 = v35;
      v41(v42, v76, v33);
      sub_29DE924A4(v39);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v43 = v83;
      sub_29E2BCD14();

      (*v75)(v32, v89);
      if (*(*(v35 + v93) + 16) && (sub_29E2BF404(), sub_29E18464C(v43), v45 = v44, , (v45 & 1) != 0))
      {
        v46 = v67;
        v47 = v84;
        (*v74)(v67, v43, v84);
        swift_beginAccess();
        v49 = sub_29E1095B8(v94);
        if (*v48)
        {
          v50 = v48;
          v51 = v92;
          MEMORY[0x29ED7FDC0]();
          if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29E2C3644();
          }

          sub_29E2C3674();
          (v49)(v94, 0);
          swift_endAccess();

          v52 = *v73;
          (*v73)(v67, v47);
          v52(v43, v47);
        }

        else
        {
          (v49)(v94, 0);
          swift_endAccess();

          v28 = *v73;
          (*v73)(v46, v47);
          v28(v43, v47);
        }
      }

      else
      {
        sub_29DE99B54();
        v53 = swift_allocObject();
        *(v53 + 16) = v68;
        v54 = v92;
        v55 = v93;
        *(v53 + 32) = v92;
        swift_beginAccess();
        v56 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v1 + v55);
        *(v1 + v55) = 0x8000000000000000;
        sub_29E009220(v53, v43, isUniquelyReferenced_nonNull_native);
        *(v1 + v55) = v95;
        swift_endAccess();
        v58 = v84;
        (*v74)(v90, v43, v84);
        v59 = v91;
        v60 = *(v1 + v91);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v59) = v60;
        if ((v61 & 1) == 0)
        {
          v60 = sub_29E144508(0, v60[2] + 1, 1, v60);
          *(v1 + v91) = v60;
        }

        v63 = v60[2];
        v62 = v60[3];
        if (v63 >= v62 >> 1)
        {
          v60 = sub_29E144508(v62 > 1, v63 + 1, 1, v60);
        }

        v60[2] = v63 + 1;
        v64 = v70;
        (*(v70 + 32))(v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v90, v58);
        *(v1 + v91) = v60;

        (*(v64 + 8))(v43, v58);
      }

      ++v27;
      (*v72)(v15, v85);
      v25 = v82;
    }

    while (v81 != v27);
  }

  __break(1u);
  return result;
}

void sub_29E10A2F4()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis];
  if (!v1)
  {
    goto LABEL_12;
  }

  v39 = v1;
  v2 = [v39 statistics];
  v3 = [v2 numberOfCycles];

  if (!v3 || (v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_headerView]) == 0)
  {

LABEL_12:
    v34 = [v0 tableView];
    if (v34)
    {
      v39 = v34;
      [v34 setTableHeaderView_];
LABEL_14:
      v33 = v39;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [v0 tableView];
  if (!v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  Width = CGRectGetWidth(v41);
  v17 = [v0 tableView];
  if (!v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v17;
  [v17 layoutMargins];
  v20 = v19;

  v21 = [v0 tableView];
  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v21;
  [v21 layoutMargins];
  v24 = v23;

  v25 = Width - (v20 + v24);
  v26 = *(MEMORY[0x29EDC81E0] + 8);
  v27 = v5;
  LODWORD(v28) = 1148846080;
  LODWORD(v29) = 1112014848;
  [v27 systemLayoutSizeFittingSize:v25 withHorizontalFittingPriority:v26 verticalFittingPriority:{v28, v29}];
  [v27 frame];
  CGRectGetHeight(v42);
  if (!HKUIEqualCGFloats())
  {
    goto LABEL_18;
  }

  v30 = [v0 tableView];
  if (!v30)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [v30 tableHeaderView];

  if (!v32)
  {
LABEL_18:
    v35 = [v0 tableView];
    if (v35)
    {
      v36 = v35;
      [v35 setTableHeaderView_];

      [v27 frame];
      [v27 setFrame_];

      v37 = [v0 tableView];
      if (v37)
      {
        v38 = v37;
        [v37 setTableHeaderView_];

        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = v27;
LABEL_15:
}

id sub_29E10A624(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_29E2C0514();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v37 = sub_29E2C31A4();
  v11 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BCEA4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController____lazy_storage___yearDateFormatter] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis] = 0;
  v18 = MEMORY[0x29EDCA198];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_viewModelProviders] = MEMORY[0x29EDCA198];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_sectionedCycles] = v18;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years] = MEMORY[0x29EDCA190];
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter] = 51;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_headerView] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_presentedPDFProvider] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysisProvider] = a1;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_pregnancyModelProvider] = a2;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_calendarCache] = a3;
  v19 = a1;
  v41 = a2;
  swift_unknownObjectRetain();
  v40 = a3;
  v20 = [v40 currentCalendar];
  sub_29E2BCDC4();

  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_gregorianCalendar;
  (*(v15 + 32))(&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_gregorianCalendar], v17, v14);
  (*(v15 + 16))(v17, &v4[v21], v14);
  sub_29E2BCBA4();
  sub_29E2C3144();
  (*(v11 + 32))(&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_today], v13, v37);
  v22 = HKLogMenstrualCyclesCategory();
  v23 = [v19 healthStore];
  v24 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v22 healthDataSource:v23];

  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_eventSubmissionManager] = v24;
  v25 = [v19 healthStore];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_healthStore] = v25;
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v46, sel_initWithStyle_, 0);
  [v19 registerObserver_];
  v27 = v38;
  sub_29E2C04B4();
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A34();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446210;
    v44 = swift_getObjectType();
    sub_29E10E250();
    v32 = sub_29E2C3424();
    v34 = sub_29DFAA104(v32, v33, &v45);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Initializing", v30, 0xCu);
    sub_29DE93B3C(v31);
    MEMORY[0x29ED82140](v31, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v42 + 8))(v27, v43);
  return v26;
}

void sub_29E10ABB8()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v2 = sub_29E2C33A4();
  v3 = [v1 hk:v2 keyExists:?];

  if (v3)
  {
    v4 = sub_29E2C33A4();
    v5 = [v1 integerForKey_];

    v6 = sub_29DED30B8(v5);
  }

  else
  {

    v6 = 51;
  }

  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter) = v6;
  sub_29E10AD8C();
  sub_29E10AF60();
  sub_29E0A4108();
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v10 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E3013B0);
    v9 = sub_29E2C33A4();

    [v8 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E10AD8C()
{
  v1 = v0;
  v2 = sub_29E2C33A4();

  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithImage:v3 style:0 target:v1 action:sel_pushFilterView];

    v5 = qword_2A1A60ED8;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301370);
    v7 = sub_29E2C33A4();

    [v6 setAccessibilityIdentifier_];

    v8 = [v1 navigationItem];
    [v8 setRightBarButtonItem_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E10AF60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  type metadata accessor for CycleHistoryYearSectionHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_29E2C33A4();
  [v4 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v6];

  v7 = [v1 tableView];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  type metadata accessor for CycleHistorySingleCycleCell();
  v9 = swift_getObjCClassFromMetadata();
  sub_29DEF6428();
  v10 = sub_29E2C33A4();

  [v8 registerClass:v9 forCellReuseIdentifier:v10];

  sub_29E10F04C(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CAB20;
  v12 = sub_29E2C0B54();
  v13 = MEMORY[0x29EDC7870];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  MEMORY[0x29ED80420](v11, sel_respondToContentSizeChanges);
  swift_unknownObjectRelease();

  v14 = [v1 tableView];
  if (!v14)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  [v14 setRowHeight_];

  type metadata accessor for TwelveMonthPDFHeaderView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_headerView;
  v18 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_headerView];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_headerView] = v16;

  v19 = *&v1[v17];
  if (v19)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = ObjectType;
    v22 = &v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView_showPDF];
    v23 = *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24TwelveMonthPDFHeaderView_showPDF];
    *v22 = sub_29E10F0B0;
    v22[1] = v21;
    v24 = v19;

    sub_29DE8EF50(v23);
  }

  sub_29E10A2F4();
  v25 = [v1 tableView];
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v26 setTableFooterView_];

  v28 = [v1 navigationItem];
  [v28 setLargeTitleDisplayMode_];

  v29 = [v1 tableView];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 setSectionHeaderTopPadding_];

  v31 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v32 = sub_29E2C33A4();
  v33 = [v31 hk:v32 keyExists:?];

  if (v33)
  {
    v34 = sub_29E2C33A4();
    v35 = [v31 integerForKey_];

    v36 = sub_29DED30B8(v35);
  }

  else
  {

    v36 = 51;
  }

  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter] = v36;

  sub_29E10C390();
}

void sub_29E10B400(uint64_t a1, uint64_t a2)
{
  sub_29E10F04C(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis];
    if (v7)
    {
      v8 = *&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysisProvider];
      v9 = Strong;
      v10 = v7;
      v11 = v8;
      v12 = [v11 healthStore];
      v13 = *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_calendarCache];
      v14 = type metadata accessor for TwelveMonthCycleHistoryPDFProvider();
      swift_allocObject();
      v15 = v10;
      v16 = sub_29E2AEFD4(v11, v12, v15, v13);
      v17 = sub_29E2C3734();
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_29E2C3714();

      v19 = sub_29E2C3704();
      v20 = swift_allocObject();
      v21 = MEMORY[0x29EDCA390];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v18;
      v20[5] = a2;

      sub_29DFE96C0(0, 0, v5, &unk_29E2E0040, v20);

      v22[3] = v14;
      v22[4] = sub_29E10F178(&qword_2A181CF70, type metadata accessor for TwelveMonthCycleHistoryPDFProvider);
      v22[0] = v16;

      sub_29E2C3C04();

      sub_29DE93B3C(v22);
      *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_presentedPDFProvider] = v16;
    }

    else
    {
    }
  }
}

uint64_t sub_29E10B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_29E2C0514();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = sub_29E2BCEA4();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v8 = sub_29E2BCBB4();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  sub_29DEE975C();
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  sub_29E2C3714();
  v5[36] = sub_29E2C3704();
  v11 = sub_29E2C36A4();
  v5[37] = v11;
  v5[38] = v10;

  return MEMORY[0x2A1C73D48](sub_29E10B8DC, v11, v10);
}

uint64_t sub_29E10B8DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[35];
    v5 = v0[31];
    v4 = v0[32];
    v7 = v0[29];
    v6 = v0[30];
    v8 = v0[27];
    v9 = v0[28];
    sub_29E2BCB54();
    sub_29E2BCE44();
    sub_29E2AE580(v3);
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v10 = [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysisProvider) healthStore];
    v0[40] = v10;
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_29E10BAB8;
    v12 = v0[33];

    return MEMORY[0x2A1C5B578](v10, v12);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_29E10BAB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v5 = *(v3 + 304);
  v6 = *(v3 + 296);
  if (v1)
  {
    v7 = sub_29E10BFD0;
  }

  else
  {
    v7 = sub_29E10BC14;
  }

  return MEMORY[0x2A1C73D48](v7, v6, v5);
}

uint64_t sub_29E10BC14()
{
  v1 = v0[42];
  if (v1 >> 62)
  {
    v2 = sub_29E2C4484();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[39];

  if (v2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  type metadata accessor for RoomInteractionEvent();
  v7 = swift_allocObject();
  v0[44] = v7;
  *(v7 + 16) = 0xD00000000000002ALL;
  *(v7 + 24) = 0x800000029E2EEF80;
  *(v7 + 32) = 8;
  *(v7 + 33) = v6;
  *(v7 + 34) = 1;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  v8 = *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_eventSubmissionManager);
  v0[45] = v8;
  v0[2] = v0;
  v0[7] = v0 + 47;
  v0[3] = sub_29E10BDE4;
  v9 = swift_continuation_init();
  sub_29DEE97C4();
  v0[17] = v10;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27ED68;
  v0[13] = &unk_2A24BB648;
  v0[14] = v9;
  v11 = v8;

  [v11 submitEvent:v7 completion:v4];

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t sub_29E10BDE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = *(v1 + 296);
    v4 = *(v1 + 304);
    v5 = sub_29E10C09C;
  }

  else
  {

    v3 = *(v1 + 296);
    v4 = *(v1 + 304);
    v5 = sub_29E10BEFC;
  }

  return MEMORY[0x2A1C73D48](v5, v3, v4);
}

uint64_t sub_29E10BEFC()
{
  v1 = v0[45];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[34];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29E10BFD0()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29E10C09C()
{
  v34 = v0;
  v2 = v0[45];
  v1 = v0[46];

  swift_willThrow();

  sub_29E2C04B4();
  v3 = v1;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[46];
    v7 = v0[34];
    v30 = v0[33];
    v31 = v0[35];
    v8 = v0[25];
    v29 = v0[26];
    v27 = v0[39];
    v28 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v9 = 136446466;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, v33);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v0[21] = v6;
    v14 = v6;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v15 = sub_29E2C3434();
    v17 = sub_29DFAA104(v15, v16, v33);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Error submitting analytics event: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    (*(v8 + 8))(v29, v28);
    (*(v7 + 8))(v31, v30);
  }

  else
  {
    v18 = v0[46];
    v19 = v0[39];
    v20 = v0[34];
    v32 = v0[35];
    v21 = v0[33];
    v22 = v0[25];
    v23 = v0[26];
    v24 = v0[24];

    (*(v22 + 8))(v23, v24);
    (*(v20 + 8))(v32, v21);
  }

  v25 = v0[1];

  return v25();
}

void sub_29E10C390()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v19 - v8;
  v10 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter];
  if (v10 != 51)
  {
    sub_29DED232C(v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter]);
    if (v11)
    {
      v19[0] = v1;
      sub_29DED1D68(v10);
      if (v12)
      {
        sub_29DED2A44(v10);

        sub_29E2BEE94();
        sub_29E2C3314();
        (*(v4 + 16))(v6, v9, v3);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v13 = qword_2A1A67F80;
        sub_29E2BCC74();
        sub_29E2C3414();
        (*(v4 + 8))(v9, v3);
        v14 = [objc_opt_self() labelColor];
        v15 = sub_29E2BEE84();
        v16 = [v19[0] navigationItem];
        [v16 setTitleView_];

        goto LABEL_11;
      }

      v1 = v19[0];
    }
  }

  v17 = [v1 navigationItem];
  [v17 setTitleView_];

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v16 = sub_29E2C33A4();

  [v1 setTitle_];
LABEL_11:
}

void sub_29E10C8BC()
{
  v1 = [objc_allocWithZone(type metadata accessor for CycleHistoryFiltersCollectionViewController()) init];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_delegate + 8] = &off_2A24BB5C0;
  swift_unknownObjectWeakAssign();
  v2 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v2 setModalPresentationStyle_];
  [v0 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_29E10C9CC(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for CycleHistorySingleCycleModel(0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CycleHistorySingleCycleViewModel(0);
  *&v7 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v1 tableView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  type metadata accessor for CycleHistorySingleCycleCell();
  sub_29DEF6428();
  v12 = sub_29E2C33A4();

  v13 = [v11 dequeueReusableCellWithIdentifier_];

  if (!v13)
  {
LABEL_16:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  v42 = v13;
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_29E10D758();
  v41 = v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter];
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_today;
  v18 = *(v3 + 20);
  v19 = sub_29E2C31A4();
  (*(*(v19 - 8) + 16))(&v5[v18], &v2[v17], v19);
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_gregorianCalendar;
  v21 = *(v3 + 24);
  v22 = sub_29E2BCEA4();
  (*(*(v22 - 8) + 16))(&v5[v21], &v2[v20], v22);
  *v5 = v16;
  v23 = v16;
  sub_29E10DA08(v23);
  v25 = v24;
  v26 = sub_29E2BCF64();
  v27 = [v2 tableView];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 allowsSelection];

  sub_29E10EFE8(v5, v9);
  *(v9 + v6[5]) = v25;
  *(v9 + v6[6]) = v41;
  *(v9 + v6[7]) = v26 == 0;
  *(v9 + v6[8]) = 0;
  *(v9 + v6[9]) = 0;
  *(v9 + v6[10]) = v29;
  *(v9 + v6[11]) = 1;
  v30 = v42;
  [v15 bounds];
  Width = CGRectGetWidth(v45);
  sub_29DFFB090(v9, Width);
  if (v29)
  {
    sub_29E108808();
  }

  v32 = sub_29E2BCF64();
  if (qword_2A1A60ED8 != -1)
  {
    v39 = v32;
    swift_once();
    v32 = v39;
  }

  v44 = xmmword_2A1A67E58;
  if (v32)
  {
    v33 = 71;
  }

  else
  {
    v33 = 70;
  }

  v34 = sub_29E103B94(v33);
  v36 = v35;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v34, v36);

  v37 = sub_29E2C33A4();

  [v15 setAccessibilityIdentifier_];

  sub_29DF707B4(v9);
  return v15;
}

void sub_29E10CF10(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2C31A4();
  v33 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BC5F4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2C33A4();
  v17 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (v17)
  {
    type metadata accessor for CycleHistoryYearSectionHeader();
    v18 = swift_dynamicCastClassUnconditional();
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years);
      if (*(v19 + 16) > a2)
      {
        v17 = v18;
        (*(v13 + 16))(v15, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a2, v12);
        v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_sectionedCycles;
        swift_beginAccess();
        v21 = *(v3 + v20);
        if (!*(v21 + 16) || (v22 = sub_29E18464C(v15), (v23 & 1) == 0))
        {
          swift_endAccess();
          (*(v13 + 8))(v15, v12);
          return;
        }

        a2 = *(*(v21 + 56) + 8 * v22);
        swift_endAccess();
        v24 = *(v13 + 8);
        sub_29E2BF404();
        v24(v15, v12);
        if (!(a2 >> 62))
        {
          if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_8:
            if ((a2 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x29ED80D70](0, a2);
              goto LABEL_11;
            }

            if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v25 = *(a2 + 32);
LABEL_11:
              v26 = v25;

              v27 = [v26 menstruationSegment];
              [v27 days];

              sub_29E2C30D4();
              sub_29E2C3194();
              (*(v33 + 8))(v8, v6);
              v28 = sub_29E109748();
              v29 = sub_29E2BCB04();
              v30 = [v28 stringFromDate_];

              _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
              v31 = *&v17[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_yearLabel];
              v32 = sub_29E2C33A4();

              [v31 setText_];

              (*(v34 + 8))(v11, v35);
              return;
            }

            __break(1u);
            goto LABEL_19;
          }

LABEL_16:

          return;
        }

LABEL_15:
        if (sub_29E2C4484())
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_29E10D418(void *a1)
{
  v3 = v1;
  v5 = sub_29E2BCEA4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E10D758();
  [a1 bounds];
  Width = CGRectGetWidth(v38);
  v11 = &off_29F363000;
  [a1 layoutMargins];
  v13 = Width - v12;
  [a1 layoutMargins];
  v15 = v13 - v14;
  v16 = ceil(v15 / 25.0);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 9.22337204e18)
  {
    v17 = v16;
    v18 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis];
    v19 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysisProvider];
    v35 = v18;
    v20 = v9;
    v34 = v9;
    v21 = v20;
    v22 = v19;
    v36 = v21;
    sub_29E10DA08(v21);
    v24 = v23;
    v25 = [v23 copyWithMinimumBufferDuration_];

    (*(v6 + 16))(v8, &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_gregorianCalendar], v5);
    v26 = [a1 traitCollection];
    v27 = [v26 horizontalSizeClass];

    type metadata accessor for CycleChartsModelProvider();
    swift_allocObject();
    sub_29DF13D28(v18, v34, v22, v25, v8, v27, v15);
    v11 = v28;

    v9 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_calendarCache];
    v2 = type metadata accessor for CycleChartsViewController();
    v8 = objc_allocWithZone(v2);
    if (!(MEMORY[0x29EDCA190] >> 62))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  if (sub_29E2C4484())
  {
    v32 = v9;
    v30 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
    goto LABEL_6;
  }

LABEL_5:
  v29 = v9;
  v30 = MEMORY[0x29EDCA1A0];
LABEL_6:
  *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_subscriptions] = v30;
  *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_model] = v11;
  *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsViewController_calendarCache] = v9;
  v37.receiver = v8;
  v37.super_class = v2;
  v31 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
  [v3 showViewController:v31 sender:a1];
}

uint64_t sub_29E10D758()
{
  v1 = v0;
  v2 = sub_29E2BC5F4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCFA4();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years);
  if (v6 >= *(v7 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  (*(v3 + 16))(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v6, v2);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_sectionedCycles;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_15;
  }

  v10 = sub_29E18464C(v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  sub_29E2BF404();
  v13 = sub_29E2BCF64();
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v14 = MEMORY[0x29ED80D70]();
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 8 * v13 + 32);
LABEL_9:
    v15 = v14;

    swift_endAccess();
    (*(v3 + 8))(v5, v2);
    return v15;
  }

  __break(1u);
LABEL_15:
  swift_endAccess();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_29E2C4584();

  v19 = 0xD00000000000001ALL;
  v20 = 0x800000029E301EE0;
  sub_29E2BCFB4();
  sub_29E10F178(&unk_2A181F8A0, MEMORY[0x29EDB9D70]);
  v17 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v17);

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E10DA08(void *a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_viewModelProviders;
  swift_beginAccess();
  if (sub_29E297E14(a1, *&v1[v3]))
  {
    goto LABEL_12;
  }

  swift_endAccess();
  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysisProvider];
  v5 = [v4 healthStore];
  v6 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_pregnancyModelProvider];
  swift_unknownObjectRetain();
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    Width = CGRectGetWidth(v27);
    sub_29E1CB854(Width);
    if ((v18 * 10) >> 64 == (10 * v18) >> 63)
    {
      v19 = [objc_allocWithZone(MEMORY[0x29EDC3408]) initWithHealthStore:v5 analysisProvider:v4 pregnancyModelProvider:v6 maximumActiveDuration:10 * v18 minimumBufferDuration:10 shouldFetchCycleFactors:1 calendarCache:*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_calendarCache]];

      swift_unknownObjectRelease();
      swift_beginAccess();
      v20 = *&v1[v3];
      if ((v20 & 0xC000000000000001) == 0)
      {
        v24 = v19;
        goto LABEL_11;
      }

      if (v20 < 0)
      {
        v21 = *&v1[v3];
      }

      else
      {
        v21 = v20 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = v19;
      v23 = sub_29E2C4484();
      if (!__OFADD__(v23, 1))
      {
        *&v1[v3] = sub_29E29AAB4(v21, v23 + 1);
LABEL_11:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *&v1[v3];
        sub_29E00942C(v19, a1, isUniquelyReferenced_nonNull_native);
        *&v1[v3] = v26;
LABEL_12:
        swift_endAccess();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for CycleHistoryTableViewController()
{
  result = qword_2A1A60380;
  if (!qword_2A1A60380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E10DFB4()
{
  result = sub_29E2BCEA4();
  if (v1 <= 0x3F)
  {
    result = sub_29E2C31A4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_29E10E158()
{
  v1 = *(*v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_healthStore);
  v2 = v1;
  return v1;
}

uint64_t sub_29E10E18C(uint64_t a1)
{
  v2 = sub_29E10F178(&qword_2A181CF58, type metadata accessor for CycleHistoryTableViewController);

  return MEMORY[0x2A1C60E48](a1, v2);
}

unint64_t sub_29E10E250()
{
  result = qword_2A181CF60;
  if (!qword_2A181CF60)
  {
    type metadata accessor for CycleHistoryTableViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181CF60);
  }

  return result;
}

uint64_t (*sub_29E10E298(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_29E2BC5F4();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_29E10EA4C(v6);
  v6[12] = sub_29E10E5AC(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_29E10E3D4;
}

uint64_t (*sub_29E10E3D8(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_29E2BC5F4();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_29E10EA80(v6);
  v6[12] = sub_29E10E788(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_29E10F1F4;
}

void sub_29E10E514(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_29E10E5AC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_29E2BC5F4();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_29E18464C(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_29E00AFA8();
      v15 = v23;
      goto LABEL_14;
    }

    sub_29E006A90(v20, a3 & 1);
    v15 = sub_29E18464C(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_29E2C4964();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_29E10E75C;
}

void (*sub_29E10E788(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_29E2BC5F4();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_29E18464C(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_29E00B5FC();
      v15 = v23;
      goto LABEL_14;
    }

    sub_29E007714(v20, a3 & 1);
    v15 = sub_29E18464C(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_29E2C4964();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_29E10E75C;
}

void sub_29E10E938(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = *v4[2];
    v7 = v4[6];
    if ((*a1)[7])
    {
      *(*(v6 + 56) + 8 * v7) = v5;
    }

    else
    {
      v11 = v4[5];
      (*(v4[4] + 16))(v11, v4[1], v4[3]);
      a3(v7, v11, v5, v6);
    }
  }

  else if ((*a1)[7])
  {
    v8 = v4[6];
    v9 = *v4[2];
    (*(v4[4] + 8))(*(v9 + 48) + *(v4[4] + 72) * v8, v4[3]);
    a4(v8, v9);
  }

  v13 = v4[5];
  sub_29E2BF404();

  free(v13);

  free(v4);
}

uint64_t (*sub_29E10EA4C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_29E10EA74;
}

uint64_t (*sub_29E10EA80(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_29E10F1EC;
}

void sub_29E10EAA8()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController____lazy_storage___yearDateFormatter) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis) = 0;
  v1 = MEMORY[0x29EDCA198];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_viewModelProviders) = MEMORY[0x29EDCA198];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_sectionedCycles) = v1;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_selectedFilter) = 51;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_presentedPDFProvider) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E10EB78(unint64_t a1)
{
  v3 = sub_29E2BC5F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_years);
  if (*(v8 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1, v3, v5);
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_sectionedCycles;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!*(v10 + 16) || (v11 = sub_29E18464C(v7), (v12 & 1) == 0))
  {
    swift_endAccess();
    v14 = 0;
    goto LABEL_8;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  if (v13 >> 62)
  {
LABEL_11:
    v14 = sub_29E2C4484();
    goto LABEL_8;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  (*(v4 + 8))(v7, v3);
  return v14;
}

void sub_29E10ED18(void *a1)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = v1;
  v8 = a1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446466;
    ObjectType = swift_getObjectType();
    sub_29E10E250();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    ObjectType = v8;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v17 = v8;
    v18 = sub_29E2C3464();
    v20 = sub_29DFAA104(v18, v19, &v28);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received analysis: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v21 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis];
  *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleHistoryTableViewController_analysis] = v8;
  v22 = v8;

  sub_29E1098BC();
  if (![v7 isViewLoaded])
  {
    goto LABEL_7;
  }

  v23 = [v7 tableView];
  if (v23)
  {
    v24 = v23;
    [v23 reloadData];

    sub_29E10A2F4();
LABEL_7:

    return;
  }

  __break(1u);
}

uint64_t sub_29E10EFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleHistorySingleCycleModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E10F04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E10F0B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29E10B6D4(a1, v4, v5, v7, v6);
}

uint64_t sub_29E10F178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E10F208(void *a1, void *a2, unsigned __int8 a3)
{
  sub_29E10F30C(a2, a3, v9);
  sub_29DE966D4(v9, v10);
  sub_29E2BDD54();
  sub_29DE966D4(v9, v10);
  sub_29E2BDD44();
  v4 = objc_allocWithZone(sub_29E2BDD34());
  v5 = sub_29E2BDD24();
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }

  return sub_29DE93B3C(v9);
}

id sub_29E10F30C@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        a3[3] = &type metadata for SpottingArticleDataProvider;
        a3[4] = sub_29E02022C();
        result = sub_29E020280();
      }

      else
      {
        a3[3] = &type metadata for FertilityArticleDataProvider;
        a3[4] = sub_29E0202D4();
        result = sub_29E020328();
      }
    }

    else if (a2)
    {
      a3[3] = &type metadata for CycleFactorsArticleDataProvider;
      a3[4] = sub_29E020184();
      result = sub_29E0201D8();
    }

    else
    {
      a3[3] = &type metadata for Period101ArticleDataProvider;
      a3[4] = sub_29E0200DC();
      result = sub_29E020130();
    }

    goto LABEL_18;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      a3[3] = &type metadata for PregnancyExerciseArticleDataProvider;
      a3[4] = sub_29E0204CC();
      result = sub_29E020520();
    }

    else
    {
      a3[3] = &type metadata for PregnancyWarningSignsArticleDataProvider;
      a3[4] = sub_29E020574();
      result = sub_29E0205C8();
    }

    goto LABEL_18;
  }

  if (a2 != 4)
  {
    a3[3] = &type metadata for PregnancyMedicationsArticleDataProvider;
    a3[4] = sub_29E02037C();
    result = sub_29E0203D0();
LABEL_18:
    a3[5] = result;
    return result;
  }

  a3[3] = &type metadata for PregnancyArticleDataProvider;
  a3[4] = sub_29E020424();
  a3[5] = sub_29E020478();
  *a3 = a1;

  return a1;
}

double sub_29E10F478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v38 - v12;
  sub_29E2C0484();
  sub_29E2BF404();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A34();

  v16 = os_log_type_enabled(v14, v15);
  v42 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v40 = a4;
    v18 = v17;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v18 = 136315394;
    *(v18 + 4) = sub_29DFAA104(0xD000000000000028, 0x800000029E2E0030, &v45);
    *(v18 + 12) = 2080;
    v43 = a1;
    v44 = a2;
    sub_29E2BF404();
    v19 = sub_29E2C3464();
    v21 = sub_29DFAA104(v19, v20, &v45);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%s] Attempting to make article data provider with identifier: %s", v18, 0x16u);
    v22 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v22, -1, -1);
    v23 = v18;
    a4 = v40;
    MEMORY[0x29ED82140](v23, -1, -1);
  }

  v24 = *(v8 + 8);
  v24(v13, v7);
  sub_29E2BF404();
  v25 = sub_29E10F89C();
  if (v25 == 8)
  {
    sub_29E2C0484();
    sub_29E2BF404();
    v26 = sub_29E2C0504();
    v27 = sub_29E2C3A14();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_29DFAA104(0xD000000000000028, 0x800000029E2E0030, &v45);
      *(v28 + 12) = 2080;
      v43 = v42;
      v44 = a2;
      sub_29E2BF404();
      v30 = sub_29E2C3464();
      v42 = v7;
      v32 = sub_29DFAA104(v30, v31, &v45);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_29DE74000, v26, v27, "[%s] Article identifier %s could not be found", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v28, -1, -1);

      v33 = v10;
      v34 = v42;
    }

    else
    {

      v33 = v10;
      v34 = v7;
    }

    v24(v33, v34);
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    v35 = v25;
    v36 = sub_29E2BE8F4();
    sub_29E10F30C(v36, v35, a4);
  }

  return result;
}

uint64_t sub_29E10F89C()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E10F8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_29DFA3A34(0, &qword_2A1A5E4A8, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v4 = a1;
  result = sub_29E2C1194();
  *a2 = result;
  return result;
}

uint64_t sub_29E10F98C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_29E11082C;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = sub_29E110874;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = ObjectType;
  v13[4] = sub_29E1108B0;
  v13[5] = v9;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29DF2816C;
  v13[3] = &unk_2A24BB758;
  v10 = _Block_copy(v13);

  v11 = a3;

  [v11 currentSleepEventRecordWithCompletion_];
  _Block_release(v10);
}

void sub_29E10FAF8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = ObjectType;
  v9[4] = sub_29E110B74;
  v9[5] = v6;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29DF2816C;
  v9[3] = &unk_2A24BB7A8;
  v7 = _Block_copy(v9);

  v8 = v2;

  [v8 currentSleepEventRecordWithCompletion_];
  _Block_release(v7);
}

uint64_t type metadata accessor for SleepMeasurementsConfigurationProvider()
{
  result = qword_2A1A5F6B8;
  if (!qword_2A1A5F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E10FD40()
{
  sub_29E2C0514();
  if (v0 <= 0x3F)
  {
    sub_29DFA3830();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_29E10FE28()
{
  result = qword_2A1A5E430;
  if (!qword_2A1A5E430)
  {
    sub_29DFA393C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E430);
  }

  return result;
}

uint64_t sub_29E10FE80(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v25);
    v23 = v4;
    v16 = a1;
    v17 = v15;

    *(v11 + 4) = v17;
    a1 = v16;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Received sleep event record did change", v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    v18 = v11;
    a2 = v24;
    MEMORY[0x29ED82140](v18, -1, -1);

    (*(v5 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v19 = [a1 hasSleepFocusMode];
  v20 = [a2 isCurrentSleepCoachingOnboardingCompleted];
  v21 = [a2 isCurrentSleepTrackingOnboardingCompleted];
  v26 = v20;
  v27 = v21;
  v28 = v19;
  return sub_29E2C1094();
}

uint64_t sub_29E1101B8(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x2A1C7C4A8](v10).n128_u64[0];
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = [a5 hasSleepFocusMode];
    v16 = [a1 isCurrentSleepCoachingOnboardingCompleted];
    if ([a1 isCurrentSleepTrackingOnboardingCompleted])
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_29E2C04B4();
    v18 = a2;
    v19 = sub_29E2C0504();
    v20 = sub_29E2C3A14();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = a4;
      v22 = v21;
      v35 = swift_slowAlloc();
      v39 = v35;
      *v22 = 136446466;
      v23 = sub_29E2C4AE4();
      v25 = sub_29DFAA104(v23, v24, &v39);
      v37 = a3;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v38 = a2;
      v27 = a2;
      sub_29DF57668();
      v28 = sub_29E2C3424();
      v30 = sub_29DFAA104(v28, v29, &v39);
      a3 = v37;

      *(v22 + 14) = v30;
      _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Failed to retrieve sleep event record: %{public}s", v22, 0x16u);
      v31 = v35;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v22, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v15 = [a5 hasSleepFocusMode];
    v17 = 0;
    v16 = 0;
  }

  if (v15)
  {
    v32 = 0x10000;
  }

  else
  {
    v32 = 0;
  }

  return a3(v32 | v17 | v16);
}

id sub_29E110474(void *a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  ObjectType = swift_getObjectType();
  sub_29DFA393C();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA3830();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v25 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationUpdates;
  v22 = MEMORY[0x29EDB8A48];
  sub_29DFA3A34(0, &qword_2A1A5E5C8, MEMORY[0x29EDB8A48]);
  swift_allocObject();
  v13 = sub_29E2C10A4();
  *&v2[v12] = v13;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_sleepStore] = a1;
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_logger;
  v23 = sub_29E2C0514();
  v15 = *(v23 - 8);
  (*(v15 + 16))(&v3[v14], a2, v23);
  v32 = v13;
  *(swift_allocObject() + 16) = a1;
  v16 = MEMORY[0x29EDB8AD0];
  sub_29DFA3A34(0, &qword_2A1A5E4A8, MEMORY[0x29EDB8AD0]);
  sub_29DFA39F0(&qword_2A1A5E4B0, &qword_2A1A5E4A8, v16);
  v17 = a1;

  sub_29E2C11B4();
  sub_29DFA39F0(&qword_2A1A5E5D0, &qword_2A1A5E5C8, v22);
  sub_29E10FE28();
  v18 = v25;
  v19 = v28;
  sub_29E2C1344();
  (*(v29 + 8))(v9, v19);

  (*(v26 + 32))(&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationPublisher], v18, v27);
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, sel_init);
  [v17 addObserver_];
  (*(v15 + 8))(v24, v23);
  return v20;
}

uint64_t sub_29E11082C(int a1)
{
  v2 = *(v1 + 16);
  v5 = BYTE2(a1);
  v4 = a1;
  v6 = HIBYTE(a1) & 1;
  return v2(&v4);
}

uint64_t sub_29E1108BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E1108D4()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E110914(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Received sleep focus configuration update", v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  v17 = v2;
  sub_29E10FAF8(sub_29E110B1C, v16);
}

uint64_t sub_29E110B7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BE174();
  v3 = sub_29E2BD664();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v5 = sub_29DECF000(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:

    sub_29E2C4584();

    v11 = sub_29E2BD664();
    MEMORY[0x29ED7FCC0](v11);

    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  v8 = *(v2 + 56);
  v9 = sub_29E2BE194();
  (*(*(v9 - 8) + 16))(a1, v8 + *(*(v9 - 8) + 72) * v5, v9);
}

void sub_29E110CF4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DE9408C(255, a3);
    v4 = sub_29E2C2F84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for SummaryTileUserData()
{
  result = qword_2A1A60F68;
  if (!qword_2A1A60F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E110DAC()
{
  sub_29E110CF4(319, &qword_2A1A5E360, &qword_2A1A61D68);
  if (v0 <= 0x3F)
  {
    sub_29E110CF4(319, &qword_2A1A5E350, &unk_2A1A5E190);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E110E60(void *a1)
{
  sub_29E111730(0, &qword_2A1A5E048, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29DE966D4(a1, a1[3]);
  sub_29E111680();
  sub_29E2C4AA4();
  v9[15] = 0;
  sub_29E110CF4(0, &qword_2A1A5E360, &qword_2A1A61D68);
  sub_29E111794(&qword_2A1A5E368);
  sub_29E2C48A4();
  if (!v1)
  {
    type metadata accessor for SummaryTileUserData();
    v9[14] = 1;
    sub_29E110CF4(0, &qword_2A1A5E350, &unk_2A1A5E190);
    sub_29E1116D4(&qword_2A1A5E358);
    sub_29E2C48A4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E111078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_29E110CF4(0, &qword_2A1A5E350, &unk_2A1A5E190);
  v26 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v22 - v5;
  sub_29E110CF4(0, &qword_2A1A5E360, &qword_2A1A61D68);
  v30 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v28 = &v22 - v8;
  sub_29E111730(0, &qword_2A181D0B0, MEMORY[0x29EDC9E80]);
  v31 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SummaryTileUserData();
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E111680();
  sub_29E2C4A94();
  if (v2)
  {
    return sub_29DE93B3C(a1);
  }

  v15 = v14;
  v16 = v27;
  v33 = 0;
  sub_29E111794(&qword_2A181D0B8);
  v17 = v28;
  sub_29E2C4844();
  v18 = *(v16 + 32);
  v23 = v15;
  v18(v15, v17, v30);
  v32 = 1;
  sub_29E1116D4(&qword_2A181D0C0);
  v19 = v26;
  sub_29E2C4844();
  (*(v29 + 8))(v11, v31);
  v20 = v23;
  (*(v24 + 32))(v23 + *(v12 + 20), v6, v19);
  sub_29E1117F0(v20, v25);
  sub_29DE93B3C(a1);
  return sub_29E111854(v20);
}

uint64_t sub_29E1114A0()
{
  if (*v0)
  {
    return 0x636E616E67657270;
  }

  else
  {
    return 0x616D6D7553796164;
  }
}

uint64_t sub_29E1114EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616D6D7553796164 && a2 == 0xEA00000000007972;
  if (v6 || (sub_29E2C4914() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E616E67657270 && a2 == 0xEE006C65646F4D79)
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

uint64_t sub_29E1115D8(uint64_t a1)
{
  v2 = sub_29E111680();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E111614(uint64_t a1)
{
  v2 = sub_29E111680();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29E111680()
{
  result = qword_2A1A60F90;
  if (!qword_2A1A60F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A60F90);
  }

  return result;
}

uint64_t sub_29E1116D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E110CF4(255, &qword_2A1A5E350, &unk_2A1A5E190);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E111730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E111680();
    v7 = a3(a1, &type metadata for SummaryTileUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E111794(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E110CF4(255, &qword_2A1A5E360, &qword_2A1A61D68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E1117F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryTileUserData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E111854(uint64_t a1)
{
  v2 = type metadata accessor for SummaryTileUserData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E1118C4()
{
  result = qword_2A181D0C8;
  if (!qword_2A181D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D0C8);
  }

  return result;
}

unint64_t sub_29E11191C()
{
  result = qword_2A1A60F80;
  if (!qword_2A1A60F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A60F80);
  }

  return result;
}

unint64_t sub_29E111974()
{
  result = qword_2A1A60F88;
  if (!qword_2A1A60F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A60F88);
  }

  return result;
}

void sub_29E1119DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for EstimationMethodSelectionView()
{
  result = qword_2A181D0D0;
  if (!qword_2A181D0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E111AA0()
{
  sub_29E1119DC(319, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29E1119DC(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E111BA8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_29E2C1B94();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v41 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v35[-v6];
  v39 = sub_29E2C1F14();
  v8 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E113D30(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E113C5C(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v35[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E113BB4(0);
  v40 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v35[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v14 = sub_29E2C1A94();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_29E1149F4(0, &qword_2A181D208, sub_29E113D94);
  v24 = &v14[*(v23 + 44)];
  v36 = a1;
  sub_29E112138(v43, a1, v24);
  *&v14[*(v12 + 36)] = 256;
  sub_29E2C1EF4();
  v25 = sub_29E114240();
  sub_29E2C24A4();
  v26 = v10;
  v27 = v37;
  (*(v8 + 8))(v26, v39);
  v28 = v38;
  sub_29E114AC8(v14, sub_29E113D30);
  sub_29E2C1B84();
  v44 = v12;
  v45 = v25;
  swift_getOpaqueTypeConformance2();
  v39 = v22;
  sub_29E2C24B4();
  v29 = *(v27 + 8);
  v29(v7, v28);
  (*(v17 + 8))(v19, v16);
  type metadata accessor for EstimationMethodSelectionView();
  sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v30 = v44;
  swift_getKeyPath();
  v44 = v30;
  sub_29E114BA8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v31 = *(v30 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v31 == 4 || v31 != v36)
  {
    v44 = MEMORY[0x29EDCA190];
    sub_29E114BA8(&qword_2A181D210, MEMORY[0x29EDBC748]);
    sub_29E114908(0);
    sub_29E114BA8(&qword_2A181D220, sub_29E114908);
    v32 = v41;
    sub_29E2C43F4();
  }

  else
  {
    v32 = v41;
    sub_29E2C1B74();
  }

  v33 = v39;
  sub_29E2C1734();
  v29(v32, v28);
  return sub_29E11493C(v33, sub_29E113BB4);
}

uint64_t sub_29E112138@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v51 = a3;
  v4 = a2;
  sub_29E1140F0();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v43 - v8;
  sub_29E113F84(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v43 - v13;
  sub_29E113EA8();
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v46 = &v43 - v18;
  v45 = type metadata accessor for EstimationMethodSelectionView();
  sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v19 = v54;
  swift_getKeyPath();
  v54 = v19;
  sub_29E114BA8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v20 = sub_29E2C2714();
  v44 = a1;
  sub_29E2C2A24();
  v21 = v54;
  swift_getKeyPath();
  v54 = v21;
  sub_29E2BCFE4();

  v22 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  v23 = objc_opt_self();
  v24 = v22 != v4 || v22 == 4;
  v25 = &selRef_systemBlueColor;
  if (v24)
  {
    v25 = &selRef_systemGrayColor;
  }

  v26 = [v23 *v25];
  v27 = sub_29E2C2654();
  KeyPath = swift_getKeyPath();
  v54 = v20;
  v55 = KeyPath;
  v56 = v27;
  v29 = (a1 + *(v45 + 24));
  v30 = v29[1];
  v52 = *v29;
  v53 = v30;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6567616D492ELL, 0xE600000000000000);
  sub_29E03DF6C(0, &qword_2A181AB60, sub_29DED9940);
  sub_29E015868();
  v31 = v46;
  sub_29E2C23B4();

  *v14 = sub_29E2C1AA4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_29E1149F4(0, &qword_2A181D228, sub_29E114054);
  v33 = &v14[*(v32 + 44)];
  *v9 = sub_29E2C1BD4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_29E1149F4(0, &qword_2A181D230, sub_29E114184);
  sub_29E11278C(v49, v44, &v9[*(v34 + 44)]);
  v35 = v48;
  sub_29E114A60(v9, v48, sub_29E1140F0);
  sub_29E114A60(v35, v33, sub_29E1140F0);
  sub_29E114088();
  v37 = v33 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 0;
  sub_29E114AC8(v9, sub_29E1140F0);
  sub_29E114AC8(v35, sub_29E1140F0);
  v38 = v47;
  sub_29E114A60(v31, v47, sub_29E113EA8);
  v39 = v50;
  sub_29E114A60(v14, v50, sub_29E113F84);
  v40 = v51;
  sub_29E114A60(v38, v51, sub_29E113EA8);
  sub_29E113E2C(0, &qword_2A181D150, sub_29E113EA8, sub_29E113F84);
  sub_29E114A60(v39, v40 + *(v41 + 48), sub_29E113F84);
  sub_29E114AC8(v14, sub_29E113F84);
  sub_29E114AC8(v31, sub_29E113EA8);
  sub_29E114AC8(v39, sub_29E113F84);
  return sub_29E114AC8(v38, sub_29E113EA8);
}

uint64_t sub_29E11278C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v60 = a1;
  v64 = a3;
  sub_29E03DF6C(0, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v63 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v62 = v58 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v61 = v58 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v65 = v58 - v10;
  v68 = sub_29E03F758();
  v69 = v11;
  v58[1] = sub_29DE9DE68();
  v12 = sub_29E2C2294();
  v14 = v13;
  v16 = v15;
  sub_29E2C2154();
  v17 = sub_29E2C2254();
  v19 = v18;
  v21 = v20;

  sub_29DED6478(v12, v14, v16 & 1);

  v58[0] = objc_opt_self();
  v22 = [v58[0] labelColor];
  v68 = sub_29E2C2654();
  v23 = sub_29E2C2224();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_29DED6478(v17, v19, v21 & 1);

  v68 = v23;
  v69 = v25;
  v70 = v27 & 1;
  v71 = v29;
  v30 = (v59 + *(type metadata accessor for EstimationMethodSelectionView() + 24));
  v31 = v30[1];
  v59 = *v30;
  v66 = v59;
  v67 = v31;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x706972637365442ELL, 0xEC0000006E6F6974);
  sub_29E2C23B4();

  sub_29DED6478(v23, v25, v27 & 1);

  v68 = sub_29E03F9C4();
  v69 = v32;
  v33 = sub_29E2C2294();
  v35 = v34;
  v37 = v36;
  sub_29E2C2044();
  v38 = sub_29E2C2254();
  v40 = v39;
  v42 = v41;

  sub_29DED6478(v33, v35, v37 & 1);

  v43 = [v58[0] secondaryLabelColor];
  v68 = sub_29E2C2654();
  v44 = sub_29E2C2224();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_29DED6478(v38, v40, v42 & 1);

  v68 = v44;
  v69 = v46;
  v70 = v48 & 1;
  v71 = v50;
  v66 = v59;
  v67 = v31;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x546C69617465442ELL, 0xEB00000000747865);
  v51 = v61;
  sub_29E2C23B4();

  sub_29DED6478(v44, v46, v48 & 1);

  v52 = v65;
  v53 = v62;
  sub_29DFCFC28(v65, v62);
  v54 = v63;
  sub_29DFCFC28(v51, v63);
  v55 = v64;
  sub_29DFCFC28(v53, v64);
  sub_29E1141B8();
  sub_29DFCFC28(v54, v55 + *(v56 + 48));
  sub_29E114B28(v51);
  sub_29E114B28(v52);
  sub_29E114B28(v54);
  return sub_29E114B28(v53);
}

uint64_t sub_29E112C54@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v79 = a3;
  v4 = type metadata accessor for EstimationMethodSelectionView();
  v75 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v74 = v5;
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E113BB4(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E113B28(0);
  v68 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E113B00(0);
  v70 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E113ACC(0);
  v71 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E113A84(0);
  v78 = v18;
  v72 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v73 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v69 = &v68 - v21;
  v22 = sub_29E2C2984();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E113A50(0);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v32 = &v68 - v30;
  v33 = *a1;
  if (v33)
  {
    sub_29E2C2974();
    (*(v23 + 32))(v32, v25, v22);
    (*(v23 + 56))(v32, 0, 1, v22);
  }

  else
  {
    (*(v23 + 56))(&v68 - v30, 1, 1, v22, v31);
  }

  v34 = v77;
  sub_29E111BA8(v33, v8);
  v35 = sub_29E2C1FD4();
  sub_29E2C1424();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_29E114820(v8, v11, sub_29E113BB4);
  v44 = &v11[*(v68 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_29E2C1FE4();
  sub_29E2C1424();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_29E114820(v11, v14, sub_29E113B28);
  v54 = &v14[*(v70 + 36)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_29E114820(v14, v17, sub_29E113B00);
  v17[*(v71 + 36)] = 0;
  v55 = v76;
  sub_29E114A60(v34, v76, type metadata accessor for EstimationMethodSelectionView);
  v56 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v57 = v56 + v74;
  v58 = swift_allocObject();
  sub_29E1146E8(v55, v58 + v56);
  *(v58 + v57) = v33;
  sub_29E11434C();
  v59 = v69;
  sub_29E2C23A4();

  sub_29E11493C(v17, sub_29E113ACC);
  sub_29E114A60(v32, v28, sub_29E113A50);
  v61 = v72;
  v60 = v73;
  v62 = *(v72 + 16);
  v63 = v78;
  v62(v73, v59, v78);
  v64 = v79;
  sub_29E114A60(v28, v79, sub_29E113A50);
  sub_29E113E2C(0, &qword_2A181D0F8, sub_29E113A50, sub_29E113A84);
  v62((v64 + *(v65 + 48)), v60, v63);
  v66 = *(v61 + 8);
  v66(v59, v63);
  sub_29E114AC8(v32, sub_29E113A50);
  v66(v60, v63);
  return sub_29E114AC8(v28, sub_29E113A50);
}

uint64_t sub_29E113320(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for EstimationMethodSelectionView();
  sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  sub_29E2C2A24();
  swift_getKeyPath();
  sub_29E114BA8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v3 = *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v3 != a2 || v3 == 4)
  {
    v5 = a2;
  }

  else
  {
    v5 = 4;
  }

  sub_29E040AAC(v5);
}

uint64_t sub_29E11346C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v18 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  a1[1] = v15;
  a1[2] = v16 & 1;
  a1[3] = v17;
  return result;
}

uint64_t sub_29E11368C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8);
  *a2 = swift_getKeyPath();
  sub_29E1119DC(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  sub_29E1138D4();
  v8 = v7;
  v12[1] = &unk_2A24AF4F0;
  sub_29E114A60(v3, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EstimationMethodSelectionView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_29E1146E8(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_29E113F34(0, &qword_2A181B128, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9A40]);
  sub_29E113A14(0);
  sub_29E1145C4();
  sub_29E114BA8(&qword_2A181D1F8, sub_29E113A14);
  sub_29E1147CC();
  sub_29E2C29B4();
  return sub_29E11346C((a2 + *(v8 + 56)));
}

void sub_29E1138D4()
{
  if (!qword_2A181D0E0)
  {
    sub_29E113954();
    sub_29E114640();
    v0 = type metadata accessor for StyledVStackListSection();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D0E0);
    }
  }
}

void sub_29E113954()
{
  if (!qword_2A181D0E8)
  {
    sub_29E113F34(255, &qword_2A181B128, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9A40]);
    sub_29E113A14(255);
    sub_29E1145C4();
    sub_29E046140();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D0E8);
    }
  }
}

void sub_29E113B50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E113BE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E113CA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29E113DD0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E113E2C(255, a3, a4, a5);
    v6 = sub_29E2C2B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E113E2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E113EA8()
{
  if (!qword_2A181D158)
  {
    sub_29E03DF6C(255, &qword_2A181AB60, sub_29DED9940);
    sub_29E2C1F54();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D158);
    }
  }
}

void sub_29E113F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E113FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E114BA8(a4, a5);
    v8 = sub_29E2C2884();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E114088()
{
  if (!qword_2A181D170)
  {
    sub_29E1140F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181D170);
    }
  }
}

void sub_29E1140F0()
{
  if (!qword_2A181D178)
  {
    sub_29E114184(255);
    sub_29E114BA8(&qword_2A181D190, sub_29E114184);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D178);
    }
  }
}

void sub_29E1141B8()
{
  if (!qword_2A181D188)
  {
    sub_29E03DF6C(255, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181D188);
    }
  }
}

unint64_t sub_29E114240()
{
  result = qword_2A181D1A8;
  if (!qword_2A181D1A8)
  {
    sub_29E113D30(255);
    sub_29E114BA8(&qword_2A181D1B0, sub_29E113D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D1A8);
  }

  return result;
}

void sub_29E1142F0()
{
  if (!qword_2A181D1B8)
  {
    sub_29DED6B9C();
    v0 = sub_29E2C1D74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D1B8);
    }
  }
}

unint64_t sub_29E11434C()
{
  result = qword_2A181D1C0;
  if (!qword_2A181D1C0)
  {
    sub_29E113ACC(255);
    sub_29E11442C(&qword_2A181D1C8, sub_29E113B00, sub_29E1144B0);
    sub_29E114BA8(&qword_2A181D1E0, sub_29E1142F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D1C0);
  }

  return result;
}

uint64_t sub_29E11442C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E1144E4()
{
  result = qword_2A181D1D8;
  if (!qword_2A181D1D8)
  {
    sub_29E113BB4(255);
    sub_29E113D30(255);
    sub_29E114240();
    swift_getOpaqueTypeConformance2();
    sub_29E114BA8(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D1D8);
  }

  return result;
}

unint64_t sub_29E1145C4()
{
  result = qword_2A181D1E8;
  if (!qword_2A181D1E8)
  {
    sub_29E113F34(255, &qword_2A181B128, &type metadata for PregnancyStartDateInputMethod, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D1E8);
  }

  return result;
}

unint64_t sub_29E114640()
{
  result = qword_2A181D1F0;
  if (!qword_2A181D1F0)
  {
    sub_29E113954();
    sub_29E114BA8(&qword_2A181D1F8, sub_29E113A14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D1F0);
  }

  return result;
}

uint64_t sub_29E1146E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EstimationMethodSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E11474C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EstimationMethodSelectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E112C54(a1, v6, a2);
}

unint64_t sub_29E1147CC()
{
  result = qword_2A181D200;
  if (!qword_2A181D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D200);
  }

  return result;
}

uint64_t sub_29E114820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E114888()
{
  v1 = *(type metadata accessor for EstimationMethodSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_29E113320(v2, v3);
}

uint64_t sub_29E11493C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E11499C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C18E4();
  *a1 = result;
  return result;
}

void sub_29E1149F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E114A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E114AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E114B28(uint64_t a1)
{
  sub_29E03DF6C(0, &qword_2A1819280, MEMORY[0x29EDBC0A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E114BA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E114BF8()
{
  sub_29E1172A0(319, &qword_2A1818600, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_29E2C4304();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E114CB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_29E2C1494() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(*(a3 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v8 + v12 + 1;
  if (a2 <= v17)
  {
    goto LABEL_39;
  }

  v20 = v18 + ((v13 + v14 + (v19 & ~v12)) & ~v14);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v17 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 < 2)
    {
LABEL_39:
      if (v16 > 0xFE)
      {
        v29 = (a1 + v19) & ~v12;
        if (v9 == v17)
        {
          v30 = *(*(*(a3 + 16) - 8) + 48);

          return v30(v29);
        }

        else
        {
          v31 = (*(v10 + 48))((v29 + v13 + v14) & ~v14, v11, *(a3 + 24));
          if (v31 >= 2)
          {
            return v31 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = *(a1 + v8);
        if (v28 >= 2)
        {
          return (v28 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_39;
  }

LABEL_26:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v17 + (v27 | v25) + 1;
}

void sub_29E114F64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_29E2C1494() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  v20 = v15 - 1;
  if (!v15)
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(v12 + 84);
  }

  if (v21 <= 0xFE)
  {
    v22 = 254;
  }

  else
  {
    v22 = v21;
  }

  v23 = v10 + 1;
  v24 = v10 + 1 + v16;
  if (!v15)
  {
    ++v19;
  }

  v25 = ((v17 + v18 + (v24 & ~v16)) & ~v18) + v19;
  if (a3 <= v22)
  {
    goto LABEL_25;
  }

  if (v25 <= 3)
  {
    v26 = ((a3 - v22 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v26))
    {
      v8 = 4;
      if (v22 >= a2)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v8 = v27;
    }

    else
    {
      v8 = 0;
    }

LABEL_25:
    if (v22 >= a2)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v8 = 1;
  if (v22 >= a2)
  {
LABEL_35:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      *&a1[v25] = 0;
    }

    else if (v8)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v21 > 0xFE)
      {
        v31 = &a1[v24] & ~v16;
        if (v13 == v22)
        {
          v32 = *(v12 + 56);

          v32(v31, a2);
        }

        else
        {
          v36 = *(v14 + 56);
          v37 = (v31 + v17 + v18) & ~v18;

          v36(v37, (a2 + 1), v15, v11);
        }
      }

      else if (a2 > 0xFE)
      {
        if (v23 <= 3)
        {
          v33 = ~(-1 << (8 * v23));
        }

        else
        {
          v33 = -1;
        }

        if (v10 != -1)
        {
          v34 = v33 & (a2 - 255);
          if (v23 <= 3)
          {
            v35 = v10 + 1;
          }

          else
          {
            v35 = 4;
          }

          bzero(a1, v23);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              *a1 = v34;
              a1[2] = BYTE2(v34);
            }

            else
            {
              *a1 = v34;
            }
          }

          else if (v35 == 1)
          {
            *a1 = v34;
          }

          else
          {
            *a1 = v34;
          }
        }
      }

      else
      {
        a1[v10] = -a2;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_26:
  v28 = ~v22 + a2;
  if (v25 >= 4)
  {
    bzero(a1, v25);
    *a1 = v28;
    v29 = 1;
    if (v8 > 1)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v29 = (v28 >> (8 * v25)) + 1;
  if (!v25)
  {
LABEL_65:
    if (v8 > 1)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v30 = v28 & ~(-1 << (8 * v25));
  bzero(a1, v25);
  if (v25 == 3)
  {
    *a1 = v30;
    a1[2] = BYTE2(v30);
    goto LABEL_65;
  }

  if (v25 == 2)
  {
    *a1 = v30;
    if (v8 > 1)
    {
LABEL_69:
      if (v8 == 2)
      {
        *&a1[v25] = v29;
      }

      else
      {
        *&a1[v25] = v29;
      }

      return;
    }
  }

  else
  {
    *a1 = v28;
    if (v8 > 1)
    {
      goto LABEL_69;
    }
  }

LABEL_66:
  if (v8)
  {
    a1[v25] = v29;
  }
}

uint64_t sub_29E115380(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x2A1C7C4A8](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x2A1C7C4A8](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_29E2C2B24();
}

uint64_t sub_29E115550@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = a1[2];
  v4 = a1[4];
  type metadata accessor for StyledVStackSectionBody();
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for StyledVStackSectionFooter();
  sub_29E2C4304();
  swift_getTupleTypeMetadata2();
  sub_29E2C2B14();
  swift_getWitnessTable();
  v7 = sub_29E2C28F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v19 - v12;
  sub_29E2C1BD4();
  *&v14 = v3;
  *(&v14 + 1) = v5;
  *&v15 = v4;
  *(&v15 + 1) = v6;
  v20 = v14;
  v21 = v15;
  v22 = v19[0];
  sub_29E2C28E4();
  WitnessTable = swift_getWitnessTable();
  sub_29DFA9658(v10, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_29DFA9658(v13, v7, WitnessTable);
  return (v17)(v13, v7);
}

uint64_t sub_29E115788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a6;
  v11 = type metadata accessor for StyledVStackSectionFooter();
  v67 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v56 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v13);
  v55 = &v55 - v14;
  v58 = sub_29E2C4304();
  v57 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v16 = &v55 - v15;
  v70 = *(a3 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v11;
  v60 = sub_29E2C4304();
  v64 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60);
  v62 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v72 = &v55 - v21;
  v22 = type metadata accessor for StyledVStackSectionBody();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v55 - v27;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  v76 = a5;
  v77 = a1;
  sub_29E1161AC(sub_29E1164A0, a2, a4, type metadata accessor for StyledVStackSectionBody, v25);
  WitnessTable = swift_getWitnessTable();
  v68 = v28;
  v30 = a5;
  v31 = v57;
  v59 = WitnessTable;
  sub_29DFA9658(v25, v22, WitnessTable);
  v63 = v23;
  v32 = *(v23 + 8);
  v66 = v23 + 8;
  v65 = v32;
  v32(v25, v22);
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v85 = v30;
  v33 = a1 + *(type metadata accessor for StyledVStackListSection() + 56);
  v34 = v58;
  (*(v31 + 16))(v16, v33, v58);
  v35 = v70;
  if ((*(v70 + 48))(v16, 1, a3) == 1)
  {
    (*(v31 + 8))(v16, v34);
    v36 = v62;
    (*(v67 + 56))(v62, 1, 1, v71);
    swift_getWitnessTable();
    v37 = v64;
    v38 = *(v64 + 16);
    v39 = v60;
    v38(v72, v36, v60);
    v40 = *(v37 + 8);
    v40(v36, v39);
  }

  else
  {
    v41 = *(v35 + 32);
    v42 = v61;
    v43 = v41();
    MEMORY[0x2A1C7C4A8](v43);
    *(&v55 - 6) = a2;
    *(&v55 - 5) = a3;
    *(&v55 - 4) = a4;
    *(&v55 - 3) = v30;
    *(&v55 - 2) = v42;
    v44 = v56;
    sub_29E1161AC(sub_29E1164B8, a3, v30, type metadata accessor for StyledVStackSectionFooter, v56);
    v45 = v71;
    v46 = swift_getWitnessTable();
    v47 = v55;
    sub_29DFA9658(v44, v45, v46);
    v48 = v67;
    v49 = *(v67 + 8);
    v49(v44, v45);
    sub_29DFA9658(v47, v45, v46);
    v49(v47, v45);
    v36 = v62;
    (*(v48 + 32))();
    (*(v48 + 56))(v36, 0, 1, v45);
    v50 = v64;
    v38 = *(v64 + 16);
    v39 = v60;
    v38(v72, v36, v60);
    v40 = *(v50 + 8);
    v40(v36, v39);
    (*(v70 + 8))(v61, a3);
  }

  v51 = v68;
  (*(v63 + 16))(v25, v68, v22);
  v82 = v25;
  v52 = v72;
  v38(v36, v72, v39);
  v83 = v36;
  v81[0] = v22;
  v81[1] = v39;
  v79 = v59;
  v78 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  sub_29E115380(&v82, 2uLL, v81);
  v40(v52, v39);
  v53 = v65;
  v65(v51, v22);
  v40(v36, v39);
  return v53(v25, v22);
}

uint64_t sub_29E115FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for StyledVStackListSection();
  sub_29DFA9658(a1 + *(v14 + 52), a2, a4);
  sub_29DFA9658(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

uint64_t sub_29E1160C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x2A1C7C4A8]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA9658(v8, v11, v12);
  sub_29DFA9658(v10, a3, a5);
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_29E1161AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(void, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_29E1172A0(0, &unk_2A181A6A0, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  a4(0, a2, a3);
  return a1();
}

uint64_t sub_29E11625C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1172A0(0, &unk_2A181A6A0, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v14 - v9;
  sub_29E117A44(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C1494();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E1164E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v47 = sub_29E2C1494();
  v4 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v44 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v42 = v41 - v7;
  v41[1] = a1;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = sub_29E2C28F4();
  v41[0] = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v41 - v11;
  v13 = sub_29E2C1744();
  v50 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v41 - v14;
  v49 = MEMORY[0x29EDBC8D8];
  sub_29E117AC4(255, &qword_2A181D3C0, MEMORY[0x29EDBC8D8]);
  v46 = sub_29E2C1744();
  v51 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v43 = v41 - v16;
  sub_29E117918();
  v17 = sub_29E2C1744();
  v52 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v45 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v48 = v41 - v20;
  sub_29E2C1BD4();
  v54 = v9;
  v55 = v8;
  v56 = v2;
  sub_29E2C28E4();
  sub_29E2C1FC4();
  WitnessTable = swift_getWitnessTable();
  sub_29E2C2564();
  (*(v41[0] + 8))(v12, v10);
  v22 = v42;
  sub_29E11625C(v42);
  v23 = v44;
  v24 = v47;
  (*(v4 + 104))(v44, *MEMORY[0x29EDBC360], v47);
  v25 = sub_29E2C1484();
  v26 = *(v4 + 8);
  v26(v23, v24);
  v26(v22, v24);
  v27 = objc_opt_self();
  v28 = &selRef_secondarySystemGroupedBackgroundColor;
  if ((v25 & 1) == 0)
  {
    v28 = &selRef_systemGroupedBackgroundColor;
  }

  v29 = [v27 *v28];
  v63 = sub_29E2C2654();
  sub_29E2C1FC4();
  v61 = WitnessTable;
  v62 = MEMORY[0x29EDBC490];
  v30 = swift_getWitnessTable();
  v31 = v43;
  sub_29E2C2334();

  (*(v50 + 8))(v15, v13);
  v32 = sub_29E1179B8(&qword_2A181D3D8, &qword_2A181D3C0, v49);
  v59 = v30;
  v60 = v32;
  v33 = v46;
  v34 = swift_getWitnessTable();
  v35 = v45;
  sub_29E2C2394();
  (*(v51 + 8))(v31, v33);
  v36 = sub_29E1179FC(&qword_2A181D3E0, sub_29E117918);
  v57 = v34;
  v58 = v36;
  v37 = swift_getWitnessTable();
  v38 = v48;
  sub_29DFA9658(v35, v17, v37);
  v39 = *(v52 + 8);
  v39(v35, v17);
  sub_29DFA9658(v38, v17, v37);
  return (v39)(v38, v17);
}

uint64_t sub_29E116B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StyledVStackSectionBody();
  sub_29DFA9658(a1 + *(v9 + 36), a2, a3);
  sub_29DFA9658(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_29E116C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v34[1] = *(a1 + 16);
  v37 = MEMORY[0x29EDBC8E8];
  sub_29E117AC4(255, &qword_2A181C678, MEMORY[0x29EDBC8E8]);
  v3 = sub_29E2C1744();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v34 - v5;
  sub_29E0DEF10();
  v7 = sub_29E2C1744();
  v40 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v34 - v8;
  v10 = sub_29E2C1744();
  v41 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v39 = v34 - v11;
  sub_29E117B24(255, &qword_2A18184E8, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
  v36 = v10;
  v12 = sub_29E2C1744();
  v42 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v35 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v38 = v34 - v15;
  v16 = [objc_opt_self() secondaryLabelColor];
  v52 = sub_29E2C2654();
  v17 = *(a1 + 24);
  sub_29E2C23D4();

  sub_29E2C2114();
  v18 = sub_29E1179B8(&qword_2A181C7D8, &qword_2A181C678, v37);
  v50 = v17;
  v51 = v18;
  WitnessTable = swift_getWitnessTable();
  v37 = v9;
  sub_29E2C24F4();

  (*(v4 + 8))(v6, v3);
  sub_29E117B24(0, &qword_2A181D3E8, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  LOBYTE(v3) = sub_29E2C1FF4();
  *(inited + 32) = v3;
  v21 = sub_29E2C2014();
  *(inited + 33) = v21;
  sub_29E2C2004();
  sub_29E2C2004();
  if (sub_29E2C2004() != v3)
  {
    sub_29E2C2004();
  }

  sub_29E2C2004();
  if (sub_29E2C2004() != v21)
  {
    sub_29E2C2004();
  }

  v22 = sub_29E1179FC(&qword_2A181C7E0, sub_29E0DEF10);
  v48 = WitnessTable;
  v49 = v22;
  v23 = swift_getWitnessTable();
  v24 = v39;
  v25 = v37;
  sub_29E2C2564();
  (*(v40 + 8))(v25, v7);
  v46 = v23;
  v47 = MEMORY[0x29EDBC490];
  v26 = v36;
  v27 = swift_getWitnessTable();
  v28 = v35;
  sub_29E2C24C4();
  (*(v41 + 8))(v24, v26);
  v29 = sub_29DED9BF4();
  v44 = v27;
  v45 = v29;
  v30 = swift_getWitnessTable();
  v31 = v38;
  sub_29DFA9658(v28, v12, v30);
  v32 = *(v42 + 8);
  v32(v28, v12);
  sub_29DFA9658(v31, v12, v30);
  return (v32)(v31, v12);
}

void sub_29E1172A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C1494();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E117300()
{
  sub_29E1172A0(319, &qword_2A1818600, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E1173A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_29E2C1494() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = (v12 & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v22 = *(*(*(a3 + 16) - 8) + 48);

        return v22((a1 + v12) & ~v9);
      }

      else
      {
        v21 = *(a1 + v6);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}