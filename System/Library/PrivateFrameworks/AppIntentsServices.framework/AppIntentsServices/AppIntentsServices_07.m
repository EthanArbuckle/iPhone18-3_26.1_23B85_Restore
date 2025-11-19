double sub_221A1B38C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 eventType];
  if (v4 >= 3)
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v12 = sub_221BCCD88();
    __swift_project_value_buffer(v12, qword_27CFDEE58);
    v13 = a1;
    v14 = sub_221BCCD68();
    v15 = sub_221BCDA88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      [v13 eventType];
      type metadata accessor for LNAppNotificationEventType(0);
      v19 = sub_221BCD3D8();
      v21 = sub_2219A6360(v19, v20, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v13;
      *v17 = v13;
      v22 = v13;
      _os_log_impl(&dword_221989000, v14, v15, "Unknown EventType %s in %@", v16, 0x16u);
      sub_2219A1CC8(v17, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00](v23);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00](v24);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00](v25);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = v4;
    v6 = [a1 entityType];
    v7 = sub_221BCD388();
    v9 = v8;

    v10 = sub_221A1C3D8(a1);
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v5;
    *(a2 + 24) = v10;
  }

  return result;
}

uint64_t sub_221A1B5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v35 = a1;
  sub_221A1CAA4();
  v4 = OUTLINED_FUNCTION_76_0();
  v5 = v4;
  v6 = v4[2];
  if (v6 >= 2)
  {
    v8 = v4[4];
    v7 = v4[5];

    v9 = sub_221BCE0B8();

    if (v9 <= 2)
    {
      if (v6 == 2)
      {
        v11 = 0;
      }

      else
      {
        if (v5[2] < 3uLL)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v32 = v5[9];
        v35 = v5[8];
        v36 = v32;
        result = OUTLINED_FUNCTION_76_0();
        v11 = result;
      }

      if (v5[2] >= 2uLL)
      {
        v34 = v5[6];
        v33 = v5[7];

        *a3 = v34;
        *(a3 + 8) = v33;
        *(a3 + 24) = v11;
        *(a3 + 16) = v9;
        return result;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v12 = sub_221BCCD88();
  __swift_project_value_buffer(v12, qword_27CFDEE58);

  v13 = sub_221BCCD68();
  v14 = sub_221BCDA78();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = OUTLINED_FUNCTION_56_3();
    *(v15 + 4) = sub_2219A6360(v16, v17, v18);
    *(v15 + 12) = 2080;
    v19 = MEMORY[0x223DA33D0](v5, MEMORY[0x277D837D0]);
    v21 = v20;

    v22 = sub_2219A6360(v19, v21, &v35);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_221989000, v13, v14, "Failed to extract eventType - input %s split into %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00](v23, v24, v25, v26);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00](v27, v28, v29, v30);
  }

  else
  {
  }

  sub_2219ACB94();
  swift_allocError();
  *v31 = 0xD00000000000001BLL;
  *(v31 + 8) = 0x8000000221BED650;
  *(v31 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_221A1B8C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22198D22C();
  *a2 = result;
  return result;
}

uint64_t sub_221A1B8F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22198D278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_221A1B928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22198D22C();
  *a1 = result;
  return result;
}

uint64_t sub_221A1B970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221A1B88C();
  *a1 = result;
  return result;
}

uint64_t sub_221A1B998(uint64_t a1)
{
  v2 = sub_221A1C7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221A1B9D4(uint64_t a1)
{
  v2 = sub_221A1C7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221A1BA10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_27();
  result = sub_221BCE3A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    OUTLINED_FUNCTION_27();
    v6 = sub_221BCE1D8();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v9);
    sub_221A1B5A4(v6, v8, a2);
  }

  return result;
}

uint64_t sub_221A1BADC(uint64_t *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8608, &qword_221BD3E60);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = *a1;
  v12 = a1[1];
  v19 = *(a1 + 16);
  v18 = a1[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_221A1C7EC();
  sub_221BCE3D8();
  sub_221BCE138();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C840();
    sub_221BCE158();
    sub_221A1C8E8();
    sub_221BCE158();
  }

  v14 = *(v7 + 8);
  v15 = OUTLINED_FUNCTION_55_3();
  return v16(v15);
}

uint64_t sub_221A1BCB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8638, &unk_221BD3E78);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_157();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_221A1C7EC();
  result = sub_221BCE3B8();
  if (!v2)
  {
    v11 = sub_221BCE0E8();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C93C();
    sub_221BCE108();
    sub_221A1CA50();
    sub_221BCE108();
    v14 = OUTLINED_FUNCTION_40_2();
    result = v15(v14);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 24) = v16;
    *(a2 + 16) = v17;
  }

  return result;
}

void AppNotificationEvent.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_221BCDED8();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  sub_221A1BA10(a1, &v22);
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    goto LABEL_6;
  }

  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if (swift_dynamicCast())
  {
    if ((*(v8 + 88))(v13, v5) == *MEMORY[0x277D84160])
    {

      (*(v8 + 96))(v13, v5);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85C0, &qword_221BD3BD8) + 48);
      sub_221A1BCB8(a1, &v22);
      __swift_destroy_boxed_opaque_existential_0(a1);
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v20 = sub_221BCDEC8();
      OUTLINED_FUNCTION_2_1(v20);
      (*(v21 + 8))(v13 + v15);

LABEL_6:
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
      *(a2 + 24) = v19;
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v8 + 8))(v13, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t AppNotificationEvent.encode(to:)(void *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v3;
  v8 = v4;
  return sub_221A1BADC(v6, a1);
}

void sub_221A1C1B4(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_221A1C320(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_221A1C320(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_221BCC278();
  v8 = result;
  if (result)
  {
    result = sub_221BCC2A8();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_221BCC298();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_221A1C3D8(void *a1)
{
  v1 = [a1 instanceIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD668();

  return v3;
}

unint64_t sub_221A1C434()
{
  result = qword_27CFB85C8;
  if (!qword_27CFB85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85C8);
  }

  return result;
}

unint64_t sub_221A1C48C()
{
  result = qword_27CFB85D0;
  if (!qword_27CFB85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85D0);
  }

  return result;
}

unint64_t sub_221A1C500()
{
  result = qword_27CFB85D8;
  if (!qword_27CFB85D8)
  {
    sub_221BCC8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85D8);
  }

  return result;
}

uint64_t sub_221A1C558()
{
  OUTLINED_FUNCTION_69_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_0_0();
  v7(v6);
  return v0;
}

uint64_t sub_221A1C5B0()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v0;
}

uint64_t sub_221A1C608()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v0;
}

uint64_t sub_221A1C660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_221A1C6B8()
{
  result = qword_27CFB85F8;
  if (!qword_27CFB85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB85F8);
  }

  return result;
}

uint64_t sub_221A1C70C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if ((v3 - 1) < 2 || v3 == 4 || v3 == 3)
  {
  }

  return result;
}

unint64_t sub_221A1C7EC()
{
  result = qword_27CFB8610;
  if (!qword_27CFB8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8610);
  }

  return result;
}

unint64_t sub_221A1C840()
{
  result = qword_27CFB8620;
  if (!qword_27CFB8620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C9E4(&qword_27CFB8628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8620);
  }

  return result;
}

unint64_t sub_221A1C8E8()
{
  result = qword_27CFB8630;
  if (!qword_27CFB8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8630);
  }

  return result;
}

unint64_t sub_221A1C93C()
{
  result = qword_27CFB8640;
  if (!qword_27CFB8640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8618, &unk_221BD3E68);
    sub_221A1C9E4(&qword_27CFB8648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8640);
  }

  return result;
}

uint64_t sub_221A1C9E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB7520, &qword_221BD0770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221A1CA50()
{
  result = qword_27CFB8650;
  if (!qword_27CFB8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8650);
  }

  return result;
}

unint64_t sub_221A1CAA4()
{
  result = qword_27CFB8658;
  if (!qword_27CFB8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8658);
  }

  return result;
}

uint64_t sub_221A1CAF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_221A1CB80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221A1CC60()
{
  result = qword_27CFB8660;
  if (!qword_27CFB8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8660);
  }

  return result;
}

unint64_t sub_221A1CCB8()
{
  result = qword_27CFB8668;
  if (!qword_27CFB8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8668);
  }

  return result;
}

unint64_t sub_221A1CD10()
{
  result = qword_27CFB8670;
  if (!qword_27CFB8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8670);
  }

  return result;
}

void OUTLINED_FUNCTION_16_7(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v9 - 125) = a8;
  *(v9 - 124) = a7;
  *(v9 - 123) = a6;
  *(v9 - 122) = v8;
  *(v9 - 121) = a5;
  *(v9 - 120) = a4;
  *(v9 - 119) = a2;
}

void OUTLINED_FUNCTION_19_5()
{
  *(v1 - 115) = *(v1 - 480);
  *(v1 - 114) = *(v1 - 472);
  *(v1 - 113) = *(v1 - 464);
  *(v1 - 112) = v0;
  *(v1 - 111) = *(v1 - 456);
  *(v1 - 110) = *(v1 - 448);
  *(v1 - 109) = *(v1 - 440);
  *(v1 - 108) = *(v1 - 432);
  *(v1 - 107) = *(v1 - 424);
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v12 - 496) = a8;
  *(v12 - 488) = a7;
  *(v12 - 480) = a6;
  *(v12 - 472) = a5;
  *(v12 - 464) = a4;
  *(v12 - 456) = a3;
  *(v12 - 448) = a2;
  *(v12 - 440) = result;
  *(v12 - 432) = v11;
  *(v12 - 424) = v10;
  *(v12 - 408) = v9;
  *(v12 - 416) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_5(char a1, uint64_t a2, size_t a3)
{
  *(v7 - 117) = a1;
  *(v7 - 116) = v6;
  *(v7 - 115) = v5;
  *(v7 - 114) = v4;
  *(v7 - 113) = v3;

  return memcmp((v7 - 112), (v7 - 126), a3);
}

void OUTLINED_FUNCTION_26_5()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 296);
  *(v0 - 120) = *(v0 - 400);
  *(v0 - 119) = *(v0 - 504);
  *(v0 - 118) = *(v0 - 496);
  *(v0 - 117) = *(v0 - 488);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_2219EBFB4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_45_3()
{
  v4 = v0;
  sub_2219EBFB4(v0, v2);
  sub_2219EBFB4(*(v3 - 392), v1);
  *(v3 - 400) = v4;
  sub_2219EBFB4(v4, v2);

  return sub_221BCC278();
}

void OUTLINED_FUNCTION_47_1()
{
  *(v3 - 106) = v1;
  *(v3 - 105) = HIBYTE(v0);
  *(v3 - 104) = v2;
}

void OUTLINED_FUNCTION_48_4()
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v0;
  v5 = *v0;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_61_3@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_3()
{

  return sub_221BCD328();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return sub_221BCE1B8();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_221BCDCC8();
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_221A1C660(v0, v1);
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return sub_221BCC2A8();
}

uint64_t OUTLINED_FUNCTION_88_3(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *(v4 - 376);

  return sub_221A1C320(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_89_2()
{

  return sub_221A1C558();
}

uint64_t AppNotificationTopic.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_221BCF7F0;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    *(v5 + 48) = v4;
    *(v5 + 56) = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    v2 = sub_221BCD328();
  }

  else
  {
    v6 = v0[1];
  }

  return v2;
}

uint64_t static AppNotificationTopic.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_221BCE1B8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_221BCE1B8() & 1) != 0)
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

  return result;
}

uint64_t AppNotificationTopic.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_221BCD448();
  if (!v4)
  {
    return sub_221BCE328();
  }

  sub_221BCE328();

  return sub_221BCD448();
}

uint64_t AppNotificationTopic.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE328();
  if (v4)
  {
    sub_221BCD448();
  }

  return sub_221BCE358();
}

uint64_t sub_221A1D79C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_221BCE308();
  AppNotificationTopic.hash(into:)();
  return sub_221BCE358();
}

uint64_t static AppNotificationTopic.allEvents(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = 0;
}

uint64_t static AppNotificationTopic.entityEvents(for:entityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

unint64_t sub_221A1D848()
{
  result = qword_27CFB8678;
  if (!qword_27CFB8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8678);
  }

  return result;
}

