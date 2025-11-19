unint64_t sub_19216E4E8()
{
  result = qword_1EADF1320;
  if (!qword_1EADF1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1320);
  }

  return result;
}

unint64_t sub_19216E53C()
{
  result = qword_1EADF1328;
  if (!qword_1EADF1328)
  {
    type metadata accessor for CHSTintAccentedDesaturatedMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1328);
  }

  return result;
}

uint64_t sub_19216E598(uint64_t a1)
{
  v2 = sub_192042C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216E5D4(uint64_t a1)
{
  v2 = sub_192042C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19216E610()
{
  if (*v0)
  {
    result = 1702195828;
  }

  else
  {
    result = 0x65736C6166;
  }

  *v0;
  return result;
}

uint64_t sub_19216E644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19216E6CC(uint64_t a1)
{
  v2 = sub_192046DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19216E708(uint64_t a1)
{
  v2 = sub_192046DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19216E7BC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_192225040();
}

uint64_t sub_19216E7D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_192224E30();
    if (v10)
    {
      v11 = sub_192224E50();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_192224E40();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_192224E30();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_192224E50();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_192224E40();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_19216EA08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_19216EB98(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_192039140(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_19216E7D8(v14, a3, a4, &v13);
  v10 = v4;
  sub_192039140(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_19216EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_192224E30();
  v11 = result;
  if (result)
  {
    result = sub_192224E50();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_192224E40();
  sub_19216E7D8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_19216EC50(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1920367C8(a3, a4);
          return sub_19216EA08(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_19216EDB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1330, &qword_19223A368);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  if (a2 >> 62 == 2)
  {
    v12 = *(a1 + 16);
  }

  sub_1920367C8(a1, a2);
  sub_1920367C8(a3, a4);
  sub_1920367C8(a1, a2);
  sub_1920367C8(a3, a4);
  sub_1922250A0();
  if (a4 >> 62 == 2)
  {
    v13 = *(a3 + 16);
  }

  v14 = *(v8 + 52);
  sub_1922250A0();
  v18 = *(v8 + 56);
  v11[v18] = 0;
  sub_192225090();
  sub_19216EFCC();
  while (1)
  {
    sub_192228270();
    if (v22)
    {
      break;
    }

    v15 = v21;
    sub_192228270();
    if (v20)
    {
      break;
    }

    if (v15 < v19)
    {
      sub_192039140(a1, a2);
      sub_192039140(a3, a4);
      v16 = 1;
      goto LABEL_11;
    }
  }

  sub_192039140(a1, a2);
  sub_192039140(a3, a4);
  v16 = 0;
  v11[v18] = 1;
LABEL_11:
  sub_19216F024(v11);
  return v16;
}

unint64_t sub_19216EFCC()
{
  result = qword_1EADF1338;
  if (!qword_1EADF1338)
  {
    sub_192225090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1338);
  }

  return result;
}

uint64_t sub_19216F024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1330, &qword_19223A368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19216F08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

unint64_t sub_19216F0E4()
{
  result = qword_1EADF1350;
  if (!qword_1EADF1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableBool(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_19216F1DC()
{
  result = qword_1EADF1368;
  if (!qword_1EADF1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1368);
  }

  return result;
}

uint64_t sub_19216F278()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224C460);
  MEMORY[0x193B0A990](*v0, *(v0 + 8));
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224A6E0);
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0xE100000000000000;
    v1 = 45;
  }

  MEMORY[0x193B0A990](v1, v2);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224C480);
  v3 = *(v0 + 32);
  v4 = sub_192227FC0();
  MEMORY[0x193B0A990](v4);

  MEMORY[0x193B0A990](0xD000000000000015, 0x800000019224C4A0);
  v5 = [*(v0 + 40) description];
  v6 = sub_192227960();
  v8 = v7;

  MEMORY[0x193B0A990](v6, v8);

  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224C4C0);
  v9 = sub_19216F428();
  MEMORY[0x193B0A990](v9);

  return 0;
}

uint64_t sub_19216F428()
{
  sub_1920B2B7C(v0, v5);
  if (v6)
  {
    sub_1920B2BD8(v5);
    return 4804673;
  }

  else
  {
    sub_19209CBAC(v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    swift_getDynamicType();
    v2 = sub_192228BD0();
    MEMORY[0x193B0A990](v2);

    v1 = 675893331;
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v1;
}

unint64_t sub_19216F4E8(uint64_t a1)
{
  result = sub_19216F510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19216F510()
{
  result = qword_1EADEE5F8;
  if (!qword_1EADEE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5F8);
  }

  return result;
}

uint64_t sub_19216F568(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1922289A0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    sub_1920EDA18();
    v8 = a1[5];
    v9 = a2[5];
    return sub_1922281D0() & 1;
  }

  return 0;
}

uint64_t EnvironmentValues._developmentMode.getter()
{
  sub_192056F6C();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._developmentMode.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192056F6C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19216F700;
}

uint64_t sub_19216F700(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t EnvironmentValues.activityFamily.getter()
{
  sub_19216F7A4();

  return sub_1922261E0();
}

unint64_t sub_19216F7A4()
{
  result = qword_1EADEE510[0];
  if (!qword_1EADEE510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEE510);
  }

  return result;
}

uint64_t sub_19216F7F8@<X0>(_BYTE *a1@<X8>)
{
  sub_19216F7A4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19216F848(char *a1)
{
  v2 = *a1;
  sub_19216F7A4();
  return sub_1922261F0();
}

uint64_t EnvironmentValues.activityFamily.setter(char *a1)
{
  v2 = *a1;
  sub_19216F7A4();
  return sub_1922261F0();
}

WidgetKit::ActivityFamily_optional __swiftcall ActivityFamily.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ActivityFamily.description.getter()
{
  if (*v0)
  {
    result = 0x6D756964656DLL;
  }

  else
  {
    result = 0x6C6C616D73;
  }

  *v0;
  return result;
}

uint64_t sub_19216F9E8()
{
  if (*v0)
  {
    result = 0x6D756964656DLL;
  }

  else
  {
    result = 0x6C6C616D73;
  }

  *v0;
  return result;
}

uint64_t ActivityFamily.filePath.getter()
{
  if (*v0)
  {
    v1 = 0x6D756964656DLL;
  }

  else
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v1, v2);

  return 980246886;
}

uint64_t *sub_19216FA98@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result != 1)
  {
    LOBYTE(v2) = v2 != 0;
  }

  *a2 = v2;
  return result;
}

uint64_t WidgetConfiguration.supplementalActivityFamilies(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_1920797E8(sub_19216FB98, v2);
}

uint64_t sub_19216FB50()
{
  v0 = *(type metadata accessor for WidgetDescriptor(0) + 32);

  return sub_192167BF0(v1);
}

uint64_t (*EnvironmentValues.activityFamily.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_19216F7A4();
  sub_1922261E0();
  return sub_19216FC00;
}

uint64_t sub_19216FC00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t sub_19216FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1921704FC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19216FCA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192170368(&unk_1F06A83D8);
  *a1 = result;
  return result;
}

uint64_t sub_19216FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1921705B4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.supportedActivityFamilies.getter()
{
  sub_1921704A4();
  sub_1922261E0();
  return v1;
}

uint64_t sub_19216FD78(uint64_t *a1)
{
  v2 = *a1;
  sub_1921704A4();

  return sub_1922261F0();
}

uint64_t (*EnvironmentValues.supportedActivityFamilies.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1921704A4();
  sub_1922261E0();
  return sub_19216FE74;
}

uint64_t sub_19216FE74(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_1922261F0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_1922261F0();
  }
}

uint64_t sub_19216FF08(uint64_t a1)
{
  v2 = sub_192225790();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13B0, &qword_19223AE28);
    v10 = sub_1922283E0();
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
      sub_192170570(&qword_1ED74B278);
      v18 = sub_192227880();
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
          sub_192170570(&qword_1ED74B0C0);
          v25 = sub_192227910();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_192170200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D0, &qword_19223AE68);
    v3 = sub_1922283E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_192228AD0();

      sub_1922279B0();
      result = sub_192228B30();
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
          result = sub_1922289A0();
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_192170368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13D8, &qword_19223AE70);
    v3 = sub_1922283E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v10);
      result = sub_192228B30();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (v10 != *(v18 + v14))
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
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

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1921704A4()
{
  result = qword_1EADF13A8;
  if (!qword_1EADF13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF13A8);
  }

  return result;
}

unint64_t sub_1921704FC()
{
  result = qword_1EADED178;
  if (!qword_1EADED178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED178);
  }

  return result;
}

uint64_t sub_192170570(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_192225790();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921705B4()
{
  result = qword_1EADF13B8;
  if (!qword_1EADF13B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF13C0, &qword_19223AE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF13B8);
  }

  return result;
}

unint64_t sub_192170618()
{
  result = qword_1EADEE3C8[0];
  if (!qword_1EADEE3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEE3C8);
  }

  return result;
}

uint64_t static WidgetArchiver.archive(_:to:delegate:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
    v6 = sub_19217869C(v9, v7, v8);
  }

  v10 = a2;

  sub_192170900(a1, v6, v3, v10);
}

id sub_19217070C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1920EDA18();
    v5 = sub_192227830();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_192170798()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = sub_192227840();

    if (*(v3 + 16) && (v4 = sub_1920440AC(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_19202A98C(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_192170894@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_192170900(uint64_t *a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v126 = a4;
  v121 = a3;
  v124 = a2;
  v117 = sub_192226690();
  v116 = *(v117 - 8);
  v5 = *(v116 + 8);
  v6 = MEMORY[0x1EEE9AC00](v117);
  i = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v109 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v109 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v109 - v15);
  v120 = sub_192225800();
  v119 = *(v120 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v125 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v109 - v21;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(*(v23 + 8) + 32))(&aBlock, v24);
  v25 = aBlock;
  KeyPath = swift_getKeyPath();
  v27 = sub_192066C3C(KeyPath);

  if (!v27)
  {
    goto LABEL_63;
  }

  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_62;
  }

  if (!sub_192228340())
  {
LABEL_62:

LABEL_63:
    sub_192179630();
    swift_allocError();
    *v108 = 0u;
    *(v108 + 16) = 0u;
    *(v108 + 32) = 3;
    swift_willThrow();
    goto LABEL_64;
  }

LABEL_4:
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_68;
  }

  v28 = *(v27 + 32);
  while (2)
  {
    v29 = v28;

    [v29 size];

    type metadata accessor for WGAutoreleasePool();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v31 = _widgetkit_objc_autoreleasePoolPush();
    v118 = inited;
    v113 = v31;
    *(inited + 16) = v31;
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(v33 + 16))(&aBlock, v32, v33);
    v115 = aBlock;
    v114 = v128;
    aBlock = sub_192227570();
    v136[1] = v124;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13F8, &qword_19223B370);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v123 = sub_1922264B0();
    sub_192226490();
    v38 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    (*(*(v37 + 8) + 32))(&aBlock, v38);
    v39 = aBlock;
    v40 = swift_getKeyPath();
    v27 = sub_192099DDC(v40);

    if (v27)
    {
      if (*(v27 + 16))
      {
        LODWORD(v27) = *(v27 + 32);

        if (v27 != 3)
        {
          if (qword_1ED74C6B0 != -1)
          {
            goto LABEL_69;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v51 = a1[3];
      v52 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v51);
      (*(*(v52 + 8) + 32))(&aBlock, v51);
      v53 = aBlock;
      v54 = swift_getKeyPath();
      v55 = sub_1920668D0(v54);

      if (v55)
      {
        i = v124;
        v56 = v118;
        if (*(v55 + 16))
        {
          v57 = *(v55 + 32);
        }
      }

      else
      {
        i = v124;
        v56 = v118;
      }

      sub_192226450();
      v58 = a1[3];
      v59 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v58);
      (*(*(v59 + 8) + 32))(&aBlock, v58);
      v60 = aBlock;
      v61 = swift_getKeyPath();
      v62 = sub_1920668D0(v61);

      if (v62)
      {
        if (*(v62 + 16))
        {
          v63 = *(v62 + 32);

          sub_192226470();
        }

        else
        {
        }
      }

      v64 = *(i + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes);

      sub_192226410();
      sub_19202CFFC(i + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType, v22, &qword_1EADF13E8, &qword_19223AEB0);
      sub_192226400();
      v130 = &type metadata for FeatureFlags.Widgets;
      v131 = sub_19202DBA4();
      LOBYTE(aBlock) = 19;
      v65 = sub_192225420();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v65)
      {
        sub_192226480();
      }

      v66 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
      swift_beginAccess();
      if (*(i + v66) == 1)
      {
        v67 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
        swift_beginAccess();
        v68 = *(i + v67);
        *(i + v67) = MEMORY[0x1E69E7CC8];
      }

      _widgetkit_objc_autoreleasePoolPop(v113);
      v56[2] = _widgetkit_objc_autoreleasePoolPush();
      v135 = 0;
      v136[0] = MEMORY[0x1E69E7CC0];
      v133 = 0;
      v134 = 0;
      if (qword_1ED74B868[0] != -1)
      {
        swift_once();
      }

      v69 = qword_1ED74CBE0;
      v70 = a1[3];
      v71 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v70);
      v72 = *(v71 + 8);
      v14 = (v72 + 16);
      v73 = *(v72 + 16);
      v22 = v69;
      v73(v70, v72);
      v11 = v125;
      sub_1922257D0();
      sub_1922280E0();
      v74 = sub_1922257C0();
      v16 = v115;
      v27 = v114;
      if ((v115[2] * *(v114 + 16)) >> 64 == (v115[2] * *(v114 + 16)) >> 63)
      {
        break;
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
LABEL_11:
      v41 = sub_1922258B0();
      __swift_project_value_buffer(v41, qword_1ED74CCC8);
      v42 = sub_192225890();
      v43 = sub_192227FB0();
      if (os_log_type_enabled(v42, v43))
      {
        v110 = v42;
        v44 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        aBlock = v109;
        v111 = v44;
        *v44 = 136446210;
        v112 = v43;
        if (v27)
        {
          sub_192226680();
        }

        else
        {
          sub_192226670();
        }

        (*(v116 + 4))(v16, v14, v117);
        v45 = sub_192227990();
        v47 = sub_19202B8CC(v45, v46, &aBlock);

        v48 = v111;
        *(v111 + 1) = v47;
        v49 = v110;
        _os_log_impl(&dword_192028000, v110, v112, "Archive deployment version: %{public}s", v48, 0xCu);
        v50 = v109;
        __swift_destroy_boxed_opaque_existential_1(v109);
        MEMORY[0x193B0C7F0](v50, -1, -1);
        MEMORY[0x193B0C7F0](v48, -1, -1);

        if (v27)
        {
LABEL_16:
          sub_192226680();
          goto LABEL_20;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_16;
        }
      }

      sub_192226670();
LABEL_20:
      (*(v116 + 4))(v11, i, v117);
      sub_192226430();
    }

    MEMORY[0x1EEE9AC00](v74);
    v14 = v118;
    *(&v109 - 12) = v118;
    *(&v109 - 11) = v16;
    v75 = v121;
    *(&v109 - 10) = v27;
    *(&v109 - 9) = v75;
    *(&v109 - 8) = v123;
    *(&v109 - 7) = i;
    *(&v109 - 6) = a1;
    *(&v109 - 5) = &v135;
    *(&v109 - 4) = v136;
    *(&v109 - 3) = &v134;
    *(&v109 - 2) = &v133;
    v11 = v126;
    v76 = v122;
    sub_192226390();
    v122 = v76;
    if (v76)
    {
      (*(v119 + 8))(v125, v120);

      _widgetkit_objc_autoreleasePoolPop(v14[2]);
      sub_192175598();

      return;
    }

    v77 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
    swift_beginAccess();
    if (*(i + v77))
    {
      v78 = v135;
      if (v135)
      {
        swift_willThrow();
        v79 = v78;
        (*(v119 + 8))(v125, v120);
        _widgetkit_objc_autoreleasePoolPop(v14[2]);
        sub_192175598();

        v80 = v78;
        goto LABEL_49;
      }
    }

    v81 = v134;
    v82 = v125;
    if (v134)
    {
      swift_willThrow();
      v83 = v81;
      (*(v119 + 8))(v82, v120);
      _widgetkit_objc_autoreleasePoolPop(v14[2]);
      sub_192175598();

      goto LABEL_47;
    }

    v81 = v133;
    if (!v133)
    {
      sub_1922280D0();
      sub_1922257C0();
      v86 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
      swift_beginAccess();
      v87 = *(i + v86);
      v88 = *(v87 + 64);
      v114 = v87 + 64;
      v89 = 1 << *(v87 + 32);
      v90 = -1;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      v22 = v90 & v88;
      v113 = ((v89 + 63) >> 6);
      v116 = "defaultImageType";
      v115 = &v129;
      v117 = v87;

      for (i = 0; v22; v14 = v118)
      {
        v91 = i;
LABEL_58:
        v92 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v93 = (v91 << 10) | (16 * v92);
        v94 = *(v117 + 48) + v93;
        v95 = *v94;
        v96 = *(v94 + 8);
        v97 = (*(v117 + 56) + v93);
        v98 = *v97;
        v99 = v97[1];
        v100 = a1[3];
        v101 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v100);
        v27 = *(v101 + 8);
        v121 = *(v27 + 16);
        v102 = v96;
        v103 = (v121)(v100, v27);
        v104 = swift_allocObject();
        *(v104 + 16) = v103;
        *(v104 + 24) = v95;
        *(v104 + 32) = v99;
        *(v104 + 40) = v102;
        *(v104 + 48) = v98;
        v16 = v102;
        v11 = v103;
        v105 = sub_192227930();
        v106 = swift_allocObject();
        *(v106 + 16) = sub_19217A848;
        *(v106 + 24) = v104;
        v131 = sub_19217A84C;
        v132 = v106;
        aBlock = MEMORY[0x1E69E9820];
        v128 = 1107296256;
        v129 = sub_19217070C;
        v130 = &block_descriptor_90;
        v107 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v107);

        v82 = v125;
      }

      while (1)
      {
        v91 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v91 >= v113)
        {

          sub_192175074();
          (*(v119 + 8))(v82, v120);
          _widgetkit_objc_autoreleasePoolPop(v14[2]);
          sub_192175598();

          v85 = 0;
          goto LABEL_48;
        }

        v22 = *(v114 + 8 * v91);
        i = (i + 1);
        if (v22)
        {
          i = v91;
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_66:
      v28 = MEMORY[0x193B0B410](0, v27);
      continue;
    }

    break;
  }

  swift_willThrow();
  v84 = v81;
  (*(v119 + 8))(v82, v120);
  _widgetkit_objc_autoreleasePoolPop(v14[2]);
  sub_192175598();

LABEL_47:
  v85 = v81;
LABEL_48:

  v80 = v135;
LABEL_49:

LABEL_64:
}

uint64_t sub_1921718D8(void *a1, char *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v123 = a4;
  v124 = a3;
  v128 = a2;
  v118 = sub_192226690();
  v117 = *(v118 - 1);
  v5 = *(v117 + 8);
  v6 = MEMORY[0x1EEE9AC00](v118);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v109 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v109 - v15;
  v121 = sub_192225800();
  v120 = *(v121 - 8);
  v17 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v127 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v109 - v21;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(*(v23 + 8) + 32))(&aBlock, v24);
  v25 = aBlock;
  KeyPath = swift_getKeyPath();
  j = sub_192066C3C(KeyPath);

  if (!j)
  {
    goto LABEL_64;
  }

  if (j >> 62)
  {
    if (sub_192228340())
    {
      goto LABEL_4;
    }

    goto LABEL_63;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:

LABEL_64:
    sub_192179630();
    swift_allocError();
    *v108 = 0u;
    *(v108 + 16) = 0u;
    *(v108 + 32) = 3;
    return swift_willThrow();
  }

