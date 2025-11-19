uint64_t sub_23842FD64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842FDA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_23842FE00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_23842FE5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842FE9C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TransactionPicker() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v5 + 16);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 32);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[12], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23842FFA4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23842FFFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23875E240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
  swift_getWitnessTable();
  sub_2387192A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23843009C(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
  sub_2387192A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238430110()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23843014C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238430208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2384302C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238430320()
{
  v1 = (type metadata accessor for TransactionSearchList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_238758F50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v11 + 2);

  v15 = *(v11 + 3);

  v16 = *(v11 + 4);

  v17 = *(v11 + 5);

  v18 = *(v11 + 7);

  v19 = v1[9];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v20 - 8) + 8))(&v11[v19], v20);
  v21 = *&v11[v1[10]];

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_238430558(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875A9A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384305C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875A9A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238430634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A9A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23875B940();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238430724(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875A9A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23875B940();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238430820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A9A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2384308E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A9A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23843099C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384309E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_238430B68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_238430CF4()
{
  v1 = _s5LargeVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v8 = *(v7 + 20);
  v9 = sub_23875BC40();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v7 + 28);
  v11 = sub_23875E8A0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C880();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875E7A0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238430F84()
{
  v1 = _s5LargeVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 + 20);
  v10 = sub_23875BC40();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v8 + 28);
  v12 = sub_23875E8A0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C880();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  sub_2384348B8(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v17 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_23875E7A0();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
  }

  else
  {
    v19 = *(v6 + v17);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384311FC()
{
  v1 = _s5LargeVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v8 = *(v7 + 20);
  v9 = sub_23875BC40();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v7 + 28);
  v11 = sub_23875E8A0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C880();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875E7A0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_238431474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238431528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2384315E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23875C450();
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
      v13 = sub_23875C8A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238431704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23875C450();
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
      v13 = sub_23875C8A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238431838(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for OrderImageStyleModifier();
  sub_23875C8C0();
  sub_2387365E0();
  return swift_getWitnessTable();
}

uint64_t sub_2384318A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  v7 = *(a1 + 3);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  return swift_getWitnessTable();
}

uint64_t sub_238431A24(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  v5 = *(a1 + 1);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  return swift_getWitnessTable();
}

uint64_t sub_238431BA4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  v5 = *(a1 + 1);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  return swift_getWitnessTable();
}

uint64_t sub_238431D24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  return swift_getWitnessTable();
}

uint64_t sub_238431EA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238431FDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238432238()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238432280()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2383FC164();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2384322BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384323DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238432510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238432644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238432754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238432898()
{
  v1 = type metadata accessor for ReturnDetailsContentsSection(0);
  v41 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v40 = (v41 + 16) & ~v41;
  v42 = v0;
  v2 = v0 + v40;
  v3 = *(v0 + v40 + 8);

  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  v5 = *(v4 + 20);
  v6 = sub_23875AF90();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *(v2 + *(v4 + 24) + 8);

  v8 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v9 = sub_23875BC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v12 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v13 = v2 + v12[5];
  v14 = sub_23875AD40();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v16 = *(v15 + 20);
  if (!v11(v13 + v16, 1, v9))
  {
    (*(v10 + 8))(v13 + v16, v9);
  }

  v17 = v13 + *(v15 + 24);
  v18 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *(v17 + 8);

      v23 = *(v17 + 24);

      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v25 = sub_23875AD80();
      (*(*(v25 - 8) + 8))(v17 + v24, v25);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v20 = *(v17 + 8);

      v21 = *(v17 + 24);
    }
  }

  v26 = *(v2 + v12[6] + 8);

  v27 = *(v2 + v12[7] + 8);

  v28 = *(v2 + v12[8] + 8);

  v29 = *(v2 + v12[9] + 8);

  v30 = *(v2 + v12[10] + 8);

  v31 = *(v2 + v12[11]);

  v32 = (v2 + v1[5]);
  v33 = *v32;

  v34 = v32[1];

  v35 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = sub_23875C880();
    (*(*(v36 - 8) + 8))(v2 + v35, v36);
  }

  else
  {
    v37 = *(v2 + v35);
  }

  sub_2385A9698(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v42, ((v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v41 | 7);
}

uint64_t sub_238432D08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_238432E90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_23843301C()
{
  v1 = _s6MediumVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v8 = *(v7 + 20);
  v9 = sub_23875BC40();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v7 + 28);
  v11 = sub_23875E8A0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C880();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875E7A0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384332AC()
{
  v1 = _s6MediumVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 + 20);
  v10 = sub_23875BC40();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v8 + 28);
  v12 = sub_23875E8A0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C880();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  sub_2384348B8(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v17 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_23875E7A0();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
  }

  else
  {
    v19 = *(v6 + v17);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238433524()
{
  v1 = _s6MediumVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v8 = *(v7 + 20);
  v9 = sub_23875BC40();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v7 + 28);
  v11 = sub_23875E8A0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C880();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875E7A0();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_23843379C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384337D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238433890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238433940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderActionsMenuContext(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238433A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderActionsMenuContext(0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238433BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15B90, &qword_238784718);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A310, &unk_2387655D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15B98, &qword_238784720);
  type metadata accessor for ExtractedOrderActionsItems(255);
  sub_23843A3E8(&qword_27DF15BA0, &qword_27DF15B98, &qword_238784720);
  sub_23874DB94(&qword_27DF0A308, type metadata accessor for ExtractedOrderActionsItems);
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238433D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15BA8, &qword_238784758);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC48, &unk_23876C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15BB0, &qword_238784760);
  type metadata accessor for OrderActionsItems(255);
  sub_23843A3E8(&qword_27DF15BB8, &qword_27DF15BB0, &qword_238784760);
  sub_23874DB94(&qword_27DF0CC40, type metadata accessor for OrderActionsItems);
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238433F24()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_238433F78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238434034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2384340F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C88, &qword_238784BB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A310, &unk_2387655D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C90, &unk_238784BC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BE8, &qword_238779830);
  sub_23843A3E8(&qword_27DF15C98, &qword_27DF15C90, &unk_238784BC0);
  sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830);
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384342D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_238434410(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238434550()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238434588()
{
  v1 = type metadata accessor for OrderImportPreview();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 56);

  v12 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C600();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
    v14 = *(v6 + v12);
  }

  v15 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23875C6D0();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  else
  {
    v17 = *(v6 + v15);
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18);

  return MEMORY[0x2821FE8E8](v0, v18 + 8, v2 | 7);
}

uint64_t sub_23843475C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384347C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238434834(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_238434848@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2384348A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2384348B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

id FKUILocalizedString(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 bundleWithIdentifier:@"com.apple.FinanceKitUI"];
  v7 = [v6 localizedStringForKey:v5 value:&stru_284B32030 table:v4];

  return v7;
}

id FKUILocalizedStringWithFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = FKUILocalizedString(a1, a2);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];

  return v10;
}

uint64_t FinancialConnectionUIExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28 = a2;
  v32 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DA0, &qword_238761C40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v30 = &v27 - v10;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = *(v11 + 16);
  v16(&v27 - v14, v4, a1);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v31 = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(v11 + 32);
  v19(v18 + v17, v15, a1);
  v20 = v29;
  v16(v29, v4, a1);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  v19(v21 + v17, v20, a1);
  sub_238436638();
  v23 = v30;
  sub_238757760();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DB0, &unk_238761C48);
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  swift_getAssociatedTypeWitness();
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_23843668C();
  return sub_23875BF70();
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

uint64_t sub_238436464()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 40))();
}

uint64_t sub_2384364CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v10[3] = a3;
  v10[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_23865FE60(a1, v10);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_238436638()
{
  result = qword_27DF08DA8;
  if (!qword_27DF08DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DA8);
  }

  return result;
}

unint64_t sub_23843668C()
{
  result = qword_27DF08DB8;
  if (!qword_27DF08DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DB0, &unk_238761C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DB8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t FinancialConnectionUIExtensionAuthorizationScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FinancialConnectionUIExtensionAuthorizationScene.body.getter(uint64_t a1)
{
  v6 = *v1;
  v3 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;

  return MEMORY[0x2821169D0](0xD000000000000013, 0x8000000238785170, sub_2384369C8, v3, sub_23843765C, 0, v5, *(&v5 + 1));
}

uint64_t sub_238436814@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  sub_23844EA0C(v11, a2, a3);
  v15 = *(v7 + 8);
  v15(v11, a2);
  sub_23844EA0C(v13, a2, a3);
  v15(v13, a2);
}

uint64_t sub_2384369D4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23875C050();
}

uint64_t sub_238436A20()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23875C040();
}

uint64_t sub_238436A78()
{
  sub_23875F700();
  v1 = *v0;
  swift_getWitnessTable();
  sub_23875C040();
  return sub_23875F760();
}

uint64_t sub_238436AE0(uint64_t a1, id *a2)
{
  result = sub_23875EA60();
  *a2 = 0;
  return result;
}

uint64_t sub_238436B58(uint64_t a1, id *a2)
{
  v3 = sub_23875EA70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_238436BD8@<X0>(uint64_t *a1@<X8>)
{
  sub_23875EA80();
  v2 = sub_23875EA50();

  *a1 = v2;
  return result;
}

uint64_t sub_238436C24(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x23EE60A10](a1, &v6);
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

uint64_t sub_238436C78(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x23EE60A20](a1, &v7);
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

uint64_t sub_238436CF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_23875C030();
}

uint64_t sub_238436D64()
{
  sub_238437988(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  sub_238437988(&qword_27DF09098, type metadata accessor for PKAnalyticsKey);

  return sub_23875F580();
}

uint64_t sub_238436E20()
{
  sub_238437988(&qword_27DF09080, type metadata accessor for PKAnalyticsSubject);
  sub_238437988(&qword_27DF09088, type metadata accessor for PKAnalyticsSubject);

  return sub_23875F580();
}

uint64_t sub_238436EDC()
{
  sub_238437988(&qword_27DF09148, type metadata accessor for CIContextOption);
  sub_238437988(&qword_27DF09150, type metadata accessor for CIContextOption);

  return sub_23875F580();
}

uint64_t sub_238436F98()
{
  sub_238437988(&qword_27DF09138, type metadata accessor for OpenExternalURLOptionsKey);
  sub_238437988(&qword_27DF09140, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_23875F580();
}

uint64_t sub_238437054()
{
  sub_238437988(&qword_27DF09128, type metadata accessor for URLResourceKey);
  sub_238437988(&qword_27DF09130, type metadata accessor for URLResourceKey);

  return sub_23875F580();
}

uint64_t sub_238437110()
{
  sub_238437988(&qword_27DF091F0, type metadata accessor for Key);
  sub_238437988(&qword_27DF091F8, type metadata accessor for Key);

  return sub_23875F580();
}

uint64_t sub_2384371CC()
{
  sub_238437988(&qword_27DF09228, type metadata accessor for AttributeName);
  sub_238437988(&qword_27DF09230, type metadata accessor for AttributeName);

  return sub_23875F580();
}

uint64_t sub_238437288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23875EA50();

  *a2 = v5;
  return result;
}

uint64_t sub_2384372D0()
{
  sub_238437988(&qword_27DF09218, type metadata accessor for TraitKey);
  sub_238437988(&qword_27DF09220, type metadata accessor for TraitKey);

  return sub_23875F580();
}

double sub_23843738C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_238437398()
{
  v2 = *v0;
  sub_238437988(&qword_27DF09200, type metadata accessor for Weight);
  sub_238437988(&qword_27DF09208, type metadata accessor for Weight);
  sub_238438414();
  return sub_23875F580();
}

uint64_t sub_238437460()
{
  v1 = *v0;
  v2 = sub_23875EA80();
  v3 = MEMORY[0x23EE636B0](v2);

  return v3;
}

uint64_t sub_23843749C()
{
  v1 = *v0;
  sub_23875EA80();
  sub_23875EB30();
}

uint64_t sub_2384374F0()
{
  v1 = *v0;
  sub_23875EA80();
  sub_23875F700();
  sub_23875EB30();
  v2 = sub_23875F760();

  return v2;
}

uint64_t sub_23843756C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x23EE64220](*&v1);
}

uint64_t sub_2384375A8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_2384375C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23875EA80();
  v6 = v5;
  if (v4 == sub_23875EA80() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23875F630();
  }

  return v9 & 1;
}

unint64_t sub_238437664()
{
  result = qword_27DF08DC0;
  if (!qword_27DF08DC0)
  {
    sub_23875C830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF08DC0);
  }

  return result;
}

uint64_t sub_2384376B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238437744()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238437798(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2384377E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2384378E4(uint64_t a1, int a2)
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

uint64_t sub_238437904(uint64_t result, int a2, int a3)
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

uint64_t sub_238437988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238437D40(uint64_t a1, int a2)
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

uint64_t sub_238437D60(uint64_t result, int a2, int a3)
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

unint64_t sub_238438414()
{
  result = qword_27DF09210;
  if (!qword_27DF09210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09210);
  }

  return result;
}

void sub_23843847C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23843856C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384385A4()
{
  type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238438628();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238438628()
{
  if (!qword_2814F09B0)
  {
    sub_23875C450();
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F09B0);
    }
  }
}

