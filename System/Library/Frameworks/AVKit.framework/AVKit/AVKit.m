id _AVLog()
{
  if (_AVLog_onceToken != -1)
  {
    dispatch_once(&_AVLog_onceToken, &__block_literal_global_529);
  }

  v1 = _log;

  return v1;
}

uint64_t sub_18B49F370()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_18B6C4D6C();
  }

  else
  {
    sub_18B6C490C();
    swift_getWitnessTable();
    sub_18B6C4C8C();
    sub_18B6C48DC();
    sub_18B6C5A7C();
    swift_getWitnessTable();
    sub_18B6C490C();
    swift_getWitnessTable();
    sub_18B6C4C8C();
  }

  return sub_18B6C48DC();
}

uint64_t sub_18B49F498()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_18B6C4D6C();
    sub_18B6C48DC();
  }

  else
  {
    sub_18B6C490C();
    swift_getWitnessTable();
    sub_18B6C4C8C();
    sub_18B6C48DC();
    sub_18B6C5A7C();
    swift_getWitnessTable();
    sub_18B6C490C();
    swift_getWitnessTable();
    sub_18B6C4C8C();
    sub_18B6C48DC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL sub_18B49F6CC(void *a1, uint64_t *a2)
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

void *sub_18B49F6FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_18B49F728@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_18B49F820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C562C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_18B49F85C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s19AnimationParametersV13AnimationTypeO25SpringAnimationParametersVwet(uint64_t a1, int a2)
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

uint64_t _s19AnimationParametersV13AnimationTypeO25SpringAnimationParametersVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_18B49F8C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B49F8FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B49F96C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3EB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3EC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3F28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3EC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3F10);
  sub_18B4A6120();
  sub_18B4A6268(&qword_1EA9C3F20, &qword_1EA9C3F10);
  swift_getOpaqueTypeConformance2();
  sub_18B4A6268(&qword_1EA9C3F40, &qword_1EA9C3F28);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B49FAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B6C52CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B49FB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B6C52CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B49FBD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B49FC10()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_18B49FC48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B49FCC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C41E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C41D0);
  sub_18B4A6268(&qword_1EA9C41F0, &qword_1EA9C41E8);
  sub_18B4A6268(&qword_1EA9C41F8, &qword_1EA9C41D0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_18B49FDAC()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 1;
  if (v1 < v1 - 1)
  {
    v2 = *(*v0 + 16);
  }

  if (v1)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18B49FDCC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18B4B2918();
  *a1 = result;
  return result;
}

uint64_t sub_18B49FE44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C4A4C();
  *a1 = result;
  return result;
}

uint64_t sub_18B49FFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaInfo();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B4A0040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaInfo();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B4A00B0()
{
  v1 = *(type metadata accessor for AVInfoTabMetadataStripView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for MediaInfo();
  v7 = v0 + v3 + v6[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_18B6C41BC();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7, 1, v9))
    {
      (*(v10 + 8))(v7, v9);
    }
  }

  v11 = (v5 + v6[11]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_18B4BB100(*v11, v12);
  }

  v13 = v6[22];
  v14 = sub_18B6C41BC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18B4A03A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C49AC();
  *a1 = result;
  return result;
}

uint64_t sub_18B4A03FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C4A0C();
  *a1 = result;
  return result;
}

uint64_t sub_18B4A0454(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_18B6C52CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B4A0500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_18B6C52CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B4A05A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18B4A061C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4540);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18B4A069C()
{
  v1 = (type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_18B6C52CC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18B4A07A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B4A0814()
{

  return MEMORY[0x1EEE6BDD0](v0, 61, 7);
}

uint64_t sub_18B4A0854()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B4A088C()
{
  v1 = sub_18B6C480C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18B4A09A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AVInfoTabViewConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 16);
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

uint64_t sub_18B4A0AD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AVInfoTabViewConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C48A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 16) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18B4A0BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaInfo();
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

uint64_t sub_18B4A0CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MediaInfo();
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

id sub_18B4A0D60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

uint64_t sub_18B4A0D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C562C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B4A0DC8()
{
  v1 = sub_18B6C480C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18B4A0E88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A0EC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_18B4A10C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A10FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_18B4A11FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1234()
{

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_18B4A1310()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_18B4A1348@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69587E8]) initWithDeviceFeatures_];
  *a1 = result;
  return result;
}

uint64_t sub_18B4A138C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A13C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_18B4A1428()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A1460()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B4A14A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1500()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1538()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18B4A1590()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A15CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_18B4A1604()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18B4A164C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 88);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_18B4A1884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C46A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 88);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18B4A19F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B4A1A5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5128);
  sub_18B6C543C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C51C0);
  sub_18B50638C();
  sub_18B5064D4();
  swift_getOpaqueTypeConformance2();
  sub_18B506538(&qword_1EA9C51E8, MEMORY[0x1EEE81BF8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B4A1B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1B80()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B4A1BC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1C24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A1C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_18B4A1CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_18B4A63EC(v4, v3, &qword_1EA9C43E8);
  return sub_18B507F74(v4);
}

uint64_t sub_18B4A1D68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_18B4A1DE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A1E28()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_18B4A1E60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1F24()
{
  MEMORY[0x18CFF9250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A1F64@<X0>(uint64_t a1@<X8>)
{
  result = sub_18B6C4A2C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18B4A2000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C52F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B4A2068()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C52F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C51C0);
  sub_18B5185FC();
  sub_18B5064D4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B4A20F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2130()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_18B4A2180()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B4A21C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_18B4A226C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18B51D94C(v1);
}

uint64_t sub_18B4A2310()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2350()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18B4A2398()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C53C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C53E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C53D0);
  sub_18B51ED88();
  swift_getOpaqueTypeConformance2();
  sub_18B51EE6C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B4A2484()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A24F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_18B4A2580()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C41D0);
  sub_18B522D80();
  sub_18B4A6268(&qword_1EA9C41F8, &qword_1EA9C41D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B4A2638()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

BOOL sub_18B4A2674(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_18B4A26A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
  return sub_18B6C450C();
}

uint64_t sub_18B4A26F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_18B6C450C();
}

uint64_t sub_18B4A2748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18B4A279C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A2814()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A284C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_18B4A2958()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 41, v3 | 7);
}

uint64_t sub_18B4A2A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2B38()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_18B4A2B74(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_18B530350(v1);
}

uint64_t sub_18B4A2BA4()
{
  MEMORY[0x18CFF9250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2BDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2C14()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18B4A2D0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2D44()
{
  MEMORY[0x18CFF9250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2D7C()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B4A2DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B4A2E44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C58A0);
  sub_18B4A6268(&qword_1EA9C58B0, &qword_1EA9C58A0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18B4A2EDC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2F20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18B4A2F70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18B4A2FB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A3014()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B4A3060()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18B4A31A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_18B4A31B4(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_18B4A31D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_18B4A324C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_18B4A325C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0392156863 green:0.0392156863 blue:0.0784313725 alpha:1.0];
  qword_1EA9CE3B0 = result;
  return result;
}

id sub_18B4A32A8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0784313725 green:0.0784313725 blue:0.0980392157 alpha:1.0];
  qword_1EA9CE3B8 = result;
  return result;
}

uint64_t sub_18B4A32F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EB8);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v66 = &v62 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EC0);
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v7);
  v72 = &v62 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EC8);
  MEMORY[0x1EEE9AC00](v73, v9);
  v71 = (&v62 - v10);
  v11 = sub_18B6C54BC();
  v63 = v12;
  v64 = v11;
  sub_18B4A3CF8(v1, v80);
  memcpy(v77, v80, sizeof(v77));
  memcpy(v78, v80, sizeof(v78));
  sub_18B4A63EC(v77, v75, &qword_1EA9C3ED0);
  sub_18B4A6454(v78, &qword_1EA9C3ED0);
  memcpy(v79, v77, sizeof(v79));
  type metadata accessor for MultiviewContentSelectorManager();
  sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  v13 = sub_18B6C474C();
  v15 = v14;
  type metadata accessor for CGPoint(0);
  v75[0] = 0;
  v75[1] = 0;
  sub_18B6C531C();
  v62 = v80[0];
  v76 = v15 & 1;
  v75[0] = v64;
  v75[1] = v63;
  memcpy(&v75[2], v79, 0x128uLL);
  v75[39] = v13;
  LOBYTE(v75[40]) = v15 & 1;
  *&v75[41] = v80[0];
  v75[43] = *&v80[1];
  v80[0] = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EE0);
  sub_18B6C532C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EE8);
  sub_18B4A5F60();
  v16 = v71;
  sub_18B6C506C();

  memcpy(v80, v75, 0x160uLL);
  sub_18B4A6454(v80, &qword_1EA9C3EE8);
  v17 = swift_allocObject();
  v18 = v1[1];
  *(v17 + 1) = *v1;
  *(v17 + 2) = v18;
  v19 = v1[3];
  *(v17 + 3) = v1[2];
  *(v17 + 4) = v19;
  v20 = (v16 + *(v73 + 36));
  *v20 = sub_18B4A609C;
  v20[1] = v17;
  v20[2] = 0;
  v20[3] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F10);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v62 - v24;
  v26 = sub_18B6C46BC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B4A60C0(v2, v75);
  sub_18B6C46AC();
  v31 = swift_allocObject();
  v32 = v2[1];
  v31[1] = *v2;
  v31[2] = v32;
  v33 = v2[3];
  v31[3] = v2[2];
  v31[4] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_18B4A6AA4;
  *(v34 + 24) = v31;
  sub_18B4A60C0(v2, v75);
  sub_18B6C546C();

  (*(v27 + 8))(v30, v26);
  sub_18B6C475C();
  v63 = sub_18B4A6120();
  v64 = sub_18B4A6268(&qword_1EA9C3F20, &qword_1EA9C3F10);
  v35 = v21;
  v36 = v71;
  sub_18B6C514C();
  (*(v22 + 8))(v25, v21);
  sub_18B49F8FC(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F28);
  v71 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v62 - v39;
  v41 = sub_18B6C472C();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_18B6C4C2C();
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_18B6C4CDC();
  sub_18B6C46DC();
  v48 = swift_allocObject();
  v49 = v2[1];
  v48[1] = *v2;
  v48[2] = v49;
  v50 = v2[3];
  v48[3] = v2[2];
  v48[4] = v50;
  sub_18B4A60C0(v2, v75);
  sub_18B4A6220(&qword_1EA9C3F30, MEMORY[0x1EEE7B590]);
  sub_18B4A6220(&qword_1EA9C3F38, MEMORY[0x1EEE7B568]);
  sub_18B6C547C();

  (*(v42 + 8))(v45, v41);
  sub_18B6C475C();
  v75[0] = v73;
  v75[1] = v35;
  v75[2] = v63;
  v75[3] = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_18B4A6268(&qword_1EA9C3F40, &qword_1EA9C3F28);
  v53 = v65;
  v54 = v66;
  *&v62 = v37;
  v55 = v72;
  sub_18B6C514C();
  v71[1](v40, v37);
  (*(v67 + 8))(v55, v53);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v56 = *(v75[0] + 16);

  v74 = v56;
  v57 = swift_allocObject();
  v58 = v2[1];
  v57[1] = *v2;
  v57[2] = v58;
  v59 = v2[3];
  v57[3] = v2[2];
  v57[4] = v59;
  sub_18B4A60C0(v2, v75);
  v75[0] = v53;
  v75[1] = v62;
  v75[2] = OpaqueTypeConformance2;
  v75[3] = v52;
  swift_getOpaqueTypeConformance2();
  v60 = v68;
  sub_18B6C51BC();

  return (*(v69 + 8))(v54, v60);
}

uint64_t sub_18B4A3CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  sub_18B6C532C();
  if (LOBYTE(__src[0]) == 1)
  {
    if (qword_1EA9C3DE8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EA9CE3B0;
  }

  else
  {
    if (qword_1EA9C3DF0 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EA9CE3B8;
  }

  v5 = *v4;
  v6 = sub_18B6C51CC();
  v7 = sub_18B6C48EC();
  v8 = sub_18B6C4EBC();
  v9 = sub_18B6C4AFC();
  v11[0] = 1;
  sub_18B4A40B0(a1, &v33);
  v26 = *&v34[176];
  v27 = *&v34[192];
  v28 = *&v34[208];
  v22 = *&v34[112];
  v23 = *&v34[128];
  v24 = *&v34[144];
  v25 = *&v34[160];
  v18 = *&v34[48];
  v19 = *&v34[64];
  v20 = *&v34[80];
  v21 = *&v34[96];
  v14 = v33;
  v15 = *v34;
  v16 = *&v34[16];
  v17 = *&v34[32];
  v30[12] = *&v34[176];
  v30[13] = *&v34[192];
  v30[14] = *&v34[208];
  v30[8] = *&v34[112];
  v30[9] = *&v34[128];
  v30[10] = *&v34[144];
  v30[11] = *&v34[160];
  v30[4] = *&v34[48];
  v30[5] = *&v34[64];
  v30[6] = *&v34[80];
  v30[7] = *&v34[96];
  v30[0] = v33;
  v30[1] = *v34;
  v29 = *&v34[224];
  v31 = *&v34[224];
  v30[2] = *&v34[16];
  v30[3] = *&v34[32];
  sub_18B4A63EC(&v14, __src, &qword_1EA9C3F68);
  sub_18B4A6454(v30, &qword_1EA9C3F68);
  *(&v13[12] + 7) = v26;
  *(&v13[13] + 7) = v27;
  *(&v13[14] + 7) = v28;
  *(&v13[15] + 7) = v29;
  *(&v13[8] + 7) = v22;
  *(&v13[9] + 7) = v23;
  *(&v13[10] + 7) = v24;
  *(&v13[11] + 7) = v25;
  *(&v13[4] + 7) = v18;
  *(&v13[5] + 7) = v19;
  *(&v13[6] + 7) = v20;
  *(&v13[7] + 7) = v21;
  *(v13 + 7) = v14;
  *(&v13[1] + 7) = v15;
  *(&v13[2] + 7) = v16;
  *(&v13[3] + 7) = v17;
  *(&__src[13] + 1) = v13[12];
  *(&__src[14] + 1) = v13[13];
  *(&__src[15] + 1) = v13[14];
  __src[16] = *(&v13[14] + 15);
  *(&__src[9] + 1) = v13[8];
  *(&__src[10] + 1) = v13[9];
  *(&__src[11] + 1) = v13[10];
  *(&__src[12] + 1) = v13[11];
  *(&__src[5] + 1) = v13[4];
  *(&__src[6] + 1) = v13[5];
  *(&__src[7] + 1) = v13[6];
  *(&__src[8] + 1) = v13[7];
  *(&__src[1] + 1) = v13[0];
  *(&__src[2] + 1) = v13[1];
  *(&__src[3] + 1) = v13[2];
  __src[0] = v9;
  *(&__src[4] + 1) = v13[3];
  LOBYTE(__src[1]) = 1;
  memcpy(&v12[7], __src, 0x110uLL);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  memcpy((a2 + 17), v12, 0x117uLL);
  *&v34[193] = v13[12];
  *&v34[209] = v13[13];
  *&v34[225] = v13[14];
  *&v34[240] = *(&v13[14] + 15);
  *&v34[129] = v13[8];
  *&v34[145] = v13[9];
  *&v34[161] = v13[10];
  *&v34[177] = v13[11];
  *&v34[65] = v13[4];
  *&v34[81] = v13[5];
  *&v34[97] = v13[6];
  *&v34[113] = v13[7];
  *&v34[1] = v13[0];
  *&v34[17] = v13[1];
  *&v34[33] = v13[2];
  v33 = v9;
  v34[0] = 1;
  *&v34[49] = v13[3];

  sub_18B4A63EC(__src, v11, &qword_1EA9C3F70);
  sub_18B4A6454(&v33, &qword_1EA9C3F70);
}

uint64_t sub_18B4A40B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AVMultiviewManager();
  sub_18B4A5D60(&qword_1EA9C3F78, type metadata accessor for AVMultiviewManager);

  v4 = sub_18B6C489C();
  v28 = v5;
  type metadata accessor for MultiviewContentSelectorManager();
  sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  v27 = sub_18B6C474C();
  v47[0] = v6 & 1;
  *v51 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F80);
  sub_18B6C531C();
  v25 = *(&v52 + 1);
  v26 = v52;
  sub_18B6C531C();
  v30 = v52;
  v24 = *(&v52 + 1);
  v7 = v47[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v8 = v52;
  v29 = v47[0];
  if (!v52)
  {
    goto LABEL_9;
  }

  v52 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EE0);
  sub_18B6C532C();
  swift_getKeyPath();
  *&v52 = *v51;
  sub_18B6C421C();

  v9 = *(*v51 + 16);

  if (v9 != 1)
  {

LABEL_9:
    sub_18B4A63CC(&v52);
    goto LABEL_10;
  }

  v10 = qword_1EA9C3DF8;
  v23 = v8;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *&qword_1EA9CE3C0;
  sub_18B6C54BC();
  sub_18B6C491C();
  v52 = *(a1 + 16);
  sub_18B6C532C();
  swift_getKeyPath();
  *&v52 = *v51;
  sub_18B6C421C();

  v12 = *(*v51 + 24);

  v52 = *(a1 + 16);
  sub_18B6C532C();
  swift_getKeyPath();
  *&v52 = *v51;
  sub_18B6C421C();

  v13 = *(*v51 + 40);

  sub_18B6C47BC();
  MEMORY[0x18CFF63C0](0.0, v11 * 1.5);
  v14 = sub_18B6C47AC();

  *&v39[56] = v35;
  *&v39[72] = v36;
  *&v39[88] = v37;
  *&v39[104] = v38;
  *&v39[8] = v32;
  *&v39[24] = v33;
  *&v39[40] = v34;
  *v39 = v23;
  *&v39[120] = 0;
  *&v40 = v12;
  *(&v40 + 1) = v13;
  *&v41 = 0;
  *(&v41 + 1) = v14;
  sub_18B4A63EC(v39, &v52, &qword_1EA9C3F98);

  *&v31[103] = *&v39[96];
  *&v31[119] = *&v39[112];
  *&v31[135] = v40;
  *&v31[151] = v41;
  *&v31[39] = *&v39[32];
  *&v31[55] = *&v39[48];
  *&v31[71] = *&v39[64];
  *&v31[87] = *&v39[80];
  *&v31[7] = *v39;
  *&v31[23] = *&v39[16];
  *&v47[56] = v35;
  *&v47[72] = v36;
  *&v47[88] = v37;
  *&v47[104] = v38;
  *&v47[8] = v32;
  *&v47[24] = v33;
  *&v47[40] = v34;
  *v47 = v23;
  *&v47[120] = 0;
  *&v48 = v12;
  *(&v48 + 1) = v13;
  *&v49 = 0;
  *(&v49 + 1) = v14;
  sub_18B4A6454(v47, &qword_1EA9C3F98);
  *&v51[121] = *&v31[112];
  *&v51[137] = *&v31[128];
  *&v51[153] = *&v31[144];
  *&v51[57] = *&v31[48];
  *&v51[73] = *&v31[64];
  *&v51[89] = *&v31[80];
  *&v51[105] = *&v31[96];
  *&v51[9] = *v31;
  *&v51[25] = *&v31[16];
  *v51 = 0;
  v51[8] = 1;
  *&v51[168] = *&v31[159];
  *&v51[41] = *&v31[32];
  nullsub_1(v51);
  v60 = *&v51[128];
  v61 = *&v51[144];
  v62 = *&v51[160];
  v56 = *&v51[64];
  v57 = *&v51[80];
  v59 = *&v51[112];
  v58 = *&v51[96];
  v52 = *v51;
  v53 = *&v51[16];
  v55 = *&v51[48];
  v54 = *&v51[32];
  v7 = v29;
