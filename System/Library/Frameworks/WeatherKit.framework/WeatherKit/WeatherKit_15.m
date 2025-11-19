uint64_t HistoricalFact.init(condition:period:token:heading:message:arguments:metadata:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a2;
  *a9 = *a1;
  *(a9 + 1) = v12;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_22();
  return sub_23B4E20E8(a11, a9 + v13, v14);
}

uint64_t HistoricalFact.token.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_65();
}

uint64_t HistoricalFact.heading.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_65();
}

uint64_t HistoricalFact.message.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_65();
}

BOOL static HistoricalFact.== infix(_:_:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *a1 == 0;
  if (*a1)
  {
    v6 = 0x7469706963657270;
  }

  else
  {
    v6 = 0x74617265706D6574;
  }

  if (v5)
  {
    v7 = 0xEB00000000657275;
  }

  else
  {
    v7 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v8 = 0x7469706963657270;
  }

  else
  {
    v8 = 0x74617265706D6574;
  }

  if (*a2)
  {
    v9 = 0xED00006E6F697461;
  }

  else
  {
    v9 = 0xEB00000000657275;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_23B50D834();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_23B3E5AE8(*(a1 + 1), a2[1]) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 8) == *(a2 + 1) && *(a1 + 16) == *(a2 + 2);
  if (!v12 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 24) == *(a2 + 3) && *(a1 + 32) == *(a2 + 4);
  if (!v13 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 40) == *(a2 + 5) && *(a1 + 48) == *(a2 + 6);
  if (!v14 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 7);
  sub_23B3E06E4();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();

  return static WeatherMetadata.== infix(_:_:)(a1 + v18, &a2[v18]);
}

uint64_t sub_23B4E0AA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6964616568 && a2 == 0xE700000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_23B50D834();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B4E0CDC(char a1)
{
  result = 0x6F697469646E6F63;
  switch(a1)
  {
    case 1:
      result = 0x646F69726570;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x676E6964616568;
      break;
    case 4:
      result = 0x6567617373656DLL;
      break;
    case 5:
      result = 0x746E656D75677261;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4E0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E0AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E0DD4(uint64_t a1)
{
  v2 = sub_23B4E21A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4E0E10(uint64_t a1)
{
  v2 = sub_23B4E21A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354F8, &qword_23B5240B0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E21A0();
  sub_23B50D974();
  LOBYTE(v24) = *v3;
  v25 = 0;
  sub_23B4E21F4();
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_23_0();
  sub_23B50D7F4();
  if (!v2)
  {
    LOBYTE(v24) = *(v3 + 1);
    v25 = 1;
    sub_23B4E2248();
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    OUTLINED_FUNCTION_19_18(2);
    v16 = *(v3 + 24);
    v17 = *(v3 + 32);
    OUTLINED_FUNCTION_19_18(3);
    v18 = *(v3 + 40);
    v19 = *(v3 + 48);
    OUTLINED_FUNCTION_19_18(4);
    v24 = *(v3 + 56);
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135518, &qword_23B5240B8);
    sub_23B4E238C(&qword_27E135520, &qword_27E135528);
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v20 = *(type metadata accessor for HistoricalFact(0) + 40);
    LOBYTE(v24) = 6;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_16_18();
    sub_23B4E229C(v21, v22);
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t HistoricalFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherMetadata();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135530, &qword_23B5240C0);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for HistoricalFact(0);
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v34 = v20 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E21A0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_23B4E22E4();
  OUTLINED_FUNCTION_31_10();
  sub_23B50D734();
  *v34 = v35;
  sub_23B4E2338();
  sub_23B50D734();
  *(v34 + 1) = v35;
  *(v34 + 8) = OUTLINED_FUNCTION_25_12(2);
  *(v34 + 16) = v22;
  *(v34 + 24) = OUTLINED_FUNCTION_25_12(3);
  *(v34 + 32) = v23;
  *(v34 + 40) = OUTLINED_FUNCTION_25_12(4);
  *(v34 + 48) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135518, &qword_23B5240B8);
  sub_23B4E238C(&qword_27E135548, &qword_27E135550);
  sub_23B50D734();
  *(v34 + 56) = v35;
  OUTLINED_FUNCTION_16_18();
  sub_23B4E229C(v25, v26);
  sub_23B50D734();
  v27 = OUTLINED_FUNCTION_11_22();
  v28(v27);
  v29 = *(v15 + 40);
  OUTLINED_FUNCTION_15_22();
  sub_23B4E20E8(v10, v34 + v30, v31);
  sub_23B4E2144(v34, a2, type metadata accessor for HistoricalFact);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B4E2428(v34, type metadata accessor for HistoricalFact);
}

uint64_t sub_23B4E15A4()
{
  v0 = sub_23B50D664();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23B4E1624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_23B50C1F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C1C4();
  switch(sub_23B4E15A4())
  {
    case 1u:
      sub_23B50C1D4();
      v18 = [objc_opt_self() celsius];
      sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
      sub_23B50A9B4();
      type metadata accessor for HistoricalFact.Argument(0);
      return swift_storeEnumTagMultiPayload();
    case 2u:
    case 3u:
      sub_23B50C1D4();
      v17 = [objc_opt_self() millimeters];
      sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
      sub_23B50A9B4();
      type metadata accessor for HistoricalFact.Argument(0);
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v12 = sub_23B50C1E4();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        sub_23B50C1D4();
        *a3 = v16;
        a3[1] = v14;
        a3[2] = v15;
        type metadata accessor for HistoricalFact.Argument(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (qword_280B43440 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    case 5u:
      if (qword_280B43440 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    default:
      sub_23B50C1D4();
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_12:
        v41 = a2;
        v20 = sub_23B50CDF4();
        __swift_project_value_buffer(v20, qword_280B4E9D8);
        (*(v7 + 16))(v10, a1, v6);
        v21 = sub_23B50CDD4();
        v22 = sub_23B50D4B4();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v42 = v40;
          *v23 = 136446210;
          v24 = sub_23B50C1C4();
          v26 = v25;
          (*(v7 + 8))(v10, v6);
          v27 = sub_23B391F1C(v24, v26, &v42);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_23B38D000, v21, v22, "Encountered an unknown historical fact argument type. Discarding fact. type=%{public}s", v23, 0xCu);
          v28 = v40;
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x23EE9E260](v28, -1, -1);
          MEMORY[0x23EE9E260](v23, -1, -1);
        }

        else
        {

          (*(v7 + 8))(v10, v6);
        }

        v29 = sub_23B50C1C4();
        v31 = v30;
        sub_23B4E349C();
        v32 = swift_allocError();
        *v33 = v29;
        *(v33 + 8) = v31;
        *(v33 + 16) = 2;
        result = swift_willThrow();
        a2 = v41;
LABEL_20:
        *a2 = v32;
        return result;
      }

      if (v11 <= -9.22337204e18)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_17:
        v34 = sub_23B50CDF4();
        __swift_project_value_buffer(v34, qword_280B4E9D8);
        v35 = sub_23B50CDD4();
        v36 = sub_23B50D4B4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_23B38D000, v35, v36, "Missing format for a historical fact date argument. Discarding fact.", v37, 2u);
          MEMORY[0x23EE9E260](v37, -1, -1);
        }

        sub_23B4E349C();
        v32 = swift_allocError();
        *v38 = 0;
        *(v38 + 8) = 0;
        *(v38 + 16) = 3;
        result = swift_willThrow();
        goto LABEL_20;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_24;
      }

      *a3 = v11;
      type metadata accessor for HistoricalFact.Argument(0);
      return swift_storeEnumTagMultiPayload();
  }
}

void HistoricalFact.hash(into:)()
{
  *v0;
  *v0;
  sub_23B50D1C4();

  v1 = *(v0 + 1);
  OUTLINED_FUNCTION_48_6();
  sub_23B50D1C4();

  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23B50D1C4();
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_23B50D1C4();
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_23B50D1C4();
  v8 = *(v0 + 56);
  sub_23B409BE4();
  OUTLINED_FUNCTION_50_4();
  WeatherMetadata.hash(into:)();
}

uint64_t HistoricalFact.Argument.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for HistoricalFact.Argument(0);
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_0_55();
  sub_23B4E2144(v0, v23, v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = *(v11 + 32);
      v37 = OUTLINED_FUNCTION_43_10();
      v38(v37);
      MEMORY[0x23EE9DB40](1);
      OUTLINED_FUNCTION_5_5(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0);
      sub_23B50D0E4();
      result = (*(v11 + 8))(v16, v9);
      break;
    case 2u:
      v31 = OUTLINED_FUNCTION_36_11();
      v32(v31);
      v33 = 2;
      goto LABEL_8;
    case 3u:
      v34 = OUTLINED_FUNCTION_36_11();
      v35(v34);
      v33 = 3;
LABEL_8:
      MEMORY[0x23EE9DB40](v33);
      OUTLINED_FUNCTION_5_5(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0);
      sub_23B50D0E4();
      result = (*(v3 + 8))(v8, v1);
      break;
    case 4u:
      v27 = *v23;
      v28 = *(v23 + 8);
      v29 = *(v23 + 16);
      MEMORY[0x23EE9DB40](4);
      v30 = 0.0;
      if (v27 != 0.0)
      {
        v30 = v27;
      }

      MEMORY[0x23EE9DB70](*&v30);
      sub_23B50D1C4();

      break;
    default:
      v25 = *v23;
      MEMORY[0x23EE9DB40](0);
      result = MEMORY[0x23EE9DB40](*&v25);
      break;
  }

  return result;
}

uint64_t sub_23B4E1FEC(void (*a1)(_BYTE *))
{
  sub_23B50D8C4();
  a1(v3);
  return sub_23B50D914();
}

uint64_t sub_23B4E2054(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_23B50D8C4();
  a4(v6);
  return sub_23B50D914();
}

uint64_t sub_23B4E20E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  return a2;
}

uint64_t sub_23B4E2144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  return a2;
}

unint64_t sub_23B4E21A0()
{
  result = qword_27E135500;
  if (!qword_27E135500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135500);
  }

  return result;
}

unint64_t sub_23B4E21F4()
{
  result = qword_27E135508;
  if (!qword_27E135508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135508);
  }

  return result;
}

unint64_t sub_23B4E2248()
{
  result = qword_27E135510;
  if (!qword_27E135510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135510);
  }

  return result;
}

uint64_t sub_23B4E229C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B4E22E4()
{
  result = qword_27E135538;
  if (!qword_27E135538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135538);
  }

  return result;
}

unint64_t sub_23B4E2338()
{
  result = qword_27E135540;
  if (!qword_27E135540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135540);
  }

  return result;
}

uint64_t sub_23B4E238C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E135518, &qword_23B5240B8);
    sub_23B4E229C(a2, type metadata accessor for HistoricalFact.Argument);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4E2428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_23B4E2514()
{
  result = qword_27E135568;
  if (!qword_27E135568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135568);
  }

  return result;
}

unint64_t sub_23B4E256C()
{
  result = qword_27E135570;
  if (!qword_27E135570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135570);
  }

  return result;
}

void sub_23B4E25E8()
{
  sub_23B4E2698();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B4E2698()
{
  if (!qword_27E135588)
  {
    type metadata accessor for HistoricalFact.Argument(255);
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_27E135588);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HistoricalFact.Period(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_23B4E27DC()
{
  sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
  if (v0 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
    if (v1 <= 0x3F)
    {
      sub_23B4E28A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23B4E28A0()
{
  if (!qword_27E1355A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1355A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HistoricalFact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFact.Argument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23B4E2AE8(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_38_0(a1);
}

_BYTE *sub_23B4E2B34(_BYTE *result, int a2, int a3)
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

_BYTE *sub_23B4E2BE0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4E2CC0()
{
  result = qword_27E1355A8;
  if (!qword_27E1355A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355A8);
  }

  return result;
}

unint64_t sub_23B4E2D18()
{
  result = qword_27E1355B0;
  if (!qword_27E1355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355B0);
  }

  return result;
}

unint64_t sub_23B4E2D70()
{
  result = qword_27E1355B8;
  if (!qword_27E1355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355B8);
  }

  return result;
}

unint64_t sub_23B4E2DC8()
{
  result = qword_27E1355C0;
  if (!qword_27E1355C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355C0);
  }

  return result;
}

unint64_t sub_23B4E2E20()
{
  result = qword_27E1355C8;
  if (!qword_27E1355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355C8);
  }

  return result;
}

unint64_t sub_23B4E2E78()
{
  result = qword_27E1355D0;
  if (!qword_27E1355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355D0);
  }

  return result;
}

unint64_t sub_23B4E2ED0()
{
  result = qword_27E1355D8;
  if (!qword_27E1355D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355D8);
  }

  return result;
}

unint64_t sub_23B4E2F28()
{
  result = qword_27E1355E0;
  if (!qword_27E1355E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355E0);
  }

  return result;
}

unint64_t sub_23B4E2F80()
{
  result = qword_27E1355E8;
  if (!qword_27E1355E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355E8);
  }

  return result;
}

unint64_t sub_23B4E2FD8()
{
  result = qword_27E1355F0;
  if (!qword_27E1355F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355F0);
  }

  return result;
}

unint64_t sub_23B4E3030()
{
  result = qword_27E1355F8;
  if (!qword_27E1355F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355F8);
  }

  return result;
}

unint64_t sub_23B4E3088()
{
  result = qword_27E135600;
  if (!qword_27E135600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135600);
  }

  return result;
}

unint64_t sub_23B4E30E0()
{
  result = qword_27E135608;
  if (!qword_27E135608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135608);
  }

  return result;
}

