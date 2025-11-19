uint64_t sub_23822B23C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D6572757361656DLL;
  v4 = 0x4449656369766564;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D617473656D6974;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973736573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23822B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23822D45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23822B328(uint64_t a1)
{
  v2 = sub_23822B6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822B364(uint64_t a1)
{
  v2 = sub_23822B6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6E08, &qword_23827B9A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822B6B8();
  sub_238279640();
  v23 = 0;
  sub_238278BC0();
  sub_238229FA8(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    v11 = type metadata accessor for ElectricHVACLoadEvent(0);
    v12 = v11[5];
    v22 = 1;
    sub_238278B70();
    sub_238229FA8(&qword_27DEF6B68, MEMORY[0x277CC9578]);
    sub_238279550();
    v13 = v11[6];
    v21 = 2;
    type metadata accessor for ElectricHVACLoadEvent.Session(0);
    sub_238229FA8(&qword_27DEF6E18, type metadata accessor for ElectricHVACLoadEvent.Session);
    sub_238279550();
    v20 = *(v3 + v11[7]);
    v19[15] = 3;
    sub_23822B70C();
    sub_238279550();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = v14[1];
    v19[14] = 4;
    sub_238279500();
    v17 = *(v3 + v11[9]);
    v19[13] = 5;
    sub_238279540();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23822B6B8()
{
  result = qword_27DEF6E10;
  if (!qword_27DEF6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E10);
  }

  return result;
}

unint64_t sub_23822B70C()
{
  result = qword_27DEF6E20;
  if (!qword_27DEF6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E20);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  v3 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238278B70();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238278BC0();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6E28, &qword_23827B9A8);
  v38 = *(v43 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v43);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ElectricHVACLoadEvent(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822B6B8();
  v42 = v15;
  v21 = v44;
  sub_238279630();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v38;
  v22 = v39;
  v44 = v16;
  v24 = v40;
  v51 = 0;
  sub_238229FA8(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  sub_2382794C0();
  v25 = *(v37 + 32);
  v26 = v41;
  v41 = v10;
  v25(v19, v26, v10);
  v50 = 1;
  sub_238229FA8(&qword_27DEF6B90, MEMORY[0x277CC9578]);
  sub_2382794C0();
  (*(v24 + 32))(&v19[v44[5]], v9, v22);
  v49 = 2;
  sub_238229FA8(&qword_27DEF6E30, type metadata accessor for ElectricHVACLoadEvent.Session);
  v27 = v35;
  v36 = 0;
  sub_2382794C0();
  v28 = v44;
  sub_23822BE00(v27, &v19[v44[6]], type metadata accessor for ElectricHVACLoadEvent.Session);
  v48 = 3;
  sub_23822BE68();
  sub_2382794C0();
  *&v19[v28[7]] = v45;
  v47 = 4;
  v29 = sub_238279470();
  v30 = &v19[v28[8]];
  *v30 = v29;
  v30[1] = v31;
  v46 = 5;
  v32 = sub_2382794B0();
  (*(v23 + 8))(v42, v43);
  *&v19[v28[9]] = v32;
  sub_23822A9E8(v19, v34, type metadata accessor for ElectricHVACLoadEvent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23822BEBC(v19, type metadata accessor for ElectricHVACLoadEvent);
}

uint64_t sub_23822BE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23822BE68()
{
  result = qword_27DEF6E38;
  if (!qword_27DEF6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E38);
  }

  return result;
}

uint64_t sub_23822BEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23822BF20()
{
  result = qword_27DEF6E40;
  if (!qword_27DEF6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E40);
  }

  return result;
}

uint64_t sub_23822BF74(void *a1)
{
  a1[1] = sub_238229FA8(&qword_27DEF6E48, type metadata accessor for ElectricHVACLoadEvent);
  a1[2] = sub_238229FA8(&qword_27DEF6E50, type metadata accessor for ElectricHVACLoadEvent);
  result = sub_238229FA8(&qword_27DEF6E58, type metadata accessor for ElectricHVACLoadEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_23822C0AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_238278B70();
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

  v14 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_23822C218(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_238278B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for ElectricHVACLoadEvent.Session(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
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

uint64_t sub_23822C36C()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    result = sub_238278B70();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ElectricHVACLoadEvent.Session(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement(uint64_t result, int a2, int a3)
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

uint64_t sub_23822C49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
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

  else
  {
    v11 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23822C5CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278BC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23822C6EC()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23822C79C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_238278BC0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_23822C85C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23822C8FC()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricHVACLoadEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricHVACLoadEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_23822CC14()
{
  result = qword_27DEF6E90;
  if (!qword_27DEF6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E90);
  }

  return result;
}

unint64_t sub_23822CC6C()
{
  result = qword_27DEF6E98;
  if (!qword_27DEF6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E98);
  }

  return result;
}

unint64_t sub_23822CCC4()
{
  result = qword_27DEF6EA0;
  if (!qword_27DEF6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EA0);
  }

  return result;
}

unint64_t sub_23822CD1C()
{
  result = qword_27DEF6EA8;
  if (!qword_27DEF6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EA8);
  }

  return result;
}

unint64_t sub_23822CD74()
{
  result = qword_27DEF6EB0;
  if (!qword_27DEF6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EB0);
  }

  return result;
}

unint64_t sub_23822CDCC()
{
  result = qword_27DEF6EB8;
  if (!qword_27DEF6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EB8);
  }

  return result;
}

unint64_t sub_23822CE24()
{
  result = qword_27DEF6EC0;
  if (!qword_27DEF6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EC0);
  }

  return result;
}

unint64_t sub_23822CE7C()
{
  result = qword_27DEF6EC8;
  if (!qword_27DEF6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EC8);
  }

  return result;
}

unint64_t sub_23822CED4()
{
  result = qword_27DEF6ED0;
  if (!qword_27DEF6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6ED0);
  }

  return result;
}

unint64_t sub_23822CF2C()
{
  result = qword_27DEF6ED8;
  if (!qword_27DEF6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6ED8);
  }

  return result;
}

unint64_t sub_23822CF84()
{
  result = qword_27DEF6EE0;
  if (!qword_27DEF6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EE0);
  }

  return result;
}

unint64_t sub_23822CFDC()
{
  result = qword_27DEF6EE8;
  if (!qword_27DEF6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EE8);
  }

  return result;
}

unint64_t sub_23822D034()
{
  result = qword_27DEF6EF0;
  if (!qword_27DEF6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EF0);
  }

  return result;
}

unint64_t sub_23822D08C()
{
  result = qword_27DEF6EF8;
  if (!qword_27DEF6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EF8);
  }

  return result;
}

unint64_t sub_23822D0E4()
{
  result = qword_27DEF6F00;
  if (!qword_27DEF6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F00);
  }

  return result;
}

unint64_t sub_23822D13C()
{
  result = qword_27DEF6F08;
  if (!qword_27DEF6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F08);
  }

  return result;
}

unint64_t sub_23822D194()
{
  result = qword_27DEF6F10;
  if (!qword_27DEF6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F10);
  }

  return result;
}

unint64_t sub_23822D1EC()
{
  result = qword_27DEF6F18;
  if (!qword_27DEF6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F18);
  }

  return result;
}

unint64_t sub_23822D244()
{
  result = qword_27DEF6F20;
  if (!qword_27DEF6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F20);
  }

  return result;
}

unint64_t sub_23822D29C()
{
  result = qword_27DEF6F28;
  if (!qword_27DEF6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F28);
  }

  return result;
}

unint64_t sub_23822D2F4()
{
  result = qword_27DEF6F30;
  if (!qword_27DEF6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F30);
  }

  return result;
}

