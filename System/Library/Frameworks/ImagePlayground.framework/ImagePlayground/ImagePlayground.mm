uint64_t sub_1D2A190B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1D2AC67E4();

    return sub_1D2AC65C4();
  }

  else
  {
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    sub_1D2AC65C4();
    sub_1D2AC6FB4();
    swift_getWitnessTable();
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    return sub_1D2AC65C4();
  }
}

uint64_t sub_1D2A19214(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1D2AC67E4();
    sub_1D2AC65C4();
  }

  else
  {
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    sub_1D2AC65C4();
    sub_1D2AC6FB4();
    swift_getWitnessTable();
    sub_1D2AC65F4();
    swift_getWitnessTable();
    sub_1D2AC67A4();
    sub_1D2AC65C4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D2A19414(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1D2AC65B4();
  }

  else
  {
    sub_1D2AC6574();
  }

  return sub_1D2AC65C4();
}

uint64_t sub_1D2A1947C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1D2AC65B4();
    sub_1D2AC65C4();
    sub_1D2A202C4();
  }

  else
  {
    sub_1D2AC6574();
    sub_1D2AC65C4();
    sub_1D2A20500(&qword_1EC7036E8, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1D2A19570(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for Rational(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Rational(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2A195D8@<X0>(void *a1@<X8>)
{
  sub_1D2A21C28();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

double sub_1D2A1962C@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2A21C7C();
  sub_1D2AC6694();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1D2A196D8@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D78();
  sub_1D2AC6694();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D2A19730(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_1D2A21D78();
  return sub_1D2AC66A4();
}

uint64_t sub_1D2A19784@<X0>(void *a1@<X8>)
{
  sub_1D2A21DCC();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2A19818(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2A19838(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ImageGenerationViewModifier(255);
  sub_1D2AC65C4();
  sub_1D2A2D3A8(&qword_1EC703960, type metadata accessor for ImageGenerationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1D2A198D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703900, &qword_1D2AC9708);
  sub_1D2AC65C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703968, &qword_1D2AC9778);
  sub_1D2AC65C4();
  sub_1D2A2DB64(&qword_1EC703908, &qword_1EC703900, &qword_1D2AC9708);
  swift_getWitnessTable();
  sub_1D2A2DB64(&qword_1EC703970, &qword_1EC703968, &qword_1D2AC9778);
  return swift_getWitnessTable();
}

uint64_t sub_1D2A19A84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A19B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A19C58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A19C98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D2A19CAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D2A29C88(v4);
}

uint64_t sub_1D2A19D04(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D2A19D24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A19D84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A19DBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A19DF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = sub_1D2AC5EF4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v2 | 7);
}

uint64_t sub_1D2A19F38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AD8, &qword_1D2AC9CB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AD0, &qword_1D2AC9CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AC8, &qword_1D2AC9CA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AC0, &qword_1D2AC9CA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AB8, &qword_1D2AC9C98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7039F8, &qword_1D2AC9930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AB0, &qword_1D2AC9C90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AE0, &qword_1D2AC9CC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AE8, &qword_1D2AC9CD0);
  sub_1D2A2DB64(&qword_1EC703AF0, &qword_1EC703AE0, &qword_1D2AC9CC8);
  sub_1D2A2DBAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2C660();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2C6E4();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D2A0();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D3F0();
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D4F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2A1A27C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D2A1A2B8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D2A55158(v2);
}

uint64_t sub_1D2A1A304()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1A394()
{
  MEMORY[0x1D38A8510](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1A3CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1A404()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D2A1A490(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1D2A31774(&v3);
}

uint64_t sub_1D2A1A508@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D2A1A564(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D2A1A5CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D2A1A620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D2A1A69C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D2A1A6F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

__n128 sub_1D2A1A79C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  swift_beginAccess();
  *a2 = *v3;
  result = *(v3 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1D2A1A7F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1D2A36CC8(&v3);
}

void sub_1D2A1A884(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1D2A38680(&v3);
}

__n128 sub_1D2A1A8BC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1D2A1A95C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
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
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D2A1AAA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D2A1AC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C40, &qword_1D2ACA388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A1ACB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2AC6634();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2A1AD08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2AC6654();
  *a1 = result;
  return result;
}

uint64_t sub_1D2A1AD34(uint64_t *a1)
{
  v1 = *a1;

  return sub_1D2AC6664();
}

uint64_t sub_1D2A1AD70()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[11];

    v5 = v0[13];
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D2A1AF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2A1AFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D2A1B018@<Q0>(uint64_t a1@<X8>)
{
  ImagePlaygroundStyle.representationInfo.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1D2A1B064(__n128 *a1, _OWORD *a2)
{
  v3 = a1[3];
  v12 = a1[2];
  v13 = v3;
  v14 = a1[4];
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v5 = a2[4];
  v15[2] = a2[3];
  v15[3] = v5;
  v15[4] = a2[5];
  v6 = a2[2];
  v15[0] = a2[1];
  v15[1] = v6;
  sub_1D2A50254(&v10, &v9);
  sub_1D2A2E61C(v15, &qword_1EC704270, &qword_1D2ACABD0);
  v7 = v13;
  a2[3] = v12;
  a2[4] = v7;
  a2[5] = v14;
  result = v11;
  a2[1] = v10;
  a2[2] = result;
  return result;
}

uint64_t sub_1D2A1B108()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1D2A1B148()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D2A1B180()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B1B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 4, v3 | 7);
}

uint64_t sub_1D2A1B298(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704398, &unk_1D2ACB430);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D2A1B354(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704398, &unk_1D2ACB430);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2AC62D4();
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

uint64_t sub_1D2A1B4C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2AC62D4();
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

uint64_t sub_1D2A1B5BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D2A1B604()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D2A1B644()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B67C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D2A1B6BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D2A1B700(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D2A54C50(v2);
}

uint64_t sub_1D2A1B730()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1B768()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1B7AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B7F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D2A1B83C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1D2A47944(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B884()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[11];

    v5 = v0[13];
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D2A1B914()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1B94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
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

uint64_t sub_1D2A1BA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
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

uint64_t sub_1D2A1BADC()
{
  v1 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = sub_1D2AC62D4();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
    v9 = *(v6 + *(v7 + 20) + 8);
  }

  v10 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260) + 28));

  v11 = *(v6 + v1[5]);

  v12 = (v6 + v1[7]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = (v6 + v1[8]);
  if (v14[1])
  {
    v15 = *v14;

    v16 = v14[1];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2A1BC84()
{
  v1 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_1D2AC62D4();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(v5 + *(v6 + 20) + 8);
  }

  v9 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260) + 28));

  v10 = *(v5 + v1[5]);

  v11 = (v5 + v1[7]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v5 + v1[8]);
  if (v13[1])
  {
    v14 = *v13;

    v15 = v13[1];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2A1BE24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
  sub_1D2A61168();
  return swift_getOpaqueTypeConformance2();
}

id sub_1D2A1BEFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseImage];
  *a2 = result;
  return result;
}

id sub_1D2A1BF4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sketchImage];
  *a2 = result;
  return result;
}

id sub_1D2A1BF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sketchMask];
  *a2 = result;
  return result;
}

id sub_1D2A1BFEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 baseImageRatio];
  *a2 = v4;
  return result;
}

id sub_1D2A1C034@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sketchComplexityMeasure];
  *a2 = v4;
  return result;
}

id sub_1D2A1C07C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 generateCaptionFromImage];
  *a2 = result;
  return result;
}

id sub_1D2A1C0C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sanitizationCategory];
  *a2 = result;
  return result;
}

id sub_1D2A1C10C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 drawOnImageAssignmentOptions];
  *a2 = result;
  return result;
}