LABEL_4:
  if ((j & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_68;
  }

  for (i = *(j + 32); ; i = MEMORY[0x193B0B410](0, j))
  {
    v29 = i;

    [v29 size];

    type metadata accessor for WGAutoreleasePool();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v31 = _widgetkit_objc_autoreleasePoolPush();
    v119 = inited;
    v114 = v31;
    *(inited + 16) = v31;
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(v33 + 16))(&aBlock, v32, v33);
    v116 = aBlock;
    v115 = v130;
    aBlock = sub_192227570();
    v138[1] = v128;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13F8, &qword_19223B370);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v126 = sub_1922264B0();
    sub_192226490();
    v38 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    (*(*(v37 + 8) + 32))(&aBlock, v38);
    v39 = aBlock;
    v40 = swift_getKeyPath();
    j = sub_192099DDC(v40);

    if (j)
    {
      if (*(j + 16))
      {
        LODWORD(j) = *(j + 32);

        if (j != 3)
        {
          if (qword_1ED74C6B0 != -1)
          {
            goto LABEL_69;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v52 = a1[3];
      v51 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v52);
      (*(*(v51 + 8) + 32))(&aBlock, v52);
      v53 = aBlock;
      v54 = swift_getKeyPath();
      v55 = sub_1920668D0(v54);

      if (v55)
      {
        v8 = v128;
        v56 = v119;
        if (*(v55 + 16))
        {
          v57 = *(v55 + 32);
        }
      }

      else
      {
        v8 = v128;
        v56 = v119;
      }

      sub_192226450();
      v59 = a1[3];
      v58 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v59);
      (*(*(v58 + 8) + 32))(&aBlock, v59);
      v60 = aBlock;
      v61 = swift_getKeyPath();
      v62 = sub_1920668D0(v61);

      if (v62)
      {
        if (*(v62 + 16))
        {
          v63 = *(v62 + 32);

          sub_192226470();
        }

        else
        {
        }
      }

      v64 = *&v8[OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes];

      sub_192226410();
      sub_19202CFFC(&v8[OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType], v22, &qword_1EADF13E8, &qword_19223AEB0);
      sub_192226400();
      v132 = &type metadata for FeatureFlags.Widgets;
      v133 = sub_19202DBA4();
      LOBYTE(aBlock) = 19;
      v65 = sub_192225420();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v65)
      {
        sub_192226480();
      }

      v66 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
      swift_beginAccess();
      if (v8[v66] == 1)
      {
        v67 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
        swift_beginAccess();
        v68 = *&v8[v67];
        *&v8[v67] = MEMORY[0x1E69E7CC8];
      }

      _widgetkit_objc_autoreleasePoolPop(v114);
      *(v56 + 16) = _widgetkit_objc_autoreleasePoolPush();
      v137 = 0;
      v138[0] = MEMORY[0x1E69E7CC0];
      v135 = 0;
      v136 = 0;
      if (qword_1ED74B868[0] != -1)
      {
        swift_once();
      }

      v69 = qword_1ED74CBE0;
      v22 = a1[3];
      v70 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      v71 = *(v70 + 8);
      v16 = *(v71 + 16);
      v14 = v69;
      (v16)(v22, v71);
      sub_1922257D0();
      sub_1922280E0();
      v72 = sub_1922257C0();
      v11 = v116;
      j = v115;
      if ((*(v116 + 16) * *(v115 + 16)) >> 64 == (*(v116 + 16) * *(v115 + 16)) >> 63)
      {
        break;
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
LABEL_11:
      v41 = sub_1922258B0();
      __swift_project_value_buffer(v41, qword_1ED74CCC8);
      v42 = sub_192225890();
      v43 = sub_192227FB0();
      if (os_log_type_enabled(v42, v43))
      {
        v111 = v42;
        v44 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        aBlock = v110;
        v112 = v44;
        *v44 = 136446210;
        v113 = v43;
        if (j)
        {
          sub_192226680();
        }

        else
        {
          sub_192226670();
        }

        (*(v117 + 4))(v16, v14, v118);
        v45 = sub_192227990();
        v47 = sub_19202B8CC(v45, v46, &aBlock);

        v48 = v112;
        *(v112 + 1) = v47;
        v49 = v111;
        _os_log_impl(&dword_192028000, v111, v113, "Archive deployment version: %{public}s", v48, 0xCu);
        v50 = v110;
        __swift_destroy_boxed_opaque_existential_1(v110);
        MEMORY[0x193B0C7F0](v50, -1, -1);
        MEMORY[0x193B0C7F0](v48, -1, -1);
      }

      else
      {
      }

      if (j)
      {
        sub_192226680();
      }

      else
      {
        sub_192226670();
      }

      (*(v117 + 4))(v11, v8, v118);
      sub_192226430();
    }

    MEMORY[0x1EEE9AC00](v72);
    v73 = v119;
    *(&v109 - 12) = v119;
    *(&v109 - 11) = v11;
    v74 = v122;
    *(&v109 - 10) = j;
    *(&v109 - 9) = v74;
    v75 = v126;
    *(&v109 - 8) = v126;
    *(&v109 - 7) = v8;
    *(&v109 - 6) = a1;
    *(&v109 - 5) = &v137;
    *(&v109 - 4) = v138;
    *(&v109 - 3) = &v136;
    *(&v109 - 2) = &v135;
    v76 = v125;
    v124(v75);
    if (v76)
    {
      (*(v120 + 8))(v127, v121);

      _widgetkit_objc_autoreleasePoolPop(*(v73 + 16));
      sub_192175598();

      v77 = v136;
      goto LABEL_49;
    }

    v125 = 0;

    v78 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
    swift_beginAccess();
    if (v8[v78])
    {
      v79 = v137;
      if (v137)
      {
        swift_willThrow();
        v80 = v79;
        (*(v120 + 8))(v127, v121);
        _widgetkit_objc_autoreleasePoolPop(*(v119 + 16));
        sub_192175598();

        v81 = v79;
        goto LABEL_50;
      }
    }

    v82 = v136;
    v16 = v127;
    if (v136)
    {
      swift_willThrow();
      v83 = v82;
      (*(v120 + 8))(v16, v121);
      _widgetkit_objc_autoreleasePoolPop(*(v119 + 16));
      sub_192175598();

      goto LABEL_48;
    }

    v82 = v135;
    if (v135)
    {
      break;
    }

    sub_1922280D0();
    sub_1922257C0();
    v86 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
    swift_beginAccess();
    v22 = *&v8[v86];
    v87 = *(v22 + 8);
    v117 = v22 + 64;
    v88 = 1 << v22[32];
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v14 = v89 & v87;
    v116 = (v88 + 63) >> 6;
    v122 = "defaultImageType";
    v118 = &v131;

    v11 = 0;
    for (j = v119; v14; j = v119)
    {
      v90 = v11;
LABEL_59:
      v91 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v92 = (v90 << 10) | (16 * v91);
      v93 = *(v22 + 7);
      v94 = (*(v22 + 6) + v92);
      LODWORD(v124) = *v94;
      v95 = *(v94 + 1);
      v96 = (v93 + v92);
      v97 = *v96;
      v98 = v96[1];
      v99 = a1[3];
      v100 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v99);
      v101 = *(v100 + 8);
      v123 = *(v101 + 16);
      v102 = v95;
      v103 = v123(v99, v101);
      v104 = swift_allocObject();
      *(v104 + 16) = v103;
      *(v104 + 24) = v124;
      *(v104 + 32) = v98;
      *(v104 + 40) = v102;
      *(v104 + 48) = v97;
      v8 = v102;
      v16 = v103;
      v105 = sub_192227930();
      v106 = swift_allocObject();
      *(v106 + 16) = sub_19217A848;
      *(v106 + 24) = v104;
      v133 = sub_19217A84C;
      v134 = v106;
      aBlock = MEMORY[0x1E69E9820];
      v130 = 1107296256;
      v131 = sub_19217070C;
      v132 = &block_descriptor_78;
      v107 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v107);
    }

    while (1)
    {
      v90 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v90 >= v116)
      {

        sub_192175074();
        (*(v120 + 8))(v127, v121);
        _widgetkit_objc_autoreleasePoolPop(*(j + 16));
        sub_192175598();

        v77 = 0;
        goto LABEL_49;
      }

      v14 = *&v117[8 * v90];
      ++v11;
      if (v14)
      {
        v11 = v90;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_66:
    ;
  }

  swift_willThrow();
  v84 = v82;
  (*(v120 + 8))(v16, v121);
  _widgetkit_objc_autoreleasePoolPop(*(v119 + 16));
  sub_192175598();

LABEL_48:
  v77 = v82;
LABEL_49:

  v81 = v137;
LABEL_50:
}

uint64_t sub_1921728C8@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v129 = a3;
  v133 = a2;
  v123 = a4;
  v125 = sub_192226690();
  v124 = *(v125 - 8);
  v5 = *(v124 + 64);
  v6 = MEMORY[0x1EEE9AC00](v125);
  v8 = (&v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v116 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v116 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v116 - v15;
  v128 = sub_192225800();
  v127 = *(v128 - 8);
  v17 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v132 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v116 - v21;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(*(v23 + 8) + 32))(&aBlock, v24);
  v25 = aBlock;
  KeyPath = swift_getKeyPath();
  j = sub_192066C3C(KeyPath);

  if (!j)
  {
    goto LABEL_65;
  }

  if (j >> 62)
  {
    if (sub_192228340())
    {
      goto LABEL_4;
    }

    goto LABEL_64;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:

LABEL_65:
    sub_192179630();
    swift_allocError();
    *v115 = 0u;
    *(v115 + 16) = 0u;
    *(v115 + 32) = 3;
    return swift_willThrow();
  }

LABEL_4:
  if ((j & 0xC000000000000001) != 0)
  {
    goto LABEL_67;
  }

  if (!*((j & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_69;
  }

  for (i = *(j + 32); ; i = MEMORY[0x193B0B410](0, j))
  {
    v29 = i;

    [v29 size];

    type metadata accessor for WGAutoreleasePool();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v31 = _widgetkit_objc_autoreleasePoolPush();
    v126 = inited;
    v120 = v31;
    *(inited + 16) = v31;
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    (*(v33 + 16))(&aBlock, v32, v33);
    v122 = aBlock;
    v121 = v135;
    aBlock = sub_192227570();
    v143[1] = v133;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13F8, &qword_19223B370);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v131 = sub_1922264B0();
    sub_192226490();
    v38 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    (*(*(v37 + 8) + 32))(&aBlock, v38);
    v39 = aBlock;
    v40 = swift_getKeyPath();
    j = sub_192099DDC(v40);

    if (j)
    {
      if (*(j + 16))
      {
        LODWORD(j) = *(j + 32);

        if (j != 3)
        {
          if (qword_1ED74C6B0 != -1)
          {
            goto LABEL_70;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v52 = a1[3];
      v51 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v52);
      (*(*(v51 + 8) + 32))(&aBlock, v52);
      v53 = aBlock;
      v54 = swift_getKeyPath();
      v55 = sub_1920668D0(v54);

      if (v55)
      {
        v56 = v126;
        if (*(v55 + 16))
        {
          v57 = *(v55 + 32);
        }
      }

      else
      {
        v56 = v126;
      }

      sub_192226450();
      v59 = a1[3];
      v58 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v59);
      (*(*(v58 + 8) + 32))(&aBlock, v59);
      v60 = aBlock;
      v61 = swift_getKeyPath();
      v62 = sub_1920668D0(v61);

      if (v62)
      {
        v63 = v133;
        if (*(v62 + 16))
        {
          v64 = *(v62 + 32);

          sub_192226470();
        }

        else
        {
        }
      }

      else
      {
        v63 = v133;
      }

      v65 = *&v63[OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes];

      sub_192226410();
      sub_19202CFFC(&v63[OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType], v22, &qword_1EADF13E8, &qword_19223AEB0);
      sub_192226400();
      v137 = &type metadata for FeatureFlags.Widgets;
      v138 = sub_19202DBA4();
      LOBYTE(aBlock) = 19;
      v66 = sub_192225420();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v66)
      {
        sub_192226480();
      }

      v67 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
      swift_beginAccess();
      if (v63[v67] == 1)
      {
        v68 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
        swift_beginAccess();
        v69 = *&v63[v68];
        *&v63[v68] = MEMORY[0x1E69E7CC8];
      }

      _widgetkit_objc_autoreleasePoolPop(v120);
      *(v56 + 16) = _widgetkit_objc_autoreleasePoolPush();
      v142 = 0;
      v143[0] = MEMORY[0x1E69E7CC0];
      v140 = 0;
      v141 = 0;
      if (qword_1ED74B868[0] != -1)
      {
        swift_once();
      }

      v11 = qword_1ED74CBE0;
      v22 = a1[3];
      v70 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      v14 = *(v70 + 8);
      v16 = *(v14 + 16);
      v71 = v11;
      LODWORD(j) = v71;
      (v16)(v22, v14);
      sub_1922257D0();
      sub_1922280E0();
      sub_1922257C0();
      v8 = v122;
      v72 = v122[2];
      v73 = v121;
      v74 = *(v121 + 2);
      if ((v72 * v74) >> 64 == (v72 * v74) >> 63)
      {
        break;
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
LABEL_11:
      v41 = sub_1922258B0();
      __swift_project_value_buffer(v41, qword_1ED74CCC8);
      v42 = sub_192225890();
      v43 = sub_192227FB0();
      if (os_log_type_enabled(v42, v43))
      {
        v117 = v42;
        v44 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        aBlock = v116;
        v118 = v44;
        *v44 = 136446210;
        LODWORD(v119) = v43;
        if (j)
        {
          sub_192226680();
        }

        else
        {
          sub_192226670();
        }

        (*(v124 + 32))(v16, v14, v125);
        v45 = sub_192227990();
        v47 = sub_19202B8CC(v45, v46, &aBlock);

        v48 = v118;
        *(v118 + 4) = v47;
        v49 = v117;
        _os_log_impl(&dword_192028000, v117, v119, "Archive deployment version: %{public}s", v48, 0xCu);
        v50 = v116;
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x193B0C7F0](v50, -1, -1);
        MEMORY[0x193B0C7F0](v48, -1, -1);
      }

      else
      {
      }

      if (j)
      {
        sub_192226680();
      }

      else
      {
        sub_192226670();
      }

      (*(v124 + 32))(v11, v8, v125);
      sub_192226430();
    }

    MEMORY[0x1EEE9AC00](v72 * v74);
    v75 = v126;
    *(&v116 - 12) = v126;
    *(&v116 - 11) = v8;
    v76 = v129;
    *(&v116 - 10) = v73;
    *(&v116 - 9) = v76;
    v11 = v133;
    *(&v116 - 8) = v131;
    *(&v116 - 7) = v11;
    *(&v116 - 6) = a1;
    *(&v116 - 5) = &v142;
    *(&v116 - 4) = v143;
    *(&v116 - 3) = &v141;
    *(&v116 - 2) = &v140;
    v77 = v130;
    v78 = sub_1922263A0();
    v22 = v77;
    if (v77)
    {
      (*(v127 + 8))(v132, v128);

      _widgetkit_objc_autoreleasePoolPop(*(v75 + 16));
      sub_192175598();

      v80 = v141;
LABEL_42:
    }

    v129 = v78;
    v130 = v79;

    v82 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
    swift_beginAccess();
    if (v11[v82])
    {
      v83 = v142;
      if (v142)
      {
        swift_willThrow();
        v84 = v83;
        sub_192039140(v129, v130);
        (*(v127 + 8))(v132, v128);
        _widgetkit_objc_autoreleasePoolPop(*(v126 + 16));
        sub_192175598();

        v85 = v83;
        goto LABEL_51;
      }
    }

    v86 = v141;
    v16 = v132;
    if (v141)
    {
      break;
    }

    v86 = v140;
    if (v140)
    {
      swift_willThrow();
      v88 = v86;
      sub_192039140(v129, v130);
      (*(v127 + 8))(v16, v128);
      _widgetkit_objc_autoreleasePoolPop(*(v126 + 16));
      sub_192175598();

      goto LABEL_50;
    }

    sub_1922280D0();
    sub_1922257C0();
    v89 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
    swift_beginAccess();
    v90 = *&v11[v89];
    v91 = *(v90 + 64);
    v119 = v90 + 64;
    v92 = 1 << *(v90 + 32);
    v93 = -1;
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    v14 = v93 & v91;
    v118 = (v92 + 63) >> 6;
    v121 = "defaultImageType";
    v120 = &v136;
    v122 = v90;

    v8 = 0;
    for (j = v126; v14; j = v126)
    {
      v94 = v8;
LABEL_60:
      v95 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v96 = (v94 << 10) | (16 * v95);
      v97 = v122[7];
      v98 = (v122[6] + v96);
      LODWORD(v125) = *v98;
      v99 = *(v98 + 1);
      v100 = (v97 + v96);
      v101 = *v100;
      v102 = v100[1];
      v103 = a1[3];
      v104 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v103);
      v105 = *(v104 + 8);
      v124 = *(v105 + 16);
      v106 = v99;
      v107 = (v124)(v103, v105);
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v125;
      *(v108 + 32) = v102;
      *(v108 + 40) = v106;
      *(v108 + 48) = v101;
      v16 = v106;
      v109 = v107;
      v110 = sub_192227930();
      v111 = swift_allocObject();
      *(v111 + 16) = sub_192179EE4;
      *(v111 + 24) = v108;
      v138 = sub_192179EE8;
      v139 = v111;
      aBlock = MEMORY[0x1E69E9820];
      v135 = 1107296256;
      v136 = sub_19217070C;
      v137 = &block_descriptor_2;
      v112 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v112);

      v11 = v133;
    }

    while (1)
    {
      v94 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v94 >= v118)
      {

        sub_192175074();
        (*(v127 + 8))(v132, v128);
        v113 = v123;
        v114 = v130;
        *v123 = v129;
        v113[1] = v114;
        _widgetkit_objc_autoreleasePoolPop(*(j + 16));
        sub_192175598();

        v80 = 0;
        goto LABEL_42;
      }

      v14 = *(v119 + 8 * v94);
      v8 = (v8 + 1);
      if (v14)
      {
        v8 = v94;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_67:
    ;
  }

  swift_willThrow();
  v87 = v86;
  sub_192039140(v129, v130);
  (*(v127 + 8))(v16, v128);
  _widgetkit_objc_autoreleasePoolPop(*(v126 + 16));
  sub_192175598();

LABEL_50:
  v85 = v142;
LABEL_51:
}

uint64_t static WidgetArchiver.archive(_:to:delegate:)(void *a1, uint64_t a2, char *a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
    a1 = sub_19217869C(v8, v6, v7);
    v5 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = a2;

  sub_1921718D8(v4, v5, sub_192178C14, v10);
}

uint64_t *static WidgetArchiver.archive(_:delegate:)(uint64_t *a1, char *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
    v5 = sub_19217869C(v8, v6, v7);
  }

  sub_1921728C8(a1, v5, v2, &v10);

  if (!v3)
  {
    return v10;
  }

  return result;
}

uint64_t WidgetArchiver.ArchivingDelegate.__allocating_init(with:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_192178254(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t WidgetArchiver.ArchivingError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 32) <= 1u)
  {
    if (!*(v0 + 32))
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v20 = MEMORY[0x1E69E7CC0];
        sub_192071C64(0, v2, 0);
        v3 = v20;
        v4 = (v1 + 32);
        do
        {
          v19 = *v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6D0, &qword_19222DD58);
          v5 = sub_192227990();
          v21 = v3;
          v8 = *(v3 + 16);
          v7 = *(v3 + 24);
          if (v8 >= v7 >> 1)
          {
            v10 = v5;
            v11 = v6;
            sub_192071C64((v7 > 1), v8 + 1, 1);
            v6 = v11;
            v5 = v10;
            v3 = v21;
          }

          *(v3 + 16) = v8 + 1;
          v9 = v3 + 16 * v8;
          *(v9 + 32) = v5;
          *(v9 + 40) = v6;
          ++v4;
          --v2;
        }

        while (v2);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_1920CF680();
      v15 = sub_1922278A0();
      v17 = v16;

      sub_192228400();
      MEMORY[0x193B0A990](0xD00000000000004FLL, 0x800000019224C7E0);
      MEMORY[0x193B0A990](v15, v17);

      return 0;
    }

    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000026, 0x800000019224C7B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
