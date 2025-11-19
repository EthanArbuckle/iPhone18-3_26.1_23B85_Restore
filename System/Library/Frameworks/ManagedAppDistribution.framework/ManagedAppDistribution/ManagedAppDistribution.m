uint64_t sub_1D953B690@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D953B768(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C70, &qword_1D95C11C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C78, &qword_1D95C11C8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C80, &qword_1D95C11D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[19];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[22];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[23];

  return v17(v18, a2, v16);
}

uint64_t sub_1D953B9A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C70, &qword_1D95C11C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C78, &qword_1D95C11C8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C80, &qword_1D95C11D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[19];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[23];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D953BC8C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t _s22ManagedAppDistribution8PlatformVwet_0(uint64_t a1, int a2)
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

uint64_t _s22ManagedAppDistribution8PlatformVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D953BDD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B8, &qword_1D95C26F8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D953BE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B8, &qword_1D95C26F8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D953BF00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062A0, &unk_1D95C2B40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D953BFBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062A0, &unk_1D95C2B40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D953C06C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D953C128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D953C1E4()
{
  sub_1D9564D80(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D953C24C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D95BFBAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D953C2F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D95BFBAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D953C438()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D953C470(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D953C490()
{
  v1 = *(v0 + 16);

  sub_1D953FCF0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D953C4DC()
{
  sub_1D9564D80(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D953C53C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D953C5B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07058, &qword_1D95C8F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D953C630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D953C6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D95BFBAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D953C730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D95BFBAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D953C7A0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D953C7D8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D953C810()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v2 = sub_1D95BFF6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D953C8C0()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB06030, &qword_1D95C2370);
  v2 = sub_1D95BFF6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v4 | 7);
}

uint64_t sub_1D953C97C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D953BC8C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1D953C994(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D953C9A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D953C9E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D953CA18(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D953C994(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1D953CA48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D953CAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D959039C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D953CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D953CBE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ManagedAppDeclaration.InstallBehavior(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D953CC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
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
    v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D953CD30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D953CDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D953CE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D953CEB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D953CEE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D953CF20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D953CF64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D953CF74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SiIeghy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D953CFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D95BFBAC();
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

uint64_t sub_1D953D080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D95BFBAC();
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

uint64_t CellularSettings.Prompt.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CellularSettings.Prompt.rawValue.getter()
{
  v1 = 0x696D694C7265764FLL;
  if (*v0 != 1)
  {
    v1 = 0x726576654ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C41;
  }
}

uint64_t sub_1D953D25C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696D694C7265764FLL;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x726576654ELL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x737961776C41;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x696D694C7265764FLL;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x726576654ELL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x737961776C41;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D95C041C();
  }

  return v11 & 1;
}

uint64_t sub_1D953D35C()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D953D3FC()
{
  *v0;
  *v0;
  sub_1D95BFE1C();
}

uint64_t sub_1D953D488()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D953D524@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CellularSettings.Prompt.init(rawValue:)(a1);
}

void sub_1D953D530(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x696D694C7265764FLL;
  if (v2 != 1)
  {
    v5 = 0x726576654ELL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737961776C41;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CellularSettings.defaultsKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall CellularSettings.init(for:)()
{
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[4];

  *v2 = v3;
  v2[1] = v4;
}

ManagedAppDistribution::CellularSettings_optional __swiftcall CellularSettings.init(defaultsKey:shouldCreate:)(Swift::String defaultsKey, Swift::Bool shouldCreate)
{
  object = defaultsKey._object;
  countAndFlagsBits = defaultsKey._countAndFlagsBits;
  v5 = v2;
  if (!shouldCreate)
  {
    v6 = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
    if (!*(v6 + 16) || (v7 = sub_1D953E644(countAndFlagsBits, object), (v8 & 1) == 0))
    {

      memset(v10, 0, sizeof(v10));
      LOBYTE(defaultsKey._countAndFlagsBits) = sub_1D953F434(v10);
      *v5 = 0;
      v5[1] = 0;
      return defaultsKey._countAndFlagsBits;
    }

    sub_1D953F4E4(*(v6 + 56) + 32 * v7, v10);

    LOBYTE(defaultsKey._countAndFlagsBits) = sub_1D953F434(v10);
  }

  *v5 = countAndFlagsBits;
  v5[1] = object;
  return defaultsKey._countAndFlagsBits;
}

id CellularSettings.allowAutomaticDownloads.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D95BFD8C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D95BFD8C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_1D953D764(unsigned __int8 *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D95BFD8C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1D95BFD8C();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1D953D82C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D95BFD8C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1D95BFD8C();
    [v4 setBool:v1 forKey:v5];
  }
}

void CellularSettings.allowAutomaticDownloads.setter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D95BFD8C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1D95BFD8C();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void (*CellularSettings.allowAutomaticDownloads.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D95BFD8C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1D95BFD8C();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1D953DAE0;
}

void sub_1D953DAE0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D95BFD8C();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_1D95BFD8C();
    [v5 setBool:v1 forKey:v4];
  }
}

uint64_t CellularSettings.cellularData.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  if (!*(v5 + 16) || (v6 = sub_1D953E644(v3, v4), (v7 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1D953F4E4(*(v5 + 56) + 32 * v6, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C28, &qword_1D95C1018);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = v15[0];
  sub_1D95C015C();
  if (!*(v9 + 16) || (v10 = sub_1D953E6BC(v14), (v11 & 1) == 0))
  {

    result = sub_1D953F540(v14);
    goto LABEL_11;
  }

  sub_1D953F4E4(*(v9 + 56) + 32 * v10, v15);
  sub_1D953F540(v14);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v12 = sub_1D95C026C();

  if (v12 >= 3)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

LABEL_12:
  *a1 = v13;
  return result;
}

uint64_t sub_1D953DD50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  result = CellularSettings.cellularData.getter(&v5);
  *a2 = v5;
  return result;
}

void CellularSettings.cellularData.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  if (*(v5 + 16) && (v6 = sub_1D953E644(v3, v4), (v7 & 1) != 0))
  {
    sub_1D953F4E4(*(v5 + 56) + 32 * v6, &v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C28, &qword_1D95C1018);
    if (swift_dynamicCast())
    {
      v8 = v16;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = sub_1D953F594(MEMORY[0x1E69E7CC0]);
LABEL_7:
  *&v16 = 0xD000000000000012;
  *(&v16 + 1) = 0x80000001D95CFFF0;
  v9 = MEMORY[0x1E69E6158];
  sub_1D95C015C();
  if (v2)
  {
    if (v2 == 1)
    {
      v10 = 0xE900000000000074;
      v11 = 0x696D694C7265764FLL;
    }

    else
    {
      v10 = 0xE500000000000000;
      v11 = 0x726576654ELL;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    v11 = 0x737961776C41;
  }

  v17 = v9;
  *&v16 = v11;
  *(&v16 + 1) = v10;
  sub_1D953F6D0(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D953F09C(v15, &v18, isUniquelyReferenced_nonNull_native);
  sub_1D953F540(&v18);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C28, &qword_1D95C1018);
  v19 = v13;
  *&v18 = v8;
  *&v15[0] = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  if (v13)
  {
    sub_1D953F6D0(&v18, &v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D953EF4C(&v16, v3, v4, v14);
  }

  else
  {
    sub_1D953F434(&v18);
    sub_1D953EA20(v3, v4, &v16);
    sub_1D953F434(&v16);
  }

  _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0();
}

void (*CellularSettings.cellularData.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  CellularSettings.cellularData.getter((a1 + 8));
  return sub_1D953E060;
}

void sub_1D953E060(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  CellularSettings.cellularData.setter(v4);
}

uint64_t CellularSettings.emulateRoaming.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  if (*(v3 + 16) && (v4 = sub_1D953E644(v1, v2), (v5 & 1) != 0))
  {
    sub_1D953F4E4(*(v3 + 56) + 32 * v4, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C28, &qword_1D95C1018);
    if (swift_dynamicCast())
    {
      v6 = v12[0];
      strcpy(v10, "EmulateRoaming");
      v10[15] = -18;
      sub_1D95C015C();
      if (*(v6 + 16) && (v7 = sub_1D953E6BC(v11), (v8 & 1) != 0))
      {
        sub_1D953F4E4(*(v6 + 56) + 32 * v7, v12);
        sub_1D953F540(v11);

        if (swift_dynamicCast())
        {
          return v10[0];
        }
      }

      else
      {

        sub_1D953F540(v11);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D953E208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = CellularSettings.emulateRoaming.getter();
  *a2 = result & 1;
  return result;
}

void CellularSettings.emulateRoaming.setter(char a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  if (*(v5 + 16) && (v6 = sub_1D953E644(v3, v4), (v7 & 1) != 0))
  {
    sub_1D953F4E4(*(v5 + 56) + 32 * v6, &v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C28, &qword_1D95C1018);
    if (swift_dynamicCast())
    {
      v8 = *v13;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = sub_1D953F594(MEMORY[0x1E69E7CC0]);
LABEL_7:
  strcpy(v13, "EmulateRoaming");
  v13[15] = -18;
  sub_1D95C015C();
  v14 = MEMORY[0x1E69E6370];
  v13[0] = a1 & 1;
  sub_1D953F6D0(v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D953F09C(v12, &v15, isUniquelyReferenced_nonNull_native);
  sub_1D953F540(&v15);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C28, &qword_1D95C1018);
  v16 = v10;
  *&v15 = v8;
  *&v12[0] = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  if (v10)
  {
    sub_1D953F6D0(&v15, v13);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D953EF4C(v13, v3, v4, v11);
  }

  else
  {
    sub_1D953F434(&v15);
    sub_1D953EA20(v3, v4, v13);
    sub_1D953F434(v13);
  }

  _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0();
}

void (*CellularSettings.emulateRoaming.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  *(a1 + 8) = CellularSettings.emulateRoaming.getter() & 1;
  return sub_1D953E4B4;
}

Swift::Void __swiftcall CellularSettings.delete()()
{
  v1 = *v0;
  v2 = v0[1];
  memset(v5, 0, sizeof(v5));
  v4 = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  sub_1D953F434(v5);
  sub_1D953EA20(v1, v2, v3);
  sub_1D953F434(v3);
  _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0();
}

unint64_t sub_1D953E548@<X0>(unint64_t *a1@<X8>)
{
  result = _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0();
  *a1 = result;
  return result;
}

void sub_1D953E570(uint64_t *a1)
{
  v1 = *a1;

  _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0();
}

void sub_1D953E5E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0();
  }

  else
  {
    v4 = *a1;

    _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0();
  }
}

unint64_t sub_1D953E644(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D95C051C();
  sub_1D95BFE1C();
  v6 = sub_1D95C055C();

  return sub_1D953E7B0(a1, a2, v6);
}

unint64_t sub_1D953E6BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D95C013C();

  return sub_1D953E868(a1, v5);
}

unint64_t sub_1D953E700(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  sub_1D95C051C();
  if (a3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](a1);
  }

  v8 = sub_1D95C055C();

  return sub_1D953E930(a1, a2, a3 & 1, v8);
}

unint64_t sub_1D953E7B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D95C041C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D953E868(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D953FD4C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA7327A0](v9, a1);
      sub_1D953F540(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D953E930(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      if (*(v13 + 16) == 1)
      {
        if (a3)
        {
          v15 = v14 == a1 && v13[1] == a2;
          if (v15 || (sub_1D95C041C() & 1) != 0)
          {
            return v7;
          }
        }
      }

      else if ((a3 & 1) == 0 && v14 == a1)
      {
        return v7;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

double sub_1D953EA20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D953E644(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D95AB124();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1D953F6D0((*(v12 + 56) + 32 * v9), a3);
    sub_1D953EB70(v9, v12);
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

unint64_t sub_1D953EAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  result = sub_1D953E700(a1, a2, a3 & 1);
  if (v9)
  {
    v10 = result;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v14 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D95AB758();
      v13 = v14;
    }

    sub_1D953FCF0(*(*(v13 + 48) + 24 * v10), *(*(v13 + 48) + 24 * v10 + 8), *(*(v13 + 48) + 24 * v10 + 16));
    *a4 = *(*(v13 + 56) + 8 * v10);
    result = sub_1D953ED20(v10, v13);
    *v5 = v13;
  }

  else
  {
    *a4 = 0xF000000000000007;
  }

  return result;
}

uint64_t sub_1D953EB70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D95C011C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1D95C051C();

      sub_1D95BFE1C();
      v14 = sub_1D95C055C();

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

uint64_t sub_1D953ED20(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D95C011C() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v8;
      v10 = 24 * v6;
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = *(v2 + 48) + 24 * v6;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_1D95C051C();
      if (v16 == 1)
      {
        MEMORY[0x1DA732B80](1);

        sub_1D95BFE1C();
      }

      else
      {
        MEMORY[0x1DA732B80](0);
        MEMORY[0x1DA732BA0](v14);
      }

      v17 = sub_1D95C055C();
      result = sub_1D953FCF0(v14, v15, v16);
      v18 = v17 & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v29;
        v2 = v12;
        if (v18 < v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        v2 = v12;
        if (v18 >= v9)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v18)
      {
LABEL_13:
        v19 = *(v2 + 48);
        v20 = v19 + 24 * v3;
        v21 = (v19 + v10);
        if (24 * v3 < v10 || v20 >= v21 + 24 || v3 != v6)
        {
          v22 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

_OWORD *sub_1D953EF4C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D953E644(a2, a3);
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
      sub_1D95AB124();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D95AA32C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D953E644(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D95C04BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1D953F6D0(a1, v23);
  }

  else
  {
    sub_1D958D8E8(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1D953F09C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D953E6BC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D95AB2C8();
      goto LABEL_7;
    }

    sub_1D95AA5E4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1D953E6BC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D953FD4C(a2, v22);
      return sub_1D958D954(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1D95C04BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1D953F6D0(a1, v17);
}

unint64_t sub_1D953F1E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C60, &unk_1D95CD470);
    v3 = sub_1D95C025C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D953FDA8(v4, &v13, &qword_1ECB05C68, &qword_1D95C1180);
      v5 = v13;
      v6 = v14;
      result = sub_1D953E644(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D953F6D0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D95BFD8C();
  v2 = [v0 initWithSuiteName_];

  if (v2 && (v3 = sub_1D95BFD8C(), v4 = [v2 dictionaryForKey_], v2, v3, v4))
  {
    v5 = sub_1D95BFD2C();

    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1D953F1E8(v7);
  }
}

uint64_t sub_1D953F434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C20, &qword_1D95C1010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1D953F4E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D953F594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C50, &qword_1D95C1168);
    v3 = sub_1D95C025C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D953FDA8(v4, v13, &qword_1ECB05C58, &unk_1D95C1170);
      result = sub_1D953E6BC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D953F6D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1D953F6D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void _s22ManagedAppDistribution16CellularSettingsV18settingsDictionarySDySSypGvsZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D95BFD8C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1D95BFD1C();

    v4 = sub_1D95BFD8C();
    [v2 setObject:v3 forKey:v4];
  }

  else
  {
  }
}

unint64_t sub_1D953F814()
{
  result = qword_1ECB05C30;
  if (!qword_1ECB05C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05C30);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D953F874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D953F8BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CellularSettings.Prompt(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CellularSettings.Prompt(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D953FA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C48, &qword_1D95C1160);
    v3 = sub_1D95C025C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D953E644(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D953FB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C40, &unk_1D95CD420);
    v3 = sub_1D95C025C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_1D953FCA8(v5, v6, v7);
      sub_1D953FCB8(v8);
      result = sub_1D953E700(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D953FCA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D953FCB8(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

uint64_t sub_1D953FCF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
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

uint64_t sub_1D953FDA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D953FE1C(uint64_t a1, int a2)
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

uint64_t sub_1D953FE3C(uint64_t result, int a2, int a3)
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

void sub_1D953FE78(uint64_t a1, unint64_t *a2)
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

uint64_t ManagedApp.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedApp.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedApp.itemID.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ManagedApp.externalVersionID.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t type metadata accessor for ManagedApp()
{
  result = qword_1EDCFA038;
  if (!qword_1EDCFA038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManagedApp.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.seller.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.genres.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManagedApp() + 56));
}

uint64_t ManagedApp.description.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.languages.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManagedApp() + 64));
}

uint64_t ManagedApp.requirements.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.version.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.releaseNotes.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.iconURL(fitting:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C88, &qword_1D95C11D8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v11 = &v37 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v14 = &v37 - v13;
  v15 = type metadata accessor for ManagedApp();
  v16 = v15;
  v17 = (v3 + *(v15 + 84));
  v18 = v17[1];
  if (v18)
  {
    v37 = v15;
    v19 = *v17;
    v20 = v17[2];
    v39 = v17[3];
    v40 = v20;
    v21 = objc_opt_self();

    v22 = [v21 screenScale];
    v41 = a1;
    v38 = v3;
    if (v22)
    {
      v44 = 0.0;
      LOBYTE(v45) = 1;
      v23 = v22;
      MEMORY[0x1DA732290](v22, &v44);

      if (v45)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v44;
      }
    }

    else
    {
      v24 = 1.0;
    }

    v42 = v19;
    v43 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C98, &qword_1D95C11E8);
    v26 = sub_1D95BFC4C();
    MEMORY[0x1EEE9AC00](v26);
    *(&v37 - 12) = a2;
    *(&v37 - 11) = a3;
    *(&v37 - 10) = v24;
    *(&v37 - 9) = v19;
    *(&v37 - 8) = v18;
    v27 = v39;
    *(&v37 - 7) = v40;
    *(&v37 - 6) = v27;
    *(&v37 - 5) = 25719;
    v28 = sub_1D9543D5C();
    v29 = sub_1D9543DB0();
    v30 = sub_1D9547F60(&qword_1ECB05CB0, &qword_1ECB05C88, &qword_1D95C11D8);
    v35 = v29;
    v36 = v30;
    v34 = v28;
    sub_1D95C006C();
    (*(v8 + 8))(v11, v7);

    sub_1D95BFB8C();

    v25 = sub_1D95BFBAC();
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v14, 1, v25) != 1)
    {
      v33 = v41;
      (*(v31 + 32))(v41, v14, v25);
      return (*(v31 + 56))(v33, 0, 1, v25);
    }

    a1 = v41;
    v16 = v37;
    v3 = v38;
  }

  else
  {
    v25 = sub_1D95BFBAC();
    (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  }

  sub_1D953FDA8(v3 + *(v16 + 88), a1, &qword_1ECB05C90, &qword_1D95C11E0);
  sub_1D95BFBAC();
  result = (*(*(v25 - 8) + 48))(v14, 1, v25);
  if (result != 1)
  {
    return sub_1D9547EAC(v14, &qword_1ECB05C90, &qword_1D95C11E0);
  }

  return result;
}

uint64_t ManagedApp.icon(fitting:)(double a1, double a2)
{
  *(v3 + 168) = v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CB8, &qword_1D95C11F8);
  *(v3 + 176) = v4;
  v5 = *(v4 - 8);
  *(v3 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v7 = sub_1D95BFB6C();
  *(v3 + 200) = v7;
  v8 = *(v7 - 8);
  *(v3 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v10 = sub_1D95BFC9C();
  *(v3 + 224) = v10;
  v11 = *(v10 - 8);
  *(v3 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0) - 8) + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  v15 = sub_1D95BFBAC();
  *(v3 + 272) = v15;
  v16 = *(v15 - 8);
  *(v3 + 280) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95409AC, 0, 0);
}

uint64_t sub_1D95409AC()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[21];
  v5 = type metadata accessor for ManagedApp();
  sub_1D953FDA8(v4 + *(v5 + 92), v1, &qword_1ECB05CC0, &qword_1D95C1200);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[35] + 56))(v0[33], 1, 1, v0[34]);
  }

  else
  {
    v6 = v0[33];
    v8 = v0[30];
    v7 = v0[31];
    v9 = v0[28];
    v10 = v0[29];
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[25];
    (*(v10 + 32))(v7, v0[32], v9);
    (*(v10 + 16))(v8, v7, v9);
    (*(v12 + 104))(v11, *MEMORY[0x1E6968F70], v13);
    sub_1D9540FB0(v8, v11, v6);
    (*(v10 + 8))(v7, v9);
  }

  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[33];
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_1D9547EAC(v16, &qword_1ECB05C90, &qword_1D95C11E0);
    v17 = v0[36];
    v18 = v0[32];
    v19 = v0[33];
    v21 = v0[30];
    v20 = v0[31];
    v22 = v0[27];
    v23 = v0[24];

    v24 = v0[1];

    return v24(0);
  }

  else
  {
    v27 = v0[23];
    v26 = v0[24];
    v28 = v0[22];
    v30 = *(v0 + 19);
    v29 = *(v0 + 20);
    (*(v14 + 32))(v0[36], v16, v15);
    v31 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v32 = sub_1D95BFB7C();
    v33 = [v31 initWithURL_];
    v0[37] = v33;

    v34 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:v30 scale:{v29, 1.0}];
    v0[38] = v34;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D9540DE4;
    swift_continuation_init();
    v0[17] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC8, &qword_1D95C1208);
    sub_1D95BFF3C();
    (*(v27 + 32))(boxed_opaque_existential_0, v26, v28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D95412C4;
    v0[13] = &block_descriptor;
    [v33 getCGImageForImageDescriptor:v34 completion:?];
    (*(v27 + 8))(boxed_opaque_existential_0, v28);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D9540DE4()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D9540EC4, 0, 0);
}

