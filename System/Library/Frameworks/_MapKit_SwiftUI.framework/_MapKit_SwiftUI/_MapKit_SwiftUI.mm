uint64_t sub_213CCBAE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_213CCBB7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CCBC0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_213CCBCB4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for MapContentList.UpdateToken(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MapContentList.UpdateToken(uint64_t result, int a2, int a3)
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

uint64_t sub_213CCBDA0(uint64_t a1, int a2)
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

uint64_t sub_213CCBDC0(uint64_t result, int a2, int a3)
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

void *sub_213CCBE0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_213CCBE44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_213D9193C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_213CCBE70@<X0>(_BYTE *a1@<X8>)
{
  sub_213CD6270();
  result = sub_213D90C1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_213CCBEC8(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_213CD6270();
  return sub_213D90C2C();
}

uint64_t sub_213CCBF1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9C10, &qword_213D94168);
  sub_213D908CC();
  sub_213CD609C();
  return swift_getWitnessTable();
}

uint64_t sub_213CCBFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D90C5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_213D9059C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_213D90F3C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_213CCC0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_213D90C5C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_213D9059C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_213D90F3C();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_213CCC248(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213CCC2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_213CCC34C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_213CCC360()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213CCC398(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213CCC3F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[17];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _MapContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[18];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[19]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_213CCC500(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[17];
  }

  else
  {
    result = type metadata accessor for _MapContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[19]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[18];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CCC68C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D90A7C();
  *a1 = result;
  return result;
}

uint64_t sub_213CCC6B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_213D90A8C();
}

uint64_t sub_213CCC6E4@<X0>(_BYTE *a1@<X8>)
{
  sub_213CE2CE4();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CCC734(char *a1)
{
  v2 = *a1;
  sub_213CE2CE4();
  return sub_213D90C2C();
}

uint64_t sub_213CCC780@<X0>(_BYTE *a1@<X8>)
{
  sub_213CE2C90();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CCC7D0(char *a1)
{
  v2 = *a1;
  sub_213CE2C90();
  return sub_213D90C2C();
}

uint64_t sub_213CCC81C@<X0>(void *a1@<X8>)
{
  sub_213CE2BD0();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CCC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_213CCC994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CCCABC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90A6C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_213D9051C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213CCCBD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_213D90A6C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_213D9051C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CCCCD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapPitchToggleConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CCCD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapPitchToggleConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCCE18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_213CCCE24@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21604DC60]();
  *a1 = result;
  return result;
}

uint64_t sub_213CCCE50(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x21604DC70](v2);
}

uint64_t sub_213CCCE7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA278, &unk_213D94DA0);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CCCF78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA280, &unk_213D94E00);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CCCFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213CE30F4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213CCD05C(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

char *sub_213CCD1EC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213CCD4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213D90BDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213CCD518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213CCD550()
{
  v1 = type metadata accessor for MapStylePickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v34 = type metadata accessor for MapStylePicker.Option(0);
  v3 = *(*(v34 - 8) + 80);
  v35 = *(*(v34 - 8) + 64);
  v4 = (v0 + v2);
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 16);

  if (*(v0 + v2 + 40) != 1)
  {

    v8 = *(v4 + 6);
  }

  if (*(v4 + 11) != 1)
  {

    v9 = *(v4 + 12);
  }

  v10 = &v4[v1[6]];
  v11 = type metadata accessor for _MapStylePickerAttribution(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_213D902EC();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = *&v4[v1[7] + 8];

  v16 = *&v4[v1[8] + 8];

  v17 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_213D9087C();
    (*(*(v18 - 8) + 8))(&v4[v17], v18);
  }

  else
  {
    v19 = *&v4[v17];
  }

  v20 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_213D904FC();
    (*(*(v21 - 8) + 8))(&v4[v20], v21);
  }

  else
  {
    v22 = *&v4[v20];
  }

  v23 = v0 + ((v2 + v33 + v3) & ~v3);
  v24 = sub_213D902AC();
  (*(*(v24 - 8) + 8))(v23, v24);
  v25 = v23 + *(v34 + 24);
  v32 = *(v25 + 144);
  v30 = *(v25 + 128);
  v31 = *(v25 + 136);
  v28 = *(v25 + 96);
  v29 = *(v25 + 112);
  v27 = *(v25 + 80);
  sub_213CEC7C8(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 32), *(v25 + 40), *(v25 + 48), *(v25 + 56), *(v25 + 64));

  return swift_deallocObject();
}

uint64_t sub_213CCD90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA470, &unk_213D95260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for _MapStylePickerAttribution(0);
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

uint64_t sub_213CCDA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA470, &unk_213D95260);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _MapStylePickerAttribution(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CCDB4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_213D902AC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_213CCDCB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_213D902AC();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CCDE20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA2E0, &qword_213D95088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA2D8, &qword_213D95080);
  sub_213CEDCEC(&qword_27C8EA318, &qword_27C8EA2D8, &qword_213D95080);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CCDEF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213D90B7C();
  *a1 = result;
  return result;
}

uint64_t sub_213CCDF48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D90BAC();
  *a1 = result;
  return result;
}

uint64_t sub_213CCDF74(uint64_t *a1)
{
  v1 = *a1;

  return sub_213D90BBC();
}

uint64_t sub_213CCDFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA478, &qword_213D95440);
  sub_213CEDCEC(&qword_27C8E95C0, &qword_27C8EA478, &qword_213D95440);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CCE114(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA6B0, &qword_213D95C10);
  sub_213D908CC();
  sub_213CEF4E0();
  return swift_getWitnessTable();
}

uint64_t sub_213CCE18C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA6C0, &qword_213D95C18);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CCE234(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[8];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[9]);
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
    v14 = sub_213D9100C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_213CCE368(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_213D90CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[8];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v13 = sub_213D9100C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_213CCE490()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213CCE4DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CCE520(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213CCE530()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213CCE568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = sub_213D9100C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213CCE620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCE6D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for _MapContentOutputs(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCE780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for _MapContentOutputs(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCE830()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for MapAnnotation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(*(v2 - 8) + 8))(v0 + *(v3 + 40) + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_213CCE90C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

double sub_213CCE958@<D0>(uint64_t a1@<X8>)
{
  sub_213CF9624();
  sub_213D90C1C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_213CCE9B4()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_213CCE9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAD38, &qword_213D96928);
  sub_213D908CC();
  sub_213CF9368();
  return swift_getWitnessTable();
}

uint64_t sub_213CCEA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_213D9031C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213CCEB64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_213D9031C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_213CCEC6C@<X0>(void *a1@<X8>)
{
  sub_213CFA504();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CCECC0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_213CCECF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EADE8, &qword_213D96B00);
  sub_213D908CC();
  sub_213CFA09C();
  return swift_getWitnessTable();
}

uint64_t sub_213CCED78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213CCEDB4@<X0>(_BYTE *a1@<X8>)
{
  sub_213D1F20C();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CCEE04(char *a1)
{
  v2 = *a1;
  sub_213D1F20C();
  return sub_213D90C2C();
}

uint64_t sub_213CCEE50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAFC8, &qword_213D96DF0);
  sub_213D908CC();
  sub_213CEDCEC(qword_27C8EAFD0, &qword_27C8EAFC8, &qword_213D96DF0);
  return swift_getWitnessTable();
}

uint64_t sub_213CCEEFC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE90, &qword_213D988D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB060, &unk_213D96E60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213CCF038(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE90, &qword_213D988D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB060, &unk_213D96E60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213CCF338(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213CCF350()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213CCF390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213CCF3DC()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF414()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF454()
{
  sub_213D1E068(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_213CCF494()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF630()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_213CCF6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  sub_213D914FC();
  return sub_213D914DC();
}

__n128 sub_213CCF724(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_213CCF7D4(uint64_t a1)
{
  v2 = [*v1 viewForAnnotation_];

  return v2;
}

id sub_213CCF830(uint64_t a1)
{
  v2 = [*v1 rendererForOverlay_];

  return v2;
}

uint64_t sub_213CCF86C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_213D9100C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCF918(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCF9BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_213D9100C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCFA68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCFB0C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_213D9100C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCFBB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCFC6C(__int128 *a1)
{
  v2 = *a1;
  v3 = *(*(a1 + 2) + 8);
  v4 = a1[1];
  type metadata accessor for _MapContentView();
  return swift_getWitnessTable();
}

uint64_t sub_213CCFCCC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[3];
  type metadata accessor for _MapContentView();
  return swift_getWitnessTable();
}

uint64_t sub_213CCFE48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213CCFE80()
{
  MEMORY[0x21604FCE0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213CCFEB8()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_213CCFF00()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213CCFF48()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_213CCFFB0()
{

  return swift_deallocObject();
}

uint64_t sub_213CD0010()
{
  v1 = *(v0 + 48);

  sub_213D1E068(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_213CD0050()
{
  sub_213D1E068(v0[6]);
  v1 = v0[12];

  v2 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_213CD00B0()
{
  sub_213D1E068(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_213CD00E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213CD0128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 108);
  v6 = type metadata accessor for _MapContentInputs(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_213CD01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 108);
  v7 = type metadata accessor for _MapContentInputs(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_213CD021C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD02D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0388()
{
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v1 = type metadata accessor for _MapContentView.Child();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = v0 + *(v1 + 108) + ((*(v2 + 80) + 64) & ~*(v2 + 80));
  v5 = sub_213D90C5C();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for _MapContentInputs(0);
  v7 = *(v6 + 20);
  v8 = sub_213D9059C();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(v6 + 24);
  v10 = sub_213D90F3C();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  return swift_deallocObject();
}

uint64_t sub_213CD0504@<X0>(void *a1@<X8>)
{
  result = sub_213D90AEC();
  *a1 = v3;
  return result;
}

uint64_t sub_213CD059C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213D90BDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213CD061C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_213CD0664(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_213D90FEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38);
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40);
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48);
  swift_getWitnessTable();
  sub_213D9077C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  swift_getWitnessTable();
  sub_213D4C820();
  swift_getOpaqueTypeMetadata2();
  sub_213D9031C();
  swift_getOpaqueTypeConformance2();
  sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578]);
  swift_getOpaqueTypeMetadata2();
  sub_213D4C8F8(&qword_27C8EBEF0, 255, MEMORY[0x277CDE300]);
  sub_213D905EC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_213CD09F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD0AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0B5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapScaleViewConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD0C00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapScaleViewConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0CA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_213D9051C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_213CD0D4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_213D9051C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC020, &unk_213D99450);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213CD0ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC020, &unk_213D99450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_213CD0F8C@<D0>(_OWORD *a1@<X8>)
{
  sub_213D52540();
  sub_213D90C1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_213CD0FE0()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_213CD1018(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC048, &unk_213D995C0);
  sub_213D908CC();
  sub_213D524DC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD10A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D902AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 24) + 48) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 24) + 48) >> 1);
  }

  else
  {
    return 0;
  }
}

double sub_213CD1164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_213D902AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 24);
    result = 0.0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    *(v12 + 48) = 2 * -a2;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0u;
    *(v12 + 130) = 0u;
  }

  return result;
}

uint64_t sub_213CD1248(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213CD1304(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD13B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_213CD1470(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_213CD1534(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_213D589A0(v2);
}

uint64_t sub_213CD1564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for _MapStylePicker();
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = type metadata accessor for _MapStylePickerAttribution(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v5 + v8;
  v10 = *(v7 + 64);
  v11 = (v0 + v4);
  v12 = *v11;

  if (v11[2])
  {
    v13 = v11[1];

    v14 = v11[2];

    if (v11[5] != 1)
    {

      v15 = v11[6];
    }

    if (v11[11] != 1)
    {

      v16 = v11[12];
    }
  }

  v17 = v9 & ~v8;
  sub_213CE2B28(v11[24], *(v11 + 200));

  v18 = v11[27];

  v19 = (v11 + *(v3 + 52));
  if (!(*(v7 + 48))(v19, 1, v6))
  {

    v20 = *(v6 + 20);
    v21 = sub_213D902EC();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v19 + v20, 1, v21))
    {
      (*(v22 + 8))(v19 + v20, v21);
    }
  }

  v23 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898) + 28));

  v24 = *(v6 + 20);
  v25 = sub_213D902EC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v0 + v17 + v24, 1, v25))
  {
    (*(v26 + 8))(v0 + v17 + v24, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_213CD1834()
{
  MEMORY[0x21604FCE0](v0 + 16);

  return swift_deallocObject();
}

id sub_213CD1878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredConfiguration];
  *a2 = result;
  return result;
}

uint64_t sub_213CD18CC()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213CD1904(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBF08, &unk_213D99D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBF28, &qword_213D98B78);
  sub_213D5AD90(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);
  sub_213D90EDC();
  sub_213D5AD90(&qword_27C8EBF18, &qword_27C8EBF08, &unk_213D99D40);
  swift_getWitnessTable();
  sub_213D90EDC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD1A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213CD1A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CD1AFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_213CD1BCC()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_213CD1C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
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

uint64_t sub_213CD1D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
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

