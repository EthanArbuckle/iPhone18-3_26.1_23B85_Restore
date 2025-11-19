uint64_t sub_23B486A94(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D84F90];
  while (v1)
  {
    v3 = v1 & -v1;
    v1 ^= v3;
    switch(v3)
    {
      case 1:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v28;
        }

        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_23B3AE984(v4 > 1, v5 + 1, 1, v2);
          v2 = v29;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = 1;
        break;
      case 2:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v26;
        }

        v19 = *(v2 + 16);
        v18 = *(v2 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_23B3AE984(v18 > 1, v19 + 1, 1, v2);
          v2 = v27;
        }

        *(v2 + 16) = v19 + 1;
        *(v2 + v19 + 32) = 5;
        break;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_16;
      case 4:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v30;
        }

        v21 = *(v2 + 16);
        v20 = *(v2 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23B3AE984(v20 > 1, v21 + 1, 1, v2);
          v2 = v31;
        }

        *(v2 + 16) = v21 + 1;
        *(v2 + v21 + 32) = 3;
        break;
      case 8:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v24;
        }

        v17 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_23B3AE984(v16 > 1, v17 + 1, 1, v2);
          v2 = v25;
        }

        *(v2 + 16) = v17 + 1;
        *(v2 + v17 + 32) = 2;
        break;
      default:
        if (v3 == 16)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
            v2 = v32;
          }

          v23 = *(v2 + 16);
          v22 = *(v2 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_23B3AE984(v22 > 1, v23 + 1, 1, v2);
            v2 = v33;
          }

          *(v2 + 16) = v23 + 1;
          *(v2 + v23 + 32) = 10;
        }

        else if (v3 == 32)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
            v2 = v34;
          }

          v7 = *(v2 + 16);
          v6 = *(v2 + 24);
          if (v7 >= v6 >> 1)
          {
            sub_23B3AE984(v6 > 1, v7 + 1, 1, v2);
            v2 = v35;
          }

          *(v2 + 16) = v7 + 1;
          *(v2 + v7 + 32) = 0;
        }

        else
        {
LABEL_16:
          if (qword_280B43440 != -1)
          {
            swift_once();
          }

          v8 = sub_23B50CDF4();
          __swift_project_value_buffer(v8, qword_280B4E9D8);
          v9 = sub_23B50CDD4();
          v10 = sub_23B50D4B4();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v37 = v12;
            *v11 = 136446210;
            v13 = sub_23B50D184();
            v15 = sub_23B391F1C(v13, v14, &v37);

            *(v11 + 4) = v15;
            _os_log_impl(&dword_23B38D000, v9, v10, "Unknown default; availableDataSets=%{public}s", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v12);
            MEMORY[0x23EE9E260](v12, -1, -1);
            MEMORY[0x23EE9E260](v11, -1, -1);
          }
        }

        break;
    }
  }

  return v2;
}

uint64_t sub_23B486F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  return a2;
}

uint64_t sub_23B486F7C(uint64_t *a1)
{
  v3 = sub_23B50B7B4();
  OUTLINED_FUNCTION_3(v3);
  return sub_23B3A2BC8(*a1, *(v1 + 16), v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

uint64_t sub_23B486FF8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_23B50AD24() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23B483150(a1, a2, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_23B4870D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_65();
  v8(v7);
  return a2;
}

uint64_t sub_23B48712C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MonthlyWeatherStatistics.init(months:baselineStartDate:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for MonthlyWeatherStatistics();
  v8 = *(v7 + 52);
  v9 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v9);
  (*(v10 + 32))(&a4[v8], a2);
  return sub_23B3CA20C(a3, &a4[*(v7 + 56)]);
}

uint64_t MonthlyWeatherStatistics.months.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MonthlyWeatherStatistics.baselineStartDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t MonthlyWeatherStatistics.baselineStartDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

BOOL static MonthlyWeatherStatistics.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v8 = (sub_23B50D324() & 1) != 0 && (v6 = type metadata accessor for MonthlyWeatherStatistics(), v7 = *(v6 + 52), (sub_23B50ACD4() & 1) != 0) && static WeatherMetadata.== infix(_:_:)(a1 + *(v6 + 56), a2 + *(v6 + 56));
  return v8;
}

uint64_t sub_23B487480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7368746E6F6DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B536030 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_23B487594(char a1)
{
  if (!a1)
  {
    return 0x7368746E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x617461646174656DLL;
}

uint64_t sub_23B4875EC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B487594(*v1);
}

uint64_t sub_23B4875FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_23B487480(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B487630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B487684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MonthlyWeatherStatistics.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v26 = *(a2 + 16);
  v27 = v5;
  v25 = a2;
  v30 = v26;
  v31 = v5;
  type metadata accessor for MonthlyWeatherStatistics.CodingKeys();
  OUTLINED_FUNCTION_3_36();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v30 = *v3;
  v32 = 0;
  sub_23B50D304();
  v29 = v27;
  swift_getWitnessTable();
  v15 = v28;
  sub_23B50D7F4();
  if (!v15)
  {
    v16 = v25;
    v17 = *(v25 + 52);
    LOBYTE(v30) = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_4_22();
    sub_23B478FAC(v18, v19);
    OUTLINED_FUNCTION_6_15();
    v20 = *(v16 + 56);
    LOBYTE(v30) = 2;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_2_29();
    sub_23B478FAC(v21, v22);
    OUTLINED_FUNCTION_6_15();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t MonthlyWeatherStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v55 = type metadata accessor for WeatherMetadata();
  v11 = OUTLINED_FUNCTION_6(v55);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v54 = v14;
  v15 = sub_23B50AD24();
  v16 = OUTLINED_FUNCTION_5(v15);
  v58 = v17;
  v59 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v57 = v20;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  type metadata accessor for MonthlyWeatherStatistics.CodingKeys();
  OUTLINED_FUNCTION_3_36();
  swift_getWitnessTable();
  v62 = sub_23B50D754();
  v21 = OUTLINED_FUNCTION_5(v62);
  v56 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v50 - v25;
  v60 = a2;
  v61 = a3;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v27 = type metadata accessor for MonthlyWeatherStatistics();
  v28 = OUTLINED_FUNCTION_5(v27);
  v52 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v50 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v63 = v26;
  v35 = v64;
  sub_23B50D964();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v56;
  v36 = v57;
  v51 = v33;
  v64 = a1;
  v39 = v58;
  v38 = v59;
  sub_23B50D304();
  v70 = 0;
  v65 = v61;
  swift_getWitnessTable();
  sub_23B50D734();
  v61 = v66;
  *v51 = v66;
  LOBYTE(v66) = 1;
  OUTLINED_FUNCTION_4_22();
  sub_23B478FAC(v40, v41);
  v42 = v36;
  sub_23B50D734();
  v60 = v27;
  v43 = v51;
  (*(v39 + 32))(v51 + *(v27 + 52), v42, v38);
  LOBYTE(v66) = 2;
  OUTLINED_FUNCTION_2_29();
  sub_23B478FAC(v44, v45);
  v46 = v54;
  sub_23B50D734();
  (*(v37 + 8))(v63, v62);
  v47 = v60;
  sub_23B3CA20C(v46, v43 + *(v60 + 56));
  v48 = v52;
  (*(v52 + 16))(v53, v43, v47);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return (*(v48 + 8))(v43, v47);
}

BOOL sub_23B487E24(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static MonthlyWeatherStatistics.== infix(_:_:)(a1, a2);
}

uint64_t sub_23B487F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B487FD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MonthlyWeatherStatistics.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B488000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MonthlyWeatherStatistics.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B488028(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B48809C(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B48809C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  MonthlyWeatherStatistics.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B488158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B4881C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B48824C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_40();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B4882B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = MonthlyWeatherStatistics.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B4883A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B4883F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B488470(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static Forecast<>.mock()@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for DayWeather();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B50AD24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C70, &qword_23B51AA60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  if (qword_27E131C10 != -1)
  {
    swift_once();
  }

  v17 = *(qword_27E15A728 + 16);
  v36 = 0;
  v37 = 0;
  v35 = v17;
  v18 = (v6 + 32);
  v19 = (v6 + 8);

  for (i = MEMORY[0x277D84F90]; ; sub_23B48945C(v4, i + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24))
  {
    sub_23B4F4C90(v13);
    sub_23B488914(v13, v16);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C78, &qword_23B51AA68);
    if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
    {
      break;
    }

    v22 = *v16;
    (*v18)(v9, v16 + *(v21 + 48), v5);
    sub_23B488984(v9, v22, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F579C(0, *(i + 16) + 1, 1, i);
      i = v25;
    }

    v24 = *(i + 16);
    v23 = *(i + 24);
    if (v24 >= v23 >> 1)
    {
      sub_23B4F579C(v23 > 1, v24 + 1, 1, i);
      i = v26;
    }

    (*v19)(v9, v5);
    *(i + 16) = v24 + 1;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v28 = v33;
  result = static WeatherMetadata.mock()(v33 + v27[13]);
  *v28 = i;
  v30 = (v28 + v27[14]);
  *v30 = 0;
  v30[1] = 0;
  *(v28 + v27[15]) = 0;
  *(v28 + v27[16]) = 0;
  v31 = v28 + v27[17];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  return result;
}

{
  v33 = a1;
  v1 = type metadata accessor for HourWeather();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B50AD24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C70, &qword_23B51AA60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  if (qword_27E131C10 != -1)
  {
    swift_once();
  }

  v17 = *(qword_27E15A728 + 24);
  v36 = 0;
  v37 = 0;
  v35 = v17;
  v18 = (v6 + 32);
  v19 = (v6 + 8);

  for (i = MEMORY[0x277D84F90]; ; sub_23B4F566C(v4, i + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24))
  {
    sub_23B4F4C90(v13);
    sub_23B3E3DA8(v13, v16, &qword_27E133C70, &qword_23B51AA60);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C78, &qword_23B51AA68);
    if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
    {
      break;
    }

    v22 = *v16;
    (*v18)(v9, v16 + *(v21 + 48), v5);
    sub_23B4F4E04(v9, v22, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3A3A48(0, *(i + 16) + 1, 1, i, sub_23B411FC4, type metadata accessor for HourWeather, type metadata accessor for HourWeather);
      i = v25;
    }

    v24 = *(i + 16);
    v23 = *(i + 24);
    if (v24 >= v23 >> 1)
    {
      sub_23B3A3A48(v23 > 1, v24 + 1, 1, i, sub_23B411FC4, type metadata accessor for HourWeather, type metadata accessor for HourWeather);
      i = v26;
    }

    (*v19)(v9, v5);
    *(i + 16) = v24 + 1;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v28 = v33;
  result = static WeatherMetadata.mock()(v33 + v27[13]);
  *v28 = i;
  v30 = (v28 + v27[14]);
  *v30 = 0;
  v30[1] = 0;
  *(v28 + v27[15]) = 0;
  *(v28 + v27[16]) = 0;
  v31 = v28 + v27[17];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  return result;
}

uint64_t sub_23B488914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C70, &qword_23B51AA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B488984(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v95 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v95 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  v27 = sub_23B50AEF4();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 0xA)
  {
    __break(1u);
  }

  else
  {
    v96 = v20;
    v33 = byte_284E0D048[a2 + 32];
    v101 = v29;
    v99 = v30;
    type metadata accessor for WeatherConditionSymbolMapper();
    swift_initStaticObject();
    v100 = v9;
    sub_23B50AEE4();
    v108 = v33;
    v102 = v33;
    v34 = sub_23B50A4F4(&v108, a1, 37.323, -122.0);
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0x2E78616D2E6E7573;
    }

    v37 = 0xEC0000006C6C6966;
    if (v35)
    {
      v37 = v35;
    }

    v103 = v37;
    v104 = v36;
    v38 = sub_23B3CAE4C(v33, 22);
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 0;
    }

    v105 = v39;
    if (v38)
    {
      v40 = 0.3;
    }

    else
    {
      v40 = 0.0;
    }

    v41 = sub_23B50AD24();
    v98 = v32;
    v42 = a1;
    v43 = v41;
    (*(*(v41 - 8) + 16))(a3, v42);
    v44 = qword_284E0D078[a2 + 4];
    v45 = objc_opt_self();
    v95 = v17;
    v46 = v26;
    v47 = v45;
    v107 = v23;
    v48 = [v45 fahrenheit];
    v49 = type metadata accessor for DayWeather();
    v50 = v49[7];
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    v106 = v13;
    sub_23B50A9B4();
    sub_23B50B9D4();
    v97 = v46;
    sub_23B50B994();
    v51 = v43;
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v43);
    v52 = qword_284E0D0F0[a2 + 4];
    v53 = [v47 fahrenheit];
    v54 = a3 + v49[9];
    sub_23B50A9B4();
    v55 = v107;
    sub_23B50ABC4();
    v56 = v51;
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v51);
    v57 = objc_opt_self();
    v58 = [v57 inches];
    v59 = v49[18];
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    v60 = [v57 inches];
    v61 = a3 + v49[19];
    sub_23B50A9B4();
    static PrecipitationAmountByType.mock()(a3 + v49[20]);
    static SunEvents.mock()(a3 + v49[21]);
    v62 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v51);
    v63 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v51);
    v64 = (a3 + v49[22]);
    v65 = type metadata accessor for MoonEvents();
    v66 = *(v65 + 20);
    __swift_storeEnumTagSinglePayload(&v64[v66], 1, 1, v56);
    v67 = *(v65 + 24);
    __swift_storeEnumTagSinglePayload(&v64[v67], 1, 1, v56);
    *v64 = 2;
    sub_23B3C24A8(v62, &v64[v66], &qword_27E131E18, &unk_23B50F710);
    sub_23B3C24A8(v63, &v64[v67], &qword_27E131E18, &unk_23B50F710);
    v68 = [objc_opt_self() degrees];
    v69 = (a3 + v49[28]);
    v70 = type metadata accessor for Wind();
    v71 = v70[5];
    sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
    sub_23B50A9B4();
    v72 = objc_opt_self();
    v73 = [v72 kilometersPerHour];
    v74 = v70[6];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    v75 = [v72 kilometersPerHour];
    v76 = v106;
    sub_23B50A9B4();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
    v78 = v70[7];
    __swift_storeEnumTagSinglePayload(&v69[v78], 1, 1, v77);
    *v69 = 4;
    sub_23B3C24A8(v76, &v69[v78], &qword_27E132048, &qword_23B510110);
    v79 = [v72 kilometersPerHour];
    sub_23B50A9B4();
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
    v80 = [v72 kilometersPerHour];
    v81 = a3 + v49[30];
    sub_23B50A9B4();
    v82 = [v72 kilometersPerHour];
    v83 = a3 + v49[31];
    sub_23B50A9B4();
    v84 = [v72 kilometersPerHour];
    v85 = a3 + v49[32];
    sub_23B50A9B4();
    static DayPartForecast.mock()(a3 + v49[33]);
    static DayPartForecast.mock()(a3 + v49[34]);
    (*(v99 + 8))(v98, v101);
    v86 = type metadata accessor for DayPartForecast();
    v87 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v86);
    v88 = v49[8];
    __swift_storeEnumTagSinglePayload(a3 + v88, 1, 1, v56);
    v89 = v49[10];
    __swift_storeEnumTagSinglePayload(a3 + v89, 1, 1, v56);
    v90 = v49[29];
    __swift_storeEnumTagSinglePayload(a3 + v90, 1, 1, v77);
    v91 = v49[35];
    __swift_storeEnumTagSinglePayload(a3 + v91, 1, 1, v86);
    *(a3 + v49[5]) = v102;
    v92 = (a3 + v49[6]);
    v93 = v103;
    *v92 = v104;
    v92[1] = v93;
    sub_23B3C24A8(v97, a3 + v88, &qword_27E131E18, &unk_23B50F710);
    sub_23B3C24A8(v107, a3 + v89, &qword_27E131E18, &unk_23B50F710);
    *(a3 + v49[11]) = 0x3FC999999999999ALL;
    *(a3 + v49[12]) = 0x3FF0000000000000;
    *(a3 + v49[13]) = 0x3FB999999999999ALL;
    *(a3 + v49[14]) = 0x3FF0000000000000;
    *(a3 + v49[15]) = 0x3FB999999999999ALL;
    *(a3 + v49[16]) = v105;
    *(a3 + v49[17]) = v40;
    v94 = a3 + v49[23];
    *v94 = 5;
    *(v94 + 8) = 1;
    sub_23B3C24A8(v106, a3 + v90, &qword_27E132048, &qword_23B510110);
    sub_23B3C24A8(v87, a3 + v91, &qword_27E132050, &qword_23B510140);
    *(a3 + v49[24]) = 0x3FF0000000000000;
    *(a3 + v49[25]) = 0;
    *(a3 + v49[26]) = 0x3FF0000000000000;
    *(a3 + v49[27]) = 0;
  }
}