uint64_t sub_1D2A1C154@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D2A1C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C26C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1C37C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1C418(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C4C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1C5D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1C658(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1C814(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1C898(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1C944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1C9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1CA54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1CB84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1CC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1CC94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1CD18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1CDC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1CE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1CED4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2A1CF5C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7065A8, &qword_1D2ADA818);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2A1CFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2AC62C4();
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

uint64_t sub_1D2A1D090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2AC62C4();
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

uint64_t sub_1D2A1D148()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D2A1D180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706608, &qword_1D2ADA9C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D2A1D284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2A1D330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GenerationRecipe_V2.Prompt.Entity.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2A1D3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
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

uint64_t sub_1D2A1D440(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D2AC5F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

Swift::Void __swiftcall ImageXPCWrapper.encode(with:)(NSCoder with)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = *(v1 + OBJC_IVAR___GPImageXPCWrapper_surface);
  v4 = sub_1D2AC6BF4();
  [v2 encodeObject:v3 forKey:v4];
}

id ImageXPCWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_1D2A20764(0, &qword_1EC703668, 0x1E696CDE8);
  v5 = sub_1D2AC6F74();
  if (v5)
  {
    v6 = OBJC_IVAR___GPImageXPCWrapper_surface;
    *&v1[OBJC_IVAR___GPImageXPCWrapper_surface] = v5;
    pixelBufferOut[0] = 0;
    v7 = v5;
    if (CVPixelBufferCreateWithIOSurface(0, v7, 0, pixelBufferOut) || (v11 = pixelBufferOut[0]) == 0)
    {

      v8 = *&v2[v6];
    }

    else
    {
      *&v2[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer] = pixelBufferOut[0];
      imageOut = 0;
      v12 = v11;
      v13 = VTCreateCGImageFromCVPixelBuffer(v12, 0, &imageOut);
      if (v13 == sub_1D2AC63E4())
      {
        v14 = imageOut;
        if (imageOut)
        {
          *&v2[OBJC_IVAR___GPImageXPCWrapper_image] = imageOut;
          v17.receiver = v2;
          v17.super_class = ObjectType;
          v15 = v14;
          v16 = objc_msgSendSuper2(&v17, sel_init);

          result = v16;
          goto LABEL_7;
        }
      }

      v8 = *&v2[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer];
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  result = 0;
LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

IOSurfaceRef ImageXPCWrapper.__allocating_init(image:orientation:)(void *a1, unsigned int a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(v2);
  v7 = ImageXPCWrapper.init(_:orientation:)(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

IOSurfaceRef ImageXPCWrapper.init(image:orientation:)(void *a1, unsigned int a2)
{
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = ImageXPCWrapper.init(_:orientation:)(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

IOSurfaceRef ImageXPCWrapper.init(_:orientation:)(void *a1, unsigned int a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  CGImageRef.toPixelBuffer(orientation:maximumDimension:)(a2, 2048.0, 0, v14);
  v7 = v14[0];
  if (!*&v14[0])
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v14[1];
  *&v3[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer] = v14[0];
  v9 = *&v7;
  result = CVPixelBufferGetIOSurface(v9);
  if (result)
  {
    v11 = result;

    *&v3[OBJC_IVAR___GPImageXPCWrapper_surface] = v11;
    *&v3[OBJC_IVAR___GPImageXPCWrapper_image] = v8;
    v13.receiver = v3;
    v13.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v13, sel_init);

    return v12;
  }

  __break(1u);
  return result;
}

id ImageXPCWrapper.init(pixelBuffer:)(__CVBuffer *a1)
{
  imageOut[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (!IOSurface)
  {
    __break(1u);
  }

  v5 = IOSurface;

  v6 = OBJC_IVAR___GPImageXPCWrapper_surface;
  *&v1[OBJC_IVAR___GPImageXPCWrapper_surface] = v5;
  v7 = OBJC_IVAR___GPImageXPCWrapper_pixelBuffer;
  *&v1[OBJC_IVAR___GPImageXPCWrapper_pixelBuffer] = a1;
  imageOut[0] = 0;
  v8 = a1;
  v9 = VTCreateCGImageFromCVPixelBuffer(v8, 0, imageOut);
  if (!imageOut[0])
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = imageOut[0];
  if (v10 != sub_1D2AC63E4())
  {

LABEL_6:
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_7;
  }

  *&v1[OBJC_IVAR___GPImageXPCWrapper_image] = v11;

  v15.receiver = v1;
  v15.super_class = ObjectType;
  v12 = [(__CVBuffer *)&v15 init];

  result = v12;
LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

id ImageXPCWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageXPCWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2A1F6A8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D2AC6114();
}

uint64_t sub_1D2A1F6F4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D2AC6104();
}

uint64_t sub_1D2A1F764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D2AC60F4();
}

uint64_t sub_1D2A1F7D8(uint64_t a1, id *a2)
{
  result = sub_1D2AC6C04();
  *a2 = 0;
  return result;
}

uint64_t sub_1D2A1F850(uint64_t a1, id *a2)
{
  v3 = sub_1D2AC6C14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D2A1F8D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D2AC6C24();
  v2 = sub_1D2AC6BF4();

  *a1 = v2;
  return result;
}

uint64_t sub_1D2A1F914()
{
  v1 = *v0;
  v2 = sub_1D2AC6C24();
  v3 = MEMORY[0x1D38A7130](v2);

  return v3;
}

uint64_t sub_1D2A1F950()
{
  v1 = *v0;
  sub_1D2AC6C24();
  sub_1D2AC6C74();
}

uint64_t sub_1D2A1F9A4()
{
  v1 = *v0;
  sub_1D2AC6C24();
  sub_1D2AC7444();
  sub_1D2AC6C74();
  v2 = sub_1D2AC7484();

  return v2;
}

uint64_t sub_1D2A1FA2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1D2AC60F4();
}

uint64_t sub_1D2A1FA98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D2AC6C24();
  v6 = v5;
  if (v4 == sub_1D2AC6C24() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();
  }

  return v9 & 1;
}

_DWORD *sub_1D2A1FB20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D2A1FB3C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D2AC6114();
}

uint64_t sub_1D2A1FB88()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D2AC6104();
}

uint64_t sub_1D2A1FBF8()
{
  sub_1D2AC7444();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D2AC6104();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A1FC5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D2AC6BF4();

  *a2 = v5;
  return result;
}

uint64_t sub_1D2A1FCA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D2AC6C24();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D2A1FCD0(uint64_t a1)
{
  v2 = sub_1D2A20500(&qword_1EC703800, type metadata accessor for CIContextOption);
  v3 = sub_1D2A20500(&qword_1EC703808, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D2A1FDAC()
{
  v1 = *(v0 + 16);
  v2 = [v1 CGImage];
  v3 = [v1 imageOrientation] - 1;
  if (v3 > 6)
  {
    v4 = 1;
    v5 = *(v0 + 16);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = dword_1D2AC9594[v3];
    v5 = *(v0 + 16);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
  v6 = v2;
  v2 = ImageXPCWrapper.init(_:orientation:)(v6, v4);
  v7 = v2;

  if (!v2)
  {
    goto LABEL_8;
  }

  v5 = v7;
LABEL_7:

LABEL_8:
  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1D2A1FED8()
{
  v1 = *(v0 + 272);
  v2 = sub_1D2AC5EA4();
  v3 = CGImageSourceCreateWithURL(v2, 0);

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037E8, &qword_1D2AC9520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2AC9060;
    v5 = *MEMORY[0x1E696E100];
    *(inited + 32) = *MEMORY[0x1E696E100];
    v6 = MEMORY[0x1E69E6530];
    *(inited + 40) = 2048;
    v7 = *MEMORY[0x1E696DFE8];
    *(inited + 64) = v6;
    *(inited + 72) = v7;
    v8 = MEMORY[0x1E69E6370];
    v9 = MEMORY[0x1E696E000];
    *(inited + 80) = 1;
    v10 = *v9;
    *(inited + 104) = v8;
    *(inited + 112) = v10;
    *(inited + 144) = v8;
    *(inited + 120) = 1;
    v11 = v5;
    v12 = v7;
    v13 = v10;
    sub_1D2A485EC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037F0, &qword_1D2AC9528);
    swift_arrayDestroy();
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v3);
    type metadata accessor for CFString(0);
    sub_1D2A20500(&qword_1EC7037D0, type metadata accessor for CFString);
    v15 = sub_1D2AC6B94();

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v3, PrimaryImageIndex, v15);

    if (ThumbnailAtIndex)
    {
      v17 = CGImageSourceCopyPropertiesAtIndex(v3, PrimaryImageIndex, 0);
      if (v17)
      {
        v18 = v17;
        if ([(__CFDictionary *)v17 __swift_objectForKeyedSubscript:*MEMORY[0x1E696DE78]])
        {
          sub_1D2AC6FF4();
          swift_unknownObjectRelease();
          sub_1D2A206F8((v0 + 200), (v0 + 168));
          sub_1D2A20708(v0 + 168, v0 + 232);
          sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v19 = *(v0 + 264);
            v20 = [v19 unsignedIntValue];

            __swift_destroy_boxed_opaque_existential_0((v0 + 168));
            goto LABEL_12;
          }

          __swift_destroy_boxed_opaque_existential_0((v0 + 168));
        }

        v20 = 1;
LABEL_12:
        v27 = *(v0 + 272);
        v28 = objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
        v29 = ImageXPCWrapper.init(_:orientation:)(ThumbnailAtIndex, v20);

        v30 = sub_1D2AC5EF4();
        (*(*(v30 - 8) + 8))(v27, v30);
        v31 = v29;
        if (v29)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v25 = *(v0 + 272);
      v26 = sub_1D2AC5EF4();
      (*(*(v26 - 8) + 8))(v25, v26);
    }

    else
    {
      v23 = *(v0 + 272);
      v24 = sub_1D2AC5EF4();
      (*(*(v24 - 8) + 8))(v23, v24);
    }
  }

  else
  {
    v21 = *(v0 + 272);
    v22 = sub_1D2AC5EF4();
    (*(*(v22 - 8) + 8))(v21, v22);
  }

LABEL_13:
  v31 = 0;
LABEL_14:
  v32 = *(v0 + 8);

  return v32(v31);
}

unint64_t sub_1D2A202C4()
{
  result = qword_1EC7036E0;
  if (!qword_1EC7036E0)
  {
    sub_1D2AC65B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7036E0);
  }

  return result;
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A20444(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A20500(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1D2A206F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D2A20708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D2A20764(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1D2A20840(uint64_t a1, unint64_t *a2)
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

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImage:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a3;
  v35 = a9;
  v36 = a12;
  v33 = a6;
  v34 = a11;
  v18 = type metadata accessor for ImageGenerationViewModifier(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 60);
  v24 = sub_1D2AC5EF4();
  (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
  LOBYTE(v37) = 0;
  sub_1D2AC6A14();
  v25 = *(&v38 + 1);
  v22[24] = v38;
  *(v22 + 4) = v25;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v22 + 40) = v38;
  *(v22 + 7) = swift_getKeyPath();
  v22[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 0;
  *(v22 + 9) = KeyPath;
  v22[168] = 0;
  *(v22 + 22) = swift_getKeyPath();
  v22[184] = 0;
  *(v22 + 24) = swift_getKeyPath();
  *(v22 + 25) = 0;
  *(v22 + 26) = 0;
  *(v22 + 27) = 0;
  *(v22 + 112) = 0;
  v27 = swift_getKeyPath();
  *(v22 + 30) = 0;
  *(v22 + 31) = 0;
  *(v22 + 29) = v27;
  v22[256] = 0;
  *(v22 + 33) = swift_getKeyPath();
  v22[272] = 0;
  *(v22 + 35) = swift_getKeyPath();
  v22[288] = 0;
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = v32;
  *(v22 + 37) = a4;
  *&v22[v18[16]] = a5;
  v22[v18[17]] = 0;
  v28 = &v22[v18[18]];
  *v28 = v33;
  *(v28 + 1) = a7;
  v29 = &v22[v18[19]];
  *v29 = a8;
  v29[1] = a10;

  sub_1D2A19818(a8);
  MEMORY[0x1D38A6E20](v22, v34, v18, v36);
  return sub_1D2A2E044(v22, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImageURL:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a7;
  v36 = a8;
  v34 = a6;
  v33 = a3;
  v38 = a9;
  v39 = a12;
  v37 = a11;
  v16 = type metadata accessor for ImageGenerationViewModifier(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 60);
  v22 = sub_1D2AC5EF4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v20[v21], a5, v22);
  (*(v23 + 56))(&v20[v21], 0, 1, v22);
  LOBYTE(v40) = 0;
  sub_1D2AC6A14();
  v24 = *(&v41 + 1);
  v20[24] = v41;
  *(v20 + 4) = v24;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v20 + 40) = v41;
  *(v20 + 7) = swift_getKeyPath();
  v20[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v41) = 0;
  *(v20 + 9) = KeyPath;
  v20[168] = 0;
  *(v20 + 22) = swift_getKeyPath();
  v20[184] = 0;
  *(v20 + 24) = swift_getKeyPath();
  *(v20 + 25) = 0;
  *(v20 + 26) = 0;
  *(v20 + 27) = 0;
  *(v20 + 112) = 0;
  v26 = swift_getKeyPath();
  *(v20 + 30) = 0;
  *(v20 + 31) = 0;
  *(v20 + 29) = v26;
  v20[256] = 0;
  *(v20 + 33) = swift_getKeyPath();
  v20[272] = 0;
  *(v20 + 35) = swift_getKeyPath();
  v20[288] = 0;
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = v33;
  *(v20 + 37) = a4;
  *&v20[v16[16]] = 0;
  v20[v16[17]] = 0;
  v27 = &v20[v16[18]];
  v28 = v35;
  *v27 = v34;
  *(v27 + 1) = v28;
  v29 = &v20[v16[19]];
  v30 = v36;
  *v29 = v36;
  *(v29 + 1) = a10;

  sub_1D2A19818(v30);
  MEMORY[0x1D38A6E20](v20, v37, v16, v39);
  return sub_1D2A2E044(v20, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t View.imagePlaygroundSheet(isPresented:concept:sourceImageURL:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F8, &qword_1D2AC9700);
  v19 = *(type metadata accessor for ImagePlaygroundConcept(0) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D2AC95B0;
  v23 = (v22 + v21);
  *v23 = a4;
  v23[1] = a5;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();

  View.imagePlaygroundSheet(isPresented:concepts:sourceImageURL:onCompletion:onCancellation:)(a1, a2, a3, v22, a6, a7, a8, a10, a9, a11, a12, a13);
}

uint64_t View.imagePlaygroundSheet(isPresented:concept:sourceImage:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F8, &qword_1D2AC9700);
  v19 = *(type metadata accessor for ImagePlaygroundConcept(0) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D2AC95B0;
  v23 = (v22 + v21);
  *v23 = a4;
  v23[1] = a5;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();

  View.imagePlaygroundSheet(isPresented:concepts:sourceImage:onCompletion:onCancellation:)(a1, a2, a3, v22, a6, a7, a8, a10, a9, a11, a12, a13);
}

uint64_t View.imagePlaygroundGenerationStyle(_:in:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703900, &qword_1D2AC9708);
  v7 = sub_1D2AC65C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  swift_getKeyPath();
  *&v18 = a2;
  sub_1D2AC6934();

  swift_getKeyPath();
  v12 = a1[3];
  v20 = a1[2];
  v21 = v12;
  v13 = a1[5];
  v22 = a1[4];
  v23 = v13;
  v14 = a1[1];
  v18 = *a1;
  v19 = v14;
  v15 = sub_1D2A2DB64(&qword_1EC703908, &qword_1EC703900, &qword_1D2AC9708);
  v17[0] = a4;
  v17[1] = v15;
  swift_getWitnessTable();
  sub_1D2AC6934();

  return (*(v8 + 8))(v11, v7);
}

uint64_t EnvironmentValues.imagePlaygroundAllowedGenerationStyles.getter()
{
  sub_1D2A21C28();
  sub_1D2AC6694();
  return v1;
}

uint64_t sub_1D2A21304@<X0>(void *a1@<X8>)
{
  sub_1D2A21C28();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2A21354(uint64_t *a1)
{
  v2 = *a1;
  sub_1D2A21C28();

  return sub_1D2AC66A4();
}

uint64_t EnvironmentValues.imagePlaygroundSelectedGenerationStyle.getter()
{
  sub_1D2A21C7C();

  return sub_1D2AC6694();
}

double sub_1D2A213FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2A21C7C();
  sub_1D2AC6694();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2A2145C(_OWORD *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  v10 = a1[2];
  v11 = v1;
  v3 = a1[3];
  v4 = a1[5];
  v12 = a1[4];
  v13 = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v8[8] = v10;
  v8[9] = v3;
  v6 = a1[5];
  v8[10] = v12;
  v8[11] = v6;
  v8[6] = v9[0];
  v8[7] = v2;
  sub_1D2A2D244(v9, v8);
  sub_1D2A21C7C();
  return sub_1D2AC66A4();
}

uint64_t EnvironmentValues.imagePlaygroundPersonalizationPolicy.getter()
{
  sub_1D2A21CD0();

  return sub_1D2AC6694();
}

uint64_t View.imagePlaygroundResponsibleAuditToken(_:)()
{
  swift_getKeyPath();
  sub_1D2AC6934();
}

double EnvironmentValues.imagePlaygroundResponsibleAuditToken.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D24();
  sub_1D2AC6694();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1D2A21660@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D24();
  sub_1D2AC6694();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D2A216B8(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  sub_1D2A21D24();
  return sub_1D2AC66A4();
}

uint64_t View.imagePlaygroundPreviewAspectRatio(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getKeyPath();
  sub_1D2AC6934();
}

uint64_t EnvironmentValues.imagePlaygroundPreviewAspectRatio.getter()
{
  sub_1D2A21D78();

  return sub_1D2AC6694();
}

double sub_1D2A217E0@<D0>(uint64_t a1@<X8>)
{
  sub_1D2A21D78();
  sub_1D2AC6694();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D2A21838(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_1D2A21D78();
  return sub_1D2AC66A4();
}

uint64_t EnvironmentValues.imagePlaygroundPreviewAspectRatio.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_1D2A21D78();
  return sub_1D2AC66A4();
}

uint64_t View.imagePlaygroundPreGeneratedImage(_:)()
{
  swift_getKeyPath();
  sub_1D2AC6934();
}

uint64_t EnvironmentValues.imagePlaygroundPreGeneratedImage.getter()
{
  sub_1D2A21DCC();
  sub_1D2AC6694();
  return v1;
}

uint64_t sub_1D2A21984@<X0>(void *a1@<X8>)
{
  sub_1D2A21DCC();
  result = sub_1D2AC6694();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2A219D4(void **a1)
{
  v1 = *a1;
  sub_1D2A21DCC();
  v2 = v1;
  return sub_1D2AC66A4();
}

uint64_t sub_1D2A21A3C(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D2AC6934();
}

uint64_t EnvironmentValues.imagePlaygroundImageImportPolicy.getter()
{
  sub_1D2A21E20();

  return sub_1D2AC6694();
}

uint64_t keypath_get_6Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1D2AC6694();
  *a2 = v4;
  return result;
}

uint64_t keypath_set_7Tm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_1D2AC66A4();
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

unint64_t sub_1D2A21C28()
{
  result = qword_1EC703910;
  if (!qword_1EC703910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703910);
  }

  return result;
}

unint64_t sub_1D2A21C7C()
{
  result = qword_1EC703918;
  if (!qword_1EC703918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703918);
  }

  return result;
}

unint64_t sub_1D2A21CD0()
{
  result = qword_1EC703920;
  if (!qword_1EC703920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703920);
  }

  return result;
}

unint64_t sub_1D2A21D24()
{
  result = qword_1EC703928;
  if (!qword_1EC703928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703928);
  }

  return result;
}

unint64_t sub_1D2A21D78()
{
  result = qword_1EC703930;
  if (!qword_1EC703930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703930);
  }

  return result;
}

unint64_t sub_1D2A21DCC()
{
  result = qword_1EC703938;
  if (!qword_1EC703938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703938);
  }

  return result;
}

unint64_t sub_1D2A21E20()
{
  result = qword_1EC703940;
  if (!qword_1EC703940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703940);
  }

  return result;
}

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImage:sceneIdentifier:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v36 = a7;
  v37 = a9;
  v35 = a3;
  v38 = a12;
  v39 = a13;
  v19 = type metadata accessor for ImageGenerationViewModifier(0);
  v20 = *(*(v19 - 1) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a6;
  v24 = *(v21 + 60);
  v25 = sub_1D2AC5EF4();
  (*(*(v25 - 8) + 56))(&v23[v24], 1, 1, v25);
  LOBYTE(v40) = 0;
  sub_1D2AC6A14();
  v26 = *(&v41 + 1);
  v23[24] = v41;
  *(v23 + 4) = v26;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v23 + 40) = v41;
  *(v23 + 7) = swift_getKeyPath();
  v23[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v41) = 0;
  *(v23 + 9) = KeyPath;
  v23[168] = 0;
  *(v23 + 22) = swift_getKeyPath();
  v23[184] = 0;
  *(v23 + 24) = swift_getKeyPath();
  *(v23 + 25) = 0;
  *(v23 + 26) = 0;
  *(v23 + 27) = 0;
  *(v23 + 112) = 0;
  v28 = swift_getKeyPath();
  *(v23 + 30) = 0;
  *(v23 + 31) = 0;
  *(v23 + 29) = v28;
  v23[256] = 0;
  *(v23 + 33) = swift_getKeyPath();
  v23[272] = 0;
  *(v23 + 35) = swift_getKeyPath();
  v23[288] = 0;
  *v23 = a1;
  *(v23 + 1) = a2;
  v29 = v34;
  v23[16] = v35;
  *(v23 + 37) = a4;
  *&v23[v19[16]] = a5;
  v23[v19[17]] = v29;
  v30 = &v23[v19[18]];
  *v30 = v36;
  *(v30 + 1) = a8;
  v31 = &v23[v19[19]];
  *v31 = a10;
  v31[1] = a11;

  sub_1D2A19818(a10);
  MEMORY[0x1D38A6E20](v23, v38, v19, v39);
  return sub_1D2A2E044(v23, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t View.imagePlaygroundSheet(isPresented:concepts:sourceImageURL:sceneIdentifier:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a7;
  v40 = a8;
  v37 = a3;
  v41 = a9;
  v42 = a12;
  v43 = a13;
  v38 = a11;
  v18 = type metadata accessor for ImageGenerationViewModifier(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a6;
  v23 = *(v20 + 60);
  v24 = sub_1D2AC5EF4();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v22[v23], a5, v24);
  (*(v25 + 56))(&v22[v23], 0, 1, v24);
  LOBYTE(v44) = 0;
  sub_1D2AC6A14();
  v26 = *(&v45 + 1);
  v22[24] = v45;
  *(v22 + 4) = v26;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7038F0, &qword_1D2AC95E0);
  sub_1D2AC6A14();
  *(v22 + 40) = v45;
  *(v22 + 7) = swift_getKeyPath();
  v22[64] = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v45) = 0;
  *(v22 + 9) = KeyPath;
  v22[168] = 0;
  *(v22 + 22) = swift_getKeyPath();
  v22[184] = 0;
  *(v22 + 24) = swift_getKeyPath();
  *(v22 + 25) = 0;
  *(v22 + 26) = 0;
  *(v22 + 27) = 0;
  *(v22 + 112) = 0;
  v28 = swift_getKeyPath();
  *(v22 + 30) = 0;
  *(v22 + 31) = 0;
  *(v22 + 29) = v28;
  v22[256] = 0;
  *(v22 + 33) = swift_getKeyPath();
  v22[272] = 0;
  *(v22 + 35) = swift_getKeyPath();
  v22[288] = 0;
  *v22 = a1;
  *(v22 + 1) = a2;
  v29 = v36;
  v22[16] = v37;
  *(v22 + 37) = a4;
  *&v22[v18[16]] = 0;
  v22[v18[17]] = v29;
  v30 = &v22[v18[18]];
  v31 = v40;
  *v30 = v39;
  *(v30 + 1) = v31;
  v32 = &v22[v18[19]];
  v33 = v38;
  *v32 = a10;
  v32[1] = v33;

  sub_1D2A19818(a10);
  MEMORY[0x1D38A6E20](v22, v42, v18, v43);
  return sub_1D2A2E044(v22, type metadata accessor for ImageGenerationViewModifier);
}

uint64_t sub_1D2A223E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900) - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v9 = sub_1D2AC5EF4();
  v7[42] = v9;
  v10 = *(v9 - 8);
  v7[43] = v10;
  v11 = *(v10 + 64) + 15;
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  sub_1D2AC6DA4();
  v7[46] = sub_1D2AC6D94();
  v13 = sub_1D2AC6D44();
  v7[47] = v13;
  v7[48] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D2A2251C, v13, v12);
}

uint64_t sub_1D2A2251C()
{
  v1 = v0[37];
  if (v1)
  {
    v2 = v0[46];
    v3 = v0[38];
    v4 = v1;

    v5 = objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
    v6 = ImageXPCWrapper.init(_:orientation:)(v4, 1u);
    swift_beginAccess();
    v7 = *(v3 + 16);
    *(v3 + 16) = v6;

    goto LABEL_5;
  }

  v8 = v0[42];
  v9 = v0[43];
  v10 = v0[41];
  sub_1D2A2E5B4(v0[39], v10, &qword_1EC7039C8, &unk_1D2AC9900);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[46];
    v12 = v0[41];

    sub_1D2A2E61C(v12, &qword_1EC7039C8, &unk_1D2AC9900);
LABEL_5:
    v13 = v0[40];
    v14 = v0[38];
    swift_beginAccess();
    v15 = *(v14 + 16);
    v16 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
    *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = v15;
    v17 = v15;

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_1D2A575E8;
    v20[4] = 0;
    v20[5] = sub_1D2A2E554;
    v20[6] = v18;
    swift_getKeyPath();
    v0[32] = v13;
    sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    v21 = v17;

    sub_1D2AC6094();

    v22 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v22)
    {
      v0[6] = sub_1D2A575E8;
      v0[7] = 0;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D2A44320;
      v0[5] = &block_descriptor_306;
      v23 = _Block_copy(v0 + 2);
      v24 = v0[7];
      v25 = v22;

      v26 = [v25 remoteObjectProxyWithErrorHandler_];
      _Block_release(v23);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v0 + 6, v0 + 4);
      sub_1D2A206F8(v0 + 4, v0 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v27 = v0[33];
      if (v27)
      {
        [v0[33] setSourceImage_];

LABEL_18:
        v49 = v0[44];
        v48 = v0[45];
        v50 = v0[41];

        v51 = v0[1];

        return v51();
      }
    }

    else
    {
      sub_1D2A2DF64();
      v28 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D2AC63B4();
      __swift_project_value_buffer(v29, qword_1EC7040C0);
      v30 = v28;
      v31 = sub_1D2AC6394();
      v32 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v21;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v28;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1D2A17000, v31, v32, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v34, 0xCu);
        sub_1D2A2E61C(v35, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v35, -1, -1);
        v38 = v34;
        v21 = v33;
        MEMORY[0x1D38A8460](v38, -1, -1);
      }
    }

    v59 = v21;
    v39 = v0[40];
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1D2A2E6B4;
    *(v40 + 24) = v20;
    swift_getKeyPath();
    v0[34] = v39;

    sub_1D2AC6094();

    v0[35] = v39;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v41 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v42 = *(v39 + v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + v41) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1D2A4486C(0, v42[2] + 1, 1, v42);
      *(v39 + v41) = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1D2A4486C((v44 > 1), v45 + 1, 1, v42);
    }

    v46 = v0[40];
    v42[2] = v45 + 1;
    v47 = &v42[2 * v45];
    v47[4] = sub_1D2A2E724;
    v47[5] = v40;
    *(v39 + v41) = v42;
    swift_endAccess();
    v0[36] = v46;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_18;
  }

  v53 = v0[44];
  v54 = v0[45];
  v55 = v0[42];
  v56 = v0[43];
  (*(v56 + 32))(v54, v0[41], v55);
  (*(v56 + 16))(v53, v54, v55);
  v57 = swift_task_alloc();
  v0[49] = v57;
  *v57 = v0;
  v57[1] = sub_1D2A22CE4;
  v58 = v0[44];

  return sub_1D2A1FEB8(v58);
}

uint64_t sub_1D2A22CE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = a1;

  v4 = *(v2 + 384);
  v5 = *(v2 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D2A22E0C, v5, v4);
}

