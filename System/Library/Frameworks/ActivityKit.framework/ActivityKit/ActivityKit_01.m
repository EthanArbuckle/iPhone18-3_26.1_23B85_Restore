unint64_t sub_1A2C6A740()
{
  result = qword_1ED708D50;
  if (!qword_1ED708D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D50);
  }

  return result;
}

unint64_t sub_1A2C6A794()
{
  result = qword_1ED709128;
  if (!qword_1ED709128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18B0, &qword_1A2D14A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709128);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActivityRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1A2C6A958(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x5472657474616C70;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x656D656870457369;
      break;
    case 8:
      result = 0x6E756F626E557369;
      break;
    case 9:
      result = 0x746E656D6F4D7369;
      break;
    case 10:
      result = 0x74726F706D497369;
      break;
    case 11:
      result = 0x69746365746F7270;
      break;
    case 12:
      result = 0x7461447472617473;
      break;
    case 13:
      result = 0x726154656E656373;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1A2C6ABA0()
{
  result = qword_1ED709918;
  if (!qword_1ED709918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709918);
  }

  return result;
}

unint64_t sub_1A2C6AC28()
{
  result = qword_1ED708C80;
  if (!qword_1ED708C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C80);
  }

  return result;
}

unint64_t sub_1A2C6AC7C()
{
  result = qword_1ED708910;
  if (!qword_1ED708910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708910);
  }

  return result;
}

uint64_t sub_1A2C6ACD0()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746E6572727563;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityChange.Change.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ActivityChange.Change.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A2C6AE88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1A2C6AEA0(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18C8, &qword_1A2D14A20);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2C6AF80()
{
  result = qword_1ED709470;
  if (!qword_1ED709470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709470);
  }

  return result;
}

void sub_1A2C6AFD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x657263736B636F6CLL;
  v4 = 0x657263536C6C7566;
  v5 = 0xE700000000000000;
  v6 = 0x746E6569626D61;
  if (v2 != 4)
  {
    v6 = 0x79616C50726163;
    v5 = 0xE700000000000000;
  }

  if (v2 == 3)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6162;
  if (v2 != 1)
  {
    v8 = 0x70416D6574737973;
    v7 = 0xEE00657275747265;
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  if (*v1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_1A2C6B09C()
{
  result = qword_1ED7092E8;
  if (!qword_1ED7092E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7092E8);
  }

  return result;
}

uint64_t ActivityPresentationOptions.encode(to:)(void *a1)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0868, &qword_1A2D0C160);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v34 = *(v1 + 9);
  v35 = v10;
  v11 = *(v1 + 10);
  v12 = *(v1 + 11);
  v29 = *(v1 + 12);
  v30 = v12;
  v32 = *(v1 + 13);
  v33 = v11;
  v28 = *(v1 + 14);
  v31 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6B53C();

  v14 = v4;
  sub_1A2D08C74();
  v37[0] = v9;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0870, &qword_1A2D0C168);
  sub_1A2C6B590();
  sub_1A2D08AE4();
  if (!v2)
  {

    LOBYTE(v37[0]) = 1;
    sub_1A2D08AC4();
    LOBYTE(v37[0]) = 2;
    sub_1A2D08AC4();
    LOBYTE(v37[0]) = 3;
    sub_1A2D08AC4();
    LOBYTE(v37[0]) = 5;
    sub_1A2D08AC4();
    v17 = v31;
    if (v31)
    {
      v18 = objc_opt_self();
      v37[0] = 0;
      v19 = v17;
      v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v37];
      v21 = v37[0];
      if (!v20)
      {
        v26 = v21;
        sub_1A2D07ED4();

        swift_willThrow();
        goto LABEL_4;
      }

      v22 = sub_1A2D07F44();
      v23 = v8;
      v25 = v24;

      v37[0] = v22;
      v37[1] = v25;
      v36 = 4;
      sub_1A2C669D0();
      sub_1A2D08AE4();

      sub_1A2C55840(v22, v25);
      v8 = v23;
    }

    LOBYTE(v37[0]) = v28;
    v36 = 6;
    sub_1A2C6B754();
    sub_1A2D08AE4();
    LOBYTE(v37[0]) = 7;
    sub_1A2D08AC4();
    LOBYTE(v37[0]) = 8;
    sub_1A2D08AC4();
    goto LABEL_4;
  }

LABEL_4:
  result = (*(v5 + 8))(v8, v14);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A2C6B53C()
{
  result = qword_1ED7096F8[0];
  if (!qword_1ED7096F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7096F8);
  }

  return result;
}

unint64_t sub_1A2C6B590()
{
  result = qword_1ED709290;
  if (!qword_1ED709290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0870, &qword_1A2D0C168);
    sub_1A2CAA9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709290);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActivityPresentationOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPresentationOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1A2C6B754()
{
  result = qword_1ED709258;
  if (!qword_1ED709258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709258);
  }

  return result;
}

uint64_t ActivityAuthorizationOptionsType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EE0, &qword_1A2D17730);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EE8, &qword_1A2D17738);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EF0, &qword_1A2D17740);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EF8, &qword_1A2D17748);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F00, &qword_1A2D17750);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6BBF8();
  sub_1A2D08C74();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1A2D025B4();
      v24 = v33;
      sub_1A2D08A84();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1A2C6BC4C();
      v24 = v36;
      sub_1A2D08A84();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1A2D02608();
    v24 = v30;
    sub_1A2D08A84();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1A2D0265C();
  sub_1A2D08A84();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1A2C6BBF8()
{
  result = qword_1ED709620;
  if (!qword_1ED709620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709620);
  }

  return result;
}

unint64_t sub_1A2C6BC4C()
{
  result = qword_1ED709260;
  if (!qword_1ED709260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709260);
  }

  return result;
}

uint64_t sub_1A2C6BCA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18D0, &qword_1A2D14A28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C6BD18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A2C6BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A2D07EF4();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A2C6BE74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OpaqueActivityContent();
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
      v13 = sub_1A2D07F94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A2C6BF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A2D07E84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v12 = sub_1A2D07F44();
  v14 = v13;
  sub_1A2C69EDC(&qword_1EB09EFD8, type metadata accessor for ActivityRequest);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2C639DC(v8, a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
}

uint64_t ActivityRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v50 - v5;
  v6 = sub_1A2D07F94();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for OpaqueActivityContent();
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18C0, &qword_1A2D14A18);
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = type metadata accessor for ActivityRequest();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6A740();
  v21 = v62;
  sub_1A2D08C64();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v11;
  v62 = a1;
  v54 = v19;
  LOBYTE(v64) = 0;
  v24 = sub_1A2D089F4();
  v25 = v12;
  v26 = v54;
  *v54 = v24;
  v26[1] = v27;
  v53 = v27;
  LOBYTE(v63) = 1;
  sub_1A2C6CDD0();
  sub_1A2D08A54();
  v28 = *(&v64 + 1);
  v26[2] = v64;
  v26[3] = v28;
  LOBYTE(v63) = 2;
  sub_1A2C6CFD4();
  v52 = 0;
  sub_1A2D08A54();
  *(v26 + 2) = v64;
  LOBYTE(v64) = 3;
  sub_1A2C69EDC(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
  sub_1A2D08A54();
  sub_1A2C671E0(v23, v26 + v16[7], type metadata accessor for OpaqueActivityContent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18C8, &qword_1A2D14A20);
  LOBYTE(v63) = 13;
  sub_1A2C6AEA0(&qword_1EB09EB40, sub_1A2CAAA44, sub_1A2CEC510);
  sub_1A2D08A14();
  v29 = v64;
  v60 = v15;
  if (!v64)
  {
    LOBYTE(v63) = 4;
    sub_1A2CEC510();
    sub_1A2D08A54();
    v31 = *(&v64 + 1);
    v30 = v64;
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    v51 = v12;
    *(inited + 32) = 0;
    v33 = inited + 32;
    *(inited + 40) = v30;
    *(inited + 48) = v31;
    *(inited + 56) = v66;
    v29 = sub_1A2C66AAC(inited);
    swift_setDeallocating();
    v34 = v33;
    v25 = v51;
    sub_1A2C54E38(v34, &qword_1EB0A0E38, &qword_1A2D0EC28);
  }

  *(v54 + v16[8]) = v29;
  LOBYTE(v63) = 14;
  sub_1A2D08A14();
  v35 = v64;
  if (!v64)
  {
    v35 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
  }

  v36 = v54;
  *(v54 + v16[9]) = v35;
  v68 = 5;
  sub_1A2C70D80();
  sub_1A2D08A54();
  v37 = v36 + v16[10];
  *v37 = v64;
  *(v37 + 2) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18D0, &qword_1A2D14A28);
  v67 = 6;
  sub_1A2C6BCA0(&qword_1EB09EE98, sub_1A2CEC564);
  sub_1A2D08A54();
  *(v36 + v16[11]) = v63;
  LOBYTE(v63) = 7;
  *(v36 + v16[12]) = sub_1A2D08A34() & 1;
  LOBYTE(v63) = 8;
  v38 = v25;
  *(v54 + v16[13]) = sub_1A2D08A34() & 1;
  LOBYTE(v63) = 9;
  *(v54 + v16[14]) = sub_1A2D08A34() & 1;
  LOBYTE(v63) = 10;
  v39 = sub_1A2D08A04();
  if (v39 == 2)
  {
    *(v54 + v16[15]) = 0;
  }

  else
  {
    *(v54 + v16[15]) = v39 & 1;
  }

  v67 = 11;
  sub_1A2C6E118();
  sub_1A2D08A14();
  *(v54 + v16[16]) = v63;
  LOBYTE(v63) = 12;
  sub_1A2C69EDC(&qword_1ED7097D0, MEMORY[0x1E6969530]);
  sub_1A2D08A14();
  if ((*(v57 + 48))(v59, 1, v58) == 1)
  {
    sub_1A2C54E38(v59, &qword_1EB0A0E28, &unk_1A2D0EC10);
    v40 = v54 + v16[17];
    _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  }

  else
  {
    v41 = v58;
    v42 = *(v57 + 32);
    v43 = v55;
    v42(v55, v59, v58);
    v42(v54 + v16[17], v43, v41);
  }

  LOBYTE(v63) = 15;
  v44 = sub_1A2D089F4();
  v46 = v45;
  (*(v61 + 8))(v60, v38);
  v47 = v16[18];
  v48 = v54;
  v49 = (v54 + v47);
  *v49 = v44;
  v49[1] = v46;
  sub_1A2C69790(v48, v56, type metadata accessor for ActivityRequest);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return sub_1A2C6E1CC(v48, type metadata accessor for ActivityRequest);
}

unint64_t sub_1A2C6CDD0()
{
  result = qword_1ED709910;
  if (!qword_1ED709910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709910);
  }

  return result;
}

uint64_t ActivityAttributesType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CF0, &qword_1A2D0DFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6697C();
  sub_1A2D08C64();
  if (!v2)
  {
    v11 = sub_1A2D08A24();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2C6CFD4()
{
  result = qword_1ED7097D8;
  if (!qword_1ED7097D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097D8);
  }

  return result;
}

uint64_t OpaqueActivityContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1220, &qword_1A2D0FB00);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for OpaqueActivityContent();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = sub_1A2D07F94();
  v19 = *(*(v18 - 8) + 56);
  v33 = v16;
  v34 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6D3E8();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1A2C54E38(v33 + v34, &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v29 = a1;
    v21 = v7;
    v22 = v31;
    v35 = 0;
    sub_1A2C6CFD4();
    v23 = v32;
    sub_1A2D08A54();
    v24 = v33;
    *v33 = v36;
    LOBYTE(v36) = 1;
    sub_1A2C6D4B0(&qword_1ED7097D0, MEMORY[0x1E6969530]);
    sub_1A2D08A14();
    sub_1A2C6D68C(v21, v24 + v34);
    LOBYTE(v36) = 2;
    sub_1A2D08A44();
    v26 = v25;
    (*(v22 + 8))(v11, v23);
    *(v24 + *(v12 + 24)) = v26;
    sub_1A2C6D6FC(v24, v30);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_1A2C6FD00(v24);
  }
}

unint64_t sub_1A2C6D3E8()
{
  result = qword_1ED7090B0;
  if (!qword_1ED7090B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090B0);
  }

  return result;
}

uint64_t sub_1A2C6D43C()
{
  v1 = 0x746144656C617473;
  if (*v0 != 1)
  {
    v1 = 0x636E6176656C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746E65746E6F63;
  }
}

uint64_t sub_1A2C6D4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C6D4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C6D540(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A2C6D588()
{
  result = qword_1ED708CF8;
  if (!qword_1ED708CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CF8);
  }

  return result;
}

unint64_t sub_1A2C6D5DC()
{
  result = qword_1ED708918;
  if (!qword_1ED708918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708918);
  }

  return result;
}

unint64_t sub_1A2C6D630()
{
  result = qword_1ED708C68;
  if (!qword_1ED708C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C68);
  }

  return result;
}

uint64_t sub_1A2C6D68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C6D6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueActivityContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C6D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746567646977 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2C6D840@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A2C6D87C()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x746567646977;
  }
}

unint64_t sub_1A2C6D8A8()
{
  result = qword_1EB09EF50;
  if (!qword_1EB09EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF50);
  }

  return result;
}

uint64_t sub_1A2C6D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2C70B08(a1, a2);
  *a3 = result;
  return result;
}

void ActivityPresentationOptions.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0848, &unk_1A2D0C150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6B53C();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    LOBYTE(v43) = 0;
    sub_1A2C70DD4();
    LOBYTE(v11) = sub_1A2D08A54();
    v41 = v5;
    v42 = v9;
    v40 = v6;
    v38 = a2;
    v12 = 0;
    v13 = v45;
    v14 = *(v45 + 2);
    v15 = v45 + 40;
    v48 = MEMORY[0x1E69E7CC0];
    v16 = &unk_1F1579118;
    v39 = v45 + 40;
LABEL_4:
    v17 = &v15[16 * v12];
    while (1)
    {
      if (v14 == v12)
      {

        LOBYTE(v45) = 1;
        LODWORD(v39) = sub_1A2D08A34();
        LOBYTE(v45) = 2;
        v37 = sub_1A2D08A34();
        LOBYTE(v45) = 3;
        LODWORD(v12) = sub_1A2D08A34() & 1;
        LOBYTE(v45) = 5;
        v24 = sub_1A2D08A34() & 1;
        LOBYTE(v43) = 4;
        sub_1A2C6CFD4();
        sub_1A2D08A54();
        v25 = v45;
        v14 = v46;
        sub_1A2C569A0(0, &qword_1EB0A0858, 0x1E696ACD0);
        sub_1A2C569A0(0, &qword_1EB0A0860, 0x1E698E650);
        v16 = sub_1A2D086B4();
        sub_1A2C55840(v25, v14);
        v9 = v41;
        LOBYTE(v43) = 6;
        sub_1A2C6E060();
        sub_1A2D08A54();
        LOBYTE(v14) = v45;
        LOBYTE(v45) = 7;
        v13 = v42;
        v26 = sub_1A2D08A04();
        LODWORD(v41) = v24;
        v36 = v12;
        LOBYTE(v12) = v26;
        LOBYTE(v45) = 8;
        LOBYTE(v11) = sub_1A2D08A04();
        v17 = (v40 + 8);
        goto LABEL_15;
      }

      if (v12 >= *(v13 + 2))
      {
        break;
      }

      ++v12;
      v18 = v17 + 16;
      v19 = *(v17 - 1);
      v20 = *v17;

      v9 = sub_1A2D089C4();

      v17 = v18;
      if (v9 < 6)
      {
        LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
        if ((v11 & 1) == 0)
        {
          v11 = sub_1A2C6DF60(0, *(v48 + 2) + 1, 1, v48);
          v48 = v11;
        }

        v22 = *(v48 + 2);
        v21 = *(v48 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_1A2C6DF60((v21 > 1), v22 + 1, 1, v48);
          v48 = v11;
        }

        v23 = v48;
        *(v48 + 2) = v22 + 1;
        v23[v22 + 32] = v9;
        v15 = v39;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_15:
    v27 = v11;
    v28 = v39 & 1;
    LODWORD(v40) = v39 & 1;
    LODWORD(v39) = v37 & 1;
    v29 = v12 & 1;
    (*v17)(v13, v9);
    v30 = v27 & 1;
    LODWORD(v42) = v27 & 1;
    v31 = v48;
    *&v43 = v48;
    BYTE8(v43) = v28;
    v32 = v39;
    BYTE9(v43) = v39;
    v33 = v36;
    BYTE10(v43) = v36;
    BYTE11(v43) = v29;
    BYTE12(v43) = v30;
    v34 = v41;
    BYTE13(v43) = v41;
    BYTE14(v43) = v14;
    v44 = v16;
    v35 = v38;
    *(v38 + 16) = v16;
    *v35 = v43;
    sub_1A2C66F58(&v43, &v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = v31;
    LOBYTE(v46) = v40;
    BYTE1(v46) = v32;
    BYTE2(v46) = v33;
    BYTE3(v46) = v29;
    BYTE4(v46) = v42;
    BYTE5(v46) = v34;
    BYTE6(v46) = v14;
    v47 = v16;
    sub_1A2C69EAC(&v45);
  }
}

char *sub_1A2C6DF60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09C0, &qword_1A2D0D178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1A2C6E060()
{
  result = qword_1ED7095D8;
  if (!qword_1ED7095D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095D8);
  }

  return result;
}

