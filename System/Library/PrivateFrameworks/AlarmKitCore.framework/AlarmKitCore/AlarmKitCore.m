void sub_22D6B5E40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22D6B5EC0(int a1)
{
  v2 = sub_22D72E380();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + 16);
    *v6 = v9;
    v10 = *MEMORY[0x277D85200];
    v11 = v3[13];
    v11(v6, v10, v2);
    v12 = v9;
    LOBYTE(v9) = sub_22D72E390();
    v13 = v3[1];
    result = v13(v6, v2);
    if (v9)
    {
      if (a1)
      {
      }

      v14 = *(v8 + 16);
      *v6 = v14;
      v11(v6, v10, v2);
      v15 = v14;
      LOBYTE(v14) = sub_22D72E390();
      result = v13(v6, v2);
      if (v14)
      {
        *(v8 + 40) = 1;
        v16 = *(v8 + 32);
        v17[7] = 1;
        sub_22D72DC30();
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

uint64_t sub_22D6B607C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B60B4()
{
  v1 = sub_22D72D850();
  v2 = *(v1 - 8);
  v38 = *(v2 + 80);
  v3 = (v38 + 16) & ~v38;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for Alarm(0);
  v37 = *(*(v8 - 1) + 80);
  v9 = (v37 + v7 + 8) & ~v37;
  v36 = *(*(v8 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);

  v11 = *(v0 + v5);

  v12 = *(v0 + v6);

  v13 = *(v0 + v7);

  v14 = v0 + v9;
  v15 = sub_22D72D7A0();
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v9, v15);
  v16(v0 + v9 + v8[5], v15);
  v17 = *(v0 + v9 + v8[6] + 8);

  v18 = v8[8];
  v19 = sub_22D72DDB0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v9 + v18, 1, v19))
  {
    (*(v20 + 8))(v14 + v18, v19);
  }

  v21 = v8[9];
  v22 = sub_22D72DCF0();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v14 + v21, 1, v22))
  {
    (*(v23 + 8))(v14 + v21, v22);
  }

  v24 = (v36 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = v8[11];
  v27 = sub_22D72DD20();
  (*(*(v27 - 8) + 8))(v14 + v26, v27);
  v28 = v8[12];
  v29 = sub_22D72DBA0();
  (*(*(v29 - 8) + 8))(v14 + v28, v29);
  v30 = v8[13];
  v31 = sub_22D72D730();
  v32 = *(*(v31 - 8) + 8);
  v32(v14 + v30, v31);
  v32(v14 + v8[14], v31);
  v33 = *(v0 + v24);

  v34 = *(v0 + v25 + 8);

  return MEMORY[0x2821FE8E8](v0, v25 + 16, v38 | v37 | 7);
}

uint64_t sub_22D6B64A4()
{
  v1 = type metadata accessor for Alarm(0);
  v42 = *(*(v1 - 1) + 80);
  v2 = (v42 + 24) & ~v42;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_22D72D890();
  v37 = *(v4 - 8);
  v38 = v3;
  v40 = v4;
  v41 = *(v37 + 80);
  v5 = (v3 + v41 + 16) & ~v41;
  v6 = *(v37 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178) - 8);
  v8 = *(v7 + 80);
  v35 = v5;
  v9 = v5 + v6 + v8;
  v36 = *(v7 + 64);
  v10 = *(v0 + 16);

  v11 = v0 + v2;
  v12 = sub_22D72D7A0();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v13(v11 + v1[5], v12);
  v14 = *(v11 + v1[6] + 8);

  v15 = v1[8];
  v16 = sub_22D72DDB0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v11 + v15, 1, v16))
  {
    (*(v17 + 8))(v11 + v15, v16);
  }

  v39 = v8;
  v34 = v9 & ~v8;
  v18 = v1[9];
  v19 = sub_22D72DCF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v11 + v18, 1, v19))
  {
    (*(v20 + 8))(v11 + v18, v19);
  }

  v21 = v1[11];
  v22 = sub_22D72DD20();
  (*(*(v22 - 8) + 8))(v11 + v21, v22);
  v23 = v1[12];
  v24 = sub_22D72DBA0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v26(v11 + v23, v24);
  v27 = v1[13];
  v28 = sub_22D72D730();
  v29 = *(*(v28 - 8) + 8);
  v29(v11 + v27, v28);
  v29(v11 + v1[14], v28);
  v30 = *(v0 + v38 + 8);

  (*(v37 + 8))(v0 + v35, v40);
  if (!(*(v25 + 48))(v0 + v34, 1, v24))
  {
    v26(v0 + v34, v24);
  }

  v31 = (v36 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v0 + v31);

  return MEMORY[0x2821FE8E8](v0, v31 + 8, v42 | v41 | v39 | 7);
}

uint64_t sub_22D6B6938()
{
  v1 = sub_22D72D910();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B69FC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_22D72D7A0();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[5], v7);
  v9 = *(v0 + v3 + v1[6] + 8);

  v10 = v1[8];
  v11 = sub_22D72DDB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v1[9];
  v14 = sub_22D72DCF0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v16 = v1[11];
  v17 = sub_22D72DD20();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);
  v18 = v1[12];
  v19 = sub_22D72DBA0();
  (*(*(v19 - 8) + 8))(v6 + v18, v19);
  v20 = v1[13];
  v21 = sub_22D72D730();
  v22 = *(*(v21 - 8) + 8);
  v22(v6 + v20, v21);
  v22(v6 + v1[14], v21);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D6B6CF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22D6B6D08()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_22D72D7A0();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[5], v7);
  v9 = *(v0 + v3 + v1[6] + 8);

  v10 = v1[8];
  v11 = sub_22D72DDB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v1[9];
  v14 = sub_22D72DCF0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[11];
  v18 = sub_22D72DD20();
  (*(*(v18 - 8) + 8))(v6 + v17, v18);
  v19 = v1[12];
  v20 = sub_22D72DBA0();
  (*(*(v20 - 8) + 8))(v6 + v19, v20);
  v21 = v1[13];
  v22 = sub_22D72D730();
  v23 = *(*(v22 - 8) + 8);
  v23(v6 + v21, v22);
  v23(v6 + v1[14], v22);
  v24 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t sub_22D6B7018()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_22D72D850();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 80);
  v31 = *(v33 + 64);
  v7 = *(v0 + 16);

  v8 = v0 + v3;
  v9 = sub_22D72D7A0();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3, v9);
  v10(v0 + v3 + v1[5], v9);
  v11 = *(v0 + v3 + v1[6] + 8);

  v12 = v1[8];
  v13 = sub_22D72DDB0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v8 + v12, v13);
  }

  v15 = v1[9];
  v16 = sub_22D72DCF0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v8 + v15, 1, v16))
  {
    (*(v17 + 8))(v8 + v15, v16);
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v6 + 16) & ~v6;
  v20 = (v31 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v2 | v6;
  v21 = v1[11];
  v22 = sub_22D72DD20();
  (*(*(v22 - 8) + 8))(v8 + v21, v22);
  v23 = v1[12];
  v24 = sub_22D72DBA0();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);
  v25 = v1[13];
  v26 = sub_22D72D730();
  v27 = *(*(v26 - 8) + 8);
  v27(v8 + v25, v26);
  v27(v8 + v1[14], v26);
  v28 = *(v0 + v18 + 8);

  (*(v33 + 8))(v0 + v19, v34);
  v29 = *(v0 + v20 + 8);

  return MEMORY[0x2821FE8E8](v0, v20 + 16, v32 | 7);
}

uint64_t sub_22D6B73CC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v33 = *(*(v1 - 1) + 64);
  v4 = sub_22D72D850();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 80);
  v6 = *(v35 + 64);
  v7 = *(v0 + 16);

  v8 = v0 + v3;
  v9 = sub_22D72D7A0();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3, v9);
  v10(v0 + v3 + v1[5], v9);
  v11 = *(v0 + v3 + v1[6] + 8);

  v12 = v1[8];
  v13 = sub_22D72DDB0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v8 + v12, v13);
  }

  v15 = v1[9];
  v16 = sub_22D72DCF0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v8 + v15, 1, v16))
  {
    (*(v17 + 8))(v8 + v15, v16);
  }

  v18 = (v3 + v33 + v5) & ~v5;
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = v2 | v5;
  v21 = v1[11];
  v22 = sub_22D72DD20();
  (*(*(v22 - 8) + 8))(v8 + v21, v22);
  v23 = v1[12];
  v24 = sub_22D72DBA0();
  (*(*(v24 - 8) + 8))(v8 + v23, v24);
  v25 = v1[13];
  v26 = sub_22D72D730();
  v27 = *(*(v26 - 8) + 8);
  v27(v8 + v25, v26);
  v27(v8 + v1[14], v26);
  (*(v35 + 8))(v0 + v18, v36);
  v28 = *(v0 + v19 + 8);

  v29 = *(v0 + v20);

  v30 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v0 + v30 + 8);

  return MEMORY[0x2821FE8E8](v0, v30 + 16, v34 | 7);
}

uint64_t sub_22D6B77A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D6B77E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B7818()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7858()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_22D72D7A0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v7(v0 + v3 + v1[5], v6);
  v8 = *(v0 + v3 + v1[6] + 8);

  v9 = v1[8];
  v10 = sub_22D72DDB0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[9];
  v13 = sub_22D72DCF0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v1[11];
  v16 = sub_22D72DD20();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = v1[12];
  v18 = sub_22D72DBA0();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = v1[13];
  v20 = sub_22D72D730();
  v21 = *(*(v20 - 8) + 8);
  v21(v5 + v19, v20);
  v21(v5 + v1[14], v20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D6B7B44()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B7C3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B7C74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7CB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7CEC()
{
  v1 = sub_22D72DDD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22D6B7E4C()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B7ED8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B7F20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B7F60()
{
  v1 = sub_22D72DDC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B8024()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Alarm(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v28 = *(*(v6 - 1) + 64);
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = v0 + v8;
  v9(v0 + v8, v1);
  v9(v0 + v8 + v6[5], v1);
  v12 = *(v0 + v8 + v6[6] + 8);

  v13 = v6[8];
  v14 = sub_22D72DDB0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v8 + v13, 1, v14))
  {
    (*(v15 + 8))(v11 + v13, v14);
  }

  v16 = v6[9];
  v17 = sub_22D72DCF0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v11 + v16, 1, v17))
  {
    (*(v18 + 8))(v11 + v16, v17);
  }

  v19 = v3 | v7;
  v20 = v6[11];
  v21 = sub_22D72DD20();
  (*(*(v21 - 8) + 8))(v11 + v20, v21);
  v22 = v6[12];
  v23 = sub_22D72DBA0();
  (*(*(v23 - 8) + 8))(v11 + v22, v23);
  v24 = v6[13];
  v25 = sub_22D72D730();
  v26 = *(*(v25 - 8) + 8);
  v26(v11 + v24, v25);
  v26(v11 + v6[14], v25);

  return MEMORY[0x2821FE8E8](v0, v8 + v28, v19 | 7);
}

uint64_t sub_22D6B8388()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B83CC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_22D72D7A0();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[5], v7);
  v9 = *(v0 + v3 + v1[6] + 8);

  v10 = v1[8];
  v11 = sub_22D72DDB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v1[9];
  v14 = sub_22D72DCF0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[11];
  v18 = sub_22D72DD20();
  (*(*(v18 - 8) + 8))(v6 + v17, v18);
  v19 = v1[12];
  v20 = sub_22D72DBA0();
  (*(*(v20 - 8) + 8))(v6 + v19, v20);
  v21 = v1[13];
  v22 = sub_22D72D730();
  v23 = *(*(v22 - 8) + 8);
  v23(v6 + v21, v22);
  v23(v6 + v1[14], v22);
  v24 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t sub_22D6B86F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B8738()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22D6B8780()
{
  v1 = sub_22D72E100();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B884C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22D72E100();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22D6B8930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22D72E100();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22D6B89D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8A10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8A4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8A9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8AD4()
{
  v1 = sub_22D72D730();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B8B98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8BD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8C1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22D6B8C54()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22D6B8C9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8CD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8D5C()
{
  MEMORY[0x2318D0490](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8D98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8DD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8E0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8E44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B8E94()
{
  MEMORY[0x2318D0490](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8ED0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B8F0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_15;
  }

  v17 = sub_22D72DD20();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_15;
  }

  v18 = sub_22D72DBA0();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[12];
    goto LABEL_15;
  }

  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[13];

  return v20(v21, a2, v19);
}

uint64_t sub_22D6B9174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_22D72D7A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v17 = sub_22D72DD20();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_13;
  }

  v18 = sub_22D72DBA0();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[12];
    goto LABEL_13;
  }

  v19 = sub_22D72D730();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[13];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_22D6B93E8()
{
  MEMORY[0x2318D0490](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B9420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6B9460()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B94A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6B94DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_22D6B9538(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_22D6B9594()
{
  v1 = sub_22D72D7A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D6B9678()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D6B96B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22D6B9704()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D6B9774()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D6BA68C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D6BA6AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281457198)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281457198);
    }
  }
}

uint64_t sub_22D6BA774()
{
  v1 = *v0;
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](v1);
  return sub_22D72EA40();
}

uint64_t sub_22D6BA7BC()
{
  v1 = *v0;
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](v1);
  return sub_22D72EA40();
}

uint64_t sub_22D6BA810()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v5 = *(v0 + 208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3C0, &qword_22D730270);
    sub_22D6D58D4(&unk_281457220, &qword_27D9FF3C0, &qword_22D730270);
    v2 = v0;
    v1 = sub_22D72DC70();
    v3 = *(v0 + 200);
    *(v2 + 200) = v1;
  }

  return v1;
}

uint64_t sub_22D6BA8D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23 - v2;
  v4 = sub_22D72DAB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3F8, &qword_22D7302B8);
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF400, &qword_22D7302C0);
  v25 = *(v13 - 8);
  v26 = v13;
  v14 = *(v25 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_22D72DA80();
  sub_22D72DA70();
  sub_22D72DAA0();
  v17 = sub_22D72DA50();
  (*(v5 + 8))(v8, v4);

  v28 = v17;
  v29 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF408, &qword_22D7302C8);
  sub_22D6D58D4(&unk_281457240, &qword_27D9FF408, &qword_22D7302C8);
  sub_22D72DC80();

  v28 = *(v27 + 216);
  v18 = v28;
  v19 = sub_22D72E5E0();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_2814572A8, &qword_27D9FF3F8, &qword_22D7302B8);
  sub_22D6D5884(&qword_281457180, sub_22D6D5838);
  v20 = v18;
  sub_22D72DCA0();
  sub_22D6D5984(v3, &qword_27D9FF9B0, &qword_22D7302B0);

  (*(v24 + 8))(v12, v9);
  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457270, &qword_27D9FF400, &qword_22D7302C0);
  v21 = v26;
  sub_22D72DCB0();

  (*(v25 + 8))(v16, v21);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6BAEF8()
{
  v0 = sub_22D72DAB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3C8, &qword_22D730278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  sub_22D72DA80();
  sub_22D72DA70();
  sub_22D72DAA0();
  v10 = sub_22D72DA60();
  (*(v1 + 8))(v4, v0);

  v12[2] = v10;
  v12[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3D0, &qword_22D730280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3D8, &qword_22D730288);
  sub_22D6D58D4(&qword_281457238, &qword_27D9FF3D0, &qword_22D730280);
  sub_22D6D58D4(&unk_2814571F0, &qword_27D9FF3D8, &qword_22D730288);
  sub_22D72DC90();

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_2814572A0, &qword_27D9FF3C8, &qword_22D730278);
  sub_22D72DCB0();

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6BB384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Alarm(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(v3 + 216);
  sub_22D6D56D8(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alarm);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  sub_22D6D3C4C(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22D6D52CC;
  *(v14 + 24) = v12;
  aBlock[4] = sub_22D6D5CDC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6BEF78;
  aBlock[3] = &block_descriptor_103;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v10, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D6BB5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_22D72D7A0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a2);
  sub_22D6D56D8(a2, v11, type metadata accessor for Alarm);
  v17 = type metadata accessor for Alarm(0);
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  swift_beginAccess();
  sub_22D6BB998(v11, v15);
  swift_endAccess();
  swift_beginAccess();
  if (*(*(a1 + 232) + 16) && (v18 = *(a1 + 232), , sub_22D6CC49C(a2), v20 = v19, , (v20 & 1) != 0))
  {
    return sub_22D6BDD7C(a2, a3, a4);
  }

  else
  {
    return sub_22D6BBE4C(a2, a3, a4);
  }
}