uint64_t sub_1D2A22E0C()
{
  v1 = v0[50];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[38];

  (*(v5 + 8))(v3, v4);
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = v1;

  v8 = v0[40];
  v9 = v0[38];
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v8 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  *(v8 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = v10;
  v12 = v10;

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1D2A575E8;
  v15[4] = 0;
  v15[5] = sub_1D2A2E554;
  v15[6] = v13;
  swift_getKeyPath();
  v0[32] = v8;
  sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  v16 = v12;

  sub_1D2AC6094();

  v17 = *(v8 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v17)
  {
    v0[6] = sub_1D2A575E8;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D2A44320;
    v0[5] = &block_descriptor_306;
    v18 = _Block_copy(v0 + 2);
    v19 = v0[7];
    v20 = v17;

    v21 = [v20 remoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v0 + 6, v0 + 4);
    sub_1D2A206F8(v0 + 4, v0 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v22 = v0[33];
    if (v22)
    {
      [v0[33] setSourceImage_];

      goto LABEL_14;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v23 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D2AC63B4();
    __swift_project_value_buffer(v24, qword_1EC7040C0);
    v25 = v23;
    v26 = sub_1D2AC6394();
    v27 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v16;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v23;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1D2A17000, v26, v27, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v29, 0xCu);
      sub_1D2A2E61C(v30, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v30, -1, -1);
      v33 = v29;
      v16 = v28;
      MEMORY[0x1D38A8460](v33, -1, -1);
    }
  }

  v48 = v16;
  v34 = v0[40];
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1D2A2E6B4;
  *(v35 + 24) = v15;
  swift_getKeyPath();
  v0[34] = v34;

  sub_1D2AC6094();

  v0[35] = v34;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v36 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v37 = *(v34 + v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + v36) = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_1D2A4486C(0, v37[2] + 1, 1, v37);
    *(v34 + v36) = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1D2A4486C((v39 > 1), v40 + 1, 1, v37);
  }

  v41 = v0[40];
  v37[2] = v40 + 1;
  v42 = &v37[2 * v40];
  v42[4] = sub_1D2A2E724;
  v42[5] = v35;
  *(v34 + v36) = v37;
  swift_endAccess();
  v0[36] = v41;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_14:
  v44 = v0[44];
  v43 = v0[45];
  v45 = v0[41];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D2A2347C()
{
  v1 = type metadata accessor for ImageGenerationViewModifier(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGenerationHostCoordinator(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v9 = sub_1D2A29BC0(v8);
  v17 = type metadata accessor for ImageGenerationViewModifier;
  sub_1D2A2DFDC(v0, v4, type metadata accessor for ImageGenerationViewModifier);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_1D2A2D860(v4, v11 + v10);
  swift_getKeyPath();
  v21 = v9;
  v22 = sub_1D2A2E3C0;
  v23 = v11;
  v15[1] = OBJC_IVAR____TtC15ImagePlaygroundP33_DDFA1C1AEB2E9C3EBDF6D3A43C77EE2230ImageGenerationHostCoordinator___observationRegistrar;
  *&v25 = v9;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6084();

  v12 = v16;
  sub_1D2A2DFDC(v16, v4, v17);
  v13 = swift_allocObject();
  sub_1D2A2D860(v4, v13 + v10);
  swift_getKeyPath();
  v18 = v9;
  v19 = sub_1D2A2E498;
  v20 = v13;
  *&v25 = v9;
  sub_1D2AC6084();

  v25 = *(v12 + 40);
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  return sub_1D2AC6A34();
}

uint64_t sub_1D2A23754(uint64_t *a1)
{
  v2 = a1 + *(type metadata accessor for ImageGenerationViewModifier(0) + 76);
  if (*v2)
  {
    v3 = *(v2 + 8);
    (*v2)();
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
  return sub_1D2AC6A94();
}

uint64_t sub_1D2A237D8(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + *(type metadata accessor for ImageGenerationViewModifier(0) + 72);
  v5 = *(v4 + 8);
  (*v4)(a1);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
  return sub_1D2AC6A94();
}

uint64_t sub_1D2A23864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a1;
  v124 = a2;
  v134 = sub_1D2AC6684();
  v136 = *(v134 - 8);
  v3 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGenerationViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v104 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AB0, &qword_1D2AC9C90);
  v14 = *(v13 - 8);
  v114 = v13;
  v115 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v104 - v16;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AB8, &qword_1D2AC9C98);
  v117 = *(v127 - 8);
  v17 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v104 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AC0, &qword_1D2AC9CA0);
  v118 = *(v129 - 8);
  v19 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v104 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AC8, &qword_1D2AC9CA8);
  v119 = *(v131 - 8);
  v21 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v131);
  *&v130 = &v104 - v22;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AD0, &qword_1D2AC9CB0);
  v120 = *(v133 - 8);
  v23 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v104 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AD8, &qword_1D2AC9CB8);
  v122 = *(v25 - 8);
  v123 = v25;
  v26 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v104 - v27;
  v28 = *(v2 + 8);
  v116 = *v2;
  v113 = v28;
  v112 = *(v2 + 16);
  *&v163 = v116;
  *(&v163 + 1) = v28;
  LOBYTE(v164) = v112;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
  sub_1D2AC6AA4();
  v106 = v140;
  v107 = v141;
  v108 = v2;
  v109 = type metadata accessor for ImageGenerationViewModifier;
  v138 = v12;
  sub_1D2A2DFDC(v2, v12, type metadata accessor for ImageGenerationViewModifier);
  v29 = *(v6 + 80);
  v30 = (v29 + 16) & ~v29;
  v139 = v10;
  v31 = swift_allocObject();
  sub_1D2A2D860(v12, v31 + v30);
  v32 = v110;
  sub_1D2A2DFDC(v2, v110, type metadata accessor for ImageGenerationViewModifier);
  v33 = swift_allocObject();
  sub_1D2A2D860(v32, v33 + v30);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AE0, &qword_1D2AC9CC8);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703AE8, &qword_1D2AC9CD0);
  *&v103 = sub_1D2A2DB64(&qword_1EC703AF0, &qword_1EC703AE0, &qword_1D2AC9CC8);
  *(&v103 + 1) = sub_1D2A2DBAC();
  sub_1D2AC69C4();

  *&v163 = v116;
  *(&v163 + 1) = v113;
  LOBYTE(v164) = v112;
  MEMORY[0x1D38A6EC0](&v140, v111);
  v34 = v108;
  v35 = v138;
  sub_1D2A2DFDC(v108, v138, v109);
  v36 = v114;
  v137 = v29;
  v37 = v34;
  v38 = swift_allocObject();
  v116 = v30;
  sub_1D2A2D860(v35, v38 + v30);
  *&v163 = v105;
  *(&v163 + 1) = v110;
  v164 = v103;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = MEMORY[0x1E69E6388];
  v41 = v125;
  sub_1D2AC69F4();
  v42 = v135;

  (*(v115 + 8))(v41, v36);
  v43 = *(v34 + 56);
  v44 = v136;
  if (*(v34 + 64) == 1)
  {
    v170 = *(v34 + 56);
  }

  else
  {
    v45 = *(v34 + 56);

    sub_1D2AC6EA4();
    v46 = v40;
    v47 = sub_1D2AC6884();
    sub_1D2AC6324();

    v40 = v46;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A2D6F4(v43, 0);
    (*(v44 + 8))(v42, v134);
    v43 = v170;
  }

  *&v140 = v43;
  v48 = v138;
  sub_1D2A2DFDC(v37, v138, type metadata accessor for ImageGenerationViewModifier);
  v49 = v116;
  v50 = swift_allocObject();
  sub_1D2A2D860(v48, v50 + v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039F8, &qword_1D2AC9930);
  *&v163 = v36;
  *(&v163 + 1) = MEMORY[0x1E69E6370];
  *&v164 = OpaqueTypeConformance2;
  *(&v164 + 1) = v40;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_1D2A2C660();
  v54 = v127;
  v55 = v126;
  sub_1D2AC69F4();

  (*(v117 + 8))(v55, v54);
  v169 = *(v37 + 168);
  v56 = *(v37 + 120);
  v57 = *(v37 + 152);
  v167 = *(v37 + 136);
  v168 = v57;
  v58 = *(v37 + 88);
  v163 = *(v37 + 72);
  v164 = v58;
  v165 = *(v37 + 104);
  v166 = v56;
  if (v169)
  {
    v59 = *(v37 + 120);
    v159 = *(v37 + 104);
    v160 = v59;
    v60 = *(v37 + 152);
    v161 = *(v37 + 136);
    v162 = v60;
    v61 = *(v37 + 88);
    v157 = *(v37 + 72);
    v158 = v61;
    v146 = *(v37 + 168);
    v144 = v161;
    v145 = v60;
    v140 = v157;
    v141 = v61;
    v142 = v159;
    v143 = v59;
    sub_1D2A2D244(&v140, &v151);
    v62 = v136;
  }

  else
  {

    sub_1D2AC6EA4();
    v63 = sub_1D2AC6884();
    sub_1D2AC6324();

    v64 = v135;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A2E61C(&v163, &qword_1EC703B08, &qword_1D2AC9CD8);
    v62 = v136;
    (*(v136 + 8))(v64, v134);
  }

  v153 = v159;
  v154 = v160;
  v155 = v161;
  v156 = v162;
  v151 = v157;
  v152 = v158;
  v65 = v138;
  sub_1D2A2DFDC(v37, v138, type metadata accessor for ImageGenerationViewModifier);
  v66 = swift_allocObject();
  sub_1D2A2D860(v65, v66 + v49);
  *&v140 = v127;
  *(&v140 + 1) = v51;
  *&v141 = v52;
  *(&v141 + 1) = v53;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = sub_1D2A2C6E4();
  v69 = v129;
  v70 = v128;
  sub_1D2AC69F4();

  v142 = v153;
  v143 = v154;
  v144 = v155;
  v145 = v156;
  v140 = v151;
  v141 = v152;
  sub_1D2A2DDA8(&v140);
  (*(v118 + 8))(v70, v69);
  v71 = *(v37 + 176);
  if (*(v37 + 184) == 1)
  {
    LOBYTE(v149) = *(v37 + 176);
  }

  else
  {
    v72 = *(v37 + 176);

    sub_1D2AC6EA4();
    v73 = sub_1D2AC6884();
    sub_1D2AC6324();

    v74 = v135;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A19D04(v71, 0);
    (*(v62 + 8))(v74, v134);
    LOBYTE(v71) = v149;
  }

  LOBYTE(v147) = v71;
  v75 = v138;
  sub_1D2A2DFDC(v37, v138, type metadata accessor for ImageGenerationViewModifier);
  v76 = swift_allocObject();
  sub_1D2A2D860(v75, v76 + v49);
  *&v151 = v129;
  *(&v151 + 1) = &type metadata for ImagePlaygroundStyle;
  *&v152 = v67;
  *(&v152 + 1) = v68;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_1D2A2D2A0();
  v79 = v131;
  v80 = v130;
  sub_1D2AC69F4();

  (*(v119 + 8))(v80, v79);
  v81 = *(v37 + 232);
  v82 = *(v37 + 240);
  if (*(v37 + 256) == 1)
  {
    v149 = *(v37 + 232);
    v150 = v82;
    v83 = v81;
  }

  else
  {
    v84 = *(v37 + 232);
    v130 = *(v37 + 240);

    sub_1D2AC6EA4();
    v85 = sub_1D2AC6884();
    sub_1D2AC6324();

    v86 = v135;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A2D848(v81, v130, *(&v130 + 1), 0);
    (*(v136 + 8))(v86, v134);
    v83 = v149;
    v82 = v150;
  }

  v147 = v83;
  v148 = v82;
  v87 = v138;
  sub_1D2A2DFDC(v37, v138, type metadata accessor for ImageGenerationViewModifier);
  v88 = swift_allocObject();
  v89 = v49;
  sub_1D2A2D860(v87, v88 + v49);
  *&v151 = v131;
  *(&v151 + 1) = &type metadata for ImagePlaygroundPersonalizationPolicy;
  *&v152 = v77;
  *(&v152 + 1) = v78;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_1D2A2D3F0();
  v92 = v121;
  v93 = v132;
  v94 = v133;
  sub_1D2AC69F4();

  (*(v120 + 8))(v93, v94);
  v95 = *(v37 + 280);
  if (*(v37 + 288) == 1)
  {
    LOBYTE(v149) = *(v37 + 280);
  }

  else
  {
    v96 = *(v37 + 280);

    sub_1D2AC6EA4();
    v97 = sub_1D2AC6884();
    sub_1D2AC6324();

    v98 = v135;
    sub_1D2AC6674();
    swift_getAtKeyPath();
    sub_1D2A19D04(v95, 0);
    (*(v136 + 8))(v98, v134);
    LOBYTE(v95) = v149;
  }

  LOBYTE(v147) = v95;
  v99 = v138;
  sub_1D2A2DFDC(v37, v138, type metadata accessor for ImageGenerationViewModifier);
  v100 = swift_allocObject();
  sub_1D2A2D860(v99, v100 + v89);
  *&v151 = v133;
  *(&v151 + 1) = &type metadata for ImagePlaygroundAspectRatio;
  *&v152 = v90;
  *(&v152 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  sub_1D2A2D4F8();
  v101 = v123;
  sub_1D2AC69F4();

  return (*(v122 + 8))(v92, v101);
}

uint64_t sub_1D2A248F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  return sub_1D2AC6A34();
}