unint64_t sub_23B4E3138()
{
  result = qword_27E135610;
  if (!qword_27E135610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135610);
  }

  return result;
}

unint64_t sub_23B4E3190()
{
  result = qword_27E135618;
  if (!qword_27E135618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135618);
  }

  return result;
}

unint64_t sub_23B4E31E8()
{
  result = qword_27E135620;
  if (!qword_27E135620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135620);
  }

  return result;
}

unint64_t sub_23B4E3240()
{
  result = qword_27E135628;
  if (!qword_27E135628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135628);
  }

  return result;
}

unint64_t sub_23B4E3298()
{
  result = qword_27E135630;
  if (!qword_27E135630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135630);
  }

  return result;
}

unint64_t sub_23B4E32F0()
{
  result = qword_27E135638;
  if (!qword_27E135638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135638);
  }

  return result;
}

unint64_t sub_23B4E3348()
{
  result = qword_27E135640;
  if (!qword_27E135640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135640);
  }

  return result;
}

unint64_t sub_23B4E33A0()
{
  result = qword_27E135648;
  if (!qword_27E135648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135648);
  }

  return result;
}

unint64_t sub_23B4E33F4()
{
  result = qword_27E135650;
  if (!qword_27E135650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135650);
  }

  return result;
}

unint64_t sub_23B4E3448()
{
  result = qword_27E135658;
  if (!qword_27E135658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135658);
  }

  return result;
}

unint64_t sub_23B4E349C()
{
  result = qword_27E135660;
  if (!qword_27E135660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135660);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WeatherKit14HistoricalFactV6ErrorsO(uint64_t a1)
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

uint64_t sub_23B4E350C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_23B4E354C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B4E3590(uint64_t result, unsigned int a2)
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

void NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:perceivedIntensity:)()
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_6_17();
  v6 = *v5;
  OUTLINED_FUNCTION_9_33(v7, v8, v5, v9);
  v21[0] = v10;
  v11 = *(type metadata accessor for NextHourSummary() + 20);
  v12 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_4_39();
  v17 = *(v16 + 32);
  v18 = OUTLINED_FUNCTION_14();
  v19(v18);
  sub_23B3CF890(v0, v1 + v11);
  OUTLINED_FUNCTION_13_24();
  *v3 = v20;
  *(v3 + 8) = v21[0];
  *v4 = 0;
  *(v4 + 8) = v2;
  OUTLINED_FUNCTION_19_19();
}

uint64_t type metadata accessor for NextHourSummary()
{
  result = qword_280B45D30;
  if (!qword_280B45D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NextHourSummary.startDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t NextHourSummary.startDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t NextHourSummary.endDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for NextHourSummary() + 20);

  return sub_23B3C7DF4(v2, v0);
}

uint64_t NextHourSummary.endDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for NextHourSummary() + 20);

  return sub_23B3CF890(v0, v2);
}

uint64_t NextHourSummary.endDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourSummary() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t NextHourSummary.precipitation.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for NextHourSummary();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t NextHourSummary.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NextHourSummary();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t NextHourSummary.precipitation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourSummary() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t NextHourSummary.precipitationChance.setter(double a1)
{
  result = type metadata accessor for NextHourSummary();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t NextHourSummary.precipitationChance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourSummary() + 28);
  return OUTLINED_FUNCTION_44();
}

void NextHourSummary.apparentPrecipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  HourSummary = type metadata accessor for NextHourSummary();
  OUTLINED_FUNCTION_14_28(*(HourSummary + 32));
}

uint64_t NextHourSummary.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NextHourSummary();
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t NextHourSummary.apparentPrecipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourSummary() + 32);
  return OUTLINED_FUNCTION_44();
}

void NextHourSummary.perceivedIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  HourSummary = type metadata accessor for NextHourSummary();
  OUTLINED_FUNCTION_14_28(*(HourSummary + 36));
}

uint64_t NextHourSummary.perceivedIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NextHourSummary();
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t NextHourSummary.perceivedIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourSummary() + 36);
  return OUTLINED_FUNCTION_44();
}

void NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_6_17();
  v6 = *v5;
  OUTLINED_FUNCTION_9_33(v7, v8, v5, v9);
  v21[0] = v10;
  v11 = *(type metadata accessor for NextHourSummary() + 20);
  v12 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_4_39();
  v17 = *(v16 + 32);
  v18 = OUTLINED_FUNCTION_14();
  v19(v18);
  sub_23B3CF890(v0, v1 + v11);
  OUTLINED_FUNCTION_13_24();
  *v4 = v20;
  *(v4 + 8) = v21[0];
  *v3 = 0;
  *(v3 + 8) = v2;
  OUTLINED_FUNCTION_19_19();
}

void NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:apparentPrecipitationIntensity:perceivedIntensity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_6_17();
  v14 = *v13;
  OUTLINED_FUNCTION_9_33(v15, v16, v13, v17);
  v34 = v19;
  v35 = v18;
  v21 = *v20;
  v22 = *(v20 + 8);
  HourSummary = type metadata accessor for NextHourSummary();
  v24 = HourSummary[5];
  v25 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v29 = v11 + HourSummary[8];
  *v29 = 0;
  *(v29 + 8) = 3;
  v30 = v11 + HourSummary[9];
  *v30 = 0;
  *(v30 + 8) = 3;
  v31 = *(*(v25 - 8) + 32);
  v32 = OUTLINED_FUNCTION_14();
  v33(v32);
  sub_23B3CF890(v10, v11 + v24);
  *(v11 + HourSummary[6]) = v34;
  *(v11 + HourSummary[7]) = v12;
  *v30 = v21;
  *(v30 + 8) = v22;
  *v29 = a10;
  *(v29 + 8) = v35;
  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_23B4E3C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x800000023B529C20 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

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

unint64_t sub_23B4E3E9C(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0x65746144646E65;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4E3F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E3C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E3FA4(uint64_t a1)
{
  v2 = sub_23B4E4A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4E3FE0(uint64_t a1)
{
  v2 = sub_23B4E4A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static NextHourSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD24();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  HourSummary = type metadata accessor for NextHourSummary();
  v24 = HourSummary[5];
  v25 = *(v17 + 48);
  sub_23B3C7DF4(a1 + v24, v22);
  sub_23B3C7DF4(a2 + v24, &v22[v25]);
  OUTLINED_FUNCTION_46(v22);
  if (!v26)
  {
    sub_23B3C7DF4(v22, v16);
    OUTLINED_FUNCTION_46(&v22[v25]);
    if (!v26)
    {
      (*(v7 + 32))(v12, &v22[v25], v4);
      sub_23B402DA8(&qword_280B42F08);
      v27 = sub_23B50D134();
      v28 = *(v7 + 8);
      v28(v12, v4);
      v28(v16, v4);
      sub_23B398890(v22, &qword_27E131E18, &unk_23B50F710);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v7 + 8))(v16, v4);
LABEL_10:
    sub_23B398890(v22, &qword_27E131E20, &qword_23B51E340);
    return 0;
  }

  OUTLINED_FUNCTION_46(&v22[v25]);
  if (!v26)
  {
    goto LABEL_10;
  }

  sub_23B398890(v22, &qword_27E131E18, &unk_23B50F710);
LABEL_12:
  if ((sub_23B3CFF58(*(a1 + HourSummary[6]), *(a2 + HourSummary[6])) & 1) == 0 || *(a1 + HourSummary[7]) != *(a2 + HourSummary[7]))
  {
    return 0;
  }

  v29 = HourSummary[8];
  v30 = OUTLINED_FUNCTION_11_23();
  if (v26)
  {
    if (v31 != 3)
    {
      return 0;
    }
  }

  else
  {
    v34 = v31 != 3 && *v32 == *v33;
    if (!v34 || (sub_23B3E71A0(v30, v31) & 1) == 0)
    {
      return 0;
    }
  }

  v35 = HourSummary[9];
  v36 = OUTLINED_FUNCTION_11_23();
  if (v26)
  {
    if (v37 == 3)
    {
      return 1;
    }
  }

  else
  {
    v40 = v37 != 3 && *v38 == *v39;
    if (v40 && (sub_23B3E71A0(v36, v37) & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t NextHourSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135668, &qword_23B524D48);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E4A48();
  sub_23B50D974();
  v18[0] = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50);
  OUTLINED_FUNCTION_29_0();
  sub_23B50D7F4();
  if (!v2)
  {
    HourSummary = type metadata accessor for NextHourSummary();
    v15 = HourSummary[5];
    v18[0] = 1;
    OUTLINED_FUNCTION_29_0();
    sub_23B50D794();
    v18[0] = *(v3 + HourSummary[6]);
    v19 = 2;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_2_47();
    sub_23B50D7F4();
    v16 = *(v3 + HourSummary[7]);
    v18[0] = 3;
    sub_23B50D7C4();
    OUTLINED_FUNCTION_18_22(HourSummary[8]);
    v19 = 4;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_2_47();
    sub_23B50D794();
    OUTLINED_FUNCTION_18_22(HourSummary[9]);
    v19 = 5;
    sub_23B402D54();
    OUTLINED_FUNCTION_2_47();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t NextHourSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v5;
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_5(v6);
  v53 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v51 = v12 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135678, &qword_23B524D50);
  OUTLINED_FUNCTION_5(v55);
  v52 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  HourSummary = type metadata accessor for NextHourSummary();
  v20 = OUTLINED_FUNCTION_6(HourSummary);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v25 = v24 - v23;
  v57 = *(v26 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v6);
  v30 = v25 + HourSummary[8];
  *v30 = 0;
  *(v30 + 8) = 3;
  v31 = v25 + HourSummary[9];
  *v31 = 0;
  *(v31 + 8) = 3;
  v33 = a1[3];
  v32 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_23B4E4A48();
  v54 = v18;
  v34 = v56;
  sub_23B50D964();
  if (v34)
  {
    v37 = v57;
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_23B398890(v25 + v37, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v56 = v30;
    v35 = v50;
    v48 = v31;
    LOBYTE(v59) = 0;
    sub_23B402DA8(&qword_27E132008);
    v36 = v51;
    OUTLINED_FUNCTION_10_26();
    sub_23B50D734();
    (*(v53 + 32))(v25, v36, v6);
    LOBYTE(v59) = 1;
    OUTLINED_FUNCTION_10_26();
    sub_23B50D6D4();
    sub_23B3CF890(v35, v25 + v57);
    v61 = 2;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_1_41();
    sub_23B50D734();
    *(v25 + HourSummary[6]) = v59;
    LOBYTE(v59) = 3;
    sub_23B50D704();
    *(v25 + HourSummary[7]) = v38;
    v61 = 4;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_1_41();
    sub_23B50D6D4();
    v39 = v60;
    v40 = v56;
    *v56 = v59;
    *(v40 + 8) = v39;
    v61 = 5;
    sub_23B402DEC();
    OUTLINED_FUNCTION_1_41();
    sub_23B50D6D4();
    v41 = OUTLINED_FUNCTION_22_16();
    v42(v41);
    v43 = v60;
    v45 = v48;
    v44 = v49;
    *v48 = v59;
    *(v45 + 8) = v43;
    sub_23B4E4A9C(v25, v44);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_23B4E4B00(v25);
  }
}

unint64_t sub_23B4E4A48()
{
  result = qword_27E135670;
  if (!qword_27E135670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135670);
  }

  return result;
}

uint64_t sub_23B4E4A9C(uint64_t a1, uint64_t a2)
{
  HourSummary = type metadata accessor for NextHourSummary();
  (*(*(HourSummary - 8) + 16))(a2, a1, HourSummary);
  return a2;
}

uint64_t sub_23B4E4B00(uint64_t a1)
{
  HourSummary = type metadata accessor for NextHourSummary();
  (*(*(HourSummary - 8) + 8))(a1, HourSummary);
  return a1;
}

void sub_23B4E4B84()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B3973DC();
    if (v1 <= 0x3F)
    {
      sub_23B3976E0(319, qword_280B43890);
      if (v2 <= 0x3F)
      {
        sub_23B3976E0(319, &qword_27E135680);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NextHourSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4E4D50()
{
  result = qword_27E135688;
  if (!qword_27E135688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135688);
  }

  return result;
}

unint64_t sub_23B4E4DA8()
{
  result = qword_27E135690;
  if (!qword_27E135690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135690);
  }

  return result;
}

unint64_t sub_23B4E4E00()
{
  result = qword_27E135698[0];
  if (!qword_27E135698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E135698);
  }

  return result;
}

Swift::Void __swiftcall WeatherService.cleanupCaches()()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_23B50B6A4();
}

uint64_t DailyWeatherSummary.init(days:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for DailyWeatherSummary();
  return sub_23B3CA20C(a2, a3 + *(v5 + 52));
}

uint64_t DailyWeatherSummary.days.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*DailyWeatherSummary.metadata.modify(uint64_t a1, uint64_t a2))()
{
  result = GEOLocationCoordinate2DMake;
  v4 = v2 + *(a2 + 52);
  return result;
}

BOOL static DailyWeatherSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (sub_23B50D324())
  {
    v6 = type metadata accessor for DailyWeatherSummary();
    return static WeatherMetadata.== infix(_:_:)(a1 + *(v6 + 52), a2 + *(v6 + 52));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4E5040(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B4E5108(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 1937334628;
  }
}

BOOL sub_23B4E5138(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_23B3DE0E8(*a1, *a2);
}

uint64_t sub_23B4E5150(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B4001D0(*v1);
}

uint64_t sub_23B4E5164(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_23B3DE0F8(a1, *v2);
}

uint64_t sub_23B4E5178(uint64_t a1, void *a2)
{
  sub_23B50D8C4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_23B3DE0F8(v9, *v2);
  return sub_23B50D914();
}

uint64_t sub_23B4E51C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B4E5108(*v1);
}