LABEL_10:
  *&v51[128] = v60;
  *&v51[144] = v61;
  *&v51[160] = v62;
  *&v51[64] = v56;
  *&v51[80] = v57;
  *&v51[112] = v59;
  *&v51[96] = v58;
  *v51 = v52;
  *&v51[16] = v53;
  *&v51[48] = v55;
  *&v51[32] = v54;
  *&v32 = v4;
  *(&v32 + 1) = v28;
  *&v33 = v27;
  BYTE8(v33) = v7;
  HIDWORD(v33) = *(v64 + 3);
  *(&v33 + 9) = v64[0];
  *&v34 = v26;
  *(&v34 + 1) = v25;
  LOBYTE(v35) = v30;
  *(&v35 + 1) = *v63;
  DWORD1(v35) = *&v63[3];
  *(&v35 + 1) = v24;
  v44 = v34;
  v45 = v35;
  v42 = v32;
  v43 = v33;
  *v47 = v52;
  *&v47[16] = v53;
  *&v47[64] = v56;
  *&v47[80] = v57;
  *&v47[32] = v54;
  *&v47[48] = v55;
  v50 = v62;
  v48 = v60;
  v49 = v61;
  *&v47[96] = v58;
  *&v47[112] = v59;
  *&v46[72] = v56;
  *&v46[56] = v55;
  *&v46[120] = v59;
  *&v46[136] = v60;
  *&v46[152] = v61;
  *&v46[168] = v62;
  *&v46[88] = v57;
  *&v36 = 0x3FF0000000000000;
  *v46 = 0x3FF0000000000000;
  *&v46[104] = v58;
  *&v46[8] = v52;
  *&v46[24] = v53;
  *&v46[40] = v54;
  v15 = *&v46[144];
  *(a2 + 192) = *&v46[128];
  *(a2 + 208) = v15;
  *(a2 + 224) = *&v46[160];
  *(a2 + 240) = *&v46[176];
  v16 = *&v46[80];
  *(a2 + 128) = *&v46[64];
  *(a2 + 144) = v16;
  v17 = *&v46[112];
  *(a2 + 160) = *&v46[96];
  *(a2 + 176) = v17;
  v18 = *&v46[16];
  *(a2 + 64) = *v46;
  *(a2 + 80) = v18;
  v19 = *&v46[48];
  *(a2 + 96) = *&v46[32];
  *(a2 + 112) = v19;
  v20 = v43;
  *a2 = v42;
  *(a2 + 16) = v20;
  v21 = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = v21;
  sub_18B4A63EC(&v32, v39, &qword_1EA9C3F88);
  sub_18B4A63EC(v47, v39, &qword_1EA9C3F90);
  sub_18B4A6454(v51, &qword_1EA9C3F90);
  *v39 = v4;
  *&v39[8] = v28;
  *&v39[16] = v27;
  v39[24] = v29;
  *&v39[25] = v64[0];
  *&v39[28] = *(v64 + 3);
  *&v39[32] = v26;
  *&v39[40] = v25;
  v39[48] = v30;
  *&v39[49] = *v63;
  *&v39[52] = *&v63[3];
  *&v39[56] = v24;
  *&v39[64] = 0x3FF0000000000000;
  return sub_18B4A6454(v39, &qword_1EA9C3F88);
}

uint64_t sub_18B4A4960()
{
  v1 = v0;
  sub_18B6C54FC();
  sub_18B6C486C();

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v15 = v2;
  v16[0] = v3;
  v12 = v3;
  v13 = v2;
  sub_18B4A63EC(v16, aBlock, &qword_1EA9C3F48);
  sub_18B4A63EC(&v15, aBlock, &qword_1EA9C3F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F58);
  sub_18B6C532C();
  v4 = aBlock[0];
  [aBlock[0] invalidate];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  v8 = v1[3];
  v6[3] = v1[2];
  v6[4] = v8;
  aBlock[4] = sub_18B4A6370;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B4A4D8C;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);
  sub_18B4A60C0(v1, &v12);

  v10 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:10.0];
  _Block_release(v9);
  v12 = v3;
  v13 = v2;
  aBlock[0] = v10;
  sub_18B6C533C();
  sub_18B4A6454(v16, &qword_1EA9C3F48);
  return sub_18B4A6454(&v15, &qword_1EA9C3F50);
}

uint64_t sub_18B4A4B90()
{
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B4A4BFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3EE0);
  sub_18B6C532C();
  if (*(v3 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v1);
    sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
    sub_18B6C420C();
  }

  else
  {
    *(v3 + 16) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  return sub_18B6C533C();
}

void sub_18B4A4D8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_18B4A4E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  sub_18B6C421C();

  *a2 = *(v3 + 16);
  return result;
}

double sub_18B4A4F00@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  sub_18B6C421C();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_18B4A4FD0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
  sub_18B6C421C();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_18B4A50A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  *a1 = v3;
  return result;
}

uint64_t sub_18B4A5120()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C450C();

  return sub_18B6C462C();
}

uint64_t sub_18B4A519C(uint64_t a1, id *a2)
{
  result = sub_18B6C560C();
  *a2 = 0;
  return result;
}