uint64_t sub_1D2A24948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v4 = *(*(v42 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v42);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for GPImageEditionView(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B38, &qword_1D2AC9D80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v31 - v17;
  v44 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (v46)
  {
    v39 = v15;
    v40 = v14;
    v18 = *(v46 + 16);
    v19 = *(v46 + 64);
    v35 = *(a1 + *(type metadata accessor for ImageGenerationViewModifier(0) + 68));
    v38 = *(a1 + 24);
    v37 = *(a1 + 32);
    LOBYTE(v46) = v38;
    v47 = v37;

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B40, &qword_1D2AC9D88);
    sub_1D2AC6A44();
    v32 = *(&v44 + 1);
    v33 = v44;
    v34 = v45;
    v20 = v10[5];
    v21 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    v41 = a2;
    sub_1D2A2E5B4(v9, v7, &unk_1EC7043C0, &qword_1D2ACA0B0);
    sub_1D2AC6A14();
    sub_1D2A2E61C(v9, &unk_1EC7043C0, &qword_1D2ACA0B0);
    v22 = &v13[v10[9]];
    v23 = &v13[v10[10]];
    *&v13[v10[6]] = v18;
    v24 = v10[7];
    type metadata accessor for GPImageEditionView.ViewModel(0);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

    sub_1D2AC6AD4();
    v13[v10[8]] = v35;
    *v13 = 0;
    *v22 = 0;
    v22[1] = 0;
    v25 = v32;
    *v23 = v33;
    *(v23 + 1) = v25;
    v23[16] = v34;
    sub_1D2A20764(0, &qword_1EC703B48, 0x1E69DCF38);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v27 = [ObjCClassFromMetadata appearance];
    [v27 _setUseGlass_];

    v15 = v39;

    v14 = v40;

    LOBYTE(v44) = v38;
    *(&v44 + 1) = v37;
    sub_1D2AC6A24();
    sub_1D2A2D3A8(&qword_1EC703B00, type metadata accessor for GPImageEditionView);
    v28 = v43;
    a2 = v41;
    sub_1D2AC6984();

    sub_1D2A2E044(v13, type metadata accessor for GPImageEditionView);
    (*(v15 + 32))(a2, v28, v14);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  return (*(v15 + 56))(a2, v29, 1, v14);
}

void sub_1D2A24E1C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ImagePlaygroundConcept(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v326 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v326 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v326 - v17;
  v19 = sub_1D2AC6684();
  v341 = *(v19 - 8);
  v20 = *(v341 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v340 = &v326 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v327 = v6;
    v334 = *(a3 + 296);
    v22 = type metadata accessor for ImageGenerationViewModifier(0);
    v329 = *(a3 + *(v22 + 64));
    v24 = *(a3 + 192);
    v23 = *(a3 + 208);
    v25 = *(a3 + 224);
    v26 = *(a3 + 225);
    v332 = v18;
    v333 = v14;
    v331 = v12;
    if (v26 != 1)
    {
      v27 = v24;
      v338 = v24;
      v339 = v23;

      sub_1D2AC6EA4();
      v28 = sub_1D2AC6884();
      sub_1D2AC6324();

      v29 = v340;
      sub_1D2AC6674();
      swift_getAtKeyPath();
      sub_1D2A2D83C(v27, *(&v338 + 1), v339, *(&v339 + 1), v25, 0);
      (*(v341 + 8))(v29, v19);
      v24 = v372;
      v23 = v373;
      LOBYTE(v25) = v374;
    }

    v338 = v24;
    v339 = v23;
    v30 = *(a3 + 56);
    if (*(a3 + 64) == 1)
    {
      v379 = *(a3 + 56);
    }

    else
    {
      v31 = *(a3 + 56);

      sub_1D2AC6EA4();
      v32 = sub_1D2AC6884();
      sub_1D2AC6324();

      v33 = v340;
      sub_1D2AC6674();
      swift_getAtKeyPath();
      sub_1D2A2D6F4(v30, 0);
      (*(v341 + 8))(v33, v19);
      v30 = v379;
    }

    v378 = *(a3 + 168);
    v34 = *(a3 + 120);
    v35 = *(a3 + 152);
    v376 = *(a3 + 136);
    v377 = v35;
    v36 = *(a3 + 88);
    v372 = *(a3 + 72);
    v373 = v36;
    v374 = *(a3 + 104);
    v375 = v34;
    v336 = v30;
    if (v378)
    {
      v37 = *(a3 + 120);
      v368 = *(a3 + 104);
      v369 = v37;
      v38 = *(a3 + 152);
      v370 = *(a3 + 136);
      v371 = v38;
      v39 = *(a3 + 88);
      v366 = *(a3 + 72);
      v367 = v39;
      v348 = *(a3 + 168);
      v346 = v370;
      v347 = v38;
      v342 = v366;
      v343 = v39;
      v344 = v368;
      v345 = v37;
      sub_1D2A2D244(&v342, &v360);
    }

    else
    {

      sub_1D2AC6EA4();
      v40 = sub_1D2AC6884();
      sub_1D2AC6324();

      v30 = v336;
      v41 = v340;
      sub_1D2AC6674();
      swift_getAtKeyPath();
      sub_1D2A2E61C(&v372, &qword_1EC703B08, &qword_1D2AC9CD8);
      (*(v341 + 8))(v41, v19);
    }

    v330 = v11;
    v337 = v19;
    v328 = *(v22 + 60);
    v342 = v366;
    v343 = v367;
    v344 = v368;
    v345 = v369;
    v346 = v370;
    v347 = v371;
    v42 = type metadata accessor for GPHostSideConnectionManager(0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_1D2A5FB60(0, 0, 0, 0);
    v46 = v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
    v47 = v339;
    *v46 = v338;
    *(v46 + 16) = v47;
    *(v46 + 32) = v25 & 1;
    v48 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles);
    *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = v30;

    v49 = *(v30 + 2);
    p_ivars = &ImagePlaygroundViewController.ivars;
    v335 = a3;
    if (!v49)
    {

      goto LABEL_26;
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v30;
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = sub_1D2A571CC;
    v53[4] = 0;
    v53[5] = sub_1D2A2DFD4;
    v326 = v53;
    v53[6] = v51;
    swift_getKeyPath();
    *&v360 = v45;
    v54 = sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    swift_bridgeObjectRetain_n();
    *&v338 = v51;

    *&v339 = v54;
    sub_1D2AC6094();

    v55 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v55)
    {
      *&v362 = sub_1D2A571CC;
      *(&v362 + 1) = 0;
      *&v360 = MEMORY[0x1E69E9820];
      *(&v360 + 1) = 1107296256;
      *&v361 = sub_1D2A44320;
      *(&v361 + 1) = &block_descriptor_181;
      v56 = _Block_copy(&v360);
      v57 = v55;

      v58 = [v57 remoteObjectProxyWithErrorHandler_];
      _Block_release(v56);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v354, v359);
      sub_1D2A206F8(v359, &v360);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v59 = v354;
      if (v354)
      {
        sub_1D2A571EC(v354, v336);

LABEL_25:
        p_ivars = &ImagePlaygroundViewController.ivars;
LABEL_26:
        v77 = (v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
        v78 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
        v359[0] = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
        v359[1] = v78;
        v79 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
        v81 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
        v80 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
        v359[4] = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
        v359[5] = v79;
        v359[2] = v81;
        v359[3] = v80;
        memmove((v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), &v342, 0x60uLL);
        sub_1D2A2D244(&v342, &v354);
        sub_1D2A2E61C(v359, &qword_1EC7044F0, &unk_1D2AC9D50);
        v82 = v77[1];
        v360 = *v77;
        v361 = v82;
        v83 = v77[5];
        v85 = v77[2];
        v84 = v77[3];
        v364 = v77[4];
        v365 = v83;
        v362 = v85;
        v363 = v84;
        v86 = *(&v360 + 1);
        if (!*(&v360 + 1))
        {
          goto LABEL_41;
        }

        v87 = v360;
        v88 = v77[4];
        v382 = v77[3];
        v383 = v88;
        v384 = v77[5];
        v89 = v77[2];
        v380 = v77[1];
        v381 = v89;
        v90 = swift_allocObject();
        v326 = v87;
        *(v90 + 16) = v87;
        *(v90 + 24) = v86;
        v91 = v383;
        *(v90 + 64) = v382;
        *(v90 + 80) = v91;
        *(v90 + 96) = v384;
        v92 = v381;
        *(v90 + 32) = v380;
        *(v90 + 48) = v92;
        v93 = swift_allocObject();
        swift_weakInit();
        v94 = swift_allocObject();
        v94[2] = v93;
        v94[3] = sub_1D2A57398;
        v94[4] = 0;
        v94[5] = sub_1D2A2E6B0;
        v94[6] = v90;
        swift_getKeyPath();
        v95 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager___observationRegistrar;
        v349 = v45;
        sub_1D2A2E5B4(&v360, &v354, &qword_1EC7044F0, &unk_1D2AC9D50);
        sub_1D2A2E5B4(&v360, &v354, &qword_1EC7044F0, &unk_1D2AC9D50);
        v96 = sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

        *&v339 = v95;
        *&v338 = v96;
        sub_1D2AC6094();

        v97 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
        if (v97)
        {
          v357 = sub_1D2A57398;
          v358 = 0;
          *&v354 = MEMORY[0x1E69E9820];
          *(&v354 + 1) = 1107296256;
          v355 = sub_1D2A44320;
          v356 = &block_descriptor_283;
          v98 = _Block_copy(&v354);
          v99 = v97;

          v100 = [v99 remoteObjectProxyWithErrorHandler_];
          _Block_release(v98);

          sub_1D2AC6FF4();
          swift_unknownObjectRelease();
          sub_1D2A206F8(v352, v353);
          sub_1D2A206F8(v353, &v354);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
          swift_dynamicCast();
          v101 = *&v352[0];
          if (*&v352[0])
          {
            v102 = sub_1D2AC6BF4();
            [v101 setSelectedGenerationStyle_];

LABEL_40:
            sub_1D2A2E61C(&v360, &qword_1EC7044F0, &unk_1D2AC9D50);
            a3 = v335;
            p_ivars = (&ImagePlaygroundViewController + 48);
LABEL_41:
            v119 = v334;
            v120 = *(v334 + 16);
            v121 = MEMORY[0x1E69E7CC0];
            if (v120)
            {
              *&v354 = MEMORY[0x1E69E7CC0];
              sub_1D2AC7104();
              v122 = v119 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
              v123 = *(v327 + 72);
              do
              {
                sub_1D2A2DFDC(v122, v9, type metadata accessor for ImagePlaygroundConcept);
                sub_1D2A49C68(0);
                sub_1D2A2E044(v9, type metadata accessor for ImagePlaygroundConcept);
                sub_1D2AC70E4();
                v124 = *(v354 + 16);
                sub_1D2AC7114();
                sub_1D2AC7124();
                sub_1D2AC70F4();
                v122 += v123;
                --v120;
              }

              while (v120);
              v121 = v354;
              p_ivars = &ImagePlaygroundViewController.ivars;
            }

            v125 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
            v126 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
            *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = v121;

            v127 = *(v45 + v125);
            v128 = swift_allocObject();
            *(v128 + 16) = v127;
            v129 = swift_allocObject();
            swift_weakInit();
            v130 = swift_allocObject();
            v130[2] = v129;
            v130[3] = sub_1D2A575AC;
            v130[4] = 0;
            v130[5] = sub_1D2A2E0A4;
            v130[6] = v128;
            swift_getKeyPath();
            v131 = p_ivars[475];
            *&v354 = v45;
            v132 = sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
            v327 = v127;
            swift_bridgeObjectRetain_n();

            *&v339 = v131;
            *&v338 = v132;
            sub_1D2AC6094();

            v334 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection;
            v133 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
            if (v133)
            {
              v357 = sub_1D2A575AC;
              v358 = 0;
              *&v354 = MEMORY[0x1E69E9820];
              *(&v354 + 1) = 1107296256;
              v355 = sub_1D2A44320;
              v356 = &block_descriptor_196;
              v134 = _Block_copy(&v354);
              v135 = v133;

              v136 = [v135 remoteObjectProxyWithErrorHandler_];
              _Block_release(v134);

              sub_1D2AC6FF4();
              swift_unknownObjectRelease();
              sub_1D2A206F8(v352, v353);
              sub_1D2A206F8(v353, &v354);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
              swift_dynamicCast();
              v137 = *&v352[0];
              if (*&v352[0])
              {
                sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
                v138 = sub_1D2AC6D24();
                [v137 setPromptElements_];

                v139 = swift_allocObject();
                *(v139 + 16) = 0;
                v140 = v329;
                if (!v329)
                {
                  v329 = 0;
                  goto LABEL_62;
                }

                goto LABEL_60;
              }
            }

            else
            {
              sub_1D2A2DF64();
              v141 = swift_allocError();
              if (qword_1EC7035A0 != -1)
              {
                swift_once();
              }

              v142 = sub_1D2AC63B4();
              __swift_project_value_buffer(v142, qword_1EC7040C0);
              v143 = v141;
              v144 = sub_1D2AC6394();
              v145 = sub_1D2AC6EB4();

              if (os_log_type_enabled(v144, v145))
              {
                v146 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                *v146 = 138412290;
                v148 = v141;
                v149 = _swift_stdlib_bridgeErrorToNSError();
                *(v146 + 4) = v149;
                *v147 = v149;
                _os_log_impl(&dword_1D2A17000, v144, v145, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v146, 0xCu);
                sub_1D2A2E61C(v147, &unk_1EC704400, &unk_1D2ADA9A0);
                MEMORY[0x1D38A8460](v147, -1, -1);
                MEMORY[0x1D38A8460](v146, -1, -1);
              }
            }

            v150 = swift_allocObject();
            *(v150 + 16) = sub_1D2A2E6B4;
            *(v150 + 24) = v130;
            swift_getKeyPath();
            *&v354 = v45;

            sub_1D2AC6094();

            *&v354 = v45;
            swift_getKeyPath();
            sub_1D2AC60B4();

            v151 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
            swift_beginAccess();
            v152 = *(v45 + v151);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v45 + v151) = v152;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v152 = sub_1D2A4486C(0, v152[2] + 1, 1, v152);
              *(v45 + v151) = v152;
            }

            v155 = v152[2];
            v154 = v152[3];
            if (v155 >= v154 >> 1)
            {
              v152 = sub_1D2A4486C((v154 > 1), v155 + 1, 1, v152);
            }

            v152[2] = v155 + 1;
            v156 = &v152[2 * v155];
            v156[4] = sub_1D2A2E724;
            v156[5] = v150;
            *(v45 + v151) = v152;
            swift_endAccess();
            *&v354 = v45;
            swift_getKeyPath();
            sub_1D2AC60A4();

            v139 = swift_allocObject();
            *(v139 + 16) = 0;
            v140 = v329;
            if (!v329)
            {
              v329 = 0;
              a3 = v335;
LABEL_62:
              v160 = sub_1D2AC6DD4();
              v161 = v332;
              (*(*(v160 - 8) + 56))(v332, 1, 1, v160);
              v162 = v333;
              sub_1D2A2E5B4(a3 + v328, v333, &qword_1EC7039C8, &unk_1D2AC9900);
              sub_1D2AC6DA4();

              v163 = sub_1D2AC6D94();
              v164 = (*(v330 + 80) + 48) & ~*(v330 + 80);
              v165 = (v331 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
              v166 = swift_allocObject();
              v167 = MEMORY[0x1E69E85E0];
              v166[2] = v163;
              v166[3] = v167;
              v168 = v329;
              v166[4] = v329;
              v166[5] = v139;
              sub_1D2A2E0AC(v162, v166 + v164);
              *(v166 + v165) = v45;
              v169 = v168;
              sub_1D2A2F088(0, 0, v161, &unk_1D2AC9D68, v166);

              sub_1D2A2DDA8(&v342);

              sub_1D2A2347C();
              v170 = *(a3 + 176);
              if (*(a3 + 184))
              {
                v171 = *(a3 + 176);
                LOBYTE(v354) = *(a3 + 176);
                v172 = v337;
              }

              else
              {
                v173 = *(a3 + 176);

                sub_1D2AC6EA4();
                v174 = sub_1D2AC6884();
                sub_1D2AC6324();

                v175 = v340;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A19D04(v170, 0);
                v172 = v337;
                (*(v341 + 8))(v175, v337);
                v171 = v354;
              }

              v176 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy;
              v177 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy);
              if (v171 == 3)
              {
                if (v177 == 3)
                {
                  goto LABEL_87;
                }
              }

              else if (v177 != 3 && v171 == v177)
              {
                goto LABEL_87;
              }

              v178 = *(a3 + 176);
              if (*(a3 + 184) == 1)
              {
                v179 = *(a3 + 176);
                LOBYTE(v349) = *(a3 + 176);
              }

              else
              {
                v180 = *(a3 + 176);

                sub_1D2AC6EA4();
                v181 = sub_1D2AC6884();
                sub_1D2AC6324();

                v182 = v340;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A19D04(v178, 0);
                (*(v341 + 8))(v182, v172);
                v179 = v349;
              }

              *(v45 + v176) = v179;
              if (v179 != 3)
              {
                v183 = swift_allocObject();
                *(v183 + 16) = v179;
                v184 = swift_allocObject();
                swift_weakInit();
                v185 = swift_allocObject();
                v185[2] = v184;
                v185[3] = sub_1D2A57580;
                v185[4] = 0;
                v185[5] = sub_1D2A2E72C;
                v185[6] = v183;
                swift_getKeyPath();
                *&v354 = v45;

                sub_1D2AC6094();

                v186 = *(v45 + v334);
                if (v186)
                {
                  v357 = sub_1D2A57580;
                  v358 = 0;
                  *&v354 = MEMORY[0x1E69E9820];
                  *(&v354 + 1) = 1107296256;
                  v355 = sub_1D2A44320;
                  v356 = &block_descriptor_266;
                  v187 = _Block_copy(&v354);
                  v188 = v186;

                  v189 = [v188 remoteObjectProxyWithErrorHandler_];
                  _Block_release(v187);

                  sub_1D2AC6FF4();
                  swift_unknownObjectRelease();
                  sub_1D2A206F8(v352, v353);
                  sub_1D2A206F8(v353, &v354);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                  swift_dynamicCast();
                  v190 = *&v352[0];
                  v172 = v337;
                  if (*&v352[0])
                  {
                    v191 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                    [v190 setPersonalizationPolicy_];

                    goto LABEL_87;
                  }
                }

                else
                {
                  sub_1D2A2DF64();
                  v192 = swift_allocError();
                  if (qword_1EC7035A0 != -1)
                  {
                    swift_once();
                  }

                  v193 = sub_1D2AC63B4();
                  __swift_project_value_buffer(v193, qword_1EC7040C0);
                  v194 = v192;
                  v195 = sub_1D2AC6394();
                  v196 = sub_1D2AC6EB4();

                  if (os_log_type_enabled(v195, v196))
                  {
                    v197 = swift_slowAlloc();
                    v198 = swift_slowAlloc();
                    *v197 = 138412290;
                    v199 = v192;
                    v200 = _swift_stdlib_bridgeErrorToNSError();
                    *(v197 + 4) = v200;
                    *v198 = v200;
                    _os_log_impl(&dword_1D2A17000, v195, v196, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v197, 0xCu);
                    sub_1D2A2E61C(v198, &unk_1EC704400, &unk_1D2ADA9A0);
                    MEMORY[0x1D38A8460](v198, -1, -1);
                    MEMORY[0x1D38A8460](v197, -1, -1);
                  }
                }

                v336 = v183;
                v201 = swift_allocObject();
                *(v201 + 16) = sub_1D2A2E6B4;
                *(v201 + 24) = v185;
                swift_getKeyPath();
                *&v354 = v45;

                sub_1D2AC6094();

                *&v354 = v45;
                swift_getKeyPath();
                sub_1D2AC60B4();

                v202 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
                swift_beginAccess();
                v203 = *(v45 + v202);
                v204 = swift_isUniquelyReferenced_nonNull_native();
                *(v45 + v202) = v203;
                if ((v204 & 1) == 0)
                {
                  v203 = sub_1D2A4486C(0, v203[2] + 1, 1, v203);
                  *(v45 + v202) = v203;
                }

                v206 = v203[2];
                v205 = v203[3];
                if (v206 >= v205 >> 1)
                {
                  v203 = sub_1D2A4486C((v205 > 1), v206 + 1, 1, v203);
                }

                v203[2] = v206 + 1;
                v207 = &v203[2 * v206];
                v207[4] = sub_1D2A2E724;
                v207[5] = v201;
                *(v45 + v202) = v203;
                swift_endAccess();
                *&v354 = v45;
                swift_getKeyPath();
                sub_1D2AC60A4();

                v172 = v337;
              }

LABEL_87:
              v209 = *(a3 + 232);
              v208 = *(a3 + 240);
              v210 = *(a3 + 248);
              if (*(a3 + 256) == 1)
              {
                *&v354 = *(a3 + 232);
                *(&v354 + 1) = v208;
                v355 = v210;
              }

              else
              {
                v211 = *(a3 + 232);

                sub_1D2AC6EA4();
                v212 = sub_1D2AC6884();
                sub_1D2AC6324();

                v213 = v340;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A2D848(v209, v208, v210, 0);
                (*(v341 + 8))(v213, v172);
                v208 = *(&v354 + 1);
                v210 = v355;
              }

              v214 = v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
              if ((*(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio + 24) & 1) != 0 || *&v354 != *v214 || v208 != *(v214 + 8) || v210 != *(v214 + 16))
              {
                v216 = *(a3 + 232);
                v215 = *(a3 + 240);
                v217 = *(a3 + 248);
                if (*(a3 + 256) == 1)
                {
                  v349 = *(a3 + 232);
                  v350 = v215;
                  v351 = v217;
                }

                else
                {
                  v218 = *(a3 + 232);

                  sub_1D2AC6EA4();
                  v219 = sub_1D2AC6884();
                  sub_1D2AC6324();

                  v220 = v340;
                  sub_1D2AC6674();
                  swift_getAtKeyPath();
                  sub_1D2A2D848(v216, v215, v217, 0);
                  (*(v341 + 8))(v220, v172);
                  v216 = v349;
                  v215 = v350;
                  v217 = v351;
                }

                *v214 = v216;
                *(v214 + 8) = v215;
                *(v214 + 16) = v217;
                *(v214 + 24) = 0;
                v221 = swift_allocObject();
                *(v221 + 2) = v216;
                *(v221 + 3) = v215;
                *(v221 + 4) = v217;
                v222 = swift_allocObject();
                swift_weakInit();
                v223 = swift_allocObject();
                v223[2] = v222;
                v223[3] = sub_1D2A576E0;
                v223[4] = 0;
                v223[5] = sub_1D2A2E6C0;
                v223[6] = v221;
                swift_getKeyPath();
                *&v354 = v45;

                sub_1D2AC6094();

                v224 = *(v45 + v334);
                if (v224)
                {
                  v357 = sub_1D2A576E0;
                  v358 = 0;
                  *&v354 = MEMORY[0x1E69E9820];
                  *(&v354 + 1) = 1107296256;
                  v355 = sub_1D2A44320;
                  v356 = &block_descriptor_250;
                  v225 = _Block_copy(&v354);
                  v226 = v224;

                  v227 = [v226 remoteObjectProxyWithErrorHandler_];
                  _Block_release(v225);

                  sub_1D2AC6FF4();
                  swift_unknownObjectRelease();
                  sub_1D2A206F8(v352, v353);
                  sub_1D2A206F8(v353, &v354);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                  swift_dynamicCast();
                  v228 = *&v352[0];
                  v172 = v337;
                  if (*&v352[0])
                  {
                    sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
                    v229 = sub_1D2AC6F84();
                    [v228 setPreviewAspectRatio_];

                    goto LABEL_110;
                  }
                }

                else
                {
                  sub_1D2A2DF64();
                  v230 = swift_allocError();
                  if (qword_1EC7035A0 != -1)
                  {
                    swift_once();
                  }

                  v231 = sub_1D2AC63B4();
                  __swift_project_value_buffer(v231, qword_1EC7040C0);
                  v232 = v230;
                  v233 = sub_1D2AC6394();
                  v234 = sub_1D2AC6EB4();

                  if (os_log_type_enabled(v233, v234))
                  {
                    v235 = swift_slowAlloc();
                    v236 = swift_slowAlloc();
                    *v235 = 138412290;
                    v237 = v230;
                    v238 = _swift_stdlib_bridgeErrorToNSError();
                    *(v235 + 4) = v238;
                    *v236 = v238;
                    _os_log_impl(&dword_1D2A17000, v233, v234, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v235, 0xCu);
                    sub_1D2A2E61C(v236, &unk_1EC704400, &unk_1D2ADA9A0);
                    MEMORY[0x1D38A8460](v236, -1, -1);
                    MEMORY[0x1D38A8460](v235, -1, -1);
                  }
                }

                v336 = v221;
                v239 = swift_allocObject();
                *(v239 + 16) = sub_1D2A2E6B4;
                *(v239 + 24) = v223;
                swift_getKeyPath();
                *&v354 = v45;

                sub_1D2AC6094();

                *&v354 = v45;
                swift_getKeyPath();
                sub_1D2AC60B4();

                v240 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
                swift_beginAccess();
                v241 = *(v45 + v240);
                v242 = swift_isUniquelyReferenced_nonNull_native();
                *(v45 + v240) = v241;
                if ((v242 & 1) == 0)
                {
                  v241 = sub_1D2A4486C(0, v241[2] + 1, 1, v241);
                  *(v45 + v240) = v241;
                }

                v244 = v241[2];
                v243 = v241[3];
                if (v244 >= v243 >> 1)
                {
                  v241 = sub_1D2A4486C((v243 > 1), v244 + 1, 1, v241);
                }

                v241[2] = v244 + 1;
                v245 = &v241[2 * v244];
                v245[4] = sub_1D2A2E724;
                v245[5] = v239;
                *(v45 + v240) = v241;
                swift_endAccess();
                *&v354 = v45;
                swift_getKeyPath();
                sub_1D2AC60A4();

                v172 = v337;
              }

LABEL_110:
              v246 = *(a3 + 264);
              if (*(a3 + 272) == 1)
              {
                v247 = v246;
                if (!v246)
                {
LABEL_133:
                  v289 = *(a3 + 280);
                  if (*(a3 + 288) == 1)
                  {
                    v290 = *(a3 + 280);
                    LOBYTE(v354) = *(a3 + 280);
                  }

                  else
                  {
                    v291 = *(a3 + 280);

                    sub_1D2AC6EA4();
                    v292 = sub_1D2AC6884();
                    sub_1D2AC6324();

                    v293 = v340;
                    sub_1D2AC6674();
                    swift_getAtKeyPath();
                    sub_1D2A19D04(v289, 0);
                    (*(v341 + 8))(v293, v172);
                    v290 = v354;
                  }

                  v294 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy;
                  v295 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy);
                  if (v290 == 3)
                  {
                    if (v295 == 3)
                    {
LABEL_159:

                      return;
                    }
                  }

                  else if (v295 != 3 && v290 == v295)
                  {
                    goto LABEL_159;
                  }

                  v296 = *(a3 + 280);
                  if (*(a3 + 288) == 1)
                  {
                    v297 = *(a3 + 280);
                    LOBYTE(v349) = *(a3 + 280);
                  }

                  else
                  {
                    v298 = *(a3 + 280);

                    sub_1D2AC6EA4();
                    v299 = sub_1D2AC6884();
                    sub_1D2AC6324();

                    v300 = v340;
                    sub_1D2AC6674();
                    swift_getAtKeyPath();
                    sub_1D2A19D04(v296, 0);
                    (*(v341 + 8))(v300, v172);
                    v297 = v349;
                  }

                  *(v45 + v294) = v297;
                  if (v297 != 3)
                  {
                    v301 = swift_allocObject();
                    *(v301 + 16) = v297;
                    v302 = swift_allocObject();
                    swift_weakInit();
                    v303 = swift_allocObject();
                    v303[2] = v302;
                    v303[3] = sub_1D2A577B4;
                    v303[4] = 0;
                    v303[5] = sub_1D2A2E728;
                    v303[6] = v301;
                    swift_getKeyPath();
                    *&v354 = v45;

                    sub_1D2AC6094();

                    v304 = *(v45 + v334);
                    if (v304)
                    {
                      v357 = sub_1D2A577B4;
                      v358 = 0;
                      *&v354 = MEMORY[0x1E69E9820];
                      *(&v354 + 1) = 1107296256;
                      v355 = sub_1D2A44320;
                      v356 = &block_descriptor_219;
                      v305 = _Block_copy(&v354);
                      v306 = v304;

                      v307 = [v306 remoteObjectProxyWithErrorHandler_];
                      _Block_release(v305);

                      sub_1D2AC6FF4();
                      swift_unknownObjectRelease();
                      sub_1D2A206F8(v352, v353);
                      sub_1D2A206F8(v353, &v354);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                      swift_dynamicCast();
                      v308 = *&v352[0];
                      if (*&v352[0])
                      {
                        v309 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
                        [v308 setImageImportPolicy_];

                        return;
                      }
                    }

                    else
                    {
                      sub_1D2A2DF64();
                      v310 = swift_allocError();
                      if (qword_1EC7035A0 != -1)
                      {
                        swift_once();
                      }

                      v311 = sub_1D2AC63B4();
                      __swift_project_value_buffer(v311, qword_1EC7040C0);
                      v312 = v310;
                      v313 = sub_1D2AC6394();
                      v314 = sub_1D2AC6EB4();

                      if (os_log_type_enabled(v313, v314))
                      {
                        v315 = swift_slowAlloc();
                        v316 = swift_slowAlloc();
                        *v315 = 138412290;
                        v317 = v310;
                        v318 = _swift_stdlib_bridgeErrorToNSError();
                        *(v315 + 4) = v318;
                        *v316 = v318;
                        _os_log_impl(&dword_1D2A17000, v313, v314, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v315, 0xCu);
                        sub_1D2A2E61C(v316, &unk_1EC704400, &unk_1D2ADA9A0);
                        MEMORY[0x1D38A8460](v316, -1, -1);
                        MEMORY[0x1D38A8460](v315, -1, -1);
                      }
                    }

                    v319 = swift_allocObject();
                    *(v319 + 16) = sub_1D2A2E6B4;
                    *(v319 + 24) = v303;
                    swift_getKeyPath();
                    *&v354 = v45;

                    sub_1D2AC6094();

                    *&v354 = v45;
                    swift_getKeyPath();
                    sub_1D2AC60B4();

                    v320 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
                    swift_beginAccess();
                    v321 = *(v45 + v320);
                    v322 = swift_isUniquelyReferenced_nonNull_native();
                    *(v45 + v320) = v321;
                    if ((v322 & 1) == 0)
                    {
                      v321 = sub_1D2A4486C(0, v321[2] + 1, 1, v321);
                      *(v45 + v320) = v321;
                    }

                    v324 = v321[2];
                    v323 = v321[3];
                    if (v324 >= v323 >> 1)
                    {
                      v321 = sub_1D2A4486C((v323 > 1), v324 + 1, 1, v321);
                    }

                    v321[2] = v324 + 1;
                    v325 = &v321[2 * v324];
                    v325[4] = sub_1D2A2E724;
                    v325[5] = v319;
                    *(v45 + v320) = v321;
                    swift_endAccess();
                    *&v354 = v45;
                    swift_getKeyPath();
                    sub_1D2AC60A4();
                  }

                  goto LABEL_159;
                }
              }

              else
              {
                v248 = *(a3 + 264);

                sub_1D2AC6EA4();
                v249 = sub_1D2AC6884();
                sub_1D2AC6324();

                v250 = v340;
                sub_1D2AC6674();
                swift_getAtKeyPath();
                sub_1D2A2D854(v246, 0);
                (*(v341 + 8))(v250, v172);
                v246 = v354;
                if (!v354)
                {
                  goto LABEL_133;
                }
              }

              v251 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage;
              v252 = *(v45 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
              if (v252)
              {
                v253 = *(v252 + OBJC_IVAR___GPImageXPCWrapper_image);
                type metadata accessor for CGImage(0);
                sub_1D2A2D3A8(&qword_1EC703B20, type metadata accessor for CGImage);
                v254 = v253;
                v255 = v246;
                v256 = sub_1D2AC60F4();

                if (v256)
                {

                  goto LABEL_133;
                }
              }

              v257 = objc_allocWithZone(type metadata accessor for ImageXPCWrapper());
              v258 = v246;
              v259 = ImageXPCWrapper.init(_:orientation:)(v258, 1u);
              v260 = *(v45 + v251);
              *(v45 + v251) = v259;
              v261 = v259;

              if (!v259)
              {

                goto LABEL_133;
              }

              v262 = swift_allocObject();
              *(v262 + 16) = v261;
              v263 = swift_allocObject();
              swift_weakInit();
              v264 = swift_allocObject();
              v264[2] = v263;
              v264[3] = sub_1D2A57784;
              v264[4] = 0;
              v264[5] = sub_1D2A2E354;
              v264[6] = v262;
              swift_getKeyPath();
              *&v354 = v45;
              v336 = v261;

              sub_1D2AC6094();

              v265 = *(v45 + v334);
              if (v265)
              {
                v357 = sub_1D2A57784;
                v358 = 0;
                *&v354 = MEMORY[0x1E69E9820];
                *(&v354 + 1) = 1107296256;
                v355 = sub_1D2A44320;
                v356 = &block_descriptor_234;
                v266 = _Block_copy(&v354);
                v267 = v265;

                v268 = [v267 remoteObjectProxyWithErrorHandler_];
                _Block_release(v266);

                sub_1D2AC6FF4();
                swift_unknownObjectRelease();
                sub_1D2A206F8(v352, v353);
                sub_1D2A206F8(v353, &v354);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
                swift_dynamicCast();
                v269 = *&v352[0];
                if (*&v352[0])
                {
                  v270 = v336;
                  [*&v352[0] setPreGeneratedImage_];

LABEL_132:
                  v172 = v337;
                  goto LABEL_133;
                }
              }

              else
              {
                sub_1D2A2DF64();
                v271 = swift_allocError();
                if (qword_1EC7035A0 != -1)
                {
                  swift_once();
                }

                v272 = sub_1D2AC63B4();
                __swift_project_value_buffer(v272, qword_1EC7040C0);
                v273 = v271;
                v274 = sub_1D2AC6394();
                v275 = sub_1D2AC6EB4();

                if (os_log_type_enabled(v274, v275))
                {
                  v276 = swift_slowAlloc();
                  v277 = swift_slowAlloc();
                  *v276 = 138412290;
                  v278 = v271;
                  v279 = _swift_stdlib_bridgeErrorToNSError();
                  *(v276 + 4) = v279;
                  *v277 = v279;
                  _os_log_impl(&dword_1D2A17000, v274, v275, "Could not send pregenerated image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v276, 0xCu);
                  sub_1D2A2E61C(v277, &unk_1EC704400, &unk_1D2ADA9A0);
                  MEMORY[0x1D38A8460](v277, -1, -1);
                  MEMORY[0x1D38A8460](v276, -1, -1);
                }
              }

              v333 = v258;
              v280 = swift_allocObject();
              *(v280 + 16) = sub_1D2A2E6B4;
              *(v280 + 24) = v264;
              swift_getKeyPath();
              *&v354 = v45;

              sub_1D2AC6094();

              *&v354 = v45;
              swift_getKeyPath();
              sub_1D2AC60B4();

              v281 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
              swift_beginAccess();
              v282 = *(v45 + v281);
              v283 = swift_isUniquelyReferenced_nonNull_native();
              *(v45 + v281) = v282;
              if ((v283 & 1) == 0)
              {
                v282 = sub_1D2A4486C(0, v282[2] + 1, 1, v282);
                *(v45 + v281) = v282;
              }

              v285 = v282[2];
              v284 = v282[3];
              v286 = v333;
              if (v285 >= v284 >> 1)
              {
                v282 = sub_1D2A4486C((v284 > 1), v285 + 1, 1, v282);
              }

              v282[2] = v285 + 1;
              v287 = &v282[2 * v285];
              v287[4] = sub_1D2A2E724;
              v287[5] = v280;
              *(v45 + v281) = v282;
              swift_endAccess();
              *&v354 = v45;
              swift_getKeyPath();
              sub_1D2AC60A4();
              v288 = v336;

              a3 = v335;
              goto LABEL_132;
            }

            a3 = v335;
LABEL_60:
            *&v354 = v140;
            v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B28, &unk_1D2AC9D70);
            v158 = *(v157 + 48);
            v159 = *(v157 + 52);
            swift_allocObject();
            swift_retain_n();
            MEMORY[0x1D38A6980](&v354);
            v329 = sub_1D2AC6534();

            goto LABEL_62;
          }
        }

        else
        {
          sub_1D2A2DF64();
          v103 = swift_allocError();
          if (qword_1EC7035A0 != -1)
          {
            swift_once();
          }

          v104 = sub_1D2AC63B4();
          __swift_project_value_buffer(v104, qword_1EC7040C0);
          v105 = v103;
          v106 = sub_1D2AC6394();
          v107 = sub_1D2AC6EB4();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *v108 = 138412290;
            v110 = v103;
            v111 = _swift_stdlib_bridgeErrorToNSError();
            *(v108 + 4) = v111;
            *v109 = v111;
            _os_log_impl(&dword_1D2A17000, v106, v107, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v108, 0xCu);
            sub_1D2A2E61C(v109, &unk_1EC704400, &unk_1D2ADA9A0);
            MEMORY[0x1D38A8460](v109, -1, -1);
            MEMORY[0x1D38A8460](v108, -1, -1);
          }
        }

        v112 = swift_allocObject();
        *(v112 + 16) = sub_1D2A2E6B4;
        *(v112 + 24) = v94;
        swift_getKeyPath();
        *&v354 = v45;
        v326 = v94;

        sub_1D2AC6094();

        *&v354 = v45;
        swift_getKeyPath();
        sub_1D2AC60B4();

        v113 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
        swift_beginAccess();
        v114 = *(v45 + v113);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        *(v45 + v113) = v114;
        if ((v115 & 1) == 0)
        {
          v114 = sub_1D2A4486C(0, v114[2] + 1, 1, v114);
          *(v45 + v113) = v114;
        }

        v117 = v114[2];
        v116 = v114[3];
        if (v117 >= v116 >> 1)
        {
          v114 = sub_1D2A4486C((v116 > 1), v117 + 1, 1, v114);
        }

        v114[2] = v117 + 1;
        v118 = &v114[2 * v117];
        v118[4] = sub_1D2A2E724;
        v118[5] = v112;
        *(v45 + v113) = v114;
        swift_endAccess();
        *&v354 = v45;
        swift_getKeyPath();
        sub_1D2AC60A4();

        goto LABEL_40;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v60 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v61 = sub_1D2AC63B4();
      __swift_project_value_buffer(v61, qword_1EC7040C0);
      v62 = v60;
      v63 = sub_1D2AC6394();
      v64 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412290;
        v67 = v60;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v65 + 4) = v68;
        *v66 = v68;
        _os_log_impl(&dword_1D2A17000, v63, v64, "Could not send allowed generation styles to remote view: %@. May not be an error if the connection is not established yet, will retry.", v65, 0xCu);
        sub_1D2A2E61C(v66, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v66, -1, -1);
        MEMORY[0x1D38A8460](v65, -1, -1);
      }
    }

    v69 = swift_allocObject();
    v70 = v326;
    *(v69 + 16) = sub_1D2A2E6B4;
    *(v69 + 24) = v70;
    swift_getKeyPath();
    *&v360 = v45;

    sub_1D2AC6094();

    *&v360 = v45;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v71 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v72 = *(v45 + v71);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + v71) = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_1D2A4486C(0, v72[2] + 1, 1, v72);
      *(v45 + v71) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_1D2A4486C((v74 > 1), v75 + 1, 1, v72);
    }

    v72[2] = v75 + 1;
    v76 = &v72[2 * v75];
    v76[4] = sub_1D2A2E724;
    v76[5] = v69;
    *(v45 + v71) = v72;
    swift_endAccess();
    *&v360 = v45;
    swift_getKeyPath();
    sub_1D2AC60A4();

    a3 = v335;
    goto LABEL_25;
  }
}