uint64_t sub_23B4E51D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_23B4E5040(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B4E520C(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_23B3DEE7C();
}

uint64_t sub_23B4E5238@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_23B3F1684();
  *a2 = result;
  return result;
}

uint64_t sub_23B4E526C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B4E52C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DailyWeatherSummary.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v20 = *(a2 + 16);
  v21 = v5;
  v19 = a2;
  v24 = v20;
  v25 = v5;
  type metadata accessor for DailyWeatherSummary.CodingKeys();
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v24 = *v3;
  v26 = 0;
  sub_23B50D304();
  v23 = v21;
  swift_getWitnessTable();
  v15 = v22;
  sub_23B50D7F4();
  if (!v15)
  {
    v16 = *(v19 + 52);
    LOBYTE(v24) = 1;
    type metadata accessor for WeatherMetadata();
    sub_23B4E58BC(&qword_280B426A8);
    sub_23B50D7F4();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t DailyWeatherSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v39 = type metadata accessor for WeatherMetadata();
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  type metadata accessor for DailyWeatherSummary.CodingKeys();
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  v43 = sub_23B50D754();
  v13 = OUTLINED_FUNCTION_5(v43);
  v37 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  v40 = a2;
  v41 = a3;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v19 = type metadata accessor for DailyWeatherSummary();
  v20 = OUTLINED_FUNCTION_5(v19);
  v35 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = (&v34 - v24);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v18;
  v27 = v44;
  sub_23B50D964();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v19;
  v28 = v38;
  v44 = a1;
  sub_23B50D304();
  v50 = 0;
  v45 = v41;
  swift_getWitnessTable();
  sub_23B50D734();
  *v25 = v46;
  LOBYTE(v46) = 1;
  sub_23B4E58BC(&qword_27E132550);
  sub_23B50D734();
  v29 = OUTLINED_FUNCTION_3_47();
  v30(v29);
  v31 = v34;
  sub_23B3CA20C(v28, v25 + *(v34 + 52));
  v32 = v35;
  (*(v35 + 16))(v36, v25, v31);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return (*(v32 + 8))(v25, v31);
}

uint64_t sub_23B4E58BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_23B4E593C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static DailyWeatherSummary.== infix(_:_:)(a1, a2);
}

uint64_t sub_23B4E5A4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B4E5AF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherSummary.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B4E5B18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherSummary.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B4E5B40(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B4E5BB4(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B4E5BB4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  DailyWeatherSummary.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B4E5C70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B4E5CDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B4E5D64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B4E5DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = DailyWeatherSummary.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B4E5EB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B4E5F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B4E5F88(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ProductRequirementsFactoryType.twentyFourHourForecast(timeZone:)()
{
  v0 = sub_23B50AD24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50ABA4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_23B50AC94();
  static WeatherQuery<A>.hourly(startDate:endDate:)(v7, v4);
  v8(v4, v0);
  return (v8)(v7, v0);
}

void (*sub_23B4E6214())(_BYTE *, uint64_t)
{
  OUTLINED_FUNCTION_34_0();
  v2 = sub_23B50AAC4();
  v3 = OUTLINED_FUNCTION_5(v2);
  v71 = v4;
  v72 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v8 = OUTLINED_FUNCTION_9_34(v7);
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_248();
  v79 = sub_23B50AD24();
  v18 = OUTLINED_FUNCTION_5(v79);
  v77 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  v68 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v64[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v64[-v28];
  v30 = sub_23B50AE84();
  v31 = OUTLINED_FUNCTION_5(v30);
  v75 = v32;
  v76 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_27();
  v37 = v36 - v35;
  sub_23B50AE04();
  sub_23B50AA14();
  v80 = v26;
  v69 = v0;
  sub_23B50A9F4();
  v65 = sub_23B4E7194();
  v38 = *(v11 + 104);
  v74 = *MEMORY[0x277CC9968];
  v38(v1);
  v39 = *MEMORY[0x277CC9988];
  v73 = v38;
  (v38)(v16, v39, v8);
  v78 = v29;
  v81 = v37;
  v66 = sub_23B50ADD4();
  LOBYTE(v38) = v40;
  v67 = v11;
  v41 = *(v11 + 8);
  v41(v16, v8);
  v41(v1, v8);
  if (v38)
  {
    goto LABEL_4;
  }

  v42 = v73;
  (v73)(v1, v74, v8);
  v42(v16, v39, v8);
  sub_23B50ADD4();
  LOBYTE(v42) = v43;
  v41(v16, v8);
  v41(v1, v8);
  if (v42)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D08, &unk_23B514F20);
  v44 = *(v67 + 72);
  v45 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23B50ED30;
  (v73)(v46 + v45, v74, v8);
  v47 = sub_23B4E74B0(v46);
  v48 = v68;
  sub_23B50A9F4();
  v49 = v70;
  sub_23B50AE14();

  v50 = *(v77 + 8);
  v50(v48, v79);
  sub_23B50AA94();
  v51 = OUTLINED_FUNCTION_4_40();
  v52(v51);
  if (v49)
  {
LABEL_4:
    sub_23B3E3D54();
    v53 = swift_allocError();
    OUTLINED_FUNCTION_9_1(v53, v54);
    v55 = *(v77 + 8);
    v56 = v79;
    v55(v80, v79);
    v55(v78, v56);
    v57 = OUTLINED_FUNCTION_7_41();
    v58(v57);
  }

  else
  {
    v60 = v79;
    v50(v80, v79);
    v50(v78, v60);
    v61 = OUTLINED_FUNCTION_7_41();
    v62(v61);
    if (v65)
    {
      v63 = v47 < 366;
      v55 = v66;
      if (v63)
      {
        return v55;
      }
    }

    else
    {
      v63 = v47 < 365;
      v55 = v66;
      if (v63)
      {
        return v55;
      }
    }

    sub_23B50030C(v55, -1);
  }

  return v55;
}

uint64_t sub_23B4E6760()
{
  OUTLINED_FUNCTION_34_0();
  v1 = sub_23B50AAC4();
  v2 = OUTLINED_FUNCTION_5(v1);
  v83 = v3;
  v84 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v7 = OUTLINED_FUNCTION_9_34(v6);
  v8 = OUTLINED_FUNCTION_5(v7);
  v90 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v77[-v16];
  v91 = sub_23B50AD24();
  v18 = OUTLINED_FUNCTION_5(v91);
  v88 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  v81 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v92 = &v77[-v25];
  MEMORY[0x28223BE20](v26);
  v28 = &v77[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v77[-v31];
  v33 = sub_23B50AEF4();
  v34 = OUTLINED_FUNCTION_5(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_27();
  v41 = v40 - v39;
  v42 = sub_23B50AE84();
  v43 = OUTLINED_FUNCTION_5(v42);
  v86 = v44;
  v87 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_27();
  v93 = v48 - v47;
  sub_23B50AEA4();
  result = __swift_getEnumTagSinglePayload(v32, 1, v33);
  if (result != 1)
  {
    (*(v36 + 32))(v41, v32, v33);
    sub_23B50AE04();
    (*(v36 + 8))(v41, v33);
    sub_23B50AA14();
    v80 = v0;
    sub_23B50A9F4();
    v78 = sub_23B4E7194();
    v50 = v90;
    v51 = *(v90 + 104);
    v85 = *MEMORY[0x277CC9980];
    (v51)(v17);
    v52 = *MEMORY[0x277CC9988];
    v51(v14, v52, v7);
    v89 = v28;
    v79 = sub_23B50ADD4();
    v54 = v53;
    v55 = *(v50 + 8);
    v55(v14, v7);
    v55(v17, v7);
    if (v54)
    {
      goto LABEL_5;
    }

    v51(v17, v85, v7);
    v51(v14, v52, v7);
    sub_23B50ADD4();
    v57 = v56;
    v55(v14, v7);
    v55(v17, v7);
    if (v57)
    {
      goto LABEL_5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D08, &unk_23B514F20);
    v58 = *(v90 + 72);
    v59 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_23B50ED30;
    v51(v60 + v59, v85, v7);
    v61 = sub_23B4E74B0(v60);
    v62 = v81;
    sub_23B50A9F4();
    v63 = v82;
    sub_23B50AE14();

    v64 = *(v88 + 8);
    v64(v62, v91);
    sub_23B50AAA4();
    v65 = OUTLINED_FUNCTION_4_40();
    v66(v65);
    if (v63)
    {
LABEL_5:
      sub_23B3E3D54();
      v67 = swift_allocError();
      OUTLINED_FUNCTION_9_1(v67, v68);
      v69 = *(v88 + 8);
      v70 = v91;
      v69(v92, v91);
      v69(v89, v70);
      v71 = OUTLINED_FUNCTION_7_41();
      v72(v71);
    }

    else
    {
      v73 = v91;
      v64(v92, v91);
      v64(v89, v73);
      v74 = OUTLINED_FUNCTION_7_41();
      v75(v74);
      if (v78)
      {
        v76 = v61 < 8784;
        v69 = v79;
        if (v76)
        {
          return v69;
        }
      }

      else
      {
        v76 = v61 < 8760;
        v69 = v79;
        if (v76)
        {
          return v69;
        }
      }

      sub_23B5002C8(v69, -1);
    }

    return v69;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B4E6DD4()
{
  v58 = sub_23B50AE64();
  v1 = OUTLINED_FUNCTION_5(v58);
  v55 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27();
  v53 = v6 - v5;
  v59 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_5(v59);
  v54 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v51 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_248();
  v21 = sub_23B50AE84();
  v22 = OUTLINED_FUNCTION_5(v21);
  v56 = v23;
  v57 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_27();
  v28 = v27 - v26;
  sub_23B50AE04();
  sub_23B50AA14();
  sub_23B4E7194();
  sub_23B50A9F4();
  v29 = v28;
  v50 = v0;
  sub_23B4E72C4(v13);
  sub_23B4E77C0(&qword_280B43110, MEMORY[0x277CC9578]);
  v30 = v59;
  v31 = sub_23B50D104();
  v32 = v54;
  v33 = *(v54 + 8);
  v52 = v33;
  v34 = (v31 & 1) == 0;
  if (v31)
  {
    v35 = v16;
  }

  else
  {
    v35 = v13;
  }

  if (!v34)
  {
    v16 = v13;
  }

  v33(v35, v30);
  (*(v32 + 32))(v19, v16, v30);
  v36 = *MEMORY[0x277CC9998];
  v37 = v55;
  v49 = *(v55 + 104);
  v38 = v53;
  v39 = v58;
  v49(v53, v36, v58);
  v54 = sub_23B50AE74();
  v40 = *(v37 + 8);
  v40(v38, v39);
  v41 = v36;
  v42 = v39;
  v49(v38, v41, v39);
  v43 = v51;
  sub_23B50AE74();
  v40(v38, v42);
  v44 = v43;
  v45 = v59;
  v46 = v52;
  v52(v44, v59);
  v46(v50, v45);
  (*(v56 + 8))(v29, v57);
  return v54;
}

BOOL sub_23B4E7194()
{
  v0 = sub_23B50AE64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC9988], v0, v3);
  v6 = sub_23B50AE74();
  (*(v1 + 8))(v5, v0);
  return v6 % 100 && (v6 & 3) == 0 || v6 % 400 == 0;
}

uint64_t sub_23B4E72C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23B50AE64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v14 - v10;
  (*(v3 + 104))(v6, *MEMORY[0x277CC9998], v2, v9);
  sub_23B50AE24();
  (*(v3 + 8))(v6, v2);
  v12 = sub_23B50AD24();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  sub_23B3CF54C(v11);
  return sub_23B50AC94();
}

uint64_t sub_23B4E74B0(uint64_t a1)
{
  v2 = sub_23B50AE64();
  v3 = OUTLINED_FUNCTION_5(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - v11;
  if (!*(a1 + 16))
  {
    v13 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135720, &qword_23B525328);
  result = sub_23B50D5A4();
  v13 = result;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_15:

    return v13;
  }

  v14 = 0;
  v43 = result + 56;
  v15 = *(v40 + 80);
  v37 = a1;
  v38 = a1 + ((v15 + 32) & ~v15);
  v42 = v40 + 16;
  v16 = (v40 + 8);
  v36 = (v40 + 32);
  while (v14 < *(a1 + 16))
  {
    v17 = *(v40 + 72);
    v41 = v14 + 1;
    v18 = *(v40 + 16);
    v18(v44, v38 + v17 * v14, v2);
    v19 = *(v13 + 40);
    OUTLINED_FUNCTION_3_48();
    sub_23B4E77C0(&qword_280B42B38, v20);
    v21 = sub_23B50D0D4();
    v22 = ~(-1 << *(v13 + 32));
    while (1)
    {
      v23 = v21 & v22;
      v24 = (v21 & v22) >> 6;
      v25 = *(v43 + 8 * v24);
      v26 = 1 << (v21 & v22);
      if ((v26 & v25) == 0)
      {
        break;
      }

      v27 = v13;
      v18(v9, *(v13 + 48) + v23 * v17, v2);
      OUTLINED_FUNCTION_3_48();
      sub_23B4E77C0(&qword_27E135728, v28);
      v29 = sub_23B50D134();
      v30 = *v16;
      (*v16)(v9, v2);
      if (v29)
      {
        result = (v30)(v44, v2);
        v13 = v27;
        goto LABEL_12;
      }

      v21 = v23 + 1;
      v13 = v27;
    }

    v31 = v44;
    *(v43 + 8 * v24) = v26 | v25;
    result = (*v36)(*(v13 + 48) + v23 * v17, v31, v2);
    v32 = *(v13 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    *(v13 + 16) = v34;
LABEL_12:
    v14 = v41;
    a1 = v37;
    if (v41 == v39)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23B4E77C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StatisticsSpanFactory()
{
  result = qword_27E135730;
  if (!qword_27E135730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B4E787C()
{
  result = sub_23B50AEF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MonthTemperatureStatistics.init(month:averageLowTemperature:averageHighTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for MonthTemperatureStatistics();
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v9);
  v13 = *(v10 + 32);
  v13(&a4[v8], a2, v9);
  v11 = &a4[*(v7 + 24)];

  return (v13)(v11, a3, v9);
}

uint64_t MonthTemperatureStatistics.averageLowTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthTemperatureStatistics() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MonthTemperatureStatistics.averageLowTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_49() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MonthTemperatureStatistics.averageHighTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthTemperatureStatistics() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MonthTemperatureStatistics.averageHighTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_49() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t static MonthTemperatureStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v2 = type metadata accessor for MonthTemperatureStatistics();
  v3 = *(v2 + 20);
  sub_23B40B418(&qword_280B42B78);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 24);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B4E7D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000023B529C40 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000023B529C60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B4E7E38(char a1)
{
  if (!a1)
  {
    return 0x68746E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000016;
}

uint64_t sub_23B4E7E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E7D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E7EBC(uint64_t a1)
{
  v2 = sub_23B4E80F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4E7EF8(uint64_t a1)
{
  v2 = sub_23B4E80F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonthTemperatureStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135740, &qword_23B525348);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E80F0();
  sub_23B50D974();
  v14 = *v3;
  v22 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v15 = type metadata accessor for MonthTemperatureStatistics();
    v16 = *(v15 + 20);
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B40B418(&qword_280B42B88);
    OUTLINED_FUNCTION_2_2();
    v17 = *(v15 + 24);
    v20 = 2;
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B4E80F0()
{
  result = qword_27E135748;
  if (!qword_27E135748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135748);
  }

  return result;
}

uint64_t MonthTemperatureStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v4 = OUTLINED_FUNCTION_5(v44);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135750, &qword_23B525350);
  v12 = OUTLINED_FUNCTION_5(v45);
  v43 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = type metadata accessor for MonthTemperatureStatistics();
  v19 = OUTLINED_FUNCTION_6(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E80F0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = a1;
  v25 = v23;
  v26 = v43;
  v27 = v44;
  v48 = 0;
  v28 = v45;
  v29 = sub_23B50D724();
  v38 = v25;
  *v25 = v29;
  v47 = 1;
  sub_23B40B418(&qword_27E132090);
  sub_23B50D734();
  v30 = *(v42 + 32);
  v37 = *(v18 + 20);
  v35 = v18;
  v36 = v30;
  v30(v38 + v37, v11, v27);
  v46 = 2;
  v31 = v41;
  sub_23B50D734();
  (*(v26 + 8))(v17, v28);
  v32 = v38;
  v36(v38 + *(v35 + 24), v31, v27);
  sub_23B4E84DC(v32, v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_23B4E8540(v32);
}

uint64_t sub_23B4E84DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthTemperatureStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4E8540(uint64_t a1)
{
  v2 = type metadata accessor for MonthTemperatureStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MonthTemperatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4E86D8()
{
  result = qword_27E135758;
  if (!qword_27E135758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135758);
  }

  return result;
}

unint64_t sub_23B4E8730()
{
  result = qword_27E135760;
  if (!qword_27E135760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135760);
  }

  return result;
}

unint64_t sub_23B4E8788()
{
  result = qword_27E135768;
  if (!qword_27E135768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135768);
  }

  return result;
}

uint64_t InstantWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:sunrise:sunset:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, _BYTE *a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22)
{
  sub_23B3CF54C(a15);
  sub_23B3CF54C(a14);
  v34 = *a2;
  LOBYTE(a2) = *a7;
  v60 = *a21;
  v35 = *(a21 + 8);
  v36 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v36);
  (*(v37 + 32))(a8, a1);
  v38 = type metadata accessor for InstantWeather();
  *(a8 + v38[5]) = a9;
  *(a8 + v38[6]) = a10;
  *(a8 + v38[7]) = a11;
  *(a8 + v38[8]) = a12;
  *(a8 + v38[9]) = v34;
  v39 = (a8 + v38[10]);
  *v39 = a3;
  v39[1] = a4;
  v40 = v38[11];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v41);
  v43 = *(v42 + 32);
  v43(a8 + v40, a5, v41);
  *(a8 + v38[12]) = a13;
  v44 = v38[13];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v45);
  v47 = *(v46 + 32);
  v48 = OUTLINED_FUNCTION_64();
  v49(v48);
  v50 = v38[14];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2(v51);
  (*(v52 + 32))(a8 + v50, a6);
  *(a8 + v38[15]) = a2;
  *(a8 + v38[16]) = a16;
  v43(a8 + v38[17], a17, v41);
  v43(a8 + v38[18], a18, v41);
  v43(a8 + v38[19], a19, v41);
  v43(a8 + v38[20], a20, v41);
  v53 = a8 + v38[21];
  *v53 = v60;
  *(v53 + 8) = v35;
  v54 = v38[22];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v55);
  (*(v56 + 32))(a8 + v54, a22);
  v57 = v38[23];
  OUTLINED_FUNCTION_10_27();
  sub_23B4E8B14();
  v58 = v38[24];
  OUTLINED_FUNCTION_9_35();
  return sub_23B4E8B14();
}

uint64_t sub_23B4E8B14()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t InstantWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_65();

  return v4(v3);
}

uint64_t InstantWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t InstantWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCover.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.cloudCoverLow.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCoverLow.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.cloudCoverMid.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCoverMid.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.cloudCoverHigh.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCoverHigh.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.condition.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for InstantWeather();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t InstantWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InstantWeather();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t InstantWeather.condition.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.symbolName.getter()
{
  v1 = (v0 + *(type metadata accessor for InstantWeather() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t InstantWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InstantWeather() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InstantWeather.symbolName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.dewPoint.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.dewPoint.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.dewPoint.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t InstantWeather.humidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.precipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 52);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.precipitationIntensity.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 52);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.precipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.pressure.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 56);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.pressure.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 56);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.pressure.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 56);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.pressureTrend.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for InstantWeather();
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t InstantWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InstantWeather();
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t InstantWeather.pressureTrend.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.isDaylight.setter(char a1)
{
  result = type metadata accessor for InstantWeather();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t InstantWeather.isDaylight.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 64);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.temperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 68);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.temperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 68);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.temperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 68);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.apparentTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 72);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.apparentTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 72);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.apparentTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 72);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.highTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 76);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.highTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 76);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.highTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 76);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.lowTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 80);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.lowTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 80);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.lowTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 80);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.uvIndex.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for InstantWeather();
  v3 = (v1 + *(result + 84));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t InstantWeather.uvIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for InstantWeather();
  v5 = v1 + *(result + 84);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t InstantWeather.uvIndex.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 84);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.visibility.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t InstantWeather.visibility.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t InstantWeather.visibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 88);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.wind.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 92);
  return sub_23B4EBECC();
}