uint64_t sub_22D6BB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_22D6CEC5C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_22D72D7A0();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_22D6CC49C(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_22D6CF9EC();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_22D72D7A0();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_22D6CE0EC(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_22D72D7A0();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_22D6BB998(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Alarm(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22D6D5984(a1, &qword_27D9FF550, &qword_22D730130);
    sub_22D6CC078(a2, v8);
    v14 = sub_22D72D7A0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22D6D5984(v8, &qword_27D9FF550, &qword_22D730130);
  }

  else
  {
    sub_22D6D3C4C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22D6CEE38(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_22D72D7A0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22D6BBBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22D6D5254(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22D6CF19C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_22D6D5984(a1, &qword_27D9FF9F0, &unk_22D730240);
    sub_22D6CC200(a2, a3, v10);

    return sub_22D6D5984(v10, &qword_27D9FF9F0, &unk_22D730240);
  }

  return result;
}

uint64_t sub_22D6BBC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_22D72E100();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_22D6D5984(a1, &qword_27D9FF398, qword_22D730B40);
    sub_22D6CC2A4(a2, a3, v10);

    return sub_22D6D5984(v10, &qword_27D9FF398, qword_22D730B40);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22D6CF2EC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22D6BBE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v227 = a2;
  v228 = a3;
  v232 = a1;
  v4 = sub_22D72E300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v224 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E370();
  v225 = *(v8 - 8);
  v9 = v225[8];
  MEMORY[0x28223BE20](v8);
  v223 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_22D72D850();
  v206 = *(v211 - 8);
  v11 = *(v206 + 64);
  v12 = MEMORY[0x28223BE20](v211);
  v204 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v210 = &v191 - v15;
  v202 = v16;
  MEMORY[0x28223BE20](v14);
  v205 = &v191 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v208 = &v191 - v20;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2A0, &qword_22D730148);
  v212 = *(v213 - 8);
  v21 = *(v212 + 64);
  v22 = MEMORY[0x28223BE20](v213);
  v209 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v230 = &v191 - v24;
  v231 = sub_22D72DF80();
  v215 = *(v231 - 8);
  v25 = *(v215 + 64);
  v26 = MEMORY[0x28223BE20](v231);
  v207 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v226 = &v191 - v29;
  MEMORY[0x28223BE20](v28);
  v214 = &v191 - v30;
  v219 = sub_22D72DD20();
  v218 = *(v219 - 8);
  v31 = *(v218 + 64);
  MEMORY[0x28223BE20](v219);
  v217 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for Alarm(0);
  v200 = *(v221 - 8);
  v33 = *(v200 + 64);
  v34 = MEMORY[0x28223BE20](v221);
  v220 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v203 = &v191 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v191 - v39;
  v201 = v41;
  MEMORY[0x28223BE20](v38);
  v43 = &v191 - v42;
  v44 = sub_22D72E380();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = (&v191 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v3[27];
  *v48 = v49;
  (*(v45 + 104))(v48, *MEMORY[0x277D85200], v44);
  v50 = v49;
  LOBYTE(v49) = sub_22D72E390();
  (*(v45 + 8))(v48, v44);
  if (v49)
  {
    v229 = v3;
    v222 = v8;
    if (qword_2814572B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v51 = sub_22D72DBE0();
  v52 = __swift_project_value_buffer(v51, qword_2814580B8);
  v53 = v232;
  sub_22D6D56D8(v232, v43, type metadata accessor for Alarm);
  sub_22D6D56D8(v53, v40, type metadata accessor for Alarm);
  v216 = v52;
  v54 = sub_22D72DBB0();
  v55 = sub_22D72E5A0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    aBlock = v199;
    *v56 = 136446466;
    sub_22D72D7A0();
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v57 = sub_22D72E960();
    v59 = v58;
    sub_22D6D5740(v43, type metadata accessor for Alarm);
    v60 = sub_22D72891C(v57, v59, &aBlock);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2082;
    (*(v218 + 16))(v217, &v40[*(v221 + 44)], v219);
    v61 = sub_22D72E4C0();
    v63 = v62;
    v53 = v232;
    sub_22D6D5740(v40, type metadata accessor for Alarm);
    v64 = sub_22D72891C(v61, v63, &aBlock);

    *(v56 + 14) = v64;
    _os_log_impl(&dword_22D6B4000, v54, v55, "%{public}s: Creating activity for alarm with state %{public}s", v56, 0x16u);
    v65 = v199;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v65, -1, -1);
    MEMORY[0x2318D0420](v56, -1, -1);
  }

  else
  {

    sub_22D6D5740(v40, type metadata accessor for Alarm);
    sub_22D6D5740(v43, type metadata accessor for Alarm);
  }

  v66 = v231;
  v67 = v229;
  v68 = sub_22D6C038C(v53);
  v69 = v226;
  if (v68)
  {
    v70 = v53;
    sub_22D6C101C(v53, v226);
    v216 = 0;
    v192 = v5;
    v193 = v4;
    v87 = v215;
    v88 = v214;
    (*(v215 + 32))(v214, v69, v66);
    sub_22D6BFFD0(v70);
    (*(v87 + 16))(v207, v88, v66);
    v89 = sub_22D72D730();
    (*(*(v89 - 8) + 56))(v208, 1, 1, v89);
    v90 = MEMORY[0x277CB9A20];
    v91 = sub_22D6D5884(&qword_2814571D8, MEMORY[0x277CB9A20]);
    v92 = sub_22D6D5884(&qword_27D9FF2A8, v90);
    v93 = sub_22D6D5884(&qword_27D9FF2B0, v90);
    v208 = v91;
    v207 = v92;
    v199 = v93;
    sub_22D72DA90();
    v226 = 0x800000022D731F50;
    v94 = (v70 + *(v221 + 24));
    v95 = *v94;
    v96 = v94[1];
    v97 = v67[34];
    v98 = v67[35];
    __swift_project_boxed_opaque_existential_1(v67 + 31, v97);
    v99 = *(v98 + 16);

    v100 = v99(v97, v98);
    if ((v100 & 1) != 0 && (sub_22D6CAF64() & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2B8, &qword_22D730158);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
      v196 = v116;
      v117 = *(*(v116 - 8) + 72);
      v118 = (*(*(v116 - 8) + 80) + 32) & ~*(*(v116 - 8) + 80);
      v217 = (4 * v117);
      v119 = swift_allocObject();
      v197 = v95;
      v120 = v119;
      *(v119 + 16) = xmmword_22D730020;
      v121 = v119 + v118;
      v122 = v119 + v118 + *(v116 + 48);
      v123 = *MEMORY[0x277CB94F8];
      v124 = sub_22D72D9B0();
      v125 = *(*(v124 - 8) + 104);
      v198 = (v124 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      LODWORD(v221) = v123;
      (v125)(v121, v123, v124);
      *v122 = v197;
      *(v122 + 8) = v96;
      *(v122 + 16) = 0;
      v126 = v196;
      v127 = v121 + v117 + *(v196 + 48);
      LODWORD(v220) = *MEMORY[0x277CB94F0];
      v125();
      v110 = v226;
      *v127 = 0xD000000000000014;
      *(v127 + 8) = v110;
      *(v127 + 16) = 1;
      v128 = v121 + 2 * v117 + *(v126 + 48);
      LODWORD(v219) = *MEMORY[0x277CB94D8];
      v125();
      *v128 = 0xD000000000000014;
      *(v128 + 8) = v110;
      *(v128 + 16) = 1;
      v129 = v121 + 3 * v117;
      v130 = v196;
      v131 = v129 + *(v196 + 48);
      LODWORD(v218) = *MEMORY[0x277CB94E0];
      v125();
      v132 = v197;
      *v131 = v197;
      *(v131 + 8) = v96;
      *(v131 + 16) = 0;
      v133 = &v217[v121 + *(v130 + 48)];
      LODWORD(v217) = *MEMORY[0x277CB94E8];
      v194 = v124;
      v125();
      *v133 = v132;
      *(v133 + 1) = v96;
      v133[16] = 0;
      swift_bridgeObjectRetain_n();
      v197 = sub_22D6D3A48(v120);
      swift_setDeallocating();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2B8, &qword_22D730158);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
      v102 = *(*(v101 - 8) + 72);
      v103 = (*(*(v101 - 8) + 80) + 32) & ~*(*(v101 - 8) + 80);
      v217 = (4 * v102);
      v104 = swift_allocObject();
      v196 = v104;
      *(v104 + 16) = xmmword_22D730020;
      v105 = v104 + v103;
      v106 = v104 + v103 + *(v101 + 48);
      v107 = *MEMORY[0x277CB94F8];
      v108 = sub_22D72D9B0();
      v109 = *(*(v108 - 8) + 104);
      v198 = (v108 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      LODWORD(v221) = v107;
      (v109)(v105, v107, v108);
      v110 = v226;
      *v106 = 0xD000000000000014;
      *(v106 + 8) = v110;
      *(v106 + 16) = 1;
      v111 = v105 + v102 + *(v101 + 48);
      LODWORD(v220) = *MEMORY[0x277CB94F0];
      v109();
      *v111 = 0xD000000000000014;
      *(v111 + 8) = v110;
      *(v111 + 16) = 1;
      v112 = v105 + 2 * v102 + *(v101 + 48);
      LODWORD(v219) = *MEMORY[0x277CB94D8];
      v109();
      *v112 = 0xD000000000000014;
      *(v112 + 8) = v110;
      *(v112 + 16) = 1;
      v113 = v196;
      v114 = v105 + 3 * v102 + *(v101 + 48);
      LODWORD(v218) = *MEMORY[0x277CB94E0];
      v109();
      *v114 = 0xD000000000000014;
      *(v114 + 8) = v110;
      *(v114 + 16) = 1;
      v115 = &v217[v105 + *(v101 + 48)];
      LODWORD(v217) = *MEMORY[0x277CB94E8];
      v194 = v108;
      v109();
      *v115 = 0xD000000000000014;
      *(v115 + 1) = v110;
      v115[16] = 1;
      v197 = sub_22D6D3A48(v113);
      swift_setDeallocating();
    }

    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2B8, &qword_22D730158);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
    v135 = *(*(v134 - 8) + 72);
    v136 = (*(*(v134 - 8) + 80) + 32) & ~*(*(v134 - 8) + 80);
    v196 = 4 * v135;
    v137 = swift_allocObject();
    v195 = xmmword_22D730020;
    *(v137 + 16) = xmmword_22D730020;
    v138 = v137 + v136;
    v139 = v137 + v136 + *(v134 + 48);
    sub_22D72D9B0();
    v140 = v194;
    v141 = *(v194 - 8);
    v142 = *(v141 + 104);
    v143 = v141 + 104;
    (v142)(v138, v221, v194);
    *v139 = 0xD000000000000014;
    *(v139 + 8) = v110;
    v144 = v110;
    *(v139 + 16) = 1;
    v145 = v138 + v135 + *(v134 + 48);
    v142();
    *v145 = 0xD000000000000014;
    *(v145 + 8) = v110;
    *(v145 + 16) = 1;
    v146 = v138 + 2 * v135 + *(v134 + 48);
    v142();
    *v146 = 0xD000000000000014;
    *(v146 + 8) = v144;
    *(v146 + 16) = 1;
    v147 = v138 + 3 * v135 + *(v134 + 48);
    v142();
    *v147 = 0xD000000000000014;
    *(v147 + 8) = v144;
    *(v147 + 16) = 1;
    v148 = v138 + v196 + *(v134 + 48);
    v142();
    *v148 = 0xD000000000000014;
    *(v148 + 8) = v144;
    *(v148 + 16) = 1;
    v196 = sub_22D6D3A48(v137);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22D72D9E0();
    v198 = swift_allocBox();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C8, &qword_22D730168);
    v149 = *(v143 - 32);
    v150 = (*(v143 - 24) + 32) & ~*(v143 - 24);
    v151 = swift_allocObject();
    *(v151 + 16) = v195;
    v152 = v151 + v150;
    (v142)(v151 + v150, v221, v140);
    (v142)(v152 + v149, v220, v140);
    (v142)(v152 + 2 * v149, v219, v140);
    (v142)(v152 + 3 * v149, v218, v140);
    (v142)(v152 + 4 * v149, v217, v140);
    sub_22D72D9C0();
    sub_22D72D9D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D0, &qword_22D730170);
    v153 = sub_22D72D920();
    v154 = *(v153 - 8);
    v155 = *(v154 + 72);
    v156 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_22D730030;
    v158 = (v157 + v156);
    *v158 = 0;
    v158[1] = 0;
    v159 = *(v154 + 104);
    (v159)(v158, *MEMORY[0x277CB9338], v153);
    v160 = (v158 + v155);
    *v160 = 0xD000000000000014;
    v160[1] = v226;
    v159();
    v161 = v212;
    v162 = v213;
    (*(v212 + 16))(v209, v230, v213);
    v163 = v210;
    v164 = v216;
    sub_22D72D840();
    if (v164)
    {

      v165 = v229[28];
      v166 = swift_allocObject();
      v167 = v228;
      v166[2] = v227;
      v166[3] = v167;
      v166[4] = v164;
      v238 = sub_22D6D5CB8;
      v239 = v166;
      aBlock = MEMORY[0x277D85DD0];
      v235 = 1107296256;
      v236 = sub_22D6C0FD8;
      v237 = &block_descriptor_41;
      v168 = _Block_copy(&aBlock);

      v169 = v164;
      v170 = v223;
      sub_22D72E330();
      v233 = MEMORY[0x277D84F90];
      sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
      sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
      v171 = v224;
      v172 = v164;
      v173 = v193;
      sub_22D72E6E0();
      MEMORY[0x2318CF7A0](0, v170, v171, v168);
      _Block_release(v168);

      (*(v192 + 8))(v171, v173);
      (v225[1])(v170, v222);
      (*(v161 + 8))(v230, v162);
      (*(v215 + 8))(v214, v231);
    }

    else
    {
      v174 = v206;
      v224 = *(v206 + 32);
      v175 = v205;
      v176 = v211;
      (v224)(v205, v163, v211);
      v225 = __swift_project_boxed_opaque_existential_1(v229 + 12, v229[15]);
      (*(v174 + 16))(v204, v175, v176);
      sub_22D6D56D8(v232, v203, type metadata accessor for Alarm);
      v177 = (*(v174 + 80) + 16) & ~*(v174 + 80);
      v223 = ((v202 + v177 + 7) & 0xFFFFFFFFFFFFFFF8);
      v178 = (v223 + 15) & 0xFFFFFFFFFFFFFFF8;
      v179 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
      v180 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
      v181 = (*(v200 + 80) + v180 + 8) & ~*(v200 + 80);
      v182 = (v201 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v226 = 0;
      v183 = swift_allocObject();
      (v224)(v183 + v177, v204, v211);
      *&v223[v183] = v197;
      *(v183 + v178) = v196;
      *(v183 + v179) = v198;
      *(v183 + v180) = v157;
      v184 = sub_22D6D3C4C(v203, v183 + v181);
      *(v183 + v182) = v229;
      v185 = (v183 + ((v182 + 15) & 0xFFFFFFFFFFFFFFF8));
      v186 = v228;
      *v185 = v227;
      v185[1] = v186;
      v187 = *(*v225 + 56);
      v188 = MEMORY[0x28223BE20](v184);
      *(&v191 - 4) = v189;
      *(&v191 - 3) = v232;
      *(&v191 - 2) = sub_22D6D3D94;
      *(&v191 - 1) = v183;
      MEMORY[0x28223BE20](v188);
      *(&v191 - 2) = sub_22D6D3EF4;
      *(&v191 - 1) = v190;

      os_unfair_lock_lock(v187 + 4);
      sub_22D6D3F14();
      os_unfair_lock_unlock(v187 + 4);

      (*(v206 + 8))(v205, v211);
      (*(v212 + 8))(v230, v213);
      (*(v215 + 8))(v214, v231);
    }
  }

  else
  {
    v71 = v220;
    sub_22D6D56D8(v53, v220, type metadata accessor for Alarm);
    v72 = sub_22D72DBB0();
    v73 = sub_22D72E5A0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v74 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v76 = sub_22D72E960();
      v78 = v77;
      sub_22D6D5740(v71, type metadata accessor for Alarm);
      v79 = sub_22D72891C(v76, v78, &aBlock);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_22D6B4000, v72, v73, "%{public}s: Cannot create activity; all slots are taken", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x2318D0420](v75, -1, -1);
      MEMORY[0x2318D0420](v74, -1, -1);
    }

    else
    {

      sub_22D6D5740(v71, type metadata accessor for Alarm);
    }

    v80 = v67[28];
    v81 = swift_allocObject();
    v82 = v228;
    *(v81 + 16) = v227;
    *(v81 + 24) = v82;
    v238 = sub_22D6D5CD4;
    v239 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v235 = 1107296256;
    v236 = sub_22D6C0FD8;
    v237 = &block_descriptor;
    v83 = _Block_copy(&aBlock);

    v84 = v223;
    sub_22D72E330();
    v233 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v85 = v224;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v84, v85, v83);
    _Block_release(v83);
    (*(v5 + 8))(v85, v4);
    (v225[1])(v84, v222);
  }
}

uint64_t sub_22D6BDD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = a2;
  v136 = a3;
  v130 = sub_22D72E300();
  v5 = *(v130 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v130);
  v132 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E370();
  v133 = *(v8 - 8);
  v134 = v8;
  v9 = v133[8];
  MEMORY[0x28223BE20](v8);
  v131 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22D72D850();
  v115 = *(v117 - 8);
  v11 = *(v115 + 64);
  v12 = MEMORY[0x28223BE20](v117);
  v114 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v120 = &v106 - v14;
  MEMORY[0x28223BE20](v13);
  v116 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v106 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2A0, &qword_22D730148);
  v129 = *(v124 - 8);
  v19 = *(v129 + 64);
  v20 = MEMORY[0x28223BE20](v124);
  v118 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v123 = &v106 - v22;
  v126 = sub_22D72DF80();
  v128 = *(v126 - 8);
  v23 = *(v128 + 64);
  v24 = MEMORY[0x28223BE20](v126);
  v122 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v106 - v27;
  MEMORY[0x28223BE20](v26);
  v127 = &v106 - v29;
  v30 = sub_22D72DD20();
  v121 = *(v30 - 8);
  v31 = *(v121 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Alarm(0);
  v112 = *(v34 - 8);
  v35 = *(v112 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v113 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v106 - v37;
  swift_beginAccess();
  v137 = v3;
  v39 = v3[29];
  if (!*(v39 + 16))
  {
    goto LABEL_8;
  }

  v125 = a1;
  v40 = sub_22D6CC49C(a1);
  if ((v41 & 1) == 0)
  {

LABEL_8:
    v56 = v137[28];
    v57 = swift_allocObject();
    v58 = v136;
    *(v57 + 16) = v135;
    *(v57 + 24) = v58;
    v143 = sub_22D6D5CE0;
    v144 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_22D6C0FD8;
    v142 = &block_descriptor_109;
    v59 = _Block_copy(&aBlock);

    v60 = v131;
    sub_22D72E330();
    v138 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v61 = v132;
    v62 = v130;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v60, v61, v59);
    _Block_release(v59);
    (*(v5 + 8))(v61, v62);
    (v133[1])(v60, v134);
  }

  v111 = v28;
  v42 = (*(v39 + 56) + 16 * v40);
  v43 = v42[1];
  v109 = *v42;

  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v44 = sub_22D72DBE0();
  __swift_project_value_buffer(v44, qword_2814580B8);
  sub_22D6D56D8(v125, v38, type metadata accessor for Alarm);

  v45 = sub_22D72DBB0();
  v46 = sub_22D72E5A0();

  v108 = v46;
  v47 = os_log_type_enabled(v45, v46);
  v110 = v5;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    aBlock = v106;
    *v48 = 136446722;
    v107 = v45;
    v49 = v109;
    *(v48 + 4) = sub_22D72891C(v109, v43, &aBlock);
    *(v48 + 12) = 2082;
    *(v48 + 14) = sub_22D72891C(v49, v43, &aBlock);
    *(v48 + 22) = 2082;
    (*(v121 + 16))(v33, &v38[*(v34 + 44)], v30);
    v50 = sub_22D72E4C0();
    v52 = v51;
    sub_22D6D5740(v38, type metadata accessor for Alarm);
    v53 = sub_22D72891C(v50, v52, &aBlock);

    *(v48 + 24) = v53;
    v54 = v107;
    _os_log_impl(&dword_22D6B4000, v107, v108, "Updating activity %{public}s for alarm %{public}s with state %{public}s", v48, 0x20u);
    v55 = v106;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v55, -1, -1);
    MEMORY[0x2318D0420](v48, -1, -1);
  }

  else
  {

    sub_22D6D5740(v38, type metadata accessor for Alarm);
  }

  v63 = v129;
  v64 = v128;
  v65 = v111;
  v66 = v125;
  sub_22D6BFFD0(v125);
  sub_22D6C101C(v66, v65);
  v67 = v126;
  v68 = v127;
  v121 = v43;
  (*(v64 + 32))(v127, v65, v126);
  (*(v64 + 16))(v122, v68, v67);
  v70 = sub_22D72D730();
  (*(*(v70 - 8) + 56))(v119, 1, 1, v70);
  v71 = MEMORY[0x277CB9A20];
  sub_22D6D5884(&qword_2814571D8, MEMORY[0x277CB9A20]);
  sub_22D6D5884(&qword_27D9FF2A8, v71);
  sub_22D6D5884(&qword_27D9FF2B0, v71);
  v72 = v63;
  v73 = v123;
  v122 = 0;
  sub_22D72DA90();
  (*(v72 + 16))(v118, v73, v124);
  v74 = v120;
  v75 = v122;
  sub_22D72D840();
  v122 = v75;
  if (v75)
  {
    v76 = v67;

    v77 = v137[28];
    v78 = swift_allocObject();
    v79 = v136;
    v78[2] = v135;
    v78[3] = v79;
    v80 = v122;
    v78[4] = v122;
    v143 = sub_22D6D5CB8;
    v144 = v78;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_22D6C0FD8;
    v142 = &block_descriptor_121;
    v81 = _Block_copy(&aBlock);

    v82 = v80;
    v83 = v131;
    sub_22D72E330();
    v138 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v84 = v132;
    v85 = v130;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v83, v84, v81);
    _Block_release(v81);

    (*(v110 + 8))(v84, v85);
    (v133[1])(v83, v134);
    (*(v129 + 8))(v123, v124);
    (*(v128 + 8))(v127, v76);
  }

  v86 = v115;
  v134 = *(v115 + 32);
  v87 = v116;
  v88 = v117;
  v134(v116, v74, v117);
  v89 = v137;
  v133 = __swift_project_boxed_opaque_existential_1(v137 + 12, v137[15]);
  v90 = v113;
  sub_22D6D56D8(v125, v113, type metadata accessor for Alarm);
  v91 = v114;
  (*(v86 + 16))(v114, v87, v88);
  v92 = (*(v112 + 80) + 24) & ~*(v112 + 80);
  v93 = (v35 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = (*(v86 + 80) + v93 + 16) & ~*(v86 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = v89;
  sub_22D6D3C4C(v90, v95 + v92);
  v96 = (v95 + v93);
  v97 = v136;
  *v96 = v135;
  v96[1] = v97;
  v98 = v117;
  v99 = (v134)(v95 + v94, v91, v117);
  v100 = (v95 + ((v11 + v94 + 7) & 0xFFFFFFFFFFFFFFF8));
  v101 = v121;
  *v100 = v109;
  v100[1] = v101;
  v102 = *(*v133 + 56);
  v103 = MEMORY[0x28223BE20](v99);
  *(&v106 - 4) = v104;
  *(&v106 - 3) = v125;
  *(&v106 - 2) = sub_22D6D53A0;
  *(&v106 - 1) = v95;
  MEMORY[0x28223BE20](v103);
  *(&v106 - 2) = sub_22D6D5CBC;
  *(&v106 - 1) = v105;

  os_unfair_lock_lock(v102 + 4);
  sub_22D6D5D38();
  os_unfair_lock_unlock(v102 + 4);

  (*(v86 + 8))(v116, v98);
  (*(v129 + 8))(v123, v124);
  return (*(v128 + 8))(v127, v126);
}

uint64_t sub_22D6BEFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D72D9A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF280, &qword_22D730120);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v75[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF288, &qword_22D730128);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v75[-v12];
  v13 = type metadata accessor for Alarm(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v92 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v75[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v75[-v22];
  v24 = sub_22D72D7A0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v75[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = v29;
  v85 = *(v25 + 16);
  v85(v28, a2);
  v31 = *(v14 + 56);
  v86 = v13;
  v84 = v31;
  v31(v23, 1, 1, v13);
  swift_beginAccess();
  sub_22D6BB998(v23, v28);
  swift_endAccess();
  swift_beginAccess();
  v83 = a1;
  v32 = *(a1 + 232);
  if (!*(v32 + 16))
  {
    goto LABEL_8;
  }

  v33 = *(a1 + 232);

  v82 = a2;
  v34 = sub_22D6CC49C(a2);
  if ((v35 & 1) == 0)
  {

LABEL_8:
    sub_22D6CC570();
    swift_allocError();
    *v52 = 2;
    return swift_willThrow();
  }

  v36 = (*(v32 + 56) + 16 * v34);
  v37 = v36[1];
  v81 = *v36;

  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v38 = sub_22D72DBE0();
  v39 = __swift_project_value_buffer(v38, qword_2814580B8);
  sub_22D6D56D8(v82, v19, type metadata accessor for Alarm);

  v79 = v39;
  v40 = sub_22D72DBB0();
  v41 = sub_22D72E5A0();

  v42 = os_log_type_enabled(v40, v41);
  v80 = v37;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v77 = v40;
    v44 = v43;
    v78 = swift_slowAlloc();
    v91[0] = v78;
    *v44 = 136446466;
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v76 = v41;
    v45 = v30;
    v46 = sub_22D72E960();
    v48 = v47;
    sub_22D6D5740(v19, type metadata accessor for Alarm);
    v49 = sub_22D72891C(v46, v48, v91);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2082;
    *(v44 + 14) = sub_22D72891C(v81, v80, v91);
    v50 = v77;
    _os_log_impl(&dword_22D6B4000, v77, v76, "%{public}s:%{public}s: Cancelling activity", v44, 0x16u);
    v51 = v78;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v51, -1, -1);
    MEMORY[0x2318D0420](v44, -1, -1);
  }

  else
  {

    sub_22D6D5740(v19, type metadata accessor for Alarm);
    v45 = v30;
  }

  v54 = v82;
  v55 = v85;
  (v85)(v28, v82, v45);
  v56 = v83;
  swift_beginAccess();
  sub_22D6BB7CC(0, 0, v28);
  swift_endAccess();
  v55(v28, v54, v45);
  v84(v23, 1, 1, v86);
  swift_beginAccess();
  sub_22D6BB998(v23, v28);
  swift_endAccess();
  swift_beginAccess();
  sub_22D6D5A4C(v56 + 16, v91, &unk_27D9FFEA0, &qword_22D730138);
  if (v91[3])
  {
    sub_22D6D42A8(v91, v90);
    sub_22D6D5984(v91, &unk_27D9FFEA0, &qword_22D730138);
    v57 = *__swift_project_boxed_opaque_existential_1(v90, v90[3]);
    sub_22D722AEC(v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
  }

  else
  {
    sub_22D6D5984(v91, &unk_27D9FFEA0, &qword_22D730138);
  }

  v58 = v80;
  v59 = __swift_project_boxed_opaque_existential_1((v56 + 136), *(v56 + 160));
  v60 = sub_22D72D8E0();
  v61 = v87;
  (*(*(v60 - 8) + 56))(v87, 1, 1, v60);
  sub_22D72D990();
  v62 = v89;
  sub_22D72D930();
  v63 = sub_22D72D940();
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = *v59;
  sub_22D72D860();
  sub_22D6D5984(v62, &qword_27D9FF280, &qword_22D730120);
  sub_22D6D5984(v61, &qword_27D9FF288, &qword_22D730128);
  sub_22D6D56D8(v54, v92, type metadata accessor for Alarm);

  v65 = sub_22D72DBB0();
  v66 = sub_22D72E5A0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v91[0] = v68;
    *v67 = 136446466;
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v69 = v92;
    v70 = sub_22D72E960();
    v72 = v71;
    sub_22D6D5740(v69, type metadata accessor for Alarm);
    v73 = sub_22D72891C(v70, v72, v91);

    *(v67 + 4) = v73;
    *(v67 + 12) = 2082;
    v74 = sub_22D72891C(v81, v58, v91);

    *(v67 + 14) = v74;
    _os_log_impl(&dword_22D6B4000, v65, v66, "%{public}s:%{public}s: Cancelled activity", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v68, -1, -1);
    MEMORY[0x2318D0420](v67, -1, -1);
  }

  else
  {

    sub_22D6D5740(v92, type metadata accessor for Alarm);
  }

  return sub_22D6BF9DC();
}