LABEL_12:
    sub_1922285A0();
    return 0;
  }

  if (*(v0 + 32) == 2)
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[1];
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000003FLL, 0x800000019224C710);
    type metadata accessor for CGSize(0);
    sub_1922285A0();
    MEMORY[0x193B0A990](0xD000000000000020, 0x800000019224C750);
    goto LABEL_12;
  }

  return 0xD000000000000024;
}

uint64_t sub_192173F0C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_192173F6C()
{
  v1 = *(v0 + 1);
  MEMORY[0x193B0BA90](*v0);
  return sub_1922281E0();
}

uint64_t sub_192173FB0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_19217400C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 1);
  v3 = *(a1 + 1);
  sub_1920EDA18();
  return sub_1922281D0() & 1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_192225150();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id WidgetArchiver.ArchivingDelegate.SelectableRegionKey.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20));
  *a1 = v3;

  return v3;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.init(date:environment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_192225150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t static WidgetArchiver.ArchivingDelegate.SelectableRegionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  sub_1920EDA18();
  v7 = v5;
  v8 = v6;
  v9 = sub_1922281D0();

  return v9 & 1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.hash(into:)()
{
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v1 = *(v0 + *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20));
  v2 = WidgetEnvironment.Storage.hash.getter();
  return MEMORY[0x193B0BA90](v2);
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegionKey.hashValue.getter()
{
  sub_192228AD0();
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v1 = *(v0 + *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20));
  v2 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_192174350(uint64_t a1)
{
  sub_192228AD0();
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v3 = *(v1 + *(a1 + 20));
  v4 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v4);
  return sub_192228B30();
}

uint64_t sub_1921743F8(uint64_t a1, uint64_t a2)
{
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v4 = *(v2 + *(a2 + 20));
  v5 = WidgetEnvironment.Storage.hash.getter();
  return MEMORY[0x193B0BA90](v5);
}

uint64_t sub_192174488(uint64_t a1, uint64_t a2)
{
  sub_192228AD0();
  sub_192225150();
  sub_1921796CC(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v4 = *(v2 + *(a2 + 20));
  v5 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v5);
  return sub_192228B30();
}

uint64_t sub_19217452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  sub_1920EDA18();
  v9 = v7;
  v10 = v8;
  v11 = sub_1922281D0();

  return v11 & 1;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegion.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double WidgetArchiver.ArchivingDelegate.SelectableRegion.boundingRect.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

uint64_t WidgetArchiver.ArchivingDelegate.SelectableRegion.accessibilityNode.getter()
{
  v1 = *(v0 + 48);
  sub_19206A874(v1, *(v0 + 56));
  return v1;
}

double WidgetArchiver.ArchivingDelegate.systemVersion.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion);
  *a1 = result;
  return result;
}

uint64_t sub_192174670()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1921746B4(char a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_192174764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1921747CC()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_192174814(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1921748CC()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_192174910(char a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1921749C0()
{
  v1 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_192174A04(char a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_192174AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_1922261D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
  sub_19202CFFC(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection, v51, &qword_1EADF13E0, &unk_19223AEA0);
  v12 = v52;
  if (v52)
  {
    v13 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v14 = (*(v13 + 16))(v12, v13);
    v15 = [v14 extensionIdentity];

    v16 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v17 = sub_192225510();
    v19 = v18;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v51);
    if (v17 == 0xD000000000000026 && 0x80000001922481D0 == v19)
    {

      return 0;
    }

    v20 = sub_1922289A0();

    if (v20)
    {
      return 0;
    }
  }

  else
  {
    sub_192033970(v51, &qword_1EADF13E0, &unk_19223AEA0);
  }

  v21 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
  swift_beginAccess();
  sub_19202CFFC(v1 + v21, v5, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v22 = &qword_1EADEF250;
    v23 = &qword_19222C6C0;
    v24 = v5;
LABEL_16:
    sub_192033970(v24, v22, v23);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_19202CFFC(v1 + v11, &v49, &qword_1EADF13E0, &unk_19223AEA0);
  if (!v50)
  {
    (*(v7 + 8))(v10, v6);
    v22 = &qword_1EADF13E0;
    v23 = &unk_19223AEA0;
    v24 = &v49;
    goto LABEL_16;
  }

  sub_19203832C(&v49, v51);
  v25 = sub_1920C8ADC();
  v27 = v26;
  v29 = v28;
  v30 = v52;
  v31 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v32 = (*(v31 + 16))(v30, v31);
  v33 = [v32 family];

  v34 = v52;
  v35 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v36 = (*(v35 + 24))(v34, v35);
  sub_192040FB0();
  sub_1922261E0();
  v37 = v49;
  if (*(v29 + 16) && (v38 = sub_1920B733C(v33), (v39 & 1) != 0))
  {
    v40 = *(v29 + 56) + 24 * v38;
    v41 = *(v40 + 8);
    v42 = *(v40 + 16);
    v43 = *v40;
    v44 = v36;
    v45 = v37;
  }

  else
  {
    v44 = v36;
    v45 = v37;
    v43 = v25;
    v41 = v27;
  }

  v46 = sub_1920C8850(v44, v45, v43, v41);

  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v46;
}

uint64_t sub_192174F68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1920C3548(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1920C3548((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *(v1 + v3) = v4;
  return swift_endAccess();
}

void *sub_19217503C(void *a1)
{
  result = sub_192178C60(a1);
  if (!v1)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

uint64_t sub_192175074()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (*(v4 + 16))
  {
    v9[2] = *(v1 + v2);
    memset(&v9[3], 0, 24);
    v10 = 0;

    v5 = WidgetArchiver.ArchivingError.errorDescription.getter();
    if (v6)
    {
      v9[0] = v5;
      v9[1] = v6;
      sub_192175178(v9);
    }

    v7 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode;
    swift_beginAccess();
    if (*(v1 + v7))
    {
      sub_192179630();
      swift_allocError();
      *v8 = v4;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      return swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

void sub_192175178(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74C788);

  v4 = sub_192225890();
  v5 = sub_192227F90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19202B8CC(v2, v1, &v8);
    _os_log_impl(&dword_192028000, v4, v5, "%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }
}

uint64_t WidgetArchiver.ArchivingDelegate.deinit()
{
  sub_192179F60(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
  v1 = *(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions);

  v2 = *(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes);

  sub_192033970(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment, &qword_1EADEF250, &qword_19222C6C0);
  v3 = *(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily);

  sub_192033970(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection, &qword_1EADF13E0, &unk_19223AEA0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying));
  v4 = *(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes);

  sub_192033970(v0 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType, &qword_1EADF13E8, &qword_19223AEB0);
  return v0;
}

uint64_t WidgetArchiver.ArchivingDelegate.__deallocating_deinit()
{
  WidgetArchiver.ArchivingDelegate.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_192175408(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1920C3548(0, *(v5 + 2) + 1, 1, v5);
    *(v3 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1920C3548((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  *(v3 + v4) = v5;
  return swift_endAccess();
}

void *sub_1921754E0(void *a1)
{
  v3 = *v1;
  result = sub_192178C60(a1);
  if (!v2)
  {
    v5 = result;
    v6 = result;
    return v5;
  }

  return result;
}

uint64_t sub_192175520(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

id sub_192175598()
{
  v0 = objc_opt_self();
  result = [v0 currentState];
  if (result)
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v2 = sub_1922258B0();
    __swift_project_value_buffer(v2, qword_1ED74CCC8);
    v3 = sub_192225890();
    v4 = sub_192227F80();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Flushing CATransaction because one was opened during archiving.", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    return [v0 flush];
  }

  return result;
}

uint64_t sub_1921756BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, void *a8, void **a9, void **a10)
{
  v205 = a8;
  v209 = a7;
  v211 = a6;
  v208 = a4;
  v207 = a3;
  v202 = sub_192226BA0();
  v210 = *(v202 - 8);
  v12 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v180 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  v14 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v181 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v199 = (&v179 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v186 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v187 = &v179 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v206 = &v179 - v27;
  v195 = type metadata accessor for WidgetViewMetadata();
  v197 = *(v195 - 8);
  v28 = *(v197 + 64);
  v29 = MEMORY[0x1EEE9AC00](v195);
  v196 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v203 = &v179 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v215 = &v179 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v179 - v37;
  v39 = sub_1922265A0();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v179 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_192225E00();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = sub_1922261D0();
  v213 = *(v46 - 8);
  v214 = v46;
  v47 = *(v213 + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v201 = &v179 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v179 - v50;
  v52 = type metadata accessor for ViewableTimelineEntry();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v179 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  _widgetkit_objc_autoreleasePoolPop(*(a2 + 16));
  *(a2 + 16) = _widgetkit_objc_autoreleasePoolPush();
  sub_192175598();
  v212 = v55;
  v56 = v55;
  v57 = v51;
  v198 = a1;
  sub_1921F9F9C(v56, v51, a1, v207, v208);
  v220 = &type metadata for FeatureFlags.Widgets;
  v58 = sub_19202DBA4();
  v221 = v58;
  LOBYTE(v219) = 1;
  LOBYTE(a2) = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(&v219);
  v59 = &qword_1ED74BAF0;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1ED74BAE8 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v60 = *v59;
    if (dyld_program_sdk_at_least())
    {
      sub_192225DF0();
      sub_192225FF0();
    }

LABEL_5:
    v200 = sub_19203B3CC();
    sub_1922261E0();
    v61 = v219;
    v62 = [v219 dynamicTextSupport];

    if (v62 == 2)
    {
      (*(v40 + 104))(v43, *MEMORY[0x1E697F680], v39);
      sub_192225ED0();
    }

    v204 = a10;
    *&v219 = *&v212[*(v52 + 20)];

    *&v219 = sub_192227570();
    sub_1922264D0();
    v64 = v213;
    v63 = v214;
    v65 = v213 + 16;
    v66 = *(v213 + 16);
    v66(v201, v57, v214);
    sub_192226360();
    v189 = v65;
    v188 = v66;
    v66(v38, v57, v63);
    (*(v64 + 56))(v38, 0, 1, v63);
    v67 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
    v68 = v209;
    swift_beginAccess();
    sub_192179EF0(v38, v68 + v67);
    swift_endAccess();
    v69 = v205;
    v70 = v205[3];
    v71 = v205[4];
    __swift_project_boxed_opaque_existential_1(v205, v70);
    v72 = (*(*(v71 + 8) + 16))(v70);
    v73 = (v68 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
    v74 = *(v68 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying + 24);
    v75 = v73[4];
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v75 + 8))(v72, v74, v75);

    v220 = &type metadata for FeatureFlags.Widgets;
    v221 = v58;
    LOBYTE(v219) = 0;
    LOBYTE(v72) = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&v219);
    if (v72)
    {
      if (qword_1ED74BAE8 != -1)
      {
        swift_once();
      }

      v76 = dyld_program_sdk_at_least();
      v77 = [objc_opt_self() mainBundle];
      v78 = [v77 bundleIdentifier];

      if (v78 && (sub_192227960(), v78, v79 = sub_192227A10(), , (v79 & 1) != 0))
      {
        v81 = v69[3];
        v80 = v69[4];
        __swift_project_boxed_opaque_existential_1(v69, v81);
        v82 = (*(*(v80 + 8) + 16))(v81);
        [v82 family];

        IsAccessory = CHSWidgetFamilyIsAccessory();
      }

      else
      {
        IsAccessory = 0;
      }

      v85 = v69[3];
      v84 = v69[4];
      __swift_project_boxed_opaque_existential_1(v69, v85);
      v86 = (*(*(v84 + 8) + 16))(v85);
      LOBYTE(v85) = sub_192192560(v86, v215);

      v87 = 1;
      if ((v85 & 1) == 0 && (IsAccessory & 1) == 0)
      {
        v89 = v69[3];
        v88 = v69[4];
        __swift_project_boxed_opaque_existential_1(v69, v89);
        v90 = (*(*(v88 + 8) + 16))(v89);
        v91 = [v90 family];

        v87 = v91 == 12;
      }

      sub_19217A6EC();
      sub_1922263F0();
      v92 = v219;
      sub_192056F6C();
      sub_1922261E0();
      if (v76 && (v92 & 1) == 0 && !v87 && v219)
      {
        sub_19217A740();
        *&v219 = sub_192227570();
        sub_1922264D0();
        if (qword_1ED749B40 != -1)
        {
          swift_once();
        }

        v93 = sub_1922258B0();
        __swift_project_value_buffer(v93, qword_1ED74C788);
        v94 = sub_192225890();
        v95 = sub_192227F90();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          MEMORY[0x193B0C7F0](v96, -1, -1);
        }

        v97 = *MEMORY[0x1E69941E8];
        v98 = sub_19214036C(MEMORY[0x1E69E7CC0]);
        v99 = *MEMORY[0x1E696A278];
        v100 = sub_192227960();
        v102 = v101;
        v220 = MEMORY[0x1E69E6158];
        *&v219 = 0xD000000000000021;
        *(&v219 + 1) = 0x800000019224B7E0;
        sub_19203BEDC(&v219, &v216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v218 = v98;
        sub_19213DB28(&v216, v100, v102, isUniquelyReferenced_nonNull_native);

        v104 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v105 = sub_192227830();

        v106 = [v104 initWithDomain:v97 code:1302 userInfo:v105];

        v107 = *a9;
        *a9 = v106;

        v69 = v205;
      }
    }

    sub_1922261E0();
    v108 = v219;
    sub_192225EA0();
    [v108 _effectiveSizePixelAlignedForDisplayScale_];

    sub_1922264A0();
    v110 = v69[3];
    v109 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, v110);

    v200 = v57;
    sub_1922261E0();
    v111 = v219;
    [v219 safeAreaInsets];

    sub_1922263E0();
    v112 = v195;
    v113 = *(v195 + 28);
    v114 = sub_192225020();
    v185 = *(v114 - 8);
    v116 = v185 + 56;
    v115 = *(v185 + 56);
    v52 = v203;
    v115(&v203[v113], 1, 1, v114);
    v117 = v112[8];
    v118 = *(v210 + 56);
    v119 = v202;
    v118(v52 + v117, 1, 1, v202);
    v193 = v112[9];
    v118(&v193[v52], 1, 1, v119);
    v194 = v112[10];
    *v52 = 0;
    *(v52 + 2) = 0;
    sub_192033970(v52 + v113, &qword_1EADEEE10, &unk_19222B630);
    v195 = v113;
    v184 = v114;
    v183 = v116;
    v182 = v115;
    v115((v52 + v113), 1, 1, v114);
    sub_192033970(v52 + v117, &qword_1EADEF218, &qword_19223B3F0);
    v192 = v117;
    v118(v52 + v117, 1, 1, v119);
    v120 = v193;
    sub_192033970(&v193[v52], &qword_1EADEF218, &qword_19223B3F0);
    v121 = v119;
    v118(&v120[v52], 1, 1, v119);
    v57 = v211;
    *(v52 + v194) = 2;
    sub_19206EC6C();
    v39 = v206;
    sub_1922263F0();
    sub_192226A60();
    sub_1921796CC(&qword_1ED749F50, MEMORY[0x1E697CAA0]);
    v59 = v199;
    sub_1922263F0();
    v122 = *(v210 + 48);
    v194 = v210 + 48;
    v193 = v122;
    v123 = (v122)(v59, 1, v121);
    v124 = v196;
    if (v123 != 1)
    {
      sub_19217A684(v59, v52 + v192, &qword_1EADEF218, &qword_19223B3F0);
      v125 = v186;
      sub_19202CFFC(v39, v186, &qword_1EADEEE10, &unk_19222B630);
      v126 = v185;
      v127 = *(v185 + 48);
      v128 = v184;
      if (v127(v125, 1, v184) == 1)
      {
        v129 = v128;
        v130 = v181;
        sub_19202CFFC(v59, v181, &qword_1EADEF218, &qword_19223B3F0);
        v131 = v202;
        v132 = (v193)(v130, 1, v202);
        v133 = v187;
        if (v132 == 1)
        {
          sub_192033970(v39, &qword_1EADEEE10, &unk_19222B630);
          sub_192033970(v130, &qword_1EADEF218, &qword_19223B3F0);
          v182(v133, 1, 1, v129);
        }

        else
        {
          sub_192226A70();
          sub_192033970(v39, &qword_1EADEEE10, &unk_19222B630);
          (*(v210 + 8))(v130, v131);
        }

        v134 = v127(v125, 1, v129);
        v57 = v211;
        if (v134 != 1)
        {
          sub_192033970(v125, &qword_1EADEEE10, &unk_19222B630);
        }
      }

      else
      {
        sub_192033970(v39, &qword_1EADEEE10, &unk_19222B630);
        v133 = v187;
        (*(v126 + 32))(v187, v125, v128);
        v182(v133, 0, 1, v128);
      }

      sub_19205EC64(v133, v39);
      v52 = v203;
    }

    sub_19217A684(v39, v52 + v195, &qword_1EADEEE10, &unk_19222B630);
    sub_19204E754(v52, v124, type metadata accessor for WidgetViewMetadata);
    v135 = v204;
    v136 = *v204;
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *v135 = v136;
    v40 = v209;
    if ((v137 & 1) == 0)
    {
      v136 = sub_1920C355C(0, v136[2] + 1, 1, v136);
      *v204 = v136;
    }

    v58 = v198;
    v139 = v136[2];
    v138 = v136[3];
    if (v139 >= v138 >> 1)
    {
      v136 = sub_1920C355C(v138 > 1, v139 + 1, 1, v136);
      *v204 = v136;
    }

    v136[2] = v139 + 1;
    sub_19203D160(v124, v136 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v139, type metadata accessor for WidgetViewMetadata);
    if (qword_1ED74AF20 != -1)
    {
      swift_once();
    }

    v140 = sub_1922258B0();
    v38 = __swift_project_value_buffer(v140, qword_1ED74CBA8);
    v141 = sub_192225890();
    v142 = sub_192227F80();
    v43 = &property descriptor for TimelineEntryRelevance.hashValue;
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 134349056;
      *(v143 + 4) = v58;
      _os_log_impl(&dword_192028000, v141, v142, "Archiving entry %{public}ld", v143, 0xCu);
      v144 = v143;
      v39 = v206;
      MEMORY[0x193B0C7F0](v144, -1, -1);
    }

    v145 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions;
    swift_beginAccess();
    if (*(v40 + v145) == 1)
    {
      v146 = sub_192225890();
      v147 = sub_192227F80();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&dword_192028000, v146, v147, "Asked to include selectable regions.", v148, 2u);
        v149 = v148;
        v39 = v206;
        MEMORY[0x193B0C7F0](v149, -1, -1);
      }

      v218 = MEMORY[0x1E69E7CC0];
      v150 = sub_192225890();
      v151 = sub_192227F80();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        *v152 = 134349056;
        *(v152 + 4) = v58;
        _os_log_impl(&dword_192028000, v150, v151, "%{public}ld BEGIN", v152, 0xCu);
        v153 = v152;
        v39 = v206;
        MEMORY[0x193B0C7F0](v153, -1, -1);
      }

      MEMORY[0x1EEE9AC00](v154);
      *(&v179 - 2) = v58;
      *(&v179 - 1) = &v218;
      sub_192226350();
      v155 = sub_192225890();
      v156 = sub_192227F80();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        *v157 = 134349056;
        *(v157 + 4) = v58;
        _os_log_impl(&dword_192028000, v155, v156, "%{public}ld END", v157, 0xCu);
        MEMORY[0x193B0C7F0](v157, -1, -1);
      }

      v158 = sub_192225150();
      v43 = v191;
      (*(*(v158 - 8) + 16))(v191, v212, v158);
      v159 = v201;
      v160 = v214;
      v188(v201, v200, v214);
      *&v216 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
      WidgetEnvironment.apply(environmentValues:)();
      (*(v213 + 8))(v159, v160);
      *&v43[*(v190 + 20)] = v216;
      v38 = v218;
      v161 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions;
      swift_beginAccess();

      v162 = *(v40 + v161);
      v163 = swift_isUniquelyReferenced_nonNull_native();
      v217 = *(v40 + v161);
      *(v40 + v161) = 0x8000000000000000;
      sub_19213E3A0(v38, v43, v163);
      *(v40 + v161) = v217;
      swift_endAccess();
      sub_192179F60(v43, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
    }

    v164 = COERCE_DOUBLE(sub_192174AB4());
    if ((v166 & 1) == 0)
    {
      v167 = v164;
      v168 = v165;
      if (v164 != 0.0 || v165 != 0.0)
      {
        v169 = v192;
        v38 = v202;
        if (!(v193)(v52 + v192, 1, v202))
        {
          v175 = v210;
          v176 = v52 + v169;
          v177 = v180;
          (*(v210 + 16))(v180, v176, v38);
          sub_192177864(v167, v168);
          v178 = *(v175 + 8);
          v43 = (v175 + 8);
          v178(v177, v38);
        }
      }
    }

    v170 = *(v207 + 16);
    v171 = *(v208 + 16);
    v172 = v170 * v171;
    if ((v170 * v171) >> 64 == (v170 * v171) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  if (v58 < 0 || v172 <= v58)
  {
    goto LABEL_63;
  }

  if (v58 + 1 == v172)
  {
    v173 = *v204;

    sub_192179FC0(v205, v40, v173);

    sub_1922263D0();
  }

  sub_192033970(v39, &qword_1EADEEE10, &unk_19222B630);
  sub_192033970(v215, &qword_1EADEEE20, &qword_19222B670);
  (*(v213 + 8))(v200, v214);
  sub_192179F60(v212, type metadata accessor for ViewableTimelineEntry);
  sub_192033970(v59, &qword_1EADEF218, &qword_19223B3F0);
  return sub_192179F60(v52, type metadata accessor for WidgetViewMetadata);
}

void sub_1921770EC(uint64_t a1, uint64_t a2, char **a3)
{
  v77 = a3;
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1408, &qword_19223B3F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v73 - v6;
  v7 = sub_1922267A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1410, &qword_19223B400);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v73 - v20;
  sub_192226770();
  sub_192228380();
  sub_19217A794(v78);
  v22 = sub_192226C80();
  v23 = swift_dynamicCast();
  v24 = *(*(v22 - 8) + 56);
  if (v23)
  {
    v25 = *(v22 - 8);
    v24(v21, 0, 1, v22);
    v26 = sub_192226C70();
    v28 = v27;
    (*(v25 + 8))(v21, v22);
    if (qword_1ED74AF20 != -1)
    {
      swift_once();
    }

    v29 = sub_1922258B0();
    __swift_project_value_buffer(v29, qword_1ED74CBA8);
    (*(v8 + 16))(v17, a1, v7);

    v30 = sub_192225890();
    v31 = sub_192227F80();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v74 = v26;
      v33 = v32;
      v73 = swift_slowAlloc();
      v78[0] = v73;
      *v33 = 134218498;
      v34 = v74;
      *(v33 + 4) = v75;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_19202B8CC(v34, v28, v78);
      *(v33 + 22) = 2082;
      sub_192226780();
      v35 = sub_192228120();
      v36 = v28;
      v38 = v37;
      (*(v8 + 8))(v17, v7);
      v39 = sub_19202B8CC(v35, v38, v78);
      v28 = v36;

      *(v33 + 24) = v39;
      _os_log_impl(&dword_192028000, v30, v31, "%ld Found region: %{public}s with rect: %{public}s", v33, 0x20u);
      v40 = v73;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v40, -1, -1);
      v41 = v33;
      v26 = v74;
      MEMORY[0x193B0C7F0](v41, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v17, v7);
    }

    v53 = v77;
    sub_192226780();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v76;
    sub_192226790();
    v63 = sub_192226860();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v62, 1, v63) == 1)
    {
      sub_192033970(v62, &qword_1EADF1408, &qword_19223B3F8);
      v65 = 0;
      v66 = 0xF000000000000000;
    }

    else
    {
      v65 = sub_192226850();
      v66 = v67;
      (*(v64 + 8))(v62, v63);
    }

    v68 = *v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = sub_1920C3584(0, *(v68 + 2) + 1, 1, v68);
      *v53 = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      v68 = sub_1920C3584((v70 > 1), v71 + 1, 1, v68);
      *v53 = v68;
    }

    *(v68 + 2) = v71 + 1;
    v72 = &v68[64 * v71];
    *(v72 + 4) = v26;
    *(v72 + 5) = v28;
    *(v72 + 6) = v55;
    *(v72 + 7) = v57;
    *(v72 + 8) = v59;
    *(v72 + 9) = v61;
    *(v72 + 10) = v65;
    *(v72 + 11) = v66;
  }

  else
  {
    v24(v21, 1, 1, v22);
    sub_192033970(v21, &qword_1EADF1410, &qword_19223B400);
    if (qword_1ED74AF20 != -1)
    {
      swift_once();
    }

    v42 = sub_1922258B0();
    __swift_project_value_buffer(v42, qword_1ED74CBA8);
    v43 = *(v8 + 16);
    v44 = v7;
    v43(v15, a1, v7);
    v45 = sub_192225890();
    v46 = sub_192227F80();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v78[0] = v48;
      *v47 = 134349314;
      *(v47 + 4) = v75;
      *(v47 + 12) = 2082;
      v43(v12, v15, v44);
      v49 = sub_192227990();
      v51 = v50;
      (*(v8 + 8))(v15, v44);
      v52 = sub_19202B8CC(v49, v51, v78);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_192028000, v45, v46, "%{public}ld View proxy does not have a selection identifier: %{public}s", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x193B0C7F0](v48, -1, -1);
      MEMORY[0x193B0C7F0](v47, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v15, v7);
    }
  }
}