uint64_t InstantWeather.wind.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 92);
  OUTLINED_FUNCTION_10_27();
  return sub_23B4E9CCC();
}

uint64_t InstantWeather.wind.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 92);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.metadata.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for InstantWeather() + 96);
  return sub_23B4EBECC();
}

uint64_t InstantWeather.metadata.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 96);
  OUTLINED_FUNCTION_9_35();
  return sub_23B4E9CCC();
}

uint64_t sub_23B4E9CCC()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t InstantWeather.metadata.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for InstantWeather() + 96);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4E9D5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xED0000776F4C7265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F4364756F6C63 && a2 == 0xED000064694D7265;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x766F4364756F6C63 && a2 == 0xEE00686769487265;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E696F50776564 && a2 == 0xE800000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x800000023B529F60 == a2;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = sub_23B50D834();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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
      }
    }
  }
}

unint64_t sub_23B4EA3B4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x766F4364756F6C63;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x766F4364756F6C63;
      break;
    case 5:
      result = 0x6F697469646E6F63;
      break;
    case 6:
      result = 0x614E6C6F626D7973;
      break;
    case 7:
      result = 0x746E696F50776564;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 11:
      result = 0x6572757373657270;
      break;
    case 12:
      result = 0x67696C7961447369;
      break;
    case 13:
      result = 0x74617265706D6574;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x706D655468676968;
      break;
    case 16:
      result = 0x65706D6554776F6CLL;
      break;
    case 17:
      result = 0x7865646E497675;
      break;
    case 18:
      result = 0x696C696269736976;
      break;
    case 19:
      result = 1684957559;
      break;
    case 20:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4EA608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E9D5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4EA630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4EA3AC();
  *a1 = result;
  return result;
}

uint64_t sub_23B4EA658(uint64_t a1)
{
  v2 = sub_23B4EAFB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EA694(uint64_t a1)
{
  v2 = sub_23B4EAFB0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static InstantWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for InstantWeather();
  OUTLINED_FUNCTION_13_0(*(v4 + 20));
  if (!v11)
  {
    return 0;
  }

  v6 = v5;
  OUTLINED_FUNCTION_13_0(v5[6]);
  if (!v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[7]);
  if (!v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[8]);
  if (!v11 || (sub_23B3CAE4C(*(a1 + v6[9]), *(a2 + v6[9])) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[10];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v12 = v6[11];
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v13, v14, &qword_23B511AC0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[12]);
  if (!v11)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v15 = v6[13];
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v16, v17, &unk_23B5100F0);
  if ((OUTLINED_FUNCTION_37_12() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  v18 = v6[14];
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v19, v20, &qword_23B5100E8);
  if ((OUTLINED_FUNCTION_37_12() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3E5D18(*(a1 + v6[15]), *(a2 + v6[15])) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[16]) != *(a2 + v6[16]))
  {
    return 0;
  }

  v21 = v6[17];
  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  v22 = v6[18];
  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  v23 = v6[19];
  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  v24 = v6[20];
  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  v25 = v6[21];
  v26 = a1 + v25;
  v27 = *(a1 + v25);
  v28 = a2 + v25;
  if (v27 != *v28)
  {
    return 0;
  }

  v29 = *(v28 + 8);
  v30 = UVIndex.ExposureCategory.rawValue.getter(*(v26 + 8));
  v32 = v31;
  if (v30 == UVIndex.ExposureCategory.rawValue.getter(v29) && v32 == v33)
  {
  }

  else
  {
    v35 = sub_23B50D834();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v36 = v6[22];
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v37, v38, &qword_23B50EFB0);
  if ((sub_23B50D134() & 1) == 0 || !static Wind.== infix(_:_:)((a1 + v6[23]), (a2 + v6[23])))
  {
    return 0;
  }

  v39 = v6[24];

  return static WeatherMetadata.== infix(_:_:)(a1 + v39, a2 + v39);
}

uint64_t InstantWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135770, &qword_23B525520);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EAFB0();
  sub_23B50D974();
  LOBYTE(v49) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_3_50();
  sub_23B4EC328(v14, v15);
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for InstantWeather();
    v17 = *(v3 + v16[5]);
    OUTLINED_FUNCTION_14_4(1);
    v18 = *(v3 + v16[6]);
    OUTLINED_FUNCTION_14_4(2);
    v19 = *(v3 + v16[7]);
    OUTLINED_FUNCTION_14_4(3);
    v20 = *(v3 + v16[8]);
    OUTLINED_FUNCTION_14_4(4);
    LOBYTE(v49) = *(v3 + v16[9]);
    v51 = 5;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v21 = (v3 + v16[10]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v49) = 6;
    OUTLINED_FUNCTION_26();
    sub_23B50D7A4();
    v24 = v16[11];
    LOBYTE(v49) = 7;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v26, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v27 = *(v3 + v16[12]);
    OUTLINED_FUNCTION_14_4(8);
    v48[1] = v25;
    v28 = v16[13];
    LOBYTE(v49) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v29, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v30 = v16[14];
    LOBYTE(v49) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v31, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v49) = *(v3 + v16[15]);
    v51 = 11;
    sub_23B41A510();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v32 = *(v3 + v16[16]);
    LOBYTE(v49) = 12;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    v33 = v16[17];
    OUTLINED_FUNCTION_11_24();
    v34 = v16[18];
    OUTLINED_FUNCTION_11_24();
    v35 = v16[19];
    OUTLINED_FUNCTION_11_24();
    v36 = v16[20];
    OUTLINED_FUNCTION_11_24();
    v37 = (v3 + v16[21]);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 8);
    v49 = v38;
    v50 = v37;
    v51 = 17;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v39 = v16[22];
    LOBYTE(v49) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v40, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v41 = v16[23];
    LOBYTE(v49) = 19;
    type metadata accessor for Wind();
    OUTLINED_FUNCTION_26_18();
    sub_23B4EC328(v42, v43);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v44 = v16[24];
    LOBYTE(v49) = 20;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_25_13();
    sub_23B4EC328(v45, v46);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B4EAFB0()
{
  result = qword_27E135778;
  if (!qword_27E135778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135778);
  }

  return result;
}