uint64_t sub_1D2A2824C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v7 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  result = sub_1D2AC6A24();
  if (v6)
  {
    v5 = *(v6 + 16);

    sub_1D2A56C24(v3);
  }

  return result;
}

uint64_t sub_1D2A282D4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[3];
  __src[2] = a2[2];
  __src[3] = v3;
  v4 = a2[5];
  __src[4] = a2[4];
  __src[5] = v4;
  v5 = a2[1];
  __src[0] = *a2;
  __src[1] = v5;
  v56[0] = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  result = sub_1D2AC6A24();
  if (*&v55[0])
  {
    v7 = *(*&v55[0] + 16);

    v8 = (v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
    v9 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
    v55[0] = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
    v55[1] = v9;
    v10 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
    v12 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
    v11 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
    v55[4] = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
    v55[5] = v10;
    v55[2] = v12;
    v55[3] = v11;
    memmove((v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), __src, 0x60uLL);
    sub_1D2A2D244(__src, &aBlock);
    sub_1D2A2E61C(v55, &qword_1EC7044F0, &unk_1D2AC9D50);
    v13 = v8[1];
    v56[0] = *v8;
    v56[1] = v13;
    v14 = v8[5];
    v16 = v8[2];
    v15 = v8[3];
    v56[4] = v8[4];
    v56[5] = v14;
    v56[2] = v16;
    v56[3] = v15;
    v17 = *(&v56[0] + 1);
    if (!*(&v56[0] + 1))
    {
    }

    v18 = *&v56[0];
    v19 = v8[4];
    v59 = v8[3];
    v60 = v19;
    v61 = v8[5];
    v20 = v8[2];
    v57 = v8[1];
    v58 = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v17;
    v22 = v60;
    *(v21 + 64) = v59;
    *(v21 + 80) = v22;
    *(v21 + 96) = v61;
    v23 = v58;
    *(v21 + 32) = v57;
    *(v21 + 48) = v23;
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = sub_1D2A57398;
    v25[4] = 0;
    v25[5] = sub_1D2A2DFCC;
    v25[6] = v21;
    swift_getKeyPath();
    sub_1D2A2E5B4(v56, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
    sub_1D2A2E5B4(v56, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
    sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v26 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v26)
    {
      v53 = sub_1D2A57398;
      v54 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v51 = sub_1D2A44320;
      v52 = &block_descriptor_166;
      v27 = _Block_copy(&aBlock);
      v28 = v26;

      v29 = [v28 remoteObjectProxyWithErrorHandler_];
      _Block_release(v27);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v48, v49);
      sub_1D2A206F8(v49, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v30 = v48;
      if (v48)
      {
        v31 = sub_1D2AC6BF4();
        [v30 setSelectedGenerationStyle_];

        return sub_1D2A2E61C(v56, &qword_1EC7044F0, &unk_1D2AC9D50);
      }
    }

    else
    {
      sub_1D2A2DF64();
      v32 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D2AC63B4();
      __swift_project_value_buffer(v33, qword_1EC7040C0);
      v34 = v32;
      v35 = sub_1D2AC6394();
      v36 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v32;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_1D2A17000, v35, v36, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v37, 0xCu);
        sub_1D2A2E61C(v38, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v38, -1, -1);
        MEMORY[0x1D38A8460](v37, -1, -1);
      }
    }

    v41 = swift_allocObject();
    *(v41 + 16) = sub_1D2A2E6B4;
    *(v41 + 24) = v25;
    swift_getKeyPath();
    *&aBlock = v7;

    sub_1D2AC6094();

    *&aBlock = v7;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v42 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v43 = *(v7 + v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + v42) = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1D2A4486C(0, v43[2] + 1, 1, v43);
      *(v7 + v42) = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_1D2A4486C((v45 > 1), v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v47 = &v43[2 * v46];
    v47[4] = sub_1D2A2E724;
    v47[5] = v41;
    *(v7 + v42) = v43;
    swift_endAccess();
    *&aBlock = v7;
    swift_getKeyPath();
    sub_1D2AC60A4();

    return sub_1D2A2E61C(v56, &qword_1EC7044F0, &unk_1D2AC9D50);
  }

  return result;
}

