uint64_t Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE541A0, &qword_1DF7B4AE0);
  OUTLINED_FUNCTION_0_11();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7718C8();
  sub_1DF7ADA44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v6;
  v14 = v26;
  v30[119] = 1;
  sub_1DF763F8C();
  sub_1DF7AD844();
  memcpy(v30, v28, 0x59uLL);
  v15 = memcpy(v27, v28, 0x59uLL);
  v23 = ValueType.codableType.getter(v15, v16, v17, v18, v19, v20, v21, v22);
  v30[118] = 0;
  v27[3] = v23;
  v27[4] = v24;
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1DF7AD844();
  (*(v13 + 8))(v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE541A8, &unk_1DF7B4AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
  swift_dynamicCast();
  sub_1DF7727D4(v29, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF772884(v29);
}

unint64_t sub_1DF7718C8()
{
  result = qword_1EE173788;
  if (!qword_1EE173788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173788);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AppIntentSchemas13SummaryStringVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Summary.summaryString.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DF76A1B8(v2);
}

uint64_t sub_1DF771950(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
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

_BYTE *storeEnumTagSinglePayload for Value.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DF771A54);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t ValueType.codableType.getter(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v11 = v8[3];
  v14 = v8[4];
  v13 = v8[5];
  v16 = v8[6];
  v15 = v8[7];
  v18 = v8[8];
  v17 = v8[9];
  v19 = v8[10];
  switch(*(v8 + 88))
  {
    case 5:
      sub_1DF772264();
      sub_1DF772210();
      return OUTLINED_FUNCTION_13_0();
    case 7:
      goto LABEL_43;
    case 8:
      MeasurementType.codableType.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53E20, &qword_1DF7B2A08);
      sub_1DF78E1A4(&qword_1ECE53E28);
      sub_1DF78E1A4(&qword_1ECE53E30);
      return OUTLINED_FUNCTION_13_0();
    case 0xA:
      v28 = OUTLINED_FUNCTION_39_0(a1, a2, MEMORY[0x1E69E6538], a4, a5, a6, a7, a8, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      ValueType.codableType.getter(v28);
      OUTLINED_FUNCTION_40_0();
      v24 = MEMORY[0x1E69E62F8];
      goto LABEL_9;
    case 0xB:
      v29 = OUTLINED_FUNCTION_39_0(a1, a2, MEMORY[0x1E69E6538], a4, a5, a6, a7, a8, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      v30 = ValueType.codableType.getter(v29);
      dynamic_cast_existential_3_unconditional(v30);
      sub_1DF78A7CC();
      return OUTLINED_FUNCTION_13_0();
    case 0xC:
      v20 = OUTLINED_FUNCTION_39_0(a1, a2, MEMORY[0x1E69E6538], a4, a5, a6, a7, a8, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      ValueType.codableType.getter(v20);
      OUTLINED_FUNCTION_40_0();
      v24 = MEMORY[0x1E69E6720];
LABEL_9:
      sub_1DF78A868(v21, v21, v22, v23, v24);
      return OUTLINED_FUNCTION_13_0();
    case 0xD:
      if (!(v10 | v9 | v12 | v11 | v14 | v13 | v16 | v15 | v18 | v17 | v19))
      {
        return OUTLINED_FUNCTION_13_0();
      }

      v25 = v12 | v10 | v11 | v14 | v13 | v16 | v15 | v18 | v17 | v19;
      if (v9 == 1 && !v25)
      {
        sub_1DF7ACE84();
        v26 = MEMORY[0x1E6968848];
        sub_1DF790798(&qword_1ECE53E88, MEMORY[0x1E6968848]);
        v27 = &unk_1ECE53E90;
LABEL_22:
        sub_1DF790798(v27, v26);
        return OUTLINED_FUNCTION_13_0();
      }

      if (v9 == 2 && !v25)
      {
        sub_1DF7ACF14();
        v26 = MEMORY[0x1E6969530];
        sub_1DF790798(&qword_1ECE53E78, MEMORY[0x1E6969530]);
        v27 = &unk_1ECE53E80;
        goto LABEL_22;
      }

      if (v9 == 3 && !v25)
      {
        sub_1DF7ACE74();
        v26 = MEMORY[0x1E6968278];
        sub_1DF790798(&qword_1ECE53E68, MEMORY[0x1E6968278]);
        v27 = &unk_1ECE53E70;
        goto LABEL_22;
      }

      if (v9 == 4 && !v25)
      {
        sub_1DF7ACE64();
        v26 = MEMORY[0x1E6968130];
        sub_1DF790798(&qword_1ECE53E58, MEMORY[0x1E6968130]);
        v27 = &unk_1ECE53E60;
        goto LABEL_22;
      }

      if (v9 != 5 || v25)
      {
        if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 6 && !v25)
        {
          sub_1DF7ACED4();
          v26 = MEMORY[0x1E6968FB0];
          sub_1DF790798(&qword_1ECE53E48, MEMORY[0x1E6968FB0]);
          v27 = &unk_1ECE53E50;
          goto LABEL_22;
        }

        if (v9 == 8 && !v25)
        {
          sub_1DF7ACE94();
          v26 = MEMORY[0x1E6968A70];
          sub_1DF790798(&qword_1ECE53E38, MEMORY[0x1E6968A70]);
          v27 = &unk_1ECE53E40;
          goto LABEL_22;
        }

        if ((v9 != 9 || v25) && (v9 != 10 || v25) && (v9 != 11 || v25) && (v9 == 12 && !v25 || v9 != 13 || v25))
        {
          while (1)
          {
LABEL_43:
            sub_1DF7AD784();
            __break(1u);
          }
        }
      }

      return OUTLINED_FUNCTION_13_0();
    default:
      return OUTLINED_FUNCTION_13_0();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1DF772210()
{
  result = qword_1EE173AC8;
  if (!qword_1EE173AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173AC8);
  }

  return result;
}

unint64_t sub_1DF772264()
{
  result = qword_1EE173AC0;
  if (!qword_1EE173AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173AC0);
  }

  return result;
}

uint64_t When.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54510, &unk_1DF7B6D90);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF772A50();
  sub_1DF7ADA44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DF769394();
  OUTLINED_FUNCTION_10_5();
  sub_1DF7AD844();
  LOBYTE(v13[0]) = 2;
  OUTLINED_FUNCTION_10_5();
  sub_1DF7AD844();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B30, &qword_1DF7AE900);
  v20 = 0;
  sub_1DF7677BC(&qword_1EE173420, sub_1DF77CB28);
  OUTLINED_FUNCTION_10_5();
  sub_1DF7AD844();
  v16[0] = v13[0];
  LOBYTE(v13[0]) = 3;
  OUTLINED_FUNCTION_10_5();
  v16[1] = sub_1DF7AD834();
  sub_1DF766CC8(v15, &v18);
  sub_1DF766CC8(v14, &v19);
  v20 = 4;
  sub_1DF772BAC();
  sub_1DF7AD804();
  sub_1DF766F98(v14);
  sub_1DF766F98(v15);
  v10 = OUTLINED_FUNCTION_0_15();
  v11(v10);
  memcpy(v17, v13, sizeof(v17));
  sub_1DF7730AC(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF772830(v16);
}

unint64_t sub_1DF772674()
{
  result = qword_1EE173500;
  if (!qword_1EE173500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173500);
  }

  return result;
}

unint64_t sub_1DF7726C8()
{
  result = qword_1EE1734A0;
  if (!qword_1EE1734A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734A0);
  }

  return result;
}

unint64_t sub_1DF772724(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 1852139639;
      break;
    case 2:
      result = 0x736977726568746FLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DF7728DC()
{
  result = qword_1EE173790;
  if (!qword_1EE173790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173790);
  }

  return result;
}

unint64_t sub_1DF77293C()
{
  result = qword_1EE173540;
  if (!qword_1EE173540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173540);
  }

  return result;
}

uint64_t sub_1DF772990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF772A50()
{
  result = qword_1EE1737B8;
  if (!qword_1EE1737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1737B8);
  }

  return result;
}

unint64_t sub_1DF772AA4()
{
  result = qword_1EE1738F8;
  if (!qword_1EE1738F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1738F8);
  }

  return result;
}

unint64_t sub_1DF772B58()
{
  result = qword_1EE173B38;
  if (!qword_1EE173B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B38);
  }

  return result;
}

unint64_t sub_1DF772BAC()
{
  result = qword_1EE173768;
  if (!qword_1EE173768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173768);
  }

  return result;
}