uint64_t IntentsServices.InterfaceIdiom.rawValue.getter()
{
  result = 0x73646F50726961;
  switch(*v0)
  {
    case 1:
      result = 0x79616C50726163;
      break;
    case 2:
      result = 0x6565724673657965;
      break;
    case 3:
      result = 0x646F50656D6F68;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x656E6F6870;
      break;
    case 6:
      result = 6578544;
      break;
    case 7:
      result = 30324;
      break;
    case 8:
      result = 0x6E6F69736976;
      break;
    case 9:
      result = 0x6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t IntentsServices.InterfaceIdiom.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_221BCE0B8();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_221A1DA0C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return IntentsServices.InterfaceIdiom.init(rawValue:)(a1);
}

uint64_t sub_221A1DA18@<X0>(uint64_t *a1@<X8>)
{
  result = IntentsServices.InterfaceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter(char *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    v4 = MobileGestalt_copy_deviceClass_obj();

    if (v4)
    {
      v5 = sub_221BCD388();
      v7 = v6;

      v8 = v5 == 0x5654656C707041 && v7 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
      {

        v9 = 7;
LABEL_45:
        *a1 = v9;
        return;
      }

      v10 = v5 == 0x6363416F69647541 && v7 == 0xEE0079726F737365;
      if (v10 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
      {

        v9 = 3;
        goto LABEL_45;
      }

      v11 = v5 == 0x656E6F685069 && v7 == 0xE600000000000000;
      if (v11 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
      {

        v9 = 5;
        goto LABEL_45;
      }

      v12 = v5 == 1684099177 && v7 == 0xE400000000000000;
      if (v12 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
      {

        v9 = 6;
        goto LABEL_45;
      }

      v13 = v5 == 6512973 && v7 == 0xE300000000000000;
      if (v13 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
      {

        v9 = 4;
        goto LABEL_45;
      }

      v14 = v5 == 0x447974696C616552 && v7 == 0xED00006563697665;
      if (v14 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
      {

        v9 = 8;
        goto LABEL_45;
      }

      if (v5 == 0x6863746157 && v7 == 0xE500000000000000)
      {
      }

      else
      {
        v16 = OUTLINED_FUNCTION_0_28();

        if ((v16 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v9 = 9;
      goto LABEL_45;
    }

LABEL_44:
    v9 = 10;
    goto LABEL_45;
  }

  __break(1u);
}

unint64_t sub_221A1DC7C()
{
  result = qword_27CFB8680;
  if (!qword_27CFB8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8680);
  }

  return result;
}

uint64_t _s14InterfaceIdiomOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14InterfaceIdiomOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_221BCE1B8();
}

uint64_t sub_221A1DE50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = *v2;
  v14 = *(v6 + 16);
  v14(v21 - v15, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  if (swift_dynamicCast())
  {
    sub_2219A1D64(v21, v23);
    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_0(v23, v24);
    LOBYTE(v21[0]) = v13;
    v18 = (*(v17 + 16))(v21, v16, v17);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_221A1E56C(v21);
    if (v13)
    {
      v23[0] = 0x20656D6F7328;
      v23[1] = 0xE600000000000000;
      *&v21[0] = a2;
      swift_getMetatypeMetadata();
      v19 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v19);

      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      return v23[0];
    }

    else
    {
      v14(v12, a1, a2);
      return sub_221BCD3D8();
    }
  }

  return v18;
}

uint64_t sub_221A1E0A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-v15];
  v17 = *v2;
  (*(v18 + 16))(&v21[-v15], a1);
  if (__swift_getEnumTagSinglePayload(v16, 1, a2) == 1)
  {
    return 7104878;
  }

  (*(v6 + 32))(v11, v16, a2);
  v21[15] = v17;
  v19 = sub_221A1DE50(v11, a2);
  (*(v6 + 8))(v11, a2);
  return v19;
}

uint64_t IntentsServices.PayloadPrivacy.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_221A1E278()
{
  result = qword_27CFB8688;
  if (!qword_27CFB8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8688);
  }

  return result;
}

uint64_t sub_221A1E2EC@<X0>(_DWORD *a1@<X8>)
{
  result = IntentsServices.PayloadPrivacy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_221A1E314(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v15 = 91;
  v16 = 0xE100000000000000;
  v14 = a2;
  v12[2] = a3;
  v12[3] = a4;
  v13 = v4;
  v5 = sub_221BCD748();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_221B8F6FC(sub_221A1E5D4, v12, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  sub_2219998AC();
  v8 = sub_221BCD328();
  v10 = v9;

  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](93, 0xE100000000000000);
  return v15;
}

uint64_t sub_221A1E454(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *_s14PayloadPrivacyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221A1E56C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F80, &qword_221BD2810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221A1E5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 32);
  result = sub_221A1DE50(a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_221A1E61C(char *a1, void *a2)
{
  v3 = *a1;
  sub_221BCDE68();

  v4 = sub_2219C0E8C(a2, v3);
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_221A1E6CC(uint64_t a1)
{
  result = sub_221A1E6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221A1E6F4()
{
  result = qword_27CFB8690[0];
  if (!qword_27CFB8690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFB8690);
  }

  return result;
}

uint64_t sub_221A1E768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Value();
  OUTLINED_FUNCTION_0_29(v6);
  v8 = (*(v7 + 16))(v22, v3);
  v9 = v23;
  if (v23)
  {
    v10 = *(&v22[0] + 1);
    *&v21[0] = *&v22[0];
    MEMORY[0x28223BE20](v8);
    v19[2] = v5;
    type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Comparison();
    v11 = sub_221BCD748();
    WitnessTable = swift_getWitnessTable();
    v14 = sub_221B8F6FC(sub_221A1F2A4, v19, v11, &type metadata for PropertyQuery.Comparison, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

    *a2 = v14;
    *(a2 + 8) = v10;
  }

  else
  {
    v21[0] = v22[0];
    v21[1] = v22[1];
    v21[2] = v22[2];
    v21[3] = v22[3];
    v16 = type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Comparison();
    sub_221A1C73C(v21, v20);
    result = (*(*(v16 - 8) + 8))(v21, v16);
    v17 = v20[1];
    *a2 = v20[0];
    *(a2 + 16) = v17;
    v18 = v20[3];
    *(a2 + 32) = v20[2];
    *(a2 + 48) = v18;
  }

  *(a2 + 64) = v9;
  return result;
}

uint64_t sub_221A1E948(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v2 = objc_allocWithZone(MEMORY[0x277D23800]);
  v9 = sub_2219A0230();
  v10 = 0;
  v11 = 95;
  v12 = 0xE100000000000000;
  v13 = xmmword_221BD0800;
  *&v7[0] = (*(v1 + 144))(v7);

  swift_getAtKeyPath();

  sub_22199D150();

  if (*(v6 + 24))
  {
    v4 = *(v6 + 16);
    v5 = *(v6 + 24);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_221A1EAC4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *(*(*a1 + *MEMORY[0x277D84DE8] + 8) + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v21 - v13;
  v15 = sub_221A1E948(v12);
  v17 = v16;
  (*(v10 + 16))(v14, a2, v9);
  PropertyQuery.Comparison.init<A>(propertyName:operation:value:)(v15, v17, a4, v14, v9, a3, v21);
  v18 = v21[1];
  *a5 = v21[0];
  a5[1] = v18;
  result = *&v22;
  v20 = v23;
  a5[2] = v22;
  a5[3] = v20;
  return result;
}

double static AppEntityQueryRepresentation.TypedPropertyQuery.Comparison.property<A>(_:contains:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *(a3 + 8);
  v10 = *(*(*a1 + *MEMORY[0x277D84DE8] + 8) + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v22 - v14;
  v16 = sub_221A1E948(a1);
  v18 = v17;
  (*(v12 + 16))(v15, a2, AssociatedTypeWitness);
  PropertyQuery.Comparison.init<A>(propertyName:operation:value:)(v16, v18, 6, v15, AssociatedTypeWitness, a4, v22);
  v19 = v22[1];
  *a5 = v22[0];
  a5[1] = v19;
  result = *&v23;
  v21 = v24;
  a5[2] = v23;
  a5[3] = v21;
  return result;
}

uint64_t sub_221A1ED98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_221A1E948(a1);
  a5[1] = v9;
  a5[2] = a4;
  a5[3] = a2;
  v10 = MEMORY[0x277D837D0];
  a5[4] = a3;
  a5[6] = v10;
  a5[7] = &protocol witness table for String;
}

void *static AppEntityQueryRepresentation.TypedPropertyQuery.comparison(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery.Comparison();
  OUTLINED_FUNCTION_0_29(v4);
  (*(v5 + 16))(__src, a1);
  __src[64] = 0;
  return memcpy(a2, __src, 0x41uLL);
}

uint64_t static AppEntityQueryRepresentation.TypedPropertyQuery.compound(_:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 1;
}

uint64_t sub_221A1EEA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1EF04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_221A1EF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A1EFC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1F00C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A1F04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A1F0BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_221A1F10C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_221A1F14C(uint64_t result, int a2, int a3)
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

uint64_t sub_221A1F19C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1F1D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221A1F214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A1F264(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_221A1F308(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;

  sub_221BCDE68();

  v14 = 0xD00000000000001FLL;
  v15 = 0x8000000221BED670;
  v13 = v4;
  v12 = v5;
  v6 = *(a2 + 16);
  v7 = sub_221BCD748();
  v8 = sub_221A1DE50(&v12, v7);
  v10 = v9;

  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v14;
}

uint64_t sub_221A1F3E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t sub_221A1F438(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221A1F488()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A1F4D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_221A1F510(uint64_t result, int a2, int a3)
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

uint64_t static AppEntityQuerySpecification.allEntities(app:entityTypeIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_7_9(a1, a2, a3, a4);
  *(v6 + 161) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *v6 = v8;
  *(v6 + 8) = v7;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v9 = OUTLINED_FUNCTION_16();
  sub_221998178(v9, v10);
}

uint64_t static AppEntityQuerySpecification.byProperties(app:queryTarget:propertyQuery:maximumResultCount:sortingOptions:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a1[1];
  v20 = *a1;
  v10 = a1[2];
  v11 = a1[3];
  v12 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  sub_2219EB67C(a3, a7 + 32);
  *(a7 + 104) = a4;
  *(a7 + 112) = a5 & 1;
  *(a7 + 120) = a6;
  *(a7 + 128) = v12;
  *(a7 + 136) = v13;
  *(a7 + 144) = v15;
  *(a7 + 152) = v14;
  *(a7 + 160) = v16;
  *(a7 + 161) = 4;
  *a7 = v20;
  *(a7 + 8) = v9;
  *(a7 + 16) = v10;
  *(a7 + 24) = v11;
  sub_2219A2B7C(v12, v13, v15, v14, v16);

  sub_221998178(v10, v11);
}

uint64_t static AppEntityQuerySpecification.bySearchableItems(app:queryTarget:items:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  v13 = *(a2 + 32);
  *(a4 + 72) = v13;
  *(a4 + 161) = 5;
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  sub_2219A2B7C(v9, v10, v11, v12, v13);

  OUTLINED_FUNCTION_1_27();
}

uint64_t static AppEntityQuerySpecification.byString(app:queryTarget:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v10;
  *(a5 + 56) = v11;
  *(a5 + 64) = v13;
  *(a5 + 72) = v12;
  v14 = *(a2 + 32);
  *(a5 + 80) = v14;
  *(a5 + 161) = 3;
  *a5 = v6;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  sub_2219A2B7C(v10, v11, v13, v12, v14);

  OUTLINED_FUNCTION_1_27();
}

uint64_t sub_221A1F7D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_7_9(a1, a2, a3, a4);
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 161) = v7;
  *v6 = v9;
  *(v6 + 8) = v8;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v10 = OUTLINED_FUNCTION_16();
  sub_221998178(v10, v11);
}

uint64_t static AppEntityQuerySpecification.byIdentifier(app:entityIdentifiers:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_2219A28C8(a2, v15);
  v9 = v16;
  if (v16)
  {
    v10 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    OUTLINED_FUNCTION_2_22(v10);
    v9 = v11(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_2219A6860(v15, &qword_27CFB77E0, &qword_221BD4CC0);
    v13 = 0xE000000000000000;
  }

  *(a3 + 32) = a2;
  *(a3 + 40) = v9;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = v13;
  *(a3 + 72) = 0;
  *(a3 + 161) = 1;
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;

  OUTLINED_FUNCTION_1_27();
}

id sub_221A1F924(void *a1)
{
  sub_221A20F50(v1, v48);
  if ((v49 & 1) == 0)
  {
    v45 = v48[0];
    v46[0] = v48[1];
    v46[1] = v48[2];
    v47 = v48[3];
    sub_221A207F8(a1);
    v1 = v21;
    sub_221A1C798(&v45);
    return v1;
  }

  v4 = *&v48[0];
  v44 = a1;
  if (*(&v48[0] + 1) == 1)
  {
    v22 = *(*&v48[0] + 16);
    if (v22)
    {
      v50 = MEMORY[0x277D84F90];
      result = sub_221BCDF28();
      v23 = 0;
      v24 = v4 + 32;
      v42 = v4;
      while (1)
      {
        if (v23 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        sub_221A1C73C(v24, &v45);
        v25 = [a1 parameters];
        sub_2219A1D20(0, &qword_27CFB8928, 0x277D238E8);
        v26 = sub_221BCD668();

        MEMORY[0x28223BE20](v27);
        v41 = &v45;
        sub_221A20A98(sub_221A20F88, v40, v26);
        v1 = v28;
        v30 = v29;

        if (v30)
        {
          break;
        }

        v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v31 = v47;
        __swift_project_boxed_opaque_existential_0(v46 + 1, v47);
        OUTLINED_FUNCTION_2_22(*(&v31 + 1));
        if (!v32(v31, *(&v31 + 1)))
        {
LABEL_25:

          sub_2219A1218();
          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_59_0(v39, 10);

          goto LABEL_26;
        }

        ++v23;
        sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
        OUTLINED_FUNCTION_4_12();
        sub_221A1C798(&v45);
        sub_221BCDEF8();
        v33 = *(v50 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        result = sub_221BCDF08();
        v24 += 64;
        a1 = v44;
        v4 = v42;
        if (v22 == v23)
        {

          v34 = v50;
          goto LABEL_23;
        }
      }

LABEL_24:

      v1 = *(&v45 + 1);
      v36 = v45;
      sub_2219ACADC();
      v37 = OUTLINED_FUNCTION_17_2();
      *v38 = v36;
      v38[1] = v1;
      OUTLINED_FUNCTION_8_9(v37, v38);

LABEL_26:
      sub_221A1C798(&v45);

      return v1;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_23:
    sub_2219A1D20(0, &qword_27CFB8938, 0x277D237C0);
    return sub_221A20998(v34, &selRef_orComparisons_);
  }

  if (*(&v48[0] + 1))
  {

    sub_2219A1218();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_59_0(v35, 9);
    return v1;
  }

  v43 = v2;
  v5 = *(*&v48[0] + 16);
  if (!v5)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_21:
    sub_2219A1D20(0, &qword_27CFB8938, 0x277D237C0);
    return sub_221A20998(v20, &selRef_andComparisons_);
  }

  v50 = MEMORY[0x277D84F90];
  result = sub_221BCDF28();
  v7 = 0;
  v8 = v4 + 32;
  while (v7 < *(v4 + 16))
  {
    sub_221A1C73C(v8, &v45);
    v9 = [a1 parameters];
    sub_2219A1D20(0, &qword_27CFB8928, 0x277D238E8);
    v10 = sub_221BCD668();

    MEMORY[0x28223BE20](v11);
    v41 = &v45;
    v12 = v43;
    sub_221A20A98(sub_221A21040, v40, v10);
    v1 = v13;
    v15 = v14;
    v43 = v12;

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v17 = v47;
    __swift_project_boxed_opaque_existential_0(v46 + 1, v47);
    OUTLINED_FUNCTION_2_22(*(&v17 + 1));
    if (!v18(v17, *(&v17 + 1)))
    {
      goto LABEL_25;
    }

    ++v7;
    sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
    OUTLINED_FUNCTION_4_12();
    sub_221A1C798(&v45);
    sub_221BCDEF8();
    v19 = *(v50 + 16);
    sub_221BCDF38();
    sub_221BCDF48();
    result = sub_221BCDF08();
    v8 += 64;
    a1 = v44;
    if (v5 == v7)
    {

      v20 = v50;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static AppEntityQuerySpecification.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v17[0] = v5;
  v17[1] = v4;
  v17[2] = v6;
  v17[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v16[0] = *a2;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;

  sub_221998178(v6, v7);

  sub_221998178(v9, v10);
  LOBYTE(v6) = static AppIdentifier.== infix(_:_:)(v17, v16);

  v11 = OUTLINED_FUNCTION_1();
  sub_2219982C4(v11, v12);

  v13 = OUTLINED_FUNCTION_1();
  sub_2219982C4(v13, v14);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return sub_221A21D14((a1 + 4), (a2 + 4));
}

uint64_t PropertyQuery.Comparison.init<A>(propertyName:operation:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[2] = a3;
  a7[6] = a5;
  a7[7] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 3);
  result = (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a4, a5);
  *a7 = a1;
  a7[1] = a2;
  return result;
}

uint64_t static PropertyQuery.comparison(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221A1C73C(a1, a2);
  *(a2 + 64) = 0;
  return result;
}

uint64_t static PropertyQuery.compound(_:operation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 1;
}

uint64_t static AppEntityQuerySpecification.byIdentifier(app:entityIdentifiers:queryTarget:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a3;
  v10 = *(a3 + 8);
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  *(a4 + 32) = a2;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v12;
  *(a4 + 64) = v11;
  v13 = *(a3 + 32);
  *(a4 + 72) = v13;
  *(a4 + 161) = 1;
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  sub_2219A2B7C(v9, v10, v12, v11, v13);

  OUTLINED_FUNCTION_1_27();
}

uint64_t sub_221A200FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a4 + 32) = *a2;
  *(a4 + 40) = v9;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  v12 = *(a2 + 32);
  *(a4 + 64) = v12;
  *(a4 + 161) = a3;
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  sub_2219A2B7C(v8, v9, v11, v10, v12);

  v13 = OUTLINED_FUNCTION_16();

  return sub_221998178(v13, v14);
}

unint64_t sub_221A20178(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_221BCDE68();

  v19 = 0xD000000000000021;
  v20 = 0x8000000221BED690;
  v4 = *v1;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];

  v8 = OUTLINED_FUNCTION_1();
  sub_221998178(v8, v9);
  v10 = OUTLINED_FUNCTION_16();
  v12 = sub_2219987FC(v10, v11, v6, v7);
  MEMORY[0x223DA31F0](v12);

  MEMORY[0x223DA31F0](0x203A65707974202CLL, 0xE800000000000000);
  v18[3] = &type metadata for QuerySpecification;
  v18[4] = sub_2219EB6D8();
  v18[0] = swift_allocObject();
  sub_2219AC930((v2 + 4), v18[0] + 16);
  __swift_project_boxed_opaque_existential_0(v18, &type metadata for QuerySpecification);
  v17 = v3;
  v13 = sub_221A22514(&v17);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x223DA31F0](v13, v15);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v19;
}

uint64_t _s18AppIntentsServices13PropertyQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_221A20F50(a1, v10);
  sub_221A20F50(a2, v11);
  if ((v10[64] & 1) == 0)
  {
    sub_221A20F50(v10, v9);
    if ((v12 & 1) == 0)
    {
      v8[0] = v11[0];
      v8[1] = v11[1];
      v8[2] = v11[2];
      v8[3] = v11[3];
      v6 = static PropertyQuery.Comparison.== infix(_:_:)(v9, v8);
      sub_221A1C798(v8);
      sub_221A1C798(v9);
      goto LABEL_11;
    }

    sub_221A1C798(v9);
    goto LABEL_8;
  }

  sub_221A20F50(v10, v9);
  if (v12 != 1)
  {

LABEL_8:
    sub_2219A6860(v10, qword_27CFB8940, &qword_221BD56C8);
    goto LABEL_9;
  }

  v3 = v9[1];
  v4 = *(&v11[0] + 1);
  v5 = sub_221A19800(v9[0], *&v11[0]);

  if (v5)
  {
    v6 = v3 == v4;
LABEL_11:
    sub_221A2100C(v10);
    return v6 & 1;
  }

  sub_221A2100C(v10);
LABEL_9:
  v6 = 0;
  return v6 & 1;
}

uint64_t PropertyQuery.Comparison.propertyName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static PropertyQuery.Comparison.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_221BCE1B8()) && a1[2] == a2[2])
  {
    v5 = a1[7];
    __swift_project_boxed_opaque_existential_0(a1 + 3, a1[6]);
    OUTLINED_FUNCTION_2_22(v5);
    v6 = OUTLINED_FUNCTION_1();
    v8 = v7(v6);
    v9 = a2[7];
    __swift_project_boxed_opaque_existential_0(a2 + 3, a2[6]);
    OUTLINED_FUNCTION_2_22(v9);
    v10 = OUTLINED_FUNCTION_1();
    v12 = v11(v10);
    v13 = v12;
    if (v8)
    {
      if (v12)
      {
        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        v14 = sub_221BCDC58();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      if (!v12)
      {
        v14 = 1;
        return v14 & 1;
      }

      v14 = 0;
      v8 = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t PropertyQuery.SortingOption.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2219980F0(v2, v3, v4);
}

__n128 PropertyQuery.SortingOption.init(order:target:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t static PropertyQuery.SortingOption.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a2 + 1);
  v6 = a2[24];
  if (a1[24] == 1)
  {
    if ((a2[24] & 1) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 2);
    v8 = v4 == v5 && v7 == *(a2 + 2);
    if (!v8 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v5)
    {
      v9 = a2[24];
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static PropertyQuery.SortTarget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }

    v6 = a1[1];
    v7 = v3 == v4 && v6 == a2[1];
    if (!v7 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v4)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PropertyQuery.SortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t static PropertyQuery.SortTarget.property(index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t static PropertyQuery.SortTarget.property(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t sub_221A2078C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_221BCE1B8();
  }
}

void sub_221A207F8(void *a1)
{
  v2 = v1;
  v3 = [a1 parameters];
  sub_2219A1D20(0, &qword_27CFB8928, 0x277D238E8);
  v4 = sub_221BCD668();

  v20[2] = v2;
  sub_221A20A98(sub_221A21040, v20, v4);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    v10 = *v2;
    v9 = v2[1];
    sub_2219ACADC();
    v11 = OUTLINED_FUNCTION_17_2();
    *v12 = v10;
    v12[1] = v9;
    OUTLINED_FUNCTION_8_9(v11, v12);
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v14 = v2[6];
    v15 = v2[7];
    __swift_project_boxed_opaque_existential_0(v2 + 3, v14);
    OUTLINED_FUNCTION_2_22(v15);
    v17 = v16(v14, v15);
    if (v17)
    {
      v18 = v17;
      sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
      sub_221A20B98(v13, v18, v2[2]);
    }

    else
    {
      sub_2219A1218();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_59_0(v19, 10);
    }
  }
}

id sub_221A20998(uint64_t a1, SEL *a2)
{
  sub_2219A1D20(0, &qword_27CFB8930, 0x277D237B8);
  v3 = sub_221BCD658();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

uint64_t sub_221A20A1C(void **a1, void *a2)
{
  v3 = sub_221A20FA8(*a1);
  if (v4)
  {
    if (v3 == *a2 && v4 == a2[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_221BCE1B8();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_221A20A98(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2219A69A0(a3);
  v6 = 0;
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DA3BF0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v7 = *(a3 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_221A20B98(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPropertyIndex:a1 value:a2 type:a3];

  return v5;
}

unint64_t sub_221A20BFC(uint64_t a1)
{
  result = sub_221A20C24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221A20C24()
{
  result = qword_27CFB8918;
  if (!qword_27CFB8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8918);
  }

  return result;
}

unint64_t sub_221A20C7C()
{
  result = qword_27CFB8920;
  if (!qword_27CFB8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8920);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_221A20D20(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[25])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A20D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyQuery.SortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221A20EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A20EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_221A20FA8(void *a1)
{
  v1 = [a1 propertyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

id OUTLINED_FUNCTION_4_12()
{
  v4 = *(v2 - 208);

  return sub_221A20B98(v1, v0, v4);
}

uint64_t *OUTLINED_FUNCTION_7_9@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  v7 = result[3];
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;

  return swift_willThrow();
}

uint64_t IntentValueQueryRepresentation.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IntentValueQueryRepresentation.queryIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IntentValueQueryRepresentation.init(bundleIdentifier:queryIdentifier:accepting:producing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_221A21150()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_221A211A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v20[0] = v10;
  v20[1] = v11;
  v21 = xmmword_221BD0800;
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = 0;
  v18[3] = 0;
  v19 = 2;
  (*(v14 + 16))(v9);
  v15 = *(a2 + 32);

  *&result = IntentValueQuerySpecification.init<A>(app:queryTarget:input:)(v20, v18, v9, v6, v15, a3).n128_u64[0];
  return result;
}

__n128 IntentValueQuerySpecification.init<A>(app:queryTarget:input:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v17 = *(a2 + 16);
  v18 = *a2;
  v13 = *(a2 + 32);
  v14 = (*(a5 + 16))(a4, a5);
  if (!v14)
  {
    if (qword_27CFB7350 != -1)
    {
      swift_once();
    }

    v14 = qword_27CFDED40;
  }

  v15 = v14;
  (*(*(a4 - 8) + 8))(a3, a4);
  *a6 = v9;
  *(a6 + 8) = v10;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  *(a6 + 32) = v15;
  result = v18;
  *(a6 + 56) = v17;
  *(a6 + 40) = v18;
  *(a6 + 72) = v13;
  *(a6 + 161) = 2;
  return result;
}

id sub_221A213EC()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = [objc_allocWithZone(MEMORY[0x277D23C68]) init];
  [v4 setConvertArrayResultToAsyncSequence_];
  if (v2)
  {
    v5 = objc_allocWithZone(MEMORY[0x277D237C8]);
    v6 = sub_221BCD358();
    v7 = [v5 initWithContentType_];

    v8 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v7 preferredExtractionType:1];
  }

  else
  {
    v8 = 0;
  }

  [v4 setExportConfiguration_];

  return v4;
}

uint64_t QueryRequestOptions.exportedContentTypeIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t QueryRequestOptions.init(exportedContentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_221BCCC98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v19 = 0;
  sub_2219B1FB0(a1, &v18 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    result = sub_2219B2020(a1);
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = sub_221BCCC88();
    v16 = v17;
    sub_2219B2020(a1);
    result = (*(v5 + 8))(v8, v4);
    v14 = v19;
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  return result;
}

uint64_t QueryRequestOptions.description.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);

  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000037, 0x8000000221BED6C0);
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v4, v5);

  MEMORY[0x223DA31F0](0xD00000000000001FLL, 0x8000000221BED700);
  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7104878;
  }

  if (!v2)
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x223DA31F0](v6, v2);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_221A217CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A21820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_221A21890(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;

  sub_221BCDE68();

  v14 = 0xD000000000000015;
  v15 = 0x8000000221BED720;
  v13 = v4;
  v12 = v5;
  v6 = *(a2 + 16);
  v7 = sub_221BCD748();
  v8 = sub_221A1DE50(&v12, v7);
  v10 = v9;

  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v14;
}

uint64_t sub_221A21968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t sub_221A219C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221A21A10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A21A64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  (*(a2 + 24))(a1, a2);
  swift_getAssociatedTypeWitness();
  sub_221BCD748();
  swift_getWitnessTable();
  v5 = sub_221BCD5B8();

  if (!v3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_221A21B68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A21BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_221A21C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 130))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 129);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_221A21C4C(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    v5 = a2 - 249;
    bzero(a1, 0x82uLL);
    *a1 = v5;
    if (a3 >= 0xF9)
    {
      *(a1 + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(a1 + 130) = 0;
    }

    if (a2)
    {
      *(a1 + 129) = -a2;
    }
  }
}

void sub_221A21CC0(unsigned int *a1, unsigned int a2)
{
  if (a2 > 7)
  {
    v3 = a2 - 8;
    bzero(a1, 0x81uLL);
    *a1 = v3;
    LOBYTE(a2) = 8;
  }

  *(a1 + 129) = a2;
}

uint64_t sub_221A21D14(uint64_t a1, uint64_t a2)
{
  sub_2219AC930(a1, &v98);
  v6 = sub_2219AC930(a2, v115);
  switch(BYTE1(v114))
  {
    case 1:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      v125 = *&__src[8];
      v126 = *&__src[24];
      v127 = __src[40];
      if (v122 != 1)
      {
        sub_2219ACA1C(&v125);
        goto LABEL_47;
      }

      v47 = *v115;
      v88[32] = v115[40];
      *v88 = *&v115[8];
      *&v88[16] = *&v115[24];
      v48 = *(*__src + 16);
      v49 = MEMORY[0x277D84F90];
      if (v48)
      {
        *&v123[0] = MEMORY[0x277D84F90];
        sub_221BCDF28();
        v50 = *__src + 32;
        do
        {
          sub_2219A1B08(v50, __dst);
          __swift_project_boxed_opaque_existential_0(__dst, *&__dst[24]);
          OUTLINED_FUNCTION_16_8();
          __swift_destroy_boxed_opaque_existential_0(__dst);
          sub_221BCDEF8();
          v51 = *(*&v123[0] + 16);
          sub_221BCDF38();
          sub_221BCDF48();
          sub_221BCDF08();
          v50 += 40;
          --v48;
        }

        while (v48);

        v52 = *&v123[0];
      }

      else
      {

        v52 = MEMORY[0x277D84F90];
      }

      v76 = *(v47 + 16);
      if (v76)
      {
        *&v123[0] = v49;
        sub_221BCDF28();
        v77 = v47 + 32;
        do
        {
          sub_2219A1B08(v77, __dst);
          __swift_project_boxed_opaque_existential_0(__dst, *&__dst[24]);
          OUTLINED_FUNCTION_16_8();
          __swift_destroy_boxed_opaque_existential_0(__dst);
          sub_221BCDEF8();
          v78 = *(*&v123[0] + 16);
          sub_221BCDF38();
          sub_221BCDF48();
          sub_221BCDF08();
          v77 += 40;
          --v76;
        }

        while (v76);

        v79 = *&v123[0];
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }

      v80 = sub_221A199C0(v52, v79);

      if (v80)
      {
        v34 = sub_221A22428(&v125, v88);
      }

      else
      {
        v34 = 0;
      }

      sub_2219ACA1C(&v125);
      v75 = v88;
      goto LABEL_78;
    case 2:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      v23 = *__src;
      OUTLINED_FUNCTION_7_10();
      if (v32 != 2)
      {
        sub_2219ACA1C(v88);

        goto LABEL_48;
      }

      v33 = *v115;
      OUTLINED_FUNCTION_14_9(v24, v25, v26, v27, v28, v29, v30, v31, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *v115, *&v115[8]);
      sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
      OUTLINED_FUNCTION_1_0();
      if (sub_221BCDC58())
      {
        v34 = sub_221A22428(v88, __dst);
      }

      else
      {
        v34 = 0;
      }

      sub_2219ACA1C(v88);
      sub_2219ACA1C(__dst);

      goto LABEL_96;
    case 3:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      *v88 = *&__src[16];
      *&v88[16] = *&__src[32];
      v88[32] = __src[48];
      if (v122 != 3)
      {
        goto LABEL_41;
      }

      *__dst = *&v115[16];
      *&__dst[16] = *&v115[32];
      __dst[32] = v115[48];
      if (*__src == *v115 && *&__src[8] == *&v115[8])
      {

        goto LABEL_66;
      }

      v36 = sub_221BCE1B8();

      v34 = 0;
      if (v36)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    case 4:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      v17 = v92;
      v18 = v93;
      v19 = v94;
      v123[0] = v95;
      v123[1] = v96;
      v124 = v97;
      if (v122 != 4)
      {
        sub_2219ACA1C(v123);

        sub_2219ACB30(__src);
        goto LABEL_48;
      }

      v20 = v116;
      v21 = v117;
      v22 = v118;
      v125 = v119;
      v126 = v120;
      v127 = v121;
      memcpy(__dst, __src, 0x41uLL);
      memcpy(v88, v115, 0x41uLL);
      if ((_s18AppIntentsServices13PropertyQueryV2eeoiySbAC_ACtFZ_0(__dst, v88) & 1) == 0)
      {
        goto LABEL_85;
      }

      if (v18)
      {
        if ((v21 & 1) == 0)
        {
LABEL_85:
          sub_2219ACA1C(v123);
          sub_2219ACA1C(&v125);

LABEL_86:

          goto LABEL_87;
        }
      }

      else if ((v21 & 1) != 0 || v17 != v20)
      {
        goto LABEL_85;
      }

      if (v19)
      {
        if (!v22)
        {

          sub_2219ACA1C(v123);
          sub_2219ACA1C(&v125);
          swift_bridgeObjectRelease_n();
          goto LABEL_87;
        }

        v81 = sub_221A199D4(v19, v22);

        if ((v81 & 1) == 0)
        {
          sub_2219ACA1C(v123);
          sub_2219ACA1C(&v125);
LABEL_87:
          v34 = 0;
          goto LABEL_88;
        }
      }

      else if (v22)
      {
        sub_2219ACA1C(v123);
        sub_2219ACA1C(&v125);
        goto LABEL_86;
      }

      v34 = sub_221A22428(v123, &v125);
      sub_2219ACA1C(v123);
      sub_2219ACA1C(&v125);
LABEL_88:
      sub_2219ACB30(v88);
      sub_2219ACB30(__dst);
LABEL_96:
      sub_2219AC98C(&v98);
      return v34 & 1;
    case 5:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      v53 = *__src;
      OUTLINED_FUNCTION_7_10();
      if (v62 != 5)
      {
LABEL_41:
        sub_2219ACA1C(v88);
LABEL_47:

        goto LABEL_48;
      }

      v63 = *v115;
      OUTLINED_FUNCTION_14_9(v54, v55, v56, v57, v58, v59, v60, v61, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *v115, *&v115[8]);
      v64 = sub_221A19A98(v53, v63);

      if (v64)
      {
LABEL_66:
        v34 = sub_221A22428(v88, __dst);
      }

      else
      {
        v34 = 0;
      }

LABEL_67:
      sub_2219ACA1C(v88);
      v75 = __dst;
LABEL_78:
      sub_2219ACA1C(v75);
      goto LABEL_96;
    case 6:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      OUTLINED_FUNCTION_5_13();
      if (v65 != 6)
      {
        goto LABEL_3;
      }

      goto LABEL_20;
    case 7:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      OUTLINED_FUNCTION_5_13();
      if (v37 == 7)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    default:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98);
      OUTLINED_FUNCTION_5_13();
      if (!v14)
      {
LABEL_20:
        v38 = *v115;
        v40 = *&v115[8];
        v39 = *&v115[24];
        if (__src)
        {
          if (__src == 1)
          {
            if (v115[32] == 1)
            {
              v41 = &v98 == *v115 && v2 == *&v115[8];
              if (v41 || (OUTLINED_FUNCTION_1_0(), (OUTLINED_FUNCTION_13_7() & 1) != 0))
              {
                if (v3 == *(&v40 + 1) && v4 == v39)
                {
                  v34 = 1;
                  v43 = v38;
                  v44 = v40;
                  v45 = v3;
                  v46 = v4;
                }

                else
                {
                  v34 = sub_221BCE1B8();
                  v43 = OUTLINED_FUNCTION_2_23();
                }

                v68 = 1;
                goto LABEL_92;
              }

              v70 = OUTLINED_FUNCTION_2_23();
              v74 = 1;
LABEL_62:
              sub_2219EB374(v70, v71, v72, v73, v74);
              v34 = 0;
LABEL_95:
              v85 = OUTLINED_FUNCTION_1_0();
              sub_2219EB374(v85, v86, v3, v4, __src);
              goto LABEL_96;
            }

LABEL_61:
            v70 = OUTLINED_FUNCTION_2_23();
            goto LABEL_62;
          }

          if (v115[32] != 2)
          {
            goto LABEL_61;
          }

          v66 = v2;
          if (&v98 != *v115 || v2 != *&v115[8])
          {
            v34 = OUTLINED_FUNCTION_13_7();
            v43 = OUTLINED_FUNCTION_2_23();
            v68 = 2;
            goto LABEL_92;
          }

          v82 = *&v115[16];
          v83 = *&v115[24];
          v84 = 2;
        }

        else
        {
          if (v115[32])
          {
            goto LABEL_61;
          }

          v66 = v2;
          if (&v98 != *v115 || v2 != *&v115[8])
          {
            v34 = OUTLINED_FUNCTION_13_7();
            v43 = OUTLINED_FUNCTION_2_23();
            v68 = 0;
LABEL_92:
            sub_2219EB374(v43, v44, v45, v46, v68);
            goto LABEL_95;
          }

          v82 = *&v115[16];
          v83 = *&v115[24];
          v84 = 0;
        }

        sub_2219EB374(&v98, v66, v82, v83, v84);
        v34 = 1;
        goto LABEL_95;
      }

LABEL_3:
      v15 = OUTLINED_FUNCTION_1_0();
      sub_2219EB374(v15, v16, v3, v4, __src);
LABEL_48:
      sub_221A22C7C(&v98);
      v34 = 0;
      return v34 & 1;
  }
}

uint64_t sub_221A22428(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32) == 2)
    {
LABEL_17:
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_21;
      }

      return 1;
    }

    return 0;
  }

  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_21:

  return sub_221BCE1B8();
}

unint64_t sub_221A22514(char *a1)
{
  v3 = *a1;
  sub_2219AC930(v1, __src);
  switch(v71)
  {
    case 1:
      OUTLINED_FUNCTION_15_6();
      if (v3)
      {
        v34 = OUTLINED_FUNCTION_1_28();
        sub_2219EB374(v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_3_15();
        sub_221BCDE68();

        strcpy(__dst, ".byIdentifier(");
        __dst[15] = -18;
        v39 = v2[2];

        v40 = sub_221BCE168();
        MEMORY[0x223DA31F0](v40);

        MEMORY[0x223DA31F0](0x2973444920, 0xE500000000000000);
        return *__dst;
      }

      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_1_18();
      MEMORY[0x223DA31F0]();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7918, &qword_221BD0E28);
      v62 = MEMORY[0x223DA33D0](v2, v61);
      v64 = v63;

      MEMORY[0x223DA31F0](v62, v64);

      v65 = OUTLINED_FUNCTION_0_30();
      MEMORY[0x223DA31F0](v65);
      OUTLINED_FUNCTION_8_10();
      OUTLINED_FUNCTION_17_7();
      v44 = OUTLINED_FUNCTION_1_28();
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_15_6();
      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_1_18();
      MEMORY[0x223DA31F0]();
      if (v3)
      {
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_17_7();
        v16 = OUTLINED_FUNCTION_1_28();
        sub_2219EB374(v16, v17, v18, v19, v20);
        MEMORY[0x223DA31F0](41, 0xE100000000000000);
      }

      else
      {
        v50 = v2;
        v51 = [v50 description];
        v52 = sub_221BCD388();
        v54 = v53;

        MEMORY[0x223DA31F0](v52, v54);

        v55 = OUTLINED_FUNCTION_0_30();
        MEMORY[0x223DA31F0](v55);
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_17_7();
        v56 = OUTLINED_FUNCTION_1_28();
        sub_2219EB374(v56, v57, v58, v59, v60);
        MEMORY[0x223DA31F0](10506, 0xE200000000000000);
      }

      return v68;
    case 3:
      v21 = *__src;
      v23 = *&__src[24];
      v22 = *&__src[16];
      v24 = *&__src[32];
      v25 = *&__src[40];
      v26 = __src[48];
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_1_18();
      MEMORY[0x223DA31F0]();
      v27 = sub_2219C0D58(v21, *(&v21 + 1), v3);
      v29 = v28;

      MEMORY[0x223DA31F0](v27, v29);

      v30 = OUTLINED_FUNCTION_0_30();
      goto LABEL_14;
    case 4:
      memcpy(__dst, __src, sizeof(__dst));
      sub_221BCDE68();
      MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BED7C0);
      v6 = sub_2219C0DF4(__dst, v3);
      MEMORY[0x223DA31F0](v6);

      MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BED7E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8A50, &qword_221BD6488);
      v7 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v7);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BED800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8A58, &unk_221BD6490);
      v8 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v8);

      v9 = OUTLINED_FUNCTION_0_30();
      MEMORY[0x223DA31F0](v9);
      sub_221BCE018();
      v10 = OUTLINED_FUNCTION_12_5();
      sub_2219EB374(v10, v11, v12, v13, v14);
      MEMORY[0x223DA31F0](2695209, 0xE300000000000000);
      v15 = 0;
      sub_2219ACB30(__dst);
      return v15;
    case 5:
      v41 = *__src;
      sub_2219EB374(*&__src[8], *&__src[16], *&__src[24], *&__src[32], __src[40]);
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();

      *__dst = 0xD000000000000020;
      *&__dst[8] = 0x8000000221BED790;
      v42 = sub_2219A1D20(0, &qword_27CFB8600, 0x277CC34B0);
      MEMORY[0x223DA33D0](v41, v42);

      v43 = OUTLINED_FUNCTION_1_0();
      MEMORY[0x223DA31F0](v43);

      return *__dst;
    case 6:
      v23 = *&__src[8];
      v22 = *__src;
      v25 = *&__src[24];
      v24 = *&__src[16];
      v26 = __src[32];
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_1_18();
      v30 = 0xD000000000000020;
      goto LABEL_14;
    case 7:
      v23 = *&__src[8];
      v22 = *__src;
      v25 = *&__src[24];
      v24 = *&__src[16];
      v26 = __src[32];
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      v30 = v32 - 5;
      v31 = v33 | 0x8000000000000000;
