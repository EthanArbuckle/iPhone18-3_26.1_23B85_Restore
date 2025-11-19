uint64_t sub_1AAD2C7B8@<X0>(_BYTE *a1@<X8>)
{
  sub_1AACBFE5C();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD2C860()
{
  sub_1AAF8DF74();
  sub_1AAE2910C();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2C8D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD2C90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartModel.Scenegraph();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD2C978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartModel.Scenegraph();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD2CA44()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 208);
  v3 = *(v0 + 280);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), v2, *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), v3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t sub_1AAD2CB2C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AACB8788(result, a2 & 1, MEMORY[0x1E69E7CF8], MEMORY[0x1E69E7D48]);
  }

  return result;
}

uint64_t sub_1AAD2CB84()
{
  v1 = *(v0 + 16);
  v2 = sub_1AAF8E004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = type metadata accessor for ChartScrollView();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  (*(v3 + 8))(v0 + v5, v2);
  v11 = v0 + v9;
  (*(*(v1 - 8) + 8))(v0 + v9 + v7[9], v1);
  v12 = v0 + v9 + v7[10];
  if (*(v12 + 104) != 255)
  {
    sub_1AACE3E8C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64));
  }

  v13 = v11 + v7[11];
  if (*(v13 + 104) != 255)
  {
    sub_1AACE3E8C(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64));
  }

  v14 = v11 + v7[12];
  if (*(v14 + 90))
  {
    v15 = *(v14 + 40);
    if (v15 >> 8 <= 0xFE)
    {
      if ((v15 & 0x100) != 0)
      {
        sub_1AACB634C(v11 + v7[12]);
      }

      else
      {
        sub_1AACCA728(*v14, *(v14 + 8), *(v14 + 16));
      }
    }

    v16 = *(v14 + 88);
    if (v16 >> 8 <= 0xFE)
    {
      if ((v16 & 0x100) != 0)
      {
        sub_1AACB634C(v14 + 48);
      }

      else
      {
        sub_1AACCA728(*(v14 + 48), *(v14 + 56), *(v14 + 64));
      }
    }
  }

  else
  {
  }

  v17 = v11 + v7[13];
  if (*(v17 + 80))
  {
    if (*(v17 + 64))
    {
      sub_1AACB634C(v17 + 40);
    }
  }

  else
  {
  }

  v18 = v11 + v7[14];
  v19 = *(v18 + 16);
  if (v19 != 255)
  {
    sub_1AACCA728(*v18, *(v18 + 8), v19);
  }

  v20 = v11 + v7[15];
  v21 = *(v20 + 16);
  if (v21 != 255)
  {
    sub_1AACCA728(*v20, *(v20 + 8), v21);
  }

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_1AAD2CE68()
{
  v1 = *(v0 + 16);
  v2 = sub_1AAF8E004();
  v3 = *(v2 - 8);
  v27 = *(v3 + 80);
  v4 = (v27 + 32) & ~v27;
  v5 = v4 + *(v3 + 64);
  v6 = type metadata accessor for ChartScrollView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v5 + v7) & ~v7;
  v24 = *(*(v6 - 1) + 64);
  v26 = sub_1AAF8DF94();
  v9 = *(v26 - 8);
  v10 = *(v9 + 80);
  v25 = *(v9 + 64);
  (*(v3 + 8))(v0 + v4, v2);
  v11 = v0 + v8;
  (*(*(v1 - 8) + 8))(v0 + v8 + v6[9], v1);
  v12 = v0 + v8 + v6[10];
  if (*(v12 + 104) != 255)
  {
    sub_1AACE3E8C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64));
  }

  v13 = v11 + v6[11];
  if (*(v13 + 104) != 255)
  {
    sub_1AACE3E8C(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64));
  }

  v14 = v11 + v6[12];
  if (*(v14 + 90))
  {
    v15 = *(v14 + 40);
    if (v15 >> 8 <= 0xFE)
    {
      if ((v15 & 0x100) != 0)
      {
        sub_1AACB634C(v11 + v6[12]);
      }

      else
      {
        sub_1AACCA728(*v14, *(v14 + 8), *(v14 + 16));
      }
    }

    v16 = *(v14 + 88);
    if (v16 >> 8 <= 0xFE)
    {
      if ((v16 & 0x100) != 0)
      {
        sub_1AACB634C(v14 + 48);
      }

      else
      {
        sub_1AACCA728(*(v14 + 48), *(v14 + 56), *(v14 + 64));
      }
    }
  }

  else
  {
  }

  v17 = v11 + v6[13];
  if (*(v17 + 80))
  {
    if (*(v17 + 64))
    {
      sub_1AACB634C(v17 + 40);
    }
  }

  else
  {
  }

  v18 = v11 + v6[14];
  v19 = *(v18 + 16);
  if (v19 != 255)
  {
    sub_1AACCA728(*v18, *(v18 + 8), v19);
  }

  v20 = v11 + v6[15];
  v21 = *(v20 + 16);
  if (v21 != 255)
  {
    sub_1AACCA728(*v20, *(v20 + 8), v21);
  }

  v22 = (v8 + v24 + v10) & ~v10;

  (*(v9 + 8))(v0 + v22, v26);

  return MEMORY[0x1EEE6BDD0](v0, v22 + v25, v27 | v7 | v10 | 7);
}