uint64_t static IntentSystemProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1DF7729F4(a1, v10);
  sub_1DF7729F4(a2, &v12);
  switch(v11)
  {
    case 0:
      if (v13)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 1:
      if (v13 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (v13 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (v13 != 6)
      {
        goto LABEL_15;
      }

LABEL_13:
      sub_1DF773158(v10);
      v3 = 1;
      break;
    default:
      sub_1DF7729F4(v10, v9);
      if (v13 >= 7)
      {
        sub_1DF7663E4(v9, v8);
        sub_1DF7663E4(&v12, v7);
        sub_1DF766CC8(v8, v6);
        sub_1DF766CC8(v7, v5);
        v3 = sub_1DF798EB8(v6, v5);
        sub_1DF76CA4C(v5);
        sub_1DF76CA4C(v6);
        __swift_destroy_boxed_opaque_existential_1(v7);
        __swift_destroy_boxed_opaque_existential_1(v8);
        sub_1DF773158(v10);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_15:
        sub_1DF773044(v10);
        v3 = 0;
      }

      break;
  }

  return v3 & 1;
}

unint64_t sub_1DF772DA0()
{
  result = qword_1EE173900;
  if (!qword_1EE173900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for When.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1DF772EC0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DF772EE8()
{
  sub_1DF781350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BE0, &qword_1DF7B1A70);
  sub_1DF7AD054();

  return v1;
}

uint64_t get_enum_tag_for_layout_string_16AppIntentSchemas0B14SystemProtocolO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1DF772FC4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DF772FF0()
{
  result = qword_1EE173798;
  if (!qword_1EE173798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173798);
  }

  return result;
}

uint64_t sub_1DF773044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54170, &unk_1DF7B4A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AppIntentSchemas::EnumerationType_optional __swiftcall EnumerationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF7AD794();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16AppIntentSchemas5ValueVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for EnumerationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

BOOL static ValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_80_0(&v463);
  OUTLINED_FUNCTION_79_0(&v478);
  OUTLINED_FUNCTION_80_0(v481);
  OUTLINED_FUNCTION_79_0(&v482);
  v10 = v464;
  v11 = v468;
  v12 = v469;
  v13 = v470;
  v14 = v471;
  v15 = v475;
  v16 = v476;
  v17 = (v465 | ((v466 | (v467 << 16)) << 32)) << 8;
  switch(v477)
  {
    case 1:
      if (v480 != 1)
      {
        goto LABEL_175;
      }

      v94 = v463;
      v95 = v478;
      v67 = v479;
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      if (v10)
      {
        return (v67 & 1) != 0;
      }

      return (v67 & 1) == 0 && v95 == v94;
    case 2:
      if (v480 != 2)
      {
        goto LABEL_175;
      }

      v62 = LOBYTE(v478);
      v63 = LODWORD(v463);
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      if (v63 == 2)
      {
        if (v62 == 2)
        {
          return 1;
        }
      }

      else if (v62 != 2 && ((v63 ^ v62) & 1) == 0)
      {
        return 1;
      }

      return 0;
    case 3:
      if (v480 != 3)
      {
        goto LABEL_68;
      }

      v64 = v17 | v464;
      if (v64)
      {
        if (v479)
        {
          v4 = *&v478;
          v65 = *&v463 == *&v478 && v64 == v479;
          if (!v65)
          {
            v66 = sub_1DF7AD934();
            v67 = v66;
            v75 = OUTLINED_FUNCTION_45_0(v66, v68, v69, v70, v71, v72, v73, v74, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
            OUTLINED_FUNCTION_49_0(v75, v76, v77, v78, v79, v80, v81, v82, v319, v338, v359, v380, v402, v424, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
            goto LABEL_62;
          }

          goto LABEL_92;
        }
      }

      else if (!v479)
      {
LABEL_92:
        v238 = OUTLINED_FUNCTION_45_0(*&v463, v64, v4, v479, v6, v7, v8, v9, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        OUTLINED_FUNCTION_49_0(v238, v239, v240, v241, v242, v243, v244, v245, v329, v349, v371, v393, v415, v437, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
LABEL_173:
        sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
        return 1;
      }

      OUTLINED_FUNCTION_45_0(*&v463, v64, v4, v479, v6, v7, v8, v9, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      v212 = &v463;
      goto LABEL_176;
    case 4:
      if (v480 != 4)
      {
        goto LABEL_175;
      }

      v45 = LOBYTE(v478);
      v46 = LOBYTE(v463);
      v47 = LOBYTE(v463);
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      if (v47 == 4)
      {
        if (v45 == 4)
        {
          return 1;
        }
      }

      else if (v45 != 4 && v45 == v46)
      {
        return 1;
      }

      return 0;
    case 5:
      if (v480 == 5)
      {
        *__dst = v463;
        LOBYTE(__dst[1]) = v464;
        *(&__dst[1] + 1) = v465;
        HIBYTE(__dst[1]) = (v465 | ((v466 | (v467 << 16)) << 32)) >> 48;
        *(&__dst[1] + 5) = v466;
        OUTLINED_FUNCTION_20_0();
        memcpy(v461, a2, 0x48uLL);
        v96 = static EnumSchema.== infix(_:_:)(__dst, v461);
        v93 = v96;
        v104 = OUTLINED_FUNCTION_45_0(v96, v97, v98, v99, v100, v101, v102, v103, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        OUTLINED_FUNCTION_49_0(v104, v105, v106, v107, v108, v109, v110, v111, v321, v340, v361, v382, v404, v426, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        goto LABEL_42;
      }

      v182 = OUTLINED_FUNCTION_80_0(&v447);
      v190 = OUTLINED_FUNCTION_53_0(v182, v183, v184, v185, v186, v187, v188, v189, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      sub_1DF783914(v190, v191);
      goto LABEL_175;
    case 6:
      if (v480 != 6)
      {
        v192 = OUTLINED_FUNCTION_80_0(&v447);
        v198 = OUTLINED_FUNCTION_53_0(v192, v193, &qword_1ECE53BF8, &qword_1DF7B1A88, v194, v195, v196, v197, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        sub_1DF790734(v198, v199, v200, v201);
        goto LABEL_175;
      }

      v118 = *&v478;
      v119 = v479;
      v120 = v17 | v464;
      if (!v120)
      {
        if (!v479)
        {
          *__dst = v463;
          __dst[1] = 0;
          OUTLINED_FUNCTION_20_0();
          __dst[9] = v15;
          __dst[10] = v16;
          v286 = OUTLINED_FUNCTION_45_0(v278, v279, v280, v281, v282, v283, v284, v285, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
          v294 = OUTLINED_FUNCTION_49_0(v286, v287, v288, v289, v290, v291, v292, v293, v333, v354, v375, v397, v419, v441, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
          v302 = OUTLINED_FUNCTION_45_0(v294, v295, v296, v297, v298, v299, v300, v301, v334, v355, v376, v398, v420, v442, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
          OUTLINED_FUNCTION_49_0(v302, v303, v304, v305, v306, v307, v308, v309, v335, v356, v377, v399, v421, v443, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
          sub_1DF773CFC(__dst, &qword_1ECE53BF8, &qword_1DF7B1A88);
          goto LABEL_173;
        }

        v213 = *&v463;
        v214 = OUTLINED_FUNCTION_45_0(*&v463, v3, v4, v5, v6, v7, v8, v9, v317, 0, v357, v472, v473, v474, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        v222 = OUTLINED_FUNCTION_49_0(v214, v215, v216, v217, v218, v219, v220, v221, v326, v345, v368, v389, v411, v433, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        v230 = OUTLINED_FUNCTION_45_0(v222, v223, v224, v225, v226, v227, v228, v229, v327, v346, v369, v390, v412, v434, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        OUTLINED_FUNCTION_49_0(v230, v231, v232, v233, v234, v235, v236, v237, v328, v347, v370, v391, v413, v435, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
LABEL_100:
        v447 = v213;
        v448 = v348;
        v449 = v11;
        v450 = v12;
        v451 = v13;
        v452 = v14;
        v453 = v392;
        v454 = v414;
        v455 = v436;
        v456 = v15;
        v457 = v16;
        v458 = v118;
        v459 = v119;
        memcpy(v460, (a2 + 16), sizeof(v460));
        sub_1DF773CFC(&v447, &qword_1ECE53E18, &qword_1DF7B2A00);
        goto LABEL_177;
      }

      *__dst = v463;
      __dst[1] = v17 | v464;
      OUTLINED_FUNCTION_20_0();
      __dst[9] = v15;
      __dst[10] = v16;
      v362 = v121;
      v383 = v122;
      v405 = v124;
      v427 = v123;
      memcpy(v461, __dst, 0x58uLL);
      if (!v119)
      {
        v350 = v120;
        v213 = v362;
        v246 = memcpy(v446, __dst, sizeof(v446));
        v254 = OUTLINED_FUNCTION_45_0(v246, v247, v248, v249, v250, v251, v252, v253, v317, v350, v362, v383, v405, v427, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        v262 = OUTLINED_FUNCTION_49_0(v254, v255, v256, v257, v258, v259, v260, v261, v330, v351, v372, v394, v416, v438, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        v270 = OUTLINED_FUNCTION_45_0(v262, v263, v264, v265, v266, v267, v268, v269, v331, v352, v373, v395, v417, v439, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        OUTLINED_FUNCTION_49_0(v270, v271, v272, v273, v274, v275, v276, v277, v332, v353, v374, v396, v418, v440, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        sub_1DF790734(__dst, &v447, &qword_1ECE53BF8, &qword_1DF7B1A88);
        sub_1DF78E0A4(v446);
        goto LABEL_100;
      }

      v125 = memcpy(&__src[2], (a2 + 16), 0x48uLL);
      v133 = OUTLINED_FUNCTION_45_0(v125, v126, v127, v128, v129, v130, v131, v132, v317, v336, v362, v383, v405, v427, v118, v119, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      v141 = OUTLINED_FUNCTION_49_0(v133, v134, v135, v136, v137, v138, v139, v140, v322, v341, v363, v384, v406, v428, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      v149 = OUTLINED_FUNCTION_45_0(v141, v142, v143, v144, v145, v146, v147, v148, v323, v342, v364, v385, v407, v429, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      OUTLINED_FUNCTION_49_0(v149, v150, v151, v152, v153, v154, v155, v156, v324, v343, v365, v386, v408, v430, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      sub_1DF790734(__dst, &v447, &qword_1ECE53BF8, &qword_1DF7B1A88);
      v20 = static EntitySchema.== infix(_:_:)(v461, __src);
      memcpy(v445, __src, sizeof(v445));
      sub_1DF78E0A4(v445);
      memcpy(v446, v461, sizeof(v446));
      sub_1DF78E0A4(v446);
      v447 = v366;
      v448 = v120;
      v449 = v11;
      v450 = v12;
      v451 = v13;
      v452 = v14;
      v453 = v387;
      v454 = v409;
      v455 = v431;
      v456 = v15;
      v457 = v16;
      sub_1DF773CFC(&v447, &qword_1ECE53BF8, &qword_1DF7B1A88);
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      return (v20 & 1) != 0;
    case 7:
      if (v480 == 7)
      {
        v83 = OUTLINED_FUNCTION_45_0(*&v463, v3, v4, v5, v6, v7, v8, v9, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        OUTLINED_FUNCTION_49_0(v83, v84, v85, v86, v87, v88, v89, v90, v320, v339, v360, v381, v403, v425, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
        v91 = OUTLINED_FUNCTION_13_0();
        v61 = sub_1DF789AA0(v91, v92);
        goto LABEL_34;
      }

LABEL_68:

      goto LABEL_175;
    case 8:
      if (v480 != 8)
      {
        goto LABEL_175;
      }

      v180 = LOBYTE(v478);
      v181 = LOBYTE(v463);
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      return v180 == v181;
    case 9:
      if (v480 != 9)
      {
        goto LABEL_175;
      }

      v61 = sub_1DF787C50();
      goto LABEL_34;
    case 10:
      if (v480 != 10)
      {
        goto LABEL_65;
      }

      v157 = *(*&v463 + 112);
      OUTLINED_FUNCTION_48_0();
      v161 = memcpy(v158, v159, v160);
      OUTLINED_FUNCTION_75_0(v161, v162, v163, v164, v165, v166, v167, v168, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      sub_1DF770608(&v478, v461);
      v169 = sub_1DF770608(&v463, v461);
      v177 = OUTLINED_FUNCTION_53_0(v169, v170, v171, v172, v173, v174, v175, v176, v325, v344, v367, v388, v410, v432, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      if ((static ValueType.== infix(_:_:)(v177, v178) & 1) == 0)
      {
        goto LABEL_177;
      }

      if (!v157)
      {
        goto LABEL_86;
      }

      if (!a2)
      {
        goto LABEL_177;
      }

      v44 = sub_1DF789BB0(v179, a2);
      goto LABEL_61;
    case 11:
      if (v480 != 11)
      {
        goto LABEL_65;
      }

      v21 = *(*&v463 + 112);
      OUTLINED_FUNCTION_48_0();
      v25 = memcpy(v22, v23, v24);
      OUTLINED_FUNCTION_75_0(v25, v26, v27, v28, v29, v30, v31, v32, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      sub_1DF770608(&v478, v461);
      v33 = sub_1DF770608(&v463, v461);
      v41 = OUTLINED_FUNCTION_53_0(v33, v34, v35, v36, v37, v38, v39, v40, v318, v337, v358, v379, v401, v423, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      if ((static ValueType.== infix(_:_:)(v41, v42) & 1) == 0)
      {
        goto LABEL_177;
      }

      if (!v21)
      {
LABEL_86:
        sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
        return !a2;
      }

      if (!a2)
      {
        goto LABEL_177;
      }

      v44 = sub_1DF78DCEC(v43, a2);
LABEL_61:
      v67 = v44;

LABEL_62:
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      return (v67 & 1) != 0;
    case 12:
      if (v480 != 12)
      {
LABEL_65:

        goto LABEL_175;
      }

      memcpy(__dst, (*&v478 + 16), 0x59uLL);
      OUTLINED_FUNCTION_48_0();
      memcpy(v48, v49, v50);
      sub_1DF770608(&v478, v461);
      v51 = sub_1DF770608(&v463, v461);
      v59 = OUTLINED_FUNCTION_53_0(v51, v52, v53, v54, v55, v56, v57, v58, v317, v336, v357, v378, v400, v422, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v445[0], v445[1], v445[2], v445[3], v445[4], v445[5], v445[6], v445[7], v445[8], v445[9], v445[10], v446[0], v446[1], v446[2], v446[3], v446[4], v446[5], v446[6], v446[7], v446[8], v446[9], v446[10], v447);
      v61 = static ValueType.== infix(_:_:)(v59, v60);
LABEL_34:
      v93 = v61;
LABEL_42:
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      return v93;
    case 13:
      OUTLINED_FUNCTION_63_0();
      if (v113 | v112 | v15 | v16)
      {
        OUTLINED_FUNCTION_63_0();
        v117 = v116 | v115 | v15 | v16;
        if (v114 != 1 || v117)
        {
          if (v114 != 2 || v117)
          {
            if (v114 != 3 || v117)
            {
              if (v114 != 4 || v117)
              {
                if (v114 != 5 || v117)
                {
                  if (v114 != 6 || v117)
                  {
                    if (v114 != 7 || v117)
                    {
                      if (v114 != 8 || v117)
                      {
                        if (v114 != 9 || v117)
                        {
                          if (v114 != 10 || v117)
                          {
                            if (v114 != 11 || v117)
                            {
                              if (v114 != 12 || v117)
                              {
                                if (v114 != 13 || v117)
                                {
                                  if (v114 != 14 || v117)
                                  {
                                    OUTLINED_FUNCTION_33_0();
                                    if (!v65 || *&v478 != 15)
                                    {
                                      goto LABEL_175;
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_33_0();
                                    if (!v65 || *&v478 != 14)
                                    {
                                      goto LABEL_175;
                                    }
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_33_0();
                                  if (!v65 || *&v478 != 13)
                                  {
                                    goto LABEL_175;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_33_0();
                                if (!v65 || *&v478 != 12)
                                {
                                  goto LABEL_175;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_33_0();
                              if (!v65 || *&v478 != 11)
                              {
                                goto LABEL_175;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_33_0();
                            if (!v65 || *&v478 != 10)
                            {
                              goto LABEL_175;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_33_0();
                          if (!v65 || *&v478 != 9)
                          {
                            goto LABEL_175;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_33_0();
                        if (!v65 || *&v478 != 8)
                        {
                          goto LABEL_175;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_33_0();
                      if (!v65 || *&v478 != 7)
                      {
                        goto LABEL_175;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_33_0();
                    if (!v65 || *&v478 != 6)
                    {
                      goto LABEL_175;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_33_0();
                  if (!v65 || *&v478 != 5)
                  {
                    goto LABEL_175;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_33_0();
                if (!v65 || *&v478 != 4)
                {
                  goto LABEL_175;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_33_0();
              if (!v65 || *&v478 != 3)
              {
                goto LABEL_175;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_33_0();
            if (!v65 || *&v478 != 2)
            {
              goto LABEL_175;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_33_0();
          if (!v65 || *&v478 != 1)
          {
            goto LABEL_175;
          }
        }

        OUTLINED_FUNCTION_59_0(&v478);
        v314 = OUTLINED_FUNCTION_52_0(v310, v311, v312, v313);
        v208 = *&v314 | v315;
      }

      else
      {
        OUTLINED_FUNCTION_33_0();
        if (!v65)
        {
          goto LABEL_175;
        }

        OUTLINED_FUNCTION_59_0(&v478);
        v206 = OUTLINED_FUNCTION_52_0(v202, v203, v204, v205);
        v208 = *&v206 | v207;
        v211 = v209 | v210;
      }

      if (!(v208 | v211))
      {
        goto LABEL_173;
      }

LABEL_175:
      v212 = &v478;
LABEL_176:
      sub_1DF770608(v212, &v447);
LABEL_177:
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      return 0;
    default:
      if (v480)
      {
        goto LABEL_175;
      }

      v18 = *&v463;
      v19 = v478;
      v20 = v479;
      sub_1DF773CFC(v481, &qword_1ECE53E10, &unk_1DF7B29F0);
      if (v10)
      {
        return (v20 & 1) != 0;
      }

      return (v20 & 1) == 0 && v18 == *&v19;
  }
}

uint64_t sub_1DF773CCC(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xD)
  {
    *result = a2 - 13;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 13;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_1DF773CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PropertySchema.type.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_5();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x59uLL);
  return sub_1DF770608(v8, &v7);
}

uint64_t AppIntentDomains.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF773DF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  switch(a12)
  {
    case 3:
    case 7:
      goto LABEL_6;
    case 5:

LABEL_6:

      break;
    case 6:

      result = sub_1DF773F68(result, a2);
      break;
    case 10:
    case 11:
    case 12:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DF773F68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t EntitySchema.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DF774058(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DF7740A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t Value.type.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x59uLL);
  memcpy(a1, (v1 + 48), 0x59uLL);
  return sub_1DF770608(__dst, &v4);
}

uint64_t sub_1DF774138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1DF7741B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A80, &qword_1DF7ADF50);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  if (v1)
  {
    OUTLINED_FUNCTION_28();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_21_0();
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_22_0();
    if ((v0 & 1) == 0)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_22_0();
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_0();
    }
  }
}

uint64_t PropertySchema.spotlightAttributeKey.getter()
{
  if (!*(v0 + 128))
  {
    return 0;
  }

  sub_1DF7741B4();
  v2 = v1;

  return v2;
}

uint64_t sub_1DF779038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54508, &unk_1DF7B6D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF7790B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF77910C()
{
  v0 = sub_1DF7AD794();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF7791AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t sub_1DF7791EC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DF779244()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[11];

  v7 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DF7792AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  }

  v4 = *(v0 + 128);

  v5 = *(v0 + 136);

  if (*(v0 + 232) != 255)
  {
    sub_1DF773DF4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  }

  v6 = *(v0 + 240);

  v7 = *(v0 + 248);

  v8 = *(v0 + 256);

  v9 = *(v0 + 280);

  return MEMORY[0x1EEE6BDD0](v0, 288, 7);
}

uint64_t sub_1DF7795C8()
{
  sub_1DF7AD404();
}

uint64_t sub_1DF779698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF78AA24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DF7796C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF78AA88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF77970C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF78A980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF77987C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF7928E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF779970()
{
  v0 = sub_1DF7AD794();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF7799BC()
{
  sub_1DF773DF4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DF779AC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DF773DF4(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

void *sub_1DF779B34@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DF779C3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF779C78()
{
  if (v0[2])
  {

    v1 = v0[4];
  }

  v2 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF779CC4()
{
  sub_1DF773DF4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1DF779D78()
{
  v0 = sub_1DF7AD794();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF779DC4(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69737265765FLL;
      break;
    case 2:
      result = 0x73616D656863735FLL;
      break;
    case 3:
      result = 0x6C6962697369765FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF779EE0()
{
  v0 = sub_1DF7AD794();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t PropertySchema.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PropertySchema.title.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

double PropertySchema.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5();
  memcpy(v2, v3, v4);
  return sub_1DF771208(a1);
}

void *PropertySchema.init(_:ofType:title:indexingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1DF77A1E0(__src);
  memcpy((a7 + 144), __src, 0xB8uLL);
  *a7 = a1;
  *(a7 + 8) = a2;
  result = memcpy((a7 + 16), a3, 0x59uLL);
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 136) = 0;
  *(a7 + 128) = a6;
  return result;
}

void *PropertySchema.init(_:ofType:title:indexingKey:updatable:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, uint64_t a8@<X8>)
{
  memcpy(__dst, __src, 0x59uLL);
  sub_1DF77A1E0(__srca);
  memcpy(&v22[7], __srca, 0xB8uLL);
  memcpy(v23, __dst, sizeof(v23));
  memcpy(v26, a7, sizeof(v26));
  if (get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(v26) == 1)
  {
    v15 = 0;
LABEL_6:
    memcpy(v20, a7, sizeof(v20));
    nullsub_1(v20);
    memcpy(v21, &v22[7], sizeof(v21));
    sub_1DF773CFC(v21, &qword_1ECE53A70, &qword_1DF7ADF40);
    memcpy(&v22[7], v20, 0xB8uLL);
    *a8 = a2;
    *(a8 + 8) = a3;
    memcpy((a8 + 16), v23, 0x59uLL);
    *(a8 + 112) = a4;
    *(a8 + 120) = a5;
    *(a8 + 128) = a6;
    *(a8 + 136) = v15;
    return memcpy((a8 + 137), v22, 0xBFuLL);
  }

  memcpy(v21, a7, sizeof(v21));
  if (get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(v21))
  {
    goto LABEL_5;
  }

  memcpy(v19, &v21[16], 0x59uLL);
  memcpy(v18, __dst, 0x59uLL);
  sub_1DF770608(__dst, v20);
  sub_1DF770608(&v21[16], v20);
  v16 = static ValueType.== infix(_:_:)(v19, v18);
  memcpy(v20, v19, 0x59uLL);
  sub_1DF77A414(v20);
  result = sub_1DF77A414(__dst);
  if (v16)
  {
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  __break(1u);
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

uint64_t static PropertySchema.Updatable.== infix(_:_:)(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_6(v11);
  memcpy(__dst, a2, sizeof(__dst));
  OUTLINED_FUNCTION_6(v13);
  memcpy(v14, a2, sizeof(v14));
  OUTLINED_FUNCTION_6(__src);
  enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0 = get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(__src);
  if (enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0)
  {
    if (enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0 == 1)
    {
      OUTLINED_FUNCTION_3();
      if (get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(v10) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3();
    if (get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(v10) == 2)
    {
LABEL_8:
      sub_1DF773CFC(v13, &qword_1ECE53A78, &qword_1DF7ADF48);
      v5 = 1;
      return v5 & 1;
    }

LABEL_9:
    sub_1DF77A60C(__dst, v10);
    sub_1DF77A60C(v11, v10);
    sub_1DF773CFC(v13, &qword_1ECE53A78, &qword_1DF7ADF48);
    v5 = 0;
    return v5 & 1;
  }

  OUTLINED_FUNCTION_3();
  if (get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(v10))
  {
    goto LABEL_9;
  }

  memcpy(v9, __src, sizeof(v9));
  memcpy(v8, v10, sizeof(v8));
  sub_1DF77A60C(__dst, v7);
  sub_1DF77A60C(v11, v7);
  sub_1DF77A60C(__dst, v7);
  sub_1DF77A60C(v11, v7);
  static ParameterSchema.== infix(_:_:)();
  v5 = v4;
  sub_1DF773CFC(v13, &qword_1ECE53A78, &qword_1DF7ADF48);
  sub_1DF77A644(__dst);
  sub_1DF77A644(v11);
  return v5 & 1;
}

uint64_t PropertySchema.Updatable.hash(into:)(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0 = get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(__dst);
  if (enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0)
  {
    return MEMORY[0x1E12DEC80](enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0 != 1);
  }

  MEMORY[0x1E12DEC80](2);
  memcpy(v5, __dst, sizeof(v5));
  return ParameterSchema.hash(into:)(a1);
}

uint64_t PropertySchema.Updatable.hashValue.getter()
{
  sub_1DF7AD9E4();
  OUTLINED_FUNCTION_6(__src);
  enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0 = get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(__src);
  if (enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0)
  {
    MEMORY[0x1E12DEC80](enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0 != 1);
  }

  else
  {
    MEMORY[0x1E12DEC80](2);
    memcpy(__dst, __src, sizeof(__dst));
    ParameterSchema.hash(into:)(v3);
  }

  return sub_1DF7ADA24();
}

uint64_t sub_1DF77A7A0()
{
  sub_1DF7AD9E4();
  PropertySchema.Updatable.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t static PropertySchema.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, 0x59uLL);
  v6 = a1[14];
  v7 = a1[15];
  v18 = a1[16];
  v20 = *(a1 + 136);
  v9 = *a2;
  v8 = a2[1];
  memcpy(v27, a2 + 2, 0x59uLL);
  v10 = a2[14];
  v11 = a2[15];
  v17 = a2[16];
  v19 = *(a2 + 136);
  v12 = v4 == v9 && v5 == v8;
  if (v12 || (v13 = 0, (sub_1DF7AD934() & 1) != 0))
  {
    memcpy(v23, a1 + 2, 0x59uLL);
    memcpy(__src, a2 + 2, 0x59uLL);
    sub_1DF770608(__dst, v21);
    sub_1DF770608(v27, v21);
    v14 = static ValueType.== infix(_:_:)(v23, __src);
    memcpy(v24, __src, 0x59uLL);
    sub_1DF77A414(v24);
    memcpy(v25, v23, 0x59uLL);
    sub_1DF77A414(v25);
    if (v14)
    {
      v15 = v6 == v10 && v7 == v11;
      if (v15 || (sub_1DF7AD934()) && v20 == v19)
      {
        if (v18)
        {
          v23[0] = v18;
          if (v17)
          {
            __src[0] = v17;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A80, &qword_1DF7ADF50);

            v13 = sub_1DF7AD3A4();

            return v13 & 1;
          }
        }

        else if (!v17)
        {
          v13 = 1;
          return v13 & 1;
        }
      }
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t PropertySchema.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  OUTLINED_FUNCTION_5();
  memcpy(v5, v6, v7);
  v8 = v1[14];
  v9 = v1[15];
  v10 = v1[16];
  v11 = *(v1 + 136);
  sub_1DF7AD404();
  ValueType.hash(into:)(a1);
  sub_1DF7AD404();
  sub_1DF7ADA04();
  if (!v10)
  {
    return sub_1DF7ADA04();
  }

  sub_1DF7ADA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A80, &qword_1DF7ADF50);
  return sub_1DF7AD394();
}

uint64_t PropertySchema.hashValue.getter()
{
  sub_1DF7AD9E4();
  PropertySchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF77AB14()
{
  sub_1DF7AD9E4();
  PropertySchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF77AB74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF77910C();
  *a2 = result;
  return result;
}

uint64_t sub_1DF77ABA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF7650EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF77ABD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF77910C();
  *a1 = result;
  return result;
}

uint64_t sub_1DF77AC18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF77AAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DF77AC40(uint64_t a1)
{
  v2 = sub_1DF765194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF77AC7C(uint64_t a1)
{
  v2 = sub_1DF765194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PropertySchema.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A88, &qword_1DF7ADF58);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v26 - v9;
  v11 = *(v1 + 8);
  v26[3] = *v1;
  OUTLINED_FUNCTION_5();
  memcpy(v12, v13, v14);
  v15 = *(v1 + 112);
  v26[1] = *(v1 + 120);
  v26[2] = v15;
  v26[0] = *(v1 + 128);
  v30 = *(v1 + 136);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF765194();
  sub_1DF7ADA64();
  v28[0] = 0;
  v17 = v26[4];
  sub_1DF7AD8D4();
  if (v17)
  {
    return (*(v6 + 8))(v10, v3);
  }

  memcpy(v28, __src, sizeof(v28));
  v32 = 1;
  sub_1DF770608(__src, v27);
  sub_1DF77AF8C();
  sub_1DF7AD904();
  memcpy(v27, v28, 0x59uLL);
  sub_1DF77A414(v27);
  v31 = 2;
  sub_1DF7AD8D4();
  v31 = 4;
  sub_1DF7AD8E4();
  if (v26[0])
  {

    sub_1DF7741B4();
    if (v21)
    {
      v31 = 3;
      sub_1DF7AD8D4();
      v22 = OUTLINED_FUNCTION_2_0();
      v23(v22);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_2_0();
      v25(v24);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_2_0();
    return v20(v19);
  }
}

unint64_t sub_1DF77AF8C()
{
  result = qword_1ECE53A90;
  if (!qword_1ECE53A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53A90);
  }

  return result;
}

unint64_t sub_1DF77AFE4()
{
  result = qword_1ECE53AA0;
  if (!qword_1ECE53AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53AA0);
  }

  return result;
}

unint64_t sub_1DF77B03C()
{
  result = qword_1ECE53AA8;
  if (!qword_1ECE53AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53AA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AppIntentSchemas14PropertySchemaV9UpdatableOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF77B0BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 328))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF77B0FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF77B198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 184))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

void sub_1DF77B1EC(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    v5 = a2 - 2147483646;
    bzero(a1, 0xB8uLL);
    *a1 = v5;
    if (a3 >= 0x7FFFFFFE)
    {
      *(a1 + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(a1 + 184) = 0;
    }

    if (a2)
    {
      *(a1 + 1) = a2 + 1;
    }
  }
}

double sub_1DF77B278(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DF77B2EC()
{
  result = qword_1ECE53AB0;
  if (!qword_1ECE53AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53AB0);
  }

  return result;
}

unint64_t sub_1DF77B344()
{
  result = qword_1EE173910;
  if (!qword_1EE173910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173910);
  }

  return result;
}

unint64_t sub_1DF77B39C()
{
  result = qword_1EE173918;
  if (!qword_1EE173918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173918);
  }

  return result;
}

uint64_t static PropertyBuilder.buildBlock(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v3;
  }

  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v7 > *(v3 + 24) >> 1)
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_1DF77B688(result, v9, 1, v3);
      v3 = result;
    }

    if (*(v4 + 16))
    {
      if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v5)
      {
        v10 = *(v3 + 16);
        v11 = __OFADD__(v10, v5);
        v12 = v10 + v5;
        if (v11)
        {
          goto LABEL_20;
        }

        *(v3 + 16) = v12;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t static PropertyBuilder.buildExpression(_:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AB8, &unk_1DF7AE860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DF7AE850;
  memcpy((v2 + 32), __src, 0x148uLL);
  sub_1DF77B7A0(__dst, &v4);
  return v2;
}

void sub_1DF77B5B0()
{
  OUTLINED_FUNCTION_7();
  if (v5)
  {
    OUTLINED_FUNCTION_3_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_5_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_0(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
    v9 = OUTLINED_FUNCTION_6_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_0(v10);
  }

  OUTLINED_FUNCTION_9();
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 184 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1DF77B688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AB8, &unk_1DF7AE860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 328);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[328 * v8] <= v12)
    {
      memmove(v12, v13, 328 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for PropertyBuilder(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PropertyBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DF77B95C(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_5_0();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 16);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[16 * v11] <= v15)
    {
      memmove(v15, v16, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DF77BA50()
{
  OUTLINED_FUNCTION_7();
  if (v5)
  {
    OUTLINED_FUNCTION_3_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_5_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_0(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B00, &qword_1DF7AE8C8);
    v9 = OUTLINED_FUNCTION_6_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_0(v10);
  }

  OUTLINED_FUNCTION_9();
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DF77BB28()
{
  OUTLINED_FUNCTION_7();
  if (v5)
  {
    OUTLINED_FUNCTION_3_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_5_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_0(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AE0, &unk_1DF7B6A30);
    v9 = OUTLINED_FUNCTION_6_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_0(v10);
  }

  OUTLINED_FUNCTION_9();
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 272 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DF77BC00()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_5_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AD0, &qword_1DF7AE898);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v7] <= v11)
    {
      memmove(v11, v12, 40 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DF77BCFC()
{
  OUTLINED_FUNCTION_7();
  if (v5)
  {
    OUTLINED_FUNCTION_3_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_5_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_0(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AD8, &unk_1DF7AE8A0);
    v9 = OUTLINED_FUNCTION_6_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_0(v10);
  }

  OUTLINED_FUNCTION_9();
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 72 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DF77BDD4()
{
  OUTLINED_FUNCTION_7();
  if (v5)
  {
    OUTLINED_FUNCTION_3_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_5_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_0(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AE8, &qword_1DF7AE8B0);
    v9 = OUTLINED_FUNCTION_6_0();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_1_0(v10);
  }

  OUTLINED_FUNCTION_9();
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 88 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DF77BED0(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_5_0();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

char *sub_1DF77BFF4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_1DF77C01C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[328 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_1DF77C044(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_1DF77C06C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[272 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_1DF77C094(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_1DF77C0BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t SummaryString.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SummaryString.formatString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SummaryString.formatString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

AppIntentSchemas::SummaryString __swiftcall SummaryString.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = MEMORY[0x1E69E7CC0];
  *(v1 + 8) = stringLiteral;
  result.parameters = stringLiteral._countAndFlagsBits;
  result.formatString._countAndFlagsBits = stringLiteral._object;
  return result;
}

AppIntentSchemas::SummaryString __swiftcall SummaryString.init(stringInterpolation:)(AppIntentSchemas::SummaryString stringInterpolation)
{
  v2 = *(stringInterpolation.parameters._rawValue + 2);
  *v1 = *stringInterpolation.parameters._rawValue;
  *(v1 + 16) = v2;
  return stringInterpolation;
}

AppIntentSchemas::SummaryString::StringInterpolation __swiftcall SummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  *v2 = MEMORY[0x1E69E7CC0];
  v2[1] = 0;
  v2[2] = 0xE000000000000000;
  if (interpolationCount + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = __OFADD__(literalCapacity, 2 * interpolationCount);
  literalCapacity += 2 * interpolationCount;
  if (v4)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x1E12DE680](literalCapacity);
  sub_1DF77C25C(interpolationCount);
LABEL_6:
  result.formatString._object = v5;
  result.formatString._countAndFlagsBits = interpolationCount;
  result.parameters._rawValue = literalCapacity;
  return result;
}

void sub_1DF77C25C(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_1DF77B5B0();
    v3 = v5;
  }

  *v1 = v3;
}

Swift::Void __swiftcall SummaryString.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  sub_1DF77C990();
  v1 = sub_1DF7AD644();
  MEMORY[0x1E12DE6C0](v1);
}

void SummaryString.StringInterpolation.appendInterpolation(_:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2[0] = 31524;
  v2[1] = 0xE200000000000000;
  MEMORY[0x1E12DE6C0](__dst[0], __dst[1]);
  MEMORY[0x1E12DE6C0](125, 0xE100000000000000);
  MEMORY[0x1E12DE6C0](31524, 0xE200000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF7AE850;
  memcpy((inited + 32), __dst, 0xB8uLL);
  sub_1DF767124(__dst, v2);
  sub_1DF77C9E4(inited);
}

uint64_t static SummaryString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1DF789E48(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1DF7AD934();
}

uint64_t sub_1DF77C4CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v4 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DF7AD934();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DF77C5A8(char a1)
{
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](a1 & 1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF77C5F8()
{
  v1 = *v0;
  sub_1DF7AD9E4();
  sub_1DF779FB4(v3, v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF77C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF77C4CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF77C664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF77C5A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DF77C68C(uint64_t a1)
{
  v2 = sub_1DF76C144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF77C6C8(uint64_t a1)
{
  v2 = sub_1DF76C144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummaryString.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B28, &qword_1DF7AE8F8);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v13 = *v1;
  v12 = v1[1];
  v16[1] = v1[2];
  v16[2] = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF76C144();

  sub_1DF7ADA64();
  v19 = v13;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B30, &qword_1DF7AE900);
  sub_1DF76A3E0(&qword_1ECE53B38, sub_1DF77CAD4);
  sub_1DF7AD904();

  if (!v2)
  {
    v17 = 1;
    sub_1DF7AD8D4();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_1DF77C904@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1DF77C940(0);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DF77C940(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_1DF7AD574();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1DF77C990()
{
  result = qword_1ECE53B20;
  if (!qword_1ECE53B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B20);
  }

  return result;
}

void sub_1DF77C9E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DF7A52C4(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
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

unint64_t sub_1DF77CAD4()
{
  result = qword_1ECE53B40;
  if (!qword_1ECE53B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B40);
  }

  return result;
}

unint64_t sub_1DF77CB28()
{
  result = qword_1EE1738C8;
  if (!qword_1EE1738C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1738C8);
  }

  return result;
}

unint64_t sub_1DF77CB8C()
{
  result = qword_1ECE53B50;
  if (!qword_1ECE53B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B50);
  }

  return result;
}

unint64_t sub_1DF77CBE4()
{
  result = qword_1ECE53B58;
  if (!qword_1ECE53B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B58);
  }

  return result;
}

unint64_t sub_1DF77CC3C()
{
  result = qword_1ECE53B60;
  if (!qword_1ECE53B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B60);
  }

  return result;
}

unint64_t sub_1DF77CC94()
{
  result = qword_1ECE53B68;
  if (!qword_1ECE53B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B68);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF77CD24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF77CD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF77CDC8()
{
  result = qword_1ECE53B70;
  if (!qword_1ECE53B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B70);
  }

  return result;
}

unint64_t sub_1DF77CE20()
{
  result = qword_1EE173940;
  if (!qword_1EE173940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173940);
  }

  return result;
}

unint64_t sub_1DF77CE78()
{
  result = qword_1EE173938;
  if (!qword_1EE173938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173938);
  }

  return result;
}

void sub_1DF77CECC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DF7A52DC(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DF77CF8C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DF7A52F4(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void static CaseBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v8 = *v2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > *(v3 + 24) >> 1)
      {
        if (v6 <= v7)
        {
          v10 = v6 + v5;
        }

        else
        {
          v10 = v6;
        }

        sub_1DF77B900(isUniquelyReferenced_nonNull_native, v10, 1, v3);
        v3 = v11;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v12 = *(v3 + 16);
          v13 = __OFADD__(v12, v5);
          v14 = v12 + v5;
          if (v13)
          {
            goto LABEL_20;
          }

          *(v3 + 16) = v14;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t static CaseBuilder.buildExpression(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B18, &unk_1DF7AE8E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DF7AE850;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

_BYTE *storeEnumTagSinglePayload for CaseBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1DF77D274@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileSize];
  *a2 = result;
  return result;
}

id sub_1DF77D2B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageCount];
  *a2 = result;
  return result;
}

id sub_1DF77D2EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageHeight];
  *a2 = result;
  return result;
}

id sub_1DF77D328@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pageWidth];
  *a2 = result;
  return result;
}

void sub_1DF77D364(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B78, &qword_1DF7B16E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B78, &qword_1DF7B16E8);
  v8 = *a2;
  v9 = sub_1DF7ACED4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACEA4();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setContentURL_];
}

void sub_1DF77D480(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B78, &qword_1DF7B16E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B78, &qword_1DF7B16E8);
  v8 = *a2;
  v9 = sub_1DF7ACED4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACEA4();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDarkThumbnailURL_];
}

void sub_1DF77D59C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setMetadataModificationDate_];
}

id sub_1DF77D6B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rankingHint];
  *a2 = result;
  return result;
}

void sub_1DF77D6F4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B78, &qword_1DF7B16E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B78, &qword_1DF7B16E8);
  v8 = *a2;
  v9 = sub_1DF7ACED4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACEA4();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setThumbnailURL_];
}

id sub_1DF77D810@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserCreated];
  *a2 = result;
  return result;
}

id sub_1DF77D84C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserCurated];
  *a2 = result;
  return result;
}

id sub_1DF77D888@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isUserOwned];
  *a2 = result;
  return result;
}

id sub_1DF77D8C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 allDay];
  *a2 = result;
  return result;
}

void sub_1DF77D900(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setCompletionDate_];
}

void sub_1DF77DA1C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDueDate_];
}

void sub_1DF77DB38(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setEndDate_];
}

void sub_1DF77DC54(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setStartDate_];
}

id sub_1DF77DD70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 altitude];
  *a2 = result;
  return result;
}

id sub_1DF77DDAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDOP];
  *a2 = result;
  return result;
}

void sub_1DF77DDE8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setGPSDateStamp_];
}

id sub_1DF77DF04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestBearing];
  *a2 = result;
  return result;
}

id sub_1DF77DF40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestDistance];
  *a2 = result;
  return result;
}

id sub_1DF77DF7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestLatitude];
  *a2 = result;
  return result;
}

id sub_1DF77DFB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDestLongitude];
  *a2 = result;
  return result;
}

id sub_1DF77DFF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSDifferental];
  *a2 = result;
  return result;
}

id sub_1DF77E030@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 GPSTrack];
  *a2 = result;
  return result;
}

id sub_1DF77E06C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 imageDirection];
  *a2 = result;
  return result;
}

id sub_1DF77E0A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 latitude];
  *a2 = result;
  return result;
}

id sub_1DF77E0E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longitude];
  *a2 = result;
  return result;
}

id sub_1DF77E120@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speed];
  *a2 = result;
  return result;
}

void sub_1DF77E15C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setTimestamp_];
}

void sub_1DF77E278(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setContentCreationDate_];
}

void sub_1DF77E394(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setContentModificationDate_];
}

void sub_1DF77E4B0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setDownloadedDate_];
}

void sub_1DF77E5CC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setLastUsedDate_];
}