uint64_t InstantWeather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v133 = type metadata accessor for WeatherMetadata();
  v3 = OUTLINED_FUNCTION_6(v133);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v134 = v7 - v6;
  v132 = type metadata accessor for Wind();
  v8 = OUTLINED_FUNCTION_6(v132);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v131 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v14 = OUTLINED_FUNCTION_5(v13);
  v141 = v15;
  v142 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v130 = &v127 - v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_5(v145);
  v143 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  v137 = &v127 - v24;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v146);
  v144 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  v138 = &v127 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v153 = OUTLINED_FUNCTION_5(v30);
  v154 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v153);
  v129 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v136 = &v127 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v127 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v127 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v127 - v44;
  v46 = sub_23B50AD24();
  v47 = OUTLINED_FUNCTION_5(v46);
  v147 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_27();
  v53 = v52 - v51;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135780, &qword_23B525528);
  OUTLINED_FUNCTION_5(v149);
  v139 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v57);
  v59 = &v127 - v58;
  v155 = type metadata accessor for InstantWeather();
  v60 = OUTLINED_FUNCTION_6(v155);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_27();
  v150 = a1;
  v151 = v64 - v63;
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EAFB0();
  v148 = v59;
  v66 = v152;
  sub_23B50D964();
  v140 = v46;
  if (v66)
  {
    v152 = v66;
    LOBYTE(v70) = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    LODWORD(v75) = 0;
    LODWORD(v148) = 0;
    LODWORD(v149) = 0;
  }

  else
  {
    v67 = v45;
    v128 = v42;
    v74 = v139;
    LOBYTE(v156) = 0;
    OUTLINED_FUNCTION_3_50();
    sub_23B4EC328(v68, v69);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_30_12();
    sub_23B50D734();
    v84 = v151;
    (*(v147 + 32))(v151, v53, v46);
    OUTLINED_FUNCTION_14_29(1);
    sub_23B50D704();
    v85 = v155;
    *(v84 + v155[5]) = v86;
    OUTLINED_FUNCTION_14_29(2);
    sub_23B50D704();
    *(v84 + v85[6]) = v87;
    OUTLINED_FUNCTION_14_29(3);
    sub_23B50D704();
    *(v84 + v85[7]) = v88;
    OUTLINED_FUNCTION_14_29(4);
    sub_23B50D704();
    *(v84 + v85[8]) = v89;
    v158 = 5;
    sub_23B3F0450();
    sub_23B50D734();
    *(v84 + v85[9]) = v156;
    OUTLINED_FUNCTION_14_29(6);
    v90 = sub_23B50D6E4();
    v91 = (v84 + v85[10]);
    *v91 = v90;
    v91[1] = v92;
    LOBYTE(v156) = 7;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_74();
    v73 = v67;
    v93 = v153;
    sub_23B50D734();
    v70 = (v154 + 32);
    v94 = v93;
    v75 = *(v154 + 32);
    v75(v84 + v155[11], v67, v94);
    OUTLINED_FUNCTION_14_29(8);
    sub_23B50D704();
    v152 = 0;
    *(v84 + v155[12]) = v95;
    LOBYTE(v156) = 9;
    OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_28_11();
    v152 = 0;
    v96 = OUTLINED_FUNCTION_33_10(v155[13]);
    v97(v96, v138, v146);
    LOBYTE(v156) = 10;
    OUTLINED_FUNCTION_3_8(&qword_27E132A28, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_28_11();
    v152 = 0;
    v98 = OUTLINED_FUNCTION_33_10(v155[14]);
    v99(v98, v137, v145);
    v158 = 11;
    sub_23B41A5B8();
    OUTLINED_FUNCTION_28_11();
    v152 = 0;
    *(v151 + v155[15]) = v156;
    OUTLINED_FUNCTION_14_29(12);
    v100 = sub_23B50D6F4();
    v152 = 0;
    *(v151 + v155[16]) = v100 & 1;
    OUTLINED_FUNCTION_60(13);
    v71 = v148;
    sub_23B50D734();
    v152 = 0;
    v101 = OUTLINED_FUNCTION_40_9(v155[17]);
    v72 = v153;
    v75(v101, v128, v153);
    OUTLINED_FUNCTION_60(14);
    OUTLINED_FUNCTION_30_12();
    v102 = v152;
    sub_23B50D734();
    v152 = v102;
    if (v102)
    {
      v103 = OUTLINED_FUNCTION_22_17();
      v104(v103);
      OUTLINED_FUNCTION_7_42();
      v73 = 1;
      v74 = 1;
      LODWORD(v75) = 1;
    }

    else
    {
      v105 = OUTLINED_FUNCTION_40_9(v155[18]);
      v72 = v153;
      v75(v105, v39, v153);
      OUTLINED_FUNCTION_60(15);
      OUTLINED_FUNCTION_30_12();
      v106 = v152;
      sub_23B50D734();
      v152 = v106;
      if (v106)
      {
        v107 = OUTLINED_FUNCTION_22_17();
        v108(v107);
        LODWORD(v149) = 0;
        LOBYTE(v70) = 1;
        OUTLINED_FUNCTION_13_25();
        OUTLINED_FUNCTION_32_11();
      }

      else
      {
        v109 = OUTLINED_FUNCTION_40_9(v155[19]);
        v72 = v153;
        v75(v109, v136, v153);
        OUTLINED_FUNCTION_60(16);
        OUTLINED_FUNCTION_30_12();
        v110 = v152;
        sub_23B50D734();
        v152 = v110;
        if (!v110)
        {
          v114 = OUTLINED_FUNCTION_40_9(v155[20]);
          v75(v114, v129, v153);
          v158 = 17;
          sub_23B3F04A4();
          OUTLINED_FUNCTION_28_11();
          v152 = 0;
          v115 = v157;
          v116 = v151 + v155[21];
          *v116 = v156;
          *(v116 + 8) = v115;
          LOBYTE(v156) = 18;
          OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_28_11();
          v152 = 0;
          v117 = OUTLINED_FUNCTION_33_10(v155[22]);
          v118(v117, v130);
          LOBYTE(v156) = 19;
          OUTLINED_FUNCTION_26_18();
          sub_23B4EC328(v119, v120);
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_28_11();
          v152 = 0;
          v121 = v155[23];
          OUTLINED_FUNCTION_10_27();
          sub_23B4E8B14();
          LOBYTE(v156) = 20;
          OUTLINED_FUNCTION_25_13();
          sub_23B4EC328(v122, v123);
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_28_11();
          v152 = 0;
          v124 = OUTLINED_FUNCTION_22_17();
          v125(v124);
          v126 = v155[24];
          OUTLINED_FUNCTION_9_35();
          sub_23B4E8B14();
          sub_23B4EBECC();
          __swift_destroy_boxed_opaque_existential_1(v150);
          return sub_23B4EBF1C();
        }

        v111 = OUTLINED_FUNCTION_22_17();
        v112(v111);
        LOBYTE(v70) = 1;
        OUTLINED_FUNCTION_13_25();
        OUTLINED_FUNCTION_32_11();
        LODWORD(v149) = v113;
      }
    }
  }

  v76 = v151;
  result = __swift_destroy_boxed_opaque_existential_1(v150);
  if (v70)
  {
    result = (*(v147 + 8))(v76, v140);
    if (v71)
    {
      goto LABEL_6;
    }
  }

  else if (v71)
  {
LABEL_6:
    v78 = *(v76 + v155[10] + 8);

    if ((v72 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (!v72)
  {
LABEL_7:
    if (v73)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = (*(v154 + 8))(v76 + v155[11], v153);
  if (v73)
  {
LABEL_8:
    v79 = v155;
    result = (*(v144 + 8))(v76 + v155[13], v146);
    if ((v74 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v79 = v155;
  if (!v74)
  {
LABEL_9:
    if (v75)
    {
      goto LABEL_10;
    }

LABEL_17:
    if (!v148)
    {
      goto LABEL_21;
    }

    v80 = *(v154 + 8);
LABEL_19:
    v82 = OUTLINED_FUNCTION_39_11(v79[18]);
    result = v80(v82);
    if (v149)
    {
      goto LABEL_23;
    }

    return result;
  }

LABEL_16:
  result = (*(v143 + 8))(v76 + v79[14], v145);
  if ((v75 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v80 = *(v154 + 8);
  v81 = OUTLINED_FUNCTION_39_11(v79[17]);
  result = v80(v81);
  if (v148)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v149)
  {
    v80 = *(v154 + 8);
LABEL_23:
    v83 = OUTLINED_FUNCTION_39_11(v79[19]);
    return v80(v83);
  }

  return result;
}

uint64_t sub_23B4EBECC()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t sub_23B4EBF1C()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t InstantWeather.conditionDescription.getter()
{
  v1 = type metadata accessor for InstantWeather();
  v3 = *(v0 + *(v1 + 36));
  return WeatherCondition.description(isDaylight:)(*(v0 + *(v1 + 64)))._countAndFlagsBits;
}

uint64_t InstantWeather.debugDescription.getter()
{
  v1 = v0;
  BYTE8(v13) = 0;
  sub_23B50D5C4();
  MEMORY[0x23EE9D460](0x3D65746164, 0xE500000000000000);
  v2 = type metadata accessor for InstantWeather();
  v3 = v0 + v2[24];
  sub_23B50AD24();
  OUTLINED_FUNCTION_3_50();
  sub_23B4EC328(v4, v5);
  v6 = sub_23B50D824();
  MEMORY[0x23EE9D460](v6);

  MEMORY[0x23EE9D460](0xD000000000000011, 0x800000023B538A90);
  v7 = v3 + *(type metadata accessor for WeatherMetadata() + 20);
  v8 = sub_23B50D824();
  MEMORY[0x23EE9D460](v8);

  MEMORY[0x23EE9D460](0x7469646E6F63202CLL, 0xEC0000003D6E6F69);
  *&v13 = *(v1 + v2[9]);
  v9 = WeatherCondition.description.getter();
  MEMORY[0x23EE9D460](v9);

  MEMORY[0x23EE9D460](0x7265706D6574202CLL, 0xEE003D6572757461);
  v10 = v2[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0);
  v11 = sub_23B50D824();
  MEMORY[0x23EE9D460](v11);

  return *(&v13 + 1);
}

uint64_t InstantWeather.isExpired.getter()
{
  v1 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  sub_23B50B9D4();
  sub_23B50B994();
  v10 = v0 + *(type metadata accessor for InstantWeather() + 96);
  v11 = *(type metadata accessor for WeatherMetadata() + 20);
  OUTLINED_FUNCTION_3_50();
  sub_23B4EC328(v12, v13);
  LOBYTE(v10) = sub_23B50D114();
  (*(v4 + 8))(v9, v1);
  return v10 & 1;
}

uint64_t sub_23B4EC328(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for InstantWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4EC450()
{
  result = qword_27E135788;
  if (!qword_27E135788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135788);
  }

  return result;
}

unint64_t sub_23B4EC4A8()
{
  result = qword_27E135790;
  if (!qword_27E135790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135790);
  }

  return result;
}

unint64_t sub_23B4EC500()
{
  result = qword_27E135798;
  if (!qword_27E135798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135798);
  }

  return result;
}

uint64_t WeatherServiceOptions.init(dailyDateInterval:hourlyDateInterval:dailyRelativeRange:hourlyRelativeRange:periodicRelativeRange:marineHourlyRelativeRange:instantQueryOptions:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a3[1];
  v45 = *a3;
  v43 = *(a3 + 16);
  v41 = a4[1];
  v42 = *a4;
  v40 = *(a4 + 16);
  v47 = a6[1];
  v48 = *a6;
  v46 = *(a6 + 16);
  v10 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = type metadata accessor for WeatherServiceOptions();
  v15 = v14[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v19 = a9 + v14[6];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = a9 + v14[7];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 2;
  v21 = v14[8];
  type metadata accessor for WeatherServicePeriodicRelativeRange();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = a9 + v14[9];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 2;
  v27 = v14[10];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v14[11];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_23B39A5A8(a1, a9, &qword_27E131F00, &unk_23B5257B0);
  sub_23B39A5A8(a2, a9 + v15, &qword_27E131F00, &unk_23B5257B0);
  *v19 = v45;
  *(v19 + 8) = v44;
  *(v19 + 16) = v43;
  *v20 = v42;
  *(v20 + 8) = v41;
  *(v20 + 16) = v40;
  sub_23B39A5A8(a5, a9 + v21, &qword_27E131F58, &qword_23B50F290);
  *v26 = v48;
  *(v26 + 8) = v47;
  *(v26 + 16) = v46;
  sub_23B39A5A8(a7, a9 + v27, &qword_27E131F70, &unk_23B5192B0);
  return sub_23B39A5A8(a8, a9 + v32, &qword_27E131F68, &unk_23B50F2A0);
}

double WeatherServiceOptions.dailyRelativeRange.getter()
{
  v0 = OUTLINED_FUNCTION_6_28();
  *&result = OUTLINED_FUNCTION_0_57(*(v0 + 24)).n128_u64[0];
  return result;
}

double WeatherServiceOptions.hourlyRelativeRange.getter()
{
  v0 = OUTLINED_FUNCTION_6_28();
  *&result = OUTLINED_FUNCTION_0_57(*(v0 + 28)).n128_u64[0];
  return result;
}

double WeatherServiceOptions.marineHourlyRelativeRange.getter()
{
  v0 = OUTLINED_FUNCTION_6_28();
  *&result = OUTLINED_FUNCTION_0_57(*(v0 + 36)).n128_u64[0];
  return result;
}

uint64_t static WeatherMetadata.mock()@<X0>(char *a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_12();
  v60 = v3;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v4);
  v62 = &v56 - v5;
  OUTLINED_FUNCTION_2_9();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v64 = &v56 - v10;
  v11 = sub_23B50AB34();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  v58 = v17;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v18);
  v59 = &v56 - v19;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v20);
  v63 = &v56 - v21;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v22);
  v65 = &v56 - v23;
  v24 = sub_23B50AD24();
  v25 = OUTLINED_FUNCTION_5(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  v66 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v56 - v32;
  if (qword_27E131C18 != -1)
  {
    swift_once();
  }

  v61 = v9;
  v34 = __swift_project_value_buffer(v24, qword_27E15A730);
  v35 = *(v27 + 16);
  v35(v33, v34, v24);
  if (qword_27E131C20 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v24, qword_27E15A748);
  v37 = v66;
  v35(v66, v36, v24);
  v38 = type metadata accessor for WeatherMetadata();
  v39 = v67;
  v56 = v38[8];
  v57 = v33;
  *&v67[v56] = 0;
  v35(v39, v33, v24);
  v35(&v39[v38[5]], v37, v24);
  *&v39[v38[6]] = 0x4042A95810624DD3;
  *&v39[v38[7]] = 0xC05E800000000000;
  v40 = v64;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v40);
  if (v42)
  {
    __break(1u);
    goto LABEL_11;
  }

  v43 = *(v14 + 32);
  v43(v65, v40, v11);
  v44 = v61;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v44);
  v45 = v62;
  if (v42)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v43(v63, v44, v11);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v45);
  v46 = v60;
  if (v42)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43(v59, v45, v11);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v46);
  if (!v42)
  {
    v47 = *(v27 + 8);
    v47(v66, v24);
    v47(v57, v24);
    v43(v58, v46, v11);
    v48 = type metadata accessor for WeatherAttribution.Storage();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_23B42E3E8();
    v52 = v51;
    v53 = v67;
    v54 = v56;
    v55 = *&v67[v56];

    *&v53[v54] = v52;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t DayPrecipitationSummary.init(date:precipitationAmount:snowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for DayPrecipitationSummary();
  v11 = *(v10 + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v12);
  v16 = *(v13 + 32);
  v16(a4 + v11, a2, v12);
  v14 = a4 + *(v10 + 24);

  return (v16)(v14, a3, v12);
}

uint64_t DayPrecipitationSummary.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t DayPrecipitationSummary.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t DayPrecipitationSummary.precipitationAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationSummary() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DayPrecipitationSummary.precipitationAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for DayPrecipitationSummary() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

double (*DayPrecipitationSummary.precipitationAmount.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPrecipitationSummary() + 20);
  return GEOLocationCoordinate2DMake;
}

uint64_t DayPrecipitationSummary.snowfallAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationSummary() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DayPrecipitationSummary.snowfallAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for DayPrecipitationSummary() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

double (*DayPrecipitationSummary.snowfallAmount.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPrecipitationSummary() + 24);
  return GEOLocationCoordinate2DMake;
}