uint64_t sub_1D9540EC4()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 144);

  v6 = *(v0 + 288);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 216);
  v12 = *(v0 + 192);

  v13 = *(v0 + 8);

  return v13(v5);
}

uint64_t sub_1D9540FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = v26 - v7;
  v8 = sub_1D95BFB6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D95BFC9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_1D95BFE2C();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = sub_1D95BFBAC();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    sub_1D95BFB9C();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = sub_1D95BFBAC();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

uint64_t sub_1D95412C4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CB8, &qword_1D95C11F8);
  return sub_1D95BFF5C();
}

void *ManagedApp.screenshotURLs(fitting:)(double a1, double a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C88, &qword_1D95C11D8);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_1D95BFBAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ManagedApp();
  v17 = *(v2 + *(result + 24));
  v50 = *(v17 + 16);
  if (v50)
  {
    v18 = 0;
    v45 = (v13 + 48);
    v46 = (v5 + 8);
    v43 = v13;
    v44 = (v13 + 32);
    v19 = (v17 + 56);
    v54 = MEMORY[0x1E69E7CC0];
    v48 = v12;
    v49 = v11;
    v47 = v17;
    v20 = v52;
    while (v18 < *(v17 + 16))
    {
      v21 = *(v19 - 3);
      v22 = *(v19 - 2);
      v23 = *(v19 - 1);
      v55 = *v19;
      v56 = v23;
      v24 = objc_opt_self();

      v25 = [v24 screenScale];
      if (v25)
      {
        v59 = 0.0;
        LOBYTE(v60) = 1;
        v26 = v25;
        MEMORY[0x1DA732290](v25, &v59);

        if (v60)
        {
          v27 = 1.0;
        }

        else
        {
          v27 = v59;
        }
      }

      else
      {
        v27 = 1.0;
      }

      v57 = v21;
      v58 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C98, &qword_1D95C11E8);
      v28 = sub_1D95BFC4C();
      MEMORY[0x1EEE9AC00](v28);
      *(&v43 - 12) = a1;
      *(&v43 - 11) = a2;
      *(&v43 - 10) = v27;
      *(&v43 - 9) = v21;
      *(&v43 - 8) = v22;
      v29 = v55;
      *(&v43 - 7) = v56;
      *(&v43 - 6) = v29;
      *(&v43 - 5) = 25186;
      v30 = sub_1D9543D5C();
      v31 = sub_1D9543DB0();
      v32 = sub_1D9547F60(&qword_1ECB05CB0, &qword_1ECB05C88, &qword_1D95C11D8);
      v41 = v31;
      v42 = v32;
      v40 = v30;
      v33 = v53;
      sub_1D95C006C();
      (*v46)(v20, v33);

      v34 = v49;
      sub_1D95BFB8C();

      v35 = v48;
      if ((*v45)(v34, 1, v48) == 1)
      {
        result = sub_1D9547EAC(v34, &qword_1ECB05C90, &qword_1D95C11E0);
      }

      else
      {
        v36 = *v44;
        (*v44)(v51, v34, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1D9547050(0, v54[2] + 1, 1, v54);
        }

        v38 = v54[2];
        v37 = v54[3];
        if (v38 >= v37 >> 1)
        {
          v54 = sub_1D9547050(v37 > 1, v38 + 1, 1, v54);
        }

        v39 = v54;
        v54[2] = v38 + 1;
        result = (v36)(v39 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, v51, v35);
      }

      ++v18;
      v19 += 4;
      v17 = v47;
      if (v50 == v18)
      {
        return v54;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ManagedApp.contentRating.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.licenseAgreement.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ManagedApp() + 112)) == 1 && (*(v1 + 40) & 1) == 0)
  {
    v6 = *(v1 + 32);
    sub_1D95C01BC();
    MEMORY[0x1DA732490](0xD000000000000045, 0x80000001D95D0190);
    v7 = sub_1D95C040C();
    MEMORY[0x1DA732490](v7);

    sub_1D95BFB8C();
  }

  else
  {
    v3 = sub_1D95BFBAC();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }
}