uint64_t sub_23822D348(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xED00006574617453)
  {

    return 2;
  }

  else
  {
    v6 = sub_238279590();

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

uint64_t sub_23822D45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_238279590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23822D660(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_238279030();
  return sub_238279070();
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.init(stateOfCharge:direction:power:energy:)@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v11 = sub_2382789B0();
  v12 = [objc_opt_self() milliwatts];
  sub_23821EB10(0, &qword_27DEF6970, 0x277CCAE30);
  v13 = sub_2382792F0();

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v15 = sub_2382789B0();
  if (qword_27DEF68A0 != -1)
  {
    swift_once();
  }

  v16 = qword_27DEF7170;
  sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
  v17 = v16;
  v18 = sub_2382792F0();

  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = sub_2382789B0();
  v20 = [v19 symbol];

  v21 = sub_238279000();
  v23 = v22;

  if (v21 == 6838125 && v23 == 0xE300000000000000)
  {
  }

  else
  {
    v24 = sub_238279590();

    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a1 <= 0x64)
  {
    *a5 = a1;
    v25 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    (*(*(v10 - 8) + 32))(a5 + v25[5], a3, v10);
    result = (*(*(v14 - 8) + 32))(a5 + v25[6], a4, v14);
    *(a5 + v25[7]) = v27;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_238279410();
  __break(1u);
  return result;
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.init(wasFollowingGuidance:guidanceToken:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0) + 20);
  v7 = sub_238278BC0();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  *a3 = a1;
  return result;
}

uint64_t ElectricVehicleLoadEvent.Session.init(id:state:guidanceState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  *(a4 + *(v8 + 20)) = v7;
  v9 = sub_238278BC0();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  return sub_23823187C(a3, a4 + *(v8 + 24), type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
}

uint64_t ElectricVehicleLoadEvent.init(timestamp:measurement:session:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  sub_238278B80();
  v16 = sub_238278BC0();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  sub_23821EBC0(v15);
  if (v17 != 1)
  {
    goto LABEL_17;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a5) & 0xF;
  }

  else
  {
    result = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a5 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_8;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_20;
  }

LABEL_8:

  v19 = sub_23822DECC(a4, a5);

  if ((v19 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_23822DE84(a4, a5);
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = sub_238278FC0();

  if ((v21 & 1) == 0)
  {
    result = sub_23822DE84(a4, a5);
    if (!v22)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v23 = sub_238278FB0();

    if ((v23 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  result = sub_23822D660(a4, a5);
  if (!v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = sub_238278FC0();

  if (v25)
  {
LABEL_17:
    Event = type metadata accessor for ElectricVehicleLoadEvent(0);
    v29 = Event[5];
    v30 = sub_238278B70();
    v31 = *(v30 - 8);
    (*(v31 + 16))(a6 + v29, a1, v30);
    sub_238231394(a3, a6 + Event[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
    sub_238231394(a2, a6 + Event[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    *(a6 + Event[9]) = 1;
    sub_238278BB0();
    sub_2382313FC(a3, type metadata accessor for ElectricVehicleLoadEvent.Session);
    sub_2382313FC(a2, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    result = (*(v31 + 8))(a1, v30);
    v32 = (a6 + Event[8]);
    *v32 = a4;
    v32[1] = a5;
    return result;
  }

  result = sub_23822D660(a4, a5);
  if (v26)
  {
    v27 = sub_238278FB0();

    if (v27)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23822DE84(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_238279070();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23822DECC(uint64_t a1, unint64_t a2)
{
  v37 = sub_238278A40();
  v4 = *(*(v37 - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v31 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = HIBYTE(a2) & 0xF;
  v39 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v12;
  if (v12)
  {
    v13 = 0;
    v32 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v33 = a2 & 0xFFFFFFFFFFFFFFLL;
    v14 = (v9 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_2382793A0();
        v18 = v17;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v38[0] = v39;
          v38[1] = v33;
          v16 = v38 + v13;
        }

        else
        {
          v15 = v32;
          if ((v39 & 0x1000000000000000) == 0)
          {
            v15 = sub_238279400();
          }

          v16 = (v15 + v13);
        }

        v19 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v26 = (__clz(v19 ^ 0xFF) - 24);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v28 = ((v19 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3Fu;
            v18 = 3;
          }

          else
          {
            v29 = ((v19 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3Fu;
            v18 = 4;
          }

          goto LABEL_14;
        }

        if (v26 == 1)
        {
LABEL_13:
          v18 = 1;
        }

        else
        {
          v27 = v16[1] & 0x3F | ((v19 & 0x1F) << 6);
          v18 = 2;
        }
      }

LABEL_14:
      v20 = v35;
      sub_238278A10();
      v21 = v36;
      sub_238278A00();
      sub_238278A20();
      v22 = *v14;
      v23 = v21;
      v24 = v37;
      (*v14)(v23, v37);
      v22(v20, v24);
      v25 = sub_238278A30();
      v22(v11, v24);
      if (v25)
      {
        v13 += v18;
        if (v13 < v34)
        {
          continue;
        }
      }

      return v25 & 1;
    }
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.power.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.energy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_23822E2F8()
{
  v1 = 0x43664F6574617473;
  v2 = 0x796772656E65;
  if (*v0 != 2)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0)
  {
    v1 = 0x7265776F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23822E37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238232E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23822E3A4(uint64_t a1)
{
  v2 = sub_23823145C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822E3E0(uint64_t a1)
{
  v2 = sub_23823145C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F38, &qword_23827C428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823145C();
  sub_238279640();
  v11 = *v3;
  v21 = 0;
  sub_238279530();
  if (!v2)
  {
    v16 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    v12 = v16[5];
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
    sub_2382314F8(&qword_27DEF6F48, &qword_27DEF68E0, &qword_23827C420);
    sub_238279550();
    v13 = v16[6];
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
    sub_2382314F8(&qword_27DEF6F50, &qword_27DEF68E8, &qword_23827A320);
    sub_238279550();
    v18 = *(v3 + v16[7]);
    v17 = 3;
    sub_2382223FC();
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v32 = *(v35 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F58, &qword_23827C430);
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v17 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23823145C();
  v37 = v12;
  v19 = v38;
  sub_238279630();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v20 = v34;
  v21 = v35;
  v38 = v6;
  v44 = 0;
  v22 = sub_2382794A0();
  v30 = v16;
  *v16 = v22;
  v43 = 1;
  sub_2382314F8(&qword_27DEF6F60, &qword_27DEF68E0, &qword_23827C420);
  v23 = v38;
  sub_2382794C0();
  v29 = v13;
  (*(v33 + 32))(v30 + *(v13 + 20), v9, v23);
  v42 = 2;
  sub_2382314F8(&qword_27DEF6F68, &qword_27DEF68E8, &qword_23827A320);
  v24 = v5;
  v25 = v36;
  sub_2382794C0();
  v26 = v30;
  (*(v32 + 32))(v30 + *(v29 + 24), v24, v21);
  v40 = 3;
  sub_238222688();
  sub_2382794C0();
  (*(v20 + 8))(v37, v25);
  *(v26 + *(v29 + 28)) = v41;
  sub_238231394(v26, v31, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_2382313FC(v26, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
}

uint64_t sub_23822EC28(uint64_t a1)
{
  v2 = sub_238231594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822EC64(uint64_t a1)
{
  v2 = sub_238231594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822ECA0(uint64_t a1)
{
  v2 = sub_23823163C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822ECDC(uint64_t a1)
{
  v2 = sub_23823163C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822ED18(uint64_t a1)
{
  v2 = sub_238231540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822ED54(uint64_t a1)
{
  v2 = sub_238231540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822ED90(uint64_t a1)
{
  v2 = sub_2382315E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822EDCC(uint64_t a1)
{
  v2 = sub_2382315E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.Session.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F70, &qword_23827C438);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F78, &qword_23827C440);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F80, &qword_23827C448);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F88, &qword_23827C450);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231540();
  sub_238279640();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_2382315E8();
      v12 = v26;
      sub_2382794E0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_238231594();
      v12 = v29;
      sub_2382794E0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23823163C();
    sub_2382794E0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t ElectricVehicleLoadEvent.Session.State.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricVehicleLoadEvent.Session.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FB0, &qword_23827C458);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FB8, &qword_23827C460);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FC0, &qword_23827C468);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FC8, &unk_23827C470);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_238231540();
  v20 = v43;
  sub_238279630();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_2382794D0();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_238228428();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_2382793F0();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v30 = &type metadata for ElectricVehicleLoadEvent.Session.State;
      sub_238279450();
      sub_2382793E0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_2382315E8();
          sub_238279440();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_238231594();
          v33 = v22;
          sub_238279440();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_23823163C();
        sub_238279440();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.guidanceToken.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_23822F880(uint64_t a1)
{
  v2 = sub_238231690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822F8BC(uint64_t a1)
{
  v2 = sub_238231690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FD0, &qword_23827C480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231690();
  sub_238279640();
  v11 = *v3;
  v14[15] = 0;
  sub_238279510();
  if (!v2)
  {
    v12 = *(type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0) + 20);
    v14[14] = 1;
    sub_238278BC0();
    sub_2382316E4(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_238278BC0();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FE0, &qword_23827C488);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231690();
  sub_238279630();
  if (!v2)
  {
    v23 = v10;
    v16 = v26;
    v15 = v27;
    v30 = 0;
    v17 = v28;
    v18 = sub_238279480();
    v22 = v13;
    *v13 = v18 & 1;
    v29 = 1;
    sub_2382316E4(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
    sub_2382794C0();
    (*(v16 + 8))(v9, v17);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v6, v15);
    sub_23823187C(v19, v25, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ElectricVehicleLoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_23822FE40(uint64_t a1)
{
  v2 = sub_23823172C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822FE7C(uint64_t a1)
{
  v2 = sub_23823172C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FE8, &qword_23827C490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823172C();
  sub_238279640();
  v14[15] = 0;
  sub_238278BC0();
  sub_2382316E4(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    v11 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
    v14[14] = *(v3 + *(v11 + 20));
    v14[13] = 1;
    sub_238231780();
    sub_238279550();
    v12 = *(v11 + 24);
    v14[12] = 2;
    type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    sub_2382316E4(&qword_27DEF7000, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectricVehicleLoadEvent.Session.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238278BC0();
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7008, &qword_23827C498);
  v27 = *(v31 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823172C();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v27;
  v18 = v28;
  v23 = v15;
  v24 = a1;
  v35 = 0;
  sub_2382316E4(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  v19 = v29;
  sub_2382794C0();
  (*(v18 + 32))(v23, v19, v30);
  v33 = 1;
  sub_2382317D4();
  sub_2382794C0();
  v20 = v23;
  v23[*(v12 + 20)] = v34;
  v32 = 2;
  sub_2382316E4(&qword_27DEF7018, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  sub_2382794C0();
  (*(v17 + 8))(v11, v31);
  sub_23823187C(v6, v20 + *(v12 + 24), type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  sub_238231394(v20, v25, type metadata accessor for ElectricVehicleLoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_2382313FC(v20, type metadata accessor for ElectricVehicleLoadEvent.Session);
}

uint64_t sub_2382305BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ElectricVehicleLoadEvent.deviceID.getter()
{
  v1 = (v0 + *(type metadata accessor for ElectricVehicleLoadEvent(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_238230750(uint64_t a1)
{
  v2 = sub_238231828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823078C(uint64_t a1)
{
  v2 = sub_238231828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7020, &qword_23827C4A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231828();
  sub_238279640();
  v20[15] = 0;
  sub_238278BC0();
  sub_2382316E4(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    Event = type metadata accessor for ElectricVehicleLoadEvent(0);
    v12 = Event[5];
    v20[14] = 1;
    sub_238278B70();
    sub_2382316E4(&qword_27DEF6B68, MEMORY[0x277CC9578]);
    sub_238279550();
    v13 = Event[6];
    v20[13] = 2;
    type metadata accessor for ElectricVehicleLoadEvent.Session(0);
    sub_2382316E4(&qword_27DEF7030, type metadata accessor for ElectricVehicleLoadEvent.Session);
    sub_238279550();
    v14 = Event[7];
    v20[12] = 3;
    type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    sub_2382316E4(&qword_27DEF7038, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    sub_238279550();
    v15 = (v3 + Event[8]);
    v16 = *v15;
    v17 = v15[1];
    v20[11] = 4;
    sub_238279500();
    v18 = *(v3 + Event[9]);
    v20[10] = 5;
    sub_238279540();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectricVehicleLoadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238278B70();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_238278BC0();
  v39 = *(v44 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7040, &qword_23827C4A8);
  v40 = *(v43 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v15 = &v33 - v14;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v17 = *(*(Event - 1) + 64);
  MEMORY[0x28223BE20](Event);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231828();
  v45 = v15;
  v21 = v46;
  sub_238279630();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v19;
  v46 = a1;
  v23 = v41;
  v52 = 0;
  sub_2382316E4(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  sub_2382794C0();
  (*(v39 + 32))(v22, v42, v44);
  v51 = 1;
  sub_2382316E4(&qword_27DEF6B90, MEMORY[0x277CC9578]);
  sub_2382794C0();
  v33 = v7;
  (*(v23 + 32))(v22 + Event[5], v10, v7);
  v50 = 2;
  sub_2382316E4(&qword_27DEF7048, type metadata accessor for ElectricVehicleLoadEvent.Session);
  v24 = v38;
  v42 = 0;
  sub_2382794C0();
  v25 = v40;
  sub_23823187C(v24, v22 + Event[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
  v49 = 3;
  sub_2382316E4(&qword_27DEF7050, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v26 = v36;
  sub_2382794C0();
  v27 = v46;
  sub_23823187C(v26, v22 + Event[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v48 = 4;
  v28 = sub_238279470();
  v29 = (v22 + Event[8]);
  *v29 = v28;
  v29[1] = v30;
  v47 = 5;
  v31 = sub_2382794B0();
  (*(v25 + 8))(v45, v43);
  *(v22 + Event[9]) = v31;
  sub_238231394(v22, v34, type metadata accessor for ElectricVehicleLoadEvent);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_2382313FC(v22, type metadata accessor for ElectricVehicleLoadEvent);
}

uint64_t sub_238231394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2382313FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23823145C()
{
  result = qword_27DEF6F40;
  if (!qword_27DEF6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F40);
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

uint64_t sub_2382314F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_238231540()
{
  result = qword_27DEF6F90;
  if (!qword_27DEF6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F90);
  }

  return result;
}

unint64_t sub_238231594()
{
  result = qword_27DEF6F98;
  if (!qword_27DEF6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F98);
  }

  return result;
}

unint64_t sub_2382315E8()
{
  result = qword_27DEF6FA0;
  if (!qword_27DEF6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FA0);
  }

  return result;
}

unint64_t sub_23823163C()
{
  result = qword_27DEF6FA8;
  if (!qword_27DEF6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FA8);
  }

  return result;
}

unint64_t sub_238231690()
{
  result = qword_27DEF6FD8;
  if (!qword_27DEF6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FD8);
  }

  return result;
}

uint64_t sub_2382316E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23823172C()
{
  result = qword_27DEF6FF0;
  if (!qword_27DEF6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FF0);
  }

  return result;
}

unint64_t sub_238231780()
{
  result = qword_27DEF6FF8;
  if (!qword_27DEF6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FF8);
  }

  return result;
}

unint64_t sub_2382317D4()
{
  result = qword_27DEF7010;
  if (!qword_27DEF7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7010);
  }

  return result;
}

unint64_t sub_238231828()
{
  result = qword_27DEF7028;
  if (!qword_27DEF7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7028);
  }

  return result;
}

uint64_t sub_23823187C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2382318E8()
{
  result = qword_27DEF7058;
  if (!qword_27DEF7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7058);
  }

  return result;
}

uint64_t sub_23823193C(void *a1)
{
  a1[1] = sub_2382316E4(&qword_27DEF7060, type metadata accessor for ElectricVehicleLoadEvent);
  a1[2] = sub_2382316E4(&qword_27DEF7068, type metadata accessor for ElectricVehicleLoadEvent);
  result = sub_2382316E4(&qword_27DEF7070, type metadata accessor for ElectricVehicleLoadEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_238231A44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_238278B70();
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

  v14 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_238231BF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_238278B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
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

uint64_t sub_238231D94()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    result = sub_238278B70();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ElectricVehicleLoadEvent.Session(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_238231E74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 2)
      {
        return v13 - 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_238231FA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_2382320C0()
{
  sub_23823218C(319, &qword_27DEF7098, &qword_27DEF6970, 0x277CCAE30);
  if (v0 <= 0x3F)
  {
    sub_23823218C(319, &qword_27DEF70A0, &qword_27DEF6978, 0x277CCADF8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23823218C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23821EB10(255, a3, a4);
    v5 = sub_2382789F0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2382321F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
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

  else
  {
    v11 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238232328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278BC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238232448()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2382324F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_238278BC0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2382325B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_2382326DC()
{
  result = qword_27DEF70C8;
  if (!qword_27DEF70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70C8);
  }

  return result;
}

unint64_t sub_238232734()
{
  result = qword_27DEF70D0;
  if (!qword_27DEF70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70D0);
  }

  return result;
}

unint64_t sub_23823278C()
{
  result = qword_27DEF70D8;
  if (!qword_27DEF70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70D8);
  }

  return result;
}

unint64_t sub_2382327E4()
{
  result = qword_27DEF70E0;
  if (!qword_27DEF70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70E0);
  }

  return result;
}

unint64_t sub_23823283C()
{
  result = qword_27DEF70E8;
  if (!qword_27DEF70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70E8);
  }

  return result;
}

unint64_t sub_238232894()
{
  result = qword_27DEF70F0;
  if (!qword_27DEF70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70F0);
  }

  return result;
}

unint64_t sub_2382328EC()
{
  result = qword_27DEF70F8;
  if (!qword_27DEF70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70F8);
  }

  return result;
}

unint64_t sub_238232944()
{
  result = qword_27DEF7100;
  if (!qword_27DEF7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7100);
  }

  return result;
}

unint64_t sub_23823299C()
{
  result = qword_27DEF7108;
  if (!qword_27DEF7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7108);
  }

  return result;
}

unint64_t sub_2382329F4()
{
  result = qword_27DEF7110;
  if (!qword_27DEF7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7110);
  }

  return result;
}

unint64_t sub_238232A4C()
{
  result = qword_27DEF7118;
  if (!qword_27DEF7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7118);
  }

  return result;
}

unint64_t sub_238232AA4()
{
  result = qword_27DEF7120;
  if (!qword_27DEF7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7120);
  }

  return result;
}

unint64_t sub_238232AFC()
{
  result = qword_27DEF7128;
  if (!qword_27DEF7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7128);
  }

  return result;
}

unint64_t sub_238232B54()
{
  result = qword_27DEF7130;
  if (!qword_27DEF7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7130);
  }

  return result;
}

unint64_t sub_238232BAC()
{
  result = qword_27DEF7138;
  if (!qword_27DEF7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7138);
  }

  return result;
}

unint64_t sub_238232C04()
{
  result = qword_27DEF7140;
  if (!qword_27DEF7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7140);
  }

  return result;
}

unint64_t sub_238232C5C()
{
  result = qword_27DEF7148;
  if (!qword_27DEF7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7148);
  }

  return result;
}

unint64_t sub_238232CB4()
{
  result = qword_27DEF7150;
  if (!qword_27DEF7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7150);
  }

  return result;
}

unint64_t sub_238232D0C()
{
  result = qword_27DEF7158;
  if (!qword_27DEF7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7158);
  }

  return result;
}

unint64_t sub_238232D64()
{
  result = qword_27DEF7160;
  if (!qword_27DEF7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7160);
  }

  return result;
}

unint64_t sub_238232DBC()
{
  result = qword_27DEF7168;
  if (!qword_27DEF7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7168);
  }

  return result;
}

uint64_t sub_238232E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43664F6574617473 && a2 == 0xED00006567726168;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_238232F80()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x277CCADF8]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithSymbol:v2 converter:v0];

  qword_27DEF7170 = v3;
}

id static NSUnitEnergy.EnergyKit.milliwattHours.getter()
{
  if (qword_27DEF68A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF7170;

  return v1;
}

id NSUnitEnergy.EnergyKit.__allocating_init(symbol:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_238278FF0();

  v3 = [v1 initWithSymbol_];

  return v3;
}

id NSUnitEnergy.EnergyKit.init(symbol:)()
{
  v1 = sub_238278FF0();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  v2 = objc_msgSendSuper2(&v4, sel_initWithSymbol_, v1);

  return v2;
}

id NSUnitEnergy.EnergyKit.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NSUnitEnergy.EnergyKit.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NSUnitEnergy.EnergyKit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ElectricityGuidance.Service.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 16);

  return v0;
}

uint64_t ElectricityGuidance.Service.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ElectricityGuidance.Service.guidance(using:at:)(_BYTE *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7180, &qword_23827CF60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  LOBYTE(v8) = *a1;
  v10 = a1[1];
  v13 = v2;
  v14 = a2;
  v15 = v8;
  v16 = v10;
  type metadata accessor for ElectricityGuidance(0);
  (*(v6 + 104))(v9, *MEMORY[0x277D858A0], v5);
  return sub_238279270();
}

uint64_t sub_23823358C()
{
  if (*v0)
  {
    result = 0x6369726F74736968;
  }

  else
  {
    result = 0x7473616365726F66;
  }

  *v0;
  return result;
}

uint64_t sub_2382335CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473616365726F66 && a2 == 0xE800000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369726F74736968 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_2382336B0(uint64_t a1)
{
  v2 = sub_23823753C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382336EC(uint64_t a1)
{
  v2 = sub_23823753C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238233728(uint64_t a1)
{
  v2 = sub_2382375E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238233764(uint64_t a1)
{
  v2 = sub_2382375E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382337A0(uint64_t a1)
{
  v2 = sub_238237590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382337DC(uint64_t a1)
{
  v2 = sub_238237590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Query.QueryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7188, &qword_23827CF68);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7190, &qword_23827CF70);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7198, &qword_23827CF78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823753C();
  sub_238279640();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_238237590();
    v18 = v22;
    sub_2382794E0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2382375E4();
    sub_2382794E0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ElectricityGuidance.Query.QueryType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71B8, &qword_23827CF80);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71C0, &qword_23827CF88);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71C8, &unk_23827CF90);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823753C();
  v16 = v36;
  sub_238279630();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2382794D0();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23822842C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2382793F0();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v26 = &type metadata for ElectricityGuidance.Query.QueryType;
      sub_238279450();
      sub_2382793E0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_238237590();
        sub_238279440();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2382375E4();
        sub_238279440();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_238233FC4()
{
  if (*v0)
  {
    result = 0x7079547972657571;
  }

  else
  {
    result = 0x6574736567677573;
  }

  *v0;
  return result;
}

uint64_t sub_238234010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574736567677573 && a2 == 0xEF6E6F6974634164;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7079547972657571 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_2382340FC(uint64_t a1)
{
  v2 = sub_238237638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238234138(uint64_t a1)
{
  v2 = sub_238237638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Query.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71D0, &qword_23827CFA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237638();
  sub_238279640();
  v17 = v9;
  v16 = 0;
  sub_23823768C();
  sub_238279550();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_2382376E0();
    sub_238279550();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ElectricityGuidance.Query.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71F0, &qword_23827CFA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237638();
  sub_238279630();
  if (!v2)
  {
    v17 = 0;
    sub_238237734();
    sub_2382794C0();
    v11 = v18;
    v15 = 1;
    sub_238237788();
    sub_2382794C0();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238234534()
{
  if (*v0)
  {
    result = 0x656375646572;
  }

  else
  {
    result = 0x7466696873;
  }

  *v0;
  return result;
}

uint64_t sub_238234568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7466696873 && a2 == 0xE500000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656375646572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_23823463C(uint64_t a1)
{
  v2 = sub_2382377DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238234678(uint64_t a1)
{
  v2 = sub_2382377DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382346B4(uint64_t a1)
{
  v2 = sub_238237830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382346F0(uint64_t a1)
{
  v2 = sub_238237830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823472C(uint64_t a1)
{
  v2 = sub_238237884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238234768(uint64_t a1)
{
  v2 = sub_238237884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.SuggestedAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7208, &qword_23827CFB0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7210, &qword_23827CFB8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7218, &qword_23827CFC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382377DC();
  sub_238279640();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_238237830();
    v18 = v22;
    sub_2382794E0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_238237884();
    sub_2382794E0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ElectricityGuidance.SuggestedAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7238, &qword_23827CFC8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7240, &qword_23827CFD0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7248, &qword_23827CFD8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382377DC();
  v16 = v36;
  sub_238279630();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2382794D0();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23822842C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2382793F0();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v26 = &type metadata for ElectricityGuidance.SuggestedAction;
      sub_238279450();
      sub_2382793E0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_238237830();
        sub_238279440();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_238237884();
        sub_238279440();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ElectricityGuidance.Value.init(interval:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_238278AA0();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for ElectricityGuidance.Value(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_238235028()
{
  if (*v0)
  {
    result = 0x676E69746172;
  }

  else
  {
    result = 0x6C61767265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_238235060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_238235138(uint64_t a1)
{
  v2 = sub_2382378F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238235174(uint64_t a1)
{
  v2 = sub_2382378F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Value.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7250, &qword_23827CFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382378F8();
  sub_238279640();
  v13[15] = 0;
  sub_238278AA0();
  sub_23823794C(&qword_27DEF7260, MEMORY[0x277CC88A8]);
  sub_238279550();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ElectricityGuidance.Value(0) + 20));
    v13[14] = 1;
    sub_238279520();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectricityGuidance.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_238278AA0();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7268, &qword_23827CFE8);
  v27 = *(v30 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ElectricityGuidance.Value(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382378F8();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v16 = v27;
  v17 = v28;
  v32 = 0;
  sub_23823794C(&qword_27DEF7270, MEMORY[0x277CC88A8]);
  v18 = v29;
  sub_2382794C0();
  (*(v17 + 32))(v25, v7, v18);
  v31 = 1;
  sub_238279490();
  v20 = v19;
  (*(v16 + 8))(v10, v30);
  v22 = v25;
  v21 = v26;
  *&v25[*(v11 + 20)] = v20;
  sub_238237CA0(v22, v21, type metadata accessor for ElectricityGuidance.Value);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238237D08(v22, type metadata accessor for ElectricityGuidance.Value);
}

unint64_t sub_2382356E4()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_238235720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000238281000 == a2 || (sub_238279590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000238281020 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_238279590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_238235804(uint64_t a1)
{
  v2 = sub_238237994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238235840(uint64_t a1)
{
  v2 = sub_238237994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823587C(uint64_t a1)
{
  v2 = sub_2382379E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382358B8(uint64_t a1)
{
  v2 = sub_2382379E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382358F4(uint64_t a1)
{
  v2 = sub_238237A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238235930(uint64_t a1)
{
  v2 = sub_238237A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Options.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7278, &qword_23827CFF0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7280, &qword_23827CFF8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7288, &qword_23827D000);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237994();
  sub_238279640();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2382379E8();
    v18 = v22;
    sub_2382794E0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_238237A3C();
    sub_2382794E0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ElectricityGuidance.Options.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72A8, &qword_23827D008);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72B0, &qword_23827D010);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72B8, &qword_23827D018);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237994();
  v16 = v36;
  sub_238279630();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2382794D0();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23822842C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2382793F0();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v26 = &type metadata for ElectricityGuidance.Options;
      sub_238279450();
      sub_2382793E0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2382379E8();
        sub_238279440();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_238237A3C();
        sub_238279440();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_238236214()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t sub_238236288()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

BOOL sub_238236310(void *a1, uint64_t *a2)
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

void *sub_238236340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_23823636C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_238236458@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_238236498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ElectricityGuidance.energyVenueID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricityGuidance(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricityGuidance.suggestedAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityGuidance(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ElectricityGuidance.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricityGuidance(0) + 28);
  v4 = sub_238278AA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricityGuidance.values.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElectricityGuidance(0) + 32));
}

uint64_t ElectricityGuidance.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElectricityGuidance(0) + 36));
}

uint64_t sub_23823669C()
{
  type metadata accessor for ElectricityGuidance.Service();
  v0 = swift_allocObject();
  if ((sub_238278D20() & 1) == 0)
  {
    sub_238278C90();
    sub_238278C80();
  }

  type metadata accessor for SerializedGuidanceOperations();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 16) = v1;
  qword_27DEF7178 = v0;
  return result;
}

uint64_t static ElectricityGuidance.sharedService.getter()
{
  if (qword_27DEF68A8 != -1)
  {
    swift_once();
  }
}

uint64_t ElectricityGuidance.init(guidanceToken:energyVenueID:suggestedAction:interval:values:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = sub_238278BC0();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v16 = type metadata accessor for ElectricityGuidance(0);
  v15(a7 + v16[5], a2, v14);
  *(a7 + v16[6]) = v13;
  v17 = v16[7];
  v18 = sub_238278AA0();
  result = (*(*(v18 - 8) + 32))(a7 + v17, a4, v18);
  *(a7 + v16[8]) = a5;
  *(a7 + v16[9]) = a6;
  return result;
}

uint64_t sub_238236884()
{
  v1 = *v0;
  v2 = 0x65636E6164697567;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6556796772656E65;
  if (v1 != 1)
  {
    v5 = 0x6574736567677573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238236960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2382392CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238236988(uint64_t a1)
{
  v2 = sub_238237A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382369C4(uint64_t a1)
{
  v2 = sub_238237A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72C0, &qword_23827D020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237A90();
  sub_238279640();
  LOBYTE(v16) = 0;
  sub_238278BC0();
  sub_23823794C(&qword_27DEF6AA8, MEMORY[0x277CC95F0]);
  sub_238279550();
  if (!v2)
  {
    v11 = type metadata accessor for ElectricityGuidance(0);
    v12 = v11[5];
    LOBYTE(v16) = 1;
    sub_238279550();
    LOBYTE(v16) = *(v3 + v11[6]);
    v17 = 2;
    sub_23823768C();
    sub_238279550();
    v13 = v11[7];
    LOBYTE(v16) = 3;
    sub_238278AA0();
    sub_23823794C(&qword_27DEF7260, MEMORY[0x277CC88A8]);
    sub_238279550();
    v16 = *(v3 + v11[8]);
    v17 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72D0, &qword_23827D028);
    sub_238237B38(&qword_27DEF72D8, &qword_27DEF72E0);
    sub_238279550();
    v16 = *(v3 + v11[9]);
    v17 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72E8, &qword_23827D030);
    sub_238237BD4(&qword_27DEF72F0, sub_238237AE4);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectricityGuidance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_238278AA0();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238278BC0();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v30 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7300, &qword_23827D038);
  v35 = *(v39 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v39);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ElectricityGuidance(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237A90();
  v38 = v14;
  v20 = v40;
  sub_238279630();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v34;
  v30 = v15;
  v40 = v18;
  v22 = v36;
  LOBYTE(v41) = 0;
  sub_23823794C(&qword_27DEF6AC8, MEMORY[0x277CC95F0]);
  sub_2382794C0();
  v23 = *(v22 + 32);
  v23(v40, v37, v6);
  LOBYTE(v41) = 1;
  sub_2382794C0();
  v24 = v30;
  v23(&v40[*(v30 + 20)], v10, v6);
  v42 = 2;
  sub_238237734();
  v37 = 0;
  sub_2382794C0();
  v40[v24[6]] = v41;
  LOBYTE(v41) = 3;
  sub_23823794C(&qword_27DEF7270, MEMORY[0x277CC88A8]);
  v25 = v21;
  v26 = v24;
  v27 = v33;
  sub_2382794C0();
  v28 = v40;
  (*(v32 + 32))(&v40[v26[7]], v25, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72D0, &qword_23827D028);
  v42 = 4;
  sub_238237B38(&qword_27DEF7308, &qword_27DEF7310);
  sub_2382794C0();
  *(v28 + v26[8]) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72E8, &qword_23827D030);
  v42 = 5;
  sub_238237BD4(&qword_27DEF7318, sub_238237C4C);
  sub_2382794C0();
  (*(v35 + 8))(v38, v39);
  *(v28 + v26[9]) = v41;
  sub_238237CA0(v28, v31, type metadata accessor for ElectricityGuidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238237D08(v28, type metadata accessor for ElectricityGuidance);
}

uint64_t sub_2382374FC(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23826F254(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_23823753C()
{
  result = qword_27DEF71A0;
  if (!qword_27DEF71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71A0);
  }

  return result;
}

unint64_t sub_238237590()
{
  result = qword_27DEF71A8;
  if (!qword_27DEF71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71A8);
  }

  return result;
}

unint64_t sub_2382375E4()
{
  result = qword_27DEF71B0;
  if (!qword_27DEF71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71B0);
  }

  return result;
}

unint64_t sub_238237638()
{
  result = qword_27DEF71D8;
  if (!qword_27DEF71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71D8);
  }

  return result;
}

unint64_t sub_23823768C()
{
  result = qword_27DEF71E0;
  if (!qword_27DEF71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71E0);
  }

  return result;
}

unint64_t sub_2382376E0()
{
  result = qword_27DEF71E8;
  if (!qword_27DEF71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71E8);
  }

  return result;
}

unint64_t sub_238237734()
{
  result = qword_27DEF71F8;
  if (!qword_27DEF71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71F8);
  }

  return result;
}

unint64_t sub_238237788()
{
  result = qword_27DEF7200;
  if (!qword_27DEF7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7200);
  }

  return result;
}

unint64_t sub_2382377DC()
{
  result = qword_27DEF7220;
  if (!qword_27DEF7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7220);
  }

  return result;
}

unint64_t sub_238237830()
{
  result = qword_27DEF7228;
  if (!qword_27DEF7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7228);
  }

  return result;
}

unint64_t sub_238237884()
{
  result = qword_27DEF7230;
  if (!qword_27DEF7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7230);
  }

  return result;
}

unint64_t sub_2382378F8()
{
  result = qword_27DEF7258;
  if (!qword_27DEF7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7258);
  }

  return result;
}

uint64_t sub_23823794C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238237994()
{
  result = qword_27DEF7290;
  if (!qword_27DEF7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7290);
  }

  return result;
}

unint64_t sub_2382379E8()
{
  result = qword_27DEF7298;
  if (!qword_27DEF7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7298);
  }

  return result;
}

unint64_t sub_238237A3C()
{
  result = qword_27DEF72A0;
  if (!qword_27DEF72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF72A0);
  }

  return result;
}

unint64_t sub_238237A90()
{
  result = qword_27DEF72C8;
  if (!qword_27DEF72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF72C8);
  }

  return result;
}

unint64_t sub_238237AE4()
{
  result = qword_27DEF72F8;
  if (!qword_27DEF72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF72F8);
  }

  return result;
}

uint64_t sub_238237B38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF72D0, &qword_23827D028);
    sub_23823794C(a2, type metadata accessor for ElectricityGuidance.Value);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238237BD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF72E8, &qword_23827D030);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238237C4C()
{
  result = qword_27DEF7320;
  if (!qword_27DEF7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7320);
  }

  return result;
}

uint64_t sub_238237CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238237D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238237D6C()
{
  result = qword_27DEF7328;
  if (!qword_27DEF7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7328);
  }

  return result;
}

unint64_t sub_238237DC4()
{
  result = qword_27DEF7330;
  if (!qword_27DEF7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7330);
  }

  return result;
}

unint64_t sub_238237E1C()
{
  result = qword_27DEF7338;
  if (!qword_27DEF7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7338);
  }

  return result;
}

unint64_t sub_238237EB8()
{
  result = qword_27DEF7350;
  if (!qword_27DEF7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7350);
  }

  return result;
}

unint64_t sub_238237F10()
{
  result = qword_27DEF7358;
  if (!qword_27DEF7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7358);
  }

  return result;
}

unint64_t sub_238237F68()
{
  result = qword_27DEF7360;
  if (!qword_27DEF7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7360);
  }

  return result;
}

unint64_t sub_238237FC0()
{
  result = qword_27DEF7368;
  if (!qword_27DEF7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7368);
  }

  return result;
}

uint64_t sub_238238028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238278AA0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238238148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238278AA0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_238238250()
{
  sub_238278BC0();
  if (v0 <= 0x3F)
  {
    sub_238278AA0();
    if (v1 <= 0x3F)
    {
      sub_238238314();
      if (v2 <= 0x3F)
      {
        sub_23823836C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238238314()
{
  if (!qword_27DEF7380)
  {
    type metadata accessor for ElectricityGuidance.Value(255);
    v0 = sub_238279150();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEF7380);
    }
  }
}

void sub_23823836C()
{
  if (!qword_27DEF7388)
  {
    sub_2382383C8();
    v0 = sub_238279280();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEF7388);
    }
  }
}

unint64_t sub_2382383C8()
{
  result = qword_27DEF7390;
  if (!qword_27DEF7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricityGuidance.Query(unsigned __int16 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ElectricityGuidance.Query(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2382385F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278AA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238238674(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278AA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2382386E4()
{
  result = sub_238278AA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238238880()
{
  result = qword_27DEF73B8;
  if (!qword_27DEF73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73B8);
  }

  return result;
}

unint64_t sub_2382388D8()
{
  result = qword_27DEF73C0;
  if (!qword_27DEF73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73C0);
  }

  return result;
}

unint64_t sub_238238930()
{
  result = qword_27DEF73C8;
  if (!qword_27DEF73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73C8);
  }

  return result;
}

unint64_t sub_238238988()
{
  result = qword_27DEF73D0;
  if (!qword_27DEF73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73D0);
  }

  return result;
}

unint64_t sub_2382389E0()
{
  result = qword_27DEF73D8;
  if (!qword_27DEF73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73D8);
  }

  return result;
}

unint64_t sub_238238A38()
{
  result = qword_27DEF73E0;
  if (!qword_27DEF73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73E0);
  }

  return result;
}

unint64_t sub_238238A90()
{
  result = qword_27DEF73E8;
  if (!qword_27DEF73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73E8);
  }

  return result;
}

unint64_t sub_238238AE8()
{
  result = qword_27DEF73F0;
  if (!qword_27DEF73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73F0);
  }

  return result;
}

unint64_t sub_238238B40()
{
  result = qword_27DEF73F8;
  if (!qword_27DEF73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73F8);
  }

  return result;
}

unint64_t sub_238238B98()
{
  result = qword_27DEF7400;
  if (!qword_27DEF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7400);
  }

  return result;
}

unint64_t sub_238238BF0()
{
  result = qword_27DEF7408;
  if (!qword_27DEF7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7408);
  }

  return result;
}

unint64_t sub_238238C48()
{
  result = qword_27DEF7410;
  if (!qword_27DEF7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7410);
  }

  return result;
}

unint64_t sub_238238CA0()
{
  result = qword_27DEF7418;
  if (!qword_27DEF7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7418);
  }

  return result;
}

unint64_t sub_238238CF8()
{
  result = qword_27DEF7420;
  if (!qword_27DEF7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7420);
  }

  return result;
}

unint64_t sub_238238D50()
{
  result = qword_27DEF7428;
  if (!qword_27DEF7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7428);
  }

  return result;
}

unint64_t sub_238238DA8()
{
  result = qword_27DEF7430;
  if (!qword_27DEF7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7430);
  }

  return result;
}