uint64_t sub_192177864(double a1, double a2)
{
  v22 = sub_192226BA0();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  sub_192226B80();
  v13 = sub_192226B70();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_192033970(v12, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    sub_192177B44(a1, a2);
    if (v2)
    {
      return (*(v14 + 8))(v12, v13);
    }

    (*(v14 + 8))(v12, v13);
  }

  result = sub_192226B90();
  if (result)
  {
    v16 = result;
    v17 = *(result + 16);
    if (v17)
    {
      v18 = 0;
      v23 = v5 + 16;
      v19 = (v5 + 8);
      v20 = v22;
      while (v18 < *(v16 + 16))
      {
        (*(v5 + 16))(v8, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v20);
        sub_192177864(a1, a2);
        if (v2)
        {
          (*v19)(v8, v20);
        }

        ++v18;
        result = (*v19)(v8, v20);
        if (v17 == v18)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_192177B44(double a1, double a2)
{
  v3 = v2;
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192226B70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, v3, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x1E697CB08])
  {
    (*(v12 + 96))(v15, v11);
    (*(v7 + 32))(v10, v15, v6);
    sub_192177E5C(a1, a2);
    (*(v7 + 8))(v10, v6);
  }

  else if (v16 == *MEMORY[0x1E697CB00])
  {
    (*(v12 + 96))(v15, v11);
    v17 = *v15;
    [*v15 size];
    v19 = v18;
    [v17 scale];
    v21 = v19 * v20;
    [v17 size];
    v23 = v22;
    [v17 scale];
    v25 = v23 * v24;
    if (v21 > a1 || v25 > a2)
    {
      sub_192179630();
      swift_allocError();
      *v27 = v21;
      *(v27 + 8) = v25;
      *(v27 + 16) = a1;
      *(v27 + 24) = a2;
      *(v27 + 32) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_192228620();
    __break(1u);
  }
}

void sub_192177E5C(double a1, double a2)
{
  v5 = sub_192225020();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192226B30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226B40();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E697CAF0])
  {
    (*(v11 + 96))(v14, v10);
    (*(v6 + 32))(v9, v14, v5);
    v16 = objc_opt_self();
    v17 = sub_192224FE0();
    v18 = [v16 wk:v17 uniqueWithURL:?];

    sub_192226AF0();
    v2 = v18;
    v19 = sub_192227930();

    v20 = [objc_opt_self() imageNamed:v19 inBundle:v2 withConfiguration:0];

    if (v20)
    {
      [v20 size];
      v22 = v21;
      [v20 scale];
      v24 = v22 * v23;
      [v20 size];
      v26 = v25;
      [v20 scale];
      v28 = v26 * v27;
      if (v24 > a1 || v28 > a2)
      {
        sub_192179630();
        swift_allocError();
        *v30 = v24;
        *(v30 + 8) = v28;
        *(v30 + 16) = a1;
        *(v30 + 24) = a2;
        *(v30 + 32) = 2;
        swift_willThrow();

        (*(v6 + 8))(v9, v5);
        return;
      }

      (*(v6 + 8))(v9, v5);

      goto LABEL_12;
    }
  }

  else
  {
    if (v15 == *MEMORY[0x1E697CAF8])
    {
      return;
    }

    sub_192228620();
    __break(1u);
  }

  (*(v6 + 8))(v9, v5);
  v20 = v2;
LABEL_12:
}

uint64_t sub_192178224@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_192178254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BundleStub();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a3;
  v34[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a3 - 8) + 32))();
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_1ED74BAA0;
  (*(a4 + 8))(a3, a4);
  result = sub_192033A64(v34, v32);
  if (xmmword_1ED74CC80)
  {
    v30 = *xmmword_1ED74CC80;
    v31 = *(qword_1ED74CC90 + 8);
    *&v29 = xmmword_1ED74CC80;
    v12 = type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
    v16 = MEMORY[0x1E69E7CC8];
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
    v17 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
    v18 = sub_1922261D0();
    (*(*(v18 - 8) + 56))(v15 + v17, 1, 1, v18);
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v16;
    v19 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
    v20 = sub_192225790();
    v21 = *(v20 - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_19222B4A0;

    sub_192225780();
    sub_192225750();
    sub_192225770();
    sub_192225760();
    v25 = sub_19216FF08(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v15 + v19) = v25;
    v26 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
    sub_192225750();
    (*(v21 + 56))(v15 + v26, 0, 1, v20);
    sub_19203D160(v9, v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v10;
    *(v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
    v27 = v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
    *(v27 + 32) = v33;
    v28 = v32[1];
    *v27 = v32[0];
    *(v27 + 16) = v28;
    sub_19203832C(&v29, v15 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19217865C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_19217869C(v3, v1, v2);
}

id sub_19217869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleStub();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v51 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v12 = result;
    v13 = [result isInternalInstall];

    if (v13)
    {
      v14 = [objc_opt_self() processInfo];
      v15 = [v14 environment];

      v16 = sub_192227840();
      if (*(v16 + 16))
      {
        sub_1920440AC(0xD000000000000011, 0x8000000192249120);
        v18 = v17;

        if (v18)
        {
          if (qword_1ED74BA98 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v19 = qword_1ED74BAA0;
          (*(*(a3 + 8) + 8))(a2);
          v20 = type metadata accessor for TestingNilDescriptorQuerying();
          v21 = swift_allocObject();
          v47 = v20;
          v48 = &off_1F06B1F68;
          *&v46 = v21;
          v22 = type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
          v23 = *(v22 + 48);
          v24 = *(v22 + 52);
          v25 = swift_allocObject();
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
          v26 = MEMORY[0x1E69E7CC8];
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
          v27 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
          v28 = sub_1922261D0();
          (*(*(v28 - 8) + 56))(v25 + v27, 1, 1, v28);
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v26;
          v29 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
          v30 = sub_192225790();
          v31 = *(v30 - 8);
          v32 = *(v31 + 72);
          v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_19222B4A0;
          sub_192225780();
          sub_192225750();
          sub_192225770();
          sub_192225760();
          v35 = sub_19216FF08(v34);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v25 + v29) = v35;
          v36 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
          sub_192225750();
          (*(v31 + 56))(v25 + v36, 0, 1, v30);
          sub_19203D160(v9, v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v19;
          *(v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
          v37 = v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
          *(v37 + 32) = 0;
          *v37 = 0u;
          *(v37 + 16) = 0u;
          sub_19203832C(&v46, v25 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v38 = type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
    v39 = v50;
    v40 = __swift_project_boxed_opaque_existential_1(v49, v50);
    v41 = *(*(v39 - 8) + 64);
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v45 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    v25 = sub_192178254(v43, v38, a2, *(a3 + 8));
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v25;
  }

  __break(1u);
  return result;
}

int64_t sub_192178C60(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v88[-v6];
  v8 = sub_1922261D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v13 = sub_1922258B0();
  v14 = __swift_project_value_buffer(v13, qword_1ED74C788);
  v15 = a1;
  v92 = v14;
  v16 = sub_192225890();
  v17 = sub_192227F80();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v91 = v9;
    v19 = v8;
    v20 = v18;
    *v18 = 67240704;
    v18[1] = CGImageGetIdentifier();
    *(v20 + 4) = 2050;
    *(v20 + 10) = CGImageGetWidth(v15);
    *(v20 + 9) = 2050;
    *(v20 + 5) = CGImageGetHeight(v15);

    _os_log_impl(&dword_192028000, v16, v17, "Filtered image [%{public}u: %{public}ld-%{public}ld]: enter", v20, 0x1Cu);
    v21 = v20;
    v8 = v19;
    v9 = v91;
    MEMORY[0x193B0C7F0](v21, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  v22 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
  swift_beginAccess();
  sub_19202CFFC(v2 + v22, v7, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_192033970(v7, &qword_1EADEF250, &qword_19222C6C0);
    goto LABEL_19;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_19203B36C();
  sub_1922261E0();
  LODWORD(v23) = v93;
  sub_19203B3CC();
  sub_1922261E0();
  v24 = v94;
  v25 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily;
  swift_beginAccess();
  v26 = *(v2 + v25);
  if (!*(v26 + 16))
  {
    goto LABEL_14;
  }

  v27 = *(v2 + v25);

  v28 = sub_1920B73A8(v23, v24);
  if ((v29 & 1) == 0)
  {

LABEL_14:
    v90 = v24;
    v91 = v8;
    Width = CGImageGetWidth(v15);
    sub_192225EA0();
    v47 = Width / v46;
    Height = CGImageGetHeight(v15);
    sub_192225EA0();
    v50 = Height / v49;
    v51 = v15;
    v52 = sub_192225890();
    v53 = sub_192227F80();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v89 = v23;
      v23 = v54;
      *v54 = 67240704;
      v54[1] = CGImageGetIdentifier();

      *(v23 + 4) = 2050;
      *(v23 + 10) = v47;
      *(v23 + 9) = 2050;
      *(v23 + 5) = v50;
      _os_log_impl(&dword_192028000, v52, v53, "Filtered image [%{public}u]: new largest image: (%{public}f, %{public}f", v23, 0x1Cu);
      v55 = v23;
      LOBYTE(v23) = v89;
      MEMORY[0x193B0C7F0](v55, -1, -1);
    }

    else
    {

      v52 = v51;
    }

    swift_beginAccess();
    v56 = v90;
    v57 = *(v2 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v2 + v25);
    *(v2 + v25) = 0x8000000000000000;
    v59 = v47;
    v60 = v50;
    v61 = v23;
    goto LABEL_18;
  }

  v30 = (*(v26 + 56) + 16 * v28);
  v31 = *v30;
  v32 = v30[1];

  v33 = CGImageGetWidth(v15);
  sub_192225EA0();
  v35 = v33 / v34;
  v36 = CGImageGetHeight(v15);
  sub_192225EA0();
  v38 = v36 / v37;
  if (v31 * v32 < v35 * v38)
  {
    v89 = v23;
    v91 = v8;
    v39 = v15;
    v40 = sub_192225890();
    v41 = sub_192227F80();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v90 = v24;
      v43 = v42;
      *v42 = 67240704;
      v42[1] = CGImageGetIdentifier();

      *(v43 + 4) = 2050;
      *(v43 + 10) = v35;
      *(v43 + 9) = 2050;
      *(v43 + 5) = v38;
      _os_log_impl(&dword_192028000, v40, v41, "Filtered image [%{public}u]: new largest image: (%{public}f, %{public}f", v43, 0x1Cu);
      v44 = v43;
      v24 = v90;
      MEMORY[0x193B0C7F0](v44, -1, -1);
    }

    else
    {

      v40 = v39;
    }

    swift_beginAccess();
    v56 = v24;
    v87 = *(v2 + v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v2 + v25);
    *(v2 + v25) = 0x8000000000000000;
    v59 = v35;
    v60 = v38;
    v61 = v89;
LABEL_18:
    sub_19213E224(v61, v56, isUniquelyReferenced_nonNull_native, v59, v60);

    *(v2 + v25) = v95;
    swift_endAccess();

    (*(v9 + 8))(v12, v91);
    goto LABEL_19;
  }

  (*(v9 + 8))(v12, v8, v35 * v38, v31 * v32);

LABEL_19:
  *&v62 = COERCE_DOUBLE(sub_192174AB4());
  if (v64)
  {
    v65 = v15;
    v66 = sub_192225890();
    v67 = sub_192227FB0();
    if (!os_log_type_enabled(v66, v67))
    {

      v66 = v65;
LABEL_34:

      return v15;
    }

    v68 = swift_slowAlloc();
    *v68 = 67240704;
    *(v68 + 4) = CGImageGetIdentifier();
    *(v68 + 8) = 2050;
    *(v68 + 10) = CGImageGetWidth(v65);
    *(v68 + 18) = 2050;
    *(v68 + 20) = CGImageGetHeight(v65);

    v69 = "Filtered image [%{public}u: %{public}ld-%{public}ld]: exit (no size constraints configured)";
    v70 = v67;
LABEL_29:
    _os_log_impl(&dword_192028000, v66, v70, v69, v68, 0x1Cu);
    MEMORY[0x193B0C7F0](v68, -1, -1);
    goto LABEL_34;
  }

  v71 = *&v62;
  v72 = v63;
  v73 = CGImageGetWidth(v15);
  result = CGImageGetHeight(v15);
  v75 = v73 * result;
  if ((v73 * result) >> 64 == (v73 * result) >> 63)
  {
    v76 = v15;
    v66 = sub_192225890();
    v77 = sub_192227F80();
    v78 = os_log_type_enabled(v66, v77);
    if (v71 * v72 < v75)
    {
      if (v78)
      {
        v79 = swift_slowAlloc();
        *v79 = 67240704;
        *(v79 + 4) = CGImageGetIdentifier();
        *(v79 + 8) = 2050;
        *(v79 + 10) = CGImageGetWidth(v76);
        *(v79 + 18) = 2050;
        *(v79 + 20) = CGImageGetHeight(v76);

        _os_log_impl(&dword_192028000, v66, v77, "Filtered image [%{public}u: %{public}ld-%{public}ld]: exit (too large)", v79, 0x1Cu);
        MEMORY[0x193B0C7F0](v79, -1, -1);
      }

      else
      {

        v66 = v76;
      }

      v80 = v76;
      v81 = sub_192225890();
      v82 = sub_192227FA0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 67241216;
        *(v83 + 4) = CGImageGetIdentifier();
        *(v83 + 8) = 2050;
        *(v83 + 10) = CGImageGetWidth(v80);
        *(v83 + 18) = 2050;
        *(v83 + 20) = CGImageGetHeight(v80);

        *(v83 + 28) = 2050;
        *(v83 + 30) = v75;
        *(v83 + 38) = 2050;
        *(v83 + 40) = v71 * v72;
        _os_log_impl(&dword_192028000, v81, v82, "Widget archival failed due to image being too large [%{public}u] - (%{public}ld, %{public}ld), totalArea: %{public}ld > max[%{public}f].", v83, 0x30u);
        MEMORY[0x193B0C7F0](v83, -1, -1);
      }

      else
      {

        v81 = v80;
      }

      v84 = CGImageGetWidth(v80);
      v85 = CGImageGetHeight(v80);
      sub_192179630();
      swift_allocError();
      *v86 = v84;
      *(v86 + 8) = v85;
      *(v86 + 16) = v71;
      *(v86 + 24) = v72;
      *(v86 + 32) = 2;
      swift_willThrow();
      return v15;
    }

    if (!v78)
    {

      v66 = v76;
      goto LABEL_34;
    }

    v68 = swift_slowAlloc();
    *v68 = 67240704;
    *(v68 + 4) = CGImageGetIdentifier();
    *(v68 + 8) = 2050;
    *(v68 + 10) = CGImageGetWidth(v76);
    *(v68 + 18) = 2050;
    *(v68 + 20) = CGImageGetHeight(v76);

    v69 = "Filtered image [%{public}u: %{public}ld-%{public}ld]: exit (allowed)";
    v70 = v77;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_192179630()
{
  result = qword_1EADEDB88;
  if (!qword_1EADEDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDB88);
  }

  return result;
}

uint64_t sub_1921796CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit0A8ArchiverC14ArchivingErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_192179824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_19217986C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1921798B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_192179908()
{
  v0 = type metadata accessor for BundleStub();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_192179D48(319, &qword_1ED74B560, MEMORY[0x1E697F228]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_192179D48(319, &qword_1ED74B270, MEMORY[0x1E69E8450]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_192179D48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_192179DC4()
{
  result = sub_192225150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_192179E84()
{
  result = qword_1ED749518;
  if (!qword_1ED749518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749518);
  }

  return result;
}

uint64_t sub_192179EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_192179F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192179FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192225150();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineReloadPolicy();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BundleStub();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for WidgetArchivableMetadata(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v60 - v25;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v64 = (*(*(v27 + 8) + 16))(v26);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  (*(*(v29 + 8) + 32))(v71, v28);
  v61 = type metadata accessor for BundleStub;
  sub_19204E754(a2 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, v19, type metadata accessor for BundleStub);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v68 = (*(*(v31 + 8) + 56))(v30);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  (*(*(v33 + 8) + 64))(v32);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  (*(*(v35 + 8) + 40))(v34);
  v36 = *(a2 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion);
  *&v24[v20[8]] = v64;
  WidgetEnvironment.filterForArchiving()();
  *&v24[v20[7]] = v71[0];
  v64 = v20;
  v37 = v20[6];
  v62 = v24;
  v38 = &v24[v37];
  v39 = v68;
  sub_19204E754(v19, v38, v61);
  v40 = *(v39 + 16);
  if (v40)
  {
    v61 = v19;
    v74 = MEMORY[0x1E69E7CC0];
    sub_19209AD2C(0, v40, 0);
    v41 = v74;
    v42 = v39 + 32;
    do
    {
      sub_192033A64(v42, v71);
      v43 = v72;
      v44 = v73;
      v45 = __swift_project_boxed_opaque_existential_1(v71, v72);
      v46 = *(*(v43 - 8) + 64);
      MEMORY[0x1EEE9AC00](v45);
      v48 = &v60 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48);
      sub_1920E1CC4(v48, v43, v44, v9);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v74 = v41;
      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_19209AD2C(v50 > 1, v51 + 1, 1);
        v41 = v74;
      }

      *(v41 + 16) = v51 + 1;
      sub_19203D160(v9, v41 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v51, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
      v42 += 40;
      --v40;
    }

    while (v40);
    sub_192179F60(v61, type metadata accessor for BundleStub);
  }

  else
  {

    sub_192179F60(v19, type metadata accessor for BundleStub);
    v41 = MEMORY[0x1E69E7CC0];
  }

  v52 = v64;
  v53 = v62;
  *&v62[*(v64 + 36)] = v41;
  sub_19203D160(v69, &v53[v52[11]], type metadata accessor for TimelineReloadPolicy);
  (*(v65 + 32))(&v53[v52[5]], v70, v66);
  *v53 = v36;
  *&v53[v52[10]] = v67;
  v54 = v63;
  sub_19203D160(v53, v63, type metadata accessor for WidgetArchivableMetadata);
  v55 = sub_192224F70();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  sub_192224F60();
  sub_1921796CC(&qword_1ED74AE10, type metadata accessor for WidgetArchivableMetadata);
  v58 = sub_192224F50();
  sub_192179F60(v54, type metadata accessor for WidgetArchivableMetadata);

  return v58;
}

uint64_t sub_19217A684(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_19217A6EC()
{
  result = qword_1ED74A0C8;
  if (!qword_1ED74A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0C8);
  }

  return result;
}

unint64_t sub_19217A740()
{
  result = qword_1EADF1400;
  if (!qword_1EADF1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1400);
  }

  return result;
}

uint64_t sub_19217A7E8(uint64_t a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  return sub_1921756BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

id sub_19217A828()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  return sub_1920EEA04(*(v0 + 16), *(v0 + 24), *(v0 + 40));
}

WidgetKit::WidgetContentLayer_optional __swiftcall WidgetContentLayer.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_19217A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19217B520();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.showsWidgetContentLayers.getter()
{
  sub_19206DA7C();
  sub_1922261E0();
  return v1;
}

uint64_t sub_19217A970@<X0>(void *a1@<X8>)
{
  sub_19206DA7C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.showsWidgetContentLayers.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_19206DA7C();
  sub_1922261E0();
  return sub_19217AA5C;
}

uint64_t sub_19217AA5C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_1922261F0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_1922261F0();
  }
}

uint64_t View.showsContentLayer(_:)()
{
  swift_getKeyPath();
  sub_192227040();
}

uint64_t sub_19217AB64()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19206A098(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

uint64_t WidgetContentLayerTag.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 9) = v3;
  return result;
}

uint64_t WidgetContentLayerTag.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1428, &qword_19223B440);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1430, &qword_19223B448);
  v7 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v24 - v8;
  v10 = sub_1922261D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  v16 = *(v2 + 9);
  if (*(v2 + 8) == 1)
  {
  }

  else
  {

    sub_192227FA0();
    v17 = sub_192226D00();
    v25 = v6;
    v18 = a1;
    v19 = v17;
    sub_1922257A0();

    a1 = v18;
    v6 = v25;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19206A098(v15, 0);
    (*(v11 + 8))(v14, v10);
    v15 = v29;
  }

  v20 = sub_19206CB1C(v16, v15);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1438, &qword_19223B450);
  v22 = *(*(v21 - 8) + 16);
  if (v20)
  {
    v22(v6, a1, v21);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450);
    return sub_1922266E0();
  }

  else
  {
    v22(v9, a1, v21);
    sub_19202CFFC(v9, v6, &qword_1EADF1430, &qword_19223B448);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450);
    sub_1922266E0();
    return sub_192033970(v9, &qword_1EADF1430, &qword_19223B448);
  }
}