uint64_t sub_2384386A8()
{
  result = _s19ShippingFulfillmentO12StatusValuesVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23843872C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = 0;
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v6 && ((a1[24] ^ a2[24]) & 1) == 0)
  {
    v8 = a1;
    if (sub_23860ADBC(&a1[*(a3 + 20)], &a2[*(a3 + 20)]))
    {
      v10 = *(a3 + 24);
      v11 = *&v8[v10];
      v12 = *&v8[v10 + 8];
      v13 = &a2[v10];
      if (v11 == *v13 && v12 == *(v13 + 1))
      {
        return 1;
      }

      else
      {

        return sub_23875F630();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238438814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092C8, &qword_238763070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  *v4 = sub_23875CE60();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092D0, &qword_238763078);
  sub_23843898C(v0, &v4[*(v5 + 44)]);
  v6 = *(v0 + 8);
  v9[2] = 0;
  v9[3] = 0xE000000000000000;
  sub_23875F470();
  MEMORY[0x23EE63650](0xD000000000000036, 0x8000000238785660);
  v9[1] = v6;
  v7 = sub_23875F600();
  MEMORY[0x23EE63650](v7);

  sub_238439680();
  sub_23875DE00();

  return sub_238439884(v4, &qword_27DF092C8, &qword_238763070);
}

uint64_t sub_23843898C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v54 = sub_23875DFD0();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23875C450();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v47[-v11];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092E0, &qword_238763080);
  v13 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v57 = &v47[-v14];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092E8, &qword_238763088);
  v15 = *(*(v55 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v55);
  v59 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v47[-v19];
  MEMORY[0x28223BE20](v18);
  v58 = &v47[-v20];
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = sub_23875D030();
  v67 = 1;
  v21 = v49;
  sub_238439128(v49, &v63);
  v74 = *&v64[80];
  v75[0] = *&v64[96];
  *(v75 + 12) = *&v64[108];
  v70 = *&v64[16];
  v71 = *&v64[32];
  v72 = *&v64[48];
  v73 = *&v64[64];
  v68 = v63;
  v69 = *v64;
  v76[6] = *&v64[80];
  v77[0] = *&v64[96];
  *(v77 + 12) = *&v64[108];
  v76[2] = *&v64[16];
  v76[3] = *&v64[32];
  v76[4] = *&v64[48];
  v76[5] = *&v64[64];
  v76[0] = v63;
  v76[1] = *v64;
  sub_23843981C(&v68, &v61, &qword_27DF092F0, &qword_238763090);
  sub_238439884(v76, &qword_27DF092F0, &qword_238763090);
  *&v66[87] = v73;
  *&v66[103] = v74;
  *&v66[119] = v75[0];
  *&v66[131] = *(v75 + 12);
  *&v66[23] = v69;
  *&v66[39] = v70;
  *&v66[55] = v71;
  *&v66[71] = v72;
  *&v66[7] = v68;
  v48 = v67;
  v22 = &v21[*(type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment(0) + 20)];
  sub_2384D4E38(v12);
  (*(v6 + 104))(v10, *MEMORY[0x277CDF3D0], v5);
  LOBYTE(v22) = sub_23875C440();
  v23 = *(v6 + 8);
  v23(v10, v5);
  v23(v12, v5);
  v24 = objc_opt_self();
  v25 = &selRef_systemGray4Color;
  if ((v22 & 1) == 0)
  {
    v25 = &selRef_systemGray2Color;
  }

  v26 = [v24 *v25];
  v49 = sub_23875DFB0();
  v27 = sub_23875E040();
  (*(v52 + 104))(v53, *MEMORY[0x277CE0EE0], v54);
  v28 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v30 = v57;
  v31 = &v57[*(v51 + 36)];
  v32 = type metadata accessor for OrderImageStyleModifier();
  *&v31[*(v32 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v31[*(v32 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v31 = xmmword_238762FA0;
  *(v31 + 2) = 0;
  v31[24] = 1;
  *(v31 + 4) = v28;
  v31[40] = 1;
  *v30 = v49;
  v30[1] = v27;
  v30[2] = 0x3FD999999999999ALL;
  v33 = swift_getKeyPath();
  v34 = v56;
  v35 = &v56[*(v55 + 36)];
  *v35 = v33;
  swift_storeEnumTagMultiPayload();
  *(v35 + *(type metadata accessor for OrderImageVignette() + 20)) = 1;
  sub_2384396E4(v30, v34, &qword_27DF092E0, &qword_238763080);
  v36 = v58;
  sub_2384396E4(v34, v58, &qword_27DF092E8, &qword_238763088);
  v37 = v59;
  sub_23843981C(v36, v59, &qword_27DF092E8, &qword_238763088);
  v38 = v50;
  v61 = v50;
  LOBYTE(v31) = v48;
  v62[0] = v48;
  *&v62[113] = *&v66[112];
  *&v62[97] = *&v66[96];
  *&v62[129] = *&v66[128];
  v39 = *&v66[143];
  *&v62[144] = *&v66[143];
  *&v62[33] = *&v66[32];
  *&v62[49] = *&v66[48];
  *&v62[65] = *&v66[64];
  *&v62[81] = *&v66[80];
  *&v62[1] = *v66;
  *&v62[17] = *&v66[16];
  v40 = *&v62[128];
  *(a2 + 128) = *&v62[112];
  *(a2 + 144) = v40;
  *(a2 + 160) = v39;
  v41 = *&v62[64];
  *(a2 + 64) = *&v62[48];
  *(a2 + 80) = v41;
  v42 = *&v62[96];
  *(a2 + 96) = *&v62[80];
  *(a2 + 112) = v42;
  v43 = *v62;
  *a2 = v61;
  *(a2 + 16) = v43;
  v44 = *&v62[32];
  *(a2 + 32) = *&v62[16];
  *(a2 + 48) = v44;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09300, &qword_238763108);
  sub_23843981C(v37, a2 + *(v45 + 64), &qword_27DF092E8, &qword_238763088);
  sub_23843981C(&v61, &v63, &qword_27DF09308, &qword_238763110);
  sub_238439884(v36, &qword_27DF092E8, &qword_238763088);
  sub_238439884(v37, &qword_27DF092E8, &qword_238763088);
  *&v64[97] = *&v66[96];
  *&v64[113] = *&v66[112];
  *v65 = *&v66[128];
  *&v64[33] = *&v66[32];
  *&v64[49] = *&v66[48];
  *&v64[65] = *&v66[64];
  *&v64[81] = *&v66[80];
  *&v64[1] = *v66;
  v63 = v38;
  v64[0] = v31;
  *&v65[15] = *&v66[143];
  *&v64[17] = *&v66[16];
  sub_238439884(&v63, &qword_27DF09308, &qword_238763110);
}

uint64_t sub_238439128@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v75 = a2;
  v3 = sub_23875BE40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23875BE20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23875BD20();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v74 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a1;
  v14 = *(a1 + 1);
  v72 = *(a1 + 2);
  v73 = v14;
  v15 = a1[24];
  v70 = v13;
  v71 = v15;
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  v69 = type metadata accessor for ExtractedOrderDetailsCollapsedFulfillment.ViewModel(0);
  v16 = *(v69 + 20);
  sub_2384399A0(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa);
  sub_238759950();
  sub_23843974C(v12);
  v65 = sub_2384397A8();
  v17 = sub_23875DAA0();
  v19 = v18;
  v21 = v20;

  sub_23875D8E0();
  v22 = sub_23875DA60();
  v24 = v23;
  v26 = v25;
  v64 = a1;

  sub_2384397FC(v17, v19, v21 & 1);

  sub_23875D890();
  v27 = sub_23875D9E0();
  v29 = v28;
  LOBYTE(v19) = v30;
  sub_2384397FC(v22, v24, v26 & 1);

  LODWORD(v84) = sub_23875D420();
  v31 = sub_23875DA20();
  v66 = v32;
  v67 = v31;
  v34 = v33;
  v68 = v35;
  sub_2384397FC(v27, v29, v19 & 1);

  v36 = &v64[*(v69 + 24)];
  v37 = v36[1];
  v84 = *v36;
  v85 = v37;

  v38 = sub_23875DAA0();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  KeyPath = swift_getKeyPath();
  v46 = sub_23875D820();
  v47 = swift_getKeyPath();
  v42 &= 1u;
  LOBYTE(v84) = v42;
  LOBYTE(v80) = 0;
  v48 = sub_23875D420();
  v77 = v34 & 1;
  *&v80 = v38;
  *(&v80 + 1) = v40;
  LOBYTE(v81) = v42;
  v49 = *v79;
  *(&v81 + 1) = *v79;
  DWORD1(v81) = *&v79[3];
  *(&v81 + 1) = v44;
  *&v82 = KeyPath;
  DWORD1(v83[0]) = *&v78[3];
  v50 = *v78;
  *(v83 + 1) = *v78;
  *(&v82 + 1) = 1;
  LOBYTE(v83[0]) = 0;
  *(&v83[0] + 1) = v47;
  *&v83[1] = v46;
  DWORD2(v83[1]) = v48;
  v51 = v75;
  *v75 = v70;
  v52 = v77;
  v53 = v72;
  *(v51 + 1) = v73;
  *(v51 + 2) = v53;
  v51[24] = v71;
  v54 = v66;
  v55 = v67;
  *(v51 + 4) = v67;
  *(v51 + 5) = v54;
  v51[48] = v52;
  *(v51 + 7) = v68;
  v56 = v80;
  v57 = v81;
  v58 = v82;
  *(v51 + 124) = *(v83 + 12);
  v59 = v83[0];
  *(v51 + 6) = v58;
  *(v51 + 7) = v59;
  *(v51 + 4) = v56;
  *(v51 + 5) = v57;
  v84 = v38;
  v85 = v40;
  v86 = v42;
  *&v87[3] = *&v79[3];
  *v87 = v49;
  v88 = v44;
  v89 = KeyPath;
  v90 = 1;
  v91 = 0;
  *&v92[3] = *&v78[3];
  *v92 = v50;
  v93 = v47;
  v94 = v46;
  v95 = v48;
  v60 = v55;
  v61 = v54;
  sub_23843980C(v55, v54, v34 & 1);

  sub_23843981C(&v80, &v76, &qword_27DF09318, &unk_23877D280);
  sub_238439884(&v84, &qword_27DF09318, &unk_23877D280);
  sub_2384397FC(v60, v61, v34 & 1);
}

unint64_t sub_238439680()
{
  result = qword_27DF092D8;
  if (!qword_27DF092D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF092C8, &qword_238763070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF092D8);
  }

  return result;
}

uint64_t sub_2384396E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23843974C(uint64_t a1)
{
  v2 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2384397A8()
{
  result = qword_2814F08D0;
  if (!qword_2814F08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F08D0);
  }

  return result;
}

uint64_t sub_2384397FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23843980C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23843981C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238439884(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2384398E4()
{
  result = qword_27DF09320;
  if (!qword_27DF09320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09328, &qword_238763180);
    sub_238439680();
    sub_2384399A0(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09320);
  }

  return result;
}

uint64_t sub_2384399A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5EmptyVMa()
{
  result = qword_2814F1118;
  if (!qword_2814F1118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238439A5C()
{
  sub_238439AC8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_238439AC8()
{
  if (!qword_2814F09B8)
  {
    sub_23875E7D0();
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F09B8);
    }
  }
}

uint64_t sub_238439B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v48 = a2;
  v2 = sub_23875E7D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2387591F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09350, &qword_2387631F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v47 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v46 - v16;
  sub_23875ED50();
  v46[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 104))(v11, *MEMORY[0x277CC77B0], v7);
  v18 = sub_238758A40();
  v20 = v19;
  (*(v8 + 8))(v11, v7);
  v49 = v18;
  v50 = v20;
  sub_2384397A8();
  v21 = sub_23875DAA0();
  v23 = v22;
  v25 = v24;
  sub_2384D4E60(v6);
  v26 = (*(v3 + 88))(v6, v2);
  if (v26 == *MEMORY[0x277CE3B68])
  {
    sub_23875D7F0();
  }

  else if (v26 == *MEMORY[0x277CE3B60])
  {
    sub_23875D8E0();
  }

  else
  {
    sub_23875D820();
    (*(v3 + 8))(v6, v2);
  }

  v27 = sub_23875DA60();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_2384397FC(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v49 = v27;
  v50 = v29;
  v31 &= 1u;
  LOBYTE(v51) = v31;
  v52 = v33;
  v53 = KeyPath;
  v54 = 2;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09358, &unk_238774FB0);
  sub_23843A174();
  sub_23875DE00();
  sub_2384397FC(v27, v29, v31);

  v35 = sub_23875CE60();
  sub_23843A020(&v49);
  v36 = v49;
  LOBYTE(v27) = v50;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  LOBYTE(v49) = 1;
  v56 = v50;
  v40 = v47;
  sub_23843A22C(v17, v47);
  v41 = v48;
  sub_23843A22C(v40, v48);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09368, &qword_238763228);
  v43 = v41 + *(v42 + 48);
  *v43 = 0x4020000000000000;
  *(v43 + 8) = 0;
  v44 = v41 + *(v42 + 64);
  *v44 = v35;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  *(v44 + 24) = v36;
  *(v44 + 32) = v27;
  *(v44 + 40) = v37;
  *(v44 + 48) = v38;
  *(v44 + 56) = v39;

  sub_23843A29C(v17);

  sub_23843A29C(v40);
}

uint64_t sub_23843A020@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();
  v3 = sub_23875D8E0();
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v3;
}

uint64_t sub_23843A0FC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D030();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09340, &qword_2387631E0);
  sub_238439B3C(v1, a1 + *(v3 + 44));
  v4 = sub_23875D440();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09348, &qword_2387631E8);
  *(a1 + *(result + 36)) = v4;
  return result;
}

unint64_t sub_23843A174()
{
  result = qword_2814F0988;
  if (!qword_2814F0988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09358, &unk_238774FB0);
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0988);
  }

  return result;
}

uint64_t sub_23843A22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09350, &qword_2387631F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23843A29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09350, &qword_2387631F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23843A304()
{
  result = qword_2814F0970;
  if (!qword_2814F0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09348, &qword_2387631E8);
    sub_23843A3E8(&qword_2814F08F0, &qword_27DF09370, &qword_238763260);
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0970);
  }

  return result;
}

uint64_t sub_23843A3E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23843A430()
{
  v0 = sub_238759910();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_23875F3A0();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EE63F70](v6, v1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v1 + 8 * v6 + 32);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v8 = v7;
      v9 = [v8 image];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v10 = v9;
    v11 = sub_23875EA80();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_238497C2C(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_238497C2C((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_24:

  v16 = *(v5 + 2);

  if (v16 < 5)
  {
    return sub_23875F600();
  }

  v19 = sub_23875F600();
  MEMORY[0x23EE63650](43, 0xE100000000000000);
  return v19;
}

uint64_t sub_23843A644(uint64_t a1)
{
  if (a1 < 0)
  {
    v3 = sub_23875A7C0();
    result = *&aOpen[8 * v3];
    v4 = *&aCancelle[8 * v3 + 8];
  }

  else
  {
    v1 = sub_23875AA30();
    if (v1 > 3)
    {
      if (v1 > 5)
      {
        if (v1 == 6)
        {
          return 0x6575737369;
        }

        else
        {
          return 0x656C6C65636E6163;
        }
      }

      else if (v1 == 4)
      {
        return 0x65726576696C6564;
      }

      else if (sub_23875AA00())
      {
        return 0x6863746170736964;
      }

      else
      {
        return 0x64657070696873;
      }
    }

    else if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x7961576568546E6FLL;
      }

      else
      {
        return 0x6544726F4674756FLL;
      }
    }

    else if (v1)
    {
      if (sub_23875AA00())
      {
        return 0x6E69726170657270;
      }

      else
      {
        return 0x69737365636F7270;
      }
    }

    else
    {
      return 1852141679;
    }
  }

  return result;
}

uint64_t sub_23843A804(unint64_t a1, SEL *a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = [a1 & 0x7FFFFFFFFFFFFFFFLL *a2];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = [a1 *a2];
    if (v2)
    {
LABEL_3:
      v3 = v2;
      v4 = *MEMORY[0x277D38528];
      v5 = sub_23875EA80();

      return v5;
    }
  }

  v7 = *MEMORY[0x277D38520];
  return sub_23875EA80();
}

uint64_t sub_23843A894(unint64_t a1)
{
  v2 = sub_23875BB30();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - v13;
  v14 = sub_23875BC40();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v32 - v24;
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v35 = a1;
  v26 = [v35 shippedDate];
  if (v26)
  {
    v27 = v26;
    sub_23875BBE0();

    (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v22, 1, 1, v14);
  }

  sub_23843AC44(v22, v25);
  if ((*(v15 + 48))(v25, 1, v14))
  {

    sub_23843ACB4(v25);
    return 0;
  }

  (*(v15 + 16))(v18, v25, v14);
  v29 = sub_23843ACB4(v25);
  MEMORY[0x23EE5FF10](v29);
  sub_23875BB00();
  v30 = *(v34 + 8);
  v30(v5, v2);
  sub_23875BB20();
  v30(v8, v2);
  v31 = v33;
  sub_23875BB10();
  v30(v11, v2);
  sub_23843AD1C();
  sub_23875BC20();

  v30(v31, v2);
  (*(v15 + 8))(v18, v14);
  return v36;
}

uint64_t sub_23843AC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23843ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23843AD1C()
{
  result = qword_27DF09378;
  if (!qword_27DF09378)
  {
    sub_23875BB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09378);
  }

  return result;
}

