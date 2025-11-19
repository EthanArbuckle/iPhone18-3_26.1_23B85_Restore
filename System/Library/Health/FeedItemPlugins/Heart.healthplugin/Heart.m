uint64_t _s5Heart28BloodPressurePDFHistoryTableC13ConfigurationVwet_0(uint64_t a1, int a2)
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

uint64_t _s5Heart28BloodPressurePDFHistoryTableC13ConfigurationVwst_0(uint64_t result, int a2, int a3)
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

void *sub_29D679B18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_29D679B44(void *a1, uint64_t *a2)
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

void *sub_29D679BDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_29D679C08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_29D679CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29D939D68();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29D679CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_29D679DA0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_29D679D3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29D679DA0(uint64_t a1)
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

uint64_t sub_29D679E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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
    v11 = sub_29D9339F8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D679F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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
    v11 = sub_29D9339F8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D67A134(uint64_t a1, uint64_t a2, int *a3)
{
  sub_29D697F54(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_29D697F54(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_29D933CE8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_29D697F54(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_29D67A394(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_29D697F54(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_29D697F54(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_29D933CE8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = type metadata accessor for MonitorHypertensionSummaryViewModel(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_29D697F54(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_29D67A608@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D938B18();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29D67A63C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_29D938B28();
}

uint64_t sub_29D67A66C(uint64_t a1, uint64_t a2)
{
  sub_29D697F54(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D67A700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D67A768()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67A7A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67A7E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67A818(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29D933A58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D67A8C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D933A58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D67A968()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D67A9B0()
{
  v1 = sub_29D938758();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D67AA40@<X0>(void *a1@<X8>)
{
  result = sub_29D938A48();
  *a1 = v3;
  return result;
}

uint64_t sub_29D67AA98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D67AAD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67AB08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67AB40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67AB7C()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D67AC04()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67AC3C()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67AC8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67ACC8()
{
  sub_29D6A08F8();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v0[v3], 1, v9))
  {
    (*(v10 + 8))(&v0[v3], v9);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D67AE18()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67AE9C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67AED4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67AF0C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D67AF5C()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  sub_29D69417C((v0 + v6));

  return MEMORY[0x2A1C733A0](v0, ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67B018()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_29D69417C((v0 + v5));

  return MEMORY[0x2A1C733A0](v0, v5 + 40, v3 | 7);
}

uint64_t sub_29D67B0B4()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67B150()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67B1E4()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67B278()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67B314()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67B374()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67B3BC()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67B40C()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67B44C()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67B494()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67B4D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67B514()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67B54C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67B58C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67B5CC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67B604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67B64C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D67B684@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29D67B6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D67B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D67B7DC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67B814()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67B8FC()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D67B9C0()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67BA5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29D934178();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29D67BB08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29D934178();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D67BBC0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67BBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AFibBurdenPDFChartViewModel();
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
    v12 = *(a1 + *(a3 + 28) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29D67BCBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel();
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
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D67BD84(uint64_t a1, uint64_t a2)
{
  sub_29D6D6EB0(0, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D67BE20()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D9331D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D67BF84()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67BFC8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67C000()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67C040()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67C078()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67C0B0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67C0E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67C128()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67C16C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67C1A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_29D6A08F8();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    sub_29D6EA5E0(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[13];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_29D67C31C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_29D9339F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  sub_29D6A08F8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  sub_29D6EA5E0(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[13];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_29D67C494(uint64_t a1, uint64_t a2)
{
  sub_29D6F1114();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D67C4F8(uint64_t a1)
{
  sub_29D6F1114();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D67C560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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

    return (v10 + 1);
  }
}

uint64_t sub_29D67C61C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D67C6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D6FAB24(0, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
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

void sub_29D67C7C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D6FAB24(0, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
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

uint64_t sub_29D67C8AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D938B38();
  *a1 = result;
  return result;
}

uint64_t sub_29D67C8D8(uint64_t *a1)
{
  v1 = *a1;

  return sub_29D938B48();
}

uint64_t sub_29D67CA30()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67CAB8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67CAF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67CB6C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67CBA4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67CBDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67CC14()
{
  v1 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_29D933CE8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D67CCE0@<X0>(void *a1@<X8>)
{
  result = sub_29D9389A8();
  *a1 = v3;
  return result;
}

uint64_t sub_29D67CD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D933CE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D67CDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D933CE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D67CE18()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67CE50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67CE88()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67CEC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67CF14()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  sub_29D936978();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D67CFE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D67D08C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D67D130(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D67D1DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D67D280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
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

    return (v10 + 1);
  }
}

uint64_t sub_29D67D33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9339F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D67D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D67D4B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9339F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D67D568(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_29D9339F8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_29D714AAC(0, &qword_2A17B2D20, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  sub_29D714AAC(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_29D67D734(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_29D9339F8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_29D714AAC(0, &qword_2A17B2D20, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  sub_29D714AAC(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_29D67D900()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67D950()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D67D9E0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67DA28()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67DA64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_29D69417C((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29D67DABC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  sub_29D69417C((v0 + 80));

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29D67DB1C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67DB58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 57, 7);
}

uint64_t sub_29D67DBA0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67DBD8()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7);

  return MEMORY[0x2A1C733A0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67DCE8()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67DDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_29D67DEC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_29D67DFB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D938AF8();
  *a1 = result & 1;
  return result;
}

void sub_29D67E024(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7F1064(v2);
}

uint64_t sub_29D67E05C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D938A88();
  *a1 = result;
  return result;
}

uint64_t sub_29D67E0B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D938AA8();
  *a1 = result;
  return result;
}

uint64_t sub_29D67E0DC(uint64_t *a1)
{
  v1 = *a1;

  return sub_29D938AB8();
}

uint64_t sub_29D67E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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

uint64_t sub_29D67E2F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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

uint64_t sub_29D67E3A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E3E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67E420()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67E468()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E4A0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E4D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67E520()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67E558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67E5A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67E5E8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67E620()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E664()
{
  sub_29D69417C((v0 + 40));

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D67E6AC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E6F0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D67E748()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E780()
{
  sub_29D7382D0();
  sub_29D737AA8(&qword_2A17B3618, sub_29D7382D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29D67E85C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67E894()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67E944()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67E98C()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67E9CC()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67EA7C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67EABC()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67EB28()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67EB88(uint64_t a1, uint64_t a2, int *a3)
{
  sub_29D74C3E8(0, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_29D933CE8();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

void sub_29D67ED5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_29D74C3E8(0, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    v11(v12, a2, a2, v10);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return;
  }

  v13 = sub_29D933CE8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[8];

  v17(v18, a2, a2, v16);
}

uint64_t sub_29D67EF4C()
{
  v1 = type metadata accessor for AFibBurdenAddDataView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  sub_29D936978();
  v6 = (v0 + v3);
  sub_29D74C354(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_29D938738();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v1[6];
  v10 = sub_29D933CE8();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  v11 = *&v6[v1[7] + 8];

  v12 = &v6[v1[8]];
  v13 = sub_29D9339F8();
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  v15 = *&v12[*(v14 + 28)];

  v16 = *&v6[v1[9] + 8];

  v17 = *&v6[v1[10] + 8];

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D67F160()
{
  sub_29D74D240();
  sub_29D74C618();
  sub_29D74D9E0(&qword_2A17B3A10, sub_29D74C618);
  swift_getOpaqueTypeConformance2();
  sub_29D69AB60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29D67F244()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D67F27C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67F2C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D67F314()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D67F364()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D67F3BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29D754194(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29D67F49C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29D754194(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D67F588(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AFibBurdenPDFChartViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_29D67F62C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = type metadata accessor for AFibBurdenPDFChartViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D67F6CC()
{
  v1 = sub_29D936378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67F760()
{
  v1 = sub_29D936378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67F804()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67F84C()
{
  sub_29D69417C((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D67F884()
{
  if (*(v0 + 56))
  {
    sub_29D69417C((v0 + 32));
  }

  if (*(v0 + 96))
  {
    sub_29D69417C((v0 + 72));
  }

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29D67F954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BloodPressurePDFViewModel(0);
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

uint64_t sub_29D67FA10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BloodPressurePDFViewModel(0);
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

uint64_t sub_29D67FAC8()
{
  v1 = sub_29D9331D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D67FBC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D67FC10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D67FC50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D67FC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D7647F4(0, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_29D67FD7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D7647F4(0, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_29D67FE64(uint64_t a1)
{
  v2 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D67FED8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D67FF10()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 18) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D67FFA4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  sub_29D936978();
  if (*(v0 + 80))
  {
    sub_29D69417C((v0 + 56));
  }

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29D67FFFC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 57, 7);
}

uint64_t sub_29D680044()
{
  v1 = v0[3];

  if (v0[7])
  {
    sub_29D69417C(v0 + 4);
  }

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D68008C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6800C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D68010C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D680164()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 32);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D6801AC()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6801E4()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D680278()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D68030C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D680344()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
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
    v11 = sub_29D9339F8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_29D6804D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_29D9339F8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

void sub_29D68066C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7B0A9C(v2);
}

void sub_29D6806A0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7B0CC4(v2);
}

id *sub_29D6806D0@<X0>(id *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result _value];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_29D680760()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D680798()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6807D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933468();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_29D680898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933468();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_29D680950()
{
  sub_29D78DD1C(255, &qword_2A17B46B0, sub_29D78E8CC);
  sub_29D78EEF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29D6809CC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D933398();
  result = sub_29D933388();
  *a1 = result;
  return result;
}

uint64_t sub_29D680A54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D680A94()
{
  sub_29D69417C((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D680AD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D680B0C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D680B4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D680BC0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D680C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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
    v11 = sub_29D933318();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D680D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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
    v11 = sub_29D933318();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D680E80()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartDailySumQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D933CE8();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[9];
  v8 = sub_29D933318();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[10], v8);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D680FF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D681028()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartDailySumQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D933CE8();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[9];
  v8 = sub_29D933318();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[10], v8);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D6811D8()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D681218(uint64_t a1, uint64_t a2)
{
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D6812A0(uint64_t a1, uint64_t a2)
{
  sub_29D7A4A08(0, &qword_2A17B49B0, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D6813F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D681428()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D681460()
{
  v1 = sub_29D9359D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D68152C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D681574()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6815AC()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6815E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D68162C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D681664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
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

uint64_t sub_29D681720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9339F8();
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

uint64_t sub_29D6817D8()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D681810()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D681858()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D6818A0()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6818F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D681928()
{
  v1 = sub_29D936378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D6819B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D681A50()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D681A88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D681B6C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D681BA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D681BEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D681C44()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D681C84()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D681CD4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[8])
  {
    v4 = v0[9];
  }

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D681D2C()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D681DD8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D681E20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D681E68()
{
  v1 = sub_29D9340F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D681EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D76F8C0(0);
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

void sub_29D681FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D76F8C0(0);
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

uint64_t sub_29D68206C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D6820AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6820E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  sub_29D69417C((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29D682158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AFibBurdenPDFChartViewModel();
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
    v12 = *(a1 + *(a3 + 28) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29D68221C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel();
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
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D6822E4(uint64_t a1, uint64_t a2)
{
  sub_29D7D5594(0, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D682380()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D9331D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D6824A8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D682538()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68258C()
{
  v1 = sub_29D933A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D682628()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D682660()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  sub_29D936978();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D682730()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D682768()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D68280C()
{
  v1 = type metadata accessor for AFibBurdenPDFChartPointProviderFactory();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);

  if (*(v0 + 56))
  {
    sub_29D69417C((v0 + 32));
  }

  if (*(v0 + 96))
  {
    sub_29D69417C((v0 + 72));
  }

  v7 = v2 | v5;
  v8 = (v2 + 120) & ~v2;
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + v5 + 8) & ~v5;

  v11 = v0 + v8;
  v12 = sub_29D933CE8();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);

  v13(v0 + v10, v12);

  return MEMORY[0x2A1C733A0](v0, v10 + v6, v7 | 7);
}

uint64_t sub_29D6829CC()
{
  v1 = sub_29D9331D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  sub_29D8043A8(0, &qword_2A17B57C0, sub_29D70AA6C, sub_29D70AFA0, MEMORY[0x29EDB86F0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  if (*(v0 + 56))
  {
    sub_29D69417C((v0 + 32));
  }

  if (*(v0 + 96))
  {
    sub_29D69417C((v0 + 72));
  }

  v10 = v3 | v8;
  v11 = (v3 + 160) & ~v3;
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v8 + 40) & ~v8;

  sub_29D69417C((v0 + 120));
  (*(v2 + 8))(v0 + v11, v1);
  sub_29D69417C((v0 + v12));
  (*(v7 + 8))(v0 + v13, v6);

  return MEMORY[0x2A1C733A0](v0, v13 + v9, v10 | 7);
}

uint64_t sub_29D682BAC()
{
  sub_29D69417C((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D682BF4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D682C2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D682C74()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D682CC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D682D04(uint64_t a1, uint64_t a2, int *a3)
{
  sub_29D809ADC(0, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_29D809ADC(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_29D809ADC(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for HealthCalendarDayContent(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_29D682F30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_29D809ADC(0, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29D809ADC(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_29D809ADC(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for HealthCalendarDayContent(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29D683158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_29D683224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9339F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_29D6832FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D9389E8();
  *a1 = result;
  return result;
}

uint64_t sub_29D683328(uint64_t *a1)
{
  v1 = *a1;

  return sub_29D9389F8();
}

uint64_t sub_29D683354(uint64_t a1, uint64_t a2)
{
  sub_29D80EA1C(0, &qword_2A17B5908, sub_29D80E528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D68341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D814338(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HealthCalendarViewModel();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_29D814338(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_29D6835BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D814338(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HealthCalendarViewModel();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_29D814338(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_29D68379C()
{
  v1 = type metadata accessor for HealthCalendarView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_29D814338(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D933CE8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
    v8 = *(v5 + v7[7]);

    v9 = *(v5 + v7[8]);

    v10 = (v5 + v7[10]);
  }

  else
  {
    v10 = (v0 + v3);
  }

  v11 = *v10;

  v12 = v5 + *(v1 + 20);
  v13 = sub_29D933CE8();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for HealthCalendarViewModel();
  v15 = *(v12 + *(v14 + 20));

  v16 = *(v14 + 24);
  v17 = sub_29D9331D8();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  v18 = *(v1 + 24);
  sub_29D814338(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_29D938C58();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
    v20 = *(v5 + v18);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D683A34()
{
  sub_29D81359C();
  sub_29D812F08();
  sub_29D813770();
  sub_29D81416C(&qword_2A17B5BB8, sub_29D812F08);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29D683ADC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683B14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D683B4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D683B84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D683BD0()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 18) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D683C64()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D683C9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D683CEC()
{
  sub_29D69417C((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D683D2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683D64()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D683DAC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683DE4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683E28()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683E84()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D683EBC()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683EF4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D683F2C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D683F6C()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D683FAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 26, 7);
}

uint64_t sub_29D683FE4()
{

  return MEMORY[0x2A1C733A0](v0, 27, 7);
}

uint64_t sub_29D68401C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D684064()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D68409C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D6840D4()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D684198()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D684240()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684280()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

void sub_29D6842E0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7B150C(v2);
}

uint64_t sub_29D684310()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D684350()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D6843A0()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D6843E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684468()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D6844C8()
{
  sub_29D69417C((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D684520()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D684558()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6845A0()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D684600()
{
  v1 = sub_29D933A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D68469C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6846D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

void sub_29D68484C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }
}

uint64_t sub_29D684930()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D684968()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D6849A8()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6849E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D684A20()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684A60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D684AA8()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D684AE0()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D684B18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684BC8()
{
  v1 = *(_s14descr2A243C641C13ActionHandlerC8UserDataVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = sub_29D9346E8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = _s14descr2A243C641C15SettingsContentVMa();
    v8 = *(v5 + *(v7 + 28) + 8);

    v9 = (v5 + *(v7 + 32));
    if (v9[1])
    {

      v10 = v9[3];

      v11 = v9[5];
    }
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D684D0C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684D44(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D684DB0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D684E24()
{
  sub_29D69417C((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D684E5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29D684EAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D684EE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_29D69417C((v0 + 80));

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29D684F4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D684FD8()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D68507C()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_29D6AA284(*(v0 + v5), v6);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D685130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D685168(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D934358();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D6851D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D934358();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D685244(uint64_t a1, uint64_t a2)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D6852E0(uint64_t a1, uint64_t a2)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D685388(uint64_t a1, uint64_t a2)
{
  sub_29D85ABE0(0, &qword_2A17B67C8, MEMORY[0x29EDBC390]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D685410(uint64_t a1, uint64_t a2)
{
  sub_29D85ABE0(0, &qword_2A17B67C8, MEMORY[0x29EDBC390]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D6854EC()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D685574()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6855B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6855F0()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D685628()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29D685688()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

id sub_29D6856C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_29D685718()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D685750()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D685788()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D6857D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D685810()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D685868()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6858A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6858D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D685920()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29D685968()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6859A0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D6859D8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D685A18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D685A50()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D685B00()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D685BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D938938();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D685BCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_29D935E88();
  return sub_29D938948();
}

uint64_t sub_29D685C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D86F9D8(0, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29D86F9D8(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_29D685D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D86F9D8(0, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29D86F9D8(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29D685EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevenDayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D685F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevenDayView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D685FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D86F9D8(0, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
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

void sub_29D6860A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D86F9D8(0, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }
}

uint64_t sub_29D686194()
{
  v1 = type metadata accessor for SevenDayView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D938818();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
    v8 = v7[5];
    v9 = sub_29D9386B8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
    v10 = *&v5[v7[10]];

    v11 = *&v5[v7[11]];

    v12 = *&v5[v7[12]];

    v13 = *&v5[v7[17]];

    v14 = *&v5[v7[18]];
  }

  else
  {
    v15 = *v5;
  }

  sub_29D86E6C4(*&v5[*(v1 + 20)], *&v5[*(v1 + 20) + 8], v5[*(v1 + 20) + 16]);
  v16 = &v5[*(v1 + 32)];
  v17 = *(v16 + 1);

  v18 = *(v16 + 3);

  v19 = *(v16 + 4);

  v20 = *(v16 + 6);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D686404()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68643C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68647C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D6864CC()
{
  v1 = sub_29D936378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D686590()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6865D4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68660C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D878EB4(0, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29D878EB4(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_29D878EB4(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_29D6867DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D878EB4(0, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_29D878EB4(0, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_29D878EB4(0, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_29D6869C0()
{
  v1 = type metadata accessor for HealthCalendarDaysOfWeekRow();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_29D878EB4(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D933CE8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  sub_29D878EB4(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_29D938C58();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[*(v1 + 24)];
  sub_29D878EB4(0, &qword_2A17B15F8, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29D933CE8();
    (*(*(v12 - 8) + 8))(v11, v12);
    v13 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
    v14 = *&v11[v13[7]];

    v15 = *&v11[v13[8]];

    v11 += v13[10];
  }

  v16 = *v11;

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D686C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9346E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_29D686D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9346E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_29D686DF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D686E30()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D686E68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D686EB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D686F04()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D6870E4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68711C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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

uint64_t sub_29D687228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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

uint64_t sub_29D6872E0()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D687320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D687358()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D6873A0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6873D8()
{
  v1 = sub_29D936378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D68749C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6874D4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

uint64_t sub_29D687514()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D68755C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D6875AC()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6875EC()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D68763C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D687674()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D6876B4()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6876F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D687738()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D687820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9331D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D6878DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9331D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D6879A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29D6879E4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D687A78()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D687ACC()
{
  sub_29D69BECC();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_29D9342F8();
  }

  else
  {
    v5 = sub_29D934358();
  }

  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D687C5C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D687C9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D687CD4()
{
  v1 = v0[2];
  sub_29D936978();
  v2 = v0[5];

  sub_29D69417C(v0 + 6);

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29D687D1C()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 30) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_29D6AA284(*(v0 + v5), v6);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D687DCC()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 37) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_29D6AA284(*(v0 + v5), v6);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D687E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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
    v11 = sub_29D9331D8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D687FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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
    v11 = sub_29D9331D8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D6880D4()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D688184()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D6881C4()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D688208()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D688264()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68829C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9346E8();
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

uint64_t sub_29D68835C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9346E8();
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

uint64_t sub_29D688418()
{
  v1 = *(v0 + 16);
  sub_29D936978();
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D688458(uint64_t a1, uint64_t a2)
{
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D6884F4(uint64_t a1, uint64_t a2)
{
  sub_29D8B87C8(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D688594(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D688640(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D6886EC()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D688724()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D688764()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68879C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D6887EC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D688850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9346E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29D8C0D98(0, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29D688994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9346E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    sub_29D8C0D98(0, &qword_2A17B4EE8, type metadata accessor for HypertensionNotificationsSettingsViewModel.Footer);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29D688AD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_29D8C0D98(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_29D688BA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_29D8C0D98(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D688C64()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D688C9C()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29D934178();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29D688DE4(uint64_t a1, uint64_t a2)
{
  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D688E6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_29D8C8C28(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_29D688F0C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D688F44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D688F94()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D688FCC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D689004()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68903C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D689074()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D689194()
{
  sub_29D8D5AD4(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  sub_29D936978();
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 20) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  return MEMORY[0x2A1C733A0](v0, v9 + 8, v2 | 7);
}

uint64_t sub_29D6892F4()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D689334()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68936C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_29D9331D8();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
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

uint64_t sub_29D689474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29D9331D8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29D68957C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D6895B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D689600()
{
  v1 = sub_29D9336F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29D6896A8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D6896E8()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D689728()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29D689760()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D689798()
{
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D9336F8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D6898F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D8F3D14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_29D6899EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D8F3D14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_29D689AE4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D689B48()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D689B80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D689BB8()
{
  v1 = v0[2];
  sub_29D936978();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D689C00()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D689C64()
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D689CF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D689D30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D689D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9331D8();
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

uint64_t sub_29D689E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9331D8();
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

uint64_t sub_29D689F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D938818();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29D9386B8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_29D68A018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D938818();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29D9386B8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29D68A120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AFibBurdenPDFChartViewModel();
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
    v12 = *(a1 + *(a3 + 28) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29D68A1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel();
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
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D68A2CC(uint64_t a1, uint64_t a2)
{
  sub_29D8FB3F0(0, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D68A368()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D9331D8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v0 + v4);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D68A47C()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartPoint() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_29D9331D8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D68A578()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68A5F8()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D68A638()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D68A670()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68A6DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  sub_29D936978();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D68A71C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D68A754()
{
  v1 = sub_29D935AB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D68A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
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
    sub_29D6EA5E0(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 52);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29D68A9A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D9339F8();
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
    sub_29D6EA5E0(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 52);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29D68AACC(uint64_t a1, uint64_t a2)
{
  sub_29D914C24(0, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D68AB74(uint64_t a1, uint64_t a2)
{
  sub_29D914CDC(0, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D68AC30()
{
  v1 = sub_29D937898();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D68ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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

uint64_t sub_29D68AD80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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

uint64_t sub_29D68AE38()
{
  v1 = (type metadata accessor for AFibBurdenPDFChartSleepQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D933CE8();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D68AF2C()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68AF64()
{
  MEMORY[0x29ED6BF30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68AF9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D68AFDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29D68B01C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D68B064()
{
  v1 = sub_29D934FF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 168) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  v9 = *(v0 + 56);

  v10 = *(v0 + 64);

  v11 = *(v0 + 72);

  v12 = *(v0 + 88);

  v13 = *(v0 + 104);

  sub_29D69417C((v0 + 128));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D68B178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_29D6A08F8();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D68B268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_29D6A08F8();
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_29D68B364(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_29D92C5D8();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_29D68B410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_29D92C5D8();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_29D68B4B8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_29D939D28();
  [v4 setUniqueIdentifier_];
}

uint64_t sub_29D68B564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D933CE8();
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

uint64_t sub_29D68B620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D933CE8();
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

uint64_t sub_29D68B6E4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D68B71C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

id sub_29D68B830(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = HKHeartRateLocalizedString();
  v10 = MEMORY[0x29EDBA0F8];
  v11 = HKHeartRateLocalizedString();
  v12 = [v10 localizedStringWithFormat:v11, a3];

  v13 = [MEMORY[0x29EDC7928] alertControllerWithTitle:v9 message:v12 preferredStyle:1];
  v14 = MEMORY[0x29EDBA0F8];
  v15 = HKHeartRateLocalizedString();
  v16 = [v14 localizedStringWithFormat:v15, a3];

  v17 = MEMORY[0x29EDC7920];
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = sub_29D68BA80;
  v27[3] = &unk_29F3569F8;
  v28 = v7;
  v29 = a3;
  v18 = v7;
  v19 = [v17 actionWithTitle:v16 style:0 handler:v27];
  v20 = MEMORY[0x29EDC7920];
  v21 = HKHeartRateLocalizedString();
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_29D68BA94;
  v25[3] = &unk_29F356A20;
  v26 = v8;
  v22 = v8;
  v23 = [v20 actionWithTitle:v21 style:1 handler:v25];

  [v13 addAction:v19];
  [v13 addAction:v23];

  return v13;
}

uint64_t sub_29D68BA94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id HKNRDeviceCapabilityECG2UpgradeBackgroundDelivery()
{
  v0 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDString:@"253F2ED0-FFC6-4D36-A387-B6965C9E4682"];

  return v0;
}

id HKNRDeviceCapabilityHeartRateV2()
{
  v0 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];

  return v0;
}

uint64_t HKNRActivePairedDeviceSupportsECG2UpgradeBackgroundDelivery()
{
  v0 = [MEMORY[0x29EDC5E18] sharedInstance];
  v1 = [v0 getActivePairedDevice];
  v2 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDString:@"253F2ED0-FFC6-4D36-A387-B6965C9E4682"];
  v3 = [v1 supportsCapability:v2];

  return v3;
}

uint64_t sub_29D68BD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v9 = a1;
  *(v6 + 16) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v41 = a2;
  sub_29D693FE0(a2, v6 + 64);
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  v42 = v6;
  v10 = MEMORY[0x29EDCA190];
  v45 = *(v9 + 16);
  if (!v45)
  {
LABEL_27:
    sub_29D694070(v41, &qword_2A17B1020, MEMORY[0x29EDC9C68]);
    result = v42;
    *(v42 + 24) = v10;
    return result;
  }

  v44 = v9 + 32;
  sub_29D935E88();
  v39 = a3;
  v40 = a4;
  result = sub_29D695554(a3);
  v12 = 0;
  v43 = v9;
  while (2)
  {
    if (v12 < *(v9 + 16))
    {
      sub_29D6945AC(v44 + 40 * v12, v54);
      v46 = v12 + 1;
      sub_29D693E2C(v54, v54[3]);
      v13 = sub_29D935818();
      result = sub_29D69417C(v54);
      v14 = 0;
      v15 = *(v13 + 16);
      v47 = v13 + 32;
      while (1)
      {
        v16 = 0uLL;
        v17 = v15;
        v18 = 0uLL;
        v19 = 0uLL;
        if (v14 != v15)
        {
          if (v14 >= *(v13 + 16))
          {
            goto LABEL_30;
          }

          v17 = v14 + 1;
          *&v52[0] = v14;
          sub_29D6945AC(v47 + 40 * v14, v52 + 8);
          v16 = v52[0];
          v18 = v52[1];
          v19 = v52[2];
        }

        v53[0] = v16;
        v53[1] = v18;
        v53[2] = v19;
        if (!v19)
        {
          break;
        }

        v48 = v16;
        sub_29D679D3C((v53 + 8), v52);
        v20 = v10[2];
        v21 = v48;
        if (v48 >= v20)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_29D68FE18(0, v20 + 1, 1, v10, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
          }

          v23 = v10[2];
          v22 = v10[3];
          if (v23 >= v22 >> 1)
          {
            v10 = sub_29D68FE18((v22 > 1), v23 + 1, 1, v10, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
          }

          v10[2] = v23 + 1;
          v10[v23 + 4] = MEMORY[0x29EDCA190];
        }

        sub_29D6945AC(v52, v49);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = sub_29D702C34(v10);
          v10 = result;
          if ((v21 & 0x8000000000000000) != 0)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        if (v21 >= v10[2])
        {
          goto LABEL_29;
        }

        v24 = &v10[v21];
        v27 = v24[4];
        v25 = v24 + 4;
        v26 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v25 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_29D690538(0, v26[2] + 1, 1, v26, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
          *v25 = v26;
        }

        v30 = v26[2];
        v29 = v26[3];
        if (v30 >= v29 >> 1)
        {
          *v25 = sub_29D690538((v29 > 1), v30 + 1, 1, v26, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
        }

        sub_29D69417C(v52);
        v32 = v50;
        v31 = v51;
        v33 = sub_29D693DDC(v49, v50);
        v34 = *(*(v32 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v33, v33);
        v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v37 + 16))(v36);
        sub_29D693D44(v30, v36, v25, v32, v31);
        result = sub_29D69417C(v49);
        v14 = v17;
      }

      v12 = v46;
      v9 = v43;
      if (v46 != v45)
      {
        continue;
      }

      sub_29D694784(v39);

      goto LABEL_27;
    }

    break;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29D68C234@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + 40 * v3;
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v9[0] = v6;
  result = sub_29D6945AC(v5 + 32, v9 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  a1[2] = v9[2];
  return result;
}

uint64_t sub_29D68C2D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v116 = sub_29D936F88();
  v6 = *(v116 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v116, v8);
  v115 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_29D935C18();
  v108 = *(v112 - 8);
  v10 = *(v108 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v112, v11);
  v111 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v105 - v15;
  v17 = sub_29D935488();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v109 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29D934DB8())
  {
    v21 = sub_29D68CEE4(a2);
  }

  else
  {
    v21 = sub_29D68D1E0();
  }

  v22 = v21;
  sub_29D935498();
  v23 = sub_29D934EE8();
  v24 = [v23 CGColor];

  v117 = v16;
  sub_29D935C08();
  sub_29D693FE0(v3 + 64, &v136);
  v125 = a2;
  v121 = v22;
  v122 = a1;
  if (*(&v137 + 1))
  {
    sub_29D679D3C(&v136, &v139);
    v25 = *(v3 + 16);
    if (*(v25 + 16))
    {
      sub_29D6945AC(v25 + 32, &v136);
      sub_29D693E2C(&v136, *(&v137 + 1));
      v26 = sub_29D935818();
      sub_29D69417C(&v136);
      if (*(v25 + 16) <= 1uLL)
      {
      }

      else
      {
        v126 = v6;
        sub_29D6945AC(v25 + 72, &v136);
        sub_29D693E2C(&v136, *(&v137 + 1));
        v124 = sub_29D935818();
        sub_29D69417C(&v136);
        *&v128 = v129;
        sub_29D68F3C4(0, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        v127 = xmmword_29D93DDB0;
        *(inited + 16) = xmmword_29D93DDB0;
        sub_29D6945AC(&v139, inited + 32);
        v129[0] = inited;
        v28 = swift_initStackObject();
        *(v28 + 16) = v127;
        v29 = MEMORY[0x29EDC1FC0];
        v30 = v107;
        *(v28 + 56) = v107;
        *(v28 + 64) = v29;
        v31 = sub_29D693F78((v28 + 32));
        (*(v106 + 16))(v31, v109, v30);
        v129[1] = v28;
        v129[2] = v26;
        v32 = swift_initStackObject();
        *(v32 + 16) = v127;
        v33 = MEMORY[0x29EDC2290];
        v34 = v112;
        *(v32 + 56) = v112;
        *(v32 + 64) = v33;
        v35 = sub_29D693F78((v32 + 32));
        v36 = *(v108 + 16);
        v37 = v117;
        v36(v35, v117, v34);
        v129[3] = v32;
        v129[4] = v124;
        v38 = swift_initStackObject();
        *(v38 + 16) = v127;
        *(v38 + 56) = v34;
        *(v38 + 64) = MEMORY[0x29EDC2290];
        v39 = sub_29D693F78((v38 + 32));
        v36(v39, v37, v34);
        v129[5] = v38;
        v40 = swift_allocObject();
        *(v40 + 16) = v127;
        v41 = MEMORY[0x29EDC2C00];
        *(v40 + 56) = v116;
        *(v40 + 64) = v41;
        v42 = sub_29D693F78((v40 + 32));
        sub_29D68D424(0, v42);
        v43 = 0;
        v129[6] = v40;
        v44 = 0.0;
        do
        {
          v46 = *(v128 + 8 * v43);
          v47 = *(v46 + 16);
          v48 = 0.0;
          if (v47)
          {
            v49 = v46 + 32;
            v50 = *(v128 + 8 * v43);
            sub_29D935E88();
            do
            {
              sub_29D6945AC(v49, &v136);
              sub_29D934E48();
              sub_29D934E58();
              sub_29D934DD8();
              sub_29D693E2C(&v136, *(&v137 + 1));
              a2 = v125;
              sub_29D935118();
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v58 = v57;
              sub_29D69417C(&v136);
              v145.origin.x = v52;
              v145.origin.y = v54;
              v145.size.width = v56;
              v145.size.height = v58;
              Height = CGRectGetHeight(v145);

              if (Height > v48)
              {
                v48 = Height;
              }

              v49 += 40;
              --v47;
            }

            while (v47);
          }

          ++v43;
          v45 = *(v3 + 56);
          if (v48 > v45)
          {
            v45 = v48;
          }

          v44 = v44 + v45;
        }

        while (v43 != 7);
        sub_29D68F3C4(0, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
        swift_arrayDestroy();
        v60 = sub_29D934E08();
        v22 = v121;
        v6 = v126;
        if ((v60 & 1) == 0)
        {
          sub_29D934E28();
          sub_29D935478();
        }

        sub_29D693E2C(&v139, *(&v140 + 1));
        sub_29D935128();
      }
    }

    sub_29D69417C(&v139);
  }

  else
  {
    sub_29D694070(&v136, &qword_2A17B1020, MEMORY[0x29EDC9C68]);
  }

  v61 = *(v3 + 16);
  v143 = 0;
  v144 = 0;
  v142 = v61;
  v114 = v61;
  sub_29D935E88();
  sub_29D68C234(&v136);
  v140 = v137;
  v141 = v138;
  v139 = v136;
  if (v138)
  {
    v113 = (v6 + 8);
    v126 = v22 + 32;
    v110 = (v108 + 8);
    v120 = v3;
    do
    {
      v65 = v139;
      sub_29D679D3C((&v139 + 8), v134);
      sub_29D693E2C(v134, v135);
      v66 = sub_29D935818();
      sub_29D68D79C(v66);
      v119 = v67;

      v68 = v115;
      sub_29D68D424(0, v115);
      v69 = v116;
      sub_29D935138();
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      (*v113)(v68, v69);
      v146.origin.x = v71;
      v146.origin.y = v73;
      v146.size.width = v75;
      v146.size.height = v77;
      CGRectGetHeight(v146);
      sub_29D935BE8();
      v118 = v65;
      if (v65 >= 1)
      {
        sub_29D935BF8();
      }

      sub_29D68D868(a2);
      sub_29D693E2C(v134, v135);
      result = sub_29D935818();
      v79 = 0;
      *&v127 = *(result + 16);
      v123 = result + 32;
      v124 = result;
      while (1)
      {
        v80 = 0uLL;
        v81 = v127;
        v82 = 0uLL;
        v83 = 0uLL;
        if (v79 != v127)
        {
          if (v79 >= *(v124 + 16))
          {
            goto LABEL_59;
          }

          v81 = v79 + 1;
          *&v131 = v79;
          sub_29D6945AC(v123 + 40 * v79, &v131 + 8);
          v80 = v131;
          v82 = v132;
          v83 = v133;
        }

        v136 = v80;
        v137 = v82;
        v138 = v83;
        if (!v83)
        {
          break;
        }

        v128 = v80;
        result = sub_29D679D3C((&v136 + 8), &v131);
        v84 = v128;
        if ((v128 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        if (v128 >= *(v22 + 16))
        {
          goto LABEL_58;
        }

        v85 = *(v126 + 8 * v128);
        sub_29D934E48();
        if (sub_29D934DB8())
        {
          v86 = *(v3 + 24);
          if (v84 < *(v86 + 16))
          {
            v87 = *(v86 + 8 * v84 + 32);
            sub_29D935E88();
            v88 = sub_29D934E48();
            sub_29D934E58();
            Width = CGRectGetWidth(v147);
            v90 = *(v87 + 16);
            if (v90)
            {
              *&v128 = v88;
              v91 = Width * 0.23;
              v92 = v87 + 32;
              v93 = 0.0;
              do
              {
                sub_29D6945AC(v92, v130);
                sub_29D934E48();
                sub_29D934E58();
                sub_29D934DD8();
                sub_29D693E2C(v130, v130[3]);
                sub_29D935118();
                v95 = v94;
                v97 = v96;
                v99 = v98;
                v101 = v100;
                sub_29D69417C(v130);
                v148.origin.x = v95;
                v148.origin.y = v97;
                v148.size.width = v99;
                v148.size.height = v101;
                v102 = CGRectGetWidth(v148);

                if (v93 >= v102)
                {
                  v103 = v93;
                }

                else
                {
                  v103 = v102;
                }

                if (v102 > v103)
                {
                  v103 = v102;
                }

                if (v103 > v91)
                {
                  v93 = v103;
                }

                else
                {
                  v93 = v91;
                }

                v92 += 40;
                --v90;
              }

              while (v90);

              v3 = v120;
              a2 = v125;
            }

            else
            {
            }

            sub_29D693E2C(&v131, *(&v132 + 1));
            sub_29D935118();
            CGRectGetWidth(v149);
            sub_29D934DC8();
            sub_29D934DC8();
            sub_29D934DD8();
            v22 = v121;
          }
        }

        else
        {
          sub_29D934E38();
        }

        sub_29D693E2C(&v131, *(&v132 + 1));
        sub_29D935128();

        result = sub_29D69417C(&v131);
        v79 = v81;
      }

      sub_29D934E38();
      if (v118 >= *(v114 + 16) - 1)
      {
        v62 = sub_29D934EE8();
        v63 = [v62 CGColor];

        v64 = v111;
        sub_29D935C08();
        sub_29D935BF8();
        (*v110)(v64, v112);
      }

      else
      {
        v104 = *(v3 + 48);
        sub_29D934E38();
      }

      sub_29D69417C(v134);
      sub_29D68C234(&v136);
      v140 = v137;
      v141 = v138;
      v139 = v136;
    }

    while (v138);
  }

  (*(v108 + 8))(v117, v112);
  return (*(v106 + 8))(v109, v107);
}

char *sub_29D68CEE4(unint64_t a1)
{
  v4 = *(v1 + 24);
  if (!*(v4 + 16))
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D934DC8();
  MaxX = CGRectGetMaxX(v38);
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = MaxX;
  v33 = v4;
  v9 = *(v4 + 32);
  v35 = v4 + 32;
  v10 = sub_29D935E88();
  v11 = sub_29D693E70(v10);

  v3 = v8 - v11;
  v2 = sub_29D68F5F0(0, 1, 1, MEMORY[0x29EDCA190]);
  v4 = *(v2 + 2);
  v7 = *(v2 + 3);
  a1 = v4 + 1;
  if (v4 >= v7 >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *(v2 + 2) = a1;
    *&v2[8 * v4 + 32] = v3;
    v12 = *(v33 + 16);
    if (v12 < 2)
    {
      break;
    }

    sub_29D935E88();
    v4 = 1;
    v7 = &off_29D93D000;
    v34 = v12;
    while (v4 < v12)
    {
      v13 = *(v35 + 8 * v4);
      sub_29D935E88();
      sub_29D934E48();
      sub_29D934E58();
      Width = CGRectGetWidth(v39);
      v15 = *(v13 + 16);
      if (v15)
      {
        v36 = v2;
        v16 = Width * 0.23;
        v17 = v13 + 32;
        v18 = 0.0;
        do
        {
          sub_29D6945AC(v17, v37);
          sub_29D934E48();
          sub_29D934E58();
          sub_29D934DD8();
          sub_29D693E2C(v37, v37[3]);
          sub_29D935118();
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          sub_29D69417C(v37);
          v40.origin.x = v20;
          v40.origin.y = v22;
          v40.size.width = v24;
          v40.size.height = v26;
          v27 = CGRectGetWidth(v40);

          if (v18 >= v27)
          {
            v28 = v18;
          }

          else
          {
            v28 = v27;
          }

          if (v27 > v28)
          {
            v28 = v27;
          }

          if (v28 > v16)
          {
            v18 = v28;
          }

          else
          {
            v18 = v16;
          }

          v17 += 40;
          --v15;
        }

        while (v15);

        v2 = v36;
        v12 = v34;
      }

      else
      {

        v18 = 0.0;
      }

      v30 = *(v2 + 2);
      v29 = *(v2 + 3);
      a1 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v2 = sub_29D68F5F0((v29 > 1), v30 + 1, 1, v2);
      }

      ++v4;
      v3 = v3 - v18;
      *(v2 + 2) = a1;
      v7 = &v2[8 * v30];
      *(v7 + 4) = v3;
      if (v4 == v12)
      {

        a1 = *(v2 + 2);
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v2 = sub_29D68F5F0((v7 > 1), a1, 1, v2);
  }

LABEL_25:
  v31 = *(v2 + 3);
  if (a1 >= v31 >> 1)
  {
    v2 = sub_29D68F5F0((v31 > 1), a1 + 1, 1, v2);
  }

  *(v2 + 2) = a1 + 1;
  *&v2[8 * a1 + 32] = 0;
  return v2;
}

uint64_t sub_29D68D1E0()
{
  v1 = *(v0 + 24);
  v26 = *(v1 + 16);
  if (v26)
  {
    v2 = 0;
    v25 = v1 + 32;
    v3 = MEMORY[0x29EDCA190];
    v4 = 0.0;
    v24 = *(v0 + 24);
    while (v2 < *(v1 + 16))
    {
      v7 = *(v25 + 8 * v2);
      sub_29D935E88();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_29D68F5F0(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_29D68F5F0((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      *&v3[8 * v9 + 32] = v4;
      sub_29D934E48();
      sub_29D934E58();
      Width = CGRectGetWidth(v28);
      v11 = *(v7 + 16);
      if (v11)
      {
        v12 = Width * 0.23;
        v13 = v7 + 32;
        v5 = 0.0;
        do
        {
          sub_29D6945AC(v13, v27);
          sub_29D934E48();
          sub_29D934E58();
          sub_29D934DD8();
          sub_29D693E2C(v27, v27[3]);
          sub_29D935118();
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          sub_29D69417C(v27);
          v29.origin.x = v15;
          v29.origin.y = v17;
          v29.size.width = v19;
          v29.size.height = v21;
          v22 = CGRectGetWidth(v29);

          if (v5 >= v22)
          {
            v23 = v5;
          }

          else
          {
            v23 = v22;
          }

          if (v22 > v23)
          {
            v23 = v22;
          }

          if (v23 > v12)
          {
            v5 = v23;
          }

          else
          {
            v5 = v12;
          }

          v13 += 40;
          --v11;
        }

        while (v11);

        v1 = v24;
      }

      else
      {

        v5 = 0.0;
      }

      ++v2;

      v4 = v4 + v5;
      if (v2 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D68D424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_29D935378();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D695880(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v30 - v12;
  v14 = sub_29D934F68();
  v15 = *MEMORY[0x29EDC7650];
  v16 = sub_29D69567C(0, &qword_2A17B1038, 0x29EDC7688);
  v17 = sub_29D93A5B8();
  v34 = v16;
  *&v33 = v17;
  sub_29D6940E0(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v14;
  sub_29D6922EC(v32, v15, isUniquelyReferenced_nonNull_native);
  v19 = v31;
  v20 = sub_29D933AA8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D68F3C4(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_29D93DDB0;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v23 = MEMORY[0x29EDC9C10];
    *(result + 56) = MEMORY[0x29EDC9BA8];
    *(result + 64) = v23;
    *(result + 32) = a1 + 1;
    v24 = sub_29D9334A8();
    v26 = v25;
    if (*(v22 + 16))
    {
      v27 = sub_29D939D78();
      v29 = v28;

      v26 = v29;
    }

    else
    {
      v27 = v24;
    }

    sub_29D6940F0(v13);
    (*(v4 + 104))(v8, *MEMORY[0x29EDC1F60], v3);
    return MEMORY[0x29ED67390](v27, v26, v8, v19);
  }

  return result;
}

uint64_t sub_29D68D79C(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 32);
    v4 = 0.0;
    do
    {
      sub_29D934E48();
      sub_29D934E58();
      sub_29D934DD8();
      v5 = v3[4];
      sub_29D693E2C(v3, v3[3]);
      sub_29D935118();
      Height = CGRectGetHeight(v7);

      if (Height > v4)
      {
        v4 = Height;
      }

      v3 += 5;
      --v2;
    }

    while (v2);
  }

  *(v1 + 56);
  return result;
}

uint64_t sub_29D68D868(uint64_t a1)
{
  v3 = sub_29D936F88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29D934E08();
  if ((result & 1) == 0)
  {
    v10 = sub_29D934DA8();
    sub_29D68D424(v10, v8);
    sub_29D935148();
    (*(v4 + 8))(v8, v3);
    sub_29D934E28();
    result = sub_29D934DA8();
    if (v10 != result)
    {
      v11 = *(v1 + 32);
      if (v11)
      {
        v12 = *(v1 + 40);
        v13 = v11(a1);
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = v13 + 32;
          do
          {
            sub_29D6945AC(v15, v17);
            sub_29D693E2C(v17, v17[3]);
            sub_29D935128();
            sub_29D69417C(v17);
            v15 += 40;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29D68DA28(uint64_t a1)
{
  v18 = *(a1 + 16);
  if (v18)
  {
    v2 = 0;
    v17 = a1 + 32;
    v3 = 0.0;
    v4 = 0.0;
    do
    {
      v6 = *(v17 + 8 * v2);
      v19 = v2 + 1;
      v7 = *(v6 + 16);
      result = sub_29D935E88();
      v9 = 0;
      v10 = 0.0;
      while (1)
      {
        v11 = 0uLL;
        v12 = v7;
        v13 = 0uLL;
        v14 = 0uLL;
        if (v9 != v7)
        {
          if (v9 >= *(v6 + 16))
          {
            __break(1u);
            return result;
          }

          v12 = v9 + 1;
          *&v21 = v9;
          sub_29D6945AC(v6 + 32 + 40 * v9, &v21 + 8);
          v11 = v21;
          v13 = v22;
          v14 = v23;
        }

        v24[0] = v11;
        v24[1] = v13;
        v24[2] = v14;
        if (!v14)
        {
          break;
        }

        v20 = v11;
        sub_29D679D3C((v24 + 8), &v21);
        sub_29D934E48();
        sub_29D934E58();
        sub_29D934DD8();
        sub_29D693E2C(&v21, *(&v22 + 1));
        sub_29D935118();
        Height = CGRectGetHeight(v25);

        v16 = *(v1 + 56);
        if (Height > v16)
        {
          v16 = Height;
        }

        v10 = v10 + v16;
        if (v20 < *(v6 + 16) - 1)
        {
          v10 = v10 + *(v1 + 48);
        }

        result = sub_29D69417C(&v21);
        v9 = v12;
      }

      if (v10 > v3)
      {
        v3 = v10;
      }

      v5 = sub_29D693E70(v6);

      v4 = v4 + v5;
      v2 = v19;
    }

    while (v19 != v18);
  }

  return sub_29D934DC8();
}

uint64_t sub_29D68DC20(uint64_t a1)
{
  v20[1] = a1;
  sub_29D6956C4(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  result = swift_initStackObject();
  v20[0] = result;
  *(result + 16) = xmmword_29D93DDB0;
  v21 = v1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDCA190];
    while (v5 < *(v3 + 16))
    {
      v14 = *(v3 + 32 + 8 * v5);
      if (*(v14 + 16))
      {
        sub_29D6945AC(v14 + 32, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_29D690538(0, v6[2] + 1, 1, v6, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
          v25 = v6;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v6 = sub_29D690538((v16 > 1), v17 + 1, 1, v6, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
          v25 = v6;
        }

        v7 = v23;
        v8 = v24;
        v9 = sub_29D693DDC(v22, v23);
        v10 = *(*(v7 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v9, v9);
        v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v12);
        sub_29D693D44(v17, v12, &v25, v7, v8);
        result = sub_29D69417C(v22);
      }

      if (v4 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
LABEL_12:
    v18 = v20[0];
    v19 = v20[0];
    *(v20[0] + 32) = v6;
    sub_29D68DA28(v18);
    swift_setDeallocating();
    return sub_29D694070(v19 + 32, &qword_2A17B1008, MEMORY[0x29EDC9A40]);
  }

  return result;
}

uint64_t sub_29D68DED0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];
  sub_29D694784(v0[4]);
  sub_29D694070((v0 + 8), &qword_2A17B1020, MEMORY[0x29EDC9C68]);

  return swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for BloodPressurePDFHistoryTable.Configuration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29D68E130(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v6 = sub_29D68E85C(&qword_2A17B1050, v5, type metadata accessor for BloodPressurePDFHistoryTable);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v6);
}

uint64_t sub_29D68E20C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_29D68E314(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x29ED6A480](a1, &v6);
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

uint64_t sub_29D68E368(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x29ED6A490](a1, &v7);
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

uint64_t sub_29D68E3E8(uint64_t a1)
{
  v2 = sub_29D68E85C(&qword_2A17B12F0, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_29D68E458(uint64_t a1)
{
  v2 = sub_29D68E85C(&qword_2A17B12F0, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5B388](a1, v2);
}

uint64_t sub_29D68E4CC(uint64_t a1)
{
  v2 = sub_29D68E85C(&qword_2A17B1328, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7C0](a1, v2);
}

uint64_t sub_29D68E544(uint64_t a1, id *a2)
{
  result = sub_29D939D48();
  *a2 = 0;
  return result;
}

uint64_t sub_29D68E5BC(uint64_t a1, id *a2)
{
  v3 = sub_29D939D58();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29D68E63C@<X0>(uint64_t *a1@<X8>)
{
  sub_29D939D68();
  v2 = sub_29D939D28();

  *a1 = v2;
  return result;
}

uint64_t sub_29D68E680()
{
  v1 = *v0;
  v2 = sub_29D939D68();
  v3 = MEMORY[0x29ED6A270](v2);

  return v3;
}

uint64_t sub_29D68E6BC()
{
  v1 = *v0;
  sub_29D939D68();
  sub_29D939E18();
}

uint64_t sub_29D68E710()
{
  v1 = *v0;
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v2 = sub_29D93AE98();

  return v2;
}

uint64_t sub_29D68E784()
{
  v1 = *v0;
  sub_29D93AE58();
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D68E7CC()
{
  v1 = *v0;
  sub_29D93AE58();
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D68E85C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29D68E8B4(uint64_t a1)
{
  v2 = sub_29D68E85C(&qword_2A17B1328, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7F0](a1, v2);
}

uint64_t sub_29D68E924(uint64_t a1)
{
  v2 = sub_29D68E85C(&qword_2A17B1328, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7D0](a1, v2);
}

uint64_t sub_29D68E994(void *a1, uint64_t a2)
{
  v4 = sub_29D68E85C(&qword_2A17B1328, 255, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x2A1C5A7C8](v5, a2, v4);
}

uint64_t sub_29D68EA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D68E85C(&qword_2A17B1328, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7E8](a1, a2, v4);
}

uint64_t sub_29D68EACC()
{
  v2 = *v0;
  sub_29D93AE58();
  sub_29D939C98();
  return sub_29D93AE98();
}

uint64_t sub_29D68EB2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29D939D68();
  v6 = v5;
  if (v4 == sub_29D939D68() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();
  }

  return v9 & 1;
}

uint64_t sub_29D68EBB4()
{
  sub_29D68E85C(&qword_2A17B1048, 255, type metadata accessor for Key);
  sub_29D68E85C(&qword_2A17B13F8, 255, type metadata accessor for Key);

  return sub_29D93ABE8();
}

uint64_t sub_29D68EC78()
{
  sub_29D68E85C(&qword_2A17B13E8, 255, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  sub_29D68E85C(&qword_2A17B13F0, 255, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);

  return sub_29D93ABE8();
}

uint64_t sub_29D68ED3C()
{
  sub_29D68E85C(&qword_2A17B1400, 255, type metadata accessor for HKFeatureAvailabilityContext);
  sub_29D68E85C(&qword_2A17B1408, 255, type metadata accessor for HKFeatureAvailabilityContext);

  return sub_29D93ABE8();
}

uint64_t sub_29D68EE00()
{
  sub_29D68E85C(&qword_2A1A22200, 255, type metadata accessor for HKFeatureIdentifier);
  sub_29D68E85C(&qword_2A17B10C8, 255, type metadata accessor for HKFeatureIdentifier);

  return sub_29D93ABE8();
}

uint64_t sub_29D68EFA8()
{
  sub_29D68E85C(&qword_2A17B3700, 255, type metadata accessor for OpenExternalURLOptionsKey);
  sub_29D68E85C(&qword_2A17B13E0, 255, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_29D93ABE8();
}

_DWORD *sub_29D68F06C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_29D68F07C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29D68F088()
{
  v2 = *v0;
  sub_29D68E85C(&qword_2A17B13B8, 255, type metadata accessor for UILayoutPriority);
  sub_29D68E85C(&unk_2A17B13C0, 255, type metadata accessor for UILayoutPriority);
  return sub_29D93ABE8();
}

uint64_t sub_29D68F14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D68E85C(&qword_2A17B1328, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7D8](a1, a2, a3, v6);
}

uint64_t sub_29D68F1D4()
{
  sub_29D68E85C(&qword_2A17B10B0, 255, type metadata accessor for HKBloodPressureClassificationCategory);
  sub_29D68E85C(&unk_2A17B10B8, 255, type metadata accessor for HKBloodPressureClassificationCategory);

  return sub_29D93ABE8();
}

void sub_29D68F3C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D68F430@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29D939D28();

  *a2 = v5;
  return result;
}

uint64_t sub_29D68F478()
{
  sub_29D68E85C(&unk_2A17B55C0, 255, type metadata accessor for OpenURLOptionsKey);
  sub_29D68E85C(&unk_2A17B13D0, 255, type metadata accessor for OpenURLOptionsKey);

  return sub_29D93ABE8();
}

char *sub_29D68F5F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D69590C(0, &qword_2A17B1028, MEMORY[0x29EDCA210], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29D68F740(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D69590C(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29D68F898(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D695880(0, a5, a6, MEMORY[0x29EDC9E90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D68FADC(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D695880(0, &qword_2A1A24878, sub_29D694718, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D694718();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D68FC70(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D695880(0, &qword_2A17B1108, sub_29D6944FC, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29D6944FC(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D68FE18(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_29D6956C4(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 25;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 3);
  }

  else
  {
    v17 = MEMORY[0x29EDCA190];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D68F3C4(0, a6, a7, a8, MEMORY[0x29EDC9A40]);
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_29D68FFE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D695880(0, &qword_2A17B10E8, sub_29D6944A4, MEMORY[0x29EDC9E90]);
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

char *sub_29D6901E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D69590C(0, &qword_2A17B1358, &type metadata for BloodPressureLogRowViewModel, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D6903D8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
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
    sub_29D694420(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D695734(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_29D690538(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
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
    sub_29D68F3C4(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D695734(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_29D6906A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D695880(0, &qword_2A17B10D8, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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
    type metadata accessor for HKFeatureAvailabilityContext(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_29D6907F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29D93AE58();
  sub_29D939E18();
  v6 = sub_29D93AE98();

  return sub_29D692A5C(a1, a2, v6);
}

unint64_t sub_29D690868(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29D939D68();
  sub_29D93AE58();
  sub_29D939E18();
  v4 = sub_29D93AE98();

  return sub_29D692E54(a1, v4);
}

unint64_t sub_29D6908F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29D93A988();

  return sub_29D692B14(a1, v5);
}

unint64_t sub_29D69093C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_29D9374B8();
  v5 = MEMORY[0x29EDC35C8];
  sub_29D68E85C(&qword_2A17B1068, 255, MEMORY[0x29EDC35C8]);
  v6 = sub_29D939C88();
  return sub_29D692BDC(a1, v6, MEMORY[0x29EDC35C8], &qword_2A17B1070, v5, MEMORY[0x29EDC35D8]);
}

unint64_t sub_29D690A14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_29D9339F8();
  v5 = MEMORY[0x29EDB9BC8];
  sub_29D68E85C(&qword_2A17B1360, 255, MEMORY[0x29EDB9BC8]);
  v6 = sub_29D939C88();
  return sub_29D692BDC(a1, v6, MEMORY[0x29EDB9BC8], &qword_2A17B4C90, v5, MEMORY[0x29EDB9BE8]);
}

unint64_t sub_29D690AEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29D93A6F8();

  return sub_29D692D80(a1, v5);
}

unint64_t sub_29D690B30(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29D93AE58();
  MEMORY[0x29ED6B260](a1);
  v4 = sub_29D93AE98();
  return sub_29D692F58(a1, v4);
}

uint64_t sub_29D690B98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D6941F0();
  v37 = a2;
  result = sub_29D93AB98();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_29D6940E0(v23, v38);
      }

      else
      {
        sub_29D694294(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_29D939D68();
      sub_29D93AE58();
      sub_29D939E18();
      v26 = sub_29D93AE98();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_29D6940E0(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_29D690E5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D694530();
  v36 = a2;
  result = sub_29D93AB98();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_29D679D3C(v25, v37);
      }

      else
      {
        sub_29D6945AC(v25, v37);
        sub_29D935E88();
      }

      v26 = *(v8 + 40);
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
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
      result = sub_29D679D3C(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_29D691114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29D6946C0(0, &qword_2A17B1128);
  v36 = a2;
  result = sub_29D93AB98();
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
        sub_29D6940E0(v25, v37);
      }

      else
      {
        sub_29D694294(v25, v37);
        sub_29D935E88();
      }

      v26 = *(v8 + 40);
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
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
      result = sub_29D6940E0(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_29D6913D4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_29D6942F0();
  v45 = a2;
  result = sub_29D93AB98();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_29D6943BC(v32, v46);
      }

      else
      {
        sub_29D694358(v32, v46);
        sub_29D935E88();
      }

      v33 = *(v13 + 40);
      sub_29D93AE58();
      sub_29D939E18();
      result = sub_29D93AE98();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_29D6943BC(v46, *(v13 + 56) + v31 * v21);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}