uint64_t sub_18B4A5214(uint64_t a1, id *a2)
{
  v3 = sub_18B6C561C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18B4A5294@<X0>(uint64_t *a1@<X8>)
{
  sub_18B6C562C();
  v2 = sub_18B6C55FC();

  *a1 = v2;
  return result;
}

uint64_t sub_18B4A52D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_18B4A5F14(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_18B4A5318(uint64_t a1)
{
  v2 = sub_18B4A5D60(&qword_1EA9C4038, type metadata accessor for Identifier);
  v3 = sub_18B4A5D60(&qword_1EA9C4040, type metadata accessor for Identifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B4A53D4(uint64_t a1)
{
  v2 = sub_18B4A5D60(&qword_1EA9C39D8, type metadata accessor for AVInputContextSetInputDeviceOptionsKey);
  v3 = sub_18B4A5D60(&qword_1EA9C4048, type metadata accessor for AVInputContextSetInputDeviceOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B4A5490(uint64_t a1)
{
  v2 = sub_18B4A5D60(&qword_1EA9C3EA8, type metadata accessor for Name);
  v3 = sub_18B4A5D60(&qword_1EA9C3EB0, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B4A554C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B6C55FC();

  *a1 = v2;
  return result;
}

uint64_t sub_18B4A5594(uint64_t a1)
{
  v2 = sub_18B4A5D60(&qword_1EA9C4018, type metadata accessor for AVMetadataIdentifier);
  v3 = sub_18B4A5D60(&qword_1EA9C4020, type metadata accessor for AVMetadataIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B4A5650(uint64_t a1)
{
  v2 = sub_18B4A5D60(&qword_1EA9C4028, type metadata accessor for AVMediaCharacteristic);
  v3 = sub_18B4A5D60(&qword_1EA9C4030, type metadata accessor for AVMediaCharacteristic);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B4A570C()
{
  v0 = sub_18B6C562C();
  v1 = MEMORY[0x18CFF72D0](v0);

  return v1;
}

uint64_t sub_18B4A5748()
{
  sub_18B6C562C();
  sub_18B6C566C();
}

uint64_t sub_18B4A579C()
{
  sub_18B6C562C();
  sub_18B6C5DCC();
  sub_18B6C566C();
  v0 = sub_18B6C5DEC();

  return v0;
}

uint64_t sub_18B4A5810()
{
  v0 = sub_18B6C562C();
  v2 = v1;
  if (v0 == sub_18B6C562C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_18B6C5CEC();
  }

  return v5 & 1;
}

__n128 sub_18B4A5898@<Q0>(__n128 *a1@<X8>)
{
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AVMultiviewManager();
  sub_18B4A5D60(&qword_1EA9C3F78, type metadata accessor for AVMultiviewManager);

  v2 = sub_18B6C489C();
  v4 = v3;
  type metadata accessor for MultiviewContentSelectorManager();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0x3FF0000000000000;
  sub_18B6C424C();
  sub_18B6C531C();
  sub_18B6C531C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F48);
  sub_18B6C531C();
  result = v7;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1] = v7;
  a1[2].n128_u8[0] = v7.n128_u8[0];
  a1[2].n128_u64[1] = v7.n128_u64[1];
  a1[3] = v7;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B4A5B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18B4A5B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_18B4A5BC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B4A5BE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_18B4A5C54(uint64_t a1, int a2)
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

uint64_t sub_18B4A5C74(uint64_t result, int a2, int a3)
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

uint64_t sub_18B4A5D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B4A5F14(uint64_t a1)
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

unint64_t sub_18B4A5F60()
{
  result = qword_1EA9C3EF0;
  if (!qword_1EA9C3EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3EE8);
    sub_18B4A6268(&qword_1EA9C3EF8, &qword_1EA9C3F00);
    sub_18B4A6048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3EF0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18B4A6048()
{
  result = qword_1EA9C3F08;
  if (!qword_1EA9C3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3F08);
  }

  return result;
}

unint64_t sub_18B4A6120()
{
  result = qword_1EA9C3F18;
  if (!qword_1EA9C3F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3EE8);
    type metadata accessor for MultiviewContentSelectorManager();
    sub_18B4A5F60();
    sub_18B4A5D60(&qword_1EA9C3ED8, type metadata accessor for MultiviewContentSelectorManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3F18);
  }

  return result;
}

uint64_t sub_18B4A6220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B4A6268(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_18B4A63CC(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_18B4A63EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B4A6454(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18B4A68B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B4A68D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_18B4A6938(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for AVInfoTabBadgeModifier()
{
  result = qword_1EA9C4080;
  if (!qword_1EA9C4080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B4A6BA0()
{
  result = sub_18B6C52CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18B4A6C28()
{
  result = qword_1EA9C4090;
  if (!qword_1EA9C4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4090);
  }

  return result;
}

void sub_18B4A6CA8(void *a1)
{
  v33 = [*(v1 + OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_viewController) view];
  if (v33)
  {
    v3 = *(v1 + OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_style);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v33;
      *(v4 + 24) = a1;
      v5 = v33;
      v6 = sub_18B4A77AC;
    }

    else
    {
      v8 = [v33 layer];
      sub_18B4A71B4(a1);
      [v8 setAnchorPoint_];

      v9 = [a1 containerView];
      [v9 addSubview_];

      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      v6 = sub_18B4A7888;
    }

    v10 = v6;
    if ([swift_unknownObjectRetain() isAnimated])
    {
      CGAffineTransformMakeScale(v40, 0.1, 0.1);
      if (v3)
      {
        v31 = *v40;
        v32 = *&v40[8];
        v11 = 0;
        v12 = 1.0;
        v13 = 0;
        v14 = 1.0;
        v29 = *&v40[16];
        v30 = 0.25;
        v15 = 0;
        v16 = 0;
        v17 = 1.0;
        v27 = 0.0;
        v28 = *&v40[24];
        v25 = *&v40[40];
        v26 = *&v40[32];
      }

      else
      {
        v12 = *v40;
        v11 = *&v40[8];
        v13 = *&v40[16];
        v14 = *&v40[24];
        v32 = 0;
        v31 = 1.0;
        v30 = 0.35;
        v29 = 0;
        v25 = 0;
        v26 = 0;
        v17 = 0.0;
        v27 = 1.0;
        v28 = 1.0;
        v15 = *&v40[32];
        v16 = *&v40[40];
      }

      [v33 setAlpha_];
      *v40 = v12;
      *&v40[8] = v11;
      *&v40[16] = v13;
      *&v40[24] = v14;
      *&v40[32] = v15;
      *&v40[40] = v16;
      [v33 setTransform_];
      v18 = 0.25;
      if ((v3 & 1) == 0)
      {
        v19 = [a1 containerView];
        [v19 layoutIfNeeded];

        v18 = 0.35;
      }

      *v40 = v18;
      *&v40[8] = 0;
      *&v40[16] = 4;
      memset(&v40[24], 0, 32);
      v41 = 3;
      v20 = swift_allocObject();
      *(v20 + 2) = v33;
      v20[3] = v30;
      v20[4] = v12;
      *(v20 + 5) = v11;
      *(v20 + 6) = v13;
      v20[7] = v14;
      *(v20 + 8) = v15;
      *(v20 + 9) = v16;
      v20[10] = v31;
      *(v20 + 11) = v32;
      *(v20 + 12) = v29;
      v20[13] = v28;
      *(v20 + 14) = v26;
      *(v20 + 15) = v25;
      v20[16] = v17;
      v20[17] = v27;
      v21 = objc_opt_self();
      v38 = sub_18B4A7810;
      v39 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_18B533A4C;
      v37 = &block_descriptor_21;
      v22 = _Block_copy(&aBlock);
      v23 = v33;

      v38 = v10;
      v39 = v4;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_18B515858;
      v37 = &block_descriptor_24;
      v24 = _Block_copy(&aBlock);

      [v21 animateWithDuration:4 delay:v22 options:v24 animations:v18 completion:0.0];
      _Block_release(v24);
      _Block_release(v22);

      sub_18B4A781C(v40);
    }

    else
    {
      (v10)(1);
    }
  }

  else
  {
    v7 = [a1 transitionWasCancelled] ^ 1;

    [a1 completeTransition_];
  }
}

void sub_18B4A71B4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_sourceView);
  if (v2)
  {
    v4 = v2;
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v4 window];
    [v4 convertRect:v13 toView:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v41.origin.x = v15;
    v41.origin.y = v17;
    v41.size.width = v19;
    v41.size.height = v21;
    CGRectGetMinX(v41);
    v22 = [a1 containerView];
    [v22 center];

    [v4 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [v4 window];
    [v4 convertRect:v31 toView:{v24, v26, v28, v30}];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v42.origin.x = v33;
    v42.origin.y = v35;
    v42.size.width = v37;
    v42.size.height = v39;
    CGRectGetMinY(v42);
    v40 = [a1 containerView];
    [v40 center];
  }
}

id sub_18B4A73A4(void *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v6[0] = *(a2 + 56);
  v6[1] = v4;
  v6[2] = *(a2 + 88);
  [a1 setTransform_];
  return [a1 setAlpha_];
}

id sub_18B4A74A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for InputPickeriPadPresentationAnimationController.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InputPickeriPadPresentationAnimationController.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18B4A76B4()
{
  result = qword_1EA9C4120;
  if (!qword_1EA9C4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4120);
  }

  return result;
}

uint64_t sub_18B4A7720()
{
  v1 = *v0;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  return sub_18B6C5DEC();
}

uint64_t sub_18B4A7768()
{
  v1 = *v0;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  return sub_18B6C5DEC();
}

id sub_18B4A77AC(int a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [v3 removeFromSuperview];
  v5 = ([v4 transitionWasCancelled] ^ 1) & a1;

  return [v4 completeTransition_];
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_18B4A7888(int a1)
{
  v2 = *(v1 + 16);
  v3 = ([v2 transitionWasCancelled] ^ 1) & a1;

  return [v2 completeTransition_];
}

id sub_18B4A7B60(void *a1)
{
  v1[OBJC_IVAR___AVGlassBackedButton_wantsCapsuleShape] = 0;
  v1[OBJC_IVAR___AVGlassBackedButton_subdued] = 1;
  *&v1[OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle] = 1;
  v1[OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AVGlassBackedButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_18B4A7C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVGlassBackedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B4A7C7C()
{
  swift_getKeyPath();
  sub_18B4A8418();
  sub_18B6C421C();

  return *(v0 + 16);
}

double sub_18B4A7CEC()
{
  swift_getKeyPath();
  sub_18B4A8418();
  sub_18B6C421C();

  return *(v0 + 24);
}

double sub_18B4A7D5C()
{
  swift_getKeyPath();
  sub_18B4A8418();
  sub_18B6C421C();

  return *(v0 + 40);
}

uint64_t sub_18B4A7DCC(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_18B4A8418();
    sub_18B6C420C();
  }

  return result;
}

void sub_18B4A7EB4(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_18B4A8418();
    sub_18B6C420C();
  }
}

double sub_18B4A7F9C()
{
  swift_getKeyPath();
  sub_18B4A8418();
  sub_18B6C421C();

  return *(v0 + 32);
}

double sub_18B4A800C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B4A8418();
  sub_18B6C421C();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_18B4A80AC(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B4A8418();
    sub_18B6C420C();
  }

  return result;
}

void sub_18B4A8194(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_18B4A8418();
    sub_18B6C420C();
  }
}

uint64_t sub_18B4A827C()
{
  v1 = OBJC_IVAR____TtC5AVKit31MultiviewContentSelectorManager___observationRegistrar;
  v2 = sub_18B6C425C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MultiviewContentSelectorManager()
{
  result = qword_1EA9C41B8;
  if (!qword_1EA9C41B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B4A836C()
{
  result = sub_18B6C425C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_18B4A8418()
{
  result = qword_1EA9C3ED8;
  if (!qword_1EA9C3ED8)
  {
    type metadata accessor for MultiviewContentSelectorManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3ED8);
  }

  return result;
}

double sub_18B4A8480()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

double sub_18B4A8490()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

CGFloat sub_18B4A84A0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) * 0.2;
  qword_1EA9CE3C0 = *&result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B4A8558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_18B4A85B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_18B4A8798()
{
  sub_18B4AA4B8();
  sub_18B6C4E2C();
  __break(1u);
}

unint64_t sub_18B4A87C4()
{
  result = qword_1EA9C41C8;
  if (!qword_1EA9C41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C41C8);
  }

  return result;
}

uint64_t sub_18B4A8834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41D0);
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F28);
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v10);
  v12 = &v27 - v11;
  v13 = sub_18B6C472C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18B6C4C2C();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18B6C4CDC();
  sub_18B6C46DC();
  v35 = *v3;
  v36 = *(v3 + 8);
  v33 = *(v3 + 1);
  v34 = v3[4];
  v20 = swift_allocObject();
  v21 = *(v3 + 1);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v21;
  *(v20 + 48) = v3[4];
  sub_18B4A63EC(&v35, v32, &qword_1EA9C41D8);
  sub_18B4A63EC(&v33, v32, &qword_1EA9C41E0);
  sub_18B4A6220(&qword_1EA9C3F30, MEMORY[0x1EEE7B590]);
  sub_18B4A6220(&qword_1EA9C3F38, MEMORY[0x1EEE7B568]);
  sub_18B6C547C();

  (*(v14 + 8))(v17, v13);
  v22 = swift_allocObject();
  v23 = *(v3 + 1);
  *(v22 + 16) = *v3;
  *(v22 + 32) = v23;
  *(v22 + 48) = v3[4];
  sub_18B4A63EC(&v35, v32, &qword_1EA9C41D8);
  sub_18B4A63EC(&v33, v32, &qword_1EA9C41E0);
  sub_18B4A6268(&qword_1EA9C3F40, &qword_1EA9C3F28);
  v24 = v27;
  sub_18B6C546C();

  (*(v9 + 8))(v12, v24);
  sub_18B6C475C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41E8);
  sub_18B4A6268(&qword_1EA9C41F0, &qword_1EA9C41E8);
  sub_18B4A6268(&qword_1EA9C41F8, &qword_1EA9C41D0);
  v25 = v28;
  sub_18B6C519C();
  return (*(v29 + 8))(v8, v25);
}

uint64_t sub_18B4A8CEC()
{
  sub_18B6C471C();
  v1 = v0;
  result = sub_18B6C46FC();
  if (v1 - v4 >= 0.0)
  {
    if (qword_1EA9C3DF8 != -1)
    {
      result = swift_once();
    }

    MEMORY[0x1EEE9AC00](result, v3);
    sub_18B6C54FC();
    sub_18B6C486C();
  }

  return result;
}

uint64_t sub_18B4A8DEC(uint64_t *a1, double a2, double a3, double a4)
{
  v47 = *(a1 + 8);
  v46 = *a1;
  v7 = v46;
  v8 = v47;

  v9 = v46;
  if ((v47 & 1) == 0)
  {
    sub_18B6C595C();
    v10 = sub_18B6C4E5C();
    sub_18B6C433C();

    v11 = sub_18B6C4A7C();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11, v13);
    v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4AA41C(&v46);
    (*(v12 + 8))(v15, v11);
    v9 = v48;
  }

  if (*(v9 + 16) == 1)
  {
    *(v9 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v17);
    v48 = v9;
    sub_18B4A8418();
    sub_18B6C420C();
  }

  v18 = v7;
  if ((v8 & 1) == 0)
  {
    sub_18B6C595C();
    v19 = sub_18B6C4E5C();
    sub_18B6C433C();

    v20 = sub_18B6C4A7C();
    v21 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v20, v22);
    v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4AA41C(&v46);
    (*(v21 + 8))(v24, v20);
    v18 = v48;
  }

  v25 = 1.0 - a2;
  if (*(v18 + 40) == v25)
  {
    *(v18 + 40) = v25;
  }

  else
  {
    v26 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v26, v27);
    v48 = v18;
    sub_18B4A8418();
    sub_18B6C420C();
  }

  v28 = v7;
  if ((v8 & 1) == 0)
  {
    sub_18B6C595C();
    v29 = sub_18B6C4E5C();
    sub_18B6C433C();

    v30 = sub_18B6C4A7C();
    v31 = *(v30 - 8);
    MEMORY[0x1EEE9AC00](v30, v32);
    v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4AA41C(&v46);
    (*(v31 + 8))(v34, v30);
    v28 = v48;
  }

  if (*(v28 + 24) == a3)
  {
    *(v28 + 24) = a3;
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35, v36);
    v48 = v28;
    sub_18B4A8418();
    sub_18B6C420C();
  }

  if ((v8 & 1) == 0)
  {
    sub_18B6C595C();
    v37 = sub_18B6C4E5C();
    sub_18B6C433C();

    v38 = sub_18B6C4A7C();
    v39 = *(v38 - 8);
    MEMORY[0x1EEE9AC00](v38, v40);
    v42 = &v46 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4AA41C(&v46);
    (*(v39 + 8))(v42, v38);
    v7 = v48;
  }

  if (a4 * 0.5 < a3)
  {
    a3 = a4 * 0.5;
  }

  if (*(v7 + 32) == a3)
  {
    *(v7 + 32) = a3;
  }

  else
  {
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44, v45);
    v48 = v7;
    sub_18B4A8418();
    sub_18B6C420C();
  }
}

uint64_t sub_18B4A9598()
{
  sub_18B6C471C();
  v0 = sub_18B6C46FC();
  if (qword_1EA9C3DF8 != -1)
  {
    v0 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v0, v1);
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B4A9690(uint64_t *a1, double a2, double a3, double a4)
{
  if (a2 >= 0.5)
  {
    v72 = *(a1 + 8);
    v71 = *a1;
    v5 = v71;
    v15 = v72;

    v16 = v71;
    if ((v72 & 1) == 0)
    {
      sub_18B6C595C();
      v17 = sub_18B6C4E5C();
      sub_18B6C433C();

      v18 = sub_18B6C4A7C();
      v19 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v18, v20);
      v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v19 + 8))(v22, v18);
      v16 = v70;
    }

    if (*(v16 + 16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v24);
      v70 = v16;
      sub_18B4A8418();
      sub_18B6C420C();
    }

    else
    {
      *(v16 + 16) = 0;
    }

    v25 = v5;
    if ((v15 & 1) == 0)
    {
      sub_18B6C595C();
      v26 = sub_18B6C4E5C();
      sub_18B6C433C();

      v27 = sub_18B6C4A7C();
      v28 = *(v27 - 8);
      MEMORY[0x1EEE9AC00](v27, v29);
      v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v28 + 8))(v31, v27);
      v25 = v70;
    }

    if (*(v25 + 40) == 0.0)
    {
      *(v25 + 40) = 0;
    }

    else
    {
      v41 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v41, v42);
      v70 = v25;
      sub_18B4A8418();
      sub_18B6C420C();
    }

    if ((v15 & 1) == 0)
    {
      sub_18B6C595C();
      v43 = sub_18B6C4E5C();
      sub_18B6C433C();

      v44 = sub_18B6C4A7C();
      v45 = *(v44 - 8);
      MEMORY[0x1EEE9AC00](v44, v46);
      v48 = &v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v45 + 8))(v48, v44);
      v5 = v70;
    }

    if (a4 * 0.5 < a3)
    {
      a3 = a4 * 0.5;
    }

    if (*(v5 + 32) == a3)
    {
      *(v5 + 32) = a3;
    }
  }

  else
  {
    v72 = *(a1 + 8);
    v71 = *a1;
    v5 = v71;
    v6 = v72;

    v7 = v71;
    if ((v72 & 1) == 0)
    {
      sub_18B6C595C();
      v8 = sub_18B6C4E5C();
      sub_18B6C433C();

      v9 = sub_18B6C4A7C();
      v10 = *(v9 - 8);
      MEMORY[0x1EEE9AC00](v9, v11);
      v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v10 + 8))(v13, v9);
      v7 = v70;
    }

    if (*(v7 + 32) == 0.0)
    {
      *(v7 + 32) = 0;
    }

    else
    {
      v32 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v32, v33);
      v70 = v7;
      sub_18B4A8418();
      sub_18B6C420C();
    }

    v34 = v5;
    if ((v6 & 1) == 0)
    {
      sub_18B6C595C();
      v35 = sub_18B6C4E5C();
      sub_18B6C433C();

      v36 = sub_18B6C4A7C();
      v37 = *(v36 - 8);
      MEMORY[0x1EEE9AC00](v36, v38);
      v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v37 + 8))(v40, v36);
      v34 = v70;
    }

    if (*(v34 + 24) == 0.0)
    {
      *(v34 + 24) = 0;
    }

    else
    {
      v49 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v49, v50);
      v70 = v34;
      sub_18B4A8418();
      sub_18B6C420C();
    }

    v51 = v5;
    if ((v6 & 1) == 0)
    {
      sub_18B6C595C();
      v52 = sub_18B6C4E5C();
      sub_18B6C433C();

      v53 = sub_18B6C4A7C();
      v54 = *(v53 - 8);
      MEMORY[0x1EEE9AC00](v53, v55);
      v57 = &v69 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v54 + 8))(v57, v53);
      v51 = v70;
    }

    if (*(v51 + 40) == 1.0)
    {
      *(v51 + 40) = 0x3FF0000000000000;
    }

    else
    {
      v58 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v58, v59);
      v70 = v51;
      sub_18B4A8418();
      sub_18B6C420C();
    }

    if ((v6 & 1) == 0)
    {
      sub_18B6C595C();
      v60 = sub_18B6C4E5C();
      sub_18B6C433C();

      v61 = sub_18B6C4A7C();
      v62 = *(v61 - 8);
      MEMORY[0x1EEE9AC00](v61, v63);
      v65 = &v69 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18B6C4A6C();
      swift_getAtKeyPath();
      sub_18B4AA41C(&v71);
      (*(v62 + 8))(v65, v61);
      v5 = v70;
    }

    if (*(v5 + 16) == 1)
    {
      *(v5 + 16) = 1;
    }
  }

  v67 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = v5;
  sub_18B4A8418();
  sub_18B6C420C();
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18B4AA41C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18B4AA484()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

unint64_t sub_18B4AA4B8()
{
  result = qword_1EA9C4200;
  if (!qword_1EA9C4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4200);
  }

  return result;
}

double sub_18B4AA594(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_18B4AA628@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B6C51FC();
  result = sub_18B6C47EC();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_18B4AA668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C54BC();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4208);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4210);
  v9 = (a2 + *(result + 36));
  *v9 = sub_18B4AA628;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v6;
  return result;
}

unint64_t sub_18B4AA71C()
{
  result = qword_1EA9C4218;
  if (!qword_1EA9C4218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4210);
    sub_18B4A6268(&qword_1EA9C4220, &qword_1EA9C4208);
    sub_18B4A6268(&qword_1EA9C4228, &qword_1EA9C4230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4218);
  }

  return result;
}

uint64_t sub_18B4AA7EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_18B4AA810, 0, 0);
}

uint64_t sub_18B4AA810()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_18B4AA9F0();
  *(v2 + 24) = v3;
  *(v2 + 32) = &off_1EFED0EE8;
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_18B4AA8D8;

  return MEMORY[0x1EEE6DA40](v0 + 2, v4, v3);
}

uint64_t sub_18B4AA8D8()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4AA9D4, 0, 0);
}

unint64_t sub_18B4AA9F0()
{
  result = qword_1EA9C3A60;
  if (!qword_1EA9C3A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C3A60);
  }

  return result;
}

void sub_18B4AAAA0(char a1)
{
  v2 = OBJC_IVAR___AVMobileGlassBackgroundView_active;
  v1[OBJC_IVAR___AVMobileGlassBackgroundView_active] = a1;
  v3 = [v1 layer];
  LODWORD(v4) = 1.0;
  if ((v1[v2] & 1) == 0)
  {
    v4 = 0.0;
    if (v1[OBJC_IVAR___AVMobileGlassBackgroundView_emphasized])
    {
      *&v4 = 1.0;
    }
  }

  v5 = v3;
  [v3 setOpacity_];
}