uint64_t sub_1A2C6E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2C71508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2C6E0E4()
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

unint64_t sub_1A2C6E118()
{
  result = qword_1ED709640;
  if (!qword_1ED709640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709640);
  }

  return result;
}

uint64_t sub_1A2C6E16C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C6E1CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C6E22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C6E28C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivityRequest.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityRequest() + 68);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityRequest.contentSourceRequests.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRequest() + 44));
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A2C6E3F0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1A2C6E42C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t ActivityRequest.sceneTargets.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRequest() + 32));
}

uint64_t sub_1A2C6E4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A2C6E510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t SceneTarget.Request.description.getter(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return 0xD00000000000001FLL;
      }

      else
      {
        sub_1A2C66A98(a1, a2);
        return a1;
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    sub_1A2D08864();

    v6 = 0x80000001A2D1AD20;
    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = a2;
    }

    if (a2 == 1)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = v7;
    }

    if (a2 == 1)
    {
      v9 = 0x80000001A2D1AD00;
    }

    else
    {
      v9 = v6;
    }

    sub_1A2C66A98(a1, a2);
    MEMORY[0x1A58E4150](v8, v9);

    MEMORY[0x1A58E4150](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }
}

uint64_t ActivityRequest.attributesData.getter()
{
  v1 = *(v0 + 32);
  sub_1A2C5E63C(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1A2C6E6EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ActivityRequest.presentationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityRequest() + 40));
  v7 = *v3;
  v4 = *(v3 + 2);
  v8 = v4;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_1A2C66F58(&v7, v6);
}

uint64_t ActivityRequest.copy(withPresentationOptions:)@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v29 = *a1;
  v30 = *(a1 + 2);
  v25 = v2[3];
  v5 = v2[5];
  v26 = v2[4];
  v27 = v2[2];
  v6 = type metadata accessor for ActivityRequest();
  sub_1A2C69790(v2 + v6[7], &a2[v6[7]], type metadata accessor for OpaqueActivityContent);
  v7 = *(v2 + v6[8]);
  v8 = *(v2 + v6[9]);
  v22 = *(v2 + v6[11]);
  v23 = *(v2 + v6[14]);
  v24 = *(v2 + v6[12]);
  v9 = *(v2 + v6[15]);
  v10 = v2[1];
  v19 = *v2;
  v20 = *(v2 + v6[16]);
  v21 = *(v2 + v6[13]);
  v11 = v6[17];
  v12 = sub_1A2D07F94();
  (*(*(v12 - 8) + 16))(&a2[v11], v2 + v11, v12);
  v13 = (v2 + v6[18]);
  v14 = *v13;
  v15 = v13[1];
  *(a2 + 2) = v27;
  *(a2 + 3) = v25;
  *(a2 + 4) = v26;
  *(a2 + 5) = v5;
  *&a2[v6[8]] = v7;
  *&a2[v6[9]] = v8;
  v16 = &a2[v6[10]];
  *(v16 + 2) = *(a1 + 2);
  *v16 = *a1;
  *&a2[v6[11]] = v22;
  a2[v6[12]] = v24;
  a2[v6[13]] = v21;
  a2[v6[14]] = v23;
  a2[v6[15]] = v9;
  *a2 = v19;
  *(a2 + 1) = v10;
  a2[v6[16]] = v20;
  v17 = &a2[v6[18]];
  *v17 = v14;
  *(v17 + 1) = v15;

  sub_1A2C5E63C(v26, v5);

  sub_1A2C66F58(&v29, v28);
}

uint64_t sub_1A2C6E9DC(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2 || !__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v13)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v14 = objc_opt_self();
  v15 = [v14 bytes];
  sub_1A2C72100();
  sub_1A2D07D94();
  v16 = [v14 bytes];
  sub_1A2D07D94();
  sub_1A2C56A78(&qword_1ED7090C0, &qword_1EB0A1A40, &qword_1A2D15658);
  if (sub_1A2D08414())
  {
    type metadata accessor for ActivityPayloadError(0);
    sub_1A2C75024(&qword_1EB0A1A90, type metadata accessor for ActivityPayloadError);
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
    v20 = v5[2];
    v20(v18, v12, v4);
    v20(v18 + v19, v9, v4);
    swift_willThrow();
  }

  v21 = v5[1];
  v21(v9, v4);
  return (v21)(v12, v4);
}

uint64_t OpaqueActivityContent.staleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OpaqueActivityContent() + 20);

  return sub_1A2C7214C(v3, a1);
}

uint64_t OpaqueActivityPayload.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpaqueActivityPayload(0) + 20);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1A2C6EDCC()
{
  result = qword_1ED709168;
  if (!qword_1ED709168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709168);
  }

  return result;
}

uint64_t sub_1A2C6EE20()
{
  if (*v0)
  {
    result = 0x7365676E616863;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1A2C6EE60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0C98, &qword_1A2D0D4F8);
    sub_1A2C60E08(a2, type metadata accessor for ActivityChange.Change);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityChange.Change.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C50, &qword_1A2D0D4A8);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v37 - v4;
  v42 = type metadata accessor for OpaqueActivityPayload(0);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C58, &qword_1A2D0D4B0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v38 = type metadata accessor for ActivityDescriptor();
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C60, &qword_1A2D0D4B8);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = type metadata accessor for ActivityChange.Change(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C68, &qword_1A2D0D4C0);
  v48 = *(v21 - 8);
  v49 = v21;
  v22 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C72504();
  sub_1A2D08C74();
  sub_1A2C72558(v47, v20, type metadata accessor for ActivityChange.Change);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A2C72690(v20, v12, type metadata accessor for ActivityDescriptor);
      v52 = 1;
      sub_1A2C6F514();
      v27 = v39;
      v28 = v49;
      sub_1A2D08A84();
      sub_1A2C60E08(&qword_1ED708D60, type metadata accessor for ActivityDescriptor);
      v29 = v41;
      sub_1A2D08AE4();
      (*(v40 + 8))(v27, v29);
      v30 = type metadata accessor for ActivityDescriptor;
      v31 = v12;
    }

    else
    {
      v33 = v43;
      sub_1A2C72690(v20, v43, type metadata accessor for OpaqueActivityPayload);
      v53 = 2;
      sub_1A2C7495C();
      v34 = v44;
      v28 = v49;
      sub_1A2D08A84();
      sub_1A2C60E08(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload);
      v35 = v46;
      sub_1A2D08AE4();
      (*(v45 + 8))(v34, v35);
      v30 = type metadata accessor for OpaqueActivityPayload;
      v31 = v33;
    }

    sub_1A2C74070(v31, v30);
  }

  else
  {
    v32 = *v20;
    v51 = 0;
    sub_1A2C740D0();
    v28 = v49;
    sub_1A2D08A84();
    v50 = v32;
    sub_1A2C74124();
    sub_1A2D08AE4();
    (*(v37 + 8))(v16, v13);
  }

  return (*(v48 + 8))(v24, v28);
}

unint64_t sub_1A2C6F514()
{
  result = qword_1ED7091B8;
  if (!qword_1ED7091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091B8);
  }

  return result;
}

unint64_t ActivityDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F70, &unk_1A2D17D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6FCAC();
  sub_1A2D08C74();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v53) = 0;
  sub_1A2D08AB4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[3];
  v53 = v3[2];
  v54 = v13;
  LOBYTE(v50[0]) = 1;
  sub_1A2C6ABA0();

  sub_1A2D08AE4();

  v14 = v3[5];
  v53 = v3[4];
  v54 = v14;
  LOBYTE(v50[0]) = 2;
  sub_1A2C5E63C(v53, v14);
  sub_1A2C669D0();
  sub_1A2D08AE4();
  result = sub_1A2C55840(v53, v54);
  v16 = v3[11];
  if (*(v16 + 16))
  {
    v17 = v3[11];
    result = sub_1A2C66BC0(0);
    if (v18)
    {
      v19 = *(v16 + 56) + 48 * result;
      v20 = *(v19 + 8);
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *(v19 + 32);
      v24 = *(v19 + 40);
      v53 = *v19;
      v54 = v20;
      v55 = v21;
      v56 = v22;
      v57 = v23;
      v58 = v24;
      v52 = 3;
      sub_1A2C72A00();
      sub_1A2C72AB0();
      sub_1A2D08AE4();
      sub_1A2C732E4();
      v25 = *(v3 + 4);
      v50[0] = *(v3 + 3);
      v50[1] = v25;
      v51 = v3[10];
      v26 = *(v3 + 4);
      v47 = *(v3 + 3);
      v48 = v26;
      v49 = v3[10];
      v46 = 4;
      sub_1A2C73320(v50, v44);
      sub_1A2C72F38();
      sub_1A2D08AE4();
      v44[0] = v47;
      v44[1] = v48;
      v45 = v49;
      sub_1A2C7337C(v44);
      *&v40 = v16;
      LOBYTE(v38) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0738, &qword_1A2D0BB60);
      sub_1A2C733D0(&unk_1ED708B88, sub_1A2CAA9F0, sub_1A2C72AB0);
      sub_1A2D08AE4();
      *&v40 = v3[12];
      LOBYTE(v38) = 6;
      sub_1A2D08AE4();
      v43 = v3[13];
      v42 = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F78, &unk_1A2D17DA0);
      sub_1A2C73460(&qword_1ED708D78, sub_1A2D06B34);
      sub_1A2D08AE4();
      v40 = *(v3 + 7);
      v41 = v3[16];
      v38 = *(v3 + 7);
      v39 = v3[16];
      v37 = 8;
      sub_1A2C66F58(&v40, &v35);
      sub_1A2C6B09C();
      sub_1A2D08AE4();
      v35 = v38;
      v36 = v39;
      sub_1A2C69EAC(&v35);
      v27 = *(v3 + 136);
      LOBYTE(v34) = 9;
      sub_1A2D08AC4();
      v28 = *(v3 + 137);
      LOBYTE(v34) = 10;
      sub_1A2D08AC4();
      v29 = *(v3 + 138);
      LOBYTE(v34) = 11;
      sub_1A2D08AC4();
      v30 = type metadata accessor for ActivityDescriptor();
      v31 = v30[15];
      LOBYTE(v34) = 12;
      sub_1A2D07F94();
      sub_1A2C60E98(&qword_1ED7093B0, MEMORY[0x1E6969530]);
      sub_1A2D08AE4();
      v34 = *(v3 + v30[16]);
      v33 = 13;
      sub_1A2C73B10();
      sub_1A2D08AE4();
      v34 = *(v3 + v30[17]);
      v33 = 14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B0, &qword_1A2D14A10);
      sub_1A2C6A794();
      sub_1A2D08AE4();
      LOBYTE(v34) = *(v3 + v30[18]);
      v33 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
      sub_1A2CEC60C();
      sub_1A2D08AE4();
      return (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A2C6FCAC()
{
  result = qword_1ED7097C8;
  if (!qword_1ED7097C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097C8);
  }

  return result;
}

uint64_t sub_1A2C6FD00(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueActivityContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ActivityKit::ActivityPresentationOptions::ActivityPresentationDestination_optional __swiftcall ActivityPresentationOptions.ActivityPresentationDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A2D089C4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPresentationOptions.ActivityPresentationDestination(unsigned __int8 *a1, unsigned int a2)
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

void *sub_1A2C6FEA8(uint64_t *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1860, &qword_1A2D14780);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1868, &qword_1A2D14788);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1870, &unk_1A2D14790);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v41 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A2C6D588();
  v17 = v35;
  sub_1A2D08C64();
  if (v17)
  {
    goto LABEL_7;
  }

  v18 = v4;
  v35 = v10;
  v19 = v13;
  v20 = sub_1A2D08A64();
  v21 = (2 * *(v20 + 16)) | 1;
  v37 = v20;
  v38 = v20 + 32;
  v39 = 0;
  v40 = v21;
  v22 = sub_1A2C6D870();
  v23 = v9;
  if (v22 == 2 || v39 != v40 >> 1)
  {
    v26 = sub_1A2D088A4();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v28 = &type metadata for SceneTarget.Request;
    v16 = v19;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v35 + 8))(v19, v23);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v16;
  }

  v31[3] = v22;
  if (v22)
  {
    LOBYTE(v36) = 1;
    sub_1A2C6D5DC();
    sub_1A2D089D4();
    v24 = v35;
    sub_1A2C6D8A8();
    v25 = v32;
    sub_1A2D08A54();
    (*(v34 + 8))(v18, v25);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1A2CE9948();
    sub_1A2D089D4();
    v24 = v35;
    sub_1A2C6D8A8();
    sub_1A2D08A54();
    (*(v33 + 8))(v8, v5);
  }

  (*(v24 + 8))(v19, v23);
  swift_unknownObjectRelease();
  v16 = v36;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v16;
}

void *sub_1A2C703D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A2C6FEA8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A2C704A0()
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

uint64_t sub_1A2C704D4(uint64_t *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1840, &qword_1A2D14760);
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1848, &qword_1A2D14768);
  v37 = *(v35 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1850, &qword_1A2D14770);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1858, &qword_1A2D14778);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v42 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A2C6AC28();
  v19 = v41;
  sub_1A2D08C64();
  if (v19)
  {
    goto LABEL_11;
  }

  v34 = v7;
  v41 = 0;
  v21 = v39;
  v20 = v40;
  v22 = sub_1A2D08A64();
  v23 = (2 * *(v22 + 16)) | 1;
  v43 = v22;
  v44 = v22 + 32;
  v45 = 0;
  v46 = v23;
  v24 = sub_1A2C6D930();
  v18 = v15;
  if (v24 == 3 || v45 != v46 >> 1)
  {
    v26 = sub_1A2D088A4();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v28 = &type metadata for ProcessDescriptor.Request;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
LABEL_9:
    (*(v12 + 8))(v18, v11);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (!v24)
  {
    v47 = 0;
    sub_1A2CE9D78();
    v31 = v41;
    sub_1A2D089D4();
    if (!v31)
    {
      (*(v36 + 8))(v10, v34);
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v24 == 1)
  {
    v47 = 1;
    sub_1A2CE9D24();
    v25 = v41;
    sub_1A2D089D4();
    if (!v25)
    {
      (*(v37 + 8))(v6, v35);
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
      goto LABEL_11;
    }

    (*(v12 + 8))(v15, v11);
    goto LABEL_10;
  }

  v47 = 2;
  sub_1A2C6AC7C();
  v32 = v41;
  sub_1A2D089D4();
  if (!v32)
  {
    v18 = sub_1A2D08A24();
    (*(v38 + 8))(v21, v20);
  }

  (*(v12 + 8))(v15, v11);
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v18;
}

uint64_t sub_1A2C70ADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A2C704D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A2C70B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50746E6572727563 && a2 == 0xEE00737365636F72;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A2D1ADF0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1AE10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t sub_1A2C70C38()
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

uint64_t sub_1A2C70C74()
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

unint64_t sub_1A2C70D80()
{
  result = qword_1ED7096E0;
  if (!qword_1ED7096E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7096E0);
  }

  return result;
}

unint64_t sub_1A2C70DD4()
{
  result = qword_1ED709510;
  if (!qword_1ED709510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709510);
  }

  return result;
}

uint64_t sub_1A2C70E58(uint64_t a1)
{
  v2 = sub_1A2C6B53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t ActivityAuthorizationOptionsType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F18, &qword_1A2D17758);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F20, &qword_1A2D17760);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F28, &qword_1A2D17768);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F30, &qword_1A2D17770);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F38, &unk_1A2D17778);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1A2C6BBF8();
  v21 = v53;
  sub_1A2D08C64();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1A2D08A64();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1A2C6E0DC();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1A2D088A4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v34 = &type metadata for ActivityAuthorizationOptionsType;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1A2D02608();
        v39 = v42;
        sub_1A2D089D4();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1A2D0265C();
        v31 = v42;
        sub_1A2D089D4();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1A2D025B4();
      v38 = v42;
      sub_1A2D089D4();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1A2C6BC4C();
      v40 = v42;
      sub_1A2D089D4();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1A2C71508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265507473726966 && a2 == 0xEF6E6F697373696DLL;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D1B540 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1B560 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974704F6F6ELL && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

unint64_t sub_1A2C71688()
{
  v1 = 0x7265507473726966;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974704F6F6ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1A2C71734(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OpaqueActivityContent();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A2D07F94();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11ActivityKit0A13ContentSourceO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t ActivityRequest.alertSceneTargets.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRequest() + 36));
}