unint64_t sub_238238E00()
{
  result = qword_27DEF7438;
  if (!qword_27DEF7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7438);
  }

  return result;
}

unint64_t sub_238238E58()
{
  result = qword_27DEF7440;
  if (!qword_27DEF7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7440);
  }

  return result;
}

unint64_t sub_238238EB0()
{
  result = qword_27DEF7448;
  if (!qword_27DEF7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7448);
  }

  return result;
}

unint64_t sub_238238F08()
{
  result = qword_27DEF7450;
  if (!qword_27DEF7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7450);
  }

  return result;
}

unint64_t sub_238238F60()
{
  result = qword_27DEF7458;
  if (!qword_27DEF7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7458);
  }

  return result;
}

unint64_t sub_238238FB8()
{
  result = qword_27DEF7460;
  if (!qword_27DEF7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7460);
  }

  return result;
}

unint64_t sub_238239010()
{
  result = qword_27DEF7468;
  if (!qword_27DEF7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7468);
  }

  return result;
}

unint64_t sub_238239068()
{
  result = qword_27DEF7470;
  if (!qword_27DEF7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7470);
  }

  return result;
}

unint64_t sub_2382390C0()
{
  result = qword_27DEF7478;
  if (!qword_27DEF7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7478);
  }

  return result;
}