uint64_t sub_23843AD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = [v0 payment];
  if (!v9)
  {
    return 0;
  }

  sub_238758FE0();
  v10 = sub_238759C30();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {

    v12 = 1701736302;
  }

  else
  {
    sub_23843B530(v8, v4);
    v13 = (*(v11 + 88))(v4, v10);
    if (v13 == *MEMORY[0x277CC7C80])
    {

      v12 = 0x676E69646E6570;
    }

    else if (v13 == *MEMORY[0x277CC7C68])
    {

      v12 = 0x7A69726F68747561;
    }

    else if (v13 == *MEMORY[0x277CC7C70])
    {

      v12 = 1684627824;
    }

    else if (v13 == *MEMORY[0x277CC7C90])
    {

      v12 = 0x6465646E75666572;
    }

    else if (v13 == *MEMORY[0x277CC7C88])
    {

      v12 = 0x64656E696C636564;
    }

    else
    {
      v14 = *MEMORY[0x277CC7C78];
      v15 = v13;

      if (v15 == v14)
      {
        v12 = 0x646564696F76;
      }

      else
      {
        (*(v11 + 8))(v4, v10);
        v12 = 0;
      }
    }
  }

  sub_23843B4C8(v8);
  return v12;
}

void sub_23843B030(void *a1)
{
  v2 = sub_238758D20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isMarkedAsComplete])
  {
    v8 = *MEMORY[0x277D38528];

    sub_23875EA80();
    return;
  }

  sub_23875A570();
  v9 = (*(v3 + 88))(v7, v2);
  v10 = *MEMORY[0x277CC7480];
  (*(v3 + 8))(v7, v2);
  if (v9 == v10)
  {
    v11 = sub_23875A4F0();
    v12 = *(v11 + 16);
    if (v12)
    {
      for (i = 0; v12 != i; ++i)
      {
        if (i >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        v14 = *(v11 + 8 * i + 32);
        if ((v14 & 0x8000000000000000) != 0)
        {
          v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
          sub_23875A7C0();
          v17 = sub_238759A10();
          v18 = sub_238759A10();
        }

        else
        {
          v15 = v14;
          sub_23875AA30();
          v16 = sub_23875A240();
          if (v16 == sub_23875A240())
          {

            continue;
          }

          sub_23875AA30();
          v17 = sub_23875A240();
          v18 = sub_23875A240();
        }

        v19 = v18;

        if (v17 != v19)
        {

          v20 = MEMORY[0x277D38520];
          goto LABEL_19;
        }
      }
    }
  }

  v20 = MEMORY[0x277D38528];
LABEL_19:
  v21 = *v20;
  sub_23875EA80();
}

uint64_t sub_23843B254()
{
  v1 = v0;
  v2 = sub_23875BB30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = sub_23875BC40();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v1 updatedDate];
  sub_23875BBE0();

  MEMORY[0x23EE5FF10]();
  sub_23875BB00();
  v23 = *(v3 + 8);
  v23(v6, v2);
  sub_23875BB20();
  v23(v9, v2);
  sub_23875BB10();
  v23(v12, v2);
  sub_23843AD1C();
  sub_23875BC20();
  v23(v15, v2);
  (*(v17 + 8))(v21, v16);
  return v25;
}

uint64_t sub_23843B4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23843B530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09380, &qword_2387632C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23843B5A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23843B618()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

void *BankConnectAccountConnectionViewModel.__allocating_init(institution:consentID:paymentPass:flowType:bankConnectService:store:ignoreConnectedAccounts:autocompletionDelay:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v41 = a8;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v39 = a7;
  v40 = a11;
  v37 = a6;
  v38 = a10;
  v36 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = *(v12 + 48);
  v23 = *(v12 + 52);
  v24 = swift_allocObject();
  LOBYTE(a5) = *a5;
  v42 = 0;
  v43 = 0;
  v44 = 3;
  sub_23875C290();
  v25 = sub_23875A9F0();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  sub_23843981C(v21, v19, &qword_27DF0D390, &unk_238763350);
  sub_23875C290();
  sub_238439884(v21, &qword_27DF0D390, &unk_238763350);
  *(v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_shouldLoadData) = 1;
  v26 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
  v27 = sub_238757B60();
  (*(*(v27 - 8) + 32))(v24 + v26, a1, v27);
  v28 = (v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID);
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  v24[6] = v35;
  *(v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType) = a5;
  v30 = v39;
  v24[2] = v37;
  v24[3] = v30;
  *(v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts) = v41;
  *(v24 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay) = v36;
  v31 = v40;
  v24[4] = v38;
  v24[5] = v31;
  return v24;
}

char *BankConnectAccountConnectionViewModel.init(institution:consentID:paymentPass:flowType:bankConnectService:store:ignoreConnectedAccounts:autocompletionDelay:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v49 = a7;
  v50 = a11;
  v47 = a6;
  v48 = a10;
  v46 = a9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v41);
  v16 = &v39[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v39[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A0, &qword_238763360);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v39[-v27];
  v40 = *a5;
  v29 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__state;
  v52 = 0;
  v53 = 0;
  v54 = 3;
  sub_23875C290();
  (*(v25 + 32))(&v11[v29], v28, v24);
  v30 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__selectedAccountFQAI;
  v31 = sub_23875A9F0();
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  sub_23843981C(v23, v21, &qword_27DF0D390, &unk_238763350);
  sub_23875C290();
  sub_238439884(v23, &qword_27DF0D390, &unk_238763350);
  (*(v13 + 32))(&v11[v30], v16, v41);
  v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_shouldLoadData] = 1;
  v32 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
  v33 = sub_238757B60();
  (*(*(v33 - 8) + 32))(&v11[v32], v42, v33);
  v34 = &v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID];
  v35 = v44;
  *v34 = v43;
  *(v34 + 1) = v35;
  *(v11 + 6) = v45;
  v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType] = v40;
  v36 = v49;
  *(v11 + 2) = v47;
  *(v11 + 3) = v36;
  v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts] = v51;
  *&v11[OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay] = v46;
  v37 = v50;
  *(v11 + 4) = v48;
  *(v11 + 5) = v37;
  return v11;
}

uint64_t sub_23843BC84()
{
  v1[27] = v0;
  v2 = sub_23875C1E0();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = sub_23875A9F0();
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();
  v8 = sub_238758680();
  v1[34] = v8;
  v9 = *(v8 - 8);
  v1[35] = v9;
  v10 = *(v9 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v12 = sub_23875AAB0();
  v1[41] = v12;
  v13 = *(v12 - 8);
  v1[42] = v13;
  v14 = *(v13 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  sub_23875ED50();
  v1[45] = sub_23875ED40();
  v16 = sub_23875ECE0();
  v1[46] = v16;
  v1[47] = v15;

  return MEMORY[0x2822009F8](sub_23843BEF4, v16, v15);
}

uint64_t sub_23843BEF4()
{
  v1 = *(v0 + 216);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (*(v0 + 32))
  {
    if (v4 != 3 || v3 | v2)
    {
      v5 = *(v0 + 360);
      v6 = *(v0 + 240);
      sub_2384488D8(v2, v3, v4);

      sub_23875C120();
      v7 = sub_23875C1B0();
      v8 = sub_23875EFE0();
      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 232);
      v10 = *(v0 + 240);
      v12 = *(v0 + 224);
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2383F8000, v7, v8, "Inconsistent state! The account is being connected already!", v13, 2u);
        MEMORY[0x23EE64DF0](v13, -1, -1);
      }

      (*(v11 + 8))(v10, v12);
      v15 = *(v0 + 344);
      v14 = *(v0 + 352);
      v17 = *(v0 + 312);
      v16 = *(v0 + 320);
      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 288);
      v21 = *(v0 + 264);
      v22 = *(v0 + 240);

      v23 = *(v0 + 8);

      return v23();
    }
  }

  else
  {
    sub_2384488D8(v2, v3, v4);
  }

  v25 = *(v0 + 216);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 40) = xmmword_2387632D0;
  *(v0 + 56) = 3;

  sub_23875C2E0();
  v26 = *(v25 + 48);
  *(v0 + 384) = v26;
  if (v26)
  {
    v27 = *(v0 + 320);
    v28 = *(v0 + 216);
    v29 = *(v28 + 16);
    v30 = [v26 primaryAccountIdentifier];
    v31 = sub_23875EA80();
    v33 = v32;

    *(v0 + 392) = v33;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v34 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
    v35 = *(v28 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_ignoreConnectedAccounts);
    v36 = *(MEMORY[0x277CC72B8] + 4);
    v37 = swift_task_alloc();
    *(v0 + 400) = v37;
    *v37 = v0;
    v37[1] = sub_23843C2E8;
    v38 = *(v0 + 352);
    v39 = *(v0 + 320);

    return MEMORY[0x282117DA8](v38, v31, v33, v39, v28 + v34, 1, v35);
  }

  else
  {
    v40 = *(v0 + 216);
    v41 = *(v40 + 16);
    v42 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
    v43 = *(MEMORY[0x277CC72E0] + 4);
    v44 = swift_task_alloc();
    *(v0 + 456) = v44;
    *v44 = v0;
    v44[1] = sub_23843CEB4;

    return MEMORY[0x282117DD0](v40 + v42);
  }
}

uint64_t sub_23843C2E8()
{
  v2 = *v1;
  v3 = (*v1)[50];
  v4 = *v1;
  (*v1)[51] = v0;

  v5 = v2[49];
  sub_238439884(v2[40], &qword_27DF0D390, &unk_238763350);

  v6 = v2[47];
  v7 = v2[46];
  if (v0)
  {
    v8 = sub_23843D9FC;
  }

  else
  {
    v8 = sub_23843C468;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23843C468()
{
  v42 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  (*(v3 + 16))(v1, *(v0 + 352), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277CC81A0])
  {
    v5 = *(v0 + 344);
    v6 = *(v0 + 216);
    (*(*(v0 + 336) + 96))(v5, *(v0 + 328));
    v7 = *v5;
    *(v0 + 416) = v7;
    v41 = 0;
    sub_23843F8DC(&v41);
    v8 = swift_task_alloc();
    *(v0 + 424) = v8;
    *v8 = v0;
    v8[1] = sub_23843C878;
    v9 = *(v0 + 216);

    return sub_23843E038(v7);
  }

  else if (v4 == *MEMORY[0x277CC8198])
  {
    v11 = *(v0 + 384);
    v12 = *(v0 + 360);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 328);
    v16 = *(v0 + 216);

    (*(v14 + 96))(v13, v15);
    v17 = *v13;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 136) = v11;
    *(v0 + 144) = v17;
    *(v0 + 152) = 0;

    v18 = v11;

    sub_23875C2E0();
    if (*(v17 + 16))
    {
      v19 = *(v0 + 312);
      v20 = *(v0 + 296);
      v21 = *(v0 + 272);
      v22 = *(v0 + 280);
      (*(v22 + 16))(v20, v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21);

      sub_238758530();
      (*(v22 + 8))(v20, v21);
      v23 = 0;
    }

    else
    {

      v23 = 1;
    }

    v24 = *(v0 + 384);
    v25 = *(v0 + 336);
    v39 = *(v0 + 328);
    v40 = *(v0 + 352);
    v27 = *(v0 + 304);
    v26 = *(v0 + 312);
    v28 = *(v0 + 216);
    (*(*(v0 + 256) + 56))(v26, v23, 1, *(v0 + 248));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23843981C(v26, v27, &qword_27DF0D390, &unk_238763350);

    sub_23875C2E0();

    sub_238439884(v26, &qword_27DF0D390, &unk_238763350);
    (*(v25 + 8))(v40, v39);
    v30 = *(v0 + 344);
    v29 = *(v0 + 352);
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
    v34 = *(v0 + 296);
    v33 = *(v0 + 304);
    v35 = *(v0 + 288);
    v36 = *(v0 + 264);
    v37 = *(v0 + 240);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    return sub_23875F520();
  }
}

uint64_t sub_23843C878()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[54] = v4;
  *v4 = v3;
  v4[1] = sub_23843C9D0;
  v5 = v1[52];
  v6 = v1[27];

  return sub_23843E804(v5);
}

uint64_t sub_23843C9D0()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v6 = *v0;

  v3 = *(v1 + 376);
  v4 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_23843CAF0, v4, v3);
}

uint64_t sub_23843CAF0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 216);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 160) = v1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;

  sub_23875C2E0();
  v3 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay);
  v4 = *(MEMORY[0x277D857E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 440) = v5;
  *v5 = v0;
  v5[1] = sub_23843CBF8;

  return MEMORY[0x282200480](v3);
}

uint64_t sub_23843CBF8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = sub_23843DB88;
  }

  else
  {
    v7 = sub_23843CD34;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23843CD34()
{
  v25 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 216);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 384);
  v7 = *(v0 + 352);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  if (v5 == 1)
  {
    v10 = *(v0 + 216);
    sub_2384488D8(v3, v4, 1);
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v24 = 0;
    v11(&v24);
  }

  else
  {
    sub_2384488D8(v3, v4, v5);
  }

  (*(v9 + 8))(v7, v8);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 264);
  v21 = *(v0 + 240);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23843CEB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  *(v4 + 464) = a1;
  *(v4 + 472) = v1;

  v7 = *(v3 + 376);
  v8 = *(v3 + 368);
  if (v1)
  {
    v9 = sub_23843DD30;
  }

  else
  {
    v9 = sub_23843CFF8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23843CFF8()
{
  v54 = v0;
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 256);
    v53[0] = MEMORY[0x277D84F90];
    sub_2385FE468(0, v2, 0);
    v3 = v53[0];
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v50 = *(v4 + 56);
    v51 = v6;
    v52 = v0;
    v48 = (v4 - 8);
    v49 = (v5 + 8);
    do
    {
      v8 = *(v0 + 288);
      v9 = v3;
      v11 = *(v0 + 264);
      v10 = *(v0 + 272);
      v12 = *(v0 + 248);
      v51(v8, v7, v10);
      sub_238758530();
      v13 = sub_23875A9E0();
      v15 = v14;
      (*v49)(v11, v12);
      v16 = v10;
      v3 = v9;
      (*v48)(v8, v16);
      v53[0] = v9;
      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        sub_2385FE468((v17 > 1), v18 + 1, 1);
        v3 = v53[0];
      }

      v3[2] = v18 + 1;
      v19 = &v3[2 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v15;
      v7 += v50;
      --v2;
      v0 = v52;
    }

    while (v2);
  }

  v20 = *(v0 + 472);
  v21 = *(v0 + 216);
  v22 = *(v21 + 24);
  v23 = sub_238758010();
  v24 = swift_task_alloc();
  v24[2] = v21;
  v24[3] = v3;
  v24[4] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  sub_23875F120();
  if (v20)
  {
    v25 = *(v0 + 464);
    v26 = *(v0 + 360);

    v27 = *(v0 + 216);
    v53[0] = v20;
    v28 = v20;
    v29 = v20;
    sub_23843F8DC(v53);
    sub_238448A54(v20);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v20;
    *(v0 + 72) = 0;
    *(v0 + 80) = 2;

    v30 = v20;
    sub_23875C2E0();
    v31 = *(v27 + 32);
    v32 = *(v27 + 40);
    v53[0] = v20;
    v31(v53);

    sub_238448A54(v53[0]);
    v34 = *(v0 + 344);
    v33 = *(v0 + 352);
    v35 = *(v0 + 312);
    v36 = *(v0 + 320);
    v38 = *(v0 + 296);
    v37 = *(v0 + 304);
    v39 = *(v0 + 288);
    v40 = *(v0 + 264);
    v41 = *(v0 + 240);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *(v0 + 464);

    v45 = *(v0 + 208);
    v53[0] = v44;
    sub_238569AA0(v45);
    *(v0 + 480) = v44;
    v46 = swift_task_alloc();
    *(v0 + 488) = v46;
    *v46 = v0;
    v46[1] = sub_23843D3E8;
    v47 = *(v0 + 216);

    return sub_23843E038(v44);
  }
}