uint64_t sub_19217B088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C746E65746E6F63 && a2 == 0xEC00000072657961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19217B114(uint64_t a1)
{
  v2 = sub_19205EBC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217B150(uint64_t a1)
{
  v2 = sub_19205EBC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetContentLayerTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1448, &qword_19223B460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 9);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205EBC4();
  sub_192228B90();
  v12 = v8;
  sub_19217B2D8();
  sub_1922288C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_19217B2D8()
{
  result = qword_1ED749F38;
  if (!qword_1ED749F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F38);
  }

  return result;
}

unint64_t sub_19217B330()
{
  result = qword_1EADF1450;
  if (!qword_1EADF1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1450);
  }

  return result;
}

uint64_t sub_19217B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206E8C4();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_19217B474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_19217B4CC()
{
  result = qword_1EADF1470;
  if (!qword_1EADF1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1470);
  }

  return result;
}

unint64_t sub_19217B520()
{
  result = qword_1EADF1478;
  if (!qword_1EADF1478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0F98, &qword_1922385E0);
    sub_19217B330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1478);
  }

  return result;
}

uint64_t sub_19217B5C0()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  if (v9 != 1)
  {
    sub_19216E0E0(*(v0 + 16), 0);
    sub_192227FA0();
    v12 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v8, 0);
    (*(v2 + 8))(v5, v1);
    v10 = LOBYTE(v27[0]);
    if (LOBYTE(v27[0]) != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 1;
    return v11 & 1;
  }

  v10 = *(v0 + 16);
  if (v10 == 3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v10 >= 2)
  {
    v27[3] = &type metadata for FeatureFlags.Widgets;
    v27[4] = sub_19202DBA4();
    LOBYTE(v27[0]) = 16;
    v11 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v11 = 0;
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1922258B0();
  __swift_project_value_buffer(v13, qword_1ED74CCC8);
  sub_19206A08C(v6, v7);
  sub_19216E0E0(v8, v9);
  v14 = sub_192225890();
  v15 = sub_192227FB0();
  if (os_log_type_enabled(v14, v15))
  {
    v26 = v2;
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v11 & 1;
    *(v16 + 8) = 2048;
    if (v9)
    {
      v17 = v8;
    }

    else
    {
      sub_19216E0E0(v8, 0);
      sub_192227FA0();
      v25 = v7;
      v18 = sub_192226D00();
      v24 = v6;
      v19 = v18;
      LOBYTE(v7) = v25;
      sub_1922257A0();

      v6 = v24;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192049898(v8, 0);
      (*(v26 + 8))(v5, v1);
      v17 = LOBYTE(v27[0]);
    }

    v20 = v17;
    v21 = v17 == 3;
    v22 = -1;
    if (!v21)
    {
      v22 = v20 + 1;
    }

    *(v16 + 10) = v22;
    sub_19206A098(v6, v7);
    sub_192049898(v8, v9);
    _os_log_impl(&dword_192028000, v14, v15, "Supports content layers? %{BOOL}d, archiveVersion=%ld", v16, 0x12u);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  else
  {
    sub_19206A098(v6, v7);
    sub_192049898(v8, v9);
  }

  return v11 & 1;
}

uint64_t sub_19217B960(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1480, &qword_19223B9B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1488, &qword_19223B9C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(v1 + 8);
  v12 = v1[2];
  v13 = *(v1 + 24);
  v14 = *(v1 + 25);
  v20 = *v1;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  if (sub_19217B5C0())
  {
    KeyPath = swift_getKeyPath();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1490, &qword_19223B9C8);
    (*(*(v16 - 8) + 16))(v10, a1, v16);
    v17 = &v10[*(v7 + 36)];
    *v17 = KeyPath;
    v17[8] = 0;
    v17[9] = v14;
    sub_19202CFFC(v10, v6, &qword_1EADF1488, &qword_19223B9C0);
    swift_storeEnumTagMultiPayload();
    sub_19217BC48();
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8);
    sub_1922266E0();
    return sub_192033970(v10, &qword_1EADF1488, &qword_19223B9C0);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1490, &qword_19223B9C8);
    (*(*(v19 - 8) + 16))(v6, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_19217BC48();
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8);
    return sub_1922266E0();
  }
}

unint64_t sub_19217BC48()
{
  result = qword_1ED749FF8;
  if (!qword_1ED749FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1488, &qword_19223B9C0);
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8);
    sub_19203FB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FF8);
  }

  return result;
}

unint64_t sub_19217BD00()
{
  result = qword_1ED749F68;
  if (!qword_1ED749F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1498, &qword_19223B9D0);
    sub_19217BC48();
    sub_192031E74(&qword_1ED749F58, &qword_1EADF1490, &qword_19223B9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F68);
  }

  return result;
}

WidgetKit::WidgetProximity::Proximity_optional __swiftcall WidgetProximity.Proximity.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t EnvironmentValues.widgetProximity.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.widgetProximity.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19205337C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19217BFDC;
}

uint64_t sub_19217BFDC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

uint64_t CHSWidgetProximity._chsProximities.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CHSWidgetProximities.init(_:)(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    return 2;
  }

  type metadata accessor for CHSWidgetProximity(0);
  result = sub_192228A10();
  __break(1u);
  return result;
}

unint64_t sub_19217C080()
{
  result = qword_1EADF14A0;
  if (!qword_1EADF14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF14A0);
  }

  return result;
}

unint64_t sub_19217C0D4()
{
  result = qword_1EADF14A8;
  if (!qword_1EADF14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF14A8);
  }

  return result;
}

uint64_t sub_19217C144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v38 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B0, &qword_19223BC90);
  v6 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v35 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B8, &qword_19223BC98);
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v35 - v10;
  v12 = sub_1922261D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = a2;
  }

  else
  {

    sub_192227FA0();
    v18 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(a2, 0);
    (*(v13 + 8))(v16, v12);
    v17 = v39;
  }

  [v17 layoutInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (a3)
  {
    v25 = a2;
  }

  else
  {

    sub_192227FA0();
    v26 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(a2, 0);
    (*(v13 + 8))(v16, v12);
    v25 = v39;
  }

  [v25 size];

  if (a3)
  {
    v27 = a2;
  }

  else
  {

    sub_192227FA0();
    v28 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(a2, 0);
    (*(v13 + 8))(v16, v12);
    v27 = v39;
  }

  [v27 size];

  sub_1922275F0();
  sub_192225AA0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14C0, &qword_19223BCA0);
  (*(*(v29 - 8) + 16))(v11, v35, v29);
  v30 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14C8, &qword_19223BCA8) + 36)];
  v31 = v40;
  *v30 = v39;
  *(v30 + 1) = v31;
  *(v30 + 2) = v41;
  v32 = sub_192226D10();
  v33 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14D0, &qword_19223BCB0) + 36)];
  *v33 = v32;
  *(v33 + 1) = v20;
  *(v33 + 2) = v22;
  *(v33 + 3) = v22;
  *(v33 + 4) = v24;
  v33[40] = 0;
  *&v11[*(v37 + 36)] = 0;
  sub_19217C680(v11, v8);
  swift_storeEnumTagMultiPayload();
  sub_19217C6F0();
  sub_192031E74(&qword_1ED74A0E0, &qword_1EADF14C0, &qword_19223BCA0);
  sub_1922266E0();
  return sub_19217C8EC(v11);
}

uint64_t sub_19217C680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B8, &qword_19223BC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19217C6F0()
{
  result = qword_1ED74A110;
  if (!qword_1ED74A110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14B8, &qword_19223BC98);
    sub_19217C7A8();
    sub_192031E74(&qword_1ED74A158, &qword_1EADF14D8, &qword_19223BCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A110);
  }

  return result;
}

unint64_t sub_19217C7A8()
{
  result = qword_1ED74A120;
  if (!qword_1ED74A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14D0, &qword_19223BCB0);
    sub_19217C834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A120);
  }

  return result;
}

unint64_t sub_19217C834()
{
  result = qword_1ED74A138;
  if (!qword_1ED74A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14C8, &qword_19223BCA8);
    sub_192031E74(&qword_1ED74A0E0, &qword_1EADF14C0, &qword_19223BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A138);
  }

  return result;
}

uint64_t sub_19217C8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14B8, &qword_19223BC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19217C954()
{
  result = qword_1ED74A0F0;
  if (!qword_1ED74A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14E0, &unk_19223BCC0);
    sub_19217C6F0();
    sub_192031E74(&qword_1ED74A0E0, &qword_1EADF14C0, &qword_19223BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0F0);
  }

  return result;
}

uint64_t sub_19217CA0C@<X0>(uint64_t a1@<X8>)
{
  sub_192226570();
  sub_19217E160(&qword_1EADEFF38, MEMORY[0x1E697F4E0]);
  sub_192227E00();
  sub_192227E60();
  if (v9[4] == v9[0])
  {
    v2 = sub_1922275A0();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_192227ED0();
    v6 = v5;
    v7 = sub_1922275A0();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_19217CBA4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_192226570();
    sub_19217E160(&qword_1EADEFF38, MEMORY[0x1E697F4E0]);
    sub_192227E00();
    sub_192227E60();
    sub_192227E30();
    if (v4)
    {
      sub_192227E60();
    }

    else
    {
      v6 = v3;
    }

    result = sub_192227E60();
    if (v5 >= v6)
    {
      sub_192227EC0();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19217CCF8@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v47 = sub_192226900();
  v37 = *(v47 - 8);
  v1 = v37;
  v2 = *(v37 + 64);
  v3 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = sub_1922268E0();
  v43 = *(v7 - 8);
  v8 = v43;
  v9 = *(v43 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v42 = &v37 - v13;
  sub_1922268F0();
  sub_192226540();
  v38 = sub_192226FC0();
  v39 = v15;
  v17 = v16;
  v19 = v18;
  v40 = v6;
  sub_192226910();
  v20 = *(v8 + 16);
  v44 = v12;
  v41 = v7;
  v20(v12, v14, v7);
  v48 = v19 & 1;
  v21 = *(v1 + 16);
  v22 = v46;
  v23 = v6;
  v24 = v47;
  v21(v46, v23, v47);
  v25 = v45;
  v20(v45, v12, v7);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1518, &qword_19223BDB0);
  v27 = v25;
  v28 = &v25[*(v26 + 48)];
  v29 = v48;
  v31 = v38;
  v30 = v39;
  *v28 = v38;
  *(v28 + 1) = v17;
  v28[16] = v29;
  *(v28 + 3) = v30;
  v32 = v24;
  v21(&v27[*(v26 + 64)], v22, v24);
  sub_1921114E4(v31, v17, v29);
  v33 = *(v37 + 8);

  v33(v40, v24);
  v34 = *(v43 + 8);
  v35 = v41;
  v34(v42, v41);
  v33(v22, v32);
  sub_19207A338(v31, v17, v48);

  return (v34)(v44, v35);
}

uint64_t sub_19217D03C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_192226330();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1510, &qword_19223BDA8);
  return sub_19217CCF8((a1 + *(v2 + 44)));
}

__n128 AccessoryRectangularLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14E8, &qword_19223BCD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v11 - v4;
  *v5 = sub_192226340();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14F0, &qword_19223BCD8);
  sub_19217D1D4(&v5[*(v6 + 44)]);
  sub_192227600();
  sub_192225DA0();
  sub_19208F3B0(v5, a1);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14F8, &qword_19223BCE0) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_19217D1D4@<X0>(char *a1@<X8>)
{
  v57 = a1;
  v1 = sub_192226FB0();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_192226900();
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1520, &qword_19223BDB8);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v44 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1528, &qword_19223BDC0);
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1530, &qword_19223BDC8);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v44 - v15;
  v50 = sub_1922268E0();
  v46 = *(v50 - 8);
  v16 = v46;
  v17 = *(v46 + 64);
  v18 = MEMORY[0x1EEE9AC00](v50);
  v58 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - v20;
  v45 = &v44 - v20;
  sub_1922268F0();
  *v7 = sub_1922265C0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1538, &qword_19223BDD0) + 44)];
  sub_192226910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1540, &qword_19223BDD8);
  sub_19217E160(&qword_1EADF1548, MEMORY[0x1E697C8A8]);
  sub_192031E74(&qword_1EADF1550, &qword_1EADF1540, &qword_19223BDD8);
  sub_192227350();
  KeyPath = swift_getKeyPath();
  v24 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1558, &qword_19223BE10) + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = 3;
  v24[16] = 0;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1560, &unk_19223BE18) + 36)] = 256;
  sub_192031E74(&qword_1EADF1568, &qword_1EADF1520, &qword_19223BDB8);
  sub_1920FFADC();
  sub_192227020();
  sub_192033970(v7, &qword_1EADF1520, &qword_19223BDB8);
  v25 = &v10[*(v48 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF18, &qword_192231E70) + 28);
  v27 = *MEMORY[0x1E69816C8];
  v28 = sub_192227400();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = v54;
  sub_192226FA0();
  sub_19217DFB4();
  v30 = v59;
  sub_192227030();
  (*(v55 + 8))(v29, v56);
  sub_19208F4B0(v10);
  v31 = *(v16 + 16);
  v32 = v58;
  v33 = v21;
  v34 = v50;
  v31(v58, v33, v50);
  v35 = v51;
  v36 = v52;
  v37 = *(v52 + 16);
  v38 = v53;
  v37(v51, v30, v53);
  v39 = v57;
  v31(v57, v32, v34);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1578, &qword_19223BE58);
  v37(&v39[*(v40 + 48)], v35, v38);
  v41 = *(v36 + 8);
  v41(v59, v38);
  v42 = *(v46 + 8);
  v42(v45, v34);
  v41(v35, v38);
  return (v42)(v58, v34);
}