unint64_t sub_238239118()
{
  result = qword_27DEF7480;
  if (!qword_27DEF7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7480);
  }

  return result;
}

unint64_t sub_238239170()
{
  result = qword_27DEF7488;
  if (!qword_27DEF7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7488);
  }

  return result;
}

unint64_t sub_2382391C8()
{
  result = qword_27DEF7490;
  if (!qword_27DEF7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7490);
  }

  return result;
}

unint64_t sub_238239220()
{
  result = qword_27DEF7498;
  if (!qword_27DEF7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7498);
  }

  return result;
}

unint64_t sub_238239278()
{
  result = qword_27DEF74A0;
  if (!qword_27DEF74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74A0);
  }

  return result;
}

uint64_t sub_2382392CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6164697567 && a2 == 0xED00006E656B6F54;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556796772656E65 && a2 == 0xED0000444965756ELL || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574736567677573 && a2 == 0xEF6E6F6974634164 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_238239514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

EnergyKit::ElectricityInsightQuery::Granularity __swiftcall ElectricityInsightQuery.Granularity.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238239694()
{
  v1 = *v0;
  v2 = 0x796C72756F68;
  v3 = 0x796C6B656577;
  v4 = 0x796C68746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0x796C72616579;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x796C696164;
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

uint64_t sub_238239720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23823D0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238239748(uint64_t a1)
{
  v2 = sub_238239F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238239784(uint64_t a1)
{
  v2 = sub_238239F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382397C0(uint64_t a1)
{
  v2 = sub_23823A0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382397FC(uint64_t a1)
{
  v2 = sub_23823A0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238239838(uint64_t a1)
{
  v2 = sub_23823A0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238239874(uint64_t a1)
{
  v2 = sub_23823A0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382398B0(uint64_t a1)
{
  v2 = sub_23823A000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382398EC(uint64_t a1)
{
  v2 = sub_23823A000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238239928(uint64_t a1)
{
  v2 = sub_23823A054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238239964(uint64_t a1)
{
  v2 = sub_23823A054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382399A0(uint64_t a1)
{
  v2 = sub_238239FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382399DC(uint64_t a1)
{
  v2 = sub_238239FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityInsightQuery.Granularity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74A8, &qword_23827E210);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74B0, &qword_23827E218);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74B8, &qword_23827E220);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74C0, &qword_23827E228);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74C8, &qword_23827E230);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74D0, &qword_23827E238);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_238239F58();
  sub_238279640();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_23823A0A8();
      v38 = v52;
      sub_2382794E0();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_23823A0FC();
      v38 = v52;
      sub_2382794E0();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_23823A054();
      v29 = v40;
      v30 = v52;
      sub_2382794E0();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_23823A000();
      v29 = v43;
      v30 = v52;
      sub_2382794E0();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_238239FAC();
      v29 = v46;
      v30 = v52;
      sub_2382794E0();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_238239F58()
{
  result = qword_27DEF74D8;
  if (!qword_27DEF74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74D8);
  }

  return result;
}

unint64_t sub_238239FAC()
{
  result = qword_27DEF74E0;
  if (!qword_27DEF74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74E0);
  }

  return result;
}

unint64_t sub_23823A000()
{
  result = qword_27DEF74E8;
  if (!qword_27DEF74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74E8);
  }

  return result;
}

unint64_t sub_23823A054()
{
  result = qword_27DEF74F0;
  if (!qword_27DEF74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74F0);
  }

  return result;
}

unint64_t sub_23823A0A8()
{
  result = qword_27DEF74F8;
  if (!qword_27DEF74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74F8);
  }

  return result;
}

unint64_t sub_23823A0FC()
{
  result = qword_27DEF7500;
  if (!qword_27DEF7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7500);
  }

  return result;
}

uint64_t ElectricityInsightQuery.Granularity.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricityInsightQuery.Granularity.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7508, &qword_23827E240);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7510, &qword_23827E248);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7518, &qword_23827E250);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7520, &qword_23827E258);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7528, &qword_23827E260);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7530, &unk_23827E268);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_238239F58();
  v26 = v69;
  sub_238279630();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_2382794D0();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_238221114();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_2382793F0();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
    *v41 = &type metadata for ElectricityInsightQuery.Granularity;
    sub_238279450();
    sub_2382793E0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_23823A0A8();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_238279440();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_23823A0FC();
      v45 = v54;
      sub_238279440();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_23823A054();
    v46 = v31;
    v47 = v54;
    sub_238279440();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_238239FAC();
    v49 = v64;
    v50 = v54;
    sub_238279440();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_23823A000();
  v38 = v54;
  sub_238279440();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_23823AA20()
{
  if (*v0)
  {
    result = 0x656D69746E7572;
  }

  else
  {
    result = 0x796772656E65;
  }

  *v0;
  return result;
}