uint64_t sub_23843D3E8()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[62] = v4;
  *v4 = v3;
  v4[1] = sub_23843D540;
  v5 = v1[60];
  v6 = v1[27];

  return sub_23843E804(v5);
}

uint64_t sub_23843D540()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v6 = *v0;

  v3 = *(v1 + 376);
  v4 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_23843D660, v4, v3);
}

uint64_t sub_23843D660()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 216);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  sub_23875C2E0();
  v3 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_autocompletionDelay);
  v4 = *(MEMORY[0x277D857E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  *v5 = v0;
  v5[1] = sub_23843D768;

  return MEMORY[0x282200480](v3);
}

uint64_t sub_23843D768()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = sub_23843DEB4;
  }

  else
  {
    v7 = sub_23843D8A4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23843D8A4()
{
  v21 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 216);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  if (v5 == 1)
  {
    v6 = *(v0 + 216);
    sub_2384488D8(v3, v4, 1);
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    v20 = 0;
    v7(&v20);
  }

  else
  {
    sub_2384488D8(v3, v4, v5);
  }

  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23843D9FC()
{
  v22 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);

  v3 = *(v0 + 408);
  v4 = *(v0 + 216);
  v21 = v3;
  v5 = v3;
  v6 = v3;
  sub_23843F8DC(&v21);
  sub_238448A54(v3);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v3;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v7 = v3;
  sub_23875C2E0();
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v21 = v3;
  v8(&v21);

  sub_238448A54(v21);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v16 = *(v0 + 288);
  v17 = *(v0 + 264);
  v18 = *(v0 + 240);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23843DB88()
{
  v25 = v0;
  v1 = *(v0 + 384);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 448);
  v7 = *(v0 + 216);
  v24 = v6;
  v8 = v6;
  v9 = v6;
  sub_23843F8DC(&v24);
  sub_238448A54(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v6;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v10 = v6;
  sub_23875C2E0();
  v11 = *(v7 + 32);
  v12 = *(v7 + 40);
  v24 = v6;
  v11(&v24);

  sub_238448A54(v24);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 264);
  v21 = *(v0 + 240);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23843DD30()
{
  v21 = v0;
  v1 = *(v0 + 360);

  v2 = *(v0 + 472);
  v3 = *(v0 + 216);
  v20 = v2;
  v4 = v2;
  v5 = v2;
  sub_23843F8DC(&v20);
  sub_238448A54(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v6 = v2;
  sub_23875C2E0();
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v20 = v2;
  v7(&v20);

  sub_238448A54(v20);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23843DEB4()
{
  v21 = v0;
  v1 = *(v0 + 360);

  v2 = *(v0 + 512);
  v3 = *(v0 + 216);
  v20 = v2;
  v4 = v2;
  v5 = v2;
  sub_23843F8DC(&v20);
  sub_238448A54(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 2;

  v6 = v2;
  sub_23875C2E0();
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v20 = v2;
  v7(&v20);

  sub_238448A54(v20);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23843E038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875C1E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_23875A9F0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_23875ED50();
  v2[10] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v2[11] = v10;
  v2[12] = v9;

  return MEMORY[0x2822009F8](sub_23843E188, v10, v9);
}

uint64_t sub_23843E188()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 104) = v1;
  if (v1)
  {
    *(v0 + 112) = *(*(v0 + 24) + 16);
    v2 = *(sub_238758680() - 8);
    *(v0 + 152) = *(v2 + 80);
    *(v0 + 120) = *(v2 + 72);
    *(v0 + 128) = 0;
    v3 = *(v0 + 72);
    sub_238758530();
    v4 = *(MEMORY[0x277CC72C0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_23843E2F8;
    v6 = *(v0 + 112);
    v7 = *(v0 + 72);

    return MEMORY[0x282117DB0](v7);
  }

  else
  {
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_23843E2F8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_23843E5B4;
  }

  else
  {
    v10 = sub_23843E490;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_23843E490()
{
  v1 = *(v0 + 128) + 1;
  if (v1 == *(v0 + 104))
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 48);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 128) = v1;
    v7 = *(v0 + 72);
    v8 = *(v0 + 16) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 120) * v1;
    sub_238758530();
    v9 = *(MEMORY[0x277CC72C0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_23843E2F8;
    v11 = *(v0 + 112);
    v12 = *(v0 + 72);

    return MEMORY[0x282117DB0](v12);
  }
}

uint64_t sub_23843E5B4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);
  sub_23875C120();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to load payment info after connecting an account. %@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v11 = *(v0 + 144);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 32);

  (*(v13 + 8))(v12, v14);
  v15 = *(v0 + 128) + 1;
  if (v15 == *(v0 + 104))
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 48);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    *(v0 + 128) = v15;
    v21 = *(v0 + 72);
    v22 = *(v0 + 16) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 120) * v15;
    sub_238758530();
    v23 = *(MEMORY[0x277CC72C0] + 4);
    v24 = swift_task_alloc();
    *(v0 + 136) = v24;
    *v24 = v0;
    v24[1] = sub_23843E2F8;
    v25 = *(v0 + 112);
    v26 = *(v0 + 72);

    return MEMORY[0x282117DB0](v26);
  }
}

uint64_t sub_23843E804(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875C1E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_23875A9F0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_23875ED50();
  v2[10] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v2[11] = v10;
  v2[12] = v9;

  return MEMORY[0x2822009F8](sub_23843E954, v10, v9);
}

uint64_t sub_23843E954()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 104) = v1;
  if (v1)
  {
    *(v0 + 112) = *(*(v0 + 24) + 16);
    v2 = *(sub_238758680() - 8);
    *(v0 + 152) = *(v2 + 80);
    *(v0 + 120) = *(v2 + 72);
    *(v0 + 128) = 0;
    v3 = *(v0 + 72);
    sub_238758530();
    v4 = *(MEMORY[0x277CC7308] + 4);
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_23843EAC4;
    v6 = *(v0 + 112);
    v7 = *(v0 + 72);

    return MEMORY[0x282117DF8](v7);
  }

  else
  {
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_23843EAC4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_23843ED80;
  }

  else
  {
    v10 = sub_23843EC5C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_23843EC5C()
{
  v1 = *(v0 + 128) + 1;
  if (v1 == *(v0 + 104))
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 48);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 128) = v1;
    v7 = *(v0 + 72);
    v8 = *(v0 + 16) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 120) * v1;
    sub_238758530();
    v9 = *(MEMORY[0x277CC7308] + 4);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_23843EAC4;
    v11 = *(v0 + 112);
    v12 = *(v0 + 72);

    return MEMORY[0x282117DF8](v12);
  }
}

uint64_t sub_23843ED80()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);
  sub_23875C120();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to schedule historical transactions data loading after connecting an account.\n%@", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v11 = *(v0 + 144);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 32);

  (*(v13 + 8))(v12, v14);
  v15 = *(v0 + 128) + 1;
  if (v15 == *(v0 + 104))
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 48);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    *(v0 + 128) = v15;
    v21 = *(v0 + 72);
    v22 = *(v0 + 16) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 120) * v15;
    sub_238758530();
    v23 = *(MEMORY[0x277CC7308] + 4);
    v24 = swift_task_alloc();
    *(v0 + 136) = v24;
    *v24 = v0;
    v24[1] = sub_23843EAC4;
    v25 = *(v0 + 112);
    v26 = *(v0 + 72);

    return MEMORY[0x282117DF8](v26);
  }
}

void sub_23843EFD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = a3;
  v37 = a4;
  v38 = a2;
  v41 = sub_238758680();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v41);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - v9;
  sub_238759780();
  v10 = sub_238759710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2387632E0;
  v12 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID);
  v13 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID + 8);
  *(v11 + 32) = sub_238759740();
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2387632F0;
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  *(v14 + 64) = sub_23843A3E8(&qword_27DF09558, &qword_27DF09550, &qword_2387638E0);
  *(v14 + 32) = v38;

  *(v11 + 40) = sub_23875EF80();
  v15 = MEMORY[0x277D84F90];
  *(v11 + 48) = sub_23875EF80();
  v16 = sub_23875EC60();

  v17 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v10 setPredicate_];
  v18 = v40;
  v19 = sub_23875F140();
  if (v18)
  {

    return;
  }

  v20 = v19;
  v22 = v35;
  v21 = v36;
  if (!(v19 >> 62))
  {
    v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v37;
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_18:

    *v24 = MEMORY[0x277D84F90];
    return;
  }

  v23 = sub_23875F3A0();
  v24 = v37;
  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_5:
  v42 = v15;
  sub_2385FE488(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v39 = 0;
    v40 = v10;
    v25 = v42;
    if ((v20 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v23; ++i)
      {
        MEMORY[0x23EE63F70](i, v20);
        sub_238758690();
        v42 = v25;
        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2385FE488(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v28 + 1;
        (*(v5 + 32))(v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v22, v41);
      }
    }

    else
    {
      v29 = 32;
      do
      {
        v30 = *(v20 + v29);
        sub_238758690();
        v42 = v25;
        v31 = v21;
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2385FE488(v32 > 1, v33 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v33 + 1;
        (*(v5 + 32))(v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33, v31, v41);
        v29 += 8;
        --v23;
        v21 = v31;
      }

      while (v23);
    }

    *v37 = v25;
  }
}

void sub_23843F46C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v19)
  {
    sub_2384488D8(v17, v18, v19);
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v10 = sub_23875A9F0();
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
    sub_238439884(v9, &qword_27DF0D390, &unk_238763350);
    if (v11 != 1)
    {
      v12 = sub_23875ED80();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      sub_23875ED50();

      v13 = sub_23875ED40();
      v14 = swift_allocObject();
      v15 = MEMORY[0x277D85700];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v1;
      sub_2386C3BA4(0, 0, v5, &unk_2387638B8, v14);
    }
  }
}

uint64_t sub_23843F6F4()
{
  v0[2] = sub_23875ED50();
  v0[3] = sub_23875ED40();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23843F7A0;

  return sub_23843BC84();
}

uint64_t sub_23843F7A0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238449A88, v5, v4);
}

void sub_23843F8DC(uint64_t *a1)
{
  v2 = sub_23875A820();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    if (v6 == 1)
    {
      *(inited + 16) = xmmword_238763300;
      v8 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 40) = 0x6B6E694C6B6E6162;
      *(inited + 48) = 0xEF6572756C696146;
      v9 = *MEMORY[0x277D384B8];
      *(inited + 56) = *MEMORY[0x277D384B8];
      *(inited + 64) = 0x6B6E694C6B6E6162;
      *(inited + 72) = 0xEF73736563637553;
      v10 = v8;
      v11 = v9;
      *(inited + 80) = sub_23875EA50();
      sub_23875A7E0();
      v12 = sub_23867B330(v5);
      v14 = v13;
      (*(v46 + 8))(v5, v2);
      *(inited + 88) = v12;
      *(inited + 96) = v14;
    }

    else
    {
      *(inited + 16) = xmmword_238763320;
      v26 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      v45 = inited + 32;
      *(inited + 40) = 0x6B6E694C6B6E6162;
      *(inited + 48) = 0xEF6572756C696146;
      v27 = *MEMORY[0x277D384B8];
      v28 = MEMORY[0x277D383A8];
      *(inited + 56) = *MEMORY[0x277D384B8];
      *(inited + 64) = 0x6B6E694C6B6E6162;
      v44 = v2;
      v29 = *v28;
      *(inited + 72) = 0xEF73736563637553;
      *(inited + 80) = v29;
      *(inited + 88) = 3223604;
      *(inited + 96) = 0xE300000000000000;
      v30 = *MEMORY[0x277D383C0];
      *(inited + 104) = *MEMORY[0x277D383C0];
      swift_getErrorValue();
      v31 = v26;
      v32 = v27;
      v33 = v29;
      v34 = v30;
      *(inited + 112) = sub_23875F690();
      *(inited + 120) = v35;
      *(inited + 128) = sub_23875EA50();
      sub_23875A7E0();
      v36 = sub_23867B330(v5);
      v38 = v37;
      (*(v46 + 8))(v5, v44);
      *(inited + 136) = v36;
      *(inited + 144) = v38;
    }

    sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    v15 = swift_initStackObject();
    v16 = MEMORY[0x277D383D8];
    *(v15 + 16) = xmmword_238763310;
    v17 = *v16;
    *(v15 + 32) = v17;
    *(v15 + 40) = 0x6B6E694C6B6E6162;
    *(v15 + 48) = 0xEF73736563637553;
    v18 = *MEMORY[0x277D384B8];
    *(v15 + 56) = *MEMORY[0x277D384B8];
    *(v15 + 64) = 0x6B6E694C6B6E6162;
    v19 = *MEMORY[0x277D383A8];
    *(v15 + 72) = 0xEF73736563637553;
    *(v15 + 80) = v19;
    *(v15 + 88) = 3158066;
    *(v15 + 96) = 0xE300000000000000;
    v20 = v17;
    v21 = v18;
    v22 = v19;
    *(v15 + 104) = sub_23875EA50();
    sub_23875A7E0();
    v23 = sub_23867B330(v5);
    v25 = v24;
    (*(v46 + 8))(v5, v2);
    *(v15 + 112) = v23;
    *(v15 + 120) = v25;
    sub_23854B138(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  }

  swift_arrayDestroy();
  if (*(v47 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType))
  {
    v39 = MEMORY[0x277D38550];
  }

  else
  {
    v39 = MEMORY[0x277D38560];
  }

  v40 = *v39;
  v41 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238448540(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v42 = sub_23875E910();

  [v41 subject:v40 sendEvent:v42];
}

uint64_t BankConnectAccountConnectionViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution;
  v5 = sub_238757B60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_consentID + 8);

  v7 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A0, &qword_238763360);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel__selectedAccountFQAI;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t BankConnectAccountConnectionViewModel.__deallocating_deinit()
{
  BankConnectAccountConnectionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23843FF88@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_23843FFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23843981C(v2, &v17 - v11, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t BankConnectAccountConnectionView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BankConnectAccountConnectionView(0);
  v5 = a2 + *(result + 20);
  *v5 = sub_238447830;
  *(v5 + 1) = a1;
  v5[16] = 0;
  return result;
}

uint64_t BankConnectAccountConnectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093A8, &unk_2387633A0);
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DD0, &qword_238761C58);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = v50 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093B0, &qword_2387633B0);
  v7 = *(*(v58 - 1) + 64);
  MEMORY[0x28223BE20](v58);
  v9 = v50 - v8;
  *v9 = sub_23875D020();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_23875ED50();
  v56 = sub_23875ED40();
  v57 = v10;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v54 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093B8, &qword_2387633B8) + 44)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093C0, &qword_2387633C0);
  v55 = v50;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v50 - v14;
  v16 = sub_23875D760();
  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093C8, &qword_2387633C8);
  sub_238447860();
  v17 = sub_23875C410();
  v53 = v50;
  MEMORY[0x28223BE20](v17);
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093E8, &qword_2387633D8);
  sub_23843A3E8(&qword_27DF093F0, &qword_27DF093C0, &qword_2387633C0);
  sub_238447950(&qword_27DF093F8, &qword_27DF093E8, &qword_2387633D8, sub_238447920);
  v18 = v54;
  sub_23875DBA0();
  (*(v12 + 8))(v15, v11);
  v19 = sub_23875C910();
  v20 = sub_23875D7A0();

  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09430, &qword_2387633F8) + 36)];
  *v21 = v19;
  v21[8] = v20;
  sub_23843A3E8(&qword_27DF09438, &qword_27DF093B0, &qword_2387633B0);
  v22 = v65;
  sub_23875DE40();
  sub_2383FB5F8(v9);
  v23 = type metadata accessor for BankConnectAccountConnectionView(0);
  v58 = v50;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  sub_238448588(v66, v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectAccountConnectionView);
  v26 = sub_23875ED40();
  v27 = *(v24 + 80);
  v57 = ~v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = MEMORY[0x277D85700];
  sub_2384485F0(v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + ((v27 + 32) & ~v27), type metadata accessor for BankConnectAccountConnectionView);
  v56 = sub_23875ED80();
  v29 = *(v56 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v56);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = v50 - v31;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v53 = sub_23875C830();
    v54 = v50;
    v52 = *(v53 - 1);
    v33 = *(v52 + 64);
    MEMORY[0x28223BE20](v53);
    v51 = v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_23875F470();

    v68 = 0xD000000000000040;
    v69 = 0x80000002387857B0;
    v67 = 301;
    v35 = sub_23875F600();
    v55 = v50;
    MEMORY[0x23EE63650](v35);

    v50[1] = v50;
    MEMORY[0x28223BE20](v36);
    v37 = v56;
    (*(v29 + 16))(v50 - v31, v32, v56);
    v38 = v51;
    sub_23875C820();
    (*(v29 + 8))(v32, v37);
    v39 = v61;
    (*(v59 + 32))(v61, v65, v60);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DD8, &unk_238761C60);
    v41 = (*(v52 + 32))(&v39[*(v40 + 36)], v38, v53);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DE0, &qword_238763420);
    v39 = v61;
    v43 = &v61[*(v42 + 36)];
    v44 = sub_23875C6E0();
    (*(v29 + 32))(&v43[*(v44 + 20)], v32, v56);
    *v43 = &unk_238763408;
    *(v43 + 1) = v28;
    v41 = (*(v59 + 32))(v39, v22, v60);
  }

  MEMORY[0x28223BE20](v41);
  sub_238448588(v66, v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectAccountConnectionView);
  v45 = (v27 + 16) & v57;
  v46 = swift_allocObject();
  sub_2384485F0(v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45, type metadata accessor for BankConnectAccountConnectionView);
  v47 = v64;
  (*(v62 + 32))(v64, v39, v63);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09440, &qword_238763418);
  v49 = (v47 + *(result + 36));
  *v49 = sub_238447B68;
  v49[1] = v46;
  v49[2] = 0;
  v49[3] = 0;
  return result;
}

uint64_t sub_238440C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09598, &qword_238763910);
  sub_238440D58(a1, (a2 + *(v4 + 44)));
  v5 = sub_23875D790();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093C8, &qword_2387633C8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_238440D58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v113 = a2;
  v3 = sub_23875C880();
  v108 = *(v3 - 8);
  v109 = v3;
  v4 = *(v108 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = &v97 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095A0, &qword_238763918);
  v8 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v104 = &v97 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095A8, &qword_238763920);
  v10 = *(*(v103 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v103);
  v112 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v97 - v14;
  MEMORY[0x28223BE20](v13);
  v111 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095B0, &qword_238763928);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v97 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095B8, &qword_238763930);
  v20 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v97 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095C0, &qword_238763938);
  v22 = *(*(v99 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v99);
  v110 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v25);
  v121 = &v97 - v28;
  v29 = sub_238757B60();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v107 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = (a1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  v97 = a1;
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  v38 = sub_23875C490();
  (*(v30 + 16))(v33, v38 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution, v29);

  KeyPath = swift_getKeyPath();
  LOBYTE(v122) = 0;
  v128[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v114 = *(&v147 + 1);
  v115 = v147;
  v39 = sub_238757B40();
  v118 = v40;
  v119 = v39;
  (*(v30 + 8))(v33, v29);
  v117 = v122;
  v120 = sub_23875D770();
  sub_23875C3D0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  *v19 = sub_23875D030();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095C8, &qword_238763970);
  sub_2384417B8(&v19[*(v49 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  v50 = v100;
  sub_2384396E4(v19, v100, &qword_27DF095B0, &qword_238763928);
  v51 = (v50 + *(v98 + 36));
  v52 = v152;
  v51[4] = v151;
  v51[5] = v52;
  v51[6] = v153;
  v53 = v148;
  *v51 = v147;
  v51[1] = v53;
  v54 = v150;
  v51[2] = v149;
  v51[3] = v54;
  LOBYTE(v35) = sub_23875D770();
  sub_23875C3D0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_2384396E4(v50, v27, &qword_27DF095B8, &qword_238763930);
  v63 = &v27[*(v99 + 36)];
  *v63 = v35;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  v64 = v121;
  sub_2384396E4(v27, v121, &qword_27DF095C0, &qword_238763938);
  v65 = v104;
  sub_238441A98(v104);
  LOBYTE(v50) = sub_23875D790();
  sub_23875C3D0();
  v66 = v65 + *(v101 + 36);
  *v66 = v50;
  *(v66 + 8) = v67;
  *(v66 + 16) = v68;
  *(v66 + 24) = v69;
  *(v66 + 32) = v70;
  *(v66 + 40) = 0;
  v71 = sub_23875D770();
  v72 = v105;
  sub_23843FFC8(v105);
  v74 = v108;
  v73 = v109;
  v75 = v106;
  (*(v108 + 104))(v106, *MEMORY[0x277CDF9D8], v109);
  sub_23875C870();
  v76 = *(v74 + 8);
  v76(v75, v73);
  v76(v72, v73);
  sub_23875C3D0();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v102;
  sub_2384396E4(v65, v102, &qword_27DF095A0, &qword_238763918);
  v86 = v85 + *(v103 + 36);
  *v86 = v71;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  v87 = v111;
  sub_2384396E4(v85, v111, &qword_27DF095A8, &qword_238763920);
  v88 = v110;
  sub_23843981C(v64, v110, &qword_27DF095C0, &qword_238763938);
  v89 = v112;
  sub_23843981C(v87, v112, &qword_27DF095A8, &qword_238763920);
  *&v122 = v119;
  *(&v122 + 1) = v118;
  LOBYTE(v123) = 3;
  *(&v123 + 1) = v145[0];
  DWORD1(v123) = *(v145 + 3);
  *(&v123 + 1) = 0x3FB999999999999ALL;
  *&v124 = KeyPath;
  BYTE8(v124) = v117;
  HIDWORD(v124) = *&v144[3];
  *(&v124 + 9) = *v144;
  *&v125 = v115;
  *(&v125 + 1) = v114;
  LOBYTE(v126) = v120;
  DWORD1(v126) = *&v146[3];
  *(&v126 + 1) = *v146;
  *(&v126 + 1) = v42;
  *&v127[0] = v44;
  *(&v127[0] + 1) = v46;
  *&v127[1] = v48;
  BYTE8(v127[1]) = 0;
  v90 = v123;
  v91 = v113;
  *v113 = v122;
  v91[1] = v90;
  v92 = v124;
  v93 = v125;
  *(v91 + 89) = *(v127 + 9);
  v94 = v127[0];
  v91[4] = v126;
  v91[5] = v94;
  v91[2] = v92;
  v91[3] = v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095D0, &qword_238763978);
  sub_23843981C(v88, v91 + *(v95 + 48), &qword_27DF095C0, &qword_238763938);
  sub_23843981C(v89, v91 + *(v95 + 64), &qword_27DF095A8, &qword_238763920);
  sub_23843981C(&v122, v128, &qword_27DF095D8, &qword_238763980);
  sub_238439884(v87, &qword_27DF095A8, &qword_238763920);
  sub_238439884(v121, &qword_27DF095C0, &qword_238763938);
  sub_238439884(v89, &qword_27DF095A8, &qword_238763920);
  sub_238439884(v88, &qword_27DF095C0, &qword_238763938);
  v128[0] = v119;
  v128[1] = v118;
  v129 = 3;
  *v130 = v145[0];
  *&v130[3] = *(v145 + 3);
  v131 = 0x3FB999999999999ALL;
  v132 = KeyPath;
  v133 = v117;
  *v134 = *v144;
  *&v134[3] = *&v144[3];
  v135 = v115;
  v136 = v114;
  v137 = v120;
  *&v138[3] = *&v146[3];
  *v138 = *v146;
  v139 = v42;
  v140 = v44;
  v141 = v46;
  v142 = v48;
  v143 = 0;
  sub_238439884(v128, &qword_27DF095D8, &qword_238763980);
}

uint64_t sub_2384417B8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09618, &qword_2387639A8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_23875CE60();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09620, &qword_2387639B0);
  sub_2384432A0(&v8[*(v9 + 44)]);
  v10 = sub_23875D790();
  sub_23875C3D0();
  v11 = &v8[*(v2 + 36)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v16 = sub_238443DA0();
  if (v17)
  {
    *&v34 = v16;
    *(&v34 + 1) = v17;
    sub_2384397A8();
    *&v31 = sub_23875DAA0();
    *(&v31 + 1) = v18;
    *&v32 = v19 & 1;
    *(&v32 + 1) = v20;
    v33 = 0;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09628, &qword_2387639B8);
  sub_238448D98();
  sub_23875D1B0();
  v29 = v34;
  v30 = v35;
  v21 = v36;
  sub_23843981C(v8, v6, &qword_27DF09618, &qword_2387639A8);
  sub_23843981C(v6, a1, &qword_27DF09618, &qword_2387639A8);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09640, &qword_2387639C0) + 48);
  v24 = v29;
  v23 = v30;
  *v22 = v29;
  *(v22 + 16) = v23;
  *(v22 + 32) = v21;
  v25 = v24;
  v26 = v23;
  v27 = *(&v23 + 1);
  sub_238448E78(v24, *(&v24 + 1), v23, *(&v23 + 1), v21);
  sub_238439884(v8, &qword_27DF09618, &qword_2387639A8);
  sub_238448EBC(v25, *(&v25 + 1), v26, v27, v21);
  sub_238439884(v6, &qword_27DF09618, &qword_2387639A8);
}

uint64_t sub_238441A98@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v32 = type metadata accessor for ConnectedAccountsView(0);
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v29 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095E0, &qword_238763988);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095E8, &qword_238763990);
  v6 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v27 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF095F0, &qword_238763998);
  v9 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - v10;
  v31 = type metadata accessor for BankConnectAccountPickerView(0);
  v11 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (v1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v18 = v39;
  if (v40 == 1)
  {
    v28 = v39;
    v23 = v38;

    v24 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType);

    LOBYTE(v38) = v24;
    v25 = v29;
    sub_238442D70(v23, &v38, v29);
    sub_238448588(v25, v8, type metadata accessor for ConnectedAccountsView);
    swift_storeEnumTagMultiPayload();
    sub_238448540(&qword_27DF09600, type metadata accessor for BankConnectAccountPickerView);
    sub_238448540(&qword_27DF09608, type metadata accessor for ConnectedAccountsView);
    v26 = v33;
    sub_23875D1B0();
    sub_23843981C(v26, v36, &qword_27DF095F0, &qword_238763998);
    swift_storeEnumTagMultiPayload();
    sub_238448CAC();
    sub_23875D1B0();
    sub_2384488D8(v23, v28, 1);
    sub_238439884(v26, &qword_27DF095F0, &qword_238763998);
    return sub_23844875C(v25, type metadata accessor for ConnectedAccountsView);
  }

  else if (v40)
  {
    sub_2384488D8(v38, v39, v40);
    swift_storeEnumTagMultiPayload();
    sub_238448CAC();
    return sub_23875D1B0();
  }

  else
  {
    v29 = v38;

    sub_23875C4A0();
    swift_getKeyPath();
    v19 = v31;
    v20 = v13 + *(v31 + 24);
    sub_23875C7C0();

    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    *(v13 + *(v19 + 20)) = v18;
    sub_238448588(v13, v8, type metadata accessor for BankConnectAccountPickerView);
    swift_storeEnumTagMultiPayload();
    sub_238448540(&qword_27DF09600, type metadata accessor for BankConnectAccountPickerView);
    sub_238448540(&qword_27DF09608, type metadata accessor for ConnectedAccountsView);
    v21 = v33;
    sub_23875D1B0();
    sub_23843981C(v21, v36, &qword_27DF095F0, &qword_238763998);
    swift_storeEnumTagMultiPayload();
    sub_238448CAC();
    sub_23875D1B0();
    sub_2384488D8(v29, v18, 0);
    sub_238439884(v21, &qword_27DF095F0, &qword_238763998);
    return sub_23844875C(v13, type metadata accessor for BankConnectAccountPickerView);
  }
}

uint64_t sub_238442130@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23844228C(a1);
  v2 = sub_23875D770();
  sub_23875C3D0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09408, &qword_2387633E0) + 36);
  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  v12 = sub_23875D7A0();
  sub_23875C3D0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF093E8, &qword_2387633D8);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_23844228C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09560, &qword_2387638E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09428, &qword_2387633F0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = (v1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v16 = v22;
  v17 = v23;
  if (v24)
  {
    sub_2384488D8(v22, v23, v24);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF09420, &qword_27DF09428, &qword_2387633F0);
    return sub_23875D1B0();
  }

  else
  {
    v20[0] = v20;
    MEMORY[0x28223BE20](v15);
    v20[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09568, &qword_2387638F0);
    v20[1] = a1;
    sub_23843A3E8(&qword_27DF09570, &qword_27DF09568, &qword_2387638F0);
    sub_23875D1D0();
    v19 = v21;
    (*(v21 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF09420, &qword_27DF09428, &qword_2387633F0);
    sub_23875D1B0();
    sub_2384488D8(v16, v17, 0);
    return (*(v19 + 8))(v10, v7);
  }
}

uint64_t sub_238442648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_2384426E0, v5, v4);
}

uint64_t sub_2384426E0()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  v0[6] = sub_23875C490();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2384427F0;

  return sub_23843BC84();
}

uint64_t sub_2384427F0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_238449A88, v5, v4);
}

uint64_t sub_238442934(uint64_t a1)
{
  v2 = sub_23875A820();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = (a1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  LODWORD(v8) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_flowType);

  v11 = MEMORY[0x277D38550];
  if (!v8)
  {
    v11 = MEMORY[0x277D38560];
  }

  v12 = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v14 = sub_23867B330(v6);
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v17 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v12, 17, v17);
}

uint64_t sub_238442BC4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_238442C40(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_23843981C(a1, &v13 - v9, &qword_27DF0D390, &unk_238763350);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(v10, v8, &qword_27DF0D390, &unk_238763350);

  sub_23875C2E0();
  return sub_238439884(v10, &qword_27DF0D390, &unk_238763350);
}