uint64_t static DayWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  static Forecast<>.mock()((&v16 - v8));
  v10 = *v9;
  v11 = *(*v9 + 16);
  v12 = type metadata accessor for DayWeather();
  v13 = v12;
  if (v11)
  {
    sub_23B4894C0(v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)), v5);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v14, 1, v13);
  sub_23B489524(v9);
  result = __swift_getEnumTagSinglePayload(v5, 1, v13);
  if (result != 1)
  {
    return sub_23B48945C(v5, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B48945C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayWeather();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4894C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayWeather();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B489524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TideEvents.init(date:events:hours:closestWaterLocation:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 32))(a5, a1);
  v16 = type metadata accessor for TideEvents();
  *(a5 + v16[5]) = a2;
  *(a5 + v16[6]) = a3;
  v17 = (a5 + v16[7]);
  *v17 = a6;
  v17[1] = a7;
  v18 = a5 + v16[8];

  return sub_23B3CA20C(a4, v18);
}

uint64_t TideEvents.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t TideEvents.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t TideEvents.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for TideEvents() + 20));
}

uint64_t TideEvents.events.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for TideEvents() + 20);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TideEvents.events.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for TideEvents() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t TideEvents.hours.getter()
{
  v1 = *(v0 + *(type metadata accessor for TideEvents() + 24));
}

uint64_t TideEvents.hours.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for TideEvents() + 24);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TideEvents.hours.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for TideEvents() + 24);
  return OUTLINED_FUNCTION_44();
}

double TideEvents.closestWaterLocation.getter()
{
  v1 = v0 + *(type metadata accessor for TideEvents() + 28);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TideEvents.closestWaterLocation.setter(double a1, double a2)
{
  result = type metadata accessor for TideEvents();
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TideEvents.closestWaterLocation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for TideEvents() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t TideEvents.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TideEvents() + 32);

  return sub_23B3CA078(v3, a1);
}

uint64_t TideEvents.metadata.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for TideEvents() + 32);

  return sub_23B407020(v0, v2);
}

uint64_t TideEvents.metadata.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for TideEvents() + 32);
  return OUTLINED_FUNCTION_44();
}

void MinuteSummary.init(date:expirationDate:precipitation:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_17();
  v9 = OUTLINED_FUNCTION_23_11(v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_18_15(v9);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_2_32();
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_14();
  v17(v16);
  sub_23B3CF890(v0, v1 + v4);
  *(v1 + *(v2 + 24)) = v3;
  *(v1 + *(v2 + 28)) = v3;
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_26_3();
}

uint64_t MinuteSummary.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t MinuteSummary.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t MinuteSummary.expirationDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for MinuteSummary() + 20);

  return sub_23B3C7DF4(v2, v0);
}

uint64_t MinuteSummary.expirationDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for MinuteSummary() + 20);

  return sub_23B3CF890(v0, v2);
}

uint64_t MinuteSummary.expirationDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteSummary() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.precipitation.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteSummary();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t MinuteSummary.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MinuteSummary();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t MinuteSummary.precipitation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteSummary() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.precipitationKind.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteSummary();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t MinuteSummary.precipitationKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MinuteSummary();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MinuteSummary.precipitationKind.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteSummary() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.precipitationChance.setter(double a1)
{
  result = type metadata accessor for MinuteSummary();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MinuteSummary.precipitationChance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteSummary() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.apparentPrecipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteSummary();
  v3 = (v1 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t MinuteSummary.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MinuteSummary();
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t MinuteSummary.apparentPrecipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteSummary() + 36);
  return OUTLINED_FUNCTION_44();
}

void MinuteSummary.init(date:expirationDate:precipitation:precipitationKind:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_17();
  v5 = *v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = type metadata accessor for MinuteSummary();
  v10 = OUTLINED_FUNCTION_18_15(v9);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_2_32();
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_14();
  v17(v16);
  sub_23B3CF890(v0, v1 + v3);
  *(v1 + *(v2 + 28)) = v5;
  *(v1 + *(v2 + 24)) = 0;
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_26_3();
}

void MinuteSummary.init(date:expirationDate:precipitationKind:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_17();
  v9 = OUTLINED_FUNCTION_23_11(v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_18_15(v9);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_2_32();
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_14();
  v17(v16);
  sub_23B3CF890(v0, v1 + v4);
  *(v1 + *(v2 + 28)) = v3;
  *(v1 + *(v2 + 24)) = 0;
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B489FDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
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
        v8 = a1 == 0xD000000000000011 && 0x800000023B5360A0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2)
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

unint64_t sub_23B48A1DC(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B48A2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B489FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48A2E4(uint64_t a1)
{
  v2 = sub_23B48A904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48A320(uint64_t a1)
{
  v2 = sub_23B48A904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MinuteSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for MinuteSummary();
  v23 = v22[5];
  v24 = *(v16 + 48);
  sub_23B3C7DF4(a1 + v23, v21);
  sub_23B3C7DF4(a2 + v23, &v21[v24]);
  OUTLINED_FUNCTION_46(v21);
  if (v25)
  {
    OUTLINED_FUNCTION_46(&v21[v24]);
    if (v25)
    {
      sub_23B398890(v21, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_12;
    }
  }

  else
  {
    sub_23B3C7DF4(v21, v2);
    OUTLINED_FUNCTION_46(&v21[v24]);
    if (!v25)
    {
      (*(v8 + 32))(v13, &v21[v24], v5);
      OUTLINED_FUNCTION_0_41();
      sub_23B48B188(v26, v27);
      v28 = sub_23B50D134();
      v29 = *(v8 + 8);
      v29(v13, v5);
      v29(v2, v5);
      sub_23B398890(v21, &qword_27E131E18, &unk_23B50F710);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      if ((sub_23B3CFF58(*(a1 + v22[6]), *(a2 + v22[6])) & 1) == 0 || (sub_23B3CFF58(*(a1 + v22[7]), *(a2 + v22[7])) & 1) == 0 || *(a1 + v22[8]) != *(a2 + v22[8]))
      {
        return 0;
      }

      v30 = v22[9];
      v31 = (a1 + v30);
      v32 = *(a1 + v30 + 8);
      v33 = a2 + v30;
      v34 = *(v33 + 8);
      if (v32 == 3)
      {
        if (v34 != 3)
        {
          return 0;
        }
      }

      else
      {
        v35 = v34 != 3 && *v31 == *v33;
        if (!v35 || (sub_23B3E71A0(v32, v34) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    (*(v8 + 8))(v2, v5);
  }

  sub_23B398890(v21, &qword_27E131E20, &qword_23B51E340);
  return 0;
}

uint64_t MinuteSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C80, &qword_23B51AAA8);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48A904();
  sub_23B50D974();
  LOBYTE(v22) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_41();
  sub_23B48B188(v14, v15);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for MinuteSummary();
    v17 = v16[5];
    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
    LOBYTE(v22) = *(v3 + v16[6]);
    v24 = 2;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_13_17();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    LOBYTE(v22) = *(v3 + v16[7]);
    v24 = 3;
    OUTLINED_FUNCTION_13_17();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v18 = *(v3 + v16[8]);
    LOBYTE(v22) = 4;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v19 = (v3 + v16[9]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v22 = v20;
    v23 = v19;
    v24 = 5;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_13_17();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B48A904()
{
  result = qword_27E133C88;
  if (!qword_27E133C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133C88);
  }

  return result;
}

uint64_t MinuteSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = sub_23B50AD24();
  v9 = OUTLINED_FUNCTION_5(v8);
  v51 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v50 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C90, &qword_23B51AAB0);
  v48 = OUTLINED_FUNCTION_5(v15);
  v49 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47_2();
  v20 = type metadata accessor for MinuteSummary();
  v21 = OUTLINED_FUNCTION_6(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27();
  v26 = v25 - v24;
  v54 = *(v27 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
  v31 = v26;
  v32 = v26 + v20[9];
  *v32 = 0;
  *(v32 + 8) = 3;
  v34 = a1[3];
  v33 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_23B48A904();
  v52 = v2;
  v35 = v53;
  sub_23B50D964();
  if (v35)
  {
    v39 = v54;
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_23B398890(v31 + v39, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v53 = v32;
    LOBYTE(v56) = 0;
    OUTLINED_FUNCTION_0_41();
    sub_23B48B188(v36, v37);
    v38 = v48;
    OUTLINED_FUNCTION_10_20();
    sub_23B50D734();
    (*(v51 + 32))(v31, v50, v8);
    LOBYTE(v56) = 1;
    OUTLINED_FUNCTION_10_20();
    sub_23B50D6D4();
    sub_23B3CF890(v7, v31 + v54);
    v58 = 2;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_5_23();
    OUTLINED_FUNCTION_10_20();
    sub_23B50D734();
    v40 = v31;
    *(v31 + v20[6]) = v56;
    v58 = 3;
    OUTLINED_FUNCTION_5_23();
    OUTLINED_FUNCTION_10_20();
    sub_23B50D734();
    *(v31 + v20[7]) = v56;
    LOBYTE(v56) = 4;
    OUTLINED_FUNCTION_10_20();
    sub_23B50D704();
    v41 = v49;
    *(v40 + v20[8]) = v42;
    v58 = 5;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_5_23();
    OUTLINED_FUNCTION_10_20();
    sub_23B50D6D4();
    (*(v41 + 8))(v52, v38);
    v43 = v57;
    v44 = v53;
    *v53 = v56;
    *(v44 + 8) = v43;
    sub_23B3E889C(v40, v47);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_23B3E8900(v40);
  }
}

uint64_t MinuteSummary.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_0_41();
  sub_23B48B188(v13, v14);
  sub_23B50D0E4();
  v15 = type metadata accessor for MinuteSummary();
  sub_23B3C7DF4(v0 + v15[5], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v5 + 32))(v10, v1, v2);
    sub_23B50D8E4();
    sub_23B50D0E4();
    (*(v5 + 8))(v10, v2);
  }

  v16 = *(v0 + v15[6]);
  sub_23B3CFAAC();
  v17 = *(v0 + v15[7]);
  sub_23B3CFAAC();
  v18 = *(v0 + v15[8]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v18);
  v19 = (v0 + v15[9]);
  v20 = *(v19 + 8);
  if (v20 == 3)
  {
    return sub_23B50D8E4();
  }

  v22 = *v19;
  sub_23B50D8E4();
  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x23EE9DB70](v23);
  sub_23B50D1C4();
}

uint64_t MinuteSummary.hashValue.getter()
{
  sub_23B50D8C4();
  MinuteSummary.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B48B104()
{
  sub_23B50D8C4();
  MinuteSummary.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B48B188(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MinuteSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B48B2D8()
{
  result = qword_27E133CA0;
  if (!qword_27E133CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CA0);
  }

  return result;
}

unint64_t sub_23B48B330()
{
  result = qword_27E133CA8;
  if (!qword_27E133CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CA8);
  }

  return result;
}

unint64_t sub_23B48B388()
{
  result = qword_27E133CB0;
  if (!qword_27E133CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CB0);
  }

  return result;
}

uint64_t PeriodicForecasts.init(metadata:forecasts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B3CA20C(a1, a3);
  result = type metadata accessor for PeriodicForecasts();
  *(a3 + *(result + 20)) = a2;
  return result;
}

WeatherKit::PeriodicForecast __swiftcall PeriodicForecast.init(periodLength:periods:)(Swift::Int periodLength, Swift::OpaquePointer periods)
{
  v2->_rawValue = periodLength;
  v2[1]._rawValue = periods._rawValue;
  result.periods = periods;
  result.periodLength = periodLength;
  return result;
}

uint64_t PeriodicForecasts.forecasts.getter()
{
  v1 = *(v0 + *(type metadata accessor for PeriodicForecasts() + 20));
}

WeatherKit::PeriodicForecast_optional __swiftcall PeriodicForecasts.forecast(forPeriod:)(Swift::Int forPeriod)
{
  v4 = v1;
  v5 = type metadata accessor for PeriodicForecasts();
  v8 = *(v2 + *(v5 + 20));
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      *v4 = 0;
      v4[1] = 0;
      goto LABEL_8;
    }

    v11 = v9 + 2;
    v12 = *v9;
    v9 += 2;
  }

  while (v12 != forPeriod);
  v13 = *(v11 - 1);
  *v4 = forPeriod;
  v4[1] = v13;

LABEL_8:
  result.value.periods._rawValue = v6;
  result.value.periodLength = v5;
  result.is_nil = v7;
  return result;
}

uint64_t sub_23B48B518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473616365726F66 && a2 == 0xE900000000000073)
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

uint64_t sub_23B48B5E8(char a1)
{
  if (a1)
  {
    return 0x7473616365726F66;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_23B48B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B48B518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48B654(uint64_t a1)
{
  v2 = sub_23B48B914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48B690(uint64_t a1)
{
  v2 = sub_23B48B914();

  return MEMORY[0x2821FE720](a1, v2);
}

void static PeriodicForecasts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static WeatherMetadata.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for PeriodicForecasts() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_23B3DFE28();
  }
}

uint64_t PeriodicForecasts.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CB8, &qword_23B51ACD0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48B914();
  sub_23B50D974();
  v19 = 0;
  type metadata accessor for WeatherMetadata();
  OUTLINED_FUNCTION_1_25();
  sub_23B48C76C(v14, v15);
  OUTLINED_FUNCTION_4_29();
  sub_23B50D7F4();
  if (!v2)
  {
    v18 = *(v3 + *(type metadata accessor for PeriodicForecasts() + 20));
    v17[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CC8, &qword_23B51ACD8);
    sub_23B48BCC4(&qword_27E133CD0, sub_23B48B968);
    OUTLINED_FUNCTION_4_29();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B48B914()
{
  result = qword_27E133CC0;
  if (!qword_27E133CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CC0);
  }

  return result;
}

unint64_t sub_23B48B968()
{
  result = qword_27E133CD8;
  if (!qword_27E133CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CD8);
  }

  return result;
}

uint64_t PeriodicForecasts.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for WeatherMetadata();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CE0, &qword_23B51ACE0);
  v10 = OUTLINED_FUNCTION_5(v9);
  v32 = v11;
  v33 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for PeriodicForecasts();
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48B914();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v22;
  v25 = v32;
  v37 = 0;
  OUTLINED_FUNCTION_1_25();
  sub_23B48C76C(v26, v27);
  v28 = v33;
  sub_23B50D734();
  sub_23B3CA20C(v34, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CC8, &qword_23B51ACD8);
  v36 = 1;
  sub_23B48BCC4(&qword_27E133CE8, sub_23B48BD3C);
  OUTLINED_FUNCTION_3_37();
  sub_23B50D734();
  (*(v25 + 8))(v16, v28);
  *(v24 + *(v17 + 20)) = v35;
  sub_23B48BD90(v24, v31, type metadata accessor for PeriodicForecasts);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B48BDF0(v24, type metadata accessor for PeriodicForecasts);
}