uint64_t ActivityRequest.isCustomSceneBacked.getter()
{
  result = type metadata accessor for ActivityRequest();
  v2 = 0;
  v3 = *(v0 + *(result + 32));
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(v3 + 56) + 24 * (v9 | (v8 << 6)) + 16))
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  v10 = 0;
  v11 = *(v0 + *(result + 36));
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v10;
LABEL_21:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    if (*(*(v11 + 56) + 24 * (v17 | (v16 << 6)) + 16) == 1)
    {
      return 1;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      return 0;
    }

    v14 = *(v11 + 64 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _s11ActivityKit0A6CenterC23liveActivitiesSupportedSbvgZ_0()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    v3 = 0x24Au >> deviceClassNumber;
    if (deviceClassNumber >= 0xA)
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    if (qword_1EB09F588 != -1)
    {
      swift_once();
    }

    v4 = sub_1A2D08094();
    __swift_project_value_buffer(v4, qword_1EB09F590);
    v5 = sub_1A2D08074();
    v6 = sub_1A2D08684();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A2C51000, v5, v6, "Unable to determine device class from MobileGestalt - defaulting to live activities not supported", v7, 2u);
      MEMORY[0x1A58E5180](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t ProcessDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1A2C71BD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E65;
  v3 = 0x657263736B636F6CLL;
  v4 = a1;
  v5 = 0x657263536C6C7566;
  v6 = 0xE700000000000000;
  v7 = 0x746E6569626D61;
  if (a1 != 4)
  {
    v7 = 0x79616C50726163;
    v6 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x72656E6E6162;
  if (a1 != 1)
  {
    v9 = 0x70416D6574737973;
    v8 = 0xEE00657275747265;
  }

  if (!a1)
  {
    v9 = 0x657263736B636F6CLL;
    v8 = 0xEA00000000006E65;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if (v10 != 0x657263536C6C7566)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x746E6569626D61)
        {
          goto LABEL_32;
        }
      }

      else if (v10 != 0x79616C50726163)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x72656E6E6162)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x70416D6574737973;
      v2 = 0xEE00657275747265;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1A2D08B34();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t OpaqueActivityPayload.init(timestamp:content:alertConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for OpaqueActivityPayload(0);
  v8 = v7[8];
  v9 = type metadata accessor for AlertConfiguration();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = v7[9];
  v11 = sub_1A2D07F94();
  v12 = *(v11 - 8);
  (*(v12 + 56))(a4 + v10, 1, 1, v11);
  *(a4 + v7[10]) = 0;
  sub_1A2D07FB4();
  v21 = a1;
  (*(v12 + 16))(a4 + v7[5], a1, v11);
  v13 = *a2;
  v14 = a2[1];
  v15 = (a4 + v7[6]);
  *v15 = *a2;
  v15[1] = v14;
  v16 = a4 + v7[7];
  sub_1A2C72030(a2, v16, type metadata accessor for OpaqueActivityContent);
  sub_1A2C5E63C(v13, v14);
  sub_1A2C72098(a3, a4 + v8, &qword_1EB0A04D0, &unk_1A2D15640);
  v17 = type metadata accessor for OpaqueActivityContent();
  sub_1A2C72098(a2 + *(v17 + 20), a4 + v10, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C6E9DC(*v16, *(v16 + 8));
  sub_1A2C54E38(a3, &qword_1EB0A04D0, &unk_1A2D15640);
  sub_1A2C6E28C(a2, type metadata accessor for OpaqueActivityContent);
  if (!v20)
  {
    return (*(v12 + 8))(v21, v11);
  }

  (*(v12 + 8))(v21, v11);
  return sub_1A2C6E28C(a4, type metadata accessor for OpaqueActivityPayload);
}

uint64_t sub_1A2C72030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A2C72100()
{
  result = qword_1ED708EE0;
  if (!qword_1ED708EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED708EE0);
  }

  return result;
}

uint64_t sub_1A2C7214C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ActivityDescriptor.init(id:attributesType:attributesData:sceneTargets:alertSceneTargets:requester:presentationOptions:contentSources:isEphemeral:isMomentary:isImportant:createdDate:deviceIdentifier:protectionClass:localizedAppName:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20)
{
  v22 = *a3;
  v23 = a3[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v22;
  *(a9 + 24) = v23;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 112) = *a10;
  *(a9 + 128) = *(a10 + 16);
  *(a9 + 104) = a11;
  *(a9 + 136) = a12;
  *(a9 + 137) = a13;
  *(a9 + 138) = a14;
  v24 = type metadata accessor for ActivityDescriptor();
  v25 = v24[15];
  v26 = sub_1A2D07F94();
  (*(*(v26 - 8) + 32))(a9 + v25, a15, v26);
  v27 = (a9 + v24[16]);
  *v27 = a16;
  v27[1] = a17;
  v28 = (a9 + v24[17]);
  *v28 = a19;
  v28[1] = a20;
  *(a9 + v24[18]) = a18;
  *(a9 + 80) = *(a8 + 32);
  result = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = result;
  return result;
}

uint64_t ActivityChange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C90, &qword_1A2D0D4F0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6EDCC();
  sub_1A2D08C74();
  v17 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C98, &qword_1A2D0D4F8);
    sub_1A2C6EE60(&qword_1EB09EE88, &qword_1EB09EFE8);
    sub_1A2D08AE4();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1A2C72504()
{
  result = qword_1ED7091F8;
  if (!qword_1ED7091F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091F8);
  }

  return result;
}

uint64_t sub_1A2C72558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C725C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C726F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C72760()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C796170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574617473;
  }
}

unint64_t sub_1A2C727C4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0x5472657474616C70;
      break;
    case 4:
      result = 0x6574736575716572;
      break;
    case 5:
      result = 0x726154656E656373;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x53746E65746E6F63;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x656D656870457369;
      break;
    case 10:
      result = 0x746E656D6F4D7369;
      break;
    case 11:
      result = 0x74726F706D497369;
      break;
    case 12:
      result = 0x4464657461657263;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x69746365746F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A2C72A00()
{
}

uint64_t sub_1A2C72A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A2C72A88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t sub_1A2C72AB0()
{
  result = qword_1ED708D88;
  if (!qword_1ED708D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D88);
  }

  return result;
}

uint64_t SceneTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1778, &qword_1A2D135E8);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1780, &qword_1A2D135F0);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1788, &qword_1A2D135F8);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = v1[1];
  v33 = *v1;
  v34 = v14;
  v15 = *(v1 + 4);
  v16 = v1[4];
  v35 = v1[3];
  v36 = v16;
  v17 = *(v1 + 40);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C72E90();
  sub_1A2D08C74();
  v19 = (v15 >> 8) & 1;
  v20 = v15 & 1;
  v21 = HIWORD(v15) & 1;
  v22 = HIBYTE(v15) & 1;
  if (v17)
  {
    LOBYTE(v39) = 1;
    sub_1A2C72EE4();
    v23 = v30;
    v24 = v38;
    sub_1A2D08A84();
    v39 = v33;
    v40 = v34;
    LOBYTE(v41) = v20;
    HIBYTE(v41) = v19;
    v42 = v21;
    v43 = v22;
    v44 = v35;
    v45 = v36;
    sub_1A2C72F38();
    v25 = v32;
    sub_1A2D08AE4();
    (*(v31 + 8))(v23, v25);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1A2CE9CD0();
    v24 = v38;
    sub_1A2D08A84();
    v39 = v33;
    v40 = v34;
    v41 = v15 & 0x101;
    v42 = BYTE2(v15) & 1;
    v43 = HIBYTE(v15) & 1;
    v44 = v35;
    v45 = v36;
    sub_1A2C72F38();
    v26 = v29;
    sub_1A2D08AE4();
    (*(v28 + 8))(v9, v26);
  }

  return (*(v37 + 8))(v13, v24);
}

unint64_t sub_1A2C72E90()
{
  result = qword_1ED709698;
  if (!qword_1ED709698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709698);
  }

  return result;
}

unint64_t sub_1A2C72EE4()
{
  result = qword_1ED708F60[0];
  if (!qword_1ED708F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED708F60);
  }

  return result;
}

unint64_t sub_1A2C72F38()
{
  result = qword_1ED708D80;
  if (!qword_1ED708D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D80);
  }

  return result;
}

uint64_t ProcessDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17C8, &qword_1A2D13640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v10;
  v11 = *(v1 + 18);
  v21 = *(v1 + 19);
  v22 = v11;
  v12 = v1[4];
  v20 = v1[3];
  v14 = a1[3];
  v13 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1A2C731E8();
  sub_1A2D08C74();
  v31 = 0;
  v18 = v25;
  sub_1A2D08AB4();
  if (v18)
  {
    return (*(v4 + 8))(v7, v17);
  }

  v30 = 1;
  sub_1A2D08AC4();
  v29 = 2;
  sub_1A2D08AC4();
  v28 = 3;
  sub_1A2D08AC4();
  v27 = 4;
  sub_1A2D08AC4();
  v26 = 5;
  sub_1A2D08A94();
  return (*(v4 + 8))(v7, v17);
}

unint64_t sub_1A2C731E8()
{
  result = qword_1ED709660;
  if (!qword_1ED709660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709660);
  }

  return result;
}

unint64_t sub_1A2C7323C()
{
  v1 = 0xD00000000000001CLL;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 4)
  {
    v3 = 0xD000000000000022;
  }

  if (v2 == 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1A2C732E4()
{
}

uint64_t sub_1A2C733D0(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0738, &qword_1A2D0BB60);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C73460(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1F78, &unk_1A2D17DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityContentSource.encode(to:)(void *a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1550, &qword_1A2D11870);
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v28 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1558, &qword_1A2D11878);
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1560, &qword_1A2D11880);
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1568, &qword_1A2D11888);
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = v2[1];
  v37 = *v2;
  v38 = v17;
  v18 = v2[3];
  v39 = v2[2];
  v40 = v18;
  v41 = *(v2 + 32);
  v19 = v2[6];
  v30 = v2[5];
  v29 = v19;
  v20 = *(v2 + 56);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C739AC();
  sub_1A2D08C74();
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v44) = 1;
      sub_1A2C73A00();
      v22 = v43;
      sub_1A2D08A84();
      v44 = v37;
      v45 = v38;
      v46 = v39;
      v47 = v40;
      v48 = v41;
      *v49 = *(v2 + 33);
      *&v49[3] = *(v2 + 9);
      sub_1A2C72F38();
      v23 = v36;
      sub_1A2D08AE4();
      (*(v34 + 8))(v8, v23);
      return (*(v42 + 8))(v16, v22);
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_1A2C73ABC();
      v26 = v32;
      v27 = v43;
      sub_1A2D08A84();
      (*(v33 + 8))(v26, v35);
      return (*(v42 + 8))(v16, v27);
    }
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_1A2CE4A2C();
    v25 = v43;
    sub_1A2D08A84();
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    v50 = v30;
    v51 = v29;
    sub_1A2CE4A80();
    sub_1A2D08AE4();
    (*(v31 + 8))(v12, v9);
    return (*(v42 + 8))(v16, v25);
  }
}

unint64_t sub_1A2C739AC()
{
  result = qword_1ED7097A8;
  if (!qword_1ED7097A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097A8);
  }

  return result;
}

unint64_t sub_1A2C73A00()
{
  result = qword_1ED709768;
  if (!qword_1ED709768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709768);
  }

  return result;
}

uint64_t sub_1A2C73A54()
{
  v1 = 0x737365636F7270;
  if (*v0 != 1)
  {
    v1 = 1668184435;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752397168;
  }
}

unint64_t sub_1A2C73ABC()
{
  result = qword_1ED709780;
  if (!qword_1ED709780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709780);
  }

  return result;
}

unint64_t sub_1A2C73B10()
{
  result = qword_1ED708CB8;
  if (!qword_1ED708CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CB8);
  }

  return result;
}

uint64_t DeviceIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F50, &qword_1A2D17D68);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F58, &qword_1A2D17D70);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F60, &qword_1A2D17D78);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C73E74();
  v18 = v24;
  sub_1A2D08C74();
  if (v18)
  {
    v26 = 1;
    sub_1A2D06AE0();
    sub_1A2D08A84();
    sub_1A2D08AB4();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_1A2C73EC8();
    sub_1A2D08A84();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1A2C73E74()
{
  result = qword_1ED709568;
  if (!qword_1ED709568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709568);
  }

  return result;
}

unint64_t sub_1A2C73EC8()
{
  result = qword_1ED709550;
  if (!qword_1ED709550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709550);
  }

  return result;
}

uint64_t sub_1A2C73F1C()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A2C73F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C73FB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C74010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C74070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A2C740D0()
{
  result = qword_1ED7091E0;
  if (!qword_1ED7091E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091E0);
  }

  return result;
}

unint64_t sub_1A2C74124()
{
  result = qword_1EB09EFF0;
  if (!qword_1EB09EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFF0);
  }

  return result;
}

uint64_t ActivityState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1180, &qword_1A2D0F3B0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1188, &qword_1A2D0F3B8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1190, &qword_1A2D0F3C0);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1198, &qword_1A2D0F3C8);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11A0, &qword_1A2D0F3D0);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11A8, &qword_1A2D0F3D8);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1A2C746D0();
  sub_1A2D08C74();
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
      sub_1A2C74724();
      v38 = v52;
      sub_1A2D08A84();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1A2CD18DC();
      v38 = v52;
      sub_1A2D08A84();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1A2CD1888();
      v29 = v40;
      v30 = v52;
      sub_1A2D08A84();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1A2C957C4();
      v29 = v43;
      v30 = v52;
      sub_1A2D08A84();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1A2CD1834();
      v29 = v46;
      v30 = v52;
      sub_1A2D08A84();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_1A2C746D0()
{
  result = qword_1ED709250;
  if (!qword_1ED709250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709250);
  }

  return result;
}

unint64_t sub_1A2C74724()
{
  result = qword_1ED709228;
  if (!qword_1ED709228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709228);
  }

  return result;
}

uint64_t sub_1A2C74778()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6465646E65;
  v4 = 0x657373696D736964;
  if (v1 != 3)
  {
    v4 = 0x656C617473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657669746361;
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

uint64_t storeEnumTagSinglePayload for MockPushError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MockPushError(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1A2C7495C()
{
  result = qword_1ED7090D0;
  if (!qword_1ED7090D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090D0);
  }

  return result;
}

uint64_t OpaqueActivityPayload.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = v38 - v6;
  v7 = type metadata accessor for AlertConfiguration();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A80, &qword_1A2D15688);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v38 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C74FD0();
  sub_1A2D08C74();
  LOBYTE(v43) = 4;
  sub_1A2D07FC4();
  sub_1A2C75024(&qword_1EB09F670, MEMORY[0x1E69695A8]);
  v17 = v2;
  v18 = v42;
  sub_1A2D08AE4();
  if (v18)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v42 = v7;
  v39 = v10;
  v19 = type metadata accessor for OpaqueActivityPayload(0);
  v20 = v19[5];
  LOBYTE(v43) = 0;
  sub_1A2D07F94();
  sub_1A2C75024(&qword_1ED7093B0, MEMORY[0x1E6969530]);
  v21 = v15;
  sub_1A2D08AE4();
  v22 = (v2 + v19[6]);
  v23 = v22[1];
  v43 = *v22;
  v44 = v23;
  v45 = 1;
  sub_1A2C5E63C(v43, v23);
  v24 = sub_1A2C669D0();
  sub_1A2D08AE4();
  v38[0] = v24;
  sub_1A2C55840(v43, v44);
  v38[1] = v19[7];
  LOBYTE(v43) = 2;
  type metadata accessor for OpaqueActivityContent();
  sub_1A2C75024(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent);
  sub_1A2D08AE4();
  v25 = v19[9];
  LOBYTE(v43) = 5;
  sub_1A2D08AA4();
  v26 = *(v2 + v19[10]);
  LOBYTE(v43) = 6;
  sub_1A2D08AC4();
  v28 = v21;
  v29 = v11;
  v30 = v41;
  sub_1A2C6BD18(v17 + v19[8], v41, &qword_1EB0A04D0, &unk_1A2D15640);
  if ((*(v40 + 48))(v30, 1, v42) == 1)
  {
    (*(v12 + 8))(v28, v11);
    return sub_1A2C54E38(v30, &qword_1EB0A04D0, &unk_1A2D15640);
  }

  else
  {
    v31 = v39;
    sub_1A2C67248(v30, v39, type metadata accessor for AlertConfiguration);
    v32 = sub_1A2D07D84();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_1A2D07D74();
    sub_1A2C75024(&qword_1EB09F308, type metadata accessor for AlertConfiguration);
    v43 = sub_1A2D07D64();
    v44 = v35;
    v45 = 3;
    v36 = v43;
    v37 = v35;
    sub_1A2D08AE4();

    sub_1A2C6E28C(v31, type metadata accessor for AlertConfiguration);
    (*(v12 + 8))(v28, v29);
    return sub_1A2C55840(v36, v37);
  }
}

unint64_t sub_1A2C74FD0()
{
  result = qword_1ED709088;
  if (!qword_1ED709088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709088);
  }

  return result;
}