uint64_t ManagedApp.copyright.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 116));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ManagedApp.buyParams.getter()
{
  v1 = (v0 + *(type metadata accessor for ManagedApp() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D9541B10()
{
  if (*v0)
  {
    result = 1919251317;
  }

  else
  {
    result = 0x6D6574737973;
  }

  *v0;
  return result;
}

uint64_t sub_1D9541B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D9541C24(uint64_t a1)
{
  v2 = sub_1D9547228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9541C60(uint64_t a1)
{
  v2 = sub_1D9547228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9541CA8(uint64_t a1)
{
  v2 = sub_1D95472D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9541CE4(uint64_t a1)
{
  v2 = sub_1D95472D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9541D20(uint64_t a1)
{
  v2 = sub_1D954727C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9541D5C(uint64_t a1)
{
  v2 = sub_1D954727C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedApp.ManagementScope.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CD0, &qword_1D95C1210);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CD8, &qword_1D95C1218);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CE0, &qword_1D95C1220);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547228();
  sub_1D95C05BC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1D954727C();
    sub_1D95C034C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1D95472D0();
    sub_1D95C034C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t ManagedApp.ManagementScope.hashValue.getter(char a1)
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](a1 & 1);
  return sub_1D95C055C();
}

uint64_t sub_1D95420E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9542114()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9542148()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1D954217C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1D95421A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D95421DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9542210()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9542244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D954754C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D95422CC()
{
  if (*v0)
  {
    result = 1684099177;
  }

  else
  {
    result = 0x656E6F685069;
  }

  *v0;
  return result;
}

uint64_t sub_1D95422FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684099177 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D95423D4(uint64_t a1)
{
  v2 = sub_1D9547988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9542410(uint64_t a1)
{
  v2 = sub_1D9547988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D954244C(uint64_t a1)
{
  v2 = sub_1D95479DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9542488(uint64_t a1)
{
  v2 = sub_1D95479DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95424C4(uint64_t a1)
{
  v2 = sub_1D9547A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9542500(uint64_t a1)
{
  v2 = sub_1D9547A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedApp.BinaryCompatibility.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D00, &qword_1D95C1228);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D08, &qword_1D95C1230);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D10, &qword_1D95C1238);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547988();
  sub_1D95C05BC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D95479DC();
    v18 = v22;
    sub_1D95C034C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D9547A30();
    sub_1D95C034C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ManagedApp.BinaryCompatibility.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D30, &qword_1D95C1240);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D38, &qword_1D95C1248);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D40, &unk_1D95C1250);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547988();
  v17 = v37;
  sub_1D95C059C();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1D95C032C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1D95C01FC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v25 = &type metadata for ManagedApp.BinaryCompatibility;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1D95479DC();
    sub_1D95C027C();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1D9547A30();
    sub_1D95C027C();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t ManagedApp.binaryCompatibility.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ManagedApp();
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t sub_1D9542CD4()
{
  if (*v0)
  {
    result = 1919251317;
  }

  else
  {
    result = 0x656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_1D9542D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D9542DDC(uint64_t a1)
{
  v2 = sub_1D9547A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9542E18(uint64_t a1)
{
  v2 = sub_1D9547A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9542E54(uint64_t a1)
{
  v2 = sub_1D9547B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9542E90(uint64_t a1)
{
  v2 = sub_1D9547B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9542ECC(uint64_t a1)
{
  v2 = sub_1D9547AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9542F08(uint64_t a1)
{
  v2 = sub_1D9547AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedApp.License.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D50, &qword_1D95C1260);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D58, &qword_1D95C1268);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D60, &qword_1D95C1270);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547A84();
  sub_1D95C05BC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D9547AD8();
    v18 = v22;
    sub_1D95C034C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D9547B2C();
    sub_1D95C034C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t _s22ManagedAppDistribution0aB0V19BinaryCompatibilityO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t ManagedApp.License.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D80, &qword_1D95C1278);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D88, &qword_1D95C1280);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D90, &qword_1D95C1288);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547A84();
  v17 = v37;
  sub_1D95C059C();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1D95C032C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1D95C01FC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v25 = &type metadata for ManagedApp.License;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1D9547AD8();
    sub_1D95C027C();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1D9547B2C();
    sub_1D95C027C();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_1D9543690()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t ManagedApp.license.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ManagedApp();
  *a1 = *(v1 + *(result + 132));
  return result;
}

uint64_t ManagedApp.init(declarationIdentifier:bundleID:itemID:externalVersionID:platform:fileSize:metadataLanguage:name:subtitle:seller:genres:description:languages:requirements:version:releaseDate:releaseNotes:icon:iconURL:iconPath:screenshots:contentRating:developerWebsite:privacyPolicy:hasLicenseAgreement:copyright:buyParams:scope:binaryCompatibility:license:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _OWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, char *a44, char *a45)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  v60 = *a44;
  v61 = *a45;
  *(a9 + 64) = *a10;
  v46 = type metadata accessor for ManagedApp();
  sub_1D9547B80(a11, a9 + v46[9], &qword_1ECB05C70, &qword_1D95C11C0);
  sub_1D9547B80(a12, a9 + v46[10], &qword_1ECB05C78, &qword_1D95C11C8);
  v47 = (a9 + v46[11]);
  *v47 = a13;
  v47[1] = a14;
  v48 = (a9 + v46[12]);
  *v48 = a15;
  v48[1] = a16;
  v49 = (a9 + v46[13]);
  *v49 = a17;
  v49[1] = a18;
  *(a9 + v46[14]) = a19;
  v50 = (a9 + v46[15]);
  *v50 = a20;
  v50[1] = a21;
  *(a9 + v46[16]) = a22;
  v51 = (a9 + v46[17]);
  *v51 = a23;
  v51[1] = a24;
  v52 = (a9 + v46[18]);
  *v52 = a25;
  v52[1] = a26;
  sub_1D9547B80(a27, a9 + v46[19], &qword_1ECB05C80, &qword_1D95C11D0);
  v53 = (a9 + v46[20]);
  *v53 = a28;
  v53[1] = a29;
  v54 = (a9 + v46[21]);
  v55 = a30[1];
  *v54 = *a30;
  v54[1] = v55;
  sub_1D9547B80(a31, a9 + v46[22], &qword_1ECB05C90, &qword_1D95C11E0);
  sub_1D9547B80(a32, a9 + v46[23], &qword_1ECB05CC0, &qword_1D95C1200);
  *(a9 + v46[24]) = a33;
  v56 = (a9 + v46[25]);
  *v56 = a34;
  v56[1] = a35;
  sub_1D9547B80(a36, a9 + v46[26], &qword_1ECB05C90, &qword_1D95C11E0);
  result = sub_1D9547B80(a37, a9 + v46[27], &qword_1ECB05C90, &qword_1D95C11E0);
  *(a9 + v46[28]) = a38;
  v58 = (a9 + v46[29]);
  *v58 = a39;
  v58[1] = a40;
  v59 = (a9 + v46[30]);
  *v59 = a41;
  v59[1] = a42;
  *(a9 + v46[31]) = a43 & 1;
  *(a9 + v46[32]) = v60;
  *(a9 + v46[33]) = v61;
  return result;
}

void __swiftcall ManagedApp.Artwork.init(urlTemplate:maxWidth:maxHeight:)(Swift::String urlTemplate, Swift::Int maxWidth, Swift::Int maxHeight)
{
  *v3 = urlTemplate;
  v3[1]._countAndFlagsBits = maxWidth;
  v3[1]._object = maxHeight;
}

uint64_t sub_1D9543A60@<X0>(uint64_t a1@<X5>, unint64_t a2@<X6>, uint64_t a3@<X7>, void *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, unint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FE8, &qword_1D95C2170);
  sub_1D95BFC5C();
  if (sub_1D9549720(119, 0xE100000000000000, v24, v25, v26, v27))
  {

    v13 = floor(a5 * a7);
    v14 = ceil(a5 * a7);
    if (COERCE__INT64(a5 * a7) >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (sub_1D9549720(104, 0xE100000000000000, v24, v25, v26, v27))
  {

    v16 = floor(a6 * a7);
    v17 = ceil(a6 * a7);
    if (COERCE__INT64(a6 * a7) >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v18 > -9.22337204e18)
      {
        if (v18 < 9.22337204e18)
        {
LABEL_16:
          v19 = sub_1D95C040C();
          MEMORY[0x1DA732490](v19);

          a1 = 0;
          a2 = 0xE000000000000000;
LABEL_17:
          *a4 = a1;
          a4[1] = a2;
          return result;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (sub_1D9549720(99, 0xE100000000000000, v24, v25, v26, v27))
  {

    goto LABEL_17;
  }

  v21 = sub_1D9549720(102, 0xE100000000000000, v24, v25, v26, v27);

  if (v21)
  {
    a2 = a8;

    a1 = a3;
    goto LABEL_17;
  }

LABEL_28:
  result = sub_1D95C021C();
  __break(1u);
  return result;
}

unint64_t sub_1D9543D5C()
{
  result = qword_1ECB05CA0;
  if (!qword_1ECB05CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05CA0);
  }

  return result;
}

unint64_t sub_1D9543DB0()
{
  result = qword_1ECB05CA8;
  if (!qword_1ECB05CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05CA8);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D9543EDC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  return sub_1D9543A60(*(v1 + 72), *(v1 + 80), *(v1 + 88), a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 96));
}

BOOL static ManagedApp.Artwork.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1D95C041C();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t sub_1D9543F9C()
{
  v1 = 0x687464695778616DLL;
  if (*v0 != 1)
  {
    v1 = 0x686769654878616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C706D65546C7275;
  }
}

uint64_t sub_1D9544004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D954978C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D954402C(uint64_t a1)
{
  v2 = sub_1D9547BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9544068(uint64_t a1)
{
  v2 = sub_1D9547BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedApp.Artwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D98, &qword_1D95C1290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547BE8();
  sub_1D95C05BC();
  v17 = 0;
  v12 = v14[3];
  sub_1D95C038C();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_1D95C03BC();
  v15 = 2;
  sub_1D95C03BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedApp.Artwork.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D95BFE1C();
  MEMORY[0x1DA732B80](v3);
  return MEMORY[0x1DA732B80](v4);
}

uint64_t ManagedApp.Artwork.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D95C051C();
  sub_1D95BFE1C();
  MEMORY[0x1DA732B80](v3);
  MEMORY[0x1DA732B80](v4);
  return sub_1D95C055C();
}

uint64_t ManagedApp.Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DA8, &qword_1D95C1298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547BE8();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1D95C02CC();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  v18 = sub_1D95C02FC();
  v19 = 2;
  v16 = sub_1D95C02FC();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v18;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1D9544524(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x44496D657469;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6D726F6674616C70;
      break;
    case 5:
      result = 0x657A6953656C6966;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0x656C746974627573;
      break;
    case 9:
      result = 0x72656C6C6573;
      break;
    case 10:
      result = 0x7365726E6567;
      break;
    case 11:
      result = 0x7470697263736564;
      break;
    case 12:
      result = 0x65676175676E616CLL;
      break;
    case 13:
      result = 0x6D65726975716572;
      break;
    case 14:
      result = 0x6E6F6973726576;
      break;
    case 15:
      result = 0x44657361656C6572;
      break;
    case 16:
      result = 0x4E657361656C6572;
      break;
    case 17:
      result = 1852793705;
      break;
    case 18:
      result = 0x4C52556E6F6369;
      break;
    case 19:
      result = 0x687461506E6F6369;
      break;
    case 20:
      result = 0x68736E6565726373;
      break;
    case 21:
      result = 0x52746E65746E6F63;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x5079636176697270;
      break;
    case 24:
    case 28:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x6867697279706F63;
      break;
    case 26:
      result = 0x6D61726150797562;
      break;
    case 27:
      result = 0x65706F6373;
      break;
    case 29:
      result = 0x65736E6563696CLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1D9544840()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D95C051C();
  sub_1D95BFE1C();
  MEMORY[0x1DA732B80](v3);
  MEMORY[0x1DA732B80](v4);
  return sub_1D95C055C();
}

uint64_t sub_1D95448B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D95BFE1C();
  MEMORY[0x1DA732B80](v3);
  return MEMORY[0x1DA732B80](v4);
}

uint64_t sub_1D9544900()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D95C051C();
  sub_1D95BFE1C();
  MEMORY[0x1DA732B80](v3);
  MEMORY[0x1DA732B80](v4);
  return sub_1D95C055C();
}

BOOL sub_1D95449A4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_1D95C041C();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t sub_1D9544A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95498B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9544A64(uint64_t a1)
{
  v2 = sub_1D9547C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9544AA0(uint64_t a1)
{
  v2 = sub_1D9547C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9544ADC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static ManagedApp.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

uint64_t ManagedApp.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D95BFE1C();
}

uint64_t ManagedApp.hashValue.getter()
{
  sub_1D95C051C();
  v1 = *v0;
  v2 = v0[1];
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D9544B64()
{
  sub_1D95C051C();
  v1 = *v0;
  v2 = v0[1];
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D9544BA8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D95BFE1C();
}

uint64_t sub_1D9544BB0()
{
  sub_1D95C051C();
  v1 = *v0;
  v2 = v0[1];
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t sub_1D9544BF0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D95C041C();
  }
}

uint64_t ManagedApp.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DB0, &qword_1D95C12A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v61 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547C3C();
  sub_1D95C05BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v63) = 0;
  sub_1D95C038C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v63) = 1;
    sub_1D95C038C();
    v15 = v3[4];
    v16 = *(v3 + 40);
    LOBYTE(v63) = 2;
    sub_1D95C037C();
    v17 = v3[6];
    v18 = *(v3 + 56);
    LOBYTE(v63) = 3;
    sub_1D95C037C();
    v63 = v3[8];
    v66 = 4;
    sub_1D9547C90();
    sub_1D95C03CC();
    v62 = type metadata accessor for ManagedApp();
    v19 = v62[9];
    LOBYTE(v63) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DC8, &qword_1D95C12A8);
    sub_1D9547F60(&qword_1ECB05DD0, &qword_1ECB05DC8, &qword_1D95C12A8);
    sub_1D95C036C();
    v20 = v62;
    v21 = v62[10];
    LOBYTE(v63) = 6;
    sub_1D95BFC1C();
    sub_1D9548474(&qword_1ECB05DD8, MEMORY[0x1E6969720]);
    sub_1D95C036C();
    v22 = (v3 + v20[11]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v63) = 7;
    sub_1D95C038C();
    v25 = (v3 + v20[12]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v63) = 8;
    sub_1D95C035C();
    v28 = (v3 + v20[13]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v63) = 9;
    sub_1D95C035C();
    v63 = *(v3 + v20[14]);
    v66 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
    sub_1D9547FA8(&qword_1ECB05DE8);
    sub_1D95C03CC();
    v31 = (v3 + v62[15]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v63) = 11;
    sub_1D95C035C();
    v63 = *(v3 + v62[16]);
    v66 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DF0, &qword_1D95C12B8);
    sub_1D9548014(&qword_1ECB05DF8, &qword_1ECB05DD8);
    sub_1D95C03CC();
    v34 = (v3 + v62[17]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v63) = 13;
    sub_1D95C035C();
    v37 = (v3 + v62[18]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v63) = 14;
    sub_1D95C035C();
    v40 = v62[19];
    LOBYTE(v63) = 15;
    sub_1D95BFBDC();
    sub_1D9548474(&qword_1ECB05E00, MEMORY[0x1E6969530]);
    sub_1D95C036C();
    v41 = (v3 + v62[20]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v63) = 16;
    sub_1D95C035C();
    v44 = (v3 + v62[21]);
    v45 = v44[3];
    v63 = *v44;
    v64 = *(v44 + 1);
    v65 = v45;
    v66 = 17;
    sub_1D9547CE4();

    sub_1D95C036C();

    v46 = v62[22];
    LOBYTE(v63) = 18;
    sub_1D95BFBAC();
    sub_1D9548474(&qword_1ECB05E10, MEMORY[0x1E6968FB0]);
    sub_1D95C036C();
    v47 = v62[23];
    LOBYTE(v63) = 19;
    sub_1D95BFC9C();
    sub_1D9548474(&qword_1ECB05E18, MEMORY[0x1E69E83A8]);
    sub_1D95C036C();
    v63 = *(v3 + v62[24]);
    v66 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05E20, &qword_1D95C12C0);
    sub_1D9547D38(&qword_1ECB05E28, sub_1D9547CE4);
    sub_1D95C03CC();
    v48 = (v3 + v62[25]);
    v49 = *v48;
    v50 = v48[1];
    LOBYTE(v63) = 21;
    sub_1D95C035C();
    v51 = v62[26];
    LOBYTE(v63) = 22;
    sub_1D95C036C();
    v52 = v62[27];
    LOBYTE(v63) = 23;
    sub_1D95C036C();
    v53 = *(v3 + v62[28]);
    LOBYTE(v63) = 24;
    sub_1D95C039C();
    v54 = (v3 + v62[29]);
    v55 = *v54;
    v56 = v54[1];
    LOBYTE(v63) = 25;
    sub_1D95C035C();
    v57 = (v3 + v62[30]);
    v58 = *v57;
    v59 = v57[1];
    LOBYTE(v63) = 26;
    sub_1D95C035C();
    LOBYTE(v63) = *(v3 + v62[31]);
    v66 = 27;
    sub_1D9547DB0();
    sub_1D95C03CC();
    LOBYTE(v63) = *(v3 + v62[32]);
    v66 = 28;
    sub_1D9547E04();
    sub_1D95C036C();
    LOBYTE(v63) = *(v3 + v62[33]);
    v66 = 29;
    sub_1D9547E58();
    sub_1D95C036C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ManagedApp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v155 = &v147 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C90, &qword_1D95C11E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v153 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v147 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v147 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C80, &qword_1D95C11D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v147 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C78, &qword_1D95C11C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v147 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05C70, &qword_1D95C11C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v147 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05E48, &qword_1D95C12C8);
  v158 = *(v25 - 8);
  v159 = v25;
  v26 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v147 - v27;
  v29 = type metadata accessor for ManagedApp();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = a1[3];
  v33 = a1[4];
  v162 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v34);
  sub_1D9547C3C();
  v160 = v28;
  v35 = v161;
  sub_1D95C059C();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_0(v162);
  }

  v36 = v20;
  v151 = v16;
  v152 = v29;
  v37 = v158;
  v38 = v159;
  v161 = v32;
  LOBYTE(v163) = 0;
  v39 = v160;
  v40 = sub_1D95C02CC();
  v42 = v161;
  *v161 = v40;
  v42[1] = v43;
  LOBYTE(v163) = 1;
  v42[2] = sub_1D95C02CC();
  v42[3] = v44;
  LOBYTE(v163) = 2;
  v148 = 0;
  v42[4] = sub_1D95C02BC();
  *(v42 + 40) = v45 & 1;
  LOBYTE(v163) = 3;
  v46 = sub_1D95C02BC();
  v150 = 0;
  v42[6] = v46;
  *(v42 + 56) = v47 & 1;
  v166 = 4;
  sub_1D9547F0C();
  v48 = v150;
  sub_1D95C030C();
  v150 = v48;
  if (v48)
  {
    goto LABEL_6;
  }

  v42[8] = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DC8, &qword_1D95C12A8);
  LOBYTE(v163) = 5;
  sub_1D9547F60(&qword_1ECB05E58, &qword_1ECB05DC8, &qword_1D95C12A8);
  v39 = v160;
  v49 = v150;
  sub_1D95C02AC();
  v150 = v49;
  if (v49)
  {
LABEL_6:
    (*(v37 + 8))(v39, v38);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v149 = 0;
    v165 = 0;
    LODWORD(v151) = 0;
    LODWORD(v153) = 0;
    LODWORD(v154) = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    LODWORD(v157) = 0;
    LODWORD(v158) = 0;
    LODWORD(v159) = 0;
    LODWORD(v160) = 0;
  }

  else
  {
    v75 = v152;
    sub_1D9547B80(v24, v42 + v152[9], &qword_1ECB05C70, &qword_1D95C11C0);
    sub_1D95BFC1C();
    LOBYTE(v163) = 6;
    sub_1D9548474(&qword_1ECB05E60, MEMORY[0x1E6969720]);
    v76 = v150;
    sub_1D95C02AC();
    v150 = v76;
    if (v76)
    {
      (*(v37 + 8))(v39, v38);
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v149 = 0;
      v165 = 0;
      LODWORD(v151) = 0;
      LODWORD(v153) = 0;
      LODWORD(v154) = 0;
      LODWORD(v155) = 0;
      LODWORD(v156) = 0;
      LODWORD(v157) = 0;
      LODWORD(v158) = 0;
      LODWORD(v159) = 0;
      LODWORD(v160) = 0;
      v50 = 1;
    }

    else
    {
      sub_1D9547B80(v36, v42 + v75[10], &qword_1ECB05C78, &qword_1D95C11C8);
      LOBYTE(v163) = 7;
      v77 = v150;
      v78 = sub_1D95C02CC();
      if (v77)
      {
        v150 = v77;
        (*(v37 + 8))(v39, v38);
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v149 = 0;
        v165 = 0;
        LODWORD(v151) = 0;
        LODWORD(v153) = 0;
        LODWORD(v154) = 0;
        LODWORD(v155) = 0;
        LODWORD(v156) = 0;
        LODWORD(v157) = 0;
        LODWORD(v158) = 0;
        LODWORD(v159) = 0;
        LODWORD(v160) = 0;
        v50 = 1;
        v51 = 1;
      }

      else
      {
        v80 = (v42 + v152[11]);
        *v80 = v78;
        v80[1] = v79;
        LOBYTE(v163) = 8;
        v81 = sub_1D95C029C();
        v150 = 0;
        v82 = (v161 + v152[12]);
        *v82 = v81;
        v82[1] = v83;
        LOBYTE(v163) = 9;
        v84 = v150;
        v85 = sub_1D95C029C();
        v150 = v84;
        if (v84)
        {
          (*(v37 + 8))(v160, v159);
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v149 = 0;
          v165 = 0;
          LODWORD(v151) = 0;
          LODWORD(v153) = 0;
          LODWORD(v154) = 0;
          LODWORD(v155) = 0;
          LODWORD(v156) = 0;
          LODWORD(v157) = 0;
          LODWORD(v158) = 0;
          LODWORD(v159) = 0;
          LODWORD(v160) = 0;
          v50 = 1;
          v51 = 1;
          v52 = 1;
          v53 = 1;
        }

        else
        {
          v87 = (v161 + v152[13]);
          *v87 = v85;
          v87[1] = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
          v166 = 10;
          sub_1D9547FA8(&qword_1ECB05E68);
          v88 = v150;
          sub_1D95C030C();
          v150 = v88;
          if (v88)
          {
            (*(v37 + 8))(v160, v159);
            v55 = 0;
            v56 = 0;
            v149 = 0;
            v165 = 0;
            LODWORD(v151) = 0;
            LODWORD(v153) = 0;
            LODWORD(v154) = 0;
            LODWORD(v155) = 0;
            LODWORD(v156) = 0;
            LODWORD(v157) = 0;
            LODWORD(v158) = 0;
            LODWORD(v159) = 0;
            LODWORD(v160) = 0;
            v50 = 1;
            v51 = 1;
            v52 = 1;
            v53 = 1;
            v54 = 1;
          }

          else
          {
            *(v161 + v152[14]) = v163;
            LOBYTE(v163) = 11;
            v89 = v150;
            v90 = sub_1D95C029C();
            v150 = v89;
            if (v89)
            {
              (*(v37 + 8))(v160, v159);
              v56 = 0;
              v149 = 0;
              v165 = 0;
              LODWORD(v151) = 0;
              LODWORD(v153) = 0;
              LODWORD(v154) = 0;
              LODWORD(v155) = 0;
              LODWORD(v156) = 0;
              LODWORD(v157) = 0;
              LODWORD(v158) = 0;
              LODWORD(v159) = 0;
              LODWORD(v160) = 0;
              v50 = 1;
              v51 = 1;
              v52 = 1;
              v53 = 1;
              v54 = 1;
              v55 = 1;
            }

            else
            {
              v92 = (v161 + v152[15]);
              *v92 = v90;
              v92[1] = v91;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DF0, &qword_1D95C12B8);
              v166 = 12;
              sub_1D9548014(&qword_1ECB05E70, &qword_1ECB05E60);
              v93 = v150;
              sub_1D95C030C();
              v150 = v93;
              if (v93)
              {
                (*(v37 + 8))(v160, v159);
                v149 = 0;
                v165 = 0;
                LODWORD(v151) = 0;
                LODWORD(v153) = 0;
                LODWORD(v154) = 0;
                LODWORD(v155) = 0;
                LODWORD(v156) = 0;
                LODWORD(v157) = 0;
                LODWORD(v158) = 0;
                LODWORD(v159) = 0;
                LODWORD(v160) = 0;
                v50 = 1;
                v51 = 1;
                v52 = 1;
                v53 = 1;
                v54 = 1;
                v55 = 1;
                v56 = 1;
              }

              else
              {
                *(v161 + v152[16]) = v163;
                LOBYTE(v163) = 13;
                v94 = v150;
                v95 = sub_1D95C029C();
                v150 = v94;
                if (v94)
                {
                  (*(v37 + 8))(v160, v159);
                  v165 = 0;
                  LODWORD(v151) = 0;
                  LODWORD(v153) = 0;
                  LODWORD(v154) = 0;
                  LODWORD(v155) = 0;
                  LODWORD(v156) = 0;
                  LODWORD(v157) = 0;
                  LODWORD(v158) = 0;
                  LODWORD(v159) = 0;
                  LODWORD(v160) = 0;
                  v50 = 1;
                  v51 = 1;
                  v52 = 1;
                  v53 = 1;
                  v54 = 1;
                  v55 = 1;
                  v56 = 1;
                  v149 = 1;
                }

                else
                {
                  v97 = (v161 + v152[17]);
                  *v97 = v95;
                  v97[1] = v96;
                  LOBYTE(v163) = 14;
                  v98 = v150;
                  v99 = sub_1D95C029C();
                  v150 = v98;
                  if (v98)
                  {
                    (*(v37 + 8))(v160, v159);
                    v165 = 0;
                    LODWORD(v151) = 0;
                    LODWORD(v153) = 0;
                    LODWORD(v154) = 0;
                    LODWORD(v155) = 0;
                    LODWORD(v156) = 0;
                    LODWORD(v157) = 0;
                    LODWORD(v158) = 0;
                    LODWORD(v159) = 0;
                    LODWORD(v160) = 0;
                    v50 = 1;
                    v51 = 1;
                    v52 = 1;
                    v53 = 1;
                    v54 = 1;
                    v55 = 1;
                    v56 = 1;
                    v149 = 0x100000001;
                  }

                  else
                  {
                    v101 = (v161 + v152[18]);
                    *v101 = v99;
                    v101[1] = v100;
                    sub_1D95BFBDC();
                    LOBYTE(v163) = 15;
                    sub_1D9548474(&qword_1ECB05E78, MEMORY[0x1E6969530]);
                    v102 = v150;
                    sub_1D95C02AC();
                    v150 = v102;
                    if (v102)
                    {
                      (*(v37 + 8))(v160, v159);
                      LODWORD(v151) = 0;
                      LODWORD(v153) = 0;
                      LODWORD(v154) = 0;
                      LODWORD(v155) = 0;
                      LODWORD(v156) = 0;
                      LODWORD(v157) = 0;
                      LODWORD(v158) = 0;
                      LODWORD(v159) = 0;
                      LODWORD(v160) = 0;
                      v50 = 1;
                      v51 = 1;
                      v52 = 1;
                      v53 = 1;
                      v54 = 1;
                      v55 = 1;
                      v56 = 1;
                      v149 = 0x100000001;
                      v165 = 1;
                    }

                    else
                    {
                      sub_1D9547B80(v151, v161 + v152[19], &qword_1ECB05C80, &qword_1D95C11D0);
                      LOBYTE(v163) = 16;
                      v103 = v150;
                      v104 = sub_1D95C029C();
                      v150 = v103;
                      if (v103)
                      {
                        (*(v37 + 8))(v160, v159);
                        LODWORD(v153) = 0;
                        LODWORD(v154) = 0;
                        LODWORD(v155) = 0;
                        LODWORD(v156) = 0;
                        LODWORD(v157) = 0;
                        LODWORD(v158) = 0;
                        LODWORD(v159) = 0;
                        LODWORD(v160) = 0;
                        v50 = 1;
                        v51 = 1;
                        v52 = 1;
                        v53 = 1;
                        v54 = 1;
                        v55 = 1;
                        v56 = 1;
                        v149 = 0x100000001;
                        v165 = 1;
                        LODWORD(v151) = 1;
                      }

                      else
                      {
                        v106 = (v161 + v152[20]);
                        *v106 = v104;
                        v106[1] = v105;
                        v166 = 17;
                        sub_1D95480B0();
                        v107 = v150;
                        sub_1D95C02AC();
                        v150 = v107;
                        if (v107)
                        {
                          (*(v37 + 8))(v160, v159);
                          LODWORD(v154) = 0;
                          LODWORD(v155) = 0;
                          LODWORD(v156) = 0;
                          LODWORD(v157) = 0;
                          LODWORD(v158) = 0;
                          LODWORD(v159) = 0;
                          LODWORD(v160) = 0;
                          v50 = 1;
                          v51 = 1;
                          v52 = 1;
                          v53 = 1;
                          v54 = 1;
                          v55 = 1;
                          v56 = 1;
                          v149 = 0x100000001;
                          v165 = 1;
                          LODWORD(v151) = 1;
                          LODWORD(v153) = 1;
                        }

                        else
                        {
                          v108 = (v161 + v152[21]);
                          v109 = v164;
                          *v108 = v163;
                          v108[1] = v109;
                          sub_1D95BFBAC();
                          LOBYTE(v163) = 18;
                          sub_1D9548474(&qword_1ECB05E88, MEMORY[0x1E6968FB0]);
                          v110 = v150;
                          sub_1D95C02AC();
                          v150 = v110;
                          if (v110)
                          {
                            (*(v37 + 8))(v160, v159);
                            LODWORD(v155) = 0;
                            LODWORD(v156) = 0;
                            LODWORD(v157) = 0;
                            LODWORD(v158) = 0;
                            LODWORD(v159) = 0;
                            LODWORD(v160) = 0;
                            v50 = 1;
                            v51 = 1;
                            v52 = 1;
                            v53 = 1;
                            v54 = 1;
                            v55 = 1;
                            v56 = 1;
                            v149 = 0x100000001;
                            v165 = 1;
                            LODWORD(v151) = 1;
                            LODWORD(v153) = 1;
                            LODWORD(v154) = 1;
                          }

                          else
                          {
                            sub_1D9547B80(v154, v161 + v152[22], &qword_1ECB05C90, &qword_1D95C11E0);
                            sub_1D95BFC9C();
                            LOBYTE(v163) = 19;
                            sub_1D9548474(&qword_1ECB05E90, MEMORY[0x1E69E83A8]);
                            v111 = v150;
                            sub_1D95C02AC();
                            v150 = v111;
                            if (v111)
                            {
                              (*(v37 + 8))(v160, v159);
                              LODWORD(v156) = 0;
                              LODWORD(v157) = 0;
                              LODWORD(v158) = 0;
                              LODWORD(v159) = 0;
                              LODWORD(v160) = 0;
                              v50 = 1;
                              v51 = 1;
                              v52 = 1;
                              v53 = 1;
                              v54 = 1;
                              v55 = 1;
                              v56 = 1;
                              v149 = 0x100000001;
                              v165 = 1;
                              LODWORD(v151) = 1;
                              LODWORD(v153) = 1;
                              LODWORD(v154) = 1;
                              LODWORD(v155) = 1;
                            }

                            else
                            {
                              sub_1D9547B80(v155, v161 + v152[23], &qword_1ECB05CC0, &qword_1D95C1200);
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05E20, &qword_1D95C12C0);
                              v166 = 20;
                              sub_1D9547D38(&qword_1ECB05E98, sub_1D95480B0);
                              v112 = v150;
                              sub_1D95C030C();
                              v150 = v112;
                              if (v112)
                              {
                                (*(v37 + 8))(v160, v159);
                                LODWORD(v157) = 0;
                                LODWORD(v158) = 0;
                                LODWORD(v159) = 0;
                                LODWORD(v160) = 0;
                                v50 = 1;
                                v51 = 1;
                                v52 = 1;
                                v53 = 1;
                                v54 = 1;
                                v55 = 1;
                                v56 = 1;
                                v149 = 0x100000001;
                                v165 = 1;
                                LODWORD(v151) = 1;
                                LODWORD(v153) = 1;
                                LODWORD(v154) = 1;
                                LODWORD(v155) = 1;
                                LODWORD(v156) = 1;
                              }

                              else
                              {
                                *(v161 + v152[24]) = v163;
                                LOBYTE(v163) = 21;
                                v113 = v150;
                                v114 = sub_1D95C029C();
                                v150 = v113;
                                if (v113)
                                {
                                  (*(v37 + 8))(v160, v159);
                                  LODWORD(v158) = 0;
                                  LODWORD(v159) = 0;
                                  LODWORD(v160) = 0;
                                  v50 = 1;
                                  v51 = 1;
                                  v52 = 1;
                                  v53 = 1;
                                  v54 = 1;
                                  v55 = 1;
                                  v56 = 1;
                                  v149 = 0x100000001;
                                  v165 = 1;
                                  LODWORD(v151) = 1;
                                  LODWORD(v153) = 1;
                                  LODWORD(v154) = 1;
                                  LODWORD(v155) = 1;
                                  LODWORD(v156) = 1;
                                  LODWORD(v157) = 1;
                                }

                                else
                                {
                                  v116 = (v161 + v152[25]);
                                  *v116 = v114;
                                  v116[1] = v115;
                                  LOBYTE(v163) = 22;
                                  v117 = v150;
                                  sub_1D95C02AC();
                                  v150 = v117;
                                  if (v117)
                                  {
                                    (*(v37 + 8))(v160, v159);
                                    LODWORD(v159) = 0;
                                    LODWORD(v160) = 0;
                                    v50 = 1;
                                    v51 = 1;
                                    v52 = 1;
                                    v53 = 1;
                                    v54 = 1;
                                    v55 = 1;
                                    v56 = 1;
                                    v149 = 0x100000001;
                                    v165 = 1;
                                    LODWORD(v151) = 1;
                                    LODWORD(v153) = 1;
                                    LODWORD(v154) = 1;
                                    LODWORD(v155) = 1;
                                    LODWORD(v156) = 1;
                                    LODWORD(v157) = 1;
                                    LODWORD(v158) = 1;
                                  }

                                  else
                                  {
                                    sub_1D9547B80(v156, v161 + v152[26], &qword_1ECB05C90, &qword_1D95C11E0);
                                    LOBYTE(v163) = 23;
                                    v118 = v150;
                                    sub_1D95C02AC();
                                    v150 = v118;
                                    if (v118)
                                    {
                                      (*(v37 + 8))(v160, v159);
                                      LODWORD(v160) = 0;
                                      v50 = 1;
                                      v51 = 1;
                                      v52 = 1;
                                      v53 = 1;
                                      v54 = 1;
                                      v55 = 1;
                                      v56 = 1;
                                      v149 = 0x100000001;
                                      v165 = 1;
                                      LODWORD(v151) = 1;
                                      LODWORD(v153) = 1;
                                      LODWORD(v154) = 1;
                                      LODWORD(v155) = 1;
                                      LODWORD(v156) = 1;
                                      LODWORD(v157) = 1;
                                      LODWORD(v158) = 1;
                                      LODWORD(v159) = 1;
                                    }

                                    else
                                    {
                                      sub_1D9547B80(v153, v161 + v152[27], &qword_1ECB05C90, &qword_1D95C11E0);
                                      LOBYTE(v163) = 24;
                                      v119 = v150;
                                      v120 = sub_1D95C02DC();
                                      v150 = v119;
                                      if (!v119)
                                      {
                                        *(v161 + v152[28]) = v120 & 1;
                                        LOBYTE(v163) = 25;
                                        v121 = v150;
                                        v122 = sub_1D95C029C();
                                        v150 = v121;
                                        if (!v121)
                                        {
                                          v124 = (v161 + v152[29]);
                                          *v124 = v122;
                                          v124[1] = v123;
                                          LOBYTE(v163) = 26;
                                          v125 = v150;
                                          v126 = sub_1D95C029C();
                                          if (v125)
                                          {
                                            (*(v37 + 8))(v160, v159);
                                            __swift_destroy_boxed_opaque_existential_0(v162);
                                            v129 = v161;
                                            v130 = v161[1];

                                            v131 = v129[3];

                                            v132 = v152;
                                            sub_1D9547EAC(v129 + v152[9], &qword_1ECB05C70, &qword_1D95C11C0);
                                            sub_1D9547EAC(v129 + v132[10], &qword_1ECB05C78, &qword_1D95C11C8);
                                            v133 = *(v129 + v132[11] + 8);

                                            v134 = *(v129 + v132[12] + 8);

                                            v135 = *(v129 + v132[13] + 8);

                                            v136 = *(v129 + v132[14]);

                                            v137 = *(v129 + v132[15] + 8);

                                            v138 = *(v129 + v132[16]);

                                            v139 = *(v129 + v132[17] + 8);

                                            v140 = *(v129 + v132[18] + 8);

                                            sub_1D9547EAC(v129 + v132[19], &qword_1ECB05C80, &qword_1D95C11D0);
                                            v141 = *(v129 + v132[20] + 8);

                                            v142 = *(v129 + v132[21] + 8);

                                            sub_1D9547EAC(v129 + v132[22], &qword_1ECB05C90, &qword_1D95C11E0);
                                            sub_1D9547EAC(v129 + v132[23], &qword_1ECB05CC0, &qword_1D95C1200);
                                            v143 = *(v129 + v132[24]);

                                            v144 = *(v129 + v132[25] + 8);

                                            sub_1D9547EAC(v129 + v132[26], &qword_1ECB05C90, &qword_1D95C11E0);
                                            sub_1D9547EAC(v129 + v132[27], &qword_1ECB05C90, &qword_1D95C11E0);
                                            v145 = *(v129 + v132[29] + 8);
                                          }

                                          else
                                          {
                                            v128 = (v161 + v152[30]);
                                            *v128 = v126;
                                            v128[1] = v127;
                                            v166 = 27;
                                            sub_1D9548104();
                                            sub_1D95C030C();
                                            *(v161 + v152[31]) = v163;
                                            v166 = 28;
                                            sub_1D9548158();
                                            sub_1D95C02AC();
                                            *(v161 + v152[32]) = v163;
                                            v166 = 29;
                                            sub_1D95481AC();
                                            sub_1D95C02AC();
                                            (*(v37 + 8))(v160, v159);
                                            v146 = v161;
                                            *(v161 + v152[33]) = v163;
                                            sub_1D9548200(v146, v157);
                                            __swift_destroy_boxed_opaque_existential_0(v162);
                                            return sub_1D9548264(v146);
                                          }
                                        }
                                      }

                                      (*(v37 + 8))(v160, v159);
                                      v50 = 1;
                                      v51 = 1;
                                      v52 = 1;
                                      v53 = 1;
                                      v54 = 1;
                                      v55 = 1;
                                      v56 = 1;
                                      v149 = 0x100000001;
                                      v165 = 1;
                                      LODWORD(v151) = 1;
                                      LODWORD(v153) = 1;
                                      LODWORD(v154) = 1;
                                      LODWORD(v155) = 1;
                                      LODWORD(v156) = 1;
                                      LODWORD(v157) = 1;
                                      LODWORD(v158) = 1;
                                      LODWORD(v159) = 1;
                                      LODWORD(v160) = 1;
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
    }
  }

  v57 = v148;
  __swift_destroy_boxed_opaque_existential_0(v162);
  v58 = v161;
  v59 = v161[1];

  if (v57)
  {
    if (v50)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v68 = v58[3];

    if (v50)
    {
LABEL_9:
      v60 = v152;
      v61 = v161;
      result = sub_1D9547EAC(v161 + v152[9], &qword_1ECB05C70, &qword_1D95C11C0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }
  }

  v61 = v161;
  v60 = v152;
  if (!v51)
  {
LABEL_10:
    if (v52)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_1D9547EAC(v61 + v60[10], &qword_1ECB05C78, &qword_1D95C11C8);
  if (v52)
  {
LABEL_11:
    v62 = *(v61 + v60[11] + 8);

    if ((v53 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v53)
  {
LABEL_12:
    if (v54)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v69 = *(v61 + v60[12] + 8);

  if (v54)
  {
LABEL_13:
    v63 = *(v61 + v60[13] + 8);

    if ((v55 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v55)
  {
LABEL_14:
    if (v56)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v70 = *(v61 + v60[14]);

  if (v56)
  {
LABEL_15:
    v64 = *(v61 + v60[15] + 8);

    if ((v149 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v149)
  {
LABEL_16:
    if (HIDWORD(v149))
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  v71 = *(v61 + v60[16]);

  if ((v149 & 0x100000000) != 0)
  {
LABEL_17:
    v65 = *(v61 + v60[17] + 8);

    if ((v165 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (!v165)
  {
LABEL_18:
    if (v151)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v72 = *(v61 + v60[18] + 8);

  if (v151)
  {
LABEL_19:
    result = sub_1D9547EAC(v61 + v60[19], &qword_1ECB05C80, &qword_1D95C11D0);
    if ((v153 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (!v153)
  {
LABEL_20:
    if (v154)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v73 = *(v61 + v60[20] + 8);

  if (v154)
  {
LABEL_21:
    v66 = *(v61 + v60[21] + 8);

    if ((v155 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (!v155)
  {
LABEL_22:
    if (v156)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_1D9547EAC(v61 + v60[22], &qword_1ECB05C90, &qword_1D95C11E0);
  if (v156)
  {
LABEL_23:
    result = sub_1D9547EAC(v61 + v60[23], &qword_1ECB05CC0, &qword_1D95C1200);
    if ((v157 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  if (!v157)
  {
LABEL_24:
    if (v158)
    {
      goto LABEL_25;
    }

LABEL_46:
    if (!v159)
    {
LABEL_26:
      if (!v160)
      {
        return result;
      }

      return sub_1D9547EAC(v61 + v60[27], &qword_1ECB05C90, &qword_1D95C11E0);
    }

    goto LABEL_47;
  }

LABEL_45:
  v74 = *(v61 + v60[24]);

  if ((v158 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_25:
  v67 = *(v61 + v60[25] + 8);

  if ((v159 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_47:
  result = sub_1D9547EAC(v61 + v60[26], &qword_1ECB05C90, &qword_1D95C11E0);
  if (v160)
  {
    return sub_1D9547EAC(v61 + v60[27], &qword_1ECB05C90, &qword_1D95C11E0);
  }

  return result;
}

size_t sub_1D9547050(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FE0, &qword_1D95C2168);
  v10 = *(sub_1D95BFBAC() - 8);
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
  v15 = *(sub_1D95BFBAC() - 8);
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

unint64_t sub_1D9547228()
{
  result = qword_1ECB05CE8;
  if (!qword_1ECB05CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05CE8);
  }

  return result;
}

unint64_t sub_1D954727C()
{
  result = qword_1ECB05CF0;
  if (!qword_1ECB05CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05CF0);
  }

  return result;
}

unint64_t sub_1D95472D0()
{
  result = qword_1ECB05CF8;
  if (!qword_1ECB05CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05CF8);
  }

  return result;
}

char *sub_1D9547324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FC0, &unk_1D95C5380);
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

char *sub_1D9547430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FB8, &unk_1D95C2140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D954754C(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FC8, &qword_1D95C2150);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FD0, &qword_1D95C2158);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FD8, &qword_1D95C2160);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9547228();
  v14 = v31;
  sub_1D95C059C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_1D95C032C();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_1D95C01FC();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v22 = &type metadata for ManagedApp.ManagementScope;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_1D954727C();
    sub_1D95C027C();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_1D95472D0();
    sub_1D95C027C();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v32;
}

unint64_t sub_1D9547988()
{
  result = qword_1ECB05D18;
  if (!qword_1ECB05D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05D18);
  }

  return result;
}

unint64_t sub_1D95479DC()
{
  result = qword_1ECB05D20;
  if (!qword_1ECB05D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05D20);
  }

  return result;
}

unint64_t sub_1D9547A30()
{
  result = qword_1ECB05D28;
  if (!qword_1ECB05D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05D28);
  }

  return result;
}

unint64_t sub_1D9547A84()
{
  result = qword_1ECB05D68;
  if (!qword_1ECB05D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05D68);
  }

  return result;
}

unint64_t sub_1D9547AD8()
{
  result = qword_1ECB05D70;
  if (!qword_1ECB05D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05D70);
  }

  return result;
}

unint64_t sub_1D9547B2C()
{
  result = qword_1ECB05D78;
  if (!qword_1ECB05D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05D78);
  }

  return result;
}

uint64_t sub_1D9547B80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D9547BE8()
{
  result = qword_1ECB05DA0;
  if (!qword_1ECB05DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05DA0);
  }

  return result;
}

unint64_t sub_1D9547C3C()
{
  result = qword_1ECB05DB8;
  if (!qword_1ECB05DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05DB8);
  }

  return result;
}

unint64_t sub_1D9547C90()
{
  result = qword_1ECB05DC0;
  if (!qword_1ECB05DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05DC0);
  }

  return result;
}

unint64_t sub_1D9547CE4()
{
  result = qword_1ECB05E08;
  if (!qword_1ECB05E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05E08);
  }

  return result;
}

uint64_t sub_1D9547D38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05E20, &qword_1D95C12C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9547DB0()
{
  result = qword_1ECB05E30;
  if (!qword_1ECB05E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05E30);
  }

  return result;
}

unint64_t sub_1D9547E04()
{
  result = qword_1ECB05E38;
  if (!qword_1ECB05E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05E38);
  }

  return result;
}

unint64_t sub_1D9547E58()
{
  result = qword_1ECB05E40;
  if (!qword_1ECB05E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05E40);
  }

  return result;
}

uint64_t sub_1D9547EAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D9547F0C()
{
  result = qword_1ECB05E50;
  if (!qword_1ECB05E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05E50);
  }

  return result;
}

uint64_t sub_1D9547F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D9547FA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05DE0, &qword_1D95C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9548014(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05DF0, &qword_1D95C12B8);
    sub_1D9548474(a2, MEMORY[0x1E6969720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95480B0()
{
  result = qword_1ECB05E80;
  if (!qword_1ECB05E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05E80);
  }

  return result;
}

unint64_t sub_1D9548104()
{
  result = qword_1ECB05EA0;
  if (!qword_1ECB05EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EA0);
  }

  return result;
}

unint64_t sub_1D9548158()
{
  result = qword_1ECB05EA8;
  if (!qword_1ECB05EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EA8);
  }

  return result;
}

unint64_t sub_1D95481AC()
{
  result = qword_1ECB05EB0;
  if (!qword_1ECB05EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EB0);
  }

  return result;
}

uint64_t sub_1D9548200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9548264(uint64_t a1)
{
  v2 = type metadata accessor for ManagedApp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D95482C4()
{
  result = qword_1ECB05EB8;
  if (!qword_1ECB05EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EB8);
  }

  return result;
}

unint64_t sub_1D954831C()
{
  result = qword_1ECB05EC0;
  if (!qword_1ECB05EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EC0);
  }

  return result;
}

unint64_t sub_1D9548374()
{
  result = qword_1ECB05EC8;
  if (!qword_1ECB05EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EC8);
  }

  return result;
}

unint64_t sub_1D95483CC()
{
  result = qword_1ECB05ED0;
  if (!qword_1ECB05ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05ED0);
  }

  return result;
}

uint64_t sub_1D9548474(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D95484E4()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1D9548984(319, &qword_1EDCF9AF8, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D95488BC();
    if (v2 <= 0x3F)
    {
      sub_1D9548920(319, &qword_1EDCFA060, MEMORY[0x1E6969720], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D9548984(319, &qword_1EDCF9B28, v0, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D9548984(319, &qword_1EDCF9B08, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1D9548920(319, &qword_1EDCF9B20, MEMORY[0x1E6969720], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1D9548920(319, &qword_1EDCFA068, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1D9548984(319, &qword_1EDCFA050, &type metadata for ManagedApp.Artwork, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1D9548920(319, &qword_1EDCFA078, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D9548920(319, &qword_1EDCF9B30, MEMORY[0x1E69E83A8], MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D9548984(319, &qword_1EDCF9B18, &type metadata for ManagedApp.Artwork, MEMORY[0x1E69E62F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D9548984(319, &qword_1EDCFA058, &type metadata for ManagedApp.BinaryCompatibility, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D9548984(319, &qword_1EDCFA048, &type metadata for ManagedApp.License, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
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

void sub_1D95488BC()
{
  if (!qword_1EDCFA080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05DC8, &qword_1D95C12A8);
    v0 = sub_1D95C00CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCFA080);
    }
  }
}

void sub_1D9548920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9548984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D9548A10(uint64_t a1, int a2)
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

uint64_t sub_1D9548A58(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ManagedApp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedApp.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OAuthInvalidateRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OAuthInvalidateRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9548DDC()
{
  result = qword_1ECB05EE0;
  if (!qword_1ECB05EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EE0);
  }

  return result;
}

unint64_t sub_1D9548E34()
{
  result = qword_1ECB05EE8;
  if (!qword_1ECB05EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EE8);
  }

  return result;
}

unint64_t sub_1D9548E8C()
{
  result = qword_1ECB05EF0;
  if (!qword_1ECB05EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EF0);
  }

  return result;
}

unint64_t sub_1D9548EE4()
{
  result = qword_1ECB05EF8;
  if (!qword_1ECB05EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05EF8);
  }

  return result;
}

unint64_t sub_1D9548F3C()
{
  result = qword_1ECB05F00;
  if (!qword_1ECB05F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F00);
  }

  return result;
}

unint64_t sub_1D9548F94()
{
  result = qword_1ECB05F08;
  if (!qword_1ECB05F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F08);
  }

  return result;
}

unint64_t sub_1D9548FEC()
{
  result = qword_1ECB05F10;
  if (!qword_1ECB05F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F10);
  }

  return result;
}

unint64_t sub_1D9549044()
{
  result = qword_1ECB05F18;
  if (!qword_1ECB05F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F18);
  }

  return result;
}

unint64_t sub_1D954909C()
{
  result = qword_1ECB05F20;
  if (!qword_1ECB05F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F20);
  }

  return result;
}

unint64_t sub_1D95490F4()
{
  result = qword_1ECB05F28;
  if (!qword_1ECB05F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F28);
  }

  return result;
}

unint64_t sub_1D954914C()
{
  result = qword_1ECB05F30;
  if (!qword_1ECB05F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F30);
  }

  return result;
}

unint64_t sub_1D95491A4()
{
  result = qword_1ECB05F38;
  if (!qword_1ECB05F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F38);
  }

  return result;
}

unint64_t sub_1D95491FC()
{
  result = qword_1ECB05F40;
  if (!qword_1ECB05F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F40);
  }

  return result;
}

unint64_t sub_1D9549254()
{
  result = qword_1ECB05F48;
  if (!qword_1ECB05F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F48);
  }

  return result;
}

unint64_t sub_1D95492AC()
{
  result = qword_1ECB05F50;
  if (!qword_1ECB05F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F50);
  }

  return result;
}

unint64_t sub_1D9549304()
{
  result = qword_1ECB05F58;
  if (!qword_1ECB05F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F58);
  }

  return result;
}

unint64_t sub_1D954935C()
{
  result = qword_1ECB05F60;
  if (!qword_1ECB05F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F60);
  }

  return result;
}

unint64_t sub_1D95493B4()
{
  result = qword_1ECB05F68;
  if (!qword_1ECB05F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F68);
  }

  return result;
}

unint64_t sub_1D954940C()
{
  result = qword_1ECB05F70;
  if (!qword_1ECB05F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F70);
  }

  return result;
}

unint64_t sub_1D9549464()
{
  result = qword_1ECB05F78;
  if (!qword_1ECB05F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F78);
  }

  return result;
}

unint64_t sub_1D95494BC()
{
  result = qword_1ECB05F80;
  if (!qword_1ECB05F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F80);
  }

  return result;
}

unint64_t sub_1D9549514()
{
  result = qword_1ECB05F88;
  if (!qword_1ECB05F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F88);
  }

  return result;
}

unint64_t sub_1D954956C()
{
  result = qword_1ECB05F90;
  if (!qword_1ECB05F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F90);
  }

  return result;
}

unint64_t sub_1D95495C4()
{
  result = qword_1ECB05F98;
  if (!qword_1ECB05F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05F98);
  }

  return result;
}

unint64_t sub_1D954961C()
{
  result = qword_1ECB05FA0;
  if (!qword_1ECB05FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05FA0);
  }

  return result;
}

unint64_t sub_1D9549674()
{
  result = qword_1ECB05FA8;
  if (!qword_1ECB05FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05FA8);
  }

  return result;
}

unint64_t sub_1D95496CC()
{
  result = qword_1ECB05FB0;
  if (!qword_1ECB05FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05FB0);
  }

  return result;
}

uint64_t sub_1D9549720(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1D95C03FC() & 1;
  }
}

uint64_t sub_1D954978C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C706D65546C7275 && a2 == 0xEB00000000657461;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687464695778616DLL && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686769654878616DLL && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D95498B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0230 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D95D0250 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72656C6C6573 && a2 == 0xE600000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D95C041C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073 || (sub_1D95C041C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65 || (sub_1D95C041C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_1D95C041C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x4E657361656C6572 && a2 == 0xEC0000007365746FLL || (sub_1D95C041C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x687461506E6F6369 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEB0000000073746FLL || (sub_1D95C041C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_1D95C041C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D95D0270 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x5079636176697270 && a2 == 0xED00007963696C6FLL || (sub_1D95C041C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D95D0290 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D95C041C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6D61726150797562 && a2 == 0xE900000000000073 || (sub_1D95C041C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D95D02B0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x65736E6563696CLL && a2 == 0xE700000000000000)
  {

    return 29;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ManagedAppInstallRequest.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedAppInstallRequest.buyParams.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedAppInstallRequest.externalVersionID.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedAppInstallRequest.init(declarationIdentifier:buyParams:)(Swift::String_optional declarationIdentifier, Swift::String_optional buyParams)
{
  *v2 = declarationIdentifier;
  *(v2 + 16) = buyParams;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 32) = 256;
}

void __swiftcall ManagedAppInstallRequest.init(declarationIdentifier:buyParams:externalVersionID:)(Swift::String_optional declarationIdentifier, Swift::String_optional buyParams, Swift::UInt64_optional externalVersionID)
{
  *v3 = declarationIdentifier;
  *(v3 + 16) = buyParams;
  *(v3 + 40) = externalVersionID.value;
  *(v3 + 48) = externalVersionID.is_nil;
  *(v3 + 32) = 256;
}

uint64_t ManagedAppInstallRequest.init(declarationIdentifier:buyParams:externalVersionID:scope:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 33) = 1;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6 & 1;
  *(a8 + 32) = a7 & 1;
  return result;
}

uint64_t ManagedAppInstallRequest.request()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D954A3F0, 0, 0);
}

uint64_t sub_1D954A3F0()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D954A4E8;

  return sub_1D954ADD4(1, v0 + 16, sub_1D954A5DC, 0);
}

uint64_t sub_1D954A4E8()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D954A5DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_194;
  v9 = _Block_copy(v10);

  [a1 installManagedApp:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D954A6B8()
{
  v1 = *v0;
  v2 = 0x6D61726150797562;
  v3 = 0x65706F6373;
  v4 = 0x74696E4972657375;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1D954A76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D955A788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D954A7A0(uint64_t a1)
{
  v2 = sub_1D9555CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D954A7DC(uint64_t a1)
{
  v2 = sub_1D9555CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppInstallRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05FF0, &qword_1D95C2190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  LODWORD(v10) = *(v1 + 32);
  v17 = *(v1 + 33);
  v18 = v10;
  v16 = v1[5];
  v15[1] = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9555CD8();
  sub_1D95C05BC();
  v27 = 0;
  v12 = v21;
  sub_1D95C035C();
  if (!v12)
  {
    v14 = v18;
    v26 = 1;
    sub_1D95C035C();
    v25 = v14;
    v24 = 2;
    sub_1D9547DB0();
    sub_1D95C03CC();
    v23 = 3;
    sub_1D95C039C();
    v22 = 4;
    sub_1D95C037C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedAppInstallRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06000, &qword_1D95C2198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9555CD8();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1D95C029C();
  v13 = v12;
  v28 = v11;
  LOBYTE(v33[0]) = 1;
  *&v27 = sub_1D95C029C();
  *(&v27 + 1) = v14;
  LOBYTE(v29) = 2;
  sub_1D9548104();
  sub_1D95C030C();
  v15 = LOBYTE(v33[0]);
  LOBYTE(v33[0]) = 3;
  v25 = sub_1D95C02DC();
  v26 = v15;
  v39 = 4;
  v16 = sub_1D95C02BC();
  v18 = v17;
  v25 &= 1u;
  v19 = v16;
  (*(v6 + 8))(v9, v5);
  v18 &= 1u;
  v38 = v18;
  v21 = *(&v27 + 1);
  v20 = v28;
  *&v29 = v28;
  *(&v29 + 1) = v13;
  v22 = v27;
  v30 = v27;
  LOBYTE(v31) = v26;
  BYTE1(v31) = v25;
  *(&v31 + 1) = v19;
  v32 = v18;
  *(a2 + 48) = v18;
  v23 = v30;
  *a2 = v29;
  *(a2 + 16) = v23;
  *(a2 + 32) = v31;
  sub_1D9555D2C(&v29, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33[0] = v20;
  v33[1] = v13;
  v33[2] = v22;
  v33[3] = v21;
  v34 = v26;
  v35 = v25;
  v36 = v19;
  v37 = v18;
  return sub_1D9555D64(v33);
}

uint64_t sub_1D954ADD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 328) = a4;
  *(v5 + 336) = v4;
  *(v5 + 312) = a2;
  *(v5 + 320) = a3;
  *(v5 + 304) = a1;
  *(v5 + 344) = *v4;
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = *(a2 + 48);
  v7 = sub_1D95BFA3C();
  *(v5 + 352) = v7;
  v8 = *(v7 - 8);
  *(v5 + 360) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954AEDC, 0, 0);
}

uint64_t sub_1D954AEDC()
{
  v1 = *(v0 + 312);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  v5 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v5;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  sub_1D9555D2C(v1, v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06190, &qword_1D95C24E8);
  sub_1D9547F60(&qword_1ECB06198, &qword_1ECB06190, &qword_1D95C24E8);
  v6 = sub_1D95BFABC();
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  v8 = v6;
  v9 = v7;
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 88);
  *(v0 + 240) = *(v0 + 72);
  *(v0 + 256) = v12;
  *(v0 + 272) = *(v0 + 104);
  *(v0 + 288) = *(v0 + 120);
  v19 = *(v0 + 320);
  sub_1D9547EAC(v0 + 240, &qword_1ECB06190, &qword_1D95C24E8);

  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v0 + 392) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 400) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D954B18C;

  return MEMORY[0x1EEE6DE38](v0 + 65, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955B034, v14, v17);
}

uint64_t sub_1D954B18C()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_1D954B31C;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_1D954B2A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954B2A8()
{
  sub_1D955AA18(*(v0 + 376), *(v0 + 384));
  v1 = *(v0 + 65);
  v2 = *(v0 + 368);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D954B31C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 352);
  v6 = *(v0 + 304);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 408);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 304);

    v15 = swift_task_alloc();
    *(v0 + 416) = v15;
    *v15 = v0;
    v15[1] = sub_1D954B634;
    v16 = *(v0 + 328);
    v17 = *(v0 + 336);
    v18 = *(v0 + 312);
    v19 = *(v0 + 320);

    return sub_1D954ADD4(v14 - 1, v18, v19, v16);
  }

  else
  {
    *(v0 + 296) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 408);
    v24 = *(v0 + 376);
    v25 = *(v0 + 384);
    if (v22)
    {

      v26 = *(v0 + 66);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 368);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D954B634(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v7 = sub_1D954B7D0;
  }

  else
  {
    *(v4 + 67) = a1;
    v7 = sub_1D954B75C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954B75C()
{
  sub_1D955AA18(*(v0 + 376), *(v0 + 384));
  v1 = *(v0 + 67);
  v2 = *(v0 + 368);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D954B7D0()
{
  sub_1D955AA18(v0[47], v0[48]);
  v1 = v0[53];
  v2 = v0[46];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D954B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = *v5;
  v7 = sub_1D95BFA3C();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954B92C, 0, 0);
}

uint64_t sub_1D954B92C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = sub_1D95BFADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06180, &qword_1D95C24E0);
  sub_1D9547F60(&qword_1ECB06188, &qword_1ECB06180, &qword_1D95C24E0);
  v6 = sub_1D95BFABC();
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  v8 = v6;
  v9 = v7;
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 24);
  v19 = *(v0 + 64);

  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D954BB68;

  return MEMORY[0x1EEE6DE38](v0 + 176, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955B01C, v14, v17);
}