uint64_t sub_23B48BCC4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133CC8, &qword_23B51ACD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B48BD3C()
{
  result = qword_27E133CF0;
  if (!qword_27E133CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CF0);
  }

  return result;
}

uint64_t sub_23B48BD90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B48BDF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B48BE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C646F69726570 && a2 == 0xEC0000006874676ELL;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000)
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

uint64_t sub_23B48BF54(char a1)
{
  if (a1)
  {
    return 0x73646F69726570;
  }

  else
  {
    return 0x654C646F69726570;
  }
}

uint64_t sub_23B48BF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B48BE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48BFC4(uint64_t a1)
{
  v2 = sub_23B48C220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48C000(uint64_t a1)
{
  v2 = sub_23B48C220();

  return MEMORY[0x2821FE720](a1, v2);
}

void static PeriodicForecast.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[1];
    v3 = a1[1];
    sub_23B3E0068();
  }
}

uint64_t PeriodicForecast.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CF8, &qword_23B51ACE8);
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *v1;
  v15[0] = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48C220();
  sub_23B50D974();
  v17 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v15[1] = v15[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D08, &qword_23B51ACF0);
    sub_23B48C274(&qword_27E133D10, &qword_27E132078);
    OUTLINED_FUNCTION_4_29();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v11, v4);
}

unint64_t sub_23B48C220()
{
  result = qword_27E133D00;
  if (!qword_27E133D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D00);
  }

  return result;
}

uint64_t sub_23B48C274(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D08, &qword_23B51ACF0);
    sub_23B48C76C(a2, type metadata accessor for DayPartForecast);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PeriodicForecast.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D18, &qword_23B51ACF8);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48C220();
  sub_23B50D964();
  if (!v2)
  {
    v19 = 0;
    v14 = sub_23B50D724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D08, &qword_23B51ACF0);
    v18 = 1;
    sub_23B48C274(&qword_27E133D20, &qword_27E1320C0);
    OUTLINED_FUNCTION_3_37();
    sub_23B50D734();
    (*(v7 + 8))(v12, v5);
    v15 = v17[1];
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void PeriodicForecasts.hash(into:)()
{
  WeatherMetadata.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for PeriodicForecasts() + 20));

  sub_23B4093F8();
}

uint64_t PeriodicForecasts.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for PeriodicForecasts() + 20));
  sub_23B4093F8();
  return sub_23B50D914();
}

uint64_t sub_23B48C5CC(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  sub_23B4093F8();
  return sub_23B50D914();
}

uint64_t PeriodicForecast.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x23EE9DB40](*v1);

  return sub_23B409550(a1, v3);
}

uint64_t PeriodicForecast.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  sub_23B409550(v4, v2);
  return sub_23B50D914();
}

uint64_t sub_23B48C6CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  sub_23B409550(v4, v2);
  return sub_23B50D914();
}

uint64_t sub_23B48C76C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B48C7B8()
{
  result = qword_27E133D30;
  if (!qword_27E133D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D30);
  }

  return result;
}

_BYTE *sub_23B48C82C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B48C90C()
{
  result = qword_27E133D38;
  if (!qword_27E133D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D38);
  }

  return result;
}

unint64_t sub_23B48C964()
{
  result = qword_27E133D40;
  if (!qword_27E133D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D40);
  }

  return result;
}

unint64_t sub_23B48C9BC()
{
  result = qword_27E133D48;
  if (!qword_27E133D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D48);
  }

  return result;
}

unint64_t sub_23B48CA14()
{
  result = qword_27E133D50;
  if (!qword_27E133D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D50);
  }

  return result;
}

unint64_t sub_23B48CA6C()
{
  result = qword_27E133D58;
  if (!qword_27E133D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D58);
  }

  return result;
}

unint64_t sub_23B48CAC4()
{
  result = qword_27E133D60;
  if (!qword_27E133D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D60);
  }

  return result;
}

uint64_t static WeatherServiceLastFetched.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  v11 = *(*(Fetched - 8) + 64);
  MEMORY[0x28223BE20](Fetched - 8);
  OUTLINED_FUNCTION_27();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D68, &qword_23B51B100);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v20 = *(v19 + 56);
  sub_23B3CE870(a1, &v25 - v17);
  sub_23B3CE870(a2, &v18[v20]);
  OUTLINED_FUNCTION_4_0(v18);
  if (!v22)
  {
    sub_23B3CE870(v18, v14);
    OUTLINED_FUNCTION_4_0(&v18[v20]);
    if (!v22)
    {
      (*(v5 + 32))(v9, &v18[v20], v4);
      v21 = sub_23B50ACD4();
      v23 = *(v5 + 8);
      v23(v9, v4);
      v23(v14, v4);
      sub_23B48CDB4(v18);
      return v21 & 1;
    }

    (*(v5 + 8))(v14, v4);
LABEL_9:
    sub_23B48CD4C(v18);
    v21 = 0;
    return v21 & 1;
  }

  OUTLINED_FUNCTION_4_0(&v18[v20]);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_23B48CDB4(v18);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_23B48CD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D68, &qword_23B51B100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B48CDB4(uint64_t a1)
{
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  (*(*(Fetched - 8) + 8))(a1, Fetched);
  return a1;
}

uint64_t Forecast<>.summaries.getter()
{
  if (*(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 64)))
  {
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v2 = sub_23B50CDF4();
  __swift_project_value_buffer(v2, qword_280B4E9D8);
  v3 = sub_23B50CDD4();
  v4 = sub_23B50D4C4();
  if (OUTLINED_FUNCTION_27_11(v4))
  {
    v5 = OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_36_6(v5);
    OUTLINED_FUNCTION_17_14(&dword_23B38D000, v6, v7, "Missing summaries for minute forecast.");
    OUTLINED_FUNCTION_9_11();
  }

  return MEMORY[0x277D84F90];
}

void Forecast<>.init(_:summary:conditions:summaries:metadata:)()
{
  OUTLINED_FUNCTION_28_8();
  *v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_20_14(v4);
  OUTLINED_FUNCTION_121(v0 + *(v1 + 68));
}

void Forecast.init(_:metadata:marineLocation:)(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  *a3 = a1;
  v6 = OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_40_5(v6);
  OUTLINED_FUNCTION_21_13();
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
}

uint64_t Forecast<>.conditions.getter()
{
  if (*(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 60)))
  {
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v2 = sub_23B50CDF4();
  __swift_project_value_buffer(v2, qword_280B4E9D8);
  v3 = sub_23B50CDD4();
  v4 = sub_23B50D4C4();
  if (OUTLINED_FUNCTION_27_11(v4))
  {
    v5 = OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_36_6(v5);
    OUTLINED_FUNCTION_17_14(&dword_23B38D000, v6, v7, "Missing conditions for minute forecast.");
    OUTLINED_FUNCTION_9_11();
  }

  return MEMORY[0x277D84F90];
}

uint64_t Forecast<>.isExpired.getter()
{
  v1 = v0;
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_23B50B9D4();
  sub_23B50B994();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 52);
  v7 = v1 + *(type metadata accessor for WeatherMetadata() + 20);
  sub_23B48F844(&qword_280B43110, MEMORY[0x277CC9578]);
  LOBYTE(v6) = sub_23B50D114();
  v8 = OUTLINED_FUNCTION_31_7();
  v9(v8);
  return v6 & 1;
}

uint64_t Forecast.forecast.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*Forecast.metadata.modify(uint64_t a1, uint64_t a2))()
{
  result = GEOLocationCoordinate2DMake;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t Forecast.minuteSummary.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

__n128 Forecast.marineLocation.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 68));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

void Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)()
{
  OUTLINED_FUNCTION_28_8();
  *v0 = v2;
  v3 = OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_20_14(v3);
  OUTLINED_FUNCTION_121(v0 + *(v1 + 68));
}

uint64_t static Forecast.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((sub_23B50D324() & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_42_6();
  if (!static WeatherMetadata.== infix(_:_:)(a1 + v6[13], a2 + v6[13]))
  {
    return 0;
  }

  v7 = v6[14];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v6[15];
  v14 = *(a2 + v13);
  if (*(a1 + v13))
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *(a2 + v13);

    sub_23B3E132C();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v6[16];
  v19 = *(a2 + v18);
  if (*(a1 + v18))
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *(a2 + v18);

    sub_23B3E17B4();
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    v23 = v6[17];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 16);
    v26 = (a2 + v23);
    if (v25)
    {
      if ((v26[2] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v26[2])
      {
        return 0;
      }

      if (*v24 != *v26 || v24[1] != v26[1])
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v19)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_23B48D470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473616365726F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75536574756E696DLL && a2 == 0xED00007972616D6DLL;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000023B5360C0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x75536574756E696DLL && a2 == 0xEF73656972616D6DLL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F4C656E6972616DLL && a2 == 0xEE006E6F69746163)
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

unint64_t sub_23B48D678(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
    case 4:
      result = 0x75536574756E696DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6F4C656E6972616DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B48D740(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_23B48D678(*v1);
}

uint64_t sub_23B48D750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_23B48D470(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B48D784@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_23B3DEE2C();
  *a2 = result;
  return result;
}

uint64_t sub_23B48D7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B48D80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Forecast.encode(to:)()
{
  OUTLINED_FUNCTION_107();
  v3 = v0;
  v5 = v4;
  v21 = *(v6 + 16);
  v22 = *(v6 + 32);
  v20 = v6;
  type metadata accessor for Forecast.CodingKeys();
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  v7 = sub_23B50D804();
  OUTLINED_FUNCTION_5(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_127();
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_23B50D974();
  v23 = *v3;
  sub_23B50D304();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v1)
  {
    v14 = v20[13];
    OUTLINED_FUNCTION_37_6();
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v15, v16);
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
    v17 = (v3 + v20[14]);
    v18 = *v17;
    v19 = v17[1];
    sub_23B50D774();
    v24 = *(v3 + v20[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48F88C();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D794();
    v25 = *(v3 + v20[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48F940();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D794();
    OUTLINED_FUNCTION_35_8((v3 + v20[17]));
    sub_23B48F9F4();
    sub_23B50D794();
  }

  (*(v9 + 8))(v2, v7);
  OUTLINED_FUNCTION_105();
}

void Forecast.init(from:)()
{
  OUTLINED_FUNCTION_107();
  v50 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v43 = v11;
  v44 = type metadata accessor for WeatherMetadata();
  v12 = OUTLINED_FUNCTION_6(v44);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v46 = v15;
  *&v54 = v8;
  *(&v54 + 1) = v6;
  v55 = v4;
  v56 = v2;
  type metadata accessor for Forecast.CodingKeys();
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  v48 = sub_23B50D754();
  OUTLINED_FUNCTION_5(v48);
  v45 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  *&v54 = v8;
  *(&v54 + 1) = v6;
  v55 = v4;
  v56 = v2;
  v49 = type metadata accessor for Forecast();
  OUTLINED_FUNCTION_5(v49);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v51 = (&v42 - v27);
  v52 = v10;
  v28 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v47 = v21;
  v29 = v50;
  sub_23B50D964();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    v30 = v46;
    sub_23B50D304();
    v53 = v6;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_18_16();
    sub_23B50D734();
    v31 = v51;
    *v51 = v54;
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v32, v33);
    sub_23B50D734();
    v34 = v49;
    sub_23B3CA20C(v30, v31 + v49[13]);
    LOBYTE(v54) = 2;
    v35 = sub_23B50D6B4();
    v36 = (v31 + v34[14]);
    *v36 = v35;
    v36[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48FA48();
    OUTLINED_FUNCTION_18_16();
    sub_23B50D6D4();
    *(v31 + v34[15]) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48FAFC();
    OUTLINED_FUNCTION_18_16();
    sub_23B50D6D4();
    *(v31 + v34[16]) = v54;
    sub_23B48FBB0();
    sub_23B50D6D4();
    v38 = OUTLINED_FUNCTION_19_13();
    v39(v38);
    v40 = v55;
    v41 = v31 + v34[17];
    *v41 = v54;
    v41[16] = v40;
    (*(v23 + 16))(v43, v31, v34);
    __swift_destroy_boxed_opaque_existential_1(v52);
    (*(v23 + 8))(v31, v34);
  }

  OUTLINED_FUNCTION_105();
}

void sub_23B48E088(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  Forecast.init(from:)();
}

uint64_t sub_23B48E0C4(void *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static Forecast.== infix(_:_:)(a1, a2);
}

uint64_t sub_23B48E0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B48E158(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B48E1C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B48E21C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t Forecast<>.summary.getter()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 56));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v4 = sub_23B50CDF4();
    __swift_project_value_buffer(v4, qword_280B4E9D8);
    v5 = sub_23B50CDD4();
    v6 = sub_23B50D4C4();
    if (OUTLINED_FUNCTION_27_11(v6))
    {
      v7 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_6(v7);
      OUTLINED_FUNCTION_17_14(&dword_23B38D000, v8, v9, "Missing summary for minute forecast.");
      OUTLINED_FUNCTION_9_11();
    }

    return 0;
  }

  return v2;
}

void static Forecast.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23B3E18B4();
}