uint64_t sub_22D6BF9DC()
{
  v1 = type metadata accessor for Alarm(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = sub_22D72E380();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v0[27];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_22D72E390();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = swift_beginAccess();
  if (*(v0[29] + 16) >= v0[22])
  {
    return result;
  }

  v33 = v2;
  swift_beginAccess();
  v21 = v0[36];

  v12 = 0;
  v23 = sub_22D6D5084(v22, v0, sub_22D6D4B98, sub_22D6D4B98);

  v24 = v23[2];
  if (v24)
  {
    v29 = 0;
    v30 = v11;
    v31 = v1;
    v32 = v5;
    v25 = sub_22D6CBF7C(v24, 0);
    v12 = sub_22D6D37C0(&v35, v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v24, v23);

    sub_22D6D3C44();
    if (v12 == v24)
    {
      v1 = v31;
      v5 = v32;
      v12 = v29;
      v11 = v30;
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_7:
  v35 = v25;
  sub_22D6D07F0(&v35);
  v26 = v33;
  if (v12)
  {
LABEL_18:

    __break(1u);
    return result;
  }

  if (v35[2])
  {
    sub_22D6D56D8(v35 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v11, type metadata accessor for Alarm);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v26 + 56))(v11, v27, 1, v1);
  v28 = v34;
  sub_22D6D5A4C(v11, v34, &qword_27D9FF550, &qword_22D730130);
  if ((*(v26 + 48))(v28, 1, v1) == 1)
  {
    sub_22D6D5984(v11, &qword_27D9FF550, &qword_22D730130);
    v11 = v28;
  }

  else
  {
    sub_22D6D3C4C(v28, v5);
    sub_22D6BBE4C(v5, nullsub_1, 0);
    sub_22D6D5740(v5, type metadata accessor for Alarm);
  }

  return sub_22D6D5984(v11, &qword_27D9FF550, &qword_22D730130);
}

uint64_t sub_22D6BFE78()
{
  sub_22D6D5984(v0 + 16, &unk_27D9FFEA0, &qword_22D730138);
  sub_22D6D5984(v0 + 56, &qword_27D9FF500, &qword_22D730530);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 184);

  v2 = *(v0 + 192);

  v3 = *(v0 + 200);

  v4 = *(v0 + 208);

  v5 = *(v0 + 232);

  v6 = *(v0 + 240);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  v7 = *(v0 + 288);

  return v0;
}

uint64_t sub_22D6BFF20()
{
  sub_22D6BFE78();

  return swift_deallocClassInstance();
}

uint64_t sub_22D6BFFD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_22D72D730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = sub_22D72DD20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Alarm(0);
  (*(v16 + 16))(v19, a1 + *(v20 + 44), v15);
  result = (*(v16 + 88))(v19, v15);
  if (result != *MEMORY[0x277CB9920])
  {
    if (result == *MEMORY[0x277CB9918])
    {
      sub_22D6D5A4C(v1 + 56, &v26, &qword_27D9FF500, &qword_22D730530);
      if (!v27)
      {
        v22 = &qword_27D9FF500;
        v23 = &qword_22D730530;
        v24 = &v26;
        return sub_22D6D5984(v24, v22, v23);
      }

      sub_22D6B6CF0(&v26, v28);
      sub_22D72D710();
      sub_22D6D42A8(v28, &v26);
      sub_22D713738(&v26, v14, v6);
      sub_22D6D5984(&v26, &qword_27D9FF500, &qword_22D730530);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        (*(v8 + 8))(v14, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v22 = &qword_27D9FFDD0;
        v23 = &qword_22D730140;
        v24 = v6;
        return sub_22D6D5984(v24, v22, v23);
      }

      (*(v8 + 32))(v12, v6, v7);
      sub_22D72D6E0();
      v25 = *(v8 + 8);
      v25(v12, v7);
      v25(v14, v7);
      return __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else if (result != *MEMORY[0x277CB9908] && result != *MEMORY[0x277CB9910])
    {
      result = sub_22D72E970();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22D6C038C(uint64_t a1)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_22D72D9A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF280, &qword_22D730120);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF288, &qword_22D730128);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v86 - v11;
  v12 = sub_22D72D7A0();
  v91 = *(v12 - 8);
  v13 = *(v91 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Alarm(0);
  v100 = *(v98 - 8);
  v15 = *(v100 + 64);
  v16 = MEMORY[0x28223BE20](v98);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v96 = &v86 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v97 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v86 - v27;
  v29 = sub_22D72E380();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v2[27];
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  v36 = sub_22D72E390();
  (*(v30 + 8))(v33, v29);
  if (v36)
  {
    swift_beginAccess();
    v37 = *(v2[29] + 16);
    if (v37 < v2[22])
    {
      return 1;
    }

    if (v37)
    {
      v38 = v2[29];

      sub_22D6CC49C(v99);
      v40 = v39;

      if (v40)
      {
        return 1;
      }
    }

    v86 = v18;
    swift_beginAccess();
    v42 = v2[36];

    v44 = 0;
    v45 = sub_22D6D5084(v43, v2, sub_22D6D46AC, sub_22D6D46AC);

    v36 = v45[2];
    if (!v36)
    {
      v46 = MEMORY[0x277D84F90];
LABEL_10:
      v102[0] = v46;
      sub_22D6D07F0(v102);
      if (v44)
      {

        __break(1u);
        return result;
      }

      v48 = v102[0][2];
      v49 = v100;
      if (v48)
      {
        sub_22D6D56D8(v102[0] + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * (v48 - 1), v28, type metadata accessor for Alarm);
        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v98;
      (*(v49 + 56))(v28, v50, 1, v98);
      v52 = v97;
      sub_22D6D5A4C(v28, v97, &qword_27D9FF550, &qword_22D730130);
      if ((*(v49 + 48))(v52, 1, v51) == 1)
      {
        sub_22D6D5984(v28, &qword_27D9FF550, &qword_22D730130);
        v53 = v52;
LABEL_23:
        sub_22D6D5984(v53, &qword_27D9FF550, &qword_22D730130);
        return 0;
      }

      sub_22D6D3C4C(v52, v22);
      if (sub_22D717E28(v99, v22))
      {
        v54 = v2[29];
        if (*(v54 + 16))
        {
          v55 = v2[29];

          v56 = sub_22D6CC49C(v22);
          if (v57)
          {
            v58 = (*(v54 + 56) + 16 * v56);
            v36 = v58[1];
            v100 = *v58;

            v59 = v92;
            (*(v91 + 16))(v92, v22, v12);
            swift_beginAccess();
            sub_22D6BB7CC(0, 0, v59);
            swift_endAccess();
            swift_beginAccess();
            sub_22D6D5A4C((v2 + 2), v102, &unk_27D9FFEA0, &qword_22D730138);
            if (v102[3])
            {
              sub_22D6D42A8(v102, v101);
              sub_22D6D5984(v102, &unk_27D9FFEA0, &qword_22D730138);
              v60 = *__swift_project_boxed_opaque_existential_1(v101, v101[3]);
              sub_22D722AEC(v22);
              __swift_destroy_boxed_opaque_existential_1Tm(v101);
            }

            else
            {
              sub_22D6D5984(v102, &unk_27D9FFEA0, &qword_22D730138);
            }

            v61 = v95;
            v62 = __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
            v63 = sub_22D72D8E0();
            v64 = v93;
            (*(*(v63 - 8) + 56))(v93, 1, 1, v63);
            sub_22D72D990();
            sub_22D72D930();
            v65 = sub_22D72D940();
            (*(*(v65 - 8) + 56))(v61, 0, 1, v65);
            v66 = *v62;
            sub_22D72D860();
            sub_22D6D5984(v61, &qword_27D9FF280, &qword_22D730120);
            sub_22D6D5984(v64, &qword_27D9FF288, &qword_22D730128);
            if (qword_2814572B0 == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_32;
          }
        }
      }

      sub_22D6D5740(v22, type metadata accessor for Alarm);
      v53 = v28;
      goto LABEL_23;
    }

    v87 = 0;
    v88 = v12;
    v89 = v22;
    v90 = v28;
    v46 = sub_22D6CBF7C(v36, 0);
    v47 = sub_22D6D37C0(v102, v46 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v36, v45);
    v22 = v102[2];
    v28 = v102[4];

    sub_22D6D3C44();
    if (v47 == v36)
    {
      v28 = v90;
      v22 = v89;
      v12 = v88;
      v44 = v87;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_26:
  v67 = sub_22D72DBE0();
  __swift_project_value_buffer(v67, qword_2814580B8);
  v68 = v96;
  sub_22D6D56D8(v99, v96, type metadata accessor for Alarm);
  v69 = v86;
  sub_22D6D56D8(v22, v86, type metadata accessor for Alarm);

  v70 = sub_22D72DBB0();
  v71 = sub_22D72E5A0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v28;
    v99 = v73;
    v102[0] = v73;
    *v72 = 136446722;
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    LODWORD(v98) = v71;
    v74 = sub_22D72E960();
    v75 = v36;
    v77 = v76;
    v89 = v22;
    sub_22D6D5740(v68, type metadata accessor for Alarm);
    v78 = sub_22D72891C(v74, v77, v102);

    *(v72 + 4) = v78;
    *(v72 + 12) = 2082;
    v79 = sub_22D72E960();
    v81 = v80;
    sub_22D6D5740(v69, type metadata accessor for Alarm);
    v82 = sub_22D72891C(v79, v81, v102);

    *(v72 + 14) = v82;
    *(v72 + 22) = 2082;
    v83 = sub_22D72891C(v100, v75, v102);

    *(v72 + 24) = v83;
    _os_log_impl(&dword_22D6B4000, v70, v98, "%{public}s: Cancelled activity for alarm to make way for new alarm: %{public}s:%{public}s", v72, 0x20u);
    v84 = v99;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v84, -1, -1);
    MEMORY[0x2318D0420](v72, -1, -1);

    sub_22D6D5740(v89, type metadata accessor for Alarm);
    v85 = v90;
  }

  else
  {

    sub_22D6D5740(v69, type metadata accessor for Alarm);
    sub_22D6D5740(v68, type metadata accessor for Alarm);
    sub_22D6D5740(v22, type metadata accessor for Alarm);
    v85 = v28;
  }

  sub_22D6D5984(v85, &qword_27D9FF550, &qword_22D730130);
  return 1;
}

uint64_t sub_22D6C0FD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22D6C101C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_22D72D7A0();
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v3);
  v120 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22D72DF10();
  v96 = *(v97 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72DF30();
  v107 = *(v8 - 8);
  v108 = v8;
  v9 = *(v107 + 64);
  MEMORY[0x28223BE20](v8);
  v106 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_22D72DDA0();
  v94 = *(v98 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v98);
  v93 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72DD70();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22D72D7F0();
  v101 = *(v102 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22D72D810();
  v103 = *(v104 - 8);
  v18 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v99 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D72D730();
  v114 = *(v20 - 8);
  v115 = v20;
  v21 = *(v114 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v113 = &v93 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v93 - v26;
  v28 = sub_22D72DDB0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v105 = &v93 - v34;
  v35 = sub_22D72DEF0();
  v110 = *(v35 - 8);
  v111 = v35;
  v36 = *(v110 + 64);
  MEMORY[0x28223BE20](v35);
  v109 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22D72DD20();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22D72DF40();
  v122 = *(v116 - 8);
  v43 = *(v122 + 64);
  v44 = MEMORY[0x28223BE20](v116);
  v124 = &v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v125 = &v93 - v46;
  v123 = type metadata accessor for Alarm(0);
  (*(v39 + 16))(v42, a1 + v123[11], v38);
  v47 = (*(v39 + 88))(v42, v38);
  if (v47 == *MEMORY[0x277CB9920])
  {
    goto LABEL_2;
  }

  if (v47 != *MEMORY[0x277CB9918])
  {
    if (v47 == *MEMORY[0x277CB9908])
    {
      sub_22D714000();
      if ((v57 & 1) == 0)
      {
        v51 = v123;
        v58 = (a1 + v123[10]);
        v59 = *v58;
        *(v58 + 8);
        v60 = v95;
        sub_22D72DF00();
        v55 = v125;
        (*(v96 + 32))(v125, v60, v97);
        v56 = MEMORY[0x277CB9A08];
        goto LABEL_9;
      }

LABEL_2:
      sub_22D6CC570();
      swift_allocError();
      *v48 = 0;
      return swift_willThrow();
    }

    v51 = v123;
    if (v47 == *MEMORY[0x277CB9910])
    {
      v62 = a1;
      sub_22D6D5A4C(a1 + v123[8], v27, &qword_27D9FF4B0, &unk_22D7301A0);
      v65 = v29;
      if ((*(v29 + 48))(v27, 1, v28) == 1)
      {
        sub_22D6D5984(v27, &qword_27D9FF4B0, &unk_22D7301A0);
        v66 = v99;
        sub_22D72D7E0();
        v67 = v101;
        v68 = *(v101 + 104);
        v69 = v100;
        v70 = v102;
        v68(v100, *MEMORY[0x277CC9980], v102);
        v71 = v123[14];
        v115 = sub_22D72D800();
        v72 = *(v67 + 8);
        v72(v69, v70);
        v68(v69, *MEMORY[0x277CC99A0], v70);
        v51 = v123;
        sub_22D72D800();
        v72(v69, v70);
        v62 = a1;
        sub_22D72DD40();
        v73 = v109;
        sub_22D72DEE0();
        (*(v103 + 8))(v66, v104);
LABEL_15:
        v64 = v122;
LABEL_18:
        v55 = v125;
        (*(v110 + 32))(v125, v73, v111);
        v56 = MEMORY[0x277CB9A00];
        v61 = v120;
        v63 = v116;
        goto LABEL_19;
      }

      v74 = *(v29 + 32);
      v75 = v105;
      v74(v105, v27, v28);
      (*(v65 + 16))(v33, v75, v28);
      v76 = (*(v65 + 88))(v33, v28);
      if (v76 == *MEMORY[0x277CB9948])
      {
        (*(v65 + 96))(v33, v28);
        (*(v114 + 32))(v113, v33, v115);
        v77 = v99;
        sub_22D72D7E0();
        v78 = *MEMORY[0x277CC9980];
        v79 = v101;
        v108 = v65;
        v106 = *(v101 + 104);
        v80 = v100;
        v81 = v102;
        v106(v100, v78, v102);
        v107 = sub_22D72D800();
        v82 = *(v79 + 8);
        v82(v80, v81);
        v106(v80, *MEMORY[0x277CC99A0], v81);
        sub_22D72D800();
        v82(v80, v81);
        v51 = v123;
        sub_22D72DD40();
        v73 = v109;
        sub_22D72DEE0();
        (*(v103 + 8))(v77, v104);
        (*(v114 + 8))(v113, v115);
        (*(v108 + 8))(v105, v28);
        goto LABEL_15;
      }

      v64 = v122;
      if (v76 == *MEMORY[0x277CB9960])
      {
        (*(v65 + 96))(v33, v28);
        v83 = v94;
        v84 = v93;
        (*(v94 + 32))(v93, v33, v98);
        sub_22D72DD80();
        v73 = v109;
        sub_22D72DEE0();
        (*(v83 + 8))(v84, v98);
        (*(v65 + 8))(v105, v28);
        goto LABEL_18;
      }
    }

    else
    {
      sub_22D72E970();
      __break(1u);
    }

    result = sub_22D72E970();
    __break(1u);
    return result;
  }

  sub_22D714000();
  if (v50)
  {
    goto LABEL_2;
  }

  v51 = v123;
  v52 = (a1 + v123[10]);
  v53 = *v52;
  *(v52 + 8);
  (*(v114 + 16))(v113, a1 + v123[14], v115);
  sub_22D72D6A0();
  v54 = v106;
  sub_22D72DF20();
  v55 = v125;
  (*(v107 + 32))(v125, v54, v108);
  v56 = MEMORY[0x277CB9A10];
LABEL_9:
  v61 = v120;
  v62 = a1;
  v63 = v116;
  v64 = v122;
LABEL_19:
  (*(v64 + 104))(v55, *v56, v63);
  (*(v117 + 16))(v61, v62 + v51[5], v118);
  (*(v64 + 16))(v124, v55, v63);
  v85 = (v62 + v51[6]);
  v86 = *v85;
  v87 = v85[1];
  v88 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();
  v89 = v119;
  v90 = sub_22D72868C(v86, v87, 0);
  if (v89)
  {
  }

  else
  {
    v91 = v90;
    v92 = [v90 localizedName];
    sub_22D72E490();

    v64 = v122;
  }

  sub_22D72DF60();
  return (*(v64 + 8))(v125, v63);
}

uint64_t sub_22D6C1EB8(objc_class *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_class *a9, uint64_t a10, uint64_t a11)
{
  v127 = a8;
  v119 = a7;
  v109 = a6;
  v118 = a5;
  v114 = a4;
  v111 = a3;
  LODWORD(v126) = a2;
  v130 = a11;
  v131 = a1;
  v129 = a10;
  v132 = a9;
  v11 = sub_22D72E300();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x28223BE20](v11);
  v121 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22D72E370();
  v14 = *(v122 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Alarm(0);
  v115 = *(v110 - 8);
  v17 = *(v115 + 64);
  v18 = MEMORY[0x28223BE20](v110);
  v20 = (&v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = v19;
  MEMORY[0x28223BE20](v18);
  v125 = &v103 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178);
  v112 = *(v22 - 8);
  v23 = *(v112 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v117 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v25;
  MEMORY[0x28223BE20](v24);
  v128 = &v103 - v26;
  v27 = sub_22D72D730();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v108 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22D72D9E0();
  v30 = *(v106 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v106);
  v107 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22D72D850();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22D72D950();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22D72D890();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v46 = MEMORY[0x28223BE20](v45);
  if ((v126 & 1) == 0)
  {
    v104 = v46;
    v123 = v48;
    v105 = &v103 - v47;
    v124 = v49;
    v66 = swift_projectBox();
    v67 = v131;
    (*(v39 + 16))(v42, v131 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v38);
    v68 = v67 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData;
    v69 = *(v67 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
    v70 = *(v68 + 8);
    v126 = v69;
    v122 = v70;
    v71 = *(v34 + 16);
    v103 = v37;
    v71(v37, v111, v33);
    swift_beginAccess();
    (*(v30 + 16))(v107, v66, v106);
    sub_22D6D3F68(v69, v70);

    sub_22D72D710();
    v72 = v127;
    v73 = (v127 + *(v110 + 24));
    v75 = *v73;
    v74 = v73[1];

    v76 = v105;
    sub_22D72D880();
    v77 = v128;
    v78 = v132;
    sub_22D6C2C38(v72, 1, v128);
    v126 = *(v78 + 27);
    sub_22D6D56D8(v72, v125, type metadata accessor for Alarm);
    v80 = v123;
    v79 = v124;
    v81 = v104;
    (*(v123 + 16))(v124, v76, v104);
    v82 = v77;
    v83 = v117;
    sub_22D6D5A4C(v82, v117, &qword_27D9FF2D8, &qword_22D730178);
    v84 = (*(v115 + 80) + 24) & ~*(v115 + 80);
    v85 = (v116 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = (*(v80 + 80) + v85 + 16) & ~*(v80 + 80);
    v87 = (v44 + *(v112 + 80) + v86) & ~*(v112 + 80);
    v88 = (v113 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v54[2].isa = v132;
    sub_22D6D3C4C(v125, v54 + v84);
    v89 = (&v54->isa + v85);
    v90 = v130;
    *v89 = v129;
    v89[1] = v90;
    (*(v80 + 32))(v54 + v86, v79, v81);
    sub_22D6D591C(v83, v54 + v87, &qword_27D9FF2D8, &qword_22D730178);
    v20 = v131;
    *(&v54->isa + v88) = v131;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_22D6D3FBC;
    *(v91 + 24) = v54;
    v138 = sub_22D6D413C;
    v139 = v91;
    aBlock = MEMORY[0x277D85DD0];
    v135 = 1107296256;
    v136 = sub_22D6BEF78;
    v137 = &block_descriptor_59;
    v92 = _Block_copy(&aBlock);

    sub_22D6D4164(v20, 0);

    dispatch_sync(v126, v92);
    _Block_release(v92);
    sub_22D6D5984(v128, &qword_27D9FF2D8, &qword_22D730178);
    v93 = *(v80 + 8);
    v14 = v80 + 8;
    v93(v105, v104);
    LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

    if ((v79 & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  v50 = v127;
  v51 = v131;
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v52 = sub_22D72DBE0();
  __swift_project_value_buffer(v52, qword_2814580B8);
  sub_22D6D56D8(v50, v20, type metadata accessor for Alarm);
  v53 = v51;
  v54 = sub_22D72DBB0();
  v55 = sub_22D72E580();
  sub_22D6D3F3C(v51, 1);
  if (!os_log_type_enabled(v54, v55))
  {
LABEL_8:

    sub_22D6D5740(v20, type metadata accessor for Alarm);
    goto LABEL_9;
  }

  v56 = v20;
  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  aBlock = v59;
  *v57 = 136446466;
  sub_22D72D7A0();
  sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
  v60 = sub_22D72E960();
  v62 = v61;
  sub_22D6D5740(v56, type metadata accessor for Alarm);
  v63 = sub_22D72891C(v60, v62, &aBlock);

  *(v57 + 4) = v63;
  *(v57 + 12) = 2114;
  v64 = v51;
  v65 = _swift_stdlib_bridgeErrorToNSError();
  *(v57 + 14) = v65;
  *v58 = v65;
  _os_log_impl(&dword_22D6B4000, v54, v55, "%{public}s: Cannot create activity; could not retrieve activity data: %{public}@", v57, 0x16u);
  sub_22D6D5984(v58, &unk_27D9FF4D0, &qword_22D730180);
  MEMORY[0x2318D0420](v58, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  MEMORY[0x2318D0420](v59, -1, -1);
  MEMORY[0x2318D0420](v57, -1, -1);

LABEL_9:
  v96 = v129;
  v95 = v130;
  v97 = *(v132 + 28);
  v98 = swift_allocObject();
  *(v98 + 16) = v96;
  *(v98 + 24) = v95;
  v138 = sub_22D6D3F48;
  v139 = v98;
  aBlock = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = sub_22D6C0FD8;
  v137 = &block_descriptor_50;
  v99 = _Block_copy(&aBlock);

  v100 = v120;
  sub_22D72E330();
  v133 = MEMORY[0x277D84F90];
  sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  v101 = v121;
  v102 = v124;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v100, v101, v99);
  _Block_release(v99);
  (*(v123 + 8))(v101, v102);
  (*(v14 + 8))(v100, v122);
}

uint64_t sub_22D6C2C38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v39 = a3;
  v4 = sub_22D72DB40();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72DB20();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = sub_22D72DBA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D72DD20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Alarm(0);
  (*(v20 + 16))(v23, a1 + *(v24 + 44), v19);
  if ((*(v20 + 88))(v23, v19) != *MEMORY[0x277CB9910])
  {
    (*(v15 + 56))(v39, 1, 1, v14);
    return (*(v20 + 8))(v23, v19);
  }

  v25 = v39;
  (*(v15 + 16))(v18, a1 + *(v24 + 48), v14);
  if ((v35 & 1) == 0)
  {
    sub_22D72DB00();
    v29 = v25;
    goto LABEL_7;
  }

  sub_22D72DB70();
  sub_22D72DB10();
  v26 = MEMORY[0x2318CEC80](v13, v11);
  v27 = v34;
  v28 = *(v33 + 8);
  v28(v11, v34);
  v28(v13, v27);
  v29 = v25;
  if (v26)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277D71F58]) initWithType_];
    sub_22D72DAE0();

LABEL_7:
    sub_22D72DB80();
  }

  (*(v37 + 104))(v36, *MEMORY[0x277CB9838], v38);
  sub_22D72DB50();
  sub_22D72DB30();
  (*(v15 + 32))(v29, v18, v14);
  return (*(v15 + 56))(v29, 0, 1, v14);
}

uint64_t sub_22D6C3064(void *a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v112 = a7;
  v118 = a6;
  v121 = a4;
  v120 = a3;
  v128 = a2;
  v126 = sub_22D72E300();
  v125 = *(v126 - 8);
  v8 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v123 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22D72E370();
  v124 = *(v127 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x28223BE20](v127);
  v122 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Alarm(0);
  v115 = *(v12 - 8);
  v13 = *(v115 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v108 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v114 = &v108 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v108 - v22;
  v116 = sub_22D72D910();
  v117 = *(v116 - 8);
  v24 = *(v117 + 64);
  v25 = MEMORY[0x28223BE20](v116);
  v113 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v108 - v27;
  MEMORY[0x28223BE20](v26);
  v119 = &v108 - v29;
  swift_beginAccess();
  v30 = *(a1[29] + 16);
  if (v30 >= a1[22])
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v43 = sub_22D72DBE0();
    __swift_project_value_buffer(v43, qword_2814580B8);
    sub_22D6D56D8(v128, v15, type metadata accessor for Alarm);
    v44 = sub_22D72DBB0();
    v45 = sub_22D72E580();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v48 = sub_22D72E960();
      v50 = v49;
      sub_22D6D5740(v15, type metadata accessor for Alarm);
      v51 = sub_22D72891C(v48, v50, &aBlock);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_22D6B4000, v44, v45, "%{public}s: Cannot create activity; space no longer available after fetching activity data", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2318D0420](v47, -1, -1);
      MEMORY[0x2318D0420](v46, -1, -1);
    }

    else
    {

      sub_22D6D5740(v15, type metadata accessor for Alarm);
    }

    v54 = a1[28];
    v55 = swift_allocObject();
    v56 = v121;
    *(v55 + 16) = v120;
    *(v55 + 24) = v56;
    v135 = sub_22D6D4170;
    v136 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v132 = 1107296256;
    v57 = &block_descriptor_65;
    goto LABEL_21;
  }

  if (v30)
  {
    v31 = a1[29];

    sub_22D6CC49C(v128);
    v33 = v32;

    if (v33)
    {
      if (qword_2814572B0 != -1)
      {
        swift_once();
      }

      v34 = sub_22D72DBE0();
      __swift_project_value_buffer(v34, qword_2814580B8);
      sub_22D6D56D8(v128, v18, type metadata accessor for Alarm);
      v35 = sub_22D72DBB0();
      v36 = sub_22D72E580();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 136446210;
        sub_22D72D7A0();
        sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v39 = sub_22D72E960();
        v41 = v40;
        sub_22D6D5740(v18, type metadata accessor for Alarm);
        v42 = sub_22D72891C(v39, v41, &aBlock);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_22D6B4000, v35, v36, "%{public}s: Cannot create activity; activity already exists after fetching activity data", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x2318D0420](v38, -1, -1);
        MEMORY[0x2318D0420](v37, -1, -1);
      }

      else
      {

        sub_22D6D5740(v18, type metadata accessor for Alarm);
      }

      v82 = a1[28];
      v83 = swift_allocObject();
      v84 = v121;
      *(v83 + 16) = v120;
      *(v83 + 24) = v84;
      v135 = sub_22D6D4288;
      v136 = v83;
      aBlock = MEMORY[0x277D85DD0];
      v132 = 1107296256;
      v57 = &block_descriptor_89;
LABEL_21:
      v133 = sub_22D6C0FD8;
      v134 = v57;
      v85 = _Block_copy(&aBlock);

      v86 = v122;
      sub_22D72E330();
      *&v129 = MEMORY[0x277D84F90];
      sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
      sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
      v87 = v123;
      v88 = v126;
      sub_22D72E6E0();
      MEMORY[0x2318CF7A0](0, v86, v87, v85);
      _Block_release(v85);
      (*(v125 + 8))(v87, v88);
      (*(v124 + 8))(v86, v127);
    }
  }

  v52 = *__swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
  v53 = v119;
  sub_22D72D8A0();
  v58 = sub_22D72D900();
  v60 = v59;
  swift_beginAccess();
  v61 = a1[29];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v129 = a1[29];
  a1[29] = 0x8000000000000000;
  v63 = v58;
  v64 = v128;
  sub_22D6CEC5C(v63, v60, v128, isUniquelyReferenced_nonNull_native);
  a1[29] = v129;
  swift_endAccess();
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v65 = sub_22D72DBE0();
  __swift_project_value_buffer(v65, qword_2814580B8);
  sub_22D6D56D8(v64, v23, type metadata accessor for Alarm);
  v66 = v117;
  v67 = *(v117 + 16);
  v68 = v116;
  v111 = v117 + 16;
  v110 = v67;
  v67(v28, v53, v116);
  v69 = sub_22D72DBB0();
  v70 = sub_22D72E5A0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock = v109;
    *v71 = 136446466;
    sub_22D72D7A0();
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v72 = sub_22D72E960();
    v74 = v73;
    sub_22D6D5740(v23, type metadata accessor for Alarm);
    v75 = sub_22D72891C(v72, v74, &aBlock);
    v68 = v116;

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    v76 = sub_22D72D900();
    v78 = v77;
    (*(v117 + 8))(v28, v68);
    v79 = sub_22D72891C(v76, v78, &aBlock);

    *(v71 + 14) = v79;
    _os_log_impl(&dword_22D6B4000, v69, v70, "%{public}s: Created activity %{public}s", v71, 0x16u);
    v80 = v109;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v80, -1, -1);
    v81 = v71;
    v66 = v117;
    MEMORY[0x2318D0420](v81, -1, -1);
  }

  else
  {

    (*(v66 + 8))(v28, v68);
    sub_22D6D5740(v23, type metadata accessor for Alarm);
  }

  v90 = sub_22D72DBA0();
  v91 = (*(*(v90 - 8) + 48))(v118, 1, v90);
  v92 = v119;
  if (v91 != 1)
  {
    swift_beginAccess();
    sub_22D6D5A4C((a1 + 2), &v129, &unk_27D9FFEA0, &qword_22D730138);
    v93 = v128;
    if (v130)
    {
      sub_22D6B6CF0(&v129, &aBlock);
      v94 = *__swift_project_boxed_opaque_existential_1(&aBlock, v134);
      sub_22D72056C(v93, v112, nullsub_1, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    }

    else
    {
      sub_22D6D5984(&v129, &unk_27D9FFEA0, &qword_22D730138);
    }
  }

  v118 = a1[28];
  v95 = v113;
  v110(v113, v92, v68);
  v96 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v97 = swift_allocObject();
  v98 = v66;
  v99 = v121;
  *(v97 + 16) = v120;
  *(v97 + 24) = v99;
  (*(v98 + 32))(v97 + v96, v95, v68);
  v135 = sub_22D6D4190;
  v136 = v97;
  aBlock = MEMORY[0x277D85DD0];
  v132 = 1107296256;
  v120 = &v133;
  v133 = sub_22D6C0FD8;
  v134 = &block_descriptor_77;
  v100 = _Block_copy(&aBlock);

  v101 = v122;
  sub_22D72E330();
  *&v129 = MEMORY[0x277D84F90];
  v121 = sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  v112 = sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  v102 = v123;
  v103 = v126;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v101, v102, v100);
  _Block_release(v100);
  v125 = *(v125 + 8);
  (v125)(v102, v103);
  v124 = *(v124 + 8);
  (v124)(v101, v127);

  v104 = v114;
  sub_22D6D56D8(v128, v114, type metadata accessor for Alarm);
  v105 = (*(v115 + 80) + 24) & ~*(v115 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = a1;
  sub_22D6D3C4C(v104, v106 + v105);
  v135 = sub_22D6D4220;
  v136 = v106;
  aBlock = MEMORY[0x277D85DD0];
  v132 = 1107296256;
  v133 = sub_22D6C0FD8;
  v134 = &block_descriptor_83;
  v107 = _Block_copy(&aBlock);

  sub_22D72E330();
  *&v129 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v101, v102, v107);
  _Block_release(v107);
  (v125)(v102, v103);
  (v124)(v101, v127);
  (*(v117 + 8))(v119, v116);
}

uint64_t sub_22D6C45E4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_class *a9)
{
  v81 = a8;
  v80 = a7;
  v90 = a5;
  v91 = a6;
  v82 = a2;
  v83 = a1;
  v11 = sub_22D72E300();
  isa = v11[-1].isa;
  v89 = v11;
  v12 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v85 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D72E370();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v14);
  v84 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D72D850();
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Alarm(0);
  v78 = *(v20 - 8);
  v21 = *(v78 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  swift_beginAccess();
  v92 = a3;
  if (!*(*(a3 + 232) + 16) || (, sub_22D6CC49C(a4), v30 = v29, , (v30 & 1) == 0))
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v45 = sub_22D72DBE0();
    __swift_project_value_buffer(v45, qword_2814580B8);
    sub_22D6D56D8(a4, v23, type metadata accessor for Alarm);
    v46 = sub_22D72DBB0();
    v47 = sub_22D72E580();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v50 = sub_22D72E960();
      v52 = v51;
      sub_22D6D5740(v23, type metadata accessor for Alarm);
      v53 = sub_22D72891C(v50, v52, &aBlock);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_22D6B4000, v46, v47, "%{public}s: Cannot update activity; activity no longer exists after fetching activity data", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2318D0420](v49, -1, -1);
      MEMORY[0x2318D0420](v48, -1, -1);
    }

    else
    {

      sub_22D6D5740(v23, type metadata accessor for Alarm);
    }

    v54 = *(v92 + 224);
    v55 = swift_allocObject();
    v56 = v91;
    *(v55 + 16) = v90;
    *(v55 + 24) = v56;
    v98 = sub_22D6D5CD8;
    v99 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v57 = &block_descriptor_132;
    goto LABEL_14;
  }

  if (v82)
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v31 = sub_22D72DBE0();
    __swift_project_value_buffer(v31, qword_2814580B8);
    sub_22D6D56D8(a4, v26, type metadata accessor for Alarm);
    v32 = v83;
    v33 = v83;
    v34 = sub_22D72DBB0();
    v35 = sub_22D72E580();
    sub_22D6D3F3C(v32, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v36 = 136446466;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v39 = sub_22D72E960();
      v41 = v40;
      sub_22D6D5740(v26, type metadata accessor for Alarm);
      v42 = sub_22D72891C(v39, v41, &aBlock);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2114;
      v43 = v32;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v44;
      *v37 = v44;
      _os_log_impl(&dword_22D6B4000, v34, v35, "%{public}s: Cannot update activity; could not retrieve activity data: %{public}@", v36, 0x16u);
      sub_22D6D5984(v37, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x2318D0420](v38, -1, -1);
      MEMORY[0x2318D0420](v36, -1, -1);

LABEL_19:
      v75 = *(v92 + 224);
      v76 = swift_allocObject();
      v77 = v91;
      *(v76 + 16) = v90;
      *(v76 + 24) = v77;
      v98 = sub_22D6D5CE0;
      v99 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v95 = 1107296256;
      v57 = &block_descriptor_138;
LABEL_14:
      v96 = sub_22D6C0FD8;
      v97 = v57;
      v58 = _Block_copy(&aBlock);

      v59 = v84;
      sub_22D72E330();
      v93 = MEMORY[0x277D84F90];
      sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
      sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
      v60 = v85;
      v61 = v89;
      sub_22D72E6E0();
      MEMORY[0x2318CF7A0](0, v59, v60, v58);
      _Block_release(v58);
      (*(isa + 1))(v60, v61);
      (*(v86 + 8))(v59, v87);
    }