void sub_18B4AABB4(char a1)
{
  v2 = OBJC_IVAR___AVMobileGlassBackgroundView_emphasized;
  *(v1 + OBJC_IVAR___AVMobileGlassBackgroundView_emphasized) = a1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  v3 = [v1 layer];
  LODWORD(v4) = 1.0;
  if ((*(v1 + OBJC_IVAR___AVMobileGlassBackgroundView_active) & 1) == 0)
  {
    v4 = 0.0;
    if (*(v1 + v2))
    {
      *&v4 = 1.0;
    }
  }

  v5 = v3;
  [v3 setOpacity_];
}

void sub_18B4AAC98(void *a1, double a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xE0);
  v5 = a1;
  v4();
}

void sub_18B4AAD4C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AVMobileGlassBackgroundView();
  v1 = objc_msgSendSuper2(&v5, sel_didMoveToWindow);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v1);
  v2 = [v0 layer];
  v3 = v2;
  LODWORD(v4) = 1.0;
  if ((*(v0 + OBJC_IVAR___AVMobileGlassBackgroundView_active) & 1) == 0)
  {
    v4 = 0.0;
    if (*(v0 + OBJC_IVAR___AVMobileGlassBackgroundView_emphasized))
    {
      *&v4 = 1.0;
    }
  }

  [v2 setOpacity_];
}

id sub_18B4AAF44(void *a1)
{
  v1[OBJC_IVAR___AVMobileGlassBackgroundView_active] = 1;
  *&v1[OBJC_IVAR___AVMobileGlassBackgroundView_activeColorAlpha] = 0x3FD999999999999ALL;
  v1[OBJC_IVAR___AVMobileGlassBackgroundView_emphasized] = 0;
  *&v1[OBJC_IVAR___AVMobileGlassBackgroundView_emphasizedColorAlpha] = 0x3FA999999999999ALL;
  v1[OBJC_IVAR___AVMobileGlassBackgroundView_wantsCapsuleShape] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AVMobileGlassBackgroundView();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setIgnoresTouches_];
  }

  return v4;
}

void sub_18B4AB03C()
{
  v1 = [objc_opt_self() blackColor];
  v2 = v1;
  if (v0[OBJC_IVAR___AVMobileGlassBackgroundView_emphasized])
  {
    v3 = &OBJC_IVAR___AVMobileGlassBackgroundView_emphasizedColorAlpha;
  }

  else
  {
    v3 = &OBJC_IVAR___AVMobileGlassBackgroundView_activeColorAlpha;
  }

  v4 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
}

id sub_18B4AB0F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVMobileGlassBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AVExperienceController.Experience.hashValue.getter()
{
  v1 = *v0;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  return sub_18B6C5DEC();
}

unint64_t AVExperienceController.Experiences.subscript.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    *a2 = *(*v2 + result + 32);
    return result;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall AVExperienceController.Experiences.index(after:)(Swift::Int after)
{
  if (*(*v1 + 16) <= after)
  {
    __break(1u);
  }

  else
  {
    ++after;
  }

  return after;
}

uint64_t static AVExperienceController.Experiences.recommended<A>(excluding:including:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = sub_18B4AB3D8(sub_18B4AB370, v14, &unk_1EFECC758);
  (*(v7 + 16))(v9, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4260);
  sub_18B6C57BC();
  return sub_18B4AB534(v18, a4);
}

uint64_t sub_18B4AB3D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v14 = *(a3 + v7 + 32);
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        v11 = v14;
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_18B4F48F8(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_18B4F48F8((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_18B4AB534@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(a1 + 32 + v5);
      v8 = *(v6 + 2);
      v9 = (v6 + 32);
      v10 = v8;
      while (v10)
      {
        v11 = *v9++;
        --v10;
        if (v11 == v7)
        {
          goto LABEL_4;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_18B53BE1C(0, v8 + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_18B53BE1C((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v6[v13 + 32] = v7;
LABEL_4:
      ++v5;
    }

    while (v5 != v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v6;
  return result;
}

uint64_t sub_18B4AB64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_18B6C572C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  return result;
}

uint64_t static AVExperienceController.Experiences.only<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return sub_18B4AB64C(v7, a2, a3);
}

unint64_t sub_18B4AB7CC()
{
  result = qword_1EA9C4268;
  if (!qword_1EA9C4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4268);
  }

  return result;
}

unint64_t sub_18B4AB824()
{
  result = qword_1EA9C4270;
  if (!qword_1EA9C4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4270);
  }

  return result;
}

uint64_t sub_18B4AB90C(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = sub_18B52BF38(*a1, *a2);
  if ((result & 1) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v4;
    if ((result & 1) == 0)
    {
      result = sub_18B53BE1C(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
      *a2 = result;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v7 >= v6 >> 1)
    {
      result = sub_18B53BE1C((v6 > 1), v7 + 1, 1, v4);
      v4 = result;
      *a2 = result;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + v7 + 32) = v3;
  }

  return result;
}

uint64_t (*sub_18B4AB9E0(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + v3 + 32);
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t *sub_18B4ABA30@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
    return sub_18B6C450C();
  }

  return result;
}

uint64_t sub_18B4ABA5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = *(v2 + 16);
  return sub_18B6C450C();
}

uint64_t *sub_18B4ABA84@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    if (!a2)
    {
LABEL_7:
      *a3 = v4;
      return result;
    }

    v5 = *(*v3 + 16);
    if (v5 <= v4)
    {
      v5 = *result;
    }

    if (v5 - v4 > (a2 - 1))
    {
      v4 += a2;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B4ABAC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_18B4ABB00(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_18B4ABB00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v4 = a2 + result;
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result >= *(a4 + 16))
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t *sub_18B4ABB58(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*a2 < *result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*a2 == *result)
  {
    return 0;
  }

  result = (v4 - v3);
  if (v4 <= v3)
  {
    goto LABEL_14;
  }

  v5 = *(*v2 + 16);
  v6 = v4 + ~v3;
  if (v5 <= v3)
  {
    v5 = v3;
  }

  v7 = v5 - v3;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_15;
  }

  if (v7 <= v6)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t *sub_18B4ABBC8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_18B4ABBE4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_18B4ABC00(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_18B4ABC1C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_18B4ABC40(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_18B4ABCBC()
{
  v1 = sub_18B4ABF10(*v0);

  return v1;
}

uint64_t _s10ExperienceOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10ExperienceOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18B4ABE7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_18B4ABEC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_18B4ABF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v1 >= v1 - 1)
  {
    --v1;
  }

  v3 = v1 + 1;
  v4 = sub_18B53C23C(v1 + 1, 0);
  v5 = sub_18B53C3D8(&v7, v4 + 32, v3, a1);
  sub_18B6C450C();

  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void sub_18B4AC09C(void *a1)
{
  v2 = OBJC_IVAR___AVInfoTabCoordinator_playerItem;
  v3 = *(v1 + OBJC_IVAR___AVInfoTabCoordinator_playerItem);
  *(v1 + OBJC_IVAR___AVInfoTabCoordinator_playerItem) = a1;
  v22 = a1;

  v4 = *(v1 + OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController);
  if (v4)
  {
    type metadata accessor for AVInfoTabViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + v2);
      v8 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem;
      v9 = *(v5 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_playerItem);
      if (v7)
      {
        if (v9)
        {
          sub_18B4AC60C(0, &qword_1EA9C3A70);
          v10 = v7;
          v11 = v4;
          v12 = v9;
          v13 = sub_18B6C5A6C();

          if (v13)
          {
LABEL_13:
            v20 = *(v6 + v8);
            *(v6 + v8) = v7;
            v21 = v7;

            sub_18B515A58();
            goto LABEL_14;
          }
        }

        else
        {
          v15 = v7;
          v16 = v4;
        }
      }

      else
      {
        v14 = v4;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v17 = OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken;
      v18 = *(v6 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_itemsKVOToken);
      if (v18)
      {
        v19 = v18;
        sub_18B6C404C();

        v18 = *(v6 + v17);
      }

      *(v6 + v17) = 0;

      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_18B4AC2FC(uint64_t a1)
{
  v2 = OBJC_IVAR___AVInfoTabCoordinator_actions;
  *(v1 + OBJC_IVAR___AVInfoTabCoordinator_actions) = a1;

  v3 = *(v1 + OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController);
  if (v3)
  {
    type metadata accessor for AVInfoTabViewController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v1 + v2);
      v6 = *(v4 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions);
      *(v4 + OBJC_IVAR____TtC5AVKit23AVInfoTabViewController_actions) = v5;
      swift_bridgeObjectRetain_n();
      v8 = v3;
      v7 = sub_18B4F3B48(v6, v5);

      if ((v7 & 1) == 0)
      {
        sub_18B516EA8();
      }
    }
  }
}

char *sub_18B4AC3EC(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController] = 0;
  v5 = OBJC_IVAR___AVInfoTabCoordinator_playerItem;
  *&v2[OBJC_IVAR___AVInfoTabCoordinator_playerItem] = 0;
  v6 = OBJC_IVAR___AVInfoTabCoordinator_actions;
  *&v2[v5] = a1;
  *&v2[v6] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for AVInfoTabCoordinator();
  v7 = a1;
  sub_18B6C450C();
  v8 = objc_msgSendSuper2(&v13, sel_init);
  objc_allocWithZone(type metadata accessor for AVInfoTabViewController());
  v9 = v8;
  v10 = sub_18B515F28(v7, a2);
  v11 = *&v9[OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController];
  *&v9[OBJC_IVAR___AVInfoTabCoordinator_infoTabViewController] = v10;

  return v9;
}

id sub_18B4AC558()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVInfoTabCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B4AC60C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18B4AC664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18B4AC6AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_18B4AC70C()
{
  result = qword_1EA9C42C0;
  if (!qword_1EA9C42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C42C0);
  }

  return result;
}

uint64_t sub_18B4AC760@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_18B6C450C();
}

uint64_t sub_18B4AC76C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18B6C5CEC();
  }
}

uint64_t sub_18B4AC79C()
{
  sub_18B6C5DCC();
  sub_18B6C566C();
  sub_18B6C566C();
  sub_18B6C566C();
  return sub_18B6C5DEC();
}

uint64_t sub_18B4AC820()
{
  sub_18B6C566C();
  sub_18B6C566C();

  return sub_18B6C566C();
}

uint64_t sub_18B4AC88C()
{
  sub_18B6C5DCC();
  sub_18B6C566C();
  sub_18B6C566C();
  sub_18B6C566C();
  return sub_18B6C5DEC();
}

unint64_t sub_18B4AC918(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C42D0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C42D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C42E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v34 - v19;
  v21 = [a1 modelID];
  if (!v21)
  {
    goto LABEL_4;
  }

  v35 = v10;
  v37 = v6;
  v38 = v7;
  v22 = v21;
  sub_18B6C562C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C42E8);
  sub_18B6C430C();
  sub_18B6C570C();

  sub_18B4AE2C0();
  v36 = v20;
  sub_18B6C42FC();
  sub_18B6C431C();
  v23 = *(v12 + 8);
  v23(v15, v11);

  v25 = v37;
  v24 = v38;
  if ((*(v38 + 48))(v5, 1, v37) == 1)
  {
    v23(v36, v11);
    sub_18B4AE324(v5);
LABEL_4:
    v26 = 0;
    LOBYTE(v27) = 1;
    return v26 | ((v27 & 1) << 32);
  }

  (*(v24 + 32))(v35, v5, v25);
  swift_getKeyPath();
  sub_18B6C432C();

  v29 = v39;
  v30 = v40;
  v31 = v42;
  if (!((v40 ^ v39) >> 14))
  {
    (*(v38 + 8))(v35, v25);
    v23(v36, v11);

    goto LABEL_4;
  }

  v32 = v41;
  v33 = sub_18B4AD8D4(v39, v40, v41, v42, 10);
  if ((v33 & 0x10000000000) != 0)
  {
    v33 = sub_18B4ACED8(v29, v30, v32, v31, 10);
  }

  (*(v38 + 8))(v35, v25);
  v23(v36, v11);

  v27 = (v33 & 0x100000000uLL) >> 32;
  v26 = v33;
  if ((v33 & 0x100000000) != 0)
  {
    v26 = 0;
  }

  return v26 | ((v27 & 1) << 32);
}

uint64_t sub_18B4ACDD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  sub_18B6C450C();
  MEMORY[0x18CFF7260](45, 0xE100000000000000);
  MEMORY[0x18CFF7260](v1, v2);
  return v4;
}

uint64_t sub_18B4ACE34()
{
  v1 = 0x7070412D6E49;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 17219;
  }
}

unint64_t sub_18B4ACE84()
{
  result = qword_1EA9C42C8;
  if (!qword_1EA9C42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C42C8);
  }

  return result;
}