void sub_1DF77E6E8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setAddedDate_];
}

id sub_1DF77E804@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryType];
  *a2 = result;
  return result;
}

id sub_1DF77E840@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_1DF77E87C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isStreamable];
  *a2 = result;
  return result;
}

id sub_1DF77E8B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalBitRate];
  *a2 = result;
  return result;
}

id sub_1DF77E8F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioBitRate];
  *a2 = result;
  return result;
}

id sub_1DF77E930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBitRate];
  *a2 = result;
  return result;
}

id sub_1DF77E96C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentRating];
  *a2 = result;
  return result;
}

id sub_1DF77E9A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isLocal];
  *a2 = result;
  return result;
}

id sub_1DF77E9E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playCount];
  *a2 = result;
  return result;
}

id sub_1DF77EA20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rating];
  *a2 = result;
  return result;
}

void sub_1DF77EA5C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B78, &qword_1DF7B16E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B78, &qword_1DF7B16E8);
  v8 = *a2;
  v9 = sub_1DF7ACED4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACEA4();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setURL_];
}

id sub_1DF77EB78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioChannelCount];
  *a2 = result;
  return result;
}

id sub_1DF77EBB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioSampleRate];
  *a2 = result;
  return result;
}

id sub_1DF77EBF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioTrackNumber];
  *a2 = result;
  return result;
}