uint64_t sub_1D954BB68()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1D954BCF8;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1D954BC84;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954BC84()
{
  sub_1D955AA18(*(v0 + 120), *(v0 + 128));
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D954BCF8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 152);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 40);

    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_1D954C014;
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);

    return sub_1D954B83C(v14 - 1, v20, v18, v19, v16);
  }

  else
  {
    *(v0 + 32) = v9;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v23 = swift_dynamicCast();
    v24 = *(v0 + 152);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    if (v23)
    {

      v27 = *(v0 + 177);
      sub_1D955A9C4();
      swift_allocError();
      *v28 = v27;
      swift_willThrow();
      sub_1D955AA18(v25, v26);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();

      sub_1D955AA18(v25, v26);
    }

    v30 = *(v0 + 112);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D954C014(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1D954C1B0;
  }

  else
  {
    *(v4 + 178) = a1;
    v7 = sub_1D954C13C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954C13C()
{
  sub_1D955AA18(*(v0 + 120), *(v0 + 128));
  v1 = *(v0 + 178);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D954C1B0()
{
  sub_1D955AA18(v0[15], v0[16]);
  v1 = v0[21];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D954C21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = *v5;
  v7 = sub_1D95BFA3C();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954C30C, 0, 0);
}

uint64_t sub_1D954C30C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = sub_1D95BFADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06170, &qword_1D95C24D0);
  sub_1D9547F60(&qword_1ECB06178, &qword_1ECB06170, &qword_1D95C24D0);
  v6 = sub_1D95BFABC();
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  v8 = v6;
  v9 = v7;
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 24);
  v19 = *(v0 + 64);

  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D954C550;

  return MEMORY[0x1EEE6DE38](v0 + 176, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955B004, v14, v17);
}