void sub_1D2A289C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v30 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (*&v36[0])
  {
    v4 = *(*&v36[0] + 16);

    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = v3;
    if (v3 != 3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1D2A57580;
      v7[4] = 0;
      v7[5] = sub_1D2A2DFC4;
      v7[6] = v5;
      swift_getKeyPath();
      *&v30 = v4;
      sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

      sub_1D2AC6094();

      v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v8)
      {
        v33 = sub_1D2A57580;
        v34 = 0;
        *&v30 = MEMORY[0x1E69E9820];
        *(&v30 + 1) = 1107296256;
        v31 = sub_1D2A44320;
        v32 = &block_descriptor_151;
        v9 = _Block_copy(&v30);
        v10 = v8;

        v11 = [v10 remoteObjectProxyWithErrorHandler_];
        _Block_release(v9);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(&v35, v36);
        sub_1D2A206F8(v36, &v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v12 = v35;
        if (v35)
        {
          v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v12 setPersonalizationPolicy_];

          return;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v14 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v15 = sub_1D2AC63B4();
        __swift_project_value_buffer(v15, qword_1EC7040C0);
        v16 = v14;
        v17 = sub_1D2AC6394();
        v18 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          v21 = v14;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v22;
          *v20 = v22;
          _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
          sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v20, -1, -1);
          MEMORY[0x1D38A8460](v19, -1, -1);
        }
      }

      v23 = swift_allocObject();
      *(v23 + 16) = sub_1D2A2E6B4;
      *(v23 + 24) = v7;
      swift_getKeyPath();
      *&v30 = v4;

      sub_1D2AC6094();

      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v25 = *(v4 + v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
        *(v4 + v24) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
      }

      v25[2] = v28 + 1;
      v29 = &v25[2 * v28];
      v29[4] = sub_1D2A2E724;
      v29[5] = v23;
      *(v4 + v24) = v25;
      swift_endAccess();
      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60A4();
    }
  }
}

void sub_1D2A28FB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v33 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (*&v39[0])
  {
    v6 = *(*&v39[0] + 16);

    v7 = v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
    *v7 = v4;
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v3;
    v8[4] = v5;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_1D2A576E0;
    v10[4] = 0;
    v10[5] = sub_1D2A2DFB8;
    v10[6] = v8;
    swift_getKeyPath();
    *&v33 = v6;
    sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v11 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v11)
    {
      v36 = sub_1D2A576E0;
      v37 = 0;
      *&v33 = MEMORY[0x1E69E9820];
      *(&v33 + 1) = 1107296256;
      v34 = sub_1D2A44320;
      v35 = &block_descriptor_136;
      v12 = _Block_copy(&v33);
      v13 = v11;

      v14 = [v13 remoteObjectProxyWithErrorHandler_];
      _Block_release(v12);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v38, v39);
      sub_1D2A206F8(v39, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v15 = v38;
      if (v38)
      {
        sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
        v16 = sub_1D2AC6F84();
        [v15 setPreviewAspectRatio_];

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v17 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v18 = sub_1D2AC63B4();
      __swift_project_value_buffer(v18, qword_1EC7040C0);
      v19 = v17;
      v20 = sub_1D2AC6394();
      v21 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v17;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_1D2A17000, v20, v21, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
        sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v23, -1, -1);
        MEMORY[0x1D38A8460](v22, -1, -1);
      }
    }

    v26 = swift_allocObject();
    *(v26 + 16) = sub_1D2A2E6B4;
    *(v26 + 24) = v10;
    swift_getKeyPath();
    *&v33 = v6;

    sub_1D2AC6094();

    *&v33 = v6;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v27 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v28 = *(v6 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v27) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1D2A4486C(0, v28[2] + 1, 1, v28);
      *(v6 + v27) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1D2A4486C((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    v32 = &v28[2 * v31];
    v32[4] = sub_1D2A2E724;
    v32[5] = v26;
    *(v6 + v27) = v28;
    swift_endAccess();
    *&v33 = v6;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void sub_1D2A295B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v30 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B10, qword_1D2AC9CE0);
  sub_1D2AC6A24();
  if (*&v36[0])
  {
    v4 = *(*&v36[0] + 16);

    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = v3;
    if (v3 != 3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1D2A577B4;
      v7[4] = 0;
      v7[5] = sub_1D2A2DF40;
      v7[6] = v5;
      swift_getKeyPath();
      *&v30 = v4;
      sub_1D2A2D3A8(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

      sub_1D2AC6094();

      v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v8)
      {
        v33 = sub_1D2A577B4;
        v34 = 0;
        *&v30 = MEMORY[0x1E69E9820];
        *(&v30 + 1) = 1107296256;
        v31 = sub_1D2A44320;
        v32 = &block_descriptor;
        v9 = _Block_copy(&v30);
        v10 = v8;

        v11 = [v10 remoteObjectProxyWithErrorHandler_];
        _Block_release(v9);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(&v35, v36);
        sub_1D2A206F8(v36, &v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v12 = v35;
        if (v35)
        {
          v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v12 setImageImportPolicy_];

          return;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v14 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v15 = sub_1D2AC63B4();
        __swift_project_value_buffer(v15, qword_1EC7040C0);
        v16 = v14;
        v17 = sub_1D2AC6394();
        v18 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          v21 = v14;
          v22 = _swift_stdlib_bridgeErrorToNSError();
          *(v19 + 4) = v22;
          *v20 = v22;
          _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
          sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v20, -1, -1);
          MEMORY[0x1D38A8460](v19, -1, -1);
        }
      }

      v23 = swift_allocObject();
      *(v23 + 16) = sub_1D2A2DF48;
      *(v23 + 24) = v7;
      swift_getKeyPath();
      *&v30 = v4;

      sub_1D2AC6094();

      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v25 = *(v4 + v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
        *(v4 + v24) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
      }

      v25[2] = v28 + 1;
      v29 = &v25[2 * v28];
      v29[4] = sub_1D2A2E724;
      v29[5] = v23;
      *(v4 + v24) = v25;
      swift_endAccess();
      *&v30 = v4;
      swift_getKeyPath();
      sub_1D2AC60A4();
    }
  }
}

uint64_t sub_1D2A29BC0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  sub_1D2AC60C4();
  v4 = type metadata accessor for GPImageEditionView.ViewModel(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  *(v1 + 64) = sub_1D2A3FC84(v7, 1);
  *(v1 + 16) = a1;
  v8 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject;
  *(*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 40) = &off_1F4DFA218;
  swift_unknownObjectWeakAssign();
  *(*(a1 + v8) + 24) = &off_1F4DFA1E0;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_1D2A29C88(uint64_t a1)
{
  v3 = *(v1 + 56);

  v5 = sub_1D2A6A1F4(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
    sub_1D2AC6084();
  }
}

uint64_t sub_1D2A29DDC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);
  sub_1D2A19818(v2);
  return v2;
}

uint64_t sub_1D2A29E90@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D2A2D66C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D2A19818(v4);
}

uint64_t sub_1D2A29F7C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D2A2D644;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2A19818(v3);
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6084();
  sub_1D2A19C98(v6);
}

uint64_t sub_1D2A2A0D8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);
  sub_1D2A19818(v2);
  return v2;
}

uint64_t sub_1D2A2A18C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D2A2D5EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D2A19818(v4);
}

uint64_t sub_1D2A2A278(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D2A2D5C4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2A19818(v3);
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6084();
  sub_1D2A19C98(v6);
}

uint64_t sub_1D2A2A3D4()
{
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  v1 = *(v0 + 56);
}

uint64_t sub_1D2A2A478@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  *a2 = *(v3 + 56);
}

uint64_t sub_1D2A2A524(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = sub_1D2AC5EF4();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    goto LABEL_9;
  }

  result = sub_1D2AC7024();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D38A74D0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 32);
LABEL_6:
    v8 = v7;
    v9 = [v7 imageURLWrapper];

    v10 = [v9 url];
    sub_1D2AC5EC4();

    v11 = sub_1D2AC5EF4();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
LABEL_9:
    sub_1D2A2A6D4(v5);
    return sub_1D2A2E61C(v5, &qword_1EC7039C8, &unk_1D2AC9900);
  }

  __break(1u);
  return result;
}

void sub_1D2A2A6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v39 - v4;
  v6 = sub_1D2AC5EF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  sub_1D2A2E5B4(a1, v5, &qword_1EC7039C8, &unk_1D2AC9900);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D2A2E61C(v5, &qword_1EC7039C8, &unk_1D2AC9900);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D2AC63B4();
    __swift_project_value_buffer(v18, qword_1EC7040C0);
    v19 = sub_1D2AC6394();
    v20 = sub_1D2AC6E94();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D2A17000, v19, v20, "No Assets", v21, 2u);
      MEMORY[0x1D38A8460](v21, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v17, v5, v6);
    v22 = sub_1D2AC5ED4();
    sub_1D2A2F3B0(v15);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    LODWORD(v41) = v22;
    v23 = sub_1D2AC63B4();
    __swift_project_value_buffer(v23, qword_1EC7040C0);
    (*(v7 + 16))(v12, v15, v6);
    v24 = sub_1D2AC6394();
    v25 = v7;
    v26 = sub_1D2AC6E74();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      v39 = v27;
      v40 = swift_slowAlloc();
      v43 = v40;
      *v27 = 136315138;
      sub_1D2A2D3A8(&qword_1EC703AA0, MEMORY[0x1E6968FB0]);
      v28 = sub_1D2AC7324();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v12, v6);
      v32 = sub_1D2ABAFCC(v28, v30, &v43);

      v33 = v39;
      *(v39 + 1) = v32;
      v34 = v33;
      _os_log_impl(&dword_1D2A17000, v24, v26, "Copied generated image to app sandbox at %s", v33, 0xCu);
      v35 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1D38A8460](v35, -1, -1);
      MEMORY[0x1D38A8460](v34, -1, -1);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v12, v6);
    }

    v36 = v42;
    swift_getKeyPath();
    v43 = v36;
    sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
    sub_1D2AC6094();

    v37 = *(v36 + 24);
    if (v37)
    {
      v38 = *(v36 + 32);

      v37(v15);
      sub_1D2A19C98(v37);
    }

    if (v41)
    {
      sub_1D2AC5EB4();
    }

    v31(v15, v6);
    v31(v17, v6);
  }
}