void sub_1DF77EC2C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B80, &qword_1DF7B16F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B80, &qword_1DF7B16F0);
  v8 = *a2;
  v9 = sub_1DF7ACF14();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7ACF04();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setRecordingDate_];
}

id sub_1DF77ED48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tempo];
  *a2 = result;
  return result;
}

id sub_1DF77ED84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isGeneralMIDISequence];
  *a2 = result;
  return result;
}

id sub_1DF77EDC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ISOSpeed];
  *a2 = result;
  return result;
}

id sub_1DF77EDFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aperture];
  *a2 = result;
  return result;
}

id sub_1DF77EE38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bitsPerSample];
  *a2 = result;
  return result;
}

id sub_1DF77EE74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFlashOn];
  *a2 = result;
  return result;
}

id sub_1DF77EEB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 focalLength];
  *a2 = result;
  return result;
}

id sub_1DF77EEEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFocalLength35mm];
  *a2 = result;
  return result;
}

id sub_1DF77EF28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orientation];
  *a2 = result;
  return result;
}

id sub_1DF77EF64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelCount];
  *a2 = result;
  return result;
}

id sub_1DF77EFA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelHeight];
  *a2 = result;
  return result;
}

id sub_1DF77EFDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelWidth];
  *a2 = result;
  return result;
}