void Forecast<>.init(from:)()
{
  OUTLINED_FUNCTION_107();
  v23 = OUTLINED_FUNCTION_41_5(v2);
  v3 = OUTLINED_FUNCTION_6(v23);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DB0, &unk_23B51B178);
  OUTLINED_FUNCTION_5(v24);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_127();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6(v22);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v12 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  sub_23B48FDE0(0, &qword_27E133DB8, _s14HourCodingKeysOMa);
  OUTLINED_FUNCTION_16_11();
  sub_23B48FC1C(v13, &qword_27E133DB8, _s14HourCodingKeysOMa);
  OUTLINED_FUNCTION_24_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v14, v15);
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_39_7();
    type metadata accessor for HourWeather();
    sub_23B48F844(&qword_280B430D0, type metadata accessor for HourWeather);
    v16 = OUTLINED_FUNCTION_34_9();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v18 = OUTLINED_FUNCTION_6_18();
    v19(v18);
    *v12 = v17;
    v20 = (v12 + v22[14]);
    *v20 = 0;
    v20[1] = 0;
    *(v12 + v22[15]) = 0;
    *(v12 + v22[16]) = 0;
    OUTLINED_FUNCTION_121(v12 + v22[17]);
    sub_23B3E3DA8(v12, v21, &qword_27E131CA8, &unk_23B50ED70);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  v23 = OUTLINED_FUNCTION_41_5(v2);
  v3 = OUTLINED_FUNCTION_6(v23);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DD8, &unk_23B51B198);
  OUTLINED_FUNCTION_5(v24);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_127();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6(v22);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v12 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  sub_23B48FDE0(0, &qword_27E133DE0, _s13DayCodingKeysOMa);
  OUTLINED_FUNCTION_14_23();
  sub_23B48FC1C(v13, &qword_27E133DE0, _s13DayCodingKeysOMa);
  OUTLINED_FUNCTION_24_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v14, v15);
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_39_7();
    type metadata accessor for DayWeather();
    sub_23B48F844(&qword_280B430E8, type metadata accessor for DayWeather);
    v16 = OUTLINED_FUNCTION_34_9();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v18 = OUTLINED_FUNCTION_6_18();
    v19(v18);
    *v12 = v17;
    v20 = (v12 + v22[14]);
    *v20 = 0;
    v20[1] = 0;
    *(v12 + v22[15]) = 0;
    *(v12 + v22[16]) = 0;
    OUTLINED_FUNCTION_121(v12 + v22[17]);
    sub_23B3E3DA8(v12, v21, &qword_27E131CB0, &qword_23B516B60);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  v5 = v4;
  v27 = v6;
  v30 = type metadata accessor for WeatherMetadata();
  v7 = OUTLINED_FUNCTION_6(v30);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v31 = v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E00, &qword_23B51B1C0);
  OUTLINED_FUNCTION_5(v32);
  v29 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_127();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  OUTLINED_FUNCTION_6(v28);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v18 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_13_18();
  sub_23B48FDE0(0, &qword_27E133E08, v19);
  OUTLINED_FUNCTION_12_18();
  sub_23B48FC1C(v20, &qword_27E133E08, v3);
  sub_23B50D964();
  if (!v1)
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v21, v22);
    sub_23B50D734();
    sub_23B3CA20C(v31, v0 + v28[13]);
    type metadata accessor for HourMarineWeather();
    LOBYTE(v33) = 0;
    sub_23B48F844(&qword_27E133E18, type metadata accessor for HourMarineWeather);
    v23 = sub_23B50D6A4();
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v24 = v23;
    }

    *v0 = v24;
    sub_23B48FBB0();
    sub_23B50D694();
    (*(v29 + 8))(v2, v32);
    v25 = v0 + v28[17];
    *v25 = v33;
    v25[16] = v34;
    v26 = (v0 + v28[14]);
    *v26 = 0;
    v26[1] = 0;
    *(v0 + v28[15]) = 0;
    *(v0 + v28[16]) = 0;
    sub_23B3E3DA8(v0, v27, &qword_27E131EC0, &qword_23B50F1B8);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_105();
}

void Forecast<>.encode(to:)()
{
  OUTLINED_FUNCTION_107();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DC8, &qword_23B51B188);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_33_5();
  sub_23B48FDE0(0, &qword_27E133DB8, _s14HourCodingKeysOMa);
  OUTLINED_FUNCTION_16_11();
  sub_23B48FC1C(v6, &qword_27E133DB8, _s14HourCodingKeysOMa);
  OUTLINED_FUNCTION_30_8();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70) + 52);
  OUTLINED_FUNCTION_38_6();
  type metadata accessor for WeatherMetadata();
  OUTLINED_FUNCTION_0_42();
  sub_23B48F844(v8, v9);
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v0)
  {
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DD0, &qword_23B51B190);
    sub_23B48FC60();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
  }

  v10 = OUTLINED_FUNCTION_31_7();
  v11(v10);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DF0, &qword_23B51B1A8);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_33_5();
  sub_23B48FDE0(0, &qword_27E133DE0, _s13DayCodingKeysOMa);
  OUTLINED_FUNCTION_14_23();
  sub_23B48FC1C(v6, &qword_27E133DE0, _s13DayCodingKeysOMa);
  OUTLINED_FUNCTION_30_8();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60) + 52);
  OUTLINED_FUNCTION_38_6();
  type metadata accessor for WeatherMetadata();
  OUTLINED_FUNCTION_0_42();
  sub_23B48F844(v8, v9);
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v0)
  {
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DF8, &unk_23B51B1B0);
    sub_23B48FD2C();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
  }

  v10 = OUTLINED_FUNCTION_31_7();
  v11(v10);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E20, &qword_23B51B1C8);
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_13_18();
  sub_23B48FDE0(0, &qword_27E133E08, v10);
  OUTLINED_FUNCTION_12_18();
  sub_23B48FC1C(v11, &qword_27E133E08, v3);
  sub_23B50D974();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  v13 = *(v12 + 52);
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for WeatherMetadata();
  OUTLINED_FUNCTION_0_42();
  sub_23B48F844(v14, v15);
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v1)
  {
    v16 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E28, &qword_23B51B1D0);
    sub_23B48FE44();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_35_8((v0 + *(v12 + 68)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E40, &unk_23B51B1D8);
    sub_23B48FEF8();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B48E7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B3F168C();
  *a2 = result;
  return result;
}

uint64_t sub_23B48E7F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3F168C();
  *a1 = result;
  return result;
}

uint64_t sub_23B48E828(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DC0, &qword_27E133DB8, _s14HourCodingKeysOMa);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48E89C(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DC0, &qword_27E133DB8, _s14HourCodingKeysOMa);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B48ED58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B3F168C();
  *a2 = result;
  return result;
}

uint64_t sub_23B48ED90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3F168C();
  *a1 = result;
  return result;
}

uint64_t sub_23B48EDC0(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DE8, &qword_27E133DE0, _s13DayCodingKeysOMa);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48EE34(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DE8, &qword_27E133DE0, _s13DayCodingKeysOMa);

  return MEMORY[0x2821FE720](a1, v2);
}

double Forecast<>.closestWaterLocation.getter()
{
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8) + 68);
  if (*(v1 + 16))
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v2 = sub_23B50CDF4();
    __swift_project_value_buffer(v2, qword_280B4E9D8);
    v3 = sub_23B50CDD4();
    v4 = sub_23B50D4C4();
    if (OUTLINED_FUNCTION_27_11(v4))
    {
      v5 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_6(v5);
      OUTLINED_FUNCTION_17_14(&dword_23B38D000, v6, v7, "Missing closestWaterLocation in marine forecast.");
      OUTLINED_FUNCTION_9_11();
    }

    return 0.0;
  }

  else
  {
    result = *v1;
    v9 = *(v1 + 8);
  }

  return result;
}

uint64_t sub_23B48F4F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B3D81C4();
  *a2 = result;
  return result;
}

uint64_t sub_23B48F520@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D8210(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B48F554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3D81C4();
  *a1 = result;
  return result;
}

uint64_t sub_23B48F57C(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133E10, &qword_27E133E08, _s20HourMarineCodingKeysOMa);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48F5F0(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133E10, &qword_27E133E08, _s20HourMarineCodingKeysOMa);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Forecast<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(a2 + 16);
  sub_23B50D314();
  v7 = v2 + *(a2 + 52);
  WeatherMetadata.hash(into:)();
  v8 = (v3 + *(a2 + 56));
  if (v8[1])
  {
    v9 = *v8;
    OUTLINED_FUNCTION_84();
    sub_23B50D1C4();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  if (*(v3 + *(a2 + 60)))
  {
    OUTLINED_FUNCTION_84();
    sub_23B4083F0();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  if (*(v3 + *(a2 + 64)))
  {
    OUTLINED_FUNCTION_84();
    sub_23B408004();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  v10 = v3 + *(a2 + 68);
  if (v10[16] == 1)
  {
    return OUTLINED_FUNCTION_83();
  }

  v13 = *v10;
  v12 = *(v10 + 1);
  OUTLINED_FUNCTION_84();
  if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x23EE9DB70](v14);
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return MEMORY[0x23EE9DB70](v15);
}

uint64_t Forecast<>.hashValue.getter(uint64_t a1)
{
  sub_23B50D8C4();
  Forecast<>.hash(into:)(v3, a1);
  return sub_23B50D914();
}

uint64_t sub_23B48F7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_23B50D8C4();
  Forecast<>.hash(into:)(v6, a2);
  return sub_23B50D914();
}

uint64_t sub_23B48F844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B48F88C()
{
  result = qword_280B41A28;
  if (!qword_280B41A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48F844(&qword_280B42530, type metadata accessor for MinuteCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A28);
  }

  return result;
}

unint64_t sub_23B48F940()
{
  result = qword_280B41A30;
  if (!qword_280B41A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48F844(&qword_280B42588, type metadata accessor for MinuteSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A30);
  }

  return result;
}

unint64_t sub_23B48F9F4()
{
  result = qword_27E133D80;
  if (!qword_27E133D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D80);
  }

  return result;
}

unint64_t sub_23B48FA48()
{
  result = qword_27E133D88;
  if (!qword_27E133D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48F844(&qword_27E133D90, type metadata accessor for MinuteCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D88);
  }

  return result;
}

unint64_t sub_23B48FAFC()
{
  result = qword_27E133D98;
  if (!qword_27E133D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48F844(&qword_27E133DA0, type metadata accessor for MinuteSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D98);
  }

  return result;
}

unint64_t sub_23B48FBB0()
{
  result = qword_27E133DA8;
  if (!qword_27E133DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133DA8);
  }

  return result;
}

uint64_t sub_23B48FC1C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_23B48FDE0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B48FC60()
{
  result = qword_280B45CB0;
  if (!qword_280B45CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133DD0, &qword_23B51B190);
    sub_23B48F844(&qword_280B430E0, type metadata accessor for HourWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CB0);
  }

  return result;
}

unint64_t sub_23B48FD2C()
{
  result = qword_280B45CB8;
  if (!qword_280B45CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133DF8, &unk_23B51B1B0);
    sub_23B48F844(&qword_280B430F8, type metadata accessor for DayWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CB8);
  }

  return result;
}

void sub_23B48FDE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23B48FE44()
{
  result = qword_27E133E30;
  if (!qword_27E133E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133E28, &qword_23B51B1D0);
    sub_23B48F844(&qword_27E133E38, type metadata accessor for HourMarineWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133E30);
  }

  return result;
}