uint64_t sub_1A2C75024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t storeEnumTagSinglePayload for AlertPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A2C751AC()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x746144656C617473;
  if (v1 != 5)
  {
    v3 = 0x7974746168437369;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 25705;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x53746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x746E65746E6F63;
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

uint64_t OpaqueActivityContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1218, &qword_1A2D0FAF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6D3E8();
  sub_1A2D08C74();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16[15] = 0;
  sub_1A2C5E63C(v17, v11);
  sub_1A2C669D0();
  sub_1A2D08AE4();
  sub_1A2C55840(v17, v18);
  if (!v2)
  {
    v12 = type metadata accessor for OpaqueActivityContent();
    v13 = *(v12 + 20);
    LOBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
    sub_1A2C7548C();
    sub_1A2D08AE4();
    v14 = *(v3 + *(v12 + 24));
    LOBYTE(v17) = 2;
    sub_1A2D08AD4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A2C7548C()
{
  result = qword_1ED708B48;
  if (!qword_1ED708B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
    sub_1A2C6D4B0(&qword_1ED7093B0, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B48);
  }

  return result;
}

uint64_t sub_1A2C75678()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C756B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2C62624();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10)
    {
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t ActivityChange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CA0, qword_1A2D0D500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6EDCC();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1A2D08A24();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C98, &qword_1A2D0D4F8);
  v18 = 1;
  sub_1A2C6EE60(&unk_1ED708EE8, &qword_1ED708FE8);
  sub_1A2D08A54();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActivityChange.Change.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C70, &qword_1A2D0D4C8);
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v58 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C78, &qword_1A2D0D4D0);
  v66 = *(v64 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v71 = &v58 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C80, &qword_1A2D0D4D8);
  v63 = *(v69 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v58 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C88, &unk_1A2D0D4E0);
  v74 = *(v70 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v58 - v10;
  v12 = type metadata accessor for ActivityChange.Change(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1A2C72504();
  v27 = v75;
  sub_1A2D08C64();
  if (!v27)
  {
    v58 = v22;
    v59 = v19;
    v28 = v68;
    v29 = v69;
    v60 = v16;
    v61 = v24;
    v30 = v71;
    v31 = v72;
    v62 = 0;
    v75 = v12;
    v32 = v73;
    v33 = v70;
    v34 = sub_1A2D08A64();
    v35 = (2 * *(v34 + 16)) | 1;
    v77 = v34;
    v78 = v34 + 32;
    v79 = 0;
    v80 = v35;
    v36 = sub_1A2C6D930();
    v37 = v33;
    if (v36 == 3 || v79 != v80 >> 1)
    {
      v44 = sub_1A2D088A4();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v46 = v75;
      v39 = v37;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
    }

    else
    {
      if (!v36)
      {
        v81 = 0;
        sub_1A2C740D0();
        v49 = v62;
        sub_1A2D089D4();
        if (!v49)
        {
          sub_1A2C78A64();
          sub_1A2D08A54();
          (*(v63 + 8))(v28, v29);
          (*(v74 + 8))(v11, v33);
          swift_unknownObjectRelease();
          v55 = v58;
          *v58 = v81;
          swift_storeEnumTagMultiPayload();
          v56 = v61;
          sub_1A2C72690(v55, v61, type metadata accessor for ActivityChange.Change);
          v41 = v32;
LABEL_18:
          sub_1A2C72690(v56, v41, type metadata accessor for ActivityChange.Change);
          return __swift_destroy_boxed_opaque_existential_1(v76);
        }

        (*(v74 + 8))(v11, v33);
        goto LABEL_10;
      }

      if (v36 == 1)
      {
        v81 = 1;
        sub_1A2C6F514();
        v38 = v30;
        v39 = v37;
        v40 = v62;
        sub_1A2D089D4();
        if (!v40)
        {
          v41 = v32;
          type metadata accessor for ActivityDescriptor();
          sub_1A2C60E08(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
          v42 = v59;
          v43 = v64;
          sub_1A2D08A54();
          (*(v66 + 8))(v38, v43);
          (*(v74 + 8))(v11, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v42;
LABEL_17:
          v56 = v61;
          sub_1A2C72690(v57, v61, type metadata accessor for ActivityChange.Change);
          goto LABEL_18;
        }
      }

      else
      {
        v81 = 2;
        sub_1A2C7495C();
        v50 = v31;
        v39 = v33;
        v51 = v62;
        sub_1A2D089D4();
        if (!v51)
        {
          v41 = v32;
          type metadata accessor for OpaqueActivityPayload(0);
          sub_1A2C60E08(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload);
          v52 = v60;
          v53 = v65;
          sub_1A2D08A54();
          v54 = v74;
          (*(v67 + 8))(v50, v53);
          (*(v54 + 8))(v11, v39);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v52;
          goto LABEL_17;
        }
      }
    }

    (*(v74 + 8))(v11, v39);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1A2C762C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2C762F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2C762F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t ActivityDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = sub_1A2D07F94();
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F80, &qword_1A2D17DB8);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ActivityDescriptor();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6FCAC();
  v15 = v59;
  sub_1A2D08C64();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v5;
  v16 = v48;
  v44 = v10;
  v59 = v13;
  LOBYTE(v55) = 0;
  v17 = sub_1A2D08A24();
  v19 = v59;
  *v59 = v17;
  *(v19 + 1) = v20;
  v42 = v20;
  LOBYTE(v52) = 1;
  sub_1A2C6CDD0();
  sub_1A2D08A54();
  v21 = v9;
  v22 = *(&v55 + 1);
  *(v19 + 2) = v55;
  *(v19 + 3) = v22;
  LOBYTE(v52) = 2;
  sub_1A2C6CFD4();
  sub_1A2D08A54();
  v41 = a1;
  *(v19 + 2) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0738, &qword_1A2D0BB60);
  LOBYTE(v52) = 5;
  v23 = sub_1A2C733D0(&unk_1ED709440, sub_1A2CAAA44, sub_1A2CAAA98);
  sub_1A2D08A14();
  v38 = v23;
  v39 = v21;
  v40 = v6;
  v24 = v55;
  if (!v55)
  {
    LOBYTE(v52) = 3;
    sub_1A2CAAA98();
    sub_1A2D08A54();
    v26 = v57;
    v27 = v58;
    v37 = v55;
    v36 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v29 = inited + 32;
    *(inited + 56) = v36;
    *(inited + 40) = v37;
    *(inited + 72) = v26;
    *(inited + 80) = v27;
    v24 = sub_1A2CAA8B0(inited);
    swift_setDeallocating();
    sub_1A2C54E38(v29, &qword_1EB0A0728, &qword_1A2D0BB50);
    v19 = v59;
  }

  *(v19 + 11) = v24;
  LOBYTE(v52) = 6;
  sub_1A2D08A14();
  v25 = v55;
  if (!v55)
  {
    v25 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  }

  *(v19 + 12) = v25;
  v54 = 4;
  sub_1A2C7774C();
  sub_1A2D08A54();
  v30 = v56;
  *(v19 + 3) = v55;
  *(v19 + 4) = v30;
  *(v19 + 10) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F78, &unk_1A2D17DA0);
  LOBYTE(v50) = 7;
  sub_1A2C73460(&qword_1ED709438, sub_1A2D06B88);
  sub_1A2D08A54();
  v31 = v59;
  *(v59 + 13) = v52;
  v51 = 8;
  sub_1A2C70D80();
  sub_1A2D08A54();
  *(v31 + 7) = v52;
  *(v31 + 16) = v53;
  LOBYTE(v50) = 9;
  v59[136] = sub_1A2D08A34() & 1;
  LOBYTE(v50) = 10;
  v59[137] = sub_1A2D08A34() & 1;
  LOBYTE(v50) = 11;
  v59[138] = sub_1A2D08A34() & 1;
  LOBYTE(v50) = 12;
  sub_1A2C60E98(&qword_1ED7097D0, MEMORY[0x1E6969530]);
  sub_1A2D08A54();
  (*(v46 + 32))(&v59[v44[15]], v43, v47);
  v49 = 13;
  sub_1A2C78344();
  sub_1A2D08A54();
  *&v59[v44[16]] = v50;
  LOBYTE(v50) = 14;
  v32 = sub_1A2D089F4();
  v33 = &v59[v44[17]];
  *v33 = v32;
  v33[1] = v34;
  v49 = 15;
  sub_1A2C6E118();
  sub_1A2D08A14();
  (*(v16 + 8))(v39, v40);
  v35 = v59;
  v59[v44[18]] = v50;
  sub_1A2C789A4(v35, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A2C78A08(v35);
}

uint64_t SceneTarget.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1790, &qword_1A2D13600);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1798, &qword_1A2D13608);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17A0, &unk_1A2D13610);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33[-v15];
  v18 = a1[3];
  v17 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A2C72E90();
  v19 = v39;
  sub_1A2D08C64();
  if (!v19)
  {
    v39 = v13;
    v20 = v38;
    v21 = sub_1A2D08A64();
    v22 = (2 * *(v21 + 16)) | 1;
    v43 = v21;
    v44 = v21 + 32;
    v45 = 0;
    v46 = v22;
    v23 = sub_1A2C6D870();
    if (v23 == 2 || v45 != v46 >> 1)
    {
      v24 = sub_1A2D088A4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v26 = &type metadata for SceneTarget;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v39 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v23;
      if (v23)
      {
        LOBYTE(v40) = 1;
        sub_1A2C72EE4();
        sub_1A2D089D4();
        sub_1A2C7774C();
        v29 = v36;
        sub_1A2D08A54();
        (*(v37 + 8))(v7, v29);
        (*(v39 + 8))(v16, v12);
      }

      else
      {
        LOBYTE(v40) = 0;
        sub_1A2CE9CD0();
        sub_1A2D089D4();
        sub_1A2C7774C();
        sub_1A2D08A54();
        v30 = v39;
        (*(v35 + 8))(v11, v8);
        (*(v30 + 8))(v16, v12);
      }

      swift_unknownObjectRelease();
      v31 = v41;
      v32 = v42;
      *v20 = v40;
      *(v20 + 16) = v31;
      *(v20 + 32) = v32;
      *(v20 + 40) = v34 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1A2C7774C()
{
  result = qword_1ED709520;
  if (!qword_1ED709520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709520);
  }

  return result;
}

uint64_t ProcessDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17D0, &qword_1A2D13648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C731E8();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_1A2D08A24();
  v13 = v12;
  v14 = v11;
  LOBYTE(v31[0]) = 1;
  v38 = sub_1A2D08A34();
  LOBYTE(v31[0]) = 2;
  v27 = sub_1A2D08A34();
  LOBYTE(v31[0]) = 3;
  v26 = sub_1A2D08A34();
  LOBYTE(v31[0]) = 4;
  v25 = sub_1A2D08A34();
  v39 = 5;
  v15 = sub_1A2D089F4();
  v24 = v38 & 1;
  v38 = v27 & 1;
  v26 &= 1u;
  v27 = v25 & 1;
  v16 = v15;
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  *&v28 = v14;
  *(&v28 + 1) = v13;
  v20 = v24;
  LOBYTE(v29) = v24;
  BYTE1(v29) = v38;
  v21 = v26;
  BYTE2(v29) = v26;
  BYTE3(v29) = v27;
  *(&v29 + 1) = v16;
  v30 = v19;
  *(a2 + 32) = v19;
  v22 = v29;
  *a2 = v28;
  *(a2 + 16) = v22;
  sub_1A2C73320(&v28, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v14;
  v31[1] = v13;
  v32 = v20;
  v33 = v38;
  v34 = v21;
  v35 = v27;
  v36 = v16;
  v37 = v19;
  return sub_1A2C7337C(v31);
}

uint64_t storeEnumTagSinglePayload for ActivityPresentationOptions.ActivityPresentationDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ActivityContentSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1570, &qword_1A2D11890);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v45[-v4];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1578, &qword_1A2D11898);
  v51 = *(v48 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v45[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1580, &qword_1A2D118A0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1588, &qword_1A2D118A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45[-v15];
  v17 = a1[3];
  v18 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A2C739AC();
  v19 = v55;
  sub_1A2D08C64();
  if (!v19)
  {
    v20 = v52;
    v21 = v53;
    v47 = 0;
    v55 = v13;
    v22 = v54;
    v23 = sub_1A2D08A64();
    v24 = (2 * *(v23 + 16)) | 1;
    v61 = v23;
    v62 = v23 + 32;
    v63 = 0;
    v64 = v24;
    v25 = sub_1A2C6D930();
    if (v25 == 3 || v63 != v64 >> 1)
    {
      v30 = sub_1A2D088A4();
      swift_allocError();
      v31 = v12;
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v33 = &type metadata for ActivityContentSource;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v55 + 8))(v16, v31);
    }

    else
    {
      v46 = v25;
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v56) = 1;
          sub_1A2C73A00();
          v26 = v7;
          v27 = v47;
          sub_1A2D089D4();
          v28 = v55;
          if (!v27)
          {
            sub_1A2C7774C();
            v29 = v48;
            sub_1A2D08A54();
            (*(v51 + 8))(v26, v29);
            (*(v28 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v41 = v56;
            v42 = v57;
            v43 = v58;
            v44 = v58 & 0xFFFFFFFFFFFFFF00;
LABEL_17:
            v38 = v22;
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v56) = 2;
          sub_1A2C73ABC();
          v37 = v47;
          sub_1A2D089D4();
          v28 = v55;
          if (!v37)
          {
            (*(v21 + 8))(v20, v50);
            (*(v28 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v39 = 0;
            v40 = 0;
            v43 = 0;
            v44 = 0;
            v41 = 0uLL;
            v42 = 0uLL;
            goto LABEL_17;
          }
        }

        (*(v28 + 8))(v16, v12);
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_1A2CE4A2C();
        v36 = v47;
        sub_1A2D089D4();
        if (!v36)
        {
          v38 = v22;
          sub_1A2CE4AD4();
          sub_1A2D08A54();
          (*(v49 + 8))(v11, v8);
          (*(v55 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v44 = 0;
          v41 = v56;
          v42 = v57;
          v43 = v58;
          v39 = v59;
          v40 = v60;
LABEL_18:
          *v38 = v41;
          *(v38 + 16) = v42;
          *(v38 + 32) = v44 | v43;
          *(v38 + 40) = v39;
          *(v38 + 48) = v40;
          *(v38 + 56) = v46;
          return __swift_destroy_boxed_opaque_existential_1(v65);
        }

        (*(v55 + 8))(v16, v12);
      }
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_1A2C78204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2C7822C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2C7822C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752397168 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

unint64_t sub_1A2C78344()
{
  result = qword_1ED709528;
  if (!qword_1ED709528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709528);
  }

  return result;
}

uint64_t sub_1A2C78398(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1FB8, &qword_1A2D18620);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1FC0, &qword_1A2D18628);
  v33 = *(v6 - 8);
  v7 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1FC8, &unk_1A2D18630);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A2C73E74();
  v18 = v36;
  sub_1A2D08C64();
  if (!v18)
  {
    v32 = v6;
    v19 = v35;
    v36 = v11;
    v20 = sub_1A2D08A64();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_1A2C6D870();
    v23 = v10;
    v17 = v14;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v10;
      v26 = sub_1A2D088A4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v28 = &type metadata for DeviceIdentifier;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v36 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_1A2D06AE0();
      sub_1A2D089D4();
      v24 = v36;
      v33 = v14;
      v17 = sub_1A2D08A24();
      (*(v34 + 8))(v5, v19);
      (*(v24 + 8))(v33, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      sub_1A2C73EC8();
      sub_1A2D089D4();
      v31 = v36;
      (*(v33 + 1))(v9, v32);
      (*(v31 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v17;
}

uint64_t sub_1A2C788A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A2C78398(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A2C788D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2C789A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C78A08(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A2C78A64()
{
  result = qword_1ED709020;
  if (!qword_1ED709020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709020);
  }

  return result;
}

uint64_t ActivityState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11C0, &qword_1A2D0F3E0);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11C8, &qword_1A2D0F3E8);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11D0, &qword_1A2D0F3F0);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11D8, &qword_1A2D0F3F8);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11E0, &qword_1A2D0F400);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A11E8, &unk_1A2D0F408);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A2C746D0();
  v26 = v69;
  sub_1A2D08C64();
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
  v32 = sub_1A2D08A64();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1A2C794A0();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1A2D088A4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v41 = &type metadata for ActivityState;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
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
      sub_1A2C74724();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1A2D089D4();
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
      sub_1A2CD18DC();
      v45 = v54;
      sub_1A2D089D4();
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
    sub_1A2CD1888();
    v46 = v31;
    v47 = v54;
    sub_1A2D089D4();
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
    sub_1A2CD1834();
    v49 = v64;
    v50 = v54;
    sub_1A2D089D4();
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
  sub_1A2C957C4();
  v38 = v54;
  sub_1A2D089D4();
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

uint64_t sub_1A2C792CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2C792F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2C792F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C617473 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t sub_1A2C794A0()
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