uint64_t sub_213CD1DEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapCompassConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD1E90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapCompassConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD1F30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_213D9051C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_213CD1FDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_213D9051C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD207C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingMapContentModifier();
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD2138(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_213D9100C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[14];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_213CD2260(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_213D90CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_213D9100C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[14];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_213CD2390(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[13];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _MapContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[15]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_213CD2498(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
  }

  else
  {
    result = type metadata accessor for _MapContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[15]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[14];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CD259C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CD261C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D71A68(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_213CD2658(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapContentList.Item.Content(0);
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
      v13 = sub_213D9100C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213CD277C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MapContentList.Item.Content(0);
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
      v13 = sub_213D9100C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213CD2904(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for _MapView();

  return swift_getWitnessTable();
}

uint64_t sub_213CD2958(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _MapContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_213CD2A60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for _MapContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CD2B64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_213D908CC();
  v3 = sub_213D9057C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_213CD2D24()
{
  sub_213D1E068(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_213CD2D78()
{

  return swift_deallocObject();
}

double sub_213CD2DB8@<D0>(uint64_t a1@<X8>)
{
  sub_213D64778();
  sub_213D90C1C();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_213CD2E44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED2C8, &qword_213D9C7D0);
  sub_213D908CC();
  sub_213D7AE7C();
  return swift_getWitnessTable();
}

double sub_213CD2EBC@<D0>(_OWORD *a1@<X8>)
{
  sub_213D7EC1C();
  sub_213D90C1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_213CD2F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213CD2F54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED358, &qword_213D9CA38);
  sub_213D908CC();
  sub_213D7E63C();
  return swift_getWitnessTable();
}

uint64_t sub_213CD3024(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD30CC(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D81790();
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD3188(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD3230(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D81790();
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD32EC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    v2 = *(v0 + 24);
  }

  if (*(v0 + 56))
  {
    v3 = *(v0 + 48);

    v4 = *(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_213CD33B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentInputs(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213CD3420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentInputs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CD3490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  type metadata accessor for TupleMapContent();
  v7 = sub_213D9057C();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for _MapContentInputs(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 36));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213CD35AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  type metadata accessor for TupleMapContent();
  v9 = sub_213D9057C();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    result = type metadata accessor for _MapContentInputs(0);
    v15 = *(result - 8);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 28);
  }

  return v12(v13, a2, a2, v11);
}

uint64_t sub_213CD36F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_213CD3814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CD393C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapUserLocationButtonConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD39E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapUserLocationButtonConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD3A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90A6C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_213D9051C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213CD3B94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_213D90A6C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_213D9051C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CD3CA8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for _MapControlsModifier();
  sub_213D908CC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213CD3D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED998, &qword_213D9DF08);
  sub_213D908CC();
  sub_213CEDCEC(qword_27C8ED9A0, &qword_27C8ED998, &qword_213D9DF08);
  return swift_getWitnessTable();
}

uint64_t sub_213CD3DE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 2)
  {
    v18 = ((v17 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v18 = -2;
  }

  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_213CD3FD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 2;
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

uint64_t sub_213CD41A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for _MapControlsModifier();
  v4 = *(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = v0 + ((v4 + 32) & ~v4);
  v7 = type metadata accessor for MapPitchToggleConfig(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v8 = v7[6];
    v9 = sub_213D90A6C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = v7[7];
    v11 = sub_213D9051C();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
    v12 = *(v6 + v7[8]);
  }

  v13 = type metadata accessor for MapControlsConfig();
  v14 = v6 + v13[5];
  v15 = type metadata accessor for MapScaleViewConfig(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v15 + 28);
    v17 = sub_213D9051C();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  v18 = v6 + v13[6];
  v19 = type metadata accessor for MapUserLocationButtonConfig(0);
  if (!(*(*(v19 - 1) + 48))(v18, 1, v19))
  {
    v20 = v19[6];
    v21 = sub_213D90A6C();
    (*(*(v21 - 8) + 8))(v18 + v20, v21);
    v22 = v19[7];
    v23 = sub_213D9051C();
    (*(*(v23 - 8) + 8))(v18 + v22, v23);
    v24 = *(v18 + v19[8]);
  }

  v25 = v6 + v13[7];
  v26 = type metadata accessor for MapCompassConfig(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 24);
    v28 = sub_213D9051C();
    (*(*(v28 - 8) + 8))(v25 + v27, v28);
  }

  v29 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAB8, &qword_213D9E0C0) + 28));

  (*(*(v2 - 8) + 8))(v6 + *(v3 + 36), v2);

  return swift_deallocObject();
}

uint64_t sub_213CD4590(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for _MapControlsModifier();
  swift_getWitnessTable();
  sub_213D90EAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA80, &qword_213D9E058);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA88, &qword_213D9E060);
  sub_213D908CC();
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA90, &qword_213D9E068);
  sub_213D908CC();
  sub_213CEDCEC(&qword_27C8EDA98, &qword_27C8EDA88, &qword_213D9E060);
  swift_getWitnessTable();
  sub_213D8BA40();
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EDAA8, &qword_27C8EDA90, &qword_213D9E068);
  swift_getWitnessTable();
  sub_213D90E4C();
  sub_213D908CC();
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EDAB0, &qword_27C8EDA80, &qword_213D9E058);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_213CD481C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_213CD4828(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_213CD4834@<X0>(_BYTE *a1@<X8>)
{
  sub_213D8BFF0();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CD4884(char *a1)
{
  v2 = *a1;
  sub_213D8BFF0();
  return sub_213D90C2C();
}

uint64_t sub_213CD48D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB08, &qword_213D9E288);
  sub_213D908CC();
  sub_213D8BF8C();
  return swift_getWitnessTable();
}

uint64_t sub_213CD4950(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_213D908CC();
  sub_213D8CA14();
  return swift_getWitnessTable();
}

uint64_t sub_213CD49B8()
{
  sub_213CE2B28(*(v0 + 24), *(v0 + 32));
  if ((*(v0 + 56) & 1) == 0)
  {
    MEMORY[0x21604FCE0](v0 + 48);
  }

  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_213CD4AA0@<X0>(void *a1@<X8>)
{
  sub_213D4F278();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CD4AF0(uint64_t *a1)
{
  v2 = *a1;
  sub_213D4F278();
  return sub_213D90C2C();
}

uint64_t sub_213CD4B3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC58, &qword_213D9E5F0);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC60, &qword_213D9E6A0);
  sub_213D908CC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213CD4C18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC68, &qword_213D9E6A8);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD4CA8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213CD4CF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_213CD4D48(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC80, &qword_213D9E830);
  sub_213D8EF34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD4E28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapInteractionModes(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MapInteractionModes(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id UserLocation.location.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *UserLocation.heading.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_213CD4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 4)
  {
    MEMORY[0x21604E3D0](a5);
  }

  return sub_213D9131C();
}

uint64_t sub_213CD4FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 == 4)
  {
    v4 = 0;
  }

  else
  {
    v8 = a1;
    v5 = a2;
    v6 = MEMORY[0x21604E3D0](a3);
    a2 = v5;
    v4 = v6;
    a1 = v8;
  }

  return MEMORY[0x28212F470](a1, a2, v4 | ((v3 == 4) << 8));
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_213CD50B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_213CD510C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

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

uint64_t sub_213CD5288(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21604F1E0](a1, &v6);
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

uint64_t sub_213CD52DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_213D9202C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_213CD5334@<X0>(_DWORD *a1@<X8>)
{
  result = sub_213D9203C();
  *a1 = result;
  return result;
}

uint64_t sub_213CD535C(uint64_t a1, id *a2)
{
  result = sub_213D9191C();
  *a2 = 0;
  return result;
}

uint64_t sub_213CD53D4(uint64_t a1, id *a2)
{
  v3 = sub_213D9192C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_213CD5454@<X0>(uint64_t *a1@<X8>)
{
  sub_213D9193C();
  v2 = sub_213D9190C();

  *a1 = v2;
  return result;
}

uint64_t sub_213CD5498()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD550C()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD5550()
{
  sub_213CD5774(&qword_27C8E9B30, type metadata accessor for MKPointOfInterestCategory);
  sub_213CD5774(&qword_27C8E9B38, type metadata accessor for MKPointOfInterestCategory);

  return sub_213D91F1C();
}

_DWORD *sub_213CD560C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_213CD5628()
{
  v2 = *v0;
  sub_213CD5774(&qword_27C8E9B40, type metadata accessor for AnyAttribute);
  sub_213CD5774(&unk_27C8E9B48, type metadata accessor for AnyAttribute);
  return sub_213D91F1C();
}

uint64_t sub_213CD5774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213CD5894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_213D9190C();

  *a2 = v5;
  return result;
}

uint64_t sub_213CD58DC()
{
  sub_213CD5774(&qword_27C8E9B90, type metadata accessor for Key);
  sub_213CD5774(&qword_27C8E9B98, type metadata accessor for Key);

  return sub_213D91F1C();
}

uint64_t sub_213CD5998()
{
  v1 = *v0;
  v2 = sub_213D9193C();
  v3 = MEMORY[0x21604EB60](v2);

  return v3;
}

uint64_t sub_213CD59D4()
{
  v1 = *v0;
  sub_213D9193C();
  sub_213D9195C();
}

uint64_t sub_213CD5A28()
{
  v1 = *v0;
  sub_213D9193C();
  sub_213D91FBC();
  sub_213D9195C();
  v2 = sub_213D91FFC();

  return v2;
}

uint64_t sub_213CD5A9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_213D9193C();
  v6 = v5;
  if (v4 == sub_213D9193C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_213D91F5C();
  }

  return v9 & 1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213CD5BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213CD5C2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void sub_213CD5DF4(uint64_t a1, unint64_t *a2)
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

void static PointOfInterestCategories.all.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t static PointOfInterestCategories.excluding(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = a1;
}

uint64_t static PointOfInterestCategories.including(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
}

uint64_t PointOfInterestCategories.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_213CD5EBC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_213CD5EE8()
{
  sub_213CD6270();
  sub_213D90C1C();
  return v1;
}

uint64_t View.mapAttribution(showsLegal:logoVisibility:)()
{
  swift_getKeyPath();
  sub_213D9130C();
}