LABEL_14:
      MEMORY[0x223DA31F0](v30, v31);
      *__dst = v22;
      *&__dst[8] = v23;
      *&__dst[16] = v24;
      *&__dst[24] = v25;
      __dst[32] = v26;
      OUTLINED_FUNCTION_17_7();
      v44 = OUTLINED_FUNCTION_12_5();
LABEL_15:
      sub_2219EB374(v44, v45, v46, v47, v48);
      break;
    default:
      v4 = __src[32];
      v66 = *&__src[16];
      v67 = *__src;
      sub_221BCDE68();

      v68 = 0xD00000000000001ALL;
      *&__dst[16] = v66;
      *__dst = v67;
      __dst[32] = v4;
      v5 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v5);

      break;
  }

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v68;
}

unint64_t sub_221A22C00(uint64_t a1)
{
  result = sub_221A22C28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221A22C28()
{
  result = qword_27CFB8A48;
  if (!qword_27CFB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8A48);
  }

  return result;
}

uint64_t sub_221A22C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8A60, &unk_221BD64A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 OUTLINED_FUNCTION_7_10()
{
  result = *(v0 + 8);
  v3 = *(v0 + 24);
  v2 = LOBYTE(STACK[0x229]);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  return sub_2219AC930(&a45, &a28);
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_221BCE1B8();
}