unsigned __int8 *sub_18B4ACED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_18B4AE38C();
  sub_18B6C450C();
  result = sub_18B6C56FC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_18B4AD460();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_18B6C5B8C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_18B4AD460()
{
  v0 = sub_18B6C570C();
  v4 = sub_18B4AD4E0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_18B4AD4E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_18B6C5A8C();
    if (!v9 || (v10 = v9, v11 = sub_18B4F4684(v9, 0), v12 = sub_18B4AD638(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_18B6C450C(), , v12 == v10))
    {
      v13 = sub_18B6C565C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_18B6C565C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_18B6C5B8C();
LABEL_4:

  return sub_18B6C565C();
}

unint64_t sub_18B4AD638(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_18B4AD858(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18B6C56CC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_18B6C5B8C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_18B4AD858(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_18B6C569C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_18B4AD858(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_18B6C56DC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x18CFF7290](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_18B4AD8D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_18B6C5B8C();
  }

  result = sub_18B4AD99C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_18B4AD99C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_18B4AD858(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_18B6C56BC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_18B4AD858(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_18B4AD858(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_18B6C56BC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_18B4ADE08(void *a1)
{
  v2 = sub_18B4AC918(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v2;
    if (CBProductIDIsAppleHeadphone(v2))
    {
      v4 = [objc_opt_self() productInfoWithProductID_];
      v5 = [v4 sfSymbolNameMain];
      if (v5)
      {
        v6 = v5;
        v7 = sub_18B6C562C();

        return v7;
      }
    }
  }

  v9 = [a1 deviceType];
  if (!v9)
  {
    return 0x73647562726165;
  }

  v10 = 0x6F68706F7263696DLL;
  if (v9 == 1)
  {
    v10 = 0x6E692E656E696CLL;
  }

  if (v9 == 3)
  {
    return 0x6F632E656C626163;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_18B4ADF44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 deviceID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18B6C562C();
    v8 = v7;

    v20 = v6;
    v21 = v8;
    v9 = sub_18B6C56FC();
  }

  else
  {
    v20 = a1;
    v9 = sub_18B6C563C();
  }

  v11 = v9;
  v12 = v10;
  v13 = [a1 deviceName];
  if (v13)
  {
    v14 = v13;
    sub_18B6C562C();

    v15 = sub_18B6C56FC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  result = sub_18B4ADE08(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = result;
  a2[5] = v19;
  return result;
}

void *sub_18B4AE074(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 availableInputDevices];
  sub_18B4AE24C();
  v5 = sub_18B6C576C();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18B6C5C6C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFF7750](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 deviceID];
      if (v12)
      {
        v13 = v12;
        sub_18B6C562C();

        if (sub_18B6C56FC() == a2 && v14 == a3)
        {

          return v10;
        }

        v8 = sub_18B6C5CEC();

        if (v8)
        {

          return v10;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

unint64_t sub_18B4AE24C()
{
  result = qword_1EA9C3A68;
  if (!qword_1EA9C3A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C3A68);
  }

  return result;
}

unint64_t sub_18B4AE2C0()
{
  result = qword_1EA9C42F0;
  if (!qword_1EA9C42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C42E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C42F0);
  }

  return result;
}

uint64_t sub_18B4AE324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C42D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B4AE38C()
{
  result = qword_1EA9C42F8;
  if (!qword_1EA9C42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C42F8);
  }

  return result;
}

id sub_18B4AE3E0()
{
  v0 = sub_18B6C435C();
  __swift_allocate_value_buffer(v0, qword_1EA9CE398);
  __swift_project_value_buffer(v0, qword_1EA9CE398);
  result = _AVLog();
  if (result)
  {
    return sub_18B6C436C();
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18B4AE4E0()
{
  v1 = *v0;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  return sub_18B6C5DEC();
}

uint64_t sub_18B4AE554()
{
  v1 = *v0;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  return sub_18B6C5DEC();
}

unint64_t sub_18B4AE598@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18B4AEA74(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_18B4AE5CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C43FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_18B6C441C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return;
      case 1:
        sub_18B6C43EC();
        break;
      case 2:
        sub_18B6C43CC();
        break;
      default:
        goto LABEL_17;
    }

LABEL_15:
    sub_18B6C442C();
    v18 = MEMORY[0x1E69DC388];
    *(a2 + 24) = v11;
    *(a2 + 32) = v18;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_18B6C440C();
    (*(v12 + 8))(v15, v11);
    return;
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      sub_18B6C43CC();
      sub_18B6C43DC();
    }

    else
    {
      sub_18B6C43EC();
      sub_18B6C43BC();
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_15;
  }

  if (a1 == 5 || a1 == 6)
  {
    v16 = sub_18B6C438C();
    v17 = MEMORY[0x1E69DBEA8];
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_18B6C437C();
    return;
  }

LABEL_17:
  v19[1] = a1;
  sub_18B6C5CFC();
  __break(1u);
}

uint64_t sub_18B4AE8B4(uint64_t a1, char a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (_UISolariumEnabled())
  {
    sub_18B4AE5CC(a1, v7);
    sub_18B4AEBE4(v7, v8);
  }

  if (a2)
  {
    v4 = sub_18B4AEB5C();
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_18B6C5A3C();
  }

  else
  {
    sub_18B4AEA84(v8, v7);
    sub_18B6C5A1C();
  }

  return sub_18B4AEAF4(v8);
}

void sub_18B4AE9B0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  sub_18B4AE8B4(a3, a4);
}

unint64_t sub_18B4AEA20()
{
  result = qword_1EA9C4300;
  if (!qword_1EA9C4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4300);
  }

  return result;
}

unint64_t sub_18B4AEA74(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18B4AEA84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B4AEAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B4AEB5C()
{
  result = qword_1EA9C39A0;
  if (!qword_1EA9C39A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C39A0);
  }

  return result;
}

uint64_t sub_18B4AEBE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

unint64_t AVPlayerViewControllerConfiguration.tips.getter()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 playerTipsEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 tips];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_18B6C55BC();

  v6 = sub_18B4AEEC8(v5);

  return v6;
}

void (*AVPlayerViewControllerConfiguration.tips.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [objc_opt_self() shared];
  v4 = [v3 playerTipsEnabled];

  if (v4 && (v5 = [v1 tips]) != 0)
  {
    v6 = v5;
    v7 = sub_18B6C55BC();

    v8 = sub_18B4AEEC8(v7);
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return sub_18B4AEE70;
}

void sub_18B4AEE70(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_18B6C450C();
    _sSo35AVPlayerViewControllerConfigurationC5AVKitE4tipsSDySS6TipKit0G0_pGSgvs_0(v2);
  }

  else
  {
    _sSo35AVPlayerViewControllerConfigurationC5AVKitE4tipsSDySS6TipKit0G0_pGSgvs_0(*a1);
  }
}

unint64_t sub_18B4AEEC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4310);
    v2 = sub_18B6C5C9C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_18B6C450C();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_18B4AF1A4(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        *&v29[5] = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_18B4AF200(v30, &v24);
        sub_18B6C450C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4318);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_18B4A31D4(v22, v25);
        sub_18B4A31D4(v25, v26);
        v27 = v16;
        sub_18B4A31D4(v26, v28);
        v17 = v27;
        sub_18B4A31D4(v28, v29);
        sub_18B4A31D4(v29, &v27);
        result = sub_18B4F4F14(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = v2[7] + 40 * v9;
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_18B4A31D4(&v27, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_18B4A31D4(&v27, v2[7] + 40 * result);
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_24;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_18B4AF210(v22);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_18B4AF1A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_18B4AF200(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_18B4AF210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_18B4AF2C4(uint64_t *a1, int a2)
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

uint64_t sub_18B4AF30C(uint64_t result, int a2, int a3)
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

uint64_t sub_18B4AF374@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() shared];
  [v6 inputPickerGainControlEnabled];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4328);
  sub_18B6C532C();
  sub_18B4AF4A0();
  sub_18B4AF4F4();
  result = sub_18B6C4C1C();
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_18B4AF4A0()
{
  result = qword_1EA9C4330;
  if (!qword_1EA9C4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4330);
  }

  return result;
}

unint64_t sub_18B4AF4F4()
{
  result = qword_1EA9C4338;
  if (!qword_1EA9C4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4338);
  }

  return result;
}

unint64_t sub_18B4AF568()
{
  result = qword_1EA9C4340;
  if (!qword_1EA9C4340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4348);
    sub_18B4AF4A0();
    sub_18B4AF4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4340);
  }

  return result;
}

uint64_t sub_18B4AF604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4350) - 8;
  MEMORY[0x1EEE9AC00](v48, v2);
  v47 = v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4358);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4360);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4368);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v46 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4370);
  sub_18B4A6268(&qword_1EA9C4378, &qword_1EA9C4370);
  sub_18B4B1D60();
  sub_18B6C4FAC();
  sub_18B6C54BC();
  sub_18B6C491C();
  (*(v15 + 32))(v13, v18, v14);
  v19 = &v13[*(v10 + 44)];
  v20 = v55;
  *(v19 + 4) = v54;
  *(v19 + 5) = v20;
  *(v19 + 6) = v56;
  v21 = v51;
  *v19 = v50;
  *(v19 + 1) = v21;
  v22 = v53;
  *(v19 + 2) = v52;
  *(v19 + 3) = v22;
  v23 = sub_18B6C4F1C();
  sub_18B6C466C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_18B4B1DB4(v13, v8, &qword_1EA9C4360);
  v32 = &v8[*(v5 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_18B6C4EAC();
  sub_18B6C466C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v47;
  sub_18B4B1DB4(v8, v47, &qword_1EA9C4358);
  v43 = v42 + *(v48 + 44);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  v44 = v49;
  sub_18B4B1DB4(v42, v49, &qword_1EA9C4350);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4388);
  *(v44 + *(result + 36)) = 0;
  return result;
}

double sub_18B4AF9F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C4AFC();
  v21 = 1;
  sub_18B4AFB28(a1, &v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v30[7] = v19;
  sub_18B4A63EC(&v22, &v11, &qword_1EA9C4390);
  sub_18B4A6454(v30, &qword_1EA9C4390);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v5 = *&v20[64];
  *(a2 + 97) = *&v20[80];
  v6 = *&v20[112];
  *(a2 + 113) = *&v20[96];
  *(a2 + 129) = v6;
  v7 = *v20;
  *(a2 + 33) = *&v20[16];
  result = *&v20[32];
  v9 = *&v20[48];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v21;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 144) = *&v20[127];
  *(a2 + 17) = v7;
  return result;
}

void sub_18B4AFB28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v24 = sub_18B6C521C();
  KeyPath = swift_getKeyPath();
  v22 = *(a1 + 152);
  v23 = sub_18B6C521C();
  v5 = *(a1 + 64);
  swift_getKeyPath();
  v25 = v5;
  sub_18B4B1E1C();

  sub_18B6C421C();

  v6 = *(v5 + 81);

  if (v6 == 1)
  {
    sub_18B6C580C();

    v7 = sub_18B6C57FC();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = a1;

    v10 = sub_18B6C57FC();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = a1;
    sub_18B6C542C();
    v13 = v25;
    v12 = v26;
    v14 = v27;
    v15 = objc_opt_self();
    v21 = [v15 whiteColor];
    v16 = [v15 whiteColor];
    v20 = [v16 colorWithAlphaComponent_];

    v17 = 0x3FF0000000000000;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v17 = 0;
    v20 = 0;
    v21 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v24;
  *(a2 + 24) = v22;
  *(a2 + 32) = xmmword_18B6E6670;
  *(a2 + 48) = 0x4016000000000000;
  *(a2 + 56) = v23;
  *(a2 + 64) = 23;
  *(a2 + 72) = v13;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = 0;
  *(a2 + 104) = v17;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  v18 = v17;

  v19 = v22;

  sub_18B4B1E74(v13, v12, v14, 0, v18, v21, v20);
  sub_18B4B1ED0(v13, v12, v14, 0, v18, v21, v20);
}

uint64_t sub_18B4AFE10@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  swift_getKeyPath();
  sub_18B4B1E1C();

  sub_18B6C421C();

  v4 = *(v3 + 88);

  *a2 = v4;
  return result;
}

uint64_t sub_18B4AFEB4(uint64_t a1)
{
  sub_18B6C4A9C();
  sub_18B6C580C();

  v2 = sub_18B6C57FC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = a1;

  v5 = sub_18B6C57FC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43E8);
  sub_18B6C542C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43F0);
  sub_18B4B22BC();
  sub_18B4B2394();
  return sub_18B6C53DC();
}

uint64_t sub_18B4B0094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = sub_18B6C528C();
  sub_18B6C4A9C();
  v4 = sub_18B6C4FFC();
  v6 = v5;
  v8 = v7;
  sub_18B6C4F9C();
  v9 = sub_18B6C4FDC();
  v68 = v10;
  v69 = v9;
  v67 = v11;
  v70 = v12;

  sub_18B4B20BC(v4, v6, v8 & 1);

  v13 = *(a1 + 64);
  swift_getKeyPath();
  v79 = v13;
  sub_18B4B1E1C();

  sub_18B6C421C();

  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  v17 = *(v13 + 56);
  v19 = *(v13 + 64);
  v18 = *(v13 + 72);
  v20 = *(v13 + 80);
  sub_18B4B20CC(v14, v15, v16, v17, v19, v18, *(v13 + 80));

  if (v20 == 255)
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    if (v20)
    {
      v21 = sub_18B6C55FC();
      v22 = sub_18B6C55FC();
      v66 = v18;
      v23 = AVLocalizedString(v21);

      v24 = sub_18B6C562C();
      v26 = v25;

      v18 = v66;
    }

    else
    {
      sub_18B6C450C();
      v24 = v16;
      v26 = v17;
    }

    sub_18B4B212C(v14, v15, v16, v17, v19, v18, v20);
  }

  v79 = v24;
  v80 = v26;
  sub_18B4B2068();
  v27 = sub_18B6C500C();
  v29 = v28;
  v31 = v30;
  sub_18B6C4F2C();
  v65 = sub_18B6C4FDC();
  v64 = v32;
  v34 = v33;
  v66 = v35;

  sub_18B4B20BC(v27, v29, v31 & 1);

  sub_18B6C54BC();
  sub_18B6C479C();
  v63 = v79;
  v62 = v81;
  v61 = v83;
  v60 = v84;
  v78 = 1;
  v77 = v26;
  v76 = v82;
  v59 = sub_18B6C528C();
  sub_18B6C4F5C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4460);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v56 - v38;
  v40 = *MEMORY[0x1E6980E00];
  v41 = sub_18B6C4F4C();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v39, v40, v41);
  (*(v42 + 56))(v39, 0, 1, v41);
  v58 = sub_18B6C4F6C();
  sub_18B4A6454(v39, &qword_1EA9C4460);
  KeyPath = swift_getKeyPath();
  v56 = sub_18B6C521C();
  v43 = swift_getKeyPath();
  LOBYTE(v39) = v67 & 1;
  v75 = v67 & 1;
  v44 = v78;
  v45 = v77;
  v46 = v76;
  v74 = v67 & 1;
  v73 = 1;
  LOBYTE(v41) = v34 & 1;
  v72 = v34 & 1;
  v47 = v34 & 1;
  v48 = v70;
  v50 = v68;
  v49 = v69;
  *a2 = v71;
  *(a2 + 8) = v49;
  *(a2 + 16) = v50;
  *(a2 + 24) = v39;
  *(a2 + 32) = v48;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v51 = v65;
  v52 = v64;
  *(a2 + 56) = v65;
  *(a2 + 64) = v52;
  *(a2 + 72) = v47;
  *(a2 + 80) = v66;
  *(a2 + 88) = 0;
  *(a2 + 96) = v44;
  *(a2 + 104) = v63;
  *(a2 + 112) = v45;
  *(a2 + 120) = v62;
  *(a2 + 128) = v46;
  v53 = v60;
  *(a2 + 136) = v61;
  *(a2 + 144) = v53;
  v54 = KeyPath;
  *(a2 + 152) = v59;
  *(a2 + 160) = v54;
  *(a2 + 168) = v58;
  *(a2 + 176) = v43;
  *(a2 + 184) = v56;

  sub_18B4B218C(v49, v50, v39);
  sub_18B6C450C();
  sub_18B4B218C(v51, v52, v41);
  sub_18B6C450C();
  sub_18B4B20BC(v51, v52, v41);

  sub_18B4B20BC(v49, v50, v75);
}

double sub_18B4B0688@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18B6C4A8C();
  v27 = 1;
  sub_18B4B0094(v3, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[11] = v25;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  sub_18B4A63EC(&v28, &v13, &qword_1EA9C4458);
  sub_18B4A6454(v40, &qword_1EA9C4458);
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[183] = v39;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  *&v26[55] = v31;
  v5 = *&v26[128];
  *(a1 + 161) = *&v26[144];
  v6 = *&v26[176];
  *(a1 + 177) = *&v26[160];
  *(a1 + 193) = v6;
  v7 = *&v26[64];
  *(a1 + 97) = *&v26[80];
  v8 = *&v26[112];
  *(a1 + 113) = *&v26[96];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = *v26;
  *(a1 + 33) = *&v26[16];
  result = *&v26[32];
  v11 = *&v26[48];
  *(a1 + 49) = *&v26[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v27;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 208) = *&v26[191];
  *(a1 + 17) = v9;
  return result;
}

uint64_t sub_18B4B081C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4398) - 8;
  MEMORY[0x1EEE9AC00](v23, v2);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43A0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v22 - v8;
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43A8);
  v10 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0], v11);
  v13 = v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43B8);
  sub_18B4B1F70();
  sub_18B4A6268(&qword_1EA9C3AE0, &qword_1EA9C43B8);
  sub_18B6C4FAC();
  sub_18B6C54BC();
  sub_18B6C491C();
  (*(v10 + 32))(v9, v13, v22[0]);
  v14 = &v9[*(v6 + 44)];
  v15 = v30;
  *(v14 + 4) = v29;
  *(v14 + 5) = v15;
  *(v14 + 6) = v31;
  v16 = v26;
  *v14 = v25;
  *(v14 + 1) = v16;
  v17 = v28;
  *(v14 + 2) = v27;
  *(v14 + 3) = v17;
  v18 = sub_18B6C4EBC();
  sub_18B4B1DB4(v9, v4, &qword_1EA9C43A0);
  v19 = &v4[*(v23 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = v24;
  sub_18B4B1DB4(v4, v24, &qword_1EA9C4398);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43C8);
  *(v20 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_18B4B0B3C(uint64_t a1)
{
  sub_18B6C4A9C();
  sub_18B6C580C();

  v2 = sub_18B6C57FC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E85E0];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = a1;

  v5 = sub_18B6C57FC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43E8);
  sub_18B6C542C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43F0);
  sub_18B4B22BC();
  sub_18B4B2394();
  return sub_18B6C53DC();
}

uint64_t sub_18B4B0CE8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  swift_getKeyPath();
  sub_18B4B1E1C();

  sub_18B6C421C();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  sub_18B4B20CC(v4, v5, v6, v7, v8, v9, v10);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_18B4B0DC4()
{
  swift_getKeyPath();
  sub_18B4B1E1C();

  sub_18B6C421C();

  sub_18B6C450C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C43F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4400);
  sub_18B4B2484();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3E48);
  sub_18B4A6268(&qword_1EA9C3AF0, &qword_1EA9C3E48);
  sub_18B4B2340();
  swift_getOpaqueTypeConformance2();
  sub_18B4B24E8();
  return sub_18B6C545C();
}

uint64_t sub_18B4B0F7C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v18 = *a1;
  v19 = v3;
  v20 = a1[2];
  v21 = *(a1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3E48);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - v7;
  v12[2] = &v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4408);
  sub_18B4A6268(&qword_1EA9C4410, &qword_1EA9C4408);
  sub_18B6C536C();
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v17 = v21;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  LOBYTE(v25) = v21;
  HIBYTE(v25) = 1;
  (*(v5 + 32))(a2, v8, v4);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3E50) + 36);
  v10 = v23;
  *v9 = v22;
  *(v9 + 16) = v10;
  *(v9 + 32) = v24;
  *(v9 + 48) = v25;
  v26[1] = v15;
  v26[2] = v16;
  v27 = v17;
  v26[0] = v14;
  v28 = 1;
  sub_18B4A5A70(&v18, v13);
  sub_18B4A63EC(&v22, v13, &qword_1EA9C3E58);
  return sub_18B4A6454(v26, &qword_1EA9C3E58);
}