uint64_t sub_213CD5FA8@<X0>(_BYTE *a1@<X8>)
{
  sub_213CD6270();
  result = sub_213D90C1C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_213CD6000(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_213CD6270();
  return sub_213D90C2C();
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

unint64_t sub_213CD609C()
{
  result = qword_27C8E9C18;
  if (!qword_27C8E9C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9C10, &qword_213D94168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9C18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapAttribution(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MapAttribution(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_213CD6270()
{
  result = qword_27C8E9C20;
  if (!qword_27C8E9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9C20);
  }

  return result;
}

uint64_t sub_213CD62D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C98, &qword_213D9BED0);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  v14 = type metadata accessor for _MapContentInputs(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_213D9106C();
  v18 = *(v26 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v26);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(a1, v17);
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    v25[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9CA0, &unk_213D94360);
    sub_213CD8784();
    sub_213D90C9C();
    sub_213CD62D8(v13, v17);
    sub_213CD70D4(v9, v7);
    v23 = sub_213D910DC();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {
      sub_213CD8330(v9, &qword_27C8E9C28, &qword_213D94200);
      (*(v27 + 8))(v13, v25[0]);
      sub_213CD7144(v17);
      (*(v18 + 8))(v21, v26);
      return sub_213CD8330(v7, &qword_27C8E9C28, &qword_213D94200);
    }

    else
    {
      sub_213D910CC();
      sub_213CD8330(v9, &qword_27C8E9C28, &qword_213D94200);
      (*(v27 + 8))(v13, v25[0]);
      sub_213CD7144(v17);
      (*(v18 + 8))(v21, v26);
      return (*(v24 + 8))(v7, v23);
    }
  }

  return result;
}

uint64_t static MapContent._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_213D9057C();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = type metadata accessor for _MapContentInputs(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_213D9106C();
  v20 = *(v30 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v30);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(v29, v19);
  v29 = a1;
  sub_213CD701C();
  v24 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v15, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_213CD70D4(v10, v8);
  v26 = sub_213D910DC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_213CD8330(v10, &qword_27C8E9C28, &qword_213D94200);
    (*(v32 + 8))(v15, v33);
    sub_213CD7144(v19);
    (*(v20 + 8))(v23, v30);
    return sub_213CD8330(v24, &qword_27C8E9C28, &qword_213D94200);
  }

  else
  {
    sub_213D910CC();
    sub_213CD8330(v10, &qword_27C8E9C28, &qword_213D94200);
    (*(v32 + 8))(v15, v33);
    sub_213CD7144(v19);
    (*(v20 + 8))(v23, v30);
    return (*(v27 + 8))(v24, v26);
  }
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

uint64_t sub_213CD6B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentInputs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MapContent._mapContentCount(inputs:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_213CD6CA0(void (*a1)(double))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C80, &qword_213D94348);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C88, &unk_213D94350);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  a1(v11);
  sub_213D90FBC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213CD8330(v5, &qword_27C8E9C80, &qword_213D94348);
    return *MEMORY[0x277CEF7D0];
  }

  v15 = *(v7 + 32);
  v15(v13, v5, v6);
  result = (v15)(v9, v13, v6);
  if (v8 == 4)
  {
    v14 = *v9;
    (*(v7 + 8))(v9, v6);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_213CD6F68@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C88, &unk_213D94350);
  if (*(*(result - 8) + 64) == 4)
  {
    return (*(*(result - 8) + 16))(a2, &v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CD701C()
{
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MapContentBodyAccessor();
    swift_getWitnessTable();
    return sub_213D90C9C();
  }

  return result;
}

uint64_t sub_213CD70D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CD7144(uint64_t a1)
{
  v2 = type metadata accessor for _MapContentInputs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213CD71A0(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](result);
    type metadata accessor for MapContentBodyAccessor();
    swift_getWitnessTable();
    return sub_213D90C8C();
  }

  return result;
}

uint64_t sub_213CD7254(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_213CD71A0(result, a2);
}

uint64_t sub_213CD72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a4;
  v7[2] = a5;
  result = _callVisitMapContentType1(v7, a2, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CD7350()
{
  v19 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_213D9057C();
  v2 = sub_213D91C7C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16[-v5];
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v16[-v9];
  sub_213D906FC();
  v18 = AssociatedTypeWitness;
  v11 = sub_213D903FC();
  sub_213CDDDA4(v10, sub_213CD85D8, v17, AssociatedTypeWitness, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  sub_213CDF770(IndirectAttribute2, v6);
  (*(*(v1 - 8) + 56))(v6, 0, 1, v1);
  result = sub_213D90FCC();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CD7594()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_213D9057C();
  v2 = sub_213D91C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - v6;
  v8 = *(v1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = (&v16 - v10);
  sub_213D90FBC();
  if ((*(v8 + 48))(v7, 1, v1) == 1)
  {
    return (*(v3 + 8))(v7, v2);
  }

  (*(v8 + 32))(v11, v7, v1);
  sub_213CDF810(v11);
  v13 = (v0 + *(type metadata accessor for _MapContentOutputs.SetDependency(0) + 20));
  v14 = *v13;
  v15 = *MEMORY[0x277CEF7D0];
  *(v13 + 4);
  AGGraphSetIndirectDependency();
  return (*(v8 + 8))(v11, v1);
}

uint64_t sub_213CD77C8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_213D9057C();
  v2 = sub_213D91C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(v1 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v26 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v30 = (&v23 - v14);
  v15 = *(type metadata accessor for _MapContentOutputs.SetSource(0) + 20);
  v29 = v0;
  sub_213D90FBC();
  v16 = *(v10 + 48);
  if (v16(v9, 1, v1) == 1)
  {
    return (*(v3 + 8))(v9, v2);
  }

  v24 = v3;
  v25 = v2;
  v18 = *(v10 + 32);
  v18(v30, v9, v1);
  v19 = v28;
  sub_213D90FBC();
  if (v16(v19, 1, v1) == 1)
  {
    (*(v10 + 8))(v30, v1);
    return (*(v24 + 8))(v19, v25);
  }

  else
  {
    v20 = v26;
    v18(v26, v19, v1);
    sub_213CDF810(v20);
    v21 = v30;
    sub_213CDF810(v30);
    AGGraphSetIndirectAttribute();
    v22 = *(v10 + 8);
    v22(v20, v1);
    return (v22)(v21, v1);
  }
}

void sub_213CD7AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_213D9057C();
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  sub_213D90FBC();
  v15 = a2;
  v16 = a3;
  v10 = sub_213D903FC();
  sub_213CF3D9C(sub_213CD8B34, v14, MEMORY[0x277D84A98], v10, v11, &v17);
  (*(v6 + 8))(v9, v5);
  if ((v18 & 1) == 0)
  {
    v12 = AGGraphGetAttributeSubgraph();
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_213CD7CCC();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t sub_213CD7CCC()
{
  v12 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v4 = &v10[-v3];
  sub_213D906FC();
  v11 = AssociatedTypeWitness;
  v5 = sub_213D903FC();
  sub_213CDDDA4(v4, sub_213CD8C44, v10, AssociatedTypeWitness, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
  (*(v1 + 8))(v4, AssociatedTypeWitness);
  result = AGGraphSetIndirectAttribute();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213CD7F28()
{
  sub_213D90C5C();
  if (v0 <= 0x3F)
  {
    sub_213D9059C();
    if (v1 <= 0x3F)
    {
      sub_213D90F3C();
      if (v2 <= 0x3F)
      {
        sub_213CD8278(319, &qword_27C8E9C40, MEMORY[0x277CDE358], MEMORY[0x277CEF780]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EmptyMapContent(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmptyMapContent(_WORD *result, int a2, int a3)
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

void sub_213CD81C4()
{
  sub_213D90FAC();
  if (v0 <= 0x3F)
  {
    sub_213CD8278(319, &qword_27C8E9C78, type metadata accessor for AnyAttribute, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213CD8278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213CD82DC()
{
  result = qword_27C8EB330;
  if (!qword_27C8EB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB330);
  }

  return result;
}

uint64_t sub_213CD8330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_213CD8390()
{
  result = qword_27C8ECB80;
  if (!qword_27C8ECB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECB80);
  }

  return result;
}

unint64_t sub_213CD83E4()
{
  result = qword_27C8EB320;
  if (!qword_27C8EB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB320);
  }

  return result;
}

unint64_t sub_213CD8438()
{
  result = qword_27C8E9C90;
  if (!qword_27C8E9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9C90);
  }

  return result;
}

unint64_t sub_213CD848C()
{
  result = qword_27C8EBA80;
  if (!qword_27C8EBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBA80);
  }

  return result;
}

unint64_t sub_213CD84E0()
{
  result = qword_27C8EB300;
  if (!qword_27C8EB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB300);
  }

  return result;
}

uint64_t sub_213CD8534(uint64_t a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v6[2] = a2;
  v6[3] = a1;
  v2 = sub_213D903FC();
  result = sub_213CDDDA4(v2, sub_213CD85F8, v6, MEMORY[0x277CEF7A8], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CD85F8@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = sub_213D903EC();
  *a1 = result;
  return result;
}

uint64_t sub_213CD8678(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_213D9057C();
  v2 = sub_213D91C7C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  return sub_213D90FCC();
}

unint64_t sub_213CD8784()
{
  result = qword_27C8E9CA8;
  if (!qword_27C8E9CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9CA0, &unk_213D94360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9CA8);
  }

  return result;
}

unint64_t sub_213CD87E8()
{
  result = qword_27C8E9CB0[0];
  if (!qword_27C8E9CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8E9CB0);
  }

  return result;
}

unint64_t sub_213CD883C()
{
  result = qword_27C8EB310;
  if (!qword_27C8EB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB310);
  }

  return result;
}

uint64_t sub_213CD8900()
{
  result = sub_213D90FAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_10Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CD8A90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213CD8AC8()
{
  result = sub_213D90FAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213CD8B34@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_213CDF810(a1);
  *a2 = result;
  return result;
}

uint64_t sub_213CD8B94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return (*(v2 + 24))(v1);
}

uint64_t MapUserTrackingMode.hashValue.getter()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD8CFC()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD8D70()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

unint64_t sub_213CD8DB8()
{
  result = qword_27C8E9D58;
  if (!qword_27C8E9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9D58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapUserTrackingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapUserTrackingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static ForEach<>._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v76 = a2;
  v77 = a1;
  v74 = a9;
  v84 = *MEMORY[0x277D85DE8];
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v15 = _s21AttachCombinerVisitorVMa();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v71 = &v63 - v17;
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  StateVMa = _s9MakeStateVMa();
  v69 = *(StateVMa - 8);
  v70 = StateVMa;
  v22 = *(v69 + 64);
  MEMORY[0x28223BE20](StateVMa);
  v68 = (&v63 - v23);
  v24 = type metadata accessor for _MapContentOutputs(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v67 = a8;
  v31 = _s18AddCombinerVisitorVMa();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v63 - v33);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v66 = v30;
  sub_213CDEA2C(v30, v34, type metadata accessor for _MapContentOutputs);
  swift_getWitnessTable();
  v35 = v76;
  sub_213CD6C10();
  v36 = a3;
  v78 = a3;
  v79 = a4;
  v37 = a4;
  v38 = a5;
  v80 = a5;
  v81 = a6;
  v39 = a6;
  v40 = a7;
  v82 = a7;
  sub_213D916BC();
  v65 = sub_213CDF810(v77);
  v41 = v35;
  v42 = v75;
  sub_213CDDF50(v41, v75, type metadata accessor for _MapContentInputs);
  v77 = v34;
  sub_213CDDF50(v34, v28, type metadata accessor for _MapContentOutputs);
  v43 = AGSubgraphGetCurrent();
  if (!v43)
  {
    __break(1u);
  }

  v44 = v43;
  v45 = v36;
  v64 = v36;
  v46 = v67;
  v47 = sub_213CD9A0C(v36, v37, v38, v39, v40);
  v62[1] = v38;
  v62[0] = v37;
  v48 = v68;
  v51 = sub_213CD9574(v65, v42, v28, v44, v47, v49, v50, v68);
  v76 = &v63;
  MEMORY[0x28223BE20](v51);
  v78 = v45;
  v79 = v37;
  v80 = v38;
  v81 = v39;
  v82 = v40;
  v83 = v46;
  v52 = _s9ItemStateVMa();
  v53 = v70;
  v62[2] = v52;
  v62[3] = v70;
  v62[4] = swift_getWitnessTable();
  v54 = sub_213D903FC();
  sub_213CDDDA4(v48, sub_213CDDFD0, v62, v53, MEMORY[0x277D84A98], v54, MEMORY[0x277D84AC0], v55);
  (*(v69 + 8))(v48, v53);
  v56 = v77;
  LODWORD(v44) = v78;
  v57 = v66;
  sub_213CDDF50(v77, v66, type metadata accessor for _MapContentOutputs);
  v58 = v71;
  sub_213CDEA2C(v57, v71, type metadata accessor for _MapContentOutputs);
  v78 = v64;
  v79 = v37;
  v80 = v38;
  v81 = v39;
  v82 = v40;
  v83 = v46;
  *(v58 + *(_s21AttachCombinerVisitorVMa() + 68)) = v44;
  v59 = v73;
  swift_getWitnessTable();
  sub_213CD7018();
  (*(v72 + 8))(v58, v59);
  result = sub_213CDEA2C(v56, v74, type metadata accessor for _MapContentOutputs);
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CD9574@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, _DWORD *a8@<X8>)
{
  *a8 = a1;
  StateVMa = _s9MakeStateVMa();
  sub_213CDEA2C(a2, a8 + StateVMa[17], type metadata accessor for _MapContentInputs);
  result = sub_213CDEA2C(a3, a8 + StateVMa[18], type metadata accessor for _MapContentOutputs);
  *(a8 + StateVMa[19]) = a4;
  v17 = a8 + StateVMa[20];
  *v17 = a5;
  *(v17 + 1) = a6;
  *(v17 + 4) = a7;
  return result;
}

void *sub_213CD9658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_213CD96D4(a1, a2, a3, a4, a5, a6);
}

void *sub_213CD96D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *v6;
  *(v6 + *(*v6 + 176)) = 0;
  v6[2] = a1;
  sub_213CDEA2C(a2, v6 + qword_27C8E9D70, type metadata accessor for _MapContentOutputs);
  v12 = *(*v6 + 152);
  v13 = *(*(v11[13] + 8) + 8);
  v14 = v11[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v6 + v12, a4, AssociatedTypeWitness);
  (*(*(v11[11] - 8) + 32))(v6 + *(*v6 + 144), a3);
  *(v6 + *(*v6 + 160)) = a5;
  *(v6 + *(*v6 + 168)) = a6;
  return v6;
}

id *sub_213CD9880()
{
  v1 = *v0;

  sub_213CDE780(v0 + qword_27C8E9D70, type metadata accessor for _MapContentOutputs);
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 18));
  v2 = *(*v0 + 19);
  v3 = *(*(v1[13] + 8) + 8);
  v4 = v1[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_213CD99B8()
{
  v0 = sub_213CD9880();
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_213CD9A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _s4ItemCMa();
  v8 = sub_213D91A3C();
  swift_getTupleTypeMetadata2();
  v9 = sub_213D91A3C();
  sub_213D2CADC(v9, a2, v7, a5);

  return v8;
}

uint64_t sub_213CD9AC4(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v21[0] = *(a1 + 16);
  v24 = v21[0];
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v7 = sub_213D916BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  sub_213CDC254(a1, v21 - v10);
  v12 = sub_213CD9CEC(v11, a1);
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = (v1 + *(a1 + 80));
    v15 = *v14;
    v16 = v14[1];
    LODWORD(v14) = *(v14 + 4);
    v22[0] = v15;
    v22[1] = v16;
    v23 = v14;
    MEMORY[0x28223BE20](result);
    v21[-2] = a1;
    v21[-1] = swift_getWitnessTable();
    v17 = *(a1 + 56);

    v24 = v21[0];
    v25 = v3;
    v26 = v4;
    v27 = v5;
    v28 = v6;
    v29 = v17;
    v18 = _s9ItemStateVMa();
    sub_213CDDDA4(v22, sub_213CDE750, &v21[-4], v18, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v19);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CD9CEC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v106 = a1;
  v88 = *(*(a2 + 24) - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](a1);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v7;
  v98 = sub_213D91C7C();
  v91 = *(v98 - 8);
  v9 = *(v91 + 64);
  v10 = MEMORY[0x28223BE20](v98);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v81 - v12;
  v105 = *(a2 + 40);
  v13 = *(*(v105 + 8) + 8);
  v14 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v96 = &v81 - v17;
  v18 = sub_213D91C7C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v81 - v20;
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  AssociatedConformanceWitness = &v81 - v24;
  v104 = v13;
  v93 = *(swift_getAssociatedConformanceWitness() + 8);
  v101 = v22;
  v100 = swift_getAssociatedTypeWitness();
  v25 = *(v100 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v100);
  v29 = &v81 - v28;
  v30 = *(v14 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v3 + *(a2 + 76));
  result = AGSubgraphIsValid();
  if (!result)
  {
    return result;
  }

  v85 = v25;
  v82 = v30;
  v84 = result;
  v36 = *(a2 + 80);
  v103 = v3;
  v37 = (v3 + v36);
  ++*(v3 + v36 + 16);
  v38 = *(a2 + 32);
  v39 = *(a2 + 48);
  v110 = v14;
  v111 = v8;
  v86 = v29;
  v40 = v105;
  v112 = v38;
  v113 = v105;
  v114 = v39;
  sub_213D916BC();
  v107 = v33;
  sub_213D9166C();
  v102 = a2;
  v41 = *(a2 + 56);
  v110 = v14;
  v111 = v8;
  v112 = v38;
  v113 = v40;
  v114 = v39;
  v115 = v41;
  v42 = _s4ItemCMa();
  v116 = sub_213D91A3C();
  v81 = v37;
  v43 = v37[1];
  v87 = v37 + 1;
  v110 = v43;
  v105 = v42;
  v44 = v100;
  sub_213D9184C();

  swift_getWitnessTable();
  v95 = v8;
  v106 = v39;
  v109 = sub_213D91B5C();
  v45 = v107;
  v83 = v14;
  sub_213D91B8C();
  v46 = v86;
  sub_213D919AC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = 0;
  v93 = (v90 + 48);
  v92 = (v90 + 32);
  v101 = (v88 + 16);
  v104 = (v88 + 8);
  v91 += 8;
  v90 += 8;
  while (1)
  {
    sub_213D91C8C();
    if ((*v93)(v21, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v48 = v96;
    (*v92)(v96, v21, AssociatedTypeWitness);
    v49 = sub_213CDA75C(v48, v47, v102);
    v110 = v49;
    sub_213D91ABC();

    sub_213D91A8C();
    v50 = *(*v49 + 144);
    swift_beginAccess();
    v51 = v99;
    v52 = v95;
    (*v101)(v99, v49 + v50, v95);
    sub_213D91B4C();
    v53 = AssociatedTypeWitness;
    v54 = v97;
    sub_213D91B1C();

    v55 = v51;
    v44 = v100;
    v56 = v52;
    v45 = v107;
    (*v104)(v55, v56);
    v57 = v54;
    AssociatedTypeWitness = v53;
    (*v91)(v57, v98);
    (*v90)(v48, v53);
    if (__OFADD__(v47++, 1))
    {
      __break(1u);
      break;
    }
  }

  result = (*(v85 + 8))(v46, v44);
  v59 = v109;
  if ((v109 & 0xC000000000000001) != 0)
  {
    sub_213D91CEC();
    v60 = v95;
    result = sub_213D91B2C();
    v59 = v110;
    v61 = v111;
    v62 = v112;
    v63 = v113;
    v64 = v114;
  }

  else
  {
    v63 = 0;
    v65 = -1 << *(v109 + 32);
    v61 = v109 + 56;
    v62 = ~v65;
    v66 = -v65;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v64 = v67 & *(v109 + 56);
    v60 = v95;
  }

  v68 = (v88 + 56);
  v100 = v62;
  v69 = (v62 + 64) >> 6;
  while (v59 < 0)
  {
    if (!sub_213D91CFC())
    {
      v71 = v89;
LABEL_28:
      (*v68)(v71, 1, 1, v60);
      (*(v82 + 8))(v45, v83);
      sub_213CDE778();
      v78 = v116;
      v79 = v81;
      v80 = *v81;

      *v79 = v78;
      return v84;
    }

    v72 = v89;
    sub_213D91F4C();
    v71 = v72;
    swift_unknownObjectRelease();
LABEL_26:
    (*v68)(v71, 0, 1, v60);
    sub_213D9187C();
    sub_213D9183C();
    result = (*v104)(v71, v60);
    v75 = v108;
    if (v108)
    {
      v76 = *(v103 + *(v102 + 76));
      v77 = *(v108 + 16);
      AGSubgraphRemoveChild();
      *(v75 + *(*v75 + 176)) = 1;
    }

    v45 = v107;
  }

  if (v64)
  {
    v70 = v63;
    v71 = v89;
LABEL_25:
    v74 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    (*(v88 + 16))(v71, *(v59 + 48) + *(v88 + 72) * (v74 | (v70 << 6)), v60);
    goto LABEL_26;
  }

  v73 = v63;
  v71 = v89;
  while (1)
  {
    v70 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v70 >= v69)
    {
      goto LABEL_28;
    }

    v64 = *(v61 + 8 * v70);
    ++v73;
    if (v64)
    {
      v63 = v70;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v95 = a2;
  v7 = *(a3 + 40);
  v8 = *(*(v7 + 8) + 8);
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v81 = &v74 - v11;
  v12 = type metadata accessor for _MapContentOutputs(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v80 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v74 - v16;
  v17 = type metadata accessor for _MapContentInputs(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v86 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 24);
  v91 = *(v21 - 8);
  v22 = *(v91 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v78 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - v25;
  v27 = *(a3 + 48);
  v77 = *(a3 + 32);
  *&v28 = v77;
  v82 = v7;
  *(&v28 + 1) = v7;
  v92 = v28;
  v79 = v9;
  *&v29 = v9;
  *(&v29 + 1) = v21;
  v93 = v29;
  v96 = v29;
  v97 = v28;
  v98 = v27;
  v30 = sub_213D916BC();
  v89 = *(v30 - 8);
  v31 = *(v89 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - v32;
  sub_213CDC254(a3, &v74 - v32);
  v85 = a1;
  v34 = v95;
  v90 = v30;
  v94 = v33;
  sub_213D9167C();
  v35 = v4;
  v88 = v4 + *(a3 + 80);
  v37 = v88 + 8;
  v36 = *(v88 + 1);
  v38 = *(a3 + 56);
  v96 = v93;
  v97 = v92;
  v98 = v27;
  v99 = v38;
  v39 = _s4ItemCMa();
  *&v92 = v26;
  v40 = v39;
  *&v93 = v21;
  sub_213D9188C();
  v41 = v100;
  if (v100)
  {
    v42 = *v100;
    v43 = *(*v100 + 176);
    if (v100[v43] == 1)
    {
      v100[v43] = 0;
      v44 = *(v35 + *(a3 + 76));
      v45 = *(v41 + 2);
      AGSubgraphAddChild();
      v42 = *v41;
    }

    v46 = *(v42 + 168);
    v47 = *(v88 + 4);
    v49 = v91;
    v48 = v92;
    v50 = v93;
    if (*&v41[v46] != v47)
    {
      v51 = *(v42 + 152);
      swift_beginAccess();
      (*(v83 + 24))(&v41[v51], v85, AssociatedTypeWitness);
      swift_endAccess();
      *&v41[*(*v41 + 160)] = v34;
      v52 = *(*v41 + 144);
      swift_beginAccess();
      (*(v49 + 24))(&v41[v52], v48, v50);
      swift_endAccess();
      *&v41[v46] = v47;
    }

    goto LABEL_8;
  }

  v75 = v40;
  v76 = v37;
  v53 = v82;
  v54 = *(v35 + *(a3 + 76));
  v55 = AGSubgraphGetGraph();
  v56 = AGSubgraphCreate();

  v57 = v56;
  AGSubgraphAddChild();
  result = AGGraphGetCurrentAttribute();
  if (result != *MEMORY[0x277CEF7D0])
  {
    v59 = result;
    v60 = *v35;
    v61 = v86;
    sub_213CDDF50(v35 + *(a3 + 68), v86, type metadata accessor for _MapContentInputs);
    AGGraphClearUpdate();
    v62 = AGSubgraphGetCurrent();
    v74 = v57;
    AGSubgraphSetCurrent();
    v73 = v27;
    v72 = v53;
    v50 = v93;
    v63 = v87;
    v82 = v27;
    v48 = v92;
    v64 = v85;
    sub_213CDAF04(v60, v61, v92, v95, v94, v85, v59, v79, v87, v93, v77, v72, v73, v38);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v65 = v63;
    v66 = v80;
    sub_213CDDF50(v65, v80, type metadata accessor for _MapContentOutputs);
    v49 = v91;
    v67 = *(v91 + 16);
    v68 = v78;
    v67(v78, v48, v50);
    v69 = v81;
    (*(v83 + 16))(v81, v64, AssociatedTypeWitness);
    LODWORD(v64) = *(v88 + 4);
    v70 = *(v75 + 48);
    v71 = *(v75 + 52);
    swift_allocObject();
    v41 = sub_213CD96D4(v74, v66, v68, v69, v95, v64);
    v67(v68, v48, v50);
    *&v96 = v41;
    sub_213D9187C();

    sub_213D9189C();
    sub_213CDE780(v87, type metadata accessor for _MapContentOutputs);
    sub_213CDE780(v86, type metadata accessor for _MapContentInputs);
LABEL_8:
    (*(v49 + 8))(v48, v50);
    (*(v89 + 8))(v94, v90);
    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDAF04@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v95 = a7;
  v92 = a6;
  v91 = a5;
  v84 = a4;
  v105 = a3;
  v103 = a2;
  v106 = a1;
  v100 = a9;
  v123 = *MEMORY[0x277D85DE8];
  v99 = sub_213D9057C();
  v98 = *(v99 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v72 - v16;
  v117 = a8;
  v118 = a10;
  v119 = a11;
  v120 = a12;
  v121 = a13;
  v122 = a14;
  v93 = _s5ChildVMa();
  v96 = *(v93 - 8);
  v17 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = (&v72 - v18);
  v89 = *(*(a12 + 8) + 8);
  v19 = *(v89 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v20 = *(v87 + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v85 = &v72 - v22;
  v73 = a8;
  v86 = *(a8 - 8);
  v23 = *(v86 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v83 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a11;
  v94 = *(a11 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v24);
  v104 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for _MapContentInputs(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v102 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a10 - 8);
  v82 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v101 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a8;
  v118 = a10;
  v119 = a11;
  v120 = a12;
  v121 = a13;
  v122 = a14;
  v81 = a14;
  v36 = _s11ChildTraitsVMa();
  v78 = *(v36 - 8);
  v37 = *(v78 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v72 - v38;
  v40 = *(v103 + *(v29 + 36));
  v79 = *(v33 + 16);
  v80 = v33 + 16;
  v41 = v101;
  v79(v101, v105, a10);
  v77 = a13;
  v42 = v41;
  v43 = v73;
  v75 = a10;
  v44 = v74;
  v76 = a12;
  sub_213CDB900(v106, v40, v42, v84, a10, v39);
  v115 = v36;
  WitnessTable = swift_getWitnessTable();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8E9FF8, &unk_213D94800);
  sub_213CDDDA4(v39, sub_213CDE810, v114, v36, MEMORY[0x277D84A98], v45, MEMORY[0x277D84AC0], v46);
  v84 = 0;
  (*(v78 + 8))(v39, v36);
  v47 = v117;
  v48 = v102;
  sub_213CDDF50(v103, v102, type metadata accessor for _MapContentInputs);
  *(v48 + *(v29 + 36)) = v47;
  v117 = v43;
  v118 = a10;
  v119 = v44;
  v120 = a12;
  v121 = a13;
  sub_213D916BC();
  v49 = sub_213D9168C();
  v50 = v83;
  sub_213D9166C();
  v51 = sub_213D91BAC();
  v52 = v87;
  v53 = v85;
  v54 = AssociatedTypeWitness;
  (*(v87 + 16))(v85);
  v51(&v117, 0);
  (*(v86 + 8))(v50, v43);
  v49(v53);

  (*(v52 + 8))(v53, v54);
  v55 = v101;
  v56 = v75;
  v79(v101, v105, v75);
  v57 = v90;
  v58 = v106;
  *v90 = v95;
  *(v57 + 4) = v58;
  v117 = v43;
  v118 = v56;
  v119 = v44;
  v120 = v76;
  v59 = v81;
  v121 = v77;
  v122 = v81;
  v60 = _s5ChildVMa();
  (*(v82 + 32))(v57 + *(v60 + 72), v55, v56);
  v61 = v93;
  v111 = v44;
  v112 = v93;
  v113 = swift_getWitnessTable();
  v62 = sub_213D903FC();
  v63 = MEMORY[0x277D84A98];
  v64 = MEMORY[0x277D84AC0];
  sub_213CDDDA4(v57, sub_213CDF734, v110, v61, MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v65);
  (*(v96 + 8))(v57, v61);
  LODWORD(v56) = v117;
  v108 = v44;
  v109 = v117;
  v66 = v104;
  sub_213CDDDA4(v104, sub_213CDE908, v107, v44, v63, MEMORY[0x277D839B0], v64, v67);
  v68 = v97;
  sub_213CDF770(v56, v97);
  v69 = v102;
  (*(v59 + 32))(v68, v102, v44, v59);
  (*(v98 + 8))(v68, v99);
  (*(v94 + 8))(v66, v44);
  result = sub_213CDE780(v69, type metadata accessor for _MapContentInputs);
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_213CDB900@<D0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = _s11ChildTraitsVMa();
  (*(*(a5 - 8) + 32))(&a6[v10[18]], a3, a5);
  *&a6[v10[19]] = a4;
  v11 = v10[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
  v12 = swift_allocObject();
  *&result = 1;
  *(v12 + 16) = xmmword_213D94520;
  *(v12 + 32) = -1;
  *(v12 + 72) = 0;
  *&a6[v11] = v12;
  return result;
}

void sub_213CDB9E8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_213CDBA10(_OWORD *a1)
{
  v2 = *v1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  _s9ItemStateVMa();
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);
  v6 = *(Value + 16);

  return v4;
}

uint64_t sub_213CDBA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 4);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = sub_213D916BC();
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a2, Value, v5);
}

uint64_t sub_213CDBB28(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v63 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 40);
  v8 = *(*(v7 + 8) + 8);
  v9 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = v55 - v12;
  v59 = *(v9 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v16 = *(a1 + 48);
  *&v17 = v9;
  *(&v17 + 1) = v15;
  v65 = v3;
  *&v18 = v3;
  *(&v18 + 1) = v7;
  v70 = v18;
  v71 = v17;
  v73 = v17;
  v74 = v18;
  v75 = v16;
  v66 = sub_213D916BC();
  v56 = *(v66 - 8);
  v19 = *(v56 + 64);
  MEMORY[0x28223BE20](v66);
  v21 = v55 - v20;
  v60 = v8;
  v22 = *(v8 + 8);
  v23 = swift_getAssociatedTypeWitness();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v67 = v55 - v26;
  v27 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v1, a1);
  v31 = *(a1 + 72);
  sub_213CDBA10(a1);
  v32 = *(a1 + 56);
  v73 = v71;
  v74 = v70;
  v75 = v16;
  v76 = v32;
  _s4ItemCMa();
  sub_213D9188C();

  result = (*(*(v15 - 8) + 8))(&v29[v31], v15);
  v34 = v72;
  if (v72)
  {
    v35 = *(v72 + *(*v72 + 168));
    sub_213CDBA10(a1);
    v37 = v36;

    if (v35 == v37)
    {
      v55[1] = v1;
      sub_213CDBA90(a1, v21);
      v38 = v57;
      v39 = v66;
      sub_213D9166C();
      *&v71 = *(v56 + 8);
      (v71)(v21, v39);
      v40 = *(*v34 + 152);
      swift_beginAccess();
      v41 = v61;
      v42 = v34 + v40;
      v43 = v58;
      v44 = AssociatedTypeWitness;
      (*(v61 + 16))(v58, v42, AssociatedTypeWitness);
      v45 = v38;
      v46 = sub_213D91BAC();
      (*(v68 + 16))(v67);
      v46(&v73, 0);
      (*(v41 + 8))(v43, v44);
      (*(v59 + 8))(v45, v9);
      sub_213CDBA90(a1, v21);
      v47 = v66;
      v48 = sub_213D9168C();
      (v71)(v21, v47);
      v49 = v63;
      v50 = v67;
      v48(v67);

      MEMORY[0x28223BE20](v51);
      v55[-2] = a1;
      v55[-1] = swift_getWitnessTable();
      v52 = v65;
      sub_213CDDDA4(v49, sub_213CDF74C, &v55[-4], v65, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v53);

      (*(v64 + 8))(v49, v52);
      result = (*(v68 + 8))(v50, v69);
    }

    else
    {
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CDC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = sub_213D916BC();
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a2, Value, v5);
}

uint64_t sub_213CDC2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *MEMORY[0x277CEF7D0];
  v5 = sub_213D9100C();
  v6 = v5;
  if (v3 == v4)
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a1, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a1, v8, 1, v6);
}

uint64_t sub_213CDC44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 48);
  v10 = type metadata accessor for TagValueTraitKey.Value();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v39 = &v39 - v12;
  v47 = *(a1 + 16);
  v48 = v5;
  v43 = v5;
  v49 = *(a1 + 32);
  v41 = v9;
  v50 = v9;
  v45 = sub_213D916BC();
  v13 = *(v45 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v45);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v46 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v39 - v21;
  v23 = v2;
  sub_213CDC2EC(&v39 - v21);
  v24 = sub_213D9100C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v22, 1, v24) == 1)
  {
    sub_213D90FFC();
    if (v26(v22, 1, v24) != 1)
    {
      sub_213CDF4FC(v22);
    }
  }

  else
  {
    (*(v25 + 32))(a2, v22, v24);
  }

  v27 = *(v2 + *(a1 + 76));
  v47 = v27;
  LOBYTE(v48) = 0;
  sub_213CDF564();
  v44 = a2;
  sub_213D9102C();
  sub_213CDC254(a1, v16);
  v28 = v45;
  v29 = sub_213D9163C();
  (*(v13 + 8))(v16, v28);
  if (v29)
  {
    v47 = v27;
    LOBYTE(v48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA198, &qword_213D94A48);
    sub_213CDF660();
    v30 = v44;
    sub_213D9102C();
    v31 = v46;
    (*(v25 + 16))(v46, v30, v24);
    (*(v25 + 56))(v31, 0, 1, v24);
    v47 = v27;
    v51 = 0;
  }

  else
  {
    v32 = *(a1 + 72);
    v34 = v39;
    v33 = v40;
    v45 = *(v40 + 16);
    v35 = v43;
    (v45)(v39, v23 + v32, v43);
    (*(v33 + 56))(v34, 0, 1, v35);
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    v36 = v44;
    sub_213D9102C();
    v31 = v46;
    (*(v25 + 16))(v46, v36, v24);
    (*(v25 + 56))(v31, 0, 1, v24);
    (v45)(v42, v23 + v32, v35);
    sub_213D91D4C();
    v51 = 1;
  }

  v37 = sub_213D71C7C(v31, &v47);
  sub_213CDF5B8(&v47);
  sub_213CDF4FC(v31);
  v47 = v37;
  sub_213CDF60C();
  return sub_213D9102C();
}

uint64_t sub_213CDC980@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D9100C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_213CDC9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_213D9057C();
  v9 = sub_213D91C7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = *(a2 + 32);
  v14 = *(a2 + 56);
  v21 = *MEMORY[0x277CEF7D0];
  v23 = AssociatedTypeWitness;
  v26 = *(a2 + 16);
  v27 = v13;
  v28 = a3;
  v29 = *(a2 + 40);
  v30 = v14;
  v31 = a4;
  v15 = _s25ForEachPreferenceCombinerVMa();
  v24 = v15;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_213D903FC();
  sub_213CDDDA4(&v21, sub_213CDE72C, v22, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  sub_213CDF770(v26, v12);
  (*(*(v8 - 8) + 56))(v12, 0, 1, v8);
  result = sub_213D90FCC();
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213CDCBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28[1] = swift_getAssociatedTypeWitness();
  v8 = sub_213D9057C();
  v9 = sub_213D91C7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v28 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = (v28 - v17);
  sub_213D90FBC();
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    return (*(v10 + 8))(v14, v9);
  }

  (*(v15 + 32))(v18, v14, v8);
  v20 = sub_213CDF810(v18);
  MEMORY[0x28223BE20](v20);
  v21 = a2[2];
  v22 = a2[3];
  v28[-10] = v21;
  v28[-9] = v22;
  v23 = a2[4];
  v24 = a2[5];
  v28[-8] = v23;
  v28[-7] = a3;
  v25 = a2[6];
  v26 = a2[7];
  v28[-6] = v24;
  v28[-5] = v25;
  v28[-4] = v26;
  v28[-3] = a4;
  v28[-2] = v4;
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = a3;
  v28[6] = v24;
  v28[7] = v25;
  v28[8] = v26;
  v28[9] = a4;
  v27 = _s25ForEachPreferenceCombinerVMa();
  v28[-4] = MEMORY[0x28223BE20](v27);
  v28[-3] = sub_213CDE944;
  v28[-2] = &v28[-12];
  AGGraphMutateAttribute();
  return (*(v15 + 8))(v18, v8);
}

uint64_t sub_213CDCEBC(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + *(_s21AttachCombinerVisitorVMa() + 68));
  result = _s25ForEachPreferenceCombinerVMa();
  v5 = *MEMORY[0x277CEF7D0];
  *a1 = v3;
  return result;
}

uint64_t sub_213CDCF78(int a1)
{
  if (*MEMORY[0x277CEF7D0] == a1)
  {
    return 0;
  }

  _s9ItemStateVMa();
  Value = AGGraphGetValue();
  v1 = *Value;
  v3 = *(Value + 8);
  v4 = *(Value + 16);

  return v1;
}

uint64_t sub_213CDD02C@<X0>(uint64_t a1@<X8>)
{
  sub_213D906FC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_213CDD0CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  LODWORD(v86) = a1;
  v81 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  v18 = *(v82 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = &v62 - v19;
  v79 = v20;
  v21 = sub_213D9057C();
  v78 = sub_213D91C7C();
  v73 = *(v78 - 8);
  v22 = *(v73 + 64);
  MEMORY[0x28223BE20](v78);
  v80 = &v62 - v23;
  v24 = type metadata accessor for _MapContentOutputs(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v84 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v21 - 8);
  v28 = *(v75 + 64);
  MEMORY[0x28223BE20](v26);
  v77 = (&v62 - v29);
  v61 = a10;
  v30 = a2;
  v63 = a3;
  v64 = a4;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  result = sub_213CDCF78(v86);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v35 = result;
  v86 = a10;
  sub_213D906FC();

  v68 = v30;
  v87 = v30;
  v36 = v63;
  v37 = v64;
  v88 = v63;
  v89 = v64;
  v69 = v31;
  v90 = v31;
  v91 = v32;
  v70 = v32;
  v71 = v33;
  v92 = v33;
  v38 = _s4ItemCMa();
  v39 = sub_213D91A7C();
  v85 = a5;
  v40 = v80;
  if (!v39)
  {
  }

  v41 = v37;
  v83 = (v75 + 48);
  v74 = (v75 + 32);
  v75 += 8;
  v67 = (v82 + 16);
  v66 = (v82 + 8);
  v65 = (v82 + 32);
  v73 += 8;
  LODWORD(v82) = 1;
  v42 = 4;
  v76 = v38;
  while (1)
  {
    v43 = v42 - 4;
    v44 = sub_213D91A5C();
    sub_213D91A0C();
    if ((v44 & 1) == 0)
    {
      break;
    }

    v45 = *(v35 + 8 * v42);

    v46 = v42 - 3;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v47 = v84;
    sub_213CDDF50(v45 + qword_27C8E9D70, v84, type metadata accessor for _MapContentOutputs);
    sub_213D90FBC();
    v48 = sub_213D90FAC();
    (*(*(v48 - 8) + 8))(v47, v48);
    if ((*v83)(v40, 1, v21) == 1)
    {

      (*v73)(v40, v78);
    }

    else
    {
      v49 = v77;
      (*v74)(v77, v40, v21);
      v50 = v79;
      v51 = sub_213CDF810(v49);
      if (v82)
      {
        Value = AGGraphGetValue();
        v53 = v21;
        v54 = v72;
        (*v67)(v72, Value, v50);

        (*v75)(v49, v53);
        v55 = v81;
        (*v66)(v81, v50);
        v56 = v54;
        v21 = v53;
        (*v65)(v55, v56, v50);
      }

      else
      {
        v57 = MEMORY[0x28223BE20](v51);
        *(&v62 - 10) = v68;
        *(&v62 - 9) = v36;
        *(&v62 - 8) = v41;
        *(&v62 - 7) = v58;
        v59 = v70;
        *(&v62 - 6) = v69;
        *(&v62 - 5) = v59;
        v60 = v86;
        *(&v62 - 4) = v71;
        *(&v62 - 3) = v60;
        LODWORD(v61) = v57;
        sub_213D9070C();

        (*v75)(v49, v21);
      }

      LODWORD(v82) = 0;
      v40 = v80;
    }

    ++v42;
    if (v46 == sub_213D91A7C())
    {
    }
  }

  v45 = sub_213D91DAC();
  v46 = v42 - 3;
  if (!__OFADD__(v43, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_213CDD738@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  return sub_213CDD02C(a1);
}

uint64_t sub_213CDD78C(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2[9];
  v4 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_213D91C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v26 - v14;
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v19 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  sub_213CDD02C(v11);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v7 + 8))(v11, v6);
  }

  else
  {
    v23 = (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    MEMORY[0x28223BE20](v23);
    v26[-2] = a2;
    v26[-1] = swift_getWitnessTable();
    sub_213D48E14(v15, sub_213CDF6C4, &v26[-4], AssociatedTypeWitness, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v24);
    result = (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ForEach<>.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  v10 = *(*(*(a7 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_213D9165C();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_213CDDB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 48);
  v5 = *(v3 - 8);
  v6 = *(*(*(*(v3 - 24) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  return sub_213D91D9C();
}

uint64_t ForEach<>.init(_:id:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_213D9165C();

  v7 = *(*(a5 - 8) + 8);

  return v7(a1, a5);
}

uint64_t ForEach<>.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a3;
  v10[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9D60, &qword_213D94560);
  sub_213CDE014();
  sub_213D9164C();
}

uint64_t sub_213CDDDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_213CDDE80@<X0>(uint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  sub_213CDB9F8();
  v4 = *(a1 + 8);
  result = sub_213D903EC();
  *a2 = result;
  return result;
}

uint64_t sub_213CDDF14@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphSetValue();
  *a1 = result;
  return result;
}

uint64_t sub_213CDDF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213CDDFE8(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

unint64_t sub_213CDE014()
{
  result = qword_27C8E9D68;
  if (!qword_27C8E9D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9D60, &qword_213D94560);
    sub_213CDE0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9D68);
  }

  return result;
}

unint64_t sub_213CDE0A0()
{
  result = qword_27C8ECBC0;
  if (!qword_27C8ECBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBC0);
  }

  return result;
}

uint64_t sub_213CDE110(void *a1)
{
  result = sub_213D90FAC();
  if (v3 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v4 = a1[11];
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v6 = *(*(a1[13] + 8) + 8);
      v7 = a1[10];
      result = swift_getAssociatedTypeWitness();
      if (v8 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_213CDE298()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_213CDE2F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_213CDE33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213CDE37C()
{
  result = type metadata accessor for _MapContentOutputs(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213CDE410(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  sub_213D916BC();
  sub_213D903FC();
  if (v7 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v8 <= 0x3F)
    {
      type metadata accessor for _MapContentOutputs(319);
      if (v9 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v10 <= 0x3F)
        {
          v12 = a1[7];
          _s9ItemStateVMa();
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213CDE550(_OWORD *a1)
{
  result = type metadata accessor for _MapContentOutputs(319);
  if (v3 <= 0x3F)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    _s9ItemStateVMa();
    result = sub_213D903FC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CDE72C@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_213D1CF88(v1[4], a1);
}

uint64_t sub_213CDE780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CDE810@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_213D9100C();
  return sub_213D1CF88(v3, a1);
}

uint64_t sub_213CDE878@<X0>(_DWORD *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_213CDB9F8();
  v3 = *(v7 + 8);
  result = sub_213D903EC();
  *a1 = result;
  return result;
}

uint64_t sub_213CDE908@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = AGGraphSetValue();
  *a1 = result;
  return result;
}

uint64_t sub_213CDE944(_DWORD *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  return sub_213CDCEBC(a1, v1[10]);
}

uint64_t sub_213CDE97C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t (*sub_213CDE9A4())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_213CDEA00;
}

uint64_t sub_213CDEA00()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  return sub_213D9040C();
}

uint64_t sub_213CDEA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_213CDEA94(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  sub_213D916BC();
  sub_213D903FC();
  if (v1 <= 0x3F)
  {
    sub_213CDEEDC();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213CDEB78(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_213CDECE8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 24) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_213CDEEDC()
{
  if (!qword_27C8E9C40)
  {
    sub_213D9100C();
    v0 = sub_213D903DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8E9C40);
    }
  }
}

uint64_t sub_213CDEF3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = *(a1 + 48);
  _s9ItemStateVMa();
  result = sub_213D903FC();
  if (v6 <= 0x3F)
  {
    sub_213D916BC();
    result = sub_213D903FC();
    if (v7 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_213CDF038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_213CDF1A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;

  v18(v19);
}

uint64_t sub_213CDF3CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CDF45C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a1, Value, AssociatedTypeWitness);
}

uint64_t sub_213CDF4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213CDF564()
{
  result = qword_27C8EA188;
  if (!qword_27C8EA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA188);
  }

  return result;
}

unint64_t sub_213CDF60C()
{
  result = qword_27C8EA190;
  if (!qword_27C8EA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA190);
  }

  return result;
}

unint64_t sub_213CDF660()
{
  result = qword_27C8EA1A0;
  if (!qword_27C8EA1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA198, &qword_213D94A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1A0);
  }

  return result;
}

uint64_t sub_213CDF6EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  return AGGraphSetOutputValue();
}

uint64_t sub_213CDF770@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  result = sub_213D9057C();
  if (*(*(result - 8) + 64) == 4)
  {
    return (*(*(result - 8) + 16))(a2, &v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDF810(unsigned int *a1)
{
  v2 = sub_213D9057C();
  v4 = *(v2 - 8);
  result = v2 - 8;
  if (*(v4 + 64) == 4)
  {
    return *a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDF85C(uint64_t a1)
{
  v28 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(type metadata accessor for MapPitchToggleConfig(0) + 28);
  v14 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v12, *MEMORY[0x277CDF440], v2);
  v15 = sub_213D9050C();
  v27 = *(v3 + 8);
  v27(v12, v2);
  v16 = *(v3 + 16);
  v17 = (v3 + 88);
  if ((v15 & 1) == 0)
  {
    v16(v6, v1 + v13, v2);
    v23 = (*v17)(v6, v2);
    if (v23 == *MEMORY[0x277CDF418] || v23 == *MEMORY[0x277CDF438] || v23 == v14)
    {
      return 1;
    }

    v26 = v23 == *MEMORY[0x277CDF420] || v23 == *MEMORY[0x277CDF410];
    v9 = v6;
    if (!v26)
    {
      goto LABEL_26;
    }

    return 2;
  }

  v16(v9, v28, v2);
  v18 = (*v17)(v9, v2);
  if (v18 == *MEMORY[0x277CDF418] || v18 == *MEMORY[0x277CDF438] || v18 == v14)
  {
    return 1;
  }

  if (v18 == *MEMORY[0x277CDF420] || v18 == *MEMORY[0x277CDF410])
  {
    return 2;
  }

LABEL_26:
  v27(v9, v2);
  return 1;
}

uint64_t sub_213CDFAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213D90C0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213CE2C28(v2, &v17 - v11, &qword_27C8EC550, &qword_213D94A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D90A6C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213CDFCF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MapPitchToggle(0);
  sub_213CE2C28(v1 + *(v12 + 20), v11, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D9051C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213CDFEF8()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MapPitchToggle(0) + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_213D91BDC();
    v9 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_213CE004C()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MapPitchToggle(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_213CE01A4()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MapPitchToggle(0) + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v10[15];
  }

  return v7;
}

uint64_t MapPitchToggle.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MapPitchToggle(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a3 + v6[8];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  v12 = a3 + v6[9];
  *v12 = a1;
  v12[8] = a2 & 1;
  return result;
}

uint64_t MapPitchToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1A8, &qword_213D94B40);
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v52 = &v50 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B0, &qword_213D94B48);
  v4 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v61 = &v50 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v51 = &v50 - v7;
  v8 = type metadata accessor for MapControlsConfig();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213D9051C();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_213D90A6C();
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = *(v53 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MapPitchToggleConfig(0);
  v55 = *(v20 - 1);
  v21 = *(v55 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v27 = sub_213CE01A4();
  sub_213CDFAF0(v19);
  sub_213CDFCF0(v15);
  v28 = sub_213CDFEF8();
  if (v27 == 3)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v24[1] = v29;
  (*(v53 + 32))(&v24[v20[6]], v19, v54);
  (*(v56 + 32))(&v24[v20[7]], v15, v57);
  *&v24[v20[8]] = v28;
  v30 = v26;
  *v24 = 1;
  sub_213CE1818(v24, v26);
  v31 = v26;
  v32 = v58;
  sub_213CE1A94(v31, v58, type metadata accessor for MapPitchToggleConfig);
  (*(v55 + 56))(v32, 0, 1, v20);
  v33 = v9[7];
  v34 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  v35 = v9[8];
  v36 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  v37 = v9[9];
  v38 = type metadata accessor for MapCompassConfig(0);
  (*(*(v38 - 8) + 56))(v32 + v37, 1, 1, v38);
  *(v32 + v9[10]) = 2;
  *(v32 + v9[11]) = 2;
  *(v32 + v9[12]) = 2;
  if (sub_213CE004C())
  {
    v39 = sub_213D9149C();
    v40 = v51;
    sub_213CE1A94(v32, &v51[*(v60 + 36)], type metadata accessor for MapControlsConfig);
    *v40 = v39;
    v41 = &qword_27C8EA1B8;
    v42 = &qword_213D94B50;
    sub_213CE2C28(v40, v61, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v43 = type metadata accessor for _MapPitchToggle(0);
    v40 = v52;
    sub_213CE1A94(v30, &v52[*(v43 + 20)], type metadata accessor for MapPitchToggleConfig);
    v44 = (v1 + *(type metadata accessor for MapPitchToggle(0) + 36));
    v45 = *v44;
    v46 = *(v44 + 8);
    *v40 = swift_getKeyPath();
    *(v40 + 8) = 0;
    v47 = v40 + *(v43 + 24);
    *v47 = v45;
    *(v47 + 8) = v46;
    v48 = v61;
    *(v40 + *(v62 + 36)) = 257;
    v41 = &qword_27C8EA1A8;
    v42 = &qword_213D94B40;
    sub_213CE2C28(v40, v48, &qword_27C8EA1A8, &qword_213D94B40);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213CE198C();
  sub_213D90E5C();
  sub_213CD8330(v40, v41, v42);
  sub_213CE1A34(v32, type metadata accessor for MapControlsConfig);
  return sub_213CE1A34(v30, type metadata accessor for MapPitchToggleConfig);
}

uint64_t sub_213CE0AB0()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_213CE0C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CE20A4(&qword_27C8EA260);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213CE0C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CE20A4(&qword_27C8EA260);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213CE0D04()
{
  sub_213CE20A4(&qword_27C8EA260);
  sub_213D90E1C();
  __break(1u);
}

id sub_213CE0D48()
{
  v1 = v0;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_213D90A6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for _MapPitchToggle(0);
  v13 = v0 + *(v12 + 24);
  if (*(v13 + 8))
  {
    goto LABEL_7;
  }

  v14 = *v13;
  v15 = sub_213CE0AB0();
  if (!*(v15 + 16) || (v16 = sub_213CE22D4(v14, MEMORY[0x277CE1440], sub_213CE255C), (v17 & 1) == 0))
  {

LABEL_7:
    v21 = [objc_allocWithZone(MEMORY[0x277CD4EF8]) init];
    goto LABEL_8;
  }

  sub_213CE2A1C(*(v15 + 56) + 8 * v16, v29);

  sub_213CE2A78(v29, v30);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_213CE2AD4(v30);
    goto LABEL_7;
  }

  v19 = Strong;
  v20 = [objc_opt_self() pitchButtonWithMapView_];

  sub_213CE2AD4(v30);
  v21 = v20;
LABEL_8:
  v22 = v1 + *(v12 + 20);
  v23 = qword_213D94D58[*(v22 + 1)];
  v24 = v21;
  [v24 setVisibility_];
  v25 = type metadata accessor for MapPitchToggleConfig(0);
  (*(v8 + 16))(v11, v22 + *(v25 + 24), v7);
  [v24 _setBackgroundStyle_];
  (*(v3 + 16))(v6, v22 + *(v25 + 28), v2);
  v26 = (*(v3 + 88))(v6, v2);
  v27 = 1;
  if (v26 != *MEMORY[0x277CDF418] && v26 != *MEMORY[0x277CDF438] && v26 != *MEMORY[0x277CDF440])
  {
    v27 = 2;
    if (v26 != *MEMORY[0x277CDF420] && v26 != *MEMORY[0x277CDF410])
    {
      (*(v3 + 8))(v6, v2, 2);
      v27 = 1;
    }
  }

  [v24 _setControlSize_];

  return v24;
}

id sub_213CE10E0(id a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_213D90A6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _MapPitchToggle(0);
  v15 = v1 + *(v14 + 24);
  if ((*(v15 + 8) & 1) == 0)
  {
    v29 = a1;
    v16 = *v15;
    v17 = sub_213CE0AB0();
    if (*(v17 + 16) && (v18 = sub_213CE22D4(v16, MEMORY[0x277CE1440], sub_213CE255C), (v19 & 1) != 0))
    {
      sub_213CE2A1C(*(v17 + 56) + 8 * v18, v30);

      sub_213CE2A78(v30, v31);
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v29;
      [v29 setMapView_];

      sub_213CE2AD4(v31);
    }

    else
    {

      a1 = v29;
    }
  }

  v21 = v2 + *(v14 + 20);
  [a1 setVisibility_];
  v22 = type metadata accessor for MapPitchToggleConfig(0);
  (*(v10 + 16))(v13, v21 + *(v22 + 24), v9);
  [a1 _setBackgroundStyle_];
  (*(v5 + 16))(v8, v21 + *(v22 + 28), v4);
  v23 = (*(v5 + 88))(v8, v4);
  if (v23 == *MEMORY[0x277CDF418] || v23 == *MEMORY[0x277CDF438] || v23 == *MEMORY[0x277CDF440])
  {
    goto LABEL_16;
  }

  v26 = 2;
  if (v23 != *MEMORY[0x277CDF420] && v23 != *MEMORY[0x277CDF410])
  {
    (*(v5 + 8))(v8, v4, 2);
LABEL_16:
    v26 = 1;
  }

  return [a1 _setControlSize_];
}

uint64_t sub_213CE14F0(uint64_t a1)
{
  v2 = sub_213D9051C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x21604DCA0](v5);
}

uint64_t sub_213CE15B8@<X0>(_BYTE *a1@<X8>)
{
  sub_213CE2CE4();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CE1608(char *a1)
{
  v2 = *a1;
  sub_213CE2CE4();
  return sub_213D90C2C();
}

uint64_t sub_213CE1654@<X0>(_BYTE *a1@<X8>)
{
  sub_213CE2C90();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CE16A4(char *a1)
{
  v2 = *a1;
  sub_213CE2C90();
  return sub_213D90C2C();
}

uint64_t sub_213CE16F0@<X0>(void *a1@<X8>)
{
  sub_213CE2BD0();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213CE1740(uint64_t *a1)
{
  v2 = *a1;
  sub_213CE2BD0();

  return sub_213D90C2C();
}

uint64_t sub_213CE17A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D90A7C();
  *a1 = result;
  return result;
}

uint64_t sub_213CE17CC(uint64_t *a1)
{
  v1 = *a1;

  return sub_213D90A8C();
}

uint64_t sub_213CE1818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213CE189C()
{
  result = qword_27C8EA1C0;
  if (!qword_27C8EA1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA1B8, &qword_213D94B50);
    sub_213CE1928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1C0);
  }

  return result;
}

unint64_t sub_213CE1928()
{
  result = qword_27C8EA1C8;
  if (!qword_27C8EA1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA1D0, &qword_213D94B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1C8);
  }

  return result;
}

unint64_t sub_213CE198C()
{
  result = qword_27C8EA1D8;
  if (!qword_27C8EA1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA1A8, &qword_213D94B40);
    sub_213CE20A4(&qword_27C8EA1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1D8);
  }

  return result;
}

uint64_t sub_213CE1A34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CE1A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213CE1B40()
{
  sub_213CE1CD4(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8]);
  if (v0 <= 0x3F)
  {
    sub_213CE1CD4(319, &qword_27C8EC520, MEMORY[0x277CDF450]);
    if (v1 <= 0x3F)
    {
      sub_213CE1D28(319, &qword_27C8EA208, &qword_27C8EA210, &unk_213D94C00);
      if (v2 <= 0x3F)
      {
        sub_213CE2014(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_213CE1D28(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750);
          if (v4 <= 0x3F)
          {
            sub_213CE2014(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
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

void sub_213CE1CD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D9052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213CE1D28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_213D9052C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_213CE1D7C()
{
  result = qword_27C8EA228;
  if (!qword_27C8EA228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA230, &unk_213D94C10);
    sub_213CE189C();
    sub_213CE198C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA228);
  }

  return result;
}

void sub_213CE1E30()
{
  sub_213D90A6C();
  if (v0 <= 0x3F)
  {
    sub_213D9051C();
    if (v1 <= 0x3F)
    {
      sub_213CE2014(319, &qword_27C8EA248, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213CE1F30()
{
  sub_213CE2014(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MapPitchToggleConfig(319);
    if (v1 <= 0x3F)
    {
      sub_213CE2014(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213CE2014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_213CE20A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapPitchToggle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213CE20E8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_213D91FAC();

  return sub_213CE24F0(a1, v4);
}

unint64_t sub_213CE2158(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_213D9193C();
  sub_213D91FBC();
  sub_213D9195C();
  v4 = sub_213D91FFC();

  return sub_213CE25F8(a1, v4);
}

unint64_t sub_213CE21EC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_213D91FBC();
  MEMORY[0x21604F190](a1);
  v4 = sub_213D91FFC();

  return sub_213CE24F0(a1, v4);
}

unint64_t sub_213CE2258(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_213D91C4C();
  return sub_213CE27B4(a1, v5, &qword_27C8EB180, 0x277CD4DA0);
}

uint64_t sub_213CE22D4(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_213D91FBC();
  a2(v10, a1);
  v7 = sub_213D91FFC();

  return a3(a1, v7);
}

unint64_t sub_213CE2354(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_213D91C4C();
  return sub_213CE27B4(a1, v5, &qword_27C8EB1C0, 0x277CD4F18);
}

unint64_t sub_213CE23A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_213D91C4C();
  return sub_213CE27B4(a1, v5, &qword_27C8EB6C0, 0x277CD4F28);
}

unint64_t sub_213CE23F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_213D91C4C();
  return sub_213CE2880(a1, v5, type metadata accessor for MapBridgingUserAnnotation);
}

unint64_t sub_213CE2448(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_213D91C4C();
  return sub_213CE2880(a1, v5, type metadata accessor for MapBridgingMarker);
}

unint64_t sub_213CE249C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_213D91C4C();
  return sub_213CE2880(a1, v5, type metadata accessor for MapBridgingCustomAnnotation);
}

unint64_t sub_213CE24F0(uint64_t a1, uint64_t a2)
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

unint64_t sub_213CE255C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      if (sub_213D9178C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_213CE25F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_213D9193C();
      v9 = v8;
      if (v7 == sub_213D9193C() && v9 == v10)
      {
        break;
      }

      v12 = sub_213D91F5C();

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

unint64_t sub_213CE26FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = sub_213D6F51C(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_213CE27B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_213CE2B34(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_213D91C5C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_213CE2880(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_213D91C5C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_213CE2948(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a2[1];
  v6 = a1[1];
  if (sub_213D904DC())
  {
    v7 = type metadata accessor for MapPitchToggleConfig(0);
    v8 = v7[6];
    if (sub_213D90A2C())
    {
      v9 = v7[7];
      if (sub_213D9050C())
      {
        v10 = v7[8];
        v11 = *&a2[v10];
        if (*&a1[v10])
        {
          if (v11)
          {

            v12 = sub_213D9147C();

            if (v12)
            {
              return 1;
            }
          }
        }

        else if (!v11)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_213CE2B28(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_213CE2B34(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_213CE2BD0()
{
  result = qword_27C8E9788;
  if (!qword_27C8E9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9788);
  }

  return result;
}

uint64_t sub_213CE2C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_213CE2C90()
{
  result = qword_27C8EA268;
  if (!qword_27C8EA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA268);
  }

  return result;
}

unint64_t sub_213CE2CE4()
{
  result = qword_27C8EA270;
  if (!qword_27C8EA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA270);
  }

  return result;
}

uint64_t MapContent.tint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v6 + 16))(v9, a1, a3);
  v13 = sub_213D9064C();
  sub_213D74C28(KeyPath, &v13, a2);
}

uint64_t sub_213CE2EA8(char a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = a1;
  sub_213D74C28(KeyPath, &v6, a2);
}

uint64_t sub_213CE2F38(void (*a1)(void))
{
  a1();
  sub_213D90C1C();
  return v2;
}

uint64_t keypath_getTm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_213D90C1C();
  *a2 = v4;
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_213D90C2C();
}

unint64_t sub_213CE302C()
{
  result = qword_27C8EA288;
  if (!qword_27C8EA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA288);
  }

  return result;
}

unint64_t sub_213CE3080()
{
  result = qword_27C8EA290;
  if (!qword_27C8EA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA290);
  }

  return result;
}

unint64_t sub_213CE30F4()
{
  result = qword_27C8EA298;
  if (!qword_27C8EA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA298);
  }

  return result;
}

void sub_213CE3198()
{
  sub_213CECA90(319, &qword_27C8E9580, type metadata accessor for MapStylePicker.Option, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_213CECAF4(319, &qword_27C8E95B8, &type metadata for MapStyle, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_213CECA90(319, &qword_27C8E9910, type metadata accessor for _MapStylePickerAttribution, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213CECAF4(319, &qword_27C8E95E0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_213CECA90(319, &qword_27C8E9748, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_213CECA90(319, &qword_27C8E9758, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

uint64_t sub_213CE33A0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  result = sub_213CE3424();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v6 = (a1 + *(type metadata accessor for MapStylePickerView(0) + 28));
    v8 = *v6;
    v9 = *(v6 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    result = sub_213D9157C();
    v5 = v7;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_213CE3424()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = *v0;
  v6 = *(v0 + 120);
  v7 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = v7;
  v38 = *(v0 + 168);
  v8 = *(v0 + 56);
  v9 = *(v0 + 88);
  v32 = *(v0 + 72);
  v33 = v9;
  v34 = *(v0 + 104);
  v35 = v6;
  v10 = *(v0 + 24);
  v28 = *(v0 + 8);
  v29 = v10;
  v30 = *(v0 + 40);
  v31 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v39, v11);
  v24 = v39[6];
  v25 = v39[7];
  v26 = v39[8];
  v27 = v40;
  v20 = v39[2];
  v21 = v39[3];
  v22 = v39[4];
  v23 = v39[5];
  v18 = v39[0];
  v19 = v39[1];
  Array<A>.selectedOption(for:)(&v18, v5, v4);
  v34 = v24;
  v35 = v25;
  v36 = v26;
  LOWORD(v37) = v27;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v28 = v18;
  v29 = v19;
  sub_213CEB3CC(&v28);
  v12 = type metadata accessor for MapStylePicker.Option(0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_213CD8330(v4, &qword_27C8EA2C0, &qword_213D95000);
    v13 = 0;
  }

  else
  {
    v14 = (v0 + *(type metadata accessor for MapStylePickerView(0) + 32));
    v15 = *v14;
    v16 = *(v14 + 1);
    LOBYTE(v39[0]) = v15;
    *(&v39[0] + 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    sub_213D9157C();
    v13 = v4[*(v12 + 32)] & (v18 ^ 1);
    sub_213CEB758(v4, type metadata accessor for MapStylePicker.Option);
  }

  return v13 & 1;
}

uint64_t sub_213CE3674(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (a4 + *(type metadata accessor for MapStylePickerView(0) + 28));
  v7 = *v5;
  v8 = *(v5 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
  return sub_213D9158C();
}

uint64_t sub_213CE36E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v7 = type metadata accessor for MapStylePicker.Option(0);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v49 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = *(a2 + 144);
  v82 = *(a2 + 128);
  v83 = v20;
  v84 = *(a2 + 160);
  v21 = *(a2 + 80);
  v78 = *(a2 + 64);
  v79 = v21;
  v22 = *(a2 + 112);
  v80 = *(a2 + 96);
  v81 = v22;
  v23 = *(a2 + 16);
  v74 = *a2;
  v75 = v23;
  v24 = *(a2 + 48);
  v76 = *(a2 + 32);
  v77 = v24;
  v25 = type metadata accessor for MapStylePickerView(0);
  v26 = v25[6];
  v27 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v27 - 8) + 56))(a4 + v26, 1, 1, v27);
  v28 = v25[9];
  *(a4 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  swift_storeEnumTagMultiPayload();
  v29 = v25[10];
  *(a4 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  swift_storeEnumTagMultiPayload();
  v30 = *(a2 + 96);
  *(a4 + 120) = *(a2 + 112);
  v31 = *(a2 + 144);
  *(a4 + 136) = *(a2 + 128);
  *(a4 + 152) = v31;
  v32 = *(a2 + 32);
  *(a4 + 56) = *(a2 + 48);
  v33 = *(a2 + 80);
  *(a4 + 72) = *(a2 + 64);
  *(a4 + 88) = v33;
  *(a4 + 104) = v30;
  v34 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v34;
  *a4 = a1;
  *(a4 + 168) = *(a2 + 160);
  *(a4 + 40) = v32;

  sub_213CE2C28(&v74, &v63, &qword_27C8EA2D0, &qword_213D998B0);
  sub_213CEB35C(v52, a4 + v26);
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v66 = v77;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](&v53, v35);
  sub_213CD8330(&v74, &qword_27C8EA2D0, &qword_213D998B0);
  v91 = v59;
  v92 = v60;
  v93 = v61;
  v87 = v55;
  v88 = v56;
  v89 = v57;
  v90 = v58;
  v85 = v53;
  v86 = v54;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v63 = v53;
  v64 = v54;
  v94 = v62;
  LOWORD(v72) = v62;
  Array<A>.selectedOption(for:)(&v53, a1, v19);
  LOBYTE(a2) = _s15_MapKit_SwiftUI0A11StylePickerV18trafficToggleState5style6option0cD00I0VySbGAA0aE0V_AC6OptionVSgtFZ_0(&v63, v19);
  v37 = v36;
  v38 = v19;
  v39 = v49;
  sub_213CD8330(v38, &qword_27C8EA2C0, &qword_213D95000);
  v40 = a4 + v25[7];
  v41 = a2 & 1;
  v42 = v50;
  *v40 = v41;
  *(v40 + 8) = v37;
  v69 = v91;
  v70 = v92;
  v71 = v93;
  LOWORD(v72) = v94;
  v65 = v87;
  v66 = v88;
  v67 = v89;
  v68 = v90;
  v63 = v85;
  v64 = v86;
  Array<A>.selectedOption(for:)(&v63, a1, v39);

  sub_213CE2C28(v39, v15, &qword_27C8EA2C0, &qword_213D95000);
  if ((*(v51 + 48))(v15, 1, v42) == 1)
  {
    sub_213CD8330(v15, &qword_27C8EA2C0, &qword_213D95000);
LABEL_6:
    v44 = 1;
    goto LABEL_7;
  }

  v43 = v48;
  sub_213CEB6F0(v15, v48, type metadata accessor for MapStylePicker.Option);
  if ((*(v43 + *(v42 + 32)) & 1) == 0)
  {
    sub_213CEB758(v43, type metadata accessor for MapStylePicker.Option);
    goto LABEL_6;
  }

  v69 = v91;
  v70 = v92;
  v71 = v93;
  LOWORD(v72) = v94;
  v65 = v87;
  v66 = v88;
  v67 = v89;
  v68 = v90;
  v63 = v85;
  v64 = v86;
  v44 = sub_213D5404C();
  sub_213CEB758(v43, type metadata accessor for MapStylePicker.Option);
LABEL_7:
  sub_213CD8330(v52, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213CD8330(v39, &qword_27C8EA2C0, &qword_213D95000);
  result = sub_213CEB3CC(&v85);
  v46 = a4 + v25[8];
  *v46 = v44;
  *(v46 + 8) = 0;
  return result;
}

uint64_t sub_213CE3C94@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v20 = sub_213D90E7C();
  v18 = *(v20 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D8, &qword_213D95080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2E0, &qword_213D95088);
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = &v17 - v12;
  v21 = v1;
  sub_213D911BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2E8, &qword_213D95090);
  sub_213CEBB64(&qword_27C8EA2F0, &qword_27C8EA2E8, &qword_213D95090, sub_213CEB428);
  sub_213D904BC();
  v14 = sub_213CEDCEC(&qword_27C8EA318, &qword_27C8EA2D8, &qword_213D95080);
  sub_213D9138C();
  (*(v6 + 8))(v9, v5);
  sub_213D90E6C();
  LOBYTE(v9) = sub_213D911BC();
  sub_213D911AC();
  sub_213D911AC();
  if (sub_213D911AC() != v9)
  {
    sub_213D911AC();
  }

  v22 = v5;
  v23 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v17;
  sub_213D913CC();
  (*(v18 + 8))(v4, v20);
  return (*(v10 + 8))(v13, v15);
}

uint64_t sub_213CE3FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_213D90D5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA320, &qword_213D950A8);
  sub_213CE40F0(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_213D911CC();
  sub_213D904AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA300, &qword_213D95098) + 36);
  *v13 = a1;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(a1) = sub_213D911FC();
  sub_213D904AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2E8, &qword_213D95090);
  v23 = a2 + *(result + 36);
  *v23 = a1;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_213CE40F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v112 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA328, &qword_213D950B0);
  v3 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v94 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA330, &qword_213D950B8);
  v110 = *(v5 - 8);
  v111 = v5;
  v6 = *(v110 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v93 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = &v90 - v12;
  v102 = type metadata accessor for _MapStylePickerAttribution(0);
  v101 = *(v102 - 8);
  v13 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v90 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA338, &qword_213D950C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v109 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v90 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA340, &qword_213D950C8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = &v90 - v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA348, &qword_213D950D0);
  v23 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v90 - v24;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA350, &qword_213D950D8);
  v25 = *(*(v99 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v99);
  v107 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v98 = &v90 - v29;
  MEMORY[0x28223BE20](v28);
  v113 = &v90 - v30;
  v31 = sub_213D90E9C();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA358, &qword_213D950E0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA360, &qword_213D950E8);
  v105 = *(v38 - 8);
  v106 = v38;
  v39 = *(v105 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v104 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v90 - v42;
  sub_213CE612C();
  v114 = a1;
  sub_213D90D5C();
  LODWORD(v115) = 0;
  sub_213CEB4E8(&qword_27C8E9650, MEMORY[0x277CE0428]);
  sub_213D9204C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA368, &qword_213D950F0);
  sub_213CEB530();
  sub_213D9177C();
  sub_213CEDCEC(&qword_27C8E9598, &qword_27C8EA358, &qword_213D950E0);
  sub_213D9138C();
  (*(v34 + 8))(v37, v33);
  v44 = v96;
  sub_213CE4C04(a1, v96);
  if ((sub_213CE5780() & 1) == 0)
  {
    sub_213CE5978();
  }

  sub_213D9172C();
  v45 = 1;
  sub_213D9063C();
  v46 = v44;
  v47 = v100;
  v48 = sub_213CED608(v46, v100, &qword_27C8EA340, &qword_213D950C8);
  v49 = (v47 + *(v97 + 36));
  v50 = v116;
  *v49 = v115;
  v49[1] = v50;
  v49[2] = v117;
  v51 = MEMORY[0x21604E920](v48, 0.5, 0.7, 0.0);
  if ((sub_213CE5780() & 1) == 0)
  {
    v45 = sub_213CE5978();
  }

  v52 = v47;
  v53 = v98;
  sub_213CED608(v52, v98, &qword_27C8EA348, &qword_213D950D0);
  v54 = v53 + *(v99 + 36);
  *v54 = v51;
  *(v54 + 8) = v45 & 1;
  sub_213CED608(v53, v113, &qword_27C8EA350, &qword_213D950D8);
  v55 = type metadata accessor for MapStylePickerView(0);
  v56 = v103;
  sub_213CE2C28(a1 + *(v55 + 24), v103, &qword_27C8EA2A0, &qword_213D94F50);
  v57 = (*(v101 + 48))(v56, 1, v102);
  v58 = v108;
  if (v57 == 1)
  {
    sub_213CD8330(v56, &qword_27C8EA2A0, &qword_213D94F50);
    v59 = 1;
    v60 = v111;
  }

  else
  {
    v61 = v90;
    sub_213CEB6F0(v56, v90, type metadata accessor for _MapStylePickerAttribution);
    v62 = v94;
    sub_213CE5DEC(v61, v94);
    v63 = sub_213D911EC();
    v64 = sub_213D904AC();
    v65 = v62 + *(v91 + 36);
    *v65 = v63;
    *(v65 + 8) = v66;
    *(v65 + 16) = v67;
    *(v65 + 24) = v68;
    *(v65 + 32) = v69;
    *(v65 + 40) = 0;
    v70 = MEMORY[0x21604E920](v64, 0.5, 0.7, 0.0);
    v71 = sub_213CE5780();
    v60 = v111;
    if (v71)
    {
      v72 = 1;
    }

    else
    {
      v72 = sub_213CE5978();
    }

    sub_213CEB758(v61, type metadata accessor for _MapStylePickerAttribution);
    v73 = v62;
    v74 = v93;
    sub_213CED608(v73, v93, &qword_27C8EA328, &qword_213D950B0);
    v75 = v74 + *(v60 + 36);
    *v75 = v70;
    *(v75 + 8) = v72 & 1;
    v76 = v74;
    v77 = v92;
    sub_213CED608(v76, v92, &qword_27C8EA330, &qword_213D950B8);
    sub_213CED608(v77, v58, &qword_27C8EA330, &qword_213D950B8);
    v59 = 0;
  }

  (*(v110 + 56))(v58, v59, 1, v60);
  v78 = v104;
  v79 = v105;
  v80 = v58;
  v81 = *(v105 + 16);
  v95 = v43;
  v82 = v106;
  v81(v104, v43, v106);
  v83 = v113;
  v84 = v107;
  sub_213CE2C28(v113, v107, &qword_27C8EA350, &qword_213D950D8);
  v85 = v109;
  sub_213CE2C28(v80, v109, &qword_27C8EA338, &qword_213D950C0);
  v86 = v112;
  v81(v112, v78, v82);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA378, &qword_213D95100);
  sub_213CE2C28(v84, &v86[*(v87 + 48)], &qword_27C8EA350, &qword_213D950D8);
  sub_213CE2C28(v85, &v86[*(v87 + 64)], &qword_27C8EA338, &qword_213D950C0);
  sub_213CD8330(v80, &qword_27C8EA338, &qword_213D950C0);
  sub_213CD8330(v83, &qword_27C8EA350, &qword_213D950D8);
  v88 = *(v79 + 8);
  v88(v95, v82);
  sub_213CD8330(v85, &qword_27C8EA338, &qword_213D950C0);
  sub_213CD8330(v84, &qword_27C8EA350, &qword_213D950D8);
  return (v88)(v78, v82);
}

uint64_t sub_213CE4C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = type metadata accessor for MapStylePickerView(0);
  v97 = *(v101 - 8);
  v4 = *(v97 + 8);
  MEMORY[0x28223BE20](v101);
  v5 = sub_213D907DC();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 8);
  MEMORY[0x28223BE20](v5);
  v88 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA388, &qword_213D95148);
  v82 = *(v8 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA390, &qword_213D95150);
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v79 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA398, &qword_213D95158);
  v84 = *(v86 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v18 = v79 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3A0, &qword_213D95160);
  v85 = *(v87 - 8);
  v19 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v21 = v79 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3A8, &qword_213D95168);
  v22 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v91 = v79 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3B0, &qword_213D95170);
  v94 = *(v24 - 8);
  v95 = v24;
  v25 = *(v94 + 64);
  MEMORY[0x28223BE20](v24);
  v93 = v79 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3B8, &qword_213D95178);
  v98 = *(v27 - 8);
  v99 = v27;
  v28 = *(v98 + 64);
  MEMORY[0x28223BE20](v27);
  v96 = v79 - v29;
  v30 = sub_213CE5780();
  if (v30 & 1) != 0 || (v30 = sub_213CE5978(), (v30))
  {
    v81 = a2;
    MEMORY[0x28223BE20](v30);
    v80 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3C0, &qword_213D95180);
    v100 = a1;
    v79[1] = v4;
    sub_213CEB7E0();
    sub_213D9124C();
    v31 = sub_213CEDCEC(&qword_27C8E9600, &qword_27C8EA388, &qword_213D95148);
    sub_213D913FC();
    (*(v82 + 8))(v11, v8);
    v103 = v8;
    v104 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_213D9138C();
    (*(v83 + 8))(v15, v12);
    v33 = v88;
    sub_213D907CC();
    v103 = v12;
    v104 = OpaqueTypeConformance2;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = MEMORY[0x277CDD980];
    v36 = v86;
    v37 = v90;
    sub_213D9146C();
    (*(v89 + 1))(v33, v37);
    (*(v84 + 8))(v18, v36);
    v103 = v36;
    v104 = v37;
    v105 = v34;
    v106 = v35;
    swift_getOpaqueTypeConformance2();
    v38 = v91;
    v39 = v87;
    sub_213D913AC();
    (*(v85 + 8))(v21, v39);
    LOBYTE(v39) = sub_213D911DC();
    v40 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3F8, &qword_213D951B8) + 36);
    *v40 = 1;
    *(v40 + 8) = v39;
    v41 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA400, &qword_213D951C0) + 36));
    v42 = *(sub_213D909CC() + 20);
    v43 = *MEMORY[0x277CE0118];
    v44 = sub_213D90D0C();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    __asm { FMOV            V0.2D, #26.0 }

    *v41 = _Q0;
    *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA408, &qword_213D951C8) + 36)] = 256;
    LOBYTE(v43) = sub_213D911EC();
    sub_213D904AC();
    v50 = v92;
    v51 = v38 + *(v92 + 36);
    *v51 = v43;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53;
    *(v51 + 24) = v54;
    *(v51 + 32) = v55;
    *(v51 + 40) = 0;
    v56 = v100;
    v57 = v100 + *(v101 + 28);
    v58 = *v57;
    v59 = *(v57 + 8);
    LOBYTE(v103) = v58;
    v104 = v59;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    sub_213D9157C();
    LOBYTE(v103) = v102;
    v89 = type metadata accessor for MapStylePickerView;
    v60 = v80;
    sub_213CEBAF8(v56, v80, type metadata accessor for MapStylePickerView);
    v61 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v62 = swift_allocObject();
    v97 = type metadata accessor for MapStylePickerView;
    sub_213CEB6F0(v60, v62 + v61, type metadata accessor for MapStylePickerView);
    v63 = sub_213CEBB64(&qword_27C8EA418, &qword_27C8EA3A8, &qword_213D95168, sub_213CEBBE8);
    v64 = v93;
    sub_213D9145C();

    sub_213CD8330(v38, &qword_27C8EA3A8, &qword_213D95168);
    v65 = v100;
    v66 = v100 + *(v101 + 32);
    v67 = *v66;
    v68 = *(v66 + 8);
    LOBYTE(v103) = v67;
    v104 = v68;
    sub_213D9157C();
    sub_213CEBAF8(v65, v60, v89);
    v69 = swift_allocObject();
    sub_213CEB6F0(v60, v69 + v61, v97);
    v103 = v50;
    v104 = MEMORY[0x277D839B0];
    v105 = v63;
    v106 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v70 = v95;
    v71 = v96;
    sub_213D9145C();

    (*(v94 + 8))(v64, v70);
    sub_213D9065C();
    sub_213D9066C();
    sub_213D9067C();

    MEMORY[0x21604E920](v72, 0.5, 0.7, 0.0);
    v73 = sub_213D9068C();

    v74 = v99;
    *(v71 + *(v99 + 36)) = v73;
    v75 = v81;
    sub_213CED608(v71, v81, &qword_27C8EA3B8, &qword_213D95178);
    return (*(v98 + 56))(v75, 0, 1, v74);
  }

  else
  {
    v77 = v99;
    v78 = *(v98 + 56);

    return v78(a2, 1, 1, v77);
  }
}