LABEL_18:

    sub_22D6D5740(v26, type metadata accessor for Alarm);
    goto LABEL_19;
  }

  v63 = *(v92 + 216);
  isa = a9;
  v89 = v63;
  sub_22D6D56D8(a4, v28, type metadata accessor for Alarm);
  v64 = v79;
  (*(v79 + 16))(&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v80, v17);
  v65 = (*(v78 + 80) + 24) & ~*(v78 + 80);
  v66 = (v21 + *(v64 + 80) + v65) & ~*(v64 + 80);
  v67 = (v18 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = v92;
  sub_22D6D3C4C(v28, &v26[v65]);
  (*(v64 + 32))(&v26[v66], v19, v17);
  v69 = &v26[v67];
  v70 = isa;
  *v69 = v81;
  *(v69 + 1) = v70;
  v71 = v83;
  *&v26[v68] = v83;
  v72 = &v26[(v68 + 15) & 0xFFFFFFFFFFFFFFF8];
  v73 = v91;
  *v72 = v90;
  *(v72 + 1) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_22D6D54CC;
  *(v74 + 24) = v26;
  v98 = sub_22D6D5CDC;
  v99 = v74;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_22D6BEF78;
  v97 = &block_descriptor_148;
  v34 = _Block_copy(&aBlock);

  sub_22D6D4164(v71, 0);

  dispatch_sync(v89, v34);
  _Block_release(v34);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_22D6C50F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v61 = a7;
  v54 = a6;
  v56 = a5;
  v55 = a4;
  v60 = a3;
  v10 = type metadata accessor for Alarm(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E300();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72E370();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v63 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D72D850();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D72D730();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_22D72D8E0();
  v57 = *(v26 - 8);
  v27 = *(v57 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v53 - v35;
  v59 = a2;
  sub_22D6C2C38(a2, 1, &v53 - v35);
  sub_22D72D710();
  (*(v20 + 16))(v23, v60, v19);
  sub_22D6D5A4C(v36, v34, &qword_27D9FF2D8, &qword_22D730178);
  sub_22D72D8D0();
  v37 = v54;
  v60 = v26;
  v38 = *__swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
  v39 = v55;
  v40 = v56;
  sub_22D72D870();
  swift_beginAccess();
  sub_22D6D5A4C((a1 + 2), &v69, &unk_27D9FFEA0, &qword_22D730138);
  v53 = v29;
  if (v70)
  {
    sub_22D6B6CF0(&v69, aBlock);
    v41 = sub_22D72DBA0();
    v42 = v36;
    v43 = (*(*(v41 - 8) + 48))(v36, 1, v41);
    v44 = *__swift_project_boxed_opaque_existential_1(aBlock, v72);
    if (v43 == 1)
    {
      sub_22D722AEC(v59);
    }

    else
    {
      sub_22D72056C(v59, v37, nullsub_1, 0);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  }

  else
  {
    sub_22D6D5984(&v69, &unk_27D9FFEA0, &qword_22D730138);
    v42 = v36;
  }

  v45 = a1[28];
  v46 = swift_allocObject();
  v47 = v62;
  v46[2] = v61;
  v46[3] = v47;
  v46[4] = v39;
  v46[5] = v40;
  v73 = sub_22D6D55E8;
  v74 = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  v72 = &block_descriptor_160;
  v48 = _Block_copy(aBlock);

  v49 = v63;
  sub_22D72E330();
  *&v69 = MEMORY[0x277D84F90];
  sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  v50 = v64;
  v51 = v68;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v49, v50, v48);
  _Block_release(v48);
  (*(v67 + 8))(v50, v51);
  (*(v65 + 8))(v49, v66);
  (*(v57 + 8))(v53, v60);
  sub_22D6D5984(v42, &qword_27D9FF2D8, &qword_22D730178);
}

void sub_22D6C5C20(void (*a1)(void *, void, uint64_t), uint64_t a2, char a3)
{
  sub_22D6CC570();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 0, 1);
}

uint64_t sub_22D6C5C98(uint64_t *a1)
{
  v137 = sub_22D72E300();
  v170 = *(v137 - 8);
  v2 = *(v170 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22D72E370();
  v4 = *(v135 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v133 = &v124 - v9;
  v10 = sub_22D72D7A0();
  v171 = *(v10 - 8);
  v11 = *(v171 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v146 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v124 - v15;
  v132 = v17;
  MEMORY[0x28223BE20](v14);
  v153 = &v124 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF410, &qword_22D7302D0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v175 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v169 = &v124 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF418, &qword_22D7302D8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v124 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF420, &qword_22D7302E0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v168 = &v124 - v34;
  v148 = sub_22D72D910();
  v173 = *(v148 - 8);
  v35 = *(v173 + 64);
  MEMORY[0x28223BE20](v148);
  v147 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_22D72DA40();
  v37 = *(v164 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v164);
  v163 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v162 = &v124 - v41;
  v149 = sub_22D72D980();
  v166 = *(v149 - 8);
  v42 = *(v166 + 64);
  MEMORY[0x28223BE20](v149);
  v154 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v167 = result;
  if (result)
  {
    v150 = v4;
    v172 = v19;
    v131 = v16;
    v165 = v44;
    v46 = v149;
    v161 = *(v44 + 16);
    if (v161)
    {
      v47 = v166;
      v160 = v165 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      swift_beginAccess();
      result = swift_beginAccess();
      v48 = 0;
      v130 = v28 + 8;
      v159 = v47 + 16;
      v158 = *MEMORY[0x277CB9610];
      v157 = (v37 + 104);
      v156 = (v37 + 8);
      v155 = (v47 + 8);
      v49 = v154;
      v145 = (v173 + 8);
      v173 = v171 + 16;
      v143 = (v20 + 56);
      v142 = (v20 + 48);
      v151 = (v171 + 32);
      v141 = (v171 + 56);
      v140 = (v171 + 48);
      v139 = (v171 + 8);
      v129 = &v178;
      v128 = (v170 + 8);
      v127 = (v150 + 8);
      *&v50 = 136446466;
      v124 = v50;
      v174 = v10;
      v144 = v28;
      v152 = v33;
      while (v48 < *(v165 + 16))
      {
        v51 = v10;
        v52 = *(v166 + 72);
        v170 = v48;
        (*(v166 + 16))(v49, v160 + v52 * v48, v46);
        v53 = v162;
        v54 = v49;
        sub_22D72D970();
        v55 = v163;
        v56 = v46;
        v57 = v164;
        (*v157)(v163, v158, v164);
        v58 = sub_22D72DA30();
        v59 = *v156;
        (*v156)(v55, v57);
        v59(v53, v57);
        if (v58)
        {
          v60 = v147;
          sub_22D72D960();
          v61 = sub_22D72D900();
          v63 = v62;
          (*v145)(v60, v148);
          v64 = *(v167 + 232);
          v65 = 1 << *(v64 + 32);
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          else
          {
            v66 = -1;
          }

          v67 = v66 & *(v64 + 64);
          v68 = (v65 + 63) >> 6;
          v69 = *(v167 + 232);
          result = swift_bridgeObjectRetain_n();
          v70 = 0;
          v150 = v61;
          if (!v67)
          {
LABEL_13:
            v72 = v168;
            while (1)
            {
              v71 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                break;
              }

              if (v71 >= v68)
              {

                v84 = v144;
                v85 = v172;
                (*v143)(v144, 1, 1, v172);
                goto LABEL_26;
              }

              v67 = *(v64 + 64 + 8 * v71);
              ++v70;
              if (v67)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }

          while (1)
          {
            v71 = v70;
LABEL_17:
            v73 = __clz(__rbit64(v67)) | (v71 << 6);
            v74 = v169;
            (*(v171 + 16))(v169, *(v64 + 48) + *(v171 + 72) * v73, v174);
            v75 = (*(v64 + 56) + 16 * v73);
            v76 = *v75;
            v77 = v75[1];
            v78 = v172;
            v79 = &v74[*(v172 + 48)];
            *v79 = v76;
            *(v79 + 1) = v77;
            v80 = v74;
            v81 = v175;
            sub_22D6D591C(v80, v175, &qword_27D9FF410, &qword_22D7302D0);
            v82 = (v81 + *(v78 + 48));
            v83 = *v82 == v61 && v82[1] == v63;
            if (v83 || (sub_22D72E980() & 1) != 0)
            {
              break;
            }

            v67 &= v67 - 1;

            result = sub_22D6D5984(v175, &qword_27D9FF410, &qword_22D7302D0);
            v70 = v71;
            if (!v67)
            {
              goto LABEL_13;
            }
          }

          v84 = v144;
          sub_22D6D591C(v175, v144, &qword_27D9FF410, &qword_22D7302D0);
          v85 = v172;
          (*v143)(v84, 0, 1, v172);
          v72 = v168;
LABEL_26:

          v86 = (*v142)(v84, 1, v85);
          v10 = v174;
          v87 = v152;
          v88 = v153;
          if (v86 == 1)
          {
            sub_22D6D5984(v84, &qword_27D9FF418, &qword_22D7302D8);
            v89 = 1;
          }

          else
          {
            v90 = *&v130[*(v85 + 48)];

            (*v151)(v72, v84, v10);
            v89 = 0;
          }

          v49 = v154;
          (*v141)(v72, v89, 1, v10);
          sub_22D6D5A4C(v72, v87, &qword_27D9FF420, &qword_22D7302E0);
          if ((*v140)(v87, 1, v10) == 1)
          {

            sub_22D6D5984(v72, &qword_27D9FF420, &qword_22D7302E0);
            v46 = v149;
            (*v155)(v49, v149);
            result = sub_22D6D5984(v87, &qword_27D9FF420, &qword_22D7302E0);
          }

          else
          {
            v91 = *v151;
            (*v151)(v88, v87, v10);
            if (qword_2814572B0 != -1)
            {
              swift_once();
            }

            v92 = sub_22D72DBE0();
            __swift_project_value_buffer(v92, qword_2814580B8);
            v93 = *v173;
            v94 = v131;
            (*v173)(v131, v88, v10);

            v95 = sub_22D72DBB0();
            v96 = sub_22D72E5A0();

            v97 = os_log_type_enabled(v95, v96);
            v98 = v150;
            if (v97)
            {
              v99 = swift_slowAlloc();
              v126 = v91;
              v100 = v99;
              v125 = swift_slowAlloc();
              aBlock[0] = v125;
              *v100 = v124;
              sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
              v101 = sub_22D72E960();
              v103 = v102;
              v138 = *v139;
              v138(v94, v10);
              v104 = sub_22D72891C(v101, v103, aBlock);

              *(v100 + 4) = v104;
              *(v100 + 12) = 2082;
              v105 = sub_22D72891C(v98, v63, aBlock);

              *(v100 + 14) = v105;
              _os_log_impl(&dword_22D6B4000, v95, v96, "%{public}s:%{public}s: Activity was cancelled by the server", v100, 0x16u);
              v106 = v125;
              swift_arrayDestroy();
              MEMORY[0x2318D0420](v106, -1, -1);
              v107 = v100;
              v91 = v126;
              MEMORY[0x2318D0420](v107, -1, -1);
            }

            else
            {

              v138 = *v139;
              v138(v94, v10);
            }

            v108 = v146;
            v109 = v153;
            v93(v146, v153, v10);
            v110 = v167;
            swift_beginAccess();
            sub_22D6BB7CC(0, 0, v108);
            swift_endAccess();
            v93(v108, v109, v10);
            v111 = type metadata accessor for Alarm(0);
            v112 = v133;
            (*(*(v111 - 8) + 56))(v133, 1, 1, v111);
            swift_beginAccess();
            sub_22D6BB998(v112, v108);
            swift_endAccess();
            sub_22D6D5A4C(v110 + 16, aBlock, &unk_27D9FFEA0, &qword_22D730138);
            v46 = v149;
            if (v179)
            {
              sub_22D6D42A8(aBlock, v176);
              sub_22D6D5984(aBlock, &unk_27D9FFEA0, &qword_22D730138);
              v113 = *__swift_project_boxed_opaque_existential_1(v176, v176[3]);
              sub_22D722AEC(v109);
              __swift_destroy_boxed_opaque_existential_1Tm(v176);
            }

            else
            {
              sub_22D6D5984(aBlock, &unk_27D9FFEA0, &qword_22D730138);
            }

            v114 = v167;
            sub_22D6BF9DC();
            v115 = *(v114 + 224);
            v116 = v146;
            v93(v146, v109, v10);
            v117 = (*(v171 + 80) + 24) & ~*(v171 + 80);
            v118 = swift_allocObject();
            *(v118 + 16) = v114;
            v91(v118 + v117, v116, v174);
            v180 = sub_22D6D59E4;
            v181 = v118;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v178 = sub_22D6C0FD8;
            v179 = &block_descriptor_179;
            v119 = _Block_copy(aBlock);

            v120 = v134;
            sub_22D72E330();
            v176[0] = MEMORY[0x277D84F90];
            sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
            sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
            v121 = v136;
            v122 = v137;
            sub_22D72E6E0();
            MEMORY[0x2318CF7A0](0, v120, v121, v119);
            _Block_release(v119);
            v123 = v122;
            v10 = v174;
            (*v128)(v121, v123);
            (*v127)(v120, v135);
            v138(v109, v10);
            sub_22D6D5984(v168, &qword_27D9FF420, &qword_22D7302E0);
            v49 = v154;
            (*v155)(v154, v46);
          }
        }

        else
        {
          result = (*v155)(v54, v56);
          v46 = v56;
          v49 = v54;
          v10 = v51;
        }

        v48 = v170 + 1;
        if (v170 + 1 == v161)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22D6C702C(void **a1)
{
  v1 = *a1;
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22D72DBE0();
  __swift_project_value_buffer(v2, qword_2814580B8);
  v3 = v1;
  v4 = sub_22D72DBB0();
  v5 = sub_22D72E580();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22D6B4000, v4, v5, "ActivityManager failed to subscribe to activity content stream: %{public}@", v6, 0xCu);
    sub_22D6D5984(v7, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v7, -1, -1);
    MEMORY[0x2318D0420](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3F0, &qword_22D7302A8);
  return sub_22D72DC50();
}

uint64_t sub_22D6C71B4(uint64_t *a1)
{
  v2 = sub_22D72E300();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E370();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 216);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v12;
    v20 = v14;
    aBlock[4] = sub_22D6D5624;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6C0FD8;
    aBlock[3] = &block_descriptor_169;
    v16 = v8;
    v17 = _Block_copy(aBlock);

    sub_22D72E330();
    v22 = MEMORY[0x277D84F90];
    sub_22D6D5884(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    v19 = v7;
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v11, v6, v17);
    _Block_release(v17);
    (*(v3 + 8))(v6, v2);
    (*(v16 + 8))(v11, v19);
  }

  return result;
}

uint64_t sub_22D6C74D0(void *a1, uint64_t a2)
{
  v4 = sub_22D72DA40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v32 - v9;
  v10 = sub_22D72DA20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[15];
  v33 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1 + 12, v15);
  v17 = *v16;
  v18 = *(*v16 + 56);
  v44 = sub_22D6D562C;
  v45 = v17;
  os_unfair_lock_lock(v18 + 4);
  sub_22D6D5648(&v46);
  os_unfair_lock_unlock(v18 + 4);
  v34 = v46;
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = v11 + 16;
    v39 = *(v11 + 16);
    v21 = v5;
    v22 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v38 = *MEMORY[0x277CB9610];
    v23 = (v21 + 8);
    v36 = (v20 - 8);
    v37 = (v21 + 104);
    v40 = v10;
    v41 = v20;
    v35 = *(v20 + 56);
    v39(v14, v22, v10);
    while (1)
    {
      v25 = v42;
      sub_22D72DA00();
      v26 = v43;
      (*v37)(v43, v38, v4);
      sub_22D6D5884(&unk_2814580A0, MEMORY[0x277CB9618]);
      v27 = sub_22D72E400();
      v28 = *v23;
      (*v23)(v26, v4);
      v29 = v28(v25, v4);
      if ((v27 & 1) == 0)
      {
        v30 = MEMORY[0x2318CFD00](v29);
        sub_22D6C780C(v14, v34, v33);
        objc_autoreleasePoolPop(v30);
      }

      v24 = v40;
      (*v36)(v14, v40);
      v22 += v35;
      if (!--v19)
      {
        break;
      }

      v39(v14, v22, v24);
    }
  }
}

void sub_22D6C780C(uint64_t *a1, Class a2, void *a3)
{
  v423 = a3;
  v408 = a2;
  v427 = sub_22D72DA20();
  v424 = *(v427 - 8);
  v4 = *(v424 + 64);
  v5 = MEMORY[0x28223BE20](v427);
  v421 = (v377 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v400 = v377 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v392 = v377 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v390 = v377 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v385 = v377 - v14;
  MEMORY[0x28223BE20](v13);
  v383 = v377 - v15;
  v401 = sub_22D72DD20();
  v405 = *(v401 - 8);
  v16 = *(v405 + 64);
  MEMORY[0x28223BE20](v401);
  v399 = v377 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D72D9A0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v406 = v377 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF280, &qword_22D730120);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v402 = v377 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF288, &qword_22D730128);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v403 = v377 - v26;
  v411 = sub_22D72D7A0();
  v407 = *(v411 - 8);
  v27 = *(v407 + 64);
  MEMORY[0x28223BE20](v411);
  v397 = v377 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3E0, &qword_22D730290);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v382 = v377 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v389 = v377 - v33;
  v388 = sub_22D72D9B0();
  v387 = *(v388 - 8);
  v34 = *(v387 + 64);
  MEMORY[0x28223BE20](v388);
  v386 = v377 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = sub_22D72D910();
  v420 = *(v422 - 8);
  isa = v420[8].isa;
  v37 = MEMORY[0x28223BE20](v422);
  v413 = v377 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v418 = v377 - v40;
  MEMORY[0x28223BE20](v39);
  v409 = v377 - v41;
  v42 = type metadata accessor for Alarm(0);
  v43 = *(v42 - 8);
  v416 = v42;
  v417 = v43;
  v44 = v43[8].isa;
  v45 = MEMORY[0x28223BE20](v42);
  v394 = v377 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v45);
  v395 = v377 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v393 = v377 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v384 = v377 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v412 = v377 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v381 = v377 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v380 = v377 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v379 = v377 - v59;
  MEMORY[0x28223BE20](v58);
  v396 = v377 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v415 = (v377 - v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v391 = v377 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v410 = v377 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v398 = v377 - v71;
  MEMORY[0x28223BE20](v70);
  v414 = v377 - v72;
  v425 = sub_22D72D850();
  v73 = *(v425 - 1);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v425);
  v76 = v377 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22D72DF80();
  v419 = *(v77 - 8);
  v78 = *(v419 + 64);
  v79 = MEMORY[0x28223BE20](v77);
  v404 = v377 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v82 = v377 - v81;
  v83 = sub_22D72D570();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  v86 = sub_22D72D560();
  v428 = a1;
  sub_22D72DA10();
  v87 = sub_22D72D830();
  v89 = v88;
  v90 = v76;
  v91 = v77;
  (*(v73 + 8))(v90, v425);
  sub_22D6D5884(&qword_2814571D8, MEMORY[0x277CB9A20]);
  v92 = v426;
  sub_22D72D550();
  if (!v92)
  {
    v111 = v415;
    v421 = v44;
    sub_22D6D5664(v87, v89);
    v112 = sub_22D72DF70();
    v114 = v423;
    v115 = v427;
    if (v113)
    {
      if (v112 == 0xD000000000000015 && v113 == 0x800000022D731F70)
      {

LABEL_13:
        (*(v419 + 8))(v82, v91);
        return;
      }

      v116 = sub_22D72E980();

      if (v116)
      {

        goto LABEL_13;
      }
    }

    v378 = v91;
    MEMORY[0x28223BE20](v112);
    v425 = v82;
    v377[-2] = v82;
    sub_22D6D5DB4(sub_22D6D56B8, &v377[-4], v408, v111);
    v426 = 0;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v118 = (*(*(v117 - 8) + 48))(v111, 1, v117);
    v377[1] = v86;
    if (v118 == 1)
    {
      sub_22D6D5984(v111, &qword_27D9FF9E0, &qword_22D730298);
      v119 = v414;
      v408 = v417[7].isa;
      (v408)(v414, 1, 1, v416);
    }

    else
    {
      v119 = v414;
      sub_22D6D3C4C(v111 + *(v117 + 48), v414);
      v408 = v417[7].isa;
      (v408)(v119, 0, 1, v416);
      (*(v407 + 8))(v111, v411);
    }

    v120 = v413;
    v121 = v409;
    v122 = v114[34];
    v123 = v114[35];
    __swift_project_boxed_opaque_existential_1(v114 + 31, v122);
    v124 = (*(v123 + 16))(v122, v123);
    v125 = v416;
    v126 = v417;
    if (v124)
    {
      goto LABEL_30;
    }

    v127 = v398;
    sub_22D6D5A4C(v119, v398, &qword_27D9FF550, &qword_22D730130);
    if ((v126[6].isa)(v127, 1, v125) == 1)
    {
      sub_22D6D5984(v127, &qword_27D9FF550, &qword_22D730130);
      goto LABEL_30;
    }

    v128 = v396;
    sub_22D6D3C4C(v127, v396);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3E8, &qword_22D7302A0);
    v129 = v405;
    v130 = *(v405 + 72);
    v131 = (*(v405 + 80) + 32) & ~*(v405 + 80);
    v132 = v125;
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_22D730030;
    v134 = v133 + v131;
    v135 = *(v129 + 104);
    v136 = v401;
    v135(v134, *MEMORY[0x277CB9918], v401);
    v135(v134 + v130, *MEMORY[0x277CB9908], v136);
    LOBYTE(v130) = sub_22D71E1AC(v128 + *(v132 + 44), v133);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v130 & 1) == 0)
    {
      sub_22D6D5740(v128, type metadata accessor for Alarm);
      v119 = v414;
      v125 = v416;
      v126 = v417;
      v120 = v413;
      v115 = v427;
      goto LABEL_30;
    }

    sub_22D72D9F0();
    v137 = sub_22D72D8F0();
    v138 = v420 + 1;
    v139 = v420[1].isa;
    v139(v121, v422);
    v140 = v387;
    v141 = v386;
    v142 = v388;
    (*(v387 + 104))(v386, *MEMORY[0x277CB94F8], v388);
    if (*(v137 + 16))
    {
      v415 = v138;
      v143 = sub_22D6CC640(v141);
      v144 = v389;
      if (v145)
      {
        v146 = v143;
        v409 = v139;
        v147 = v140;
        v148 = *(v137 + 56);
        v149 = v142;
        v150 = sub_22D72DAC0();
        v151 = v141;
        v152 = *(v150 - 8);
        sub_22D6D56D8(v148 + *(v152 + 72) * v146, v144, MEMORY[0x277CB9790]);
        (*(v147 + 8))(v151, v149);

        (*(v152 + 56))(v144, 0, 1, v150);
        v153 = v382;
        sub_22D6D591C(v144, v382, &qword_27D9FF3E0, &qword_22D730290);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22D6D5740(v396, type metadata accessor for Alarm);
          sub_22D6D5740(v153, MEMORY[0x277CB9790]);
LABEL_29:
          v115 = v427;
          v119 = v414;
          v125 = v416;
          v126 = v417;
          v120 = v413;
          goto LABEL_30;
        }

        if (qword_2814572B0 != -1)
        {
          swift_once();
        }

        v337 = sub_22D72DBE0();
        v338 = __swift_project_value_buffer(v337, qword_2814580B8);
        v339 = v379;
        sub_22D6D56D8(v396, v379, type metadata accessor for Alarm);
        v398 = v338;
        v340 = sub_22D72DBB0();
        v341 = sub_22D72E5A0();
        v342 = os_log_type_enabled(v340, v341);
        v343 = v409;
        if (v342)
        {
          v344 = swift_slowAlloc();
          v345 = swift_slowAlloc();
          v430 = v345;
          *v344 = 136446210;
          sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v346 = sub_22D72E960();
          v348 = v347;
          sub_22D6D5740(v339, type metadata accessor for Alarm);
          v349 = sub_22D72891C(v346, v348, &v430);

          *(v344 + 4) = v349;
          _os_log_impl(&dword_22D6B4000, v340, v341, "%{public}s: Cancelling activity with UI provided by the app's widget extension", v344, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v345);
          MEMORY[0x2318D0420](v345, -1, -1);
          MEMORY[0x2318D0420](v344, -1, -1);
        }

        else
        {

          sub_22D6D5740(v339, type metadata accessor for Alarm);
        }

        v350 = v397;
        v351 = v396;
        (*(v407 + 16))(v397, v396, v411);
        v352 = v423;
        swift_beginAccess();
        sub_22D6BB7CC(0, 0, v350);
        swift_endAccess();
        v353 = __swift_project_boxed_opaque_existential_1(v352 + 17, v352[20]);
        v354 = v418;
        sub_22D72D9F0();
        sub_22D72D900();
        v343(v354, v422);
        v355 = sub_22D72D8E0();
        v356 = v403;
        (*(*(v355 - 8) + 56))(v403, 1, 1, v355);
        sub_22D72D990();
        v357 = v402;
        sub_22D72D930();
        v358 = sub_22D72D940();
        (*(*(v358 - 8) + 56))(v357, 0, 1, v358);
        v359 = *v353;
        sub_22D72D860();

        sub_22D6D5984(v357, &qword_27D9FF280, &qword_22D730120);
        sub_22D6D5984(v356, &qword_27D9FF288, &qword_22D730128);
        v360 = v351;
        v361 = v380;
        sub_22D6D56D8(v360, v380, type metadata accessor for Alarm);
        v362 = sub_22D72DBB0();
        v363 = sub_22D72E5A0();
        if (os_log_type_enabled(v362, v363))
        {
          v364 = swift_slowAlloc();
          v365 = swift_slowAlloc();
          v430 = v365;
          *v364 = 136446210;
          sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v366 = sub_22D72E960();
          v368 = v367;
          sub_22D6D5740(v361, type metadata accessor for Alarm);
          v369 = sub_22D72891C(v366, v368, &v430);

          *(v364 + 4) = v369;
          _os_log_impl(&dword_22D6B4000, v362, v363, "%{public}s: Restarting activity with UI provided by our launch angel", v364, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v365);
          MEMORY[0x2318D0420](v365, -1, -1);
          MEMORY[0x2318D0420](v364, -1, -1);
        }

        else
        {

          sub_22D6D5740(v361, type metadata accessor for Alarm);
        }

        v370 = v427;
        v371 = v417;
        v372 = v381;
        v120 = v413;
        v373 = v396;
        sub_22D6D56D8(v396, v381, type metadata accessor for Alarm);
        v374 = (LOBYTE(v371[10].isa) + 16) & ~LOBYTE(v371[10].isa);
        v375 = swift_allocObject();
        sub_22D6D3C4C(v372, v375 + v374);
        sub_22D6BBE4C(v373, sub_22D6D57A0, v375);
        v126 = v417;

        sub_22D6D5740(v373, type metadata accessor for Alarm);
        v376 = sub_22D72DAD0();
        (*(*(v376 - 8) + 8))(v153, v376);
        v119 = v414;
        v125 = v416;
        v115 = v370;
LABEL_30:
        v158 = v410;
        sub_22D6D5A4C(v119, v410, &qword_27D9FF550, &qword_22D730130);
        if ((v126[6].isa)(v158, 1, v125) == 1)
        {
          v159 = v119;
          sub_22D6D5984(v158, &qword_27D9FF550, &qword_22D730130);
          if (qword_2814572B0 != -1)
          {
            swift_once();
          }

          v160 = sub_22D72DBE0();
          __swift_project_value_buffer(v160, qword_2814580B8);
          v161 = v424;
          v162 = v400;
          v163 = v115;
          (*(v424 + 16))(v400, v428, v115);
          v164 = v419;
          v165 = v404;
          v166 = v378;
          (*(v419 + 16))(v404, v425, v378);
          v167 = sub_22D72DBB0();
          v168 = sub_22D72E5A0();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            v421 = swift_slowAlloc();
            v430 = v421;
            *v169 = 136446466;
            v170 = v418;
            v417 = v167;
            sub_22D72D9F0();
            v171 = sub_22D72D900();
            LODWORD(v416) = v168;
            v173 = v172;
            v174 = v420;
            (v420[1].isa)(v170, v422);
            (*(v161 + 8))(v162, v163);
            v175 = sub_22D72891C(v171, v173, &v430);

            *(v169 + 4) = v175;
            *(v169 + 12) = 2082;
            v176 = v397;
            v177 = v404;
            sub_22D72DF50();
            sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
            v178 = v166;
            v179 = v411;
            v180 = sub_22D72E960();
            v182 = v181;
            (*(v407 + 8))(v176, v179);
            (*(v419 + 8))(v177, v178);
            v183 = sub_22D72891C(v180, v182, &v430);
            v184 = v422;
            v185 = v414;

            *(v169 + 14) = v183;
            v186 = v170;
            v187 = v417;
            _os_log_impl(&dword_22D6B4000, v417, v416, "ActivityManager detected orphaned activity %{public}s for alarm with client ID %{public}s", v169, 0x16u);
            v188 = v421;
            swift_arrayDestroy();
            v189 = v188;
            v190 = v423;
            MEMORY[0x2318D0420](v189, -1, -1);
            MEMORY[0x2318D0420](v169, -1, -1);
          }

          else
          {

            (*(v164 + 8))(v165, v166);
            (*(v161 + 8))(v162, v163);
            v184 = v422;
            v190 = v423;
            v174 = v420;
            v186 = v418;
            v185 = v159;
          }

          v211 = __swift_project_boxed_opaque_existential_1(v190 + 17, v190[20]);
          sub_22D72D9F0();
          sub_22D72D900();
          (v174[1].isa)(v186, v184);
          v212 = sub_22D72D8E0();
          v213 = v403;
          (*(*(v212 - 8) + 56))(v403, 1, 1, v212);
          sub_22D72D990();
          v214 = v402;
          sub_22D72D930();
          v215 = sub_22D72D940();
          (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
          v216 = *v211;
          sub_22D72D860();

          sub_22D6D5984(v214, &qword_27D9FF280, &qword_22D730120);
          sub_22D6D5984(v213, &qword_27D9FF288, &qword_22D730128);
        }

        else
        {
          v191 = v120;
          v192 = v412;
          sub_22D6D3C4C(v158, v412);
          v193 = v423;
          swift_beginAccess();
          v194 = v193[29];
          v195 = v405;
          v196 = v399;
          v197 = v115;
          if (*(v194 + 16))
          {

            v198 = sub_22D6CC49C(v192);
            if (v199)
            {
              v200 = (*(v194 + 56) + 16 * v198);
              v202 = *v200;
              v201 = v200[1];

              sub_22D72D9F0();
              v203 = sub_22D72D900();
              v205 = v204;
              v206 = v420[1].isa;
              v207 = v191;
              v208 = v422;
              ++v420;
              v206(v207, v422);
              v421 = v206;
              if (v202 == v203 && v201 == v205)
              {

                v209 = v378;
                v210 = v412;
              }

              else
              {
                v288 = sub_22D72E980();

                v209 = v378;
                v210 = v412;
                if ((v288 & 1) == 0)
                {
                  v308 = v208;
                  if (qword_2814572B0 != -1)
                  {
                    swift_once();
                  }

                  v309 = sub_22D72DBE0();
                  __swift_project_value_buffer(v309, qword_2814580B8);
                  v310 = v424;
                  v311 = v383;
                  v312 = v427;
                  (*(v424 + 16))(v383, v428, v427);
                  v313 = v384;
                  sub_22D6D56D8(v210, v384, type metadata accessor for Alarm);
                  v314 = sub_22D72DBB0();
                  v315 = sub_22D72E5A0();
                  if (os_log_type_enabled(v314, v315))
                  {
                    v316 = swift_slowAlloc();
                    v417 = swift_slowAlloc();
                    v429 = v417;
                    *v316 = 136446466;
                    v317 = v418;
                    LODWORD(v416) = v315;
                    sub_22D72D9F0();
                    v318 = sub_22D72D900();
                    v320 = v319;
                    (v421)(v317, v422);
                    (*(v310 + 8))(v311, v312);
                    v321 = sub_22D72891C(v318, v320, &v429);

                    *(v316 + 4) = v321;
                    *(v316 + 12) = 2082;
                    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
                    v322 = v384;
                    v323 = sub_22D72E960();
                    v325 = v324;
                    sub_22D6D5740(v322, type metadata accessor for Alarm);
                    v326 = sub_22D72891C(v323, v325, &v429);
                    v327 = v414;

                    *(v316 + 14) = v326;
                    v328 = v317;
                    _os_log_impl(&dword_22D6B4000, v314, v416, "ActivityManager detected duplicate activity %{public}s for alarm %{public}s", v316, 0x16u);
                    v329 = v417;
                    swift_arrayDestroy();
                    v308 = v422;
                    v330 = v423;
                    MEMORY[0x2318D0420](v329, -1, -1);
                    MEMORY[0x2318D0420](v316, -1, -1);
                  }

                  else
                  {

                    sub_22D6D5740(v313, type metadata accessor for Alarm);
                    (*(v310 + 8))(v311, v312);
                    v328 = v418;
                    v327 = v414;
                    v330 = v423;
                  }

                  v331 = __swift_project_boxed_opaque_existential_1(v330 + 17, v330[20]);
                  sub_22D72D9F0();
                  sub_22D72D900();
                  (v421)(v328, v308);
                  v332 = sub_22D72D8E0();
                  v333 = v403;
                  (*(*(v332 - 8) + 56))(v403, 1, 1, v332);
                  sub_22D72D990();
                  v334 = v402;
                  sub_22D72D930();
                  v335 = sub_22D72D940();
                  (*(*(v335 - 8) + 56))(v334, 0, 1, v335);
                  v336 = *v331;
                  sub_22D72D860();

                  sub_22D6D5984(v334, &qword_27D9FF280, &qword_22D730120);
                  sub_22D6D5984(v333, &qword_27D9FF288, &qword_22D730128);
                  sub_22D6D5740(v412, type metadata accessor for Alarm);
                  sub_22D6D5984(v327, &qword_27D9FF550, &qword_22D730130);
                  v277 = v419;
                  goto LABEL_58;
                }
              }

              if (qword_2814572B0 != -1)
              {
                swift_once();
              }

              v289 = sub_22D72DBE0();
              __swift_project_value_buffer(v289, qword_2814580B8);
              v290 = v424;
              v291 = v385;
              (*(v424 + 16))(v385, v428, v115);
              v292 = v393;
              sub_22D6D56D8(v210, v393, type metadata accessor for Alarm);
              v293 = sub_22D72DBB0();
              v294 = sub_22D72E5A0();
              if (os_log_type_enabled(v293, v294))
              {
                v295 = swift_slowAlloc();
                v428 = swift_slowAlloc();
                v429 = v428;
                *v295 = 136446466;
                v296 = v115;
                v297 = v418;
                LODWORD(v423) = v294;
                sub_22D72D9F0();
                v298 = sub_22D72D900();
                v300 = v299;
                (v421)(v297, v422);
                (*(v290 + 8))(v291, v296);
                v301 = sub_22D72891C(v298, v300, &v429);

                *(v295 + 4) = v301;
                *(v295 + 12) = 2082;
                sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
                v302 = v393;
                v303 = sub_22D72E960();
                v305 = v304;
                sub_22D6D5740(v302, type metadata accessor for Alarm);
                v306 = sub_22D72891C(v303, v305, &v429);

                *(v295 + 14) = v306;
                _os_log_impl(&dword_22D6B4000, v293, v423, "ActivityManager ignoring valid activity %{public}s for alarm %{public}s", v295, 0x16u);
                v307 = v428;
                swift_arrayDestroy();
                MEMORY[0x2318D0420](v307, -1, -1);
                MEMORY[0x2318D0420](v295, -1, -1);

                sub_22D6D5740(v210, type metadata accessor for Alarm);
                sub_22D6D5984(v414, &qword_27D9FF550, &qword_22D730130);
                v278 = v378;
                v277 = v419;
              }

              else
              {

                sub_22D6D5740(v292, type metadata accessor for Alarm);
                (*(v290 + 8))(v291, v115);
                sub_22D6D5740(v210, type metadata accessor for Alarm);
                sub_22D6D5984(v414, &qword_27D9FF550, &qword_22D730130);
                v277 = v419;
                v278 = v209;
              }

              goto LABEL_59;
            }

            v192 = v412;
          }

          v217 = v192 + *(v125 + 44);
          v218 = v401;
          (*(v195 + 16))(v196, v217, v401);
          v219 = (*(v195 + 88))(v196, v218);
          if (v219 != *MEMORY[0x277CB9920])
          {
            if (v219 != *MEMORY[0x277CB9918] && v219 != *MEMORY[0x277CB9908] && v219 != *MEMORY[0x277CB9910])
            {
              sub_22D72E970();
              __break(1u);
              return;
            }

            v244 = v119;
            v245 = v390;
            if (qword_2814572B0 != -1)
            {
              swift_once();
            }

            v246 = sub_22D72DBE0();
            __swift_project_value_buffer(v246, qword_2814580B8);
            v247 = v424;
            (*(v424 + 16))(v245, v428, v115);
            v248 = v395;
            sub_22D6D56D8(v192, v395, type metadata accessor for Alarm);
            v249 = sub_22D72DBB0();
            v250 = sub_22D72E5A0();
            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              v421 = swift_slowAlloc();
              v429 = v421;
              *v251 = 136446466;
              v415 = v249;
              v252 = v245;
              v253 = v418;
              LODWORD(v413) = v250;
              sub_22D72D9F0();
              v254 = sub_22D72D900();
              v256 = v255;
              v257 = v420;
              v258 = v422;
              (v420[1].isa)(v253, v422);
              (*(v247 + 8))(v252, v197);
              v259 = sub_22D72891C(v254, v256, &v429);

              *(v251 + 4) = v259;
              *(v251 + 12) = 2082;
              sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
              v260 = v395;
              v261 = v411;
              v262 = sub_22D72E960();
              v264 = v263;
              sub_22D6D5740(v260, type metadata accessor for Alarm);
              v265 = sub_22D72891C(v262, v264, &v429);
              v266 = v414;

              *(v251 + 14) = v265;
              v267 = v253;
              v268 = v415;
              _os_log_impl(&dword_22D6B4000, v415, v413, "ActivityManager detected unmapped activity %{public}s for alarm %{public}s", v251, 0x16u);
              v269 = v421;
              swift_arrayDestroy();
              v270 = v423;
              MEMORY[0x2318D0420](v269, -1, -1);
              MEMORY[0x2318D0420](v251, -1, -1);
            }

            else
            {

              sub_22D6D5740(v248, type metadata accessor for Alarm);
              (*(v247 + 8))(v245, v115);
              v258 = v422;
              v270 = v423;
              v257 = v420;
              v267 = v418;
              v261 = v411;
              v266 = v244;
            }

            sub_22D72D9F0();
            v279 = sub_22D72D900();
            v281 = v280;
            (v257[1].isa)(v267, v258);
            swift_beginAccess();
            v282 = v270[29];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v431 = v270[29];
            v270[29] = 0x8000000000000000;
            v284 = v281;
            v285 = v412;
            sub_22D6CEC5C(v279, v284, v412, isUniquelyReferenced_nonNull_native);
            v270[29] = v431;
            swift_endAccess();
            v286 = v397;
            (*(v407 + 16))(v397, v285, v261);
            v287 = v391;
            sub_22D6D56D8(v285, v391, type metadata accessor for Alarm);
            (v408)(v287, 0, 1, v416);
            swift_beginAccess();
            sub_22D6BB998(v287, v286);
            swift_endAccess();

            sub_22D6D5740(v285, type metadata accessor for Alarm);
            sub_22D6D5984(v266, &qword_27D9FF550, &qword_22D730130);
            v278 = v378;
            v277 = v419;
LABEL_59:
            (*(v277 + 8))(v425, v278);
            return;
          }

          v220 = v119;
          if (qword_2814572B0 != -1)
          {
            swift_once();
          }

          v221 = sub_22D72DBE0();
          __swift_project_value_buffer(v221, qword_2814580B8);
          v222 = v424;
          v223 = v392;
          (*(v424 + 16))(v392, v428, v115);
          v224 = v394;
          sub_22D6D56D8(v192, v394, type metadata accessor for Alarm);
          v225 = sub_22D72DBB0();
          v226 = sub_22D72E5A0();
          if (os_log_type_enabled(v225, v226))
          {
            v227 = swift_slowAlloc();
            v421 = swift_slowAlloc();
            v429 = v421;
            *v227 = 136446466;
            v228 = v418;
            LODWORD(v417) = v226;
            sub_22D72D9F0();
            v229 = sub_22D72D900();
            v231 = v230;
            v232 = v420;
            (v420[1].isa)(v228, v422);
            (*(v222 + 8))(v223, v197);
            v233 = sub_22D72891C(v229, v231, &v429);

            *(v227 + 4) = v233;
            *(v227 + 12) = 2082;
            sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
            v234 = v394;
            v235 = sub_22D72E960();
            v237 = v236;
            sub_22D6D5740(v234, type metadata accessor for Alarm);
            v238 = sub_22D72891C(v235, v237, &v429);
            v239 = v422;
            v185 = v414;

            *(v227 + 14) = v238;
            v240 = v228;
            _os_log_impl(&dword_22D6B4000, v225, v417, "ActivityManager detected activity %{public}s for ineligible alarm %{public}s", v227, 0x16u);
            v241 = v421;
            swift_arrayDestroy();
            v242 = v241;
            v243 = v423;
            MEMORY[0x2318D0420](v242, -1, -1);
            MEMORY[0x2318D0420](v227, -1, -1);
          }

          else
          {

            sub_22D6D5740(v224, type metadata accessor for Alarm);
            (*(v222 + 8))(v223, v115);
            v239 = v422;
            v243 = v423;
            v232 = v420;
            v240 = v418;
            v185 = v220;
          }

          v271 = __swift_project_boxed_opaque_existential_1(v243 + 17, v243[20]);
          sub_22D72D9F0();
          sub_22D72D900();
          (v232[1].isa)(v240, v239);
          v272 = sub_22D72D8E0();
          v273 = v403;
          (*(*(v272 - 8) + 56))(v403, 1, 1, v272);
          sub_22D72D990();
          v274 = v402;
          sub_22D72D930();
          v275 = sub_22D72D940();
          (*(*(v275 - 8) + 56))(v274, 0, 1, v275);
          v276 = *v271;
          sub_22D72D860();

          sub_22D6D5984(v274, &qword_27D9FF280, &qword_22D730120);
          sub_22D6D5984(v273, &qword_27D9FF288, &qword_22D730128);
          sub_22D6D5740(v412, type metadata accessor for Alarm);
        }

        sub_22D6D5984(v185, &qword_27D9FF550, &qword_22D730130);
        v277 = v419;