id sub_1DF77F018@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 whiteBalance];
  *a2 = result;
  return result;
}

id sub_1DF77F054@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureMode];
  *a2 = result;
  return result;
}

id sub_1DF77F090@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 exposureTime];
  *a2 = result;
  return result;
}

id sub_1DF77F0CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fNumber];
  *a2 = result;
  return result;
}

id sub_1DF77F108@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hasAlphaChannel];
  *a2 = result;
  return result;
}

id sub_1DF77F144@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAperture];
  *a2 = result;
  return result;
}

id sub_1DF77F180@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isRedEyeOn];
  *a2 = result;
  return result;
}

id sub_1DF77F1BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolutionHeightDPI];
  *a2 = result;
  return result;
}

id sub_1DF77F1F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolutionWidthDPI];
  *a2 = result;
  return result;
}

void sub_1DF77F234(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_27(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF7ACEF4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *v4 = v7;
  v4[1] = v9;
}

void sub_1DF77F28C(uint64_t a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_78(a1, a2);
  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = *v2;
    LODWORD(v2) = sub_1DF7ACEE4();
    v9 = v2;
  }

  OUTLINED_FUNCTION_25(v2, v3, v9, v4, v5, v6, v7, v8, v11, v12);
}

void sub_1DF77F2EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 emailHeaders];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B90, &qword_1DF7B16F8);
    v5 = sub_1DF7AD374();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1DF77F378(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B90, &qword_1DF7B16F8);
    v3 = sub_1DF7AD364();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEmailHeaders_];
}

id sub_1DF77F40C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isLikelyJunk];
  *a2 = result;
  return result;
}

void sub_1DF77F448(void **a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_27(a1, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    a5(0);
    v9 = sub_1DF7AD524();
  }

  else
  {
    v9 = 0;
  }

  *v5 = v9;
}

void sub_1DF77F4B0(void *a1, uint64_t *a2, uint64_t a3, int a4, void (*a5)(void), int a6, int a7, int a8)
{
  v8 = *a2;
  if (*a1)
  {
    a5(0);
    LODWORD(a1) = sub_1DF7AD514();
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_25(a1, a2, v9, a4, a5, a6, a7, a8, v10, v11);
}

id sub_1DF77F528@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerOrder];
  *a2 = result;
  return result;
}

void sub_1DF77F564(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_27(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF7AD3C4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *v4 = v7;
  v4[1] = v9;
}

void sub_1DF77F5BC(uint64_t a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_78(a1, a2);
  if (v3)
  {
    v9 = *v2;
    LODWORD(v2) = sub_1DF7AD3B4();
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  OUTLINED_FUNCTION_25(v2, v3, v10, v4, v5, v6, v7, v8, v11, v12);
}

void sub_1DF77F614(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actionIdentifiers];
  v4 = sub_1DF7AD524();

  *a2 = v4;
}

void sub_1DF77F670(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DF7AD514();
  [v3 setActionIdentifiers_];
}

uint64_t sub_1DF77F6D4@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v10, 1, v11);
}

void sub_1DF77F768(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B98, &unk_1DF7B1700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DF780304(a1, &v11 - v6, &qword_1ECE53B98, &unk_1DF7B1700);
  v8 = *a2;
  v9 = sub_1DF7AD354();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_1DF7AD344();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setSharedItemContentType_];
}

id sub_1DF77F884@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportsNavigation];
  *a2 = result;
  return result;
}

id sub_1DF77F8C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 supportsPhoneCall];
  *a2 = result;
  return result;
}

void sub_1DF77F8FC(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = OUTLINED_FUNCTION_27(a1, a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF7AD524();
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;
}

void sub_1DF77F954(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a1;
  v9 = *a2;
  if (v8)
  {
    LODWORD(v8) = sub_1DF7AD514();
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  OUTLINED_FUNCTION_25(v8, a2, v10, a4, a5, a6, a7, a8, v11, v12);
}

unint64_t sub_1DF7802C0()
{
  result = qword_1ECE53B88;
  if (!qword_1ECE53B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE53B88);
  }

  return result;
}

uint64_t sub_1DF780304(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id OUTLINED_FUNCTION_27(void **a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = *a1;
  v6 = *a4;

  return [v5 v6];
}

uint64_t sub_1DF780538(uint64_t a1, unint64_t a2)
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

  sub_1DF77C990();
  v3 = sub_1DF7AD644();
  v5 = v4;

  sub_1DF780698(1);
  v6 = sub_1DF7AD634();

  sub_1DF780758(1uLL, v3, v5);
  sub_1DF78082C();

  sub_1DF7AD424();

  return v6;
}

uint64_t sub_1DF780698(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF7AD414();
    v1 = sub_1DF7AD444();

    return v1;
  }

  return result;
}

unint64_t sub_1DF780758(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1DF7AD414();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1DF7AD444();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF78082C()
{
  result = qword_1ECE53BA0;
  if (!qword_1ECE53BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53BA0);
  }

  return result;
}

uint64_t Summary.parameters.getter()
{
  v1 = v0[3];
  if (*v0)
  {
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = v2;

  sub_1DF77C9E4(v3);
  return v5;
}

uint64_t Summary.init(_:otherParameters:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(_BYTE *)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  v5 = a2(v7);
  result = sub_1DF780E8C(v7);
  *(a3 + 24) = v5;
  return result;
}

uint64_t static Summary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (!*a1)
  {
    sub_1DF76A1B8(0);
    if (!v7)
    {
      sub_1DF76A1B8(0);
      goto LABEL_19;
    }

    v17 = OUTLINED_FUNCTION_1_3();
    sub_1DF76A1B8(v17);
    goto LABEL_13;
  }

  v10 = OUTLINED_FUNCTION_0_3();
  if (!v7)
  {
    sub_1DF76A1B8(v10);
    sub_1DF76A1B8(0);
    v18 = OUTLINED_FUNCTION_0_3();
    sub_1DF76A1B8(v18);

LABEL_13:
    v19 = OUTLINED_FUNCTION_0_3();
    sub_1DF76A34C(v19);
    v20 = OUTLINED_FUNCTION_1_3();
LABEL_15:
    sub_1DF76A34C(v20);
    return 0;
  }

  sub_1DF76A1B8(v10);
  v11 = OUTLINED_FUNCTION_1_3();
  sub_1DF76A1B8(v11);
  v12 = OUTLINED_FUNCTION_0_3();
  sub_1DF76A1B8(v12);
  if ((sub_1DF789E48(v3, v7) & 1) == 0)
  {
    v21 = OUTLINED_FUNCTION_1_3();
    sub_1DF76A34C(v21);

    v20 = OUTLINED_FUNCTION_0_3();
    goto LABEL_15;
  }

  if (v2 != v6 || v4 != v9)
  {
    v14 = sub_1DF7AD934();
    v15 = OUTLINED_FUNCTION_1_3();
    sub_1DF76A34C(v15);

    v16 = OUTLINED_FUNCTION_0_3();
    sub_1DF76A34C(v16);
    if (v14)
    {
      goto LABEL_20;
    }

    return 0;
  }

  sub_1DF76A34C(v7);

LABEL_19:
  v23 = OUTLINED_FUNCTION_0_3();
  sub_1DF76A34C(v23);
LABEL_20:

  return sub_1DF789E48(v5, v8);
}

uint64_t sub_1DF780AF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537972616D6D7573 && a2 == 0xED0000676E697274;
  if (v4 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726150726568746FLL && a2 == 0xEF73726574656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DF7AD934();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DF780BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF780AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF780BF8(uint64_t a1)
{
  v2 = sub_1DF769CE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF780C34(uint64_t a1)
{
  v2 = sub_1DF769CE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Summary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BB0, &unk_1DF7B1718);
  v4 = OUTLINED_FUNCTION_4(v3);
  v17 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v16[0] = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF76A1B8(v10);
  sub_1DF769CE8();
  sub_1DF7ADA64();
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  sub_1DF780EF4();
  v14 = v16[1];
  sub_1DF7AD8C4();
  sub_1DF76A34C(v18);
  if (!v14)
  {
    v18 = v16[0];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B30, &qword_1DF7AE900);
    sub_1DF76A3E0(&qword_1ECE53B38, sub_1DF77CAD4);
    sub_1DF7AD904();
  }

  return (*(v17 + 8))(v9, v3);
}

uint64_t sub_1DF780E8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BA8, &qword_1DF7B1710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF780EF4()
{
  result = qword_1ECE53BB8;
  if (!qword_1ECE53BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53BB8);
  }

  return result;
}

unint64_t sub_1DF780F48(uint64_t a1)
{
  *(a1 + 8) = sub_1DF76A554();
  result = sub_1DF780F78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF780F78()
{
  result = qword_1EE173718;
  if (!qword_1EE173718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173718);
  }

  return result;
}

uint64_t sub_1DF780FCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF78100C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1DF781070()
{
  result = qword_1ECE53BC8;
  if (!qword_1ECE53BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53BC8);
  }

  return result;
}

unint64_t sub_1DF7810C8()
{
  result = qword_1EE173720;
  if (!qword_1EE173720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173720);
  }

  return result;
}

unint64_t sub_1DF781120()
{
  result = qword_1EE173728;
  if (!qword_1EE173728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173728);
  }

  return result;
}

AppIntentSchemas::AuthenticationPolicy_optional __swiftcall AuthenticationPolicy.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DF781194()
{
  result = qword_1ECE53BD0;
  if (!qword_1ECE53BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53BD0);
  }

  return result;
}

uint64_t sub_1DF781208@<X0>(uint64_t *a1@<X8>)
{
  result = AuthenticationPolicy.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1DF7812FC()
{
  result = qword_1ECE53BD8;
  if (!qword_1ECE53BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53BD8);
  }

  return result;
}

uint64_t sub_1DF781350()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for Database();
    v1 = static Database.connection()();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1DF7813B8@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF783D1C();
  sub_1DF783D70();
  result = sub_1DF7AD0F4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AppIntentDomains.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t AppIntentDomains.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1DF781450()
{
  sub_1DF781350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BE8, &qword_1DF7B1A78);
  sub_1DF7AD054();

  if (!v3)
  {
    return 0;
  }

  v0 = v2;

  return v0;
}

uint64_t sub_1DF781530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a4;
  v22[1] = a6;
  v22[2] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C58, &qword_1DF7B1B18);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - v15;
  v17 = sub_1DF7AD294();
  v28 = v17;
  v29 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1DF7AD2A4();
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69A0130];
  v23 = a2;
  v24 = a3;
  v18 = sub_1DF7AD074();
  v19 = MEMORY[0x1E699FE60];
  v31 = v18;
  v32 = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v30);

  sub_1DF7AD284();
  sub_1DF783970(&v23);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_1DF783C2C();
  sub_1DF7ACF74();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v28 = v17;
  v29 = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1DF7AD2A4();
  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69A0130];
  v23 = v22[0];
  v24 = a5;
  v31 = v18;
  v32 = v19;
  __swift_allocate_boxed_opaque_existential_1(v30);

  sub_1DF7AD284();
  sub_1DF783970(&v23);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_1DF783CD4(&qword_1ECE53C68, &qword_1ECE53C58, &qword_1DF7B1B18);
  sub_1DF7AD164();
  v20 = *(v10 + 8);
  v20(v14, v9);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1DF783CD4(&qword_1EE1733D0, &qword_1ECE53C58, &qword_1DF7B1B18);
  sub_1DF783C80();
  sub_1DF7ACFC4();
  return (v20)(v16, v9);
}

uint64_t sub_1DF781888(void *a1)
{
  sub_1DF781350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BE8, &qword_1DF7B1A78);
  OUTLINED_FUNCTION_7_1();

  if (a1)
  {
  }

  else if (v4)
  {
    v2 = v5;

    return v2;
  }

  return 0;
}

uint64_t sub_1DF781938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DF781A04();
}

uint64_t sub_1DF781954(void *a1)
{
  sub_1DF781350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BE8, &qword_1DF7B1A78);
  OUTLINED_FUNCTION_7_1();

  if (a1)
  {
  }

  else if (v4)
  {
    v2 = v5;

    return v2;
  }

  return 0;
}

uint64_t sub_1DF781A04()
{
  sub_1DF783C80();
  sub_1DF783C2C();

  sub_1DF7AD104();
}

double sub_1DF781AAC()
{
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BF0, &qword_1DF7B1A80);
  OUTLINED_FUNCTION_2_3();

  if (v1)
  {

    *(v0 + 64) = 0;
    result = 0.0;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *v0 = 0u;
    *(v0 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DF781B34()
{
  sub_1DF783A2C();
  sub_1DF7839D8();

  sub_1DF7AD104();
}

uint64_t sub_1DF781BDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DF781B34();
}

double sub_1DF781BF8()
{
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53BF8, &qword_1DF7B1A88);
  OUTLINED_FUNCTION_2_3();

  if (v1)
  {

    *(v0 + 80) = 0;
    result = 0.0;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_1DF781C84()
{
  sub_1DF783AD4();
  sub_1DF783A80();

  sub_1DF7AD104();
}

uint64_t sub_1DF781D2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DF781C84();
}

void sub_1DF781D48()
{
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C00, &unk_1DF7B1A90);
  OUTLINED_FUNCTION_2_3();

  if (v1)
  {

    bzero(v0, 0x110uLL);
  }
}