void sub_238442D70(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09610, &qword_2387639A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B0, &qword_2387675F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v39[-v13];
  v55 = sub_238758680();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v55);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for ConnectedAccountsView(0);
  v19 = *(v43 + 20);
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v20 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v21 = v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v54 = v20;
    v40 = v18;
    v52 = v10;
    v42 = a3;
    v23 = sub_23875ED50();
    v25 = *(v14 + 16);
    v24 = v14 + 16;
    v49 = v25;
    v50 = v23;
    v26 = *(v24 + 64);
    v41 = a1;
    v27 = a1 + ((v26 + 32) & ~v26);
    v46 = (v24 + 16);
    v48 = (v11 + 56);
    v44 = (v24 - 8);
    v28 = v24;
    v29 = MEMORY[0x277D84F90];
    v51 = v28;
    v47 = *(v28 + 56);
    v45 = v11;
    v25(v17, v27, v55);
    while (1)
    {
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238758570();
      if (v30)
      {
        v31 = sub_23875EA50();
      }

      else
      {
        v31 = 0;
      }

      v32 = [v54 passWithFPANIdentifier_];

      if (v32)
      {
        v33 = v52;
        v34 = *(v52 + 48);
        (*v46)(v9, v17, v55);
        v35 = 0;
        *&v9[v34] = v32;
      }

      else
      {
        (*v44)(v17, v55);
        v35 = 1;
        v33 = v52;
      }

      (*v48)(v9, v35, 1, v33);

      if ((*(v11 + 48))(v9, 1, v33) == 1)
      {
        sub_238439884(v9, &qword_27DF09610, &qword_2387639A0);
      }

      else
      {
        sub_2384396E4(v9, v53, &qword_27DF094B0, &qword_2387675F0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_238497F9C(0, v29[2] + 1, 1, v29);
        }

        v37 = v29[2];
        v36 = v29[3];
        if (v37 >= v36 >> 1)
        {
          v29 = sub_238497F9C(v36 > 1, v37 + 1, 1, v29);
        }

        v29[2] = v37 + 1;
        sub_2384396E4(v53, v29 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37, &qword_27DF094B0, &qword_2387675F0);
      }

      v27 += v47;
      if (!--v22)
      {
        break;
      }

      v49(v17, v27, v55);
    }

    a3 = v42;
    LOBYTE(v18) = v40;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v38 = v43;
  *(a3 + *(v43 + 24)) = v29;
  *(a3 + *(v38 + 28)) = v18;
}

uint64_t sub_2384432A0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09648, &qword_2387639C8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[2] = sub_2384434C4();
  v20[3] = v9;
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_23844387C();
  sub_23843981C(v8, v6, &qword_27DF09648, &qword_2387639C8);
  *a1 = v10;
  *(a1 + 8) = v12;
  v14 &= 1u;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09650, &unk_2387639D0);
  sub_23843981C(v6, a1 + *(v17 + 48), &qword_27DF09648, &qword_2387639C8);
  v18 = a1 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_23843980C(v10, v12, v14);

  sub_238439884(v8, &qword_27DF09648, &qword_2387639C8);
  sub_238439884(v6, &qword_27DF09648, &qword_2387639C8);
  sub_2384397FC(v10, v12, v14);
}

uint64_t sub_2384434C4()
{
  v1 = (v0 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v24 == 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v11 = qword_2814F1B90;
    v12 = sub_23875EA50();
    v13 = sub_23875EA50();
    v14 = sub_23875EA50();
    v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

    v10 = sub_23875EA80();
    sub_2384488D8(v22, v23, 1);
  }

  else if (v24)
  {
    sub_2384488D8(v22, v23, v24);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v16 = qword_2814F1B90;
    v17 = sub_23875EA50();
    v18 = sub_23875EA50();
    v19 = sub_23875EA50();
    v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

    v10 = sub_23875EA80();
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v5 = qword_2814F1B90;
    v6 = sub_23875EA50();
    v7 = sub_23875EA50();
    v8 = sub_23875EA50();
    v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

    v10 = sub_23875EA80();
    sub_2384488D8(v22, v23, 0);
  }

  return v10;
}

void sub_23844387C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EA0, &qword_238775F70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09658, &qword_2387639E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = (v0 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v14 = v26;
  if (v27 == 1)
  {
    v17 = sub_23875E0D0();
    v18 = sub_23875DFC0();
    KeyPath = swift_getKeyPath();
    v22 = v17;
    v23 = KeyPath;
    v24 = v18;
    v25 = 1;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
    sub_238448F8C();
    sub_23875D1B0();
    v20 = v27;
    v21 = v28;
    *v9 = v26;
    *(v9 + 2) = v20;
    v9[24] = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F00();
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70);
    sub_23875D1B0();
    sub_2384488D8(v14, *(&v14 + 1), 1);
  }

  else if (v27)
  {
    sub_2384488D8(v26, *(&v26 + 1), v27);
    sub_23875C530();
    (*(v2 + 16))(v9, v5, v1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F00();
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70);
    sub_23875D1B0();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
    sub_238448F8C();
    sub_23875D1B0();
    v15 = v27;
    v16 = v28;
    *v9 = v26;
    *(v9 + 2) = v15;
    v9[24] = v16;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F00();
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70);
    sub_23875D1B0();
    sub_2384488D8(v14, *(&v14 + 1), 0);
  }
}

uint64_t sub_238443DA0()
{
  v1 = (v0 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v5 = v30;
  v6 = v32;
  if (v34)
  {
    if (v34 == 3 && v30 == 1 && !v32)
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v7 = qword_2814F1B90;
      v8 = sub_23875EA50();
      v9 = sub_23875EA50();
      v10 = sub_23875EA50();
      v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

      v12 = sub_23875EA80();
      return v12;
    }

    else
    {
      sub_2384488D8(v30, v32, v34);
      return 0;
    }
  }

  else
  {
    v14 = [v30 localizedDescription];
    v15 = sub_23875EA80();
    v17 = v16;

    v31 = v15;
    v33 = v17;
    v18 = [v5 primaryAccountNumberSuffix];
    if (!v18)
    {
      sub_23875EA80();
      v18 = sub_23875EA50();
    }

    v19 = PKMaskedPaymentPAN();

    if (v19)
    {
      v20 = sub_23875EA80();
      v22 = v21;

      MEMORY[0x23EE63650](v20, v22);

      MEMORY[0x23EE63650](32, 0xE100000000000000);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2387632F0;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_238448C58();
    *(v23 + 32) = v31;
    *(v23 + 40) = v33;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v24 = qword_2814F1B90;
    v25 = sub_23875EA50();
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = [v24 localizedStringForKey:v25 value:v26 table:v27];

    sub_23875EA80();
    v29 = sub_23875EAA0();

    sub_2384488D8(v5, v6, 0);

    return v29;
  }
}

uint64_t sub_2384441E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09578, &qword_2387638F8);
  sub_2384442BC(a1, a2 + *(v4 + 44));
}

uint64_t sub_2384442BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for BankConnectAccountConnectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v8 = *(*(v7 - 1) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v41 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v41 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v41 - v16);
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_238444774();
  v20 = v19;
  v21 = v17 + v7[9];
  sub_23875CFC0();
  sub_238448588(a1, &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectAccountConnectionView);
  v42 = a1;
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_2384485F0(&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for BankConnectAccountConnectionView);
  *v17 = v18;
  v17[1] = v20;
  *(v17 + v7[10]) = 0;
  v24 = (v17 + v7[11]);
  *v24 = sub_238448BB4;
  v24[1] = v23;
  v41 = v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v25 = qword_2814F1B90;
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = [v25 localizedStringForKey:v26 value:v27 table:{v28, v41}];

  v30 = sub_23875EA80();
  v32 = v31;

  v33 = v15 + v7[9];
  sub_23875CFC0();
  sub_238448588(v42, v6, type metadata accessor for BankConnectAccountConnectionView);
  v34 = swift_allocObject();
  sub_2384485F0(v6, v34 + v22, type metadata accessor for BankConnectAccountConnectionView);
  *v15 = v30;
  v15[1] = v32;
  *(v15 + v7[10]) = 0;
  v35 = (v15 + v7[11]);
  *v35 = sub_238448C40;
  v35[1] = v34;
  v36 = v44;
  sub_23843981C(v17, v44, &qword_27DF09580, &qword_238763900);
  v37 = v45;
  sub_23843981C(v15, v45, &qword_27DF09580, &qword_238763900);
  v38 = v46;
  sub_23843981C(v36, v46, &qword_27DF09580, &qword_238763900);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09588, &qword_238763908);
  sub_23843981C(v37, v38 + *(v39 + 48), &qword_27DF09580, &qword_238763900);
  sub_238439884(v15, &qword_27DF09580, &qword_238763900);
  sub_238439884(v17, &qword_27DF09580, &qword_238763900);
  sub_238439884(v37, &qword_27DF09580, &qword_238763900);
  sub_238439884(v36, &qword_27DF09580, &qword_238763900);
}

uint64_t sub_238444774()
{
  v1 = sub_238757B60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  v7 = (v0 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  v11 = sub_23875C490();
  (*(v2 + 16))(v5, v11 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAccountConnectionViewModel_institution, v1);

  v12 = sub_238757B50();
  v14 = v13;
  (*(v2 + 8))(v5, v1);
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_238448C58();
  *(v6 + 32) = v12;
  *(v6 + 40) = v14;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  sub_23875EA80();
  v20 = sub_23875EAA0();

  return v20;
}

uint64_t sub_238444A3C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  sub_23843F46C();
}

uint64_t sub_238444AF0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BankConnectAccountConnectionView(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for BankConnectAccountConnectionViewModel(0);
  sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
  sub_23875C490();
  v9[0] = 1;
  sub_23843F8DC(v9);

  v5 = sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v10)
  {
    sub_2384488D8(v9[0], v9[1], v10);
  }

  else
  {

    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v9[0] = 1;
    v6(v9);
  }
}