uint64_t sub_213CE5780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = *v0;
  v6 = *(v0 + 120);
  v7 = *(v0 + 152);
  v33 = *(v0 + 136);
  v34 = v7;
  v35 = *(v0 + 168);
  v8 = *(v0 + 56);
  v9 = *(v0 + 88);
  v29 = *(v0 + 72);
  v30 = v9;
  v31 = *(v0 + 104);
  v32 = v6;
  v10 = *(v0 + 24);
  v25 = *(v0 + 8);
  v26 = v10;
  v27 = *(v0 + 40);
  v28 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v36, v11);
  v21 = v36[6];
  v22 = v36[7];
  v23 = v36[8];
  v24 = v37;
  v17 = v36[2];
  v18 = v36[3];
  v19 = v36[4];
  v20 = v36[5];
  v15 = v36[0];
  v16 = v36[1];
  Array<A>.selectedOption(for:)(&v15, v5, v4);
  v31 = v21;
  v32 = v22;
  v33 = v23;
  LOWORD(v34) = v24;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v25 = v15;
  v26 = v16;
  sub_213CEB3CC(&v25);
  v12 = type metadata accessor for MapStylePicker.Option(0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_213CD8330(v4, &qword_27C8EA2C0, &qword_213D95000);
    return 0;
  }

  else
  {
    v13 = v4[*(v12 + 28)];
    sub_213CEB758(v4, type metadata accessor for MapStylePicker.Option);
  }

  return v13;
}