LABEL_58:
        v278 = v378;
        goto LABEL_59;
      }

      (*(v140 + 8))(v141, v142);
      sub_22D6D5740(v128, type metadata accessor for Alarm);
      v157 = sub_22D72DAC0();
      (*(*(v157 - 8) + 56))(v144, 1, 1, v157);
      v156 = v144;
    }

    else
    {

      (*(v140 + 8))(v141, v142);
      sub_22D6D5740(v128, type metadata accessor for Alarm);
      v154 = sub_22D72DAC0();
      v155 = v389;
      (*(*(v154 - 8) + 56))(v389, 1, 1, v154);
      v156 = v155;
    }

    sub_22D6D5984(v156, &qword_27D9FF3E0, &qword_22D730290);
    goto LABEL_29;
  }

  sub_22D6D5664(v87, v89);
  if (qword_2814572B0 != -1)
  {
    swift_once();
  }

  v93 = sub_22D72DBE0();
  __swift_project_value_buffer(v93, qword_2814580B8);
  v94 = v424;
  v95 = v421;
  v96 = v427;
  (*(v424 + 16))(v421, v428, v427);
  v97 = v92;
  v98 = sub_22D72DBB0();
  v99 = sub_22D72E580();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v425 = swift_slowAlloc();
    v428 = swift_slowAlloc();
    v430 = v428;
    *v100 = 136315394;
    v101 = v418;
    sub_22D72D9F0();
    v102 = sub_22D72D900();
    v426 = v92;
    v104 = v103;
    (v420[1].isa)(v101, v422);
    (*(v94 + 8))(v95, v96);
    v105 = sub_22D72891C(v102, v104, &v430);

    *(v100 + 4) = v105;
    *(v100 + 12) = 2114;
    v106 = v426;
    v107 = v426;
    v108 = _swift_stdlib_bridgeErrorToNSError();
    *(v100 + 14) = v108;
    v109 = v425;
    *v425 = v108;
    _os_log_impl(&dword_22D6B4000, v98, v99, "ActivityManager failed to decode presentation state for activity ID %s: %{public}@", v100, 0x16u);
    sub_22D6D5984(v109, &unk_27D9FF4D0, &qword_22D730180);
    MEMORY[0x2318D0420](v109, -1, -1);
    v110 = v428;
    __swift_destroy_boxed_opaque_existential_1Tm(v428);
    MEMORY[0x2318D0420](v110, -1, -1);
    MEMORY[0x2318D0420](v100, -1, -1);
  }

  else
  {

    (*(v94 + 8))(v95, v96);
  }
}