uint64_t sub_23823AA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D69746E7572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_23823AB30(uint64_t a1)
{
  v2 = sub_23823AF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823AB6C(uint64_t a1)
{
  v2 = sub_23823AF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823ABA8(uint64_t a1)
{
  v2 = sub_23823AFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823ABE4(uint64_t a1)
{
  v2 = sub_23823AFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823AC20(uint64_t a1)
{
  v2 = sub_23823AF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823AC5C(uint64_t a1)
{
  v2 = sub_23823AF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityInsightQuery.QueryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7538, &qword_23827E278);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7540, &qword_23827E280);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7548, &qword_23827E288);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823AF48();
  sub_238279640();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23823AF9C();
    v18 = v22;
    sub_2382794E0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23823AFF0();
    sub_2382794E0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_23823AF48()
{
  result = qword_27DEF7550;
  if (!qword_27DEF7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7550);
  }

  return result;
}

unint64_t sub_23823AF9C()
{
  result = qword_27DEF7558;
  if (!qword_27DEF7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7558);
  }

  return result;
}

unint64_t sub_23823AFF0()
{
  result = qword_27DEF7560;
  if (!qword_27DEF7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7560);
  }

  return result;
}

uint64_t ElectricityInsightQuery.QueryType.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricityInsightQuery.QueryType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7568, &qword_23827E290);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7570, &qword_23827E298);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7578, &qword_23827E2A0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823AF48();
  v16 = v36;
  sub_238279630();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2382794D0();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23822842C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2382793F0();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v26 = &type metadata for ElectricityInsightQuery.QueryType;
      sub_238279450();
      sub_2382793E0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_23823AF9C();
        sub_238279440();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_23823AFF0();
        sub_238279440();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ElectricityInsightQuery.range.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278AA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricityInsightQuery.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ElectricityInsightQuery()
{
  result = qword_27DEF75F8;
  if (!qword_27DEF75F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ElectricityInsightQuery.granularity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ElectricityInsightQuery.flowDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ElectricityInsightQuery.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ElectricityInsightQuery.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ElectricityInsightQuery();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ElectricityInsightQuery.init(options:range:granularity:flowDirection:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *a3;
  v9 = *a4;
  v10 = type metadata accessor for ElectricityInsightQuery();
  *(a5 + v10[8]) = 0;
  *(a5 + v10[5]) = v7;
  v11 = sub_238278AA0();
  result = (*(*(v11 - 8) + 32))(a5, a2, v11);
  *(a5 + v10[6]) = v8;
  *(a5 + v10[7]) = v9;
  return result;
}

uint64_t sub_23823B848()
{
  v1 = *v0;
  v2 = 0x65676E6172;
  v3 = 0x72616C756E617267;
  v4 = 0x65726944776F6C66;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736E6F6974706FLL;
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

uint64_t sub_23823B8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23823D270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23823B914(uint64_t a1)
{
  v2 = sub_23823BC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823B950(uint64_t a1)
{
  v2 = sub_23823BC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityInsightQuery.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7580, &qword_23827E2A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823BC18();
  sub_238279640();
  LOBYTE(v14) = 0;
  sub_238278AA0();
  sub_23823C1A0(&qword_27DEF7260);
  sub_238279550();
  if (!v2)
  {
    v11 = type metadata accessor for ElectricityInsightQuery();
    v14 = *(v3 + v11[5]);
    HIBYTE(v13) = 1;
    sub_23823BC6C();
    sub_238279550();
    LOBYTE(v14) = *(v3 + v11[6]);
    HIBYTE(v13) = 2;
    sub_23823BCC0();
    sub_238279550();
    LOBYTE(v14) = *(v3 + v11[7]);
    HIBYTE(v13) = 3;
    sub_2382223FC();
    sub_238279550();
    LOBYTE(v14) = *(v3 + v11[8]);
    HIBYTE(v13) = 4;
    sub_23823BD14();
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23823BC18()
{
  result = qword_27DEF7588;
  if (!qword_27DEF7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7588);
  }

  return result;
}

unint64_t sub_23823BC6C()
{
  result = qword_27DEF7590;
  if (!qword_27DEF7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7590);
  }

  return result;
}

unint64_t sub_23823BCC0()
{
  result = qword_27DEF7598;
  if (!qword_27DEF7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7598);
  }

  return result;
}

unint64_t sub_23823BD14()
{
  result = qword_27DEF75A0;
  if (!qword_27DEF75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75A0);
  }

  return result;
}

uint64_t ElectricityInsightQuery.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_238278AA0();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF75A8, &qword_23827E2B0);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ElectricityInsightQuery();
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 32);
  v14[v15] = 0;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823BC18();
  v25 = v9;
  v17 = v29;
  sub_238279630();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v24;
  LOBYTE(v31) = 0;
  sub_23823C1A0(&qword_27DEF7270);
  v19 = v25;
  sub_2382794C0();
  v20 = *(v18 + 32);
  v29 = v3;
  v20(v14, v28, v3);
  v30 = 1;
  sub_23823C1E4();
  sub_2382794C0();
  *&v14[v10[5]] = v31;
  v30 = 2;
  sub_23823C238();
  sub_2382794C0();
  v21 = v26;
  v14[v10[6]] = v31;
  v30 = 3;
  sub_238222688();
  sub_2382794C0();
  v14[v10[7]] = v31;
  v30 = 4;
  sub_23823C28C();
  sub_2382794C0();
  (*(v21 + 8))(v19, v27);
  v14[v15] = v31;
  sub_23823C2E0(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23823C344(v14);
}

uint64_t sub_23823C1A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238278AA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23823C1E4()
{
  result = qword_27DEF75B0;
  if (!qword_27DEF75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75B0);
  }

  return result;
}

unint64_t sub_23823C238()
{
  result = qword_27DEF75B8;
  if (!qword_27DEF75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75B8);
  }

  return result;
}