uint64_t sub_1D954C550()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1D954C66C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1D955B234;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954C66C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 152);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 40);

    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_1D954C988;
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);

    return sub_1D954C21C(v14 - 1, v20, v18, v19, v16);
  }

  else
  {
    *(v0 + 32) = v9;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v23 = swift_dynamicCast();
    v24 = *(v0 + 152);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    if (v23)
    {

      v27 = *(v0 + 177);
      sub_1D955A9C4();
      swift_allocError();
      *v28 = v27;
      swift_willThrow();
      sub_1D955AA18(v25, v26);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();

      sub_1D955AA18(v25, v26);
    }

    v30 = *(v0 + 112);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D954C988(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1D955B290;
  }

  else
  {
    *(v4 + 178) = a1;
    v7 = sub_1D955B2B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954CAB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 35) = a4;
  *(v7 + 64) = a3;
  *(v7 + 72) = a5;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  *(v7 + 96) = *v6;
  v8 = sub_1D95BFA3C();
  *(v7 + 104) = v8;
  v9 = *(v8 - 8);
  *(v7 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954CBA4, 0, 0);
}

uint64_t sub_1D954CBA4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 35);
  v4 = sub_1D95BFADC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v3;
  sub_1D955AFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06160, &qword_1D95C24C0);
  sub_1D9547F60(&qword_1ECB06168, &qword_1ECB06160, &qword_1D95C24C0);
  v7 = sub_1D95BFABC();
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v22 = *(v0 + 72);
  v15 = *(v0 + 32);
  sub_1D955AFE4();

  v16 = *(v12 + 16);
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v22;
  *(v17 + 40) = v9;
  *(v17 + 48) = v10;
  *(v17 + 56) = v11;
  v18 = *(MEMORY[0x1E69E8920] + 4);
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v19 = v0;
  v19[1] = sub_1D954CDF8;

  return MEMORY[0x1EEE6DE38](v0 + 33, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AFEC, v17, v20);
}