uint64_t sub_1D2A2AF1C(uint64_t result)
{
  v2 = *(v1 + 64);
  if (*(v2 + 24) == (result & 1))
  {
    *(v2 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A2B030(uint64_t result)
{
  v2 = *(v1 + 64);
  if (*(v2 + 26) == (result & 1))
  {
    *(v2 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A2B144(uint64_t result)
{
  v2 = *(v1 + 64);
  if (*(v2 + 27) == (result & 1))
  {
    *(v2 + 27) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A2B258(unint64_t a1)
{
  v2 = v1;
  v28 = sub_1D2AC5EF4();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = sub_1D2AC7024();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v29 = MEMORY[0x1E69E7CC0];
    result = sub_1D2A2C9C8(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = a1 >> 62;
    v26 = v2;
    v13 = 0;
    v11 = v29;
    v14 = a1;
    v27 = a1 & 0xC000000000000001;
    do
    {
      v15 = v10;
      if (v27)
      {
        v16 = MEMORY[0x1D38A74D0](v13);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 imageURLWrapper];
      v19 = [v18 url];

      sub_1D2AC5EC4();
      v29 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D2A2C9C8(v20 > 1, v21 + 1, 1);
        v11 = v29;
      }

      ++v13;
      *(v11 + 16) = v21 + 1;
      (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v8, v28);
      v10 = v15;
      v14 = a1;
    }

    while (v15 != v13);
    v9 = v25;
    v2 = v26;
  }

  sub_1D2A29C88(v11);
  v22 = *(v2 + 64);
  if (v9)
  {
    result = sub_1D2AC7024();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((*(v22 + 25) ^ (result != 0)))
  {
    v23 = result != 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v25 - 2) = v22;
    *(&v25 - 8) = v23;
    v29 = v22;
    sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  else
  {
    *(v22 + 25) = result != 0;
  }

  return result;
}

uint64_t sub_1D2A2B5A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  swift_getKeyPath();
  v15 = v0;
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  if (*(v0[7] + 16))
  {
    swift_getKeyPath();
    v15 = v0;
    sub_1D2AC6094();

    v5 = v0[7];
    v6 = *(v5 + 16);
    v7 = sub_1D2AC5EF4();
    v8 = *(v7 - 8);
    if (v6)
    {
      (*(*(v7 - 8) + 16))(v4, v5 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)), v7);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    (*(v8 + 56))(v4, v9, 1, v7);
    sub_1D2A2A6D4(v4);
    return sub_1D2A2E61C(v4, &qword_1EC7039C8, &unk_1D2AC9900);
  }

  else
  {
    swift_getKeyPath();
    v15 = v0;
    sub_1D2AC6094();

    v11 = v0[5];
    if (v11)
    {
      v12 = v0[6];

      v11(v13);
      return sub_1D2A19C98(v11);
    }
  }

  return result;
}

uint64_t sub_1D2A2B7EC()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);
  sub_1D2A19C98(*(v0 + 3));
  v3 = *(v0 + 6);
  sub_1D2A19C98(*(v0 + 5));
  v4 = *(v0 + 7);

  v5 = *(v0 + 8);

  v6 = OBJC_IVAR____TtC15ImagePlaygroundP33_DDFA1C1AEB2E9C3EBDF6D3A43C77EE2230ImageGenerationHostCoordinator___observationRegistrar;
  v7 = sub_1D2AC60D4();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A2B8B4()
{
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A98, type metadata accessor for ImageGenerationHostCoordinator);
  sub_1D2AC6094();

  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);

    v2(v4);
    return sub_1D2A19C98(v2);
  }

  return result;
}

_OWORD *sub_1D2A2B990@<X0>(void *a1@<X8>)
{
  result = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_1D2A2B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2C660();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t _s15ImagePlayground0aB5StyleV015defaultSelectedC0ACvgZ_0@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089358 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089390;
  v9[2] = xmmword_1EE089380;
  v9[3] = unk_1EE089390;
  v2 = xmmword_1EE0893A0;
  v3 = unk_1EE0893B0;
  v9[4] = xmmword_1EE0893A0;
  v9[5] = unk_1EE0893B0;
  v4 = xmmword_1EE089360;
  v5 = xmmword_1EE089370;
  v9[0] = xmmword_1EE089360;
  v9[1] = xmmword_1EE089370;
  a1[2] = xmmword_1EE089380;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

uint64_t sub_1D2A2BAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2C6E4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D2A2BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D2A0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1D2A2BB78@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1D2A2BB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D2F4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1D2A2BBF0@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE089688 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EE089690;
  result = dbl_1EE089698[0];
  *(a1 + 8) = *dbl_1EE089698;
  return result;
}

uint64_t sub_1D2A2BC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D3F0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.imagePlaygroundPreviewAspectRatio.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1D2A21D78();
  sub_1D2AC6694();
  return sub_1D2A2BD54;
}

void sub_1D2A2BD54(void **a1)
{
  v3 = (*a1)[6];
  v2 = (*a1)[7];
  v1 = *a1;
  v1[3] = **a1;
  *(v1 + 2) = *(v1 + 1);
  sub_1D2AC66A4();

  free(v1);
}

uint64_t sub_1D2A2BDD8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2A2BE10()
{
  result = sub_1D2AC60D4();
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy15ImagePlayground0jK21PersonalizationPolicyOGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1D2AC65C4();
  sub_1D2A2DB64(a4, a2, a3);
  return swift_getWitnessTable();
}

void sub_1D2A2C010()
{
  sub_1D2A2C470(319, &qword_1EC7039E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1D2A2C470(319, &qword_1EE088408, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D2A2C510(319, &qword_1EC7039E8, &qword_1EC7038F0, &qword_1D2AC95E0, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D2A2C510(319, &qword_1EC7039F0, &qword_1EC7039F8, &qword_1D2AC9930, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D2A2C470(319, &qword_1EC703A00, &type metadata for ImagePlaygroundStyle, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D2A2C470(319, &qword_1EC703A08, &type metadata for ImagePlaygroundPersonalizationPolicy, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1D2A2C510(319, &qword_1EC703A10, &qword_1EC703A18, &qword_1D2AC9938, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1D2A2C470(319, &qword_1EC703A20, &type metadata for ImagePlaygroundAspectRatio, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1D2A2C510(319, &qword_1EC703A28, &qword_1EC703A30, &unk_1D2AC9940, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D2A2C470(319, &qword_1EC703A38, &type metadata for ImagePlaygroundImageImportPolicy, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D2A2C40C(319, &qword_1EC703A40, type metadata accessor for ImagePlaygroundConcept, MEMORY[0x1E69E62F8]);
                      if (v10 <= 0x3F)
                      {
                        sub_1D2A2C40C(319, &qword_1EE0887F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D2A2C470(319, &qword_1EC703A48, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D2A2C4C0();
                            if (v13 <= 0x3F)
                            {
                              sub_1D2A2C510(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D2A2C40C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D2A2C470(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D2A2C4C0()
{
  result = qword_1EC703A50;
  if (!qword_1EC703A50)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC703A50);
  }

  return result;
}

void sub_1D2A2C510(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1D2A2C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D444();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D2A2C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2A2D4F8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1D2A2C660()
{
  result = qword_1EC703A58;
  if (!qword_1EC703A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7039F8, &qword_1D2AC9930);
    sub_1D2A2C6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A58);
  }

  return result;
}

unint64_t sub_1D2A2C6E4()
{
  result = qword_1EE089348;
  if (!qword_1EE089348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE089348);
  }

  return result;
}

uint64_t sub_1D2A2C738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D2A2C808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1D2A2C8D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A2D3A8(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 27);
  return result;
}

char *sub_1D2A2C9A8(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CD14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D2A2C9C8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703AA8, &qword_1D2AC9C88, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1D2A2CA0C(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703BB8, &qword_1D2AC9DF8);
  *v3 = result;
  return result;
}

size_t sub_1D2A2CA44(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703BB0, &qword_1D2AC9DF0, type metadata accessor for GenerationRecipe_V2.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CA88(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703BA8, &qword_1D2AC9DE8);
  *v3 = result;
  return result;
}

size_t sub_1D2A2CAC0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703BA0, &qword_1D2AC9DE0, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CB04(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B98, &qword_1D2AC9DD8);
  *v3 = result;
  return result;
}

size_t sub_1D2A2CB3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B90, &qword_1D2AC9DD0, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CB80(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B80, &qword_1D2AC9DC0);
  *v3 = result;
  return result;
}

char *sub_1D2A2CBB8(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B70, &qword_1D2AC9DB0);
  *v3 = result;
  return result;
}

char *sub_1D2A2CBF0(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2CE20(a1, a2, a3, *v3, &qword_1EC703B60, &qword_1D2AC9DA0);
  *v3 = result;
  return result;
}

size_t sub_1D2A2CC28(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B88, &qword_1D2AC9DC8, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
  *v3 = result;
  return result;
}

size_t sub_1D2A2CC6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B78, &qword_1D2AC9DB8, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
  *v3 = result;
  return result;
}

size_t sub_1D2A2CCB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D2A2CF48(a1, a2, a3, *v3, &qword_1EC703B68, &qword_1D2AC9DA8, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
  *v3 = result;
  return result;
}

char *sub_1D2A2CCF4(char *a1, int64_t a2, char a3)
{
  result = sub_1D2A2D124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D2A2CD14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B50, &qword_1D2AC9D90);
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

char *sub_1D2A2CE20(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 88);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[88 * v10])
    {
      memmove(v14, v15, 88 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_1D2A2CF48(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_1D2A2D124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B58, &qword_1D2AC9D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D2A2D2A0()
{
  result = qword_1EC703A60;
  if (!qword_1EC703A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A60);
  }

  return result;
}

unint64_t sub_1D2A2D2F4()
{
  result = qword_1EC703A68;
  if (!qword_1EC703A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703A18, &qword_1D2AC9938);
    sub_1D2A2D3A8(&qword_1EC703A70, type metadata accessor for audit_token_t);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A68);
  }

  return result;
}

uint64_t sub_1D2A2D3A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2A2D3F0()
{
  result = qword_1EC703A78;
  if (!qword_1EC703A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A78);
  }

  return result;
}

unint64_t sub_1D2A2D444()
{
  result = qword_1EC703A80;
  if (!qword_1EC703A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703A30, &unk_1D2AC9940);
    sub_1D2A2D3A8(&qword_1EC7037B0, type metadata accessor for CGImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A80);
  }

  return result;
}

unint64_t sub_1D2A2D4F8()
{
  result = qword_1EC703A88;
  if (!qword_1EC703A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703A88);
  }

  return result;
}

uint64_t sub_1D2A2D5C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D2A2D644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D2A2D66C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D2A2D694()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);
}

uint64_t sub_1D2A2D6F4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2A2D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13)
  {

    return sub_1D2A2D7CC(a3, a4);
  }

  else
  {
  }
}

uint64_t sub_1D2A2D7CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D2A2D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D2A2D848(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_1D2A2D854(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2A2D860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_79Tm()
{
  v1 = type metadata accessor for ImageGenerationViewModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);

  sub_1D2A2D6F4(*(v5 + 56), *(v5 + 64));
  sub_1D2A2D700(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160), *(v5 + 168));
  sub_1D2A19D04(*(v5 + 176), *(v5 + 184));
  sub_1D2A2D83C(*(v5 + 192), *(v5 + 200), *(v5 + 208), *(v5 + 216), *(v5 + 224), *(v5 + 225));
  sub_1D2A2D848(*(v5 + 232), *(v5 + 240), *(v5 + 248), *(v5 + 256));
  sub_1D2A2D854(*(v5 + 264), *(v5 + 272));
  sub_1D2A19D04(*(v5 + 280), *(v5 + 288));
  v11 = *(v0 + v3 + 296);

  v12 = v1[15];
  v13 = sub_1D2AC5EF4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = *(v5 + v1[16]);

  v16 = *(v5 + v1[18] + 8);

  v17 = (v5 + v1[19]);
  if (*v17)
  {
    v18 = v17[1];
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2A2DAF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D2A24948(v4, a1);
}

uint64_t sub_1D2A2DB64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1D2A2DBAC()
{
  result = qword_1EC703AF8;
  if (!qword_1EC703AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703AE8, &qword_1D2AC9CD0);
    type metadata accessor for GPImageEditionView(255);
    sub_1D2A2D3A8(&qword_1EC703B00, type metadata accessor for GPImageEditionView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703AF8);
  }

  return result;
}

uint64_t sub_1D2A2DCA8(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2A2824C(a1, a2, v6);
}

uint64_t sub_1D2A2DD28(uint64_t a1, _OWORD *a2)
{
  v5 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2A282D4(a1, a2, v6);
}

void sub_1D2A2DE14(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1D2A28FB0(a1, a2, v6);
}

uint64_t sub_1D2A2DEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D2A2DF64()
{
  result = qword_1EC7044E0;
  if (!qword_1EC7044E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7044E0);
  }

  return result;
}

double sub_1D2A2DFB8(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1D2A57700(a1);
  return result;
}

uint64_t sub_1D2A2DFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A2E044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A2E0AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A2E11C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D2A2E260;

  return sub_1D2A223E0(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1D2A2E260()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_157Tm()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[11];

    v5 = v0[13];
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D2A2E3D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D2A2E44C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  sub_1D2A19818(v1);
  return sub_1D2A19C98(v4);
}

uint64_t sub_1D2A2E498(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageGenerationViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D2A237D8(a1, v4);
}

uint64_t sub_1D2A2E508()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_1D2A19818(v1);
  return sub_1D2A19C98(v4);
}

uint64_t objectdestroy_112Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D2A2E5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D2A2E61C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t ImagePlaygroundScene.Tab.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D2A2E758()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A2E7CC()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t *sub_1D2A2E810@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t ImagePlaygroundScene.Identifier.displayName.getter()
{
  v1 = *v0;
  v2 = 0x726F74696445;
  v3 = 0x2B20726F74696445;
  v4 = 0x282072656B636950;
  if (v1 != 3)
  {
    v4 = 0x72656B636950;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D2A2E90C()
{
  v1 = *v0;
  v2 = 0x726F74696465;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ImagePlayground::ImagePlaygroundScene::Identifier_optional __swiftcall ImagePlaygroundScene.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2AC71D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D2A2EA10()
{
  result = qword_1EC703BC0;
  if (!qword_1EC703BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703BC0);
  }

  return result;
}

unint64_t sub_1D2A2EA80()
{
  result = qword_1EC703BC8;
  if (!qword_1EC703BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703BC8);
  }

  return result;
}

uint64_t sub_1D2A2EAD4()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

uint64_t sub_1D2A2EBC0()
{
  *v0;
  *v0;
  sub_1D2AC6C74();
}

uint64_t sub_1D2A2EC98()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

void sub_1D2A2ED8C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x726F74696465;
  v5 = 0x80000001D2ADD560;
  v6 = 0xD00000000000001FLL;
  v7 = 0x80000001D2ADD580;
  v8 = 0xD000000000000015;
  if (v2 == 3)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v7 = 0x80000001D2ADD5A0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x80000001D2ADD540;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundScene(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ImagePlaygroundScene(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ImagePlaygroundScene.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundScene.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D2A2F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D2A2E5B4(a3, v27 - v11, &qword_1EC7044B0, &qword_1D2ACA040);
  v13 = sub_1D2AC6DD4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D2A2E61C(v12, &qword_1EC7044B0, &qword_1D2ACA040);
  }

  else
  {
    sub_1D2AC6DC4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D2AC6D44();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D2AC6C54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D2A2E61C(a3, &qword_1EC7044B0, &qword_1D2ACA040);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D2A2E61C(a3, &qword_1EC7044B0, &qword_1D2ACA040);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D2A2F3B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v137 = *MEMORY[0x1E69E9840];
  v116 = sub_1D2AC5CE4();
  v115 = *(v116 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2AC5E74();
  v121 = *(v5 - 8);
  v122 = v5;
  v6 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v120 = &v109 - v10;
  v125 = sub_1D2AC6434();
  v11 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2AC5EF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v132 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v118 = &v109 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v109 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF8, &qword_1D2ACA350);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v129 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v109 - v26;
  v28 = sub_1D2AC6494();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v127 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v123 = &v109 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v128 = &v109 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v131 = &v109 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v109 - v39;
  v133 = v14;
  v134 = v2;
  v41 = *(v14 + 16);
  v41(v21, v2, v13);
  v130 = v21;
  sub_1D2AC6404();
  v42 = *(v29 + 48);
  if (v42(v27, 1, v28) != 1)
  {
    v113 = v13;
    v111 = *(v29 + 32);
    v111(v40, v27, v28);
    v43 = sub_1D2AC6454();
    if (!v44)
    {
      (*(v29 + 8))(v40, v28);
      v13 = v113;
      goto LABEL_13;
    }

    v110 = v40;
    v132 = v28;
    v112 = v29;
    v135 = v43;
    v136 = v44;

    MEMORY[0x1D38A7100](0x5858585858582DLL, 0xE700000000000000);

    v45 = v131;
    MEMORY[0x1D38A68E0](v135, v136);
    v46 = sub_1D2AC6474();
    sub_1D2AC5E84();
    sub_1D2AC6484();
    v47 = sub_1D2AC6474();
    v48 = v47 - v46;
    if (__OFSUB__(v47, v46))
    {
      __break(1u);
    }

    else
    {
      v27 = v130;
      sub_1D2AC5E94();
      v49 = v129;
      sub_1D2AC6404();
      v50 = v132;
      if (v42(v49, 1, v132) != 1)
      {
        v79 = v128;
        v111(v128, v49, v50);
        v80 = v112;
        v81 = v123;
        v130 = *(v112 + 16);
        (v130)(v123, v45, v50);
        sub_1D2AC6414();
        sub_1D2A44DA4(&qword_1EC703C08, MEMORY[0x1E69E8368]);
        v82 = sub_1D2AC6464();
        MEMORY[0x1EEE9AC00](v82);
        *(&v109 - 2) = v48;
        v83 = v126;
        v84 = v127;
        sub_1D2AC6424();
        if (v83)
        {
          v85 = *(v80 + 8);
          v85(v79, v50);
          v85(v131, v50);
          result = (v85)(v110, v50);
          goto LABEL_19;
        }

        (v130)(v81, v84, v50);
        v86 = v119;
        (*(v121 + 104))(v119, *MEMORY[0x1E6968F68], v122);
        v87 = v120;
        sub_1D2A3D5DC(v81, v86, v120);
        v88 = v133;
        v89 = v113;
        if ((*(v133 + 48))(v87, 1, v113) == 1)
        {
          sub_1D2A2E61C(v87, &qword_1EC7039C8, &unk_1D2AC9900);
          sub_1D2A46178();
          swift_allocError();
          swift_willThrow();
          v63 = *(v112 + 8);
          v63(v84, v50);
          v90 = v79;
        }

        else
        {
          v91 = *(v88 + 32);
          v92 = v118;
          v91(v118, v87, v89);
          v93 = [objc_opt_self() defaultManager];
          v94 = sub_1D2AC5EA4();
          v95 = sub_1D2AC5EA4();
          v135 = 0;
          v96 = [v93 copyItemAtURL:v94 toURL:v95 error:&v135];

          if (v96)
          {
            v97 = *(v112 + 8);
            v98 = v135;
            v99 = v132;
            v97(v127, v132);
            v97(v128, v99);
            v97(v131, v99);
            v97(v110, v99);
            result = (v91)(v117, v92, v89);
            goto LABEL_19;
          }

          v100 = v135;
          v101 = sub_1D2AC5E64();

          swift_willThrow();
          v102 = v101;
          v103 = v114;
          sub_1D2AC5CD4();
          sub_1D2A44DA4(&qword_1EC703C10, MEMORY[0x1E6967E70]);
          v104 = v116;
          v105 = sub_1D2AC5DE4();

          (*(v115 + 8))(v103, v104);
          if (v105)
          {

            sub_1D2A2F3B0();
            v106 = v112;
            v107 = v110;
            v108 = v131;
            (*(v133 + 8))(v92, v113);
            v63 = *(v106 + 8);
            v50 = v132;
            v63(v127, v132);
            v63(v128, v50);
            v63(v108, v50);
            v65 = v107;
            goto LABEL_11;
          }

          (*(v133 + 8))(v92, v113);
          v63 = *(v112 + 8);
          v50 = v132;
          v63(v127, v132);
          v90 = v128;
        }

        v63(v90, v50);
        v64 = v131;
LABEL_10:
        v63(v64, v50);
        v65 = v110;
LABEL_11:
        result = (v63)(v65, v50);
        goto LABEL_19;
      }

      sub_1D2A2E61C(v49, &qword_1EC703BF8, &qword_1D2ACA350);
      if (qword_1EC7035A0 == -1)
      {
LABEL_7:
        v51 = sub_1D2AC63B4();
        __swift_project_value_buffer(v51, qword_1EC7040C0);
        v52 = sub_1D2AC6394();
        v53 = sub_1D2AC6E94();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v135 = v55;
          *v54 = 136315138;
          sub_1D2AC5E94();
          sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0]);
          v56 = v113;
          v57 = sub_1D2AC7324();
          v59 = v58;
          (*(v133 + 8))(v27, v56);
          v60 = sub_1D2ABAFCC(v57, v59, &v135);

          *(v54 + 4) = v60;
          _os_log_impl(&dword_1D2A17000, v52, v53, "Could not convert %s to FilePath", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x1D38A8460](v55, -1, -1);
          v61 = v54;
          v45 = v131;
          MEMORY[0x1D38A8460](v61, -1, -1);
        }

        v62 = v112;
        sub_1D2A46178();
        swift_allocError();
        swift_willThrow();
        v63 = *(v62 + 8);
        v64 = v45;
        v50 = v132;
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_7;
  }

  sub_1D2A2E61C(v27, &qword_1EC703BF8, &qword_1D2ACA350);
LABEL_13:
  v67 = v132;
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v68 = sub_1D2AC63B4();
  __swift_project_value_buffer(v68, qword_1EC7040C0);
  v41(v67, v134, v13);
  v69 = sub_1D2AC6394();
  v70 = sub_1D2AC6E94();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v13;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v135 = v73;
    *v72 = 136315138;
    sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0]);
    v74 = sub_1D2AC7324();
    v76 = v75;
    (*(v133 + 8))(v67, v71);
    v77 = sub_1D2ABAFCC(v74, v76, &v135);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_1D2A17000, v69, v70, "Could not convert %s to FilePath", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x1D38A8460](v73, -1, -1);
    MEMORY[0x1D38A8460](v72, -1, -1);
  }

  else
  {

    (*(v133 + 8))(v67, v13);
  }

  sub_1D2A46178();
  swift_allocError();
  result = swift_willThrow();