id OUTLINED_FUNCTION_16_8()
{

  return sub_22199B82C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_221BCE018();
}

uint64_t static QueryTarget.defaultForEntityType(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return OUTLINED_FUNCTION_0_31();
}

uint64_t static QueryTarget.queryType(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  return OUTLINED_FUNCTION_0_31();
}

uint64_t static QueryTarget.intentParameter(actionIdentifier:parameterName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
}

BOOL static QueryTarget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

      v9 = a1[2];
      v10 = a1[3];
      v11 = a2[2];
      v12 = a2[3];
      v13 = v4 == v6 && v5 == v7;
      if (!v13 && (sub_221BCE1B8() & 1) == 0)
      {
        return 0;
      }

      if (v9 == v11 && v10 == v12)
      {
        return 1;
      }

      return (sub_221BCE1B8() & 1) != 0;
    }

    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return (sub_221BCE1B8() & 1) != 0;
}

void *sub_221A22FA0()
{
  type metadata accessor for AppNotificationEventRegistry();
  v0 = swift_allocObject();
  _s20LinkServicesListenerCMa();
  v1 = swift_allocObject();
  result = sub_221A28668();
  *(v0 + 16) = v1;
  off_27CFB8A68 = v0;
  return result;
}

uint64_t static AppNotificationEventRegistry.shared.getter()
{
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }
}

void sub_221A23048()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  OUTLINED_FUNCTION_40_3();
  v3 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  v8 = v0[1];
  v41 = *v0;
  v10 = v0[2];
  v9 = v0[3];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v11 = sub_221BCCD88();
  __swift_project_value_buffer(v11, qword_27CFDEE58);
  v12 = OUTLINED_FUNCTION_14_10();
  sub_221A2AADC(v12, v7);

  v13 = sub_221BCCD68();
  v14 = sub_221BCDA58();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v42 = swift_slowAlloc();
    *v10 = 136315394;
    sub_221BCC558();
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v15);
    sub_221BCE168();
    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_144();

    OUTLINED_FUNCTION_23_6();
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_221BCF7F0;
      *(v16 + 32) = v41;
      *(v16 + 40) = v8;
      *(v16 + 48) = v10;
      *(v16 + 56) = v9;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      v17 = sub_221BCD328();
      v19 = v18;
    }

    else
    {

      v17 = v41;
      v19 = v8;
    }

    v20 = sub_2219A6360(v17, v19, &v42);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_221989000, v13, v14, "Starting observer %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v21 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v21);
  }

  else
  {

    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34();
  }

  v22 = v41;
  v42 = v41;
  v43 = v8;
  v44 = v10;
  v45 = v9;
  sub_221A25544();
  if (v24 == 1)
  {
    if (v23 == 1)
    {
      v25 = *(v2 + 40);
      OUTLINED_FUNCTION_10();
      swift_allocObject();
      swift_weakInit();

      sub_221BA1AC8();
    }

    v26 = *(v2 + 40);
    OUTLINED_FUNCTION_10();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v41;
    v28[4] = v8;
    v28[5] = v10;
    v28[6] = v9;

    sub_221BA1AC8();
  }

  v42 = v41;
  v43 = v8;
  v44 = v10;
  v45 = v9;
  sub_221A24864(&v42);

  v29 = sub_221BCCD68();
  v30 = sub_221BCDA68();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v42 = swift_slowAlloc();
    *v10 = 136315394;
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_221BCF7F0;
      *(v31 + 32) = v41;
      *(v31 + 40) = v8;
      *(v31 + 48) = v10;
      *(v31 + 56) = v9;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      sub_221BCD328();
      OUTLINED_FUNCTION_38_2();

      v8 = v10;
    }

    else
    {
    }

    sub_2219A6360(v22, v8, &v42);

    OUTLINED_FUNCTION_23_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B00, &qword_221BD66D8);
    v32 = sub_221BCD3D8();
    sub_2219A6360(v32, v33, &v42);
    OUTLINED_FUNCTION_47_2();

    *(v10 + 14) = v8;
    OUTLINED_FUNCTION_37_1();
    _os_log_impl(v34, v35, v36, v37, v38, v39);
    OUTLINED_FUNCTION_39_5();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v40 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v40);
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221A23658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_221A23680, 0, 0);
}

uint64_t sub_221A23680()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_42_3();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_28_4();
    v3 = *(v2 + 208);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_21_4(v5);

    return v9(v6);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v8();
  }
}

uint64_t sub_221A237D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v9 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

void sub_221A23908()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v17 = *v4;
  v14 = *(v4 + 2);
  v13 = *(v4 + 3);
  sub_221BCC548();
  v15 = sub_221BCC558();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, v6, v15);
  *(v12 + *(v8 + 28)) = v2;

  sub_221A23048();
  OUTLINED_FUNCTION_1_29();
  sub_221A2AB34();
  if (v0)
  {
    (*(v16 + 8))(v6, v15);
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221A23A60()
{
  OUTLINED_FUNCTION_55_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v45 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v6 = OUTLINED_FUNCTION_2_1(v45);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v46 = v10 - v9;
  v11 = sub_221BCC558();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v20 = *v5;
  v21 = v5[1];
  v22 = v5[2];
  v23 = v5[3];
  v24 = v20;
  v48 = v21;
  v49 = v20;
  v50 = v21;
  v51 = v22;
  v44 = v22;
  v52 = v23;
  v47 = v3;
  sub_221A26074();
  if ((v25 & 1) == 0)
  {
    v43 = v1;
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v26 = sub_221BCCD88();
    __swift_project_value_buffer(v26, qword_27CFDEE58);
    v42 = *(v14 + 16);
    v42(v19, v3, v11);

    v27 = sub_221BCCD68();
    v28 = sub_221BCDA58();

    v29 = v24;
    if (os_log_type_enabled(v27, v28))
    {
      v41 = v27;
      OUTLINED_FUNCTION_20_6();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      v49 = swift_slowAlloc();
      *v30 = 136315394;
      OUTLINED_FUNCTION_2_24();
      sub_221A2A71C(v31);
      v32 = sub_221BCE168();
      (*(v14 + 8))(v19, v11);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_144();

      *(v30 + 4) = v32;
      v40 = v30;
      *(v30 + 12) = 2080;
      v33 = v44;
      if (v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        OUTLINED_FUNCTION_49();
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_221BCF7F0;
        *(v34 + 32) = v29;
        *(v34 + 40) = v48;
        *(v34 + 48) = v44;
        *(v34 + 56) = v23;
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_30_4();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        OUTLINED_FUNCTION_6_11();
        v35 = sub_221BCD328();
        v37 = v36;
      }

      else
      {
        v37 = v48;

        v35 = v29;
      }

      v38 = sub_2219A6360(v35, v37, &v49);

      *(v40 + 14) = v38;
      _os_log_impl(&dword_221989000, v41, v28, "No observer with %s for %s", v40, 0x16u);
      swift_arrayDestroy();
      v39 = OUTLINED_FUNCTION_9_10();
      MEMORY[0x223DA4C00](v39);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      (*(v14 + 8))(v19, v11);
      v33 = v44;
    }

    v42(v46, v47, v11);
    *(v46 + *(v45 + 20)) = v43;
    v49 = v29;
    v50 = v48;
    v51 = v33;
    v52 = v23;

    sub_221A23048();
    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34();
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221A23E70()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_40_3();
  v5 = sub_221BCC558();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v14 = v0[1];
  v48 = *v0;
  v15 = v0[3];
  v49 = v0[2];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v16 = sub_221BCCD88();
  v17 = __swift_project_value_buffer(v16, qword_27CFDEE58);
  (*(v8 + 16))(v13, v4, v5);

  v18 = sub_221BCCD68();
  v19 = sub_221BCDA58();

  v47 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v50 = swift_slowAlloc();
    *v17 = 136315394;
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v20);
    sub_221BCE168();
    (*(v8 + 8))(v13, v5);
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_144();

    OUTLINED_FUNCTION_23_6();
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_221BCF7F0;
      v22 = v48;
      *(v21 + 32) = v48;
      *(v21 + 40) = v14;
      v23 = v49;
      *(v21 + 48) = v49;
      *(v21 + 56) = v15;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      v24 = sub_221BCD328();
      v26 = v25;
    }

    else
    {

      v22 = v48;
      v24 = v48;
      v26 = v14;
      v23 = v49;
    }

    v27 = sub_2219A6360(v24, v26, &v50);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_221989000, v18, v47, "Stopping observer %s for %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v28 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v28);
  }

  else
  {

    (*(v8 + 8))(v13, v5);
    v22 = v48;
    v23 = v49;
  }

  v50 = v22;
  v51 = v14;
  v52 = v23;
  v53 = v15;
  sub_221A25B08();
  if (!v30)
  {
    v31 = v29;
    v32 = *(v2 + 40);
    OUTLINED_FUNCTION_10();
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v22;
    v34[4] = v14;
    v34[5] = v23;
    v34[6] = v15;

    sub_221BA1AC8();

    if (!v31)
    {
      OUTLINED_FUNCTION_10();
      swift_allocObject();
      swift_weakInit();

      sub_221BA1AC8();
    }
  }

  v50 = v22;
  v51 = v14;
  v52 = v23;
  v53 = v15;
  sub_221A24864(&v50);

  v35 = sub_221BCCD68();
  v36 = sub_221BCDA68();

  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v50 = swift_slowAlloc();
    *v17 = 136315394;
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_221BCF7F0;
      *(v37 + 32) = v22;
      *(v37 + 40) = v14;
      *(v37 + 48) = v49;
      *(v37 + 56) = v15;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      sub_221BCD328();
      OUTLINED_FUNCTION_38_2();

      v14 = v17;
    }

    else
    {
    }

    sub_2219A6360(v22, v14, &v50);

    OUTLINED_FUNCTION_23_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B00, &qword_221BD66D8);
    v38 = sub_221BCD3D8();
    sub_2219A6360(v38, v39, &v50);
    OUTLINED_FUNCTION_47_2();

    *(v17 + 14) = v14;
    OUTLINED_FUNCTION_37_1();
    _os_log_impl(v40, v41, v42, v43, v44, v45);
    OUTLINED_FUNCTION_39_5();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v46 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v46);
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221A244D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_221A244FC, 0, 0);
}

uint64_t sub_221A244FC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_42_3();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_28_4();
    v3 = *(v2 + 216);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_21_4(v5);

    return v9(v6);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v8();
  }
}

uint64_t sub_221A24650()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v9 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221A24784()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 128);
  return v2();
}

uint64_t sub_221A247C8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 40);
  swift_beginAccess();
  swift_weakLoadStrong();

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221A24864(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  os_unfair_lock_lock(v2 + 4);
  sub_221A2A7DC(v3, &v8);
  os_unfair_lock_unlock(v2 + 4);
  return v8;
}