uint64_t sub_18B4B11A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4418);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v34 - v6;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = sub_18B6C55FC();
    v12 = sub_18B6C55FC();
    v13 = AVLocalizedString(v11);

    v14 = sub_18B6C562C();
    v16 = v15;
  }

  else
  {
    sub_18B6C450C();
    v14 = v9;
    v16 = v8;
  }

  v37 = v14;
  v38 = v16;
  sub_18B6C450C();
  sub_18B4B2068();
  v17 = sub_18B6C530C();
  if (v10)
  {
    v37 = v9;
    v38 = v8;
    sub_18B6C450C();
    v19 = sub_18B6C500C();
    v21 = v20;
    v23 = v22;
    v25 = v24 & 1;
    sub_18B4B218C(v19, v20, v24 & 1);
    v17 = sub_18B6C450C();
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v25 = 0;
    v23 = 0;
  }

  v34[1] = v34;
  v26 = MEMORY[0x1EEE9AC00](v17, v18);
  v27 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v35;
  v29 = *(v35 + 16);
  v29(v27, v7, v3, v26);
  v34[0] = v7;
  v30 = v36;
  (v29)(v36, v27, v3);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4420) + 48));
  sub_18B4B219C(v19, v21, v25, v23);
  sub_18B4B21E0(v19, v21, v25, v23);
  *v31 = v19;
  v31[1] = v21;
  v31[2] = v25;
  v31[3] = v23;
  v32 = *(v28 + 8);
  v32(v34[0], v3);
  sub_18B4B21E0(v19, v21, v25, v23);
  return v32(v27, v3);
}

double sub_18B4B14A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C4A8C();
  v27 = 1;
  sub_18B4B1684(a1, &v16);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v28 = v16;
  v29 = v17;
  v38[6] = v22;
  v38[7] = v23;
  v38[8] = v24;
  v38[9] = v25;
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v20;
  v38[5] = v21;
  v38[0] = v16;
  v38[1] = v17;
  sub_18B4A63EC(&v28, v15, &qword_1EA9C43D0);
  sub_18B4A6454(v38, &qword_1EA9C43D0);
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[39] = v30;
  *&v26[55] = v31;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[7] = v28;
  *&v26[23] = v29;
  LOBYTE(a1) = v27;
  sub_18B6C54BC();
  sub_18B6C491C();
  v5 = *&v26[96];
  *(a2 + 129) = *&v26[112];
  v6 = *&v26[144];
  *(a2 + 145) = *&v26[128];
  *(a2 + 161) = v6;
  v7 = *&v26[32];
  *(a2 + 65) = *&v26[48];
  v8 = *&v26[80];
  *(a2 + 81) = *&v26[64];
  *(a2 + 97) = v8;
  *(a2 + 113) = v5;
  v9 = *&v26[16];
  *(a2 + 17) = *v26;
  v10 = v20;
  v11 = v22;
  *(a2 + 264) = v21;
  *(a2 + 280) = v11;
  *(a2 + 33) = v9;
  *(a2 + 49) = v7;
  v12 = v18;
  *(a2 + 232) = v19;
  *(a2 + 248) = v10;
  result = *&v16;
  v14 = v17;
  *(a2 + 184) = v16;
  *(a2 + 200) = v14;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 176) = *&v26[159];
  *(a2 + 216) = v12;
  return result;
}

void sub_18B4B1684(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() shared];
  v5 = [v4 inputPickerGainControlEnabled];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 152);
    v7 = v6;
  }

  v18 = sub_18B6C4B0C();
  LOBYTE(v27) = 0;
  sub_18B4B195C(a1, &v37);
  v23 = *&v38[32];
  v24 = *&v38[48];
  v21 = *v38;
  v22 = *&v38[16];
  v20 = v37;
  v25[2] = *&v38[16];
  v25[3] = *&v38[32];
  v26 = *&v38[48];
  v25[0] = v37;
  v25[1] = *v38;
  sub_18B4A63EC(&v20, &v30, &qword_1EA9C43D8);
  sub_18B4A6454(v25, &qword_1EA9C43D8);
  *&v19[23] = v21;
  *&v19[39] = v22;
  *&v19[55] = v23;
  *&v19[71] = v24;
  *&v19[7] = v20;
  v8 = v27;
  v9 = sub_18B6C521C();
  KeyPath = swift_getKeyPath();
  v11 = sub_18B6C528C();
  v12 = sub_18B6C521C();
  v13 = swift_getKeyPath();
  *&v27 = v18;
  *(&v27 + 1) = 0x4000000000000000;
  LOBYTE(v28[0]) = v8;
  *(v28 + 1) = *v19;
  *(&v28[1] + 1) = *&v19[16];
  *(&v28[3] + 1) = *&v19[48];
  *(&v28[2] + 1) = *&v19[32];
  v28[4] = *&v19[63];
  *&v29 = KeyPath;
  *(&v29 + 1) = v9;
  v30 = v27;
  v31 = v28[0];
  v35 = *&v19[63];
  v36 = v29;
  v33 = v28[2];
  v34 = v28[3];
  v32 = v28[1];
  v14 = v6;
  sub_18B4A63EC(&v27, &v37, &qword_1EA9C43E0);

  v15 = v32;
  *(a2 + 56) = v33;
  v16 = v35;
  *(a2 + 72) = v34;
  *(a2 + 88) = v16;
  *(a2 + 104) = v36;
  v17 = v31;
  *(a2 + 8) = v30;
  *(a2 + 24) = v17;
  *a2 = v6;
  *(a2 + 40) = v15;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 136) = v11;
  *(a2 + 144) = v13;
  *(a2 + 152) = v12;

  *&v38[17] = *&v19[16];
  *&v38[33] = *&v19[32];
  *&v38[49] = *&v19[48];
  *&v38[64] = *&v19[63];
  *&v37 = v18;
  *(&v37 + 1) = 0x4000000000000000;
  v38[0] = v8;
  *&v38[1] = *v19;
  v39 = KeyPath;
  v40 = v9;
  sub_18B4A6454(&v37, &qword_1EA9C43E0);
}

uint64_t sub_18B4B195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C55FC();
  v5 = sub_18B6C55FC();
  v6 = AVLocalizedString(v4);

  sub_18B6C562C();
  sub_18B4B2068();
  v7 = sub_18B6C500C();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_18B6C4F9C();
  v11 = sub_18B6C4FDC();
  v43 = v12;
  v44 = v11;
  v42 = v13;
  v45 = v14;

  sub_18B4B20BC(v7, v9, v6 & 1);

  v15 = *(a1 + 64);
  swift_getKeyPath();
  sub_18B4B1E1C();

  sub_18B6C421C();

  v16 = *(v15 + 32);
  v17 = *(v15 + 40);
  v18 = *(v15 + 48);
  v19 = *(v15 + 56);
  v20 = *(v15 + 64);
  v21 = *(v15 + 72);
  v22 = *(v15 + 80);
  sub_18B4B20CC(v16, v17, v18, v19, v20, v21, *(v15 + 80));

  if (v22 == 255)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    if (v22)
    {
      v23 = sub_18B6C55FC();
      v24 = sub_18B6C55FC();
      v41 = v16;
      v25 = AVLocalizedString(v23);

      sub_18B6C562C();
      v16 = v41;
    }

    else
    {
      sub_18B6C450C();
    }

    sub_18B4B212C(v16, v17, v18, v19, v20, v21, v22);
    v31 = sub_18B6C500C();
    v33 = v32;
    v35 = v34;
    sub_18B6C4F2C();
    v26 = sub_18B6C4FDC();
    v27 = v36;
    v38 = v37;
    v29 = v39;

    sub_18B4B20BC(v31, v33, v35 & 1);

    v28 = v38 & 1;
    sub_18B4B218C(v26, v27, v38 & 1);
    sub_18B6C450C();
    v30 = 0x3FE0000000000000;
  }

  sub_18B4B218C(v44, v43, v42 & 1);
  sub_18B6C450C();
  sub_18B4B219C(v26, v27, v28, v29);
  sub_18B4B21E0(v26, v27, v28, v29);
  *a2 = v44;
  *(a2 + 8) = v43;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v45;
  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v29;
  *(a2 + 64) = v30;
  sub_18B4B21E0(v26, v27, v28, v29);
  sub_18B4B20BC(v44, v43, v42 & 1);
}

unint64_t sub_18B4B1D60()
{
  result = qword_1EA9C4380;
  if (!qword_1EA9C4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4380);
  }

  return result;
}

uint64_t sub_18B4B1DB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B4B1E1C()
{
  result = qword_1EA9C3BB0;
  if (!qword_1EA9C3BB0)
  {
    type metadata accessor for RoutingControllerInputPickerViewModel.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3BB0);
  }

  return result;
}

void sub_18B4B1E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a2)
  {

    v8 = a6;

    v9 = a7;
  }
}

uint64_t sub_18B4B1ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18B4B1F70()
{
  result = qword_1EA9C3B50;
  if (!qword_1EA9C3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C43B0);
    sub_18B4A6268(&qword_1EA9C3AE8, &qword_1EA9C43C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3B50);
  }

  return result;
}

uint64_t sub_18B4B2010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B6C4A4C();
  *a1 = result;
  return result;
}

unint64_t sub_18B4B2068()
{
  result = qword_1EA9C3DD8;
  if (!qword_1EA9C3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3DD8);
  }

  return result;
}

uint64_t sub_18B4B20BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_18B4B20CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_18B4B20E4();
  }

  return result;
}

uint64_t sub_18B4B20E4()
{
  sub_18B6C450C();
  sub_18B6C450C();

  return sub_18B6C450C();
}

uint64_t sub_18B4B212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_18B4B2144();
  }

  return result;
}

uint64_t sub_18B4B2144()
{
}

uint64_t sub_18B4B218C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_18B6C450C();
  }
}

uint64_t sub_18B4B219C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_18B4B218C(result, a2, a3 & 1);

    return sub_18B6C450C();
  }

  return result;
}

uint64_t sub_18B4B21E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_18B4B20BC(result, a2, a3 & 1);
  }

  return result;
}

void sub_18B4B2244(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v2[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_18B507534(v2);
}

unint64_t sub_18B4B22BC()
{
  result = qword_1EA9C3D80;
  if (!qword_1EA9C3D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C43E8);
    sub_18B4B2340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3D80);
  }

  return result;
}

unint64_t sub_18B4B2340()
{
  result = qword_1EA9C3D98;
  if (!qword_1EA9C3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3D98);
  }

  return result;
}

unint64_t sub_18B4B2394()
{
  result = qword_1EA9C3AC8;
  if (!qword_1EA9C3AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C43F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3E48);
    sub_18B4A6268(&qword_1EA9C3AF0, &qword_1EA9C3E48);
    sub_18B4B2340();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3AC8);
  }

  return result;
}

unint64_t sub_18B4B2484()
{
  result = qword_1EA9C3AB8;
  if (!qword_1EA9C3AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C43F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3AB8);
  }

  return result;
}

unint64_t sub_18B4B24E8()
{
  result = qword_1EA9C3D88;
  if (!qword_1EA9C3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3D88);
  }

  return result;
}

uint64_t sub_18B4B2578(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_18B4A6268(&unk_1EA9C3B20, &qword_1EA9C4450);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B4B2670(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B4B26E8()
{
  result = qword_1EA9C4440;
  if (!qword_1EA9C4440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4360);
    sub_18B4A6268(&qword_1EA9C4448, &qword_1EA9C4368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4440);
  }

  return result;
}

unint64_t sub_18B4B27B8()
{
  result = qword_1EA9C3B60;
  if (!qword_1EA9C3B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C43A0);
    sub_18B4A6268(&qword_1EA9C3B00, &qword_1EA9C43A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3B60);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_18B4B2918()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 playerTipsEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 tips];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_18B6C55BC();

  v6 = sub_18B4AEEC8(v5);

  return v6;
}

void _sSo35AVPlayerViewControllerConfigurationC5AVKitE4tipsSDySS6TipKit0G0_pGSgvs_0(uint64_t a1)
{
  v3 = [objc_opt_self() shared];
  v4 = [v3 playerTipsEnabled];

  if (v4)
  {
    if (a1)
    {
      sub_18B538970(a1);

      v5 = sub_18B6C55AC();
    }

    else
    {
      v5 = 0;
    }

    [v1 setTips_];
  }

  else
  {
  }
}

uint64_t sub_18B4B2AEC()
{
  MEMORY[0x18CFF9250](v0 + 16);
  sub_18B4B2F58(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_18B4B2C44(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC5AVKit32InputPickerTransitioningDelegate_presentationStyle))
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = type metadata accessor for InputPickeriPadPresentationAnimationController();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_style] = 1;
    *&v5[OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_viewController] = a1;
    *&v5[OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_sourceView] = Strong;
    v14.receiver = v5;
    v14.super_class = v4;
    v6 = a1;
    v7 = Strong;
    v8 = objc_msgSendSuper2(&v14, sel_init);

    return v8;
  }

  else
  {
    v10 = type metadata accessor for InputPickerAnimationTransition();
    v11 = objc_allocWithZone(v10);
    v11[OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_style] = 1;
    *&v11[OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_viewController] = a1;
    v13.receiver = v11;
    v13.super_class = v10;
    v12 = a1;
    return objc_msgSendSuper2(&v13, sel_init);
  }
}

uint64_t get_enum_tag_for_layout_string_5AVKit32InputPickerTransitioningDelegateC17PresentationStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_18B4B2E80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B4B2ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_18B4B2F28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

char *sub_18B4B2F80(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC5AVKit32InputPickerTransitioningDelegate_presentationStyle;
  v6 = *(v2 + OBJC_IVAR____TtC5AVKit32InputPickerTransitioningDelegate_presentationStyle);
  if (!v6)
  {
    return [objc_allocWithZone(type metadata accessor for InputPickerPresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
  }

  v8 = *(v5 + 8);
  v7 = *(v5 + 16);
  v9 = objc_allocWithZone(type metadata accessor for InputPickeriPadPresentationController());

  v10 = [v9 initWithPresentedViewController:a1 presentingViewController:a2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = v10;
  [v12 setSourceView_];

  swift_unknownObjectWeakLoadStrong();
  v13 = *(v6 + 32);

  *&v12[OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_animationCoordinator + 8] = v13;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v14 = &v12[OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_dismissHandler];
  v15 = *&v12[OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_dismissHandler];
  *v14 = v8;
  *(v14 + 1) = v7;
  sub_18B4A31A4(v15);

  return v12;
}

id sub_18B4B30C0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC5AVKit32InputPickerTransitioningDelegate_presentationStyle))
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = type metadata accessor for InputPickeriPadPresentationAnimationController();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_style] = 0;
    *&v5[OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_viewController] = a1;
    *&v5[OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_sourceView] = Strong;
    v14.receiver = v5;
    v14.super_class = v4;
    v6 = a1;
    v7 = Strong;
    v8 = objc_msgSendSuper2(&v14, sel_init);

    return v8;
  }

  else
  {
    v10 = type metadata accessor for InputPickerAnimationTransition();
    v11 = objc_allocWithZone(v10);
    v11[OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_style] = 0;
    *&v11[OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_viewController] = a1;
    v13.receiver = v11;
    v13.super_class = v10;
    v12 = a1;
    return objc_msgSendSuper2(&v13, sel_init);
  }
}

uint64_t sub_18B4B31D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_18B4B3218()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 playerGeneration];

  byte_1EA9CE3C8 = v1 == 2;
}