uint64_t static DayPrecipitationSummary.== infix(_:_:)()
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v0 = type metadata accessor for DayPrecipitationSummary();
  v1 = *(v0 + 20);
  sub_23B3E38E8(&qword_280B42BC0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B4ED6BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B4ED7DC(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6C6C6166776F6E73;
}

uint64_t sub_23B4ED844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4ED6BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4ED86C(uint64_t a1)
{
  v2 = sub_23B4EDAD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4ED8A8(uint64_t a1)
{
  v2 = sub_23B4EDAD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayPrecipitationSummary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1357A0, &qword_23B525818);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EDAD4();
  sub_23B50D974();
  v19 = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50);
  sub_23B50D7F4();
  if (!v1)
  {
    v12 = type metadata accessor for DayPrecipitationSummary();
    v13 = *(v12 + 20);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0);
    OUTLINED_FUNCTION_2_2();
    v14 = *(v12 + 24);
    v17 = 2;
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B4EDAD4()
{
  result = qword_27E1357A8;
  if (!qword_27E1357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357A8);
  }

  return result;
}

uint64_t DayPrecipitationSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v3 = OUTLINED_FUNCTION_5(v47);
  v43 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_23B50AD24();
  v12 = OUTLINED_FUNCTION_5(v11);
  v44 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1357B0, &qword_23B525820);
  v17 = OUTLINED_FUNCTION_5(v49);
  v45 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  v23 = type metadata accessor for DayPrecipitationSummary();
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EDAD4();
  v48 = v22;
  v30 = v50;
  sub_23B50D964();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v45;
  v40 = v28;
  v50 = a1;
  v32 = v47;
  v53 = 0;
  sub_23B402DA8(&qword_27E132008);
  v33 = v46;
  sub_23B50D734();
  (*(v44 + 32))(v40, v33, v11);
  v52 = 1;
  sub_23B3E38E8(&qword_27E131E60);
  sub_23B50D734();
  v39 = v11;
  v46 = v23;
  v34 = *(v43 + 32);
  v34(&v40[*(v23 + 20)], v10, v32);
  v51 = 2;
  v35 = v42;
  v36 = v48;
  sub_23B50D734();
  (*(v31 + 8))(v36, v49);
  v37 = v40;
  v34(&v40[*(v46 + 6)], v35, v32);
  sub_23B4EDFE0(v37, v41);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_23B4EE044(v37);
}

uint64_t sub_23B4EDFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPrecipitationSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4EE044(uint64_t a1)
{
  v2 = type metadata accessor for DayPrecipitationSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DayPrecipitationSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4EE1DC()
{
  result = qword_27E1357B8;
  if (!qword_27E1357B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357B8);
  }

  return result;
}

unint64_t sub_23B4EE234()
{
  result = qword_27E1357C0;
  if (!qword_27E1357C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357C0);
  }

  return result;
}

unint64_t sub_23B4EE28C()
{
  result = qword_27E1357C8;
  if (!qword_27E1357C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357C8);
  }

  return result;
}

uint64_t WeatherSeverity.description.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_2_48();
      goto LABEL_16;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_4_42();
      goto LABEL_16;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_2_48();
      return sub_23B50AAD4();
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      goto LABEL_16;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_5_30();
LABEL_16:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t WeatherSeverity.accessibilityDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_3_52();
      OUTLINED_FUNCTION_4_42();
      break;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      break;
    case 4:
      if (qword_280B43260 != -1)
      {
LABEL_17:
        OUTLINED_FUNCTION_0_11();
      }

LABEL_13:
      OUTLINED_FUNCTION_3_52();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_3_52();
      OUTLINED_FUNCTION_5_30();
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::WeatherSeverity_optional __swiftcall WeatherSeverity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherSeverityKind.rawValue.getter()
{
  result = 0x726F6E696DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6574617265646F6DLL;
      break;
    case 2:
      result = 0x657265766573;
      break;
    case 3:
      result = 0x656D6572747865;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::WeatherSeverityKind_optional __swiftcall WeatherSeverityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23B4EE928()
{
  result = qword_27E1357D0;
  if (!qword_27E1357D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1357D8, &qword_23B525A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357D0);
  }

  return result;
}

unint64_t sub_23B4EE990()
{
  result = qword_27E1357E0;
  if (!qword_27E1357E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357E0);
  }

  return result;
}

unint64_t sub_23B4EE9F4()
{
  result = qword_27E1357E8;
  if (!qword_27E1357E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357E8);
  }

  return result;
}

_BYTE *sub_23B4EEBC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4EECA4()
{
  result = qword_27E1357F0;
  if (!qword_27E1357F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357F0);
  }

  return result;
}

unint64_t sub_23B4EECF8()
{
  result = qword_27E1357F8;
  if (!qword_27E1357F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357F8);
  }

  return result;
}

uint64_t sub_23B4EED70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686769486863756DLL && a2 == 0xEA00000000007265;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726568676968 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265776F6CLL && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65776F4C6863756DLL && a2 == 0xE900000000000072)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_23B4EEF1C(char a1)
{
  result = 0x686769486863756DLL;
  switch(a1)
  {
    case 1:
      result = 0x726568676968;
      break;
    case 2:
      result = 0x6C616D726F6ELL;
      break;
    case 3:
      result = 0x7265776F6CLL;
      break;
    case 4:
      result = 0x65776F4C6863756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4EEFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4EED70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4EEFE4(uint64_t a1)
{
  v2 = sub_23B4EF708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF020(uint64_t a1)
{
  v2 = sub_23B4EF708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF05C(uint64_t a1)
{
  v2 = sub_23B4EF858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF098(uint64_t a1)
{
  v2 = sub_23B4EF858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF0D4(uint64_t a1)
{
  v2 = sub_23B4EF7B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF110(uint64_t a1)
{
  v2 = sub_23B4EF7B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF14C(uint64_t a1)
{
  v2 = sub_23B4EF8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF188(uint64_t a1)
{
  v2 = sub_23B4EF8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF1C4(uint64_t a1)
{
  v2 = sub_23B4EF75C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF200(uint64_t a1)
{
  v2 = sub_23B4EF75C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF23C(uint64_t a1)
{
  v2 = sub_23B4EF804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF278(uint64_t a1)
{
  v2 = sub_23B4EF804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Deviation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135800, &qword_23B525CD0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135808, &qword_23B525CD8);
  v11 = OUTLINED_FUNCTION_5(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v63 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135810, &qword_23B525CE0);
  v18 = OUTLINED_FUNCTION_5(v17);
  v61 = v19;
  v62 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_52();
  v60 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135818, &qword_23B525CE8);
  v25 = OUTLINED_FUNCTION_5(v24);
  v58 = v26;
  v59 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  v57 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135820, &qword_23B525CF0);
  v32 = OUTLINED_FUNCTION_5(v31);
  v55 = v33;
  v56 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v54 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135828, &qword_23B525CF8);
  OUTLINED_FUNCTION_5(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v54 - v45;
  v47 = *v1;
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EF708();
  sub_23B50D974();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      v70 = 1;
      sub_23B4EF858();
      v50 = v57;
      OUTLINED_FUNCTION_3_53();
      v52 = v58;
      v51 = v59;
      goto LABEL_7;
    case 2:
      v71 = 2;
      sub_23B4EF804();
      v50 = v60;
      OUTLINED_FUNCTION_3_53();
      v52 = v61;
      v51 = v62;
      goto LABEL_7;
    case 3:
      v72 = 3;
      sub_23B4EF7B0();
      v50 = v63;
      OUTLINED_FUNCTION_3_53();
      v52 = v64;
      v51 = v65;
      goto LABEL_7;
    case 4:
      v73 = 4;
      sub_23B4EF75C();
      v50 = v66;
      OUTLINED_FUNCTION_3_53();
      v52 = v67;
      v51 = v68;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      v69 = 0;
      sub_23B4EF8AC();
      sub_23B50D764();
      (*(v55 + 8))(v38, v56);
      break;
  }

  return (*v49)(v46, v39);
}

unint64_t sub_23B4EF708()
{
  result = qword_27E135830;
  if (!qword_27E135830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135830);
  }

  return result;
}

unint64_t sub_23B4EF75C()
{
  result = qword_27E135838;
  if (!qword_27E135838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135838);
  }

  return result;
}

unint64_t sub_23B4EF7B0()
{
  result = qword_27E135840;
  if (!qword_27E135840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135840);
  }

  return result;
}

unint64_t sub_23B4EF804()
{
  result = qword_27E135848;
  if (!qword_27E135848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135848);
  }

  return result;
}

unint64_t sub_23B4EF858()
{
  result = qword_27E135850;
  if (!qword_27E135850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135850);
  }

  return result;
}

unint64_t sub_23B4EF8AC()
{
  result = qword_27E135858;
  if (!qword_27E135858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135858);
  }

  return result;
}

uint64_t Deviation.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t Deviation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135860, &qword_23B525D00);
  v81 = OUTLINED_FUNCTION_5(v3);
  v82 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v87 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135868, &qword_23B525D08);
  v79 = OUTLINED_FUNCTION_5(v9);
  v80 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v86 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135870, &qword_23B525D10);
  v16 = OUTLINED_FUNCTION_5(v15);
  v77 = v17;
  v78 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_52();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135878, &qword_23B525D18);
  v23 = OUTLINED_FUNCTION_5(v22);
  v75 = v24;
  v76 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135880, &qword_23B525D20);
  OUTLINED_FUNCTION_5(v30);
  v74 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  v36 = &v69 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135888, &unk_23B525D28);
  OUTLINED_FUNCTION_5(v37);
  v85 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EF708();
  v45 = v88;
  sub_23B50D964();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v30;
  v73 = v36;
  v88 = v29;
  v46 = v86;
  v47 = v87;
  v48 = v43;
  v49 = sub_23B50D744();
  result = sub_23B40D8C8(v49, 0);
  if (v52 == v53 >> 1)
  {
    v54 = v85;
LABEL_9:
    v63 = sub_23B50D5F4();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v65 = &type metadata for Deviation;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v48, v37);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v52 >= (v53 >> 1))
  {
    __break(1u);
  }

  else
  {
    v70 = *(v51 + v52);
    v55 = sub_23B40D8C4(v52 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v71 = v55;
    if (v57 != v59 >> 1)
    {
      v54 = v85;
      v48 = v43;
      goto LABEL_9;
    }

    v60 = v84;
    v61 = v85;
    switch(v70)
    {
      case 1:
        v90 = 1;
        sub_23B4EF858();
        v46 = v88;
        OUTLINED_FUNCTION_1_44();
        swift_unknownObjectRelease();
        v68 = v75;
        v67 = v76;
        goto LABEL_15;
      case 2:
        v91 = 2;
        sub_23B4EF804();
        v46 = v83;
        OUTLINED_FUNCTION_1_44();
        swift_unknownObjectRelease();
        v68 = v77;
        v67 = v78;
        goto LABEL_15;
      case 3:
        v92 = 3;
        sub_23B4EF7B0();
        OUTLINED_FUNCTION_1_44();
        swift_unknownObjectRelease();
        v67 = v79;
        v68 = v80;
LABEL_15:
        (*(v68 + 8))(v46, v67);
        break;
      case 4:
        v93 = 4;
        sub_23B4EF75C();
        v55 = v43;
        sub_23B50D674();
        swift_unknownObjectRelease();
        (*(v82 + 8))(v47, v81);
        break;
      default:
        v89 = 0;
        sub_23B4EF8AC();
        v62 = v73;
        OUTLINED_FUNCTION_1_44();
        swift_unknownObjectRelease();
        (*(v74 + 8))(v62, v72);
        break;
    }

    (*(v61 + 8))(v55, v37);
    *v60 = v70;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

unint64_t sub_23B4F0038()
{
  result = qword_27E135890;
  if (!qword_27E135890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135890);
  }

  return result;
}

_BYTE *sub_23B4F009C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4F01CC()
{
  result = qword_27E135898;
  if (!qword_27E135898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135898);
  }

  return result;
}