uint64_t sub_213CE5978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = *v0;
  v6 = *(v0 + 120);
  v7 = *(v0 + 152);
  v33 = *(v0 + 136);
  v34 = v7;
  v35 = *(v0 + 168);
  v8 = *(v0 + 56);
  v9 = *(v0 + 88);
  v29 = *(v0 + 72);
  v30 = v9;
  v31 = *(v0 + 104);
  v32 = v6;
  v10 = *(v0 + 24);
  v25 = *(v0 + 8);
  v26 = v10;
  v27 = *(v0 + 40);
  v28 = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v36, v11);
  v21 = v36[6];
  v22 = v36[7];
  v23 = v36[8];
  v24 = v37;
  v17 = v36[2];
  v18 = v36[3];
  v19 = v36[4];
  v20 = v36[5];
  v15 = v36[0];
  v16 = v36[1];
  Array<A>.selectedOption(for:)(&v15, v5, v4);
  v31 = v21;
  v32 = v22;
  v33 = v23;
  LOWORD(v34) = v24;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v25 = v15;
  v26 = v16;
  sub_213CEB3CC(&v25);
  v12 = type metadata accessor for MapStylePicker.Option(0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_213CD8330(v4, &qword_27C8EA2C0, &qword_213D95000);
    return 0;
  }

  else
  {
    v13 = v4[*(v12 + 32)];
    sub_213CEB758(v4, type metadata accessor for MapStylePicker.Option);
  }

  return v13;
}