uint64_t sub_18B4B32B4@<X0>(uint64_t a1@<X8>)
{
  sub_18B6C4F9C();
  v2 = sub_18B6C4FDC();
  v4 = v3;
  v6 = v5;

  v7 = sub_18B6C4FCC();
  v9 = v8;
  v11 = v10;
  sub_18B4B20BC(v2, v4, v6 & 1);

  sub_18B6C4C9C();
  v29 = sub_18B6C4FBC();
  v30 = v12;
  v14 = v13;
  v28 = v15;
  sub_18B4B20BC(v7, v9, v11 & 1);

  sub_18B6C4F2C();
  v16 = sub_18B6C4FDC();
  v18 = v17;
  LOBYTE(v2) = v19;

  sub_18B6C4C9C();
  v20 = sub_18B6C4FBC();
  v22 = v21;
  LOBYTE(v9) = v23;
  v25 = v24;
  sub_18B4B20BC(v16, v18, v2 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v29;
  *(a1 + 8) = v14;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v30;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v9 & 1;
  *(a1 + 56) = v25;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  sub_18B4B218C(v29, v14, v28 & 1);
  sub_18B6C450C();
  sub_18B4B218C(v20, v22, v9 & 1);
  sub_18B6C450C();

  sub_18B4B20BC(v20, v22, v9 & 1);

  sub_18B4B20BC(v29, v14, v28 & 1);
}

double sub_18B4B3530@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v4 = v1[3];
  v21 = v1[2];
  v22 = v4;
  v5 = sub_18B6C4B0C();
  v18 = 1;
  sub_18B4B32B4(&v11);
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v23 = v11;
  v24 = v12;
  v30 = v16;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[0] = v11;
  v29[1] = v12;
  sub_18B4B3634(&v23, &v10);
  sub_18B4B36A4(v29);
  *&v17[39] = v25;
  *&v17[55] = v26;
  *&v17[71] = v27;
  *&v17[7] = v23;
  *&v17[23] = v24;
  v6 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = v6;
  *(a1 + 81) = *&v17[64];
  v8 = *v17;
  result = *&v17[16];
  *(a1 + 33) = *&v17[16];
  v17[87] = v28;
  v9 = v18;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 97) = *&v17[80];
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_18B4B3634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C44F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B4B36A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C44F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B4B370C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18B4B3754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18B4B37B4()
{
  result = qword_1EA9C44F8;
  if (!qword_1EA9C44F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C44F8);
  }

  return result;
}

uint64_t sub_18B4B3814@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AVInfoTabMetadataStripView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4538);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - v10;
  sub_18B4BC828(v1, v6, type metadata accessor for AVInfoTabMetadataStripView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_18B4BC890(v6, v13 + v12, type metadata accessor for AVInfoTabMetadataStripView);
  type metadata accessor for AVObservableBundle();
  v14 = swift_allocObject();
  *(v14 + 16) = AVBundle();
  sub_18B4BBCD8(&qword_1EA9C4548, v15, type metadata accessor for AVObservableBundle);
  v16 = sub_18B6C45BC();
  v17 = sub_18B6C523C();
  KeyPath = swift_getKeyPath();
  sub_18B6C54BC();
  sub_18B6C479C();
  sub_18B6C4F8C();
  v19 = sub_18B6C4F3C();

  v20 = swift_getKeyPath();
  *&v35 = sub_18B4BB154;
  *(&v35 + 1) = v13;
  *&v36 = v16;
  *(&v36 + 1) = v14;
  *&v37 = KeyPath;
  *(&v37 + 1) = v17;
  v38 = v42;
  v39 = v43;
  v40 = v44;
  *&v41 = v20;
  *(&v41 + 1) = v19;
  v21 = sub_18B6C48AC();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v26, *MEMORY[0x1E697E700], v21, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4550);
  v28 = sub_18B4BBA08();
  sub_18B6C50BC();
  (*(v22 + 8))(v26, v21);
  v45[4] = v39;
  v45[5] = v40;
  v45[6] = v41;
  v45[0] = v35;
  v45[1] = v36;
  v45[2] = v37;
  v45[3] = v38;
  sub_18B4A6454(v45, &qword_1EA9C4550);
  *&v35 = v27;
  *(&v35 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  sub_18B6C516C();
  return (*(v33 + 8))(v11, v29);
}

uint64_t sub_18B4B3C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_18B6C4A8C();
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45C0);
  sub_18B4B3CB8(a2, a1, a3 + *(v6 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45C8);
  v8 = (a3 + *(result + 36));
  *v8 = 0xD000000000000021;
  v8[1] = 0x800000018B6FBEA0;
  return result;
}

uint64_t sub_18B4B3CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v337 = a3;
  v340 = type metadata accessor for AVInfoTabMetadataStripView.BadgeView(0);
  MEMORY[0x1EEE9AC00](v340, v5);
  v325 = (&v318 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v353 = (&v318 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v318 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45D0);
  v15 = v14 - 8;
  v335 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v318 - v17;
  *v18 = sub_18B6C4A8C();
  *(v18 + 1) = 0x4008000000000000;
  v18[16] = 0;
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45D8) + 44)];
  v342 = a2;
  sub_18B4B6684(a1, v19);
  v20 = *(v15 + 44);
  v352 = v18;
  *&v18[v20] = 0x3FF0000000000000;
  v21 = type metadata accessor for MediaInfo();
  v22 = *(a1 + v21[13]) | (*(a1 + v21[13] + 4) << 32);
  v23 = 0;
  if ((v22 & 0xFF00000000) != 0x400000000 && (*(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20)) & 0x40) != 0)
  {
    v351 = HIDWORD(v22);
    v350 = v22;
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v27, type metadata accessor for AVObservableBundle);
    v345 = sub_18B6C496C();
    v349 = v28;
    type metadata accessor for CGSize(0);
    v356 = 0uLL;
    sub_18B6C531C();
    v347 = *(&v361 + 1);
    v348 = v361;
    v346 = v362;
    v29 = sub_18B6C4C3C();
    v30 = *(v29 - 8);
    MEMORY[0x1EEE9AC00](v29, v31);
    v33 = &v318 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v361 = 0xD000000000000021;
    *(&v361 + 1) = 0x800000018B6FBEA0;
    sub_18B6C4CEC();
    sub_18B6C47FC();
    v23 = v34;
    v24 = v35;
    (*(v30 + 8))(v33, v29);
    LOBYTE(v356) = 0;
    sub_18B6C531C();
    *&v344 = v361;
    v25 = *(&v361 + 1);
    v26 = &v370;
  }

  else
  {
    v349 = 0;
    v348 = 0;
    v347 = 0;
    v346 = 0;
    v350 = 0;
    v351 = 0;
    v344 = 0uLL;
    v24 = 0;
    v25 = 1;
    v26 = &v371;
  }

  *(v26 - 32) = v25;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E0);
  v336 = &v318;
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v355 = &v318 - v39;
  v40 = *(a1 + v21[15]);
  v338 = v21;
  if (v40 == 2)
  {
    v41 = 1145597551;
  }

  else
  {
    if (v40 != 3)
    {
LABEL_11:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
      v44 = (*(*(v43 - 8) + 56))(v355, 1, 1, v43);
      goto LABEL_16;
    }

    v41 = 1261727343;
  }

  v42 = v41 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if ((*(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20)) & 4) == 0)
  {

    goto LABEL_11;
  }

  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
  v354 = &v318;
  v343 = *(v341 - 1);
  MEMORY[0x1EEE9AC00](v341, v46);
  v334 = (&v318 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v339 = &v318;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v318 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4600);
  v333 = &v318;
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v318 - v54;
  v56 = v340;
  v57 = *(v340 + 6);
  v58 = *MEMORY[0x1E6981690];
  v59 = sub_18B6C52CC();
  (*(*(v59 - 8) + 104))(v13 + v57, v58, v59);
  type metadata accessor for AVObservableBundle();
  sub_18B4BBCD8(&qword_1EA9C4548, v60, type metadata accessor for AVObservableBundle);
  *v13 = sub_18B6C496C();
  v13[1] = v61;
  v62 = v13 + *(v56 + 7);
  __asm { FMOV            V0.2D, #1.0 }

  v356 = _Q0;
  type metadata accessor for CGSize(0);
  sub_18B6C531C();
  v68 = v362;
  *v62 = v361;
  *(v62 + 2) = v68;
  v13[2] = 0x6974756C6F736552;
  v13[3] = v42;
  if (v40 == 2)
  {
    v69 = "CONTENT_TABS_ACCESSIBILITY_4k";
  }

  else
  {
    v69 = "CONTENT_TABS_ACCESSIBILITY_HDR";
  }

  sub_18B4B84D0(0xD00000000000001DLL, v69 | 0x8000000000000000);

  sub_18B4BC7C8(v13, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
  v70 = sub_18B6C4C3C();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v72);
  v74 = &v318 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v361 = 0xD000000000000021;
  *(&v361 + 1) = 0x800000018B6FBEA0;
  sub_18B6C4CEC();
  sub_18B6C47FC();
  v76 = v75;
  v78 = v77;
  (*(v71 + 8))(v74, v70);
  v21 = v338;
  LOBYTE(v356) = 0;
  sub_18B6C531C();
  v79 = v361;
  v80 = *(&v361 + 1);
  sub_18B4B1DB4(v55, v51, &qword_1EA9C4600);
  v81 = v341;
  v82 = &v51[*(v341 + 9)];
  *v82 = v76;
  *(v82 + 1) = v78;
  v82[16] = v79;
  *(v82 + 3) = v80;
  v83 = v334;
  sub_18B4B1DB4(v51, v334, &qword_1EA9C45E8);
  v84 = v83;
  v85 = v355;
  sub_18B4B1DB4(v84, v355, &qword_1EA9C45E8);
  v44 = (v343[7])(v85, 0, 1, v81);
LABEL_16:
  v334 = &v318;
  MEMORY[0x1EEE9AC00](v44, v45);
  v354 = (&v318 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = *(a1 + v21[16]);
  if (v86 == 2)
  {
    v87 = 0xE800000000000000;
    v88 = 0x524448726F6C6F43;
  }

  else
  {
    if (v86 != 3)
    {
      goto LABEL_22;
    }

    v87 = 0x800000018B6FBF90;
    v88 = 0xD000000000000010;
  }

  if ((*(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20)) & 8) != 0)
  {
    v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v343 = &v318;
    v341 = *(v339 - 1);
    MEMORY[0x1EEE9AC00](v339, v92);
    v332 = &v318 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    v333 = &v318;
    MEMORY[0x1EEE9AC00](v94, v95);
    v330 = &v318 - v96;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4600);
    v331 = &v318;
    MEMORY[0x1EEE9AC00](v97 - 8, v98);
    v100 = &v318 - v99;
    v101 = a1;
    v102 = v88;
    v103 = v340;
    v104 = *(v340 + 6);
    v105 = *MEMORY[0x1E6981690];
    v106 = sub_18B6C52CC();
    v107 = v353;
    (*(*(v106 - 8) + 104))(v353 + v104, v105, v106);
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v108, type metadata accessor for AVObservableBundle);
    *v107 = sub_18B6C496C();
    v107[1] = v109;
    v110 = v107 + *(v103 + 7);
    __asm { FMOV            V0.2D, #1.0 }

    v356 = _Q0;
    type metadata accessor for CGSize(0);
    sub_18B6C531C();
    v112 = v362;
    *v110 = v361;
    *(v110 + 2) = v112;
    v107[2] = v102;
    v107[3] = v87;
    a1 = v101;
    if (v86 == 2)
    {
      v113 = 0xD00000000000001ELL;
    }

    else
    {
      v113 = 0xD000000000000027;
    }

    if (v86 == 2)
    {
      v114 = "ESSIBILITY_DOLBY_VISION";
    }

    else
    {
      v114 = "ColorDolbyVision";
    }

    sub_18B4B84D0(v113, v114 | 0x8000000000000000);

    sub_18B4BC7C8(v107, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    v115 = sub_18B6C4C3C();
    v116 = *(v115 - 8);
    MEMORY[0x1EEE9AC00](v115, v117);
    v119 = &v318 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v361 = 0xD000000000000021;
    *(&v361 + 1) = 0x800000018B6FBEA0;
    sub_18B6C4CEC();
    sub_18B6C47FC();
    v121 = v120;
    v123 = v122;
    (*(v116 + 8))(v119, v115);
    LOBYTE(v356) = 0;
    sub_18B6C531C();
    LOBYTE(v115) = v361;
    v124 = *(&v361 + 1);
    v125 = v330;
    sub_18B4B1DB4(v100, v330, &qword_1EA9C4600);
    v126 = v339;
    v127 = v125 + *(v339 + 9);
    *v127 = v121;
    *(v127 + 8) = v123;
    *(v127 + 16) = v115;
    *(v127 + 24) = v124;
    v21 = v338;
    v128 = v332;
    sub_18B4B1DB4(v125, v332, &qword_1EA9C45E8);
    v129 = v128;
    v130 = v354;
    sub_18B4B1DB4(v129, v354, &qword_1EA9C45E8);
    v90 = (*(v341 + 7))(v130, 0, 1, v126);
    goto LABEL_30;
  }

LABEL_22:
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
  v90 = (*(*(v89 - 8) + 56))(v354, 1, 1, v89);
LABEL_30:
  v333 = &v318;
  MEMORY[0x1EEE9AC00](v90, v91);
  v353 = (&v318 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + v21[17]) == 4 && (*(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20)) & 0x10) != 0)
  {
    v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v343 = &v318;
    v341 = *(v339 - 1);
    MEMORY[0x1EEE9AC00](v339, v134);
    v332 = &v318 - v135;
    v136 = v340;
    v137 = *(v340 + 6);
    v138 = *MEMORY[0x1E6981690];
    v139 = sub_18B6C52CC();
    v140 = v325;
    (*(*(v139 - 8) + 104))(v325 + v137, v138, v139);
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v141, type metadata accessor for AVObservableBundle);
    *v140 = sub_18B6C496C();
    v140[1] = v142;
    v143 = v140 + *(v136 + 7);
    __asm { FMOV            V0.2D, #1.0 }

    v356 = _Q0;
    type metadata accessor for CGSize(0);
    sub_18B6C531C();
    v145 = v362;
    *v143 = v361;
    *(v143 + 2) = v145;
    v140[2] = 0x6C6F446F69647541;
    v140[3] = 0xEF736F6D74417962;
    v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4600);
    v331 = &v318;
    MEMORY[0x1EEE9AC00](v330, v146);
    v148 = &v318 - v147;
    v149 = sub_18B6C55FC();
    v150 = sub_18B6C55FC();
    v151 = AVLocalizedString(v149);

    v152 = sub_18B6C562C();
    v154 = v153;

    *&v361 = v152;
    *(&v361 + 1) = v154;
    sub_18B4B2068();
    v155 = sub_18B6C500C();
    v157 = v156;
    LOBYTE(v154) = v158;
    sub_18B4BBCD8(&qword_1EA9C4608, 255, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    sub_18B6C50FC();
    sub_18B4B20BC(v155, v157, v154 & 1);

    v159 = sub_18B6C4ACC();
    v160 = *(v159 - 8);
    MEMORY[0x1EEE9AC00](v159, v161);
    v163 = &v318 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4ABC();
    v164 = v332;
    sub_18B6C48CC();
    (*(v160 + 8))(v163, v159);
    v21 = v338;
    sub_18B4A6454(v148, &qword_1EA9C4600);
    sub_18B4BC7C8(v140, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    v165 = sub_18B6C4C3C();
    v166 = *(v165 - 8);
    MEMORY[0x1EEE9AC00](v165, v167);
    v169 = &v318 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v361 = 0xD000000000000021;
    *(&v361 + 1) = 0x800000018B6FBEA0;
    sub_18B6C4CEC();
    sub_18B6C47FC();
    v171 = v170;
    v173 = v172;
    (*(v166 + 8))(v169, v165);
    LOBYTE(v356) = 0;
    sub_18B6C531C();
    v174 = v361;
    v175 = *(&v361 + 1);
    v176 = v339;
    v177 = v164 + *(v339 + 9);
    *v177 = v171;
    *(v177 + 8) = v173;
    *(v177 + 16) = v174;
    *(v177 + 24) = v175;
    v178 = v353;
    sub_18B4B1DB4(v164, v353, &qword_1EA9C45E8);
    v132 = (*(v341 + 7))(v178, 0, 1, v176);
  }

  else
  {
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v132 = (*(*(v131 - 8) + 56))(v353, 1, 1, v131);
  }

  v179 = *(a1 + v21[14]);
  if (v179)
  {
    v132 = type metadata accessor for AVInfoTabMetadataStripView(0);
    if ((*(a1 + *(v132 + 5)) & 0x20) != 0)
    {
      v180 = sub_18B6C4C3C();
      v181 = *(v180 - 8);
      MEMORY[0x1EEE9AC00](v180, v182);
      v184 = &v318 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v361 = 0xD000000000000021;
      *(&v361 + 1) = 0x800000018B6FBEA0;
      v185 = v179;
      sub_18B6C4CEC();
      sub_18B6C47FC();
      v187 = v186;
      v189 = v188;
      (*(v181 + 8))(v184, v180);
      LOBYTE(v356) = 0;
      sub_18B6C531C();
      v330 = v361;
      v329 = v187;
      v327 = v189;
      v328 = *(&v361 + 1);

      v132 = v185;
      goto LABEL_39;
    }

    v179 = 0;
  }

  v329 = 0;
  v327 = 0;
  v330 = 0;
  v328 = 0;
LABEL_39:
  v332 = v179;
  v331 = &v318;
  MEMORY[0x1EEE9AC00](v132, v133);
  v343 = v37;
  v190 = &v318 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ZF = *(a1 + v21[20]) == 1;
  v341 = v190;
  if (_ZF && (*(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20)) & 0x80) != 0)
  {
    v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v326 = &v318;
    v324 = *(v323 - 1);
    MEMORY[0x1EEE9AC00](v323, v194);
    v339 = &v318 - v195;
    v196 = v340;
    v197 = *(v340 + 6);
    v198 = *MEMORY[0x1E6981690];
    v199 = sub_18B6C52CC();
    v200 = v325;
    (*(*(v199 - 8) + 104))(v325 + v197, v198, v199);
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v201, type metadata accessor for AVObservableBundle);
    *v200 = sub_18B6C496C();
    v200[1] = v202;
    v203 = v200 + *(v196 + 7);
    __asm { FMOV            V0.2D, #1.0 }

    v356 = _Q0;
    type metadata accessor for CGSize(0);
    sub_18B6C531C();
    v205 = v362;
    *v203 = v361;
    *(v203 + 2) = v205;
    v200[2] = 0x6B73616D5F6363;
    v200[3] = 0xE700000000000000;
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4600);
    v322 = &v318;
    MEMORY[0x1EEE9AC00](v206, v207);
    v209 = &v318 - v208;
    v210 = sub_18B6C55FC();
    v211 = sub_18B6C55FC();
    v212 = AVLocalizedString(v210);

    v213 = sub_18B6C562C();
    v215 = v214;

    *&v361 = v213;
    *(&v361 + 1) = v215;
    sub_18B4B2068();
    v216 = sub_18B6C500C();
    v218 = v217;
    v220 = v219;
    sub_18B4BBCD8(&qword_1EA9C4608, 255, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    sub_18B6C50FC();
    sub_18B4B20BC(v216, v218, v220 & 1);

    v221 = sub_18B6C4ACC();
    v222 = *(v221 - 8);
    MEMORY[0x1EEE9AC00](v221, v223);
    v225 = &v318 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4ABC();
    sub_18B6C48CC();
    (*(v222 + 8))(v225, v221);
    sub_18B4A6454(v209, &qword_1EA9C4600);
    sub_18B4BC7C8(v200, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    v21 = v338;
    v226 = sub_18B6C4C3C();
    v227 = *(v226 - 8);
    MEMORY[0x1EEE9AC00](v226, v228);
    v230 = &v318 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v361 = 0xD000000000000021;
    *(&v361 + 1) = 0x800000018B6FBEA0;
    sub_18B6C4CEC();
    sub_18B6C47FC();
    v231 = v341;
    v233 = v232;
    v235 = v234;
    (*(v227 + 8))(v230, v226);
    LOBYTE(v356) = 0;
    sub_18B6C531C();
    v236 = v361;
    v237 = *(&v361 + 1);
    v238 = v323;
    v239 = v339;
    v240 = &v339[*(v323 + 9)];
    *v240 = v233;
    *(v240 + 1) = v235;
    v240[16] = v236;
    *(v240 + 3) = v237;
    sub_18B4B1DB4(v239, v231, &qword_1EA9C45E8);
    v190 = v231;
    v192 = (v324[7])(v231, 0, 1, v238);
  }

  else
  {
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v192 = (*(*(v191 - 8) + 56))(v190, 1, 1, v191);
  }

  v326 = &v318;
  MEMORY[0x1EEE9AC00](v192, v193);
  v242 = &v318 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ZF = *(a1 + v21[21]) == 1;
  v339 = v242;
  if (_ZF && (*(a1 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20) + 1) & 1) != 0)
  {
    v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v338 = &v318;
    v324 = *(v323 - 1);
    MEMORY[0x1EEE9AC00](v323, v246);
    v322 = (&v318 - v247);
    v248 = v340;
    v249 = *(v340 + 6);
    v250 = *MEMORY[0x1E6981690];
    v251 = sub_18B6C52CC();
    v252 = v325;
    (*(*(v251 - 8) + 104))(v325 + v249, v250, v251);
    type metadata accessor for AVObservableBundle();
    sub_18B4BBCD8(&qword_1EA9C4548, v253, type metadata accessor for AVObservableBundle);
    *v252 = sub_18B6C496C();
    v252[1] = v254;
    v255 = v252 + *(v248 + 7);
    __asm { FMOV            V0.2D, #1.0 }

    v356 = _Q0;
    type metadata accessor for CGSize(0);
    sub_18B6C531C();
    v257 = v362;
    *v255 = v361;
    *(v255 + 2) = v257;
    v252[2] = 0xD000000000000011;
    v252[3] = 0x800000018B6FBED0;
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4600);
    v321 = &v318;
    MEMORY[0x1EEE9AC00](v258, v259);
    v261 = &v318 - v260;
    v262 = sub_18B6C55FC();
    v263 = sub_18B6C55FC();
    v264 = AVLocalizedString(v262);

    v265 = sub_18B6C562C();
    v267 = v266;

    *&v361 = v265;
    *(&v361 + 1) = v267;
    sub_18B4B2068();
    v268 = sub_18B6C500C();
    v270 = v269;
    LOBYTE(v255) = v271;
    sub_18B4BBCD8(&qword_1EA9C4608, 255, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    sub_18B6C50FC();
    sub_18B4B20BC(v268, v270, v255 & 1);

    v272 = sub_18B6C4ACC();
    v273 = *(v272 - 8);
    MEMORY[0x1EEE9AC00](v272, v274);
    v276 = &v318 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4ABC();
    v277 = v322;
    sub_18B6C48CC();
    (*(v273 + 8))(v276, v272);
    sub_18B4A6454(v261, &qword_1EA9C4600);
    sub_18B4BC7C8(v252, type metadata accessor for AVInfoTabMetadataStripView.BadgeView);
    v278 = sub_18B6C4C3C();
    v279 = *(v278 - 8);
    MEMORY[0x1EEE9AC00](v278, v280);
    v282 = &v318 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v361 = 0xD000000000000021;
    *(&v361 + 1) = 0x800000018B6FBEA0;
    sub_18B6C4CEC();
    sub_18B6C47FC();
    v190 = v341;
    v284 = v283;
    v286 = v285;
    v287 = v282;
    v242 = v339;
    (*(v279 + 8))(v287, v278);
    LOBYTE(v356) = 0;
    sub_18B6C531C();
    v288 = v361;
    v289 = *(&v361 + 1);
    v290 = v323;
    v291 = v277 + *(v323 + 9);
    *v291 = v284;
    *(v291 + 8) = v286;
    *(v291 + 16) = v288;
    *(v291 + 24) = v289;
    sub_18B4B1DB4(v277, v242, &qword_1EA9C45E8);
    v244 = (v324[7])(v242, 0, 1, v290);
  }

  else
  {
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45E8);
    v244 = (*(*(v243 - 8) + 56))(v242, 1, 1, v243);
  }

  v340 = &v318;
  MEMORY[0x1EEE9AC00](v244, v245);
  v293 = &v318 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = v293;
  v294 = sub_18B4A63EC(v352, v293, &qword_1EA9C45D0);
  v338 = &v318;
  v295 = v343;
  MEMORY[0x1EEE9AC00](v294, v296);
  v297 = &v318 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = v297;
  v298 = sub_18B4A63EC(v355, v297, &qword_1EA9C45E0);
  v335 = &v318;
  MEMORY[0x1EEE9AC00](v298, v299);
  v320 = v297;
  v300 = sub_18B4A63EC(v354, v297, &qword_1EA9C45E0);
  v325 = &v318;
  MEMORY[0x1EEE9AC00](v300, v301);
  v319 = v297;
  v302 = sub_18B4A63EC(v353, v297, &qword_1EA9C45E0);
  v324 = &v318;
  MEMORY[0x1EEE9AC00](v302, v303);
  v342 = v297;
  v304 = sub_18B4A63EC(v190, v297, &qword_1EA9C45E0);
  v323 = &v318;
  MEMORY[0x1EEE9AC00](v304, v305);
  v343 = v297;
  sub_18B4A63EC(v242, v297, &qword_1EA9C45E0);
  v306 = v337;
  sub_18B4A63EC(v293, v337, &qword_1EA9C45D0);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C45F0);
  v308 = (v306 + v307[12]);
  *&v356 = v345;
  *(&v356 + 1) = v349;
  *&v357 = v348;
  *(&v357 + 1) = v347;
  *&v358 = v346;
  DWORD2(v358) = v350;
  BYTE12(v358) = v351;
  HIBYTE(v358) = 0;
  *(&v358 + 13) = 0;
  *&v359 = v23;
  *(&v359 + 1) = v24;
  v360 = v344;
  v309 = v357;
  *v308 = v356;
  v308[1] = v309;
  v310 = v359;
  v308[2] = v358;
  v308[3] = v310;
  v308[4] = v360;
  sub_18B4A63EC(v297, v306 + v307[16], &qword_1EA9C45E0);
  sub_18B4A63EC(v297, v306 + v307[20], &qword_1EA9C45E0);
  sub_18B4A63EC(v297, v306 + v307[24], &qword_1EA9C45E0);
  v311 = (v306 + v307[28]);
  v312 = v332;
  v313 = v329;
  *v311 = v332;
  v311[1] = v313;
  v314 = v330;
  v311[2] = v327;
  v311[3] = v314;
  v311[4] = v328;
  sub_18B4A63EC(v342, v306 + v307[32], &qword_1EA9C45E0);
  v315 = v343;
  sub_18B4A63EC(v343, v306 + v307[36], &qword_1EA9C45E0);
  v316 = v306 + v307[40];
  sub_18B4A63EC(&v356, &v361, &qword_1EA9C45F8);
  sub_18B4BBC54(v312);
  sub_18B4BBC98(v312);
  *v316 = 0;
  *(v316 + 8) = 1;
  sub_18B4A6454(v339, &qword_1EA9C45E0);
  sub_18B4A6454(v341, &qword_1EA9C45E0);
  sub_18B4A6454(v353, &qword_1EA9C45E0);
  sub_18B4A6454(v354, &qword_1EA9C45E0);
  sub_18B4A6454(v355, &qword_1EA9C45E0);
  sub_18B4A6454(v352, &qword_1EA9C45D0);
  sub_18B4A6454(v315, &qword_1EA9C45E0);
  sub_18B4A6454(v342, &qword_1EA9C45E0);
  sub_18B4BBC98(v312);
  sub_18B4A6454(v319, &qword_1EA9C45E0);
  sub_18B4A6454(v320, &qword_1EA9C45E0);
  sub_18B4A6454(v321, &qword_1EA9C45E0);
  *&v361 = v345;
  *(&v361 + 1) = v349;
  v362 = v348;
  v363 = v347;
  v364 = v346;
  v365 = v350;
  v366 = v351;
  v368 = 0;
  v367 = 0;
  v369 = v23;
  v370 = v24;
  v371 = v344;
  sub_18B4A6454(&v361, &qword_1EA9C45F8);
  return sub_18B4A6454(v322, &qword_1EA9C45D0);
}