uint64_t OpaqueActivityPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = v65 - v7;
  v72 = type metadata accessor for OpaqueActivityContent();
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2D07F94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1A2D07FC4();
  v74 = *(v80 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A88, &qword_1A2D15690);
  v79 = *(v76 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v18 = v65 - v17;
  v19 = type metadata accessor for OpaqueActivityPayload(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 32);
  v25 = type metadata accessor for AlertConfiguration();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v84 = v24;
  v27(&v23[v24], 1, 1, v25);
  v29 = *(v19 + 36);
  v73 = v11;
  v30 = v11;
  v31 = v85;
  v32 = *(v30 + 56);
  v82 = v23;
  v83 = v29;
  v77 = v10;
  v32(&v23[v29], 1, 1, v10);
  v33 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1A2C74FD0();
  v34 = v81;
  sub_1A2D08C64();
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
    v40 = v82;
    v41 = v83;
    sub_1A2C54E38(&v82[v84], &qword_1EB0A04D0, &unk_1A2D15640);
    return sub_1A2C54E38(&v40[v41], &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v35 = v75;
    v65[1] = v28;
    v66 = v27;
    v67 = v25;
    v81 = v19;
    v36 = v77;
    LOBYTE(v86) = 4;
    sub_1A2C75024(&qword_1ED7090B8, MEMORY[0x1E69695A8]);
    v37 = v78;
    v38 = v80;
    v39 = v76;
    sub_1A2D08A54();
    v43 = v38;
    v44 = v82;
    (*(v74 + 32))(v82, v37, v43);
    LOBYTE(v86) = 0;
    sub_1A2C75024(&qword_1ED7097D0, MEMORY[0x1E6969530]);
    v45 = v18;
    v46 = v35;
    v47 = v36;
    sub_1A2D08A54();
    v48 = v81;
    v49 = v39;
    (*(v73 + 32))(v44 + *(v81 + 20), v46, v47);
    v87 = 1;
    v50 = sub_1A2C6CFD4();
    v78 = 0;
    sub_1A2D08A54();
    v75 = v50;
    v51 = (v44 + *(v48 + 24));
    *v51 = v86;
    LOBYTE(v86) = 2;
    sub_1A2C75024(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
    v52 = v71;
    sub_1A2D08A54();
    v53 = v49;
    v72 = v51;
    sub_1A2C67248(v52, v44 + *(v48 + 28), type metadata accessor for OpaqueActivityContent);
    LOBYTE(v86) = 5;
    v54 = v70;
    sub_1A2D08A14();
    sub_1A2C7A000(v54, v44 + v83, &qword_1EB0A0E28, &unk_1A2D0EC10);
    LOBYTE(v86) = 6;
    v55 = sub_1A2D08A04();
    v71 = v45;
    *(v44 + *(v81 + 40)) = v55 & 1;
    sub_1A2C6E9DC(*v72, *(v72 + 8));
    v87 = 3;
    sub_1A2D08A14();
    v56 = *(&v86 + 1);
    if (*(&v86 + 1) >> 60 == 15)
    {
      (*(v79 + 8))(v71, v53);
      v57 = v84;
      sub_1A2C54E38(v44 + v84, &qword_1EB0A04D0, &unk_1A2D15640);
      v66(v44 + v57, 1, 1, v67);
    }

    else
    {
      v58 = v86;
      v59 = sub_1A2D07D54();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_1A2D07D44();
      sub_1A2C75024(&qword_1ED708BD8, type metadata accessor for AlertConfiguration);
      v62 = v68;
      v63 = v67;
      sub_1A2D07D34();
      (*(v79 + 8))(v71, v53);

      sub_1A2C5DE40(v58, v56);
      v66(v62, 0, 1, v63);
      sub_1A2C7A000(v62, v44 + v84, &qword_1EB0A04D0, &unk_1A2D15640);
    }

    v64 = v85;
    sub_1A2C72030(v44, v69, type metadata accessor for OpaqueActivityPayload);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_1A2C6E28C(v44, type metadata accessor for OpaqueActivityPayload);
  }
}

uint64_t sub_1A2C7A000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2C7A07C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1A2D08974();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = v25[1];
      v27 = (*(v7 + 56) + 24 * v24);
      v28 = v27[1];
      v42 = *v27;
      v43 = *v25;
      v29 = v27[2];
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v10 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v43;
      v19[1] = v26;
      v20 = (*(v10 + 56) + 24 * v18);
      *v20 = v42;
      v20[1] = v28;
      v20[2] = v29;
      ++*(v10 + 16);
      v7 = v40;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1A2C7A360(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v209 = a5;
  v219 = a4;
  v216 = a2;
  v217 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C8, &qword_1A2D0AA28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v210 = &v186 - v8;
  v9 = type metadata accessor for ActivityDescriptor();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v196 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v201 = &v186 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v207 = &v186 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v193 = &v186 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v188 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v194 = &v186 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v186 - v25;
  v26 = type metadata accessor for OpaqueActivityPayload(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v212 = &v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v200 = &v186 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v204 = &v186 - v33;
  v34 = type metadata accessor for SubscribedActivity(0);
  v214 = *(v34 - 8);
  v215 = v34;
  v35 = v214[8];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v206 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v197 = &v186 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v205 = &v186 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v192 = (&v186 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v190 = &v186 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v203 = &v186 - v46;
  v47 = type metadata accessor for ActivityChange.Change(0);
  v213 = *(v47 - 8);
  v48 = *(v213 + 8);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v186 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v186 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v195 = &v186 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v198 = &v186 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v202 = &v186 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v189 = &v186 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v186 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v211 = &v186 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v199 = &v186 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v191 = &v186 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v74 = *(a3 + 16);
  v218 = v10;
  v75 = *(v10 + 56);
  v225 = &v186 - v76;
  v222 = v9;
  v75();
  v208 = v27;
  v77 = *(v27 + 56);
  v223 = v26;
  v224 = v65;
  v220 = v77;
  v221 = v27 + 56;
  v77(v65, 1, 1, v26);
  v78 = *(v74 + 16);
  p_cache = &OBJC_METACLASS____TtC11ActivityKit14ActivityCenter.cache;
  if (!v78)
  {
    v86 = 5;
    v87 = v216;
    goto LABEL_19;
  }

  v80 = v74 + ((v213[80] + 32) & ~v213[80]);
  v81 = 5;
  v82 = *(v213 + 9);
  do
  {
    sub_1A2C7BFE4(v80, v53, type metadata accessor for ActivityChange.Change);
    sub_1A2C725C0(v53, v51, type metadata accessor for ActivityChange.Change);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v84 = v225;
        sub_1A2C54E38(v225, &qword_1EB0A0210, &unk_1A2D0ACA0);
        sub_1A2C725C0(v51, v84, type metadata accessor for ActivityDescriptor);
        (v75)(v84, 0, 1, v222);
      }

      else
      {
        v85 = v224;
        sub_1A2C54E38(v224, &qword_1EB0A02E0, &qword_1A2D0AA50);
        sub_1A2C725C0(v51, v85, type metadata accessor for OpaqueActivityPayload);
        v220(v85, 0, 1, v223);
      }
    }

    else
    {
      v81 = *v51;
    }

    v80 += v82;
    --v78;
  }

  while (v78);
  v86 = v81;
  v87 = v216;
  p_cache = (&OBJC_METACLASS____TtC11ActivityKit14ActivityCenter + 16);
  if (v81 != 3)
  {
LABEL_19:
    v109 = p_cache[399];
    v110 = v219;
    swift_beginAccess();
    v111 = *&v109[v110];
    v112 = *(v111 + 16);
    v113 = v217;
    v114 = v218;
    v115 = v223;
    v213 = v109;
    if (v112)
    {

      v116 = sub_1A2C64868(v113, v87);
      if (v117)
      {
        v118 = v197;
        sub_1A2C7BFE4(*(v111 + 56) + v214[9] * v116, v197, type metadata accessor for SubscribedActivity);

        v119 = v205;
        sub_1A2C725C0(v118, v205, type metadata accessor for SubscribedActivity);
        if (qword_1ED709860 != -1)
        {
          swift_once();
        }

        v120 = v115;
        v121 = sub_1A2D08094();
        __swift_project_value_buffer(v121, qword_1ED709870);

        v122 = sub_1A2D08074();
        v123 = sub_1A2D086A4();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v227 = v125;
          *v124 = 136446210;
          *(v124 + 4) = sub_1A2C55558(v113, v87, &v227);
          _os_log_impl(&dword_1A2C51000, v122, v123, "Received updated activity: %{public}s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v125);
          MEMORY[0x1A58E5180](v125, -1, -1);
          MEMORY[0x1A58E5180](v124, -1, -1);
        }

        v126 = v200;
        v127 = v198;
        v227 = *(v119 + *(v215 + 28));
        sub_1A2C6BD18(v224, v198, &qword_1EB0A02E0, &qword_1A2D0AA50);
        if ((*(v208 + 48))(v127, 1, v120) == 1)
        {

          sub_1A2C54E38(v127, &qword_1EB0A02E0, &qword_1A2D0AA50);
        }

        else
        {
          sub_1A2C725C0(v127, v126, type metadata accessor for OpaqueActivityPayload);
          v144 = v194;
          sub_1A2C6BD18(v126 + *(v120 + 32), v194, &qword_1EB0A04D0, &unk_1A2D15640);
          v145 = type metadata accessor for AlertConfiguration();
          v146 = (*(*(v145 - 8) + 48))(v144, 1, v145);

          sub_1A2C54E38(v144, &qword_1EB0A04D0, &unk_1A2D15640);
          v147 = v202;
          sub_1A2C7BFE4(v126, v202, type metadata accessor for OpaqueActivityPayload);
          v148 = v220;
          v220(v147, 0, 1, v120);
          sub_1A2C7C2D4(v147, 0);
          if (v146 != 1)
          {
            sub_1A2C7BFE4(v126, v147, type metadata accessor for OpaqueActivityPayload);
            v148(v147, 0, 1, v120);
            sub_1A2C7C2D4(v147, 1);
          }

          sub_1A2C73F50(v126, type metadata accessor for OpaqueActivityPayload);
          v119 = v205;
          v113 = v217;
        }

        v149 = v201;
        v150 = v218;
        if (v86 == 5)
        {
          v86 = *(v119 + 16);
        }

        LODWORD(v204) = v86;
        v151 = v227;
        v152 = v199;
        sub_1A2C6BD18(v225, v199, &qword_1EB0A0210, &unk_1A2D0ACA0);
        v153 = *(v150 + 48);
        v154 = v222;
        v143 = v113;
        if (v153(v152, 1, v222) == 1)
        {
          sub_1A2C7BFE4(v119 + *(v215 + 24), v149, type metadata accessor for ActivityDescriptor);
          sub_1A2C73F50(v119, type metadata accessor for SubscribedActivity);
          if (v153(v152, 1, v154) != 1)
          {
            sub_1A2C54E38(v152, &qword_1EB0A0210, &unk_1A2D0ACA0);
          }
        }

        else
        {
          sub_1A2C73F50(v119, type metadata accessor for SubscribedActivity);
          sub_1A2C725C0(v152, v149, type metadata accessor for ActivityDescriptor);
        }

        v155 = v149;
        goto LABEL_68;
      }
    }

    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v128 = sub_1A2D08094();
    __swift_project_value_buffer(v128, qword_1ED709870);

    v129 = sub_1A2D08074();
    v130 = sub_1A2D086A4();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v227 = v132;
      *v131 = 136446210;
      *(v131 + 4) = sub_1A2C55558(v113, v87, &v227);
      _os_log_impl(&dword_1A2C51000, v129, v130, "Received new activity: %{public}s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x1A58E5180](v132, -1, -1);
      MEMORY[0x1A58E5180](v131, -1, -1);
    }

    v133 = v212;
    v134 = v211;
    if (v86 == 5)
    {

      v135 = sub_1A2D08074();
      v136 = sub_1A2D08684();

      if (!os_log_type_enabled(v135, v136))
      {
        goto LABEL_54;
      }

      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v227 = v138;
      *v137 = 136446210;
      *(v137 + 4) = sub_1A2C55558(v113, v87, &v227);
      v139 = "Received activity without state: %{public}s";
    }

    else
    {
      sub_1A2C6BD18(v225, v211, &qword_1EB0A0210, &unk_1A2D0ACA0);
      if ((*(v114 + 48))(v134, 1, v222) != 1)
      {
        v140 = v196;
        sub_1A2C725C0(v134, v196, type metadata accessor for ActivityDescriptor);
        v227 = MEMORY[0x1E69E7CC8];
        v141 = v195;
        sub_1A2C6BD18(v224, v195, &qword_1EB0A02E0, &qword_1A2D0AA50);
        v142 = (*(v208 + 48))(v141, 1, v115);
        LODWORD(v204) = v86;
        if (v142 == 1)
        {
          v143 = v113;
          sub_1A2C54E38(v141, &qword_1EB0A02E0, &qword_1A2D0AA50);
        }

        else
        {
          sub_1A2C725C0(v141, v133, type metadata accessor for OpaqueActivityPayload);
          v156 = v133 + *(v115 + 32);
          v157 = v115;
          v158 = v188;
          sub_1A2C6BD18(v156, v188, &qword_1EB0A04D0, &unk_1A2D15640);
          v159 = type metadata accessor for AlertConfiguration();
          v160 = (*(*(v159 - 8) + 48))(v158, 1, v159);
          sub_1A2C54E38(v158, &qword_1EB0A04D0, &unk_1A2D15640);
          v161 = v202;
          sub_1A2C7BFE4(v133, v202, type metadata accessor for OpaqueActivityPayload);
          v162 = v133;
          v163 = v220;
          v220(v161, 0, 1, v157);
          sub_1A2C7C2D4(v161, 0);
          if (v160 == 1)
          {
            v143 = v113;
          }

          else
          {
            v143 = v113;
            sub_1A2C7BFE4(v162, v161, type metadata accessor for OpaqueActivityPayload);
            v163(v161, 0, 1, v157);
            sub_1A2C7C2D4(v161, 1);
          }

          sub_1A2C73F50(v162, type metadata accessor for OpaqueActivityPayload);
          v140 = v196;
        }

        v151 = v227;
        v155 = v140;
LABEL_68:
        v180 = v207;
        sub_1A2C725C0(v155, v207, type metadata accessor for ActivityDescriptor);
        v181 = v215;
        v182 = v206;
        sub_1A2C7BFE4(v180, &v206[*(v215 + 24)], type metadata accessor for ActivityDescriptor);
        *v182 = v143;
        *(v182 + 8) = v87;
        *(v182 + 16) = v204;
        *(v182 + *(v181 + 28)) = v151;
        v183 = v210;
        sub_1A2C7BFE4(v182, v210, type metadata accessor for SubscribedActivity);
        v184 = v214[7];
        v184(v183, 0, 1, v181);
        swift_bridgeObjectRetain_n();
        sub_1A2C7CD50(v183, v143, v87);
        sub_1A2C7BFE4(v182, v183, type metadata accessor for SubscribedActivity);
        v184(v183, 0, 1, v181);
        swift_beginAccess();

        sub_1A2C7CD50(v183, v143, v87);
        swift_endAccess();
        sub_1A2C73F50(v182, type metadata accessor for SubscribedActivity);
        v179 = type metadata accessor for ActivityDescriptor;
        v178 = v180;
LABEL_69:
        sub_1A2C73F50(v178, v179);
        goto LABEL_70;
      }

      sub_1A2C54E38(v134, &qword_1EB0A0210, &unk_1A2D0ACA0);

      v135 = sub_1A2D08074();
      v136 = sub_1A2D08684();

      if (!os_log_type_enabled(v135, v136))
      {
        goto LABEL_54;
      }

      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v227 = v138;
      *v137 = 136446210;
      *(v137 + 4) = sub_1A2C55558(v113, v87, &v227);
      v139 = "Received activity without descriptor: %{public}s";
    }

LABEL_53:
    _os_log_impl(&dword_1A2C51000, v135, v136, v139, v137, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    MEMORY[0x1A58E5180](v138, -1, -1);
    MEMORY[0x1A58E5180](v137, -1, -1);
    goto LABEL_54;
  }

  v88 = v217;
  v89 = v218;
  v90 = v219;
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v91 = sub_1A2D08094();
  __swift_project_value_buffer(v91, qword_1ED709870);

  v92 = sub_1A2D08074();
  v93 = sub_1A2D086A4();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = v89;
    v96 = swift_slowAlloc();
    v228 = v96;
    *v94 = 136446210;
    *(v94 + 4) = sub_1A2C55558(v88, v87, &v228);
    _os_log_impl(&dword_1A2C51000, v92, v93, "Activity dismissed: %{public}s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v97 = v96;
    v89 = v95;
    MEMORY[0x1A58E5180](v97, -1, -1);
    MEMORY[0x1A58E5180](v94, -1, -1);
  }

  v98 = v204;
  v99 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  v100 = *(v90 + v99);
  if (*(v100 + 16))
  {
    v101 = *(v90 + v99);

    v102 = sub_1A2C64868(v88, v87);
    if (v103)
    {
      v104 = v190;
      sub_1A2C7BFE4(*(v100 + 56) + v214[9] * v102, v190, type metadata accessor for SubscribedActivity);

      v105 = v203;
      sub_1A2C725C0(v104, v203, type metadata accessor for SubscribedActivity);
      v226 = *(v105 + *(v215 + 28));
      v106 = v189;
      sub_1A2C6BD18(v224, v189, &qword_1EB0A02E0, &qword_1A2D0AA50);
      v107 = v223;
      if ((*(v208 + 48))(v106, 1, v223) == 1)
      {

        sub_1A2C54E38(v106, &qword_1EB0A02E0, &qword_1A2D0AA50);
        v108 = v216;
      }

      else
      {
        sub_1A2C725C0(v106, v98, type metadata accessor for OpaqueActivityPayload);
        v164 = v187;
        sub_1A2C6BD18(v98 + *(v107 + 32), v187, &qword_1EB0A04D0, &unk_1A2D15640);
        v165 = type metadata accessor for AlertConfiguration();
        v166 = (*(*(v165 - 8) + 48))(v164, 1, v165);

        sub_1A2C54E38(v164, &qword_1EB0A04D0, &unk_1A2D15640);
        v167 = v202;
        sub_1A2C7BFE4(v98, v202, type metadata accessor for OpaqueActivityPayload);
        v168 = v220;
        v220(v167, 0, 1, v107);
        sub_1A2C7C2D4(v167, 0);
        if (v166 != 1)
        {
          sub_1A2C7BFE4(v98, v167, type metadata accessor for OpaqueActivityPayload);
          v168(v167, 0, 1, v107);
          sub_1A2C7C2D4(v167, 1);
        }

        sub_1A2C73F50(v98, type metadata accessor for OpaqueActivityPayload);
        v108 = v216;
        v89 = v218;
      }

      v169 = v191;
      sub_1A2C6BD18(v225, v191, &qword_1EB0A0210, &unk_1A2D0ACA0);
      v170 = *(v89 + 48);
      v171 = v222;
      if (v170(v169, 1, v222) == 1)
      {
        v172 = v193;
        sub_1A2C7BFE4(v203 + *(v215 + 24), v193, type metadata accessor for ActivityDescriptor);
        if (v170(v169, 1, v171) != 1)
        {
          sub_1A2C54E38(v169, &qword_1EB0A0210, &unk_1A2D0ACA0);
        }
      }

      else
      {
        v172 = v193;
        sub_1A2C725C0(v169, v193, type metadata accessor for ActivityDescriptor);
      }

      v173 = v226;
      v174 = v192;
      *v192 = v88;
      *(v174 + 8) = v108;
      *(v174 + 16) = 3;
      v175 = v215;
      sub_1A2C725C0(v172, v174 + *(v215 + 24), type metadata accessor for ActivityDescriptor);
      *(v174 + *(v175 + 28)) = v173;
      v176 = v210;
      sub_1A2C7BFE4(v174, v210, type metadata accessor for SubscribedActivity);
      v177 = v214[7];
      v177(v176, 0, 1, v175);
      swift_bridgeObjectRetain_n();
      sub_1A2C7CD50(v176, v88, v108);
      v177(v176, 1, 1, v175);
      swift_beginAccess();

      sub_1A2C7CD50(v176, v88, v108);
      swift_endAccess();
      sub_1A2C73F50(v174, type metadata accessor for SubscribedActivity);
      v178 = v203;
      v179 = type metadata accessor for SubscribedActivity;
      goto LABEL_69;
    }
  }

  v135 = sub_1A2D08074();
  v136 = sub_1A2D08684();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v227 = v138;
    *v137 = 136446210;
    *(v137 + 4) = sub_1A2C55558(v88, v87, &v227);
    v139 = "No activity found to dismiss: %{public}s";
    goto LABEL_53;
  }

LABEL_54:

LABEL_70:
  sub_1A2C54E38(v224, &qword_1EB0A02E0, &qword_1A2D0AA50);
  return sub_1A2C54E38(v225, &qword_1EB0A0210, &unk_1A2D0ACA0);
}

uint64_t sub_1A2C7BDEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1A2D07FC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1A2D07F94();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for OpaqueActivityContent();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10]) = a2 + 1;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A2C7BFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C0C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1A2D07FC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1A2D07F94();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for OpaqueActivityContent();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[7];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[8];
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[10]);
            if (v18 >= 2)
            {
              return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[9];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1A2C7C2D4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for OpaqueActivityPayload(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1A2C54E38(a1, &qword_1EB0A02E0, &qword_1A2D0AA50);
    v15 = *v2;
    v16 = sub_1A2C7C7B4(a2 & 1);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A2C8AF54();
        v21 = v26;
      }

      sub_1A2C7C590(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for OpaqueActivityPayload);
      sub_1A2CA8F84(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1A2C54E38(v9, &qword_1EB0A02E0, &qword_1A2D0AA50);
  }

  else
  {
    sub_1A2C7C590(a1, v14, type metadata accessor for OpaqueActivityPayload);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_1A2C7C660(v14, a2 & 1, v23);
    *v2 = v26;
  }

  return result;
}