uint64_t sub_19217D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226570();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFD8, &qword_192232020);
  v7 = *(*(v51 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB0, &unk_192232000);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB8, &qword_192235270);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - v19;
  v21 = sub_1922275A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFC0, &qword_192232010);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v46 - v31;
  v54 = a1;
  sub_19217CA0C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_192033970(v20, &qword_1EADEFFB8, &qword_192235270);
    v33 = 1;
    v34 = v48;
  }

  else
  {
    v47 = a2;
    v35 = *(v22 + 32);
    v35(v25, v20, v21);
    v36 = sub_192226F00();
    KeyPath = swift_getKeyPath();
    v35(v16, v25, v21);
    a2 = v47;
    v38 = v48;
    v39 = &v16[*(v48 + 36)];
    *v39 = KeyPath;
    v39[1] = v36;
    sub_19217E0F0(v16, v32);
    v33 = 0;
    v34 = v38;
  }

  (*(v49 + 56))(v32, v33, 1, v34);
  (*(v52 + 16))(v50, v54, v53);
  sub_19217CBA4(1);
  v40 = sub_192226D80();
  v41 = swift_getKeyPath();
  v42 = &v11[*(v51 + 36)];
  *v42 = v41;
  v42[1] = v40;
  sub_19202CFFC(v32, v30, &qword_1EADEFFC0, &qword_192232010);
  v43 = v55;
  sub_19202CFFC(v11, v55, &qword_1EADEFFD8, &qword_192232020);
  sub_19202CFFC(v30, a2, &qword_1EADEFFC0, &qword_192232010);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1580, &qword_19223BE90);
  sub_19202CFFC(v43, a2 + *(v44 + 48), &qword_1EADEFFD8, &qword_192232020);
  sub_192033970(v11, &qword_1EADEFFD8, &qword_192232020);
  sub_192033970(v32, &qword_1EADEFFC0, &qword_192232010);
  sub_192033970(v43, &qword_1EADEFFD8, &qword_192232020);
  return sub_192033970(v30, &qword_1EADEFFC0, &qword_192232010);
}

unint64_t sub_19217DD8C()
{
  result = qword_1EADF1500;
  if (!qword_1EADF1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14F8, &qword_19223BCE0);
    sub_192031E74(&qword_1EADF1508, &qword_1EADF14E8, &qword_19223BCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1500);
  }

  return result;
}

uint64_t sub_19217DE94(uint64_t a1)
{
  v2 = sub_192227400();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_192225E40();
}

uint64_t sub_19217DF5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1922260C0();
  *a1 = result;
  return result;
}

uint64_t sub_19217DF88(uint64_t *a1)
{
  v1 = *a1;

  return sub_1922260D0();
}

unint64_t sub_19217DFB4()
{
  result = qword_1EADF1570;
  if (!qword_1EADF1570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1528, &qword_19223BDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1520, &qword_19223BDB8);
    sub_192031E74(&qword_1EADF1568, &qword_1EADF1520, &qword_19223BDB8);
    sub_1920FFADC();
    swift_getOpaqueTypeConformance2();
    sub_192031E74(&qword_1EADEFF10, &qword_1EADEFF18, &qword_192231E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1570);
  }

  return result;
}

uint64_t sub_19217E0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB0, &unk_192232000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19217E160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19217E278(uint64_t a1)
{
  v2 = sub_19217E43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217E2B4(uint64_t a1)
{
  v2 = sub_19217E43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetSpatialSurface.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1598, &qword_19223BEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217E43C();
  sub_192228B90();
  v12 = v8;
  sub_19217E490();
  sub_1922288C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_19217E43C()
{
  result = qword_1EADF15A0;
  if (!qword_1EADF15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15A0);
  }

  return result;
}

unint64_t sub_19217E490()
{
  result = qword_1EADF15A8;
  if (!qword_1EADF15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15A8);
  }

  return result;
}

uint64_t WidgetSpatialSurface.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF15B0, &qword_19223BEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217E43C();
  sub_192228B70();
  if (!v2)
  {
    sub_19217E650();
    sub_1922287C0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19217E650()
{
  result = qword_1EADF15B8;
  if (!qword_1EADF15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15B8);
  }

  return result;
}

unint64_t sub_19217E708()
{
  result = qword_1EADF15C0;
  if (!qword_1EADF15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15C0);
  }

  return result;
}

unint64_t sub_19217E760()
{
  result = qword_1EADF15C8;
  if (!qword_1EADF15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15C8);
  }

  return result;
}

unint64_t sub_19217E7B8()
{
  result = qword_1EADF15D0;
  if (!qword_1EADF15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15D0);
  }

  return result;
}

unint64_t sub_19217E810()
{
  result = qword_1EADF15D8;
  if (!qword_1EADF15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15D8);
  }

  return result;
}

unint64_t sub_19217E864()
{
  result = qword_1EADF15E0;
  if (!qword_1EADF15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15E0);
  }

  return result;
}

uint64_t sub_19217E99C(uint64_t a1)
{
  v2 = sub_19217EB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217E9D8(uint64_t a1)
{
  v2 = sub_19217EB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetSpatialChromeStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF15E8, &qword_19223C150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217EB60();
  sub_192228B90();
  v12 = v8;
  sub_19217EBB4();
  sub_1922288C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_19217EB60()
{
  result = qword_1EADF15F0;
  if (!qword_1EADF15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15F0);
  }

  return result;
}

unint64_t sub_19217EBB4()
{
  result = qword_1EADF15F8;
  if (!qword_1EADF15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15F8);
  }

  return result;
}

uint64_t WidgetSpatialChromeStyle.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t WidgetSpatialChromeStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1600, &qword_19223C158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217EB60();
  sub_192228B70();
  if (!v2)
  {
    sub_19217EDE8();
    sub_1922287C0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19217EDE8()
{
  result = qword_1EADF1608;
  if (!qword_1EADF1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1608);
  }

  return result;
}

unint64_t sub_19217EE40()
{
  result = qword_1ED74ABA0;
  if (!qword_1ED74ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABA0);
  }

  return result;
}

unint64_t sub_19217EEF8()
{
  result = qword_1EADF1610;
  if (!qword_1EADF1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1610);
  }

  return result;
}

unint64_t sub_19217EF50()
{
  result = qword_1EADF1618;
  if (!qword_1EADF1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1618);
  }

  return result;
}

unint64_t sub_19217EFA8()
{
  result = qword_1EADF1620;
  if (!qword_1EADF1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1620);
  }

  return result;
}

unint64_t sub_19217F000()
{
  result = qword_1EADF1628;
  if (!qword_1EADF1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1628);
  }

  return result;
}

unint64_t sub_19217F054()
{
  result = qword_1EADF1630;
  if (!qword_1EADF1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1630);
  }

  return result;
}