unint64_t sub_23B4F0224()
{
  result = qword_27E1358A0;
  if (!qword_27E1358A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358A0);
  }

  return result;
}

unint64_t sub_23B4F027C()
{
  result = qword_27E1358A8;
  if (!qword_27E1358A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358A8);
  }

  return result;
}

unint64_t sub_23B4F02D4()
{
  result = qword_27E1358B0;
  if (!qword_27E1358B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358B0);
  }

  return result;
}

unint64_t sub_23B4F032C()
{
  result = qword_27E1358B8;
  if (!qword_27E1358B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358B8);
  }

  return result;
}

unint64_t sub_23B4F0384()
{
  result = qword_27E1358C0;
  if (!qword_27E1358C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358C0);
  }

  return result;
}

unint64_t sub_23B4F03DC()
{
  result = qword_27E1358C8;
  if (!qword_27E1358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358C8);
  }

  return result;
}

unint64_t sub_23B4F0434()
{
  result = qword_27E1358D0;
  if (!qword_27E1358D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358D0);
  }

  return result;
}

unint64_t sub_23B4F048C()
{
  result = qword_27E1358D8;
  if (!qword_27E1358D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358D8);
  }

  return result;
}

unint64_t sub_23B4F04E4()
{
  result = qword_27E1358E0;
  if (!qword_27E1358E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358E0);
  }

  return result;
}

unint64_t sub_23B4F053C()
{
  result = qword_27E1358E8;
  if (!qword_27E1358E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358E8);
  }

  return result;
}

unint64_t sub_23B4F0594()
{
  result = qword_27E1358F0;
  if (!qword_27E1358F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358F0);
  }

  return result;
}

unint64_t sub_23B4F05EC()
{
  result = qword_27E1358F8;
  if (!qword_27E1358F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358F8);
  }

  return result;
}

uint64_t MoonPhase.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_4_43();
      break;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7_44();
      break;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_3_54();
      break;
    case 4:
      if (qword_280B43260 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    case 5:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_3_54();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_10_29(0x51207473614CLL);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_4_43();
      break;
    default:
      if (qword_280B43260 != -1)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_11();
      }

LABEL_3:
      OUTLINED_FUNCTION_4_3();
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

uint64_t MoonPhase.accessibilityDescription.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_4_43();
      break;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_7_44();
      break;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_3_54();
      break;
    case 4:
      if (qword_280B43260 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    case 5:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_9_36();
      OUTLINED_FUNCTION_3_54();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_10_29(0x71207473616CLL);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_9_36();
      OUTLINED_FUNCTION_4_43();
      break;
    default:
      if (qword_280B43260 != -1)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_11();
      }

LABEL_3:
      OUTLINED_FUNCTION_1_45();
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

unint64_t MoonPhase.symbolName.getter(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 5:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::MoonPhase_optional __swiftcall MoonPhase.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23B50D664();

  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t MoonPhase.rawValue.getter(char a1)
{
  result = 7824750;
  switch(a1)
  {
    case 1:
      result = 0x7243676E69786177;
      break;
    case 2:
      result = 0x6175517473726966;
      break;
    case 3:
      result = 0x6947676E69786177;
      break;
    case 4:
      result = 1819047270;
      break;
    case 5:
      result = 0x6947676E696E6177;
      break;
    case 6:
      result = 0x726175517473616CLL;
      break;
    case 7:
      result = 0x7243676E696E6177;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B4F0D98()
{
  result = qword_27E135900;
  if (!qword_27E135900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135900);
  }

  return result;
}

WeatherKit::MoonPhase_optional sub_23B4F0E04@<W0>(Swift::String *a1@<X0>, WeatherKit::MoonPhase_optional *a2@<X8>)
{
  result.value = MoonPhase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_23B4F0E34@<X0>(uint64_t *a1@<X8>)
{
  result = MoonPhase.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23B4F0E6C()
{
  result = qword_27E135908;
  if (!qword_27E135908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E135910, &qword_23B526380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MoonPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MoonPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4F1100()
{
  result = qword_280B41A78;
  if (!qword_280B41A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A78);
  }

  return result;
}

uint64_t sub_23B4F1154()
{
  v1 = sub_23B50C7D4();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  return sub_23B50D474();
}

uint64_t static HourlyWeatherStatisticsQuery.temperature.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7B090];
  v3 = sub_23B50C7D4();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v5 = (a1 + *(result + 52));
  *v5 = sub_23B4F12CC;
  v5[1] = 0;
  return result;
}

uint64_t sub_23B4F1394()
{
  OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_7_45();
  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B4F13EC(char a1)
{
  OUTLINED_FUNCTION_11_27();
  if (a1)
  {
    v2 = 999;
  }

  else
  {
    v2 = 43;
  }

  MEMORY[0x23EE9DB40](v2);
  return sub_23B50D914();
}

uint64_t sub_23B4F1438(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_11_27();
  MEMORY[0x23EE9DB40](a1 + 1);
  return sub_23B50D914();
}

uint64_t sub_23B4F14B0(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_11_27();
  MEMORY[0x23EE9DB40](a1);
  return sub_23B50D914();
}

uint64_t sub_23B4F158C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_11_27();
  a2(v5, a1);
  return sub_23B50D914();
}

uint64_t sub_23B4F15EC(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_11_27();
  a2(a1);
  OUTLINED_FUNCTION_5_31();

  return sub_23B50D914();
}

uint64_t sub_23B4F1648()
{
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F16F4(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a2 + 1);
  return sub_23B50D914();
}

uint64_t sub_23B4F173C()
{
  OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    v1 = 999;
  }

  else
  {
    v1 = 43;
  }

  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t sub_23B4F179C()
{
  sub_23B50D8C4();
  OUTLINED_FUNCTION_7_45();
  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B4F17E0()
{
  OUTLINED_FUNCTION_6_29();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F183C(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a2);
  return sub_23B50D914();
}

uint64_t sub_23B4F18B0()
{
  OUTLINED_FUNCTION_12_26();
  v0(v3, v1);
  return sub_23B50D914();
}

uint64_t sub_23B4F18F0()
{
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F1978()
{
  sub_23B50D8C4();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1A28()
{
  OUTLINED_FUNCTION_6_29();
  if (!v0)
  {
    OUTLINED_FUNCTION_7_45();
  }

  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F1AA4()
{
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F1B28(uint64_t a1, char a2)
{
  sub_23B50D8C4();
  v3 = *&aModeled_5[8 * a2];
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1B88()
{
  OUTLINED_FUNCTION_6_29();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1BE4()
{
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F1C84()
{
  v1 = OUTLINED_FUNCTION_12_26();
  v0(v1);
  OUTLINED_FUNCTION_5_31();

  return sub_23B50D914();
}

uint64_t sub_23B4F1CD0()
{
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F1D84()
{
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_10_30();

  return sub_23B50D914();
}

uint64_t sub_23B4F1E20()
{
  OUTLINED_FUNCTION_6_29();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1EA4()
{
  OUTLINED_FUNCTION_12_26();
  v0(v1);
  OUTLINED_FUNCTION_5_31();

  return sub_23B50D914();
}

BOOL static AirQualityData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQuality();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = type metadata accessor for AirQualityData();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135998, &qword_23B526490);
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v25 = *(v24 + 56);
  sub_23B4F211C(a1, &v31 - v22);
  sub_23B4F211C(a2, &v23[v25]);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 2, v4);
  if (!EnumTagSinglePayload)
  {
    sub_23B4F211C(v23, v17);
    if (!OUTLINED_FUNCTION_13_26())
    {
      OUTLINED_FUNCTION_0_58();
      sub_23B4F25C0(&v23[v25], v10, v30);
      v28 = static AirQuality.== infix(_:_:)(v17, v10);
      sub_23B4F21E8(v10, type metadata accessor for AirQuality);
      sub_23B4F21E8(v17, type metadata accessor for AirQuality);
      OUTLINED_FUNCTION_4_44();
      return v28;
    }

    OUTLINED_FUNCTION_3_55();
    sub_23B4F21E8(v17, v27);
    goto LABEL_9;
  }

  if (EnumTagSinglePayload == 1)
  {
    if (OUTLINED_FUNCTION_13_26() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (OUTLINED_FUNCTION_13_26() != 2)
  {
LABEL_9:
    sub_23B4F2180(v23);
    return 0;
  }

  OUTLINED_FUNCTION_4_44();
  return 1;
}

uint64_t type metadata accessor for AirQualityData()
{
  result = qword_280B45DF8;
  if (!qword_280B45DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B4F211C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4F2180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135998, &qword_23B526490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4F21E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t AirQualityData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AirQuality();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359A0, &qword_23B526498);
  v12 = OUTLINED_FUNCTION_9_37(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = type metadata accessor for AirQualityData();
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4F2518();
  sub_23B50D964();
  if (!v2)
  {
    sub_23B4F256C();
    sub_23B50D734();
    if (v31)
    {
      v23 = OUTLINED_FUNCTION_8_31();
      v24(v23);
      if (v31 == 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    else
    {
      sub_23B4F292C(&qword_27E133198);
      sub_23B50D734();
      v26 = OUTLINED_FUNCTION_8_31();
      v27(v26);
      OUTLINED_FUNCTION_0_58();
      sub_23B4F25C0(v10, v21, v28);
      v25 = 0;
    }

    __swift_storeEnumTagSinglePayload(v21, v25, 2, v4);
    sub_23B4F25C0(v21, a2, type metadata accessor for AirQualityData);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B4F2518()
{
  result = qword_280B45D78;
  if (!qword_280B45D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45D78);
  }

  return result;
}

unint64_t sub_23B4F256C()
{
  result = qword_27E1359A8;
  if (!qword_27E1359A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1359A8);
  }

  return result;
}

uint64_t sub_23B4F25C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t AirQualityData.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for AirQuality();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v33[0] = v10 - v9;
  v11 = type metadata accessor for AirQualityData();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359B0, &qword_23B5264A0);
  v19 = OUTLINED_FUNCTION_9_37(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = v33 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4F2518();
  sub_23B50D974();
  sub_23B4F211C(v3, v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 2, v5);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v37 = 1;
      v36 = 0;
    }

    else
    {
      v39 = 2;
      v38 = 0;
    }

    sub_23B4F28D8();
    sub_23B50D7F4();
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    v28 = v33[0];
    sub_23B4F25C0(v17, v33[0], v29);
    v35 = 0;
    sub_23B4F28D8();
    v30 = v33[1];
    sub_23B50D7F4();
    if (!v30)
    {
      v34 = 1;
      sub_23B4F292C(&qword_280B42658);
      sub_23B50D7F4();
    }

    OUTLINED_FUNCTION_3_55();
    sub_23B4F21E8(v28, v31);
  }

  return (*(v21 + 8))(v25, v1);
}

unint64_t sub_23B4F28D8()
{
  result = qword_280B45D80[0];
  if (!qword_280B45D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B45D80);
  }

  return result;
}

uint64_t sub_23B4F292C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AirQuality();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4F2970()
{
  v0 = sub_23B50D664();

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

uint64_t sub_23B4F29C4()
{
  v0 = sub_23B50D664();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23B4F2A10(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x726F707075736E75;
}

uint64_t sub_23B4F2A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B4F2970();
  *a2 = result;
  return result;
}

uint64_t sub_23B4F2ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4F2970();
  *a1 = result;
  return result;
}

uint64_t sub_23B4F2AF4(uint64_t a1)
{
  v2 = sub_23B4F2518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4F2B30(uint64_t a1)
{
  v2 = sub_23B4F2518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4F2B6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_23B3E5BC4();
}

uint64_t sub_23B4F2B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B4F29C4();
  *a2 = result;
  return result;
}

uint64_t sub_23B4F2BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B4F2A10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B4F2CF4()
{
  v0 = type metadata accessor for AirQuality();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for AirQualityData.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AirQualityData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4F2F08()
{
  result = qword_27E1359B8;
  if (!qword_27E1359B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1359B8);
  }

  return result;
}

unint64_t sub_23B4F2F60()
{
  result = qword_27E1359C0;
  if (!qword_27E1359C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1359C0);
  }

  return result;
}

unint64_t sub_23B4F2FB8()
{
  result = qword_280B45E08;
  if (!qword_280B45E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45E08);
  }

  return result;
}

unint64_t sub_23B4F3010()
{
  result = qword_280B45E10;
  if (!qword_280B45E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45E10);
  }

  return result;
}

unint64_t sub_23B4F3064()
{
  result = qword_280B45E18;
  if (!qword_280B45E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45E18);
  }

  return result;
}

uint64_t sub_23B4F30D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23B4F30F8, 0, 0);
}

uint64_t sub_23B4F30F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_opt_self() sharedService];
  v14[5] = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [v15 defaultTraits];
    v14[6] = v17;
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = v17;
      v20 = [v18 sharedConfiguration];
      if (!v20)
      {
        __break(1u);
        return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
      }

      v28 = sub_23B391C9C(v20);
      if (!v29)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      sub_23B4F44F4(v28, v29, v19);
    }

    v30 = v14[3];
    [v30 coordinate];
    v32 = v31;
    [v30 coordinate];
    v34 = [v16 ticketForReverseGeocodeCoordinate:objc_msgSend(v30 shiftLocationsIfNeeded:sel_shiftedReferenceFrame) ^ 1 preserveOriginalLocation:1 traits:{v17, v32, v33}];
    v14[7] = v34;
    if (v34)
    {
      v35 = v34;
      v36 = v14[4];
      v37 = swift_task_alloc();
      v14[8] = v37;
      *(v37 + 16) = v35;
      *(v37 + 24) = v36;
      v38 = *(MEMORY[0x277D85A40] + 4);
      v39 = swift_task_alloc();
      v14[9] = v39;
      v27 = type metadata accessor for ReverseGeocodeResult();
      *v39 = v14;
      v39[1] = sub_23B4F33A4;
      v20 = v14[2];
      v25 = sub_23B4F44EC;
      v24 = 0x800000023B539290;
      v21 = 0;
      v22 = 0;
      v23 = 0xD000000000000019;
      v26 = v37;

      return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
    }

    sub_23B4F4498();
    v42 = swift_allocError();
    OUTLINED_FUNCTION_1_46(v42, v43);
  }

  else
  {
    sub_23B4F4498();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_1_46(v40, v41);
  }

  v44 = v14[1];

  return v44();
}

uint64_t sub_23B4F33A4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23B4F3530;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23B4F34C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B4F34C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B4F3530()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_unknownObjectRelease();

  v5 = v0[10];
  v6 = v0[1];

  return v6();
}