uint64_t sub_1A2C7C528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7C660(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A2C7C7B4(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for OpaqueActivityPayload(0);
      return sub_1A2C8B18C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for OpaqueActivityPayload);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1A2C8AF54();
    goto LABEL_7;
  }

  sub_1A2C7C820(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1A2C7C7B4(a2 & 1);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1A2C7CBEC(v10, a2 & 1, a1, v16);
}

unint64_t sub_1A2C7C7B4(char a1)
{
  v3 = *(v1 + 40);
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](a1 & 1);
  v4 = sub_1A2D08C54();

  return sub_1A2C7CB7C(a1 & 1, v4);
}

uint64_t sub_1A2C7C820(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for OpaqueActivityPayload(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0990, &qword_1A2D0D128);
  v40 = a2;
  result = sub_1A2D08974();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1A2C7C5F8(v27, v41, type metadata accessor for OpaqueActivityPayload);
      }

      else
      {
        sub_1A2C68F00(v27, v41, type metadata accessor for OpaqueActivityPayload);
      }

      v28 = *(v12 + 40);
      sub_1A2D08C14();
      MEMORY[0x1A58E48E0](v25);
      result = sub_1A2D08C54();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_1A2C7C5F8(v41, *(v12 + 56) + v26 * v20, type metadata accessor for OpaqueActivityPayload);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_1A2C7CB7C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A2C7CBEC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for OpaqueActivityPayload(0);
  result = sub_1A2C67248(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for OpaqueActivityPayload);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1A2C7CCAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityDescriptor();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2C7CD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C8, &qword_1A2D0AA28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SubscribedActivity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1A2C54E38(a1, &qword_1EB0A02C8, &qword_1A2D0AA28);
    sub_1A2C91E28(a2, a3, type metadata accessor for SubscribedActivity, type metadata accessor for SubscribedActivity, type metadata accessor for SubscribedActivity, sub_1A2CB36A8, v10);

    return sub_1A2C54E38(v10, &qword_1EB0A02C8, &qword_1A2D0AA28);
  }

  else
  {
    sub_1A2C7C590(a1, v14, type metadata accessor for SubscribedActivity);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1A2C7D034(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1A2C7CF88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ActivityDescriptor();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A2C7D034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SubscribedActivity(0);
      return sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SubscribedActivity);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB36A8();
    goto LABEL_7;
  }

  sub_1A2C7D508(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for SubscribedActivity, type metadata accessor for SubscribedActivity);
}

