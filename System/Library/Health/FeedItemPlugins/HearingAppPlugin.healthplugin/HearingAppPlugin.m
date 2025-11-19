uint64_t sub_29D5D9520@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29D65FF64();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29D5D9554()
{
  v1 = sub_29D65F314();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D5D963C()
{
  v1 = sub_29D65F314();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D5D9714()
{
  MEMORY[0x29ED63410](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5D974C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D5D97A0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D5D97F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29D65DBC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D5D98A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D65DBC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D5D9990(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D5D99BC()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D5D9A4C()
{
  if (v0[5])
  {
    sub_29D5DF1C4(v0 + 2);
  }

  if (v0[10])
  {
    sub_29D5DF1C4(v0 + 7);
  }

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29D5D9A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D5D9B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D5D9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_29D65DBC4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_29D5D9BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_29D65DBC4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_29D5D9C70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29D65DD54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D5D9D1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D65DD54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D5D9DC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D5D9E50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5D9E88()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D5D9F2C()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D5D9FC0()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D5DA064()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DA09C()
{
  sub_29D5EA87C(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D65DF04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_29D65E0E4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 16) & ~v7;
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v11 + 8);

  (*(v6 + 8))(v0 + v12, v5);
  v15 = *(v0 + v13);

  return MEMORY[0x2A1C733A0](v0, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_29D5DA26C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DA2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D65F314();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D5DA310(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D65F314();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D5DA380()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D5DA3EC()
{
  MEMORY[0x29ED63410](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DA428()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DA470()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D5DA4B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D5DA550()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DA5E4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DA670()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D5DA6C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29D65DD54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D5DA770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D65DD54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D5DA814()
{
  MEMORY[0x29ED63410](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DA84C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DA884(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 2;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_29D61F2E4(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_29D5DA974(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *result = (a2 + 1);
  }

  else
  {
    sub_29D61F2E4(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D5DAA4C()
{
  v1 = v0[2];
  if (v1 >= 2)
  {
  }

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D5DAAAC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DAAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudiogramPDFChartData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D5DABAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AudiogramPDFChartData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D5DACA0@<X0>(void *a1@<X8>)
{
  result = sub_29D65FA64();
  *a1 = v3;
  return result;
}

uint64_t sub_29D5DACF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D65FAA4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29D5DAD28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_29D65FAB4();
}

uint64_t sub_29D5DAD68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DADA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D65FA84();
  *a1 = result;
  return result;
}

uint64_t sub_29D5DADFC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DAE7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D65D9A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29D5DAF28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29D65D9A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D5DAFCC(uint64_t a1)
{
  sub_29D63B050();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5DB040@<X0>(void *a1@<X8>)
{
  result = sub_29D65FA24();
  *a1 = v3;
  return result;
}

uint64_t sub_29D5DB0A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DB0DC(uint64_t a1, uint64_t a2)
{
  sub_29D63ACD8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5DB144@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_29D5DB1A8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DB1E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DB220()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D5DB260()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D5DB2A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D65EB94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29D5DB34C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29D65EB94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D5DB3FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 57, 7);
}

uint64_t sub_29D5DB434@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_29D5DB47C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_29D5DB4C0()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D5DB564()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D5DB5F8()
{
  v1 = sub_29D65DF04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D5DB68C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DB6C4()
{
  sub_29D5EA87C(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D65DF04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_29D65E0E4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 16) & ~v7;
  v13 = *(v0 + v11 + 8);

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2A1C733A0](v0, ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_29D5DB884()
{
  MEMORY[0x29ED63410](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DB8BC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D5DB8F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D5DB93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D5DB9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D5DBA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D5DBA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFAudiogramChart.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D5DBB08()
{
  sub_29D5DF1C4((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D5DBB48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_29D5DBC94(void *a1)
{
  v2 = v1;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v4 = sub_29D660264();
    if (v4)
    {
      oslog = v4;
      sub_29D5DBDF0(v4, a1);
    }

    else
    {
      v5 = v2;
      oslog = sub_29D65F2F4();
      v6 = sub_29D6601F4();

      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = *&v5[OBJC_IVAR____TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider_dataType];
        *(v7 + 4) = v9;
        *v8 = v9;
        v10 = v9;
        _os_log_impl(&dword_29D5D7000, oslog, v6, "Unable to present debug menu for %@ without a resolvedHealthStore", v7, 0xCu);
        sub_29D5DF358(v8);
        MEMORY[0x29ED63350](v8, -1, -1);
        MEMORY[0x29ED63350](v7, -1, -1);
      }
    }
  }
}

void sub_29D5DBDF0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29D65FCD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  *v11 = sub_29D6602B4();
  (*(v7 + 104))(v11, *MEMORY[0x29EDCA278], v6);
  v12 = sub_29D65FCE4();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    if ([objc_opt_self() isAppleInternalInstall])
    {
      v13 = [objc_allocWithZone(MEMORY[0x29EDC2D50]) initWithHealthStore_];
      v14 = swift_allocObject();
      v14[2] = v3;
      v14[3] = v13;
      v14[4] = a2;
      aBlock[4] = sub_29D5DF278;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D5DCB58;
      aBlock[3] = &unk_2A24315E0;
      v15 = _Block_copy(aBlock);
      v16 = v3;
      v17 = v13;
      v18 = a2;

      [v17 fetchDoseLimitInfoWithCompletion_];
      _Block_release(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D5DC020(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = sub_29D65FF24();
  v9 = sub_29D65FF24();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_29D65FF24();
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v10 addAction_];
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a3;
  v18 = sub_29D65FF24();
  v32 = sub_29D5DF2F8;
  v33 = v14;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 1107296256;
  v30 = sub_29D5DD0A4;
  v31 = &unk_2A2431680;
  v19 = _Block_copy(&v28);

  v20 = [v12 &off_29F353430 + 1];
  _Block_release(v19);

  [v10 addAction_];
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = sub_29D65FF24();
  v32 = sub_29D5DF34C;
  v33 = v21;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 1107296256;
  v30 = sub_29D5DD0A4;
  v31 = &unk_2A24316D0;
  v26 = _Block_copy(&v28);

  v27 = [v12 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_29D5DC364(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D5DD304(0, 0, a3, a4);
}

uint64_t sub_29D5DC424(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D5DCBF0(a3, a4);
}

void sub_29D5DC4DC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v56 = a6;
  v57 = a4;
  v55 = a1;
  v9 = sub_29D65FCA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D65FCC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5DF284();
  v21 = swift_allocError();
  v22 = v21;
  if (a3)
  {
    v23 = a3;

    v22 = a3;
  }

  else
  {
    v50 = v20;
    v51 = v14;
    v37 = v56;
    v52 = v15;
    v53 = v16;
    v54 = v10;
    if (a2)
    {
      v38 = a2;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

      sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
      v39 = v55;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      v40 = sub_29D6602B4();
      v41 = swift_allocObject();
      v42 = v57;
      v41[2] = v57;
      v41[3] = a5;
      v41[4] = v39;
      v41[5] = a2;
      v43 = v37;
      v41[6] = v37;
      aBlock[4] = sub_29D5DF2E8;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D60B5D0;
      aBlock[3] = &unk_2A2431630;
      v44 = _Block_copy(aBlock);
      v45 = v42;
      v46 = a5;
      v47 = v43;
      v48 = v50;
      sub_29D65FCB4();
      v58 = MEMORY[0x29EDCA190];
      sub_29D5DF17C(&qword_2A17AC0F0, MEMORY[0x29EDCA248]);
      sub_29D5DF124();
      sub_29D5DF17C(&qword_2A17AC100, sub_29D5DF124);
      v49 = v51;
      sub_29D660484();
      MEMORY[0x29ED62660](0, v48, v49, v44);
      _Block_release(v44);

      sub_29D5DF2D8(v39, v38, 0);
      (*(v54 + 8))(v49, v9);
      (*(v53 + 8))(v48, v52);

      return;
    }

    a3 = v21;
  }

  aBlock[0] = v22;
  v24 = v22;
  sub_29D5DF210(0, &qword_2A17AC108);
  swift_willThrowTypedImpl();
  v25 = v22;
  v26 = sub_29D65F2F4();
  v27 = sub_29D660214();
  sub_29D5DF2D8(a3, 0, 1);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    ErrorValue = swift_getErrorValue();
    v31 = *(*(aBlock[7] - 8) + 64);
    MEMORY[0x2A1C7C4A8](ErrorValue, aBlock[6]);
    (*(v33 + 16))(&v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = sub_29D65FF84();
    v36 = sub_29D64A1D0(v34, v35, aBlock);

    *(v28 + 4) = v36;
    _os_log_impl(&dword_29D5D7000, v26, v27, "Unable to fetch doseLimitOverride: %s", v28, 0xCu);
    sub_29D5DF1C4(v29);
    MEMORY[0x29ED63350](v29, -1, -1);
    MEMORY[0x29ED63350](v28, -1, -1);
    sub_29D5DF2D8(a3, 0, 1);
    sub_29D5DF2D8(a3, 0, 1);
  }

  else
  {
    sub_29D5DF2D8(a3, 0, 1);

    sub_29D5DF2D8(a3, 0, 1);
  }
}

uint64_t sub_29D5DCA8C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D5DC020(a3, a4, a5, a1, a2);
}

uint64_t sub_29D5DCB58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_29D65FF64();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_29D5DCBF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_29D65FCD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = (&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  *v11 = sub_29D6602B4();
  (*(v7 + 104))(v11, *MEMORY[0x29EDCA278], v6);
  v12 = sub_29D65FCE4();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    if ([objc_opt_self() isAppleInternalInstall])
    {
      v13 = sub_29D65FF24();
      v14 = sub_29D65FF24();
      v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

      v32 = sub_29D5DCFD8;
      v33 = 0;
      aBlock = MEMORY[0x29EDCA5F8];
      v29 = 1107296256;
      v30 = sub_29D5DD0A4;
      v31 = &unk_2A2431518;
      v16 = _Block_copy(&aBlock);
      [v15 addTextFieldWithConfigurationHandler_];
      _Block_release(v16);
      v17 = sub_29D65FF24();
      v18 = objc_opt_self();
      v19 = [v18 actionWithTitle:v17 style:1 handler:0];

      [v15 addAction_];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = v3;
      v21[4] = a1;
      v21[5] = a2;

      v22 = v3;
      v23 = a1;
      v24 = a2;
      v25 = sub_29D65FF24();
      v32 = sub_29D5DF26C;
      v33 = v21;
      aBlock = MEMORY[0x29EDCA5F8];
      v29 = 1107296256;
      v30 = sub_29D5DD0A4;
      v31 = &unk_2A2431590;
      v26 = _Block_copy(&aBlock);

      v27 = [v18 actionWithTitle:v25 style:0 handler:v26];
      _Block_release(v26);

      [v15 addAction_];
      [v24 presentViewController:v15 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D5DCFD8(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29D65FF24();
  [a1 setPlaceholder_];
}

void sub_29D5DD0A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_29D5DD10C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v8 = Strong;
  v9 = [Strong textFields];

  if (!v9)
  {
    Strong = 0;
    goto LABEL_17;
  }

  sub_29D5DF448(0, &qword_2A17AC110, 0x29EDC7D48);
  v10 = sub_29D660034();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_14:

LABEL_15:
    Strong = 0;
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  result = sub_29D6604B4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x29ED62900](0, v10);
LABEL_10:
    v13 = v12;

    v14 = [v13 text];

    if (v14)
    {
      v15 = sub_29D65FF64();
      v9 = v16;

      Strong = v15;
LABEL_17:
      sub_29D5DD304(Strong, v9, a4, a5);
    }

    goto LABEL_15;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_29D5DD304(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_29D65F314();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v29 - v17;
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    v31 = a4;
    v32 = a3;
    v20 = *(v11 + 16);
    v20(v18, v5 + OBJC_IVAR____TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider_logger, v10);
    if (a2 && (aBlock[0] = 0, sub_29D5DEF1C(v33, a2)))
    {
      v21 = ObjectType;
      v30 = sub_29D6600D4();
    }

    else
    {
      v21 = ObjectType;
      v30 = 0;
    }

    v20(v15, v18, v10);
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    *(v24 + 24) = a2;
    (*(v11 + 32))(v24 + v22, v15, v10);
    v25 = v31;
    *(v24 + v23) = v31;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
    aBlock[4] = sub_29D5DEA40;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D5DE350;
    aBlock[3] = &unk_2A24314A0;
    v26 = _Block_copy(aBlock);
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v27 = v25;

    v28 = v30;
    [v32 overrideDoseLimit:v30 completion:v26];
    _Block_release(v26);

    return (*(v11 + 8))(v18, v10);
  }

  return result;
}

void sub_29D5DD5D0(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v67 = a7;
  v68 = a6;
  v11 = sub_29D65FCA4();
  v71 = *(v11 - 8);
  isa = v71[8].isa;
  (MEMORY[0x2A1C7C4A8])();
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D65FCC4();
  v69 = *(v15 - 8);
  v70 = v15;
  v16 = *(v69 + 64);
  (MEMORY[0x2A1C7C4A8])();
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D65F314();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  (MEMORY[0x2A1C7C4A8])();
  if ((a1 & 1) == 0)
  {
    v27 = 0x656469727265766FLL;
    if (!a4)
    {
      v27 = 0x7465736572;
    }

    v63 = v27;
    v64 = v14;
    if (a4)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v65 = v11;
    if (a2)
    {
      v29 = a2;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      v30 = a5;
      v31 = sub_29D65F2F4();
      v32 = sub_29D660214();

      if (!os_log_type_enabled(v31, v32))
      {

LABEL_26:
        sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
        v50 = sub_29D6602B4();
        (*(v19 + 16))(&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v18);
        v51 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v52 = swift_allocObject();
        v53 = v68;
        *(v52 + 16) = a2;
        *(v52 + 24) = v53;
        (*(v19 + 32))(v52 + v51, &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
        *(v52 + ((v20 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v67;
        aBlock[4] = sub_29D5DF094;
        aBlock[5] = v52;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29D60B5D0;
        aBlock[3] = &unk_2A24314F0;
        v54 = _Block_copy(aBlock);
        v55 = a2;
        v56 = v53;
        v57 = v66;
        sub_29D65FCB4();
        v74 = MEMORY[0x29EDCA190];
        sub_29D5DF17C(&qword_2A17AC0F0, MEMORY[0x29EDCA248]);
        sub_29D5DF124();
        sub_29D5DF17C(&qword_2A17AC100, sub_29D5DF124);
        v59 = v64;
        v58 = v65;
        sub_29D660484();
        MEMORY[0x29ED62660](0, v57, v59, v54);
        _Block_release(v54);

        (v71[1].isa)(v59, v58);
        (*(v69 + 8))(v57, v70);

        return;
      }

      v33 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v33 = 136446466;
      v34 = sub_29D64A1D0(v63, v28, aBlock);
      LODWORD(v63) = v32;
      v35 = v34;

      *(v33 + 4) = v35;
      *(v33 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v61 = &v60;
      v37 = *(*(v73 - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue, v72);
      (*(v39 + 16))(&v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = sub_29D65FF84();
      v42 = sub_29D64A1D0(v40, v41, aBlock);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_29D5D7000, v31, v63, "Failed to %{public}s doseLimit with error: %s", v33, 0x16u);
      v43 = v62;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v43, -1, -1);
      MEMORY[0x29ED63350](v33, -1, -1);
    }

    else
    {
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      v30 = a5;
      v31 = sub_29D65F2F4();
      v45 = sub_29D660214();

      if (os_log_type_enabled(v31, v45))
      {
        v46 = swift_slowAlloc();
        LODWORD(v62) = v45;
        v47 = v46;
        v61 = swift_slowAlloc();
        aBlock[0] = v61;
        *v47 = 136446210;
        v48 = sub_29D64A1D0(v63, v28, aBlock);

        *(v47 + 4) = v48;
        _os_log_impl(&dword_29D5D7000, v31, v62, "Failed to  %{public}s doseLimit with unknown error.", v47, 0xCu);
        v49 = v61;
        sub_29D5DF1C4(v61);
        MEMORY[0x29ED63350](v49, -1, -1);
        MEMORY[0x29ED63350](v47, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_26;
  }

  if (a4)
  {
    v21 = 0xE800000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v71 = sub_29D65F2F4();
  v22 = sub_29D660214();

  if (os_log_type_enabled(v71, v22))
  {
    if (a4)
    {
      v23 = 0x65646F727265766FLL;
    }

    else
    {
      v23 = 0x7465736572;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    v26 = sub_29D64A1D0(v23, v21, aBlock);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_29D5D7000, v71, v22, "Successfully %{public}s doseLimit.", v24, 0xCu);
    sub_29D5DF1C4(v25);
    MEMORY[0x29ED63350](v25, -1, -1);
    MEMORY[0x29ED63350](v24, -1, -1);
  }

  else
  {

    v44 = v71;
  }
}

uint64_t sub_29D5DDE34(void *a1, void *a2)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D5DDEFC(a1, a2);
}

void sub_29D5DDEFC(void *a1, void *a2)
{
  v4 = sub_29D65FCD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  *v8 = sub_29D6602B4();
  (*(v5 + 104))(v8, *MEMORY[0x29EDCA278], v4);
  v9 = sub_29D65FCE4();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = a1;
    v11 = sub_29D65F2F4();
    v12 = sub_29D660214();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446466;
      v15 = sub_29D6607A4();
      v17 = sub_29D64A1D0(v15, v16, &v29);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      if (a1)
      {
        v28 = a1;
        v18 = a1;
        sub_29D5DF210(0, &qword_2A17AC108);
        v19 = sub_29D65FF84();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v22 = sub_29D64A1D0(v19, v21, &v29);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_29D5D7000, v11, v12, "[%{public}s] presenting alert for error: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v14, -1, -1);
      MEMORY[0x29ED63350](v13, -1, -1);
    }

    if ([objc_opt_self() isAppleInternalInstall])
    {
      if (a1)
      {
        sub_29D6600C4();
        sub_29D6600B4();
        sub_29D6600A4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        swift_getErrorValue();
        sub_29D6606D4();
      }

      v23 = sub_29D65FF24();
      v24 = sub_29D65FF24();

      v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

      v26 = sub_29D65FF24();
      v27 = [objc_opt_self() actionWithTitle:v26 style:1 handler:0];

      [v25 addAction_];
      [a2 presentViewController:v25 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D5DE350(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_29D5DE3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5DE47C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16HearingAppPlugin53HeadphoneNotificationsDataDetailConfigurationProvider_dataType);
  sub_29D65EC24();
  sub_29D65EC14();
  sub_29D65EC84();
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  sub_29D65EF74();

  return sub_29D5DE840(v3);
}

uint64_t variable initialization expression of AudiogramAllDataViewModel.audiogramSampleSubject()
{
  sub_29D5DE590();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_29D65F844();
}

void sub_29D5DE590()
{
  if (!qword_2A17AC0A8)
  {
    sub_29D5DF3E0(255, &qword_2A17AC0B0, &unk_2A17AC0B8, 0x29EDBAA28, MEMORY[0x29EDC9A40]);
    v0 = sub_29D65F834();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC0A8);
    }
  }
}

uint64_t variable initialization expression of OnboardingTileActionHandler.logger@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v2 = sub_29D65F314();
  v3 = sub_29D5DE6EC(v2, qword_2A17AD6F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_29D5DE6EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider()
{
  result = qword_2A17AC0C8;
  if (!qword_2A17AC0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5DE7A4()
{
  result = sub_29D65F314();
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

uint64_t sub_29D5DE840(uint64_t a1)
{
  sub_29D5DE89C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5DE89C()
{
  if (!qword_2A17AC0D8)
  {
    sub_29D5DF210(255, &qword_2A17AC0E0);
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC0D8);
    }
  }
}

uint64_t sub_29D5DE904(uint64_t a1, id *a2)
{
  result = sub_29D65FF44();
  *a2 = 0;
  return result;
}

uint64_t sub_29D5DE97C(uint64_t a1, id *a2)
{
  v3 = sub_29D65FF54();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29D5DE9FC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D65FF64();
  v2 = sub_29D65FF24();

  *a1 = v2;
  return result;
}

void sub_29D5DEA40(char a1, void *a2)
{
  v5 = *(sub_29D65F314() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D5DD5D0(a1, a2, v8, v9, v2 + v6, v10, v11);
}

uint64_t sub_29D5DEAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D5DEB14(uint64_t a1)
{
  v2 = sub_29D5DF17C(&qword_2A17AC188, type metadata accessor for Key);
  v3 = sub_29D5DF17C(&qword_2A17AC190, type metadata accessor for Key);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29D5DEBD0(uint64_t a1)
{
  v2 = sub_29D5DF17C(&qword_2A17AC178, type metadata accessor for ImageInitializationOption);
  v3 = sub_29D5DF17C(&qword_2A17AC180, type metadata accessor for ImageInitializationOption);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29D5DEC8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29D65FF24();

  *a2 = v5;
  return result;
}

uint64_t sub_29D5DECD4(uint64_t a1)
{
  v2 = sub_29D5DF17C(&qword_2A17AC1C0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v3 = sub_29D5DF17C(&qword_2A17AC1C8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29D5DED90()
{
  v1 = *v0;
  v2 = sub_29D65FF64();
  v3 = MEMORY[0x29ED62380](v2);

  return v3;
}

uint64_t sub_29D5DEDCC()
{
  v1 = *v0;
  sub_29D65FF64();
  sub_29D65FFA4();
}

uint64_t sub_29D5DEE20()
{
  v1 = *v0;
  sub_29D65FF64();
  sub_29D660724();
  sub_29D65FFA4();
  v2 = sub_29D660744();

  return v2;
}

uint64_t sub_29D5DEE94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29D65FF64();
  v6 = v5;
  if (v4 == sub_29D65FF64() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29D660694();
  }

  return v9 & 1;
}

BOOL sub_29D5DEF1C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_29D660544();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_29D5DF014@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_29D5DF094()
{
  v1 = *(sub_29D65F314() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5DDE34(v2, v3);
}

void sub_29D5DF124()
{
  if (!qword_2A17AC0F8)
  {
    sub_29D65FCA4();
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC0F8);
    }
  }
}

uint64_t sub_29D5DF17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5DF1C4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_29D5DF210(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_29D5DF284()
{
  result = qword_2A17AC118;
  if (!qword_2A17AC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC118);
  }

  return result;
}

void sub_29D5DF2D8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29D5DF304()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D5DF358(uint64_t a1)
{
  sub_29D5DF3E0(0, &qword_2A1A1DDB0, &qword_2A1A1DDC0, 0x29EDC9738, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D5DF3E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF448(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D5DF448(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D5DF6B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for AudiogramPDFChartData()
{
  result = qword_2A17AC230;
  if (!qword_2A17AC230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5DF8B0()
{
  sub_29D65DBC4();
  if (v0 <= 0x3F)
  {
    sub_29D5DF9B4(319, &qword_2A17AC240, &type metadata for AudiogramPDFChartData.Metadata, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29D5DF9B4(319, &qword_2A17AC248, &type metadata for AudiogramPDFChartData.ChartPoint, MEMORY[0x29EDC9A40]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D5DF9B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_29D5DFA08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D5DFA1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 34))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29D5DFA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

__n128 sub_29D5DFAD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D5DFAE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[33])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29D5DFB48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_29D5DFBA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29D5DFBBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 59))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29D5DFC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_29D5DFCA8()
{
  v1 = *v0;
  sub_29D660724();
  MEMORY[0x29ED62AD0](v1);
  return sub_29D660744();
}

uint64_t sub_29D5DFD1C()
{
  v1 = *v0;
  sub_29D660724();
  MEMORY[0x29ED62AD0](v1);
  return sub_29D660744();
}

uint64_t sub_29D5DFD60(void *a1)
{
  v1 = [a1 tests];
  sub_29D5DF448(0, &qword_2A17AC260, 0x29EDBAA40);
  v2 = sub_29D660034();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED62900](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (![v5 side])
      {

        v8 = sub_29D5E0A48(v6);

        return *&v8;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_29D5DFEB8(void *a1)
{
  v1 = [a1 tests];
  sub_29D5DF448(0, &qword_2A17AC260, 0x29EDBAA40);
  v2 = sub_29D660034();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED62900](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 side] == 1)
      {

        v8 = sub_29D5E0A48(v6);

        return *&v8;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

double sub_29D5E0014@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29D5E002C(uint64_t result, __int16 a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*&result < 9.22337204e18)
  {
    sub_29D660674();
    v3 = [objc_allocWithZone(MEMORY[0x29EDBAE60]) init];
    v4 = [objc_opt_self() decibelHearingLevelUnit];
    v5 = [v3 localizedDisplayNameForUnit:v4 value:0];

    v6 = v5;
    v7 = v5;
    if (v5)
    {
      v8 = v5;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_29D65FF64();
      v7 = sub_29D65FF24();

      sub_29D65FF64();
      v6 = sub_29D65FF24();

      v11 = 0;
      if ((a2 & 0x100) == 0)
      {
LABEL_8:

        v9 = sub_29D65FF24();

        v10 = HKFormatValueAndUnit();

        if (!v10)
        {
LABEL_2:
          *&result = 0.0;
          return result;
        }

        goto LABEL_12;
      }
    }

    v12 = sub_29D65FF24();

    v10 = HKLocalizedStringForUpperClampedValueAndUnit();

LABEL_12:
    v13 = sub_29D65FF64();

    return v13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29D5E0240(void *a1, SEL *a2, uint64_t a3)
{
  v6 = [a1 hearingLevelSummary];
  v7 = [v6 *a2];

  if (!v7)
  {
    return 0;
  }

  [a1 isAverageSensitivityUpperClampedForSide_];
  [a1 containSensitivityPointsIsMasked:1 forSide:a3];
  [a1 containSensitivityPointsIsMasked:0 forSide:a3];
  v8 = [v7 averageSensitivity];
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 decibelHearingLevelUnit];
    [v10 doubleValueForUnit_];
    v13 = v12;

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  HKHearingLevelClassificationForSensitivity();

  return v14;
}

uint64_t sub_29D5E03E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 sampleType];
  v5 = [v4 identifier];

  v6 = sub_29D65FF64();
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  v9 = [v3 startDate];
  v10 = type metadata accessor for AudiogramPDFChartData();
  v11 = a2 + v10[5];
  v68 = a2;
  sub_29D65DB94();

  v12 = [v3 endDate];
  v13 = a2 + v10[6];
  sub_29D65DB94();

  v14 = v3;
  v15 = sub_29D5E0240(v14, &selRef_rightEarMetrics, 1);
  v17 = v16;
  v19 = v18;
  LODWORD(a2) = v20;
  v21 = sub_29D5E0240(v14, &selRef_leftEarMetrics, 0);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v66 = v14;
  v67 = v10;
  v28 = v68 + v10[7];
  *v28 = v15;
  *(v28 + 1) = v17;
  *(v28 + 2) = v19;
  v28[26] = BYTE2(a2);
  *(v28 + 12) = a2;
  *(v28 + 4) = v21;
  *(v28 + 5) = v23;
  *(v28 + 6) = v25;
  v28[58] = BYTE2(v27);
  *(v28 + 28) = v27;
  v29 = [v14 metadata];
  if (v29)
  {
    v30 = v29;
    v31 = sub_29D65FEB4();

    v32 = sub_29D5E0B64(v31, MEMORY[0x29EDBAF30]);
    v33 = sub_29D5E0B64(v31, MEMORY[0x29EDBAF40]);
    v34 = sub_29D5E0C3C(v31, MEMORY[0x29EDBAF38]);
    v36 = v35;
    v37 = sub_29D5E0C3C(v31, MEMORY[0x29EDBAF48]);
    v39 = v38;

    v40 = v32 | (v33 << 8);
    v41 = v36 & 1;
    v42 = v39 & 1;
  }

  else
  {
    v34 = 0;
    v41 = 0;
    v37 = 0;
    v42 = 0;
    v40 = 3;
  }

  v43 = v68 + v10[8];
  *v43 = v40;
  *(v43 + 1) = v34;
  *(v43 + 2) = v41;
  *(v43 + 3) = v37;
  v43[32] = v42;
  v44 = [v14 sensitivityPoints];
  sub_29D5DF448(0, &qword_2A17AC250, 0x29EDBAA30);
  v45 = sub_29D660034();

  if (v45 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v47 = 0;
    v71 = v45 & 0xC000000000000001;
    v48 = MEMORY[0x29EDCA190];
    v69 = v45;
    v70 = v45 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v71)
      {
        v49 = MEMORY[0x29ED62900](v47, v45);
      }

      else
      {
        if (v47 >= *(v70 + 16))
        {
          goto LABEL_19;
        }

        v49 = *(v45 + 8 * v47 + 32);
      }

      v50 = v49;
      v51 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v52 = [v49 frequency];
      v53 = [objc_opt_self() hertzUnit];
      [v52 doubleValueForUnit_];
      v55 = v54;

      v56 = sub_29D5DFD60(v50);
      v58 = v57;
      v59 = sub_29D5DFEB8(v50);
      v61 = v60;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_29D65B21C(0, *(v48 + 2) + 1, 1, v48);
      }

      v63 = *(v48 + 2);
      v62 = *(v48 + 3);
      if (v63 >= v62 >> 1)
      {
        v48 = sub_29D65B21C((v62 > 1), v63 + 1, 1, v48);
      }

      *(v48 + 2) = v63 + 1;
      v64 = &v48[40 * v63];
      *(v64 + 4) = v55;
      *(v64 + 5) = v56;
      *(v64 + 24) = v58;
      *(v64 + 7) = v59;
      *(v64 + 32) = v61;
      ++v47;
      v45 = v69;
      if (v51 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v48 = MEMORY[0x29EDCA190];
LABEL_22:

  *(v68 + v67[9]) = v48;
  return result;
}

uint64_t sub_29D5E087C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
}

uint64_t sub_29D5E0888(void *a1, void *a2)
{
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    v3 = a1;
    v4 = a2;
    v5 = [v4 lowerBound];
    if (v5)
    {
      v6 = v5;
      v7 = objc_opt_self();
      v8 = [v7 decibelHearingLevelUnit];
      [v3 doubleValueForUnit_];
      v10 = v9;

      v11 = [v7 decibelHearingLevelUnit];
      [v6 doubleValueForUnit_];
      v13 = v12;

      if (v10 <= v13)
      {

        return 1;
      }
    }

    v14 = [v4 upperBound];
    if (v14)
    {
      v15 = v14;
      v16 = objc_opt_self();
      v17 = [v16 decibelHearingLevelUnit];
      [v3 doubleValueForUnit_];
      v19 = v18;

      v20 = [v16 decibelHearingLevelUnit];
      [v15 doubleValueForUnit_];
      v22 = v21;

      if (v22 <= v19)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 2;
}

double sub_29D5E0A48(void *a1)
{
  v2 = [a1 clampedSensitivity];
  if (!v2)
  {
    v2 = [a1 sensitivity];
  }

  v3 = [objc_opt_self() decibelHearingLevelUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  v6 = [a1 clampedSensitivity];
  v7 = [a1 clampingRange];
  sub_29D5E0888(v6, v7);

  [a1 masked];
  return v5;
}

uint64_t sub_29D5E0B64(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_29D65FF64();
  if (*(a1 + 16))
  {
    v6 = sub_29D5E1AF8(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_29D5E0D1C(*(a1 + 56) + 32 * v6, v12);
      sub_29D5DF448(0, &qword_2A17AC258, 0x29EDBA070);
      if (swift_dynamicCast())
      {
        v9 = [v11 BOOLValue];

        return v9;
      }
    }
  }

  else
  {
  }

  return 2;
}

id sub_29D5E0C3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_29D65FF64();
  if (*(a1 + 16))
  {
    v6 = sub_29D5E1AF8(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_29D5E0D1C(*(a1 + 56) + 32 * v6, v12);
      sub_29D5DF448(0, &qword_2A17AC258, 0x29EDBA070);
      if (swift_dynamicCast())
      {
        v9 = [v11 integerValue];

        return v9;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_29D5E0D1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for AudiogramPDFChartData.SensitivityTest(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudiogramPDFChartData.SensitivityTest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AudiogramPDFChartData.SensitivityTest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_29D5E0E34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_29D5E0E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29D5E0E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudiogramPDFChartData.SensitivityTest.ClampingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudiogramPDFChartData.SensitivityTest.ClampingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D5E1070()
{
  result = qword_2A17AC268;
  if (!qword_2A17AC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC268);
  }

  return result;
}

id sub_29D5E10C4()
{
  type metadata accessor for HearingAppPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A20C18 = result;
  return result;
}

uint64_t type metadata accessor for HearingTestRescindedTileActionHandler()
{
  result = qword_2A17AC270;
  if (!qword_2A17AC270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5E11A8()
{
  v1 = *v0;
  v50 = sub_29D65F314();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v50, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E1A44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65DAF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v45 - v20;
  sub_29D65DAE4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_29D5E1A9C(v11);
  }

  v49 = v2;
  (*(v13 + 32))(v21, v11, v12);
  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    v25 = sub_29D65DAC4();
    sub_29D5E1EC8(MEMORY[0x29EDCA190]);
    v26 = v6;
    v27 = sub_29D65FEA4();

    v48 = [v24 openSensitiveURL:v25 withOptions:v27];

    v6 = v26;
  }

  else
  {
    v48 = 0;
  }

  sub_29D65F2E4();
  (*(v13 + 16))(v18, v21, v12);
  v28 = v6;
  v29 = sub_29D65F2F4();
  v30 = sub_29D660214();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136315650;
    v33 = sub_29D6607A4();
    v47 = v28;
    v35 = sub_29D64A1D0(v33, v34, &v52);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    sub_29D5E2664(&qword_2A17AC298, MEMORY[0x29EDB9B18]);
    v36 = sub_29D660674();
    v38 = v37;
    v46 = v21;
    v39 = *(v13 + 8);
    v39(v18, v12);
    v40 = sub_29D64A1D0(v36, v38, &v52);

    *(v31 + 14) = v40;
    *(v31 + 22) = 2080;
    v51 = v48;
    v41 = sub_29D65FF84();
    v43 = sub_29D64A1D0(v41, v42, &v52);

    *(v31 + 24) = v43;
    _os_log_impl(&dword_29D5D7000, v29, v30, "[%s]: Opening %s, success: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v32, -1, -1);
    MEMORY[0x29ED63350](v31, -1, -1);

    (*(v49 + 8))(v47, v50);
    return (v39)(v46, v12);
  }

  else
  {

    v44 = *(v13 + 8);
    v44(v18, v12);
    (*(v49 + 8))(v28, v50);
    return (v44)(v21, v12);
  }
}

uint64_t sub_29D5E16D4(uint64_t a1)
{
  v3 = sub_29D65EEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v8, a1, v3);
  v11 = sub_29D65ED24();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_29D5E17DC()
{
  sub_29D65ED34();

  return swift_deallocClassInstance();
}

uint64_t sub_29D5E1814()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D5E11A8();
}

void sub_29D5E1A44()
{
  if (!qword_2A1A1E558)
  {
    sub_29D65DAF4();
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E558);
    }
  }
}

uint64_t sub_29D5E1A9C(uint64_t a1)
{
  sub_29D5E1A44();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D5E1AF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29D660724();
  sub_29D65FFA4();
  v6 = sub_29D660744();

  return sub_29D5E1C48(a1, a2, v6);
}

unint64_t sub_29D5E1B70(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29D65FF64();
  sub_29D660724();
  sub_29D65FFA4();
  v4 = sub_29D660744();

  return sub_29D5E1D00(a1, v4);
}

unint64_t sub_29D5E1C04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29D660364();

  return sub_29D5E1E04(a1, v5);
}

unint64_t sub_29D5E1C48(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29D660694())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29D5E1D00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29D65FF64();
      v9 = v8;
      if (v7 == sub_29D65FF64() && v9 == v10)
      {
        break;
      }

      v12 = sub_29D660694();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_29D5E1E04(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29D5E20B8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29D660374();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29D5E1EC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D5E256C(0, &qword_2A17AC2A0);
    v3 = sub_29D660604();
    v4 = a1 + 32;

    while (1)
    {
      sub_29D5E1FE0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_29D5E1AF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29D5E20A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D5E1FE0(uint64_t a1, uint64_t a2)
{
  sub_29D5E2044();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D5E2044()
{
  if (!qword_2A17AC2A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AC2A8);
    }
  }
}

_OWORD *sub_29D5E20A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_29D5E20B8()
{
  result = qword_2A1A1E700;
  if (!qword_2A1A1E700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1E700);
  }

  return result;
}

unint64_t sub_29D5E2104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D5E256C(0, &qword_2A1A1E6B0);
    v3 = sub_29D660604();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      result = sub_29D5E1AF8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D5E2204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D5E256C(0, &qword_2A17AC2B8);
    v3 = sub_29D660604();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      result = sub_29D5E1AF8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D5E2304(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D5E25C4();
    v3 = sub_29D660604();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_29D5E1B70(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D5E23F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D5E24D0();
    v3 = sub_29D660604();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29D5E1C04(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29D5E24D0()
{
  if (!qword_2A17AC2B0)
  {
    sub_29D5E20B8();
    sub_29D5E2664(&qword_2A1A1E6F8, sub_29D5E20B8);
    v0 = sub_29D660614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC2B0);
    }
  }
}

void sub_29D5E256C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D660614();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D5E25C4()
{
  if (!qword_2A17AC2C0)
  {
    type metadata accessor for Key(255);
    sub_29D5E2664(&qword_2A17AC188, type metadata accessor for Key);
    v0 = sub_29D660614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC2C0);
    }
  }
}

uint64_t sub_29D5E2664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5E26B0(void *a1, uint64_t a2)
{
  v58 = a2;
  v56 = sub_29D65F314();
  v55 = *(v56 - 8);
  v3 = *(v55 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v56, v4);
  v54[2] = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v54[0] = v54 - v8;
  v9 = sub_29D65EC74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D65EC84();
  v15 = *(v57 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v57, v17);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v54 - v22;
  v24 = a1;
  v25 = [a1 identifier];
  v26 = sub_29D65FF64();
  v28 = v27;

  if (v26 == 0xD00000000000002ALL && 0x800000029D665B90 == v28 || (sub_29D660694() & 1) != 0)
  {

    v29 = [objc_allocWithZone(type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider()) init];
    v30 = *&v29[OBJC_IVAR____TtC16HearingAppPlugin53NoiseNotificationsDataTypeDetailConfigurationProvider_dataType];
    sub_29D65EC24();

    v31 = v58;
    sub_29D65EB34();
    (*(v10 + 16))(v14, v31, v9);
    v32 = objc_allocWithZone(sub_29D65ED04());
    v33 = v24;
    v34 = sub_29D65ECE4();
    (*(v15 + 8))(v23, v57);
    return v34;
  }

  if (v26 == 0xD000000000000033 && 0x800000029D665BC0 == v28 || (sub_29D660694() & 1) != 0)
  {

    return sub_29D5F6170(v24, v58);
  }

  if (v26 == 0xD00000000000001DLL && 0x800000029D665C00 == v28 || (sub_29D660694() & 1) != 0)
  {

    v37 = objc_opt_self();
    v38 = v58;
    v39 = sub_29D65EC54();
    v40 = [v37 sharedInstanceForHealthStore_];

    v41 = [v40 createHKUnitPreferenceController];
    type metadata accessor for AudiogramDataTypeDetailConfigurationProvider();
    swift_initStackObject();
    sub_29D5E32EC(v24);
    v42 = sub_29D65EB34();
    (*(v15 + 8))(v23, v57);
    (*(v10 + 16))(v14, v38, v9);
    v43 = objc_allocWithZone(type metadata accessor for AudiogramDataTypeDetailViewController());
    v34 = sub_29D5FB6F0(v42, v14, v41);

    return v34;
  }

  if (v26 == 0xD000000000000032 && 0x800000029D665C20 == v28 || (sub_29D660694() & 1) != 0 || v26 == 0xD00000000000002ELL && 0x800000029D665C60 == v28)
  {

    return sub_29D5F5530(v24, v58);
  }

  v44 = sub_29D660694();

  if (v44)
  {
    return sub_29D5F5530(v24, v58);
  }

  memset(v62, 0, 40);
  sub_29D5E30C8(v62, &v59);
  if (v60)
  {
    sub_29D5DBB48(&v59, v61);
    sub_29D5E32A8(v61, v61[3]);
    sub_29D65EF04();
    v52 = v58;
    sub_29D65EB34();
    (*(v10 + 16))(v14, v52, v9);
    objc_allocWithZone(sub_29D65ED04());
    v53 = v24;
    v34 = sub_29D65ECE4();
    (*(v15 + 8))(v20, v57);
    sub_29D5E31AC(v62, &qword_2A17AC2C8, sub_29D5E3148);
    sub_29D5DF1C4(v61);
  }

  else
  {
    sub_29D5E31AC(&v59, &qword_2A17AC2C8, sub_29D5E3148);
    v45 = v54[0];
    sub_29D65F2D4();
    v46 = v24;
    v47 = sub_29D65F2F4();
    v48 = sub_29D6601F4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = v46;
      v51 = v46;
      _os_log_impl(&dword_29D5D7000, v47, v48, "[HearingAppPluginAppDelegate] No custom detail view controller or configuration provided for %@", v49, 0xCu);
      sub_29D5E31AC(v50, &qword_2A1A1DDB0, sub_29D5E325C);
      MEMORY[0x29ED63350](v50, -1, -1);
      MEMORY[0x29ED63350](v49, -1, -1);
    }

    (*(v55 + 8))(v45, v56);
    sub_29D5E31AC(v62, &qword_2A17AC2C8, sub_29D5E3148);
    return 0;
  }

  return v34;
}

uint64_t sub_29D5E30C8(uint64_t a1, uint64_t a2)
{
  sub_29D5E3208(0, &qword_2A17AC2C8, sub_29D5E3148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D5E3148()
{
  result = qword_2A17AC2D0;
  if (!qword_2A17AC2D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC2D0);
  }

  return result;
}

uint64_t sub_29D5E31AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D5E3208(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D5E3208(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D5E325C()
{
  result = qword_2A1A1DDC0;
  if (!qword_2A1A1DDC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1DDC0);
  }

  return result;
}

void *sub_29D5E32A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29D5E32EC(void *a1)
{
  v2 = sub_29D65F044();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65F054();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_29D65EC44();
  v50 = *(v48 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v48, v11);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29D65EBB4();
  v53 = *(v42 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v42, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D65EBC4();
  v22 = a1;
  sub_29D65EBE4();
  v56 = &type metadata for AudiogramDataManagementComponent;
  v57 = sub_29D5E3C84();
  v54 = v22;
  v55 = 1;
  sub_29D65EC84();
  v23 = v22;
  sub_29D65EF74();

  sub_29D5DE840(&v54);
  *v21 = v23;
  v24 = *(v17 + 20);
  v41 = v23;
  v43 = v21;
  sub_29D65EB74();
  _s18HealthExperienceUI27DataTypeDetailConfigurationV16HearingAppPluginE20InlineChartComponentV10identifierSSvg_0();
  v56 = v17;
  v57 = sub_29D5E3DF8(&qword_2A17AC2F0, type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent);
  v25 = sub_29D5E3C20(&v54);
  sub_29D5E3D40(v21, v25);
  sub_29D65EF74();

  sub_29D5DE840(&v54);
  v26 = type metadata accessor for AudiogramShowAllComponent();
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000019;
  *(v27 + 24) = 0x800000029D665D00;
  v56 = v26;
  v57 = sub_29D5E3DF8(&qword_2A17AC2F8, type metadata accessor for AudiogramShowAllComponent);
  v54 = v27;
  _s18HealthExperienceUI27DataTypeDetailConfigurationV16HearingAppPluginE20InlineChartComponentV10identifierSSvg_0();
  v28 = *MEMORY[0x29EDC2618];
  v29 = v53;
  v30 = *(v53 + 104);
  v31 = v42;
  v30(v16, v28, v42);
  sub_29D65EF64();

  v32 = *(v29 + 8);
  v53 = v29 + 8;
  v32(v16, v31);
  sub_29D5DF1C4(&v54);
  v56 = &type metadata for AudiogramPDFComponent;
  v57 = sub_29D5E3DA4();
  v54 = 0;
  sub_29D65EBD4();
  v30(v16, v28, v31);
  sub_29D65EF64();

  v32(v16, v31);
  sub_29D5DF1C4(&v54);
  v33 = v44;
  v34 = v41;
  *v44 = v41;
  (*(v46 + 104))(v33, *MEMORY[0x29EDC2B00], v47);
  v35 = v34;
  sub_29D65EBA4();
  (*(v51 + 104))(v49, *MEMORY[0x29EDC2AF0], v52);
  v36 = v45;
  sub_29D65EC34();
  sub_29D65EC04();
  v37 = v48;
  v56 = v48;
  v57 = sub_29D5E3DF8(&qword_2A17AC308, MEMORY[0x29EDC26D8]);
  v38 = sub_29D5E3C20(&v54);
  v39 = v50;
  (*(v50 + 16))(v38, v36, v37);
  sub_29D65EF74();

  sub_29D5DE840(&v54);
  sub_29D65EC14();
  sub_29D5E39B0(v35, &v54);
  sub_29D65EF74();

  sub_29D5DE840(&v54);
  (*(v39 + 8))(v36, v37);
  return sub_29D5E3E40(v43);
}

uint64_t sub_29D5E39B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5E3B80();
  sub_29D5E3CD8(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D661D20;
  sub_29D65DFC4();
  v5 = sub_29D65DFB4();
  v7 = v6;
  v8 = MEMORY[0x29EDC99B0];
  *(v4 + 56) = MEMORY[0x29EDC99B0];
  v9 = sub_29D5E3BCC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0xD00000000000001ELL;
  *(v4 + 80) = 0x800000029D665CE0;
  sub_29D660154();
  a2[3] = sub_29D65EB24();
  a2[4] = sub_29D5E3DF8(&qword_2A17AC2E0, MEMORY[0x29EDC2590]);
  sub_29D5E3C20(a2);
  v10 = a1;
  return sub_29D65EB14();
}

unint64_t sub_29D5E3B80()
{
  result = qword_2A17AC2D8;
  if (!qword_2A17AC2D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17AC2D8);
  }

  return result;
}

unint64_t sub_29D5E3BCC()
{
  result = qword_2A1A1E738;
  if (!qword_2A1A1E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E738);
  }

  return result;
}

uint64_t *sub_29D5E3C20(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_29D5E3C84()
{
  result = qword_2A17AC2E8;
  if (!qword_2A17AC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC2E8);
  }

  return result;
}

void sub_29D5E3CD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D5E3D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D5E3DA4()
{
  result = qword_2A17AC300;
  if (!qword_2A17AC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC300);
  }

  return result;
}

uint64_t sub_29D5E3DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5E3E40(uint64_t a1)
{
  v2 = type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5E3E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = sub_29D65E214();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v58 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_29D65DD54();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v55, v11);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E6128(0, &qword_2A1A1E530, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = v54 - v17;
  v19 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D65E274();
  v61 = *(v24 - 8);
  v25 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v54[0] = sub_29D5E5EC8();
  v54[1] = v29;
  v64 = v28;
  sub_29D5E45DC(a2, v28);
  v30 = sub_29D65E0E4();
  v31 = *(*(v30 - 8) + 16);
  v57 = a2;
  v31(v23, a2, v30);
  v32 = sub_29D65D944();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_29D65D934();
  sub_29D5E5FC4(&qword_2A1A1DEC0, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
  v63 = sub_29D65D924();
  v36 = v35;
  sub_29D5E5F68(v23);

  sub_29D65EE64();
  type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandler(0);
  v37 = v61;
  (*(v61 + 16))(v18, v64, v24);
  (*(v37 + 56))(v18, 0, 1, v24);
  v38 = v13;
  v39 = v13;
  v40 = v55;
  (*(v9 + 104))(v39, *MEMORY[0x29EDC36F0], v55);
  v41 = sub_29D65DEF4();
  sub_29D5E5FC4(qword_2A1A1DFB0, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandler);
  v56 = v24;
  sub_29D65DDD4();

  (*(v9 + 8))(v38, v40);
  sub_29D5E600C(v18, &qword_2A1A1E530, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68], sub_29D5E6128);
  v42 = v64;
  sub_29D65E264();
  sub_29D65DE24();
  v43 = MEMORY[0x29EDC9E90];
  sub_29D5E61F0(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65E224();
  *(inited + 40) = v45;
  sub_29D63C9F8(inited);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D65DE54();
  v47 = v58;
  v46 = v59;
  v48 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x29EDC18C8], v60);
  sub_29D65E204();
  (*(v46 + 8))(v47, v48);
  sub_29D65DE64();
  sub_29D65DE14();
  sub_29D5E61F0(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, v43);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(v49 + 32) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(v49 + 40) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CB80(v49);
  v51 = v50;
  swift_setDeallocating();
  v52 = *(v49 + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v51);

  sub_29D65DE34();
  sub_29D5E60C0(v63, v36);
  return (*(v37 + 8))(v42, v56);
}

uint64_t sub_29D5E45DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D5E6128(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v49 = v44 - v7;
  sub_29D5E6128(0, &qword_2A1A1E538, MEMORY[0x29EDC17F0], v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v47 = v44 - v11;
  v48 = sub_29D65DAF4();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v48, v14);
  v45 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D65E0E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v46 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = v44 - v23;
  v25 = objc_opt_self();
  v26 = [v25 isHeadphoneExposureNotificationsEnabled];
  LOBYTE(v25) = [v25 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
  v27 = sub_29D623A88();
  v28 = sub_29D5E4B38(a1, v26, v25, v27 & 1);
  v29 = sub_29D65E1D4();
  v44[6] = v30;
  v44[7] = v29;
  v31 = *(v17 + 16);
  v31(v24, a1, v16);
  if ((*(v17 + 88))(v24, v16) != *MEMORY[0x29EDC1750])
  {
    (*(v17 + 8))(v24, v16);
  }

  v44[5] = v28;
  v32 = sub_29D65E1F4();
  v44[3] = v33;
  v44[4] = v32;
  v34 = v45;
  sub_29D5E522C(v45);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v35 = qword_2A1A20C18;
  v36 = sub_29D65DA74();
  v44[1] = v37;
  v44[2] = v36;
  v44[0] = "HearingAppPlugin-Localizable";
  v31(v46, a1, v16);
  v38 = v35;
  v39 = v47;
  sub_29D65E144();
  v40 = sub_29D65E154();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_29D65E1A4();
  sub_29D65E1E4();
  v42 = v48;
  v41 = v49;
  (*(v12 + 16))(v49, v34, v48);
  (*(v12 + 56))(v41, 0, 1, v42);
  sub_29D65E254();
  return (*(v12 + 8))(v34, v42);
}

uint64_t sub_29D5E4B38(uint64_t a1, char a2, char a3, char a4)
{
  v8 = sub_29D65F314();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65E0E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v14);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == *MEMORY[0x29EDC1760])
  {
    *&v43 = v9;
    sub_29D5E61F0(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v21 = swift_allocObject();
    v42 = xmmword_29D661D90;
    *(v21 + 16) = xmmword_29D661D90;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v21 + 32) = sub_29D65DA74();
    *(v21 + 40) = v22;
    if (a2)
    {
      if ((a4 & 1) != 0 || (a3 & 1) == 0)
      {
        v34 = sub_29D65DA74();
        v36 = v35;
        v23 = swift_allocObject();
        *(v23 + 16) = v42;
        *(v23 + 32) = v34;
        *(v23 + 40) = v36;
      }

      else
      {
        v23 = sub_29D5E5850();
      }

      goto LABEL_19;
    }

    if (a4)
    {
      v23 = sub_29D5E5BA0();
LABEL_19:
      v44 = v23;
      sub_29D65A1D8(v21);
      return v44;
    }

    sub_29D65F2E4();
    v37 = sub_29D65F2F4();
    v38 = sub_29D6601F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D665DD0, &v44);
      _os_log_impl(&dword_29D5D7000, v37, v38, "[[%{public}s] Feature is active but no devices return active.", v39, 0xCu);
      sub_29D5DF1C4(v40);
      MEMORY[0x29ED63350](v40, -1, -1);
      MEMORY[0x29ED63350](v39, -1, -1);
    }

    (*(v43 + 8))(v13, v8);
  }

  else if (v20 == *MEMORY[0x29EDC1768])
  {
    sub_29D5E61F0(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v21 + 32) = sub_29D65DA74();
    *(v21 + 40) = v24;
    *(v21 + 48) = sub_29D65DA74();
    *(v21 + 56) = v25;
  }

  else if (v20 == *MEMORY[0x29EDC1758])
  {
    v26 = sub_29D65E1E4();
    v28 = v27;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v29 = MEMORY[0x29EDC99B0];
    sub_29D5E61F0(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v21 = swift_allocObject();
    v43 = xmmword_29D661D90;
    *(v21 + 16) = xmmword_29D661D90;
    sub_29D5E6128(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    v30 = swift_allocObject();
    *(v30 + 16) = v43;
    *(v30 + 56) = v29;
    *(v30 + 64) = sub_29D5E3BCC();
    *(v30 + 32) = v26;
    *(v30 + 40) = v28;
    v31 = sub_29D65FF34();
    v33 = v32;

    *(v21 + 32) = v31;
    *(v21 + 40) = v33;
  }

  else
  {
    (*(v15 + 8))(v19, v14);
    return MEMORY[0x29EDCA190];
  }

  return v21;
}

uint64_t sub_29D5E522C@<X0>(uint64_t a1@<X8>)
{
  sub_29D5E6128(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v14 - v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_29D660554();

  v7 = [objc_opt_self() internalPrivacySettingsURLString];
  v8 = sub_29D65FF64();
  v10 = v9;

  v14 = v8;
  v15 = v10;
  MEMORY[0x29ED62350](0xD00000000000001ELL, 0x800000029D665DB0);
  sub_29D5E5534(v6);

  v11 = sub_29D65DAF4();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v6, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a1, v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D5E53DC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];

  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
LABEL_11:
    sub_29D5E600C(&v5, &qword_2A17AC310, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D5E61F0);
    return 0;
  }

  if ([v1 valueForProperty_])
  {
    sub_29D660474();
    sub_29D65EE94();
  }

  else
  {

    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D5E5534@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E6128(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v21 - v11;
  sub_29D65DAE4();
  v13 = sub_29D65DAF4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D5E600C(v12, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D5E6128);
    sub_29D65F2E4();
    v15 = sub_29D65F2F4();
    v16 = sub_29D660204();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D665DD0, &v22);
      _os_log_impl(&dword_29D5D7000, v15, v16, "[%{public}s]: Invalid URL.", v17, 0xCu);
      sub_29D5DF1C4(v18);
      MEMORY[0x29ED63350](v18, -1, -1);
      MEMORY[0x29ED63350](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v19 = 1;
  }

  else
  {
    (*(v14 + 32))(a1, v12, v13);
    v19 = 0;
  }

  return (*(v14 + 56))(a1, v19, 1, v13);
}

uint64_t sub_29D5E5850()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDeviceDisplayName];
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D65FF64();
    v10 = v9;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v11 = MEMORY[0x29EDC99B0];
    sub_29D5E61F0(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v22 = xmmword_29D661D90;
    *(v12 + 16) = xmmword_29D661D90;
    sub_29D5E6128(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    *(v13 + 16) = v22;
    *(v13 + 56) = v11;
    *(v13 + 64) = sub_29D5E3BCC();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    v14 = sub_29D65FF34();
    v16 = v15;

    result = v12;
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
  }

  else
  {
    sub_29D65F2E4();
    v18 = sub_29D65F2F4();
    v19 = sub_29D6601F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D665DD0, &v23);
      _os_log_impl(&dword_29D5D7000, v18, v19, "[[%{public}s] Could not fetch device display name.", v20, 0xCu);
      sub_29D5DF1C4(v21);
      MEMORY[0x29ED63350](v21, -1, -1);
      MEMORY[0x29ED63350](v20, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D5E5BA0()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5E53DC();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v10 = MEMORY[0x29EDC99B0];
    sub_29D5E61F0(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v11 = swift_allocObject();
    v21 = xmmword_29D661D90;
    *(v11 + 16) = xmmword_29D661D90;
    sub_29D5E6128(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = v21;
    *(v12 + 56) = v10;
    *(v12 + 64) = sub_29D5E3BCC();
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    v13 = sub_29D65FF34();
    v15 = v14;

    result = v11;
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
  }

  else
  {
    sub_29D65F2E4();
    v17 = sub_29D65F2F4();
    v18 = sub_29D6601F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D665DD0, &v22);
      _os_log_impl(&dword_29D5D7000, v17, v18, "[[%{public}s] Could not fetch watch display name.", v19, 0xCu);
      sub_29D5DF1C4(v20);
      MEMORY[0x29ED63350](v20, -1, -1);
      MEMORY[0x29ED63350](v19, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return MEMORY[0x29EDCA190];
  }

  return result;
}

unint64_t sub_29D5E5EC8()
{
  sub_29D660554();

  v0 = sub_29D65DEF4();
  v1 = sub_29D65DD74();
  v3 = v2;

  MEMORY[0x29ED62350](v1, v3);

  return 0xD000000000000041;
}

uint64_t sub_29D5E5F68(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5E5FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5E600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D5E60C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D5E60D4(a1, a2);
  }

  return a1;
}

uint64_t sub_29D5E60D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_29D5E6128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D5E618C()
{
  result = qword_2A1A1E660;
  if (!qword_2A1A1E660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1E660);
  }

  return result;
}

void sub_29D5E61F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_29D5E6240(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_29D5E625C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29D5E62B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id sub_29D5E6330()
{
  v1 = sub_29D65DC14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*v0 getActivePairedDevice];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = HKNRDeviceCapabilityEnvironmentalDosimetry();
  sub_29D65DBF4();

  v10 = sub_29D65DBE4();
  (*(v2 + 8))(v6, v1);
  v11 = [v8 supportsCapability_];

  return v11;
}

id sub_29D5E6470@<X0>(uint64_t a1@<X8>)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A20BF8;
  v3 = sub_29D5E6730();
  v4 = v2;
  sub_29D5E677C(&v12, &qword_2A1A1E370, &qword_2A1A1E378);
  *&v12 = v4;
  *(&v13 + 1) = v3;
  v14 = &protocol witness table for HUNoiseSettings;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    result = sub_29D5E677C(&v9, &qword_2A1A1E188, qword_2A1A1E190);
    *&v9 = v6;
    *(&v10 + 1) = &type metadata for NanoRegistryCapabilityProvider;
    v7 = v10;
    *a1 = v9;
    *(a1 + 16) = v7;
    v8 = v13;
    *(a1 + 40) = v12;
    *(a1 + 32) = &off_2A2431BD0;
    *(a1 + 56) = v8;
    *(a1 + 72) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5E65B8()
{
  sub_29D5E6830(v0, v4, &qword_2A1A1E188, qword_2A1A1E190);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_29D5E32A8(v4, v5);
    LOBYTE(v1) = (*(v2 + 8))(v1, v2);
    sub_29D5DF1C4(v4);
  }

  else
  {
    sub_29D5E677C(v4, &qword_2A1A1E188, qword_2A1A1E190);
  }

  return v1 & 1;
}

uint64_t sub_29D5E6674()
{
  sub_29D5E6830(v0 + 40, v4, &qword_2A1A1E370, &qword_2A1A1E378);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_29D5E32A8(v4, v5);
    LOBYTE(v1) = (*(v2 + 8))(v1, v2);
    sub_29D5DF1C4(v4);
  }

  else
  {
    sub_29D5E677C(v4, &qword_2A1A1E370, &qword_2A1A1E378);
  }

  return v1 & 1;
}

unint64_t sub_29D5E6730()
{
  result = qword_2A1A1E6D8;
  if (!qword_2A1A1E6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1E6D8);
  }

  return result;
}

uint64_t sub_29D5E677C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29D5E67D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D5E67D8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D5DF210(255, a3);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5E6830(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_29D5E67D8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D5E68B8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_29D5E95C0(0, &qword_2A17AC318, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AudiogramPDFLongitudinalChart.Model(0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D5E69A4, 0, 0);
}

uint64_t sub_29D5E69A4()
{
  sub_29D5E8C84(v0[13] + 32, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_29D5E32A8(v0 + 2, v0[5]);
    v3 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v5 = sub_29D5E6B70;
LABEL_5:
    v4[1] = v5;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  sub_29D5E8D7C((v0 + 2));
  v0[19] = 0;
  sub_29D5E8C84(v0[13] + 72, (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    sub_29D5E32A8(v0 + 7, v0[10]);
    v6 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v5 = sub_29D5E6DF8;
    goto LABEL_5;
  }

  sub_29D5E8D7C((v0 + 7));
  v0[23] = 0;
  v7 = *(v0[13] + 16);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_29D5E6FD4;
  v9 = v0[15];

  return sub_29D5EAE68(v9);
}

uint64_t sub_29D5E6B70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_29D5E7324;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_29D5E6C98;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D5E6C98()
{
  sub_29D5DF1C4(v0 + 2);
  v0[19] = v0[18];
  sub_29D5E8C84(v0[13] + 72, (v0 + 7));
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[11];
    sub_29D5E32A8(v0 + 7, v0[10]);
    v3 = *(MEMORY[0x29EDC2210] + 4);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_29D5E6DF8;

    return MEMORY[0x2A1C61D28](v1, v2);
  }

  else
  {
    sub_29D5E8D7C((v0 + 7));
    v0[23] = 0;
    v5 = *(v0[13] + 16);
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_29D5E6FD4;
    v7 = v0[15];

    return sub_29D5EAE68(v7);
  }
}

uint64_t sub_29D5E6DF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = *(v4 + 152);

    v8 = sub_29D5E7398;
  }

  else
  {
    *(v4 + 176) = a1;
    v8 = sub_29D5E6F28;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29D5E6F28()
{
  sub_29D5DF1C4(v0 + 7);
  v0[23] = v0[22];
  v1 = *(v0[13] + 16);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_29D5E6FD4;
  v3 = v0[15];

  return sub_29D5EAE68(v3);
}

uint64_t sub_29D5E6FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 152);

    v6 = sub_29D5E740C;
  }

  else
  {
    v6 = sub_29D5E70FC;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D5E70FC()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = sub_29D65E374();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_29D5E8D14(0, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D661D20;
  v9 = sub_29D65E684();
  v10 = MEMORY[0x29EDC1FC0];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  sub_29D5E3C20((v8 + 32));
  sub_29D65E694();
  v11 = sub_29D65E9C4();
  v12 = MEMORY[0x29EDC2320];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  sub_29D5E3C20((v8 + 72));
  sub_29D65E9B4();
  sub_29D5E7954(v4, v1);

  sub_29D65E404();
  sub_29D5E8E0C(v4);
  v13 = sub_29D65E414();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_29D5E7324()
{
  sub_29D5DF1C4(v0 + 2);
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D5E7398()
{
  sub_29D5DF1C4(v0 + 7);
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D5E740C()
{
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D5E7478()
{
  sub_29D5E755C(v6);
  v0 = sub_29D65E884();
  sub_29D5DF1C4(v6);
  v6[3] = sub_29D65E684();
  v6[4] = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(v6);
  sub_29D65E694();
  v1 = sub_29D65E884();
  sub_29D5DF1C4(v6);
  sub_29D5E7754(v6);
  v2 = sub_29D65E884();
  sub_29D5DF1C4(v6);
  sub_29D5E8F38();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D661ED0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = MEMORY[0x29ED60BF0]();

  return v4;
}

uint64_t sub_29D5E755C@<X0>(uint64_t *a1@<X8>)
{
  sub_29D5E95C0(0, &qword_2A17AC368, MEMORY[0x29EDC2C30], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v11 - v5;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D65E524();
  v7 = sub_29D65F154();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_29D65E474();
  sub_29D65E4B4();
  sub_29D65E464();
  v8 = sub_29D65E334();
  v9 = MEMORY[0x29EDC1C48];
  a1[3] = v8;
  a1[4] = v9;
  sub_29D5E3C20(a1);
  return sub_29D65E324();
}

uint64_t sub_29D5E7754@<X0>(uint64_t *a1@<X8>)
{
  sub_29D5E95C0(0, &qword_2A17AC368, MEMORY[0x29EDC2C30], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v11 - v5;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D65E524();
  v7 = sub_29D65F154();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_29D65E474();
  sub_29D65E4B4();
  sub_29D65E464();
  v8 = sub_29D65E334();
  v9 = MEMORY[0x29EDC1C48];
  a1[3] = v8;
  a1[4] = v9;
  sub_29D5E3C20(a1);
  return sub_29D65E324();
}

uint64_t sub_29D5E7954(uint64_t a1, void *a2)
{
  v8[3] = sub_29D65F1F4();
  v8[4] = MEMORY[0x29EDC2C70];
  sub_29D5E3C20(v8);
  sub_29D65F1E4();
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x29EDCA190];
  }

  sub_29D5E8D14(0, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D661D20;
  sub_29D5E8E70(v8, v4 + 32);
  v5 = sub_29D65E684();
  v6 = MEMORY[0x29EDC1FC0];
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  sub_29D5E3C20((v4 + 72));
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65E694();
  sub_29D65A2CC(v3);
  sub_29D5DF1C4(v8);
  return v4;
}

uint64_t sub_29D5E7A88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudiogramPDFLongitudinalChart.Model(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E7C8C(a2, v22);
  v8 = sub_29D65E884();
  sub_29D5DF1C4(v22);
  v23 = sub_29D65E684();
  v24 = MEMORY[0x29EDC1FC0];
  sub_29D5E3C20(v22);
  sub_29D65E694();
  v9 = sub_29D65E884();
  sub_29D5DF1C4(v22);
  sub_29D5E8ED4(a2, v7);
  v10 = type metadata accessor for AudiogramPDFLongitudinalChart(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_29D633054(v7);
  v23 = v10;
  v14 = sub_29D5E9734(&qword_2A17AC340, type metadata accessor for AudiogramPDFLongitudinalChart);
  v24 = v14;
  v22[0] = v13;
  v15 = sub_29D5E32A8(v22, v10);
  v21[3] = v10;
  v21[4] = *(v14 + 8);
  v16 = sub_29D5E3C20(v21);
  (*(*(v10 - 8) + 16))(v16, v15, v10);
  v17 = sub_29D65E884();
  sub_29D5DF1C4(v21);
  sub_29D5DF1C4(v22);
  sub_29D5E8F38();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D661ED0;
  *(v18 + 32) = v8;
  *(v18 + 40) = v9;
  *(v18 + 48) = v17;
  v19 = MEMORY[0x29ED60BF0]();

  return v19;
}

double sub_29D5E7C8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D5E95C0(0, &qword_2A17AC358, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v18[-v8];
  v10 = sub_29D65F184();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v13 = sub_29D65F164();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_29D65F174();
  v19 = v2;
  v20 = a1;
  v21[3] = sub_29D65F1A4();
  v21[4] = MEMORY[0x29EDC2C50];
  sub_29D5E3C20(v21);
  sub_29D65F194();
  v14 = sub_29D65E884();
  sub_29D5DF1C4(v21);
  sub_29D5E8F38();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D661D90;
  *(v15 + 32) = v14;
  v16 = MEMORY[0x29ED60BF0]();

  *(a2 + 24) = &type metadata for PDFVStackWithReducedWidth;
  *(a2 + 32) = sub_29D5E8FC4();
  *a2 = v16;
  result = 0.0;
  *(a2 + 8) = xmmword_29D661EE0;
  return result;
}

uint64_t sub_29D5E7E80()
{
  v0 = sub_29D65E634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65F114();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D65E514();
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1F60], v0);
  sub_29D65F104();
  sub_29D5E95C0(0, &qword_2A17AC370, sub_29D5E9624, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  v13 = MEMORY[0x29EDC2BE8];
  *(v12 + 16) = xmmword_29D661D90;
  *(v12 + 56) = v6;
  *(v12 + 64) = v13;
  *(v12 + 72) = MEMORY[0x29EDC2BE0];
  v14 = sub_29D5E3C20((v12 + 32));
  (*(v7 + 16))(v14, v11, v6);
  v15 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  (*(v7 + 8))(v11, v6);
  return v15;
}

uint64_t sub_29D5E8144()
{
  v0 = sub_29D65E634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65E424();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E9020();
  sub_29D65E514();
  sub_29D65E534();
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1F60], v0);
  sub_29D65E434();
  sub_29D5E95C0(0, &qword_2A17AC370, sub_29D5E9624, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  v13 = MEMORY[0x29EDC1CA8];
  *(v12 + 16) = xmmword_29D661D90;
  *(v12 + 56) = v6;
  *(v12 + 64) = v13;
  *(v12 + 72) = MEMORY[0x29EDC1CA0];
  v14 = sub_29D5E3C20((v12 + 32));
  (*(v7 + 16))(v14, v11, v6);
  v15 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  (*(v7 + 8))(v11, v6);
  return v15;
}

uint64_t sub_29D5E8390(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v74 = sub_29D65DCA4();
  v69 = *(v74 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v74, v3);
  v73 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D65DCC4();
  v72 = *(v76 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v76, v6);
  v68 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_29D65DBC4();
  v70 = *(v75 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v75, v9);
  v66 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D65E634();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v17 = sub_29D65DA74();
  v19 = v18;
  v20 = *MEMORY[0x29EDC1F60];
  v21 = *(v12 + 104);
  v64 = v12 + 104;
  v65 = v21;
  v61 = v16;
  v21(v16, v20, v11);
  v22 = sub_29D65E484();
  v63 = v11;
  v23 = v22;
  v62 = sub_29D65F124();
  v78 = v62;
  v79 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v77);
  MEMORY[0x29ED614D0](v17, v19, v16, v23);
  v67 = sub_29D65E884();
  sub_29D5DF1C4(v77);
  v59 = sub_29D65DA74();
  v58 = v24;
  sub_29D5E8D14(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v25 = swift_allocObject();
  v60 = xmmword_29D661D20;
  *(v25 + 16) = xmmword_29D661D20;
  v57 = *(type metadata accessor for AudiogramPDFLongitudinalChart.Model(0) + 20);
  v26 = v66;
  sub_29D65D994();
  v27 = v68;
  sub_29D65DC94();
  v56 = *MEMORY[0x29EDB9CD0];
  v28 = v69;
  v55 = *(v69 + 104);
  v29 = v73;
  v30 = v74;
  v55(v73);
  v31 = sub_29D65DCB4();
  v69 = *(v28 + 8);
  (v69)(v29, v30);
  v72 = *(v72 + 8);
  (v72)(v27, v76);
  v77[0] = v31;
  v32 = sub_29D660674();
  v53 = v33;
  v70 = *(v70 + 8);
  (v70)(v26, v75);
  *(v25 + 56) = MEMORY[0x29EDC99B0];
  v54 = sub_29D5E3BCC();
  *(v25 + 64) = v54;
  v34 = v53;
  *(v25 + 32) = v32;
  *(v25 + 40) = v34;
  v35 = v26;
  sub_29D65D974();
  sub_29D65DC94();
  v36 = v74;
  (v55)(v29, v56, v74);
  v37 = v35;
  v38 = sub_29D65DCB4();
  (v69)(v29, v36);
  (v72)(v27, v76);
  v77[0] = v38;
  v39 = sub_29D660674();
  v41 = v40;
  (v70)(v37, v75);
  v42 = v54;
  *(v25 + 96) = MEMORY[0x29EDC99B0];
  *(v25 + 104) = v42;
  *(v25 + 72) = v39;
  *(v25 + 80) = v41;
  v43 = sub_29D65FF74();
  v45 = v44;

  v46 = v61;
  v65(v61, *MEMORY[0x29EDC1F68], v63);
  v47 = sub_29D65E4C4();
  v78 = v62;
  v79 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v77);
  MEMORY[0x29ED614D0](v43, v45, v46, v47);
  v48 = sub_29D65E884();
  sub_29D5DF1C4(v77);
  sub_29D5E8F38();
  v49 = swift_allocObject();
  *(v49 + 16) = v60;
  *(v49 + 32) = v67;
  *(v49 + 40) = v48;
  v50 = MEMORY[0x29ED60BF0]();

  return v50;
}

uint64_t sub_29D5E8A80()
{
  v1 = *(v0 + 16);

  sub_29D5E8D7C(v0 + 32);
  sub_29D5E8D7C(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D5E8AF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D5E8B90;

  return sub_29D5E68B8(a1);
}

uint64_t sub_29D5E8B90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29D5E8C84(uint64_t a1, uint64_t a2)
{
  sub_29D5E8D14(0, &qword_2A17AC320, &qword_2A17AC328, MEMORY[0x29EDC2208], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D5E8D14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D5E8D7C(uint64_t a1)
{
  sub_29D5E8D14(0, &qword_2A17AC320, &qword_2A17AC328, MEMORY[0x29EDC2208], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5E8E0C(uint64_t a1)
{
  v2 = type metadata accessor for AudiogramPDFLongitudinalChart.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5E8E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D5E8ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramPDFLongitudinalChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D5E8F38()
{
  if (!qword_2A17AC348)
  {
    sub_29D5E8D14(255, &qword_2A17AC350, &qword_2A17AC338, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC348);
    }
  }
}

unint64_t sub_29D5E8FC4()
{
  result = qword_2A17AC360;
  if (!qword_2A17AC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC360);
  }

  return result;
}

uint64_t sub_29D5E9020()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v42 = sub_29D65DA74();
  v1 = v0;
  v39 = sub_29D65DA74();
  v43 = v2;
  v40 = sub_29D65DA74();
  v41 = v3;
  v44 = MEMORY[0x29EDCA190];
  sub_29D5F8EB8(0, 3, 0);
  v4 = v44;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DA74();
  sub_29D5E8D14(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661D20;
  sub_29D5E9690();
  v6 = sub_29D660464();
  v8 = v7;
  v9 = MEMORY[0x29EDC99B0];
  *(v5 + 56) = MEMORY[0x29EDC99B0];
  v10 = sub_29D5E3BCC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 64) = v10;
  *(v5 + 72) = v42;
  *(v5 + 80) = v1;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v11 = sub_29D65FF74();
  v13 = v12;

  v15 = *(v44 + 16);
  v14 = *(v44 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_29D5F8EB8((v14 > 1), v15 + 1, 1);
    v4 = v44;
  }

  *(v4 + 16) = v15 + 1;
  v16 = v4 + 16 * v15;
  *(v16 + 32) = v11;
  *(v16 + 40) = v13;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DA74();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D661D20;
  v18 = sub_29D660464();
  v19 = MEMORY[0x29EDC99B0];
  *(v17 + 56) = MEMORY[0x29EDC99B0];
  *(v17 + 64) = v10;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = v19;
  *(v17 + 104) = v10;
  *(v17 + 72) = v39;
  *(v17 + 80) = v43;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v21 = sub_29D65FF74();
  v23 = v22;

  v25 = *(v4 + 16);
  v24 = *(v4 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_29D5F8EB8((v24 > 1), v25 + 1, 1);
  }

  *(v4 + 16) = v25 + 1;
  v26 = v4 + 16 * v25;
  *(v26 + 32) = v21;
  *(v26 + 40) = v23;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DA74();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D661D20;
  v28 = sub_29D660464();
  v29 = MEMORY[0x29EDC99B0];
  *(v27 + 56) = MEMORY[0x29EDC99B0];
  *(v27 + 64) = v10;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  *(v27 + 96) = v29;
  *(v27 + 104) = v10;
  *(v27 + 72) = v40;
  *(v27 + 80) = v41;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v31 = sub_29D65FF74();
  v33 = v32;

  v35 = *(v4 + 16);
  v34 = *(v4 + 24);
  if (v35 >= v34 >> 1)
  {
    sub_29D5F8EB8((v34 > 1), v35 + 1, 1);
  }

  *(v4 + 16) = v35 + 1;
  v36 = v4 + 16 * v35;
  *(v36 + 32) = v31;
  *(v36 + 40) = v33;

  sub_29D5E96E4();
  sub_29D5E9734(&qword_2A17AC390, sub_29D5E96E4);
  v37 = sub_29D65FEE4();

  return v37;
}

void sub_29D5E95C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D5E9624()
{
  result = qword_2A17AC378;
  if (!qword_2A17AC378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC378);
  }

  return result;
}

unint64_t sub_29D5E9690()
{
  result = qword_2A17AC380;
  if (!qword_2A17AC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC380);
  }

  return result;
}

void sub_29D5E96E4()
{
  if (!qword_2A17AC388)
  {
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC388);
    }
  }
}

uint64_t sub_29D5E9734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5E977C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();
}

id sub_29D5E97F4()
{
  result = [objc_opt_self() sharedInstance];
  qword_2A1A20BF8 = result;
  return result;
}

uint64_t sub_29D5E9830()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();

  return v1;
}

id sub_29D5E98A4(int a1)
{
  v33 = a1;
  sub_29D5EA8B0();
  v32 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EAC24(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = &v31 - v13;
  sub_29D5EA87C(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v31 - v22;
  v24 = OBJC_IVAR____TtC16HearingAppPlugin17NoiseAvailability__featureStatus;
  v25 = sub_29D65E0E4();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  sub_29D5EA900(v23, v20);
  sub_29D65F8B4();
  sub_29D5EA964(v23);
  (*(v10 + 32))(&v1[v24], v14, v9);
  v26 = OBJC_IVAR____TtC16HearingAppPlugin17NoiseAvailability__promotionVisibility;
  v35 = 0;
  sub_29D65F8B4();
  (*(v3 + 32))(&v1[v26], v7, v32);
  v1[OBJC_IVAR____TtC16HearingAppPlugin17NoiseAvailability_promoteIfOnboarded] = v33;
  v27 = type metadata accessor for NoiseAvailability();
  v34.receiver = v1;
  v34.super_class = v27;
  v28 = objc_msgSendSuper2(&v34, sel_init);
  sub_29D5E9DC8(v23);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v23, v20);
  v29 = v28;
  sub_29D65F8E4();
  sub_29D5EA964(v23);
  sub_29D5E9FC0();
  sub_29D5EA1C0();

  return v29;
}

id sub_29D5E9BD8()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NoiseAvailability();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for NoiseAvailability()
{
  result = qword_2A1A1EA10;
  if (!qword_2A1A1EA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5E9DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x29EDCA1E8];
  if ((*((*MEMORY[0x29EDCA1E8] & *v1) + 0xF8))())
  {
    if ((*((*v3 & *v1) + 0x108))())
    {
      if (qword_2A1A1EA20 != -1)
      {
        swift_once();
      }

      v4 = qword_2A1A20BF8;
      if ([qword_2A1A20BF8 noiseEnabled] && (objc_msgSend(v4, sel_notificationsEnabled) & 1) != 0)
      {
        v5 = MEMORY[0x29EDC1760];
      }

      else
      {
        v5 = MEMORY[0x29EDC1768];
      }
    }

    else
    {
      v5 = MEMORY[0x29EDC1750];
    }

    v11 = *v5;
    v12 = sub_29D65E0E4();
    v14 = *(v12 - 8);
    (*(v14 + 104))(a1, v11, v12);
    v7 = *(v14 + 56);
    v9 = a1;
    v10 = 0;
    v8 = v12;
  }

  else
  {
    v6 = sub_29D65E0E4();
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a1;
    v10 = 1;
  }

  return v7(v9, v10, 1, v8);
}

uint64_t sub_29D5E9FC0()
{
  if ((*(v0 + OBJC_IVAR____TtC16HearingAppPlugin17NoiseAvailability_promoteIfOnboarded) & 1) == 0)
  {
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    [qword_2A1A20BF8 onboardingCompleted];
  }

  v1 = MEMORY[0x29EDCA1E8];
  if ((*((*MEMORY[0x29EDCA1E8] & *v0) + 0xF8))())
  {
    (*((*v1 & *v0) + 0x108))();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  return sub_29D65F8E4();
}

uint64_t sub_29D5EA100()
{
  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  sub_29D5EAD50(&unk_2A1A20BA8, v3);
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    sub_29D5E32A8(v3, v4);
    LOBYTE(v0) = (*(v1 + 8))(v0, v1);
    sub_29D5DF1C4(v3);
  }

  else
  {
    sub_29D5EADE0(v3);
  }

  return v0 & 1;
}

void sub_29D5EA1C0()
{
  sub_29D5EAC24(0, &qword_2A1A1E670, sub_29D5EAC88, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661ED0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000029D6661E0;
  *(inited + 48) = sel_onboardingCompleted;
  strcpy((inited + 56), "NoiseEnabled");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sel_noiseEnabled;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000029D666200;
  *(inited + 96) = sel_notificationsEnabled;
  v1 = sub_29D5E2104(inited);
  swift_setDeallocating();
  sub_29D5EAC88();
  swift_arrayDestroy();
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = (*(v1 + 48) + ((v7 << 10) | (16 * v8)));
    v11 = *v9;
    v10 = v9[1];
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    sub_29D5EACE8(0, &qword_2A1A1E668, &qword_2A1A1E660, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_29D661D20;
    v14 = MEMORY[0x29EDC99B0];
    *(v13 + 56) = MEMORY[0x29EDC99B0];
    v15 = sub_29D5E3BCC();
    *(v13 + 32) = 0xD000000000000010;
    *(v13 + 40) = 0x800000029D666220;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v11;
    *(v13 + 80) = v10;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65FF74();
    v16 = sub_29D65FF24();

    CFNotificationCenterAddObserver(v12, observer, sub_29D5EA544, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      v17 = [objc_opt_self() defaultCenter];
      v18 = *MEMORY[0x29EDC5E08];
      v19 = [objc_opt_self() sharedInstance];
      [v17 addObserver:observer selector:sel_pairedDevicesDidUpdate name:v18 object:v19];

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_29D5EA544(uint64_t a1, void *a2)
{
  sub_29D5EA87C(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v14 - v10;
  if (a2)
  {
    v12 = a2;
    sub_29D5E9DC8(v11);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D5EA900(v11, v8);
    v13 = v12;
    sub_29D65F8E4();
    sub_29D5EA964(v11);
    sub_29D5E9FC0();
  }
}

void sub_29D5EA778()
{
  sub_29D5EAC24(319, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_29D5EA8B0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D5EA8B0()
{
  if (!qword_2A1A1E740)
  {
    v0 = sub_29D65F8F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E740);
    }
  }
}

uint64_t sub_29D5EA900(uint64_t a1, uint64_t a2)
{
  sub_29D5EA87C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5EA964(uint64_t a1)
{
  sub_29D5EA87C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5EA9C0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();
}

uint64_t sub_29D5EAA3C(uint64_t a1, void **a2)
{
  sub_29D5EA87C(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v16 - v11;
  sub_29D5EA900(a1, &v16 - v11);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5EA900(v12, v9);
  v14 = v13;
  sub_29D65F8E4();
  return sub_29D5EA964(v12);
}

uint64_t sub_29D5EAB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D65F8D4();

  *a2 = v5;
  return result;
}

uint64_t sub_29D5EABB4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_29D65F8E4();
}

void sub_29D5EAC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5EAC88()
{
  if (!qword_2A1A1E730)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A1E730);
    }
  }
}

void sub_29D5EACE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D5EAD50(uint64_t a1, uint64_t a2)
{
  sub_29D5EACE8(0, &qword_2A1A1E188, qword_2A1A1E190, &protocol descriptor for NoiseMonitoringCapabilityProviding, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5EADE0(uint64_t a1)
{
  sub_29D5EACE8(0, &qword_2A1A1E188, qword_2A1A1E190, &protocol descriptor for NoiseMonitoringCapabilityProviding, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5EAE68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AudiogramLongitudinalPDFChartData();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_29D65DC34();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_29D65DCC4();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_29D65FCF4();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = type metadata accessor for AudiogramPDFProviderRequest();
  v2[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v17 = sub_29D65DBC4();
  v2[18] = v17;
  v18 = *(v17 - 8);
  v2[19] = v18;
  v19 = *(v18 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D5EB0EC, 0, 0);
}

uint64_t sub_29D5EB0EC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[3];
  sub_29D65DBA4();
  sub_29D5EB9F0(v1, v2);
  v8 = *(v6 + 20);
  v9 = *(v4 + 16);
  v0[24] = v9;
  v0[25] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(&v5[v8], v2, v3);
  v10 = *(v4 + 56);
  v10(&v5[v8], 0, 1, v3);
  v11 = *(v6 + 24);
  v9(&v5[v11], v1, v3);
  v10(&v5[v11], 0, 1, v3);
  *v5 = 0;
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_29D5EB268;
  v13 = v0[17];
  v14 = v0[3];

  return sub_29D5EBF3C(v13);
}

uint64_t sub_29D5EB268(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_29D5EB8BC;
  }

  else
  {
    *(v4 + 224) = a1;
    v7 = sub_29D5EB390;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

size_t sub_29D5EB390()
{
  v63 = v0;
  v1 = v0[28];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v59 = v0[10];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  sub_29D65FE64();
  (*(v3 + 104))(v2, *MEMORY[0x29EDC4340], v5);
  (*(v8 + 104))(v7, *MEMORY[0x29EDB9C78], v9);
  sub_29D65DC44();
  (*(v8 + 8))(v7, v9);
  v10 = MEMORY[0x29ED621D0](v1, v2, v4);

  (*(v6 + 8))(v4, v59);
  (*(v3 + 8))(v2, v5);
  if (v10 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v12 = v10;
    v62 = MEMORY[0x29EDCA190];
    v10 = &v62;
    result = sub_29D5F8E78(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v14 = 0;
    v16 = v0[5];
    v15 = v0[6];
    v17 = v12;
    v57 = v12;
    v60 = v12 & 0xC000000000000001;
    v54 = v12 & 0xFFFFFFFFFFFFFF8;
    v56 = v0[4];
    v18 = v62;
    v19 = i;
    while (1)
    {
      if (v60)
      {
        v20 = MEMORY[0x29ED62900](v14, v17);
        goto LABEL_10;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14 >= *(v54 + 16))
      {
        goto LABEL_23;
      }

      v20 = *(v17 + 8 * v14 + 32);
LABEL_10:
      v10 = v20;
      v21 = sub_29D65FE44();
      v22 = [v21 leftEarMetrics];

      v23 = 0;
      if (v22 && (v24 = [v22 averageSensitivity], v22, v24))
      {
        v25 = [objc_opt_self() decibelHearingLevelUnit];
        [v24 doubleValueForUnit_];
        v27 = v26;

        v28 = 0;
      }

      else
      {
        v28 = 1;
        v27 = 0;
      }

      v29 = sub_29D65FE44();
      v30 = [v29 rightEarMetrics];

      if (v30 && (v31 = [v30 averageSensitivity], v30, v31))
      {
        v32 = [objc_opt_self() decibelHearingLevelUnit];
        [v31 doubleValueForUnit_];
        v23 = v33;

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = v0[6];
      v36 = v35 + *(v56 + 24);
      sub_29D65FE54();

      *v35 = v27;
      *(v15 + 8) = v28;
      *(v15 + 16) = v23;
      *(v15 + 24) = v34;
      v62 = v18;
      v38 = *(v18 + 16);
      v37 = *(v18 + 24);
      if (v38 >= v37 >> 1)
      {
        v10 = &v62;
        sub_29D5F8E78(v37 > 1, v38 + 1, 1);
        v18 = v62;
      }

      v39 = v0[6];
      ++v14;
      *(v18 + 16) = v38 + 1;
      sub_29D5ED11C(v39, v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v38);
      v17 = v57;
      if (v19 == v14)
      {

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v18 = MEMORY[0x29EDCA190];
LABEL_26:
  v41 = v0[24];
  v40 = v0[25];
  v42 = v0[22];
  v43 = v0[23];
  v44 = v0[20];
  v45 = v0[18];
  v46 = v0[19];
  v53 = v0[17];
  v55 = v0[15];
  v47 = v0[12];
  v58 = v0[9];
  v61 = v0[6];
  v48 = v0[2];
  v52 = v42;
  (v41)(v0[21]);
  v41(v44, v43, v45);
  v49 = v48 + *(type metadata accessor for AudiogramPDFLongitudinalChart.Model(0) + 20);
  sub_29D65D984();
  sub_29D5ED364(v53, type metadata accessor for AudiogramPDFProviderRequest);
  v50 = *(v46 + 8);
  v50(v52, v45);
  v50(v43, v45);
  *v48 = v18;

  v51 = v0[1];

  return v51();
}

uint64_t sub_29D5EB8BC()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];
  sub_29D5ED364(v0[17], type metadata accessor for AudiogramPDFProviderRequest);
  v8 = *(v6 + 8);
  v8(v1, v5);
  v8(v2, v5);

  v9 = v0[1];
  v10 = v0[27];

  return v9();
}

uint64_t sub_29D5EB9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = a1;
  v47[1] = *v2;
  v3 = sub_29D65F314();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v50 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65DCA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65DCC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5ED1F0();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19 - 8, v21);
  v48 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = v47 - v25;
  v27 = sub_29D65DBC4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65DC94();
  (*(v8 + 104))(v12, *MEMORY[0x29EDB9CD0], v7);
  sub_29D65DC84();
  (*(v8 + 8))(v12, v7);
  v33 = *(v14 + 8);
  v49 = v13;
  v33(v18, v13);
  v34 = *(v28 + 48);
  if (v34(v26, 1, v27) == 1)
  {
    v35 = v27;
    v36 = v53;
    v37 = v28;
  }

  else
  {
    v47[0] = *(v28 + 32);
    (v47[0])(v32, v26, v27);
    sub_29D65DC94();
    v26 = v48;
    sub_29D65DC64();
    v33(v18, v49);
    (*(v28 + 8))(v32, v27);
    if (v34(v26, 1, v27) != 1)
    {
      return (v47[0])(v53, v26, v27);
    }

    v37 = v28;
    v35 = v27;
    v36 = v53;
  }

  sub_29D5ED364(v26, sub_29D5ED1F0);
  v38 = v50;
  sub_29D65F2E4();
  v39 = sub_29D65F2F4();
  v40 = sub_29D6601F4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v42;
    *v41 = 136446210;
    v43 = sub_29D6607A4();
    v45 = sub_29D64A1D0(v43, v44, &v55);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_29D5D7000, v39, v40, "[%{public}s] PDF Configuration cannot determine first date of ten years ago", v41, 0xCu);
    sub_29D5DF1C4(v42);
    MEMORY[0x29ED63350](v42, -1, -1);
    MEMORY[0x29ED63350](v41, -1, -1);
  }

  (*(v51 + 8))(v38, v52);
  return (*(v37 + 16))(v36, v54, v35);
}

uint64_t sub_29D5EBF3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_29D5ED180(0, &qword_2A17AC398, MEMORY[0x29EDBA238]);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_29D5ED180(0, &qword_2A17AC3A0, MEMORY[0x29EDBA210]);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_29D5ED1F0();
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_29D5ED180(0, &qword_2A17AC3B0, MEMORY[0x29EDB9980]);
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D5EC140, 0, 0);
}

uint64_t sub_29D5EC140()
{
  v1 = v0[2];
  v2 = *v1;
  if (*v1 >= 2)
  {
    sub_29D5ED310();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D662030;
    *(v14 + 32) = v2;
    v15 = v0[14];
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v2;

    v21 = v0[1];

    return v21(v14);
  }

  else
  {
    v3 = v0[14];
    v4 = v0[11];
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED5FDC0](KeyPath, 1);
    v6 = type metadata accessor for AudiogramPDFProviderRequest();
    sub_29D5ED254(v1 + *(v6 + 20), v4);
    v7 = sub_29D65DBC4();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    v10 = 0;
    if (v9(v4, 1, v7) != 1)
    {
      v11 = v0[11];
      v10 = sub_29D65DB84();
      (*(v8 + 8))(v11, v7);
    }

    v12 = v0[10];
    sub_29D5ED254(v0[2] + *(v6 + 24), v12);
    if (v9(v12, 1, v7) == 1)
    {
      v13 = 0;
    }

    else
    {
      v23 = v0[10];
      v13 = sub_29D65DB84();
      (*(v8 + 8))(v23, v7);
    }

    v24 = v0[13];
    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[9];
    v28 = v0[7];
    v42 = v0[14];
    v43 = v0[6];
    v44 = v0[3];
    v29 = [objc_opt_self() predicateForSamplesWithStartDate:v10 endDate:v13 options:0];
    v0[15] = v29;

    sub_29D5DF448(0, &qword_2A17AC3B8, 0x29EDBAD60);
    v30 = v29;
    sub_29D65FE74();

    sub_29D5ED2B8(0, &qword_2A17AC3C0, &qword_2A17AC3A0, MEMORY[0x29EDBA210]);
    v31 = *(v26 + 72);
    v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29D661D90;
    (*(v26 + 16))(v33 + v32, v27, v28);
    sub_29D5ED2B8(0, &qword_2A17AC3C8, &qword_2A17AC3B0, MEMORY[0x29EDB9980]);
    v34 = *(v24 + 72);
    v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_29D661D90;
    (*(v24 + 16))(v36 + v35, v42, v25);
    sub_29D5DF448(0, &unk_2A17AC0B8, 0x29EDBAA28);
    sub_29D65FE84();
    v37 = *(v44 + 16);
    v38 = *(MEMORY[0x29EDBA230] + 4);
    v39 = swift_task_alloc();
    v0[16] = v39;
    *v39 = v0;
    v39[1] = sub_29D5EC594;
    v40 = v0[6];
    v41 = v0[4];

    return MEMORY[0x2A1C5B578](v37, v41);
  }
}

uint64_t sub_29D5EC594(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_29D5ED3C4;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_29D5ED3C8;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D5EC6BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_29D5ED180(0, &qword_2A17AC398, MEMORY[0x29EDBA238]);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_29D5ED180(0, &qword_2A17AC3A0, MEMORY[0x29EDBA210]);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_29D5ED1F0();
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_29D5ED180(0, &qword_2A17AC3B0, MEMORY[0x29EDB9980]);
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D5EC8C0, 0, 0);
}

uint64_t sub_29D5EC8C0()
{
  v1 = v0[2];
  v2 = *v1;
  if (*v1 >= 2)
  {
    sub_29D5ED310();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D662030;
    *(v14 + 32) = v2;
    v15 = v0[14];
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v2;

    v21 = v0[1];

    return v21(v14);
  }

  else
  {
    v3 = v0[14];
    v4 = v0[11];
    KeyPath = swift_getKeyPath();
    MEMORY[0x29ED5FDC0](KeyPath, 1);
    v6 = type metadata accessor for AudiogramPDFProviderRequest();
    sub_29D5ED254(v1 + *(v6 + 20), v4);
    v7 = sub_29D65DBC4();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    v10 = 0;
    if (v9(v4, 1, v7) != 1)
    {
      v11 = v0[11];
      v10 = sub_29D65DB84();
      (*(v8 + 8))(v11, v7);
    }

    v12 = v0[10];
    sub_29D5ED254(v0[2] + *(v6 + 24), v12);
    if (v9(v12, 1, v7) == 1)
    {
      v13 = 0;
    }

    else
    {
      v23 = v0[10];
      v13 = sub_29D65DB84();
      (*(v8 + 8))(v23, v7);
    }

    v24 = v0[13];
    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[9];
    v28 = v0[7];
    v42 = v0[14];
    v43 = v0[6];
    v44 = v0[3];
    v29 = [objc_opt_self() predicateForSamplesWithStartDate:v10 endDate:v13 options:0];
    v0[15] = v29;

    sub_29D5DF448(0, &qword_2A17AC3B8, 0x29EDBAD60);
    v30 = v29;
    sub_29D65FE74();

    sub_29D5ED2B8(0, &qword_2A17AC3C0, &qword_2A17AC3A0, MEMORY[0x29EDBA210]);
    v31 = *(v26 + 72);
    v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29D661D90;
    (*(v26 + 16))(v33 + v32, v27, v28);
    sub_29D5ED2B8(0, &qword_2A17AC3C8, &qword_2A17AC3B0, MEMORY[0x29EDB9980]);
    v34 = *(v24 + 72);
    v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_29D661D90;
    (*(v24 + 16))(v36 + v35, v42, v25);
    sub_29D5DF448(0, &unk_2A17AC0B8, 0x29EDBAA28);
    sub_29D65FE84();
    v37 = *(v44 + 16);
    v38 = *(MEMORY[0x29EDBA230] + 4);
    v39 = swift_task_alloc();
    v0[16] = v39;
    *v39 = v0;
    v39[1] = sub_29D5ECD14;
    v40 = v0[6];
    v41 = v0[4];

    return MEMORY[0x2A1C5B578](v37, v41);
  }
}

uint64_t sub_29D5ECD14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_29D5ECF54;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_29D5ECE3C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29D5ECE3C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);

  v16 = *(v0 + 8);

  return v16(v10);
}

uint64_t sub_29D5ECF54()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v13 = *(v0 + 88);
  v14 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);
  v11 = *(v0 + 136);

  return v10();
}

uint64_t sub_29D5ED060()
{

  return swift_deallocClassInstance();
}

void sub_29D5ED0BC(id *a1)
{
  v1 = [*a1 startDate];
  sub_29D65DB94();
}

uint64_t sub_29D5ED11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiogramLongitudinalPDFChartData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D5ED180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5DF448(255, &unk_2A17AC0B8, 0x29EDBAA28);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D5ED1F0()
{
  if (!qword_2A17AC3A8)
  {
    sub_29D65DBC4();
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC3A8);
    }
  }
}

uint64_t sub_29D5ED254(uint64_t a1, uint64_t a2)
{
  sub_29D5ED1F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D5ED2B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D5ED180(255, a3, a4);
    v5 = sub_29D660684();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D5ED310()
{
  if (!qword_2A1A1DD90)
  {
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DD90);
    }
  }
}

uint64_t sub_29D5ED364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5ED3CC(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDC7640];
  v4 = sub_29D5ED468();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  v9 = v4;
  *&v8 = sub_29D660344();
  sub_29D5E20A8(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_29D62B790(v7, v3, isUniquelyReferenced_nonNull_native);
  return a2;
}

unint64_t sub_29D5ED468()
{
  result = qword_2A17AC3D0;
  if (!qword_2A17AC3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17AC3D0);
  }

  return result;
}

uint64_t type metadata accessor for HeadphoneNotificationsPromotionTileActionHandler()
{
  result = qword_2A1A1DF70;
  if (!qword_2A1A1DF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5ED500()
{
  result = sub_29D65F314();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29D5ED5A4()
{
  ObjectType = swift_getObjectType();
  v45 = sub_29D65E314();
  v43 = *(v45 - 8);
  v0 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v45, v1);
  v44 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D65E554();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v41 - v11;
  v13 = sub_29D65EDC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v41[0] = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = v41 - v20;
  sub_29D65EF44();
  sub_29D65ED94();
  v22 = *(v14 + 8);
  v42 = v21;
  v22(v21, v13);
  sub_29D5E32A8(v47, v47[3]);
  v23 = v13;
  sub_29D65ED54();
  (*(v4 + 104))(v9, *MEMORY[0x29EDC1D60], v3);
  sub_29D5EDE4C(&qword_2A17AC3D8, MEMORY[0x29EDC1D90]);
  v24 = sub_29D65FF14();
  v25 = *(v4 + 8);
  v25(v9, v3);
  v26 = v3;
  v27 = v22;
  v25(v12, v26);
  v28 = v41[1];
  sub_29D5DF1C4(v47);
  if ((v24 & 1) == 0)
  {
    v29 = *(v28 + qword_2A1A1DF98);
    type metadata accessor for HeadphoneNotificationsPromotionTileActionHandler();
    sub_29D5EDE4C(&qword_2A1A1DF80, type metadata accessor for HeadphoneNotificationsPromotionTileActionHandler);
    v30 = sub_29D65EED4();
    if (v30)
    {
      v31 = v30;
      v32 = v41[0];
      sub_29D65EF44();
      v33 = sub_29D65EDA4();
      v22(v32, v23);
      v34 = [v33 navigationController];

      if (v34)
      {
        [v34 pushViewController:v31 animated:1];
      }
    }
  }

  v35 = v44;
  (*(v43 + 104))(v44, *MEMORY[0x29EDC1C08], v45);
  v36 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSettingsViewController(0));
  v37 = sub_29D60AE44(v35);
  sub_29D65ED74();
  sub_29D657050();
  v38 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v39 = v42;
  sub_29D65EF44();
  v40 = sub_29D65EDA4();
  v27(v39, v23);
  [v40 presentViewController:v38 animated:1 completion:0];
}

uint64_t sub_29D5EDA74(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  v10 = qword_2A1A1DF90;
  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v11 = sub_29D65F314();
  v12 = sub_29D5DE6EC(v11, qword_2A17AD6F0);
  (*(*(v11 - 8) + 16))(&v9[v10], v12, v11);
  v13 = qword_2A1A1DF98;
  sub_29D5EDE00();
  *&v9[v13] = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  (*(v4 + 16))(v8, a1, v3);
  v14 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v14;
}

void sub_29D5EDC30()
{
  v1 = qword_2A1A1DF90;
  v2 = sub_29D65F314();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2A1A1DF98);
}

id sub_29D5EDCA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationsPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D5EDCE0(uint64_t a1)
{
  v2 = qword_2A1A1DF90;
  v3 = sub_29D65F314();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_2A1A1DF98);
}

unint64_t sub_29D5EDE00()
{
  result = qword_2A1A1E6E0;
  if (!qword_2A1A1E6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1E6E0);
  }

  return result;
}

uint64_t sub_29D5EDE4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5EDE94()
{
  sub_29D5F068C(0, &qword_2A1A1DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  *(inited + 32) = [objc_opt_self() audiogramSampleType];
  v1 = sub_29D647E40(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_2A1A20B80 = v1;
  return result;
}

uint64_t sub_29D5EDF48()
{
  v0 = sub_29D65DD54();
  sub_29D5EDFD0(v0, qword_2A1A20B68);
  v1 = sub_29D5DE6EC(v0, qword_2A1A20B68);
  v2 = *MEMORY[0x29EDC3750];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_29D5EDFD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_29D5EE034()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  qword_2A17AC3E0 = result;
  *algn_2A17AC3E8 = v1;
  return result;
}

uint64_t sub_29D5EE0E0()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  qword_2A17AC3F0 = result;
  *algn_2A17AC3F8 = v1;
  return result;
}

uint64_t sub_29D5EE188()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  qword_2A17AC400 = result;
  *algn_2A17AC408 = v1;
  return result;
}

uint64_t sub_29D5EE230(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 configurationWithPointSize_];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 tintColor];
  v7 = [v2 configurationWithHierarchicalColor_];

  v8 = [v5 configurationByApplyingConfiguration_];

  return MEMORY[0x2A1C60620](0xD000000000000019, 0x800000029D6663A0, v8);
}

uint64_t sub_29D5EE344@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v85 = a2;
  v86 = sub_29D65F314();
  v82 = *(v86 - 8);
  v3 = *(v82 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v86, v4);
  v75 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v72[-v9];
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v72[-v12];
  v81 = sub_29D65DDE4();
  v80 = *(v81 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v81, v15);
  v77 = &v72[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_29D65E7C4();
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v79, v18);
  v20 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_29D65DE74();
  v83 = *(v21 - 8);
  v84 = v21;
  v22 = *(v83 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v76 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_29D65F254();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v72[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v72[-v33];
  v35 = sub_29D65DDA4();
  v36 = sub_29D65DD94();

  if ((v36 & 1) == 0)
  {
    sub_29D65F2E4();
    v47 = sub_29D65F2F4();
    v48 = sub_29D660214();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, v87);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_29D64A1D0(0xD000000000000030, 0x800000029D666340, v87);
      _os_log_impl(&dword_29D5D7000, v47, v48, "[%s.%s]: Non-primary source", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v50, -1, -1);
      MEMORY[0x29ED63350](v49, -1, -1);
    }

    (*(v82 + 8))(v10, v86);
    goto LABEL_19;
  }

  if ((sub_29D5F012C(a1) & 1) == 0)
  {
    sub_29D65F2E4();
    v51 = sub_29D65F2F4();
    v52 = sub_29D660214();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v87[0] = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, v87);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_29D64A1D0(0xD000000000000030, 0x800000029D666340, v87);
      _os_log_impl(&dword_29D5D7000, v51, v52, "[%s.%s]: Feed item will be marked for deletion given no unavailability reasons", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v54, -1, -1);
      MEMORY[0x29ED63350](v53, -1, -1);
    }

    (*(v82 + 8))(v13, v86);
LABEL_19:
    v70 = 1;
    v68 = v84;
    v69 = v85;
    v66 = v83;
    return (*(v66 + 56))(v69, v70, 1, v68);
  }

  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  sub_29D5DE6EC(v86, qword_2A1A20C00);
  v37 = *(v26 + 16);
  v37(v34, a1, v25);
  v38 = sub_29D65F2F4();
  v39 = sub_29D660214();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v73 = v39;
    v41 = v40;
    v74 = swift_slowAlloc();
    v87[0] = v74;
    *v41 = 136446722;
    *(v41 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, v87);
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_29D64A1D0(0xD000000000000030, 0x800000029D666340, v87);
    *(v41 + 22) = 2082;
    v37(v31, v34, v25);
    v42 = sub_29D65FF84();
    v44 = v43;
    (*(v26 + 8))(v34, v25);
    v45 = sub_29D64A1D0(v42, v44, v87);

    *(v41 + 24) = v45;
    _os_log_impl(&dword_29D5D7000, v38, v73, "[%{public}s.%{public}s]: Creating prompt tile configuration for feature status %{public}s", v41, 0x20u);
    v46 = v74;
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v46, -1, -1);
    MEMORY[0x29ED63350](v41, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v34, v25);
  }

  v55 = v81;
  v56 = v80;
  v57 = v77;
  if (qword_2A1A1E518 != -1)
  {
    swift_once();
  }

  sub_29D5F0640();
  v58 = sub_29D660104();
  sub_29D5F068C(0, &qword_2A1A1E678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65DF54();
  *(inited + 40) = v60;
  v81 = sub_29D647FA0(inited, v58);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D5F06D8();
  sub_29D5EEF5C(v20);
  if (qword_2A1A1E510 != -1)
  {
    swift_once();
  }

  v61 = sub_29D65DD54();
  sub_29D5DE6EC(v61, qword_2A1A20B68);
  v62 = sub_29D65DDA4();
  (*(v56 + 104))(v57, *MEMORY[0x29EDC1B28], v55);
  sub_29D5F076C(&qword_2A17AC420, sub_29D5F06D8);
  v63 = v76;
  sub_29D65DDC4();

  (*(v56 + 8))(v57, v55);
  (*(v78 + 8))(v20, v79);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DE34();
  sub_29D65DE04();
  v64 = sub_29D65DE44();
  sub_29D644E58(v81);
  v64(v87, 0);
  v66 = v83;
  v65 = v84;
  v67 = v85;
  (*(v83 + 32))(v85, v63, v84);
  v68 = v65;
  v69 = v67;
  v70 = 0;
  return (*(v66 + 56))(v69, v70, 1, v68);
}

uint64_t sub_29D5EEF5C@<X0>(uint64_t a1@<X8>)
{
  v43[4] = a1;
  v1 = sub_29D65E7B4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v43[3] = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D5F083C(0, &qword_2A1A1E538, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v43 - v9;
  v11 = sub_29D65EAD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  sub_29D5F083C(0, &qword_2A17AC428, MEMORY[0x29EDC17D8], v5);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v19 = v43 - v18;
  sub_29D5F083C(0, &qword_2A17AC430, MEMORY[0x29EDC20F8], v5);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v24 = v43 - v23;
  v25 = sub_29D65E7E4();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = sub_29D65E104();
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  v27 = MEMORY[0x29EDC2550];
  sub_29D5F083C(0, &qword_2A17AC438, MEMORY[0x29EDC2550], MEMORY[0x29EDC9E90]);
  v28 = *(v12 + 72);
  v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D661D20;
  sub_29D65EAC4();
  sub_29D65EAB4();
  v43[5] = v30;
  sub_29D5F076C(&qword_2A17AC440, MEMORY[0x29EDC2550]);
  sub_29D5F083C(0, &qword_2A17AC448, v27, MEMORY[0x29EDC9A40]);
  sub_29D5F07B4();
  sub_29D660484();
  v31 = sub_29D65EA34();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v43[2] = sub_29D65EA24();
  if (qword_2A17AC018 != -1)
  {
    swift_once();
  }

  v43[1] = qword_2A17AC3E0;
  v34 = qword_2A17AC020;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v34 != -1)
  {
    swift_once();
  }

  v43[0] = qword_2A17AC3F0;
  v35 = qword_2A17AC028;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v35 != -1)
  {
    swift_once();
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D5EE230(45.0);
  v36 = sub_29D65E154();
  (*(*(v36 - 8) + 56))(v10, 0, 1, v36);
  sub_29D65E794();
  sub_29D5F083C(0, &qword_2A17AC458, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v37 = sub_29D65E554();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29D661D90;
  (*(v38 + 104))(v41 + v40, *MEMORY[0x29EDC1D60], v37);
  return sub_29D65E784();
}

uint64_t sub_29D5EF5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65E154();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65F254();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v42 - v22;
  if (sub_29D5EFC18(a1))
  {
    v43 = a2;
    if (qword_2A1A1EA68 != -1)
    {
      swift_once();
    }

    sub_29D5DE6EC(v4, qword_2A1A20C00);
    v24 = *(v15 + 16);
    v24(v23, a1, v14);
    v25 = sub_29D65F2F4();
    v26 = sub_29D660214();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v27 = 136446722;
      *(v27 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, &v45);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_29D64A1D0(0xD000000000000025, 0x800000029D666470, &v45);
      *(v27 + 22) = 2082;
      v24(v20, v23, v14);
      v28 = sub_29D65FF84();
      v30 = v29;
      (*(v15 + 8))(v23, v14);
      v31 = sub_29D64A1D0(v28, v30, &v45);

      *(v27 + 24) = v31;
      _os_log_impl(&dword_29D5D7000, v25, v26, "[%{public}s.%{public}s]: Creating promo tile configuration for feature status %{public}s", v27, 0x20u);
      v32 = v42;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v32, -1, -1);
      MEMORY[0x29ED63350](v27, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v23, v14);
    }

    sub_29D5EE230(65.0);
    a2 = v43;
    if (qword_2A17AC018 != -1)
    {
      swift_once();
    }

    v38 = qword_2A17AC020;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    if (v38 != -1)
    {
      swift_once();
    }

    v39 = qword_2A17AC028;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    if (v39 != -1)
    {
      swift_once();
    }

    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65E294();
    v37 = 0;
  }

  else
  {
    sub_29D65F2E4();
    v33 = sub_29D65F2F4();
    v34 = sub_29D660214();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, &v45);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_29D64A1D0(0xD000000000000025, 0x800000029D666470, &v45);
      _os_log_impl(&dword_29D5D7000, v33, v34, "[%s.%s]: Feed item will be marked for deletion given no unavailability reasons", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v36, -1, -1);
      MEMORY[0x29ED63350](v35, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v37 = 1;
  }

  v40 = sub_29D65E2A4();
  return (*(*(v40 - 8) + 56))(a2, v37, 1, v40);
}

uint64_t sub_29D5EFC18(uint64_t a1)
{
  v41 = sub_29D65F224();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v41, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65F254();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v40 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v44 = &v40 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v40 - v17;
  v19 = sub_29D65F214();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v8 + 16);
  v43 = a1;
  v42(v18, a1, v7);
  if ((*(v8 + 88))(v18, v7) == *MEMORY[0x29EDC2D70])
  {
    (*(v8 + 96))(v18, v7);
    (*(v20 + 32))(v24, v18, v19);
    sub_29D65F204();
    v25 = *MEMORY[0x29EDBA5A0];
    v26 = sub_29D65F234();
    (*(v2 + 8))(v6, v41);
    v27 = [v26 areAllRequirementsSatisfied];

    (*(v20 + 8))(v24, v19);
    if (v27)
    {
      return 1;
    }
  }

  else
  {
    (*(v8 + 8))(v18, v7);
  }

  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v29 = sub_29D65F314();
  sub_29D5DE6EC(v29, qword_2A1A20C00);
  v30 = v44;
  v31 = v42;
  v42(v44, v43, v7);
  v32 = sub_29D65F2F4();
  v33 = sub_29D660214();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136446722;
    *(v34 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, &v45);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_29D64A1D0(0xD000000000000018, 0x800000029D6664A0, &v45);
    *(v34 + 22) = 2082;
    v31(v40, v30, v7);
    v36 = sub_29D65FF84();
    v38 = v37;
    (*(v8 + 8))(v30, v7);
    v39 = sub_29D64A1D0(v36, v38, &v45);

    *(v34 + 24) = v39;
    _os_log_impl(&dword_29D5D7000, v32, v33, "[%{public}s.%{public}s]: Hearing Test promotion tile requirement was not met for feature status %{public}s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v35, -1, -1);
    MEMORY[0x29ED63350](v34, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v30, v7);
  }

  return 0;
}

uint64_t sub_29D5F012C(uint64_t a1)
{
  v41 = sub_29D65F224();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v41, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65F254();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v40 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v44 = &v40 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v40 - v17;
  v19 = sub_29D65F214();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v8 + 16);
  v43 = a1;
  v42(v18, a1, v7);
  if ((*(v8 + 88))(v18, v7) == *MEMORY[0x29EDC2D70])
  {
    (*(v8 + 96))(v18, v7);
    (*(v20 + 32))(v24, v18, v19);
    sub_29D65F204();
    v25 = *MEMORY[0x29EDC2D40];
    v26 = sub_29D65F234();
    (*(v2 + 8))(v6, v41);
    v27 = [v26 areAllRequirementsSatisfied];

    (*(v20 + 8))(v24, v19);
    if (v27)
    {
      return 1;
    }
  }

  else
  {
    (*(v8 + 8))(v18, v7);
  }

  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v29 = sub_29D65F314();
  sub_29D5DE6EC(v29, qword_2A1A20C00);
  v30 = v44;
  v31 = v42;
  v42(v44, v43, v7);
  v32 = sub_29D65F2F4();
  v33 = sub_29D660214();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136446722;
    *(v34 + 4) = sub_29D64A1D0(0xD00000000000001ELL, 0x800000029D666320, &v45);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_29D64A1D0(0xD000000000000015, 0x800000029D666450, &v45);
    *(v34 + 22) = 2082;
    v31(v40, v30, v7);
    v36 = sub_29D65FF84();
    v38 = v37;
    (*(v8 + 8))(v30, v7);
    v39 = sub_29D64A1D0(v36, v38, &v45);

    *(v34 + 24) = v39;
    _os_log_impl(&dword_29D5D7000, v32, v33, "[%{public}s.%{public}s]: Hearing Test prompt tile requirement was not met for feature status %{public}s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v35, -1, -1);
    MEMORY[0x29ED63350](v34, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v30, v7);
  }

  return 0;
}

unint64_t sub_29D5F0640()
{
  result = qword_2A1A1E710;
  if (!qword_2A1A1E710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1E710);
  }

  return result;
}

void sub_29D5F068C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D660684();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D5F06D8()
{
  if (!qword_2A17AC410)
  {
    type metadata accessor for HearingTestPromptTileActionHandler();
    sub_29D5F076C(&qword_2A17AC418, type metadata accessor for HearingTestPromptTileActionHandler);
    v0 = sub_29D65E814();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC410);
    }
  }
}

uint64_t sub_29D5F076C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D5F07B4()
{
  result = qword_2A17AC450;
  if (!qword_2A17AC450)
  {
    sub_29D5F083C(255, &qword_2A17AC448, MEMORY[0x29EDC2550], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC450);
  }

  return result;
}

void sub_29D5F083C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5F08A0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29D6604B4())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D5F2FB4();
  v3 = sub_29D660514();
LABEL_6:
  if (sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D6604A4();
      sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
      sub_29D5F3048(&qword_2A1A1E6F8, &qword_2A1A1E700, 0x29EDBAD78);
      sub_29D660114();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_29D6604D4())
        {
LABEL_55:
          sub_29D5F3098();

          return;
        }

        sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_29D5F2A5C(v36);
    }
  }

  if (v2)
  {

    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6604A4();
    sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
    sub_29D5F3048(&qword_2A1A1E6F8, &qword_2A1A1E700, 0x29EDBAD78);
    sub_29D660114();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29D6604D4())
    {
      goto LABEL_55;
    }

    sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_29D660364();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void *sub_29D5F0DA4(uint64_t a1, int a2)
{
  v3 = v2;
  v31 = a2;
  v30 = *v2;
  v29 = sub_29D65DF04();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v29, v7);
  sub_29D5F27A4();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D65DED4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v20 = sub_29D65DEF4();
  sub_29D5FC0F0(v20, v19);

  (*(v15 + 32))(v3 + OBJC_IVAR____TtC16HearingAppPlugin40HeadphoneNotificationsPromotionGenerator_domain, v19, v14);
  v21 = a1;
  v22 = v29;
  (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v29);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  (*(v5 + 32))(v24 + v23, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  *(v24 + v23 + v6) = v31;
  *(v24 + ((v23 + v6) & 0xFFFFFFFFFFFFFFF8) + 8) = v30;
  sub_29D5F2838();
  sub_29D5F2964(&qword_2A1A1E7D0, sub_29D5F2838);
  sub_29D65F894();
  sub_29D5F2964(&qword_2A1A1E788, sub_29D5F27A4);
  v25 = v32;
  v26 = sub_29D65F934();
  (*(v5 + 8))(v28, v22);
  (*(v33 + 8))(v13, v25);
  *(v3 + OBJC_IVAR____TtC16HearingAppPlugin40HeadphoneNotificationsPromotionGenerator_publisher) = v26;
  return v3;
}

uint64_t sub_29D5F113C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  sub_29D5F29AC();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D65DF04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5F1550(a1, a2);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v18 = sub_29D65F314();
  sub_29D5DE6EC(v18, qword_2A1A20C00);
  (*(v12 + 16))(v16, a1, v11);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v19 = sub_29D65F2F4();
  v20 = sub_29D660214();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a3;
    v22 = v21;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v22 = 136446722;
    v23 = sub_29D6607A4();
    v25 = sub_29D64A1D0(v23, v24, &v43);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v42 = sub_29D65DEF4();
    v26 = sub_29D65FF94();
    v28 = v27;
    (*(v12 + 8))(v16, v11);
    v29 = sub_29D64A1D0(v26, v28, &v43);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2082;
    v30 = MEMORY[0x29ED623E0](v17, MEMORY[0x29EDC3A38]);
    v32 = sub_29D64A1D0(v30, v31, &v43);

    *(v22 + 24) = v32;
    _os_log_impl(&dword_29D5D7000, v19, v20, "[%{public}s] Returning changes for profile %{public}s: %{public}s", v22, 0x20u);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v33, -1, -1);
    v34 = v22;
    a3 = v39;
    MEMORY[0x29ED63350](v34, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v43 = v17;
  sub_29D5F2F64(0, &qword_2A1A1E728, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D65F864();
  sub_29D5F2964(&qword_2A1A1E7B0, sub_29D5F29AC);
  v35 = v41;
  v36 = sub_29D65F934();
  result = (*(v40 + 8))(v10, v35);
  *a3 = v36;
  return result;
}

uint64_t sub_29D5F1550(uint64_t a1, int a2)
{
  v68 = a2;
  v4 = sub_29D65DE74();
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v64 - v10;
  sub_29D5F2A28(0);
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v64 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v70 = &v64 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v64 - v27;
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v64 - v30;
  v32 = sub_29D5F2964(qword_2A1A1E910, type metadata accessor for HeadphoneNotificationsPromotionGenerator);
  v69 = v2;
  sub_29D5F2B9C(v2, v32);
  v65 = a1;
  sub_29D65DEE4();
  sub_29D5E32A8(v72, v72[3]);
  sub_29D65DE84();
  v33 = v71;

  sub_29D5F2D70(v31, v28);
  v34 = *(v33 + 48);
  if (v34(v28, 1, v4) != 1)
  {
    v36 = *(v33 + 32);
    v35 = v33 + 32;
    v36(v11, v28, v4);
    sub_29D5F2DD4(0, &qword_2A1A1E6A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v37 = *(v35 + 40);
    v38 = (*(v35 + 48) + 32) & ~*(v35 + 48);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_29D661D90;
    v36((v39 + v38), v11, v4);
  }

  sub_29D5F2E9C(v31, sub_29D5F2A28);
  sub_29D5DF1C4(v72);
  v40 = v70;
  if (v68)
  {
    sub_29D5F1E68(v65, v70);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v71;
  (*(v71 + 56))(v40, v41, 1, v4);
  sub_29D5F2DD4(0, &qword_2A1A1E698, sub_29D5F2A28, MEMORY[0x29EDC9E90]);
  v43 = *(v67 + 72);
  v44 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v45 = swift_allocObject();
  sub_29D5F2D70(v40, v45 + v44);
  sub_29D5F2D70(v45 + v44, v21);
  sub_29D5F2E38(v21, v17);
  if (v34(v17, 1, v4) == 1)
  {
    sub_29D5F2E9C(v17, sub_29D5F2A28);
  }

  else
  {
    v46 = *(v42 + 32);
    v47 = v66;
    v46(v66, v17, v4);
    v48 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_29D65B45C(0, *(v48 + 2) + 1, 1, v48);
    }

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_29D65B45C(v49 > 1, v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v46(&v48[((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v50], v47, v4);
    v40 = v70;
  }

  swift_setDeallocating();
  sub_29D5F2E9C(v45 + v44, sub_29D5F2A28);
  swift_deallocClassInstance();
  v51 = sub_29D660054();

  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v52 = sub_29D65F314();
  sub_29D5DE6EC(v52, qword_2A1A20C00);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v53 = sub_29D65F2F4();
  v54 = sub_29D660214();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v72[0] = v56;
    *v55 = 136446466;
    v57 = sub_29D6607A4();
    v59 = sub_29D64A1D0(v57, v58, v72);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2082;
    v60 = MEMORY[0x29ED623E0](v51, MEMORY[0x29EDC3A38]);
    v62 = sub_29D64A1D0(v60, v61, v72);

    *(v55 + 14) = v62;
    _os_log_impl(&dword_29D5D7000, v53, v54, "[%{public}s] Computed needed PluginFeedItemChanges: %{public}s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v56, -1, -1);
    MEMORY[0x29ED63350](v55, -1, -1);
  }

  sub_29D5F2E9C(v40, sub_29D5F2A28);
  return v51;
}

uint64_t sub_29D5F1E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = sub_29D65DF64();
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v41, v5);
  v37 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D65DF74();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v40, v8);
  v36 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65E154();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v13 = sub_29D65E2A4();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v33 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5F2964(qword_2A1A1E910, type metadata accessor for HeadphoneNotificationsPromotionGenerator);
  v34 = v2;
  v35 = a1;
  v32[2] = sub_29D5F2B9C(v2, v17);
  v32[1] = v18;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A20C18;
  sub_29D65E144();
  sub_29D65DA74();
  sub_29D65DA74();
  sub_29D65DA74();
  v20 = v33;
  sub_29D65E294();
  sub_29D5F2B9C(v34, v17);
  v21 = sub_29D65DDA4();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D6604B4())
  {
    sub_29D650ECC(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for HeadphoneNotificationsPromotionTileActionHandler();
  sub_29D5F2964(&qword_2A1A1DF80, type metadata accessor for HeadphoneNotificationsPromotionTileActionHandler);
  sub_29D65DDB4();

  (*(v39 + 104))(v37, *MEMORY[0x29EDC3910], v41);
  v22 = v36;
  sub_29D65DF84();
  v23 = v40;
  sub_29D65DDF4();
  (*(v38 + 8))(v22, v23);
  v24 = MEMORY[0x29EDC9E90];
  sub_29D5F2F64(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65DF44();
  *(inited + 40) = v26;
  sub_29D63C9F8(inited);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D65DE54();
  sub_29D5F2F64(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, v24);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(v27 + 32) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(v27 + 40) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CB80(v27);
  v29 = v28;
  swift_setDeallocating();
  v30 = *(v27 + 16);
  swift_arrayDestroy();
  sub_29D5F08A0(v29);

  sub_29D65DE34();
  sub_29D65DE14();
  return (*(v42 + 8))(v20, v43);
}

uint64_t sub_29D5F2578()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin40HeadphoneNotificationsPromotionGenerator_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin40HeadphoneNotificationsPromotionGenerator_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneNotificationsPromotionGenerator()
{
  result = qword_2A1A1E900;
  if (!qword_2A1A1E900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5F2678()
{
  result = sub_29D65DED4();
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

uint64_t sub_29D5F2728@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin40HeadphoneNotificationsPromotionGenerator_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D5F27A4()
{
  if (!qword_2A1A1E780)
  {
    sub_29D5F2838();
    sub_29D5F2964(&qword_2A1A1E7D0, sub_29D5F2838);
    v0 = sub_29D65F8A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E780);
    }
  }
}

void sub_29D5F2838()
{
  if (!qword_2A1A1E7C8)
  {
    sub_29D5F2F64(255, &qword_2A1A1E728, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29D65F814();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E7C8);
    }
  }
}

uint64_t sub_29D5F28C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_29D5F113C(v1 + v4, v6, a1);
}

uint64_t sub_29D5F2964(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D5F29AC()
{
  if (!qword_2A1A1E7A8)
  {
    sub_29D5F2F64(255, &qword_2A1A1E728, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29D65F854();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E7A8);
    }
  }
}

void sub_29D5F2A5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_29D660364();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_29D660374();

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

uint64_t sub_29D5F2B9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D65DC14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &MetatypeMetadata - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v20 = a2;
  sub_29D5F30C0(0, &qword_2A1A1EA30, sub_29D5F30A0);
  v9 = sub_29D65FF84();
  v11 = v10;
  v12 = sub_29D65DEF4();
  v13 = sub_29D65DD64();

  if (v13)
  {
    v14 = [v13 identifier];

    sub_29D65DBF4();
    v15 = sub_29D65DBD4();
    v17 = v16;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  MetatypeMetadata = v9;
  v20 = v11;
  MEMORY[0x29ED62350](95, 0xE100000000000000);
  MEMORY[0x29ED62350](0x6F69746F6D6F7250, 0xE90000000000006ELL);
  MEMORY[0x29ED62350](95, 0xE100000000000000);
  MEMORY[0x29ED62350](v15, v17);

  return MetatypeMetadata;
}

uint64_t sub_29D5F2D70(uint64_t a1, uint64_t a2)
{
  sub_29D5F2A28(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D5F2DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D5F2E38(uint64_t a1, uint64_t a2)
{
  sub_29D5F2A28(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5F2E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D5F2EFC()
{
  if (!qword_2A1A1DDB0)
  {
    sub_29D5DF448(255, &qword_2A1A1DDC0, 0x29EDC9738);
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DDB0);
    }
  }
}

void sub_29D5F2F64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D5F2FB4()
{
  if (!qword_2A1A1E6C0)
  {
    sub_29D5DF448(255, &qword_2A1A1E710, 0x29EDBACB8);
    sub_29D5F3048(&qword_2A1A1E708, &qword_2A1A1E710, 0x29EDBACB8);
    v0 = sub_29D660524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E6C0);
    }
  }
}

uint64_t sub_29D5F3048(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D5DF448(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5F30C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_29D5F310C()
{
  result = qword_2A1A1EA40;
  if (!qword_2A1A1EA40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1EA40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleIdentifiers(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArticleIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D5F32CC()
{
  result = qword_2A17AC460;
  if (!qword_2A17AC460)
  {
    sub_29D5F3324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC460);
  }

  return result;
}

void sub_29D5F3324()
{
  if (!qword_2A17AC468)
  {
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC468);
    }
  }
}

uint64_t sub_29D5F3374(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = "ResourceBundleClass";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = ".Education.Audiogram";
      v5 = 0xD00000000000002DLL;
    }

    else
    {
      v6 = ".Education.HeadphoneListening";
      v5 = 0xD000000000000026;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (v4)
    {
      v6 = ".Education.HearingHealth";
    }

    else
    {
      v6 = "ResourceBundleClass";
    }
  }

  if (a2 > 1u)
  {
    v3 = ".Education.Audiogram";
    v7 = 0xD00000000000002DLL;
    v8 = ".Education.HeadphoneListening";
    v2 = 0xD000000000000026;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000028;
    v8 = ".Education.HearingHealth";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_29D660694();
  }

  return v12 & 1;
}

uint64_t sub_29D5F3494(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000007972;
    v4 = 0xEB00000000646574;
    if (a1 == 2)
    {
      v6 = 0x6970784564656573;
    }

    else
    {
      v6 = 0x61476E6F69676572;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xED0000656C626173;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x694465746F6D6572;
    }

    else
    {
      v6 = 1701736302;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x6970784564656573;
  v10 = 0xEA00000000007972;
  if (a2 != 2)
  {
    v9 = 0x61476E6F69676572;
    v10 = 0xEB00000000646574;
  }

  if (a2)
  {
    v2 = 0x694465746F6D6572;
    v8 = 0xED0000656C626173;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_29D660694();
  }

  return v13 & 1;
}

uint64_t sub_29D5F3608()
{
  v1 = *v0;
  sub_29D660724();
  sub_29D65FFA4();

  return sub_29D660744();
}

uint64_t sub_29D5F36C0()
{
  *v0;
  *v0;
  *v0;
  sub_29D65FFA4();
}

uint64_t sub_29D5F3764()
{
  v1 = *v0;
  sub_29D660724();
  sub_29D65FFA4();

  return sub_29D660744();
}

uint64_t sub_29D5F3818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D5F3E08();
  *a2 = result;
  return result;
}

void sub_29D5F3848(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = ".Education.Audiogram";
  v4 = 0xD00000000000002DLL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000026;
    v3 = ".Education.HeadphoneListening";
  }

  if (*v1)
  {
    v5 = ".Education.HearingHealth";
  }

  else
  {
    v2 = 0xD000000000000028;
    v5 = "ResourceBundleClass";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_29D5F38D4()
{
  result = qword_2A17AC470;
  if (!qword_2A17AC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC470);
  }

  return result;
}