uint64_t sub_22D6CA8AC(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v3 = sub_22D72D7A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_22D6D5A4C(a1, v20 - v14, &unk_27D9FF4A0, &qword_22D730510);
  v16 = &v15[*(v12 + 56)];
  v17 = type metadata accessor for Alarm(0);
  (*(v4 + 16))(v10, v16 + *(v17 + 20), v3);
  sub_22D6D5740(v16, type metadata accessor for Alarm);
  sub_22D72DF50();
  LOBYTE(v16) = sub_22D72D780();
  v18 = *(v4 + 8);
  v18(v8, v3);
  v18(v10, v3);
  v18(v15, v3);
  return v16 & 1;
}

void sub_22D6CAAB4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (a3)
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v15 = sub_22D72DBE0();
    __swift_project_value_buffer(v15, qword_2814580B8);
    sub_22D6D56D8(a4, v12, type metadata accessor for Alarm);
    v16 = a1;
    v17 = sub_22D72DBB0();
    v18 = sub_22D72E5A0();
    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v19 = 136446466;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v22 = sub_22D72E960();
      v24 = v23;
      sub_22D6D5740(v12, type metadata accessor for Alarm);
      v25 = sub_22D72891C(v22, v24, &v39);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2114;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_22D6B4000, v17, v18, "Error restarting activity for alarm: %{public}s - %{public}@", v19, 0x16u);
      sub_22D6D5984(v20, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2318D0420](v21, -1, -1);
      MEMORY[0x2318D0420](v19, -1, -1);

      return;
    }

    v37 = v12;
  }

  else
  {
    if (qword_2814572B0 != -1)
    {
      swift_once();
    }

    v28 = sub_22D72DBE0();
    __swift_project_value_buffer(v28, qword_2814580B8);
    sub_22D6D56D8(a4, v14, type metadata accessor for Alarm);
    v29 = sub_22D72DBB0();
    v30 = sub_22D72E5A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136446210;
      sub_22D72D7A0();
      sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v33 = sub_22D72E960();
      v35 = v34;
      sub_22D6D5740(v14, type metadata accessor for Alarm);
      v36 = sub_22D72891C(v33, v35, &v39);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_22D6B4000, v29, v30, "Successfully restarted activity for alarm: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2318D0420](v32, -1, -1);
      MEMORY[0x2318D0420](v31, -1, -1);

      return;
    }

    v37 = v14;
  }

  sub_22D6D5740(v37, type metadata accessor for Alarm);
}