void sub_221A248E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v82 = a4;
  v81 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AE8, &qword_221BD66C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v67 - v12;
  v78 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v14 = *(v78 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v78);
  v76 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v67 - v18;
  v19 = sub_221BCC558();
  v20 = *(v19 - 8);
  v79 = v19;
  v80 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v24 = *(a1 + 24);
  if (*(v24 + 16))
  {
    v70 = v14;

    v25 = sub_221B9EADC(v81, a3, v82, a5);
    if (v26)
    {
      v77 = a3;
      v27 = *(*(v24 + 56) + 8 * v25);

      v28 = v27;
      if (*(v27 + 16))
      {
        v73 = v13;
        v74 = a1;
        v68 = a6;
        v29 = v27 + 56;
        v30 = 1 << *(v28 + 32);
        v31 = -1;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        a6 = v31 & *(v28 + 56);
        v32 = (v30 + 63) >> 6;
        v71 = v80 + 16;
        v72 = (v80 + 8);

        a1 = 0;
        v69 = MEMORY[0x277D84F90];
LABEL_7:
        v34 = a1;
        while (1)
        {
          v35 = v79;
          if (!a6)
          {
            break;
          }

          v36 = a5;
          a1 = v34;
LABEL_14:
          v37 = v33;
          (*(v80 + 16))(v23, *(v33 + 48) + *(v80 + 72) * (__clz(__rbit64(a6)) | (a1 << 6)), v79);
          a3 = v73;
          v38 = v83;
          sub_221A2505C(v23, v74, v81, v77, v82, v36, v73);
          v83 = v38;
          if (v38)
          {

            (*v72)(v23, v35);

            __break(1u);
            return;
          }

          a6 &= a6 - 1;
          (*v72)(v23, v35);
          if (__swift_getEnumTagSinglePayload(a3, 1, v78) != 1)
          {
            v39 = v75;
            sub_221A2AB88(a3, v75);
            sub_221A2AB88(v39, v76);
            a3 = v69;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v44 = *(a3 + 16);
              sub_2219B3FD0();
              a3 = v45;
            }

            v41 = *(a3 + 16);
            v42 = v41 + 1;
            if (v41 >= *(a3 + 24) >> 1)
            {
              v69 = v41 + 1;
              sub_2219B3FD0();
              v42 = v69;
              a3 = v46;
            }

            *(a3 + 16) = v42;
            v43 = (*(v70 + 80) + 32) & ~*(v70 + 80);
            v69 = a3;
            sub_221A2AB88(v76, a3 + v43 + *(v70 + 72) * v41);
            v33 = v37;
            a5 = v36;
            goto LABEL_7;
          }

          sub_2219A1CC8(a3, &qword_27CFB8AE8, &qword_221BD66C8);
          v34 = a1;
          v33 = v37;
          a5 = v36;
        }

        while (1)
        {
          a1 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (a1 >= v32)
          {

            a6 = v68;
            v47 = v69;
            goto LABEL_32;
          }

          a6 = *(v29 + 8 * a1);
          ++v34;
          if (a6)
          {
            v36 = a5;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_28;
      }

      a3 = v77;
    }
  }

  if (!a5)
  {
    goto LABEL_31;
  }

  v48 = qword_27CFB73B0;

  if (v48 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  v49 = sub_221BCCD88();
  __swift_project_value_buffer(v49, qword_27CFDEE58);

  v50 = sub_221BCCD68();
  v51 = sub_221BCDA78();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v85 = v80;
    *v52 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_221BCF7F0;
    v54 = v82;
    *(v53 + 32) = v81;
    *(v53 + 40) = a3;
    *(v53 + 48) = v54;
    *(v53 + 56) = a5;
    v84 = v53;
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    LODWORD(v82) = v51;
    v55 = sub_221BCD328();
    v57 = v56;

    v58 = sub_2219A6360(v55, v57, &v85);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v59 = *(a1 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AF0, &qword_221BD66D0);
    v60 = a6;
    sub_221A2A7F8();
    v61 = sub_221BCD2A8();
    v63 = v62;

    v64 = v61;
    a6 = v60;
    v65 = sub_2219A6360(v64, v63, &v85);

    *(v52 + 14) = v65;
    _os_log_impl(&dword_221989000, v50, v82, "No observer identifiers for topic %s: %s", v52, 0x16u);
    v66 = v80;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v66, -1, -1);
    MEMORY[0x223DA4C00](v52, -1, -1);
  }

  else
  {
  }

LABEL_31:
  v47 = 0;
LABEL_32:
  *a6 = v47;
}

uint64_t sub_221A2505C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a5;
  v52 = a3;
  v53 = a7;
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a2 + 32);
  if (*(v17 + 16))
  {
    v18 = *(a2 + 32);

    v19 = sub_221B9EA30(a1);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);

      v22 = v53;
      (*(v13 + 16))(v53, a1, v12);
      v23 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
      *(v22 + *(v23 + 20)) = v21;
      v24 = v22;
      v25 = 0;
      return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
    }
  }

  if (qword_27CFB73B0 != -1)
  {
    swift_once();
  }

  v26 = sub_221BCCD88();
  __swift_project_value_buffer(v26, qword_27CFDEE58);
  (*(v13 + 16))(v16, a1, v12);

  v27 = sub_221BCCD68();
  v28 = sub_221BCDA78();

  if (os_log_type_enabled(v27, v28))
  {
    v49 = v28;
    v50 = v27;
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v29 = 136315650;
    if (a6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v30 = swift_allocObject();
      v47[1] = v7;
      *(v30 + 16) = xmmword_221BCF7F0;
      v31 = v51;
      *(v30 + 32) = v52;
      *(v30 + 40) = a4;
      *(v30 + 48) = v31;
      *(v30 + 56) = a6;
      v54 = v30;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v52 = sub_221BCD328();
      v33 = v32;

      a4 = v33;
    }

    else
    {
    }

    v34 = sub_2219A6360(v52, a4, &v55);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    sub_221A2A71C(&qword_27CFB7A60);
    v35 = sub_221BCE168();
    v37 = v36;
    (*(v13 + 8))(v16, v12);
    v38 = sub_2219A6360(v35, v37, &v55);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v39 = *(a2 + 32);
    type metadata accessor for RemoteAppNotificationSink();
    sub_221A2A71C(&qword_27CFB9420);

    v40 = sub_221BCD2A8();
    v42 = v41;

    v43 = sub_2219A6360(v40, v42, &v55);

    *(v29 + 24) = v43;
    v44 = v50;
    _os_log_impl(&dword_221989000, v50, v49, "No observer for topic %s observerUUID %s: %s", v29, 0x20u);
    v45 = v48;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v45, -1, -1);
    MEMORY[0x223DA4C00](v29, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v23 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v24 = v53;
  v25 = 1;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
}

void sub_221A25544()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_32_5();
  v4 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v10 = *v0;
  v9 = v0[1];
  v11 = v0[3];
  v39 = v0[2];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v12 = sub_221BCCD88();
  __swift_project_value_buffer(v12, qword_27CFDEE58);
  v13 = OUTLINED_FUNCTION_14_10();
  sub_221A2AADC(v13, v8);

  v14 = sub_221BCCD68();
  v15 = sub_221BCDA58();

  if (os_log_type_enabled(v14, v15))
  {
    v37 = v3;
    v38 = v10;
    OUTLINED_FUNCTION_20_6();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_6();
    v41[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_221BCC558();
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v17);
    sub_221BCE168();
    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34();
    v18 = OUTLINED_FUNCTION_0_0();
    v21 = sub_2219A6360(v18, v19, v20);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_221BCF7F0;
      v23 = v39;
      *(v22 + 32) = v38;
      *(v22 + 40) = v9;
      *(v22 + 48) = v23;
      *(v22 + 56) = v11;
      v40 = v22;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v25 = &v40;
      OUTLINED_FUNCTION_17_8();
      sub_221BCD328();
      OUTLINED_FUNCTION_38_2();
    }

    else
    {

      v24 = v38;
      v25 = v9;
    }

    v27 = sub_2219A6360(v24, v25, v41);

    *(v16 + 14) = v27;
    OUTLINED_FUNCTION_52_4(&dword_221989000, v28, v29, "Adding observer with %s for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    v3 = v37;
    v10 = v38;
  }

  else
  {

    OUTLINED_FUNCTION_1_29();
    v26 = sub_221A2AB34();
  }

  v30 = v1[2];
  v31 = MEMORY[0x28223BE20](v26);
  *(&v36 - 6) = v1;
  *(&v36 - 5) = v10;
  v32 = v39;
  *(&v36 - 4) = v9;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v11;
  *(&v36 - 1) = v3;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_36_5();
  *(v33 - 16) = sub_221A2A760;
  *(v33 - 8) = v34;
  os_unfair_lock_lock(v30 + 4);
  sub_221A2ACB4(v35, v41);
  os_unfair_lock_unlock(v30 + 4);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A25890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v37 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a7;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  swift_beginAccess();
  v19 = *(a1 + 24);

  v20 = a2;
  v21 = a4;
  v22 = sub_221B9C500(v20, a3, a4, v37, v19);

  v23 = MEMORY[0x277D84FA0];
  if (v22)
  {
    v23 = v22;
  }

  v39 = v23;
  v24 = v34;
  (*(v12 + 16))(v16, v34, v11);
  sub_221BBA80C();
  (*(v12 + 8))(v18, v11);
  v25 = v39;
  swift_beginAccess();

  v26 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + 24);
  sub_221B9FC60(v25, v35, a3, v21, v37, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v38;
  swift_endAccess();
  v28 = *(v24 + *(type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver() + 20));
  swift_beginAccess();

  v29 = *(a1 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + 32);
  sub_221B9FB24();
  *(a1 + 32) = v38;
  swift_endAccess();
  v30 = *(v25 + 16);

  v32 = *(*(a1 + 24) + 16);
  v33 = v36;
  *v36 = v30;
  v33[1] = v32;
  return result;
}

void sub_221A25B08()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_32_5();
  v4 = sub_221BCC558();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v13 = *v0;
  v14 = v0[1];
  v15 = v0[3];
  v46 = v0[2];
  v47 = v13;
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEE58);
  (*(v7 + 16))(v12, v3, v4);

  v17 = sub_221BCCD68();
  v18 = sub_221BCDA58();

  if (os_log_type_enabled(v17, v18))
  {
    v44 = v0;
    v45 = v3;
    OUTLINED_FUNCTION_20_6();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_6();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v19 = 136315394;
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v20);
    sub_221BCE168();
    v22 = v21;
    (*(v7 + 8))(v12, v4);
    v23 = OUTLINED_FUNCTION_46_3();
    v25 = sub_2219A6360(v23, v22, v24);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_221BCF7F0;
      v28 = v46;
      v27 = v47;
      *(v26 + 32) = v47;
      *(v26 + 40) = v14;
      *(v26 + 48) = v28;
      *(v26 + 56) = v15;
      v48 = v26;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_17_8();
      sub_221BCD328();
      v30 = v29;
    }

    else
    {

      v28 = v46;
      v27 = v47;
      v30 = v14;
    }

    v32 = OUTLINED_FUNCTION_46_3();
    v34 = sub_2219A6360(v32, v30, v33);

    *(v19 + 14) = v34;
    OUTLINED_FUNCTION_52_4(&dword_221989000, v35, v36, "Removing observer with %s for %s");
    OUTLINED_FUNCTION_56_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    v1 = v44;
    v3 = v45;
  }

  else
  {

    v31 = (*(v7 + 8))(v12, v4);
    v28 = v46;
    v27 = v47;
  }

  v37 = v1[2];
  v38 = MEMORY[0x28223BE20](v31);
  *(&v42 - 6) = v1;
  *(&v42 - 5) = v27;
  *(&v42 - 4) = v14;
  *(&v42 - 3) = v28;
  *(&v42 - 2) = v15;
  *(&v42 - 1) = v3;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36_5();
  *(v39 - 16) = sub_221A2A6D4;
  *(v39 - 8) = v40;
  os_unfair_lock_lock(v37 + 4);
  sub_221A2A700(v41, &v49);
  os_unfair_lock_unlock(v37 + 4);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A25E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v26 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  swift_beginAccess();
  v17 = *(a1 + 24);

  v18 = sub_221B9C500(a2, a3, a4, a5, v17);

  if (v18)
  {
    v28 = v18;
    sub_221A297B4(a6, v16);
    sub_2219A1CC8(v16, &qword_27CFB82B0, &unk_221BD2990);
    v20 = v28;
    swift_beginAccess();

    v21 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a1 + 24);
    sub_221B9FC60(v20, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v27;
    swift_endAccess();
    swift_beginAccess();
    sub_2219A06F4();
    swift_endAccess();

    v18 = *(v20 + 16);
  }

  v23 = *(*(a1 + 24) + 16);
  v24 = v26;
  *v26 = v18;
  v24[1] = v23;
  return result;
}

void sub_221A26074()
{
  OUTLINED_FUNCTION_21();
  v53 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_32_5();
  v5 = sub_221BCC558();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v14 = v0[1];
  v51 = *v0;
  v15 = v0[3];
  v54 = v0[2];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEE58);
  v17 = *(v8 + 16);
  v52 = v4;
  v17(v13, v4, v5);

  v18 = sub_221BCCD68();
  v19 = sub_221BCDA58();

  if (os_log_type_enabled(v18, v19))
  {
    v50 = v2;
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v49 = swift_slowAlloc();
    v56 = v49;
    *v2 = 136315394;
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v20);
    sub_221BCE168();
    v22 = v21;
    (*(v8 + 8))(v13, v5);
    v23 = OUTLINED_FUNCTION_46_3();
    v25 = sub_2219A6360(v23, v22, v24);

    *(v2 + 4) = v25;
    *(v2 + 12) = 2080;
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_221BCF7F0;
      v27 = v51;
      *(v26 + 32) = v51;
      *(v26 + 40) = v14;
      *(v26 + 48) = v54;
      *(v26 + 56) = v15;
      v55 = v26;
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_17_8();
      sub_221BCD328();
      v29 = v28;
    }

    else
    {

      v27 = v51;
      v29 = v14;
    }

    v31 = OUTLINED_FUNCTION_46_3();
    v33 = sub_2219A6360(v31, v29, v32);

    *(v2 + 14) = v33;
    OUTLINED_FUNCTION_37_1();
    _os_log_impl(v34, v35, v36, v37, v38, v39);
    OUTLINED_FUNCTION_56_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v40 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v40);

    v2 = v50;
  }

  else
  {

    v30 = (*(v8 + 8))(v13, v5);
    v27 = v51;
  }

  v41 = v53[2];
  v42 = MEMORY[0x28223BE20](v30);
  v43 = v52;
  *(&v48 - 8) = v44;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = v27;
  *(&v48 - 5) = v14;
  *(&v48 - 4) = v54;
  *(&v48 - 3) = v15;
  *(&v48 - 2) = v2;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_36_5();
  *(v45 - 16) = sub_221A2961C;
  *(v45 - 8) = v46;
  os_unfair_lock_lock(v41 + 4);
  sub_221A2A6B8(v47, &v56);
  os_unfair_lock_unlock(v41 + 4);
  OUTLINED_FUNCTION_22();
}

void sub_221A2642C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v47 = a7;
  v45 = a4;
  v46 = a6;
  v44 = a5;
  v10 = sub_221BCC558();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a1 + 32);

  v16 = sub_221B9C54C(a2, v15);

  if (v16)
  {

    swift_beginAccess();

    v17 = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a1 + 32);
    sub_221B9FB24();
    *(a1 + 32) = v49;
    swift_endAccess();
    v18 = 1;
  }

  else
  {
    v19 = v14;
    v43 = a3;
    v20 = v45;
    v21 = v46;
    if (qword_27CFB73B0 != -1)
    {
      swift_once();
    }

    v22 = sub_221BCCD88();
    __swift_project_value_buffer(v22, qword_27CFDEE58);
    v23 = v11;
    v24 = v10;
    (*(v11 + 16))(v19, a2, v10);

    v25 = v20;

    v26 = sub_221BCCD68();
    v27 = sub_221BCDA78();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v28 = 136315394;
      sub_221A2A71C(&qword_27CFB7A60);
      v29 = sub_221BCE168();
      v30 = v23;
      v32 = v31;
      (*(v30 + 8))(v19, v24);
      v33 = sub_2219A6360(v29, v32, v48);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_221BCF7F0;
        v35 = v44;
        *(v34 + 32) = v43;
        *(v34 + 40) = v25;
        *(v34 + 48) = v35;
        *(v34 + 56) = v21;
        v49 = v34;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        v36 = sub_221BCD328();
        v38 = v37;

        v25 = v38;
      }

      else
      {

        v36 = v43;
      }

      v39 = sub_2219A6360(v36, v25, v48);

      *(v28 + 14) = v39;
      _os_log_impl(&dword_221989000, v26, v27, "No observer %s for %s", v28, 0x16u);
      v40 = v42;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v40, -1, -1);
      MEMORY[0x223DA4C00](v28, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v19, v24);
    }

    v18 = 0;
  }

  *v47 = v18;
}