uint64_t sub_1DF781DCC()
{
  sub_1DF783B7C();
  sub_1DF783B28();

  sub_1DF7AD104();
}

uint64_t sub_1DF781E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DF781DCC();
}

uint64_t sub_1DF781ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C58, &qword_1DF7B1B18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  v43[3] = sub_1DF7AD294();
  v43[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v43);
  sub_1DF7AD2A4();
  v42[3] = MEMORY[0x1E69E6158];
  v42[4] = MEMORY[0x1E69A0130];
  v42[0] = a1;
  v42[1] = a2;
  v44[3] = sub_1DF7AD074();
  v44[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v44);

  sub_1DF7AD284();
  sub_1DF783970(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_1DF783C2C();
  sub_1DF7ACF74();
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1DF783CD4(&qword_1EE1733D0, &qword_1ECE53C58, &qword_1DF7B1B18);
  sub_1DF783C80();
  v11 = sub_1DF7ACFB4();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    v36 = 0;
    v13 = sub_1DF7AD384();
    v14 = 0;
    v15 = *(v11 + 16);
    v37 = v11;
    v38 = v15;
    v16 = (v11 + 40);
    v17 = v39;
    while (1)
    {
      if (v38 == v14)
      {

        *v17 = v13;
        return result;
      }

      if (v14 >= *(v11 + 16))
      {
        break;
      }

      v18 = *(v16 - 1);
      v19 = *v16;
      v40 = v14;
      v41 = v18;
      v20 = v16[1];
      v21 = v16[2];
      v22 = v16[4];
      swift_bridgeObjectRetain_n();

      v44[7] = v22;

      swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v13;
      v23 = sub_1DF7ABE7C(v20, v21);
      if (__OFADD__(v13[2], (v24 & 1) == 0))
      {
        goto LABEL_17;
      }

      v25 = v23;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C60, &qword_1DF7B1B20);
      if (sub_1DF7AD774())
      {
        v27 = sub_1DF7ABE7C(v20, v21);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_19;
        }

        v25 = v27;
      }

      v13 = v44[0];
      if (v26)
      {
        v29 = (*(v44[0] + 56) + 16 * v25);
        v30 = v29[1];
        *v29 = v41;
        v29[1] = v19;
      }

      else
      {
        *(v44[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v31 = (v13[6] + 16 * v25);
        *v31 = v20;
        v31[1] = v21;
        v32 = (v13[7] + 16 * v25);
        *v32 = v41;
        v32[1] = v19;

        v33 = v13[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_18;
        }

        v13[2] = v35;
      }

      v16 += 6;
      v17 = v39;
      v14 = v40 + 1;
      v11 = v37;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1DF7AD984();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF7822E4(char *a1)
{
  v3 = v1;
  v4 = *a1;
  sub_1DF781350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C10, &qword_1DF7B1AA0);
  sub_1DF7AD054();
  result = OUTLINED_FUNCTION_8_1();
  if (!v2)
  {
    v6 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C18, &qword_1DF7B1AA8);
    sub_1DF7AD054();
    v7 = OUTLINED_FUNCTION_8_1();
    v8 = *(v3 + 16);
    MEMORY[0x1EEE9AC00](v7);

    sub_1DF7AD054();
    OUTLINED_FUNCTION_8_1();
    v9 = sub_1DF782AB4(v12);

    v10 = sub_1DF782BB0(v12);

    sub_1DF77CECC(v10);
    v11 = sub_1DF782BB0(v12);

    sub_1DF77CECC(v11);
    return v9;
  }

  return result;
}

uint64_t sub_1DF7824E4@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C40, &qword_1DF7B1B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-1] - v11;
  sub_1DF783B28();
  sub_1DF7ACF64();
  if (v4 != 3)
  {
    v17[3] = sub_1DF7AD294();
    v17[4] = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v17);
    sub_1DF7AD2A4();
    v16[3] = MEMORY[0x1E69E6810];
    v16[4] = MEMORY[0x1E69A01B0];
    v16[0] = a1;
    v18[3] = sub_1DF7AD074();
    v18[4] = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1DF7AD284();
    sub_1DF783970(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1DF783CD4(&qword_1ECE53C50, &qword_1ECE53C40, &qword_1DF7B1B10);
    sub_1DF7AD164();
    (*(v6 + 8))(v12, v5);
    __swift_destroy_boxed_opaque_existential_1(v18);
    (*(v6 + 32))(v12, v10, v5);
  }

  sub_1DF783CD4(&qword_1EE1733E8, &qword_1ECE53C40, &qword_1DF7B1B10);
  sub_1DF783B7C();
  v13 = sub_1DF7ACFB4();
  result = (*(v6 + 8))(v12, v5);
  if (!v2)
  {
    *v19 = v13;
  }

  return result;
}

uint64_t sub_1DF7827E8@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C38, &qword_1DF7B1B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-1] - v11;
  sub_1DF783A80();
  sub_1DF7ACF64();
  if (v4 != 3)
  {
    v17[3] = sub_1DF7AD294();
    v17[4] = MEMORY[0x1E69A0050];
    __swift_allocate_boxed_opaque_existential_1(v17);
    sub_1DF7AD2A4();
    v16[3] = MEMORY[0x1E69E6810];
    v16[4] = MEMORY[0x1E69A01B0];
    v16[0] = a1;
    v18[3] = sub_1DF7AD074();
    v18[4] = MEMORY[0x1E699FE60];
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1DF7AD284();
    sub_1DF783970(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1DF783CD4(&qword_1ECE53C48, &qword_1ECE53C38, &qword_1DF7B1B08);
    sub_1DF7AD164();
    (*(v6 + 8))(v12, v5);
    __swift_destroy_boxed_opaque_existential_1(v18);
    (*(v6 + 32))(v12, v10, v5);
  }

  sub_1DF783CD4(&qword_1EE1733D8, &qword_1ECE53C38, &qword_1DF7B1B08);
  sub_1DF783AD4();
  v13 = sub_1DF7ACFB4();
  result = (*(v6 + 8))(v12, v5);
  if (!v2)
  {
    *v19 = v13;
  }

  return result;
}

uint64_t sub_1DF782AB4(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    OUTLINED_FUNCTION_0_4();
    v5 = v14;
    v6 = v1 + 32;
    do
    {
      sub_1DF76A114(v6, v13);
      OUTLINED_FUNCTION_1_4();
      if (v8)
      {
        OUTLINED_FUNCTION_5_2(v7 > 1);
        v5 = v14;
      }

      v11 = &type metadata for IntentSchema;
      v12 = &protocol witness table for IntentSchema;
      *&v10 = swift_allocObject();
      sub_1DF76A114(v13, v10 + 16);
      *(v5 + 16) = v2;
      sub_1DF7663E4(&v10, v5 + 40 * v3 + 32);
      sub_1DF76A0C0(v13);
      v6 += 272;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1DF782BB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_0_4();
    v3 = v21;
    v4 = (v1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1DF783BD0(__dst, &v17);
      OUTLINED_FUNCTION_1_4();
      if (v6)
      {
        OUTLINED_FUNCTION_5_2(v5 > 1);
        v3 = v21;
      }

      v18 = &type metadata for EntitySchema;
      v19 = &protocol witness table for EntitySchema;
      *&v17 = swift_allocObject();
      v7 = memcpy((v17 + 16), __dst, 0x58uLL);
      OUTLINED_FUNCTION_6_2(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
      v4 += 88;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DF782CA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_0_4();
    v3 = v21;
    v4 = (v1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1DF783914(__dst, &v17);
      OUTLINED_FUNCTION_1_4();
      if (v6)
      {
        OUTLINED_FUNCTION_5_2(v5 > 1);
        v3 = v21;
      }

      v18 = &type metadata for EnumSchema;
      v19 = &protocol witness table for EnumSchema;
      *&v17 = swift_allocObject();
      v7 = memcpy((v17 + 16), __dst, 0x48uLL);
      OUTLINED_FUNCTION_6_2(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
      v4 += 72;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DF782D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DF76CB04(0, v1, 0);
    v2 = v18;
    v4 = (a1 + 65);
    do
    {
      v14 = *(v4 - 33);
      v5 = *(v4 - 25);
      v6 = *(v4 - 17);
      v7 = *(v4 - 9);
      v13 = *(v4 - 1);
      v8 = *v4;
      v18 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1DF76CB04(v10 > 1, v9 + 1, 1);
        v2 = v18;
      }

      v4 += 40;
      v16 = &type metadata for VersionedSchema;
      v17 = &protocol witness table for VersionedSchema;
      v11 = swift_allocObject();
      *&v15 = v11;
      *(v11 + 16) = v14;
      *(v11 + 24) = v5;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v13;
      *(v11 + 49) = v8;
      *(v2 + 16) = v9 + 1;
      sub_1DF7663E4(&v15, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DF782F28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C40, &qword_1DF7B1B10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-1] - v9;
  v15[3] = sub_1DF7AD294();
  v15[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1DF7AD2A4();
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = MEMORY[0x1E69A0130];
  v14[0] = a1;
  v14[1] = a2;
  v16[3] = sub_1DF7AD074();
  v16[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_1DF7AD284();
  sub_1DF783970(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_1DF783B28();
  sub_1DF7ACF74();
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1DF783CD4(&qword_1EE1733E8, &qword_1ECE53C40, &qword_1DF7B1B10);
  sub_1DF783B7C();
  v11 = sub_1DF7ACFB4();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t sub_1DF783184@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C38, &qword_1DF7B1B08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-1] - v9;
  v15[3] = sub_1DF7AD294();
  v15[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1DF7AD2A4();
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = MEMORY[0x1E69A0130];
  v14[0] = a1;
  v14[1] = a2;
  v16[3] = sub_1DF7AD074();
  v16[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_1DF7AD284();
  sub_1DF783970(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_1DF783A80();
  sub_1DF7ACF74();
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1DF783CD4(&qword_1EE1733D8, &qword_1ECE53C38, &qword_1DF7B1B08);
  sub_1DF783AD4();
  v11 = sub_1DF7ACFB4();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t sub_1DF7833E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_1DF781350();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1DF7AD054();
  result = OUTLINED_FUNCTION_8_1();
  if (!a5)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1DF783478@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v17 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C28, &qword_1DF7B1AF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-1] - v9;
  v15[3] = sub_1DF7AD294();
  v15[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1DF7AD2A4();
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = MEMORY[0x1E69A0130];
  v14[0] = a1;
  v14[1] = a2;
  v16[3] = sub_1DF7AD074();
  v16[4] = MEMORY[0x1E699FE60];
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_1DF7AD284();
  sub_1DF783970(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_1DF7839D8();
  sub_1DF7ACF74();
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1DF783CD4(&qword_1EE1733E0, &qword_1ECE53C28, &qword_1DF7B1AF8);
  sub_1DF783A2C();
  v11 = sub_1DF7ACFB4();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v17 = v11;
  }

  return result;
}

uint64_t AppIntentDomains.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1DF783970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C30, &qword_1DF7B1B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF7839D8()
{
  result = qword_1EE1733A0;
  if (!qword_1EE1733A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733A0);
  }

  return result;
}

unint64_t sub_1DF783A2C()
{
  result = qword_1EE173398;
  if (!qword_1EE173398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173398);
  }

  return result;
}

unint64_t sub_1DF783A80()
{
  result = qword_1EE173368;
  if (!qword_1EE173368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173368);
  }

  return result;
}

unint64_t sub_1DF783AD4()
{
  result = qword_1EE173360;
  if (!qword_1EE173360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173360);
  }

  return result;
}

unint64_t sub_1DF783B28()
{
  result = qword_1EE1733C8;
  if (!qword_1EE1733C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733C8);
  }

  return result;
}

unint64_t sub_1DF783B7C()
{
  result = qword_1EE1733C0;
  if (!qword_1EE1733C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733C0);
  }

  return result;
}

unint64_t sub_1DF783C2C()
{
  result = qword_1EE173340;
  if (!qword_1EE173340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173340);
  }

  return result;
}

unint64_t sub_1DF783C80()
{
  result = qword_1EE173338;
  if (!qword_1EE173338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173338);
  }

  return result;
}

uint64_t sub_1DF783CD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DF783D1C()
{
  result = qword_1EE173388;
  if (!qword_1EE173388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173388);
  }

  return result;
}

unint64_t sub_1DF783D70()
{
  result = qword_1EE173390;
  if (!qword_1EE173390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173390);
  }

  return result;
}