uint64_t sub_22D6CAF64()
{

  v0 = sub_22D72E500();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_22D72E500();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_22D72E980();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_22D72E500();
      v3 = v5;
    }

    while (v5);
  }

  sub_22D72E500();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_22D6CB0C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 288);

  v6 = sub_22D6D5084(v5, a1, sub_22D6D46AC, sub_22D6D46AC);

  v7 = sub_22D6CB2CC(v6);

  v8 = *(a1 + 288);

  v10 = sub_22D6D5084(v9, a1, sub_22D6D4B98, sub_22D6D4B98);

  v11 = sub_22D6CB2CC(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF338, &qword_22D7301E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D730030;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF340, &qword_22D7301E8);
  *(inited + 48) = v7;
  *(inited + 72) = v13;
  *(inited + 80) = 0x6576697463616E69;
  *(inited + 120) = v13;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v11;
  v14 = sub_22D6D4390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF348, &unk_22D7301F0);
  result = swift_arrayDestroy();
  *a2 = v14;
  return result;
}

unint64_t sub_22D6CB2CC(uint64_t a1)
{
  v68 = type metadata accessor for Alarm(0);
  v67 = *(v68 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20]();
  v5 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v60[1] = v1;
  v88 = MEMORY[0x277D84F90];
  sub_22D6D3320(0, v6, 0);
  v7 = v88;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  v10 = sub_22D72E6F0();
  v66 = 0x800000022D731F90;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF358, &qword_22D730200);
  v65 = result;
  v12 = 0;
  v61 = a1 + 72;
  v64 = a1;
  v62 = v6;
  v63 = a1 + 64;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_29;
    }

    v71 = 1 << v10;
    v72 = v10 >> 6;
    v69 = v12;
    v73 = v7;
    v70 = *(a1 + 36);
    sub_22D6D56D8(*(a1 + 56) + *(v67 + 72) * v10, v5, type metadata accessor for Alarm);
    v76 = 25705;
    v77 = 0xE200000000000000;
    sub_22D72D7A0();
    sub_22D6D5884(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v78 = sub_22D72E960();
    v79 = v15;
    v80 = 0xD000000000000017;
    v81 = v66;
    v16 = v68;
    v17 = *(v68 + 56);
    sub_22D72D730();
    sub_22D6D5884(&unk_27D9FF4F0, MEMORY[0x277CC9578]);
    v82 = sub_22D72E960();
    v83 = v18;
    v84 = 0x6574617473;
    v85 = 0xE500000000000000;
    v74 = 0;
    v75 = 0xE000000000000000;
    v19 = *(v16 + 44);
    sub_22D72DD20();
    v20 = v5;
    sub_22D72E850();
    v86 = v74;
    v87 = v75;
    v21 = sub_22D72E8A0();

    v23 = v76;
    v22 = v77;
    v24 = v78;
    v25 = v79;

    result = sub_22D6CC714(v23, v22);
    if (v26)
    {
      goto LABEL_26;
    }

    v27 = v21 + 8;
    *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v28 = (v21[6] + 16 * result);
    *v28 = v23;
    v28[1] = v22;
    v29 = (v21[7] + 16 * result);
    *v29 = v24;
    v29[1] = v25;
    v30 = v21[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_27;
    }

    v21[2] = v32;
    v33 = v80;
    v34 = v81;
    v35 = v82;
    v36 = v83;

    result = sub_22D6CC714(v33, v34);
    if (v37)
    {
      goto LABEL_26;
    }

    *(v27 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v38 = (v21[6] + 16 * result);
    *v38 = v33;
    v38[1] = v34;
    v39 = (v21[7] + 16 * result);
    *v39 = v35;
    v39[1] = v36;
    v40 = v21[2];
    v31 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v31)
    {
      goto LABEL_27;
    }

    v21[2] = v41;
    v42 = v84;
    v43 = v85;
    v44 = v86;
    v45 = v87;

    result = sub_22D6CC714(v42, v43);
    if (v46)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

    *(v27 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v47 = (v21[6] + 16 * result);
    *v47 = v42;
    v47[1] = v43;
    v48 = (v21[7] + 16 * result);
    *v48 = v44;
    v48[1] = v45;
    v49 = v21[2];
    v31 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v31)
    {
      goto LABEL_27;
    }

    v21[2] = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF360, &qword_22D730208);
    swift_arrayDestroy();
    v5 = v20;
    result = sub_22D6D5740(v20, type metadata accessor for Alarm);
    v7 = v73;
    v88 = v73;
    v52 = *(v73 + 16);
    v51 = *(v73 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_22D6D3320((v51 > 1), v52 + 1, 1);
      v7 = v88;
    }

    *(v7 + 16) = v52 + 1;
    *(v7 + 8 * v52 + 32) = v21;
    a1 = v64;
    v13 = 1 << *(v64 + 32);
    v8 = v63;
    if (v10 >= v13)
    {
      goto LABEL_30;
    }

    v53 = *(v63 + 8 * v72);
    if ((v53 & v71) == 0)
    {
      goto LABEL_31;
    }

    if (v70 != *(v64 + 36))
    {
      goto LABEL_32;
    }

    v54 = v53 & (-2 << (v10 & 0x3F));
    if (v54)
    {
      v13 = __clz(__rbit64(v54)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v14 = v62;
    }

    else
    {
      v55 = v72 << 6;
      v56 = v72 + 1;
      v57 = (v61 + 8 * v72);
      v14 = v62;
      while (v56 < (v13 + 63) >> 6)
      {
        v59 = *v57++;
        v58 = v59;
        v55 += 64;
        ++v56;
        if (v59)
        {
          result = sub_22D6D5264(v10, v70, 0);
          v13 = __clz(__rbit64(v58)) + v55;
          goto LABEL_4;
        }
      }

      result = sub_22D6D5264(v10, v70, 0);
    }

LABEL_4:
    v12 = v69 + 1;
    v10 = v13;
    if (v69 + 1 == v14)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D6CB94C()
{
  v1 = *(*v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF530, &qword_22D7301D8);
  sub_22D72E600();
  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_22D6CBA4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF320, &qword_22D7301C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22D6CBB50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF388, &qword_22D730230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF390, &qword_22D730238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22D6CBC98(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF380, &qword_22D730228);
  v10 = *(sub_22D72DDC0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22D72DDC0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22D6CBE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A8, &qword_22D730258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22D6CBF7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF328, &qword_22D7301D0);
  v4 = *(type metadata accessor for Alarm(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6CC078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22D6CC49C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22D6CFC78();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22D72D7A0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Alarm(0);
    v22 = *(v15 - 8);
    sub_22D6D3C4C(v14 + *(v22 + 72) * v8, a2);
    sub_22D6CE40C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Alarm(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_22D6CC200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22D6CC714(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22D6D0100();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22D6D5254((*(v12 + 56) + 32 * v9), a3);
    sub_22D6CE750(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22D6CC2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22D6CC714(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22D6D02A4();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_22D72E100();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_22D6CE900(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22D72E100();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22D6CC414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22D6CC78C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22D6D0524();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_22D6CEAEC(v10, v9);
  *v2 = v9;
  return v11;
}

unint64_t sub_22D6CC49C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D72D7A0();
  v5 = MEMORY[0x277CC95F0];
  sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0]);
  v6 = sub_22D72E3D0();
  return sub_22D6CC7D0(a1, v6, MEMORY[0x277CC95F0], &qword_27D9FF330, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_22D6CC570()
{
  result = qword_27D9FF290;
  if (!qword_27D9FF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF290);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22D6CC640(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D72D9B0();
  v5 = MEMORY[0x277CB9500];
  sub_22D6D5884(&qword_27D9FF2F8, MEMORY[0x277CB9500]);
  v6 = sub_22D72E3D0();
  return sub_22D6CC7D0(a1, v6, MEMORY[0x277CB9500], &qword_27D9FF300, v5, MEMORY[0x277CB9518]);
}

unint64_t sub_22D6CC714(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  v6 = sub_22D72EA40();

  return sub_22D6CC970(a1, a2, v6);
}

unint64_t sub_22D6CC78C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22D72EA10();

  return sub_22D6CCA28(a1, v4);
}

unint64_t sub_22D6CC7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_22D6D5884(v24, v25);
      v20 = sub_22D72E400();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_22D6CC970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22D72E980())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22D6CCA28(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22D6CCA94(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2E0, &qword_22D730188);
  v48 = a2;
  result = sub_22D72E890();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0]);
      result = sub_22D72E3D0();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22D6CCE7C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Alarm(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF308, &qword_22D7301B0);
  v48 = a2;
  result = sub_22D72E890();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22D6D3C4C(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22D6D56D8(v33 + v32 * v28, v52, type metadata accessor for Alarm);
      }

      v34 = *(v16 + 40);
      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0]);
      result = sub_22D72E3D0();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_22D6D3C4C(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_22D6CD2F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF378, &qword_22D730220);
  v38 = a2;
  result = sub_22D72E890();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22D6CD59C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF350, &qword_22D730FF0);
  v36 = a2;
  result = sub_22D72E890();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22D6D5254(v25, v37);
      }

      else
      {
        sub_22D6D5270(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22D6D5254(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22D6CD854(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_22D72E100();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
  v46 = a2;
  result = sub_22D72E890();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22D6CDBD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B8, &qword_22D730268);
  result = sub_22D72E890();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_22D72EA10();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22D6CDE44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B0, &qword_22D730260);
  v38 = a2;
  result = sub_22D72E890();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22D72EA20();
      sub_22D72E4E0();
      result = sub_22D72EA40();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_22D6CE0EC(int64_t a1, uint64_t a2)
{
  v43 = sub_22D72D7A0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_22D72E700();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0]);
      v26 = sub_22D72E3D0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_22D6CE40C(int64_t a1, uint64_t a2)
{
  v4 = sub_22D72D7A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_22D72E700();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0]);
      v24 = sub_22D72E3D0();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for Alarm(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D6CE750(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D72E700() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22D72EA20();

      sub_22D72E4E0();
      v14 = sub_22D72EA40();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22D6CE900(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D72E700() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22D72EA20();

      sub_22D72E4E0();
      v13 = sub_22D72EA40();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_22D72E100() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D6CEAEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D72E700() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22D72EA10();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22D6CEC5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_22D72D7A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_22D6CC49C(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_22D6CF9EC();
      goto LABEL_9;
    }

    sub_22D6CCA94(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_22D6CC49C(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22D72E9A0();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_22D6CF734(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_22D6CEE38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22D6CC49C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22D6CFC78();
      goto LABEL_7;
    }

    sub_22D6CCE7C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_22D6CC49C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22D6CF7F4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22D72E9A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for Alarm(0) - 8) + 72) * v15;

  return sub_22D6D430C(a1, v23);
}

uint64_t sub_22D6CF020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D6CC714(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D6CD2F4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22D6CC714(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22D72E9A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22D6CFF90();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_22D6CF19C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D6CC714(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22D6D0100();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22D6CD59C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22D6CC714(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22D72E9A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_22D6D5254(a1, v23);
  }

  else
  {
    sub_22D6CF8D0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22D6CF2EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22D6CC714(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22D6D02A4();
      goto LABEL_7;
    }

    sub_22D6CD854(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_22D6CC714(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22D72E9A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22D72E100();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22D6CF93C(v12, a2, a3, a1, v18);
}

unint64_t sub_22D6CF46C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22D6CC78C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22D6CDBD4(v14, a3 & 1);
      v18 = *v4;
      result = sub_22D6CC78C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22D72E9A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22D6D0524();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_22D6CF5B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22D6CC714(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22D6CDE44(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22D6CC714(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22D72E9A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22D6D0680();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_22D6CF734(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_22D72D7A0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_22D6CF7F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22D72D7A0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Alarm(0);
  result = sub_22D6D3C4C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_22D6CF8D0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22D6D5254(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_22D6CF93C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22D72E100();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_22D6CF9EC()
{
  v1 = v0;
  v36 = sub_22D72D7A0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2E0, &qword_22D730188);
  v4 = *v0;
  v5 = sub_22D72E880();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_22D6CFC78()
{
  v1 = v0;
  v2 = type metadata accessor for Alarm(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22D72D7A0();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF308, &qword_22D7301B0);
  v7 = *v0;
  v8 = sub_22D72E880();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_22D6D56D8(*(v7 + 56) + v28, v37, type metadata accessor for Alarm);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_22D6D3C4C(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_22D6CFF90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF378, &qword_22D730220);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22D6D0100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF350, &qword_22D730FF0);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22D6D5270(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22D6D5254(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_22D6D02A4()
{
  v1 = v0;
  v36 = sub_22D72E100();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
  v4 = *v0;
  v5 = sub_22D72E880();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22D6D0524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B8, &qword_22D730268);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22D6D0680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3B0, &qword_22D730260);
  v2 = *v0;
  v3 = sub_22D72E880();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22D6D07F0(void **a1)
{
  v2 = *(type metadata accessor for Alarm(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22D6D39FC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22D6D0898(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22D6D0898(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22D72E950();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Alarm(0);
        v6 = sub_22D72E540();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Alarm(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22D6D0BE4(v8, v9, a1, v4);
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
    return sub_22D6D09C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22D6D09C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Alarm(0);
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_22D6D56D8(v24, v18, type metadata accessor for Alarm);
      sub_22D6D56D8(v21, v14, type metadata accessor for Alarm);
      v25 = sub_22D717E28(v18, v14);
      sub_22D6D5740(v14, type metadata accessor for Alarm);
      result = sub_22D6D5740(v18, type metadata accessor for Alarm);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_22D6D3C4C(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22D6D3C4C(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6D0BE4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v191 = a4;
  v192 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v202 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v201 = &v191 - v9;
  v10 = sub_22D72DCF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v191 - v16;
  v18 = sub_22D72D730();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v196 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v191 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v220 = &v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v223 = &v191 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v228 = &v191 - v32;
  MEMORY[0x28223BE20](v31);
  v227 = &v191 - v33;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF318, &qword_22D7301C0);
  v34 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v242 = &v191 - v35;
  v238 = type metadata accessor for Alarm(0);
  v218 = *(v238 - 1);
  v36 = *(v218 + 64);
  v37 = MEMORY[0x28223BE20](v238);
  v208 = &v191 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v232 = &v191 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v237 = &v191 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v236 = &v191 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v217 = &v191 - v46;
  MEMORY[0x28223BE20](v45);
  v216 = &v191 - v47;
  v224 = a3;
  if (a3[1] < 1)
  {
    v50 = MEMORY[0x277D84F90];
    v54 = v195;
LABEL_146:
    v11 = *v192;
    if (!*v192)
    {
      goto LABEL_184;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_148:
      v246 = v50;
      v186 = *(v50 + 2);
      if (v186 >= 2)
      {
        while (*v224)
        {
          v187 = *&v50[16 * v186];
          v188 = *&v50[16 * v186 + 24];
          sub_22D6D2424(*v224 + *(v218 + 72) * v187, *v224 + *(v218 + 72) * *&v50[16 * v186 + 16], *v224 + *(v218 + 72) * v188, v11);
          if (v54)
          {
          }

          if (v188 < v187)
          {
            goto LABEL_171;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_22D6D299C(v50);
          }

          if (v186 - 2 >= *(v50 + 2))
          {
            goto LABEL_172;
          }

          v189 = &v50[16 * v186];
          *v189 = v187;
          *(v189 + 1) = v188;
          v246 = v50;
          sub_22D6D2910(v186 - 1);
          v50 = v246;
          v186 = *(v246 + 2);
          if (v186 <= 1)
          {
          }
        }

        goto LABEL_182;
      }
    }

LABEL_178:
    v50 = sub_22D6D299C(v50);
    goto LABEL_148;
  }

  v48 = a3[1];
  v49 = 0;
  v233 = *MEMORY[0x277CB9910];
  v235 = *MEMORY[0x277CB9918];
  v225 = *MEMORY[0x277CB9908];
  v209 = (v11 + 48);
  v199 = (v11 + 32);
  v198 = (v11 + 8);
  v219 = (v19 + 48);
  v207 = (v19 + 32);
  v206 = (v19 + 8);
  v211 = *MEMORY[0x277CB9920];
  v200 = v10;
  v194 = v15;
  v193 = v17;
  v229 = v18;
  v215 = v24;
  v50 = MEMORY[0x277D84F90];
  v52 = v237;
  v51 = v238;
  v53 = v236;
  v54 = v195;
  while (1)
  {
    v55 = v49;
    v203 = v50;
    v197 = v49;
    if (v49 + 1 >= v48)
    {
      v66 = v49 + 1;
      v73 = v191;
    }

    else
    {
      v195 = v54;
      v226 = v48;
      v56 = *v224;
      v57 = *(v218 + 72);
      v11 = *v224 + v57 * (v49 + 1);
      v58 = v216;
      sub_22D6D56D8(v11, v216, type metadata accessor for Alarm);
      v59 = v217;
      sub_22D6D56D8(v56 + v57 * v49, v217, type metadata accessor for Alarm);
      v60 = sub_22D717E28(v58, v59);
      sub_22D6D5740(v59, type metadata accessor for Alarm);
      sub_22D6D5740(v58, type metadata accessor for Alarm);
      v61 = v49 + 2;
      v62 = v56 + v57 * (v49 + 2);
      while (v226 != v61)
      {
        v63 = v216;
        sub_22D6D56D8(v62, v216, type metadata accessor for Alarm);
        v64 = v217;
        sub_22D6D56D8(v11, v217, type metadata accessor for Alarm);
        v65 = sub_22D717E28(v63, v64) & 1;
        sub_22D6D5740(v64, type metadata accessor for Alarm);
        sub_22D6D5740(v63, type metadata accessor for Alarm);
        ++v61;
        v62 += v57;
        v11 += v57;
        if ((v60 & 1) != v65)
        {
          v226 = v61 - 1;
          break;
        }
      }

      v53 = v236;
      v52 = v237;
      v54 = v195;
      if (v60)
      {
        v66 = v226;
        v55 = v197;
        v50 = v203;
        if (v226 < v197)
        {
          goto LABEL_175;
        }

        if (v197 >= v226)
        {
          v73 = v191;
          v51 = v238;
        }

        else
        {
          v67 = v226;
          v68 = v57 * (v226 - 1);
          v69 = v226 * v57;
          v70 = v197;
          v71 = v197 * v57;
          do
          {
            if (v70 != --v67)
            {
              v72 = *v224;
              if (!*v224)
              {
                goto LABEL_181;
              }

              v11 = v72 + v71;
              sub_22D6D3C4C(v72 + v71, v208);
              if (v71 < v68 || v11 >= v72 + v69)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v71 != v68)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22D6D3C4C(v208, v72 + v68);
              v50 = v203;
            }

            ++v70;
            v68 -= v57;
            v69 -= v57;
            v71 += v57;
          }

          while (v70 < v67);
          v73 = v191;
          v52 = v237;
          v51 = v238;
          v53 = v236;
          v66 = v226;
          v55 = v197;
          v54 = v195;
        }
      }

      else
      {
        v73 = v191;
        v50 = v203;
        v51 = v238;
        v66 = v226;
        v55 = v197;
      }
    }

    v74 = v224[1];
    if (v66 >= v74)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v66, v55))
    {
      goto LABEL_174;
    }

    if (v66 - v55 >= v73)
    {
LABEL_35:
      v49 = v66;
      if (v66 < v55)
      {
        goto LABEL_173;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v55, v73))
    {
      goto LABEL_176;
    }

    if (v55 + v73 >= v74)
    {
      v75 = v224[1];
    }

    else
    {
      v75 = v55 + v73;
    }

    if (v75 < v55)
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v66 == v75)
    {
      goto LABEL_35;
    }

    v195 = v54;
    v122 = *v224;
    v123 = *(v218 + 72);
    v124 = *v224 + v123 * (v66 - 1);
    v230 = -v123;
    v231 = v122;
    v125 = v55 - v66;
    v204 = v123;
    v11 = v122 + v66 * v123;
    v205 = v75;
LABEL_89:
    v226 = v66;
    v212 = v11;
    v213 = v125;
    v126 = v125;
    v214 = v124;
LABEL_90:
    v240 = v126;
    v241 = v11;
    sub_22D6D56D8(v11, v53, type metadata accessor for Alarm);
    sub_22D6D56D8(v124, v52, type metadata accessor for Alarm);
    v127 = v51[11];
    v128 = *(v234 + 48);
    v129 = sub_22D72DD20();
    v130 = *(v129 - 8);
    v131 = *(v130 + 16);
    v132 = v242;
    v131(v242, v53 + v127, v129);
    v131(&v132[v128], v52 + v127, v129);
    v133 = v128;
    v239 = v130;
    v134 = *(v130 + 88);
    LODWORD(v127) = v134(v132, v129);
    v135 = v134(&v132[v128], v129);
    if (v127 == v233)
    {
      v51 = v238;
      v53 = v236;
      if (v135 != v233)
      {
        goto LABEL_118;
      }

      v136 = v238[14];
      v52 = v237;
      v137 = sub_22D72D6C0();
      goto LABEL_132;
    }

    v138 = v235;
    if (v135 == v235)
    {
      v139 = v242;
      v140 = v134(v242, v129) == v138;
      v51 = v238;
      v53 = v236;
      if (v140)
      {
        v245 = 0;
        v243 = 0u;
        v244 = 0u;
        v221 = v238[14];
        v141 = v227;
        sub_22D713738(&v243, &v236[v221], v227);
        sub_22D6D5984(&v243, &qword_27D9FF500, &qword_22D730530);
        v245 = 0;
        v243 = 0u;
        v244 = 0u;
        v222 = v51[14];
        sub_22D713738(&v243, v237 + v222, v228);
        sub_22D6D5984(&v243, &qword_27D9FF500, &qword_22D730530);
        v142 = v223;
        sub_22D6D5A4C(v141, v223, &qword_27D9FFDD0, &qword_22D730140);
        v143 = *v219;
        v144 = (*v219)(v142, 1, v229);
        v145 = v142;
        v146 = v220;
        if (v144 != 1)
        {
          v147 = v229;
          v210 = *v207;
          v210(v215, v223, v229);
          sub_22D6D5A4C(v228, v146, &qword_27D9FFDD0, &qword_22D730140);
          if (v143(v146, 1, v147) != 1)
          {
            v165 = v196;
            v166 = v229;
            v210(v196, v220, v229);
            v167 = v215;
            v137 = sub_22D72D6D0();
            v168 = v165;
            v169 = *v206;
            (*v206)(v168, v166);
            v169(v167, v166);
            sub_22D6D5984(v227, &qword_27D9FFDD0, &qword_22D730140);
            sub_22D6D5984(v228, &qword_27D9FFDD0, &qword_22D730140);
            (*(v239 + 8))(&v242[v133], v129);
            v52 = v237;
            v51 = v238;
            goto LABEL_132;
          }

          (*v206)(v215, v229);
          v145 = v146;
          v141 = v227;
        }

        sub_22D6D5984(v145, &qword_27D9FFDD0, &qword_22D730140);
        v148 = v229;
        v149 = v143(v141, 1, v229);
        v150 = v228;
        if (v149 != 1 && v143(v228, 1, v148) == 1)
        {
          sub_22D6D5984(v227, &qword_27D9FFDD0, &qword_22D730140);
          sub_22D6D5984(v150, &qword_27D9FFDD0, &qword_22D730140);
          v51 = v238;
LABEL_118:
          (*(v239 + 8))(&v242[v133], v129);
          v52 = v237;
          sub_22D6D5740(v237, type metadata accessor for Alarm);
          sub_22D6D5740(v53, type metadata accessor for Alarm);
          v164 = v241;
          goto LABEL_133;
        }

        if (v143(v150, 1, v148) != 1)
        {
          sub_22D6D5984(v227, &qword_27D9FFDD0, &qword_22D730140);
          sub_22D6D5984(v150, &qword_27D9FFDD0, &qword_22D730140);
          (*(v239 + 8))(&v242[v133], v129);
          v52 = v237;
          v51 = v238;
          goto LABEL_87;
        }

        v52 = v237;
        v137 = sub_22D72D6C0();
        sub_22D6D5984(v227, &qword_27D9FFDD0, &qword_22D730140);
        sub_22D6D5984(v150, &qword_27D9FFDD0, &qword_22D730140);
        (*(v239 + 8))(&v242[v133], v129);
        v51 = v238;
        goto LABEL_132;
      }
    }

    else
    {
      v139 = v242;
      v51 = v238;
      v53 = v236;
      if (v135 == v233)
      {
        goto LABEL_139;
      }
    }

    v151 = v134(v139, v129);
    if (v151 == v235)
    {
      goto LABEL_118;
    }

    v139 = v242;
    v152 = v134(&v242[v128], v129);
    if (v152 == v235)
    {
      goto LABEL_139;
    }

    v153 = v225;
    if (v152 == v225 && v134(v139, v129) == v153)
    {
      break;
    }

    v140 = v134(v139, v129) == v153;
    v51 = v238;
    if (v140)
    {
      goto LABEL_118;
    }

    v139 = v242;
    v158 = v134(&v242[v128], v129);
    if (v158 == v211)
    {
      v159 = v211;
      v140 = v134(v139, v129) == v159;
      v51 = v238;
      if (!v140)
      {
        goto LABEL_117;
      }

      v160 = v238[14];
      v52 = v237;
      v161 = sub_22D72D6C0();
      v162 = v139;
      v137 = v161;
      (*(v239 + 8))(&v162[v128], v129);
      goto LABEL_132;
    }

    if (v158 == v225)
    {
LABEL_139:
      v183 = *(v239 + 8);
      v183(&v139[v133], v129);
      v183(v139, v129);
    }

    else
    {
LABEL_117:
      v163 = v134(v139, v129);
      if (v163 == v211)
      {
        goto LABEL_118;
      }

      v184 = v242;
      v185 = v134(&v242[v133], v129);
      if (v185 != v211)
      {
        goto LABEL_185;
      }

      (*(v239 + 8))(v184, v129);
    }

    v52 = v237;
LABEL_87:
    sub_22D6D5740(v52, type metadata accessor for Alarm);
    sub_22D6D5740(v53, type metadata accessor for Alarm);
LABEL_88:
    v66 = v226 + 1;
    v124 = v214 + v204;
    v125 = v213 - 1;
    v11 = v212 + v204;
    v49 = v205;
    if (v226 + 1 != v205)
    {
      goto LABEL_89;
    }

    v54 = v195;
    v50 = v203;
    if (v205 < v197)
    {
      goto LABEL_173;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_22D6CBA4C(0, *(v50 + 2) + 1, 1, v50);
    }

    v77 = *(v50 + 2);
    v76 = *(v50 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v50 = sub_22D6CBA4C((v76 > 1), v77 + 1, 1, v50);
    }

    *(v50 + 2) = v78;
    v79 = &v50[16 * v77];
    *(v79 + 4) = v197;
    *(v79 + 5) = v49;
    v11 = *v192;
    if (!*v192)
    {
      goto LABEL_183;
    }

    if (v77)
    {
      while (2)
      {
        v80 = v78 - 1;
        if (v78 >= 4)
        {
          v85 = &v50[16 * v78 + 32];
          v86 = *(v85 - 64);
          v87 = *(v85 - 56);
          v91 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          if (v91)
          {
            goto LABEL_160;
          }

          v90 = *(v85 - 48);
          v89 = *(v85 - 40);
          v91 = __OFSUB__(v89, v90);
          v83 = v89 - v90;
          v84 = v91;
          if (v91)
          {
            goto LABEL_161;
          }

          v92 = &v50[16 * v78];
          v94 = *v92;
          v93 = *(v92 + 1);
          v91 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v91)
          {
            goto LABEL_163;
          }

          v91 = __OFADD__(v83, v95);
          v96 = v83 + v95;
          if (v91)
          {
            goto LABEL_166;
          }

          if (v96 >= v88)
          {
            v114 = &v50[16 * v80 + 32];
            v116 = *v114;
            v115 = *(v114 + 1);
            v91 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v91)
            {
              goto LABEL_170;
            }

            if (v83 < v117)
            {
              v80 = v78 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v84)
            {
              goto LABEL_162;
            }

            v97 = &v50[16 * v78];
            v99 = *v97;
            v98 = *(v97 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_165;
            }

            v103 = &v50[16 * v80 + 32];
            v105 = *v103;
            v104 = *(v103 + 1);
            v91 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v91)
            {
              goto LABEL_168;
            }

            if (__OFADD__(v101, v106))
            {
              goto LABEL_169;
            }

            if (v101 + v106 < v83)
            {
              goto LABEL_69;
            }

            if (v83 < v106)
            {
              v80 = v78 - 2;
            }
          }
        }

        else
        {
          if (v78 == 3)
          {
            v81 = *(v50 + 4);
            v82 = *(v50 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
            goto LABEL_55;
          }

          v107 = &v50[16 * v78];
          v109 = *v107;
          v108 = *(v107 + 1);
          v91 = __OFSUB__(v108, v109);
          v101 = v108 - v109;
          v102 = v91;
LABEL_69:
          if (v102)
          {
            goto LABEL_164;
          }

          v110 = &v50[16 * v80];
          v112 = *(v110 + 4);
          v111 = *(v110 + 5);
          v91 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v91)
          {
            goto LABEL_167;
          }

          if (v113 < v101)
          {
            break;
          }
        }

        v118 = v80 - 1;
        if (v80 - 1 >= v78)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (!*v224)
        {
          goto LABEL_180;
        }

        v119 = *&v50[16 * v118 + 32];
        v120 = *&v50[16 * v80 + 40];
        sub_22D6D2424(*v224 + *(v218 + 72) * v119, *v224 + *(v218 + 72) * *&v50[16 * v80 + 32], *v224 + *(v218 + 72) * v120, v11);
        if (v54)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_22D6D299C(v50);
        }

        if (v118 >= *(v50 + 2))
        {
          goto LABEL_159;
        }

        v121 = &v50[16 * v118];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        v246 = v50;
        sub_22D6D2910(v80);
        v50 = v246;
        v78 = *(v246 + 2);
        v51 = v238;
        v53 = v236;
        if (v78 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v48 = v224[1];
    if (v49 >= v48)
    {
      goto LABEL_146;
    }
  }

  v154 = v201;
  sub_22D6D5A4C(v53 + v238[9], v201, &qword_27D9FF310, &qword_22D7301B8);
  v155 = v200;
  v221 = *v209;
  if ((v221)(v154, 1, v200) == 1)
  {
    sub_22D6D5984(v154, &qword_27D9FF310, &qword_22D7301B8);
    LODWORD(v222) = 1;
    v156 = 0.0;
    v157 = v202;
  }

  else
  {
    v170 = v193;
    (*v199)(v193, v154, v155);
    if (*(v53 + v238[7]))
    {
      v171 = sub_22D72DCE0();
    }

    else
    {
      v171 = sub_22D72DCD0();
    }

    v173 = *&v171;
    LODWORD(v222) = v172;
    (*v198)(v170, v155);
    v156 = v173;
    v157 = v202;
  }

  v51 = v238;
  sub_22D6D5A4C(v237 + v238[9], v157, &qword_27D9FF310, &qword_22D7301B8);
  if ((v221)(v157, 1, v155) == 1)
  {
    sub_22D6D5984(v157, &qword_27D9FF310, &qword_22D7301B8);
    if ((v222 & 1) == 0)
    {
      goto LABEL_118;
    }

LABEL_131:
    v179 = v51[14];
    v52 = v237;
    v137 = sub_22D72D6C0();
    (*(v239 + 8))(&v242[v133], v129);
    goto LABEL_132;
  }

  v174 = v194;
  (*v199)(v194, v157, v155);
  if (*(v237 + v51[7]))
  {
    *&v175 = COERCE_DOUBLE(sub_22D72DCE0());
  }

  else
  {
    *&v175 = COERCE_DOUBLE(sub_22D72DCD0());
  }

  v177 = *&v175;
  v178 = v176;
  (*v198)(v174, v155);
  if (v222)
  {
    goto LABEL_131;
  }

  if (v178)
  {
    goto LABEL_118;
  }

  v137 = v156 < v177;
  (*(v239 + 8))(&v242[v133], v129);
  v52 = v237;
LABEL_132:
  sub_22D6D5740(v52, type metadata accessor for Alarm);
  sub_22D6D5740(v53, type metadata accessor for Alarm);
  v164 = v241;
  if ((v137 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_133:
  v180 = v240;
  if (v231)
  {
    v181 = v232;
    sub_22D6D3C4C(v164, v232);
    swift_arrayInitWithTakeFrontToBack();
    sub_22D6D3C4C(v181, v124);
    v124 += v230;
    v11 = v164 + v230;
    v182 = __CFADD__(v180, 1);
    v126 = v180 + 1;
    if (v182)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  result = sub_22D72E970();
  __break(1u);
  return result;
}