void sub_221A26880()
{
  OUTLINED_FUNCTION_21();
  v68 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = (&v56 - v8);
  v9 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  v10 = OUTLINED_FUNCTION_18_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = *v2;
  v19 = v2[1];
  v20 = v2[2];
  v21 = v2[3];
  v77[0] = *v2;
  v77[1] = v19;
  v67 = v20;
  v77[2] = v20;
  v77[3] = v21;
  v22 = sub_221A24864(v77);
  if (v22)
  {
    v65 = v21;
    v23 = *(v22 + 16);
    if (v23)
    {
      v64 = v19;
      v61 = *(v12 + 80);
      v24 = (v61 + 32) & ~v61;
      v56 = v22;
      v25 = v22 + v24;
      v59 = *(v12 + 72);
      v60 = v24;
      v58 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v58 + 39) & 0xFFFFFFFFFFFFFFF8;
      v62 = v17;
      v63 = v18;
      v26 = v57;
      do
      {
        v69 = v25;
        v70 = v23;
        sub_221A2AADC(v25, v17);
        v27 = sub_221BCD7F8();
        v28 = v7;
        v29 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v27);
        v30 = v66;
        sub_221A2AADC(v17, v66);
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        sub_221A2AB88(v30, v31 + v60);
        v32 = (v31 + v58);
        v33 = v64;
        *v32 = v18;
        v32[1] = v33;
        v34 = v68;
        v35 = v65;
        v32[2] = v67;
        v32[3] = v35;
        *(v31 + v26) = v34;
        v36 = v29;
        v7 = v28;
        sub_2219BAF0C(v36, v28, &unk_27CFB82F0, &qword_221BD2C40);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v27);

        if (EnumTagSinglePayload == 1)
        {
          sub_2219A1CC8(v28, &unk_27CFB82F0, &qword_221BD2C40);
        }

        else
        {
          sub_221BCD7E8();
          (*(*(v27 - 8) + 8))(v28, v27);
        }

        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        swift_unknownObjectRetain();

        v18 = v63;
        if (v39)
        {
          swift_getObjectType();
          v40 = sub_221BCD778();
          v42 = v41;
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        sub_2219A1CC8(v71, &unk_27CFB82F0, &qword_221BD2C40);
        if (v42 | v40)
        {
          v72 = 0;
          v73 = 0;
          v74 = v40;
          v75 = v42;
        }

        swift_task_create();

        OUTLINED_FUNCTION_1_29();
        v17 = v62;
        sub_221A2AB34();
        v25 = v69 + v59;
        v23 = v70 - 1;
      }

      while (v70 != 1);

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v43 = sub_221BCCD88();
    __swift_project_value_buffer(v43, qword_27CFDEE58);

    v71 = sub_221BCCD68();
    v44 = sub_221BCDA78();

    if (os_log_type_enabled(v71, v44))
    {
      OUTLINED_FUNCTION_20_6();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      v77[0] = swift_slowAlloc();
      *v45 = 136315394;
      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        OUTLINED_FUNCTION_49();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_221BCF7F0;
        *(v46 + 32) = v18;
        *(v46 + 40) = v19;
        *(v46 + 48) = v67;
        *(v46 + 56) = v21;
        v76 = v46;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        OUTLINED_FUNCTION_17_8();
        v18 = sub_221BCD328();
        v48 = v47;

        v19 = v48;
      }

      else
      {
      }

      v52 = sub_2219A6360(v18, v19, v77);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      v53 = MEMORY[0x223DA33D0](v68, &type metadata for AppNotificationEvent);
      v55 = sub_2219A6360(v53, v54, v77);

      *(v45 + 14) = v55;
      _os_log_impl(&dword_221989000, v71, v44, "Topic %s no observers for %s", v45, 0x16u);
      OUTLINED_FUNCTION_39_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

LABEL_27:
      OUTLINED_FUNCTION_22();
      return;
    }

    OUTLINED_FUNCTION_22();
  }
}

uint64_t sub_221A26F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v17;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  v8[29] = a1;
  v9 = sub_221BCCD88();
  v8[36] = v9;
  v10 = *(v9 - 8);
  v8[37] = v10;
  v11 = *(v10 + 64) + 15;
  v8[38] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v14 = *(type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver() - 8);
  v8[43] = v14;
  v8[44] = *(v14 + 64);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A270D0, 0, 0);
}

uint64_t sub_221A270D0()
{
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  *(v0 + 376) = __swift_project_value_buffer(*(v0 + 288), qword_27CFDEE58);
  if (qword_27CFB6CE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v22 = *(v0 + 360);
  v23 = *(v0 + 336);
  v26 = *(v0 + 280);
  v4 = *(v0 + 264);
  v20 = *(v0 + 256);
  v21 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v24 = *(v0 + 320);
  v25 = v5;
  memcpy((v0 + 16), &qword_27CFDD210, 0x59uLL);
  sub_221A2AADC(v5, v1);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 384) = v9;
  sub_221A2AB88(v1, v9 + v7);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v20;
  v10[2] = v4;
  v10[3] = v21;
  *(v9 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_221A2AADC(v25, v22);
  v11 = swift_allocObject();
  *(v0 + 392) = v11;
  sub_221A2AB88(v22, v11 + v7);
  v12 = (v11 + v8);
  *v12 = v6;
  v12[1] = v20;
  v12[2] = v4;
  v12[3] = v21;
  v13 = sub_221BCCD08();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v13);
  v14 = sub_221BCCCD8();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 400) = v15;
  *(v15 + 16) = v25;
  *(v15 + 24) = v26;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A2734C()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  (*(v0[37] + 16))(v7, v0[47], v0[36]);
  sub_2219BAF0C((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_2219BAF0C(v3, v4, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219BAF0C(v6, v5, &qword_27CFB7F58, &unk_221BD27E0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_2219CBEFC(0, 0, v0 + 2, v7, sub_221A293B0, v1, 0, 0, sub_221A29444, v2, v0 + 19, 0, 0, 2, v4, v5);
  v0[51] = v11;
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v12 = v0[50];
  v0[27] = v8;
  v0[28] = &off_28351D968;
  v0[24] = v11;
  v13 = swift_task_alloc();
  v0[52] = v13;
  v13[2] = v11;
  v13[3] = &unk_221BD6690;
  v13[4] = v12;
  v14 = *(MEMORY[0x277D85A70] + 4);

  v15 = swift_task_alloc();
  v0[53] = v15;
  *v15 = v0;
  v15[1] = sub_221A27600;
  v16 = v0[29];

  return MEMORY[0x282200908](v16, v0 + 24, &unk_221BD7ED0, v13, 0, 0, 0xD000000000000028, 0x8000000221BECC20);
}

uint64_t sub_221A27600()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221A27738()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[41];
  v8 = v0[42];
  v9 = v0[39];
  v10 = v0[40];
  v13 = v0[38];

  sub_2219A1CC8(v10, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v8, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8((v0 + 14), qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_221A27868()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[42];
  v6 = v0[40];

  sub_2219A1CC8(v6, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v5, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8((v0 + 14), qword_27CFB7A80, &unk_221BD2800);
  sub_2219A1CC8((v0 + 24), qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A2795C()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];

  OUTLINED_FUNCTION_25();
  v9 = v0[54];

  return v8();
}

uint64_t sub_221A27A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEDA30);
  sub_221BCC558();
  sub_221A2A71C(&qword_27CFB7A60);
  v11 = sub_221BCE168();
  MEMORY[0x223DA31F0](v11);

  MEMORY[0x223DA31F0](47, 0xE100000000000000);
  sub_221B93ED0(a2, a3, a4, a5);
  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  v12 = MEMORY[0x223DA33D0](a6, &type metadata for AppNotificationEvent);
  MEMORY[0x223DA31F0](v12);

  return 0;
}

uint64_t sub_221A27B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEDA30);
  sub_221BCC558();
  sub_221A2A71C(&qword_27CFB7A60);
  v10 = sub_221BCE168();
  MEMORY[0x223DA31F0](v10);

  MEMORY[0x223DA31F0](47, 0xE100000000000000);
  sub_221B93ED0(a3, a4, a5, a6);
  MEMORY[0x223DA31F0](0x3A64656C69616620, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  sub_221BCE018();
  return 0;
}

uint64_t sub_221A27CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221A27CCC, 0, 0);
}

uint64_t sub_221A27CCC()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 24);
  sub_221BCCFE8();
  v7 = *(v0 + 32);
  *(v0 + 48) = sub_221BCCFA8();
  v2 = sub_221B62F00();
  *(v0 + 56) = v2;
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v7;
  v4 = *(MEMORY[0x277D85A70] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_221A27E10;

  return MEMORY[0x282200908](v5, v0 + 16, &unk_221BD66B8, v3, 0, 0, 0xD000000000000035, 0x8000000221BED9F0);
}

uint64_t sub_221A27E10()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = v4[6];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 80) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A27F68()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_221A28FF0();
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A27FC4()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0[3];
  v1 = v0[4];
  sub_221A28FF0();
  OUTLINED_FUNCTION_25();
  v4 = v0[10];

  return v3();
}

uint64_t sub_221A28020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_221A28040, 0, 0);
}

uint64_t sub_221A28040()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver() + 20));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_221A280E4;
  v4 = v0[3];

  return sub_221B72E68(v4);
}

uint64_t sub_221A280E4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

void sub_221A281C4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_221A2A7DC(v2, v35);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v35[0];
  v4 = v35[0] + 64;
  v5 = 1 << *(v35[0] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v35[0] + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v29 = v3;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 32 * v11);
    v13 = v12[1];
    v34 = *v12;
    v14 = v12[3];
    v33 = v12[2];
    v15 = *(*(v3 + 56) + 8 * v11);
    v16 = qword_27CFB73B0;

    if (v16 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v7 &= v7 - 1;
    v17 = sub_221BCCD88();
    __swift_project_value_buffer(v17, qword_27CFDEE58);
    OUTLINED_FUNCTION_144();

    v18 = sub_221BCCD68();
    v19 = sub_221BCDA58();

    if (os_log_type_enabled(v18, v19))
    {
      v31 = v19;
      log = v18;
      OUTLINED_FUNCTION_20_6();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      v30 = v20;
      v35[0] = swift_slowAlloc();
      *v20 = 136315394;
      if (v14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        OUTLINED_FUNCTION_49();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_221BCF7F0;
        *(v21 + 32) = v34;
        *(v21 + 40) = v13;
        *(v21 + 48) = v33;
        *(v21 + 56) = v14;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        OUTLINED_FUNCTION_17_8();
        v22 = sub_221BCD328();
        v24 = v23;
      }

      else
      {

        v24 = v13;
        v22 = v34;
      }

      v25 = sub_2219A6360(v22, v24, v35);

      *(v30 + 1) = v25;
      *(v30 + 6) = 2080;
      sub_221BCC558();
      OUTLINED_FUNCTION_16_9();
      sub_221A2A71C(&qword_27CFB9420);
      v26 = sub_221BCD988();
      v28 = sub_2219A6360(v26, v27, v35);

      *(v30 + 14) = v28;
      _os_log_impl(&dword_221989000, log, v31, "%s: %s)", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      v3 = v29;
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_221A285A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 24);
}

void *AppNotificationEventRegistry.AppNotificationEventListener.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t AppNotificationEventRegistry.AppNotificationEventListener.__deallocating_deinit()
{
  AppNotificationEventRegistry.AppNotificationEventListener.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_221A28668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B10, &qword_221BE8E90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x277D84F98];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v2;
  v3 = type metadata accessor for AsyncSerialExecutor();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[5] = sub_221BA2984();
  return v0;
}

uint64_t AppNotificationEventRegistry.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AppNotificationEventRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_221A28734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  OUTLINED_FUNCTION_54_4(off_27CFB8A68);
  sub_221A23908();
}

uint64_t sub_221A287DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  v4 = *(off_27CFB8A68 + 2);

  sub_221A23E70();
}

uint64_t sub_221A28890(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  OUTLINED_FUNCTION_54_4(off_27CFB8A68);
  sub_221A23A60();
}

uint64_t static AppNotificationEventRegistry.dumpState()()
{
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  v0 = *(off_27CFB8A68 + 2);

  sub_221A281C4();
}

uint64_t AppNotificationEventRegistry.send(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_27_0();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_221A289D0()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  v0[3] = *(off_27CFB8A68 + 2);
  _s20LinkServicesListenerCMa();
  if (swift_dynamicCastClass())
  {

    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_221A28B40;
    v2 = v0[2];

    return sub_221A2B000(v2);
  }

  else
  {
    sub_2219ACB94();
    swift_allocError();
    *v4 = 0xD000000000000012;
    *(v4 + 8) = 0x8000000221BED8C0;
    *(v4 + 16) = 6;
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v5();
  }
}

uint64_t sub_221A28B40()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A28C3C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221A28C98()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A28D80(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_221A291CC();
  v4 = sub_221BCD668();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_221A28E58;

  return AppNotificationEventRegistry.send(_:)(v4);
}

uint64_t sub_221A28E58()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = sub_221BCC328();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[3], 0);
  }

  _Block_release(v4[3]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_221A28FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v1 = MEMORY[0x223DA2240]();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_221BCD2C8();
  sub_221B62F44();
}

uint64_t sub_221A29120()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_3(v4);
  *v5 = v6;
  v5[1] = sub_2219CA70C;

  return sub_221A28D80(v1, v2, v3);
}

unint64_t sub_221A291CC()
{
  result = qword_27CFB8AD0;
  if (!qword_27CFB8AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB8AD0);
  }

  return result;
}