unint64_t sub_23B48FEF8()
{
  result = qword_27E133E48[0];
  if (!qword_27E133E48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133E40, &unk_23B51B1D8);
    sub_23B48F9F4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E133E48);
  }

  return result;
}

void sub_23B490060(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23B50D504();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *sub_23B4900B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23B490180(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23B49024C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Precipitation.description.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_8_20();
      goto LABEL_14;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_7_34();
      goto LABEL_14;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_11();
LABEL_13:
      OUTLINED_FUNCTION_5_0();
LABEL_14:
      OUTLINED_FUNCTION_2_12();
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Precipitation.standaloneDescription.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_5;
      }

LABEL_13:
      OUTLINED_FUNCTION_0_11();
LABEL_5:
      OUTLINED_FUNCTION_2_33();
      goto LABEL_12;
    case 5:
      if (qword_280B43260 != -1)
      {
LABEL_15:
        OUTLINED_FUNCTION_0_11();
      }

LABEL_11:
      OUTLINED_FUNCTION_1_27();
LABEL_12:
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Precipitation.accessibilityDescription.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_8_20();
      goto LABEL_14;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_7_34();
      goto LABEL_14;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_11();
LABEL_13:
      OUTLINED_FUNCTION_5_0();
LABEL_14:
      OUTLINED_FUNCTION_2_12();
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::Precipitation_optional __swiftcall Precipitation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::String_optional __swiftcall Precipitation.accessibilityDescription(with:)(Swift::Double with)
{
  v3 = sub_23B490DD8(*v1);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D839F8];
    *(v5 + 16) = xmmword_23B50ED30;
    v7 = MEMORY[0x277D83A80];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = with * 100.0;
    v3 = sub_23B50D174();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v3;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_23B490DD8(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

LABEL_12:
      swift_once();
LABEL_11:
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B491050()
{
  result = qword_27E134018;
  if (!qword_27E134018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134020, &qword_23B51BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134018);
  }

  return result;
}

unint64_t sub_23B4910B4()
{
  result = qword_280B42578;
  if (!qword_280B42578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42578);
  }

  return result;
}

uint64_t WeatherQueryMarineHourlyRelativeRange.RelativeTo.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B4911B4()
{
  result = qword_27E134028;
  if (!qword_27E134028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherQueryMarineHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

int *WeatherChange.init(date:highTemperature:lowTemperature:dayPrecipitationAmount:nightPrecipitationAmount:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v16);
  (*(v17 + 32))(a6, a1);
  if (v15 == 3)
  {
    v9 = 2;
  }

  result = type metadata accessor for WeatherChange();
  *(a6 + result[5]) = v9;
  if (v14 == 3)
  {
    v19 = 2;
  }

  else
  {
    v19 = a3;
  }

  *(a6 + result[6]) = v19;
  if (v13 == 3)
  {
    v20 = 2;
  }

  else
  {
    v20 = a4;
  }

  *(a6 + result[7]) = v20;
  if (v12 == 3)
  {
    v21 = 2;
  }

  else
  {
    v21 = a5;
  }

  *(a6 + result[8]) = v21;
  return result;
}

uint64_t sub_23B4913D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616572636E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616572636564 && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x796461657473 && a2 == 0xE600000000000000)
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

uint64_t sub_23B4914E4(char a1)
{
  if (!a1)
  {
    return 0x6573616572636E69;
  }

  if (a1 == 1)
  {
    return 0x6573616572636564;
  }

  return 0x796461657473;
}

uint64_t sub_23B491534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4913D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B49155C(uint64_t a1)
{
  v2 = sub_23B492928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491598(uint64_t a1)
{
  v2 = sub_23B492928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4915D4(uint64_t a1)
{
  v2 = sub_23B4929D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491610(uint64_t a1)
{
  v2 = sub_23B4929D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B49164C(uint64_t a1)
{
  v2 = sub_23B492A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491688(uint64_t a1)
{
  v2 = sub_23B492A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4916C4(uint64_t a1)
{
  v2 = sub_23B49297C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491700(uint64_t a1)
{
  v2 = sub_23B49297C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B491770()
{
  v1 = *v0;
  sub_23B50D8C4();
  WeatherChange.Direction.hash(into:)(v3, v1);
  return sub_23B50D914();
}

uint64_t WeatherChange.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WeatherChange.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t WeatherChange.highTemperature.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t WeatherChange.highTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherChange() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherChange.lowTemperature.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t WeatherChange.lowTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherChange() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherChange.dayPrecipitationAmount.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t WeatherChange.dayPrecipitationAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherChange() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherChange.nightPrecipitationAmount.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t WeatherChange.nightPrecipitationAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherChange() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B491AC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023B5366F0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x800000023B536710 == a2)
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

unint64_t sub_23B491C7C(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x706D655468676968;
      break;
    case 2:
      result = 0x65706D6554776F6CLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B491D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B491AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B491D64(uint64_t a1)
{
  v2 = sub_23B492094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491DA0(uint64_t a1)
{
  v2 = sub_23B492094();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static WeatherChange.== infix(_:_:)()
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for WeatherChange();
  OUTLINED_FUNCTION_7_35(*(v0 + 20));
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_35(*(v1 + 24));
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_35(*(v3 + 28));
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_35(*(v4 + 32));
  return v2 != 0;
}

uint64_t WeatherChange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134030, &qword_23B51BCB0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B492094();
  sub_23B50D974();
  v18[15] = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_1_28();
  sub_23B493220(v14, v15);
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for WeatherChange();
    v18[14] = *(v3 + v16[5]);
    v18[13] = 1;
    sub_23B4920E8();
    OUTLINED_FUNCTION_2_34();
    v18[12] = *(v3 + v16[6]);
    v18[11] = 2;
    OUTLINED_FUNCTION_2_34();
    v18[10] = *(v3 + v16[7]);
    v18[9] = 3;
    OUTLINED_FUNCTION_2_34();
    v18[8] = *(v3 + v16[8]);
    v18[7] = 4;
    OUTLINED_FUNCTION_2_34();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B492094()
{
  result = qword_280B45CC0;
  if (!qword_280B45CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CC0);
  }

  return result;
}

unint64_t sub_23B4920E8()
{
  result = qword_27E134038;
  if (!qword_27E134038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134038);
  }

  return result;
}

uint64_t WeatherChange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_5(v3);
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134040, &qword_23B51BCB8);
  v10 = OUTLINED_FUNCTION_5(v9);
  v34 = v11;
  v35 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for WeatherChange();
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B492094();
  v22 = v36;
  sub_23B50D964();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = a1;
  v23 = v32;
  v45 = 0;
  OUTLINED_FUNCTION_1_28();
  sub_23B493220(v24, v25);
  v26 = v33;
  sub_23B50D734();
  (*(v23 + 32))(v20, v26, v3);
  v43 = 1;
  sub_23B4924C8();
  OUTLINED_FUNCTION_3_38();
  v20[v15[5]] = v44;
  v41 = 2;
  OUTLINED_FUNCTION_3_38();
  v20[v15[6]] = v42;
  v39 = 3;
  OUTLINED_FUNCTION_3_38();
  v20[v15[7]] = v40;
  v37 = 4;
  OUTLINED_FUNCTION_3_38();
  v27 = OUTLINED_FUNCTION_6_20();
  v28(v27);
  v20[v15[8]] = v38;
  sub_23B49251C(v20, v31);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_23B492580(v20);
}

unint64_t sub_23B4924C8()
{
  result = qword_27E134048;
  if (!qword_27E134048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134048);
  }

  return result;
}

uint64_t sub_23B49251C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B492580(uint64_t a1)
{
  v2 = type metadata accessor for WeatherChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherChange.Direction.encode(to:)(void *a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134050, &qword_23B51BCC0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v41 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134058, &qword_23B51BCC8);
  v11 = OUTLINED_FUNCTION_5(v10);
  v39 = v12;
  v40 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134060, &qword_23B51BCD0);
  OUTLINED_FUNCTION_5(v18);
  v38 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134068, &qword_23B51BCD8);
  OUTLINED_FUNCTION_5(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v37 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B492928();
  sub_23B50D974();
  v34 = (v27 + 8);
  if (v44)
  {
    if (v44 == 1)
    {
      v46 = 1;
      sub_23B4929D0();
      OUTLINED_FUNCTION_13_19();
      (*(v39 + 8))(v17, v40);
    }

    else
    {
      v47 = 2;
      sub_23B49297C();
      v35 = v41;
      OUTLINED_FUNCTION_13_19();
      (*(v42 + 8))(v35, v43);
    }
  }

  else
  {
    v45 = 0;
    sub_23B492A24();
    OUTLINED_FUNCTION_13_19();
    (*(v38 + 8))(v24, v18);
  }

  return (*v34)(v32, v25);
}

unint64_t sub_23B492928()
{
  result = qword_27E134070;
  if (!qword_27E134070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134070);
  }

  return result;
}

unint64_t sub_23B49297C()
{
  result = qword_27E134078;
  if (!qword_27E134078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134078);
  }

  return result;
}

unint64_t sub_23B4929D0()
{
  result = qword_27E134080;
  if (!qword_27E134080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134080);
  }

  return result;
}

unint64_t sub_23B492A24()
{
  result = qword_27E134088;
  if (!qword_27E134088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134088);
  }

  return result;
}

uint64_t WeatherChange.Direction.init(from:)(uint64_t *a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134090, &qword_23B51BCE0);
  OUTLINED_FUNCTION_5(v72);
  v70 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134098, &qword_23B51BCE8);
  OUTLINED_FUNCTION_5(v69);
  v67 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1340A0, &qword_23B51BCF0);
  OUTLINED_FUNCTION_5(v13);
  v66 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1340A8, &unk_23B51BCF8);
  OUTLINED_FUNCTION_5(v20);
  v71 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v25 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B492928();
  v26 = v73;
  sub_23B50D964();
  if (v26)
  {
    goto LABEL_12;
  }

  v62 = v13;
  v63 = v19;
  v64 = v12;
  v65 = 0;
  v27 = v72;
  v73 = a1;
  v28 = sub_23B50D744();
  result = sub_23B40D8C8(v28, 0);
  v25 = v20;
  if (v31 == v32 >> 1)
  {
    goto LABEL_10;
  }

  if (v31 < (v32 >> 1))
  {
    v33 = v20;
    v34 = *(v30 + v31);
    v35 = sub_23B40D8C4(v31 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    v40 = v69;
    v41 = v70;
    if (v37 == v39 >> 1)
    {
      v25 = v34;
      if (v34)
      {
        v66 = v35;
        v42 = v65;
        if (v34 == 1)
        {
          v75 = 1;
          sub_23B4929D0();
          v43 = v64;
          OUTLINED_FUNCTION_11_17();
          sub_23B50D674();
          if (!v42)
          {
            swift_unknownObjectRelease();
            (*(v67 + 8))(v43, v40);
            v44 = OUTLINED_FUNCTION_12_19();
            v45(v44);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v73);
            return v25;
          }
        }

        else
        {
          LODWORD(v69) = v34;
          v76 = 2;
          sub_23B49297C();
          v25 = v68;
          OUTLINED_FUNCTION_11_17();
          sub_23B50D674();
          if (!v42)
          {
            swift_unknownObjectRelease();
            (*(v41 + 8))(v25, v27);
            v60 = OUTLINED_FUNCTION_12_19();
            v61(v60);
            v25 = v69;
            goto LABEL_21;
          }
        }

        v56 = OUTLINED_FUNCTION_12_19();
        v57(v56);
      }

      else
      {
        v74 = 0;
        sub_23B492A24();
        v52 = v63;
        OUTLINED_FUNCTION_11_17();
        v53 = v65;
        sub_23B50D674();
        if (!v53)
        {
          swift_unknownObjectRelease();
          (*(v66 + 8))(v52, v62);
          v58 = OUTLINED_FUNCTION_10_21();
          v59(v58, v33);
          goto LABEL_21;
        }

        v54 = OUTLINED_FUNCTION_10_21();
        v55(v54, v33);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v25 = v33;
LABEL_10:
    v46 = sub_23B50D5F4();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v48 = &type metadata for WeatherChange.Direction;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_10_21();
    v51(v50, v25);
LABEL_11:
    a1 = v73;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B49300C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = WeatherChange.Direction.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WeatherChange.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_1_28();
  sub_23B493220(v1, v2);
  sub_23B50D0E4();
  v3 = type metadata accessor for WeatherChange();
  MEMORY[0x23EE9DB40](*(v0 + v3[5]));
  MEMORY[0x23EE9DB40](*(v0 + v3[6]));
  MEMORY[0x23EE9DB40](*(v0 + v3[7]));
  return MEMORY[0x23EE9DB40](*(v0 + v3[8]));
}

uint64_t WeatherChange.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherChange.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B493144()
{
  sub_23B50D8C4();
  WeatherChange.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B493184()
{
  result = qword_27E1340B0;
  if (!qword_27E1340B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340B0);
  }

  return result;
}

uint64_t sub_23B493220(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_23B4932A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherChange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B49348C()
{
  result = qword_27E1340C0;
  if (!qword_27E1340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340C0);
  }

  return result;
}

unint64_t sub_23B4934E4()
{
  result = qword_27E1340C8;
  if (!qword_27E1340C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340C8);
  }

  return result;
}

unint64_t sub_23B49353C()
{
  result = qword_27E1340D0;
  if (!qword_27E1340D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340D0);
  }

  return result;
}

unint64_t sub_23B493594()
{
  result = qword_27E1340D8;
  if (!qword_27E1340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340D8);
  }

  return result;
}

unint64_t sub_23B4935EC()
{
  result = qword_27E1340E0;
  if (!qword_27E1340E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340E0);
  }

  return result;
}

unint64_t sub_23B493644()
{
  result = qword_27E1340E8;
  if (!qword_27E1340E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340E8);
  }

  return result;
}

unint64_t sub_23B49369C()
{
  result = qword_27E1340F0;
  if (!qword_27E1340F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340F0);
  }

  return result;
}

unint64_t sub_23B4936F4()
{
  result = qword_27E1340F8;
  if (!qword_27E1340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340F8);
  }

  return result;
}