uint64_t sub_1D954CDF8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1D954CF88;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1D954CF14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954CF14()
{
  sub_1D955AA18(*(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 33);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D954CF88()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 48);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 160);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 48);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_1D954D2A8;
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    v21 = *(v0 + 35);

    return sub_1D954CAB0(v14 - 1, v20, v18, v21, v19, v16);
  }

  else
  {
    *(v0 + 40) = v9;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v24 = swift_dynamicCast();
    v25 = *(v0 + 160);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    if (v24)
    {

      v28 = *(v0 + 34);
      sub_1D955A9C4();
      swift_allocError();
      *v29 = v28;
      swift_willThrow();
      sub_1D955AA18(v26, v27);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();

      sub_1D955AA18(v26, v27);
    }

    v31 = *(v0 + 120);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1D954D2A8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_1D954D444;
  }

  else
  {
    *(v4 + 36) = a1;
    v7 = sub_1D954D3D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954D3D0()
{
  sub_1D955AA18(*(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 36);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D954D444()
{
  sub_1D955AA18(v0[16], v0[17]);
  v1 = v0[22];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D954D4B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 147) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 56) = *v4;
  v6 = sub_1D95BFA3C();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954D5A0, 0, 0);
}

uint64_t sub_1D954D5A0()
{
  v1 = *(v0 + 147);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 144) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06150, &qword_1D95C24B0);
  sub_1D9547F60(&qword_1ECB06158, &qword_1ECB06150, &qword_1D95C24B0);
  v5 = sub_1D95BFABC();
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v17 = *(v0 + 32);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v14 = v0;
  v14[1] = sub_1D954D7C8;

  return MEMORY[0x1EEE6DE38](v0 + 145, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AFC4, v12, v15);
}