uint64_t type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver()
{
  result = qword_27CFB8B18;
  if (!qword_27CFB8B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A2925C(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  OUTLINED_FUNCTION_18_4(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = *(v1 + v9);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_2219CA70C;

  return sub_221A26F08(a1, v10, v11, v1 + v6, v13, v14, v15, v16);
}

uint64_t sub_221A293B0()
{
  v1 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  OUTLINED_FUNCTION_18_4(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_48_5();
  v9 &= 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v0 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = *(v0 + v10);

  return sub_221A27A04(v0 + v8, v12, v13, v14, v15, v16);
}

uint64_t sub_221A29444()
{
  OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver();
  OUTLINED_FUNCTION_18_4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_48_5();
  v11 = (v1 + (v10 & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];

  return sub_221A27B44(v0, v1 + v9, v12, v13, v14, v15);
}

uint64_t sub_221A294D8()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v8[1] = sub_2219EC5F0;

  return sub_221A27CA8(v4, v2, v6, v5);
}

uint64_t sub_221A29584()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_45_4(v4);

  return sub_221A28020(v6, v7, v1);
}

uint64_t sub_221A29644(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    _s14descr283510D89C29PerformActionExecutorDelegateCMa();
    v9 = *(v4 + 40);
    v10 = sub_221BCDC48();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_221BCDC58();

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_221BBD3E8();
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v12);
        sub_221A29E4C(v12);
        *v2 = v19;
        return v8;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = sub_221BCDDE8();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_221A29D08();

  return v8;
}

uint64_t sub_221A297B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_221A2A71C(&qword_27CFB9420);
  v28 = a1;
  v11 = sub_221BCD308();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_221A2A71C(&qword_27CFB8AE0);
    v15 = sub_221BCD338();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_221BBD50C();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_221A29FE0(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

void sub_221A29A00()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v45 = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  v4 = OUTLINED_FUNCTION_2_1(v48);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v44 = _s17LNConnectionStoreC9AssertionOMa();
  v9 = OUTLINED_FUNCTION_0_2(v44);
  v47 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v43 = v0;
  v18 = *v0;
  v19 = *(*v0 + 40);
  sub_221BCE308();
  OUTLINED_FUNCTION_15_7();
  v49 = v2;
  sub_221A2AADC(v2, v17);
  MEMORY[0x223DA4060](0);
  v20 = sub_221BCC558();
  OUTLINED_FUNCTION_16_9();
  sub_221A2A71C(v21);
  sub_221BCD318();
  v22 = *(*(v20 - 8) + 8);
  v22(v17, v20);
  v23 = sub_221BCE358();
  v46 = v18;
  v50 = ~(-1 << *(v18 + 32));
  v51 = v18 + 56;
  while (1)
  {
    v24 = v23 & v50;
    if (((*(v51 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v28 = 1;
      v29 = v45;
      goto LABEL_9;
    }

    v25 = *(v47 + 72) * v24;
    sub_221A2AADC(*(v46 + 48) + v25, v15);
    v26 = *(v48 + 48);
    sub_221A2AADC(v15, v8);
    sub_221A2AADC(v49, &v8[v26]);
    v27 = sub_221BCC518();
    sub_221A2AB34();
    v22(&v8[v26], v20);
    v22(v8, v20);
    if (v27)
    {
      break;
    }

    v23 = v24 + 1;
  }

  v30 = v43;
  v31 = *v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v30;
  v52 = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_221BBD534(isUniquelyReferenced_nonNull_native, v33, v34, v35, v36, v37, v38, v39, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v40 = v52;
  }

  v41 = *(v40 + 48);
  OUTLINED_FUNCTION_15_7();
  v29 = v45;
  sub_221A2AB88(v42 + v25, v45);
  sub_221A2A2D8(v24);
  v28 = 0;
  *v30 = v52;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v29, v28, 1, v44);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A29D08()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_221BCDDA8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_221BBB010(v4, v3);
  v14 = v5;
  v6 = *(v5 + 40);

  v7 = sub_221BCDC48();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    _s14descr283510D89C29PerformActionExecutorDelegateCMa();
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = sub_221BCDC58();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_221A29E4C(v9);
      if (sub_221BCDC58())
      {
        *v1 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_221A29E4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_221BCDD38();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_221BCDC48();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_221A29FE0(int64_t a1)
{
  v3 = sub_221BCC558();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_221BCDD38();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_221A2A71C(&qword_27CFB9420);
        v27 = sub_221BCD308();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_221A2A2D8(unint64_t a1)
{
  v38 = _s17LNConnectionStoreC9AssertionOMa();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v38);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v41 = &v37 - v8;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_221BCDD38();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = (v15 + 1) & v13;
      v43 = *(v3 + 72);
      v17 = v13;
      v39 = v9;
      v40 = v10;
      do
      {
        v18 = v43 * v12;
        v19 = v41;
        sub_221A2AADC(*(v9 + 48) + v43 * v12, v41);
        v20 = *(v9 + 40);
        sub_221BCE308();
        v21 = a1;
        v22 = v42;
        sub_221A2AADC(v19, v42);
        v23 = v17;
        MEMORY[0x223DA4060](0);
        v24 = sub_221BCC558();
        sub_221A2A71C(&qword_27CFB9420);
        sub_221BCD318();
        v25 = v22;
        a1 = v21;
        (*(*(v24 - 8) + 8))(v25, v24);
        v26 = sub_221BCE358();
        sub_221A2AB34();
        v27 = v26 & v23;
        v17 = v23;
        if (v21 >= v16)
        {
          if (v27 < v16 || v21 < v27)
          {
LABEL_20:
            v9 = v39;
            v10 = v40;
            goto LABEL_24;
          }
        }

        else if (v27 < v16 && v21 < v27)
        {
          goto LABEL_20;
        }

        v9 = v39;
        v10 = v40;
        v29 = *(v39 + 48);
        v30 = v29 + v43 * v21;
        v31 = v29 + v18 + v43;
        if (v43 * v21 < v18 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v43 * v21 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v17;
      }

      while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v9 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v36;
    ++*(v9 + 36);
  }

  return result;
}

void *sub_221A2A630@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_221BA2BD8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void *sub_221A2A65C@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_221BA2C18(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_221A2A688@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221BA2C50(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_221A2A71C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_221BCC558();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221A2A7F8()
{
  result = qword_27CFB8AF8;
  if (!qword_27CFB8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8AF8);
  }

  return result;
}

uint64_t sub_221A2A84C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_21_4(v7);
  OUTLINED_FUNCTION_51_2();

  return sub_221A244D4(v9, v10, v11, v12, v13);
}

uint64_t sub_221A2A8EC()
{
  OUTLINED_FUNCTION_1_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_47_2();

  return sub_221A247A8(v3);
}

uint64_t objectdestroy_44Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_221A2A9B8()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_21_4(v7);
  OUTLINED_FUNCTION_51_2();

  return sub_221A23658(v9, v10, v11, v12, v13);
}

uint64_t sub_221A2AA58()
{
  OUTLINED_FUNCTION_1_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_47_2();

  return sub_221A23638(v3);
}

uint64_t sub_221A2AADC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

uint64_t sub_221A2AB34()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_221A2AB88(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

uint64_t sub_221A2AC24()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RemoteAppNotificationSink();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_28_4()
{
  v2 = v1[5].n128_u64[1];
  v1[1].n128_u64[0] = v1[5].n128_u64[0];
  v1[1].n128_u64[1] = v2;
  result = v1[6];
  v1[2] = result;
  v4 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3()
{
  v2 = *(v0 + 72);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43_4()
{

  return sub_2219A6360(v0, v1, (v2 - 112));
}

void OUTLINED_FUNCTION_52_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
}

uint64_t OUTLINED_FUNCTION_56_4()
{
  v2 = *(v0 - 152);

  return swift_arrayDestroy();
}

void sub_221A2AF9C()
{
  qword_27CFDD210 = 0;
  *algn_27CFDD218 = 0;
  byte_27CFDD220 = 1;
  qword_27CFDD228 = "sendEvents";
  unk_27CFDD230 = 10;
  byte_27CFDD238 = 2;
  qword_27CFDD240 = 1;
  byte_27CFDD248 = 0;
  qword_27CFDD250 = 17;
  byte_27CFDD258 = 0;
  qword_27CFDD260 = 0;
  byte_27CFDD268 = 1;
}

uint64_t sub_221A2B000(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221A2B014()
{
  v77 = v0;
  result = sub_2219A69A0(*(v0 + 16));
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = *(v60 + 16);
    v62 = v4 & 0xC000000000000001;
    v56 = v4 + 32;
    v5 = MEMORY[0x277D84F98];
    v58 = result;
    do
    {
      if (v62)
      {
        v6 = MEMORY[0x223DA3BF0](v3, *(v60 + 16));
      }

      else
      {
        v6 = *(v56 + 8 * v3);
      }

      v7 = v6;
      v8 = sub_221A1B38C(v6, &v73);
      if (v74)
      {
        v69 = v73;
        v9 = v76;
        v68 = v75;
        v10 = [v7 bundleIdentifier];
        v11 = sub_221BCD388();
        v13 = v12;

        v14 = [v7 entityType];
        v15 = sub_221BCD388();
        v17 = v16;

        v64 = v11;
        if (*(v5 + 16) && (v18 = sub_221B9EADC(v11, v13, v15, v17), (v19 & 1) != 0))
        {
          v20 = *(*(v5 + 56) + 8 * v18);
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v71 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = *(v20 + 16);
          sub_2219B40A4();
          v20 = v34;
        }

        v21 = *(v20 + 16);
        if (v21 >= *(v20 + 24) >> 1)
        {
          sub_2219B40A4();
          v20 = v35;
        }

        *(v20 + 16) = v21 + 1;
        OUTLINED_FUNCTION_4_14(v20 + 32 * v21, v54, v56, v58, v60, v62, v64, v66, v68, v69, v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v5;
        sub_221B9FC74(v20, v65, v13, v15, v17, isUniquelyReferenced_nonNull_native);

        v23 = v73;
        v24 = [v7 bundleIdentifier];
        v25 = sub_221BCD388();
        v27 = v26;

        if (*(v23 + 16))
        {
          v28 = sub_221B9EADC(v25, v27, 0, 0);
          v2 = v59;
          if (v29)
          {
            v30 = *(*(v23 + 56) + 8 * v28);
          }

          else
          {
            v30 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
          v2 = v59;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = *(v30 + 16);
          sub_2219B40A4();
          v30 = v37;
        }

        v31 = *(v30 + 16);
        if (v31 >= *(v30 + 24) >> 1)
        {
          sub_2219B40A4();
          v30 = v38;
        }

        *(v30 + 16) = v31 + 1;
        OUTLINED_FUNCTION_4_14(v30 + 32 * v31, v55, v57, v59, v61, v63, v65, *v67, v67[4], v70, v72);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v23;
        sub_221B9FC74(v30, v25, v27, 0, 0, v32);

        v5 = v73;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v39 = -1;
  v40 = -1 << *(v5 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & *(v5 + 64);
  v42 = (63 - v40) >> 6;

  v43 = 0;
  if (v41)
  {
    while (1)
    {
      v44 = v43;
LABEL_38:
      v45 = *(v60 + 24);
      v46 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v47 = v46 | (v44 << 6);
      v48 = (*(v5 + 48) + 32 * v47);
      v49 = v48[1];
      v50 = v48[2];
      v51 = v48[3];
      v52 = *(*(v5 + 56) + 8 * v47);
      v73 = *v48;
      v74 = v49;
      v75 = v50;
      v76 = v51;

      sub_221A26880();

      if (!v41)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
LABEL_34:
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v5 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_25();

  return v53();
}

uint64_t sub_221A2B550(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_221A291CC();
  v4 = sub_221BCD668();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_221A2B628;

  return sub_221A2B000(v4);
}

uint64_t sub_221A2B628()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = sub_221BCC328();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[3], 0);
  }

  _Block_release(v4[3]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_221A2B7C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 144) = *a1;
  *(v1 + 152) = v2;
  *(v1 + 160) = *(a1 + 16);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221A2B7E8()
{
  v22 = v0;
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }

  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_221BCCD88();
  __swift_project_value_buffer(v3, qword_27CFDEE58);

  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_10_7();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;

    v8 = OUTLINED_FUNCTION_9_11();
    v10 = sub_2219A6360(v8, v9, &v21);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_49_1(&dword_221989000, v11, v12, "First observer added - listening for topic: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v13 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v0[23] = OUTLINED_FUNCTION_12_6([objc_allocWithZone(MEMORY[0x277D23B20]) init]);
  if (v13)
  {
    v16 = v0[20];
    v17 = sub_221BCD358();
  }

  else
  {
    v17 = 0;
  }

  v0[24] = v17;
  v0[2] = v0;
  v0[3] = sub_221A2BA30;
  swift_continuation_init();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  OUTLINED_FUNCTION_2_25(v18);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_11_8(v19, sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completion_);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221A2BA30()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 200) = v5;
  if (v5)
  {
    v6 = sub_221A2BBA0;
  }

  else
  {
    v6 = sub_221A2BB38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221A2BB38()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A2BBA0()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  OUTLINED_FUNCTION_25();
  v6 = v0[25];

  return v5();
}

uint64_t sub_221A2BC20(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 144) = *a1;
  *(v1 + 152) = v2;
  *(v1 + 160) = *(a1 + 16);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221A2BC40()
{
  v22 = v0;
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }

  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_221BCCD88();
  __swift_project_value_buffer(v3, qword_27CFDEE58);

  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_10_7();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;

    v8 = OUTLINED_FUNCTION_9_11();
    v10 = sub_2219A6360(v8, v9, &v21);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_49_1(&dword_221989000, v11, v12, "Last observer removed - stop listening for topic: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v13 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v0[23] = OUTLINED_FUNCTION_12_6([objc_allocWithZone(MEMORY[0x277D23B20]) init]);
  if (v13)
  {
    v16 = v0[20];
    v17 = sub_221BCD358();
  }

  else
  {
    v17 = 0;
  }

  v0[24] = v17;
  v0[2] = v0;
  v0[3] = sub_221A2BE88;
  swift_continuation_init();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  OUTLINED_FUNCTION_2_25(v18);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_11_8(v19, sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completion_);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221A2BE88()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 200) = v5;
  if (v5)
  {
    v6 = sub_221A2C1A4;
  }

  else
  {
    v6 = sub_221A2C1A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221A2BF90()
{
  v0 = AppNotificationEventRegistry.AppNotificationEventListener.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_221A2BFFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_221A2C0B0;

  return sub_221A2B550(v2, v3, v4);
}

uint64_t sub_221A2C0B0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;

  OUTLINED_FUNCTION_25();

  return v4();
}

void OUTLINED_FUNCTION_1_30()
{
  v1[12] = sub_2219C5280;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_14(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 32) = a10;
  *(a1 + 40) = v11;
  *(a1 + 48) = a9;
  *(a1 + 56) = a11;
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return sub_221998A0C(v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_11_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1)
{
  *(v1 + 176) = a1;

  return sub_221BCD358();
}

uint64_t sub_221A2C29C(uint64_t a1)
{
  v1 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  result = sub_221BCD7A8();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_221BCC558();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_221A2C3C4@<X0>(char *a1@<X0>, void (**a2)()@<X8>)
{
  v4 = *a1;
  *a2 = sub_221A2C4B8();
  a2[1] = v5;
  a2[2] = sub_221A2C52C();
  a2[3] = v6;
  OUTLINED_FUNCTION_1_6();
  v8 = *(v7 + 120);
  v9 = *(v4 + 80);
  v10 = _s12AnyActorCallVMa();
  v11 = v10[8];
  v12 = sub_221BCC558();
  (*(*(v12 - 8) + 16))(a2 + v11, &a1[v8], v12);
  v13 = sub_221A2C748();
  v14 = (a2 + v10[9]);
  *v14 = v13;
  v14[1] = v15;
  v16 = sub_221A2CAC0();
  v18 = v17;

  v20 = (a2 + v10[10]);
  *v20 = v16;
  v20[1] = v18;
  return result;
}

void sub_221A2C4F8()
{
  OUTLINED_FUNCTION_1_6();
  v2 = v0 + *(v1 + 152);
  sub_221A2D298();
}

uint64_t sub_221A2C56C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v6 + 16))(v11, a1, v4);
  v17 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v4;
  *(v18 + 5) = *(v3 + 88);
  *(v18 + 6) = v1;
  (*(v6 + 32))(&v18[v17], v11, v4);

  sub_2219F7E3C();
}

uint64_t sub_221A2C788(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v35 = sub_221BCE398();
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = (&v32 - v11);
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v13 = sub_221BCCD88();
  OUTLINED_FUNCTION_39_6(v13, qword_27CFDEDC8);
  v14 = sub_221BCCD68();
  v15 = sub_221BCDA68();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = a1;
    v17 = v16;
    v18 = OUTLINED_FUNCTION_105();
    v33 = v4;
    v36[0] = v18;
    *v17 = 136315394;
    OUTLINED_FUNCTION_5_14();
    *(v17 + 4) = sub_2219A6360(*(v1 + *(v19 + 112)), *(v1 + *(v19 + 112) + 8), v36);
    *(v17 + 12) = 2080;
    OUTLINED_FUNCTION_5_14();
    v21 = *(v20 + 120);
    sub_221BCC558();
    sub_2219AC8D8();
    OUTLINED_FUNCTION_25_6();
    v22 = sub_221BCE168();
    v24 = v23;

    v25 = sub_2219A6360(v22, v24, v36);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_221989000, v14, v15, "[%s] <%s> fail invoked", v17, 0x16u);
    swift_arrayDestroy();
    v4 = v33;
    OUTLINED_FUNCTION_23();
    a1 = v34;
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_14();
  v27 = (v2 + *(v26 + 128));
  os_unfair_lock_lock(v27);
  v28 = *(v4 + 80);
  sub_221A2EB6C(&v27[2]);
  _s9ActorCallC10InvocationVMa();
  j__os_unfair_lock_unlock(v27);
  *v12 = a1;
  v29 = v35;
  swift_storeEnumTagMultiPayload();
  v30 = a1;
  sub_221A2E4CC();
  return (*(v7 + 8))(v12, v29);
}

void sub_221A2CB00(void *a1)
{
  v3 = v1;
  v5 = *v1;
  if (*(v1 + *(*v1 + 144)))
  {
    v6 = qword_27CFB7378;

    if (v6 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    v7 = sub_221BCCD88();
    __swift_project_value_buffer(v7, qword_27CFDEDC8);

    v8 = sub_221BCCD68();
    v9 = sub_221BCDA98();
    if (os_log_type_enabled(v8, v9))
    {
      swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_19_7();
      *v2 = 136315394;
      OUTLINED_FUNCTION_37_2();
      *(v2 + 4) = sub_2219A6360(*(v3 + *(v10 + 112)), *(v3 + *(v10 + 112) + 8), &v27);
      *(v2 + 12) = 2080;
      OUTLINED_FUNCTION_37_2();
      v12 = *(v11 + 120);
      v13 = sub_221BCC558();
      sub_2219AC8D8();
      v14 = v3 + v12;
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      sub_2219A6360(v14, v13, &v27);
      OUTLINED_FUNCTION_45_5();
      *(v2 + 14) = v14;
      _os_log_impl(&dword_221989000, v8, v9, "[%s] <%s> yielding progress", v2, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_21_3();
    }

    else
    {
    }

    v27 = a1;
    v25 = a1;
    v26 = *(v5 + 88);
    sub_221BA6540();
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEDC8);

    v16 = sub_221BCCD68();
    v17 = sub_221BCDA98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_105();
      *v18 = 136315394;
      OUTLINED_FUNCTION_37_2();
      v20 = sub_2219A6360(*(v1 + *(v19 + 112)), *(v1 + *(v19 + 112) + 8), &v27);
      OUTLINED_FUNCTION_30_5(v20);
      OUTLINED_FUNCTION_37_2();
      v22 = *(v21 + 120);
      sub_221BCC558();
      sub_2219AC8D8();
      v23 = sub_221BCE168();

      OUTLINED_FUNCTION_17_9(v24);
      OUTLINED_FUNCTION_215();
      *(v18 + 14) = v23;
      _os_log_impl(&dword_221989000, v16, v17, "[%s] <%s> cannot yield progress", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    sub_221A2C788(a1);
  }
}

uint64_t sub_221A2CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);

    return sub_221BCD878();
  }

  return result;
}

uint64_t sub_221A2CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = *(v11 + 48);
  v21 = *(v11 + 52);
  v22 = swift_allocObject();
  sub_221A2CFD0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v22;
}

uint64_t *sub_221A2CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *v11;
  v16 = *(*v11 + 96);
  v17 = *(*v11 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v18 = sub_221BCD7A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11 + v16, a1, v18);
  OUTLINED_FUNCTION_1_6();
  v21 = (v11 + *(v20 + 104));
  *v21 = a8;
  v21[1] = a9;
  OUTLINED_FUNCTION_1_6();
  v23 = (v11 + *(v22 + 112));
  *v23 = a2;
  v23[1] = a3;
  OUTLINED_FUNCTION_1_6();
  v25 = *(v24 + 120);
  v26 = sub_221BCC558();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v11 + v25, a4, v26);
  v28 = *(v15 + 80);
  v45 = 1;
  v46 = 0;
  v47 = 0;
  LODWORD(v48) = 0;
  v49 = 0uLL;
  *(&v48 + 1) = 0;
  v29 = _s9ActorCallC10InvocationVMa();

  sub_221BA47A4(&v45, &v48 + 8, v29);
  OUTLINED_FUNCTION_1_6();
  v31 = (v11 + *(v30 + 128));
  v32 = v49;
  *v31 = v48;
  v31[1] = v32;
  OUTLINED_FUNCTION_1_6();
  *(v11 + *(v33 + 144)) = a5;

  (*(v27 + 8))(a4, v26);
  (*(v19 + 8))(a1, v18);
  OUTLINED_FUNCTION_1_6();
  v35 = v11 + *(v34 + 152);
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = a6;
  *(v35 + 24) = a7;
  OUTLINED_FUNCTION_1_6();
  v37 = (v11 + *(v36 + 136));
  *v37 = a10;
  v37[1] = a11;
  return v11;
}

void sub_221A2D298()
{
  os_unfair_lock_lock(v0);
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
    v1 = *(v0 + 8);
  }

  *(v0 + 8) = 0;

  os_unfair_lock_unlock(v0);
}

uint64_t sub_221A2D320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a4;
  return MEMORY[0x2822009F8](sub_221A2D36C, 0, 0);
}

uint64_t sub_221A2D36C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  OUTLINED_FUNCTION_5_14();
  v5 = (v1 + *(v4 + 128));
  os_unfair_lock_lock(v5);
  sub_221A2D464(&v5[2], v1, v2);
  v6 = v0[5];
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  _s9ActorCallC10InvocationVMa();
  j__os_unfair_lock_unlock(v5);
  v9 = v0[1];

  return v9();
}

void sub_221A2D464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  if (*(a1 + 8))
  {
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEDC8);

    v16 = sub_221BCCD68();
    v17 = sub_221BCDA78();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2219A6360(*(a2 + *(*a2 + 112)), *(a2 + *(*a2 + 112) + 8), &v33);
      *(v18 + 12) = 2080;
      v20 = *(*a2 + 120);
      sub_221BCC558();
      sub_2219AC8D8();
      v21 = sub_221BCE168();
      v23 = v22;

      v24 = sub_2219A6360(v21, v23, &v33);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_221989000, v16, v17, "[%s] USAGE ERROR: ActorCall executeOn called after completion for <%s>", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v19, -1, -1);
      MEMORY[0x223DA4C00](v18, -1, -1);
    }

    else
    {
    }
  }

  else if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = *a1 + 1;
    v31 = v5;
    if (*(a1 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD878();
    }

    v25 = sub_221BCD7F8();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
    (*(v7 + 16))(v10, v32, v6);
    v26 = (*(v7 + 80) + 64) & ~*(v7 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    *(v27 + 4) = v6;
    v28 = v30;
    *(v27 + 5) = *(v31 + 88);
    *(v27 + 6) = a2;
    *(v27 + 7) = v28;
    (*(v7 + 32))(&v27[v26], v10, v6);

    sub_2219F8C64();
    *a1 = v28;
    *(a1 + 8) = 0;
    *(a1 + 16) = v29;
  }
}

uint64_t sub_221A2D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *a4;
  v8 = sub_221BCD7B8();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(v7 + 88);
  v6[9] = v11;
  v6[10] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v12 = sub_221BCE398();
  v6[11] = v12;
  v13 = *(v12 - 8);
  v6[12] = v13;
  v14 = *(v13 + 64) + 15;
  v6[13] = swift_task_alloc();
  v15 = *(v11 - 8);
  v6[14] = v15;
  v16 = *(v15 + 64) + 15;
  v6[15] = swift_task_alloc();
  v17 = *(v7 + 80);
  v6[16] = v17;
  v18 = *(v17 - 8);
  v6[17] = v18;
  v19 = *(v18 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A2DACC, 0, 0);
}