Swift::Bool __swiftcall PropertySchema.validate()()
{
  if (!*(v0 + 128) || (v1 = v0, v2 = *(v0 + 128), , sub_1DF7741B4(), v4 = v3, v6 = v5, , !v6))
  {
    v8 = 1;
    return v8 & 1;
  }

  v7 = sub_1DF76D670(v4);

  if (!v7)
  {
    goto LABEL_29;
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_1DF78A698(v75);
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  v8 = sub_1DF78A760();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C70, &qword_1DF7B1B28);
  if (!OUTLINED_FUNCTION_2_4(v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C78, &qword_1DF7B1B30);
    if (OUTLINED_FUNCTION_2_4(v11))
    {

      if (v76 == 3 || v76 == 13 && v75[0] == 1 && (OUTLINED_FUNCTION_0_5(), !v12))
      {
        sub_1DF77A414(v75);
        return v8 & 1;
      }

      goto LABEL_28;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C80, &qword_1DF7B1B38);
    v14 = OUTLINED_FUNCTION_2_4(v13);
    if (v14)
    {
      OUTLINED_FUNCTION_3_3(v14, v15, v16, v17, v18, v19, v20, v21, v46, v49, v52, v53, v56, v57, v60, v61, v64, v65, v68, v69, __dst[0]);
      v22 = 2;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C88, &qword_1DF7B1B40);
      v25 = OUTLINED_FUNCTION_2_4(v24);
      if (v25)
      {
        OUTLINED_FUNCTION_3_3(v25, v26, v27, v28, v29, v30, v31, v32, v46, v49, v52, v53, v56, v57, v60, v61, v64, v65, v68, v69, __dst[0]);
        v33 = OUTLINED_FUNCTION_1_5(2, v48, v51, v55, v59, v63, v67, v71, v73, __dst[0]);

        sub_1DF77A414(v75);
        v8 &= v33;
        return v8 & 1;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C90, &qword_1DF7B1B48);
      v35 = OUTLINED_FUNCTION_2_4(v34);
      if (!v35)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C98, &qword_1DF7B1B50);
        if (OUTLINED_FUNCTION_2_4(v43))
        {

          if (v76 == 4)
          {
            return v8 & 1;
          }
        }

        else
        {
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE53CA0, &qword_1DF7B1B58);
          if (!OUTLINED_FUNCTION_2_4(v45))
          {
            sub_1DF77A414(v75);

            goto LABEL_29;
          }

          if (v76 <= 8u && ((1 << v76) & 0x107) != 0)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_3_3(v35, v36, v37, v38, v39, v40, v41, v42, v46, v49, v52, v53, v56, v57, v60, v61, v64, v65, v68, v69, __dst[0]);
      v22 = 6;
    }

    v23 = OUTLINED_FUNCTION_1_5(v22, v47, v50, v54, v58, v62, v66, v70, v72, __dst[0]);

    sub_1DF77A414(v75);
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_29:
    v8 = 0;
    return v8 & 1;
  }

  if (v76 != 3)
  {
    if (v76 != 13 || v75[0] != 1 || (OUTLINED_FUNCTION_0_5(), v10))
    {
LABEL_28:
      sub_1DF77A414(v75);
      goto LABEL_29;
    }
  }

  sub_1DF77A414(v75);
LABEL_10:
  v8 ^= 1u;
  return v8 & 1;
}

uint64_t static SwitchCaseBuilder.buildBlock(_:)()
{
  type metadata accessor for SwitchCase();
  sub_1DF7AD5B4();
  sub_1DF7AD5B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1DF7AD464();
}

uint64_t sub_1DF7841D4(uint64_t a1)
{
  v2 = type metadata accessor for SwitchCase();
  sub_1DF7AD924();
  swift_allocObject();
  v3 = sub_1DF7AD544();
  (*(*(v2 - 8) + 16))(v4, a1, v2);
  sub_1DF7AD5B4();
  return v3;
}

_BYTE *sub_1DF78428C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static ParameterBuilder.buildBlock(_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1DF766CC8(a2, a1);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 24))(v5, v6);

  sub_1DF77C9E4(v7);
  return a3;
}

uint64_t static ParameterBuilder.buildBlock(_:)(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

_BYTE *storeEnumTagSinglePayload for ParameterBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DF7844CC()
{
  result = qword_1ECE53D28;
  if (!qword_1ECE53D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D28);
  }

  return result;
}

unint64_t sub_1DF784584()
{
  result = qword_1ECE53D30;
  if (!qword_1ECE53D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D30);
  }

  return result;
}

unint64_t sub_1DF7845F4()
{
  result = qword_1ECE53D38;
  if (!qword_1ECE53D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D38);
  }

  return result;
}