uint64_t GeocodeService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_23B4F35E0(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodeResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E135A00, &qword_23B526838);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_23B4F4720(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    return sub_23B50D344();
  }

  else
  {
    sub_23B437AC8(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    return sub_23B50D354();
  }
}

void sub_23B4F3728(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E135A00, &qword_23B526838);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  v57 = type metadata accessor for ReverseGeocodeResult();
  v10 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_23B50AEF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v52 - v18;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v19 = sub_23B50CDF4();
  __swift_project_value_buffer(v19, qword_280B4E9F0);
  v20 = sub_23B50CDD4();
  v21 = sub_23B50D4C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v55 = a2;
    v23 = v9;
    v24 = a3;
    v25 = v22;
    *v22 = 0;
    _os_log_impl(&dword_23B38D000, v20, v21, "Handling geo map service response", v22, 2u);
    v26 = v25;
    a3 = v24;
    v9 = v23;
    a2 = v55;
    MEMORY[0x23EE9E260](v26, -1, -1);
  }

  if (a2)
  {
    sub_23B4F4498();
    v27 = swift_allocError();
    *v28 = a2;
    v59 = v27;
    v29 = a2;
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    sub_23B50D344();
    return;
  }

  if (!a1 || !sub_23B407FE0(a1))
  {
    sub_23B4F4498();
    v46 = swift_allocError();
    *v47 = 1;
    v59 = v46;
    goto LABEL_22;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x23EE9D840](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v31 = [objc_opt_self() placemarkWithGEOMapItem_];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 timeZone];
    if (v33)
    {
      v34 = v33;
      v35 = v58;
      sub_23B50AED4();

      swift_getObjectType();
      v53 = sub_23B50D484();
      v54 = a3;
      v37 = v36;
      v38 = *(v14 + 16);
      v55 = v30;
      v39 = v56;
      v38(v56, v35, v13);
      v40 = sub_23B4F45FC(v32);
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0;
      }

      v52 = v42;
      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE000000000000000;
      }

      *v12 = v53;
      v12[1] = v37;
      v44 = v57;
      (*(v14 + 32))(v12 + *(v57 + 20), v39, v13);
      v45 = (v12 + *(v44 + 24));
      *v45 = v52;
      v45[1] = v43;
      sub_23B3FE9CC(v12, v9);
      swift_storeEnumTagMultiPayload();
      sub_23B4F35E0(v9);
      swift_unknownObjectRelease();

      sub_23B4D7720(v9, &unk_27E135A00, &qword_23B526838);
      sub_23B437A6C(v12);
      (*(v14 + 8))(v35, v13);
    }

    else
    {
      sub_23B4F4498();
      v50 = swift_allocError();
      *v51 = 0;
      v59 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
      sub_23B50D344();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_23B4F4498();
    v48 = swift_allocError();
    *v49 = 2;
    v59 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    sub_23B50D344();
    swift_unknownObjectRelease();
  }
}

void sub_23B4F3C88(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v9 = sub_23B50CDF4();
  __swift_project_value_buffer(v9, qword_280B4E9F0);
  v10 = sub_23B50CDD4();
  v11 = sub_23B50D4C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B38D000, v10, v11, "Submitting reverse geocode ticket", v12, 2u);
    MEMORY[0x23EE9E260](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v8, v4);
  v22 = sub_23B4F4558;
  v23 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23B4F3F78;
  v21 = &block_descriptor;
  v15 = _Block_copy(&aBlock);

  v16 = sub_23B4F4018();
  v22 = GEOLocationCoordinate2DMake;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23B4F4060;
  v21 = &block_descriptor_8;
  v17 = _Block_copy(&aBlock);
  [a2 submitWithHandler:v15 auditToken:v16 timeout:30 networkActivity:v17];
  _Block_release(v17);

  _Block_release(v15);
}

uint64_t sub_23B4F3F78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359F8, &qword_23B526830);
    v4 = sub_23B50D2B4();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_23B4F4018()
{
  os_unfair_lock_lock((v0 + 16));
  sub_23B4F40B4((v0 + 24), &v2);
  os_unfair_lock_unlock((v0 + 16));
  return v2;
}

uint64_t sub_23B4F4060(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_23B4F40B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  if (*a1 == 1)
  {
    v6 = [objc_opt_self() currentConnection];
    if (v6)
    {
      sub_23B4F46B4(v6, &selRef_wd_bundleIdentifier);
      if (v7)
      {
        goto LABEL_20;
      }
    }

    v8 = objc_opt_self();
    v9 = sub_23B4F46B4([v8 mainBundle], &selRef_bundleIdentifier);
    if (!v10)
    {
      goto LABEL_10;
    }

    if (v9 == 0xD000000000000012 && v10 == 0x800000023B539320)
    {

      goto LABEL_20;
    }

    v12 = sub_23B50D834();

    if ((v12 & 1) == 0)
    {
LABEL_10:
      v13 = sub_23B4F46B4([v8 mainBundle], &selRef_bundleIdentifier);
      v4 = v14;
      if (!v14)
      {
LABEL_21:
        *a1 = v4;
        goto LABEL_22;
      }

      if (v13 == 0xD000000000000016 && v14 == 0x800000023B5392E0)
      {
      }

      else
      {
        v16 = sub_23B50D834();

        if ((v16 & 1) == 0)
        {
          v4 = 0;
          goto LABEL_21;
        }
      }
    }

LABEL_20:
    sub_23B4F4670();
    v4 = sub_23B4F42CC();
    v17 = v4;
    goto LABEL_21;
  }

LABEL_22:
  *a2 = v4;
  return sub_23B4F4660(v3);
}

id sub_23B4F42CC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_23B50D144();

  v2 = [v0 initWithProxiedApplicationBundleId_];

  return v2;
}

uint64_t GeocodeService.__deallocating_deinit()
{
  sub_23B4D7720(v0 + 24, &qword_27E1359D0, &qword_23B5267A8);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23B4F43E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23B4F4438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23B4F4498()
{
  result = qword_280B42560;
  if (!qword_280B42560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42560);
  }

  return result;
}

void sub_23B4F44F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23B50D144();

  [a3 setDisplayRegion_];
}

void sub_23B4F4558(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23B4F3728(a1, a2, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B4F45FC(void *a1)
{
  v1 = [a1 ISOcountryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23B50D164();

  return v3;
}

id sub_23B4F4660(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_23B4F4670()
{
  result = qword_27E1359F0;
  if (!qword_27E1359F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1359F0);
  }

  return result;
}

uint64_t sub_23B4F46B4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_23B50D164();

  return v4;
}

uint64_t sub_23B4F4720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E135A00, &qword_23B526838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10WeatherKit14GeocodeServiceC6Errors33_9FB5EE724A02B93EC96D60F9BC4CC6BALLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B4F47A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4F47FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_23B4F4858(void *result, int a2)
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

void sub_23B4F4C90(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C78, &qword_23B51AA68);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(*v1 + 16);
  if (v10 == v11)
  {

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v10 >= v11)
    {
      __break(1u);
    }

    else
    {
      v12 = sub_23B50AD24();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10;
      v1[1] = v10 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v8 = v17;
      v14(&v8[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_23B3E3DA8(v8, a1, &qword_27E133C78, &qword_23B51AA68);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_23B4F4E04(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v66 - v8;
  v10 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B50AEF4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 0x1A)
  {
    __break(1u);
  }

  else
  {
    v20 = byte_284E0CF00[a2 + 32];
    v70 = v16;
    v68 = v17;
    type metadata accessor for WeatherConditionSymbolMapper();
    swift_initStaticObject();
    v66 = v9;
    sub_23B50AEE4();
    v75 = v20;
    v72 = v20;
    v21 = sub_23B50A4F4(&v75, a1, 37.323, -122.0);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x2E78616D2E6E7573;
    }

    v24 = 0xEC0000006C6C6966;
    if (v22)
    {
      v24 = v22;
    }

    v73 = v24;
    v74 = v23;
    v25 = sub_23B3CAE4C(v20, 22);
    v26 = qword_284E0CF40[a2 + 4];
    CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(a1, v13, 37.323, -122.0);
    v27 = v13[*(v10 + 24)];
    v69 = v27;
    sub_23B4F5D20(v13);
    v28 = 5;
    if (!v27)
    {
      v28 = 0;
    }

    v71 = v28;
    if (v25)
    {
      v29 = 0.3;
    }

    else
    {
      v29 = 0.0;
    }

    if (v25)
    {
      v30 = 3;
    }

    else
    {
      v30 = 0;
    }

    v67 = v30;
    v31 = sub_23B50AD24();
    (*(*(v31 - 8) + 16))(a3, a1, v31);
    v32 = objc_opt_self();
    v33 = [v32 fahrenheit];
    v34 = type metadata accessor for HourWeather();
    v35 = v34[12];
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    sub_23B50A9B4();
    v36 = objc_opt_self();
    v37 = [v36 inches];
    v38 = v34[17];
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    v39 = [v36 inches];
    v40 = a3 + v34[18];
    sub_23B50A9B4();
    v41 = [objc_opt_self() inchesOfMercury];
    v42 = v34[20];
    sub_23B3924C0(0, &qword_280B43398, 0x277CCAE38);
    sub_23B50A9B4();
    v43 = [v32 fahrenheit];
    v44 = a3 + v34[22];
    sub_23B50A9B4();
    v45 = [v32 fahrenheit];
    v46 = a3 + v34[23];
    sub_23B50A9B4();
    v47 = [v36 miles];
    v48 = a3 + v34[25];
    sub_23B50A9B4();
    v49 = [objc_opt_self() degrees];
    v50 = (a3 + v34[26]);
    v51 = type metadata accessor for Wind();
    v52 = v51[5];
    sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
    sub_23B50A9B4();
    v53 = objc_opt_self();
    v54 = [v53 kilometersPerHour];
    v55 = v51[6];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    v56 = [v53 kilometersPerHour];
    v57 = v66;
    sub_23B50A9B4();
    (*(v68 + 8))(v19, v70);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    v59 = v57;
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
    v60 = v51[7];
    __swift_storeEnumTagSinglePayload(&v50[v60], 1, 1, v58);
    *v50 = 4;
    sub_23B4983E4(v59, &v50[v60]);
    *(a3 + v34[5]) = 0x3FC999999999999ALL;
    *(a3 + v34[6]) = 0x3FC999999999999ALL;
    *(a3 + v34[7]) = 0x3FC999999999999ALL;
    *(a3 + v34[8]) = 0x3FC999999999999ALL;
    v61 = (a3 + v34[9]);
    *v61 = vdupq_n_s64(0x3FC999999999999AuLL);
    v61[1].i64[0] = 0x3FC999999999999ALL;
    *(a3 + v34[10]) = v72;
    v62 = (a3 + v34[11]);
    v63 = v73;
    *v62 = v74;
    v62[1] = v63;
    *(a3 + v34[13]) = 0x3FE199999999999ALL;
    LOBYTE(v63) = v69;
    *(a3 + v34[14]) = v69;
    *(a3 + v34[15]) = v67;
    *(a3 + v34[16]) = v29;
    *(a3 + v34[21]) = 0;
    v64 = a3 + v34[19];
    *v64 = 0x3FC999999999999ALL;
    *(v64 + 8) = 0;
    v65 = a3 + v34[24];
    *v65 = v71;
    *(v65 + 8) = v63;
  }
}

uint64_t static HourWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133830, &qword_23B518D08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  static Forecast<>.mock()((&v16 - v8));
  v10 = *v9;
  v11 = *(*v9 + 16);
  v12 = type metadata accessor for HourWeather();
  v13 = v12;
  if (v11)
  {
    sub_23B4F56D0(v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)), v5);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v14, 1, v13);
  sub_23B4F5734(v9);
  result = __swift_getEnumTagSinglePayload(v5, 1, v13);
  if (result != 1)
  {
    return sub_23B4F566C(v5, a1);
  }

  __break(1u);
  return result;
}