uint64_t sub_18B4B6684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v80 = a2;
  v3 = (a1 + *(type metadata accessor for MediaInfo() + 40));
  v4 = v3[1];
  v5 = 0;
  if (v4 && (v6 = *v3, (*(v2 + *(type metadata accessor for AVInfoTabMetadataStripView(0) + 20)) & 1) != 0))
  {
    v89 = v6;
    v90 = v4;
    sub_18B4B2068();
    v8 = v2;
    sub_18B6C450C();
    v79 = sub_18B6C500C();
    v78 = v9;
    v11 = v10;
    v77 = v12;
    v13 = sub_18B6C4C3C();
    v14 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13, v15);
    v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v89 = 0xD000000000000021;
    v90 = 0x800000018B6FBEA0;
    sub_18B6C4CEC();
    sub_18B6C47FC();
    v5 = v18;
    v7 = v19;
    v20 = v13;
    v2 = v8;
    (*(v14 + 8))(v17, v20);
    LOBYTE(v84) = 0;
    sub_18B6C531C();
    v75 = v89;
    v76 = v90;
    LOBYTE(v89) = v11 & 1;
    v82 = v11 & 1;
    v83 = 257;
  }

  else
  {
    v79 = 0;
    v78 = 0;
    v77 = 0;
    v76 = 0;
    v75 = 0;
    v83 = 0;
    v82 = 0;
    v7 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4610);
  v74 = &v69;
  v22 = v21 - 8;
  v71 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v72 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (&v69 - v72);
  v81 = &v69 - v72;
  sub_18B4B6E30(v2, &v69 - v72);
  v26 = sub_18B6C4C3C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v70 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (&v69 - v70);
  v69 = 0x800000018B6FBEA0;
  v89 = 0xD000000000000021;
  v90 = 0x800000018B6FBEA0;
  sub_18B6C4CEC();
  sub_18B6C47FC();
  v32 = v31;
  v34 = v33;
  v35 = *(v27 + 8);
  v35(v30, v26);
  LOBYTE(v84) = 0;
  sub_18B6C531C();
  v36 = v89;
  v37 = v90;
  v38 = &v25[*(v22 + 44)];
  *v38 = v32;
  *(v38 + 1) = v34;
  v38[16] = v36;
  *(v38 + 3) = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4618);
  v73 = &v69;
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39, v42);
  v43 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18B4B79E0(v2, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v46 = (&v69 - v70);
  v89 = 0xD000000000000021;
  v90 = v69;
  sub_18B6C4CEC();
  sub_18B6C47FC();
  v48 = v47;
  v50 = v49;
  v35(v46, v26);
  LOBYTE(v84) = 0;
  v51 = sub_18B6C531C();
  v70 = &v69;
  v52 = v89;
  v53 = v90;
  v54 = &v43[*(v40 + 44)];
  *v54 = v48;
  *(v54 + 1) = v50;
  v54[16] = v52;
  *(v54 + 3) = v53;
  MEMORY[0x1EEE9AC00](v51, v55);
  v56 = (&v69 - v72);
  v57 = sub_18B4A63EC(v81, &v69 - v72, &qword_1EA9C4610);
  v72 = &v69;
  MEMORY[0x1EEE9AC00](v57, v58);
  sub_18B4A63EC(v43, v43, &qword_1EA9C4618);
  v59 = v79;
  *&v84 = v79;
  v60 = v78;
  *(&v84 + 1) = v78;
  *&v85 = v82;
  v61 = v77;
  *(&v85 + 1) = v77;
  *&v86 = v83;
  *(&v86 + 1) = v5;
  *&v87 = v7;
  v62 = v75;
  v63 = v76;
  *(&v87 + 1) = v75;
  v88 = v76;
  v64 = v80;
  *(v80 + 64) = v76;
  v65 = v87;
  v64[2] = v86;
  v64[3] = v65;
  v66 = v85;
  *v64 = v84;
  v64[1] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4620);
  sub_18B4A63EC(v56, v64 + *(v67 + 48), &qword_1EA9C4610);
  sub_18B4A63EC(v43, v64 + *(v67 + 64), &qword_1EA9C4618);
  sub_18B4A63EC(&v84, &v89, &qword_1EA9C4628);
  sub_18B4A6454(v43, &qword_1EA9C4618);
  sub_18B4A6454(v81, &qword_1EA9C4610);
  sub_18B4A6454(v43, &qword_1EA9C4618);
  sub_18B4A6454(v56, &qword_1EA9C4610);
  v89 = v59;
  v90 = v60;
  v91 = v82;
  v92 = v61;
  v93 = v83;
  v94 = v5;
  v95 = v7;
  v96 = v62;
  v97 = v63;
  return sub_18B4A6454(&v89, &qword_1EA9C4628);
}