uint64_t sub_238444C60(uint64_t a1)
{
  v2 = type metadata accessor for ConnectedAccountsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[1] = *(a1 + *(v2 + 24));
  swift_getKeyPath();
  sub_238448588(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConnectedAccountsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2384485F0(v5, v7 + v6, type metadata accessor for ConnectedAccountsView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_238448658;
  *(v8 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094F8, &qword_2387637C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094D8, &qword_238763748);
  sub_23843A3E8(&qword_27DF09500, &qword_27DF094F8, &qword_2387637C8);
  sub_238448540(&qword_27DF09508, MEMORY[0x277CC8058]);
  sub_23843A3E8(&qword_27DF094D0, &qword_27DF094D8, &qword_238763748);
  sub_23875E370();
}

uint64_t sub_238444F44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a3;
  v116 = a2;
  v119 = a1;
  v127 = a4;
  v4 = sub_23875C880();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v98 - v8;
  v109 = sub_23875E360();
  v108 = *(v109 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v105 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v125 = *(v11 - 8);
  v126 = v11;
  v12 = *(v125 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v103 = &v98 - v15;
  v16 = sub_238758680();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v98 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09518, &qword_2387637D8);
  v20 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v98 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B0, &qword_2387675F0);
  v100 = *(v102 - 8);
  v22 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v98 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v99 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v128 = &v98 - v29;
  MEMORY[0x28223BE20](v28);
  v129 = &v98 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v124 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v123 = &v98 - v35;
  v36 = sub_23875BCB0();
  v114 = *(v36 - 8);
  v115 = v36;
  v37 = *(v114 + 64);
  MEMORY[0x28223BE20](v36);
  v113 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ConnectedAccountView(0);
  v40 = *(*(v39 - 1) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v122 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v98 - v43;
  sub_23875ED50();
  v121 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = type metadata accessor for ConnectedAccountsView(0);
  v46 = *(v130 + *(v45 + 28));
  v47 = *(v17 + 16);
  v48 = v119;
  v47(v44, v119, v16);
  v49 = v116;
  *&v44[v39[5]] = v116;
  v44[v39[6]] = v46;
  *&v44[v39[7]] = xmmword_238763330;
  v50 = &v44[v39[8]];
  *v50 = sub_238445F18;
  *(v50 + 1) = 0;
  v50[16] = 0;
  v51 = v39[9];
  *&v44[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v112 = v39[10];
  type metadata accessor for AnalyticsSession();
  v52 = swift_allocObject();
  v53 = v49;
  v54 = v113;
  sub_23875BCA0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v56 = *(v55 + 52);
  v57 = (*(v55 + 48) + 3) & 0x1FFFFFFFCLL;
  v58 = swift_allocObject();
  *(v58 + ((*(*v58 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v114 + 32))(v58 + *(*v58 + *MEMORY[0x277D841D0] + 16), v54, v115);
  *(v52 + 16) = v58;
  *&v44[v112] = v52;
  v59 = v129;
  v47(v129, v48, v16);
  v60 = *(v17 + 56);
  v61 = 1;
  v60(v59, 0, 1, v16);
  v118 = v44;
  v119 = v45;
  v62 = *(v130 + *(v45 + 24));
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = v101;
    sub_23843981C(v62 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * (v63 - 1), v101, &qword_27DF094B0, &qword_2387675F0);

    v65 = v128;
    (*(v17 + 32))(v128, v64, v16);
    v61 = 0;
    v66 = v120;
  }

  else
  {
    v66 = v120;
    v65 = v128;
  }

  v60(v65, v61, 1, v16);
  v67 = *(v117 + 48);
  sub_23843981C(v59, v66, &qword_27DF09520, &unk_2387637E0);
  sub_23843981C(v65, v66 + v67, &qword_27DF09520, &unk_2387637E0);
  v68 = *(v17 + 48);
  if (v68(v66, 1, v16) == 1)
  {
    sub_238439884(v65, &qword_27DF09520, &unk_2387637E0);
    sub_238439884(v59, &qword_27DF09520, &unk_2387637E0);
    v69 = v68(v66 + v67, 1, v16);
    v70 = v118;
    if (v69 == 1)
    {
      sub_238439884(v66, &qword_27DF09520, &unk_2387637E0);
LABEL_17:
      v88 = 1;
      v83 = v126;
      v87 = v123;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v71 = v99;
  sub_23843981C(v66, v99, &qword_27DF09520, &unk_2387637E0);
  if (v68(v66 + v67, 1, v16) == 1)
  {
    sub_238439884(v128, &qword_27DF09520, &unk_2387637E0);
    sub_238439884(v129, &qword_27DF09520, &unk_2387637E0);
    (*(v17 + 8))(v71, v16);
    v70 = v118;
LABEL_11:
    sub_238439884(v66, &qword_27DF09518, &qword_2387637D8);
    goto LABEL_12;
  }

  v89 = v66 + v67;
  v90 = v98;
  (*(v17 + 32))(v98, v89, v16);
  sub_238448540(&qword_27DF09538, MEMORY[0x277CC6F70]);
  v91 = sub_23875E9E0();
  v92 = *(v17 + 8);
  v92(v90, v16);
  sub_238439884(v128, &qword_27DF09520, &unk_2387637E0);
  sub_238439884(v129, &qword_27DF09520, &unk_2387637E0);
  v92(v71, v16);
  sub_238439884(v66, &qword_27DF09520, &unk_2387637E0);
  v70 = v118;
  if (v91)
  {
    goto LABEL_17;
  }

LABEL_12:
  v72 = v105;
  sub_23875E350();
  v73 = v130 + *(v119 + 20);
  v74 = v106;
  sub_2384D5138(v106);
  v76 = v110;
  v75 = v111;
  v77 = v107;
  (*(v110 + 104))(v107, *MEMORY[0x277CDF9D8], v111);
  v78 = sub_23875C870();
  v79 = *(v76 + 8);
  v79(v77, v75);
  v79(v74, v75);
  if (v78)
  {
    v80 = 0x4028000000000000;
  }

  else
  {
    v80 = 0x4030000000000000;
  }

  v81 = sub_23875D780();
  v82 = v104;
  (*(v108 + 32))(v104, v72, v109);
  v83 = v126;
  v84 = &v82[*(v126 + 36)];
  *v84 = v81;
  *(v84 + 1) = 0;
  *(v84 + 2) = v80;
  *(v84 + 3) = 0;
  *(v84 + 4) = 0;
  v84[40] = 0;
  v85 = v82;
  v86 = v103;
  sub_2384396E4(v85, v103, &qword_27DF09510, &qword_2387637D0);
  v87 = v123;
  sub_2384396E4(v86, v123, &qword_27DF09510, &qword_2387637D0);
  v88 = 0;
LABEL_18:
  (*(v125 + 56))(v87, v88, 1, v83);
  v93 = v122;
  sub_238448588(v70, v122, type metadata accessor for ConnectedAccountView);
  v94 = v124;
  sub_23843981C(v87, v124, &qword_27DF09528, &qword_238765CE0);
  v95 = v127;
  sub_238448588(v93, v127, type metadata accessor for ConnectedAccountView);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09530, &qword_2387637F8);
  sub_23843981C(v94, v95 + *(v96 + 48), &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v87, &qword_27DF09528, &qword_238765CE0);
  sub_23844875C(v70, type metadata accessor for ConnectedAccountView);
  sub_238439884(v94, &qword_27DF09528, &qword_238765CE0);
  sub_23844875C(v93, type metadata accessor for ConnectedAccountView);
}

uint64_t sub_238445CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContinuousGroupBoxStyle();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B8, &qword_238763738);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094C0, &qword_238763740);
  sub_23844848C();
  sub_23875E470();
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v3 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF094E0, &qword_27DF094B8, &qword_238763738);
  sub_238448540(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_23844875C(v6, type metadata accessor for ContinuousGroupBoxStyle);
  (*(v8 + 8))(v11, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094F0, &qword_238763788);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_238445F18()
{
  v0 = type metadata accessor for PassLoader();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875C290();
  *(v3 + OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedPass) = 0;
  v4 = v3 + OBJC_IVAR____TtC12FinanceKitUI10PassLoader_cachedSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  return v3;
}

uint64_t sub_238445FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096C8, &qword_238763A98);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v56 - v5;
  v69 = sub_23875CE60();
  v84 = 0;
  sub_238446978(&v75);
  v93 = v80;
  v94 = v81;
  v95[0] = v82[0];
  *(v95 + 9) = *(v82 + 9);
  v90 = v77;
  v91 = v78;
  v92 = v79;
  v88 = v75;
  v89 = v76;
  v96[5] = v80;
  v96[6] = v81;
  v97[0] = v82[0];
  *(v97 + 9) = *(v82 + 9);
  v96[2] = v77;
  v96[3] = v78;
  v96[4] = v79;
  v96[0] = v75;
  v96[1] = v76;
  sub_23843981C(&v88, v74, &qword_27DF096D0, &qword_238763AA0);
  sub_238439884(v96, &qword_27DF096D0, &qword_238763AA0);
  *(&v83[5] + 7) = v93;
  *(&v83[6] + 7) = v94;
  *(&v83[7] + 7) = v95[0];
  v83[8] = *(v95 + 9);
  *(&v83[1] + 7) = v89;
  *(&v83[2] + 7) = v90;
  *(&v83[3] + 7) = v91;
  *(&v83[4] + 7) = v92;
  *(v83 + 7) = v88;
  v68 = v84;
  v7 = sub_23875C880();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectedAccountView(0);
  v12 = v1 + *(v11 + 36);
  v13 = sub_2384D5138(v10);
  MEMORY[0x28223BE20](v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF9D8], v7);
  LOBYTE(v9) = sub_23875C870();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v14(v10, v7);
  v15 = 0x4028000000000000;
  if ((v9 & 1) == 0)
  {
    v15 = 0x4030000000000000;
  }

  v65 = v15;
  v16 = sub_23875D780();
  v62 = v16;
  v66 = v56;
  v85 = 0;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v70 = v2;
  sub_238448588(v2, v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConnectedAccountView);
  sub_23875ED50();
  v19 = sub_23875ED40();
  v20 = *(v17 + 80);
  v63 = ~v20;
  v64 = v20;
  v21 = (v20 + 32) & ~v20;
  v67 = v18;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_2384485F0(v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ConnectedAccountView);
  v24 = sub_23875ED80();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v56 - v27;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v29 = sub_23875C830();
    v61 = v56;
    v58 = *(v29 - 8);
    v59 = v29;
    v30 = *(v58 + 64);
    MEMORY[0x28223BE20](v29);
    v57 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v75 = 0;
    *(&v75 + 1) = 0xE000000000000000;
    sub_23875F470();

    *&v75 = 0xD000000000000040;
    *(&v75 + 1) = 0x80000002387857B0;
    v74[0] = 521;
    v32 = sub_23875F600();
    v60 = v56;
    MEMORY[0x23EE63650](v32);

    v56[1] = v56;
    MEMORY[0x28223BE20](v33);
    (*(v25 + 16))(v56 - v27, v56 - v27, v24);
    v34 = v57;
    sub_23875C820();
    (*(v25 + 8))(v28, v24);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DE8, &unk_238761C70);
    v36 = (*(v58 + 32))(&v6[*(v35 + 36)], v34, v59);
    v37 = v83[4];
    *(v6 + 97) = v83[5];
    v38 = v83[7];
    *(v6 + 113) = v83[6];
    *(v6 + 129) = v38;
    *(v6 + 145) = v83[8];
    v39 = v83[0];
    *(v6 + 33) = v83[1];
    v40 = v83[3];
    *(v6 + 49) = v83[2];
    *(v6 + 65) = v40;
    *(v6 + 81) = v37;
    *v6 = v69;
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = v68;
    *(v6 + 17) = v39;
  }

  else
  {
    v42 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08DF8, &unk_238761C80) + 36)];
    v43 = sub_23875C6E0();
    v36 = (*(v25 + 32))(&v42[*(v43 + 20)], v56 - v27, v24);
    *v42 = &unk_238763AB0;
    *(v42 + 1) = v22;
    v44 = v83[1];
    *(v6 + 17) = v83[0];
    v45 = v83[5];
    *(v6 + 81) = v83[4];
    v46 = v83[2];
    *(v6 + 65) = v83[3];
    *(v6 + 49) = v46;
    *(v6 + 33) = v44;
    *(v6 + 145) = v83[8];
    v47 = v83[6];
    *(v6 + 129) = v83[7];
    *(v6 + 113) = v47;
    *v6 = v69;
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = v68;
    *(v6 + 97) = v45;
  }

  *(v6 + 161) = *v87;
  *(v6 + 41) = *&v87[3];
  v6[168] = v62;
  *(v6 + 169) = *v86;
  *(v6 + 43) = *&v86[3];
  v41 = v65;
  *(v6 + 22) = 0x4028000000000000;
  *(v6 + 23) = v41;
  *(v6 + 24) = 0x4028000000000000;
  *(v6 + 25) = v41;
  v6[208] = 0;
  v48 = v67;
  MEMORY[0x28223BE20](v36);
  v49 = v56 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238448588(v70, v49, type metadata accessor for ConnectedAccountView);
  v50 = (v64 + 16) & v63;
  v51 = swift_allocObject();
  sub_2384485F0(v49, v51 + v50, type metadata accessor for ConnectedAccountView);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_238449598;
  *(v52 + 24) = v51;
  v53 = v73;
  (*(v71 + 32))(v73, v6, v72);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096D8, &unk_238763AC0);
  v55 = (v53 + *(result + 36));
  *v55 = sub_2384495F4;
  v55[1] = v52;
  v55[2] = 0;
  v55[3] = 0;
  return result;
}

uint64_t sub_238446978@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875D030();
  sub_238446B60(&v22);
  v3 = v22;
  v4 = v23;
  v5 = *(&v23 + 1);
  sub_238446DC0(&v15);
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v20[2] = v17;
  v20[3] = v18;
  v22 = v15;
  v23 = v16;
  v14 = 0;
  v13 = v4;
  v12 = 1;
  v21 = v19;
  v20[0] = v15;
  v20[1] = v16;
  *&v11[7] = v15;
  v11[71] = v19;
  *&v11[55] = v18;
  *&v11[39] = v17;
  *&v11[23] = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v6 = *&v11[16];
  *(a1 + 65) = *v11;
  v7 = *&v11[32];
  v8 = *&v11[48];
  *(a1 + 129) = *&v11[64];
  *(a1 + 113) = v8;
  *(a1 + 97) = v7;
  *(a1 + 81) = v6;
  sub_23843980C(v3, *(&v3 + 1), v4);

  sub_23843981C(v20, &v10, &qword_27DF096E0, &qword_238763AD0);
  sub_238439884(&v22, &qword_27DF096E0, &qword_238763AD0);
  sub_2384397FC(v3, *(&v3 + 1), v4);
}

uint64_t sub_238446B60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_238757FC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875CEF0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875CED0();
  sub_23875CEC0();
  sub_2387585B0();
  sub_23875CEB0();

  sub_23875CEC0();
  sub_2387585C0();
  sub_238757FB0();
  (*(v3 + 8))(v6, v2);
  sub_23875CEB0();

  sub_23875CEC0();
  sub_23875CF10();
  v9 = sub_23875DA90();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

__n128 sub_238446DC0@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ConnectedAccountView(0);
  v4 = (v1 + *(v3 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for PassLoader();
  sub_238448540(&qword_27DF096B8, type metadata accessor for PassLoader);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v21)
  {
    v8 = v21;
    sub_23875E0C0();
    v9 = (v1 + *(v3 + 28));
    v10 = *v9;
    v11 = v9[1];
    sub_23875E4A0();
    sub_23875C5C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();

    v23 = v18;
    v24 = v19;
    v25 = v20;
    v21 = v16;
    v22 = v17;
  }

  else
  {
    sub_23875E020();
    swift_getKeyPath();
    v12 = (v1 + *(v3 + 28));
    v13 = *v12;
    v14 = v12[1];
    sub_23875E4A0();
    sub_23875C5C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096E8, &unk_238763B20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF096F0, &unk_238775090);
    sub_2384495FC();
    sub_238449760();
    sub_23875D1B0();
  }

  *(a1 + 32) = v23;
  *(a1 + 48) = v24;
  *(a1 + 64) = v25;
  result = v22;
  *a1 = v21;
  *(a1 + 16) = v22;
  return result;
}

uint64_t sub_2384470A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_238447140, v5, v4);
}

uint64_t sub_238447140()
{
  v1 = v0[2];
  v2 = type metadata accessor for ConnectedAccountView(0);
  v3 = (v1 + v2[8]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for PassLoader();
  sub_238448540(&qword_27DF096B8, type metadata accessor for PassLoader);
  v0[6] = sub_23875C490();
  v7 = *(v1 + v2[5]);
  v8 = (v1 + v2[7]);
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_23844728C;

  return sub_238517CC4(v7, 1911, v9, v10);
}

uint64_t sub_23844728C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2384473D0, v5, v4);
}

uint64_t sub_2384473D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_238447430()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectedAccountView(0);
  if (*(v0 + *(v6 + 24)))
  {
    v7 = MEMORY[0x277D38550];
  }

  else
  {
    v7 = MEMORY[0x277D38560];
  }

  v23 = *v7;
  v8 = objc_opt_self();
  v9 = [v8 reporterForSubject_];
  if (v9)
  {

    sub_23875C120();
    v10 = v23;
    v11 = sub_23875C1B0();
    v12 = sub_23875EFE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v15 = sub_23875EA80();
      v17 = sub_2384615AC(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2383F8000, v11, v12, "Analytics session for %s has already been started", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x23EE64DF0](v14, -1, -1);
      MEMORY[0x23EE64DF0](v13, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    [v8 beginSubjectReporting_];
    v18 = *(*(v0 + *(v6 + 40)) + 16);
    v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
    v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v18 + v20));
    v21 = sub_23875BCB0();
    (*(*(v21 - 8) + 8))(v18 + v19, v21);
    sub_23875BCA0();
    os_unfair_lock_unlock((v18 + v20));
    v22 = v23;
  }
}

uint64_t sub_238447768(uint64_t a1)
{
  v2 = sub_23875C880();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23875CAD0();
}

unint64_t sub_238447860()
{
  result = qword_27DF093D0;
  if (!qword_27DF093D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF093C8, &qword_2387633C8);
    sub_23843A3E8(&qword_27DF093D8, &qword_27DF093E0, &qword_2387633D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF093D0);
  }

  return result;
}

uint64_t sub_238447950(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2384479D4()
{
  result = qword_27DF09410;
  if (!qword_27DF09410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09418, &qword_2387633E8);
    sub_23843A3E8(&qword_27DF09420, &qword_27DF09428, &qword_2387633F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09410);
  }

  return result;
}

uint64_t sub_238447A8C()
{
  v2 = *(type metadata accessor for BankConnectAccountConnectionView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_238442648(v4, v5, v0 + v3);
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI38BankConnectAccountConnectionViewResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_238447BCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238447C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_238447C80(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_238447CD8()
{
  v0 = sub_238757B60();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_238447E90();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_238448320(319, &qword_27DF09460, &qword_27DF0D390, &unk_238763350, MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_238447E90()
{
  if (!qword_27DF09458)
  {
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09458);
    }
  }
}

void sub_238447F08()
{
  sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_238447FA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238447FA8()
{
  if (!qword_27DF09480)
  {
    type metadata accessor for BankConnectAccountConnectionViewModel(255);
    sub_238448540(&qword_27DF09488, type metadata accessor for BankConnectAccountConnectionViewModel);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09480);
    }
  }
}

unint64_t sub_23844803C()
{
  result = qword_27DF09490;
  if (!qword_27DF09490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09440, &qword_238763418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DD0, &qword_238761C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF093B0, &qword_2387633B0);
    sub_23843A3E8(&qword_27DF09438, &qword_27DF093B0, &qword_2387633B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09490);
  }

  return result;
}

void sub_2384481C4()
{
  sub_2384482CC(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_238448320(319, &qword_27DF094A8, &qword_27DF094B0, &qword_2387675F0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384482CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_238448320(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI37BankConnectAccountConnectionViewModelC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2384483B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2384483FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_238448440(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_23844848C()
{
  result = qword_27DF094C8;
  if (!qword_27DF094C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF094C0, &qword_238763740);
    sub_23843A3E8(&qword_27DF094D0, &qword_27DF094D8, &qword_238763748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF094C8);
  }

  return result;
}

uint64_t sub_238448540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238448588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384485F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238448658@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ConnectedAccountsView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_238444F44(a1, a2, v8, a3);
}

uint64_t sub_2384486E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF094B0, &qword_2387675F0);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_23844875C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2384487BC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_238448844(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2384489F0(v2, v3, v5);
  return sub_23875C2E0();
}

void sub_2384488D8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return;
      }
    }
  }
}

uint64_t sub_23844893C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238449A7C;

  return sub_23843F6F4();
}

id sub_2384489F0(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {

    return result;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }

      v4 = result;
    }
  }
}

void sub_238448A54(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for BankConnectAccountConnectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_2383FC164();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238448BCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BankConnectAccountConnectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_238448C58()
{
  result = qword_27DF09590;
  if (!qword_27DF09590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09590);
  }

  return result;
}