uint64_t sub_1D954D7C8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D954D8E4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1D955B238;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954D8E4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 120);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 147);
    v15 = *(v0 + 24);

    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1D954DC04;
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);

    return sub_1D954D4B0(v15 - 1, v14 & 1, v19, v17);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 120);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    if (v22)
    {

      v26 = *(v0 + 146);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D954DC04(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_1D955B294;
  }

  else
  {
    *(v4 + 148) = a1;
    v7 = sub_1D955B2B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954DD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = *v5;
  v7 = sub_1D95BFA3C();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954DE1C, 0, 0);
}

uint64_t sub_1D954DE1C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = sub_1D95BFADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06130, &qword_1D95C2490);
  sub_1D9547F60(&qword_1ECB06138, &qword_1ECB06130, &qword_1D95C2490);
  v6 = sub_1D95BFABC();
  *(v0 + 128) = v6;
  *(v0 + 136) = v7;
  v8 = v6;
  v9 = v7;
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 24);
  v19 = *(v0 + 72);

  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06140, &qword_1D95C2498);
  *v16 = v0;
  v16[1] = sub_1D954E060;

  return MEMORY[0x1EEE6DE38](v0 + 32, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AF70, v14, v17);
}

uint64_t sub_1D954E060()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1D954E1F0;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1D954E17C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954E17C()
{
  sub_1D955AA18(v0[16], v0[17]);
  v1 = v0[4];
  v2 = v0[15];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D954E1F0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 48);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 160);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 48);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_1D954E50C;
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);

    return sub_1D954DD2C(v14 - 1, v20, v18, v19, v16);
  }

  else
  {
    *(v0 + 40) = v9;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v23 = swift_dynamicCast();
    v24 = *(v0 + 160);
    v25 = *(v0 + 128);
    v26 = *(v0 + 136);
    if (v23)
    {

      v27 = *(v0 + 192);
      sub_1D955A9C4();
      swift_allocError();
      *v28 = v27;
      swift_willThrow();
      sub_1D955AA18(v25, v26);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();

      sub_1D955AA18(v25, v26);
    }

    v30 = *(v0 + 120);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D954E50C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_1D954D444;
  }

  else
  {
    *(v4 + 184) = a1;
    v7 = sub_1D954E634;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954E634()
{
  sub_1D955AA18(v0[16], v0[17]);
  v1 = v0[23];
  v2 = v0[15];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D954E6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v6[11] = *v5;
  v7 = sub_1D95BFA3C();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954E798, 0, 0);
}