unint64_t sub_23B49374C()
{
  result = qword_27E134100;
  if (!qword_27E134100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134100);
  }

  return result;
}

unint64_t sub_23B4937A4()
{
  result = qword_27E134108;
  if (!qword_27E134108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134108);
  }

  return result;
}

unint64_t sub_23B4937FC()
{
  result = qword_280B45CC8;
  if (!qword_280B45CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CC8);
  }

  return result;
}

unint64_t sub_23B493854()
{
  result = qword_280B45CD0[0];
  if (!qword_280B45CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B45CD0);
  }

  return result;
}

uint64_t PressureTrend.description.getter()
{
  if (!*v0)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*v0 != 1)
  {
    if (qword_280B43260 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_11();
    goto LABEL_8;
  }

  if (qword_280B43260 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

LABEL_9:
  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

uint64_t PressureTrend.accessibilityDescription.getter()
{
  if (!*v0)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*v0 != 1)
  {
    if (qword_280B43260 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_11();
    goto LABEL_8;
  }

  if (qword_280B43260 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

LABEL_9:
  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::PressureTrend_optional __swiftcall PressureTrend.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PressureTrend.rawValue.getter()
{
  v1 = 0x676E696C6C6166;
  if (*v0 != 1)
  {
    v1 = 0x796461657473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69736972;
  }
}

uint64_t sub_23B493BB4@<X0>(uint64_t *a1@<X8>)
{
  result = PressureTrend.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B493CC8()
{
  result = qword_27E134110;
  if (!qword_27E134110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134118, &qword_23B51C360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134110);
  }

  return result;
}

unint64_t sub_23B493D30()
{
  result = qword_27E134120;
  if (!qword_27E134120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134120);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PressureTrend(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B493E50()
{
  result = qword_280B42568;
  if (!qword_280B42568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42568);
  }

  return result;
}

uint64_t sub_23B493EA4(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134130, &qword_23B51C638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_23B50B604();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = *(v11 + 16);
  v28 = v2;
  v19(v14, v2, v10, v16);
  v26 = sub_23B4948CC(qword_280B43448);
  sub_23B50D564();
  sub_23B4948CC(qword_280B42CA8);
  v27 = a2;
  v20 = sub_23B50D134();
  v30 = v4;
  v21 = *(v4 + 48);
  *v9 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v11 + 32))(&v9[v21], v18, v10);
  }

  else
  {
    (*(v11 + 8))(v18, v10);
    v22 = v27;
    (v19)(&v9[v21], v27, v10);
    (v19)(v14, v22, v10);
    sub_23B50D574();
  }

  v23 = v29;
  sub_23B494910(v9, v29);
  v24 = *v23;
  (*(v11 + 32))(v31, &v23[*(v30 + 48)], v10);
  return v24;
}

uint64_t WeatherServiceCacheFitnessPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

void WeatherServiceCacheReadConfig.age.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_6_21(a1);
}

uint64_t WeatherServiceCacheReadConfig.age.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void WeatherServiceCacheReadConfig.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_6_21(a1);
}

uint64_t WeatherServiceCacheReadConfig.location.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void sub_23B4943BC()
{
  *&xmmword_280B42710 = 1;
  BYTE8(xmmword_280B42710) = 1;
  qword_280B42720 = 0;
  LOBYTE(dword_280B42728) = 1;
  *(&dword_280B42728 + 1) = 0;
  *(&word_280B4272C + 1) = 1;
}

double static WeatherServiceCacheReadConfig.unexpiredExactMatches.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_280B42708 != -1)
  {
    swift_once();
  }

  *a1 = xmmword_280B42710;
  result = *(&xmmword_280B42710 + 15);
  *(a1 + 15) = *(&xmmword_280B42710 + 15);
  return result;
}

void WeatherServiceCacheReadConfig.init(age:location:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_29(a1, a2, a3);
  *(v3 + 25) = 0;
  OUTLINED_FUNCTION_0_43(v3);
}

void WeatherServiceCacheReadConfig.init(age:location:fitnessPolicy:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v4 = *(a1 + 8);
  v7 = *(a2 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v7;
  *(a4 + 25) = 0;
  *(a4 + 29) = v6;
  OUTLINED_FUNCTION_2_35();
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_29(a1, a2, a3);
  *(v3 + 25) = 0;
  *(v3 + 27) = v4;
  *(v3 + 28) = v5;
  OUTLINED_FUNCTION_0_43(v3);
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_29(a1, a2, a3);
  v4[25] = v3;
  v4[26] = 0;
  v4[27] = v5;
  v4[28] = v6;
  OUTLINED_FUNCTION_0_43(v4);
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:fitnessPolicy:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a6;
  OUTLINED_FUNCTION_3_39(a3, a4, a5, a7);
  *(v12 + 29) = v13;
  *(v12 + 30) = 0;
  OUTLINED_FUNCTION_2_35();
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:fitnessPolicy:interpolateCurrentWeather:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a6;
  OUTLINED_FUNCTION_3_39(a3, a4, a5, a7);
  *(v12 + 29) = v13;
  *(v12 + 30) = v14;
  OUTLINED_FUNCTION_2_35();
}

void WeatherServiceCacheReadPolicy.cachingOptions.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 24) & 0xFF00) == 0x200)
  {
    v3 = 8;
  }

  else
  {
    v2 = *(v1 + 24) | ((*(v1 + 28) | (*(v1 + 30) << 16)) << 32);
    v3 = (v2 >> 14) & 4 | (v2 >> 7) & 2 | *(v1 + 8) & (*v1 == 0);
  }

  *a1 = v3;
}

unint64_t sub_23B4945D0()
{
  result = qword_27E134128;
  if (!qword_27E134128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134128);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WeatherServiceCacheReadPolicy(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy31_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceCacheReadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 31))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherServiceCacheReadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 23) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_23B494708(uint64_t a1)
{
  v1 = *(a1 + 25);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B494724(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 25) = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceCacheFitnessPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B494824(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 31))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 25);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_23B494870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B4948CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23B50B604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B494910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134130, &qword_23B51C638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4949A0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DayWeather();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v14 = v13 - v12;
  v15 = 0;
  v16 = *(a2 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v18 = 1;
      v19 = a3;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
    }

    sub_23B4894C0(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v14);
    v17 = a1(v14);
    if (v3)
    {
      return sub_23B494C24(v14);
    }

    if (v17)
    {
      break;
    }

    sub_23B494C24(v14);
    ++v15;
  }

  v19 = a3;
  sub_23B48945C(v14, a3);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v6);
}

uint64_t Forecast<>.dayWeather(for:timeZone:)()
{
  v2 = OUTLINED_FUNCTION_2_36();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = *v0;
  sub_23B50ADF4();
  sub_23B4949A0(sub_23B494C04, v11, v1);
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_23B494C04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23B4D893C() & 1;
}

uint64_t sub_23B494C24(uint64_t a1)
{
  v2 = type metadata accessor for DayWeather();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B494C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134138, &qword_23B51C640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SnowfallAmount.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() inches];
  v3 = type metadata accessor for SnowfallAmount();
  v4 = v3[9];
  sub_23B3E3A54();
  sub_23B50A9B4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  (*(*(v5 - 8) + 16))(v5 - 8, a1, a1 + v4, v5);
  v6 = OUTLINED_FUNCTION_0_44(v3[5]);
  v7(v6);
  v8 = OUTLINED_FUNCTION_0_44(v3[6]);
  v9(v8);
  v10 = OUTLINED_FUNCTION_0_44(v3[7]);
  v11(v10);
  v12 = OUTLINED_FUNCTION_0_44(v3[8]);

  return v13(v12);
}

unint64_t sub_23B494E64()
{
  result = qword_27E134140;
  if (!qword_27E134140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134140);
  }

  return result;
}

unint64_t sub_23B494EBC()
{
  result = qword_27E134148;
  if (!qword_27E134148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134148);
  }

  return result;
}

unint64_t sub_23B494F1C()
{
  result = qword_27E134150;
  if (!qword_27E134150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134150);
  }

  return result;
}

unint64_t sub_23B494F74()
{
  result = qword_27E134158;
  if (!qword_27E134158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134158);
  }

  return result;
}

WeatherKit::WatchDataSets sub_23B494FC8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = WatchDataSets.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B495008@<X0>(uint64_t *a1@<X8>)
{
  result = WatchDataSets.rawValue.getter();
  *a1 = result;
  return result;
}

__n128 AirQualityScale.init(identifier:displayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __n128 a11, uint64_t a12, uint64_t *a13)
{
  result = a11;
  v14 = *a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = v14;
  return result;
}

__n128 AirQualityScale.init(identifier:displayName:shortDisplayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __n128 a13, uint64_t a14, uint64_t *a15)
{
  result = a13;
  v16 = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = v16;
  return result;
}

uint64_t AirQualityScale.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScale.identifier.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AirQualityScale.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScale.displayName.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AirQualityScale.shortDisplayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScale.shortDisplayName.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AirQualityScale.longDisplayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScale.longDisplayName.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AirQualityScale.displayLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScale.displayLabel.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AirQualityScale.range.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t AirQualityScale.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2;
  return result;
}

uint64_t AirQualityScale.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t AirQualityScale.gradient.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 112);

  *(v1 + 112) = v2;
  return result;
}

uint64_t sub_23B4954E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000023B536880 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x70736944676E6F6CLL && a2 == 0xEF656D614E79616CLL;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6972656D754E7369 && a2 == 0xEB000000006C6163;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_23B50D834();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_23B4957CC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x70736944676E6F6CLL;
      break;
    case 4:
      result = 0x4C79616C70736964;
      break;
    case 5:
      v3 = 0x656D754E7369;
      goto LABEL_8;
    case 6:
      result = 0x65676E6172;
      break;
    case 7:
      v3 = 0x6F6765746163;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
      break;
    case 8:
      result = 0x746E656964617267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4958F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4954E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B49591C(uint64_t a1)
{
  v2 = sub_23B495EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B495958(uint64_t a1)
{
  v2 = sub_23B495EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirQualityScale.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v35 = *(a1 + 48);
  v6 = *(a1 + 56);
  v32 = *(a1 + 72);
  v33 = *(a1 + 64);
  v29 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v23 = *(a1 + 104);
  v21 = *(a1 + 112);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v34 = *(a2 + 48);
  v30 = *(a2 + 72);
  v31 = *(a2 + 64);
  v28 = *(a2 + 80);
  v24 = *(a2 + 88);
  v25 = *(a2 + 96);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v22 = *(a2 + 104);
  v20 = *(a2 + 112);
  if (!v12 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v8 && v4 == v7;
  if (!v13 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v3 == v10 && v5 == v9;
    if (!v14 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v15 = v35 == v34 && v6 == v11;
    if (!v15 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v33 == v31 && v32 == v30)
  {
    v17 = v29 == v28 && v26 == v24;
    goto LABEL_39;
  }

  if ((sub_23B50D834() & 1) == 0 || v29 != v28)
  {
    return 0;
  }

  v17 = v26 == v24;
LABEL_39:
  v18 = v17 && v27 == v25;
  if (!v18 || (sub_23B3E1154(v23, v22) & 1) == 0)
  {
    return 0;
  }

  return sub_23B3DFD4C(v21, v20);
}

uint64_t AirQualityScale.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134160, &qword_23B51C860);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v22 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v33 = v1[3];
  v34 = v13;
  v14 = v1[4];
  v31 = v1[5];
  v32 = v14;
  v15 = v1[6];
  v29 = v1[7];
  v30 = v15;
  v16 = v1[8];
  v27 = v1[9];
  v28 = v16;
  v38 = *(v1 + 80);
  v17 = v1[12];
  v25 = v1[11];
  v26 = v17;
  v18 = v1[13];
  v23 = v1[14];
  v24 = v18;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B495EF8();
  sub_23B50D974();
  LOBYTE(v36) = 0;
  v20 = v35;
  sub_23B50D7A4();
  if (!v20)
  {
    OUTLINED_FUNCTION_8_21(1);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D7A4();
    OUTLINED_FUNCTION_8_21(2);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D774();
    OUTLINED_FUNCTION_8_21(3);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D774();
    OUTLINED_FUNCTION_8_21(4);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D7A4();
    LOBYTE(v36) = 5;
    sub_23B50D7B4();
    v36 = v25;
    v37 = v26;
    v39 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    sub_23B496534(&qword_280B41A10);
    OUTLINED_FUNCTION_3_40();
    sub_23B50D7F4();
    v36 = v24;
    v39 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134168, &qword_23B51C868);
    sub_23B4965A0(&qword_280B41A20, sub_23B495F4C);
    OUTLINED_FUNCTION_3_40();
    sub_23B50D7F4();
    v36 = v23;
    v39 = 8;
    sub_23B495FA0();

    OUTLINED_FUNCTION_3_40();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B495EF8()
{
  result = qword_280B42550;
  if (!qword_280B42550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42550);
  }

  return result;
}

unint64_t sub_23B495F4C()
{
  result = qword_280B42310;
  if (!qword_280B42310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42310);
  }

  return result;
}

unint64_t sub_23B495FA0()
{
  result = qword_280B422F0;
  if (!qword_280B422F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B422F0);
  }

  return result;
}

