uint64_t sub_29DE77190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2BCBB4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29DE77280()
{
  if (sub_29E2BBD4C(2, 26, 0, 0))
  {
    sub_29E2C1E94();

    return sub_29E2C1744();
  }

  else
  {
    sub_29E2C17A4();
    swift_getWitnessTable();
    sub_29E2C1D84();
    sub_29E2C1744();
    sub_29E2C4304();
    swift_getWitnessTable();
    sub_29E2C17A4();
    swift_getWitnessTable();
    sub_29E2C1D84();
    return sub_29E2C1744();
  }
}

uint64_t sub_29DE773E4()
{
  if (sub_29E2BBD4C(2, 26, 0, 0))
  {
    sub_29E2C1E94();
    sub_29E2C1744();
  }

  else
  {
    sub_29E2C17A4();
    swift_getWitnessTable();
    sub_29E2C1D84();
    sub_29E2C1744();
    sub_29E2C4304();
    swift_getWitnessTable();
    sub_29E2C17A4();
    swift_getWitnessTable();
    sub_29E2C1D84();
    sub_29E2C1744();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_29DE77608@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_29DE77634@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_29DE77684(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_29DE77724@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_29DE77750@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_29DE77834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_29DE77874(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_29DE77874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t getEnumTagSinglePayload for CycleDateFooterRow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CycleDateFooterRow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_29DE778F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29DE77914(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_29DE77988()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE779C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29DE77A78()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE77AB0()
{
  v1 = sub_29E2BCFB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DE77B98()
{

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29DE77BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DE9DED0(0, &qword_2A1A5E380, &unk_2A1A5E190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_29DE9DED0(0, &qword_2A1A5E378, &qword_2A1A5E100);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29DE77CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DE9DED0(0, &qword_2A1A5E380, &unk_2A1A5E190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_29DE9DED0(0, &qword_2A1A5E378, &qword_2A1A5E100);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_29DE77E24(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BC6A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE77ED0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BC6A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE77FB4()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE77FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2BEFA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29DE7811C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2BEFA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE78250()
{
  v1 = (type metadata accessor for PastPregnancyStartDatePickerRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_29E2BEFA4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE7840C()
{
  sub_29DEB3B00(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29E2BCBB4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE78518()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE785A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEB6AAC();
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
    v12 = sub_29E2BCBB4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29DE7869C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEB6AAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_29E2BCBB4();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_29DE7879C()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29DE788E4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7891C()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29DE789CC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE78A04()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

id sub_29DE78A3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 intermenstrualBleeding];
  *a2 = result;
  return result;
}

id sub_29DE78A70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pregnancyTestResult];
  *a2 = result;
  return result;
}

id sub_29DE78AA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progesteroneTestResult];
  *a2 = result;
  return result;
}

id sub_29DE78AD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ovulationTestResult];
  *a2 = result;
  return result;
}

id sub_29DE78B0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cervicalMucusQuality];
  *a2 = result;
  return result;
}

id sub_29DE78B40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sexualActivity];
  *a2 = result;
  return result;
}

uint64_t sub_29DE78BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BF344();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE78C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BF344();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE78F44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DFDF190();
  *a1 = result;
  return result;
}

uint64_t sub_29DE78FC8(uint64_t a1)
{
  sub_29DED6BF0(0, &qword_2A1818248, sub_29DED502C, sub_29DED5638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE790A4@<X0>(void *a1@<X8>)
{
  result = sub_29E2C1924();
  *a1 = v3;
  return result;
}

uint64_t sub_29DE79158()
{
  sub_29DED8D58();
  sub_29DED8BBC();
  sub_29DED99BC(255, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
  sub_29DED8A70();
  sub_29E2C0D54();
  sub_29DED879C();
  sub_29DED97E8(255, &qword_2A1818400, sub_29DED8534, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  sub_29DED97E8(255, &qword_2A1818440, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
  sub_29DED88B0();
  sub_29DED89E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29DED8F68();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE79378()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE793C0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE793F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE79440()
{
  v25 = type metadata accessor for CycleChartPDFModel(0);
  v23 = *(*(v25 - 8) + 80);
  v21 = *(*(v25 - 8) + 64);

  v22 = (v23 + 24) & ~v23;
  v1 = v0 + v22;
  v2 = sub_29E2BEF04();
  (*(*(v2 - 8) + 8))(v0 + v22, v2);
  v3 = v0 + v22 + *(v25 + 20);

  v4 = type metadata accessor for CycleChartCycle(0);
  v5 = v4[6];
  v6 = sub_29E2C31A4();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v7(v3 + v4[7], v6);
  v8 = v4[8];
  v9 = sub_29E2BCEA4();
  v10 = *(*(v9 - 8) + 8);
  v11 = v3 + v8;
  v12 = v25;
  v10(v11, v9);
  v10(v3 + v4[9], v9);

  v13 = v1 + *(v25 + 28);
  v14 = type metadata accessor for CycleChartPDFPregnancyFactor();
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v20 = v10;
    v15 = sub_29E2BCBB4();
    v16 = *(v15 - 8);
    v17 = *(v16 + 8);
    v17(v13, v15);

    v18 = *(v14 + 24);
    if (!(*(v16 + 48))(v13 + v18, 1, v15))
    {
      v17(v13 + v18, v15);
    }

    v12 = v25;
    v10 = v20;
  }

  v10(v1 + *(v12 + 32), v9);
  v7(v1 + *(v12 + 36), v6);

  return MEMORY[0x2A1C733A0](v24, v22 + v21, v23 | 7);
}

uint64_t sub_29DE79788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEE2020(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_29DEE2020(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29DE798D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEE2020(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_29DEE2020(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_29DE79A44()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE79A7C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

id sub_29DE79AFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 days];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29DE79B70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE79BA8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE79BF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE79C58()
{

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29DE79CA8()
{

  return MEMORY[0x2A1C733A0](v0, 144, 7);
}

uint64_t sub_29DE79D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PregnancyAnalyticModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE79E3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PregnancyAnalyticModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE79EE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E2BCBB4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_29DEF86C4(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_29DE7A01C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29E2BCBB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_29DEF86C4(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_29DE7A154()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7A18C()
{

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29DE7A1D4()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7A214()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7A254()
{

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29DE7A2A8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29E2BCBB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE7A544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7A5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 28);

    return v8(v9, a2, v7);
  }
}

void *sub_29DE7A694(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7A744()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

void sub_29DE7A79C(void *a1@<X0>, double *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_29DE966D4(a1, v4);
  *a2 = (*(*(v3 + 8) + 48))(v4);
}

uint64_t sub_29DE7A7F4(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  sub_29DEF61C0(a2, v3);
  return (*(*(v4 + 8) + 56))(v3, v2);
}

uint64_t sub_29DE7A850()
{

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29DE7A8B0()
{

  return MEMORY[0x2A1C733A0](v0, 144, 7);
}

uint64_t sub_29DE7A910()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7A948()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29DEB3B00(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29DE7AB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BCBB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_29DEB3B00(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29DE7AC44()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7AC7C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7ACB4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7ACEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E2BD624();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29E2BD594();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_29E2BCEA4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_29DE7AE60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29E2BD624();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_29E2BD594();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_29E2BCEA4();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_29DE7AFD4()
{
  v1 = (type metadata accessor for CycleDeviationsUpdateTileGeneratorPipeline() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29E2BD624();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_29E2BD594();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = v1[12];
  v10 = sub_29E2BCEA4();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29DE7B16C()
{

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29DE7B1A4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7B1DC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7B26C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7B2A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7B2EC()
{
  sub_29DF31C30();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2A1C733A0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_29DE7B3B0()
{
  sub_29DF31BCC(0, &qword_2A18190D8, type metadata accessor for HistoryListHeaderView, MEMORY[0x29EDC7888]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DE7B468()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7B4B4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7B4EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7B52C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7B570()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE7B5C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BEFA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE7B66C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BEFA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7B714()
{
  sub_29DF3F5BC(255, &qword_2A1818370, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
  sub_29E2C1744();
  sub_29DF3F200();
  sub_29DF3F260();
  swift_getWitnessTable();
  sub_29DF3F2DC();
  sub_29E2BE9B4();
  sub_29E2C1744();
  sub_29E2C1744();
  swift_getTupleTypeMetadata2();
  sub_29E2C2B14();
  swift_getWitnessTable();
  sub_29E2C2884();
  return swift_getWitnessTable();
}

uint64_t sub_29DE7B8D0()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7B908()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7B940()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7B988()
{

  sub_29DE93B3C(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 104, 7);
}

uint64_t sub_29DE7B9E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7BA64()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7BA9C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7BADC()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7BB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DF5F094(0, &qword_2A1819460, MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2C02D4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29DE7BC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DF5F094(0, &qword_2A1819460, MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2C02D4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE7BD50@<X0>(void *a1@<X8>)
{
  result = sub_29E2C1864();
  *a1 = v3;
  return result;
}

uint64_t sub_29DE7BDA4(uint64_t a1)
{
  sub_29DF5EBF4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE7BE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E2BEFA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29DE7BF24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2BEFA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE7C058()
{
  v1 = (type metadata accessor for EstimatedDueDatePickerRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_29E2BEFA4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE7C1A8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7C1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29DE7C2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration.AnalyticsContext(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE7C3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C30A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE7C450(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C30A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE7C504()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7C53C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7C6A0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7C6D8()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7C710()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29DE7C748()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7C784()
{
  v1 = (type metadata accessor for CycleDay() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29E2C31A4();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29DE7C880()
{
  v1 = (type metadata accessor for CycleDay() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_29E2C31A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE7C970()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7CA14()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DE7CA9C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7CAD4()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29DE7CB78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BD594();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE7CC24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BD594();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7CCD8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29E2BD624();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29DE7CE18()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE7CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29E2BEFA4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_29DE7CFD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E2BEFA4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29DE7D11C()
{
  v1 = (type metadata accessor for LastMenstrualPeriodDatePickerRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_29E2BEFA4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE7D284()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7D2BC()
{
  sub_29DE93B3C(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29DE7D304()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29DE7D434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }
}

uint64_t sub_29DE7D630(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BD624();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE7D6DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BD624();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7D780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BFC94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_29DE7D848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BFC94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_29DE7D94C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7D984()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7D9DC()
{
  sub_29DFA8D28();
  sub_29DFA8D88();
  sub_29DFA8E3C();
  sub_29DFA8EDC(&qword_2A1819EB0, sub_29DFA8E3C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_29E2C1644();
  sub_29DFA8F24();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE7DB7C()
{

  return MEMORY[0x2A1C733A0](v0, 65, 7);
}

uint64_t sub_29DE7DC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BD704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29DE7DD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BD704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_29DE7DDE8()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7DE20()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7DE5C()
{
  sub_29DEE975C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2A1C733A0](v0, v6 + 8, v4 | 7);
}

uint64_t sub_29DE7DF3C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7DF74()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7DFC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7E004()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7E03C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE7E088()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7E0C0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7E0F8()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7E130()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7E17C()
{
  v1 = sub_29E2BDB04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29DE7E224()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE7E264()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7E29C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7E2EC()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7E33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DFCAFF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29DE7E3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DFCAFF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }
}

uint64_t sub_29DE7E4F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BCBB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE7E5A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7E648(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BCBB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE7E6F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7E7E0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BCBB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE7E88C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE7E940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CycleHistorySingleCycleModel(0);
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

uint64_t sub_29DE7E9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CycleHistorySingleCycleModel(0);
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

uint64_t sub_29DE7EAB4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2C31A4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29E2BCEA4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_29DE7EBD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_29E2C31A4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29E2BCEA4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29DE7ED30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE7ED90()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7EDE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7EE24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29DE7EE7C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7EEB4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7EEEC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F004()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE7F04C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE7F09C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F0D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE7F118()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7F150()
{
  v1 = sub_29E2BCC24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE7F220()
{
  v1 = sub_29E2BCC24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE7F30C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7F344()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F37C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7F3B4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F3EC(uint64_t a1, uint64_t a2)
{
  sub_29DF298C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE7F458(uint64_t a1, uint64_t a2)
{
  sub_29DF298C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE7F4DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE7F538()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F77C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F7D4()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29DE7F92C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE7F964()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE7FA10()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DE7FAD4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE7FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29E2BD624();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_29DE7FC2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E2BD624();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29DE7FD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BFC94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_29DEB3B00(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 36);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_29DE7FE68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BFC94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  else
  {
    sub_29DEB3B00(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29DE802BC()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE80300()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE80340(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    sub_29E036268(0, &qword_2A1A61668, MEMORY[0x29EDC3990]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_29DE80418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_29E036268(0, &qword_2A1A61668, MEMORY[0x29EDC3990]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29DE804D8()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE80518()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE80558(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E0388B0(0, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29DE80638(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E0388B0(0, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29DE80714(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_29E0388B0(0, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = &a1[*(a3 + 24)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_29DE807EC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_29E0388B0(0, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 24)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29DE808D0()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE80D58()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE80E30()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE80E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E04F910(0, &unk_2A181B2C0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_29DE80F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E04F910(0, &unk_2A181B2C0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_29DE81044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BFC94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29DEB3B00(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29DE81168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BFC94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    sub_29DEB3B00(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29DE8128C(uint64_t a1, uint64_t a2)
{
  sub_29E051BAC(0, &qword_2A181B348, sub_29DFCFBA8, MEMORY[0x29EDC24E0], MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE81334(uint64_t a1)
{
  sub_29E051BAC(0, &qword_2A181B348, sub_29DFCFBA8, MEMORY[0x29EDC24E0], MEMORY[0x29EDBC7F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE813D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BF944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE81484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BF944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE817B0()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE817E8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE81820()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE81864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartPDFModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE818D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleChartPDFModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE81940()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE81988()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE819D8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE81A44()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE81A94()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE81ACC()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE81B04()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE81B44()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE81B84()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE81BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E077E58(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29DE81D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E077E58(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_29DE81E94()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE81ECC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE81F6C@<X0>(uint64_t *a1@<X8>)
{
  sub_29DE9408C(0, &qword_2A1A5E120);
  result = sub_29E2BFCE4();
  *a1 = result;
  return result;
}

uint64_t sub_29DE81FB8()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE81FF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE820BC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE820F4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8219C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE821E4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = sub_29E2BCEA4();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = sub_29E2BCBB4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_29E2BFC94();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_29DE8235C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_29E2BCEA4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_29E2BCBB4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_29E2BFC94();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_29DE824C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE82510()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE82558()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE82598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BD624();
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

uint64_t sub_29DE82654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BD624();
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

uint64_t sub_29DE8270C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_29E2BFC94();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      sub_29E09E038(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
      v15 = v14;
      v16 = *(*(v14 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

void *sub_29DE8286C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_29E2BFC94();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_29E09E038(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_29DE829C0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE829F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BC5F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE82AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BC5F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE82B48()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE82B80()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

id sub_29DE82BBC@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 menstruationLevel];
  *a2 = result == 4;
  return result;
}

id sub_29DE82C70@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 bleedingInPregnancyLevel];
  *a2 = result == 1;
  return result;
}

id sub_29DE82CAC@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 bleedingAfterPregnancyLevel];
  *a2 = result == 1;
  return result;
}

uint64_t sub_29DE82CE8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE82D30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE82D70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE82DC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2C31A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE82E74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2C31A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE82F18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E2BEF04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CycleChartCycle(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_29E0B8264(0, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, MEMORY[0x29EDC9C68]);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_29E2BCEA4();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = sub_29E2C31A4();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_29DE8314C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29E2BEF04();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for CycleChartCycle(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  sub_29E0B8264(0, &qword_2A181C038, type metadata accessor for CycleChartPDFPregnancyFactor, MEMORY[0x29EDC9C68]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_29E2BCEA4();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = sub_29E2C31A4();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_29DE83384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29E2BCEA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE83430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCEA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE834D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BD594();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29E2BD624();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_29DE835F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_29E2BD594();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29E2BD624();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29DE83724()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE83764()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 168, 7);
}

uint64_t sub_29DE837F0()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29DE83890(uint64_t a1, uint64_t a2)
{
  sub_29DFA6A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE838FC(uint64_t a1, uint64_t a2)
{
  sub_29DFA6A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE8396C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE839B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CycleDay();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_29E0CE990();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29DE83AA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CycleDay();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_29E0CE990();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_29DE83BEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    sub_29E0D5450(0, qword_2A1A5F0F8, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData, MEMORY[0x29EDC9C68]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_29DE83CD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_29E0D5450(0, qword_2A1A5F0F8, type metadata accessor for ReviewPregnancyInMedicalIDTileDismissalData, MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29DE83DAC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE83DE4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE83E78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_29E0DED04(0, &qword_2A181C5D0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_29DE83FDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_29E2BCBB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    sub_29E0DED04(0, &qword_2A181C5D0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[7];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_29DE84134()
{
  v1 = type metadata accessor for BleedingInPregnancyAlertView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v1[5];
  v6 = sub_29E2BCBB4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  if (*(v0 + v3 + v1[6]))
  {
  }

  v7 = v1[7];
  sub_29E0DED04(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_29E2C1584();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE8437C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE84680(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2C0514();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29E2BD624();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_29DE847A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29E2C0514();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29E2BD624();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29DE848CC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE84904()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE84940()
{
  v1 = sub_29E2BC3A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE849DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BC3A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE84A88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BC3A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE84B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BFC94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_29E2C30A4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29DE84C5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BFC94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_29E2C30A4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29DE84D94()
{
  sub_29E0FBB94();
  sub_29E0FBC28();
  sub_29DE9DE68();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE84E2C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE84E6C()
{
  sub_29E0FBCB8();
  sub_29E2C1D34();
  sub_29E0FC0B0(&qword_2A181CB08, sub_29E0FBCB8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE84F28()
{
  v1 = *(*v0 + 48);
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DE84F5C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE84F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2C31A4();
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

uint64_t sub_29DE85050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2C31A4();
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

uint64_t sub_29DE85108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_29E2BEFA4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_29DE85254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E2BEFA4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29DE85394()
{
  v1 = (type metadata accessor for EndDatePickerRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_29E2BEFA4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE856F4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8572C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE85764()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE857A4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE857DC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE85828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E110CF4(0, &qword_2A1A5E360, &qword_2A1A61D68);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_29E110CF4(0, &qword_2A1A5E350, &unk_2A1A5E190);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29DE85948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E110CF4(0, &qword_2A1A5E360, &qword_2A1A61D68);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_29E110CF4(0, &qword_2A1A5E350, &unk_2A1A5E190);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_29DE85A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E1119DC(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_29DE85BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E1119DC(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29DE85D58()
{
  v1 = type metadata accessor for EstimationMethodSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_29E1119DC(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_29E2C1494();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE85F14()
{
  v1 = type metadata accessor for EstimationMethodSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_29E1119DC(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29E2C1494();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v4 + v3;
  v8 = *(v1 + 20);
  sub_29E1119DC(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2A1C733A0](v0, v7 + 1, v2 | 7);
}

uint64_t sub_29DE860D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C18E4();
  *a1 = result;
  return result;
}

uint64_t sub_29DE86190()
{
  type metadata accessor for StyledVStackSectionBody();
  type metadata accessor for StyledVStackSectionFooter();
  sub_29E2C4304();
  swift_getTupleTypeMetadata2();
  sub_29E2C2B14();
  swift_getWitnessTable();
  sub_29E2C28F4();

  return swift_getWitnessTable();
}

uint64_t sub_29DE86260()
{
  sub_29E2C28F4();
  sub_29E2C1744();
  v0 = MEMORY[0x29EDBC8D8];
  sub_29E117AC4(255, &qword_2A181D3C0, MEMORY[0x29EDBC8D8]);
  sub_29E2C1744();
  sub_29E117918();
  sub_29E2C1744();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_29E1179B8(&qword_2A181D3D8, &qword_2A181D3C0, v0);
  swift_getWitnessTable();
  sub_29E1179FC(&qword_2A181D3E0, sub_29E117918);
  return swift_getWitnessTable();
}

uint64_t sub_29DE863F0()
{
  v0 = MEMORY[0x29EDBC8E8];
  sub_29E117AC4(255, &qword_2A181C678, MEMORY[0x29EDBC8E8]);
  sub_29E2C1744();
  sub_29E0DEF10();
  sub_29E2C1744();
  sub_29E2C1744();
  sub_29E117B24(255, &qword_2A18184E8, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
  sub_29E2C1744();
  sub_29E1179B8(&qword_2A181C7D8, &qword_2A181C678, v0);
  swift_getWitnessTable();
  sub_29E1179FC(&qword_2A181C7E0, sub_29E0DEF10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_29DED9BF4();
  return swift_getWitnessTable();
}

uint64_t sub_29DE865B8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE86608()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE86640()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE86678()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE866B8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE866F8()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E12DA58(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_29DE868B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E12DA58(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E12DA58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29DE86B0C(uint64_t a1, uint64_t a2)
{
  sub_29E12E2AC(0, &qword_2A181D5E0, sub_29E12EAA8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE86BB4(uint64_t a1)
{
  sub_29E12E2AC(0, &qword_2A181D5E0, sub_29E12EAA8, sub_29E12E9B8, MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE86C80()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE86CE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C1984();
  *a1 = result;
  return result;
}

uint64_t sub_29DE86D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E2C1964();
  *a1 = result;
  return result;
}

uint64_t sub_29DE86DA4()
{
  sub_29E12F130();
  sub_29E12F964();
  sub_29E12F060();
  sub_29E12DCF8();
  sub_29E12E970(&qword_2A181D660, sub_29E12DCF8);
  sub_29DE9DE68();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29E12E970(&qword_2A181D6C8, sub_29E12F964);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE86FA4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE86FDC()
{
  sub_29E1350C0(0, &qword_2A181D868, MEMORY[0x29EDCA458]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2A1C733A0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_29DE870E0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87118()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87150()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE87188()
{
  v1 = sub_29E2BFDD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_29DE87234()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87298()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE872D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE87318()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8735C()
{

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29DE873AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE873F8()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87430()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE87480()
{

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29DE874D8()
{

  MEMORY[0x29ED82270](v0 + 112);

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

uint64_t sub_29DE8753C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE87584()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE875D8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87610()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE87650()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE876A4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE876DC()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87714()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE87760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BD594();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29E2BD624();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_29DE8786C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E2BD594();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E2BD624();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29DE87974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvulationConfirmationState();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE879E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvulationConfirmationState();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE87AC0()
{
  sub_29E17E150();
  sub_29DE9408C(255, &qword_2A181E2D8);
  sub_29E17DF78(&qword_2A181E2E0, 255, sub_29E17E150);
  sub_29E17EBB4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE87C60()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE87C98()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE87CDC()
{
  sub_29E18FFBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DE87D64()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE87D9C()
{
  v1 = MEMORY[0x29EDC7888];
  sub_29E18FD94(0, &qword_2A181E578, sub_29E18FF0C, MEMORY[0x29EDC7888]);
  v37 = v2;
  v36 = *(v2 - 8);
  v34 = *(v36 + 80);
  v31 = (v34 + 16) & ~v34;
  v3 = *(v36 + 64);
  sub_29E18FD94(0, &qword_2A181E568, sub_29E18FED8, v1);
  v30 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v32 = (v31 + v3 + v6) & ~v6;
  v7 = *(v5 + 64);
  v33 = (v7 + v6 + v32) & ~v6;
  v26 = (v7 + v6 + v33) & ~v6;
  sub_29E18FD94(0, &qword_2A181E558, sub_29E18FEA4, v1);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 80);
  v28 = (v7 + v11 + v26) & ~v11;
  v12 = *(v10 + 64);
  v29 = (v12 + v11 + v28) & ~v11;
  v25 = (v12 + v11 + v29) & ~v11;
  sub_29E18FF40();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 80);
  v24 = (v12 + v16 + v25) & ~v16;
  v17 = *(v15 + 64);
  v35 = v34 | v6 | v11 | v16;
  v18 = (v17 + v16 + v24) & ~v16;
  v19 = (v17 + v11 + v18) & ~v11;
  v27 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v36 + 8))(v0 + v31, v37);
  v20 = *(v5 + 8);
  v20(v0 + v32, v30);
  v20(v0 + v33, v30);
  v20(v0 + v26, v30);
  v21 = *(v10 + 8);
  v21(v0 + v28, v9);
  v21(v0 + v29, v9);
  v21(v0 + v25, v9);
  v22 = *(v15 + 8);
  v22(v0 + v24, v14);
  v22(v0 + v18, v14);
  v21(v0 + v19, v9);

  return MEMORY[0x2A1C733A0](v0, v27 + 8, v35 | 7);
}

uint64_t sub_29DE88180()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE881B8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE88200()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8824C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BEF04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE882B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BEF04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE88328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E199B24(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

void sub_29DE88490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E199B24(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 3;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29DE88650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E199B24(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_29DE887CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E199B24(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E199B24(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29DE8893C(uint64_t a1)
{
  sub_29E196744(0, &qword_2A181E778, sub_29E199448, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE889E8()
{
  sub_29E196744(255, &qword_2A181E778, sub_29E199448, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  type metadata accessor for PregnancyStartDateMethodInputPickerSheet();
  sub_29E1999B0();
  sub_29E19695C(&qword_2A181E788, type metadata accessor for PregnancyStartDateMethodInputPickerSheet);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE88AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE88B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2BCC24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE88BBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E2C02D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_29E19C6E8(0, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    sub_29E19C6E8(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_29DE88DA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_29E2C02D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 16) = a2;
    return result;
  }

  sub_29E19C6E8(0, &qword_2A181AE00, sub_29E03887C, MEMORY[0x29EDBC390]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  sub_29E19C6E8(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[7];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_29DE88F78()
{
  v1 = type metadata accessor for PregnancyModeTimelineView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_29E2C02D4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v1 + 24);
  sub_29E19C6E8(0, &qword_2A181AE88, sub_29E03887C, MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_29E2C1E04();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = *(v1 + 28);
  sub_29E19C6E8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C16E4();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE89218(uint64_t a1, uint64_t a2)
{
  sub_29E19C6E8(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE892B4(uint64_t a1, uint64_t a2)
{
  sub_29E19C6E8(0, &qword_2A1818600, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE89448()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE89490()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE89560()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE89650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E2BCC24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E2BCBB4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE8974C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE89784()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE897BC()
{

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29DE897F4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8982C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE898B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E1BF204(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29DE89984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E1BF204(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_29DE89B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E1C4000(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_29DE89C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E1C4000(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29DE89D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E1C4000(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CompactCalendarDayViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29DE89E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E1C4000(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CompactCalendarDayViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE89F9C(uint64_t a1, uint64_t a2)
{
  sub_29E1C4000(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE8A038(uint64_t a1, uint64_t a2)
{
  sub_29E1C4000(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE8A0E4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8A11C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8A17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2C31A4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29E2BCEA4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_29DE8A2A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29E2C31A4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29E2BCEA4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29DE8A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29DE8A490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2C31A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

unint64_t sub_29DE8A550@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29E1D1DC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29DE8A860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E2C1A14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29DE8A918()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE8AA04(uint64_t a1, uint64_t a2)
{
  sub_29E1E3A60(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE8AA68()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8AD04()
{
  sub_29E1E53E8(255, &qword_2A181F700, sub_29E1DF8D8, &type metadata for NotificationWhenNotAvailable, MEMORY[0x29EDBC858]);
  sub_29E1E5450();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE8AD94()
{
  sub_29E1E59A8();
  sub_29E1E5538();
  sub_29E2C1D34();
  sub_29E1E5D80(&qword_2A181F758, sub_29E1E5538);
  swift_getOpaqueTypeConformance2();
  sub_29DE9DE68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE8AEC8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8AF00()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8AF3C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8AF8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE8AFD4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8B014()
{

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29DE8B0AC()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29DE8B0E4()
{

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29DE8B120()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8B158()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8B1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E1F71B8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_29E1F71B8(0, &qword_2A181C5D0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

void sub_29DE8B334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E1F71B8(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    sub_29E1F71B8(0, &qword_2A181C5D0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29DE8B4D0(uint64_t a1, uint64_t a2)
{
  sub_29E1F99C8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE8B534(uint64_t a1, uint64_t a2)
{
  sub_29E1F99C8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_29DE8B5E8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_29DE8B618()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8B650()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8B688()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8B6D8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8B718()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8B758()
{
  if (*(v0 + 56))
  {
    sub_29DE93B3C(v0 + 32);
  }

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29DE8B7D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8B80C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

id sub_29DE8B884@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fertileWindowLevel];
  *a2 = result;
  return result;
}

uint64_t sub_29DE8B930(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BCEA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE8B9DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCEA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE8BA88(uint64_t a1, uint64_t a2)
{
  sub_29DF8C298();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE8BAF4(uint64_t a1, uint64_t a2)
{
  sub_29DF8C298();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE8BB64()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8BBC0()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8BC08()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8BC40()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8BC80()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8BCC0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8BD14()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8BD4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges);
  v12[0] = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  v12[3] = v2[3];
  v12[4] = v3;
  v12[1] = v5;
  v12[2] = v4;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[4];
  a2[3] = v2[3];
  a2[4] = v8;
  v9 = v2[2];
  a2[1] = v7;
  a2[2] = v9;
  *a2 = v6;
  return sub_29DEA6A00(v12, &v11);
}

uint64_t sub_29DE8BDC4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8BDFC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8BE44()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

uint64_t sub_29DE8BEF4(uint64_t a1, uint64_t a2)
{
  sub_29DF298C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29DE8BF60(uint64_t a1, uint64_t a2)
{
  sub_29DF298C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29DE8BFD0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8C008()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8C040()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8C080()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE8C0C0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8C0F8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8C130()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29DE8C1D4()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE8C268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29E2BC5F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE8C314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BC5F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE8C3B8()
{
  sub_29E23BB9C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2A1C733A0](v0, v6 + 8, v4 | 7);
}

uint64_t sub_29DE8C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E241CC8(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
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

void sub_29DE8C57C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E241CC8(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_29DE8C67C(uint64_t a1, uint64_t a2)
{
  sub_29E241CC8(0, &qword_2A1820150, sub_29E24045C, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE8C710(uint64_t a1)
{
  sub_29E241CC8(0, &qword_2A1820150, sub_29E24045C, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DE8C79C()
{
  sub_29E23FCC0(255);
  sub_29E240938();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29DE8C89C()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8C8D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8C90C()
{

  return MEMORY[0x2A1C733A0](v0, 51, 7);
}

uint64_t sub_29DE8C94C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8C994()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE8CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E24D240(0, &qword_2A18203F0, sub_29E24D2A4, MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E24D240(0, &unk_2A1A61678, MEMORY[0x29EDC3928], MEMORY[0x29EDC9C68]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void sub_29DE8CBB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E24D240(0, &qword_2A18203F0, sub_29E24D2A4, MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E24D240(0, &unk_2A1A61678, MEMORY[0x29EDC3928], MEMORY[0x29EDC9C68]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29DE8CD60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8CDA0()
{
  v1 = sub_29E2BC904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29E2BEF44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  sub_29DE93B3C(v0 + v11);

  return MEMORY[0x2A1C733A0](v0, v11 + 40, v10 | 7);
}

uint64_t sub_29DE8CF08()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8CF40()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8CF88()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8CFD0()
{
  v1 = sub_29E2C31A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29DE8D0BC()
{
  v1 = sub_29E2C31A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_29DE8D1CC()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8D204()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8D288()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8D2C0()
{
  v1 = sub_29E2C31A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE8D358(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CycleLogModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29DE8D404(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CycleLogModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE8D4A8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8D4EC()
{

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

uint64_t sub_29DE8D52C()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE8D57C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 49, 7);
}

uint64_t sub_29DE8D5C4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8D610()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE8D650()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29DE8D6B8()
{

  swift_unknownObjectRelease();

  sub_29DE93B3C(v0 + 72);

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29DE8D768()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8D7A0()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8D7D8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8D818()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8D850()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE8D8A4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8D8DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8D924()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8D96C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8D9A4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8D9E4()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8DA1C()
{

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29DE8DA7C()
{

  MEMORY[0x29ED82270](v0 + 112);

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

uint64_t sub_29DE8DB64()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8DB9C()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29DE8DBE0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8DC18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8DC68()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8DCB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29DE8DD18()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8DD58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8DDC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2BCBB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_29DE8DE74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E2BCBB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29DE8DF28()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8DF68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E296684(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29DE8E048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E296684(0, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29DE8E128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C1A34();
  *a1 = result;
  return result;
}

uint64_t sub_29DE8E188()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8E1C0()
{
  v1 = sub_29E2BC3F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29DE8E264(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CycleDay();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29E2C31A4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_29DE8E388(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CycleDay();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29E2C31A4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29DE8E4AC()
{
  v1 = sub_29E2C0B44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29DE8E570()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE8E5FC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8E644()
{
  v1 = sub_29E2BD624();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29DE8E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E2C08B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29E2C4274();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_29DE8E808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29E2C08B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29E2C4274();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29DE8E930()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8E970()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8E9B0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DE8E9E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29DE8EA30()
{
  v1 = sub_29E2BE3D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29DE8EADC()
{
  v1 = *(type metadata accessor for PDFCoverPageHeaderProvider() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_29E2BEF04();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE8EBA8()
{
  v1 = (type metadata accessor for PDFCoverPageBodyProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_29E2BCEA4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29DE8ECA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8ED00()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DE8ED38()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DE8ED88()
{
  MEMORY[0x29ED82270](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29DE8EE38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29DE8EE48()
{
  v1 = *v0;
  sub_29E2BF404();
  return v1;
}

uint64_t sub_29DE8EE78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29DE8EE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

uint64_t sub_29DE8EEE0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29DE8EF50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t variable initialization expression of CycleChartsCollectionView.subscriptions()
{
  if (!(MEMORY[0x29EDCA190] >> 62) || !sub_29E2C4484())
  {
    return MEMORY[0x29EDCA1A0];
  }

  v2 = MEMORY[0x29EDCA190];

  return sub_29DE92AF0(v2);
}

uint64_t sub_29DE8F150(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x29ED79820](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29DE8F1A4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x29ED79830](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_29DE8F224(uint64_t a1)
{
  v2 = sub_29DE93440(&qword_2A1817700, type metadata accessor for HKError);

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_29DE8F290(uint64_t a1)
{
  v2 = sub_29DE93440(&qword_2A1817700, type metadata accessor for HKError);

  return MEMORY[0x2A1C5B388](a1, v2);
}

uint64_t sub_29DE8F300(uint64_t a1)
{
  v2 = sub_29DE93440(&qword_2A1817738, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7C0](a1, v2);
}

uint64_t sub_29DE8F37C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x29ED7FF90](a1, &v6);
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

uint64_t sub_29DE8F3D0(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x29ED7FFA0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_29DE8F450()
{
  v1 = *v0;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](v1);
  return sub_29E2C4A54();
}

uint64_t sub_29DE8F498()
{
  v1 = *v0;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](v1);
  return sub_29E2C4A54();
}

uint64_t sub_29DE8F4DC(uint64_t a1, id *a2)
{
  result = sub_29E2C33C4();
  *a2 = 0;
  return result;
}

uint64_t sub_29DE8F554(uint64_t a1, id *a2)
{
  v3 = sub_29E2C33D4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29DE8F5D4@<X0>(uint64_t *a1@<X8>)
{
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = sub_29E2C33A4();

  *a1 = v2;
  return result;
}

uint64_t sub_29DE8F628(uint64_t a1)
{
  v2 = sub_29DE93440(&qword_2A1817738, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7F0](a1, v2);
}

uint64_t sub_29DE8F694(uint64_t a1)
{
  v2 = sub_29DE93440(&qword_2A1817738, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7D0](a1, v2);
}

uint64_t sub_29DE8F700(void *a1, uint64_t a2)
{
  v4 = sub_29DE93440(&qword_2A1817738, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x2A1C5A7C8](v5, a2, v4);
}

uint64_t sub_29DE8F7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29DE93440(&qword_2A1817738, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7E8](a1, a2, v4);
}

uint64_t sub_29DE8F830()
{
  sub_29E2C4A04();
  sub_29E2C3254();
  return sub_29E2C4A54();
}

uint64_t sub_29DE8F890()
{
  sub_29DE93440(&qword_2A181DA40, type metadata accessor for HKMCDisplayTypeIdentifier);
  sub_29DE93440(&unk_2A1817500, type metadata accessor for HKMCDisplayTypeIdentifier);

  return sub_29E2C47D4();
}

uint64_t sub_29DE8F94C()
{
  sub_29DE93440(&qword_2A18177F0, type metadata accessor for Key);
  sub_29DE93440(&qword_2A18177F8, type metadata accessor for Key);

  return sub_29E2C47D4();
}

uint64_t sub_29DE8FA08()
{
  sub_29DE93440(&qword_2A1817800, type metadata accessor for UIContentSizeCategory);
  sub_29DE93440(&qword_2A1817808, type metadata accessor for UIContentSizeCategory);

  return sub_29E2C47D4();
}

double sub_29DE8FAC4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29DE8FAD0()
{
  sub_29DE93440(&qword_2A18177B8, type metadata accessor for Weight);
  sub_29DE93440(&qword_2A18177C0, type metadata accessor for Weight);
  sub_29DE9509C();
  return sub_29E2C47D4();
}

uint64_t sub_29DE8FB98()
{
  sub_29DE93440(&qword_2A1A5E158, type metadata accessor for HKFeatureIdentifier);
  sub_29DE93440(&qword_2A18174E0, type metadata accessor for HKFeatureIdentifier);

  return sub_29E2C47D4();
}

uint64_t sub_29DE8FC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29DE93440(&qword_2A1817738, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7D8](a1, a2, a3, v6);
}

_DWORD *sub_29DE8FCD8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_29DE8FCE8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29DE8FCF4()
{
  sub_29DE93440(&qword_2A1817788, type metadata accessor for UILayoutPriority);
  sub_29DE93440(&unk_2A1817790, type metadata accessor for UILayoutPriority);
  return sub_29E2C47D4();
}

uint64_t sub_29DE8FDB0()
{
  sub_29DE93440(&qword_2A18174E8, type metadata accessor for HKMCLoggedDataMethod);
  sub_29DE93440(&unk_2A18174F0, type metadata accessor for HKMCLoggedDataMethod);

  return sub_29E2C47D4();
}

uint64_t sub_29DE8FE6C()
{
  sub_29DE93440(&qword_2A1817758, type metadata accessor for HKMCNotificationCategory);
  sub_29DE93440(&qword_2A1817760, type metadata accessor for HKMCNotificationCategory);

  return sub_29E2C47D4();
}

uint64_t sub_29DE8FF28()
{
  sub_29DE93440(&qword_2A1817768, type metadata accessor for OpenURLOptionsKey);
  sub_29DE93440(&qword_2A1817770, type metadata accessor for OpenURLOptionsKey);

  return sub_29E2C47D4();
}

uint64_t sub_29DE8FFE4()
{
  sub_29DE93440(&qword_2A18177A8, type metadata accessor for OpenExternalURLOptionsKey);
  sub_29DE93440(&qword_2A18177B0, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_29E2C47D4();
}

uint64_t sub_29DE900A0()
{
  sub_29DE93440(&qword_2A181A6E0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  sub_29DE93440(&qword_2A18177A0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);

  return sub_29E2C47D4();
}

uint64_t sub_29DE9015C()
{
  sub_29DE93440(&qword_2A1817778, type metadata accessor for ImageInitializationOption);
  sub_29DE93440(&qword_2A1817780, type metadata accessor for ImageInitializationOption);

  return sub_29E2C47D4();
}

uint64_t sub_29DE90218()
{
  sub_29DE93440(&qword_2A18177E0, type metadata accessor for AttributeName);
  sub_29DE93440(&qword_2A18177E8, type metadata accessor for AttributeName);

  return sub_29E2C47D4();
}

uint64_t sub_29DE902D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2C33A4();

  *a1 = v2;
  return result;
}

uint64_t sub_29DE9031C()
{
  sub_29DE93440(&qword_2A18177D0, type metadata accessor for TraitKey);
  sub_29DE93440(&qword_2A18177D8, type metadata accessor for TraitKey);

  return sub_29E2C47D4();
}

uint64_t sub_29DE903E0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x29ED81210](*&v1);
}

uint64_t sub_29DE90494()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v1 = MEMORY[0x29ED7FD20](v0);

  return v1;
}

uint64_t sub_29DE904D0()
{
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C34B4();
}

uint64_t sub_29DE90524()
{
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4A04();
  sub_29E2C34B4();
  v0 = sub_29E2C4A54();

  return v0;
}

uint64_t sub_29DE905C0()
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

size_t sub_29DE90648(char *a1)
{
  v198 = sub_29E2C0514();
  v197 = *(v198 - 8);
  MEMORY[0x2A1C7C4A8](v198);
  v186 = &v184 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v184 - v4;
  MEMORY[0x2A1C7C4A8](v6);
  v187 = &v184 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v189 = &v184 - v9;
  v200 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  MEMORY[0x2A1C7C4A8](v200);
  v195 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v201 = &v184 - v12;
  v13 = sub_29E2BD764();
  v202 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v185 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v191 = &v184 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v184 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v192 = &v184 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v188 = &v184 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v190 = &v184 - v25;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v184 - v27;
  MEMORY[0x2A1C7C4A8](v29);
  v199 = &v184 - v30;
  v219 = sub_29E2BCE84();
  v210 = *(v219 - 8);
  MEMORY[0x2A1C7C4A8](v219);
  v218 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE939AC(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v34 = &v184 - v33;
  v35 = sub_29E2BCBB4();
  v208 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v37 = (&v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v38);
  v228 = &v184 - v39;
  v225 = sub_29E2C31A4();
  v206 = *(v225 - 8);
  MEMORY[0x2A1C7C4A8](v225);
  v224 = &v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_29E2BCEA4();
  v205 = *(v223 - 1);
  MEMORY[0x2A1C7C4A8](v223);
  v227 = &v184 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42);
  v222 = &v184 - v43;
  MEMORY[0x2A1C7C4A8](v44);
  v229 = &v184 - v45;
  v226 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v46 = [a1 menstruationProjections];
  v212 = sub_29DE9408C(0, &qword_2A1A62790);
  v47 = sub_29E2C3614();

  v48 = v47;
  v230 = MEMORY[0x29EDCA190];
  v217 = v34;
  if (v47 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v50 = &off_29F363000;
    v203 = v13;
    v194 = v19;
    v184 = v5;
    v196 = v28;
    if (i)
    {
      v28 = i;
      v207 = a1;
      v211 = v37;
      v209 = v35;
      a1 = 0;
      v13 = v48 & 0xC000000000000001;
      v35 = v48 & 0xFFFFFFFFFFFFFF8;
      v215 = (v205 + 2);
      v213 = v205 + 1;
      v214 = v206 + 1;
      v220 = (v48 & 0xC000000000000001);
      v221 = i;
      v216 = v48;
      while (1)
      {
        if (v13)
        {
          v51 = MEMORY[0x29ED80D70](a1, v48);
        }

        else
        {
          if (a1 >= *(v35 + 16))
          {
            goto LABEL_44;
          }

          v51 = *(v48 + 8 * a1 + 32);
        }

        v52 = v51;
        v19 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if ([v51 v50[259]])
        {
        }

        else
        {
          v53 = [v226 currentCalendar];
          sub_29E2BCDC4();

          v37 = &off_29F363000;
          v48 = [v52 allDays];
          [v52 allDays];
          v55 = v48 + v54;
          if (__OFADD__(v48, v54))
          {
            goto LABEL_47;
          }

          v5 = v55 - 1;
          if (__OFSUB__(v55, 1))
          {
            goto LABEL_48;
          }

          sub_29E2BCBA4();
          v56 = v223;
          v57 = v229;
          (*v215)(v222, v229, v223);
          v58 = v224;
          sub_29E2C3144();
          v37 = sub_29E2C3164();
          (*v214)(v58, v225);
          (*v213)(v57, v56);
          if (v5 >= v37)
          {
            sub_29E2C4614();
            v5 = *(v230 + 2);
            sub_29E2C4644();
            sub_29E2C4654();
            sub_29E2C4624();
          }

          else
          {
          }

          v50 = &off_29F363000;
          v48 = v216;
          v13 = v220;
          v28 = v221;
        }

        ++a1;
        if (v19 == v28)
        {
          v193 = v230;
          v35 = v209;
          v37 = v211;
          a1 = v207;
          v19 = MEMORY[0x29EDCA190];
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v193 = MEMORY[0x29EDCA190];
    v19 = MEMORY[0x29EDCA190];
LABEL_21:

    v59 = [a1 fertileWindowProjections];
    v5 = sub_29E2C3614();

    v230 = v19;
    if (!(v5 >> 62))
    {
      v60 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v60)
      {
        break;
      }

      goto LABEL_23;
    }

    v60 = sub_29E2C4484();
    if (!v60)
    {
      break;
    }

LABEL_23:
    a1 = 0;
    v13 = v5 & 0xC000000000000001;
    v48 = v5 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v212) = *MEMORY[0x29EDB9CB8];
    v211 = (v210 + 13);
    v222 = (v208 + 1);
    ++v210;
    v209 = (v208 + 6);
    v204 = (v208 + 4);
    v208 += 2;
    v207 = (v205 + 2);
    ++v206;
    ++v205;
    v215 = v60;
    v216 = v5;
    v213 = (v5 & 0xFFFFFFFFFFFFFF8);
    v214 = (v5 & 0xC000000000000001);
    while (1)
    {
      if (v13)
      {
        v61 = MEMORY[0x29ED80D70](a1, v5);
      }

      else
      {
        if (a1 >= *(v48 + 16))
        {
          goto LABEL_46;
        }

        v61 = *(v5 + 8 * a1 + 32);
      }

      v28 = v61;
      v19 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if ([v61 v50[259]])
      {
      }

      else
      {
        v62 = [v226 currentCalendar];
        sub_29E2BCDC4();

        v5 = &off_29F363000;
        v48 = [v28 allDays];
        [v28 allDays];
        v64 = v48 + v63;
        if (__OFADD__(v48, v63))
        {
          goto LABEL_49;
        }

        v65 = __OFSUB__(v64, 1);
        v66 = (v64 - 1);
        if (v65)
        {
          goto LABEL_50;
        }

        v221 = v66;
        v67 = v37;
        v68 = v218;
        v69 = v219;
        v70 = v35;
        v71 = v217;
        (*v211)(v218, v212, v219);
        v72 = v228;
        sub_29E2BCBA4();
        sub_29E2BCE04();
        v220 = *v222;
        v220(v72, v70);
        v73 = v71;
        v35 = v70;
        (*v210)(v68, v69);
        v74 = *v209;
        if ((*v209)(v73, 1, v70) == 1)
        {
          v37 = v67;
          sub_29E2BCBA4();
          if (v74(v73, 1, v35) != 1)
          {
            sub_29DE93920(v73);
          }
        }

        else
        {
          v37 = v67;
          (*v204)(v67, v73, v35);
        }

        (*v208)(v228, v37, v35);
        v75 = v227;
        v76 = v223;
        (*v207)(v229, v227, v223);
        v77 = v224;
        sub_29E2C3144();
        v78 = sub_29E2C3164();
        (*v206)(v77, v225);
        v220(v37, v35);
        (*v205)(v75, v76);
        if (v221 >= v78)
        {
          sub_29E2C4614();
          sub_29E2C4644();
          sub_29E2C4654();
          sub_29E2C4624();
        }

        else
        {
        }

        v50 = &off_29F363000;
        v60 = v215;
        v5 = v216;
        v48 = v213;
        v13 = v214;
      }

      ++a1;
      if (v19 == v60)
      {
        v79 = v230;
        goto LABEL_54;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v79 = MEMORY[0x29EDCA190];
LABEL_54:

  v80 = v193;
  if (v193 < 0 || (v193 & 0x4000000000000000) != 0)
  {
    v81 = sub_29E2C4484();
  }

  else
  {
    v81 = *(v193 + 16);
  }

  v82 = v202;
  v83 = 0xD00000000000001ELL;
  if (!v81)
  {

    sub_29DE939AC(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v109 = sub_29E2BFD24();
    v110 = *(v109 - 8);
    v111 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_29E2CAB20;
    v113 = *MEMORY[0x29EDC2E10];
    v114 = sub_29E2BFD14();
    (*(*(v114 - 8) + 104))(v112 + v111, v113, v114);
    v93 = *MEMORY[0x29EDC2E20];
    (*(v110 + 104))(v112 + v111, v93, v109);
    v115 = *(v200 + 24);
    v116 = v201;
    sub_29E2BD834();
    v117 = sub_29E2BD844();
    (*(*(v117 - 8) + 56))(v116 + v115, 0, 1, v117);
    *v116 = 0;
    *(v116 + 8) = 0;
    v118 = v190;
    sub_29E0BC550(0xD00000000000002ELL, 0x800000029E2EB620, v112, v116, v190);
    v119 = v187;
    sub_29E2C04B4();
    v120 = sub_29E2C0504();
    v121 = sub_29E2C3A04();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v230 = v123;
      *v122 = 136446210;
      *(v122 + 4) = sub_29DFAA104(0xD00000000000001ELL, 0x800000029E2EB680, &v230);
      _os_log_impl(&dword_29DE74000, v120, v121, "[%{public}s] Appending no data menstruation model", v122, 0xCu);
      sub_29DE93B3C(v123);
      MEMORY[0x29ED82140](v123, -1, -1);
      v124 = v122;
      v118 = v190;
      MEMORY[0x29ED82140](v124, -1, -1);
    }

    (*(v197 + 8))(v119, v198);
    v125 = v188;
    v126 = *(v82 + 2);
    v126(v188, v118, v203);
    v83 = sub_29E1437C4(0, 1, 1, MEMORY[0x29EDCA190]);
    v128 = *(v83 + 16);
    v127 = *(v83 + 24);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      goto LABEL_97;
    }

    goto LABEL_67;
  }

  if ((v80 & 0xC000000000000001) != 0)
  {
    v85 = MEMORY[0x29ED80D70](0, v80);
    goto LABEL_61;
  }

  v84 = *(v80 + 16);
  if (v84)
  {
    v85 = *(v80 + 32);
LABEL_61:
    v86 = v85;

    sub_29DE939AC(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v87 = sub_29E2BFD24();
    v88 = *(v87 - 8);
    v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_29E2CAB20;
    v91 = *MEMORY[0x29EDC2E10];
    v92 = sub_29E2BFD14();
    (*(*(v92 - 8) + 104))(v90 + v89, v91, v92);
    v93 = *MEMORY[0x29EDC2E20];
    (*(v88 + 104))(v90 + v89, v93, v87);
    v94 = *(v200 + 24);
    v95 = v201;
    sub_29E2BD834();
    v96 = sub_29E2BD844();
    (*(*(v96 - 8) + 56))(v95 + v94, 0, 1, v96);
    *v95 = v86;
    *(v95 + 8) = 0;
    v97 = v195;
    sub_29DE93A10(v95, v195);
    v98 = v86;
    sub_29E0BC550(0xD00000000000002ELL, 0x800000029E2EB620, v90, v97, v199);
    sub_29DE93A74(v95, type metadata accessor for SharedProjectionHighlightTileViewModelContextData);
    if (HKShowSensitiveLogItems())
    {
      v99 = v189;
      sub_29E2C04B4();
      v100 = v98;
      v101 = sub_29E2C0504();
      v102 = sub_29E2C3A04();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v229 = v82;
        v105 = v104;
        v106 = swift_slowAlloc();
        v230 = v106;
        *v103 = 136446466;
        *(v103 + 4) = sub_29DFAA104(0xD00000000000001ELL, 0x800000029E2EB680, &v230);
        *(v103 + 12) = 2112;
        *(v103 + 14) = v100;
        *v105 = v86;
        v107 = v100;
        _os_log_impl(&dword_29DE74000, v101, v102, "[%{public}s] Appending menstruation model with projection: %@", v103, 0x16u);
        sub_29DE93A74(v105, sub_29DE93AD4);
        v108 = v105;
        v82 = v229;
        MEMORY[0x29ED82140](v108, -1, -1);
        sub_29DE93B3C(v106);
        MEMORY[0x29ED82140](v106, -1, -1);
        MEMORY[0x29ED82140](v103, -1, -1);

        (*(v197 + 8))(v189, v198);
      }

      else
      {

        (*(v197 + 8))(v99, v198);
      }
    }

    v126 = *(v82 + 2);
    v126(v196, v199, v203);
    v83 = sub_29E1437C4(0, 1, 1, MEMORY[0x29EDCA190]);
    v128 = *(v83 + 16);
    v131 = *(v83 + 24);
    v129 = v128 + 1;
    if (v128 >= v131 >> 1)
    {
      v83 = sub_29E1437C4(v131 > 1, v128 + 1, 1, v83);
    }

    v125 = v196;
    for (j = v199; ; j = v118)
    {
      v132 = v82;
      v133 = *(v82 + 1);
      v82 += 8;
      v134 = v203;
      v227 = v133;
      (v133)(j, v203);
      *(v83 + 16) = v129;
      v135 = *(v132 + 4);
      v118 = (v132 + 32);
      v129 = v135;
      v224 = ((*(v118 + 48) + 32) & ~*(v118 + 48));
      v225 = *(v118 + 40);
      v229 = v118;
      v135(&v224[v83 + v225 * v128], v125, v134);
      if (v79 < 0 || (v79 & 0x4000000000000000) != 0)
      {
        v167 = sub_29E2C4484();
        v228 = v129;
        if (!v167)
        {
LABEL_86:

          sub_29DE939AC(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
          v168 = sub_29E2BFD24();
          v169 = *(v168 - 8);
          v170 = (*(v169 + 80) + 32) & ~*(v169 + 80);
          v171 = swift_allocObject();
          *(v171 + 16) = xmmword_29E2CAB20;
          v172 = *MEMORY[0x29EDC2E18];
          v173 = sub_29E2BFD14();
          (*(*(v173 - 8) + 104))(v171 + v170, v172, v173);
          (*(v169 + 104))(v171 + v170, v93, v168);
          v174 = *(v200 + 24);
          v175 = v201;
          sub_29E2BD834();
          v176 = sub_29E2BD844();
          (*(*(v176 - 8) + 56))(v175 + v174, 0, 1, v176);
          *v175 = 0;
          *(v175 + 8) = 1;
          sub_29E0BC550(0xD00000000000002FLL, 0x800000029E2EB650, v171, v175, v191);
          v177 = v186;
          sub_29E2C04B4();
          v178 = sub_29E2C0504();
          v179 = sub_29E2C3A04();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v230 = v181;
            *v180 = 136446210;
            *(v180 + 4) = sub_29DFAA104(0xD00000000000001ELL, 0x800000029E2EB680, &v230);
            _os_log_impl(&dword_29DE74000, v178, v179, "[%{public}s] Appending no data fertile window model", v180, 0xCu);
            sub_29DE93B3C(v181);
            MEMORY[0x29ED82140](v181, -1, -1);
            MEMORY[0x29ED82140](v180, -1, -1);
          }

          (*(v197 + 8))(v177, v198);
          v166 = v185;
          v79 = v203;
          v164 = v224;
          v5 = v191;
          v126(v185, v191, v203);
          v80 = *(v83 + 16);
          v182 = *(v83 + 24);
          v37 = (v80 + 1);
          v163 = v227;
          if (v80 >= v182 >> 1)
          {
            v83 = sub_29E1437C4(v182 > 1, v80 + 1, 1, v83);
          }

          v165 = v225;
          goto LABEL_91;
        }
      }

      else
      {
        v136 = *(v79 + 16);
        v228 = v129;
        if (!v136)
        {
          goto LABEL_86;
        }
      }

      v222 = v126;
      if ((v79 & 0xC000000000000001) != 0)
      {
        break;
      }

      v127 = *(v79 + 16);
      if (v127)
      {
        v137 = *(v79 + 32);
        goto LABEL_78;
      }

      __break(1u);
LABEL_97:
      v83 = sub_29E1437C4(v127 > 1, v129, 1, v83);
LABEL_67:
      ;
    }

    v137 = MEMORY[0x29ED80D70](0, v79);
LABEL_78:
    v138 = v137;

    sub_29DE939AC(0, &qword_2A1A5E018, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
    v139 = sub_29E2BFD24();
    v140 = *(v139 - 8);
    v141 = (*(v140 + 80) + 32) & ~*(v140 + 80);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_29E2CAB20;
    v143 = *MEMORY[0x29EDC2E18];
    v144 = sub_29E2BFD14();
    (*(*(v144 - 8) + 104))(v142 + v141, v143, v144);
    (*(v140 + 104))(v142 + v141, v93, v139);
    v145 = *(v200 + 24);
    v146 = v201;
    sub_29E2BD834();
    v147 = sub_29E2BD844();
    (*(*(v147 - 8) + 56))(v146 + v145, 0, 1, v147);
    *v146 = v138;
    *(v146 + 8) = 1;
    v148 = v195;
    sub_29DE93A10(v146, v195);
    v223 = v138;
    v5 = v192;
    sub_29E0BC550(0xD00000000000002FLL, 0x800000029E2EB650, v142, v148, v192);
    sub_29DE93A74(v146, type metadata accessor for SharedProjectionHighlightTileViewModelContextData);
    v149 = HKShowSensitiveLogItems();
    v79 = v203;
    v150 = v222;
    if (v149)
    {
      v151 = v184;
      sub_29E2C04B4();
      v152 = v223;
      v153 = sub_29E2C0504();
      v154 = sub_29E2C3A04();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v230 = v157;
        *v155 = 136446466;
        *(v155 + 4) = sub_29DFAA104(0xD00000000000001ELL, 0x800000029E2EB680, &v230);
        *(v155 + 12) = 2112;
        *(v155 + 14) = v152;
        *v156 = v138;
        v158 = v152;
        _os_log_impl(&dword_29DE74000, v153, v154, "[%{public}s] Appending fertile window model with projection: %@", v155, 0x16u);
        sub_29DE93A74(v156, sub_29DE93AD4);
        v159 = v156;
        v150 = v222;
        v160 = v203;
        MEMORY[0x29ED82140](v159, -1, -1);
        sub_29DE93B3C(v157);
        v161 = v157;
        v79 = v160;
        MEMORY[0x29ED82140](v161, -1, -1);
        v162 = v155;
        v5 = v192;
        MEMORY[0x29ED82140](v162, -1, -1);
      }

      (*(v197 + 8))(v151, v198);
    }

    v150(v194, v5, v79);
    v80 = *(v83 + 16);
    v84 = *(v83 + 24);
    v37 = (v80 + 1);
    if (v80 >= v84 >> 1)
    {
      goto LABEL_95;
    }
  }

  else
  {
    __break(1u);
LABEL_95:
    v83 = sub_29E1437C4(v84 > 1, v37, 1, v83);
  }

  v163 = v227;
  v164 = v224;
  v165 = v225;

  v166 = v194;
LABEL_91:

  (v163)(v5, v79);
  *(v83 + 16) = v37;
  (v228)(&v164[v83 + v165 * v80], v166, v79);
  return v83;
}

uint64_t sub_29DE92374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DE93F50();
    v3 = sub_29E2C4554();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v10);
      result = sub_29E2C4A54();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29DE924A4(uint64_t a1)
{
  v2 = sub_29E2BCE84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29DE93E28();
    v9 = sub_29E2C4554();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_29DE93440(&qword_2A1A626A8, MEMORY[0x29EDB9D00]);
      v16 = sub_29E2C3244();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_29DE93440(&qword_2A1A61BB0, MEMORY[0x29EDB9D00]);
          v23 = sub_29E2C3304();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29DE927DC(uint64_t a1)
{
  v2 = sub_29E2BE9D4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29DE93EBC();
    v9 = sub_29E2C4554();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_29DE93440(&qword_2A18174C0, MEMORY[0x29EDC2148]);
      v16 = sub_29E2C3244();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_29DE93440(&qword_2A18174C8, MEMORY[0x29EDC2148]);
          v23 = sub_29E2C3304();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29DE92AF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_29E2C4484();
    if (result)
    {
LABEL_3:
      sub_29DE940D4();
      result = sub_29E2C4554();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_29E2C4484();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x29ED80D70](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_29E2C1054();
    sub_29DE93440(&qword_2A1817518, MEMORY[0x29EDB8A18]);
    result = sub_29E2C3244();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_29DE93440(&qword_2A1817520, MEMORY[0x29EDB8A18]);
      do
      {
        result = sub_29E2C3304();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_29DE92D9C(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_29E2C4484();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_29DE94000(0, a2, a3, a4, a5);
      v7 = sub_29E2C4554();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_29E2C4484();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x29EDCA1A0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x29ED80D70](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_29E2C40C4();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_29DE9408C(0, a3);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_29E2C40D4();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_29E2C40C4();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_29DE9408C(0, a3);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_29E2C40D4();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_29DE930AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DE938C8();
    v3 = sub_29E2C4554();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29E2C4A04();
      sub_29E2BF404();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_29E2C4914();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

uint64_t sub_29DE93208(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_29E2BF404();
  }
}

__n128 initializeBufferWithCopyOfBuffer for CycleDateFooterRow(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_29DE93264(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29DE93440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DE93878(unint64_t *a1, unint64_t *a2)
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

void sub_29DE938C8()
{
  if (!qword_2A1A61D00)
  {
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61D00);
    }
  }
}

uint64_t sub_29DE93920(uint64_t a1)
{
  sub_29DE939AC(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DE939AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DE93A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DE93A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DE93AD4()
{
  if (!qword_2A1A619E0)
  {
    sub_29DE9408C(255, &qword_2A1A619F0);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A619E0);
    }
  }
}

uint64_t sub_29DE93B3C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_29DE93BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DE93D94();
    v3 = sub_29E2C4554();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      v27 = v7;
      sub_29E2C34B4();
      v8 = sub_29E2C4A54();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v18 = v17;
        if (v16 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_29E2C4914();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29DE93D94()
{
  if (!qword_2A1A5E070)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29DE93440(&qword_2A1A5E158, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E070);
    }
  }
}

void sub_29DE93E28()
{
  if (!qword_2A1A61D10)
  {
    sub_29E2BCE84();
    sub_29DE93440(&qword_2A1A626A8, MEMORY[0x29EDB9D00]);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61D10);
    }
  }
}

void sub_29DE93EBC()
{
  if (!qword_2A18174B8)
  {
    sub_29E2BE9D4();
    sub_29DE93440(&qword_2A18174C0, MEMORY[0x29EDC2148]);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18174B8);
    }
  }
}

void sub_29DE93F50()
{
  if (!qword_2A18174D0)
  {
    sub_29DE93FAC();
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18174D0);
    }
  }
}

unint64_t sub_29DE93FAC()
{
  result = qword_2A181B680;
  if (!qword_2A181B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B680);
  }

  return result;
}

void sub_29DE94000(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29DE9408C(255, a3);
    sub_29DE93878(a5, a3);
    v8 = sub_29E2C4564();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DE9408C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29DE940D4()
{
  if (!qword_2A1817510)
  {
    sub_29E2C1054();
    sub_29DE93440(&qword_2A1817518, MEMORY[0x29EDB8A18]);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817510);
    }
  }
}

uint64_t sub_29DE942B4(uint64_t a1, int a2)
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

uint64_t sub_29DE942D4(uint64_t result, int a2, int a3)
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

unint64_t sub_29DE94EE0()
{
  result = qword_2A1817728;
  if (!qword_2A1817728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817728);
  }

  return result;
}

unint64_t sub_29DE9509C()
{
  result = qword_2A18177C8;
  if (!qword_2A18177C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18177C8);
  }

  return result;
}