unint64_t sub_238448CAC()
{
  result = qword_27DF095F8;
  if (!qword_27DF095F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF095F0, &qword_238763998);
    sub_238448540(&qword_27DF09600, type metadata accessor for BankConnectAccountPickerView);
    sub_238448540(&qword_27DF09608, type metadata accessor for ConnectedAccountsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF095F8);
  }

  return result;
}

unint64_t sub_238448D98()
{
  result = qword_27DF09630;
  if (!qword_27DF09630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09628, &qword_2387639B8);
    sub_238448E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09630);
  }

  return result;
}

unint64_t sub_238448E24()
{
  result = qword_27DF09638;
  if (!qword_27DF09638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09638);
  }

  return result;
}

uint64_t sub_238448E78(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_23843980C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238448EBC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_2384397FC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_238448F00()
{
  result = qword_27DF09668;
  if (!qword_27DF09668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09660, &qword_2387639E8);
    sub_238448F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09668);
  }

  return result;
}

unint64_t sub_238448F8C()
{
  result = qword_27DF09670;
  if (!qword_27DF09670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09678, &unk_2387639F0);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09670);
  }

  return result;
}

void sub_23844906C()
{
  sub_238758680();
  if (v0 <= 0x3F)
  {
    sub_238449184(319, &qword_27DF096A8, 0x277D38080);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_2384491CC();
        if (v3 <= 0x3F)
        {
          sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AnalyticsSession();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_238449184(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_2384491CC()
{
  if (!qword_27DF096B0)
  {
    type metadata accessor for PassLoader();
    sub_238448540(&qword_27DF096B8, type metadata accessor for PassLoader);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF096B0);
    }
  }
}

unint64_t sub_238449260()
{
  result = qword_27DF096C0;
  if (!qword_27DF096C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF094F0, &qword_238763788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF094B8, &qword_238763738);
    type metadata accessor for ContinuousGroupBoxStyle();
    sub_23843A3E8(&qword_27DF094E0, &qword_27DF094B8, &qword_238763738);
    sub_238448540(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF096C0);
  }

  return result;
}

uint64_t sub_2384493C8()
{
  v2 = *(type metadata accessor for ConnectedAccountView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2384470A8(v4, v5, v0 + v3);
}

uint64_t sub_2384494A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_238449598()
{
  v1 = *(type metadata accessor for ConnectedAccountView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_238447430();
}

unint64_t sub_2384495FC()
{
  result = qword_27DF096F8;
  if (!qword_27DF096F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF096E8, &unk_238763B20);
    sub_238449688();
    sub_23844970C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF096F8);
  }

  return result;
}

unint64_t sub_238449688()
{
  result = qword_27DF09700;
  if (!qword_27DF09700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09708, &unk_238763B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09700);
  }

  return result;
}

unint64_t sub_23844970C()
{
  result = qword_27DF09710;
  if (!qword_27DF09710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09710);
  }

  return result;
}

unint64_t sub_238449760()
{
  result = qword_27DF09718;
  if (!qword_27DF09718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF096F0, &unk_238775090);
    sub_2384497EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09718);
  }

  return result;
}

unint64_t sub_2384497EC()
{
  result = qword_27DF09720;
  if (!qword_27DF09720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09728, &unk_238766140);
    sub_2384498A4();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09720);
  }

  return result;
}

unint64_t sub_2384498A4()
{
  result = qword_27DF09730;
  if (!qword_27DF09730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09730);
  }

  return result;
}

unint64_t sub_2384498F8()
{
  result = qword_27DF09738;
  if (!qword_27DF09738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF096D8, &unk_238763AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DF0, &qword_238763B40);
    sub_2384499C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09738);
  }

  return result;
}

unint64_t sub_2384499C0()
{
  result = qword_27DF09740;
  if (!qword_27DF09740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08DF0, &qword_238763B40);
    sub_23843A3E8(&qword_27DF09748, &qword_27DF09750, &qword_238763B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09740);
  }

  return result;
}

unint64_t sub_238449A8C(char a1)
{
  result = 0x736144726564726FLL;
  switch(a1)
  {
    case 1:
    case 23:
    case 29:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0x746544726564726FLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 8:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 27:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6174654473736170;
      break;
    case 13:
    case 17:
    case 18:
    case 19:
      result = 0x6B6E694C6B6E6162;
      break;
    case 14:
      result = 0x50746E65736E6F63;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x7469576572616873;
      break;
    case 20:
      result = 0x5079636176697270;
      break;
    case 21:
      result = 0x53746E756F636361;
      break;
    case 22:
      result = 0x44746E756F636361;
      break;
    case 24:
    case 28:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD000000000000024;
      break;
    case 26:
      result = 0x41746E756F636361;
      break;
    case 30:
    case 31:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AnalyticsSession.__allocating_init()()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  sub_23875BCA0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v7 = *(v6 + 52);
  v8 = (*(v6 + 48) + 3) & 0x1FFFFFFFCLL;
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v1 + 32))(v9 + *(*v9 + *MEMORY[0x277D841D0] + 16), v4, v0);
  *(v5 + 16) = v9;
  return v5;
}

Swift::Void __swiftcall AnalyticsSession.refreshSessionID()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = sub_23875BCB0();
  (*(*(v4 - 8) + 8))(v1 + v2, v4);
  sub_23875BCA0();

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t AnalyticsSession.init()()
{
  v1 = sub_23875BCB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCA0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v7 = *(v6 + 52);
  v8 = (*(v6 + 48) + 3) & 0x1FFFFFFFCLL;
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 32))(v9 + *(*v9 + *MEMORY[0x277D841D0] + 16), v5, v1);
  *(v0 + 16) = v9;
  return v0;
}

uint64_t sub_23844A1DC@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = sub_23875E740();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875EAD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23875E770();
  v33 = *(v35 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875E760();
  sub_23875BC50();
  sub_23875EAC0();
  v12 = sub_23875EA90();
  v14 = v13;

  v15 = *(v5 + 8);
  v44 = v4;
  result = v15(v8, v4);
  if (v14 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_23844C8EC(v12, v14);
  sub_23844BF58(v12, v14);
  sub_23844C940(v12, v14);
  sub_23844C940(v12, v14);
  sub_23875A6F0();
  sub_23875EAC0();
  v17 = sub_23875EA90();
  v19 = v18;

  result = v15(v8, v44);
  if (v19 >> 60 == 15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_23844C8EC(v17, v19);
  sub_23844BF58(v17, v19);
  sub_23844C940(v17, v19);
  sub_23844C940(v17, v19);
  sub_23875A6D0();
  sub_23875EAC0();
  v20 = sub_23875EA90();
  v22 = v21;

  result = v15(v8, v44);
  if (v22 >> 60 != 15)
  {
    sub_23844C8EC(v20, v22);
    sub_23844BF58(v20, v22);
    sub_23844C940(v20, v22);
    sub_23844C940(v20, v22);
    v23 = v34;
    sub_23875E750();
    v24 = v37;
    v42 = v37;
    v43 = sub_23844D7E8(&qword_27DF09790, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    v26 = v36;
    (*(v36 + 16))(boxed_opaque_existential_1, v23, v24);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_23875B6A0();
    (*(v26 + 8))(v23, v24);
    v27 = v39;
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v41[0] = v27;
    v41[1] = v28;
    sub_23844C9EC();
    v29 = sub_23875B4F0();
    v31 = v30;
    (*(v33 + 8))(v11, v35);
    result = sub_23844C954(v27, v28);
    v32 = v38;
    *v38 = v29;
    v32[1] = v31;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23844A6B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v36 = a1;
  v42 = a2;
  v35 = a3;
  v3 = sub_23875E740();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875EAD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23875E770();
  v31 = *(v33 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875E760();
  sub_23875BC50();
  sub_23875EAC0();
  v14 = sub_23875EA90();
  v16 = v15;

  v17 = *(v7 + 8);
  result = v17(v10, v6);
  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_23844C8EC(v14, v16);
    sub_23844BF58(v14, v16);
    sub_23844C940(v14, v16);
    sub_23844C940(v14, v16);
    sub_23875EAC0();
    v19 = sub_23875EA90();
    v21 = v20;
    result = v17(v10, v6);
    if (v21 >> 60 != 15)
    {
      sub_23844C8EC(v19, v21);
      sub_23844BF58(v19, v21);
      sub_23844C940(v19, v21);
      sub_23844C940(v19, v21);
      v22 = v32;
      sub_23875E750();
      v40 = v3;
      v41 = sub_23844D7E8(&qword_27DF09790, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      v24 = v34;
      (*(v34 + 16))(boxed_opaque_existential_1, v22, v3);
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_23875B6A0();
      (*(v24 + 8))(v22, v3);
      v25 = v37;
      v26 = v38;
      __swift_destroy_boxed_opaque_existential_1(v39);
      v39[0] = v25;
      v39[1] = v26;
      sub_23844C9EC();
      v27 = sub_23875B4F0();
      v29 = v28;
      (*(v31 + 8))(v13, v33);
      result = sub_23844C954(v25, v26);
      v30 = v35;
      *v35 = v27;
      v30[1] = v29;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalyticsSession.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AnalyticsSession.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23844AB34@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23875BCB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnalyticsSession();
  v7 = swift_allocObject();
  sub_23875BCA0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v9 = *(v8 + 52);
  v10 = (*(v8 + 48) + 3) & 0x1FFFFFFFCLL;
  v11 = swift_allocObject();
  *(v11 + ((*(*v11 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = (*(v3 + 32))(v11 + *(*v11 + *MEMORY[0x277D841D0] + 16), v6, v2);
  *(v7 + 16) = v11;
  *a1 = v7;
  return result;
}

uint64_t EnvironmentValues.analyticsSession.getter()
{
  sub_23844ACFC();
  sub_23875CDC0();
  return v1;
}

unint64_t sub_23844ACFC()
{
  result = qword_27DF09758;
  if (!qword_27DF09758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09758);
  }

  return result;
}

uint64_t (*EnvironmentValues.analyticsSession.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_23844ACFC();
  sub_23875CDC0();
  return sub_23844ADEC;
}

uint64_t sub_23844ADEC(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_23875CDD0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_23875CDD0();
  }
}

uint64_t getEnumTagSinglePayload for Analytics(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Analytics(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderDetailsFulfillmentIndex.FulfillmentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OrderDetailsFulfillmentIndex.FulfillmentType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Analytics.PageTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Analytics.PageTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23844B288(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_238449A8C(*a1);
  v5 = v4;
  if (v3 == sub_238449A8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23875F630();
  }

  return v8 & 1;
}

uint64_t sub_23844B310()
{
  v1 = *v0;
  sub_23875F700();
  sub_238449A8C(v1);
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844B374()
{
  sub_238449A8C(*v0);
  sub_23875EB30();
}

uint64_t sub_23844B3C8()
{
  v1 = *v0;
  sub_23875F700();
  sub_238449A8C(v1);
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844B428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23844CA40();
  *a2 = result;
  return result;
}

unint64_t sub_23844B458@<X0>(unint64_t *a1@<X8>)
{
  result = sub_238449A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23844B488()
{
  result = qword_27DF09760;
  if (!qword_27DF09760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09760);
  }

  return result;
}

uint64_t sub_23844B4DC(char a1)
{
  result = 0x6C436574656C6564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6C6954726564726FLL;
      break;
    case 4:
      result = 0x776F4E746F6ELL;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      v3 = 0x6567616E616DLL;
      goto LABEL_41;
    case 7:
      result = 0x53746361746E6F63;
      break;
    case 8:
    case 47:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 23:
      result = 0x746E61686372656DLL;
      break;
    case 11:
      result = 0x65646F63726162;
      break;
    case 12:
      result = 0x6F4C70756B636970;
      break;
    case 13:
      result = 0x676E696B63617274;
      break;
    case 14:
      result = 0x6372654D6C6C6163;
      break;
    case 15:
      result = 0x72654D6C69616D65;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x686372654D4C5255;
      break;
    case 18:
      result = 0x6F4373416B72616DLL;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x746F4E6573756170;
      break;
    case 21:
      result = 0x4E65737561506E75;
      break;
    case 22:
      v3 = 0x6574656C6564;
LABEL_41:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x724F000000000000;
      break;
    case 24:
      result = 0x65756E69746E6F63;
      break;
    case 25:
      result = 0x61426B6E696C6572;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x656C6553776F6873;
      break;
    case 30:
      result = 0x7463656C65736564;
      break;
    case 31:
      result = 1701736292;
      break;
    case 32:
      result = 0x686372616573;
      break;
    case 33:
      result = 0x6574656C6564;
      break;
    case 34:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0x6C65636E6163;
      break;
    case 36:
      result = 1801675106;
      break;
    case 37:
      result = 0x6572616873;
      break;
    case 38:
      result = 0x6B63617274;
      break;
    case 39:
      result = 0x6565726761;
      break;
    case 40:
      result = 0x6565726761736964;
      break;
    case 41:
      result = 0x7463656C6573;
      break;
    case 42:
      result = 0x7463656C65736564;
      break;
    case 43:
      result = 1868983913;
      break;
    case 44:
      result = 0xD00000000000001CLL;
      break;
    case 45:
      result = 0x7055656D75736572;
      break;
    case 46:
      result = 0x6470556573756170;
      break;
    case 49:
      result = 0x74616C506F546F67;
      break;
    case 50:
      result = 0x726143656C707061;
      break;
    case 51:
      result = 0x736143656C707061;
      break;
    case 52:
      result = 0x766153656C707061;
      break;
    case 53:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0x7A696D6F74737563;
      break;
    case 55:
      result = 0x416E776F6E6B6E75;
      break;
    case 56:
      result = 0x616D456B63696C63;
      break;
    case 57:
      result = 0x6565536C69616D65;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_23844BB0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x63697373616C63;
  }

  else
  {
    v4 = 1818845549;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x63697373616C63;
  }

  else
  {
    v6 = 1818845549;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23875F630();
  }

  return v9 & 1;
}

uint64_t sub_23844BBAC()
{
  v1 = *v0;
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844BC28()
{
  *v0;
  sub_23875EB30();
}

uint64_t sub_23844BC90()
{
  v1 = *v0;
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_23844BD08@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23875F590();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23844BD68(uint64_t *a1@<X8>)
{
  v2 = 1818845549;
  if (*v1)
  {
    v2 = 0x63697373616C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_23844BDA4()
{
  result = qword_27DF09768;
  if (!qword_27DF09768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09768);
  }

  return result;
}

uint64_t sub_23844BDF8(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  sub_23875C6B0();
}

_BYTE *sub_23844BEC4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_23844D630(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_23844D6E8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_23844D764(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_23844BF58(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_23875E770();
      sub_23844D7E8(&qword_27DF097A0, MEMORY[0x277CC5540]);
      result = sub_23875E730();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_23844C138(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23844C138(uint64_t a1, uint64_t a2)
{
  result = sub_23875B550();
  if (!result || (result = sub_23875B570(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23875B560();
      sub_23875E770();
      sub_23844D7E8(&qword_27DF097A0, MEMORY[0x277CC5540]);
      return sub_23875E730();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23844C224(uint64_t a1)
{
  v2 = sub_23875BE00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09778, &qword_238763D70);
    v10 = sub_23875F450();
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
      sub_23844D7E8(&qword_27DF09780, MEMORY[0x277CC99D0]);
      v18 = sub_23875E950();
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
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_23844D7E8(&qword_27DF09788, MEMORY[0x277CC99D0]);
          v25 = sub_23875E9E0();
          v26 = *v16;
          (*v16)(v6, v2);
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

  return MEMORY[0x277D84FA0];
}