uint64_t AirQualityScale.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134170, &qword_23B51C870);
  v5 = OUTLINED_FUNCTION_5(v35);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B495EF8();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    v9 = sub_23B50D6E4();
    v34 = v10;
    OUTLINED_FUNCTION_1_30(1);
    v31 = sub_23B50D6E4();
    v11 = v9;
    v33 = v12;
    OUTLINED_FUNCTION_1_30(2);
    v13 = sub_23B50D6B4();
    v15 = v14;
    v30 = v13;
    OUTLINED_FUNCTION_1_30(3);
    v16 = sub_23B50D6B4();
    v18 = v17;
    v29 = v16;
    OUTLINED_FUNCTION_2_37();
    v28 = sub_23B50D6E4();
    v32 = v19;
    LOBYTE(v37) = 5;
    OUTLINED_FUNCTION_2_37();
    v27 = sub_23B50D6F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    sub_23B496534(&qword_27E134178);
    OUTLINED_FUNCTION_2_37();
    sub_23B50D734();
    v25 = v38;
    v26 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134168, &qword_23B51C868);
    LOBYTE(v36[0]) = 7;
    sub_23B4965A0(&qword_27E134180, sub_23B496618);
    OUTLINED_FUNCTION_2_37();
    sub_23B50D734();
    v24 = v37;
    v52 = 8;
    sub_23B49666C();
    OUTLINED_FUNCTION_2_37();
    sub_23B50D734();
    v20 = OUTLINED_FUNCTION_0_45();
    v21(v20);
    v36[0] = v11;
    v36[1] = v34;
    v36[2] = v31;
    v36[3] = v33;
    v36[4] = v30;
    v36[5] = v15;
    v36[6] = v29;
    v36[7] = v18;
    v36[8] = v28;
    v36[9] = v32;
    LOBYTE(v36[10]) = v27 & 1;
    v36[11] = v26;
    v36[12] = v25;
    v36[13] = v24;
    v36[14] = v53;
    v22 = v53;
    memcpy(a2, v36, 0x78uLL);
    sub_23B3C8520(v36, &v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = v11;
    v38 = v34;
    v39 = v31;
    v40 = v33;
    v41 = v30;
    v42 = v15;
    v43 = v29;
    v44 = v18;
    v45 = v28;
    v46 = v32;
    v47 = v27 & 1;
    v48 = v26;
    v49 = v25;
    v50 = v24;
    v51 = v22;
    return sub_23B3C8B4C(&v37);
  }
}

uint64_t sub_23B496534(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132568, &qword_23B511720);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4965A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134168, &qword_23B51C868);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B496618()
{
  result = qword_27E134188;
  if (!qword_27E134188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134188);
  }

  return result;
}

unint64_t sub_23B49666C()
{
  result = qword_27E134190;
  if (!qword_27E134190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134190);
  }

  return result;
}

void AirQualityScale.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = *(v1 + 80);
  v13 = v1[6];
  v14 = v1[11];
  v15 = v1[12];
  v16 = v1[13];
  v17 = v1[14];
  sub_23B50D1C4();
  sub_23B50D1C4();
  if (v8)
  {
    sub_23B50D8E4();
    sub_23B50D1C4();
    if (v9)
    {
LABEL_3:
      sub_23B50D8E4();
      sub_23B50D1C4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_23B50D8E4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  sub_23B50D8E4();
LABEL_6:
  sub_23B50D1C4();
  sub_23B50D8E4();
  MEMORY[0x23EE9DB40](v14);
  MEMORY[0x23EE9DB40](v15);
  sub_23B409FAC(a1, v16);

  sub_23B40879C(a1, v17);
}

uint64_t AirQualityScale.hashValue.getter()
{
  sub_23B50D8C4();
  AirQualityScale.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B496870()
{
  sub_23B50D8C4();
  AirQualityScale.hash(into:)(v1);
  return sub_23B50D914();
}

unint64_t sub_23B4968B0()
{
  result = qword_27E134198;
  if (!qword_27E134198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134198);
  }

  return result;
}

uint64_t sub_23B49690C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_23B49694C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B496A98()
{
  result = qword_27E1341A0;
  if (!qword_27E1341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341A0);
  }

  return result;
}

unint64_t sub_23B496AF0()
{
  result = qword_280B42540;
  if (!qword_280B42540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42540);
  }

  return result;
}

unint64_t sub_23B496B48()
{
  result = qword_280B42548;
  if (!qword_280B42548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42548);
  }

  return result;
}

uint64_t static PrecipitationAmountByType.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = objc_opt_self();
  v8 = [v7 inches];
  sub_23B3E3A54();
  sub_23B50A9B4();
  v9 = *(v3 + 16);
  v9(a1, v6, v2);
  v10 = type metadata accessor for PrecipitationAmountByType();
  v11 = OUTLINED_FUNCTION_0_46(v10[5]);
  (v9)(v11);
  v12 = OUTLINED_FUNCTION_0_46(v10[6]);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_0_46(v10[7]);
  (v9)(v13);
  v14 = OUTLINED_FUNCTION_0_46(v10[8]);
  (v9)(v14);
  v15 = [v7 inches];
  v16 = a1 + v10[9];
  v17 = type metadata accessor for SnowfallAmount();
  v18 = v17[9];
  sub_23B50A9B4();
  (*(v3 + 8))(v6, v2);
  v9(v16, (v16 + v18), v2);
  v19 = OUTLINED_FUNCTION_1_31(v17[5]);
  (v9)(v19);
  v20 = OUTLINED_FUNCTION_1_31(v17[6]);
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_1_31(v17[7]);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_1_31(v17[8]);
  return (v9)(v22);
}

uint64_t sub_23B496FC8()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 60));
}