uint64_t sub_1A2C7D1C8(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_1A2D08974();
  v18 = result;
  if (*(v15 + 16))
  {
    v48 = v9;
    v49 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v50 + 72);
      v37 = v32 + v36 * v31;
      if (v51)
      {
        sub_1A2C7C5F8(v37, v52, v53);
      }

      else
      {
        sub_1A2C68F00(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = sub_1A2C7C5F8(v52, *(v18 + 56) + v36 * v26, v53);
      ++*(v18 + 16);
      v15 = v49;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_1A2C7D544(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1A2C67248(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1A2C7D624()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08864();

  MEMORY[0x1A58E4150](v1, v2);
  return 0xD000000000000011;
}

unint64_t SceneTarget.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[5])
  {
    v3 = v0[1];
  }

  else
  {
    sub_1A2D08864();

    MEMORY[0x1A58E4150](v1, v2);
    MEMORY[0x1A58E4150](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }

  return v1;
}

uint64_t sub_1A2C7D784()
{
  if (*v0)
  {
    result = 0x7472656C61;
  }

  else
  {
    result = 7105633;
  }

  *v0;
  return result;
}

uint64_t sub_1A2C7D7C0(void **a1, uint64_t a2)
{
  v76 = a1;
  v72 = type metadata accessor for ActivityDescriptorContentState();
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OpaqueActivityContent();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v73 = &v69 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = (&v69 - v11);
  v81 = type metadata accessor for OpaqueActivityPayload(0);
  v77 = *(v81 - 8);
  v12 = *(v77 + 64);
  v13 = MEMORY[0x1EEE9AC00](v81);
  v70 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v79 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - v23;
  v25 = type metadata accessor for ActivityDescriptor();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C6BD18(a2, v24, &qword_1EB0A02D8, &qword_1A2D0AA38);
  v29 = *(v24 + 1);

  v30 = &v24[*(v16 + 48)];
  v31 = type metadata accessor for SubscribedActivity(0);
  v32 = &v30[*(v31 + 24)];
  v82 = v28;
  sub_1A2C7BFE4(v32, v28, type metadata accessor for ActivityDescriptor);
  v33 = v30;
  v34 = a2;
  sub_1A2C73F50(v33, type metadata accessor for SubscribedActivity);
  sub_1A2C6BD18(a2, v24, &qword_1EB0A02D8, &qword_1A2D0AA38);
  v35 = *(v24 + 1);

  v36 = &v24[*(v16 + 48)];
  v37 = *(v36 + 16);
  sub_1A2C73F50(v36, type metadata accessor for SubscribedActivity);
  sub_1A2C6BD18(a2, v22, &qword_1EB0A02D8, &qword_1A2D0AA38);
  v38 = *(v22 + 1);

  v39 = &v22[*(v16 + 48)];
  v40 = *(v39 + *(v31 + 28));

  sub_1A2C73F50(v39, type metadata accessor for SubscribedActivity);
  if (!*(v40 + 16))
  {
    goto LABEL_11;
  }

  v41 = sub_1A2C7C7B4(0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_11;
  }

  v43 = v78;
  v44 = *(v77 + 72);
  sub_1A2C7BFE4(*(v40 + 56) + v44 * v41, v78, type metadata accessor for OpaqueActivityPayload);

  v45 = v80;
  v46 = v81;
  sub_1A2C7BFE4(v43 + *(v81 + 28), v80, type metadata accessor for OpaqueActivityContent);
  sub_1A2C73F50(v43, type metadata accessor for OpaqueActivityPayload);
  v48 = *v45;
  v47 = v45[1];
  sub_1A2C5E63C(*v45, v47);
  sub_1A2C73F50(v45, type metadata accessor for OpaqueActivityContent);
  v49 = v79;
  sub_1A2C6BD18(v34, v79, &qword_1EB0A02D8, &qword_1A2D0AA38);
  v50 = *(v49 + 8);

  v51 = v49 + *(v16 + 48);
  v52 = *(v51 + *(v31 + 28));

  sub_1A2C73F50(v51, type metadata accessor for SubscribedActivity);
  if (!*(v52 + 16) || (v53 = sub_1A2C7C7B4(0), (v54 & 1) == 0))
  {
    sub_1A2C55840(v48, v47);
LABEL_11:

    return sub_1A2C73F50(v82, type metadata accessor for ActivityDescriptor);
  }

  v55 = *(v52 + 56) + v53 * v44;
  v56 = v70;
  sub_1A2C7BFE4(v55, v70, type metadata accessor for OpaqueActivityPayload);

  v57 = v71;
  sub_1A2C7BFE4(v56 + *(v46 + 28), v71, type metadata accessor for OpaqueActivityContent);
  sub_1A2C73F50(v56, type metadata accessor for OpaqueActivityPayload);
  v58 = v73;
  sub_1A2C725C0(v57, v73, type metadata accessor for OpaqueActivityContent);
  v59 = v47;
  v60 = v82;
  v61 = v74;
  sub_1A2C7BFE4(v82, v74, type metadata accessor for ActivityDescriptor);
  v62 = v72;
  sub_1A2C7BFE4(v58, v61 + *(v72 + 28), type metadata accessor for OpaqueActivityContent);
  *(v61 + *(v62 + 20)) = v37;
  v63 = (v61 + *(v62 + 24));
  *v63 = v48;
  v63[1] = v59;
  v64 = v76;
  v65 = *v76;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1A2C7E08C(0, v65[2] + 1, 1, v65);
  }

  v67 = v65[2];
  v66 = v65[3];
  if (v67 >= v66 >> 1)
  {
    v65 = sub_1A2C7E08C(v66 > 1, v67 + 1, 1, v65);
  }

  sub_1A2C73F50(v58, type metadata accessor for OpaqueActivityContent);
  sub_1A2C73F50(v60, type metadata accessor for ActivityDescriptor);
  v65[2] = v67 + 1;
  result = sub_1A2C725C0(v61, v65 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v67, type metadata accessor for ActivityDescriptorContentState);
  *v64 = v65;
  return result;
}

size_t sub_1A2C7DEB0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t _s11ActivityKit0A22DescriptorContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActivityDescriptorContentState();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_1A2C8D278(*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8), *(a2 + *(v4 + 24)), *(a2 + *(v4 + 24) + 8)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);

  return static OpaqueActivityContent.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t _s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1A2D08B34() & 1) == 0 || (sub_1A2C8D278(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8DAD4(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8DAD4(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8DEE8(*(a1 + 104), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  v28 = *(a1 + 112);
  v29 = *(a1 + 128);
  v26 = *(a1 + 112);
  v27 = *(a1 + 128);
  v30 = *(a2 + 112);
  v31 = *(a2 + 128);
  v24 = *(a2 + 112);
  v25 = *(a2 + 128);
  sub_1A2C66F58(&v28, v23);
  sub_1A2C66F58(&v30, v23);
  v6 = _s11ActivityKit0A19PresentationOptionsV2eeoiySbAC_ACtFZ_0(&v26, &v24);
  v32 = v24;
  v33 = v25;
  sub_1A2C69EAC(&v32);
  v34 = v26;
  v35 = v27;
  sub_1A2C69EAC(&v34);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 136) != *(a2 + 136))
  {
    return 0;
  }

  if (*(a1 + 137) != *(a2 + 137))
  {
    return 0;
  }

  if (*(a1 + 138) != *(a2 + 138))
  {
    return 0;
  }

  v7 = type metadata accessor for ActivityDescriptor();
  v8 = v7[15];
  if ((_s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[16];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  if (v11)
  {
    if (!v13 || (*v10 != *v12 || v11 != v13) && (sub_1A2D08B34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = v7[17];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18 || (*v15 != *v17 || v16 != v18) && (sub_1A2D08B34() & 1) == 0)
    {
      return 0;
    }

LABEL_37:
    v19 = v7[18];
    v20 = *(a1 + v19);
    v21 = *(a2 + v19);
    if (v20 == 4)
    {
      if (v21 != 4)
      {
        return 0;
      }
    }

    else if (v20 != v21)
    {
      return 0;
    }

    return 1;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  return 0;
}

uint64_t ActivityPredicate.matches(descriptor:)(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v25 = v1[3];
  if (!v25)
  {
    result = 1;
    if (!v4)
    {
      return result;
    }

LABEL_23:
    if (*(v2 + 16) != v3 || v4 != *(v2 + 24))
    {
      v14 = result;
      v15 = *(v2 + 16);
      return v14 & sub_1A2D08B34();
    }

    return result;
  }

  v5 = *(result + 104);
  v23 = *(v5 + 16);
  if (!v23)
  {
    result = 0;
    if (!v4)
    {
      return result;
    }

    goto LABEL_23;
  }

  v16 = result;
  v17 = *v1;
  v18 = v1[1];
  v19 = *(result + 104);
  v6 = 0;
  v26 = v1[2];
  v21 = v1[5];
  v22 = v1[4];
  v7 = (v5 + 48);
  v20 = v1[6];
  do
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *v7;
    v10 = v7[1];
    v12 = v7[2];
    v35 = *(v7 + 3);
    if (*(v7 + 40) != 1)
    {
      v8 = 0;
LABEL_5:
      sub_1A2CA0190(v26, v25);
      sub_1A2C5E574(v8, 0);
      result = sub_1A2C5E574(v26, v25);
      goto LABEL_6;
    }

    v28 = v8;
    v29 = v9;
    v30 = v11;
    v31 = v10;
    v32 = v12;
    v33 = v35;
    v34 = 1;
    sub_1A2CDF70C(&v28, v27);
    if (!v9)
    {
      goto LABEL_5;
    }

    if (v8 == v26 && v9 == v25)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_1A2D08B34();
    }

    sub_1A2CA0190(v26, v25);
    sub_1A2CA0190(v8, v9);
    sub_1A2C5E574(v26, v25);
    v28 = v8;
    v29 = v9;
    v30 = v11;
    v31 = v10;
    v32 = v12;
    sub_1A2C7337C(&v28);
    result = sub_1A2C5E574(v8, v9);
    if (v24)
    {
      result = 1;
      goto LABEL_20;
    }

LABEL_6:
    ++v6;
    v7 += 8;
    v5 = v19;
  }

  while (v23 != v6);
  result = 0;
LABEL_20:
  v3 = v17;
  v4 = v18;
  v2 = v16;
  if (v18)
  {
    goto LABEL_23;
  }

  return result;
}

size_t sub_1A2C7E67C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

size_t sub_1A2C7E858(size_t a1, int64_t a2, char a3)
{
  result = sub_1A2C7E67C(a1, a2, a3, *v3, &unk_1EB0A03E0, &qword_1A2D0D190, type metadata accessor for ActivityDescriptorContentState);
  *v3 = result;
  return result;
}

void sub_1A2C7E89C(uint64_t *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v98 = a3;
  v99 = a4;
  v97 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v101 = &v91 - v7;
  v8 = type metadata accessor for OpaqueActivityContent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v107 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v91 - v13;
  v14 = type metadata accessor for ActivityDescriptor();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v91 - v18);
  v20 = type metadata accessor for ActivityDescriptorContentState();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v95 = (&v91 - v26);
  v27 = *a1;
  if (qword_1EB09F588 != -1)
  {
    swift_once();
  }

  v28 = sub_1A2D08094();
  __swift_project_value_buffer(v28, qword_1EB09F590);

  v29 = sub_1A2D08074();
  v30 = sub_1A2D086A4();

  v31 = os_log_type_enabled(v29, v30);
  v102 = v24;
  v103 = v19;
  v100 = v20;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v109 = v104;
    v106 = v32;
    *v32 = 136446210;
    v33 = *(v27 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    v105 = v21;
    if (v33)
    {
      LODWORD(v93) = v30;
      v94 = v8;
      v108 = MEMORY[0x1E69E7CC0];
      sub_1A2C7F170(0, v33, 0);
      v34 = v108;
      v35 = v21;
      v36 = v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v37 = *(v35 + 72);
      do
      {
        v38 = v95;
        sub_1A2C7F304(v36, v95, type metadata accessor for ActivityDescriptorContentState);
        v39 = *v38;
        v40 = v38[1];

        sub_1A2C6E22C(v38, type metadata accessor for ActivityDescriptorContentState);
        v108 = v34;
        v42 = *(v34 + 16);
        v41 = *(v34 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1A2C7F170((v41 > 1), v42 + 1, 1);
          v34 = v108;
        }

        *(v34 + 16) = v42 + 1;
        v43 = v34 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v40;
        v36 += v37;
        --v33;
      }

      while (v33);
      v8 = v94;
      v24 = v102;
      v19 = v103;
      v20 = v100;
      LOBYTE(v30) = v93;
    }

    v44 = MEMORY[0x1A58E4220](v34, MEMORY[0x1E69E6158]);
    v46 = v45;

    v47 = sub_1A2C55558(v44, v46, &v109);

    v48 = v106;
    *(v106 + 1) = v47;
    _os_log_impl(&dword_1A2C51000, v29, v30, "Activity Content update: %{public}s", v48, 0xCu);
    v49 = v104;
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x1A58E5180](v49, -1, -1);
    MEMORY[0x1A58E5180](v48, -1, -1);

    v21 = v105;
  }

  else
  {
  }

  v106 = *(v27 + 16);
  if (v106)
  {
    v50 = sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
    v93 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_latestActivityContentUpdateByIdentifier;
    v94 = v50;
    v51 = v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v92 = *(v21 + 72);
    do
    {
      sub_1A2C7F304(v51, v24, type metadata accessor for ActivityDescriptorContentState);
      sub_1A2C7F304(v24, v19, type metadata accessor for ActivityDescriptor);
      v56 = v24[*(v20 + 20)];
      v57 = *v19;
      v58 = v19[1];
      v104 = v58;
      v105 = v57;
      if (v56 == 3)
      {
        swift_beginAccess();
        v59 = v91;
        sub_1A2CA8DA8(v57, v58, v91);
        sub_1A2C54E38(v59, &qword_1EB0A0A68, &unk_1A2D0D240);
        swift_endAccess();
        v60 = v96;
        sub_1A2C7F304(v19, v96, type metadata accessor for ActivityDescriptor);
        v61 = ACActivityDescriptor.init(descriptor:)(v60);
        v62 = 2;
      }

      else
      {
        v63 = v95;
        sub_1A2C7F304(v24, v95, type metadata accessor for ActivityDescriptorContentState);
        v64 = v97;
        v65 = v51;
        v66 = v20;
        v67 = v8;
        v68 = v57;
        v69 = v93;
        swift_beginAccess();
        v70 = *(v64 + v69);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v64 + v69);
        *(v64 + v69) = 0x8000000000000000;
        v72 = v68;
        v8 = v67;
        v20 = v66;
        v51 = v65;
        sub_1A2C80A14(v63, v72, v58, isUniquelyReferenced_nonNull_native);
        *(v64 + v69) = v108;
        v24 = v102;
        swift_endAccess();
        v73 = v96;
        sub_1A2C7F304(v103, v96, type metadata accessor for ActivityDescriptor);
        v61 = ACActivityDescriptor.init(descriptor:)(v73);
        v74 = 1;
        if (v56 != 2)
        {
          v74 = 3;
        }

        v75 = 4;
        if (v56)
        {
          v75 = 0;
        }

        if (v56 <= 1)
        {
          v62 = v75;
        }

        else
        {
          v62 = v74;
        }
      }

      v76 = v107;
      sub_1A2C7F304(&v24[*(v20 + 28)], v107, type metadata accessor for OpaqueActivityContent);
      v77 = *v76;
      v78 = v76[1];
      v79 = *(v8 + 20);
      v80 = *(v76 + *(v8 + 24));
      v81 = sub_1A2D07F24();
      v82 = v76 + v79;
      v83 = v101;
      sub_1A2C7214C(v82, v101);
      v84 = sub_1A2D07F94();
      v85 = *(v84 - 8);
      v86 = (*(v85 + 48))(v83, 1, v84);
      v87 = 0;
      if (v86 != 1)
      {
        v88 = v8;
        v89 = v101;
        v87 = sub_1A2D07F54();
        v90 = v89;
        v8 = v88;
        (*(v85 + 8))(v90, v84);
      }

      v52 = [objc_allocWithZone(ACActivityContent) initWithContentData:v81 staleDate:v87 relevanceScore:v80];

      sub_1A2C6E22C(v107, type metadata accessor for OpaqueActivityContent);
      v53 = objc_allocWithZone(ACActivityContentUpdate);
      v54 = sub_1A2D08434();
      v55 = [v53 initWithIdentifier:v54 descriptor:v61 state:v62 content:v52];

      v98(v55);
      v24 = v102;
      sub_1A2C6E22C(v102, type metadata accessor for ActivityDescriptorContentState);
      v19 = v103;
      sub_1A2C6E22C(v103, type metadata accessor for ActivityDescriptor);
      v51 += v92;
      v106 = (v106 - 1);
      v20 = v100;
    }

    while (v106);
  }
}

char *sub_1A2C7F170(char *a1, int64_t a2, char a3)
{
  result = sub_1A2C7F190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A2C7F190(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
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

uint64_t sub_1A2C7F29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7F304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C7F36C(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for OpaqueActivityContent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityDescriptor();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v70 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v62 - v19);
  v72 = *a3;
  os_unfair_lock_assert_owner(*(v4[9] + 16));
  v21 = *a1;
  v22 = a1[1];
  swift_beginAccess();
  v23 = v4[11];
  v68 = v21;
  v74[0] = v21;
  v74[1] = v22;
  v24 = *(v8 + 80);
  v25 = *(v8 + 88);
  v26 = type metadata accessor for Activity();

  v71 = v26;
  sub_1A2D083D4();

  if (v75)
  {

    __break(1u);
  }

  else
  {
    v69 = a2;
    if (qword_1ED708BB8 != -1)
    {
      swift_once();
    }

    v27 = sub_1A2D08094();
    v28 = __swift_project_value_buffer(v27, qword_1ED708BC0);
    sub_1A2C7C04C(a1, v20, type metadata accessor for ActivityDescriptor);

    v66 = v28;
    v29 = sub_1A2D08074();
    v30 = sub_1A2D086A4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v63 = v12;
      v33 = v32;
      v74[0] = v32;
      *v31 = 136446466;
      v65 = a1;
      v34 = v4[2];
      v35 = v4[3];

      v36 = sub_1A2C55558(v34, v35, v74);
      v64 = v22;
      v37 = v36;

      *(v31 + 4) = v37;
      *(v31 + 12) = 2082;
      v38 = *v20;
      v39 = v20[1];

      sub_1A2C73FB0(v20, type metadata accessor for ActivityDescriptor);
      v40 = sub_1A2C55558(v38, v39, v74);
      a1 = v65;

      *(v31 + 14) = v40;
      v22 = v64;
      _os_log_impl(&dword_1A2C51000, v29, v30, "[%{public}s] Creating activity: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      v41 = v33;
      v12 = v63;
      MEMORY[0x1A58E5180](v41, -1, -1);
      MEMORY[0x1A58E5180](v31, -1, -1);
    }

    else
    {

      sub_1A2C73FB0(v20, type metadata accessor for ActivityDescriptor);
    }

    v42 = v72;
    v43 = v70;
    sub_1A2C7C04C(a1, v70, type metadata accessor for ActivityDescriptor);
    LOBYTE(v74[0]) = v42;
    sub_1A2C7C04C(v69, v12, type metadata accessor for OpaqueActivityContent);
    if (qword_1ED709CF0 != -1)
    {
      swift_once();
    }

    v44 = off_1ED709CF8;

    v45 = v44;
    v46 = v73;
    v47 = sub_1A2C7FA44(v43, v74, v12, v45);
    if (!v46)
    {
      LOBYTE(v74[0]) = v42;
      sub_1A2C8079C(v74);
      v77 = v47;
      v75 = v68;
      v76 = v22;
      swift_beginAccess();
      sub_1A2D083C4();

      sub_1A2D083E4();
      swift_endAccess();
      sub_1A2C8081C();
      if (LOBYTE(v74[0]) == 3)
      {
        sub_1A2C7C04C(a1, v67, type metadata accessor for ActivityDescriptor);

        v48 = sub_1A2D08074();
        v49 = sub_1A2D086A4();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = v67;
          v52 = v50;
          v53 = swift_slowAlloc();
          v74[0] = v53;
          *v52 = 136446466;
          v55 = v4[2];
          v54 = v4[3];

          v56 = sub_1A2C55558(v55, v54, v74);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2082;
          v57 = *v51;
          v58 = v51[1];

          sub_1A2C73FB0(v51, type metadata accessor for ActivityDescriptor);
          v59 = sub_1A2C55558(v57, v58, v74);

          *(v52 + 14) = v59;
          _os_log_impl(&dword_1A2C51000, v48, v49, "[%{public}s] Not publishing activity because it is already dismissed: %{public}s", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1A58E5180](v53, -1, -1);
          MEMORY[0x1A58E5180](v52, -1, -1);
        }

        else
        {

          sub_1A2C73FB0(v67, type metadata accessor for ActivityDescriptor);
        }
      }

      else
      {
        v60 = v4[13];
        v74[0] = v47;

        sub_1A2D08124();
      }
    }

    return v47;
  }

  return result;
}

char *sub_1A2C7FA44(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v47 = a3;
  v43 = a2;
  v6 = type metadata accessor for ActivityDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OpaqueActivityContent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = v4;
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v46[0] = AssociatedTypeWitness;
  v46[1] = AssociatedConformanceWitness;
  v38 = v16;
  v39 = AssociatedConformanceWitness;
  v46[2] = v16;
  v46[3] = v17;
  v37 = v17;
  v18 = type metadata accessor for ActivityContent();
  v35 = *(v18 - 8);
  v19 = *(v35 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v42 = &v33[-v21];
  v22 = *(v12 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v33[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = v44;
  v27 = *v43;
  v28 = a1;
  ActivityDescriptor.decodeAttributes<A>(for:)(v12, v12, v13);
  if (v26)
  {

    sub_1A2C69F84(v47, type metadata accessor for OpaqueActivityContent);
    sub_1A2C69F84(a1, type metadata accessor for ActivityDescriptor);
  }

  else
  {
    v34 = v27;
    v43 = v18;
    v44 = v22;
    v29 = v40;
    sub_1A2C7FF28(v47, v40, type metadata accessor for OpaqueActivityContent);
    ActivityContent.init(from:)(v29, AssociatedTypeWitness, v39, v38, v37, v42);
    v30 = v36;
    sub_1A2C7FF28(a1, v36, type metadata accessor for ActivityDescriptor);
    LOBYTE(v46[0]) = v34;
    v31 = v42;
    v28 = sub_1A2C80130(v30, v25, v46, v42, v45);

    sub_1A2C69F84(v47, type metadata accessor for OpaqueActivityContent);
    sub_1A2C69F84(a1, type metadata accessor for ActivityDescriptor);
    (*(v35 + 8))(v31, v43);
    (*(v44 + 8))(v25, v12);
  }

  return v28;
}

uint64_t ActivityDescriptor.decodeAttributes<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A2D07D54();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1A2D07D44();
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(a3 + 8);
  sub_1A2D07D34();
}

uint64_t sub_1A2C7FF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A2D07D54();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1A2D07D44();
  v19 = *a1;
  v20 = a1[1];
  sub_1A2D07D34();

  if (v6)
  {
    return sub_1A2C6FD00(a1);
  }

  (*(v12 + 32))(a6, v15, a2);
  v22 = type metadata accessor for OpaqueActivityContent();
  v23 = *(v22 + 20);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = v27;
  v24 = type metadata accessor for ActivityContent();
  sub_1A2C7214C(a1 + v23, a6 + *(v24 + 52));
  v25 = *(a1 + *(v22 + 24));
  result = sub_1A2C6FD00(a1);
  *(a6 + *(v24 + 56)) = v25;
  return result;
}

{
  v38 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v40 = &v36 - v13;
  v39 = *(a2 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  type metadata accessor for ActivityContent.CodingKeys();
  swift_getWitnessTable();
  v46 = sub_1A2D08A74();
  v44 = *(v46 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v19 = &v36 - v18;
  v45 = a2;
  v48 = a2;
  v49 = a3;
  v42 = a3;
  v50 = a4;
  v51 = a5;
  v20 = type metadata accessor for ActivityContent();
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v19;
  v25 = v47;
  sub_1A2D08C64();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = v23;
  v27 = v39;
  v26 = v40;
  LOBYTE(v48) = 0;
  v28 = v41;
  v29 = v45;
  v30 = v43;
  sub_1A2D08A54();
  v31 = v47;
  (*(v27 + 32))(v47, v28, v29);
  sub_1A2D07F94();
  LOBYTE(v48) = 1;
  sub_1A2C6D4B0(&qword_1ED7097D0, MEMORY[0x1E6969530]);
  sub_1A2D08A14();
  sub_1A2C639DC(v26, &v31[*(v20 + 52)], &qword_1EB0A0E28, &unk_1A2D0EC10);
  LOBYTE(v48) = 2;
  sub_1A2D08A44();
  v33 = v32;
  (*(v44 + 8))(v30, v46);
  *&v31[*(v20 + 56)] = v33;
  v34 = v37;
  (*(v37 + 16))(v38, v31, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v34 + 8))(v31, v20);
}

char *sub_1A2C80130(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  v13 = type metadata accessor for Activity();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  return sub_1A2C801A4(a1, a2, a3, a4, a5);
}

char *sub_1A2C801A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a5;
  v50 = a4;
  v46 = a2;
  v44 = a1;
  v8 = *v5;
  v9 = *(*v5 + 88);
  v40 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = AssociatedTypeWitness;
  v53 = swift_getAssociatedConformanceWitness();
  v54 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ActivityContent();
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = (MEMORY[0x1EEE9AC00])();
  v45 = v36 - v14;
  v43 = *(AssociatedTypeWitness - 8);
  v15 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v41 = v36 - v16;
  v38 = sub_1A2D086E4();
  v17 = *(v38 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A2D086C4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = sub_1A2D08314();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v39 = *a3;
  v37 = *(v8 + 152);
  v25 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v36[1] = "criptor";
  v36[2] = v25;
  sub_1A2D082F4();
  AssociatedTypeWitness = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8098], v38);
  *&v6[v37] = sub_1A2D08724();
  *&v6[*(*v6 + 160)] = MEMORY[0x1E69E7CD0];
  v26 = v44;
  sub_1A2C7FF28(v44, &v6[*(*v6 + 136)], type metadata accessor for ActivityDescriptor);
  v27 = v26[1];
  *(v6 + 2) = *v26;
  *(v6 + 3) = v27;
  (*(*(v40 - 8) + 16))(&v6[*(*v6 + 128)], v46);
  *&v6[*(*v6 + 144)] = v49;
  LOBYTE(AssociatedTypeWitness) = v39;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E40, &unk_1A2D0EC30);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  *(v6 + 4) = sub_1A2D081B4();
  v31 = v42;
  sub_1A2D08194();
  v32 = v50;
  (*(v43 + 16))(v41, v50, v31);
  *(v6 + 5) = sub_1A2D081A4();
  v33 = v47;
  sub_1A2D08194();
  (*(v48 + 16))(v45, v32, v33);
  v34 = sub_1A2D081A4();
  sub_1A2C69F84(v26, type metadata accessor for ActivityDescriptor);
  *(v6 + 6) = v34;
  return v6;
}

uint64_t sub_1A2C8079C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 32);

  sub_1A2D08174();

  if (v3 == 3)
  {
    v6 = *(v2 + 32);

    sub_1A2D08164();
  }

  return result;
}

uint64_t sub_1A2C8081C()
{
  v1 = *(v0 + 32);

  sub_1A2D08184();
}

uint64_t sub_1A2C80880(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v5 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v6 = a2[11];
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  type metadata accessor for Activity();

  sub_1A2D083D4();
}

void sub_1A2C809A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1A2D07EC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1A2C80A04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A2C80A14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ActivityDescriptorContentState();
      return sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ActivityDescriptorContentState);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB4414();
    goto LABEL_7;
  }

  sub_1A2CB33B4(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for ActivityDescriptorContentState, type metadata accessor for ActivityDescriptorContentState);
}