uint64_t sub_1AAD2D1F0(uint64_t a1, uint64_t a2)
{
  sub_1AAD00D70(0, &qword_1ED9B2C90, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD2D298(uint64_t a1, uint64_t a2)
{
  sub_1AACCC2A8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD2D2FC(uint64_t a1, uint64_t a2)
{
  sub_1AAD00BB8(0, &qword_1ED9B2C28, sub_1AACCC2A8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD2D390()
{
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  sub_1AAF8DF74();
  sub_1AAE386F8();
  swift_getWitnessTable();
  sub_1AAE38788();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAE052B0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAE05304();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E564();
  swift_getWitnessTable();
  sub_1AAF8D844();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E024();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1AAF8E384();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D6A4()
{
  sub_1AAD0A750(255, &qword_1ED9ADA48, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697FDE8]);
  sub_1AACBC0B0(255);
  sub_1AAE39A84();
  sub_1AAE39B14(&unk_1ED9AD860, sub_1AACBC0B0, sub_1AAE39B84);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1AAD2D7AC()
{
  type metadata accessor for StrokedSymbolShape();

  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1AAE3EF6C(v5, v7) & 1;
}

uint64_t sub_1AAD2D874()
{
  sub_1AAF8DF74();
  sub_1AAE3ECA8();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D8DC()
{
  sub_1AAF8DF74();
  sub_1AAE3ECA8();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2D948()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AAD2D990()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AAD2DA90(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_1AAF8E9D4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA8, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

char *sub_1AAD2DC5C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1AAF8E9D4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA8, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  sub_1AAE45C24(0, &qword_1ED9ADBA0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1AAD2DE2C()
{
  v1 = type metadata accessor for DefaultChartLegend.ColorRampView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[10];
  v7 = sub_1AAF8E9D4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[11];
  sub_1AAE45C24(0, &qword_1EB425A20, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1AAF8CAA4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[12];
  sub_1AAE45C24(0, &qword_1EB425A28, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1AAF8DF14();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AAD2E108()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD2E2C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for PlottableProjection();
  v28 = *(*(v7 - 8) + 64);
  v29 = *(*(v7 - 8) + 80);
  v8 = (v5 + v6 + v29) & ~v29;
  v9 = v0 + v5;
  sub_1AAD04750(*v9, *(v9 + 8), *(v9 + 16));

  v10 = v9 + v3[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v1 - 8) + 8);
      v15(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16));

  v17 = v0 + v8 + *(v7 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      if (v18 != 3)
      {
        if (v18 == 4)
        {

          sub_1AAF90774();
          v19 = sub_1AAF8CB94();
          v20 = v4;
          v21 = sub_1AAF8CBA4();
          v22 = swift_getTupleTypeMetadata3();
          (*(*(v19 - 8) + 8))(v17 + *(v22 + 48), v19);
          v23 = *(*(v21 - 8) + 8);
          v24 = v21;
          v4 = v20;
          v23(v17 + *(v22 + 64), v24);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v25 = *(*(v2 - 8) + 8);
      v25(v17, v2);
      v26 = swift_getTupleTypeMetadata2();
      v25(v17 + *(v26 + 48), v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v17, v2);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v28 + v8 + 1, v4 | v29 | 7);
}

uint64_t sub_1AAD2E804()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for PlottableProjection();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v42 = v4;
  v7 = (v6 + v4 + v5) & ~v4;
  v40 = v2;
  v8 = type metadata accessor for PlottableProjection();
  v41 = *(*(v8 - 8) + 64);
  v43 = *(*(v8 - 8) + 80);
  v9 = v7 + v6 + v43;
  v10 = v0 + v5;
  sub_1AAD04750(*v10, *(v10 + 8), *(v10 + 16));

  v11 = v10 + *(v3 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v38 = v8;
          v13 = sub_1AAF8CB94();
          v39 = v9;
          v14 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v13 - 8) + 8))(v11 + *(TupleTypeMetadata3 + 48), v13);
          v16 = *(*(v14 - 8) + 8);
          v17 = v11 + *(TupleTypeMetadata3 + 64);
          v18 = v14;
          v8 = v38;
          v9 = v39;
          v16(v17, v18);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(*(v1 - 8) + 8);
      v19(v11, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v19(v11 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v11, v1);
  }

LABEL_13:
  v21 = v9 & ~v43;
  v22 = v0 + v7;
  sub_1AAD04750(*v22, *(v22 + 8), *(v22 + 16));

  v23 = v22 + *(v3 + 44);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      if (v24 != 3)
      {
        if (v24 == 4)
        {

          sub_1AAF90774();
          v25 = sub_1AAF8CB94();
          v26 = sub_1AAF8CBA4();
          v27 = swift_getTupleTypeMetadata3();
          (*(*(v25 - 8) + 8))(v23 + *(v27 + 48), v25);
          (*(*(v26 - 8) + 8))(v23 + *(v27 + 64), v26);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v28 = *(*(v1 - 8) + 8);
      v28(v23, v1);
      v29 = swift_getTupleTypeMetadata2();
      v28(v23 + *(v29 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v23, v1);
  }

LABEL_25:
  sub_1AAD04750(*(v0 + v21), *(v0 + v21 + 8), *(v0 + v21 + 16));

  v30 = v0 + v21 + *(v8 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v31 = swift_getEnumCaseMultiPayload();
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      if (v31 != 3)
      {
        if (v31 == 4)
        {

          sub_1AAF90774();
          v32 = sub_1AAF8CB94();
          v33 = sub_1AAF8CBA4();
          v34 = swift_getTupleTypeMetadata3();
          (*(*(v32 - 8) + 8))(v30 + *(v34 + 48), v32);
          (*(*(v33 - 8) + 8))(v30 + *(v34 + 64), v33);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v31)
  {
    if (v31 == 1)
    {
      v35 = *(*(v40 - 8) + 8);
      v35(v30, v40);
      v36 = swift_getTupleTypeMetadata2();
      v35(v30 + *(v36 + 48), v40);
    }
  }

  else
  {
    (*(*(v40 - 8) + 8))(v30, v40);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v0, v21 + v41, v42 | v43 | 7);
}

uint64_t sub_1AAD2EF30()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v40 = *(*v3 + 80);
  v4 = (v40 + 64) & ~v40;
  v5 = *(*v3 + 64);
  v41 = type metadata accessor for PlottableProjection();
  v6 = *(v41 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v38 = *(v6 + 64) + v7 + v8;
  v39 = *(v6 + 64);
  v9 = v0 + v4;
  sub_1AAD04750(*v9, *(v9 + 8), *(v9 + 16));

  v10 = v9 + v3[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v2 - 8) + 8);
      v15(v10, v2);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v10, v2);
  }

LABEL_13:
  v17 = v38 & ~v7;
  v18 = v0 + v8;
  sub_1AAD04750(*v18, *(v18 + 8), *(v18 + 16));

  v19 = v41;
  v20 = v18 + *(v41 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = sub_1AAF8CBA4();
          v24 = swift_getTupleTypeMetadata3();
          v25 = *(*(v22 - 8) + 8);
          v26 = v22;
          v17 = v38 & ~v7;
          v25(v20 + *(v24 + 48), v26);
          v27 = *(v24 + 64);
          v19 = v41;
          (*(*(v23 - 8) + 8))(v20 + v27, v23);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v28 = *(*(v1 - 8) + 8);
      v28(v20, v1);
      v29 = swift_getTupleTypeMetadata2();
      v28(v20 + *(v29 + 48), v1);
      v19 = v41;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v20, v1);
  }

LABEL_25:
  sub_1AAD04750(*(v0 + v17), *(v0 + v17 + 8), *(v0 + v17 + 16));

  v30 = v0 + v17 + *(v19 + 44);
  v31 = swift_getEnumCaseMultiPayload();
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      if (v31 != 3)
      {
        if (v31 == 4)
        {

          sub_1AAF90774();
          v32 = sub_1AAF8CB94();
          v33 = sub_1AAF8CBA4();
          v34 = swift_getTupleTypeMetadata3();
          (*(*(v32 - 8) + 8))(v30 + *(v34 + 48), v32);
          (*(*(v33 - 8) + 8))(v30 + *(v34 + 64), v33);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v31)
  {
    if (v31 == 1)
    {
      v35 = *(*(v1 - 8) + 8);
      v35(v30, v1);
      v36 = swift_getTupleTypeMetadata2();
      v35(v30 + *(v36 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v30, v1);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v0, v17 + v39, v40 | v7 | 7);
}

uint64_t sub_1AAD2F64C()
{
  v37 = v0[3];
  v2 = v0[4];
  v1 = v0[5];
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v43 = *(*v3 + 80);
  v4 = (v43 + 80) & ~v43;
  v5 = *(*v3 + 64);
  v38 = v2;
  v6 = type metadata accessor for PlottableProjection();
  v42 = *(*(v6 - 8) + 80);
  v7 = (v4 + v5 + v42) & ~v42;
  v8 = *(*(v6 - 8) + 64);
  v41 = v1;
  v9 = type metadata accessor for PlottableProjection();
  v40 = *(*(v9 - 8) + 64);
  v44 = *(*(v9 - 8) + 80);
  v10 = v7 + v8 + v44;
  v11 = v0 + v4;
  sub_1AAD04750(*v11, *(v11 + 1), v11[16]);

  v12 = &v11[v3[13]];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = v9;
  v14 = v6;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v15 = sub_1AAF8CB94();
          v16 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v15 - 8) + 8))(&v12[*(TupleTypeMetadata3 + 48)], v15);
          (*(*(v16 - 8) + 8))(&v12[*(TupleTypeMetadata3 + 64)], v16);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(*(v37 - 8) + 8);
      v18(v12, v37);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v18(&v12[*(TupleTypeMetadata2 + 48)], v37);
    }
  }

  else
  {
    (*(*(v37 - 8) + 8))(v12, v37);
  }

LABEL_13:
  v20 = v10 & ~v44;
  v21 = v0 + v7;
  sub_1AAD04750(*v21, *(v21 + 1), v21[16]);

  v22 = &v21[*(v14 + 44)];
  type metadata accessor for PlottableProjection.Storage();
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      if (v23 != 3)
      {
        if (v23 == 4)
        {

          sub_1AAF90774();
          v24 = sub_1AAF8CB94();
          v25 = sub_1AAF8CBA4();
          v26 = swift_getTupleTypeMetadata3();
          (*(*(v24 - 8) + 8))(&v22[*(v26 + 48)], v24);
          (*(*(v25 - 8) + 8))(&v22[*(v26 + 64)], v25);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v27 = *(*(v38 - 8) + 8);
      v27(v22, v38);
      v28 = swift_getTupleTypeMetadata2();
      v27(&v22[*(v28 + 48)], v38);
    }
  }

  else
  {
    (*(*(v38 - 8) + 8))(v22, v38);
  }

LABEL_25:
  sub_1AAD04750(*(v0 + v20), *(v0 + v20 + 8), *(v0 + v20 + 16));

  v29 = v0 + v20 + *(v39 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      if (v30 != 3)
      {
        if (v30 == 4)
        {

          sub_1AAF90774();
          v31 = sub_1AAF8CB94();
          v32 = sub_1AAF8CBA4();
          v33 = swift_getTupleTypeMetadata3();
          (*(*(v31 - 8) + 8))(&v29[*(v33 + 48)], v31);
          (*(*(v32 - 8) + 8))(&v29[*(v33 + 64)], v32);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v34 = *(*(v41 - 8) + 8);
      v34(v29, v41);
      v35 = swift_getTupleTypeMetadata2();
      v34(&v29[*(v35 + 48)], v41);
    }
  }

  else
  {
    (*(*(v41 - 8) + 8))(v29, v41);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v0, v40 + v20 + 1, v43 | v42 | v44 | 7);
}

uint64_t sub_1AAD2FE04()
{
  v2 = v0[4];
  v1 = v0[5];
  v46 = v0[3];
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for PlottableProjection();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v49 = v2;
  v45 = type metadata accessor for PlottableProjection();
  v7 = *(*(v45 - 8) + 80);
  v48 = (v6 + v4 + v5) & ~v4;
  v55 = (v48 + v6 + v7) & ~v7;
  v8 = *(*(v45 - 8) + 64);
  v50 = type metadata accessor for PlottableProjection();
  v51 = *(*(v50 - 8) + 80);
  v52 = *(*(v50 - 8) + 64);
  v47 = v8 + v51;
  v9 = v0 + v5;
  sub_1AAD04750(*v9, *(v9 + 1), v9[16]);

  v10 = &v9[*(v3 + 44)];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = v7;
  v54 = v4;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v12 = v45;
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v13 = sub_1AAF8CB94();
          v14 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v13 - 8) + 8))(&v10[*(TupleTypeMetadata3 + 48)], v13);
          (*(*(v14 - 8) + 8))(&v10[*(TupleTypeMetadata3 + 64)], v14);
        }

        goto LABEL_13;
      }
    }

LABEL_12:
    v12 = v45;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(*(v46 - 8) + 8))(v10, v46);
    goto LABEL_12;
  }

  v12 = v45;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(*(v46 - 8) + 8);
    v16(v10, v46);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v16(&v10[*(TupleTypeMetadata2 + 48)], v46);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v48), *(v0 + v48 + 8), *(v0 + v48 + 16));

  v18 = v0 + v48 + *(v3 + 44);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 <= 1)
  {
    v20 = v51;
    if (v19)
    {
      if (v19 == 1)
      {
        v24 = *(*(v46 - 8) + 8);
        v24(v18, v46);
        v25 = swift_getTupleTypeMetadata2();
        v24(&v18[*(v25 + 48)], v46);
      }
    }

    else
    {
      (*(*(v46 - 8) + 8))(v18, v46);
    }
  }

  else
  {
    v20 = v51;
    switch(v19)
    {
      case 2:

        break;
      case 3:

        break;
      case 4:

        sub_1AAF90774();
        v21 = sub_1AAF8CB94();
        v22 = sub_1AAF8CBA4();
        v23 = swift_getTupleTypeMetadata3();
        (*(*(v21 - 8) + 8))(&v18[*(v23 + 48)], v21);
        (*(*(v22 - 8) + 8))(&v18[*(v23 + 64)], v22);
        break;
    }
  }

  v26 = (v55 + v47) & ~v20;
  sub_1AAD04750(*(v0 + v55), *(v0 + v55 + 8), *(v0 + v55 + 16));

  v27 = v0 + v55 + *(v12 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 > 1)
  {
    v29 = v54;
    v30 = v1;
    if (v28 != 2)
    {
      if (v28 != 3)
      {
        if (v28 == 4)
        {

          sub_1AAF90774();
          v31 = sub_1AAF8CB94();
          v32 = sub_1AAF8CBA4();
          v33 = swift_getTupleTypeMetadata3();
          (*(*(v31 - 8) + 8))(&v27[*(v33 + 48)], v31);
          (*(*(v32 - 8) + 8))(&v27[*(v33 + 64)], v32);
        }

        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  v29 = v54;
  v30 = v1;
  if (v28)
  {
    if (v28 == 1)
    {
      v34 = v20;
      v35 = *(*(v49 - 8) + 8);
      v35(v27, v49);
      v36 = swift_getTupleTypeMetadata2();
      v35(&v27[*(v36 + 48)], v49);
      v20 = v34;
      v29 = v54;
    }
  }

  else
  {
    (*(*(v49 - 8) + 8))(v27, v49);
  }

LABEL_36:
  sub_1AAD04750(*(v0 + v26), *(v0 + v26 + 8), *(v0 + v26 + 16));

  v37 = v0 + v26 + *(v50 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v38 = swift_getEnumCaseMultiPayload();
  if (v38 > 1)
  {
    if (v38 != 2)
    {
      if (v38 != 3)
      {
        if (v38 == 4)
        {

          sub_1AAF90774();
          v39 = sub_1AAF8CB94();
          v40 = sub_1AAF8CBA4();
          v41 = swift_getTupleTypeMetadata3();
          (*(*(v39 - 8) + 8))(&v37[*(v41 + 48)], v39);
          (*(*(v40 - 8) + 8))(&v37[*(v41 + 64)], v40);
        }

        goto LABEL_48;
      }
    }

    goto LABEL_48;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v42 = *(*(v30 - 8) + 8);
      v42(v37, v30);
      v43 = swift_getTupleTypeMetadata2();
      v42(&v37[*(v43 + 48)], v30);
    }
  }

  else
  {
    (*(*(v30 - 8) + 8))(v37, v30);
  }

LABEL_48:

  return MEMORY[0x1EEE6BDD0](v0, v26 + v52, v29 | v53 | v20 | 7);
}

uint64_t sub_1AAD30808()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  v4 = (type metadata accessor for PlottableProjection() - 8);
  v60 = *(*v4 + 80);
  v5 = (v60 + 80) & ~v60;
  v6 = *(*v4 + 64);
  v62 = v1;
  v7 = v2;
  v64 = type metadata accessor for PlottableProjection();
  v8 = *(*(v64 - 8) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v64 - 8) + 64);
  v58 = v3;
  v59 = v8;
  v63 = (v10 + v8 + v9) & ~v8;
  v11 = type metadata accessor for PlottableProjection();
  v12 = *(*(v11 - 8) + 64);
  v61 = *(*(v11 - 8) + 80);
  v13 = v10 + v61;
  v14 = v0 + v5;
  sub_1AAD04750(*v14, *(v14 + 1), v14[16]);

  v15 = &v14[v4[13]];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = v62;
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }

      v23 = *(*(v2 - 8) + 8);
      v23(v15, v7);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v23(&v15[*(TupleTypeMetadata2 + 48)], v7);
    }

    else
    {
      (*(*(v2 - 8) + 8))(v15, v2);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {

LABEL_12:
    v17 = v62;
    goto LABEL_13;
  }

  v17 = v62;
  if (EnumCaseMultiPayload == 3)
  {
  }

  else if (EnumCaseMultiPayload == 4)
  {

    sub_1AAF90774();
    v18 = sub_1AAF8CB94();
    v19 = sub_1AAF8CBA4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(v18 - 8) + 8))(&v15[*(TupleTypeMetadata3 + 48)], v18);
    v21 = *(*(v19 - 8) + 8);
    v22 = v19;
    v17 = v62;
    v21(&v15[*(TupleTypeMetadata3 + 64)], v22);
  }