uint64_t sub_221A2DACC()
{
  v42 = v0;
  *(v0 + 160) = *(**(v0 + 24) + 152);
  sub_221A2D298();
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_0_32();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_221BCCD88();
  *(v0 + 168) = __swift_project_value_buffer(v6, qword_27CFDEDC8);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = sub_221BCCD68();
  v9 = sub_221BCDA68();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 152);
  if (v10)
  {
    v38 = *(v0 + 144);
    v39 = *(v0 + 136);
    v12 = *(v0 + 128);
    v13 = *(v0 + 24);
    v37 = *(v0 + 32);
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 136315906;
    v15 = sub_2219A6360(*(v13 + *(*v13 + 112)), *(v13 + *(*v13 + 112) + 8), &v41);
    OUTLINED_FUNCTION_30_5(v15);
    v36 = v9;
    v16 = *(*v13 + 120);
    sub_221BCC558();
    v17 = v7;
    sub_2219AC8D8();
    v18 = sub_221BCE168();
    v20 = v19;

    v21 = sub_2219A6360(v18, v20, &v41);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v37;
    *(v14 + 32) = 2080;
    v17(v38, v11, v12);
    v22 = sub_221BCD3D8();
    v24 = v23;
    (*(v39 + 8))(v11, v12);
    v25 = sub_2219A6360(v22, v24, &v41);

    *(v14 + 34) = v25;
    _os_log_impl(&dword_221989000, v8, v36, "[%s] <%s#%ld> executing closure on %s", v14, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    v28 = *(v0 + 24);

    (*(v27 + 8))(v11, v26);
  }

  v29 = (*(v0 + 24) + *(**(v0 + 24) + 104));
  v30 = v29[1];
  v40 = (*v29 + **v29);
  v31 = (*v29)[1];
  v32 = swift_task_alloc();
  *(v0 + 176) = v32;
  *v32 = v0;
  v32[1] = sub_221A2DE90;
  v33 = *(v0 + 120);
  v34 = *(v0 + 40);

  return v40(v33, v34);
}

uint64_t sub_221A2DE90()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = *(v2 + 176);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 184) = v0;

  if (v0)
  {
    v7 = sub_221A2E178;
  }

  else
  {
    v7 = sub_221A2DF94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221A2DF94()
{
  v2 = v0[21];
  v3 = v0[3];

  v4 = sub_221BCCD68();
  v5 = sub_221BCDA68();
  if (OUTLINED_FUNCTION_83_2(v5))
  {
    v6 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_10_8(4.8152e-34);
    v8 = OUTLINED_FUNCTION_35_5(*(v7 + 112), v27);
    OUTLINED_FUNCTION_1_31(v8);
    v10 = *(v9 + 120);
    sub_221BCC558();
    sub_2219AC8D8();
    OUTLINED_FUNCTION_18_8();
    v11 = OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_17_9(v11);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_4_15();
    *(v6 + 24) = v1;
    OUTLINED_FUNCTION_3_18();
    _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_20_1();
  }

  else
  {
    v17 = v0[3];
  }

  v19 = v0[14];
  v18 = v0[15];
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[11];
  v23 = v0[9];
  v24 = v0[3];
  (*(v19 + 16))(v20, v18, v23);
  swift_storeEnumTagMultiPayload();
  sub_221A2E4CC();
  (*(v21 + 8))(v20, v22);
  (*(v19 + 8))(v18, v23);
  OUTLINED_FUNCTION_43_5();

  OUTLINED_FUNCTION_4_3();

  return v25();
}

uint64_t sub_221A2E178()
{
  v3 = *(v0 + 184);
  *(v0 + 16) = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = v3;
  v8 = swift_dynamicCast();
  v9 = *(v0 + 184);
  v10 = *(v0 + 168);
  v11 = *(v0 + 24);
  if (v8)
  {

    v12 = sub_221BCCD68();
    v13 = sub_221BCDA68();
    if (OUTLINED_FUNCTION_83_2(v13))
    {
      v14 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_10_8(4.8152e-34);
      v16 = OUTLINED_FUNCTION_33_3((v1 + *(v15 + 112)), v60, v62);
      OUTLINED_FUNCTION_1_31(v16);
      v18 = *(v17 + 120);
      v19 = sub_221BCC558();
      sub_2219AC8D8();
      OUTLINED_FUNCTION_18_8();
      OUTLINED_FUNCTION_24_6();
      v20 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v20, v19, v21);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_4_15();
      *(v14 + 24) = v2;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
      v52 = *(v0 + 24);
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v53 = *(v0 + 16);
  }

  else
  {

    v27 = v9;
    v28 = sub_221BCCD68();
    v29 = sub_221BCDA68();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 184);
      v31 = OUTLINED_FUNCTION_44_2();
      swift_slowAlloc();
      OUTLINED_FUNCTION_19_7();
      *v31 = 136315906;
      v32 = OUTLINED_FUNCTION_33_3((v2 + *(*v2 + 112)), v60, v62);
      OUTLINED_FUNCTION_31_6(v32);
      v34 = *(v33 + 120);
      v35 = sub_221BCC558();
      sub_2219AC8D8();
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      v36 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v36, v35, v37);
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_34_4(v38, v39, v40, v41, v42, v43, v44, v45, v61, v63);
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 34) = v46;
      *v1 = v46;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v47, v48, v49, v50, v51, 0x2Au);
      sub_221A01F0C(v1, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
      v54 = *(v0 + 24);
    }

    v55 = *(v0 + 184);
    v56 = *(v0 + 24);
    v57 = v56 + *(v0 + 160);
    sub_221A2E630(v55, *(v0 + 32), v56, *(v0 + 40));
    v53 = v55;
  }

  OUTLINED_FUNCTION_43_5();

  OUTLINED_FUNCTION_4_3();

  return v58();
}

void sub_221A2E4CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = (v1 + v2[16]);
  os_unfair_lock_lock(v3);
  v4 = v2[10];
  v5 = v2[11];
  sub_221A2EBAC(&v3[2], &v15);
  _s9ActorCallC10InvocationVMa();
  j__os_unfair_lock_unlock(v3);
  if (v15 == 1)
  {
    OUTLINED_FUNCTION_5_14();
    v7 = v1 + *(v6 + 152);
    sub_221A2D298();
    OUTLINED_FUNCTION_5_14();
    v9 = *(v8 + 96);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD7A8();
    v10 = OUTLINED_FUNCTION_25_6();
    sub_221A2EC10(v10, v11);
    OUTLINED_FUNCTION_5_14();
    v13 = v1 + *(v12 + 136);
    v14 = *(v13 + 1);
    (*v13)();
  }
}

void sub_221A2E630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = v9();
  v13 = v11;
  if (v11 >> 62)
  {
    if (v11 >> 62 == 1)
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_0_32();
      }

      v14 = sub_221BCCD88();
      OUTLINED_FUNCTION_39_6(v14, qword_27CFDEDC8);
      v15 = sub_221BCCD68();
      v16 = sub_221BCDA68();
      if (os_log_type_enabled(v15, v16))
      {
        v57 = a4;
        v17 = swift_slowAlloc();
        v59 = OUTLINED_FUNCTION_105();
        *v17 = 136315650;
        OUTLINED_FUNCTION_5_14();
        *(v17 + 4) = OUTLINED_FUNCTION_33_3((a3 + *(v18 + 112)), v59, v57);
        *(v17 + 12) = 2080;
        OUTLINED_FUNCTION_5_14();
        v20 = *(v19 + 120);
        sub_221BCC558();
        v21 = a2;
        v22 = v12;
        sub_2219AC8D8();
        OUTLINED_FUNCTION_25_6();
        sub_221BCE168();
        v24 = v23;

        v25 = OUTLINED_FUNCTION_23_7();
        v27 = sub_2219A6360(v25, v24, v26);
        v12 = v22;
        a2 = v21;

        *(v17 + 14) = v27;
        *(v17 + 22) = 2048;
        *(v17 + 24) = v21;
        _os_log_impl(&dword_221989000, v15, v16, "[%s] <%s#%ld> Error is transient, retrying when ready", v17, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        a4 = v58;
        OUTLINED_FUNCTION_23();
      }

      else
      {
      }

      os_unfair_lock_lock(v5);
      sub_221A2F104((v5 + 8), a3, v13 & 0x3FFFFFFFFFFFFFFFLL, a2, a4);
      os_unfair_lock_unlock(v5);
      sub_221A2CB00(v12);

      OUTLINED_FUNCTION_42_4();
    }

    else
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_0_32();
      }

      v37 = sub_221BCCD88();
      OUTLINED_FUNCTION_39_6(v37, qword_27CFDEDC8);
      v38 = sub_221BCCD68();
      v39 = sub_221BCDA68();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        OUTLINED_FUNCTION_105();
        *v40 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v42 = OUTLINED_FUNCTION_33_3((a3 + *(v41 + 112)), v55, v56);
        OUTLINED_FUNCTION_30_5(v42);
        OUTLINED_FUNCTION_5_14();
        v44 = *(v43 + 120);
        sub_221BCC558();
        sub_2219AC8D8();
        sub_221BCE168();
        v46 = v45;

        v47 = OUTLINED_FUNCTION_23_7();
        v49 = sub_2219A6360(v47, v46, v48);

        *(v40 + 14) = v49;
        *(v40 + 22) = 2048;
        *(v40 + 24) = a2;
        _os_log_impl(&dword_221989000, v38, v39, "[%s] <%s#%ld> Error is immediately retryable", v40, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();
      }

      else
      {
      }

      sub_221A2C56C(a4);
      OUTLINED_FUNCTION_42_4();
    }
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    v28 = sub_221BCCD88();
    OUTLINED_FUNCTION_39_6(v28, qword_27CFDEDC8);
    v29 = sub_221BCCD68();
    v30 = sub_221BCDA68();
    if (os_log_type_enabled(v29, v30))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_19_7();
      *v5 = 136315650;
      OUTLINED_FUNCTION_5_14();
      *(v5 + 4) = OUTLINED_FUNCTION_33_3((a3 + *(v31 + 112)), v55, v56);
      *(v5 + 12) = 2080;
      OUTLINED_FUNCTION_5_14();
      v33 = *(v32 + 120);
      v34 = sub_221BCC558();
      sub_2219AC8D8();
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      v35 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v35, v34, v36);
      OUTLINED_FUNCTION_45_5();
      *(v5 + 14) = a3 + v33;
      *(v5 + 22) = 2048;
      *(v5 + 24) = a2;
      _os_log_impl(&dword_221989000, v29, v30, "[%s] <%s#%ld> Error is not retryable", v5, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_21_3();
    }

    else
    {
    }

    sub_221A2C788(v12);
    OUTLINED_FUNCTION_42_4();

    sub_221A2FEE4(v52, v53);
  }
}