unint64_t sub_23823C28C()
{
  result = qword_27DEF75C0;
  if (!qword_27DEF75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75C0);
  }

  return result;
}

uint64_t sub_23823C2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricityInsightQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23823C344(uint64_t a1)
{
  v2 = type metadata accessor for ElectricityInsightQuery();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23823C3A4()
{
  result = qword_27DEF75C8;
  if (!qword_27DEF75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75C8);
  }

  return result;
}

unint64_t sub_23823C3FC()
{
  result = qword_27DEF75D0;
  if (!qword_27DEF75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75D0);
  }

  return result;
}

unint64_t sub_23823C454()
{
  result = qword_27DEF75D8;
  if (!qword_27DEF75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75D8);
  }

  return result;
}

unint64_t sub_23823C4AC()
{
  result = qword_27DEF75E0;
  if (!qword_27DEF75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75E0);
  }

  return result;
}

unint64_t sub_23823C504()
{
  result = qword_27DEF75E8;
  if (!qword_27DEF75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75E8);
  }

  return result;
}

unint64_t sub_23823C55C()
{
  result = qword_27DEF75F0;
  if (!qword_27DEF75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75F0);
  }

  return result;
}

uint64_t sub_23823C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278AA0();
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
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23823C6C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278AA0();
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

uint64_t sub_23823C778()
{
  result = sub_238278AA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23823C8EC()
{
  result = qword_27DEF7608;
  if (!qword_27DEF7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7608);
  }

  return result;
}

unint64_t sub_23823C944()
{
  result = qword_27DEF7610;
  if (!qword_27DEF7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7610);
  }

  return result;
}

unint64_t sub_23823C99C()
{
  result = qword_27DEF7618;
  if (!qword_27DEF7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7618);
  }

  return result;
}

unint64_t sub_23823C9F4()
{
  result = qword_27DEF7620;
  if (!qword_27DEF7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7620);
  }

  return result;
}

unint64_t sub_23823CA4C()
{
  result = qword_27DEF7628;
  if (!qword_27DEF7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7628);
  }

  return result;
}

unint64_t sub_23823CAA4()
{
  result = qword_27DEF7630;
  if (!qword_27DEF7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7630);
  }

  return result;
}

unint64_t sub_23823CAFC()
{
  result = qword_27DEF7638;
  if (!qword_27DEF7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7638);
  }

  return result;
}

unint64_t sub_23823CB54()
{
  result = qword_27DEF7640;
  if (!qword_27DEF7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7640);
  }

  return result;
}

unint64_t sub_23823CBAC()
{
  result = qword_27DEF7648;
  if (!qword_27DEF7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7648);
  }

  return result;
}

unint64_t sub_23823CC04()
{
  result = qword_27DEF7650;
  if (!qword_27DEF7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7650);
  }

  return result;
}

unint64_t sub_23823CC5C()
{
  result = qword_27DEF7658;
  if (!qword_27DEF7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7658);
  }

  return result;
}

unint64_t sub_23823CCB4()
{
  result = qword_27DEF7660;
  if (!qword_27DEF7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7660);
  }

  return result;
}

unint64_t sub_23823CD0C()
{
  result = qword_27DEF7668;
  if (!qword_27DEF7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7668);
  }

  return result;
}

unint64_t sub_23823CD64()
{
  result = qword_27DEF7670;
  if (!qword_27DEF7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7670);
  }

  return result;
}

unint64_t sub_23823CDBC()
{
  result = qword_27DEF7678;
  if (!qword_27DEF7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7678);
  }

  return result;
}

unint64_t sub_23823CE14()
{
  result = qword_27DEF7680;
  if (!qword_27DEF7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7680);
  }

  return result;
}

unint64_t sub_23823CE6C()
{
  result = qword_27DEF7688;
  if (!qword_27DEF7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7688);
  }

  return result;
}

unint64_t sub_23823CEC4()
{
  result = qword_27DEF7690;
  if (!qword_27DEF7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7690);
  }

  return result;
}

unint64_t sub_23823CF1C()
{
  result = qword_27DEF7698;
  if (!qword_27DEF7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7698);
  }

  return result;
}

unint64_t sub_23823CF74()
{
  result = qword_27DEF76A0;
  if (!qword_27DEF76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76A0);
  }

  return result;
}

unint64_t sub_23823CFCC()
{
  result = qword_27DEF76A8;
  if (!qword_27DEF76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76A8);
  }

  return result;
}

unint64_t sub_23823D024()
{
  result = qword_27DEF76B0;
  if (!qword_27DEF76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76B0);
  }

  return result;
}

unint64_t sub_23823D07C()
{
  result = qword_27DEF76B8;
  if (!qword_27DEF76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76B8);
  }

  return result;
}

uint64_t sub_23823D0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C72756F68 && a2 == 0xE600000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696164 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C72616579 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23823D270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C756E617267 && a2 == 0xEB00000000797469 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726944776F6C66 && a2 == 0xED00006E6F697463 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ElectricityInsightRecord.range.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278AA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t (*ElectricityInsightRecord.totalEnergy.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ElectricityInsightRecord.totalRuntime.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t ElectricityInsightRecord.totalRuntime.setter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + *(a4 + 40);
  *v5 = result;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3 & 1;
  return result;
}