LABEL_13:
  v25 = v63 + v13;
  v26 = v0 + v9;
  sub_1AAD04750(*v26, *(v26 + 1), v26[16]);

  v27 = &v26[*(v64 + 44)];
  type metadata accessor for PlottableProjection.Storage();
  v28 = swift_getEnumCaseMultiPayload();
  if (v28 > 1)
  {
    v29 = v61;
    if (v28 != 2)
    {
      if (v28 != 3)
      {
        if (v28 == 4)
        {

          sub_1AAF90774();
          v30 = sub_1AAF8CB94();
          v31 = sub_1AAF8CBA4();
          v32 = swift_getTupleTypeMetadata3();
          v33 = *(*(v30 - 8) + 8);
          v34 = v30;
          v17 = v62;
          v33(&v27[*(v32 + 48)], v34);
          v35 = *(*(v31 - 8) + 8);
          v36 = v31;
          v29 = v61;
          v35(&v27[*(v32 + 64)], v36);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  v29 = v61;
  if (v28)
  {
    if (v28 == 1)
    {
      v37 = *(*(v17 - 8) + 8);
      v37(v27, v17);
      v38 = swift_getTupleTypeMetadata2();
      v37(&v27[*(v38 + 48)], v17);
    }
  }

  else
  {
    (*(*(v17 - 8) + 8))(v27, v17);
  }

LABEL_25:
  v39 = v25 & ~v29;
  sub_1AAD04750(*(v0 + v63), *(v0 + v63 + 8), *(v0 + v63 + 16));

  v40 = v0 + v63 + *(v64 + 44);
  v41 = swift_getEnumCaseMultiPayload();
  if (v41 > 1)
  {
    if (v41 != 2)
    {
      if (v41 != 3)
      {
        if (v41 == 4)
        {

          sub_1AAF90774();
          v42 = sub_1AAF8CB94();
          v43 = v11;
          v44 = sub_1AAF8CBA4();
          v45 = swift_getTupleTypeMetadata3();
          (*(*(v42 - 8) + 8))(&v40[*(v45 + 48)], v42);
          v46 = *(*(v44 - 8) + 8);
          v47 = v44;
          v11 = v43;
          v46(&v40[*(v45 + 64)], v47);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v41)
  {
    if (v41 == 1)
    {
      v48 = *(*(v17 - 8) + 8);
      v48(v40, v17);
      v49 = swift_getTupleTypeMetadata2();
      v48(&v40[*(v49 + 48)], v17);
    }
  }

  else
  {
    (*(*(v17 - 8) + 8))(v40, v17);
  }

LABEL_37:
  sub_1AAD04750(*(v0 + v39), *(v0 + v39 + 8), *(v0 + v39 + 16));

  v50 = v0 + v39 + *(v11 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v51 = swift_getEnumCaseMultiPayload();
  if (v51 > 1)
  {
    if (v51 != 2)
    {
      if (v51 != 3)
      {
        if (v51 == 4)
        {

          sub_1AAF90774();
          v52 = sub_1AAF8CB94();
          v53 = sub_1AAF8CBA4();
          v54 = swift_getTupleTypeMetadata3();
          (*(*(v52 - 8) + 8))(&v50[*(v54 + 48)], v52);
          (*(*(v53 - 8) + 8))(&v50[*(v54 + 64)], v53);
        }

        goto LABEL_49;
      }
    }

    goto LABEL_49;
  }

  if (v51)
  {
    if (v51 == 1)
    {
      v55 = *(*(v58 - 8) + 8);
      v55(v50, v58);
      v56 = swift_getTupleTypeMetadata2();
      v55(&v50[*(v56 + 48)], v58);
    }
  }

  else
  {
    (*(*(v58 - 8) + 8))(v50, v58);
  }

LABEL_49:

  return MEMORY[0x1EEE6BDD0](v0, v39 + v12, v60 | v59 | v29 | 7);
}

uint64_t sub_1AAD311D4()
{

  sub_1AAD04750(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  sub_1AAD04750(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  sub_1AAD04750(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1AAD31248()
{

  sub_1AAD04750(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  sub_1AAD04750(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AAD312C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD31308()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD314C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v33 = *(*v3 + 80);
  v4 = (v33 + 64) & ~v33;
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for PlottableProjection();
  v32 = *(*(v6 - 8) + 80);
  v7 = (v4 + v5 + v32) & ~v32;
  v8 = v7 + *(*(v6 - 8) + 64);
  v9 = v0 + v4;
  sub_1AAD04750(*v9, *(v9 + 8), *(v9 + 16));

  v10 = v9 + v3[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v1 - 8) + 8);
      v15(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  v17 = v8 + 127;
  v18 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1AAD04750(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));

  v19 = v0 + v7 + *(v6 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {

          sub_1AAF90774();
          v21 = sub_1AAF8CB94();
          v22 = sub_1AAF8CBA4();
          v23 = swift_getTupleTypeMetadata3();
          (*(*(v21 - 8) + 8))(v19 + *(v23 + 48), v21);
          (*(*(v22 - 8) + 8))(v19 + *(v23 + 64), v22);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      v24 = *(*(v2 - 8) + 8);
      v24(v19, v2);
      v25 = swift_getTupleTypeMetadata2();
      v24(v19 + *(v25 + 48), v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v19, v2);
  }

LABEL_25:
  v26 = v17 & 0xFFFFFFFFFFFFFFF8;
  v27 = v0 + v18;
  v28 = *(v0 + v18 + 96);
  if (v28 != 255)
  {
    sub_1AAD31A5C(*(v27 + 88), v28 & 1);
  }

  sub_1AAD31A5C(*(v27 + 104), *(v27 + 112));
  v29 = v0 + v26;
  v30 = *(v0 + v26 + 96);
  if (v30 != 255)
  {
    sub_1AAD31A5C(*(v29 + 88), v30 & 1);
  }

  sub_1AAD31A5C(*(v29 + 104), *(v29 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v26 + 114, v33 | v32 | 7);
}

uint64_t sub_1AAD31A5C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AAD31A68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for PlottableProjection();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v48 = v4;
  v7 = (v6 + v4 + v5) & ~v4;
  v46 = v2;
  v8 = type metadata accessor for PlottableProjection();
  v47 = *(*(v8 - 8) + 80);
  v9 = (v7 + v6 + v47) & ~v47;
  v45 = *(*(v8 - 8) + 64) + v9;
  v10 = v0 + v5;
  sub_1AAD04750(*v10, *(v10 + 8), *(v10 + 16));

  v11 = v10 + *(v3 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v43 = v8;
          v13 = sub_1AAF8CB94();
          v44 = v9;
          v14 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v13 - 8) + 8))(v11 + *(TupleTypeMetadata3 + 48), v13);
          v16 = *(*(v14 - 8) + 8);
          v17 = v11 + *(TupleTypeMetadata3 + 64);
          v18 = v14;
          v8 = v43;
          v9 = v44;
          v16(v17, v18);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(*(v1 - 8) + 8);
      v19(v11, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v19(v11 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v11, v1);
  }

LABEL_13:
  v21 = v0 + v7;
  sub_1AAD04750(*v21, *(v21 + 8), *(v21 + 16));

  v22 = v21 + *(v3 + 44);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      if (v23 != 3)
      {
        if (v23 == 4)
        {

          sub_1AAF90774();
          v24 = v9;
          v25 = sub_1AAF8CB94();
          v26 = sub_1AAF8CBA4();
          v27 = swift_getTupleTypeMetadata3();
          v28 = *(*(v25 - 8) + 8);
          v29 = v25;
          v9 = v24;
          v28(v22 + *(v27 + 48), v29);
          (*(*(v26 - 8) + 8))(v22 + *(v27 + 64), v26);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v30 = *(*(v1 - 8) + 8);
      v30(v22, v1);
      v31 = swift_getTupleTypeMetadata2();
      v30(v22 + *(v31 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v22, v1);
  }

LABEL_25:
  v32 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1AAD04750(*(v0 + v9), *(v0 + v9 + 8), *(v0 + v9 + 16));

  v33 = v0 + v9 + *(v8 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v34 = swift_getEnumCaseMultiPayload();
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      if (v34 != 3)
      {
        if (v34 == 4)
        {

          sub_1AAF90774();
          v35 = sub_1AAF8CB94();
          v36 = sub_1AAF8CBA4();
          v37 = swift_getTupleTypeMetadata3();
          (*(*(v35 - 8) + 8))(v33 + *(v37 + 48), v35);
          (*(*(v36 - 8) + 8))(v33 + *(v37 + 64), v36);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v34)
  {
    if (v34 == 1)
    {
      v38 = *(*(v46 - 8) + 8);
      v38(v33, v46);
      v39 = swift_getTupleTypeMetadata2();
      v38(v33 + *(v39 + 48), v46);
    }
  }

  else
  {
    (*(*(v46 - 8) + 8))(v33, v46);
  }

LABEL_37:
  v40 = v0 + v32;
  v41 = *(v0 + v32 + 96);
  if (v41 != 255)
  {
    sub_1AAD31A5C(*(v40 + 88), v41 & 1);
  }

  sub_1AAD31A5C(*(v40 + 104), *(v40 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v32 + 113, v48 | v47 | 7);
}

uint64_t sub_1AAD321CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v43 = *(*v3 + 80);
  v4 = (v43 + 64) & ~v43;
  v5 = *(*v3 + 64);
  v44 = type metadata accessor for PlottableProjection();
  v6 = *(*(v44 - 8) + 80);
  v7 = *(*(v44 - 8) + 64);
  v8 = (v4 + v5 + v6) & ~v6;
  v41 = v7 + ((v7 + v6 + v8) & ~v6);
  v42 = (v7 + v6 + v8) & ~v6;
  v9 = v0 + v4;
  sub_1AAD04750(*v9, *(v9 + 8), *(v9 + 16));

  v10 = v9 + v3[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v2 - 8) + 8);
      v15(v10, v2);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v10, v2);
  }

LABEL_13:
  v17 = v41 + 7;
  v18 = v0 + v8;
  sub_1AAD04750(*v18, *(v18 + 8), *(v18 + 16));

  v19 = v44;
  v20 = v18 + *(v44 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {

          sub_1AAF90774();
          v22 = sub_1AAF8CB94();
          v23 = sub_1AAF8CBA4();
          v24 = swift_getTupleTypeMetadata3();
          v25 = *(*(v22 - 8) + 8);
          v26 = v22;
          v17 = v41 + 7;
          v25(v20 + *(v24 + 48), v26);
          v27 = *(v24 + 64);
          v19 = v44;
          (*(*(v23 - 8) + 8))(v20 + v27, v23);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v28 = *(*(v1 - 8) + 8);
      v28(v20, v1);
      v29 = swift_getTupleTypeMetadata2();
      v28(v20 + *(v29 + 48), v1);
      v19 = v44;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v20, v1);
  }

LABEL_25:
  v30 = v17 & 0xFFFFFFFFFFFFFFF8;
  sub_1AAD04750(*(v0 + v42), *(v0 + v42 + 8), *(v0 + v42 + 16));

  v31 = v0 + v42 + *(v19 + 44);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      if (v32 != 3)
      {
        if (v32 == 4)
        {

          sub_1AAF90774();
          v33 = sub_1AAF8CB94();
          v34 = sub_1AAF8CBA4();
          v35 = swift_getTupleTypeMetadata3();
          (*(*(v33 - 8) + 8))(v31 + *(v35 + 48), v33);
          (*(*(v34 - 8) + 8))(v31 + *(v35 + 64), v34);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v32)
  {
    if (v32 == 1)
    {
      v36 = *(*(v1 - 8) + 8);
      v36(v31, v1);
      v37 = swift_getTupleTypeMetadata2();
      v36(v31 + *(v37 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v31, v1);
  }

LABEL_37:
  v38 = v0 + v30;
  v39 = *(v0 + v30 + 96);
  if (v39 != 255)
  {
    sub_1AAD31A5C(*(v38 + 88), v39 & 1);
  }

  sub_1AAD31A5C(*(v38 + 104), *(v38 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v30 + 113, v43 | v6 | 7);
}

uint64_t sub_1AAD32920()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  sub_1AAD04750(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v7 = v6 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v9 = sub_1AAF8CB94();
          v10 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v9 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 48), v9);
          (*(*(v10 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 64), v10);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(*(v1 - 8) + 8);
      v12(v7, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v12(v7 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v7, v1);
  }

LABEL_13:
  v14 = v0 + v5;
  v15 = *(v0 + v5 + 96);
  if (v15 != 255)
  {
    sub_1AAD31A5C(*(v14 + 88), v15 & 1);
  }

  sub_1AAD31A5C(*(v14 + 104), *(v14 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 114, v3 | 7);
}

uint64_t sub_1AAD32C14()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  sub_1AAD04750(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v7 = v6 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v9 = sub_1AAF8CB94();
          v10 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v9 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 48), v9);
          (*(*(v10 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 64), v10);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(*(v1 - 8) + 8);
      v12(v7, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v12(v7 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v7, v1);
  }

LABEL_13:
  v14 = v0 + v5;
  v15 = *(v0 + v5 + 96);
  if (v15 != 255)
  {
    sub_1AAD31A5C(*(v14 + 88), v15 & 1);
  }

  sub_1AAD31A5C(*(v14 + 104), *(v14 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 114, v3 | 7);
}

uint64_t sub_1AAD32F08()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for PlottableProjection();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v3 + 48) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = v0 + v5;
  sub_1AAD04750(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  v8 = v7 + *(v2 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v27 = v6;
          v10 = sub_1AAF8CB94();
          v26 = v4;
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 48), v10);
          v13 = *(*(v11 - 8) + 8);
          v14 = v8 + *(TupleTypeMetadata3 + 64);
          v15 = v11;
          v4 = v26;
          v6 = v27;
          v13(v14, v15);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v6;
      v16 = *(*(v1 - 8) + 8);
      v16(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v16(v8 + *(TupleTypeMetadata2 + 48), v1);
      v6 = v28;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v18 = v0 + v6 + *(v2 + 44);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {

          sub_1AAF90774();
          v20 = sub_1AAF8CB94();
          v21 = sub_1AAF8CBA4();
          v22 = swift_getTupleTypeMetadata3();
          (*(*(v20 - 8) + 8))(v18 + *(v22 + 48), v20);
          (*(*(v21 - 8) + 8))(v18 + *(v22 + 64), v21);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v23 = *(*(v1 - 8) + 8);
      v23(v18, v1);
      v24 = swift_getTupleTypeMetadata2();
      v23(v18 + *(v24 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v18, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_1AAD333D4()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for PlottableProjection();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v3 + 73) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = v0 + v5;
  sub_1AAD04750(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  v8 = v7 + *(v2 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v27 = v6;
          v10 = sub_1AAF8CB94();
          v26 = v4;
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 48), v10);
          v13 = *(*(v11 - 8) + 8);
          v14 = v8 + *(TupleTypeMetadata3 + 64);
          v15 = v11;
          v4 = v26;
          v6 = v27;
          v13(v14, v15);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v6;
      v16 = *(*(v1 - 8) + 8);
      v16(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v16(v8 + *(TupleTypeMetadata2 + 48), v1);
      v6 = v28;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v18 = v0 + v6 + *(v2 + 44);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {

          sub_1AAF90774();
          v20 = sub_1AAF8CB94();
          v21 = sub_1AAF8CBA4();
          v22 = swift_getTupleTypeMetadata3();
          (*(*(v20 - 8) + 8))(v18 + *(v22 + 48), v20);
          (*(*(v21 - 8) + 8))(v18 + *(v22 + 64), v21);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v23 = *(*(v1 - 8) + 8);
      v23(v18, v1);
      v24 = swift_getTupleTypeMetadata2();
      v23(v18 + *(v24 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v18, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4, v3 | 7);
}

uint64_t sub_1AAD33894()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  sub_1AAD04750(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v7 = v6 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v9 = sub_1AAF8CB94();
          v10 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v9 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 48), v9);
          (*(*(v10 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 64), v10);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(*(v1 - 8) + 8);
      v12(v7, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v12(v7 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v7, v1);
  }

LABEL_13:

  v14 = v0 + v5;
  v15 = *(v0 + v5 + 96);
  if (v15 != 255)
  {
    sub_1AAD31A5C(*(v14 + 88), v15 & 1);
  }

  sub_1AAD31A5C(*(v14 + 104), *(v14 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 114, v3 | 7);
}

uint64_t sub_1AAD33BB0()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v4;
  sub_1AAD04750(*v6, *(v6 + 8), *(v6 + 16));

  v7 = v6 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v9 = sub_1AAF8CB94();
          v10 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v9 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 48), v9);
          (*(*(v10 - 8) + 8))(v7 + *(TupleTypeMetadata3 + 64), v10);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(*(v1 - 8) + 8);
      v12(v7, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v12(v7 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v7, v1);
  }

LABEL_13:
  v14 = v0 + v5;
  v15 = *(v0 + v5 + 96);
  if (v15 != 255)
  {
    sub_1AAD31A5C(*(v14 + 88), v15 & 1);
  }

  sub_1AAD31A5C(*(v14 + 104), *(v14 + 112));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 114, v3 | 7);
}

uint64_t sub_1AAD33EB4()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for PlottableProjection();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v3 + 48) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = v0 + v5;
  sub_1AAD04750(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  v8 = v7 + *(v2 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v27 = v6;
          v10 = sub_1AAF8CB94();
          v26 = v4;
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 48), v10);
          v13 = *(*(v11 - 8) + 8);
          v14 = v8 + *(TupleTypeMetadata3 + 64);
          v15 = v11;
          v4 = v26;
          v6 = v27;
          v13(v14, v15);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v6;
      v16 = *(*(v1 - 8) + 8);
      v16(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v16(v8 + *(TupleTypeMetadata2 + 48), v1);
      v6 = v28;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v18 = v0 + v6 + *(v2 + 44);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {

          sub_1AAF90774();
          v20 = sub_1AAF8CB94();
          v21 = sub_1AAF8CBA4();
          v22 = swift_getTupleTypeMetadata3();
          (*(*(v20 - 8) + 8))(v18 + *(v22 + 48), v20);
          (*(*(v21 - 8) + 8))(v18 + *(v22 + 64), v21);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v23 = *(*(v1 - 8) + 8);
      v23(v18, v1);
      v24 = swift_getTupleTypeMetadata2();
      v23(v18 + *(v24 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v18, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AAD34398()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for PlottableProjection();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v3 + 64) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;

  v7 = v0 + v5;
  sub_1AAD04750(*v7, *(v7 + 8), *(v7 + 16));

  v8 = v7 + *(v2 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v27 = v6;
          v10 = sub_1AAF8CB94();
          v26 = v4;
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 48), v10);
          v13 = *(*(v11 - 8) + 8);
          v14 = v8 + *(TupleTypeMetadata3 + 64);
          v15 = v11;
          v4 = v26;
          v6 = v27;
          v13(v14, v15);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v6;
      v16 = *(*(v1 - 8) + 8);
      v16(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v16(v8 + *(TupleTypeMetadata2 + 48), v1);
      v6 = v28;
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16));

  v18 = v0 + v6 + *(v2 + 44);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {

          sub_1AAF90774();
          v20 = sub_1AAF8CB94();
          v21 = sub_1AAF8CBA4();
          v22 = swift_getTupleTypeMetadata3();
          (*(*(v20 - 8) + 8))(v18 + *(v22 + 48), v20);
          (*(*(v21 - 8) + 8))(v18 + *(v22 + 64), v21);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v23 = *(*(v1 - 8) + 8);
      v23(v18, v1);
      v24 = swift_getTupleTypeMetadata2();
      v23(v18 + *(v24 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v18, v1);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4, v3 | 7);
}

uint64_t sub_1AAD3487C()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD34A3C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for PlottableProjection();
  v28 = *(*(v7 - 8) + 80);
  v29 = *(*(v7 - 8) + 64);
  v8 = (v5 + v6 + v28) & ~v28;
  v9 = v0 + v5;
  sub_1AAD04750(*v9, *(v9 + 8), *(v9 + 16));

  v10 = v9 + v3[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v12 = sub_1AAF8CB94();
          v13 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v12 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 48), v12);
          (*(*(v13 - 8) + 8))(v10 + *(TupleTypeMetadata3 + 64), v13);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(*(v1 - 8) + 8);
      v15(v10, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v15(v10 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v10, v1);
  }

LABEL_13:
  sub_1AAD04750(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16));

  v17 = v0 + v8 + *(v7 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      if (v18 != 3)
      {
        if (v18 == 4)
        {

          sub_1AAF90774();
          v19 = sub_1AAF8CB94();
          v20 = v4;
          v21 = sub_1AAF8CBA4();
          v22 = swift_getTupleTypeMetadata3();
          (*(*(v19 - 8) + 8))(v17 + *(v22 + 48), v19);
          v23 = *(*(v21 - 8) + 8);
          v24 = v21;
          v4 = v20;
          v23(v17 + *(v22 + 64), v24);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v25 = *(*(v2 - 8) + 8);
      v25(v17, v2);
      v26 = swift_getTupleTypeMetadata2();
      v25(v17 + *(v26 + 48), v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v17, v2);
  }

LABEL_25:

  return MEMORY[0x1EEE6BDD0](v0, v8 + v29, v4 | v28 | 7);
}

uint64_t sub_1AAD34F7C()
{
  v39 = v0[3];
  v2 = v0[4];
  v1 = v0[5];
  swift_getAssociatedTypeWitness();
  v3 = (type metadata accessor for PlottableProjection() - 8);
  v45 = *(*v3 + 80);
  v4 = (v45 + 80) & ~v45;
  v5 = *(*v3 + 64);
  v40 = v2;
  v6 = type metadata accessor for PlottableProjection();
  v44 = *(*(v6 - 8) + 80);
  v7 = (v4 + v5 + v44) & ~v44;
  v8 = *(*(v6 - 8) + 64);
  v43 = v1;
  v9 = type metadata accessor for PlottableProjection();
  v42 = *(*(v9 - 8) + 64);
  v10 = *(*(v9 - 8) + 80);
  v11 = v7 + v8 + v10;
  v46 = v0;
  v12 = v0 + v4;
  sub_1AAD04750(*v12, *(v12 + 1), v12[16]);

  v13 = &v12[v3[13]];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v9;
  v15 = v6;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v16 = sub_1AAF8CB94();
          v17 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v16 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 48)], v16);
          (*(*(v17 - 8) + 8))(&v13[*(TupleTypeMetadata3 + 64)], v17);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(*(v39 - 8) + 8);
      v19(v13, v39);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v19(&v13[*(TupleTypeMetadata2 + 48)], v39);
    }
  }

  else
  {
    (*(*(v39 - 8) + 8))(v13, v39);
  }

LABEL_13:
  v21 = v11 & ~v10;
  v22 = v10;
  v23 = v46 + v7;
  sub_1AAD04750(*v23, *(v23 + 1), v23[16]);

  v24 = &v23[*(v15 + 44)];
  type metadata accessor for PlottableProjection.Storage();
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      if (v25 != 3)
      {
        if (v25 == 4)
        {

          sub_1AAF90774();
          v26 = sub_1AAF8CB94();
          v27 = sub_1AAF8CBA4();
          v28 = swift_getTupleTypeMetadata3();
          (*(*(v26 - 8) + 8))(&v24[*(v28 + 48)], v26);
          (*(*(v27 - 8) + 8))(&v24[*(v28 + 64)], v27);
        }

        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v29 = *(*(v40 - 8) + 8);
      v29(v24, v40);
      v30 = swift_getTupleTypeMetadata2();
      v29(&v24[*(v30 + 48)], v40);
    }
  }

  else
  {
    (*(*(v40 - 8) + 8))(v24, v40);
  }

LABEL_25:
  sub_1AAD04750(*(v46 + v21), *(v46 + v21 + 8), *(v46 + v21 + 16));

  v31 = v46 + v21 + *(v41 + 44);
  type metadata accessor for PlottableProjection.Storage();
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      if (v32 != 3)
      {
        if (v32 == 4)
        {

          sub_1AAF90774();
          v33 = sub_1AAF8CB94();
          v34 = sub_1AAF8CBA4();
          v35 = swift_getTupleTypeMetadata3();
          (*(*(v33 - 8) + 8))(&v31[*(v35 + 48)], v33);
          (*(*(v34 - 8) + 8))(&v31[*(v35 + 64)], v34);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v32)
  {
    if (v32 == 1)
    {
      v36 = *(*(v43 - 8) + 8);
      v36(v31, v43);
      v37 = swift_getTupleTypeMetadata2();
      v36(&v31[*(v37 + 48)], v43);
    }
  }

  else
  {
    (*(*(v43 - 8) + 8))(v31, v43);
  }

LABEL_37:

  return MEMORY[0x1EEE6BDD0](v46, v21 + v42, v45 | v44 | v22 | 7);
}

uint64_t sub_1AAD35768()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD357C0(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1AAD357D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1AAD357F0()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD359A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PointsRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD35A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PointsRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD35A8C()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD35C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectanglesRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD35CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectanglesRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD35D20()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD35ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD35F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD35FB4()
{

  if (*(v0 + 96))
  {
    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 288);
  if (v1 >> 4 != 0xFFFFFFFF || ((v3 | v2) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v1, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2, *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), v3);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  if (v5 >> 4 != 0xFFFFFFFF || ((v7 | v6) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v5, *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), v6, *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7);
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 528);
  v10 = *(v0 + 600);
  if (v8 >> 4 != 0xFFFFFFFF || ((v10 | v9) & 0xF000000000000004) != 0)
  {
    sub_1AAE2D820(v8, *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488), *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), v9, *(v0 + 536), *(v0 + 544), *(v0 + 552), *(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, 624, 7);
}

uint64_t sub_1AAD3616C()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(*v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  sub_1AAD04750(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v8 = v7 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v10 = sub_1AAF8CB94();
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 48), v10);
          (*(*(v11 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 64), v11);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(*(v1 - 8) + 8);
      v13(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v13(v8 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:
  v15 = v0 + v6;
  v16 = *(v0 + v6 + 96);
  if (v16 != 255)
  {
    sub_1AAD31A5C(*(v15 + 88), v16 & 1);
  }

  sub_1AAD31A5C(*(v15 + 104), *(v15 + 112));
  v17 = v0 + ((v5 + 127) & 0xFFFFFFFFFFFFFFF8);
  v18 = *(v17 + 96);
  if (v18 != 255)
  {
    sub_1AAD31A5C(*(v17 + 88), v18 & 1);
  }

  sub_1AAD31A5C(*(v17 + 104), *(v17 + 112));

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 247) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_1AAD364A0()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(*v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  sub_1AAD04750(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v8 = v7 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v10 = sub_1AAF8CB94();
          v11 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v10 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 48), v10);
          (*(*(v11 - 8) + 8))(v8 + *(TupleTypeMetadata3 + 64), v11);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(*(v1 - 8) + 8);
      v13(v8, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v13(v8 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

LABEL_13:
  v15 = v0 + v6;
  v16 = *(v0 + v6 + 96);
  if (v16 != 255)
  {
    sub_1AAD31A5C(*(v15 + 88), v16 & 1);
  }

  sub_1AAD31A5C(*(v15 + 104), *(v15 + 112));
  v17 = v0 + ((v5 + 127) & 0xFFFFFFFFFFFFFFF8);
  v18 = *(v17 + 96);
  if (v18 != 255)
  {
    sub_1AAD31A5C(*(v17 + 88), v18 & 1);
  }

  sub_1AAD31A5C(*(v17 + 104), *(v17 + 112));

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 247) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AAD3682C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

_WORD *sub_1AAD36888@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1AAD368BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD368F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD3692C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AAD36964()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD369CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD36A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD36A58()
{
  sub_1AAF8DF74();
  sub_1AACAA3E4();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD36B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 15);
}

uint64_t sub_1AAD36B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD36BCC()
{
  sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE99068();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD36C5C()
{
  sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE99178();
  sub_1AAF8DF74();
  sub_1AAE99068();
  swift_getWitnessTable();
  sub_1AAE991F4(&qword_1EB4267A0, sub_1AAE99178);
  return swift_getWitnessTable();
}

uint64_t sub_1AAD36D8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AAD36DC4()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1AAE9F794(0, &qword_1EB4267F0, sub_1AAE9F48C, MEMORY[0x1E69E8300]);
  }
}

void sub_1AAD36E30()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1AAE9F794(0, &qword_1EB4267F8, sub_1AAE9F600, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1AAD36E9C()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AAD36ED4()
{

  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1AAD36F20(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AAD37154()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AAD37194()
{

  if (!v0[330] && (v0[329] != 1 || v0[328] <= 2u))
  {
    sub_1AACB634C((v0 + 288));
  }

  return MEMORY[0x1EEE6BDD0](v0, 331, 7);
}

uint64_t sub_1AAD3720C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD37244()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD3727C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3733C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD37384()
{
  sub_1AAEBF458(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1AAD12C64(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1AAD373D0()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;

  if (*(v0 + v5 + 32))
  {
  }

  v7 = *(v6 + 64);
  if (v7 != 255)
  {
    sub_1AACE40AC(*(v6 + 56), v7 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v5 + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AAD374C4()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + v5;

  if (*(v0 + v5 + 32))
  {
  }

  v7 = *(v6 + 64);
  if (v7 != 255)
  {
    sub_1AACE40AC(*(v6 + 56), v7 & 1);
  }

  v8 = (((v5 + 111) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1AAEBF458(*(v0 + v8 + 16), *(v0 + v8 + 24), *(v0 + v8 + 32), *(v0 + v8 + 40), *(v0 + v8 + 48));
  sub_1AAD12C64(*(v0 + v8 + 64), *(v0 + v8 + 72), *(v0 + v8 + 80));

  return MEMORY[0x1EEE6BDD0](v0, v8 + 81, v3 | 7);
}

uint64_t sub_1AAD375CC()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 48))
  {
  }

  v5 = *(v0 + 80);
  if (v5 != 255)
  {
    sub_1AACE40AC(*(v0 + 72), v5 & 1);
  }

  v6 = (v3 + 120) & ~v3;
  v7 = (v6 + v4) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 24, v3 | 7);
}

uint64_t sub_1AAD376F8()
{

  if (!v0[330] && (v0[329] != 1 || v0[328] <= 2u))
  {
    sub_1AACB634C((v0 + 288));
  }

  return MEMORY[0x1EEE6BDD0](v0, 331, 7);
}

uint64_t sub_1AAD37770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AxisMarkValues(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AAD37830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AxisMarkValues(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD378F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AAECDDB8(0, &qword_1ED9AF540, sub_1AADFACDC, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1AAECDDB8(0, qword_1ED9AF548, sub_1AADFAC74, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1AAD37A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1AAECDDB8(0, &qword_1ED9AF540, sub_1AADFACDC, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1AAECDDB8(0, qword_1ED9AF548, sub_1AADFAC74, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1AAD37BA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8D974();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD37C50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8D974();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD37D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AGChartRendererContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AAD37E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AGChartRendererContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD37EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AGChartRendererContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AAD37F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AGChartRendererContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD38054(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AGChartRendererContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD38100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AGChartRendererContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD381A8()
{
  type metadata accessor for AttributeGraphBasedChartsModifier();
  sub_1AAF8DF74();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD3823C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AACAE1F4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAD3831C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AACAE1F4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 56);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD383F0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DisplayListProxyViewContainer(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD3849C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayListProxyViewContainer(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD38548()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD38588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  v6 = sub_1AAF8E244();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD38600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  v7 = sub_1AAF8E244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3867C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8E244();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD38728(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8E244();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD387CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8E244();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ChartDisplayList.ClipRect(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1AAD388F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1AAF8E244();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ChartDisplayList.ClipRect(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AAD38A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AAD38A5C()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C(v0 + 80);
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AAD38AAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AAD38AF4()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C(v0 + 64);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 146, 7);
}

uint64_t sub_1AAD38B58()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C(v0 + 64);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD38BC4()
{

  if (*(v0 + 120))
  {
    sub_1AACB634C(v0 + 80);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD38C28()
{

  sub_1AACB634C(v0 + 80);
  if (*(v0 + 160))
  {
    sub_1AACB634C(v0 + 120);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD38C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD38CE8()
{
  v1 = sub_1AAF8D954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AAD38DB0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 65) = a2;
  return result;
}

uint64_t sub_1AAD38DDC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1AAD38E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD38E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD38EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChartEnvironmentValues(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD38F8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChartEnvironmentValues(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD39030()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD39068()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD390A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD390FC()
{
  type metadata accessor for ChartModifiedContent();
  v1 = sub_1AAF8D954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AAD39194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8EFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 72));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1AAD39254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AAF8EFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 72)) = (a2 - 1);
  return result;
}

uint64_t sub_1AAD39330(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8E4B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD393DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8E4B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD39484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BuilderTuple();
  v6 = sub_1AAF8D954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for _ChartContentInputs(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 52));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1AAD395A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for BuilderTuple();
  v8 = sub_1AAF8D954();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _ChartContentInputs(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 44);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AAD396B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8F194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1AAF8E3C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AAD397A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AAF8F194();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1AAF8E3C4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AAD398A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8E134();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ChartContainerValues();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1AAD399C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AAF8E134();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ChartContainerValues();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AAD39AEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AACBBDB4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAD39BCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AACBBDB4(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD39CA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD39CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD39D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD39DEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AAF8DC74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1AAD39E98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AAF8DC74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD39FBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD3A00C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD3A044@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1AAF70898(*(a1 + a2 - 24), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_1AAD3A088(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AAD3A09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD3A0D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD3A10C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AAD3A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CollectedChartContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AAD3A208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CollectedChartContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD3A2C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1AAF26348(0, &qword_1ED9B1E50, a3, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAD3A3A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1AAF26348(0, &qword_1ED9B1E50, a3, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD3A474()
{

  if (*(v0 + 96))
  {
    sub_1AACB634C(v0 + 72);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AAD3A4BC()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C(v0 + 80);
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AAD3A50C()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AAD3A554()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C(v0 + 64);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 146, 7);
}

uint64_t sub_1AAD3A5B8()
{

  if (*(v0 + 104))
  {
    sub_1AACB634C(v0 + 64);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD3A624()
{

  if (*(v0 + 120))
  {
    sub_1AACB634C(v0 + 80);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD3A688()
{

  sub_1AACB634C(v0 + 80);
  if (*(v0 + 160))
  {
    sub_1AACB634C(v0 + 120);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 186, 7);
}

uint64_t sub_1AAD3A6EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AAD3A768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1AAF8DF14();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1AAF8DF14();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3A85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1AAF8DF14();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3A8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1AAF8DF14();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3A950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD3A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD3AA38()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_5;
    }

    sub_1AAD04750(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  sub_1AAD3D014(*(v0 + 48), *(v0 + 56), *(v0 + 64));
LABEL_5:
  v2 = *(v0 + 96);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_9;
    }

    sub_1AAD04750(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  sub_1AAD2C0B8(*(v0 + 104), *(v0 + 112), *(v0 + 120));
LABEL_9:
  v3 = *(v0 + 152);
  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_13;
    }

    sub_1AAD04750(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  sub_1AAF3A2D0(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
LABEL_13:
  v4 = *(v0 + 232);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_21;
    }

    sub_1AAD04750(*(v0 + 208), *(v0 + 216), *(v0 + 224));
  }

  v5 = *(v0 + 280);
  if (v5 == 2 || v5 == 1)
  {
  }

  else if (!*(v0 + 280))
  {
    sub_1AACB634C(v0 + 240);
  }

LABEL_21:
  v6 = *(v0 + 336);
  if (v6 <= 0xFB)
  {
    sub_1AAF3A300(*(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), v6);
  }

  v7 = *(v0 + 392);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_27;
    }

    sub_1AAD04750(*(v0 + 368), *(v0 + 376), *(v0 + 384));
  }

  sub_1AAF3A35C(*(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472));
LABEL_27:
  v8 = *(v0 + 504);
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_31;
    }

    sub_1AAD04750(*(v0 + 480), *(v0 + 488), *(v0 + 496));
  }

  sub_1AAE0FD00(*(v0 + 512), *(v0 + 520), *(v0 + 528));
LABEL_31:
  v9 = *(v0 + 560);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_35;
    }

    sub_1AAD04750(*(v0 + 536), *(v0 + 544), *(v0 + 552));
  }

  sub_1AAD3D014(*(v0 + 568), *(v0 + 576), *(v0 + 584));
LABEL_35:
  v10 = *(v0 + 616);
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_39;
    }

    sub_1AAD04750(*(v0 + 592), *(v0 + 600), *(v0 + 608));
  }

  sub_1AAE0FE08(*(v0 + 624), *(v0 + 632), *(v0 + 640), *(v0 + 648), *(v0 + 656));
LABEL_39:
  v11 = *(v0 + 688);
  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_43;
    }

    sub_1AAD04750(*(v0 + 664), *(v0 + 672), *(v0 + 680));
  }

  sub_1AAE0FE08(*(v0 + 696), *(v0 + 704), *(v0 + 712), *(v0 + 720), *(v0 + 728));
LABEL_43:

  return MEMORY[0x1EEE6BDD0](v0, 729, 7);
}

uint64_t sub_1AAD3ACB0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for AnyConcreteScale() - 8);
  v28 = *(v3 + 80);
  v4 = (v28 + 48) & ~v28;
  v5 = *(v3 + 64);
  v6 = type metadata accessor for PlottableProjection();
  v26 = *(*(v6 - 8) + 80);
  v27 = *(*(v6 - 8) + 64);
  v7 = (v4 + v5 + v26) & ~v26;
  v8 = *(v1 - 8);
  v24 = *(v8 + 80);
  v25 = *(v8 + 64);
  v9 = v0 + v4;
  swift_getEnumCaseMultiPayload();

  v10 = type metadata accessor for ConcreteScale();
  v11 = v10[9];
  if (!(*(v8 + 48))(v0 + v4 + v11, 1, v1))
  {
    (*(v8 + 8))(v9 + v11, v1);
  }

  if (*(v9 + v10[10]))
  {
  }

  v12 = v9 + v10[12];
  v13 = *(v12 + 8);
  v14 = v7;
  if (v13 != 255)
  {
    sub_1AACE40AC(*v12, v13 & 1);
  }

  sub_1AAD04750(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16));

  v15 = v0 + v7 + *(v6 + 44);
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v17 = sub_1AAF8CB94();
          v18 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v17 - 8) + 8))(v15 + *(TupleTypeMetadata3 + 48), v17);
          (*(*(v18 - 8) + 8))(v15 + *(TupleTypeMetadata3 + 64), v18);
        }

        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(*(v2 - 8) + 8);
      v20(v15, v2);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v20(v15 + *(TupleTypeMetadata2 + 48), v2);
    }
  }

  else
  {
    (*(*(v2 - 8) + 8))(v15, v2);
  }

LABEL_19:
  v22 = (v14 + v27 + v24) & ~v24;
  (*(v8 + 8))(v0 + v22, v1);

  return MEMORY[0x1EEE6BDD0](v0, v22 + v25, v28 | v26 | v24 | 7);
}

uint64_t sub_1AAD3B130()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3B168(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA61DC(result, a2, a3, a4);

    return sub_1AAD3CEFC(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAD3B1C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AAF3A170(v3 + 16, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
}

uint64_t sub_1AAD3B224()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD3B25C()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for PlottableProjection() - 8);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = (v3 + 40) & ~v3;
  sub_1AAD04750(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  v6 = v0 + v5 + v2[13];
  type metadata accessor for PlottableProjection.Storage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          sub_1AAF90774();
          v8 = sub_1AAF8CB94();
          v9 = sub_1AAF8CBA4();
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          (*(*(v8 - 8) + 8))(v6 + *(TupleTypeMetadata3 + 48), v8);
          (*(*(v9 - 8) + 8))(v6 + *(TupleTypeMetadata3 + 64), v9);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(*(v1 - 8) + 8);
      v11(v6, v1);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v11(v6 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  else
  {
    (*(*(v1 - 8) + 8))(v6, v1);
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1AAD3B580()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3B6BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AAF8E244();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[11];
  }

  else
  {
    v10 = type metadata accessor for SgShapeStyle();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[14]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1AAD3B7D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1AAF8E244();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
  }

  else
  {
    result = type metadata accessor for SgShapeStyle();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[14]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[12];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1AAD3B8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1AAF8E244();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AAD3BA34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1AAF8E244();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AAD3BB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SgShapeStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD3BC2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SgShapeStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD3BCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8E244();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SgShapeStyle();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AAD3BDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AAF8E244();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for SgShapeStyle();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1AAD3BEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *(a1 + 40);
    if (v4 > 6)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SgShapeStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AAD3BF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = type metadata accessor for SgShapeStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AAD3C034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = type metadata accessor for SgShapeStyle();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = type metadata accessor for SgShapeStyle();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3C59C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AACDBA18(v3 + 184, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AAD3C610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AACDBA18(v3 + 128, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AAD3C684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1AACDBA18(v3 + 72, a2, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AAD3C6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1AAF8E244();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AAD3C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1AAF8E244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AAD3C82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1AAD1A2F8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AAD3C904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 72) = a2;
  }

  else
  {
    sub_1AAD1A2F8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD3C9E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3CA3C()
{
  if (*(v0 + 40))
  {
    sub_1AACB634C(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AAD3CA7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 98, 7);
}

__n128 sub_1AAD3CAFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1AAD3CB10()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD3CBC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD3CC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AAD3CCE4()
{
  swift_getWitnessTable();

  return sub_1AAF8FAE4();
}

uint64_t sub_1AAD3CD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t getEnumTagSinglePayload for VisibleAxisResults(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VisibleAxisResults(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1AAD3CEFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

double sub_1AAD3CF1C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

uint64_t sub_1AAD3CF48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void *sub_1AAD3CF64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1AAD3CF74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1AAD3CF90(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1AAD3D014(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AAD3D034(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(result, a2, a3, a4);

    return sub_1AAD3D014(a5, a6, a7);
  }

  return result;
}

void BuilderConditional<>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static BuilderConditional<>._makeChart3DContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34[1] = a6;
  v34[0] = a5;
  v36 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v39 = type metadata accessor for SetDependency(0) - 8;
  MEMORY[0x1EEE9AC00](v39);
  v38 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _Chart3DContentOutputs();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v35 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v19 = _s11Container3DVMa();
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v34 - v20);
  v22 = type metadata accessor for AddPreference(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v45 = v24;
  sub_1AAF8E394();
  v25 = a7;
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v26 = sub_1AAF8E4B4();
  v27 = *(v26 - 8);
  (*(v27 + 24))(v25, v24, v26);
  sub_1AAD3FE38(v24, type metadata accessor for AddPreference);
  type metadata accessor for BuilderConditional();
  LODWORD(v24) = sub_1AACBC3B4(v36);
  sub_1AAD3F894(a2, v18, type metadata accessor for _Chart3DContentInputs);
  v28 = v35;
  sub_1AAD3F894(v25, v35, type metadata accessor for _Chart3DContentOutputs);
  sub_1AAD3D5C4(v24, v18, v28, v21);
  v42 = type metadata accessor for BuilderConditional.Info();
  v43 = v19;
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1AAF8D1A4();
  sub_1AACBC418(v21, sub_1AAD3F8FC, v41, v19, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  LODWORD(a4) = v46;
  v31 = v38;
  (*(v27 + 16))(v38, v25, v26);
  v32 = v31 + *(v39 + 28);
  *v32 = a4;
  *(v32 + 4) = 0;
  v40 = v31;
  sub_1AAF8E484();
  (*(v37 + 8))(v21, v19);
  return sub_1AAD3FE38(v31, type metadata accessor for SetDependency);
}

id sub_1AAD3D5C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = _s11Container3DVMa();
  sub_1AAD40014(a2, a4 + v7[13], type metadata accessor for _Chart3DContentInputs);
  sub_1AAD40014(a3, a4 + v7[14], type metadata accessor for _Chart3DContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a4 + v7[15]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static BuilderConditional<>._chart3DContentCount(inputs:)(uint64_t a1)
{
  result = static Chart3DContent._chart3DContentCount(inputs:)(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    v5 = result != static Chart3DContent._chart3DContentCount(inputs:)(a1);
    if ((v6 | v5))
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_1AAD3D6FC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BuilderConditional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_1AAD3D788(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for BuilderConditional.Info();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v9;
  v54 = sub_1AAF8FE74();
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for BuilderConditional();
  v50 = *(v19 - 8);
  v51 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v43 - v20;
  v48 = v1;
  sub_1AAD3D6FC(&v43 - v20);
  OutputValue = AGGraphGetOutputValue();
  v52 = a1;
  if (OutputValue)
  {
    (*(v4 + 16))(v18, OutputValue, v3);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v4 + 56))(v18, v22, 1, v3);
  v23 = *(v10 + 16);
  v56 = v18;
  v24 = v54;
  v23(v15, v18, v54);
  v25 = v10;
  v26 = *(v4 + 48);
  v27 = v26(v15, 1, v3);
  v53 = v25;
  if (v27 == 1)
  {
    (*(v25 + 8))(v15, v24);
  }

  else
  {
    v28 = sub_1AAE21158(v55);
    v44 = *(v4 + 8);
    v45 = v4 + 8;
    v44(v15, v3);
    if (v28)
    {
      result = AGGraphGetOutputValue();
      if (result)
      {
        v30 = v46;
        (*(v4 + 16))(v46, result, v3);
        v32 = v50;
        v31 = v51;
        v33 = v55;
        v34 = (*(v50 + 24))(v30, v55, v51);
        MEMORY[0x1EEE9AC00](v34);
        *(&v43 - 2) = v52;
        *(&v43 - 1) = swift_getWitnessTable();
        sub_1AACBC418(v30, sub_1AAD401E0, (&v43 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v35);
        (*(v53 + 8))(v56, v24);
        (*(v32 + 8))(v33, v31);
        return (v44)(v30, v3);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v23(v12, v56, v24);
  if (v26(v12, 1, v3) == 1)
  {
    v36 = v53;
    (*(v53 + 8))(v12, v24);
    v37 = v52;
  }

  else
  {
    v38 = v47;
    (*(v4 + 32))(v47, v12, v3);
    v37 = v52;
    sub_1AAD3DE04(v38, v52);
    (*(v4 + 8))(v38, v3);
    v36 = v53;
  }

  v39 = v49;
  v40 = v55;
  v41 = sub_1AAD3DF1C(v55, v37, v49);
  MEMORY[0x1EEE9AC00](v41);
  *(&v43 - 2) = v37;
  *(&v43 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v39, sub_1AAD3FCA4, (&v43 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v42);
  (*(v4 + 8))(v39, v3);
  (*(v36 + 8))(v56, v24);
  return (*(v50 + 8))(v40, v51);
}

uint64_t sub_1AAD3DE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetPreference(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 56);
  v8 = sub_1AAF8E4B4();
  (*(*(v8 - 8) + 16))(v6, v2 + v7, v8);
  v11 = v6;
  sub_1AAF8E484();
  sub_1AAD3FE38(v6, type metadata accessor for ResetPreference);
  type metadata accessor for BuilderConditional.Info();
  return AGSubgraphInvalidate();
}

uint64_t sub_1AAD3DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _Chart3DContentOutputs();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = AGSubgraphGetGraph();
    v16 = AGSubgraphCreate();

    AGSubgraphAddChild();
    sub_1AAD3F894(v3 + *(a2 + 52), v12, type metadata accessor for _Chart3DContentInputs);
    sub_1AAD3F894(v3 + *(a2 + 56), v9, type metadata accessor for _Chart3DContentOutputs);
    AGGraphClearUpdate();
    v17 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_1AAD3E128(a1, v14, v12, v9, v16, *(a2 + 16), *(a2 + 24), *(a2 + 32), a3, *(a2 + 40));
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    sub_1AAD3FE38(v9, type metadata accessor for _Chart3DContentOutputs);
    return sub_1AAD3FE38(v12, type metadata accessor for _Chart3DContentInputs);
  }

  return result;
}

id sub_1AAD3E128@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v82 = a8;
  v96 = a9;
  v97 = a5;
  v92 = a4;
  v88 = a3;
  LODWORD(v84) = a2;
  v80 = a10;
  v101 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for BuilderConditional();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v74 - v14;
  v89 = type metadata accessor for SetSource(0);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AAF8D954();
  v83 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v74 - v17;
  v77 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1AAF8D954();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v74 - v22;
  v23 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BuilderConditional.Storage();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v74 - v29;
  v31 = type metadata accessor for _Chart3DContentOutputs();
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v86 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v28 + 16);
  v95 = a1;
  v34(v30, a1, v27, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v77;
    v36 = *(v77 + 32);
    v74 = v20;
    v36(v20, v30, a7);
    v37 = nullsub_1(v84, a6);
    LODWORD(v98) = v37;
    MEMORY[0x1EEE9AC00](v37);
    *(&v74 - 4) = a7;
    v38 = type metadata accessor for BuilderConditional.FalseChild();
    *(&v74 - 3) = v38;
    *(&v74 - 2) = swift_getWitnessTable();
    v39 = sub_1AAF8D1A4();
    v40 = MEMORY[0x1E69E73E0];
    v42 = sub_1AACBC418(&v98, sub_1AAD401F8, (&v74 - 6), v38, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v41);
    v43 = v80;
    v84 = v16;
    v44 = v100;
    MEMORY[0x1EEE9AC00](v42);
    *(&v74 - 2) = a7;
    *(&v74 - 2) = v44;
    sub_1AACBC418(v20, sub_1AAD3FCF8, (&v74 - 4), a7, v40, MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v45);
    v46 = *(v85 + 24);
    v47 = v88;
    v48 = *(v88 + v46);
    v98 = 0;
    v99 = v48;
    sub_1AACBC63C();
    sub_1AAF8DC74();
    sub_1AAD3FD34(0, &qword_1EB422E70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
    sub_1AAD3FD88();
    *(v47 + v46) = sub_1AAF8D194();
    v49 = v81;
    sub_1AACBC644(v44, v81);
    v50 = v87;
    sub_1AAD3F894(v47, v87, type metadata accessor for _Chart3DContentInputs);
    v51 = v86;
    (*(v43 + 32))(v49, v50, a7, v43);
    sub_1AAD3FE38(v50, type metadata accessor for _Chart3DContentInputs);
    (*(v83 + 8))(v49, v84);
    (*(v35 + 8))(v74, a7);
  }

  else
  {
    v75 = v23;
    (*(v23 + 32))(v26, v30, a6);
    v52 = nullsub_1(v84, a6);
    LODWORD(v98) = v52;
    MEMORY[0x1EEE9AC00](v52);
    *(&v74 - 4) = a6;
    v53 = type metadata accessor for BuilderConditional.TrueChild();
    *(&v74 - 3) = v53;
    *(&v74 - 2) = swift_getWitnessTable();
    v54 = sub_1AAF8D1A4();
    v55 = MEMORY[0x1E69E73E0];
    v56 = MEMORY[0x1E69E7410];
    v58 = sub_1AACBC418(&v98, sub_1AAD401F8, (&v74 - 6), v53, MEMORY[0x1E69E73E0], v54, MEMORY[0x1E69E7410], v57);
    v59 = v100;
    MEMORY[0x1EEE9AC00](v58);
    *(&v74 - 2) = a6;
    *(&v74 - 2) = v59;
    sub_1AACBC418(v26, sub_1AAD40218, (&v74 - 4), a6, v55, MEMORY[0x1E69E6370], v56, v60);
    v61 = *(v85 + 24);
    v62 = v82;
    v63 = v88;
    v64 = *(v88 + v61);
    v98 = 1;
    v99 = v64;
    sub_1AACBC63C();
    sub_1AAF8DC74();
    sub_1AAD3FD34(0, &qword_1EB422E70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
    sub_1AAD3FD88();
    *(v63 + v61) = sub_1AAF8D194();
    v65 = v76;
    sub_1AACBC644(v59, v76);
    v66 = v87;
    sub_1AAD3F894(v63, v87, type metadata accessor for _Chart3DContentInputs);
    v51 = v86;
    (*(v62 + 32))(v65, v66, a6, v62);
    sub_1AAD3FE38(v66, type metadata accessor for _Chart3DContentInputs);
    (*(v78 + 8))(v65, v79);
    (*(v75 + 8))(v26, a6);
  }

  v67 = sub_1AAF8E4B4();
  v68 = *(*(v67 - 8) + 16);
  v69 = v90;
  v68(v90, v92, v67);
  v70 = (v68)(v69 + *(v89 + 20), v51, v67);
  MEMORY[0x1EEE9AC00](v70);
  *(&v74 - 2) = v69;
  sub_1AAF8E484();
  sub_1AAD3FE38(v51, type metadata accessor for _Chart3DContentOutputs);
  sub_1AAD3FE38(v69, type metadata accessor for SetSource);
  v71 = v91;
  (*(v93 + 16))(v91, v95, v94);
  sub_1AAE213B8(v71, v97, v96);
  v72 = v97;

  return v72;
}

uint64_t sub_1AAD3EC90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BuilderConditional.Info();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void Optional<A>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static Optional<A>._makeChart3DContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for BuilderConditional();
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v19 - v13);
  sub_1AAF8FE74();
  v20 = sub_1AACBC3B4(a1);
  v22 = v10;
  v15 = _s5ChildVMa();
  v23 = v15;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1AAF8D1A4();
  sub_1AACBC418(&v20, sub_1AACBC584, v21, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  sub_1AACBC644(v19[2], v14);
  static BuilderConditional<>._makeChart3DContent(content:inputs:)(v14, a2, a3, &type metadata for BuilderEmpty, a4, &protocol witness table for BuilderEmpty, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AAD3EFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8FE74();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_1AAD3F03C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for BuilderConditional.Storage();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1AAF8FE74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3EFB4(v9);
  if ((*(v10 + 48))(v9, 1, a1) == 1)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v13, v9, a1);
    v14(v5, v13, a1);
  }

  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)(v5, v17);
}

uint64_t sub_1AAD3F27C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BuilderConditional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AAD3F440(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1AC599340](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1AAD3F494(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF90734();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1AAD3F4EC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1AAF90744();
  *a1 = result;
  return result;
}

uint64_t sub_1AAD3F514()
{
  sub_1AAD3FC28(&qword_1EB422E80);
  sub_1AAD3FC28(&qword_1EB422E88);
  return sub_1AAF903F4();
}

uint64_t sub_1AAD3F638@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphSetValue();
  *a1 = result;
  return result;
}

uint64_t sub_1AAD3F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v12);
  sub_1AAF8D1E4();
  (*(v9 + 8))(v12, a5);
  v21 = a5;
  v22 = a6;
  sub_1AACBE580(v16, sub_1AACBE65C, v20, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  return (*(v14 + 8))(v16, a4);
}

uint64_t sub_1AAD3F894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ChartAccessibilityContent.GroupItem.ResolvedGeometry(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_1AAD3F9BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AxisLabelPosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AAD3FA04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD3FA24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 sub_1AAD3FA64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1AAD3FA84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AAD3FAC0()
{
  type metadata accessor for BuilderConditional();
  sub_1AAF8D1A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _Chart3DContentInputs();
    if (v1 <= 0x3F)
    {
      type metadata accessor for _Chart3DContentOutputs();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AAD3FC28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD3FCF8@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphSetValue();
  *a1 = result;
  return result;
}

void sub_1AAD3FD34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AAD3FD88()
{
  result = qword_1EB422E78;
  if (!qword_1EB422E78)
  {
    sub_1AAD3FD34(255, &qword_1EB422E70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB422E78);
  }

  return result;
}

uint64_t sub_1AAD3FE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAD3FE98@<X0>(_DWORD *a1@<X8>)
{
  sub_1AACBC63C();
  result = sub_1AAF8D194();
  *a1 = result;
  return result;
}

uint64_t (*sub_1AAD3FF24())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1AAD3FF80;
}

uint64_t (*sub_1AAD3FF8C())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_1AAD3FFE8;
}

uint64_t sub_1AAD40014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAD40090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1AAD400D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1AAD4014C(uint64_t a1)
{
  type metadata accessor for CGPath(255);
  *(a1 + 16) = v2;
  return 0;
}

void sub_1AAD40194(uint64_t a1, unint64_t *a2)
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

void BuilderTuple<each A>.body.getter()
{
  sub_1AAF902C4();
  __break(1u);
}

{
  sub_1AAF902C4();
  __break(1u);
}

uint64_t static BuilderTuple<each A>._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a2;
  v75 = a1;
  v72 = a6;
  v9 = type metadata accessor for _Chart3DContentOutputs();
  v66 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8E4B4();
  v79 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultiPreferenceCombinerVisitor();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _Chart3DContentInputs();
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderTuple();
  v73 = sub_1AAF8D954();
  v19 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v21 = &v64 - v20;
  v76 = a5;
  ListVMa = _s8MakeListVMa();
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](ListVMa);
  v81 = &v64 - v24;
  v70 = v14;
  v71 = v16;
  v68 = v25;
  v69 = v17;
  v65 = v13;
  v67 = v11;
  if (a3 == 1)
  {
    v26 = v77;
  }

  else
  {
    v64 = &v64;
    MEMORY[0x1EEE9AC00](v22);
    v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v77;
    if (a3)
    {
      v29 = 0;
      v30 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v28[-v30] < 0x20)
      {
        goto LABEL_9;
      }

      v29 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = (v30 + 16);
      v32 = v28 + 16;
      v33 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v34 = *v31;
        *(v32 - 1) = *(v31 - 1);
        *v32 = v34;
        v31 += 2;
        v32 += 2;
        v33 -= 4;
      }

      while (v33);
      if (v29 != a3)
      {
LABEL_9:
        v35 = a3 - v29;
        v36 = 8 * v29;
        v37 = &v28[8 * v29];
        v38 = (v30 + v36);
        do
        {
          v39 = *v38++;
          *v37 = v39;
          v37 += 8;
          --v35;
        }

        while (v35);
      }
    }

    swift_getTupleTypeMetadata();
  }

  (*(v19 + 16))(v21, v75, v73, v23);
  v40 = v74;
  sub_1AAD3F894(v26, v74, type metadata accessor for _Chart3DContentInputs);
  v41 = v76;
  sub_1AAD409D0(v21, v40, 0, MEMORY[0x1E69E7CC0], v81);
  if (a3)
  {
    v42 = 0;
    v43 = *(ListVMa + 48);
    while (1)
    {
      v44 = *((a4 & 0xFFFFFFFFFFFFFFFELL) + 8 * v42);
      v45 = *((v41 & 0xFFFFFFFFFFFFFFFELL) + 8 * v42);
      v46 = AGTupleElementOffset();
      v47 = ListVMa;
      *(v81 + v43) = v46;
      result = sub_1AAD40AC0(v44, v47, v44, v45);
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (a3 == ++v42)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v49 = *(v81 + *(ListVMa + 52));
    v50 = *(v49 + 16);
    v51 = MEMORY[0x1E69E7CC0];
    if (v50)
    {
      v82 = MEMORY[0x1E69E7CC0];
      sub_1AAD40F4C(0, v50, 0);
      v51 = v82;
      v52 = v67;
      v53 = v49 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v54 = *(v66 + 72);
      v55 = (v79 + 32);
      v56 = v65;
      do
      {
        v57 = v78;
        sub_1AAD3F894(v53, v78, type metadata accessor for _Chart3DContentOutputs);
        v58 = *v55;
        (*v55)(v56, v57, v52);
        v82 = v51;
        v60 = *(v51 + 16);
        v59 = *(v51 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1AAD40F4C(v59 > 1, v60 + 1, 1);
          v51 = v82;
        }

        *(v51 + 16) = v60 + 1;
        v58((v51 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v60), v56, v52);
        v53 += v54;
        --v50;
      }

      while (v50);
    }

    else
    {
      v52 = v67;
    }

    v61 = v71;
    v62 = *(v70 + 20);
    Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0 = _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
    *v61 = v51;
    MEMORY[0x1EEE9AC00](Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0);
    *(&v64 - 2) = v61;
    sub_1AAF8E394();
    (*(v68 + 8))(v81, ListVMa);
    (*(v79 + 16))(v72, &v61[v62], v52);
    return sub_1AACEE924(v61, type metadata accessor for MultiPreferenceCombinerVisitor);
  }

  return result;
}

uint64_t sub_1AAD409D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for BuilderTuple();
  v10 = sub_1AAF8D954();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  ListVMa = _s8MakeListVMa();
  result = sub_1AAD468B8(a2, a5 + ListVMa[11], type metadata accessor for _Chart3DContentInputs);
  *(a5 + ListVMa[12]) = a3;
  *(a5 + ListVMa[13]) = a4;
  return result;
}

uint64_t sub_1AAD40AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v31 = sub_1AAF8D954();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v27 - v7;
  v9 = type metadata accessor for _Chart3DContentOutputs();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - v12;
  v13 = type metadata accessor for _Chart3DContentInputs();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3F894(v4 + *(a2 + 44), v16, type metadata accessor for _Chart3DContentInputs);
  v32 = *(a2 + 52);
  v17 = *(v4 + v32);
  v18 = *(v14 + 32);
  v19 = *&v16[v18];
  v34 = v17[2];
  v35 = v19;
  sub_1AACBC63C();
  sub_1AAF8DC74();
  sub_1AAD46864(0, &qword_1EB422E70, MEMORY[0x1E69E6540], type metadata accessor for ContainerWith3DChildID);
  sub_1AAD3FD88();
  *&v16[v18] = sub_1AAF8D194();
  type metadata accessor for BuilderTuple();
  sub_1AACBC3B4(v4);
  v20 = v27;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  sub_1AACBC644(OffsetAttribute2, v8);
  v22 = a3;
  v23 = v28;
  (*(v30 + 32))(v8, v16, v22);
  (*(v29 + 8))(v8, v31);
  sub_1AAD3F894(v23, v20, type metadata accessor for _Chart3DContentOutputs);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AAD674BC(0, v17[2] + 1, 1, v17);
  }

  v25 = v17[2];
  v24 = v17[3];
  if (v25 >= v24 >> 1)
  {
    v17 = sub_1AAD674BC(v24 > 1, v25 + 1, 1, v17);
  }

  sub_1AACEE924(v23, type metadata accessor for _Chart3DContentOutputs);
  sub_1AACEE924(v16, type metadata accessor for _Chart3DContentInputs);
  v17[2] = v25 + 1;
  result = sub_1AAD468B8(v20, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, type metadata accessor for _Chart3DContentOutputs);
  *(v4 + v32) = v17;
  return result;
}

size_t sub_1AAD40F4C(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AD6B8, MEMORY[0x1E697FC08], MEMORY[0x1E697FC08]);
  *v3 = result;
  return result;
}

void sub_1AAD40FA4()
{
  type metadata accessor for BuilderTuple();
  sub_1AAF8D954();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _Chart3DContentInputs();
    if (v1 <= 0x3F)
    {
      sub_1AAD45848(319, &qword_1EB422FA0, type metadata accessor for _Chart3DContentOutputs, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_1AAD410B0(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD41D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD410D0(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD41E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD410F0(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD431D8(a1, a2, a3, *v3, &qword_1EB422FC0, &qword_1EB424650);
  *v3 = result;
  return result;
}

void *sub_1AAD41128(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD41FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41148(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41168(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41188(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42338(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD411A8(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD411C8(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD425A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD411E8(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD426CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41208(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD46288, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
  *v3 = result;
  return result;
}

void *sub_1AAD4124C(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD4620C, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
  *v3 = result;
  return result;
}

void *sub_1AAD41290(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD427F0(a1, a2, a3, *v3, &qword_1EB423068, sub_1AAD464E8, sub_1AAD464E8);
  *v3 = result;
  return result;
}

char *sub_1AAD412E0(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41300(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD427F0(a1, a2, a3, *v3, &qword_1EB423050, sub_1AAD463D8, sub_1AAD463D8);
  *v3 = result;
  return result;
}

char *sub_1AAD41350(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41370(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42EA8(a1, a2, a3, *v3, &qword_1EB423048, type metadata accessor for CGPoint);
  *v3 = result;
  return result;
}

void *sub_1AAD413AC(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD42C50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD413CC(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD413EC(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD4140C(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42EA8(a1, a2, a3, *v3, &qword_1ED9AD688, type metadata accessor for CGSize);
  *v3 = result;
  return result;
}

char *sub_1AAD41448(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD42FBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41468(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD430E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41488(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD431D8(a1, a2, a3, *v3, &qword_1ED9AEE70, &qword_1ED9AEE60);
  *v3 = result;
  return result;
}

void *sub_1AAD414C0(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD4332C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD414E0(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD4346C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41500(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD435B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41520(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD45F80, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField);
  *v3 = result;
  return result;
}

char *sub_1AAD41564(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD43860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41584(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD4399C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD415A4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD43AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD415C4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44E50(a1, a2, a3, *v3, &qword_1ED9B09D8, &type metadata for CurvePointLine);
  *v3 = result;
  return result;
}

char *sub_1AAD415F4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD43D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41614(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD04BF0(a1, a2, a3, *v3, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item);
  *v3 = result;
  return result;
}

char *sub_1AAD41644(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD43E44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41664(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD43F7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD41684(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD440C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD416A4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44D1C(a1, a2, a3, *v3, &qword_1EB423090, &type metadata for ChartDisplayList.Style);
  *v3 = result;
  return result;
}

char *sub_1AAD416D4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD416F4(char *a1, int64_t a2, char a3)
{
  result = sub_1AACFE930(a1, a2, a3, *v3, &qword_1EB4230B8, &type metadata for ChartDisplayList.AreaItem.Point);
  *v3 = result;
  return result;
}

size_t sub_1AAD41724(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB4230C8, type metadata accessor for ChartDisplayList.ClipRect, type metadata accessor for ChartDisplayList.ClipRect);
  *v3 = result;
  return result;
}

char *sub_1AAD41774(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD444C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41794(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD445FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD417B4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD4473C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1AAD417D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB4230D8, type metadata accessor for ChartDisplayList.RectangleItem, type metadata accessor for ChartDisplayList.RectangleItem);
  *v3 = result;
  return result;
}

size_t sub_1AAD41824(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB4230D0, type metadata accessor for ChartDisplayList.BarItem, type metadata accessor for ChartDisplayList.BarItem);
  *v3 = result;
  return result;
}

char *sub_1AAD41874(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD4487C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41894(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD449B0(a1, a2, a3, *v3, &qword_1EB4230B0, &type metadata for ChartDisplayList.LineItem);
  *v3 = result;
  return result;
}

char *sub_1AAD418C4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD449B0(a1, a2, a3, *v3, &qword_1EB4230A0, &type metadata for ChartDisplayList.RuleItem);
  *v3 = result;
  return result;
}

char *sub_1AAD418F4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD449B0(a1, a2, a3, *v3, &qword_1EB423098, &type metadata for ChartDisplayList.ShapeItem);
  *v3 = result;
  return result;
}

char *sub_1AAD41924(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44AEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41944(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44C10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41964(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44E50(a1, a2, a3, *v3, &qword_1ED9AD758, &type metadata for SgSymbolSize);
  *v3 = result;
  return result;
}

char *sub_1AAD41994(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD419B4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD450A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AAD419D4(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD45B54, &qword_1ED9AD908, &type metadata for SgLine.Points.Element);
  *v3 = result;
  return result;
}

char *sub_1AAD41A18(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD4522C(a1, a2, a3, *v3, &unk_1ED9AEE88, &type metadata for SgArea.Points.Element, MEMORY[0x1E69E6F90], sub_1AAD469FC);
  *v3 = result;
  return result;
}

char *sub_1AAD41A70(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD4522C(a1, a2, a3, *v3, &unk_1EB422FF8, sub_1AAD45BD0, MEMORY[0x1E69E6F90], sub_1AAD45848);
  *v3 = result;
  return result;
}

size_t sub_1AAD41AD4(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB423010, type metadata accessor for SgPath, type metadata accessor for SgPath);
  *v3 = result;
  return result;
}

size_t sub_1AAD41B24(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB423008, type metadata accessor for SgArea, type metadata accessor for SgArea);
  *v3 = result;
  return result;
}

size_t sub_1AAD41B74(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AD6D8, type metadata accessor for SgLine, type metadata accessor for SgLine);
  *v3 = result;
  return result;
}

size_t sub_1AAD41BC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AD6C8, type metadata accessor for SgPoint, type metadata accessor for SgPoint);
  *v3 = result;
  return result;
}

size_t sub_1AAD41C14(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB422FE0, type metadata accessor for SgSector, type metadata accessor for SgSector);
  *v3 = result;
  return result;
}

size_t sub_1AAD41C64(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, type metadata accessor for AnyVectorizedRenderer);
  *v3 = result;
  return result;
}

size_t sub_1AAD41CB4(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AEEC8, type metadata accessor for SgRectangle, type metadata accessor for SgRectangle);
  *v3 = result;
  return result;
}

char *sub_1AAD41D04(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD4534C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41D24(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD46570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD41D44(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB422FA8, &type metadata for ChartContentID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD41E68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB422FC8, &type metadata for TickViewModel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD41FA4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD420D8();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AACC9AC0(0, &qword_1EB422FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AAD420D8()
{
  if (!qword_1EB422FB0)
  {
    sub_1AACC9AC0(255, &qword_1EB422FB8);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB422FB0);
    }
  }
}

char *sub_1AAD42148(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD466A4();
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AAD42240(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD46720();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1AAD42338(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB423040, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD42470(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AD6C0, MEMORY[0x1E697DD48], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD425A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B11A0, &type metadata for AnyPrimitivePlottableArray, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AAD426CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AAD427F0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1AAD45848(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1AAD42938(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD46460();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1AAD42A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45D28();
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AAD42B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45848(0, &qword_1ED9B1180, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1AAD42C50(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD46304();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD469FC(0, &qword_1ED9B10D8, &type metadata for DomainOverride, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD42D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD46380(0, &qword_1ED9AD698, &qword_1ED9AD8A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AAD42EA8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD45848(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1AAD42FBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1EB423110, &type metadata for DefaultChartLegend.ColorRampView.Tick, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD430E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45DB0();
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AAD431D8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1AAD0D328(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD45E1C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1AAD4332C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD45E78();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD469FC(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD4346C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD45848(0, &qword_1ED9B0C08, sub_1AAD45EF4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD45EF4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD435B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD436F8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD45848(0, &qword_1ED9B0BF8, sub_1AAD45FFC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[38 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 304 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD45FFC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD43860(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AEEA0, &type metadata for LegendRenderingContext.Category, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD4399C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AEEA8, &type metadata for LegendRenderingContext.Section, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD43AC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AD760, &type metadata for VersionSeed, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}