BOOL sub_1DF7846A4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1DF7846D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1DF784708@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t sub_1DF7847FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentModes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentModes(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntentModes(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF78488C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

unint64_t sub_1DF7848F8()
{
  result = qword_1ECE53D40;
  if (!qword_1ECE53D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D40);
  }

  return result;
}

uint64_t sub_1DF78494C@<X0>(uint64_t *a1@<X8>)
{
  result = PersonMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void static ParameterSchema.== infix(_:_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  memcpy(__dst, v2 + 2, 0x59uLL);
  v6 = v3[14];
  v58 = v3[16];
  v59 = v3[15];
  v53 = v3[18];
  v54 = v3[17];
  v55 = v3[19];
  v56 = v3[20];
  v49 = v3[22];
  v50 = v3[21];
  v7 = *v1;
  v8 = v1[1];
  memcpy(v67, v1 + 2, 0x59uLL);
  v10 = v1[14];
  v9 = v1[15];
  v11 = v1[16];
  v60 = v1[17];
  v57 = v1[18];
  v51 = v1[19];
  v52 = v1[20];
  v12 = v4 == v7 && v5 == v8;
  v47 = v1[22];
  v48 = v1[21];
  if (v12 || (sub_1DF7AD934() & 1) != 0)
  {
    memcpy(v63, v3 + 2, 0x59uLL);
    memcpy(__src, v1 + 2, 0x59uLL);
    sub_1DF770608(__dst, v61);
    sub_1DF770608(v67, v61);
    v13 = static ValueType.== infix(_:_:)(v63, __src);
    memcpy(v64, __src, 0x59uLL);
    sub_1DF77A414(v64);
    memcpy(v65, v63, 0x59uLL);
    sub_1DF77A414(v65);
    if (v13)
    {
      if (v6)
      {
        if (!v10)
        {
          goto LABEL_43;
        }

        sub_1DF788D24();
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else if (v10)
      {
        goto LABEL_43;
      }

      v16 = v59 == v9 && v58 == v11;
      if (v16 || (sub_1DF7AD934() & 1) != 0)
      {
        if (v53)
        {
          if (v57)
          {
            v17 = v54 == v60 && v53 == v57;
            if (!v17 && (sub_1DF7AD934() & 1) == 0)
            {
              v41 = OUTLINED_FUNCTION_0_7();
              sub_1DF771354(v41, v42);
              OUTLINED_FUNCTION_7_2();
              OUTLINED_FUNCTION_11_1();
              sub_1DF771354(v43, v44);
              OUTLINED_FUNCTION_7_2();
              OUTLINED_FUNCTION_11_1();
              sub_1DF785700(v45, v46);
LABEL_41:
              OUTLINED_FUNCTION_4_3();
              goto LABEL_42;
            }

            if (v55 != v51 || v56 != v52)
            {
              v19 = sub_1DF7AD934();
              OUTLINED_FUNCTION_4_3();
              sub_1DF771354(v20, v21);
              sub_1DF771354(v60, v57);
              sub_1DF785700(v60, v57);
              if (v19)
              {
                goto LABEL_34;
              }

              goto LABEL_41;
            }

            v30 = OUTLINED_FUNCTION_0_7();
            sub_1DF771354(v30, v31);
            OUTLINED_FUNCTION_4_3();
            sub_1DF771354(v32, v33);
            OUTLINED_FUNCTION_7_2();
            OUTLINED_FUNCTION_4_3();
            sub_1DF785700(v34, v35);
LABEL_34:
            v38 = OUTLINED_FUNCTION_0_7();
            sub_1DF785700(v38, v39);
            if (v50 != v48 || v49 != v47)
            {
              sub_1DF7AD934();
            }

            goto LABEL_43;
          }
        }

        else if (!v57)
        {
          OUTLINED_FUNCTION_4_3();
          sub_1DF771354(v36, v37);
          sub_1DF771354(v60, 0);
          goto LABEL_34;
        }

        v22 = OUTLINED_FUNCTION_0_7();
        sub_1DF771354(v22, v23);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_11_1();
        sub_1DF771354(v24, v25);
        v26 = OUTLINED_FUNCTION_0_7();
        sub_1DF785700(v26, v27);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_11_1();
LABEL_42:
        sub_1DF785700(v28, v29);
      }
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_14();
}

uint64_t ParameterSchema.title.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ParameterSchema.description.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_13_0();
}

__n128 ParameterSchema.init(_:ofType:supportedUTTypes:title:displayName:description:)@<Q0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a2;
  *(a9 + 8) = a3;
  memcpy((a9 + 16), __src, 0x59uLL);
  *(a9 + 112) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  result = *a7;
  v17 = *(a7 + 16);
  *(a9 + 136) = *a7;
  *(a9 + 152) = v17;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10;
  return result;
}

uint64_t sub_1DF784EBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DF7AD934() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DF7B9F80 == a2;
      if (v7 || (sub_1DF7AD934() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (sub_1DF7AD934() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
          if (v9 || (sub_1DF7AD934() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DF7AD934();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DF7850C0(unsigned __int8 a1)
{
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](a1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF78511C()
{
  v1 = *v0;
  sub_1DF7AD9E4();
  sub_1DF779FF8(v3, v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF785160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF784EBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF785188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF7850B8();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7851B0(uint64_t a1)
{
  v2 = sub_1DF767C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7851EC(uint64_t a1)
{
  v2 = sub_1DF767C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParameterSchema.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D48, &qword_1DF7B1F20);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v25 - v9;
  v11 = *v1;
  v33 = v1[1];
  OUTLINED_FUNCTION_5();
  memcpy(v12, v13, v14);
  v15 = v1[14];
  v31 = v1[15];
  v32 = v15;
  v16 = v1[16];
  v18 = v1[18];
  v17 = v1[19];
  v26 = v1[17];
  v27 = v18;
  v29 = v17;
  v30 = v16;
  v19 = v1[21];
  v28 = v1[20];
  v20 = v1[22];
  v25[0] = v19;
  v25[1] = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF767C24();
  sub_1DF7ADA64();
  v40[0] = 0;
  v22 = v34;
  sub_1DF7AD8D4();
  if (!v22)
  {
    v23 = v32;
    OUTLINED_FUNCTION_16_0(v40);
    v43 = 1;
    sub_1DF770608(v41, v39);
    sub_1DF77AF8C();
    OUTLINED_FUNCTION_10_0();
    sub_1DF7AD904();
    memcpy(v39, v40, 0x59uLL);
    sub_1DF77A414(v39);
    v35 = v23;
    v42 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D50, &qword_1DF7B1F28);
    sub_1DF767938(&qword_1ECE53D58, &qword_1ECE53D60);
    OUTLINED_FUNCTION_10_0();
    sub_1DF7AD8C4();
    LOBYTE(v35) = 3;
    OUTLINED_FUNCTION_10_0();
    sub_1DF7AD8D4();
    v35 = v26;
    v36 = v27;
    v37 = v29;
    v38 = v28;
    v42 = 4;
    sub_1DF771354(v26, v27);
    sub_1DF785744();
    OUTLINED_FUNCTION_10_0();
    sub_1DF7AD8C4();
    sub_1DF785700(v35, v36);
    LOBYTE(v35) = 5;
    OUTLINED_FUNCTION_10_0();
    sub_1DF7AD8D4();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t ParameterSchema.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  OUTLINED_FUNCTION_5();
  memcpy(v5, v6, v7);
  v8 = v1[14];
  v9 = v1[15];
  v10 = v1[16];
  v11 = v1[18];
  v17 = v1[19];
  v12 = v1[21];
  v15 = v1[17];
  v16 = v1[20];
  v13 = v1[22];
  sub_1DF7AD404();
  ValueType.hash(into:)(a1);
  sub_1DF7ADA04();
  if (v8)
  {
    sub_1DF785960(a1, v8);
  }

  OUTLINED_FUNCTION_9_1();
  sub_1DF7AD404();
  sub_1DF7ADA04();
  if (v11)
  {
    MEMORY[0x1E12DEC80](0);
    sub_1DF7AD404();
    sub_1DF7AD404();
  }

  return sub_1DF7AD404();
}

uint64_t ParameterSchema.hashValue.getter()
{
  sub_1DF7AD9E4();
  ParameterSchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7856C4()
{
  sub_1DF7AD9E4();
  ParameterSchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF785700(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1DF785744()
{
  result = qword_1ECE53D68;
  if (!qword_1ECE53D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D68);
  }

  return result;
}

void sub_1DF785798(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  if (v2)
  {
    v4 = a2 + 32;
    do
    {
      sub_1DF7727D4(v4, v9);
      sub_1DF774138(v9, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D98, &unk_1DF7B4A90);
      if (swift_dynamicCast())
      {
        sub_1DF7663E4(v5, v8);
        __swift_project_boxed_opaque_existential_1(v8, v8[3]);
        OUTLINED_FUNCTION_9_1();
        sub_1DF7AD394();
        sub_1DF772884(v9);
        __swift_destroy_boxed_opaque_existential_1(v8);
      }

      else
      {
        sub_1DF772884(v9);
        memset(v5, 0, sizeof(v5));
        v6 = 0;
        sub_1DF786338(v5);
      }

      v4 += 144;
      --v2;
    }

    while (v2);
  }
}

void sub_1DF7858C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(v6, v5, 0x59uLL);
      memcpy(__dst, v5, sizeof(__dst));
      sub_1DF770608(v6, v7);
      ValueType.hash(into:)(v2);
      memcpy(v7, __dst, 0x59uLL);
      sub_1DF77A414(v7);
      v5 += 96;
      --v3;
    }

    while (v3);
  }
}

void sub_1DF785960(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  if (v2)
  {
    v4 = *(sub_1DF7AD354() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    OUTLINED_FUNCTION_3_4();
    sub_1DF7862A0(v7);
    do
    {
      sub_1DF7AD394();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1DF785A2C()
{
  result = qword_1ECE53D78;
  if (!qword_1ECE53D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D78);
  }

  return result;
}

uint64_t sub_1DF785A80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF785AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF785B40()
{
  result = qword_1ECE53D80;
  if (!qword_1ECE53D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D80);
  }

  return result;
}

unint64_t sub_1DF785B98()
{
  result = qword_1EE1738D0;
  if (!qword_1EE1738D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1738D0);
  }

  return result;
}

unint64_t sub_1DF785BF0()
{
  result = qword_1EE1738D8;
  if (!qword_1EE1738D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1738D8);
  }

  return result;
}

void sub_1DF785C44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1E12DEC80](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_1DF785C84()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_2_5(v4, v2);
  if (v1)
  {
    v5 = (v3 + 32);
    do
    {
      memcpy(__dst, v5, 0x148uLL);
      sub_1DF77B7A0(__dst, v7);
      OUTLINED_FUNCTION_13_0();
      sub_1DF7AD404();
      memcpy(v7, &__dst[2], 0x59uLL);
      ValueType.hash(into:)(v0);
      OUTLINED_FUNCTION_9_1();
      sub_1DF7AD404();
      v6 = __dst[16];
      sub_1DF7ADA04();
      if (v6)
      {
        v7[0] = v6;
        sub_1DF7ADA04();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A80, &qword_1DF7ADF50);
        sub_1DF7AD394();
      }

      else
      {
        sub_1DF7ADA04();
      }

      sub_1DF7862E4(__dst);
      v5 += 328;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_14();
}

void sub_1DF785D9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1DF7AD404();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1DF785E04()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6_3(v2, v3);
  if (v0)
  {
    v4 = (v1 + 72);
    do
    {
      v6 = *(v4 - 5);
      v5 = *(v4 - 4);
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v10 = *(v4 - 1);
      v9 = *v4;

      sub_1DF7AD404();
      if (v7)
      {
        sub_1DF7ADA04();
        sub_1DF7AD404();
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1DF7ADA04();
        if (!v9)
        {
LABEL_7:
          MEMORY[0x1E12DEC80](1);
          goto LABEL_8;
        }
      }

      sub_1DF7AD404();
LABEL_8:

      v4 += 6;

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_14();
}

void sub_1DF785EDC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  if (v2)
  {
    v4 = a2 + 32;
    do
    {
      sub_1DF7729F4(v4, v13);
      sub_1DF7729F4(v13, &v11);
      switch(v12)
      {
        case 0:
          v5 = 1;
          goto LABEL_12;
        case 1:
          v5 = 2;
          goto LABEL_12;
        case 2:
          v5 = 3;
          goto LABEL_12;
        case 3:
          v5 = 4;
          goto LABEL_12;
        case 4:
          v5 = 5;
          goto LABEL_12;
        case 5:
          v5 = 6;
          goto LABEL_12;
        case 6:
          v5 = 7;
LABEL_12:
          MEMORY[0x1E12DEC80](v5);
          break;
        default:
          sub_1DF7663E4(&v11, v10);
          v6 = v10[4];
          __swift_project_boxed_opaque_existential_1(v10, v10[3]);
          v7 = *(v6 + 8);
          v8 = OUTLINED_FUNCTION_7_2();
          v9(v8);
          sub_1DF7AD404();

          __swift_destroy_boxed_opaque_existential_1(v10);
          break;
      }

      sub_1DF773158(v13);
      v4 += 40;
      --v2;
    }

    while (v2);
  }
}

void sub_1DF786018()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DF7AD354();
  v5 = OUTLINED_FUNCTION_4(v4);
  v22 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  MEMORY[0x1E12DEC80](v11);
  v28 = v11;
  if (v11)
  {
    v12 = 0;
    v26 = v22 + 16;
    v27 = v1 + 32;
    v24 = v4;
    v25 = (v22 + 8);
    v23 = v10;
    v30 = v3;
    do
    {
      v29 = v12;
      memcpy(v32, (v27 + 184 * v12), 0xB8uLL);
      v13 = v32[14];
      sub_1DF767124(v32, v31);
      sub_1DF7AD404();
      memcpy(v31, &v32[2], 0x59uLL);
      ValueType.hash(into:)(v3);
      if (v13)
      {
        sub_1DF7ADA04();
        MEMORY[0x1E12DEC80](*(v13 + 16));
        v14 = *(v13 + 16);
        v16 = v24;
        v15 = v25;
        v17 = v23;
        if (v14)
        {
          v18 = v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
          v19 = *(v22 + 72);
          v20 = *(v22 + 16);
          do
          {
            v20(v17, v18, v16);
            OUTLINED_FUNCTION_3_4();
            sub_1DF7862A0(&qword_1ECE53D88);
            sub_1DF7AD394();
            (*v15)(v17, v16);
            v18 += v19;
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        sub_1DF7ADA04();
      }

      v21 = v32[18];
      v3 = v30;
      sub_1DF7AD404();
      sub_1DF7ADA04();
      if (v21)
      {
        MEMORY[0x1E12DEC80](0);
        sub_1DF7AD404();
        sub_1DF7AD404();
      }

      v12 = v29 + 1;
      sub_1DF7AD404();
      sub_1DF767908(v32);
    }

    while (v12 != v28);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t sub_1DF7862A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DF7AD354();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF786338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DA0, &unk_1DF7B2360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF7863C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t sub_1DF78642C()
{
  v0 = sub_1DF7AD794();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF7864AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF78642C();
  *a2 = result;
  return result;
}

uint64_t sub_1DF7864DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF766404(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF786508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF78642C();
  *a1 = result;
  return result;
}

uint64_t sub_1DF786530(uint64_t a1)
{
  v2 = sub_1DF7692EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78656C(uint64_t a1)
{
  v2 = sub_1DF7692EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF7865A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF786480(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DF786624(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DB0, &qword_1DF7B2448);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v40 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7692EC();
  sub_1DF7ADA64();
  v14 = v3;
  sub_1DF766CC8(v3, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DB8, &qword_1DF7B2450);
  v15 = OUTLINED_FUNCTION_3_5();
  v46 = v8;
  if (v15)
  {
    v17 = v44[0];
    v16 = v44[1];
    v19 = v44[2];
    v18 = v44[3];
    LOBYTE(v43[0]) = 0;
    v42 = 0;
    sub_1DF786D1C();
    OUTLINED_FUNCTION_0_8();
    sub_1DF7AD904();
    if (!v2)
    {
      v43[0] = v17;
      v43[1] = v16;
      v43[2] = v19;
      v43[3] = v18;
      v42 = 1;
      sub_1DF780F78();
      OUTLINED_FUNCTION_0_8();
      sub_1DF7AD904();
    }

    (*(v46 + 8))(v12, v5);
    sub_1DF76A34C(v17);
LABEL_9:

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v40 = v12;
  if (OUTLINED_FUNCTION_3_5())
  {
    v21 = v44[0];
    v20 = v44[1];
    LOBYTE(v43[0]) = 1;
    v42 = 0;
    sub_1DF786D1C();
    OUTLINED_FUNCTION_0_8();
    sub_1DF7AD904();
    if (!v2)
    {
      v43[0] = v21;
      v43[1] = v20;
      v42 = 1;
      sub_1DF786DC4();
      OUTLINED_FUNCTION_0_8();
      sub_1DF7AD904();
    }

    v22 = OUTLINED_FUNCTION_4_4();
    v23(v22);

    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_3_5())
  {
    memcpy(v43, v44, sizeof(v43));
    v42 = 2;
    v41 = 0;
    sub_1DF786D1C();
    v25 = v40;
    sub_1DF7AD904();
    if (v2)
    {
      sub_1DF772830(v43);
      v26 = OUTLINED_FUNCTION_4_4();
      v27(v26);
    }

    else
    {
      v42 = 1;
      sub_1DF786D70();
      OUTLINED_FUNCTION_0_8();
      sub_1DF7AD904();
      v39 = v46;
      sub_1DF772830(v43);
      (*(v39 + 8))(v25, v5);
    }
  }

  else
  {
    v28 = sub_1DF7AD714();
    swift_allocError();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DC0, &qword_1DF7B2458);
    v32 = v46;
    v33 = v5;
    v34 = *(v31 + 48);
    v35 = v14;
    v36 = v14[3];
    v37 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v30[3] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);
    sub_1DF7AD6E4();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B30], v28);
    swift_willThrow();
    (*(v32 + 8))(v40, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1DF786A9C(uint64_t a1, uint64_t a2)
{
  sub_1DF766CC8(a1, v12);
  sub_1DF766CC8(a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DB8, &qword_1DF7B2450);
  if (OUTLINED_FUNCTION_2_6())
  {
    v3 = __src[0];
    if (OUTLINED_FUNCTION_1_7())
    {
      v4 = v10[0];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      v8[0] = v10[0];
      v8[1] = v10[1];
      v8[2] = v10[2];
      v8[3] = v10[3];
      v5 = static Summary.== infix(_:_:)(__dst, v8);
      sub_1DF76A34C(v4);

      sub_1DF76A34C(v3);
LABEL_17:

      goto LABEL_18;
    }

    sub_1DF76A34C(__src[0]);
  }

  if (OUTLINED_FUNCTION_2_6())
  {
    if (OUTLINED_FUNCTION_1_7())
    {
      if (sub_1DF789E48(__src[0], v10[0]))
      {
        sub_1DF789F4C();
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_17;
    }
  }

  if (OUTLINED_FUNCTION_2_6())
  {
    if (OUTLINED_FUNCTION_1_7())
    {
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v8, v10, sizeof(v8));
      v5 = static When.== infix(_:_:)(__dst, v8);
      sub_1DF772830(v8);
      sub_1DF772830(__dst);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v13);
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v5 & 1;
    }

    sub_1DF772830(__src);
  }

  sub_1DF786E18(v12);
  v5 = 0;
  return v5 & 1;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E12DF120);
  }

  return result;
}

unint64_t sub_1DF786D1C()
{
  result = qword_1ECE53DC8;
  if (!qword_1ECE53DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53DC8);
  }

  return result;
}

unint64_t sub_1DF786D70()
{
  result = qword_1EE1737A0;
  if (!qword_1EE1737A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1737A0);
  }

  return result;
}

unint64_t sub_1DF786DC4()
{
  result = qword_1EE173748;
  if (!qword_1EE173748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173748);
  }

  return result;
}

uint64_t sub_1DF786E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DD0, &qword_1DF7B2460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ParameterSummaryWrapper.Base(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DF786F70()
{
  result = qword_1ECE53DD8;
  if (!qword_1ECE53DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53DD8);
  }

  return result;
}

unint64_t sub_1DF786FC8()
{
  result = qword_1ECE53DE0;
  if (!qword_1ECE53DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53DE0);
  }

  return result;
}

unint64_t sub_1DF787020()
{
  result = qword_1EE1737D8;
  if (!qword_1EE1737D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1737D8);
  }

  return result;
}

unint64_t sub_1DF787078()
{
  result = qword_1EE1737E0;
  if (!qword_1EE1737E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1737E0);
  }

  return result;
}

uint64_t CaseSchema._name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static CaseSchema.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF7AD934();
  }
}

uint64_t sub_1DF787134(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D616E5FLL && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DF7AD934();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DF7871B0()
{
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](0);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7871FC()
{
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](0);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF78723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF787134(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF787284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF7871A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DF7872B0(uint64_t a1)
{
  v2 = sub_1DF762F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7872EC(uint64_t a1)
{
  v2 = sub_1DF762F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CaseSchema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DE8, &qword_1DF7B26B0);
  v5 = OUTLINED_FUNCTION_0_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF762F2C();
  sub_1DF7ADA64();
  sub_1DF7AD8D4();
  return (*(v7 + 8))(v11, v2);
}

uint64_t CaseSchema.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DF7AD404();
}

uint64_t CaseSchema.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF7AD9E4();
  sub_1DF7AD404();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7874CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF7AD9E4();
  sub_1DF7AD404();
  return sub_1DF7ADA24();
}

unint64_t sub_1DF787518()
{
  result = qword_1ECE53DF8;
  if (!qword_1ECE53DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53DF8);
  }

  return result;
}

uint64_t sub_1DF78756C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF7875AC(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF78760C()
{
  result = qword_1ECE53E00;
  if (!qword_1ECE53E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53E00);
  }

  return result;
}

unint64_t sub_1DF787664()
{
  result = qword_1EE173AD0;
  if (!qword_1EE173AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173AD0);
  }

  return result;
}

unint64_t sub_1DF7876BC()
{
  result = qword_1EE173AD8;
  if (!qword_1EE173AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173AD8);
  }

  return result;
}

unint64_t sub_1DF78771C()
{
  result = qword_1ECE53E08;
  if (!qword_1ECE53E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53E08);
  }

  return result;
}

uint64_t sub_1DF787770@<X0>(uint64_t *a1@<X8>)
{
  result = EntitySystemProtocol.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySystemProtocol(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}