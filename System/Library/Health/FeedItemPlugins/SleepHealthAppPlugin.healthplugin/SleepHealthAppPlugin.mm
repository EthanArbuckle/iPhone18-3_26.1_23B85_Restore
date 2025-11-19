BOOL sub_29E5EFC10(void *a1, uint64_t *a2)
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

void *sub_29E5EFC40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_29E5EFC6C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_29E5EFD3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29E5EFD64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29E7541D8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29E5EFD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_29E5FDB3C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_29E5EFDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74EFE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_29E5EFF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E74EFE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_29E5F00D0()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F0108()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F0168()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F01A8()
{
  v1 = sub_29E754048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29E74F0D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29E5F02F8()
{
  v1 = sub_29E754048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_29E74F0D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  sub_29E751758();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_29E5F0470()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F04EC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F0524()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F055C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74F9E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29E5F0608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74F9E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F0708()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F0740(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29E754048();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  sub_29E60DC24(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_29E60DC24(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  sub_29E60DC24(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_29E5F098C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_29E754048();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  sub_29E60DC24(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_29E60DC24(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_29E60DC24(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_29E5F0BD8()
{
  v1 = type metadata accessor for FullScreenSleepScoreCard();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_29E754048();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5]);

  v8 = v1[6];
  sub_29E60DC24(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_29E74EE78();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  sub_29E60DC24(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_29E752AD8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[8];
  sub_29E60DC24(0, &qword_2A1856980, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_29E752A38();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F0E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29E5F0F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74FB08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29E5F0FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74FB08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_29E5F1098(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E613590(0, &qword_2A1856D48, sub_29E6116C4);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_29E5F1164(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E613590(0, &qword_2A1856D48, sub_29E6116C4);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F1228()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F1280(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F12EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F135C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F1394(uint64_t a1, uint64_t a2)
{
  sub_29E619C6C(0, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F1414(uint64_t a1, uint64_t a2)
{
  sub_29E619864();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F1478(uint64_t a1)
{
  sub_29E619864();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F14D4(uint64_t a1, uint64_t a2)
{
  sub_29E6198F8(0, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F1568(uint64_t a1)
{
  sub_29E6198F8(0, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F15F4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F162C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F1664()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_29E5FECBC(v0 + 6);

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29E5F16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F9E8();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_29E5F1778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74F9E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_29E5F1834(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F18A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F1910()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F194C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F19D4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F1A24()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F1B00()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F1B4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 33, 7);
}

uint64_t sub_29E5F1BE8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F1C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F098();
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

uint64_t sub_29E5F1CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74F098();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29E5F1DA8()
{
  sub_29E629DBC();
  sub_29E629CE8();
  sub_29E6298B0();
  sub_29E753198();
  sub_29E62A828(&qword_2A1857468, sub_29E6298B0);
  swift_getOpaqueTypeConformance2();
  sub_29E60DE10();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F1EC4()
{
  v1 = (type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29E74F098();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F1FB8(uint64_t a1)
{
  sub_29E62A1C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F2014()
{
  sub_29E62A1C4();
  sub_29E62A6C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F2080()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
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

void sub_29E5F2218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
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

uint64_t sub_29E5F22F4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F232C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F23B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F048();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E631834();
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

void sub_29E5F24D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E74F048();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E631834();
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

uint64_t sub_29E5F25DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepScoreCardComponentViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29E5F2698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepScoreCardComponentViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_29E5F2794(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29E74EA28();
  __break(1u);
}

uint64_t sub_29E5F27D8(uint64_t *a1)
{
  v2 = *a1;
  sub_29E637388(0, &qword_2A1857840, MEMORY[0x29EDB99B0], MEMORY[0x29EDB9990], MEMORY[0x29EDCA110]);
  return sub_29E7540C8();
}

uint64_t sub_29E5F2910()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F2958()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2990()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 27, 7);
}

uint64_t sub_29E5F29C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2A00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2A58(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_29E5F2A88()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2AC0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2AF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2B30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752D48();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F2BAC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2BE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F2C24()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F2C5C()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  sub_29E64942C();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_29E74FFA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2A1C733A0](v0, v12 + 8, v3 | v7 | 7);
}

uint64_t sub_29E5F2E00()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  sub_29E64942C();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_29E74FFA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2A1C733A0](v0, v12 + 8, v3 | v7 | 7);
}

uint64_t sub_29E5F2FA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74FE48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F3050(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74FE48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F3144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E631834();
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

void sub_29E5F3210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E631834();
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

uint64_t sub_29E5F32C8()
{
  v1 = *(type metadata accessor for SleepScoreRoomScoreBreakdown(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_29E74F2D8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F33D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74EFE8();
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

uint64_t sub_29E5F3494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74EFE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29E5F35B0(uint64_t a1, uint64_t a2)
{
  sub_29E650160();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F3614(uint64_t a1, uint64_t a2)
{
  sub_29E650160();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F36C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E65AA54(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_29E5F37A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E65AA54(0, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F3874(uint64_t a1, uint64_t a2)
{
  sub_29E6538E0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F3904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752DC8();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F3930(uint64_t *a1)
{
  v1 = *a1;

  return sub_29E752DD8();
}

uint64_t sub_29E5F395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_29E5F3AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_29E5F3C98()
{
  v1 = type metadata accessor for SleepScoreGallery(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_29E754048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v18 = *(v6 + 64);
  v8 = v0 + v3;
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  v10 = v0 + v3 + v1[5];
  v11 = type metadata accessor for SleepScoreGallery.Sheet(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    (*(v6 + 8))(v10, v5);
  }

  v12 = v2 | v7;
  v13 = (v3 + v4 + v7) & ~v7;
  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  v15 = *(v10 + *(v14 + 28));

  sub_29E5FAF18(*(v8 + v1[6]), *(v8 + v1[6] + 8));
  v16 = *(v8 + v1[12] + 8);

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2A1C733A0](v0, v13 + v18, v12 | 7);
}

uint64_t sub_29E5F3F60()
{
  sub_29E65A3BC();
  sub_29E65A23C();
  type metadata accessor for SleepScoreGallery.Sheet(255);
  type metadata accessor for FullScreenSleepScoreCard();
  sub_29E65A0EC();
  sub_29E659FE8();
  sub_29E659F34();
  sub_29E753348();
  sub_29E659480();
  sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29E65AFE8(&qword_2A1857F98, type metadata accessor for SleepScoreGallery.Sheet);
  sub_29E65AFE8(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F41C8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4200()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74EE78();
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

uint64_t sub_29E5F42F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74EE78();
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

uint64_t sub_29E5F43B8()
{
  v1 = sub_29E74EAF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E5F4440()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4478()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29E5F4540()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E5F45D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F46AC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F46F8()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4730()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F4784()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F47E0()
{
  sub_29E5FECBC((v0 + 16));
  sub_29E5FECBC((v0 + 56));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F4820()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  sub_29E5FECBC((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F4860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E7500C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_29E5F4918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E7500C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_29E5F49D0()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4A08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F4A98()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4AD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4B08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F4BDC()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F4C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E7501E8();
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

uint64_t sub_29E5F4CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E7501E8();
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

uint64_t sub_29E5F4DFC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4E48()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  v8 = *v7;
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_29E5F4EF8()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E5F4F8C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F4FC4()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F501C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F50E0()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F5130()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5178()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F51BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29E5F51CC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5204()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29E5F5248()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5280()
{
  sub_29E5FECBC((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F52B8()
{
  sub_29E5FECBC((v0 + 16));
  sub_29E5FECBC((v0 + 56));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F5300()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5338()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F53C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeatureOnboardedHideableDataSource();

  return swift_getWitnessTable();
}

uint64_t sub_29E5F5484(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepApneaEventSummaryViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F5530(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepApneaEventSummaryViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F55D4()
{
  sub_29E6ADCE4();
  sub_29E6AC948();
  sub_29E6ADAC8();
  sub_29E6ADEE0(255);
  sub_29E6AD4C4();
  sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  sub_29E6AC9DC(255);
  sub_29E6AD5C8(255);
  sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC);
  sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8);
  swift_getOpaqueTypeConformance2();
  sub_29E6ADC48();
  swift_getOpaqueTypeConformance2();
  sub_29E6AE80C(&qword_2A1858E70, sub_29E6ADEE0);
  swift_getOpaqueTypeConformance2();
  sub_29E6AE1DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F57EC()
{
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  sub_29E751758();
  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6);

  return MEMORY[0x2A1C733A0](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_29E5F58F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5930()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F5978()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F59B0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F59E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5A58()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5A98()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  sub_29E6B8B00(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F5AE4()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5B20()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F5B58()
{
  v1 = (type metadata accessor for TestOptions() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[9];
  v7 = sub_29E74EAF8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 8);

  return MEMORY[0x2A1C733A0](v0, v9 + 16, v2 | 7);
}

uint64_t sub_29E5F5CA0()
{
  v1 = (type metadata accessor for TestOptions() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[9];
  v7 = sub_29E74EAF8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2A1C733A0](v0, v9 + 8, v2 | 7);
}

uint64_t sub_29E5F5DE4()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F5E34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F5E74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_29E5F5F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F602C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E65AA20(0);
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

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_29E5F60F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E65AA20(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }
}

uint64_t sub_29E5F61BC(uint64_t a1, uint64_t a2)
{
  sub_29E6C34F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F6220()
{
  v1 = type metadata accessor for SleepScoreCard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_29E5FAF18(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v0 + v4 + *(v1 + 20);
  v6 = type metadata accessor for SleepScoreRoomModel();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v15 = v3;
    v7 = sub_29E74F048();
    (*(*(v7 - 8) + 8))(v5, v7);
    v8 = *(v6 + 20);
    v9 = sub_29E74F2D8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v11 = *(v5 + *(v6 + 24) + 8);

    v3 = v15;
  }

  v12 = (v0 + v4 + *(v1 + 24));
  if (*v12)
  {
    v13 = v12[1];
  }

  return MEMORY[0x2A1C733A0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_29E5F6414(uint64_t a1, uint64_t a2)
{
  sub_29E6C34F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F6478(uint64_t a1)
{
  sub_29E6C34F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F64DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752BD8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29E5F650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E631834();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_29E5F65C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E631834();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }
}

uint64_t sub_29E5F6690@<X0>(uint64_t a1@<X8>)
{
  result = sub_29E752E88();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29E5F66C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_29E752E98();
}

uint64_t sub_29E5F66F4@<X0>(void *a1@<X8>)
{
  result = sub_29E752DE8();
  *a1 = v3;
  return result;
}

uint64_t sub_29E5F674C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F6784()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F67CC()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F6814()
{
  v1 = v0[3];

  sub_29E5FECBC(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29E5F685C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29E5F68BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F6904()
{
  v1 = v0[3];

  sub_29E5FECBC(v0 + 4);
  sub_29E5FECBC(v0 + 9);
  v2 = v0[14];

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29E5F6954()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F698C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F69F4(uint64_t a1)
{
  sub_29E6D06AC(0, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F6A88()
{
  sub_29E6D06AC(255, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
  sub_29E6D0968();
  sub_29E60DE10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F6B28()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F6B7C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6BB4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F6BF4()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6C2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F6C6C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6CA4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29E5F6CFC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6D34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F6DBC()
{
  MEMORY[0x29ED98530](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6DF4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F6E2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F6EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74ED28();
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

uint64_t sub_29E5F6F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74ED28();
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

uint64_t sub_29E5F7028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E65AA20(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_29E74F5F8();
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

uint64_t sub_29E5F7144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E65AA20(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E74F5F8();
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

uint64_t sub_29E5F72D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E631834();
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

void sub_29E5F73A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E631834();
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

uint64_t sub_29E5F745C(uint64_t *a1)
{
  v1 = *a1;
  sub_29E6E3888(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753AA8();

  return swift_getWitnessTable();
}

uint64_t sub_29E5F7500(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ScoreLevelTitle(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753A78();
  sub_29E752C28();
  type metadata accessor for SleepScoreRoomScoreBreakdown(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753AA8();

  return swift_getWitnessTable();
}

uint64_t sub_29E5F760C(uint64_t *a1)
{
  v1 = *a1;
  sub_29E6E4548(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753A78();

  return swift_getWitnessTable();
}

void sub_29E5F76B4()
{
  if (MEMORY[0x29EDCA1F8])
  {
    sub_29E6E6734();
  }
}

uint64_t sub_29E5F76F0()
{
  v1 = sub_29E7513C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E5F7778()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F77B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F780C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F7844()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F787C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 33, 7);
}

uint64_t sub_29E5F7928()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29E5F7978()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F79B0()
{

  return MEMORY[0x2A1C733A0](v0, 25, 7);
}

uint64_t sub_29E5F79E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F7A28()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F7A70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E5F7AC0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F7B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_29E6F6090(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_29E6F6090(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_29E5F7CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_29E6F6090(0, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_29E6F6090(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_29E5F7EA0()
{
  sub_29E6F7888();
  sub_29E6FFF1C(&qword_2A1859EE8, sub_29E6F7888);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F7F28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752E08();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F7F7C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_29E6FDCFC(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29E5F8028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29E6FDCFC(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F81D4()
{
  v1 = (type metadata accessor for SleepApneaSummaryTextAndAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  v7 = type metadata accessor for SleepApneaEventSummaryViewModel();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = sub_29E74ED28();
    v9 = *(*(v8 - 8) + 8);
    v9(v6, v8);
    v9(v6 + v7[5], v8);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel();
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
    sub_29E6F6090(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_29E5F84BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepApneaEventSummaryViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    sub_29E6F6090(0, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29E5F8618()
{
  sub_29E6FF7F4(255, &qword_2A185A190, sub_29E6FF144, sub_29E6FE75C, MEMORY[0x29EDBC558]);
  sub_29E6FF1D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F86B4(uint64_t a1, uint64_t a2)
{
  sub_29E6FD740(0, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F8750(uint64_t a1, uint64_t a2)
{
  sub_29E6FF75C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F87B8(uint64_t a1)
{
  sub_29E6FF7F4(0, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F8858()
{
  sub_29E6FF7F4(255, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
  sub_29E6FFB48();
  sub_29E6FFBDC();
  sub_29E6FFF1C(&qword_2A185A238, sub_29E6FFB48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5F8954()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F898C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F89C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F89FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EFE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F8A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74EFE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F8AD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepApneaEventSummaryViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29E5F8B84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepApneaEventSummaryViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F8C40()
{
  sub_29E5FECBC((v0 + 16));
  sub_29E5FECBC((v0 + 56));

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F8C8C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F8CD0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F8D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752E38();
  *a1 = result;
  return result;
}

uint64_t sub_29E5F8D44(uint64_t *a1)
{
  v1 = *a1;

  return sub_29E752E48();
}

uint64_t sub_29E5F8D74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74FE48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F8E20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74FE48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F8EC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F8EFC()
{
  sub_29E5FECBC((v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E5F8F3C()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 42, 7);
}

uint64_t sub_29E5F8F7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F8FBC()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F8FF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5F907C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_29E725164(0, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
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
    sub_29E725164(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_29E5F9250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_29E725164(0, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
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
    sub_29E725164(0, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[7];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_29E5F9424(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_29E74ED28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_29E5F94D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_29E74ED28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E5F9574(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5F95E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5F96E8(uint64_t a1, uint64_t a2)
{
  sub_29E725A50(0, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F9784(uint64_t a1)
{
  sub_29E725A50(0, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5F9818(uint64_t a1, uint64_t a2)
{
  sub_29E725ABC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5F987C()
{
  v1 = type metadata accessor for BreathingDisturbancesHighlightView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_29E7517C8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v5 + v1[5]);
  v9 = *v8;

  v10 = *(v8 + 2);

  v11 = *(v8 + 4);

  v12 = *(v8 + 6);

  v13 = *(v8 + 7);

  v14 = *(type metadata accessor for BreathingDisturbancesHighlightDataModel(0) + 44);
  v15 = sub_29E74ED28();
  (*(*(v15 - 8) + 8))(&v8[v14], v15);
  v16 = (v5 + v1[6]);
  v17 = *v16;

  v18 = v16[1];

  v19 = v16[2];

  v20 = v16[3];

  v21 = v1[7];
  sub_29E725164(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_29E752BF8();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else
  {
    v23 = *(v5 + v21);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5F9B18()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5F9B50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F9B88()
{
  sub_29E5FECBC(v0 + 2);
  v1 = v0[9];

  v2 = v0[11];

  return MEMORY[0x2A1C733A0](v0, 96, 7);
}

uint64_t sub_29E5F9BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74F9E8();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_29E5F9C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E74F9E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_29E5F9D58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5F9D90()
{
  sub_29E5FECBC((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29E5F9DD8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29E5F9E60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 246)
  {
    v4 = *a1;
    if (v4 >= 0xA)
    {
      return v4 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = &a1[*(a3 + 20)];

    return v10(v11, a2, v9);
  }
}

_BYTE *sub_29E5F9F24(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 246)
  {
    *result = a2 + 9;
  }

  else
  {
    sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29E5F9FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74ED28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_29E74E838();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
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

uint64_t sub_29E5FA100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E74ED28();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_29E74E838();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_29E5FA208()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5FA240()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_29E5FA274()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5FA2AC()
{
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 72);

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

id sub_29E5FA2F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 endDate];
  *a2 = v4;
  return result;
}

uint64_t sub_29E5FA3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E73E938(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68]);
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

void sub_29E5FA49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E73E938(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68]);
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

uint64_t sub_29E5FA588()
{
  v1 = type metadata accessor for SleepScoreGalleryCard();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SleepScoreRoomModel();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_29E74F048();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v6 + 20);
    v9 = sub_29E74F2D8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }

    v11 = *(v5 + *(v6 + 24) + 8);
  }

  v12 = *(v5 + v1[5] + 8);

  v13 = *(v5 + v1[6] + 8);

  sub_29E5FAF18(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E5FA778(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5FA7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74ED28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5FA900()
{
  sub_29E745C28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E5FA988()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E5FA9C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E5FAA00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E5FAA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74FFA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E5FAAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74FFA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E5FAB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel();
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

uint64_t sub_29E5FABF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepApneaEventSummaryViewModel();
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

uint64_t sub_29E5FACA8(uint64_t a1)
{
  sub_29E74DA44();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5FAD04()
{
  sub_29E74E240();
  sub_29E6AC948();
  sub_29E74DF44();
  sub_29E74E684(255, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
  sub_29E74DDE0();
  sub_29E74E048(255);
  sub_29E74DA44();
  sub_29E74DE64();
  swift_getOpaqueTypeConformance2();
  sub_29E74D97C(&qword_2A185AD78, sub_29E74E048);
  swift_getOpaqueTypeConformance2();
  sub_29E74E3CC();
  swift_getOpaqueTypeConformance2();
  sub_29E6AE1DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_29E5FAEB4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_29E5FAEE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29E5FAF18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_29E5FAF38()
{
  v1 = sub_29E754188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC6AA8];
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for SleepScoreCardComponentViewModel();
  sub_29E5FDD10(v0 + *(v11 + 24), v10, &unk_2A1856658, v6);
  v12 = sub_29E74F688();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_29E5FDD7C(v10, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    sub_29E754118();
    v14 = sub_29E65B0B4(v5);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v14 = sub_29E74F658();
    (*(v13 + 8))(v10, v12);
  }

  return v14;
}

uint64_t sub_29E5FB170()
{
  v1 = sub_29E74F278();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F298();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EFE8();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_29E74F688();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x29EDC69D8];
  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = &v41 - v20;
  v22 = sub_29E74F2D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SleepScoreCardComponentViewModel();
  sub_29E5FDD10(v0 + *(v27 + 20), v21, &qword_2A1A7CFB0, v17);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v28 = &qword_2A1A7CFB0;
    v29 = MEMORY[0x29EDC69D8];
    v30 = v21;
LABEL_5:
    sub_29E5FDD7C(v30, v28, v29);
    return 0;
  }

  (*(v23 + 32))(v26, v21, v22);
  sub_29E5FDD10(v0 + *(v27 + 24), v13, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v31 = v52;
  if ((*(v52 + 48))(v13, 1, v14) == 1)
  {
    (*(v23 + 8))(v26, v22);
    v28 = &unk_2A1856658;
    v29 = MEMORY[0x29EDC6AA8];
    v30 = v13;
    goto LABEL_5;
  }

  v33 = v49;
  (*(v31 + 32))(v49, v13, v14);
  v34 = v48;
  sub_29E74F678();
  v36 = v50;
  v35 = v51;
  if ((*(v50 + 88))(v34, v51) != *MEMORY[0x29EDC6908])
  {
    (*(v31 + 8))(v33, v14);
    (*(v23 + 8))(v26, v22);
    (*(v36 + 8))(v34, v35);
    return 0;
  }

  (*(v36 + 8))(v34, v35);
  v37 = v42;
  sub_29E74F2B8();
  v38 = v45;
  sub_29E74F288();
  (*(v43 + 8))(v37, v44);
  v39 = (*(v46 + 88))(v38, v47);
  if (v39 == *MEMORY[0x29EDC69D0])
  {
    (*(v31 + 8))(v33, v14);
    (*(v23 + 8))(v26, v22);
    return 0;
  }

  if (v39 == *MEMORY[0x29EDC69C8] || v39 == *MEMORY[0x29EDC69B8] || v39 == *MEMORY[0x29EDC69C0])
  {
    v40 = sub_29E74F668();
    (*(v31 + 8))(v33, v14);
    (*(v23 + 8))(v26, v22);
    return v40;
  }

  else
  {
    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E5FB83C()
{
  v1 = sub_29E754188();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F278();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F298();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v52 - v15;
  v17 = sub_29E74F688();
  v63 = *(v17 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x29EDC69D8];
  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v24 = &v52 - v23;
  v25 = sub_29E74F2D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SleepScoreCardComponentViewModel();
  sub_29E5FDD10(v0 + *(v30 + 20), v24, &qword_2A1A7CFB0, v20);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_29E5FDD7C(v24, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
    v31 = v17;
    v32 = v63;
    goto LABEL_5;
  }

  (*(v26 + 32))(v29, v24, v25);
  sub_29E5FDD10(v0 + *(v30 + 24), v16, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v33 = v63;
  v34 = (*(v63 + 48))(v16, 1, v17);
  v31 = v17;
  v32 = v33;
  if (v34 == 1)
  {
    (*(v26 + 8))(v29, v25);
    sub_29E5FDD7C(v16, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
LABEL_5:
    sub_29E5FDD10(v0 + *(v30 + 24), v14, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    if ((*(v32 + 48))(v14, 1, v31) == 1)
    {
      sub_29E5FDD7C(v14, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
      v35 = v60;
      sub_29E754118();
      v36 = sub_29E65B0B4(v35);
      (*(v61 + 8))(v35, v62);
    }

    else
    {
      v36 = sub_29E74F668();
      (*(v32 + 8))(v14, v31);
    }

    return v36;
  }

  v37 = v57;
  (*(v33 + 32))(v57, v16, v31);
  v38 = v53;
  sub_29E74F2B8();
  v39 = v56;
  sub_29E74F288();
  (*(v54 + 8))(v38, v55);
  v41 = v58;
  v40 = v59;
  v42 = (*(v58 + 88))(v39, v59);
  if (v42 == *MEMORY[0x29EDC69D0])
  {
    v43 = v25;
    v36 = sub_29E74F668();
    (*(v32 + 8))(v37, v31);
    (*(v26 + 8))(v29, v43);
  }

  else
  {
    if (v42 == *MEMORY[0x29EDC69C8])
    {
      v44 = v60;
      sub_29E754118();
      v45 = v29;
      v46 = v25;
      v36 = sub_29E65B0B4(v44);
      (*(v61 + 8))(v44, v62);
      (*(v32 + 8))(v37, v31);
      v47 = *(v26 + 8);
      v48 = v45;
    }

    else
    {
      v55 = v29;
      if (v42 == *MEMORY[0x29EDC69B8])
      {
        v49 = v60;
        sub_29E754118();
        v50 = sub_29E65B0B4(v49);
        v46 = v25;
      }

      else
      {
        v46 = v25;
        if (v42 != *MEMORY[0x29EDC69C0])
        {
          v36 = sub_29E74F668();
          (*(v32 + 8))(v37, v31);
          (*(v26 + 8))(v55, v46);
          (*(v41 + 8))(v39, v40);
          return v36;
        }

        v49 = v60;
        sub_29E754118();
        v50 = sub_29E65B0B4(v49);
      }

      v36 = v50;
      (*(v61 + 8))(v49, v62);
      (*(v32 + 8))(v37, v31);
      v47 = *(v26 + 8);
      v48 = v55;
    }

    v47(v48, v46);
  }

  return v36;
}

uint64_t sub_29E5FC098()
{
  v1 = sub_29E754188();
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v64 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F278();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F298();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EFE8();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E5FDB88(0, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v67 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v51 - v17;
  v19 = sub_29E74F688();
  v68 = *(v19 - 8);
  v20 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v61 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x29EDC69D8];
  sub_29E5FDB88(0, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v26 = &v51 - v25;
  v27 = sub_29E74F2D8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SleepScoreCardComponentViewModel();
  sub_29E5FDD10(v0 + *(v32 + 20), v26, &qword_2A1A7CFB0, v22);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_29E5FDD7C(v26, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
    v33 = v19;
    v34 = v68;
    goto LABEL_9;
  }

  (*(v28 + 32))(v31, v26, v27);
  v35 = v0;
  sub_29E5FDD10(v0 + *(v32 + 24), v18, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
  v36 = v68;
  v37 = (*(v68 + 48))(v18, 1, v19);
  v38 = v28;
  v33 = v19;
  v34 = v36;
  v0 = v35;
  if (v37 == 1)
  {
    (*(v38 + 8))(v31, v27);
    sub_29E5FDD7C(v18, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    goto LABEL_9;
  }

  v52 = v35;
  v53 = v27;
  v39 = v61;
  (*(v34 + 32))(v61, v18, v33);
  v40 = v60;
  sub_29E74F678();
  v42 = v62;
  v41 = v63;
  if ((*(v62 + 88))(v40, v63) != *MEMORY[0x29EDC6908])
  {
    (*(v34 + 8))(v39, v33);
    (*(v38 + 8))(v31, v53);
    (*(v42 + 8))(v40, v41);
    v0 = v52;
LABEL_9:
    v47 = v67;
    sub_29E5FDD10(v0 + *(v32 + 24), v67, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
    if ((*(v34 + 48))(v47, 1, v33) == 1)
    {
      sub_29E5FDD7C(v47, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
      v48 = v64;
      sub_29E754118();
      v49 = sub_29E65B0B4(v48);
      (*(v65 + 8))(v48, v66);
    }

    else
    {
      v49 = sub_29E74F668();
      (*(v34 + 8))(v47, v33);
    }

    return v49;
  }

  (*(v42 + 8))(v40, v41);
  v43 = v54;
  sub_29E74F2B8();
  v44 = v57;
  sub_29E74F288();
  (*(v55 + 8))(v43, v56);
  v45 = (*(v58 + 88))(v44, v59);
  if (v45 == *MEMORY[0x29EDC69D0])
  {
    v46 = sub_29E74F668();
LABEL_16:
    v49 = v46;
    (*(v34 + 8))(v39, v33);
    (*(v38 + 8))(v31, v53);
    return v49;
  }

  if (v45 == *MEMORY[0x29EDC69C8] || v45 == *MEMORY[0x29EDC69B8] || v45 == *MEMORY[0x29EDC69C0])
  {
    v46 = sub_29E5FB83C();
    goto LABEL_16;
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

uint64_t sub_29E5FC8F8()
{
  v1 = v0;
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EFE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x29EDC6908] || v12 == *MEMORY[0x29EDC6900] || v12 == *MEMORY[0x29EDC68F8])
  {
    sub_29E754118();
    v13 = sub_29E65B0B4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v13;
}

uint64_t sub_29E5FCB98(uint64_t a1, id *a2)
{
  result = sub_29E7541B8();
  *a2 = 0;
  return result;
}

uint64_t sub_29E5FCC10(uint64_t a1, id *a2)
{
  v3 = sub_29E7541C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29E5FCC90@<X0>(uint64_t *a1@<X8>)
{
  sub_29E7541D8();
  v2 = sub_29E754198();

  *a1 = v2;
  return result;
}

uint64_t sub_29E5FCCD4()
{
  v1 = *v0;
  v2 = sub_29E7541D8();
  v3 = MEMORY[0x29ED96C80](v2);

  return v3;
}

uint64_t sub_29E5FCD10()
{
  v1 = *v0;
  sub_29E7541D8();
  sub_29E7542D8();
}

uint64_t sub_29E5FCD64()
{
  v1 = *v0;
  sub_29E7541D8();
  sub_29E7550C8();
  sub_29E7542D8();
  v2 = sub_29E755108();

  return v2;
}

uint64_t sub_29E5FCDD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29E7541D8();
  v6 = v5;
  if (v4 == sub_29E7541D8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29E755028();
  }

  return v9 & 1;
}

uint64_t sub_29E5FCE60(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier);
  v3 = sub_29E5FCFAC(&qword_2A18563E8, type metadata accessor for HKFeatureIdentifier);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FCFAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E5FD03C(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856610, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_29E5FCFAC(&qword_2A1856618, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FD0F8(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856640, type metadata accessor for Key);
  v3 = sub_29E5FCFAC(&unk_2A1856648, type metadata accessor for Key);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FD1B4(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856620, type metadata accessor for OpenURLOptionsKey);
  v3 = sub_29E5FCFAC(&qword_2A1856628, type metadata accessor for OpenURLOptionsKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E5FD270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29E754198();

  *a2 = v5;
  return result;
}

uint64_t sub_29E5FD2B8(uint64_t a1)
{
  v2 = sub_29E5FCFAC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_29E5FCFAC(&qword_2A1856638, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

void sub_29E5FD450(uint64_t a1, unint64_t *a2)
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

uint64_t sub_29E5FD91C()
{
  v1 = *v0;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v1);
  return sub_29E755108();
}

uint64_t sub_29E5FD990()
{
  v1 = *v0;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v1);
  return sub_29E755108();
}

uint64_t sub_29E5FDB3C(uint64_t a1)
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

void sub_29E5FDB88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for SleepScoreCardComponentViewModel()
{
  result = qword_2A1856668;
  if (!qword_2A1856668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E5FDC3C()
{
  sub_29E74EFE8();
  if (v0 <= 0x3F)
  {
    sub_29E5FDB88(319, &qword_2A1A7CFB0, MEMORY[0x29EDC69D8]);
    if (v1 <= 0x3F)
    {
      sub_29E5FDB88(319, &unk_2A1856658, MEMORY[0x29EDC6AA8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E5FDD10(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E5FDB88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E5FDD7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E5FDB88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E5FDE58(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider);
  v3 = type metadata accessor for SleepApneaEventPDFSectionProvider();
  v11[3] = v3;
  v11[4] = sub_29E5FFBDC(&qword_2A1856760, type metadata accessor for SleepApneaEventPDFSectionProvider);
  v4 = sub_29E5FEBF4(v11);
  v5 = sub_29E751068();
  v6 = MEMORY[0x29EDC24D0];
  v4[3] = v5;
  v4[4] = v6;
  *v4 = v2;
  sub_29E5FEC58(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel, v4 + *(v3 + 20));

  v7 = sub_29E751038();
  sub_29E5FECBC(v11);
  sub_29E5FED08(0, &qword_2A1856768, sub_29E5FED6C, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E762F30;
  *(v8 + 32) = v7;
  v9 = sub_29E751028();

  return v9;
}

uint64_t sub_29E5FDFA0()
{
  v1 = v0;
  v2 = sub_29E750DB8();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v51 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29E750A48();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v47);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E7507B8();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29E74EDB8();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74EE78();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E74F8B8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v40 = sub_29E74F7C8();
  v39 = v22;
  (*(v18 + 8))(v21, v17);
  v38 = sub_29E750A38();
  v23 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider);
  v54 = sub_29E751068();
  v55 = MEMORY[0x29EDC24D0];
  v53 = v23;
  sub_29E5FED08(0, &qword_2A1856750, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v24 = sub_29E750B18();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29E762F40;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, *MEMORY[0x29EDC2138], v24);
  v30(v29 + v26, *MEMORY[0x29EDC2140], v24);

  sub_29E5FE8D8(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v31 = v42;
  (*(v10 + 104))(v13, *MEMORY[0x29EDB9C78], v42);
  sub_29E74EDC8();
  (*(v10 + 8))(v13, v31);

  v32 = v38;
  v33 = sub_29E750A28();
  v54 = v32;
  v55 = MEMORY[0x29EDC20A0];
  v53 = v33;
  (*(v43 + 104))(v46, *MEMORY[0x29EDC1F48], v44);
  (*(v45 + 104))(v48, *MEMORY[0x29EDC20B0], v47);
  (*(v49 + 104))(v51, *MEMORY[0x29EDC22A0], v50);
  v52[3] = sub_29E7507D8();
  v52[4] = MEMORY[0x29EDC1F50];
  sub_29E5FEBF4(v52);

  sub_29E7507C8();
  v34 = objc_allocWithZone(sub_29E750D88());
  v35 = sub_29E750D78();
  sub_29E5FFBDC(&qword_2A1856758, type metadata accessor for SleepApneaEventPDFProvider);

  sub_29E750D68();

  return v35;
}

uint64_t sub_29E5FE690()
{
  sub_29E5FFC24(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel);
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepApneaEventPDFProvider()
{
  result = qword_2A1856740;
  if (!qword_2A1856740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E5FE758()
{
  result = type metadata accessor for SleepApneaEventSummaryViewModel();
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

void sub_29E5FE860(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_29E5FE8D8(uint64_t a1)
{
  v2 = sub_29E750B18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29E5FEE04();
    v10 = sub_29E754D48();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_29E5FFBDC(&qword_2A1856788, MEMORY[0x29EDC2148]);
      v18 = sub_29E7540A8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_29E5FFBDC(&qword_2A1856790, MEMORY[0x29EDC2148]);
          v25 = sub_29E754108();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t *sub_29E5FEBF4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29E5FEC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaEventSummaryViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E5FECBC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_29E5FED08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E5FEDA0()
{
  result = qword_2A1856778;
  if (!qword_2A1856778)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1856778);
  }

  return result;
}

void sub_29E5FEE04()
{
  if (!qword_2A1856780)
  {
    sub_29E750B18();
    sub_29E5FFBDC(&qword_2A1856788, MEMORY[0x29EDC2148]);
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856780);
    }
  }
}

uint64_t sub_29E5FEE98(char a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel;
  v6 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v7 = *(v5 + *(v6 + 28));
  type metadata accessor for BreathingDisturbancesRoomInteractionAnalyticsEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 17) = v7;
  v9 = *(v5 + *(v6 + 32));
  v12[4] = sub_29E6DE8B4;
  v12[5] = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29E5FE860;
  v12[3] = a2;
  v10 = _Block_copy(v12);

  [v9 submitEvent:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_29E5FEFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E5FEFC4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29E754C98())
    {
LABEL_3:
      sub_29E5FF284();
      v3 = sub_29E754D48();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29E754C98();
      if (!v5)
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
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x29ED976A0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_29E754B78();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_29E5FF318();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_29E754B88();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        sub_29E751758();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
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
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_29E754B78();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_29E5FF318();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_29E754B88();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_29E5FF284()
{
  if (!qword_2A1A7BD38)
  {
    sub_29E5FF318();
    sub_29E5FFBDC(&qword_2A1A7D488, sub_29E5FF318);
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BD38);
    }
  }
}

unint64_t sub_29E5FF318()
{
  result = qword_2A1A7D490;
  if (!qword_2A1A7D490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7D490);
  }

  return result;
}

uint64_t sub_29E5FF364(uint64_t a1)
{
  v2 = sub_29E74FB98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29E5FFB48();
    v10 = sub_29E754D48();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_29E5FFBDC(&qword_2A1A7D6D8, MEMORY[0x29EDC3798]);
      v18 = sub_29E7540A8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_29E5FFBDC(&unk_2A1A7CF60, MEMORY[0x29EDC3798]);
          v25 = sub_29E754108();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29E5FF678(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_29E754C98();
    if (result)
    {
LABEL_3:
      sub_29E5FFAB4();
      result = sub_29E754D48();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_29E754C98();
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
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x29ED976A0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_29E752738();
    sub_29E5FFBDC(&qword_2A18567A0, MEMORY[0x29EDB8A18]);
    result = sub_29E7540A8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_29E5FFBDC(&qword_2A18567A8, MEMORY[0x29EDB8A18]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_29E754108();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

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

uint64_t sub_29E5FF900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E5FFA5C();
    v3 = sub_29E754D48();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_29E7550C8();

      sub_29E7542D8();
      result = sub_29E755108();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_29E755028();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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

void sub_29E5FFA5C()
{
  if (!qword_2A1A7BD40)
  {
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BD40);
    }
  }
}

void sub_29E5FFAB4()
{
  if (!qword_2A1856798)
  {
    sub_29E752738();
    sub_29E5FFBDC(&qword_2A18567A0, MEMORY[0x29EDB8A18]);
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856798);
    }
  }
}

void sub_29E5FFB48()
{
  if (!qword_2A1A7D410)
  {
    sub_29E74FB98();
    sub_29E5FFBDC(&qword_2A1A7D6D8, MEMORY[0x29EDC3798]);
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D410);
    }
  }
}

uint64_t sub_29E5FFBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E5FFC24(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaEventSummaryViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E5FFD18()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  sub_29E602EFC(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v0 = *(sub_29E750CA8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E762F30;
  sub_29E5FFEB0(v3 + v2);
  sub_29E750D18();
}

uint64_t sub_29E5FFEB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v63 = *MEMORY[0x29EDCA608];
  v3 = sub_29E74ED88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_2A18567C0);
  v9 = sub_29E74F368();
  v10 = (v2 + qword_2A18567B0);
  v11 = v2 + qword_2A18567B8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = *(v11 + 8);
  if (v9)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_29E754D78();

    *&v60 = 0xD000000000000018;
    *(&v60 + 1) = 0x800000029E757FD0;
    v14 = v10[4];
    sub_29E601938(v10, v10[3]);
    v15 = sub_29E74F588();
    v16 = (v15 & 1) == 0;
    if (v15)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    v58 = v13;
    if (v16)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    MEMORY[0x29ED96C20](v17, v18);

    v19 = sub_29E74F328();
    v20 = (v19 & 1) == 0;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    MEMORY[0x29ED96C20](v21, v22);

    v23 = v10[4];
    sub_29E601938(v10, v10[3]);
    v24 = sub_29E74F568();
    v25 = (v24 & 1) == 0;
    if (v24)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x29ED96C20](v26, v27);

    MEMORY[0x29ED96C20](93, 0xE100000000000000);
    sub_29E602EFC(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F30;
    sub_29E602E20(v10, &v60);
    v29 = type metadata accessor for ScheduleItem(0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v32 = swift_allocObject();
    swift_unknownObjectRetain();

    v33 = sub_29E601A10(&v60, Strong, v58, v2, v32);
    sub_29E751758();

    *(inited + 56) = v29;
    *(inited + 64) = sub_29E603018(&qword_2A18568D8, type metadata accessor for ScheduleItem);
    *(inited + 32) = v33;
    v34 = v10[4];
    sub_29E601938(v10, v10[3]);
    if (sub_29E74F588())
    {
      v35 = type metadata accessor for SleepFocusItem(0);
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      *(swift_allocObject() + qword_2A1856818) = v8;
      v38 = qword_2A1A7D6F0;
      v39 = v8;
      if (v38 != -1)
      {
        swift_once();
      }

      sub_29E74E9D8();
      v40 = sub_29E751008();

      inited = sub_29E6DAD84(1, 2, 1, inited);
      v61 = v35;
      v62 = sub_29E603018(&qword_2A18568E8, type metadata accessor for SleepFocusItem);
      *&v60 = v40;
      *(inited + 16) = 2;
      sub_29E5FAEE4(&v60, inited + 72);
    }

    sub_29E6CC108(inited);
  }

  else
  {
    sub_29E602EFC(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_29E762F30;
    sub_29E602E20(v10, &v60);
    v42 = type metadata accessor for ScheduleItem(0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    v45 = swift_allocObject();

    swift_unknownObjectRetain();
    v46 = sub_29E601A10(&v60, Strong, v13, v2, v45);
    sub_29E751758();

    *(v41 + 56) = v42;
    *(v41 + 64) = sub_29E603018(&qword_2A18568D8, type metadata accessor for ScheduleItem);
    *(v41 + 32) = v46;
    v47 = v10[4];
    sub_29E601938(v10, v10[3]);
    if (sub_29E74F588())
    {
      if (qword_2A1A7D6F0 != -1)
      {
        swift_once();
      }

      v48 = sub_29E74E9D8();
      v50 = v49;
      type metadata accessor for LinkCollectionViewCell();
      v51 = sub_29E7506A8();
      v53 = v52;
      v41 = sub_29E6DAD84(1, 2, 1, v41);
      v61 = &type metadata for SetUpSleepFocusItem;
      v62 = sub_29E602FC4();
      v54 = swift_allocObject();
      *&v60 = v54;
      v54[2] = v48;
      v54[3] = v50;
      v54[4] = v51;
      v54[5] = v53;
      *(v41 + 16) = 2;
      sub_29E5FAEE4(&v60, v41 + 72);
    }

    sub_29E6CC108(v41);

    sub_29E74ED78();
    sub_29E74ED48();
    (*(v4 + 8))(v7, v3);
  }

  sub_29E750C98();
  result = sub_29E751758();
  v56 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29E600654()
{
  sub_29E5FECBC((v0 + qword_2A18567B0));
  sub_29E5F0140(v0 + qword_2A18567B8);

  v1 = *(v0 + qword_2A18567C8);
}

uint64_t sub_29E6006B4()
{
  v0 = sub_29E750D58();
  v1 = qword_2A18567B0;

  sub_29E5FECBC((v2 + v1));
  sub_29E5F0140(v0 + qword_2A18567B8);

  v3 = *(v0 + qword_2A18567C8);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6007C4()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v15[-v6];
  sub_29E750E38();
  sub_29E750E18();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = sub_29E750E48();
  *v10 = 0x4039000000000000;
  v9(v15, 0);
  v11 = sub_29E750E48();
  *(v12 + 16) = 0;
  v11(v15, 0);
  v13 = sub_29E750E68();
  v8(v7, v0);
  return v13;
}

uint64_t sub_29E60099C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E751908();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E602EFC(0, &qword_2A1856850, MEMORY[0x29EDC1DC0], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v15 - v10;
  v12 = *(v1 + qword_2A18567B0 + 32);
  sub_29E601938((v1 + qword_2A18567B0), *(v1 + qword_2A18567B0 + 24));
  if (sub_29E74F588())
  {

    return sub_29E600C2C(a1);
  }

  else
  {
    v14 = sub_29E7506F8();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    (*(v4 + 104))(v7, *MEMORY[0x29EDC2A38], v3);
    return sub_29E7506E8();
  }
}

uint64_t sub_29E600C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_29E751908();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E602EFC(0, &qword_2A1856850, MEMORY[0x29EDC1DC0], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v41 - v10;
  sub_29E602EFC(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], v7);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v41 - v17;
  v19 = sub_29E74F8B8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v2 + qword_2A18567C0);
  if (sub_29E74F368())
  {
    v25 = *(v2 + qword_2A18567B0 + 32);
    sub_29E601938((v2 + qword_2A18567B0), *(v2 + qword_2A18567B0 + 24));
    sub_29E74F568();
    sub_29E74F328();
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v26 = sub_29E74F7C8();
    v42 = v27;
    v43 = v26;

    v28 = *(v20 + 8);
    v28(v23, v19);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v41 = sub_29E74F7C8();
    v30 = v29;
    v28(v23, v19);
    v31 = HKSPSleepFocusConfigurationURL();
    if (v31)
    {
      v32 = v31;
      sub_29E74EAD8();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = sub_29E74EAF8();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v16, v33, 1, v34);
    sub_29E60197C(v16, v18);
    if ((*(v35 + 48))(v18, 1, v34) == 1)
    {
      sub_29E602E84(v18, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v36 = sub_29E74EA98();
      v37 = v38;
      (*(v35 + 8))(v18, v34);
    }

    v47 = v43;
    v48 = v42;
    MEMORY[0x29ED96C20](23328, 0xE200000000000000);
    MEMORY[0x29ED96C20](v41, v30);

    MEMORY[0x29ED96C20](10333, 0xE200000000000000);
    MEMORY[0x29ED96C20](v36, v37);

    MEMORY[0x29ED96C20](41, 0xE100000000000000);
  }

  else
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  v39 = sub_29E7506F8();
  (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
  (*(v44 + 104))(v6, *MEMORY[0x29EDC2A38], v45);
  return sub_29E7506E8();
}

uint64_t sub_29E6012C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  a1[3] = sub_29E750708();
  a1[4] = sub_29E603018(&qword_2A1856848, MEMORY[0x29EDC1DC8]);
  v4 = sub_29E5FEBF4(a1);
  return sub_29E60099C(v4);
}

uint64_t sub_29E60133C()
{
  sub_29E750FF8();
  sub_29E7547D8();
  type metadata accessor for LinkCollectionViewCell();
  sub_29E7547D8();
  sub_29E750408();
  return sub_29E7547E8();
}

uint64_t sub_29E6013D4()
{
  sub_29E5FECBC((v0 + qword_2A18567E0));
  sub_29E5F0140(v0 + qword_2A18567E8);
  v1 = v0 + qword_2A18567F0;

  return sub_29E5F0140(v1);
}

uint64_t sub_29E601424()
{
  v0 = sub_29E751018();
  v1 = qword_2A18567E0;

  sub_29E5FECBC((v2 + v1));
  sub_29E5F0140(v0 + qword_2A18567E8);
  sub_29E5F0140(v0 + qword_2A18567F0);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6014C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E601550(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    sub_29E602EFC(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v2 = *(sub_29E750CA8() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29E762F30;
    sub_29E5FFEB0(v5 + v4);
    sub_29E750D18();
  }

  return result;
}

uint64_t sub_29E601668()
{
  v1 = *(v0 + qword_2A18567E0 + 32);
  sub_29E601938((v0 + qword_2A18567E0), *(v0 + qword_2A18567E0 + 24));
  sub_29E74F4D8();
  sub_29E7527B8();

  return v3;
}

uint64_t sub_29E601718()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E6017CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_29E60181C(uint64_t a1)
{
  v2 = sub_29E602FC4();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E601870@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29E750DC8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_29E601938(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29E60197C(uint64_t a1, uint64_t a2)
{
  sub_29E602EFC(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E601A10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 + qword_2A18567E8;
  *(a5 + qword_2A18567E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = a5 + qword_2A18567F0;
  *(a5 + qword_2A18567F0 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29E602E20(a1, a5 + qword_2A18567E0);
  *(v8 + 8) = a3;
  swift_unknownObjectWeakAssign();
  *(v9 + 8) = &off_2A24FD7B8;
  swift_unknownObjectWeakAssign();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v10 = sub_29E751008();
  sub_29E5FECBC(a1);
  return v10;
}

uint64_t sub_29E601B78(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v53[0] = a3;
  v62 = a2;
  v63 = a1;
  v64 = MEMORY[0x29EDCA298];
  sub_29E602EFC(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v59 = v53 - v10;
  sub_29E602924(0);
  v56 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v53[2] = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6029C0(0);
  v55 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v53[1] = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E602B54();
  v53[3] = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  sub_29E602BC0();
  v20 = *(v19 - 8);
  v57 = v19;
  v58 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E602CE8();
  v25 = *(v24 - 8);
  v60 = v24;
  v61 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v54 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E74ED88();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5 + qword_2A18567B8;
  *(v5 + qword_2A18567B8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + qword_2A18567C8) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(a1, v5 + qword_2A18567B0);
  *(v33 + 8) = v53[0];
  swift_unknownObjectWeakAssign();
  *(v5 + qword_2A18567C0) = a4;
  v65[0] = 0;
  v65[1] = 0xE000000000000000;
  v34 = a4;
  sub_29E754D78();

  strcpy(v65, "MutableArray<");
  HIWORD(v65[1]) = -4864;
  sub_29E74ED78();
  v35 = sub_29E74ED48();
  v37 = v36;
  (*(v29 + 8))(v32, v28);
  MEMORY[0x29ED96C20](v35, v37);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v38 = sub_29E750D08();
  sub_29E74F418();
  sub_29E603018(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  swift_retain_n();
  v65[0] = sub_29E752758();
  sub_29E7527F8();
  sub_29E7528B8();

  v39 = (v38 + qword_2A18567B0);
  v40 = *(v38 + qword_2A18567B0 + 32);
  sub_29E601938((v38 + qword_2A18567B0), *(v38 + qword_2A18567B0 + 24));
  v65[0] = sub_29E74F518();
  sub_29E602A9C();
  sub_29E603018(&qword_2A1856878, sub_29E602A9C);
  sub_29E7528B8();

  v41 = v39[4];
  sub_29E601938(v39, v39[3]);
  v65[0] = sub_29E74F4D8();
  sub_29E602960();
  sub_29E603018(&qword_2A1A7BF68, sub_29E602960);
  sub_29E7528B8();

  sub_29E603018(&qword_2A1856890, sub_29E602B54);
  sub_29E603018(&qword_2A1856898, sub_29E6029C0);
  sub_29E603018(&qword_2A18568A0, sub_29E602924);
  sub_29E752698();
  sub_29E602DD4();
  v42 = sub_29E754908();
  v65[0] = v42;
  v43 = sub_29E7548D8();
  v44 = v59;
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  sub_29E603018(&qword_2A18568B0, sub_29E602BC0);
  sub_29E603018(&qword_2A18568B8, sub_29E602DD4);
  v45 = v54;
  v46 = v57;
  sub_29E752968();
  sub_29E602E84(v44, &qword_2A1856860, v64);

  (*(v58 + 8))(v23, v46);
  swift_allocObject();
  swift_weakInit();

  sub_29E603018(&qword_2A18568C8, sub_29E602CE8);
  v47 = v60;
  sub_29E7529A8();

  (*(v61 + 8))(v45, v47);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E602EFC(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v48 = *(sub_29E750CA8() - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_29E762F30;
  sub_29E5FFEB0(v51 + v50);
  sub_29E750D18();

  sub_29E751758();

  sub_29E5FECBC(v63);
  return v38;
}

uint64_t sub_29E602500(char a1)
{
  v2 = v1;
  v4 = (v1 + qword_2A18567E0);
  v5 = *(v1 + qword_2A18567E0 + 24);
  v6 = *(v1 + qword_2A18567E0 + 32);
  sub_29E601938(v4, v5);
  v7 = sub_29E74F548();
  [v7 setEnabled_];
  v8 = v2 + qword_2A18567F0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = Strong;
    *(v11 + 24) = v10;
    swift_unknownObjectRetain();
    sub_29E69E39C(v7, sub_29E60261C, v11);

    sub_29E751758();
  }

  else
  {
  }

  return sub_29E751758();
}

uint64_t sub_29E602624()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HKSPSleepFocusOnboardingURL();
  if (v15)
  {
    v16 = v15;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_29E6B9C90(0xD00000000000003ALL, 0x800000029E757E40, &v23);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Error trying to open Sleep Focus onboarding from Sleep Options view", v20, 0xCu);
      sub_29E5FECBC(v21);
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

void sub_29E602960()
{
  if (!qword_2A1A7BF60)
  {
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF60);
    }
  }
}

void sub_29E6029FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E603018(a4, a5);
    v8 = sub_29E752638();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E602A9C()
{
  if (!qword_2A1A7BF58)
  {
    sub_29E602B04();
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF58);
    }
  }
}

void sub_29E602B04()
{
  if (!qword_2A1A7BDC8)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BDC8);
    }
  }
}

void sub_29E602B54()
{
  if (!qword_2A1856880)
  {
    sub_29E7527F8();
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856880);
    }
  }
}

void sub_29E602BC0()
{
  if (!qword_2A1856888)
  {
    sub_29E602B54();
    sub_29E6029C0(255);
    sub_29E602924(255);
    sub_29E603018(&qword_2A1856890, sub_29E602B54);
    sub_29E603018(&qword_2A1856898, sub_29E6029C0);
    sub_29E603018(&qword_2A18568A0, sub_29E602924);
    v0 = sub_29E752688();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856888);
    }
  }
}

void sub_29E602CE8()
{
  if (!qword_2A18568A8)
  {
    sub_29E602BC0();
    sub_29E602DD4();
    sub_29E603018(&qword_2A18568B0, sub_29E602BC0);
    sub_29E603018(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18568A8);
    }
  }
}

unint64_t sub_29E602DD4()
{
  result = qword_2A1A7D470;
  if (!qword_2A1A7D470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7D470);
  }

  return result;
}

uint64_t sub_29E602E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29E602E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E602EFC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E602EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E602F60()
{
  result = qword_2A1858310;
  if (!qword_2A1858310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858310);
  }

  return result;
}

unint64_t sub_29E602FC4()
{
  result = qword_2A18568E0;
  if (!qword_2A18568E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568E0);
  }

  return result;
}

uint64_t sub_29E603018(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_29E603060(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E60306C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29E6030B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E603108()
{
  result = qword_2A18568F0;
  if (!qword_2A18568F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568F0);
  }

  return result;
}

double sub_29E603170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = (a2 + 32);
  v4 = 0.0;
  do
  {
    v5 = v3[4];
    sub_29E601938(v3, v3[3]);
    sub_29E750718();
    v4 = v4 + CGRectGetHeight(v7);
    v3 += 5;
    --v2;
  }

  while (v2);
  return v4;
}

void sub_29E6031FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 32);
    do
    {
      v5 = v4[4];
      sub_29E601938(v4, v4[3]);
      sub_29E750718();
      CGRectGetHeight(v7);
      sub_29E7504A8();
      sub_29E750468();
      sub_29E750468();
      CGRectGetWidth(v8);
      sub_29E750478();
      v6 = v4[4];
      sub_29E601938(v4, v4[3]);
      sub_29E750728();
      sub_29E750498();
      sub_29E750498();

      v4 += 5;
      --v3;
    }

    while (v3);
  }
}

double sub_29E603314(uint64_t a1, uint64_t a2)
{
  sub_29E7504B8();
  v4 = v3;
  sub_29E7504B8();
  CGRectGetWidth(v10);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = 0.0;
    do
    {
      v8 = v6[4];
      sub_29E601938(v6, v6[3]);
      sub_29E750718();
      v7 = v7 + CGRectGetHeight(v11);
      v6 += 5;
      --v5;
    }

    while (v5);
  }

  return v4;
}

double sub_29E6033E8(uint64_t a1)
{
  v3 = *v1;
  sub_29E7504B8();
  v5 = v4;
  sub_29E7504B8();
  CGRectGetWidth(v7);
  sub_29E603170(a1, v3);
  return v5;
}

uint64_t sub_29E603460(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29E603664();
  *v4 = v1;
  v4[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29E60350C(uint64_t a1)
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

unint64_t sub_29E603610()
{
  result = qword_2A18568F8;
  if (!qword_2A18568F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568F8);
  }

  return result;
}

unint64_t sub_29E603664()
{
  result = qword_2A1856900;
  if (!qword_2A1856900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856900);
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreChartTapOutFormatter()
{
  result = qword_2A1856908;
  if (!qword_2A1856908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E603744(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v31 = a3;
  v32 = sub_29E74F0D8();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v6;
  v7 = MEMORY[0x29EDBA2F8];
  sub_29E605EB8(0, &qword_2A1856918, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_29E754048();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v27 - v17;
  sub_29E605BE0(a2, v11, &qword_2A1856918, v7);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_29E605E40(v11, &qword_2A1856918, MEMORY[0x29EDBA2F8]);
  }

  v27 = *(v13 + 32);
  v28 = v18;
  v27(v18, v11, v12);
  (*(v13 + 16))(v16, v18, v12);
  v20 = v29;
  v21 = v32;
  (*(v4 + 16))(v29, v31, v32);
  v22 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v23 = (v14 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  v27((v24 + v22), v16, v12);
  (*(v4 + 32))(v24 + v23, v20, v21);
  aBlock[4] = sub_29E605494;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E603B18;
  aBlock[3] = &unk_2A24FD910;
  v25 = _Block_copy(aBlock);
  v26 = v34;

  [v33 setTitleTapOutBlock_];
  _Block_release(v25);
  return (*(v13 + 8))(v28, v12);
}

void sub_29E603B18(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_29E603B9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v57 = a2;
  v58 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_29E74F0D8();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v65 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605EB8(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v64 = &v49 - v10;
  v11 = sub_29E754048();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v61 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v49 - v16;
  v54 = sub_29E752098();
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v54);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v62 = v12;
  v63 = v11;
  v55 = *(v12 + 16);
  v55(v17, a1, v11);
  v22 = sub_29E752088();
  v23 = sub_29E7546C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = a4;
    v25 = v24;
    v50 = swift_slowAlloc();
    v66 = v50;
    *v25 = 136446466;
    v26 = sub_29E755178();
    v28 = sub_29E6B9C90(v26, v27, &v66);
    ObjectType = a1;
    v51 = v7;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    sub_29E605FB0(&qword_2A1856920, MEMORY[0x29EDBA2F8]);
    v30 = v63;
    v31 = sub_29E754FD8();
    v33 = v32;
    (*(v62 + 8))(v17, v30);
    v34 = sub_29E6B9C90(v31, v33, &v66);
    v7 = v51;
    a1 = ObjectType;

    *(v25 + 14) = v34;
    _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Opening detail for date: %{public}s", v25, 0x16u);
    v35 = v50;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v35, -1, -1);
    v36 = v25;
    a4 = v52;
    MEMORY[0x29ED98410](v36, -1, -1);
  }

  else
  {

    (*(v62 + 8))(v17, v63);
  }

  (*(v18 + 8))(v21, v54);
  v37 = sub_29E7544F8();
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  v38 = v63;
  v55(v61, a1, v63);
  v40 = v59;
  v39 = v60;
  (*(v59 + 16))(v65, v57, v60);
  sub_29E7544C8();
  v57 = v58;
  v58 = a4;
  v41 = sub_29E7544B8();
  v42 = v62;
  v43 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v44 = (v56 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v40 + 80) + v44 + 8) & ~*(v40 + 80);
  v46 = swift_allocObject();
  v47 = MEMORY[0x29EDCA390];
  *(v46 + 16) = v41;
  *(v46 + 24) = v47;
  (*(v42 + 32))(v46 + v43, v61, v38);
  *(v46 + v44) = v57;
  (*(v40 + 32))(v46 + v45, v65, v39);
  *(v46 + ((v7 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;
  sub_29E6E4804(0, 0, v64, &unk_29E7633F8, v46);
}

uint64_t sub_29E604170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  sub_29E605908();
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();
  v11 = type metadata accessor for FullScreenSleepScoreCard();
  v7[28] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v13 = MEMORY[0x29EDC9C68];
  sub_29E605EB8(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  sub_29E60596C();
  v7[32] = v16;
  v17 = *(v16 - 8);
  v7[33] = v17;
  v18 = *(v17 + 64) + 15;
  v7[34] = swift_task_alloc();
  sub_29E605ADC();
  v7[35] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  sub_29E605B44(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  v7[38] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  sub_29E605EB8(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, v13);
  v24 = *(*(v23 - 8) + 64) + 15;
  v7[40] = swift_task_alloc();
  v25 = sub_29E74F0D8();
  v7[41] = v25;
  v26 = *(v25 - 8);
  v7[42] = v26;
  v27 = *(v26 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v28 = sub_29E74EDB8();
  v7[45] = v28;
  v29 = *(v28 - 8);
  v7[46] = v29;
  v30 = *(v29 + 64) + 15;
  v7[47] = swift_task_alloc();
  v31 = sub_29E74EE78();
  v7[48] = v31;
  v32 = *(v31 - 8);
  v7[49] = v32;
  v33 = *(v32 + 64) + 15;
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v34 = sub_29E754048();
  v7[52] = v34;
  v35 = *(v34 - 8);
  v7[53] = v35;
  v36 = *(v35 + 64) + 15;
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  sub_29E7544C8();
  v7[58] = sub_29E7544B8();
  v38 = sub_29E754468();
  v7[59] = v38;
  v7[60] = v37;

  return MEMORY[0x2A1C73D48](sub_29E6045E0, v38, v37);
}

uint64_t sub_29E6045E0()
{
  v1 = v0[57];
  v83 = v0[54];
  v2 = v0[52];
  v3 = v0[53];
  v79 = v2;
  v81 = v0[55];
  v77 = v0[51];
  v4 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v75 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v73 = v0[40];
  v10 = v0[23];
  v11 = v0[21];
  v87 = v0[48];
  v86 = *(v3 + 16);
  v86();
  (*(v6 + 104))(v5, *MEMORY[0x29EDB9C78], v7);
  sub_29E74EDC8();
  (*(v6 + 8))(v5, v7);
  v12 = *(v8 + 16);
  v12(v75, v10, v9);
  v13 = type metadata accessor for SleepScoreRoomModel();
  (*(*(v13 - 8) + 56))(v73, 1, 1, v13);
  v14 = type metadata accessor for SleepScoreGalleryModelProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v17 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v17 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) = 0;
  v19 = (v17 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
  *v19 = 0;
  v19[1] = 0;
  *(v17 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = 0;
  sub_29E74EF38();
  *v18 = sub_29E753FF8();
  *(v18 + 8) = 0;
  v20 = *(v4 + 16);
  v20(v17 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar, v77, v87);
  sub_29E605BE0(v73, v17 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  sub_29E753FE8();
  sub_29E753FC8();
  sub_29E753FD8();
  v21 = *(v3 + 8);
  v21(v83, v79);
  v21(v81, v79);
  sub_29E605FB0(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
  v22 = sub_29E7540E8();
  if (v22)
  {
    v23 = v0[57];
    v62 = v23;
    v24 = v0[52];
    v85 = v0[51];
    v54 = v0[50];
    v68 = v0[49];
    v82 = v0[44];
    v84 = v0[48];
    v55 = v0[43];
    v64 = v0[42];
    v80 = v0[41];
    v63 = v0[40];
    v78 = v21;
    v25 = v0[39];
    v52 = v0[38];
    v76 = v17;
    v27 = v0[36];
    v26 = v0[37];
    v53 = v12;
    v28 = v0[35];
    v60 = v0[32];
    v61 = v0[33];
    v57 = v0[31];
    v58 = v0[34];
    v66 = v0[30];
    v67 = v0[28];
    v71 = v0[27];
    v72 = v0[26];
    v69 = v0[29];
    v70 = v0[25];
    v74 = v0[24];
    v56 = v0[22];
    v65 = v0[21];
    v29 = *(v0[53] + 32);
    v29(v26, v0[56], v24);
    (v86)(v26 + *(v28 + 48), v23, v24);
    sub_29E605C60(v26, v27, sub_29E605ADC);
    v30 = *(v28 + 48);
    v29(v25, v27, v24);
    v78(v27 + v30, v24);
    sub_29E605CC8(v26, v27);
    v59 = v24;
    v29(v25 + *(v52 + 36), v27 + *(v28 + 48), v24);
    v78(v27, v24);
    sub_29E605D2C(v25, v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange);
    v20(v54, v85, v84);
    v53(v55, v82, v80);
    v31 = type metadata accessor for SleepScoreDaySummaryProviderDataSource();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = v56;
    v35 = sub_29E6A7D54(v34, v54, v55);

    v0[18] = v35;
    sub_29E605DAC();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    *(v76 + 16) = sub_29E753E08();
    v0[19] = sub_29E753E28();
    sub_29E602DD4();
    v39 = sub_29E754908();
    v0[20] = v39;
    v40 = sub_29E7548D8();
    (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
    sub_29E605A58();
    sub_29E605FB0(&qword_2A1856948, sub_29E605A58);
    sub_29E605FB0(&qword_2A18568B8, sub_29E602DD4);
    sub_29E752968();
    sub_29E605E40(v57, &qword_2A1856860, MEMORY[0x29EDCA298]);

    swift_allocObject();
    swift_weakInit();
    sub_29E605FB0(&qword_2A1856968, sub_29E60596C);
    v41 = sub_29E7529A8();

    (*(v61 + 8))(v58, v60);
    v42 = *(v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver);
    *(v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = v41;

    sub_29E67F504();
    sub_29E605E40(v63, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    (*(v64 + 8))(v82, v80);
    (*(v68 + 8))(v85, v84);
    v78(v62, v59);
    (v86)(v66, v65, v59);
    *(v66 + v67[5]) = v76;
    v43 = v67[6];
    *(v66 + v43) = swift_getKeyPath();
    v44 = MEMORY[0x29EDBC388];
    sub_29E605EB8(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    v45 = v67[7];
    *(v66 + v45) = swift_getKeyPath();
    sub_29E605EB8(0, &qword_2A1856978, MEMORY[0x29EDBBED0], v44);
    swift_storeEnumTagMultiPayload();
    v46 = v67[8];
    *(v66 + v46) = swift_getKeyPath();
    sub_29E605EB8(0, &qword_2A1856980, MEMORY[0x29EDBC370], v44);
    swift_storeEnumTagMultiPayload();
    sub_29E605C60(v66, v69, type metadata accessor for FullScreenSleepScoreCard);
    sub_29E605F1C();
    v48 = objc_allocWithZone(v47);
    v49 = sub_29E753038();
    v0[61] = v49;
    v0[2] = v0;
    v0[3] = sub_29E60506C;
    swift_continuation_init();
    v0[17] = v70;
    v50 = sub_29E5FEBF4(v0 + 14);
    sub_29E754478();
    (*(v72 + 32))(v50, v71, v70);
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29E6052D4;
    v0[13] = &unk_2A24FD988;
    [v74 hk:v49 presentModalCardViewController:0 fullScreen:1 animated:? completion:?];
    (*(v72 + 8))(v50, v70);
    v22 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C73CC0](v22);
}

uint64_t sub_29E60506C()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29E605174, v2, v1);
}

uint64_t sub_29E605174()
{
  v1 = v0[61];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[54];
  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[47];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[37];
  v18 = v0[36];
  v10 = v0[30];
  v19 = v0[34];
  v20 = v0[31];
  v21 = v0[29];
  v22 = v0[27];

  sub_29E60606C(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_29E6052D4(uint64_t a1)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  sub_29E605908();
  return sub_29E754498();
}

id sub_29E605310(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for SleepScoreChartTapOutFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_29E605354(uint64_t a1)
{
  v3 = sub_29E753F18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29E753EC8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29E605454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreChartTapOutFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E605494(void *a1, void *a2)
{
  v5 = *(sub_29E754048() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29E74F0D8() - 8);
  v9 = v2 + v6;
  v10 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
  v11 = *(v2 + 16);
  return sub_29E603B9C(v9, v10, a1, a2);
}

uint64_t sub_29E605574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E60558C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29E754048() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_29E74F0D8() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29E605728;

  return sub_29E604170(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_29E605728()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29E605840(uint64_t a1)
{
  v2 = sub_29E752A38();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D98();
}

void sub_29E605908()
{
  if (!qword_2A1856928)
  {
    v0 = sub_29E7544A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856928);
    }
  }
}

void sub_29E60596C()
{
  if (!qword_2A1856930)
  {
    sub_29E605A58();
    sub_29E602DD4();
    sub_29E605FB0(&qword_2A1856948, sub_29E605A58);
    sub_29E605FB0(&qword_2A18568B8, sub_29E602DD4);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856930);
    }
  }
}

void sub_29E605A58()
{
  if (!qword_2A1856938)
  {
    sub_29E605B44(255, &qword_2A1856940, MEMORY[0x29EDC9C30]);
    v0 = sub_29E752788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856938);
    }
  }
}

void sub_29E605ADC()
{
  if (!qword_2A1856950)
  {
    sub_29E754048();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1856950);
    }
  }
}

void sub_29E605B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E605FB0(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E605BE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E605EB8(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E605C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E605CC8(uint64_t a1, uint64_t a2)
{
  sub_29E605ADC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E605D2C(uint64_t a1, uint64_t a2)
{
  sub_29E605B44(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E605DAC()
{
  if (!qword_2A1856958)
  {
    type metadata accessor for SleepScoreDaySummaryProviderDataSource();
    sub_29E605FB0(&qword_2A1856960, type metadata accessor for SleepScoreDaySummaryProviderDataSource);
    v0 = sub_29E753E38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856958);
    }
  }
}

uint64_t sub_29E605E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E605EB8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E605EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E605F1C()
{
  if (!qword_2A1856988)
  {
    type metadata accessor for FullScreenSleepScoreCard();
    sub_29E605FB0(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard);
    v0 = sub_29E753048();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856988);
    }
  }
}

uint64_t sub_29E605FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E606008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29E60606C(uint64_t a1)
{
  v2 = type metadata accessor for FullScreenSleepScoreCard();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E60613C(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A18569A0) = 0;
  sub_29E602E20(a1, v1 + qword_2A1856998);
  sub_29E606420(a1);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_29E74ED78();
  v9 = sub_29E74ED48();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x29ED96C20](v9, v11);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v12 = sub_29E750D08();
  v13 = *(v12 + qword_2A1856998 + 32);
  sub_29E601938((v12 + qword_2A1856998), *(v12 + qword_2A1856998 + 24));

  v19[0] = sub_29E74F4E8();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v3;
  sub_29E60990C();
  sub_29E609FB0(&qword_2A18569F0, sub_29E60990C);
  v16 = sub_29E7529A8();

  sub_29E5FECBC(a1);

  v17 = *(v12 + qword_2A18569A0);
  *(v12 + qword_2A18569A0) = v16;

  return v12;
}

uint64_t sub_29E606420(void *a1)
{
  v87 = sub_29E750CA8();
  v86 = *(v87 - 8);
  v2 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v87);
  v85 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74F9B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v98 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_29E74F698();
  v84 = *(v101 - 8);
  v12 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v101);
  v100 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ScheduleOccurrenceItem(0);
  v15 = *(v14[-1].Description + 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v105 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v97 = &v82 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v104 = &v82 - v20;
  v21 = a1[3];
  v22 = a1[4];
  v99 = a1;
  sub_29E601938(a1, v21);
  v23 = sub_29E74F528();
  if (v23)
  {
    v83 = v23;
    v24 = [v23 occurrences];
    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v25 = sub_29E7543F8();

    *&v106 = MEMORY[0x29EDCA190];
    if (v25 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
    {
      v27 = 0;
      v103 = v25 & 0xC000000000000001;
      v28 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v103)
        {
          v29 = MEMORY[0x29ED976A0](v27, v25);
        }

        else
        {
          if (v27 >= *(v28 + 16))
          {
            goto LABEL_21;
          }

          v29 = *(v25 + 8 * v27 + 32);
        }

        v30 = v29;
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v32 = v25;
        sub_29E7544C8();
        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v33 = [v30 isRepeating];

        if (v33)
        {
          sub_29E754DE8();
          v34 = *(v106 + 16);
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
        }

        else
        {
        }

        v25 = v32;
        ++v27;
        if (v31 == i)
        {
          v35 = v106;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v35 = MEMORY[0x29EDCA190];
LABEL_24:

    if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
    {
      goto LABEL_41;
    }

    for (j = *(v35 + 16); j; j = sub_29E754C98())
    {
      v45 = 0;
      v96 = v35 & 0xC000000000000001;
      v92 = *MEMORY[0x29EDC6AD0];
      v90 = 0x800000029E7582F0;
      v91 = (v84 + 104);
      v89 = (v84 + 8);
      v43 = MEMORY[0x29EDCA190];
      v88 = xmmword_29E762F40;
      v94 = v35;
      v95 = v14;
      v93 = j;
      while (1)
      {
        if (v96)
        {
          v46 = MEMORY[0x29ED976A0](v45, v35);
        }

        else
        {
          if (v45 >= *(v35 + 16))
          {
            goto LABEL_40;
          }

          v46 = *(v35 + 8 * v45 + 32);
        }

        v47 = v46;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        v103 = v45 + 1;
        sub_29E602E20(v99, &v106);
        v102 = v47;
        v48 = [v47 weekdays];
        v49 = v97;
        v50 = (v97 + SLODWORD(v14[2].Kind));
        sub_29E602E20(&v106, v97);
        *(v49 + 40) = v48;
        *(v49 + 48) = v45 == 0;
        v51 = v100;
        v52 = v101;
        (*v91)(v100, v92, v101);
        sub_29E609D54(0, &qword_2A1A7BCF0, MEMORY[0x29EDC9E90]);
        v53 = swift_allocObject();
        *(v53 + 16) = v88;
        *(v53 + 32) = sub_29E754608();
        *(v53 + 40) = v54;
        *(v53 + 48) = 0xD000000000000010;
        *(v53 + 56) = v90;
        v55 = sub_29E754258();
        v56 = v43;
        v58 = v57;

        v59 = v52;
        v14 = v95;
        (*v89)(v51, v59);
        *v50 = v55;
        v50[1] = v58;
        v43 = v56;
        sub_29E601938(&v106, v107);
        sub_29E74F558();
        sub_29E74F998();
        v60 = v49 + SHIDWORD(v14[1].Description);
        sub_29E74F968();
        v61 = v104;
        sub_29E609458(v49, v104);
        sub_29E5FECBC(&v106);
        sub_29E6094BC(v49);
        sub_29E609458(v61, v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_29E6DAD84(0, v56[2] + 1, 1, v56);
        }

        v62 = v93;
        v35 = v94;
        v64 = v43[2];
        v63 = v43[3];
        if (v64 >= v63 >> 1)
        {
          v43 = sub_29E6DAD84((v63 > 1), v64 + 1, 1, v43);
        }

        sub_29E6094BC(v104);
        v107 = v14;
        v108 = sub_29E609FB0(&qword_2A1856A18, type metadata accessor for ScheduleOccurrenceItem);
        v65 = sub_29E5FEBF4(&v106);
        v66 = v105;
        sub_29E609458(v105, v65);
        v43[2] = v64 + 1;
        sub_29E5FAEE4(&v106, &v43[5 * v64 + 4]);
        sub_29E6094BC(v66);
        ++v45;
        if (v103 == v62)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v43 = MEMORY[0x29EDCA190];
LABEL_43:
  }

  else
  {
    sub_29E752048();
    v36 = sub_29E752088();
    v37 = sub_29E7546C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v106 = v39;
      *v38 = 136446210;
      v40 = sub_29E755178();
      v42 = sub_29E6B9C90(v40, v41, &v106);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Sleep schedule is nil", v38, 0xCu);
      sub_29E5FECBC(v39);
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v43 = MEMORY[0x29EDCA190];
  }

  v67 = v87;
  v68 = v86;
  v69 = v85;
  if (!v43[2])
  {
    v70 = v84;
    v71 = v100;
    v72 = v101;
    (*(v84 + 104))(v100, *MEMORY[0x29EDC6AD0], v101);
    v73 = sub_29E754258();
    v75 = v74;
    (*(v70 + 8))(v71, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_29E6DAD84(0, v43[2] + 1, 1, v43);
    }

    v77 = v43[2];
    v76 = v43[3];
    if (v77 >= v76 >> 1)
    {
      v43 = sub_29E6DAD84((v76 > 1), v77 + 1, 1, v43);
    }

    v107 = &type metadata for EmptyScheduleItem;
    v108 = sub_29E609B08();
    *&v106 = v73;
    *(&v106 + 1) = v75;
    v43[2] = v77 + 1;
    sub_29E5FAEE4(&v106, &v43[5 * v77 + 4]);
  }

  sub_29E6CC108(v43);

  sub_29E750C98();
  sub_29E609A1C(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v78 = *(v68 + 72);
  v79 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_29E762F30;
  (*(v68 + 32))(v80 + v79, v69, v67);
  return v80;
}

uint64_t sub_29E606EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v3 = sub_29E753CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753D18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29E752098();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v40 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v34 = v9;
    v35 = v7;
    v36 = v8;
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v4;
      v22 = v21;
      aBlock[0] = v21;
      *v20 = 136446210;
      v23 = sub_29E755178();
      v25 = v3;
      v26 = sub_29E6B9C90(v23, v24, aBlock);

      *(v20 + 4) = v26;
      v3 = v25;
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Responding to sleep schedule change", v20, 0xCu);
      sub_29E5FECBC(v22);
      v27 = v22;
      v4 = v33;
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    (*(v12 + 8))(v15, v38);
    sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
    v28 = sub_29E754908();
    aBlock[4] = sub_29E6099FC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A24FDA58;
    v29 = _Block_copy(aBlock);

    v30 = v39;
    sub_29E753D08();
    v41 = MEMORY[0x29EDCA190];
    sub_29E609FB0(&qword_2A18569F8, MEMORY[0x29EDCA248]);
    sub_29E609A1C(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29E609A80();
    v31 = v35;
    sub_29E754C58();
    MEMORY[0x29ED97230](0, v30, v31, v29);
    _Block_release(v29);

    (*(v4 + 8))(v31, v3);
    (*(v34 + 8))(v30, v36);
  }
}

uint64_t sub_29E6073F4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_29E753D78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v7 = sub_29E754908();
  (*(v4 + 104))(v7, *MEMORY[0x29EDCA278], v3);
  v8 = sub_29E753DA8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_29E606420((a1 + qword_2A1856998));
    sub_29E750D18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6075D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E753D78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v7 = sub_29E754908();
  (*(v4 + 104))(v7, *MEMORY[0x29EDCA278], v3);
  v8 = sub_29E753DA8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_29E606420((v1 + qword_2A1856998));
    sub_29E750D18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E607780()
{
  sub_29E5FECBC((v0 + qword_2A1856998));
  v1 = *(v0 + qword_2A18569A0);
}

uint64_t sub_29E6077C0()
{
  v0 = sub_29E750D58();
  v1 = qword_2A1856998;

  sub_29E5FECBC((v2 + v1));
  v3 = *(v0 + qword_2A18569A0);

  return swift_deallocClassInstance();
}

uint64_t sub_29E607838()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E38();
  v5 = sub_29E750E68();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E607968()
{
  v1 = *v0;
  sub_29E7544C8();
  v4 = v0;
  v5 = v1;
  return sub_29E607C50(sub_29E608D50, &v3);
}

uint64_t sub_29E607A04()
{
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v19 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v0;
    v10 = v9;
    v20 = v9;
    *v8 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v20);
    v17 = v1;
    v14 = v13;

    *(v8 + 4) = v14;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] Responding to sleep event occurring", v8, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);

    (*(v2 + 8))(v5, v17);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  sub_29E6075D8();
}

uint64_t sub_29E607C50(uint64_t a1, uint64_t a2)
{
  sub_29E7544B8();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_29E608D6C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_29E754D78();
    MEMORY[0x29ED96C20](0xD00000000000003FLL, 0x800000029E7581A0);
    v8 = sub_29E755178();
    MEMORY[0x29ED96C20](v8);

    MEMORY[0x29ED96C20](46, 0xE100000000000000);
    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E607DD8(uint64_t a1, uint64_t a2, char a3)
{
  sub_29E7544B8();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_29E609BA4(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD00000000000003FLL, 0x800000029E7581A0);
  v11 = sub_29E755178();
  MEMORY[0x29ED96C20](v11);

  MEMORY[0x29ED96C20](46, 0xE100000000000000);
  result = sub_29E754E48();
  __break(1u);
  return result;
}

uint64_t sub_29E607FB4()
{
  type metadata accessor for ScheduleAlertCell();
  sub_29E609FB0(&qword_2A18569C8, type metadata accessor for ScheduleAlertCell);
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E609FB0(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7547D8();
}

uint64_t sub_29E608074()
{
  v1 = v0;
  v2 = type metadata accessor for ScheduleOccurrenceItem(0);
  sub_29E609F68();
  v8 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v3 = *(v2 + 28);
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A1856A58, MEMORY[0x29EDC6B70]);
  v4 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v4);

  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  if (*(v1 + 48))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + 48))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x29ED96C20](v5, v6);

  return v8;
}

uint64_t sub_29E608198()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E609FB0(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7506A8();
}

uint64_t sub_29E608200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_29E74F9E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29E608274(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_29E6082AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_29E6082EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_29E608318(uint64_t a1)
{
  v2 = sub_29E609FB0(&qword_2A1856A18, type metadata accessor for ScheduleOccurrenceItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E608394(uint64_t a1)
{
  v3 = v1;
  sub_29E7550C8();
  v4 = *(a1 + 28);
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  MEMORY[0x29ED979F0](*(v3 + 40));
  return sub_29E755108();
}

uint64_t sub_29E608440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 28);
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  return MEMORY[0x29ED979F0](*(v3 + 40));
}

uint64_t sub_29E6084D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_29E7550C8();
  v5 = *(a2 + 28);
  sub_29E74F9E8();
  sub_29E609FB0(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  MEMORY[0x29ED979F0](*(v4 + 40));
  return sub_29E755108();
}

uint64_t sub_29E608588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74F698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0;
  v10 = *(v1 + 48);
  if (v10 == 1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v8 = sub_29E74E9D8();
    v9 = v11;
  }

  (*(v4 + 104))(v7, *MEMORY[0x29EDC6AD0], v3);
  v12 = sub_29E754258();
  v14 = v13;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  return result;
}

double sub_29E608738@<D0>(uint64_t a1@<X8>)
{
  sub_29E608588(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_29E608784()
{
  type metadata accessor for ScheduleAlertCell();
  sub_29E609FB0(&qword_2A18569C8, type metadata accessor for ScheduleAlertCell);
  return sub_29E7506A8();
}

uint64_t sub_29E6087EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E7550C8();
  sub_29E7550E8();
  if (v2)
  {
    sub_29E7542D8();
  }

  return sub_29E755108();
}

uint64_t sub_29E60885C()
{
  if (!v0[1])
  {
    return sub_29E7550E8();
  }

  v1 = *v0;
  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E6088D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E7550C8();
  sub_29E7550E8();
  if (v2)
  {
    sub_29E7542D8();
  }

  return sub_29E755108();
}

uint64_t sub_29E608974(uint64_t a1)
{
  v2 = sub_29E609B08();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E6089C0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_29E755028() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_29E608A1C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E608AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = sub_29E74E9D8();
  v9 = v8;
  (*(v3 + 104))(v6, *MEMORY[0x29EDC6AD0], v2);
  v10 = sub_29E754258();
  v12 = v11;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_29E608C40(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_29E608D50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E607A04();
}

uint64_t sub_29E608D6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29E608D94(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScheduleOccurrenceItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v61 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v61 - v16;
  sub_29E752048();
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();
  v20 = os_log_type_enabled(v18, v19);
  v64 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62 = v2;
    v23 = v12;
    v24 = v15;
    v25 = v8;
    v26 = v22;
    v68[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_29E6B9C90(0xD00000000000003DLL, 0x800000029E758220, v68);
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Current schedule tapped", v21, 0xCu);
    sub_29E5FECBC(v26);
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v21, -1, -1);

    v27 = v25;
    v15 = v24;
    v12 = v23;
    v2 = v62;
    v28 = *(v27 + 8);
  }

  else
  {

    v28 = *(v8 + 8);
  }

  v28(v17, v7);
  v29 = v7;
  v67 = a1;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  sub_29E609CF8(0, &qword_2A18569E0);
  v30 = a1;
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4(v65, v68);
    v31 = v2[4];
    sub_29E601938(v2, v2[3]);
    v32 = v2[5];
    v33 = sub_29E74F558();
    if (v33)
    {
      v34 = v33;
      sub_29E601938(v68, v68[3]);
      sub_29E74F8D8();
    }

    else
    {
      sub_29E752048();
      v49 = v63;
      sub_29E609458(v2, v63);
      v50 = sub_29E752088();
      v51 = sub_29E7546A8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v65[0] = v53;
        *v52 = 136446466;
        *(v52 + 4) = sub_29E6B9C90(0xD00000000000003DLL, 0x800000029E758220, v65);
        *(v52 + 12) = 2082;
        v54 = *(v49 + 40);
        v55 = sub_29E7545F8();
        v56 = v49;
        v57 = v55;
        v59 = v58;
        sub_29E6094BC(v56);
        v60 = sub_29E6B9C90(v57, v59, v65);

        *(v52 + 14) = v60;
        _os_log_impl(&dword_29E5ED000, v50, v51, "[%{public}s] Unable to edit occurrence for identifier: %{public}s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v53, -1, -1);
        MEMORY[0x29ED98410](v52, -1, -1);
      }

      else
      {

        sub_29E6094BC(v49);
      }

      v28(v15, v7);
    }

    return sub_29E5FECBC(v68);
  }

  else
  {
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    sub_29E6093D0(v65);
    sub_29E752048();
    v35 = v30;
    v36 = sub_29E752088();
    v37 = sub_29E7546C8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68[0] = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_29E6B9C90(0xD00000000000003DLL, 0x800000029E758220, v68);
      *(v38 + 12) = 2082;
      v40 = v35;
      v41 = [v40 description];
      v42 = sub_29E7541D8();
      v63 = v29;
      v44 = v43;

      v45 = sub_29E6B9C90(v42, v44, v68);

      *(v38 + 14) = v45;
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);

      v46 = v63;
      v47 = v12;
    }

    else
    {

      v47 = v12;
      v46 = v7;
    }

    return (v28)(v47, v46);
  }
}

uint64_t sub_29E6093D0(uint64_t a1)
{
  sub_29E6099A0(0, &qword_2A18569E8, &qword_2A18569E0, MEMORY[0x29EDC6B58], sub_29E609CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E609458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6094BC(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleOccurrenceItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E609518(void *a1)
{
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v31 - v8;
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_29E6B9C90(0xD000000000000038, 0x800000029E758290, v36);
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Edit schedule tapped", v12, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  v35 = a1;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  sub_29E609CF8(0, &qword_2A18569E0);
  v15 = a1;
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4(v33, v36);
    sub_29E601938(v36, v36[3]);
    sub_29E74F8C8();
    return sub_29E5FECBC(v36);
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_29E6093D0(v33);
    sub_29E752048();
    v17 = v15;
    v18 = sub_29E752088();
    v19 = sub_29E7546C8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_29E6B9C90(0xD000000000000038, 0x800000029E758290, v36);
      *(v20 + 12) = 2082;
      v22 = v17;
      v23 = [v22 description];
      v24 = sub_29E7541D8();
      v31 = v3;
      v32 = v2;
      v25 = v24;
      v27 = v26;

      v28 = sub_29E6B9C90(v25, v27, v36);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Unable to present schedule add on unknown view controller: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);

      v29 = v32;
      v30 = v7;
    }

    else
    {

      v30 = v7;
      v29 = v2;
    }

    return (v14)(v30, v29);
  }
}

void sub_29E60990C()
{
  if (!qword_2A1A7BF50)
  {
    sub_29E6099A0(255, &qword_2A1A7BDA0, &unk_2A1A7BDA8, 0x29EDC68B8, sub_29E609B5C);
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF50);
    }
  }
}

void sub_29E6099A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E754BD8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E609A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E609A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E609A80()
{
  result = qword_2A1856A00;
  if (!qword_2A1856A00)
  {
    sub_29E609A1C(255, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A00);
  }

  return result;
}

unint64_t sub_29E609B08()
{
  result = qword_2A1856A08;
  if (!qword_2A1856A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A08);
  }

  return result;
}

uint64_t sub_29E609B5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_29E609BA4@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void sub_29E609C10()
{
  sub_29E609CF8(319, &qword_2A1856A30);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKSPWeekdays(319);
    if (v1 <= 0x3F)
    {
      sub_29E74F9E8();
      if (v2 <= 0x3F)
      {
        sub_29E609D54(319, &qword_2A1A7D0C8, MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E609CF8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E609D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_29E609DA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29E609DB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_29E609E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_29E609E74()
{
  result = qword_2A1856A38;
  if (!qword_2A1856A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A38);
  }

  return result;
}

unint64_t sub_29E609F14()
{
  result = qword_2A1856A48;
  if (!qword_2A1856A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A48);
  }

  return result;
}

unint64_t sub_29E609F68()
{
  result = qword_2A1856A50;
  if (!qword_2A1856A50)
  {
    type metadata accessor for ScheduleOccurrenceItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1856A50);
  }

  return result;
}

uint64_t sub_29E609FB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E609FF8()
{
  result = qword_2A1856A60;
  if (!qword_2A1856A60)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1856A60);
  }

  return result;
}

uint64_t sub_29E60A044()
{
  result = sub_29E754198();
  qword_2A1A7F920 = result;
  return result;
}

uint64_t sub_29E60A08C()
{
  v1 = *v0;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v1);
  return sub_29E755108();
}

uint64_t sub_29E60A0D4()
{
  v1 = *v0;
  sub_29E7550C8();
  MEMORY[0x29ED979F0](v1);
  return sub_29E755108();
}

uint64_t sub_29E60A118(uint64_t result)
{
  if (result == 4)
  {
    return 0;
  }

  if (byte_2A24FC178 == result)
  {
    v1 = 0;
    return *(&unk_2A24FC158 + v1 + 33);
  }

  if (byte_2A24FC179 == result)
  {
    v1 = 1u;
    return *(&unk_2A24FC158 + v1 + 33);
  }

  if (byte_2A24FC17A == result)
  {
    v1 = 2u;
    return *(&unk_2A24FC158 + v1 + 33);
  }

  if (byte_2A24FC17B == result)
  {
    return 4;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E60A1A0(uint64_t result)
{
  if (result == 4)
  {
    return 3;
  }

  if (byte_2A24FC1A0 == result)
  {
    return 4;
  }

  if (byte_2A24FC1A1 == result)
  {
    v1 = 1u;
    return *(&unk_2A24FC180 + v1 + 31);
  }

  if (byte_2A24FC1A2 == result)
  {
    v1 = 2u;
    return *(&unk_2A24FC180 + v1 + 31);
  }

  if (byte_2A24FC1A3 == result)
  {
    v1 = 3u;
    return *(&unk_2A24FC180 + v1 + 31);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E60A228(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_29E752098();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  sub_29E7544C8();
  v2[19] = sub_29E7544B8();
  v7 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E60A31C, v7, v6);
}

uint64_t sub_29E60A31C()
{
  v27 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  ObjectType = swift_getObjectType();
  if ((*(v2 + 8))(ObjectType, v2) != 1)
  {
    v11 = 3;
    goto LABEL_11;
  }

  v25 = *(v0 + 112);
  *(v0 + 96) = v25;
  sub_29E60A664(0, &unk_2A185A680);
  sub_29E60A664(0, &qword_2A1856A68);
  v5 = v25;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_29E60A6C0(v0 + 56);
LABEL_8:
    v12 = *(v0 + 144);
    sub_29E752048();
    v13 = sub_29E752088();
    v14 = sub_29E7546A8();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = *(v0 + 128);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_29E6B9C90(0xD000000000000019, 0x800000029E763900, &v26);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_29E6B9C90(0xD000000000000020, 0x800000029E758380, &v26);
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%s.%s] Asked to determine progression state without health details", v19, 0x16u);
      v11 = 2;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);

      (*(v17 + 8))(v16, v18);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v11 = 2;
    }

    goto LABEL_11;
  }

  sub_29E5FAEE4((v0 + 56), v0 + 16);
  v6 = *(*sub_29E601938((v0 + 16), *(v0 + 40)) + qword_2A18584B0);
  v7 = sub_29E680A7C();
  if (v7 == 2 || (v8 = v7, v9 = *(*sub_29E601938((v0 + 16), *(v0 + 40)) + qword_2A18584B0), v10 = sub_29E680A70(), v10 == 2))
  {
    sub_29E5FECBC((v0 + 16));
    goto LABEL_8;
  }

  if (v8)
  {
    v24 = v10;
    sub_29E5FECBC((v0 + 16));
    if (v24)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    sub_29E5FECBC((v0 + 16));
    v11 = 0;
  }

LABEL_11:
  v21 = *(v0 + 144);

  v22 = *(v0 + 8);

  return v22(v11);
}

uint64_t sub_29E60A664(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29E60A6C0(uint64_t a1)
{
  sub_29E60A71C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E60A71C()
{
  if (!qword_2A185A690)
  {
    sub_29E60A664(255, &qword_2A1856A68);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A690);
    }
  }
}

__n128 sub_29E60A788(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29E60A79C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E60A7E4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SleepApneaOnboardingCannotProgressReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepApneaOnboardingCannotProgressReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepApneaOnboardingStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepApneaOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29E60AAF4()
{
  result = qword_2A1856A70;
  if (!qword_2A1856A70)
  {
    sub_29E60AB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A70);
  }

  return result;
}

void sub_29E60AB4C()
{
  if (!qword_2A1856A78)
  {
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856A78);
    }
  }
}

unint64_t sub_29E60ABA0()
{
  result = qword_2A1856A80;
  if (!qword_2A1856A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A80);
  }

  return result;
}

unint64_t sub_29E60ABF8()
{
  result = qword_2A1856A88;
  if (!qword_2A1856A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856A88);
  }

  return result;
}