LABEL_19:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2A30294(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A303A4(uint64_t result)
{
  if (*(v1 + 26) == (result & 1))
  {
    *(v1 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A304B4(uint64_t result)
{
  if (*(v1 + 27) == (result & 1))
  {
    *(v1 + 27) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A305C4(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

void sub_1D2A306D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v2 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles);
    *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = v3;

    if (*(v3 + 16))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1D2A571CC;
      v7[4] = 0;
      v7[5] = sub_1D2A2DFD4;
      v7[6] = v5;
      swift_getKeyPath();
      *&aBlock = v1;
      sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
      swift_bridgeObjectRetain_n();

      sub_1D2AC6094();

      v8 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v8)
      {
        v32 = sub_1D2A571CC;
        v33 = 0;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v30 = sub_1D2A44320;
        v31 = &block_descriptor_526;
        v9 = _Block_copy(&aBlock);
        v10 = v8;

        v11 = [v10 remoteObjectProxyWithErrorHandler_];
        _Block_release(v9);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(&v34, v35);
        sub_1D2A206F8(v35, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v12 = v34;
        if (v34)
        {
          sub_1D2A571EC(v34, v3);

          swift_bridgeObjectRelease_n();

          return;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v13 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v14 = sub_1D2AC63B4();
        __swift_project_value_buffer(v14, qword_1EC7040C0);
        v15 = v13;
        v16 = sub_1D2AC6394();
        v17 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          v20 = v13;
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v18 + 4) = v21;
          *v19 = v21;
          _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send allowed generation styles to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
          sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v19, -1, -1);
          MEMORY[0x1D38A8460](v18, -1, -1);
        }
      }

      v22 = swift_allocObject();
      *(v22 + 16) = sub_1D2A2E6B4;
      *(v22 + 24) = v7;
      swift_getKeyPath();
      *&aBlock = v1;

      sub_1D2AC6094();

      *&aBlock = v1;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v24 = *(v1 + v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v23) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
        *(v1 + v23) = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
      }

      v24[2] = v27 + 1;
      v28 = &v24[2 * v27];
      v28[4] = sub_1D2A47D3C;
      v28[5] = v22;
      *(v1 + v23) = v24;
      swift_endAccess();
      *&aBlock = v1;
      swift_getKeyPath();
      sub_1D2AC60A4();

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t (*sub_1D2A30CEC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A30D50;
}

uint64_t sub_1D2A30D68@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v14[4] = v3[4];
  v14[5] = v7;
  v14[2] = v5;
  v14[3] = v6;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[5];
  a2[4] = v3[4];
  a2[5] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_1D2A2D244(v14, v13);
}

uint64_t sub_1D2A30E00(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[5];
  v20 = a1[3];
  v21 = v3;
  v22 = v4;
  v5 = a1[1];
  v17 = *a1;
  v6 = (*a2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  v18 = v5;
  v19 = v2;
  swift_beginAccess();
  v7 = v6[1];
  v23[0] = *v6;
  v23[1] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v23[4] = v6[4];
  v23[5] = v10;
  v23[2] = v8;
  v23[3] = v9;
  v11 = v22;
  v13 = v19;
  v12 = v20;
  v6[4] = v21;
  v6[5] = v11;
  v6[2] = v13;
  v6[3] = v12;
  v14 = v18;
  *v6 = v17;
  v6[1] = v14;
  sub_1D2A2D244(&v17, v16);
  sub_1D2A2DDA8(v23);
  return sub_1D2A30EBC();
}

uint64_t sub_1D2A30EBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v2 = (v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v3 = v2[1];
  v60[0] = *v2;
  v60[1] = v3;
  v4 = v2[5];
  v60[4] = v2[4];
  v60[5] = v4;
  v5 = v2[3];
  v60[2] = v2[2];
  v60[3] = v5;
  v6 = (v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v7 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
  v61[0] = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v61[1] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
  v10 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
  v9 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
  v61[4] = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
  v61[5] = v8;
  v61[2] = v10;
  v61[3] = v9;
  memmove((v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), v2, 0x60uLL);
  sub_1D2A2D244(v60, v62);
  sub_1D2A2D244(v60, v62);
  sub_1D2A2E61C(v61, &qword_1EC7044F0, &unk_1D2AC9D50);
  v11 = v6[1];
  v62[0] = *v6;
  v62[1] = v11;
  v12 = v6[5];
  v14 = v6[2];
  v13 = v6[3];
  v62[4] = v6[4];
  v62[5] = v12;
  v62[2] = v14;
  v62[3] = v13;
  v15 = *(&v62[0] + 1);
  if (!*(&v62[0] + 1))
  {
    return sub_1D2A2DDA8(v60);
  }

  v16 = *&v62[0];
  v17 = v6[4];
  v57 = v6[3];
  v58 = v17;
  v59 = v6[5];
  v18 = v6[2];
  v55 = v6[1];
  v56 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v20 = v58;
  *(v19 + 64) = v57;
  *(v19 + 80) = v20;
  *(v19 + 96) = v59;
  v21 = v56;
  *(v19 + 32) = v55;
  *(v19 + 48) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_1D2A57398;
  v23[4] = 0;
  v23[5] = sub_1D2A2DFCC;
  v23[6] = v19;
  swift_getKeyPath();
  v52 = v1;
  sub_1D2A2E5B4(v62, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
  sub_1D2A2E5B4(v62, &aBlock, &qword_1EC7044F0, &unk_1D2AC9D50);
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v24 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v24)
  {
    sub_1D2A2DF64();
    v31 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D2AC63B4();
    __swift_project_value_buffer(v32, qword_1EC7040C0);
    v33 = v31;
    v34 = sub_1D2AC6394();
    v35 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1D2A17000, v34, v35, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v36, 0xCu);
      sub_1D2A2E61C(v37, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v37, -1, -1);
      MEMORY[0x1D38A8460](v36, -1, -1);
    }

    goto LABEL_11;
  }

  v50 = sub_1D2A57398;
  v51 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v48 = sub_1D2A44320;
  v49 = &block_descriptor_511;
  v25 = _Block_copy(&aBlock);
  v26 = v24;

  v27 = [v26 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);

  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A206F8(&v53, v54);
  sub_1D2A206F8(v54, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
  swift_dynamicCast();
  v28 = v53;
  if (!v53)
  {
LABEL_11:
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1D2A2E6B4;
    *(v40 + 24) = v23;
    swift_getKeyPath();
    *&aBlock = v1;

    sub_1D2AC6094();

    *&aBlock = v1;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v41 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v42 = *(v1 + v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v41) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1D2A4486C(0, v42[2] + 1, 1, v42);
      *(v1 + v41) = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1D2A4486C((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v46 = &v42[2 * v45];
    v46[4] = sub_1D2A47D3C;
    v46[5] = v40;
    *(v1 + v41) = v42;
    swift_endAccess();
    *&aBlock = v1;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_16;
  }

  v29 = sub_1D2AC6BF4();
  [v28 setSelectedGenerationStyle_];

LABEL_16:
  sub_1D2A2DDA8(v60);

  return sub_1D2A2E61C(v62, &qword_1EC7044F0, &unk_1D2AC9D50);
}

uint64_t sub_1D2A31590@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v7 = v3[5];
  v13 = v3[3];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  *a1 = v8;
  a1[1] = v9;
  return sub_1D2A2D244(v12, v11);
}

uint64_t sub_1D2A31618(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle);
  swift_beginAccess();
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  sub_1D2A2DDA8(v11);
  return sub_1D2A30EBC();
}

uint64_t (*sub_1D2A316A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A31708;
}

uint64_t sub_1D2A31720@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_1D2A31774(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = v2;
  if (v2 != 3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_1D2A57580;
    v7[4] = 0;
    v7[5] = sub_1D2A2DFC4;
    v7[6] = v5;
    swift_getKeyPath();
    *&aBlock = v4;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v8)
    {
      v33 = sub_1D2A57580;
      v34 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1D2A44320;
      v32 = &block_descriptor_0;
      v9 = _Block_copy(&aBlock);
      v10 = v8;

      v11 = [v10 remoteObjectProxyWithErrorHandler_];
      _Block_release(v9);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v35, v36);
      sub_1D2A206F8(v36, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v12 = v35;
      if (v35)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v12 setPersonalizationPolicy_];

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v14 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v15 = sub_1D2AC63B4();
      __swift_project_value_buffer(v15, qword_1EC7040C0);
      v16 = v14;
      v17 = sub_1D2AC6394();
      v18 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
        sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v20, -1, -1);
        MEMORY[0x1D38A8460](v19, -1, -1);
      }
    }

    v23 = swift_allocObject();
    *(v23 + 16) = sub_1D2A2DF48;
    *(v23 + 24) = v7;
    swift_getKeyPath();
    *&aBlock = v4;

    sub_1D2AC6094();

    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v25 = *(v4 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
      *(v4 + v24) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1D2A44534;
    v29[5] = v23;
    *(v4 + v24) = v25;
    swift_endAccess();
    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void (*sub_1D2A31D2C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A31DB4;
}

void sub_1D2A31DB4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = *(v4 + v3[15]);
    *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = v6;
    if (v6 != 3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = sub_1D2A57580;
      v9[4] = 0;
      v9[5] = sub_1D2A2E72C;
      v9[6] = v7;
      swift_getKeyPath();
      *v3 = v5;
      sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

      sub_1D2AC6094();

      v10 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v10)
      {
        v3[4] = sub_1D2A57580;
        v3[5] = 0;
        *v3 = MEMORY[0x1E69E9820];
        v3[1] = 1107296256;
        v3[2] = sub_1D2A44320;
        v3[3] = &block_descriptor_25;
        v11 = _Block_copy(v3);
        v12 = v3[5];
        v13 = v10;

        v14 = [v13 remoteObjectProxyWithErrorHandler_];
        _Block_release(v11);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(v3 + 5, v3 + 3);
        sub_1D2A206F8(v3 + 3, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v15 = v3[10];
        if (v15)
        {
          v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v15 setPersonalizationPolicy_];

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v17 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v18 = sub_1D2AC63B4();
        __swift_project_value_buffer(v18, qword_1EC7040C0);
        v19 = v17;
        v20 = sub_1D2AC6394();
        v21 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          v24 = v17;
          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v22 + 4) = v25;
          *v23 = v25;
          _os_log_impl(&dword_1D2A17000, v20, v21, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
          sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v23, -1, -1);
          MEMORY[0x1D38A8460](v22, -1, -1);
        }
      }

      v26 = swift_allocObject();
      *(v26 + 16) = sub_1D2A2E6B4;
      *(v26 + 24) = v9;
      swift_getKeyPath();
      *v3 = v5;

      sub_1D2AC6094();

      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v27 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v28 = *(v5 + v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v27) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1D2A4486C(0, v28[2] + 1, 1, v28);
        *(v5 + v27) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1D2A4486C((v30 > 1), v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      v32 = &v28[2 * v31];
      v32[4] = sub_1D2A47D3C;
      v32[5] = v26;
      *(v5 + v27) = v28;
      swift_endAccess();
      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60A4();

      goto LABEL_16;
    }
  }

LABEL_17:

  free(v3);
}

void *sub_1D2A323E0()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D2A3246C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v39 - v3;
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6)
  {
    v7 = sub_1D2AC6DD4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1D2AC6DA4();
    v8 = v6;
    v9 = v0;
    v10 = sub_1D2AC6D94();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = v8;
    sub_1D2A2F088(0, 0, v4, &unk_1D2ACA5B8, v11);

    return;
  }

  v13 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
  v14 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = 0;

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_1D2A575E8;
  v17[4] = 0;
  v17[5] = sub_1D2A2E554;
  v17[6] = v15;
  swift_getKeyPath();
  *&aBlock = v13;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v18 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v18)
  {
    v43 = sub_1D2A575E8;
    v44 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v41 = sub_1D2A44320;
    v42 = &block_descriptor_459;
    v19 = _Block_copy(&aBlock);
    v20 = v18;

    v21 = [v20 remoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v45, v46);
    sub_1D2A206F8(v46, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v22 = v45;
    if (v45)
    {
      [v45 setSourceImage_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v23 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D2AC63B4();
    __swift_project_value_buffer(v24, qword_1EC7040C0);
    v25 = v23;
    v26 = sub_1D2AC6394();
    v27 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1D2A17000, v26, v27, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v28, 0xCu);
      sub_1D2A2E61C(v29, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v29, -1, -1);
      MEMORY[0x1D38A8460](v28, -1, -1);
    }
  }

  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D2A2E6B4;
  *(v32 + 24) = v17;
  swift_getKeyPath();
  *&aBlock = v13;

  sub_1D2AC6094();

  *&aBlock = v13;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v33 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v34 = *(v13 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + v33) = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_1D2A4486C(0, v34[2] + 1, 1, v34);
    *(v13 + v33) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_1D2A4486C((v36 > 1), v37 + 1, 1, v34);
  }

  v34[2] = v37 + 1;
  v38 = &v34[2 * v37];
  v38[4] = sub_1D2A47D3C;
  v38[5] = v32;
  *(v13 + v33) = v34;
  swift_endAccess();
  *&aBlock = v13;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A32B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[54] = a4;
  v5[55] = sub_1D2AC6DA4();
  v5[56] = sub_1D2AC6D94();
  v7 = swift_task_alloc();
  v5[57] = v7;
  *v7 = v5;
  v7[1] = sub_1D2A32BC0;

  return sub_1D2A470E4(a5);
}

uint64_t sub_1D2A32BC0(uint64_t a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 464) = a1;

  v6 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A32D04, v6, v5);
}

uint64_t sub_1D2A32D04()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);

  v4 = *(v3 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  if (v1)
  {
    v6 = *(v0 + 464);
    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = v6;
    v7 = v6;

    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_1D2A575E8;
    v10[4] = 0;
    v10[5] = sub_1D2A47D54;
    v10[6] = v8;
    swift_getKeyPath();
    *(v0 + 392) = v4;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    v11 = v7;

    sub_1D2AC6094();

    v12 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v12)
    {
      *(v0 + 96) = sub_1D2A575E8;
      *(v0 + 104) = 0;
      *(v0 + 64) = MEMORY[0x1E69E9820];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_1D2A44320;
      *(v0 + 88) = &block_descriptor_496;
      v13 = _Block_copy((v0 + 64));
      v14 = *(v0 + 104);
      v15 = v12;

      v16 = [v15 remoteObjectProxyWithErrorHandler_];
      _Block_release(v13);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8((v0 + 240), (v0 + 208));
      sub_1D2A206F8((v0 + 208), (v0 + 272));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v17 = *(v0 + 400);
      if (v17)
      {
        [*(v0 + 400) setSourceImage_];

LABEL_18:

        goto LABEL_30;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v27 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D2AC63B4();
      __swift_project_value_buffer(v28, qword_1EC7040C0);
      v29 = v27;
      v30 = sub_1D2AC6394();
      v31 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = v27;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1D2A17000, v30, v31, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v32, 0xCu);
        sub_1D2A2E61C(v33, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v33, -1, -1);
        MEMORY[0x1D38A8460](v32, -1, -1);
      }
    }

    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D2A2E6B4;
    *(v36 + 24) = v10;
    swift_getKeyPath();
    *(v0 + 408) = v4;

    sub_1D2AC6094();

    *(v0 + 416) = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v37 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v38 = *(v4 + v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v37) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1D2A4486C(0, v38[2] + 1, 1, v38);
      *(v4 + v37) = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_1D2A4486C((v40 > 1), v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    v42 = &v38[2 * v41];
    v42[4] = sub_1D2A47D3C;
    v42[5] = v36;
    *(v4 + v37) = v38;
    swift_endAccess();
    *(v0 + 424) = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_18;
  }

  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = 0;

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = sub_1D2A575E8;
  v20[4] = 0;
  v20[5] = sub_1D2A47D54;
  v20[6] = v18;
  swift_getKeyPath();
  *(v0 + 352) = v4;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v21 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v21)
  {
    sub_1D2A2DF64();
    v43 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D2AC63B4();
    __swift_project_value_buffer(v44, qword_1EC7040C0);
    v45 = v43;
    v46 = sub_1D2AC6394();
    v47 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v43;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_1D2A17000, v46, v47, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v48, 0xCu);
      sub_1D2A2E61C(v49, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v49, -1, -1);
      MEMORY[0x1D38A8460](v48, -1, -1);
    }

    goto LABEL_24;
  }

  *(v0 + 48) = sub_1D2A575E8;
  *(v0 + 56) = 0;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1D2A44320;
  *(v0 + 40) = &block_descriptor_479;
  v22 = _Block_copy((v0 + 16));
  v23 = *(v0 + 56);
  v24 = v21;

  v25 = [v24 remoteObjectProxyWithErrorHandler_];
  _Block_release(v22);

  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A206F8((v0 + 144), (v0 + 112));
  sub_1D2A206F8((v0 + 112), (v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
  swift_dynamicCast();
  v26 = *(v0 + 360);
  if (!v26)
  {
LABEL_24:
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1D2A2E6B4;
    *(v52 + 24) = v20;
    swift_getKeyPath();
    *(v0 + 368) = v4;

    sub_1D2AC6094();

    *(v0 + 376) = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v53 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v54 = *(v4 + v53);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v53) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1D2A4486C(0, v54[2] + 1, 1, v54);
      *(v4 + v53) = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1D2A4486C((v56 > 1), v57 + 1, 1, v54);
    }

    v54[2] = v57 + 1;
    v58 = &v54[2 * v57];
    v58[4] = sub_1D2A47D3C;
    v58[5] = v52;
    *(v4 + v53) = v54;
    swift_endAccess();
    *(v0 + 384) = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_29;
  }

  [*(v0 + 360) setSourceImage_];

LABEL_29:

LABEL_30:
  v59 = *(v0 + 8);

  return v59();
}