uint64_t ACActivityDescriptor.init(descriptor:)(uint64_t a1)
{
  v2 = *a1;
  v202 = *(a1 + 8);
  v207 = *(a1 + 136);
  v204 = *(a1 + 138);
  v205 = *(a1 + 137);
  v235 = *(a1 + 112);
  v236 = *(a1 + 128);
  sub_1A2C569A0(0, &qword_1ED7088D0, off_1E76B6510);
  v230 = *(a1 + 112);
  v231 = *(a1 + 128);
  sub_1A2C66F58(&v235, v229);
  sub_1A2C81D68(&v230);
  v203 = v3;
  v4 = sub_1A2D07EB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  v7 = type metadata accessor for ActivityDescriptor();
  sub_1A2C60E98(&qword_1ED708D60, type metadata accessor for ActivityDescriptor);
  v8 = sub_1A2D07E94();
  v10 = v9;
  v11 = sub_1A2D07F24();
  sub_1A2C55840(v8, v10);

  v12 = sub_1A2D07F44();
  v208 = v13;
  v209 = v12;

  v14 = (a1 + *(v7 + 68));
  v200 = *v14;
  v201 = v7;
  v206 = v14[1];
  v210 = a1;
  v15 = *(a1 + 88);
  v18 = *(v15 + 64);
  v17 = v15 + 64;
  v16 = v18;
  v19 = 1 << *(*(a1 + 88) + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v215 = *(a1 + 88);

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v224 = MEMORY[0x1E69E7CC8];
  for (i = v22; ; v22 = i)
  {
    v223 = v24;
    if (!v21)
    {
      break;
    }

    v27 = v23;
LABEL_12:
    v28 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v29 = v28 | (v27 << 6);
    v30 = *(*(v215 + 48) + v29);
    v31 = *(v215 + 56) + 48 * v29;
    v32 = *v31;
    v33 = *(v31 + 8);
    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    v36 = *(v31 + 32);
    v219 = v30;
    v37 = qword_1A2D18668[v30];
    v226 = *v31;
    if ((*(v31 + 40) & 1) == 0)
    {
      v49 = objc_allocWithZone(ACActivityPresentationDestination);
      *&v230 = v32;
      *(&v230 + 1) = v33;
      v231 = v35;
      v232 = v34;
      v233 = v36;
      v234 = 0;
      sub_1A2C6BD18(&v230, v229, &qword_1EB0A18F8, &qword_1A2D17D60);
      v50 = [v49 initWithDestination_];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v229[0] = v224;
      v52 = sub_1A2C82C60(v50);
      v54 = *(v224 + 16);
      v55 = (v53 & 1) == 0;
      v45 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v45)
      {
        goto LABEL_139;
      }

      v57 = v53;
      if (*(v224 + 24) >= v56)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = v52;
          sub_1A2CB42A4();
          v52 = v100;
        }
      }

      else
      {
        sub_1A2C82CAC(v56, isUniquelyReferenced_nonNull_native);
        v52 = sub_1A2C82C60(v50);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_159;
        }
      }

      v62 = v229[0];
      v224 = v229[0];
      if (v57)
      {
        v63 = (*(v229[0] + 56) + 16 * v52);
        v64 = v63[1];
        *v63 = v226;
        v63[1] = v33;
      }

      else
      {
        *(v229[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
        *(v62[6] + 8 * v52) = v50;
        v72 = (v62[7] + 16 * v52);
        *v72 = v226;
        v72[1] = v33;
        v73 = v62[2];
        v45 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v45)
        {
          goto LABEL_151;
        }

        v62[2] = v74;
      }

      v68 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
      sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
      v75 = sub_1A2D087A4();
      v76 = v223;
      if ((v223 & 0xC000000000000001) != 0)
      {
        if (v223 >= 0)
        {
          v76 = v223 & 0xFFFFFFFFFFFFFF8;
        }

        v77 = sub_1A2D08924();
        if (__OFADD__(v77, 1))
        {
          goto LABEL_148;
        }

        v76 = sub_1A2D06894(v76, v77 + 1);
      }

      v78 = swift_isUniquelyReferenced_nonNull_native();
      v229[0] = v76;
      v79 = sub_1A2C82C60(v68);
      v81 = *(v76 + 16);
      v82 = (v80 & 1) == 0;
      v45 = __OFADD__(v81, v82);
      v83 = v81 + v82;
      if (v45)
      {
        goto LABEL_141;
      }

      v84 = v80;
      if (*(v76 + 24) < v83)
      {
        sub_1A2C82FF4(v83, v78);
        v79 = sub_1A2C82C60(v68);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_159;
        }

        goto LABEL_48;
      }

      if (v78)
      {
LABEL_48:
        v24 = v229[0];
        if (v84)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v101 = v79;
        sub_1A2CB4144();
        v79 = v101;
        v24 = v229[0];
        if (v84)
        {
LABEL_49:
          v86 = v24[7];
          v87 = *(v86 + 8 * v79);
          *(v86 + 8 * v79) = v75;

          goto LABEL_5;
        }
      }

      v24[(v79 >> 6) + 8] |= 1 << v79;
      *(v24[6] + 8 * v79) = v68;
      *(v24[7] + 8 * v79) = v75;
      sub_1A2C732E4();
      v102 = v24[2];
      v45 = __OFADD__(v102, 1);
      v98 = v102 + 1;
      if (v45)
      {
        goto LABEL_153;
      }

      goto LABEL_62;
    }

    v38 = objc_allocWithZone(ACActivityPresentationDestination);

    v39 = [v38 initWithDestination_];

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v230 = v224;
    v41 = sub_1A2C82C60(v39);
    v43 = *(v224 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_140;
    }

    v47 = v42;
    if (*(v224 + 24) >= v46)
    {
      if ((v40 & 1) == 0)
      {
        v99 = v41;
        sub_1A2CB42A4();
        v41 = v99;
      }
    }

    else
    {
      sub_1A2C82CAC(v46, v40);
      v41 = sub_1A2C82C60(v39);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_159;
      }
    }

    v59 = v230;
    v224 = v230;
    if (v47)
    {
      v60 = (*(v230 + 56) + 16 * v41);
      v61 = v60[1];
      *v60 = v226;
      v60[1] = v33;
    }

    else
    {
      *(v230 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      *(v59[6] + 8 * v41) = v39;
      v65 = (v59[7] + 16 * v41);
      *v65 = v226;
      v65[1] = v33;
      v66 = v59[2];
      v45 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v45)
      {
        goto LABEL_152;
      }

      v59[2] = v67;
    }

    v68 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
    sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
    v69 = sub_1A2D087A4();
    v70 = v223;
    if ((v223 & 0xC000000000000001) != 0)
    {
      if (v223 >= 0)
      {
        v70 = v223 & 0xFFFFFFFFFFFFFF8;
      }

      v71 = sub_1A2D08924();
      if (__OFADD__(v71, 1))
      {
        goto LABEL_147;
      }

      v70 = sub_1A2D06894(v70, v71 + 1);
    }

    v88 = swift_isUniquelyReferenced_nonNull_native();
    *&v230 = v70;
    v90 = sub_1A2C82C60(v68);
    v91 = *(v70 + 16);
    v92 = (v89 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_142;
    }

    v94 = v89;
    if (*(v70 + 24) >= v93)
    {
      if (v88)
      {
        v24 = v230;
        if (v89)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A2CB4144();
        v24 = v230;
        if (v94)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A2C82FF4(v93, v88);
      v95 = sub_1A2C82C60(v68);
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_159;
      }

      v90 = v95;
      v24 = v230;
      if (v94)
      {
LABEL_4:
        v25 = v24[7];
        v26 = *(v25 + 8 * v90);
        *(v25 + 8 * v90) = v69;

LABEL_5:
        sub_1A2C732E4();

        goto LABEL_6;
      }
    }

    v24[(v90 >> 6) + 8] |= 1 << v90;
    *(v24[6] + 8 * v90) = v68;
    *(v24[7] + 8 * v90) = v69;
    sub_1A2C732E4();
    v97 = v24[2];
    v45 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (v45)
    {
      goto LABEL_154;
    }

LABEL_62:
    v24[2] = v98;
LABEL_6:
    v23 = v27;
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_138;
    }

    if (v27 >= v22)
    {
      break;
    }

    v21 = *(v17 + 8 * v27);
    ++v23;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  v103 = *(v210 + 96);
  v106 = *(v103 + 64);
  v105 = v103 + 64;
  v104 = v106;
  v107 = 1 << *(*(v210 + 96) + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v109 = v108 & v104;
  v110 = (v107 + 63) >> 6;
  v214 = *(v210 + 96);

  v111 = 0;
  v112 = MEMORY[0x1E69E7CC8];
  v113 = MEMORY[0x1E69E7CC8];
  v211 = v105;
  v212 = v110;
  while (2)
  {
    if (v109)
    {
      v220 = v113;
      v116 = v111;
LABEL_77:
      v117 = __clz(__rbit64(v109));
      v109 &= v109 - 1;
      v118 = v117 | (v116 << 6);
      v119 = *(*(v214 + 48) + v118);
      v120 = *(v214 + 56) + 48 * v118;
      v121 = *v120;
      v122 = *(v120 + 8);
      v124 = *(v120 + 16);
      v123 = *(v120 + 24);
      v125 = *(v120 + 32);
      v217 = v119;
      v126 = qword_1A2D18668[v119];
      v227 = *v120;
      if (*(v120 + 40))
      {
        v127 = objc_allocWithZone(ACActivityPresentationDestination);

        v128 = [v127 initWithDestination_];

        v129 = swift_isUniquelyReferenced_nonNull_native();
        *&v230 = v220;
        v130 = sub_1A2C82C60(v128);
        v132 = v220[2];
        v133 = (v131 & 1) == 0;
        v45 = __OFADD__(v132, v133);
        v134 = v132 + v133;
        if (v45)
        {
          goto LABEL_143;
        }

        v135 = v131;
        if (v220[3] >= v134)
        {
          if (v129)
          {
            goto LABEL_87;
          }

          v168 = v130;
          sub_1A2CB42A4();
          v130 = v168;
          v113 = v230;
          if ((v135 & 1) == 0)
          {
            goto LABEL_112;
          }

LABEL_88:
          v147 = (v113[7] + 16 * v130);
          v148 = v147[1];
          *v147 = v227;
          v147[1] = v122;
        }

        else
        {
          sub_1A2C82CAC(v134, v129);
          v130 = sub_1A2C82C60(v128);
          if ((v135 & 1) != (v136 & 1))
          {
            goto LABEL_159;
          }

LABEL_87:
          v113 = v230;
          if (v135)
          {
            goto LABEL_88;
          }

LABEL_112:
          v113[(v130 >> 6) + 8] |= 1 << v130;
          *(v113[6] + 8 * v130) = v128;
          v169 = (v113[7] + 16 * v130);
          *v169 = v227;
          v169[1] = v122;
          v170 = v113[2];
          v45 = __OFADD__(v170, 1);
          v171 = v170 + 1;
          if (v45)
          {
            goto LABEL_156;
          }

          v113[2] = v171;
        }

        v154 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        v221 = sub_1A2D087A4();
        if ((v112 & 0xC000000000000001) != 0)
        {
          if (v112 < 0)
          {
            v172 = v112;
          }

          else
          {
            v172 = v112 & 0xFFFFFFFFFFFFFF8;
          }

          v173 = sub_1A2D08924();
          if (__OFADD__(v173, 1))
          {
            goto LABEL_149;
          }

          v112 = sub_1A2D06894(v172, v173 + 1);
        }

        v174 = swift_isUniquelyReferenced_nonNull_native();
        *&v230 = v112;
        v176 = sub_1A2C82C60(v154);
        v177 = *(v112 + 16);
        v178 = (v175 & 1) == 0;
        v179 = v177 + v178;
        if (__OFADD__(v177, v178))
        {
          goto LABEL_146;
        }

        v180 = v175;
        if (*(v112 + 24) >= v179)
        {
          if ((v174 & 1) == 0)
          {
            sub_1A2CB4144();
          }
        }

        else
        {
          sub_1A2C82FF4(v179, v174);
          v181 = sub_1A2C82C60(v154);
          if ((v180 & 1) != (v182 & 1))
          {
            goto LABEL_159;
          }

          v176 = v181;
        }

        v112 = v230;
        if (v180)
        {
          v183 = *(v230 + 56);
          v184 = *(v183 + 8 * v176);
          *(v183 + 8 * v176) = v221;

LABEL_69:
          sub_1A2C732E4();

LABEL_70:
          v111 = v116;
          v105 = v211;
          v110 = v212;
          continue;
        }

        *(v230 + 8 * (v176 >> 6) + 64) |= 1 << v176;
        *(*(v112 + 48) + 8 * v176) = v154;
        *(*(v112 + 56) + 8 * v176) = v221;
        sub_1A2C732E4();
        v185 = *(v112 + 16);
        v45 = __OFADD__(v185, 1);
        v167 = v185 + 1;
        if (v45)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v137 = objc_allocWithZone(ACActivityPresentationDestination);
        *&v230 = v121;
        *(&v230 + 1) = v122;
        v231 = v124;
        v232 = v123;
        v233 = v125;
        v234 = 0;
        sub_1A2C6BD18(&v230, v229, &qword_1EB0A18F8, &qword_1A2D17D60);
        v138 = [v137 initWithDestination_];

        v139 = swift_isUniquelyReferenced_nonNull_native();
        v229[0] = v220;
        v140 = sub_1A2C82C60(v138);
        v142 = v220[2];
        v143 = (v141 & 1) == 0;
        v45 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v45)
        {
          goto LABEL_144;
        }

        v145 = v141;
        if (v220[3] >= v144)
        {
          if ((v139 & 1) == 0)
          {
            v186 = v140;
            sub_1A2CB42A4();
            v140 = v186;
          }
        }

        else
        {
          sub_1A2C82CAC(v144, v139);
          v140 = sub_1A2C82C60(v138);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_159;
          }
        }

        v113 = v229[0];
        if (v145)
        {
          v149 = (*(v229[0] + 56) + 16 * v140);
          v150 = v149[1];
          *v149 = v227;
          v149[1] = v122;
        }

        else
        {
          *(v229[0] + 8 * (v140 >> 6) + 64) |= 1 << v140;
          *(v113[6] + 8 * v140) = v138;
          v151 = (v113[7] + 16 * v140);
          *v151 = v227;
          v151[1] = v122;
          v152 = v113[2];
          v45 = __OFADD__(v152, 1);
          v153 = v152 + 1;
          if (v45)
          {
            goto LABEL_155;
          }

          v113[2] = v153;
        }

        v154 = [objc_allocWithZone(ACActivityPresentationDestination) initWithDestination_];
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        v155 = sub_1A2D087A4();
        if ((v112 & 0xC000000000000001) != 0)
        {
          if (v112 < 0)
          {
            v156 = v112;
          }

          else
          {
            v156 = v112 & 0xFFFFFFFFFFFFFF8;
          }

          v157 = sub_1A2D08924();
          if (__OFADD__(v157, 1))
          {
            goto LABEL_150;
          }

          v112 = sub_1A2D06894(v156, v157 + 1);
        }

        v158 = swift_isUniquelyReferenced_nonNull_native();
        v229[0] = v112;
        v159 = sub_1A2C82C60(v154);
        v161 = *(v112 + 16);
        v162 = (v160 & 1) == 0;
        v45 = __OFADD__(v161, v162);
        v163 = v161 + v162;
        if (v45)
        {
          goto LABEL_145;
        }

        v164 = v160;
        if (*(v112 + 24) >= v163)
        {
          if ((v158 & 1) == 0)
          {
            v187 = v159;
            sub_1A2CB4144();
            v159 = v187;
          }
        }

        else
        {
          sub_1A2C82FF4(v163, v158);
          v159 = sub_1A2C82C60(v154);
          if ((v164 & 1) != (v165 & 1))
          {
            goto LABEL_159;
          }
        }

        v112 = v229[0];
        if (v164)
        {
          v114 = *(v229[0] + 56);
          v115 = *(v114 + 8 * v159);
          *(v114 + 8 * v159) = v155;

          goto LABEL_69;
        }

        *(v229[0] + 8 * (v159 >> 6) + 64) |= 1 << v159;
        *(*(v112 + 48) + 8 * v159) = v154;
        *(*(v112 + 56) + 8 * v159) = v155;
        sub_1A2C732E4();
        v166 = *(v112 + 16);
        v45 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (v45)
        {
          goto LABEL_157;
        }
      }

      *(v112 + 16) = v167;
      goto LABEL_70;
    }

    break;
  }

  while (1)
  {
    v116 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v116 >= v110)
    {

      v188 = (v210 + v201[16]);
      v189 = v188[1];
      v216 = *v188;
      v218 = qword_1A2D18640[*(v210 + v201[18])];
      v228 = sub_1A2D08434();
      sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
      sub_1A2C8325C();
      v222 = sub_1A2D08384();

      v190 = sub_1A2D08384();

      v191 = v210 + v201[15];
      v225 = sub_1A2D07F54();
      v192 = sub_1A2D07F24();
      sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
      v193 = sub_1A2D08384();

      v194 = sub_1A2D08384();

      if (v189)
      {
        v195 = sub_1A2D08434();
      }

      else
      {
        v195 = 0;
      }

      if (v206)
      {
        v196 = sub_1A2D08434();
      }

      else
      {
        v196 = 0;
      }

      LOBYTE(v199) = v204;
      v197 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v228 sceneTargets:v222 alertSceneTargets:v190 presentationOptions:v203 isEphemeral:v207 isMomentary:v205 isImportant:v199 createdDate:v225 descriptorData:v192 contentTypesByDestination:v193 alertContentTypesByDestination:v194 remoteDeviceIdentifier:v195 localizedAppName:v196 protectionClass:v218];
      sub_1A2C55840(v209, v208);

      sub_1A2C78A08(v210);
      return v197;
    }

    v109 = *(v105 + 8 * v116);
    ++v111;
    if (v109)
    {
      v220 = v113;
      goto LABEL_77;
    }
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
  sub_1A2D08B84();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}