uint64_t (*ElectricityInsightRecord.totalRuntime.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t ElectricityInsightRecord.dataByGridCleanliness.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for ElectricityInsightRecord.GridCleanliness();
  v7 = sub_238279300();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t ElectricityInsightRecord.dataByGridCleanliness.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for ElectricityInsightRecord.GridCleanliness();
  v7 = sub_238279300();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*ElectricityInsightRecord.dataByGridCleanliness.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t ElectricityInsightRecord.dataByTariffPeak.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for ElectricityInsightRecord.TariffPeak();
  v7 = sub_238279300();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t ElectricityInsightRecord.dataByTariffPeak.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for ElectricityInsightRecord.TariffPeak();
  v7 = sub_238279300();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*ElectricityInsightRecord.dataByTariffPeak.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_23823D83C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23823D8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t (*ElectricityInsightRecord.lowTemperature.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*ElectricityInsightRecord.highTemperature.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t (*ElectricityInsightRecord.avgTemperature.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t (*ElectricityInsightRecord.GridCleanliness.lessClean.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*ElectricityInsightRecord.GridCleanliness.avoid.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*ElectricityInsightRecord.GridCleanliness.unknown.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t ElectricityInsightRecord.GridCleanliness.init(cleaner:lessClean:avoid:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(*(a5 - 8) + 56);
  v10(a6, 1, 1, a5);
  v11 = type metadata accessor for ElectricityInsightRecord.GridCleanliness();
  v12 = v11[9];
  v10(a6 + v12, 1, 1, a5);
  v13 = v11[10];
  v10(a6 + v13, 1, 1, a5);
  v14 = v11[11];
  v10(a6 + v14, 1, 1, a5);
  v15 = sub_238279300();
  v19 = *(*(v15 - 8) + 40);
  (v19)((v15 - 8), a6, a1, v15);
  v19(a6 + v12, a2, v15);
  v19(a6 + v13, a3, v15);

  return (v19)(a6 + v14, a4, v15);
}

uint64_t sub_23823DCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_23823DD24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t sub_23823DDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_23823DE30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ElectricityInsightRecord.TariffPeak.offPeak.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_23823DED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_23823DF4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ElectricityInsightRecord.TariffPeak.partialPeak.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_23823DFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_23823E068(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = *(a2 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ElectricityInsightRecord.TariffPeak.onPeak.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t ElectricityInsightRecord.TariffPeak.criticalPeak.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t ElectricityInsightRecord.TariffPeak.criticalPeak.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ElectricityInsightRecord.TariffPeak.criticalPeak.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t ElectricityInsightRecord.TariffPeak.unknown.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t ElectricityInsightRecord.TariffPeak.unknown.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(a2 + 16);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ElectricityInsightRecord.TariffPeak.unknown.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t ElectricityInsightRecord.TariffPeak.init(superOffPeak:offPeak:partialPeak:onPeak:criticalPeak:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(*(a7 - 8) + 56);
  v11(a8, 1, 1, a7);
  v12 = type metadata accessor for ElectricityInsightRecord.TariffPeak();
  v13 = v12[9];
  v11(a8 + v13, 1, 1, a7);
  v14 = v12[10];
  v11(a8 + v14, 1, 1, a7);
  v15 = v12[11];
  v11(a8 + v15, 1, 1, a7);
  v16 = v12[12];
  v11(a8 + v16, 1, 1, a7);
  v17 = v12[13];
  v11(a8 + v17, 1, 1, a7);
  v18 = sub_238279300();
  v25 = *(*(v18 - 8) + 40);
  (v25)((v18 - 8), a8, a1, v18);
  v25(a8 + v13, a2, v18);
  v25(a8 + v14, a3, v18);
  v25(a8 + v15, a4, v18);
  v25(a8 + v16, a5, v18);

  return (v25)(a8 + v17, a6, v18);
}

uint64_t ElectricityInsightRecord.init(range:totalEnergy:totalRuntime:byGridCleanliness:byTariffPeak:lowTemperature:highTemperature:avgTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = type metadata accessor for ElectricityInsightRecord();
  v13 = v12[9];
  v31 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  (*(*(v14 - 8) + 56))(a9 + v13, 1, 1, v14);
  v15 = v12[11];
  v30 = v15;
  v16 = a9 + v12[10];
  v17 = type metadata accessor for ElectricityInsightRecord.GridCleanliness();
  (*(*(v17 - 8) + 56))(a9 + v15, 1, 1, v17);
  v18 = v12[12];
  v29 = v18;
  v19 = type metadata accessor for ElectricityInsightRecord.TariffPeak();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = v12[13];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v22 = *(*(v21 - 8) + 56);
  v22(a9 + v20, 1, 1, v21);
  v23 = v12[14];
  v22(a9 + v23, 1, 1, v21);
  v24 = v12[15];
  v22(a9 + v24, 1, 1, v21);
  v25 = sub_238278AA0();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  sub_23823D8D4(a2, a9 + v31, &qword_27DEF76C0, &qword_23827EFA0);
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = a5 & 1;
  v26 = sub_238279300();
  (*(*(v26 - 8) + 40))(a9 + v30, a6, v26);
  v27 = sub_238279300();
  (*(*(v27 - 8) + 40))(a9 + v29, a7, v27);
  sub_23823D8D4(a8, a9 + v20, &qword_27DEF76C8, &unk_23827EFA8);
  sub_23823D8D4(a10, a9 + v23, &qword_27DEF76C8, &unk_23827EFA8);
  return sub_23823D8D4(a11, a9 + v24, &qword_27DEF76C8, &unk_23827EFA8);
}

void sub_23823E8D4(uint64_t a1)
{
  sub_238278AA0();
  if (v2 <= 0x3F)
  {
    sub_23823F50C(319, &qword_27DEF7758, &qword_27DEF68E8, &qword_23827A320);
    if (v3 <= 0x3F)
    {
      sub_23823F4BC();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
        type metadata accessor for ElectricityInsightRecord.GridCleanliness();
        sub_238279300();
        if (v7 <= 0x3F)
        {
          type metadata accessor for ElectricityInsightRecord.TariffPeak();
          sub_238279300();
          if (v8 <= 0x3F)
          {
            sub_23823F50C(319, qword_27DEF7768, qword_27DEF76D0, &qword_23827EFB8);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23823EA24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_238278AA0();
  v59 = *(v4 - 8);
  v55 = v4;
  v5 = *(v59 + 84);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v58 = *(v6 - 8);
  v7 = *(v58 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v56 = v5;
  v54 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v52 = *(a3 + 16);
  v53 = v6;
  v10 = *(v52 - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v13 - 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v16 = *(v10 + 64);
  if (!v12)
  {
    ++v16;
  }

  if (v12 >= 2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v10 + 80);
  v19 = v16 + v18;
  v20 = (v16 + v18 + ((v16 + v18 + ((v16 + v18) & ~v18)) & ~v18)) & ~v18;
  v21 = v20 + v16;
  if (v12 >= 2)
  {
    v22 = v20 + v16;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (v12 >= 2)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  v24 = *(v15 - 8);
  if (v17 <= v9)
  {
    v25 = v9;
  }

  else
  {
    v25 = v17;
  }

  v26 = *(v15 - 8);
  v27 = *(v24 + 84);
  v28 = v27 - 1;
  if (!v27)
  {
    v28 = 0;
  }

  if (v28 > v25)
  {
    v25 = v28;
  }

  if (v7)
  {
    v29 = *(v58 + 64);
  }

  else
  {
    v29 = *(v58 + 64) + 1;
  }

  v30 = *(v58 + 80);
  v31 = *(v24 + 80);
  v32 = *(v24 + 64);
  if (v27)
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v34 = *(v59 + 64) + v30;
  v35 = v29 + 7;
  v36 = v18 + 17;
  v37 = v23 + ((v19 + ((v21 + v18) & ~v18)) & ~v18);
  if (a2 <= v25)
  {
LABEL_56:
    if (v56 == v25)
    {
      v45 = *(v59 + 48);

      return v45(a1, v56, v55);
    }

    v47 = (a1 + v34) & ~v30;
    if (v54 == v25)
    {
      v48 = (*(v58 + 48))(v47, v7, v53);
      goto LABEL_67;
    }

    v49 = (v36 + ((v35 + v47) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
    if (v17 != v25)
    {
      v48 = (*(v26 + 48))((((v49 + v18 + v22) & ~v18) + v31 + v37) & ~v31);
LABEL_67:
      if (v48 >= 2)
      {
        return v48 - 1;
      }

      else
      {
        return 0;
      }
    }

    if (v12 >= 2)
    {
      v50 = (*(v11 + 48))(v49, v12, v52);
      v51 = v50 >= 2;
      result = v50 - 2;
      if (result != 0 && v51)
      {
        return result;
      }
    }

    return 0;
  }

  v38 = ((v33 + v31 + ((v33 + v31 + ((v37 + v31 + ((v22 + v18 + ((v36 + ((v35 + (v34 & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v18)) & ~v31)) & ~v31)) & ~v31) + v33;
  v39 = 8 * v38;
  if (v38 <= 3)
  {
    v41 = ((a2 - v25 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 > 0xFF)
    {
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 < 2)
    {
LABEL_55:
      if (!v25)
      {
        return 0;
      }

      goto LABEL_56;
    }
  }

  v40 = *(a1 + v38);
  if (!*(a1 + v38))
  {
    goto LABEL_55;
  }

LABEL_42:
  v42 = (v40 - 1) << v39;
  if (v38 > 3)
  {
    v42 = 0;
  }

  if (v38)
  {
    if (v38 <= 3)
    {
      v43 = v38;
    }

    else
    {
      v43 = 4;
    }

    if (v43 > 2)
    {
      if (v43 == 3)
      {
        v44 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v44 = *a1;
      }
    }

    else if (v43 == 1)
    {
      v44 = *a1;
    }

    else
    {
      v44 = *a1;
    }
  }

  else
  {
    v44 = 0;
  }

  return v25 + (v44 | v42) + 1;
}

void sub_23823EEAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = sub_238278AA0();
  v6 = *(v5 - 8);
  v65 = v6;
  v66 = v5;
  v7 = *(v6 + 84);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v8 = *(v63 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v67 = v7;
  v64 = v10;
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v61 = *(a4 + 16);
  v12 = *(v61 - 8);
  v71 = v12;
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v62 = v14;
  v15 = v14 - 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v17 = v12;
  v18 = 0;
  v19 = *(v17 + 64);
  if (!v13)
  {
    ++v19;
  }

  if (v13 >= 2)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v71 + 80);
  v22 = v19 + v21;
  v23 = (v19 + v21 + ((v19 + v21 + ((v19 + v21) & ~v21)) & ~v21)) & ~v21;
  v24 = v23 + v19;
  if (v13 >= 2)
  {
    v25 = v23 + v19;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (v13 >= 2)
  {
    v26 = v19;
  }

  else
  {
    v26 = v19 + 1;
  }

  v27 = *(v16 - 8);
  if (v20 <= v11)
  {
    v28 = v11;
  }

  else
  {
    v28 = v20;
  }

  v29 = *(v16 - 8);
  v30 = *(v27 + 84);
  v31 = *(v6 + 64);
  v32 = *(v8 + 80);
  v33 = *(v27 + 80);
  v34 = *(v27 + 64);
  v35 = v30 - 1;
  if (!v30)
  {
    v35 = 0;
  }

  if (v35 > v28)
  {
    v28 = v35;
  }

  if (v9)
  {
    v36 = *(v8 + 64);
  }

  else
  {
    v36 = *(v8 + 64) + 1;
  }

  v37 = v31 + v32;
  v38 = v36 + 7;
  v39 = (v38 + ((v31 + v32) & ~v32)) & 0xFFFFFFFFFFFFFFF8;
  v40 = v22 + ((v24 + v21) & ~v21);
  v41 = v21 + 17;
  v42 = (v25 + v21 + ((v21 + 17 + v39) & ~v21)) & ~v21;
  v43 = v26 + (v40 & ~v21);
  if (!v30)
  {
    ++v34;
  }

  v44 = ((v34 + v33 + ((v34 + v33 + ((v43 + v33 + v42) & ~v33)) & ~v33)) & ~v33) + v34;
  if (a3 > v28)
  {
    if (v44 <= 3)
    {
      v45 = ((a3 - v28 + ~(-1 << (8 * v44))) >> (8 * v44)) + 1;
      if (HIWORD(v45))
      {
        v18 = 4;
      }

      else
      {
        if (v45 < 0x100)
        {
          v46 = 1;
        }

        else
        {
          v46 = 2;
        }

        if (v45 >= 2)
        {
          v18 = v46;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  if (v28 < a2)
  {
    v47 = ~v28 + a2;
    if (v44 >= 4)
    {
      bzero(a1, v44);
      *a1 = v47;
      v48 = 1;
      if (v18 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_83;
    }

    v48 = (v47 >> (8 * v44)) + 1;
    if (v44)
    {
      v50 = v47 & ~(-1 << (8 * v44));
      bzero(a1, v44);
      if (v44 != 3)
      {
        if (v44 == 2)
        {
          *a1 = v50;
          if (v18 > 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *a1 = v47;
          if (v18 > 1)
          {
LABEL_45:
            if (v18 == 2)
            {
              *&a1[v44] = v48;
            }

            else
            {
              *&a1[v44] = v48;
            }

            return;
          }
        }

LABEL_83:
        if (v18)
        {
          a1[v44] = v48;
        }

        return;
      }

      *a1 = v50;
      a1[2] = BYTE2(v50);
    }

    if (v18 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_83;
  }

  v49 = a1;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v44] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_59;
    }

    *&a1[v44] = 0;
  }

  else if (v18)
  {
    a1[v44] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_59;
  }

  if (!a2)
  {
    return;
  }

LABEL_59:
  if (v67 == v28)
  {
    v51 = v66;
    v52 = *(v65 + 56);
    v53 = a2;
    v54 = v67;
LABEL_63:

    v52(v49, v53, v54, v51);
    return;
  }

  v49 = &a1[v37] & ~v32;
  if (v64 == v28)
  {
    v52 = *(v8 + 56);
    v53 = a2 + 1;
    v54 = v9;
    v51 = v63;
    goto LABEL_63;
  }

  v55 = ((v41 + ((v38 + v49) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
  if (v20 == v28)
  {
    if (a2 + 1 <= v62)
    {
      if (a2 == -1 || v13 < 2)
      {
        return;
      }

      v52 = *(v71 + 56);
      v53 = a2 + 2;
      v49 = (v41 + ((v38 + v49) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
      v54 = v13;
      v51 = v61;
      goto LABEL_63;
    }

    if (v24 <= 3)
    {
      v56 = ~(-1 << (8 * v24));
    }

    else
    {
      v56 = -1;
    }

    if (!v24)
    {
      return;
    }

    v57 = v56 & (a2 - v62);
    if (v24 <= 3)
    {
      v58 = v24;
    }

    else
    {
      v58 = 4;
    }

    bzero(v55, v24);
    if (v58 <= 2)
    {
      if (v58 == 1)
      {
LABEL_80:
        *v55 = v57;
        return;
      }

LABEL_98:
      *v55 = v57;
      return;
    }

    goto LABEL_105;
  }

  v55 = (((&v55[v21 + v25] & ~v21) + v33 + v43) & ~v33);
  if (v35 < a2)
  {
    if (v34 <= 3)
    {
      v59 = ~(-1 << (8 * v34));
    }

    else
    {
      v59 = -1;
    }

    if (!v34)
    {
      return;
    }

    v57 = v59 & (~v35 + a2);
    if (v34 <= 3)
    {
      v58 = v34;
    }

    else
    {
      v58 = 4;
    }

    bzero(v55, v34);
    if (v58 <= 2)
    {
      if (v58 == 1)
      {
        goto LABEL_80;
      }

      goto LABEL_98;
    }

LABEL_105:
    if (v58 == 3)
    {
      *v55 = v57;
      v55[2] = BYTE2(v57);
    }

    else
    {
      *v55 = v57;
    }

    return;
  }

  v60 = *(v29 + 56);

  v60(v55, a2 + 1);
}

void sub_23823F4BC()
{
  if (!qword_27DEF7760)
  {
    v0 = sub_238279300();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEF7760);
    }
  }
}

void sub_23823F50C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_238279300();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23823F568(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_238279300();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23823F5DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_23823F774(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_23823F9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_238279300();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23823FA44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_23823FBEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_23823FE98()
{
  type metadata accessor for ElectricityInsightService();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27DEF7870 = v0;
  return result;
}

uint64_t static ElectricityInsightService.shared.getter()
{
  if (qword_27DEF68B0 != -1)
  {
    swift_once();
  }
}

uint64_t ElectricityInsightService.energyInsights(forDeviceID:using:atVenue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = sub_238278AA0();
  v6[33] = v10;
  v11 = *(v10 - 8);
  v6[34] = v11;
  v12 = *(v11 + 64) + 15;
  v6[35] = swift_task_alloc();
  v13 = sub_238278BC0();
  v6[36] = v13;
  v14 = *(v13 - 8);
  v6[37] = v14;
  v15 = *(v14 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v16 = type metadata accessor for ElectricityInsightQuery();
  v6[40] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382400F8, v5, 0);
}

uint64_t sub_2382400F8()
{
  if (sub_238278D20())
  {
    goto LABEL_9;
  }

  v1 = sub_238278D00();
  *(v0 + 336) = v1;
  *(v0 + 40) = v1;
  v2 = sub_238246B9C(&qword_27DEF7880, MEMORY[0x277D073A0]);
  *(v0 + 344) = v2;
  *(v0 + 48) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 472) = *MEMORY[0x277D07378];
  v4 = *(v1 - 8);
  v5 = *(v4 + 104);
  *(v0 + 352) = v5;
  *(v0 + 360) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(boxed_opaque_existential_1);
  v6 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 476) = *MEMORY[0x277D07388];
  v5(v7);
  v8 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (v8)
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    sub_23823C2E0(*(v0 + 216), v10);
    *(v10 + *(v9 + 32)) = 0;
    if (qword_27DEF68B8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 312);
    v12 = qword_27DF03158;
    *(v0 + 368) = qword_27DF03158;
    sub_238278BB0();
    v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v14 = sub_238278FF0();
    v15 = [v13 initWithServiceName_];
    *(v0 + 376) = v15;

    v16 = [objc_opt_self() interfaceWithProtocol_];
    [v15 setRemoteObjectInterface_];

    [v15 resume];

    return MEMORY[0x2822009F8](sub_238240410, v12, 0);
  }

  else
  {
LABEL_9:
    sub_238241158();
    swift_allocError();
    *v17 = 6;
    swift_willThrow();
    v18 = *(v0 + 328);
    v20 = *(v0 + 304);
    v19 = *(v0 + 312);
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_238240410()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 472);
  v16 = *(v0 + 336);
  *(v0 + 120) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v2(boxed_opaque_existential_1, v3, v16);
  LOBYTE(v3) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 476);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v17 = *(v0 + 336);
  *(v0 + 160) = v17;
  v8 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v7(v8, v5, v17);
  LOBYTE(v5) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  if (v5)
  {
    v9 = swift_task_alloc();
    *(v0 + 384) = v9;
    *v9 = v0;
    v9[1] = sub_2382405C4;
    v10 = *(v0 + 368);

    return sub_2382592C4();
  }

  else
  {
LABEL_6:
    v12 = *(v0 + 376);
    sub_238241158();
    v13 = swift_allocError();
    *v14 = 6;
    swift_willThrow();

    *(v0 + 464) = v13;
    v15 = *(v0 + 232);
    (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

    return MEMORY[0x2822009F8](sub_23824104C, v15, 0);
  }
}

uint64_t sub_2382405C4()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  if (v0)
  {

    *(v2 + 464) = v0;
    v5 = *(v2 + 232);
    (*(*(v2 + 296) + 8))(*(v2 + 312), *(v2 + 288));
    v6 = sub_23824104C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 368);
    v6 = sub_238240714;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_238240714()
{
  receiver = v0[20].receiver;
  super_class = v0[20].super_class;
  v3 = v0[18].super_class;
  v4 = v0[19].receiver;
  v21 = v4;
  v5 = v0[17].super_class;
  v6 = v0[18].receiver;
  v7 = v0[16].super_class;
  v26 = v0[17].receiver;
  v27 = v0[23].receiver;
  v19 = v0[14].receiver;
  v24 = v0[12].super_class;
  v25 = v0[13].receiver;
  v8 = v26[2];
  v8(v5, super_class, v7);
  v20 = *(super_class + receiver[5]);
  v23 = *(super_class + receiver[6]);
  v22 = *(super_class + receiver[7]);
  v9 = *(v3 + 2);
  v9(v4, v19, v6);
  Request = type metadata accessor for InsightQueryRequest();
  v11 = objc_allocWithZone(Request);
  v8(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v5, v7);
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v20;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = 0;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v23;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v22;
  v9(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v21, v6);
  v12 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v12 = v24;
  v12[1] = v25;
  v13 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v13 = 0;
  v13[8] = 1;
  v0[11].receiver = v11;
  v0[11].super_class = Request;

  v0[24].super_class = objc_msgSendSuper2(v0 + 11, sel_init);
  v14 = *(v3 + 1);
  v0[25].receiver = v14;
  v0[25].super_class = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v14(v21, v6);
  (v26[1])(v5, v7);
  v15 = v27[14];
  v16 = swift_task_alloc();
  v0[26].receiver = v16;
  *v16 = v0;
  v16[1] = sub_23824099C;
  v17 = v0[19].super_class;

  return sub_238256AFC(v17);
}

uint64_t sub_23824099C()
{
  v2 = *(*v1 + 416);
  v3 = *v1;
  v3[53] = v0;

  if (v0)
  {
    v4 = v3[46];

    return MEMORY[0x2822009F8](sub_238240FB8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[54] = v5;
    *v5 = v3;
    v5[1] = sub_238240B0C;
    v6 = v3[46];
    v7 = v3[47];

    return sub_238258C58(v7);
  }
}

uint64_t sub_238240B0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = v1;

  v7 = v4[46];
  if (v1)
  {
    v8 = sub_238240E74;
  }

  else
  {
    v4[56] = a1;
    v8 = sub_238240C48;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238240C48()
{
  v1 = v0[56];
  v14 = v0[50];
  v15 = v0[51];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[39];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v12 = v0[36];
  v13 = v0[29];
  v11 = v0[24];
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = sub_2382599B4;
  v9[5] = 0;
  v9[6] = &unk_23827F100;
  v9[7] = 0;
  v9[8] = v3;
  v9[9] = v1;
  v9[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_238279210();

  swift_unknownObjectRelease();

  v14(v5, v12);

  return MEMORY[0x2822009F8](sub_238240DC8, v13, 0);
}

uint64_t sub_238240DC8()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[35];
  v4 = v0[32];
  sub_23823C344(v0[41]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_238240E74()
{
  v1 = *(*(v0 + 368) + 112);
  *(v0 + 456) = v1;
  return MEMORY[0x2822009F8](sub_238240E98, v1, 0);
}

uint64_t sub_238240E98()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 368);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_238240F04, v2, 0);
}

uint64_t sub_238240F04()
{
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[47];
  [v3 invalidate];
  swift_willThrow();

  v0[58] = v0[55];
  v4 = v0[29];
  (*(v0[37] + 8))(v0[39], v0[36]);

  return MEMORY[0x2822009F8](sub_23824104C, v4, 0);
}

uint64_t sub_238240FB8()
{
  v1 = *(v0 + 392);

  *(v0 + 464) = *(v0 + 424);
  v2 = *(v0 + 232);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

  return MEMORY[0x2822009F8](sub_23824104C, v2, 0);
}

uint64_t sub_23824104C()
{
  sub_23823C344(v0[41]);
  v1 = v0[58];
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[35];
  v6 = v0[32];

  v7 = v0[1];

  return v7();
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

unint64_t sub_238241158()
{
  result = qword_27DEF7888;
  if (!qword_27DEF7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7888);
  }

  return result;
}

uint64_t ElectricityInsightService.runtimeInsights(forDeviceID:using:atVenue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7898, &qword_23827F118);
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = sub_238278AA0();
  v6[33] = v10;
  v11 = *(v10 - 8);
  v6[34] = v11;
  v12 = *(v11 + 64) + 15;
  v6[35] = swift_task_alloc();
  v13 = sub_238278BC0();
  v6[36] = v13;
  v14 = *(v13 - 8);
  v6[37] = v14;
  v15 = *(v14 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v16 = type metadata accessor for ElectricityInsightQuery();
  v6[40] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238241374, v5, 0);
}

uint64_t sub_238241374()
{
  if (sub_238278D20())
  {
    goto LABEL_9;
  }

  v1 = sub_238278D00();
  *(v0 + 336) = v1;
  *(v0 + 40) = v1;
  v2 = sub_238246B9C(&qword_27DEF7880, MEMORY[0x277D073A0]);
  *(v0 + 344) = v2;
  *(v0 + 48) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 472) = *MEMORY[0x277D07378];
  v4 = *(v1 - 8);
  v5 = *(v4 + 104);
  *(v0 + 352) = v5;
  *(v0 + 360) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(boxed_opaque_existential_1);
  v6 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 476) = *MEMORY[0x277D07388];
  v5(v7);
  v8 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (v8)
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    sub_23823C2E0(*(v0 + 216), v10);
    *(v10 + *(v9 + 32)) = 1;
    if (qword_27DEF68B8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 312);
    v12 = qword_27DF03158;
    *(v0 + 368) = qword_27DF03158;
    sub_238278BB0();
    v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v14 = sub_238278FF0();
    v15 = [v13 initWithServiceName_];
    *(v0 + 376) = v15;

    v16 = [objc_opt_self() interfaceWithProtocol_];
    [v15 setRemoteObjectInterface_];

    [v15 resume];

    return MEMORY[0x2822009F8](sub_238241690, v12, 0);
  }

  else
  {
LABEL_9:
    sub_238241158();
    swift_allocError();
    *v17 = 6;
    swift_willThrow();
    v18 = *(v0 + 328);
    v20 = *(v0 + 304);
    v19 = *(v0 + 312);
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_238241690()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 472);
  v16 = *(v0 + 336);
  *(v0 + 120) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v2(boxed_opaque_existential_1, v3, v16);
  LOBYTE(v3) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 476);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v17 = *(v0 + 336);
  *(v0 + 160) = v17;
  v8 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  v7(v8, v5, v17);
  LOBYTE(v5) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  if (v5)
  {
    v9 = swift_task_alloc();
    *(v0 + 384) = v9;
    *v9 = v0;
    v9[1] = sub_238241844;
    v10 = *(v0 + 368);

    return sub_2382592C4();
  }

  else
  {
LABEL_6:
    v12 = *(v0 + 376);
    sub_238241158();
    v13 = swift_allocError();
    *v14 = 6;
    swift_willThrow();

    *(v0 + 464) = v13;
    v15 = *(v0 + 232);
    (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

    return MEMORY[0x2822009F8](sub_238247644, v15, 0);
  }
}

uint64_t sub_238241844()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  if (v0)
  {

    *(v2 + 464) = v0;
    v5 = *(v2 + 232);
    (*(*(v2 + 296) + 8))(*(v2 + 312), *(v2 + 288));
    v6 = sub_238247644;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 368);
    v6 = sub_238241994;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_238241994()
{
  receiver = v0[20].receiver;
  super_class = v0[20].super_class;
  v3 = v0[18].super_class;
  v4 = v0[19].receiver;
  v21 = v4;
  v5 = v0[17].super_class;
  v6 = v0[18].receiver;
  v7 = v0[16].super_class;
  v26 = v0[17].receiver;
  v27 = v0[23].receiver;
  v19 = v0[14].receiver;
  v25 = v0[13].receiver;
  v24 = v0[12].super_class;
  v8 = v26[2];
  v8(v5, super_class, v7);
  v20 = *(super_class + receiver[5]);
  v22 = *(super_class + receiver[6]);
  v23 = *(super_class + receiver[7]);
  v9 = *(v3 + 2);
  v9(v4, v19, v6);
  Request = type metadata accessor for InsightQueryRequest();
  v11 = objc_allocWithZone(Request);
  v8(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v5, v7);
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v20;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = 1;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v22;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v23;
  v9(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v21, v6);
  v12 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v12 = v24;
  v12[1] = v25;
  v13 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v13 = 0;
  v13[8] = 1;
  v0[11].receiver = v11;
  v0[11].super_class = Request;

  v0[24].super_class = objc_msgSendSuper2(v0 + 11, sel_init);
  v14 = *(v3 + 1);
  v0[25].receiver = v14;
  v0[25].super_class = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v14(v21, v6);
  (v26[1])(v5, v7);
  v15 = v27[14];
  v16 = swift_task_alloc();
  v0[26].receiver = v16;
  *v16 = v0;
  v16[1] = sub_238241C24;
  v17 = v0[19].super_class;

  return sub_238256AFC(v17);
}

uint64_t sub_238241C24()
{
  v2 = *(*v1 + 416);
  v3 = *v1;
  v3[53] = v0;

  if (v0)
  {
    v4 = v3[46];

    return MEMORY[0x2822009F8](sub_238242194, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[54] = v5;
    *v5 = v3;
    v5[1] = sub_238241D94;
    v6 = v3[46];
    v7 = v3[47];

    return sub_238258C58(v7);
  }
}

uint64_t sub_238241D94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = v1;

  v7 = v4[46];
  if (v1)
  {
    v8 = sub_238242050;
  }

  else
  {
    v4[56] = a1;
    v8 = sub_238241ED0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_238241ED0()
{
  v1 = v0[56];
  v14 = v0[50];
  v15 = v0[51];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[39];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v12 = v0[36];
  v13 = v0[29];
  v11 = v0[24];
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = sub_2382597F0;
  v9[5] = 0;
  v9[6] = &unk_23827F120;
  v9[7] = 0;
  v9[8] = v3;
  v9[9] = v1;
  v9[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_238279210();

  swift_unknownObjectRelease();

  v14(v5, v12);

  return MEMORY[0x2822009F8](sub_238247678, v13, 0);
}