void sub_19217F0F0()
{
  sub_19217F1C8();
  if (v0 <= 0x3F)
  {
    sub_192040778(319, &qword_1EADEE460);
    if (v1 <= 0x3F)
    {
      sub_192040A54(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19217F1C8()
{
  if (!qword_1EADEE010)
  {
    v0 = sub_192227860();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE010);
    }
  }
}

void sub_19217F270()
{
  sub_19217F398();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityMetricsDefinition();
    if (v1 <= 0x3F)
    {
      sub_19217F3FC();
      if (v2 <= 0x3F)
      {
        sub_19217F1C8();
        if (v3 <= 0x3F)
        {
          sub_192040778(319, &qword_1EADEE458);
          if (v4 <= 0x3F)
          {
            sub_192040A54(319, &qword_1ED74B560, MEMORY[0x1E697F228]);
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

unint64_t sub_19217F398()
{
  result = qword_1EADEE290[0];
  if (!qword_1EADEE290[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EADEE290);
  }

  return result;
}

void sub_19217F3FC()
{
  if (!qword_1EADEE028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFEB0, &unk_19223C4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1638, &unk_192240A20);
    sub_192031E74(&qword_1EADEDFF8, &qword_1EADEFEB0, &unk_19223C4E0);
    sub_192031E74(&qword_1EADEE008, &qword_1EADF1638, &unk_192240A20);
    v0 = type metadata accessor for Cartesian2ProductCollection();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE028);
    }
  }
}

uint64_t sub_19217F4FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1678, &qword_19223C5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192183840();
  sub_192228B90();
  *&v17 = *v3;
  v11 = v17;
  v20 = 0;
  sub_1920E2830();
  v12 = v11;
  sub_1922288C0();

  if (!v2)
  {
    *&v17 = *(v3 + 8);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    sub_192183950(&qword_1EADED3A8, sub_1921839D4);
    sub_1922288C0();
    v13 = *(v3 + 32);
    v14 = *(v3 + 33);
    v17 = *(v3 + 16);
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_19214E818();
    sub_192228850();
    v15 = *(type metadata accessor for JindoViewStates.Metadata(0) + 28);
    LOBYTE(v17) = 3;
    sub_192225020();
    sub_19217FE58(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
    sub_192228850();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_19217F7B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1668, &unk_19223C590);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  v12 = type metadata accessor for JindoViewStates.Metadata(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 16) = 256;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v17 = *(v14 + 36);
  v18 = sub_192225020();
  v19 = *(*(v18 - 8) + 56);
  v31 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192183840();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_192033970(&v16[v31], &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v21 = v29;
    v22 = v7;
    v35 = 0;
    sub_192044634();
    v23 = v30;
    sub_1922287C0();
    *v16 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    v35 = 1;
    sub_192183950(&qword_1EADECF40, sub_192183894);
    sub_1922287C0();
    v27[1] = v32;
    *(v16 + 1) = v32;
    v35 = 2;
    sub_19214E914();
    sub_192228750();
    v24 = v33;
    v25 = v34;
    *(v16 + 1) = v32;
    v16[32] = v24;
    v16[33] = v25;
    LOBYTE(v32) = 3;
    sub_19217FE58(qword_1ED7488E8, MEMORY[0x1E6968FB0]);
    sub_192228750();
    (*(v21 + 8))(v11, v23);
    sub_19203CF50(v22, &v16[v31]);
    sub_1921838E8(v16, v28, type metadata accessor for JindoViewStates.Metadata);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_192183504(v16, type metadata accessor for JindoViewStates.Metadata);
  }
}

unint64_t sub_19217FC60()
{
  v1 = 0x6D6E6F7269766E65;
  v2 = 0x726F6C6F4379656BLL;
  if (*v0 != 2)
  {
    v2 = 0x5255746567646977;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001CLL;
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

uint64_t sub_19217FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192183E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19217FD14(uint64_t a1)
{
  v2 = sub_192183840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217FD50(uint64_t a1)
{
  v2 = sub_192183840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19217FE58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19217FEA0@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v125 = sub_1922259F0();
  v113 = *(v125 - 8);
  v2 = *(v113 + 64);
  v3 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v123 = &v103 - v5;
  v120 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v6 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v8 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v119 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v103 - v13;
  v118 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v15 = *(*(v118 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v118);
  v117 = (&v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v103 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v103 - v22;
  v24 = sub_1922261D0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v122 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v103 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v121 = &v103 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v103 - v34;
  v106 = type metadata accessor for JindoViewStates(0);
  v35 = *(v106 + 28);
  v108 = v1;
  v105 = v35;
  v36 = *(v1 + v35);
  v37 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v38 = *(*&v36[v37] + 16);
  v127 = v24;
  v110 = v25;
  if (v38)
  {
    v104 = v23;
    v39 = v14;
    v40 = v118;
    v41 = v19 + *(v118 + 20);
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    *v19 = v36;
    sub_1921837D8(v19, v39, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    v126 = v39;
    v42 = v119;
    sub_19202CFFC(v39, v119, &qword_1EADEF258, &qword_19222C6C8);
    v43 = v117;
    sub_1921837D8(v42, v117, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    v44 = *v43;
    v45 = *(v40 + 20);
    v46 = *(v120 + 20);
    v47 = *(v25 + 16);
    v119 = v25 + 16;
    v120 = v46;
    v118 = v47;
    v47(v8 + v46, v43 + v45, v24);
    v48 = v36;
    v49 = v44;
    v50 = sub_192056208(MEMORY[0x1E69E7CC0]);
    v128 = v49;
    v51 = v49;

    v52 = sub_192056340(&v128, v50);
    v54 = v53;
    v56 = v55;

    *v8 = v52;
    v8[1] = v54;
    v8[2] = v56;
    sub_192183504(v43, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    if (v54 >> 62)
    {
      goto LABEL_37;
    }

    v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v58 = v126;
    if (v57 >= 1)
    {
      v117 = (v110 + 32);
      v115 = *MEMORY[0x1E697DBA8];
      v114 = (v113 + 104);
      v113 += 8;
      v111 = (v110 + 8);
      v116 = v8;
      v112 = v31;
      do
      {

        if ((sub_19205F34C(v57 - 1) & 1) == 0)
        {
          v59 = *v8;

          v60 = MEMORY[0x1E69E7CC0];
          *v8 = MEMORY[0x1E69E7CC0];
          v61 = v8[1];

          v8[1] = v60;
          v62 = v8[2];

          v8[2] = v60;
        }

        (v118)(v31, v8 + v120, v24);
        if (v54 >> 62)
        {
          v63 = sub_192228340();
          if (!v63)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v63 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v63)
          {
            goto LABEL_17;
          }
        }

        if (v63 < 1)
        {
          __break(1u);
LABEL_37:
          v57 = sub_192228340();
          goto LABEL_4;
        }

        for (i = 0; i != v63; ++i)
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x193B0B410](i, v54);
          }

          else
          {
            v65 = *(v54 + 8 * i + 32);
          }

          (*(**(v65 + 16) + 112))(v31);
        }

LABEL_17:

        v66 = *v117;
        v67 = v121;
        v24 = v127;
        (*v117)(v121, v31, v127);
        v68 = v122;
        v66(v122, v67, v24);
        v69 = v123;
        sub_192225E50();
        v71 = v124;
        v70 = v125;
        (*v114)(v124, v115, v125);
        v72 = sub_1922259E0();
        v73 = *v113;
        (*v113)(v71, v70);
        v73(v69, v70);
        if (v72)
        {
          sub_192033970(v126, &qword_1EADEF258, &qword_19222C6C8);
          sub_192183504(v116, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
          v23 = v104;
          v66(v104, v68, v24);
          v76 = 0;
          goto LABEL_28;
        }

        (*v111)(v68, v24);
        v8 = v116;
        v54 = v116[1];
        v58 = v126;
        if (v54 >> 62)
        {
          v74 = v126;
          if ((v54 & 0x8000000000000000) != 0)
          {
            v75 = v116[1];
          }

          v57 = sub_192228340();
          v58 = v74;
        }

        else
        {
          v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = v112;
      }

      while (v57 > 0);
    }

    sub_192033970(v58, &qword_1EADEF258, &qword_19222C6C8);
    sub_192183504(v8, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
    v76 = 1;
    v23 = v104;
LABEL_28:
    v78 = v110;
    (*(v110 + 56))(v23, v76, 1, v24);
    v80 = (*(v78 + 48))(v23, 1, v24);
    v77 = v108;
    v79 = v107;
    if (v80 != 1)
    {
      (*(v78 + 32))(v107, v23, v24);
      goto LABEL_32;
    }
  }

  else
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    v77 = v108;
    v78 = v25;
    v79 = v107;
  }

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  if ((*(v78 + 48))(v23, 1, v24) != 1)
  {
    sub_192033970(v23, &qword_1EADEF250, &qword_19222C6C0);
  }

LABEL_32:
  v81 = v77[4];
  v82 = v77[5];
  __swift_project_boxed_opaque_existential_1(v77 + 1, v81);
  v83 = (*(v82 + 24))(v81, v82);
  if (v83)
  {
    sub_192227270();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;

    v125 = v89 | (v91 << 32);
    v126 = v85 | (v87 << 32);
  }

  else
  {
    v125 = 0;
    v126 = 0;
  }

  v92 = v106;
  LODWORD(v124) = v83 == 0;
  v128 = *(v77 + v105);
  v93 = v128;
  WidgetEnvironment.filterForArchiving()();
  v94 = v128;
  v95 = *(v77 + *(v92 + 36));
  v96 = v77[4];
  v97 = v77[5];
  __swift_project_boxed_opaque_existential_1(v77 + 1, v96);
  v98 = *(v97 + 32);
  v99 = *(type metadata accessor for JindoViewStates.Metadata(0) + 28);

  v100 = v109;
  v98(v96, v97);
  result = (*(v110 + 8))(v79, v127);
  *v100 = v94;
  *(v100 + 8) = v95;
  v102 = v125;
  *(v100 + 16) = v126;
  *(v100 + 24) = v102;
  *(v100 + 32) = v124;
  *(v100 + 33) = 0;
  return result;
}

uint64_t sub_19218094C(uint64_t a1, uint64_t a2)
{
  v209 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECA0, &qword_19222B090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v187 = &v178 - v6;
  v7 = sub_1922259F0();
  v189 = *(v7 - 8);
  v190 = v7;
  v8 = *(v189 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v181 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v178 - v11;
  v12 = sub_192225E00();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v185 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1650, &qword_19223C568);
  v15 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v178 - v16;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1658, &qword_19223C570);
  v17 = *(*(v183 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v183);
  v178 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v208 = &v178 - v20;
  v21 = type metadata accessor for MetricsRequest();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v196 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v184 = &v178 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v182 = &v178 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v240 = &v178 - v29;
  v30 = sub_1922265A0();
  v194 = *(v30 - 8);
  v195 = v30;
  v31 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v191 = &v178 - v36;
  v37 = type metadata accessor for JindoMetricsDefinition();
  v38 = *(v37 - 8);
  v192 = v37;
  v193 = v38;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v204 = &v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1922261D0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v202 = &v178 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v206 = &v178 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v178 - v48;
  v50 = type metadata accessor for JindoViewStates(0);
  v51 = (v2 + v50[8]);
  v52 = *v51;
  v53 = v51[1];
  v197 = a1;
  v54 = sub_1921F9E14(v49, a1, v52, v53);
  v55 = v2;
  *(&v2->isa + v50[10]) = v54;
  v56 = v50[11];
  sub_192033970(v55 + v56, &qword_1EADEF250, &qword_19222C6C0);
  v200 = *(v42 + 16);
  v201 = v42 + 16;
  v200(v55 + v56, v49, v41);
  v198 = v42;
  v57 = v42;
  v58 = v191;
  v59 = *(v57 + 56);
  v207 = v41;
  v59(v55 + v56, 0, 1, v41);
  v186 = v50;
  v60 = v50[6];
  v203 = v49;
  sub_192225EC0();
  v205 = v55;
  ActivityMetricsDefinition.jindoMetrics(for:)(v33, v58);
  v61 = v192;
  (*(v194 + 8))(v33, v195);
  result = (*(v193 + 48))(v58, 1, v61);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v63 = v204;
  sub_1921837D8(v58, v204, type metadata accessor for JindoMetricsDefinition);
  v64 = v63 + *(v61 + qword_19223CA08[v54]);
  v65 = v240;
  sub_1921838E8(v64, v240, type metadata accessor for MetricsRequest);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  v70 = v54;
  if ((*(v65 + 88) & 1) == 0)
  {
    v67 = *(v65 + 72);
    v71 = *(v65 + 96);
    v68 = *(v65 + 64) <= 0.0 ? *(v65 + 64) : *(v65 + 96);
    v66 = *(v65 + 80) <= 0.0 ? *(v65 + 80) : *(v65 + 96);
    v69 = *(v65 + 56) <= 0.0 ? *(v65 + 56) : *(v65 + 96);
    if (v67 > 0.0)
    {
      v67 = *(v65 + 96);
    }
  }

  isa = v205[4].isa;
  v73 = v205[5].isa;
  __swift_project_boxed_opaque_existential_1(&v205[1].isa, isa);
  v74 = v54;
  v75 = v63;
  v195 = (*(v73 + 1))(v74, v63, isa, v73);
  v76 = *v65;
  if (*(v65 + 16))
  {
    v77 = *(v65 + 8);
  }

  else
  {
    v77 = *v65;
  }

  v78 = *(v65 + 24);
  v79 = *(v65 + 32);
  if (*(v65 + 40))
  {
    v80 = *(v65 + 32);
  }

  else
  {
    v80 = *(v65 + 24);
  }

  if (v70 > 1u)
  {
    if (v70 == 2)
    {
      sub_192227610();
    }

    else
    {
      sub_1922275F0();
    }
  }

  else if (v70)
  {
    sub_192227600();
  }

  else
  {
    sub_1922275E0();
  }

  if (v77 < v76 || v80 < v78)
  {
    sub_192227FA0();
    v81 = sub_192226D00();
    sub_1922257A0();
  }

  sub_192225DA0();
  LOBYTE(v229) = v70;
  v82 = v240;
  v83 = v182;
  sub_1921838E8(v240, v182, type metadata accessor for MetricsRequest);
  v84 = v208;
  sub_1920F7ADC(&v229, v83, (v208 + *(v183 + 36)));
  v85 = v224;
  *(v84 + 56) = v225;
  v86 = v227;
  *(v84 + 72) = v226;
  *(v84 + 88) = v86;
  *(v84 + 104) = v228;
  v87 = v223;
  *(v84 + 8) = v222;
  *(v84 + 24) = v87;
  *v84 = v195;
  *(v84 + 40) = v85;
  v88 = v207;
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  v89 = dyld_program_sdk_at_least();
  v90 = v206;
  v199 = v70;
  if (v89)
  {
    v91 = *(v82 + 48) + (v67 + v69) * -0.5;
    if (v70 > 1u)
    {
      if (v70 == 2)
      {
        *(&v218 + 1) = &type metadata for TrailingConcentricClip;
        v92 = sub_192183730();
        goto LABEL_39;
      }
    }

    else if (v70)
    {
      *(&v218 + 1) = &type metadata for LeadingConcentricClip;
      v92 = sub_192183784();
LABEL_39:
      v219 = v92;
      *&v217 = v91;
LABEL_41:
      __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
      v98 = sub_192226D10();
      v99 = v179;
      sub_19202CFFC(v208, v179, &qword_1EADF1658, &qword_19223C570);
      v100 = v99 + *(v180 + 36);
      *v100 = v98;
      *(v100 + 8) = -v69;
      *(v100 + 16) = -v68;
      *(v100 + 24) = -v67;
      *(v100 + 32) = -v66;
      *(v100 + 40) = 0;
      sub_192225A10();
      v215 = sub_192225C70();
      v101 = sub_1921836A4();
      WitnessTable = swift_getWitnessTable();
      v212 = v101;
      v213 = WitnessTable;
      v216 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(&v214);
      sub_192227210();
      sub_192033970(v99, &qword_1EADF1650, &qword_19223C568);
      v103 = v216;
      __swift_project_boxed_opaque_existential_1(&v214, v215);
      v104 = sub_192225C70();
      *(&v230 + 1) = v104;
      v210 = v103;
      v211 = MEMORY[0x1E697E5D8];
      v231 = swift_getWitnessTable();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v229);
      sub_1922271D0();
      __swift_destroy_boxed_opaque_existential_1(&v214);
      v106 = __swift_destroy_boxed_opaque_existential_1(&v217);
      v107 = *(*(v104 - 8) + 64);
      MEMORY[0x1EEE9AC00](v106);
      (*(v109 + 16))(&v178 - v108, boxed_opaque_existential_1, v104);
      *&v217 = sub_192227570();
      sub_1922264D0();
      __swift_destroy_boxed_opaque_existential_1(&v229);
      v90 = v206;
      v88 = v207;
      v75 = v204;
      goto LABEL_42;
    }

    v93 = sub_192225D60();
    *(&v218 + 1) = v93;
    v219 = sub_19217FE58(&qword_1EADEDDB0, MEMORY[0x1E697EAF0]);
    v94 = __swift_allocate_boxed_opaque_existential_1(&v217);
    v95 = *(v93 + 20);
    v96 = *MEMORY[0x1E697F468];
    v97 = sub_192226560();
    (*(*(v97 - 8) + 104))(v94 + v95, v96, v97);
    *v94 = v91;
    v94[1] = v91;
    goto LABEL_41;
  }

  sub_19202CFFC(v208, v178, &qword_1EADF1658, &qword_19223C570);
  sub_192183564();
  *&v229 = sub_192227570();
  sub_1922264D0();
LABEL_42:
  v110 = v200;
  v200(v90, v203, v88);
  v111 = v205[4].isa;
  v112 = v205[5].isa;
  __swift_project_boxed_opaque_existential_1(&v205[1].isa, v111);
  (*(v112 + 2))(v90, v199, v75, v111, v112);
  sub_192225DE0();
  sub_192225FF0();
  LOBYTE(v229) = 1;
  sub_19215EDB0();
  sub_1922261F0();
  v110(v202, v90, v88);
  sub_192226360();
  v113 = v240;
  v114 = v184;
  sub_1921838E8(v240, v184, type metadata accessor for MetricsRequest);
  v115 = *v114;
  v116 = *(v114 + 16);
  if (!v116)
  {
    v117 = *v114;
  }

  v118 = *(v114 + 24);
  v119 = *(v114 + 40);
  sub_192183504(v114, type metadata accessor for MetricsRequest);
  LOBYTE(v229) = v116;
  LOBYTE(v217) = v119;
  v120 = v113;
  sub_192226370();
  v123 = *v113;
  if (*(v113 + 16))
  {
    v124 = *v113;
    if (*(v113 + 8) < v121)
    {
      v121 = *(v113 + 8);
    }

    v125 = v189;
    v126 = v190;
    v127 = v187;
    if (v121 > v123)
    {
      v124 = v121;
    }
  }

  else
  {
    v124 = *v113;
    v125 = v189;
    v126 = v190;
    v127 = v187;
  }

  v128 = v206;
  if (*(v120 + 40))
  {
    v129 = *(v120 + 32);
    v130 = *(v120 + 24);
    if (v129 >= v122)
    {
      v129 = v122;
    }

    if (v129 > *(v120 + 24))
    {
      v130 = v129;
    }
  }

  else
  {
    v130 = *(v120 + 24);
  }

  sub_19216F7A4();
  sub_1922261E0();
  if ((v229 & 1) == 0)
  {
    sub_192226940();
    sub_1922263F0();
    v131 = v127;
    v132 = *(v125 + 48);
    if (v132(v131, 1, v126) == 1)
    {
      (*(v125 + 104))(v188, *MEMORY[0x1E697DBA8], v126);
      v133 = v132(v131, 1, v126);
      v134 = v125;
      if (v133 != 1)
      {
        sub_192033970(v131, &unk_1EADEECA0, &qword_19222B090);
      }
    }

    else
    {
      (*(v125 + 32))(v188, v131, v126);
      v134 = v125;
    }

    if (sub_192225FB0())
    {
      (*(v134 + 104))(v181, *MEMORY[0x1E697DBA8], v126);
      v135 = v188;
    }

    else
    {
      v135 = v188;
      (*(v134 + 16))(v181, v188, v126);
    }

    v120 = v240;
    sub_192225E60();
    v200(v202, v128, v207);
    sub_192226360();
    (*(v134 + 8))(v135, v126);
  }

  v136 = *(v120 + 48);
  LOBYTE(v217) = 1;
  v229 = 0uLL;
  *&v230 = v124;
  *(&v230 + 1) = v130;
  v231 = v136;
  v232 = 0;
  v234 = 0;
  v233 = 0;
  v235 = 256;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v239 = 257;
  v137 = v120;
  v138 = v186[9];
  v139 = v205;
  v140 = *(&v205->isa + v138);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v217 = *(v139 + v138);
  sub_19213DC78(&v229, v197, isUniquelyReferenced_nonNull_native);
  *(&v139->isa + v138) = v217;
  if (qword_1EADEDEC0 != -1)
  {
    swift_once();
  }

  v142 = sub_1922258B0();
  __swift_project_value_buffer(v142, qword_1EAE007F0);
  v143 = v196;
  sub_1921838E8(v137, v196, type metadata accessor for MetricsRequest);
  v144 = sub_192225890();
  v145 = sub_192227F80();
  v146 = os_log_type_enabled(v144, v145);
  v148 = v198;
  v147 = v199;
  if (v146)
  {
    v149 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v221[0] = v194;
    *v149 = 134350338;
    *(v149 + 4) = v197;
    *(v149 + 12) = 2082;
    v205 = v144;
    LODWORD(v195) = v145;
    if (v147 > 1u)
    {
      if (v147 == 2)
      {
        v150 = 0xEF676E696C696172;
        v151 = 0x54746361706D6F63;
      }

      else
      {
        v150 = 0xEE006C616D696E69;
        v151 = 0x4D746361706D6F63;
      }
    }

    else if (v147)
    {
      v150 = 0xEE00676E69646165;
      v151 = 0x4C746361706D6F63;
    }

    else
    {
      v150 = 0xE800000000000000;
      v151 = 0x6465646E61707865;
    }

    v154 = sub_19202B8CC(v151, v150, v221);

    *(v149 + 14) = v154;
    *(v149 + 22) = 2082;
    v155 = v196;
    v156 = *(v196 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_19222B480;
    *(v157 + 56) = MEMORY[0x1E69E7DE0];
    *(v157 + 64) = sub_192150ED0();
    *(v157 + 32) = v156;
    v158 = sub_192227970();
    v160 = v159;
    sub_192183504(v155, type metadata accessor for MetricsRequest);
    v161 = sub_19202B8CC(v158, v160, v221);

    *(v149 + 24) = v161;
    *(v149 + 32) = 2082;
    v162 = sub_192228130();
    v164 = sub_19202B8CC(v162, v163, v221);

    *(v149 + 34) = v164;
    *(v149 + 42) = 2082;
    *&v217 = 0;
    *(&v217 + 1) = 0xE000000000000000;
    sub_192228400();
    v214 = v217;
    MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224A320);
    v217 = v229;
    v218 = v230;
    type metadata accessor for CGRect(0);
    sub_1922285A0();
    MEMORY[0x193B0A990](0x72656E726F63202CLL, 0xEF3D737569646152);
    v165 = sub_192227D10();
    MEMORY[0x193B0A990](v165);

    MEMORY[0x193B0A990](62, 0xE100000000000000);
    v166 = sub_19202B8CC(v214, *(&v214 + 1), v221);

    *(v149 + 44) = v166;
    *(v149 + 52) = 2082;
    v167 = v206;
    swift_beginAccess();
    v168 = v202;
    v153 = v207;
    v200(v202, v167, v207);
    v220 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
    WidgetEnvironment.apply(environmentValues:)();
    v148 = v198;
    (*(v198 + 8))(v168, v153);
    v169 = v220;
    *&v214 = 0xD000000000000012;
    *(&v214 + 1) = 0x80000001922488B0;
    v170 = [v220 debugDescription];
    v171 = sub_192227960();
    v173 = v172;

    MEMORY[0x193B0A990](v171, v173);
    v128 = v167;

    v174 = sub_19202B8CC(v214, *(&v214 + 1), v221);

    *(v149 + 54) = v174;
    v175 = v205;
    _os_log_impl(&dword_192028000, v205, v195, "archive index: %{public}ld, tag: %{public}s, cornerRadius: %{public}s, fitting size: %{public}s, metadata metrics: %{public}s, env: %{public}s", v149, 0x3Eu);
    v176 = v194;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v176, -1, -1);
    MEMORY[0x193B0C7F0](v149, -1, -1);

    v152 = v204;
  }

  else
  {

    sub_192183504(v143, type metadata accessor for MetricsRequest);
    v152 = v204;
    v153 = v207;
  }

  sub_1922264A0();
  sub_192033970(v208, &qword_1EADF1658, &qword_19223C570);
  sub_192183504(v240, type metadata accessor for MetricsRequest);
  sub_192183504(v152, type metadata accessor for JindoMetricsDefinition);
  v177 = *(v148 + 8);
  v177(v203, v153);
  return (v177)(v128, v153);
}

CGImageRef sub_192181FD0(CGImage *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = v89 - v4;
  v5 = type metadata accessor for MetricsRequest();
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v97 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1922265A0();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v90 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v89 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v89 - v19;
  v21 = sub_1922261D0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  MEMORY[0x1EEE9AC00](v21);
  v101 = (v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = 91;
  v103 = 0xE100000000000000;
  LODWORD(Width) = CGImageGetIdentifier();
  v25 = sub_192228910();
  MEMORY[0x193B0A990](v25);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  Width = CGImageGetWidth(a1);
  v26 = sub_192228910();
  MEMORY[0x193B0A990](v26);

  MEMORY[0x193B0A990](120, 0xE100000000000000);
  v98 = a1;
  Width = CGImageGetHeight(a1);
  v27 = sub_192228910();
  MEMORY[0x193B0A990](v27);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v28 = v103;
  v99 = v102;
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v29 = sub_1922258B0();
  v30 = __swift_project_value_buffer(v29, qword_1ED74C788);

  v89[1] = v30;
  v31 = sub_192225890();
  v32 = sub_192227FB0();

  v33 = v16;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    v35 = v21;
    v36 = v22;
    v37 = swift_slowAlloc();
    v102 = v37;
    *v34 = 136446210;
    *(v34 + 4) = sub_19202B8CC(v99, v28, &v102);
    _os_log_impl(&dword_192028000, v31, v32, "%{public}s Filtering image", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v38 = v37;
    v22 = v36;
    v21 = v35;
    MEMORY[0x193B0C7F0](v38, -1, -1);
    MEMORY[0x193B0C7F0](v34, -1, -1);
  }

  v39 = v101;
  v40 = type metadata accessor for JindoViewStates(0);
  v41 = v100;
  sub_19202CFFC(v100 + v40[11], v20, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v22 + 6))(v20, 1, v21) == 1)
  {

    sub_192033970(v20, &qword_1EADEF250, &qword_19222C6C0);
    sub_1921834B0();
    swift_allocError();
    *v42 = xmmword_19223C490;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v22 + 4))(v39, v20, v21);
    v44 = *(v41 + v40[10]);
    if (v44 == 4)
    {

      sub_1921834B0();
      swift_allocError();
      *v45 = 0xD000000000000013;
      *(v45 + 8) = 0x800000019224CB80;
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0;
      swift_willThrow();
      return (*(v22 + 1))(v39, v21);
    }

    else
    {
      v101 = v22;
      v46 = v40[6];
      v47 = v90;
      sub_192225EC0();
      v48 = v33;
      ActivityMetricsDefinition.jindoMetrics(for:)(v47, v33);
      (*(v91 + 8))(v47, v92);
      v49 = v33;
      v50 = v93;
      sub_19202CFFC(v49, v93, &qword_1EADEFA58, &unk_19222F820);
      v51 = type metadata accessor for JindoMetricsDefinition();
      v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
      v53 = (v94 + 56);
      if (v52 == 1)
      {

        sub_192033970(v48, &qword_1EADEFA58, &unk_19222F820);
        v101[1](v39, v21);
        sub_192033970(v50, &qword_1EADEFA58, &unk_19222F820);
        v54 = v96;
        (*v53)(v96, 1, 1, v95);
        sub_192033970(v54, &qword_1EADF1640, &qword_19223C560);
        return v98;
      }

      else
      {
        v100 = v48;
        v55 = v50 + *(v51 + qword_19223CA08[v44]);
        v56 = v96;
        sub_1921838E8(v55, v96, type metadata accessor for MetricsRequest);
        sub_192183504(v50, type metadata accessor for JindoMetricsDefinition);
        (*v53)(v56, 0, 1, v95);
        v57 = v97;
        sub_1921837D8(v56, v97, type metadata accessor for MetricsRequest);
        if (v44)
        {
          v58 = 1.5;
        }

        else
        {
          v58 = 1.2;
        }

        if (v44)
        {
          v59 = 2.0;
        }

        else
        {
          v59 = 1.2;
        }

        sub_192225EA0();
        v61 = (v57 + 8);
        if (!*(v57 + 16))
        {
          v61 = v57;
        }

        v62 = fmax(v58 * (v60 * *v61), 80.0);
        v63 = (v57 + 24);
        if (*(v57 + 40))
        {
          v63 = (v57 + 32);
        }

        v64 = fmax(v59 * (v60 * *v63), 80.0);
        v65 = v98;
        if (v62 <= CGImageGetWidth(v98) || v64 <= CGImageGetHeight(v65))
        {
          v96 = v21;
          v72 = sub_1921FC980(v62, v64);
          if (v72)
          {
            v73 = v72;

            v74 = sub_192225890();
            v75 = sub_192227FA0();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v102 = v77;
              *v76 = 136446722;
              v78 = sub_19202B8CC(v99, v28, &v102);

              *(v76 + 4) = v78;
              *(v76 + 12) = 2050;
              *(v76 + 14) = v62;
              *(v76 + 22) = 2050;
              *(v76 + 24) = v64;
              _os_log_impl(&dword_192028000, v74, v75, "%{public}s Max size exceeded: %{public}fx%{public}f; using placeholder image", v76, 0x20u);
              __swift_destroy_boxed_opaque_existential_1(v77);
              MEMORY[0x193B0C7F0](v77, -1, -1);
              MEMORY[0x193B0C7F0](v76, -1, -1);
            }

            else
            {
            }

            sub_192183504(v97, type metadata accessor for MetricsRequest);
            sub_192033970(v100, &qword_1EADEFA58, &unk_19222F820);
            v101[1](v39, v96);
            return v73;
          }

          else
          {

            v79 = sub_192225890();
            v80 = sub_192227FA0();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v102 = v82;
              *v81 = 136446722;
              v83 = sub_19202B8CC(v99, v28, &v102);

              *(v81 + 4) = v83;
              *(v81 + 12) = 2050;
              *(v81 + 14) = v62;
              *(v81 + 22) = 2050;
              *(v81 + 24) = v64;
              _os_log_impl(&dword_192028000, v79, v80, "%{public}s Max size exceeded: %{public}fx%{public}f; unable to create placeholder image", v81, 0x20u);
              __swift_destroy_boxed_opaque_existential_1(v82);
              MEMORY[0x193B0C7F0](v82, -1, -1);
              MEMORY[0x193B0C7F0](v81, -1, -1);
            }

            else
            {
            }

            v84 = v100;
            v85 = v101;
            v86 = CGImageGetWidth(v65);
            Height = CGImageGetHeight(v65);
            sub_1921834B0();
            swift_allocError();
            *v88 = v86;
            *(v88 + 8) = Height;
            *(v88 + 16) = v62;
            *(v88 + 24) = v64;
            *(v88 + 32) = 1;
            swift_willThrow();
            sub_192183504(v97, type metadata accessor for MetricsRequest);
            sub_192033970(v84, &qword_1EADEFA58, &unk_19222F820);
            return v85[1](v39, v96);
          }
        }

        else
        {
          v66 = v21;

          v67 = sub_192225890();
          v68 = sub_192227FB0();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v102 = v70;
            *v69 = 136446210;
            v71 = sub_19202B8CC(v99, v28, &v102);

            *(v69 + 4) = v71;
            _os_log_impl(&dword_192028000, v67, v68, "%{public}s Image permitted", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v70);
            MEMORY[0x193B0C7F0](v70, -1, -1);
            MEMORY[0x193B0C7F0](v69, -1, -1);
          }

          else
          {
          }

          sub_192183504(v97, type metadata accessor for MetricsRequest);
          sub_192033970(v100, &qword_1EADEFA58, &unk_19222F820);
          v101[1](v39, v66);
          return v98;
        }
      }
    }
  }
}

uint64_t sub_192182CE8()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    v6 = 0;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000003FLL, 0x800000019224C710);
    type metadata accessor for CGSize(0);
    sub_1922285A0();
    MEMORY[0x193B0A990](0xD000000000000020, 0x800000019224C750);
    sub_1922285A0();
  }

  else
  {
    sub_192228400();

    v6 = 0x69666E6F6373694DLL;
    MEMORY[0x193B0A990](v2, v1);
  }

  return v6;
}