uint64_t sub_1D954E798()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = sub_1D95BFADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06110, &qword_1D95C2478);
  sub_1D9547F60(&qword_1ECB06118, &qword_1ECB06110, &qword_1D95C2478);
  v6 = sub_1D95BFABC();
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  v8 = v6;
  v9 = v7;
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 56);
  v19 = *(v0 + 64);

  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D954E9D4;

  return MEMORY[0x1EEE6DE38](v0 + 176, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AF58, v14, v17);
}

uint64_t sub_1D954E9D4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1D954EAF0;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_1D955B234;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954EAF0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 152);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 40);

    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_1D954C988;
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);

    return sub_1D954E6A8(v14 - 1, v20, v18, v19, v16);
  }

  else
  {
    *(v0 + 32) = v9;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v23 = swift_dynamicCast();
    v24 = *(v0 + 152);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    if (v23)
    {

      v27 = *(v0 + 177);
      sub_1D955A9C4();
      swift_allocError();
      *v28 = v27;
      swift_willThrow();
      sub_1D955AA18(v25, v26);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();

      sub_1D955AA18(v25, v26);
    }

    v30 = *(v0 + 112);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D954EE0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 147) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 56) = *v4;
  v6 = sub_1D95BFA3C();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954EEFC, 0, 0);
}

uint64_t sub_1D954EEFC()
{
  v1 = *(v0 + 147);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 144) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06100, &qword_1D95C2468);
  sub_1D9547F60(&qword_1ECB06108, &qword_1ECB06100, &qword_1D95C2468);
  v5 = sub_1D95BFABC();
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v17 = *(v0 + 32);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v14 = v0;
  v14[1] = sub_1D954F124;

  return MEMORY[0x1EEE6DE38](v0 + 145, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AF40, v12, v15);
}

uint64_t sub_1D954F124()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D954F2B4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1D954F240;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954F240()
{
  sub_1D955AA18(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 145);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D954F2B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 120);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 147);
    v15 = *(v0 + 24);

    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1D954F5D4;
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);

    return sub_1D954EE0C(v15 - 1, v14 & 1, v19, v17);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 120);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    if (v22)
    {

      v26 = *(v0 + 146);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D954F5D4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_1D954F770;
  }

  else
  {
    *(v4 + 148) = a1;
    v7 = sub_1D954F6FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D954F6FC()
{
  sub_1D955AA18(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 148);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D954F770()
{
  sub_1D955AA18(v0[11], v0[12]);
  v1 = v0[17];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D954F7DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 147) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 56) = *v4;
  v6 = sub_1D95BFA3C();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D954F8CC, 0, 0);
}

uint64_t sub_1D954F8CC()
{
  v1 = *(v0 + 147);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 144) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06058, &qword_1D95C5B40);
  sub_1D9547F60(&qword_1EDCFA1B0, &qword_1ECB06058, &qword_1D95C5B40);
  v5 = sub_1D95BFABC();
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v17 = *(v0 + 32);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v14 = v0;
  v14[1] = sub_1D954FAF4;

  return MEMORY[0x1EEE6DE38](v0 + 145, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AF28, v12, v15);
}

uint64_t sub_1D954FAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D954FC10;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1D955B238;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D954FC10()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 120);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 147);
    v15 = *(v0 + 24);

    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1D954DC04;
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);

    return sub_1D954F7DC(v15 - 1, v14 & 1, v19, v17);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 120);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    if (v22)
    {

      v26 = *(v0 + 146);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D954FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v8[15] = *v7;
  v9 = sub_1D95BFA3C();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v11 = *(v10 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9550024, 0, 0);
}

uint64_t sub_1D9550024()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = sub_1D95BFADC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060F0, &qword_1D95C2450);
  sub_1D9547F60(&qword_1ECB060F8, &qword_1ECB060F0, &qword_1D95C2450);
  v8 = sub_1D95BFABC();
  *(v0 + 152) = v8;
  *(v0 + 160) = v9;
  v10 = v8;
  v11 = v9;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 24);
  v15 = *(v0 + 40);
  v22 = *(v0 + 96);

  v16 = *(v13 + 16);
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v22;
  *(v17 + 40) = v10;
  *(v17 + 48) = v11;
  *(v17 + 56) = v12;
  v18 = *(MEMORY[0x1E69E8920] + 4);
  v19 = swift_task_alloc();
  *(v0 + 176) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v19 = v0;
  v19[1] = sub_1D9550288;

  return MEMORY[0x1EEE6DE38](v0 + 208, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AF10, v17, v20);
}

uint64_t sub_1D9550288()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1D9550418;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1D95503A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D95503A4()
{
  sub_1D955AA18(*(v0 + 152), *(v0 + 160));
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D9550418()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 56);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 184);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 56);

    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    v15[1] = sub_1D9550738;
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    return sub_1D954FF30(v14 - 1, v22, v20, v21, v18, v19, v16);
  }

  else
  {
    *(v0 + 48) = v9;
    v24 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v25 = swift_dynamicCast();
    v26 = *(v0 + 184);
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);
    if (v25)
    {

      v29 = *(v0 + 209);
      sub_1D955A9C4();
      swift_allocError();
      *v30 = v29;
      swift_willThrow();
      sub_1D955AA18(v27, v28);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v31 = 0;
      swift_willThrow();

      sub_1D955AA18(v27, v28);
    }

    v32 = *(v0 + 144);

    v33 = *(v0 + 8);

    return v33();
  }
}