uint64_t sub_23B497150(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B497228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductRequirementsFactory.appGeoRequiredProducts(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts(0);
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  ProductRequirementsFactory.appRequiredProducts(for:)();
  sub_23B39E56C(v7, a1, &qword_27E132EC8, &unk_23B51CB00);
  v8 = v3[7];
  v9 = type metadata accessor for ProductRequirementsFactory.AppGeoRequiredProducts(0);
  sub_23B39E56C(v7 + v8, a1 + v9[5], &qword_27E132ED0, &qword_23B515810);
  v10 = v9[6];
  OUTLINED_FUNCTION_41_6(&qword_27E131F10, &unk_23B51CB10, v3[8]);
  v11 = v9[7];
  OUTLINED_FUNCTION_41_6(&qword_27E131F20, &unk_23B51CB20, v3[10]);
  v12 = v9[8];
  OUTLINED_FUNCTION_41_6(&qword_27E132EE8, &qword_23B515820, v3[11]);
  v13 = v9[9];
  OUTLINED_FUNCTION_41_6(&qword_27E132F08, &unk_23B51CB30, v3[12]);
  v14 = v9[10];
  OUTLINED_FUNCTION_41_6(&qword_27E132ED8, &qword_23B515818, v3[13]);
  v15 = v9[11];
  OUTLINED_FUNCTION_41_6(&qword_27E132EE0, &unk_23B51CB40, v3[14]);
  v16 = v9[12];
  OUTLINED_FUNCTION_41_6(&qword_27E132F00, &qword_23B515830, v3[15]);
  v17 = v9[13];
  OUTLINED_FUNCTION_41_6(&qword_27E132F10, &unk_23B51CB50, v3[16]);
  v18 = v9[14];
  OUTLINED_FUNCTION_41_6(&qword_27E132EF0, &qword_23B515828, v3[17]);
  sub_23B497524(v7);
  v19 = a1 + v9[15];
  v20 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
  v25 = v24[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  v29 = v19 + v24[8];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = v19 + v24[9];
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 2;
  v31 = v19 + v24[10];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 2;
  v32 = v24[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = v24[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  OUTLINED_FUNCTION_1();
  return __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
}

uint64_t sub_23B497524(uint64_t a1)
{
  v2 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductRequirementsFactory.widgetGeoRequiredProducts(for:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v2 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v7 = v6[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  OUTLINED_FUNCTION_39_8(v6[8]);
  *(v11 + 16) = 1;
  OUTLINED_FUNCTION_39_8(v6[9]);
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_30_9(v1 + v6[10]);
  v13 = v6[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v6[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  OUTLINED_FUNCTION_11_18();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = type metadata accessor for ProductRequirementsFactory.WidgetGeoRequiredProducts(0);
  v24 = v1 + v23[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v2);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  v29 = v28[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
  v33 = (v24 + v28[8]);
  *v33 = 0;
  v33[1] = 0;
  OUTLINED_FUNCTION_55_3(v33);
  OUTLINED_FUNCTION_30_9(v24 + v28[9]);
  OUTLINED_FUNCTION_30_9(v24 + v28[10]);
  v34 = v28[11];
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = v28[12];
  OUTLINED_FUNCTION_11_18();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  sub_23B3D07FC(v1 + v23[6]);
  OUTLINED_FUNCTION_17_15(v23[7]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  OUTLINED_FUNCTION_3_41(v44);
  OUTLINED_FUNCTION_0_47(v45);
  OUTLINED_FUNCTION_17_15(v23[8]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_3_41(v46);
  OUTLINED_FUNCTION_0_47(v47);
  OUTLINED_FUNCTION_17_15(v23[9]);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  OUTLINED_FUNCTION_3_41(v48);
  OUTLINED_FUNCTION_0_47(v49);
  OUTLINED_FUNCTION_17_15(v23[10]);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  OUTLINED_FUNCTION_3_41(v50);
  OUTLINED_FUNCTION_0_47(v51);
  OUTLINED_FUNCTION_17_15(v23[11]);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
  v53 = OUTLINED_FUNCTION_8_22(v52[7]);
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v2);
  OUTLINED_FUNCTION_21_14(v52[8]);
  OUTLINED_FUNCTION_14_24(v52[9]);
  OUTLINED_FUNCTION_14_24(v52[10]);
  v56 = OUTLINED_FUNCTION_7_36(v52[11]);
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  OUTLINED_FUNCTION_8_22(v52[12]);
  OUTLINED_FUNCTION_20();

  return __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
}

uint64_t ProductRequirementsFactory.menuRequiredProducts()()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = sub_23B50AA24();
  OUTLINED_FUNCTION_22_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v5 = OUTLINED_FUNCTION_8_22(v4[7]);
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  OUTLINED_FUNCTION_21_14(v4[8]);
  OUTLINED_FUNCTION_29_10(v4[9]);
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_29_10(v4[10]);
  *(v9 + 16) = 2;
  v10 = v4[11];
  Options = type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, Options);
  v15 = v4[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for ProductRequirementsFactory.MenuRequiredProducts(0);
  v21 = v2 + v20[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_31_8(v25);
  OUTLINED_FUNCTION_10_22(v21 + v26);
  v28 = v21 + v27;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  OUTLINED_FUNCTION_13_20();
  v29 = OUTLINED_FUNCTION_16_12(v0[11]);
  __swift_storeEnumTagSinglePayload(v29, v30, v31, Options);
  v32 = v0[12];
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = v2 + v20[6];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  OUTLINED_FUNCTION_31_8(v41);
  OUTLINED_FUNCTION_10_22(v37 + v42);
  v44 = v37 + v43;
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  OUTLINED_FUNCTION_13_20();
  v45 = OUTLINED_FUNCTION_16_12(v0[11]);
  __swift_storeEnumTagSinglePayload(v45, v46, v47, Options);
  v48 = v0[12];
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = v2 + v20[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v3);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  OUTLINED_FUNCTION_31_8(v57);
  v59 = OUTLINED_FUNCTION_16_12(v58);
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v3);
  v62 = OUTLINED_FUNCTION_16_12(v0[11]);
  __swift_storeEnumTagSinglePayload(v62, v63, v64, Options);
  v65 = v0[12];
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = v53 + v0[8];
  *v70 = xmmword_23B51CAF0;
  *(v70 + 16) = 0;
  OUTLINED_FUNCTION_13_20();
  v71 = v2 + v20[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v3);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_31_8(v75);
  OUTLINED_FUNCTION_10_22(v71 + v76);
  v78 = v71 + v77;
  *v78 = 0;
  *(v78 + 8) = 0;
  *(v78 + 16) = 1;
  OUTLINED_FUNCTION_13_20();
  v79 = OUTLINED_FUNCTION_16_12(v0[11]);
  __swift_storeEnumTagSinglePayload(v79, v80, v81, Options);
  v82 = v0[12];
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v2 + v20[9];
  OUTLINED_FUNCTION_22_12();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  v89 = OUTLINED_FUNCTION_8_22(v88[7]);
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v3);
  OUTLINED_FUNCTION_21_14(v88[8]);
  OUTLINED_FUNCTION_29_10(v88[9]);
  *(v92 + 16) = 2;
  OUTLINED_FUNCTION_29_10(v88[10]);
  *(v93 + 16) = 2;
  v94 = OUTLINED_FUNCTION_8_22(v88[11]);
  __swift_storeEnumTagSinglePayload(v94, v95, v96, Options);
  OUTLINED_FUNCTION_7_36(v88[12]);
  OUTLINED_FUNCTION_20();

  return __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
}

void sub_23B497C6C()
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v0 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v1 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v2 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v3 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v4 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
            if (v5 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
              if (v6 <= 0x3F)
              {
                sub_23B39B0D4();
                if (v7 <= 0x3F)
                {
                  sub_23B39A134(319, &qword_280B426D0, &qword_27E131ED8, &qword_23B50F208);
                  if (v8 <= 0x3F)
                  {
                    sub_23B39A134(319, &qword_280B426D8, &qword_27E131E88, &unk_23B519360);
                    if (v9 <= 0x3F)
                    {
                      sub_23B39A134(319, &qword_280B426E8, &qword_27E131EF8, &unk_23B50F230);
                      if (v10 <= 0x3F)
                      {
                        sub_23B399C6C(319, &qword_280B42EE8, type metadata accessor for LocationInfo);
                        if (v11 <= 0x3F)
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

void sub_23B497F40()
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v0 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v1 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v2 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v3 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v4 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
            if (v5 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
              if (v6 <= 0x3F)
              {
                sub_23B399C6C(319, &qword_280B42EE8, type metadata accessor for LocationInfo);
                if (v7 <= 0x3F)
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

void sub_23B498144()
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v0 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v1 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v2 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v3 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v4 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
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

uint64_t Wind.init(compassDirection:direction:speed:gust:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = type metadata accessor for Wind();
  v11 = v10[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  __swift_storeEnumTagSinglePayload(&a5[v11], 1, 1, v12);
  *a5 = a1;
  v13 = v10[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 32))(&a5[v13], a2);
  (*(*(v12 - 8) + 32))(&a5[v10[6]], a3, v12);

  return sub_23B4983E4(a4, &a5[v11]);
}

uint64_t sub_23B4983E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Wind.direction.setter()
{
  v2 = *(OUTLINED_FUNCTION_32_8() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t Wind.speed.setter()
{
  v2 = *(OUTLINED_FUNCTION_32_8() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t Wind.gust.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_32_8() + 28);

  return sub_23B4983E4(v0, v2);
}

uint64_t Wind.CompassDirection.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_36;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

LABEL_45:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_26:
      OUTLINED_FUNCTION_2_39();
      goto LABEL_35;
    case 6:
      if (qword_280B43260 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_47;
    case 7:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 8:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

LABEL_48:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_34:
      OUTLINED_FUNCTION_2_39();
      OUTLINED_FUNCTION_33_7();
      goto LABEL_35;
    case 10:
      if (qword_280B43260 != -1)
      {
LABEL_47:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_32:
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_33_7();
      goto LABEL_35;
    case 11:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    case 12:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      goto LABEL_35;
    case 13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

LABEL_46:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_28:
      OUTLINED_FUNCTION_27_13();
      goto LABEL_35;
    case 14:
      if (qword_280B43260 != -1)
      {
LABEL_36:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_5:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_35;
    case 15:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    default:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

LABEL_44:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_24:
      OUTLINED_FUNCTION_2_39();
      OUTLINED_FUNCTION_17_16();
LABEL_35:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t Wind.CompassDirection.accessibilityDescription.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_20_16();
      return sub_23B50AAD4();
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

LABEL_48:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_28:
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_35_10();
      break;
    case 6:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    case 7:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    case 8:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_21();
      OUTLINED_FUNCTION_37_8();
      break;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

LABEL_46:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_24:
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_37_8();
      break;
    case 10:
      if (qword_280B43260 != -1)
      {
LABEL_50:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_34:
      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_15_19();
      OUTLINED_FUNCTION_37_8();
      break;
    case 11:
      if (qword_280B43260 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_49;
    case 12:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_20_16();
      return sub_23B50AAD4();
    case 13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_30;
      }

LABEL_49:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_30:
      OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_35_10();
      break;
    case 14:
      if (qword_280B43260 != -1)
      {
LABEL_40:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_6:
      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_16_13();
      break;
    case 15:
      if (qword_280B43260 != -1)
      {
LABEL_44:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_20:
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_26_14();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_21();
      break;
  }

  OUTLINED_FUNCTION_20_16();
  return sub_23B50AAD4();
}

Swift::String __swiftcall Wind.CompassDirection.windDirectionDescription(isLeading:)(Swift::Bool isLeading)
{
  if (isLeading)
  {

    v2 = Wind.CompassDirection.description.getter(v1);
  }

  else
  {
    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      case 2:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      case 3:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_41;
      case 4:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_20_16();
        goto LABEL_55;
      case 5:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_41:
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_35_10();
        goto LABEL_54;
      case 6:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 7:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 8:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 9:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 10:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_53:
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_25_10();
        goto LABEL_54;
      case 11:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_44;
      case 12:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_20_16();
        goto LABEL_55;
      case 13:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_44:
        OUTLINED_FUNCTION_31_9();
        OUTLINED_FUNCTION_35_10();
        goto LABEL_54;
      case 14:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      case 15:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      default:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_38:
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_18_18();
LABEL_54:
        OUTLINED_FUNCTION_20_16();
LABEL_55:
        v2 = sub_23B50AAD4();
        break;
    }
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

WeatherKit::Wind::CompassDirection_optional __swiftcall Wind.CompassDirection.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23B50D664();

  if (v1 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v1;
  }
}

uint64_t Wind.CompassDirection.rawValue.getter(char a1)
{
  result = 0x6874726F6ELL;
  switch(a1)
  {
    case 1:
      return 0x726F4E6874726F6ELL;
    case 2:
      v5 = 1953656686;
      return v5 | 0x7361656800000000;
    case 3:
      return 0x74726F4E74736165;
    case 4:
      return 1953718629;
    case 5:
      return 0x74756F5374736165;
    case 6:
      v5 = 1953853299;
      return v5 | 0x7361656800000000;
    case 7:
      return 0x756F536874756F73;
    case 8:
      return 0x6874756F73;
    case 9:
      return 0x756F536874756F73;
    case 10:
      v3 = 1953853299;
      goto LABEL_21;
    case 11:
      v4 = 0x74756F5374736165;
      goto LABEL_17;
    case 12:
      return 1953719671;
    case 13:
      v4 = 0x74726F4E74736165;
LABEL_17:
      result = v4 | 0x412;
      break;
    case 14:
      v3 = 1953656686;
LABEL_21:
      result = v3 | 0x7365776800000000;
      break;
    case 15:
      result = 0x726F4E6874726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B499A54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000023B537CD0 == a2;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953723751 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_23B499BB8(char a1)
{
  result = 0x6F69746365726964;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6465657073;
      break;
    case 3:
      result = 1953723751;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

WeatherKit::Wind::CompassDirection_optional sub_23B499C5C@<W0>(Swift::String *a1@<X0>, WeatherKit::Wind::CompassDirection_optional *a2@<X8>)
{
  result.value = Wind.CompassDirection.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_23B499C8C@<X0>(uint64_t *a1@<X8>)
{
  result = Wind.CompassDirection.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B499D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B499A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B499DB0(uint64_t a1)
{
  v2 = sub_23B49AC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B499DEC(uint64_t a1)
{
  v2 = sub_23B49AC68();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static Wind.== infix(_:_:)(char *a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132060, &qword_23B50F998);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_127();
  v20 = *a2;
  v21 = Wind.CompassDirection.rawValue.getter(*a1);
  v23 = v22;
  v25 = v21 == Wind.CompassDirection.rawValue.getter(v20) && v23 == v24;
  if (v25)
  {
  }

  else
  {
    v26 = sub_23B50D834();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v44 = v12;
  v45 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  v27 = type metadata accessor for Wind();
  v28 = v27[5];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v29, &qword_27E132170, &qword_23B510118);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v30 = v27[6];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v31, v32, v33);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v34 = v27[7];
  v35 = *(v16 + 48);
  sub_23B3C8E28(&a1[v34], v2);
  sub_23B3C8E28(&a2[v34], v2 + v35);
  OUTLINED_FUNCTION_4_0(v2);
  if (v25)
  {
    OUTLINED_FUNCTION_4_0(v2 + v35);
    if (v25)
    {
      sub_23B398890(v2, &qword_27E132048, &qword_23B510110);
      return 1;
    }
  }

  else
  {
    v36 = v46;
    sub_23B3C8E28(v2, v46);
    OUTLINED_FUNCTION_4_0(v2 + v35);
    if (!v37)
    {
      v40 = v44;
      v39 = v45;
      (*(v45 + 32))(v44, v2 + v35, v5);
      v41 = sub_23B50D134();
      v42 = *(v39 + 8);
      v42(v40, v5);
      v42(v36, v5);
      sub_23B398890(v2, &qword_27E132048, &qword_23B510110);
      return (v41 & 1) != 0;
    }

    (*(v45 + 8))(v36, v5);
  }

  sub_23B398890(v2, &qword_27E132060, &qword_23B50F998);
  return 0;
}

uint64_t Wind.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1341B8, &qword_23B51CDF0);
  OUTLINED_FUNCTION_5(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_127();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B49AC68();
  sub_23B50D974();
  v22 = *v4;
  sub_23B49ACBC();
  sub_23B50D7F4();
  if (!v2)
  {
    v21 = type metadata accessor for Wind();
    v13 = v21[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    OUTLINED_FUNCTION_2_31();
    sub_23B3F1C50(v14, v15, &qword_23B510118);
    sub_23B50D7F4();
    v16 = v21[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_2_31();
    sub_23B3F1C50(v17, v18, &unk_23B5100F0);
    OUTLINED_FUNCTION_29_0();
    sub_23B50D7F4();
    v19 = v21[7];
    OUTLINED_FUNCTION_29_0();
    sub_23B50D794();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Wind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v45 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v6);
  v44 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_5(v53);
  v48 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1341C0, &qword_23B51CDF8);
  OUTLINED_FUNCTION_5(v46);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  v24 = type metadata accessor for Wind();
  v25 = OUTLINED_FUNCTION_6(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v30;
  v52 = *(v30 + 28);
  v47 = v6;
  __swift_storeEnumTagSinglePayload(&v29[v52], 1, 1, v6);
  v31 = a1[3];
  v32 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_23B49AC68();
  v33 = v50;
  sub_23B50D964();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_23B398890(&v29[v52], &qword_27E132048, &qword_23B510110);
  }

  else
  {
    v34 = v18;
    v50 = v20;
    v35 = v45;
    v57 = 0;
    sub_23B49AD10();
    OUTLINED_FUNCTION_36_8();
    sub_23B50D734();
    *v29 = v58;
    v56 = 1;
    OUTLINED_FUNCTION_3_8(&qword_27E133B98, &qword_27E132170, &qword_23B510118);
    v36 = v34;
    v37 = v53;
    OUTLINED_FUNCTION_36_8();
    sub_23B50D734();
    (*(v48 + 32))(&v29[*(v49 + 20)], v36, v37);
    v55 = 2;
    OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    v38 = v47;
    OUTLINED_FUNCTION_36_8();
    sub_23B50D734();
    (*(v44 + 32))(&v29[*(v49 + 24)], v12, v38);
    v54 = 3;
    OUTLINED_FUNCTION_36_8();
    sub_23B50D6D4();
    v39 = OUTLINED_FUNCTION_19_15();
    v40(v39, v46);
    sub_23B4983E4(v35, &v29[v52]);
    sub_23B49AD64(v29, v43);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_23B49ADC8(v29);
  }
}

uint64_t Wind.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v2);
  v19 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v18 = &v18 - v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  Wind.CompassDirection.rawValue.getter(*v0);
  sub_23B50D1C4();

  v12 = type metadata accessor for Wind();
  v13 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  sub_23B3F1C50(&qword_280B42BF0, &qword_27E132170, &qword_23B510118);
  sub_23B50D0E4();
  v14 = v12[6];
  sub_23B3F1C50(&qword_280B42BE0, &qword_27E131E10, &unk_23B5100F0);
  sub_23B50D0E4();
  sub_23B3C8E28(&v1[v12[7]], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return sub_23B50D8E4();
  }

  v17 = v18;
  v16 = v19;
  (*(v19 + 32))(v18, v11, v2);
  sub_23B50D8E4();
  sub_23B50D0E4();
  return (*(v16 + 8))(v17, v2);
}

uint64_t Wind.hashValue.getter()
{
  sub_23B50D8C4();
  Wind.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B49AC2C()
{
  sub_23B50D8C4();
  Wind.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B49AC68()
{
  result = qword_280B41C18;
  if (!qword_280B41C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C18);
  }

  return result;
}

unint64_t sub_23B49ACBC()
{
  result = qword_280B41C00;
  if (!qword_280B41C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C00);
  }

  return result;
}

unint64_t sub_23B49AD10()
{
  result = qword_27E1341C8;
  if (!qword_27E1341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341C8);
  }

  return result;
}

uint64_t sub_23B49AD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Wind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B49ADC8(uint64_t a1)
{
  v2 = type metadata accessor for Wind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B49AE28()
{
  result = qword_27E1341D0;
  if (!qword_27E1341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341D0);
  }

  return result;
}

unint64_t sub_23B49AEC4()
{
  result = qword_27E1341E8;
  if (!qword_27E1341E8)
  {
    type metadata accessor for Wind();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Wind.CompassDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Wind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B49B100()
{
  result = qword_27E1341F0;
  if (!qword_27E1341F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341F0);
  }

  return result;
}

unint64_t sub_23B49B158()
{
  result = qword_280B41C08;
  if (!qword_280B41C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C08);
  }

  return result;
}

unint64_t sub_23B49B1B0()
{
  result = qword_280B41C10;
  if (!qword_280B41C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C10);
  }

  return result;
}

unint64_t sub_23B49B204()
{
  result = qword_280B41BF8;
  if (!qword_280B41BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41BF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherClock(_BYTE *result, int a2, int a3)
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

uint64_t AirQuality.init(scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, char *a13, uint64_t a14)
{
  v47 = *a12;
  v50 = *a13;
  v48 = *(a13 + 2);
  v49 = *(a13 + 1);
  v20 = type metadata accessor for AirQuality();
  v21 = v20[11];
  type metadata accessor for ProviderAttribution();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v20[14];
  type metadata accessor for AirPollutant();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = (a9 + v20[6]);
  *v31 = a1;
  v31[1] = a2;
  memcpy((a9 + v20[7]), a3, 0x78uLL);
  *(a9 + v20[8]) = a4;
  memcpy((a9 + v20[9]), a5, 0x58uLL);
  *(a9 + v20[10]) = a6;
  sub_23B3C2510(a7, a9 + v21, &qword_27E131FC8, &qword_23B510180);
  v32 = v20[12];
  v33 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v33);
  (*(v34 + 32))(a9 + v32, a8);
  *(a9 + v20[13]) = a10;
  sub_23B3C2510(a11, a9 + v26, &qword_27E131FB8, &qword_23B50F6D0);
  *(a9 + v20[15]) = v47;
  v35 = a9 + v20[16];
  *v35 = v50;
  *(v35 + 8) = v49;
  *(v35 + 16) = v48;
  v36 = v20[17];
  OUTLINED_FUNCTION_18_19();
  v37 = OUTLINED_FUNCTION_57();
  sub_23B4A0AD0(v37, v38);
  v39 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v39);
  v41 = *(v40 + 16);
  v41(a9, a14, v39);
  v42 = type metadata accessor for WeatherMetadata();
  v41(a9 + v20[5], a14 + *(v42 + 20), v39);
  return sub_23B4A0B28();
}

uint64_t AirQuality.isExpired.getter()
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
  v10 = v0 + *(type metadata accessor for AirQuality() + 68);
  v11 = *(type metadata accessor for WeatherMetadata() + 20);
  OUTLINED_FUNCTION_2_40();
  sub_23B4A07AC(v12, v13);
  LOBYTE(v10) = sub_23B50D114();
  (*(v4 + 8))(v9, v1);
  return v10 & 1;
}

uint64_t AirQuality.measurementDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_65();

  return v4(v3);
}

uint64_t AirQuality.measurementDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t AirQuality.expirationDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(type metadata accessor for AirQuality() + 20);
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}