double sub_192182E84@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *v5;
  sub_192226F50();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidY(v16);
  sub_192226F30();
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinY(v18);
  sub_192226F40();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMaxY(v20);
  sub_192226F40();
  sub_192226F20();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_192182FC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_192225980();
  return sub_192183048;
}

uint64_t sub_19218304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183784();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1921830B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183784();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_192183114(uint64_t a1)
{
  v2 = sub_192183784();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_192183160@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *v5;
  sub_192226F50();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMidY(v17);
  sub_192226F30();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinY(v19);
  sub_192226F40();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxY(v21);
  sub_192226F40();
  sub_192226F20();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_1921832CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_192225980();
  return sub_192183FE0;
}

void sub_192183354(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_19218339C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183730();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_192183400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183730();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_192183464(uint64_t a1)
{
  v2 = sub_192183730();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1921834B0()
{
  result = qword_1EADF1648;
  if (!qword_1EADF1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1648);
  }

  return result;
}

uint64_t sub_192183504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_192183564()
{
  result = qword_1EADEDDE0;
  if (!qword_1EADEDDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1658, &qword_19223C570);
    sub_192183620();
    sub_19217FE58(&qword_1EADED408, type metadata accessor for CommonActivityArchivingModifiers);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDE0);
  }

  return result;
}

unint64_t sub_192183620()
{
  result = qword_1EADEDDF8;
  if (!qword_1EADEDDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1660, &qword_19223C578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDF8);
  }

  return result;
}

unint64_t sub_1921836A4()
{
  result = qword_1EADEDDC8;
  if (!qword_1EADEDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1650, &qword_19223C568);
    sub_192183564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDC8);
  }

  return result;
}

unint64_t sub_192183730()
{
  result = qword_1EADED778;
  if (!qword_1EADED778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED778);
  }

  return result;
}

unint64_t sub_192183784()
{
  result = qword_1EADED830;
  if (!qword_1EADED830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED830);
  }

  return result;
}

uint64_t sub_1921837D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_192183840()
{
  result = qword_1EADEE360;
  if (!qword_1EADEE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE360);
  }

  return result;
}

unint64_t sub_192183894()
{
  result = qword_1EADED018;
  if (!qword_1EADED018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED018);
  }

  return result;
}

uint64_t sub_1921838E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192183950(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1670, &qword_192244890);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921839D4()
{
  result = qword_1EADED6E8;
  if (!qword_1EADED6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED6E8);
  }

  return result;
}

uint64_t sub_192183A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_192183AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_192183B58()
{
  result = qword_1EADF1690;
  if (!qword_1EADF1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1690);
  }

  return result;
}

unint64_t sub_192183BF4()
{
  result = qword_1EADF16A8;
  if (!qword_1EADF16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF16A8);
  }

  return result;
}

unint64_t sub_192183C4C()
{
  result = qword_1EADEE350;
  if (!qword_1EADEE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE350);
  }

  return result;
}

unint64_t sub_192183CA4()
{
  result = qword_1EADEE358;
  if (!qword_1EADEE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE358);
  }

  return result;
}

unint64_t sub_192183CFC()
{
  result = qword_1EADED840;
  if (!qword_1EADED840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED840);
  }

  return result;
}

unint64_t sub_192183D54()
{
  result = qword_1EADED838;
  if (!qword_1EADED838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED838);
  }

  return result;
}

unint64_t sub_192183DAC()
{
  result = qword_1EADED788;
  if (!qword_1EADED788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED788);
  }

  return result;
}

unint64_t sub_192183E04()
{
  result = qword_1EADED780;
  if (!qword_1EADED780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED780);
  }

  return result;
}

uint64_t sub_192183E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019224CBD0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6C6F4379656BLL && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5255746567646977 && a2 == 0xE90000000000004CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t BundleStub.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();
  v9 = sub_192227930();

  v10 = [objc_opt_self() bundleWithIdentifier_];

  if (v10)
  {
    v11 = v10;
    v12 = sub_192170798();
    v14 = v13;

    if (!v14)
    {
      v12 = 0x6E776F6E6B6E55;

      v14 = 0xE700000000000000;
    }

    v15 = [v11 bundleURL];
    sub_192224FF0();

    v16 = 0;
  }

  else
  {
    v12 = 0x6E776F6E6B6E55;

    v14 = 0xE700000000000000;
    v16 = 1;
  }

  v17 = sub_192225020();
  v18 = *(*(v17 - 8) + 56);
  v18(v7, v16, 1, v17);
  v18(a2, 1, 1, v17);
  v19 = type metadata accessor for BundleStub();
  *(a2 + *(v19 + 20)) = a1;
  result = sub_19203CF50(v7, a2);
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v14;
  return result;
}

void BundleStub.identifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleStub() + 20);

  *(v1 + v3) = a1;
}

uint64_t BundleStub.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleStub() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_192184380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = sub_192225020();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192051870(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_192033970(v10, &qword_1EADEEE10, &unk_19222B630);
    goto LABEL_4;
  }

  (*(v12 + 32))(v15, v10, v11);
  v16 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v17 = sub_192224FE0();
  v18 = [v16 initWithURL_];

  (*(v12 + 8))(v15, v11);
  if (!v18)
  {
LABEL_4:
    v19 = *(a1 + *(type metadata accessor for BundleStub() + 20));
    v20 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    sub_192225510();
    swift_endAccess();
    v21 = sub_192227930();

    v18 = [objc_opt_self() bundleWithIdentifier_];

    if (!v18)
    {
      goto LABEL_9;
    }
  }

  v22 = [v18 bundleIdentifier];
  if (v22)
  {

    v23 = sub_192170798();
    if (v24)
    {
      v25 = v23;
      v26 = v24;
      v27 = type metadata accessor for BundleStub();
      v28 = *(a1 + *(v27 + 20));
      v29 = [v18 bundleURL];
      sub_192224FF0();

      v30 = *(v12 + 56);
      v30(v8, 0, 1, v11);
      v30(a2, 1, 1, v11);
      *(a2 + *(v27 + 20)) = v28;
      sub_19203CF50(v8, a2);
      v31 = (a2 + *(v27 + 24));
      *v31 = v25;
      v31[1] = v26;
      return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
    }
  }

LABEL_9:
  v33 = type metadata accessor for BundleStub();
  return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
}

uint64_t sub_192184764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921855B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19218478C(uint64_t a1)
{
  v2 = sub_19203EE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921847C8(uint64_t a1)
{
  v2 = sub_19203EE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleStub.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF16B0, &qword_19223CA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203EE38();
  sub_192228B90();
  v18 = 0;
  sub_192225020();
  sub_19203D6FC(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
  sub_192228850();
  if (!v2)
  {
    v11 = type metadata accessor for BundleStub();
    v17 = *(v3 + *(v11 + 20));
    v16[15] = 1;
    sub_192228100();
    sub_19203D6FC(&qword_1ED74A500, MEMORY[0x1E69941C0]);
    sub_1922288C0();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v16[14] = 2;
    sub_192228860();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t BundleStub.hash(into:)()
{
  v1 = v0;
  v2 = sub_192225020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  sub_192051870(v1, &v17 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_192228AF0();
    sub_19203D6FC(&qword_1EADF0A38, MEMORY[0x1E6968FB0]);
    sub_192227890();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for BundleStub();
  v12 = *(v1 + *(v11 + 20));
  sub_1922281E0();
  v13 = (v1 + *(v11 + 24));
  v14 = *v13;
  v15 = v13[1];
  return sub_1922279B0();
}

uint64_t BundleStub.hashValue.getter()
{
  v1 = v0;
  v2 = sub_192225020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  sub_192228AD0();
  sub_192051870(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_192228AF0();
    sub_19203D6FC(&qword_1EADF0A38, MEMORY[0x1E6968FB0]);
    sub_192227890();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for BundleStub();
  v12 = *(v1 + *(v11 + 20));
  sub_1922281E0();
  v13 = (v1 + *(v11 + 24));
  v14 = *v13;
  v15 = v13[1];
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_192184E6C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_192225020();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  sub_192228AD0();
  sub_192051870(v4, v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_192228AF0();
    sub_19203D6FC(&qword_1EADF0A38, MEMORY[0x1E6968FB0]);
    sub_192227890();
    (*(v6 + 8))(v9, v5);
  }

  v14 = *(v4 + *(a2 + 20));
  sub_1922281E0();
  v15 = (v4 + *(a2 + 24));
  v16 = *v15;
  v17 = v15[1];
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t LSBundleProxy.safeBundleVersion.getter()
{
  v1 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v2 = [v0 objectForInfoDictionaryKey:v1 ofClass:swift_getObjCClassFromMetadata()];

  if (v2)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_192033970(v7, &unk_1EADEF330, &unk_19222CD40);
  }

  return 0x6E776F6E6B6E55;
}

uint64_t _s9WidgetKit10BundleStubV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v32 - v16;
  v18 = *(v15 + 56);
  sub_192051870(a1, &v32 - v16);
  sub_192051870(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_192033970(v17, &qword_1EADEEE10, &unk_19222B630);
      goto LABEL_8;
    }

LABEL_6:
    sub_192033970(v17, &qword_1EADEF7D0, &qword_19222E728);
    v20 = 0;
    return v20 & 1;
  }

  sub_192051870(v17, v12);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_19203D6FC(&qword_1EADECF08, MEMORY[0x1E6968FB0]);
  v21 = sub_192227910();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_192033970(v17, &qword_1EADEEE10, &unk_19222B630);
  if ((v21 & 1) == 0)
  {
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

LABEL_8:
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v23 = type metadata accessor for BundleStub();
  v24 = *(v23 + 20);
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if ((sub_1922281D0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = *(v23 + 24);
  v28 = *(a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  if (v28 == *v30 && v29 == v30[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1922289A0();
  }

  return v20 & 1;
}

unint64_t sub_192185564()
{
  result = qword_1EADF16C8[0];
  if (!qword_1EADF16C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF16C8);
  }

  return result;
}

uint64_t sub_1921855B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_1921856D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1921856EC(void *a1, void **a2, void *a3)
{
  v4 = v3;
  v128 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v144 = &v119 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v119 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v145 = &v119 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v119 - v21;
  v22 = type metadata accessor for ViewableTimelineEntry();
  v139 = *(v22 - 8);
  v149 = v139;
  v23 = *(v139 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v140 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v141 = &v119 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v119 - v28;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v29 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = (&v119 - v30);
  v143 = sub_192225150();
  v146 = *(v143 - 8);
  v31 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for BundleStub();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v137 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for TimelineReloadPolicy();
  v36 = *(*(v136 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v136);
  v127 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3[3];
  v125 = *(v39 - 8);
  v40 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = a3;
  v43 = a3[4];
  v44 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  v45 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v119 - v46;
  v48 = *(v3 + 16);
  v49 = *(v3 + 24);
  v48(a2);
  v50 = *(v4 + 32);
  v51 = *(v4 + 40);
  v121 = v47;
  v50(v47);
  v52 = *a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v54 = *(v149 + 80);
  v55 = (v54 + 32) & ~v54;
  v139 = *(v139 + 72);
  v129 = v54;
  v130 = v53;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_19222B480;
  v57 = v135[5];
  v119 = v52;
  v131 = v55;
  v124 = v42;
  v126 = v39;
  sub_19221A9D4(v42, v39, v57);
  if (qword_1ED74B558 != -1)
  {
LABEL_50:
    swift_once();
  }

  v58 = __swift_project_value_buffer(v136, qword_1ED74B570);
  sub_19218AC30(v58, v127, type metadata accessor for TimelineReloadPolicy);
  v59 = type metadata accessor for WidgetViewCollection();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  v136 = v59;
  v62 = swift_allocObject();
  v63 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v64 = sub_192224E00();
  (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
  v65 = [v128 extensionIdentity];
  v66 = v137;
  BundleStub.init(_:)(v65, v137);
  sub_1920E07FC(v66, v62 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v67 = v138;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v68 = *(v146 + 32);
  v120 = v62;
  v68(v62 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v67, v143);
  v150 = v56;

  sub_19209B0C4(&v150);

  v69 = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v69;
  *(inited + 24) = 0;
  v71 = v131;
  v136 = MEMORY[0x1E69E7CC0];
  v135 = (MEMORY[0x1E69E7CC0] + v131);
  v73 = v149 + 56;
  v72 = *(v149 + 56);
  v74 = v147;
  v146 = *(v148 + 32);
  v148 = v72;
  v72(v147 + v146, 1, 1, v22);
  *v74 = inited;
  v74[1] = sub_1920DA3A8;
  v74[2] = 0;
  v143 = v69;
  v137 = v69 + v71;
  v138 = inited;
  v149 = v73;
  v75 = (v73 - 8);

  v134 = 0;
  v76 = 0;
  v77 = v142;
  while (2)
  {
    (v148)(v20, 1, 1, v22);
    while (1)
    {
      v78 = *(v143 + 16);
      if (v76 == v78)
      {
        v79 = 1;
        v56 = v144;
        v80 = v145;
      }

      else
      {
        v56 = v144;
        v80 = v145;
        if (v76 >= v78)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_19218AC30(v137 + v76 * v139, v145, type metadata accessor for ViewableTimelineEntry);
        v79 = 0;
        *(v138 + 3) = ++v76;
      }

      (v148)(v80, v79, 1, v22);
      v81 = &unk_19222A7D0;
      sub_192033970(v20, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v80, v20);
      sub_1920D86C4(v20, v15);
      v82 = *v75;
      if ((*v75)(v15, 1, v22) == 1)
      {
        v85 = v15;
        goto LABEL_16;
      }

      sub_192033970(v15, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v20, v56);
      if (v82(v56, 1, v22) == 1)
      {
        v85 = v56;
        goto LABEL_16;
      }

      v81 = v141;
      sub_1920E07FC(v56, v141, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v147 + v146, v77);
      if (v82(v77, 1, v22) == 1)
      {
        break;
      }

      v83 = v140;
      sub_1920E07FC(v77, v140, type metadata accessor for ViewableTimelineEntry);
      v84 = sub_192225120();
      sub_192046F48(v83, type metadata accessor for ViewableTimelineEntry);
      v77 = v142;
      sub_192046F48(v81, type metadata accessor for ViewableTimelineEntry);
      if ((v84 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v81, type metadata accessor for ViewableTimelineEntry);
    v85 = v77;
LABEL_16:
    sub_192033970(v85, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v20, v147 + v146);
    v56 = v132;
    sub_1920D8654(v20, v132);
    if (v82(v56, 1, v22) != 1)
    {
      sub_1920E07FC(v56, v133, type metadata accessor for ViewableTimelineEntry);
      v86 = v139;
      if (v134)
      {
        v56 = v136;
        v87 = v134 - 1;
        if (__OFSUB__(v134, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v88 = *(v136 + 24);
      if (((v88 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v89 = v88 & 0xFFFFFFFFFFFFFFFELL;
      if (v89 <= 1)
      {
        v90 = 1;
      }

      else
      {
        v90 = v89;
      }

      v91 = v131;
      v56 = swift_allocObject();
      v92 = _swift_stdlib_malloc_size(v56);
      if (!v86)
      {
        goto LABEL_48;
      }

      if (v92 - v91 == 0x8000000000000000 && v86 == -1)
      {
        goto LABEL_49;
      }

      v94 = v86;
      v95 = (v92 - v91) / v86;
      *(v56 + 16) = v90;
      *(v56 + 24) = 2 * v95;
      v96 = v56 + v91;
      v97 = v136;
      v98 = *(v136 + 24) >> 1;
      v99 = v98 * v94;
      if (!*(v136 + 16))
      {
LABEL_39:
        v135 = (v96 + v99);
        v100 = (v95 & 0x7FFFFFFFFFFFFFFFLL) - v98;

        v101 = v100;
        v77 = v142;
        v86 = v139;
        v102 = __OFSUB__(v101, 1);
        v87 = v101 - 1;
        if (v102)
        {
          goto LABEL_46;
        }

LABEL_40:
        v134 = v87;
        v103 = v135;
        sub_1920E07FC(v133, v135, type metadata accessor for ViewableTimelineEntry);
        v135 = (v103 + v86);
        v136 = v56;
        continue;
      }

      if (v56 < v136 || v96 >= v136 + v91 + v99)
      {
        v135 = (*(v136 + 24) >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v56 == v136)
        {
LABEL_38:
          *(v97 + 16) = 0;
          goto LABEL_39;
        }

        v135 = (*(v136 + 24) >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v98 = v135;
      v97 = v136;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v147, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v56, &qword_1EADEE9F8, &unk_19222A7D0);
  v104 = v136;
  v105 = *(v136 + 24);
  v106 = v128;
  v107 = v127;
  if (v105 < 2)
  {
    goto LABEL_44;
  }

  v108 = v105 >> 1;
  v102 = __OFSUB__(v108, v134);
  v109 = v108 - v134;
  if (!v102)
  {
    *(v136 + 16) = v109;
LABEL_44:
    v110 = v138;
    v111 = v104;
    swift_setDeallocating();
    v112 = *(v110 + 2);

    v113 = v120;
    *(v120 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v111;
    *(v113 + 16) = v119;
    *(v113 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v106;
    sub_19218AC30(v107, v113 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v110) = byte_1ED74B5B8;
    v114 = v106;
    sub_192046F48(v107, type metadata accessor for TimelineReloadPolicy);
    (*(v125 + 8))(v124, v126);
    (*(v122 + 8))(v121, AssociatedTypeWitness);
    *(v113 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v110;
    *(v113 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v113;
  }

  __break(1u);

  v116 = v120;
  sub_192046F48(v75 + v120, type metadata accessor for BundleStub);
  sub_192033970(v116 + *(v82 + 231), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v146 + 8))(v116 + *v76, v81);
  v117 = *(*v116 + 48);
  v118 = *(*v116 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_19218658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *(v8 + 16) = v15;
  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v12 = type metadata accessor for RelevanceTimelineEntryProvider();
  *v11 = v8;
  v11[1] = sub_192186694;

  return sub_19218685C(a7, a8, v12);
}

uint64_t sub_192186694(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 88) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921867D8, v6, v5);
}

uint64_t sub_1921867D8()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19218685C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = sub_192227CC0();
  v3[3] = sub_192227CB0();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_192186930;

  return sub_192186AD8(a1, a2, a3);
}