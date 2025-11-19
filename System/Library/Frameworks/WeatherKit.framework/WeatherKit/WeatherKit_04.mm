uint64_t sub_23B3E60CC(unsigned __int8 a1, char a2)
{
  v2 = 0x726F6E696DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F6E696DLL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_11_2();
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657265766573;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_7_5();
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_13_3();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_6_1();
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657265766573;
      break;
    case 3:
      OUTLINED_FUNCTION_12_4();
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_19_2();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_3();
  }

  return v8 & 1;
}

uint64_t sub_23B3E61D8()
{
  OUTLINED_FUNCTION_4_8();
  v4 = v3;
  v5 = v2;
  v6 = 0xE900000000000065;
  v7 = "temporarilyUnavailable";
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v6 = 0x800000023B528300;
      break;
    case 2:
      v5 = 0x726F707075736E75;
      v6 = 0xEB00000000646574;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_13_3();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000016;
      v0 = (v7 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0x726F707075736E75;
      v0 = 0xEB00000000646574;
      break;
    case 3:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_19_2();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_3();
  }

  return v9 & 1;
}

uint64_t sub_23B3E6304()
{
  sub_23B50C104();
  sub_23B3E712C();
  sub_23B50D264();
  sub_23B50D264();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_5_3();
  }

  return v1 & 1;
}

uint64_t sub_23B3E63A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000023B528880 == a2;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B5288A0 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000023B5288C0 == a2)
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

unint64_t sub_23B3E64C8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000016;
}

uint64_t sub_23B3E6524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3E63A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3E654C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E64C0();
  *a1 = result;
  return result;
}

uint64_t sub_23B3E6574(uint64_t a1)
{
  v2 = sub_23B3E6810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3E65B0(uint64_t a1)
{
  v2 = sub_23B3E6810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WeatherAvailability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = *a2;
  v7 = *a1;
  if ((sub_23B3E61D8() & 1) == 0 || (sub_23B3E61D8() & 1) == 0)
  {
    return 0;
  }

  return sub_23B3E61D8();
}

uint64_t WeatherAvailability.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F80, &qword_23B50F2C0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v18 = v1[2];
  v19 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E6810();
  sub_23B50D974();
  v25 = v12;
  v24 = 0;
  sub_23B3E6864();
  OUTLINED_FUNCTION_2_8();
  if (!v2)
  {
    v15 = v18;
    v23 = v19;
    v22 = 1;
    OUTLINED_FUNCTION_2_8();
    v21 = v15;
    v20 = 2;
    OUTLINED_FUNCTION_2_8();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B3E6810()
{
  result = qword_280B42888;
  if (!qword_280B42888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42888);
  }

  return result;
}

unint64_t sub_23B3E6864()
{
  result = qword_280B42898;
  if (!qword_280B42898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42898);
  }

  return result;
}

uint64_t WeatherAvailability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F88, &qword_23B50F2C8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E6810();
  sub_23B50D964();
  if (!v2)
  {
    v23 = 0;
    sub_23B3E6A90();
    OUTLINED_FUNCTION_1_3();
    v14 = v24;
    v21 = 1;
    OUTLINED_FUNCTION_1_3();
    v18 = v22;
    v19 = 2;
    OUTLINED_FUNCTION_1_3();
    (*(v8 + 8))(v12, v5);
    v16 = v20;
    *a2 = v14;
    a2[1] = v18;
    a2[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B3E6A90()
{
  result = qword_27E131F90;
  if (!qword_27E131F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131F90);
  }

  return result;
}

uint64_t WeatherAvailability.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23B3E500C();
  sub_23B3E500C();

  return sub_23B3E500C();
}

uint64_t WeatherAvailability.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23B50D8C4();
  sub_23B3E500C();
  sub_23B3E500C();
  sub_23B3E500C();
  return sub_23B50D914();
}

uint64_t sub_23B3E6BE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23B50D8C4();
  sub_23B3E500C();
  sub_23B3E500C();
  sub_23B3E500C();
  return sub_23B50D914();
}

unint64_t sub_23B3E6C58()
{
  result = qword_27E131F98;
  if (!qword_27E131F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131F98);
  }

  return result;
}

unint64_t sub_23B3E6CB0()
{
  result = qword_27E131FA0;
  if (!qword_27E131FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FA0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for WeatherAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAvailability.AvailabilityKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WeatherAvailability.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WeatherAvailability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3E6FD4()
{
  result = qword_27E131FA8;
  if (!qword_27E131FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FA8);
  }

  return result;
}

unint64_t sub_23B3E702C()
{
  result = qword_280B42878;
  if (!qword_280B42878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42878);
  }

  return result;
}

unint64_t sub_23B3E7084()
{
  result = qword_280B42880;
  if (!qword_280B42880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42880);
  }

  return result;
}

unint64_t sub_23B3E70D8()
{
  result = qword_280B42890;
  if (!qword_280B42890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42890);
  }

  return result;
}

unint64_t sub_23B3E712C()
{
  result = qword_27E131FB0;
  if (!qword_27E131FB0)
  {
    sub_23B50C104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FB0);
  }

  return result;
}

void static AirQuality.mock()(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for WeatherMetadata();
  v2 = OUTLINED_FUNCTION_6(v59);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58 - v9;
  v11 = sub_23B50AAE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - v20;
  sub_23B3E7748();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD0, &qword_23B50F6D8);
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v24, xmmword_23B50F620);
  OUTLINED_FUNCTION_3_4();
  v61[0] = v25;
  v61[1] = 0xED0000312E747361;
  v61[2] = v25;
  v61[3] = 0xED0000312E747361;
  memset(&v61[4], 0, 40);
  v61[9] = 0xE000000000000000;
  LOBYTE(v61[10]) = 1;
  *&v61[11] = xmmword_23B50F630;
  v61[13] = v23;
  v61[14] = v26;
  if (*(v23 + 16))
  {
    memcpy(__dst, (v23 + 32), 0x58uLL);
    v27 = type metadata accessor for ProviderAttribution();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
    sub_23B50AB34();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    (*(v12 + 104))(v15, *MEMORY[0x277CC91D8], v11);
    v35 = type metadata accessor for AirQuality();
    v36 = v35[12];
    sub_23B3C8520(v61, v60);
    sub_23B3C8AD4(__dst, v60);
    sub_23B50AB14();
    v37 = type metadata accessor for AirPollutant();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
    static WeatherMetadata.mock()(v6);
    sub_23B3C8B4C(v61);
    v41 = v35[11];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v27);
    v45 = v35[14];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v37);
    v49 = a1 + v35[6];
    OUTLINED_FUNCTION_3_4();
    *v50 = v51;
    OUTLINED_FUNCTION_5_4();
    *(v52 + 8) = v53;
    memcpy((a1 + v35[7]), v61, 0x78uLL);
    *(a1 + v35[8]) = 42;
    memcpy((a1 + v35[9]), __dst, 0x58uLL);
    *(a1 + v35[10]) = 0;
    sub_23B3E7994(v21, a1 + v41, &qword_27E131FC8, &qword_23B510180);
    *(a1 + v35[13]) = MEMORY[0x277D84F98];
    sub_23B3E7994(v10, a1 + v45, &qword_27E131FB8, &qword_23B50F6D0);
    *(a1 + v35[15]) = 3;
    v54 = a1 + v35[16];
    *v54 = 1;
    *(v54 + 8) = 0xD000000000000010;
    *(v54 + 16) = 0x800000023B5288E0;
    sub_23B3CA078(v6, a1 + v35[17]);
    v55 = sub_23B50AD24();
    OUTLINED_FUNCTION_6(v55);
    v57 = *(v56 + 16);
    v57(a1, v6, v55);
    v57(a1 + v35[5], &v6[*(v59 + 20)], v55);
    sub_23B3E79F4(v6);
  }

  else
  {
    __break(1u);
  }
}

double static AirQualityScale.mock()@<D0>(uint64_t a1@<X8>)
{
  sub_23B3E7748();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD0, &qword_23B50F6D8);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v4, xmmword_23B50F620);
  OUTLINED_FUNCTION_5_4();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_23B50F630;
  *(a1 + 104) = v3;
  *(a1 + 112) = v8;
  return result;
}

void static AirQualitySource.mock()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0xD000000000000010;
  *(a1 + 16) = 0x800000023B5288E0;
}

void sub_23B3E7748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD8, &qword_23B50F6E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B50F640;
  strcpy((v0 + 32), "AQI_SCALE_GOOD");
  *(v0 + 47) = -18;
  *(v0 + 48) = xmmword_23B50F650;
  *(v0 + 64) = 0xE700000000000000;
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x800000023B528900;
  *(v0 + 88) = xmmword_23B50F660;
  OUTLINED_FUNCTION_4_9();
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0x6574617265646F4DLL;
  *(v1 + 128) = 0xE800000000000000;
  *(v1 + 136) = xmmword_23B50F670;
  *(v1 + 152) = v3;
  *(v1 + 160) = v2 + 211;
  *(v1 + 168) = v4;
  OUTLINED_FUNCTION_4_9();
  *(v5 + 176) = v7;
  *(v5 + 192) = v6;
  *(v5 + 208) = v8 | 4;
  *(v5 + 216) = v9;
  *(v5 + 224) = xmmword_23B50F690;
  *(v5 + 240) = v10;
  *(v5 + 248) = v8 + 83;
  *(v5 + 256) = 0x800000023B528A30;
  *(v5 + 264) = 101;
  *(v5 + 272) = 151;
  OUTLINED_FUNCTION_4_9();
  *v11 = v12;
  *(v13 + 296) = 0x68746C6165686E55;
  *(v13 + 304) = 0xE900000000000079;
  *(v13 + 312) = 4;
  *(v13 + 320) = 0x35354432464623;
  *(v13 + 328) = v15;
  *(v13 + 336) = v14 + 94;
  *(v13 + 344) = v16;
  *(v13 + 352) = xmmword_23B50F6A0;
  *(v13 + 368) = v12;
  strcpy((v13 + 384), "Very Unhealthy");
  *(v13 + 399) = -18;
  *(v13 + 400) = xmmword_23B50F6B0;
  *(v13 + 416) = v15;
  *(v13 + 424) = v14 + 55;
  *(v13 + 432) = 0x800000023B528B20;
  *(v13 + 440) = 201;
  *(v13 + 448) = 301;
  OUTLINED_FUNCTION_4_9();
  *v17 = v18;
  *(v19 + 472) = 0x756F6472617A6148;
  *(v19 + 480) = v20;
  *(v19 + 488) = 6;
  *(v19 + 496) = 0x44323132353723;
  *(v19 + 504) = v22;
  *(v19 + 512) = v21 + 95;
  *(v19 + 520) = v23;
  *(v19 + 528) = xmmword_23B50F6C0;
  *(v19 + 544) = v18;
}

uint64_t sub_23B3E7994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_23B3E79F4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Forecast<>.isRelevant.getter()
{
  v1[0] = 0;
  v1[1] = 0;
  v2 = 1;
  return Forecast<>.isRelevant(in:)(v1);
}

BOOL Forecast<>.isRelevant(in:)(uint64_t a1)
{
  v3 = type metadata accessor for MinuteSummary();
  v4 = OUTLINED_FUNCTION_5(v3);
  v131 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v128 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v109 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v109 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_1();
  v129 = v16;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  v121 = v18;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v109 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  v127 = v27;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_1();
  v126 = v29;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v30);
  v133 = &v109 - v31;
  v32 = sub_23B50AD24();
  v33 = OUTLINED_FUNCTION_5(v32);
  v115 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v114 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v38 = *(a1 + 8);
  v116 = *(a1 + 16);
  if (qword_280B43440 != -1)
  {
LABEL_58:
    swift_once();
  }

  v40 = sub_23B50CDF4();
  v135 = __swift_project_value_buffer(v40, qword_280B4E9D8);
  v41 = sub_23B50CDD4();
  v42 = sub_23B50D4A4();
  v43 = OUTLINED_FUNCTION_4_10(v42);
  v132 = v32;
  if (v43)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_23B38D000, v41, v1, "Determining if NextHour data is relevant by examining the conditions.", v32, 2u);
    OUTLINED_FUNCTION_0_5();
  }

  sub_23B50B9D4();
  v44 = v114;
  sub_23B50B994();
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 52);
  v1 = v134;
  sub_23B50ABD4();
  v47 = v46;
  v48 = *(v115 + 8);
  v118 = v115 + 8;
  v117 = v48;
  v48(v44, v32);
  if (v116)
  {
    if (v47 <= 900.0)
    {
      goto LABEL_6;
    }

LABEL_41:
    v79 = sub_23B50CDD4();
    v80 = sub_23B50D4A4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 134217984;
      *(v81 + 4) = v47;
      _os_log_impl(&dword_23B38D000, v79, v80, "Next Hour data is stale, age=%f. Returning isRelevant=false", v81, 0xCu);
      OUTLINED_FUNCTION_38();
    }

    return 0;
  }

  if (v39 < v47)
  {
    goto LABEL_41;
  }

LABEL_6:
  v113 = v14;
  v110 = v25;
  v112 = v11;
  v111 = v22;
  __swift_storeEnumTagSinglePayload(v133, 1, 1, v32);
  v130 = Forecast<>.summaries.getter();
  v14 = v121;
  v125 = *(v130 + 16);
  if (!v125)
  {
LABEL_37:

    v76 = sub_23B50CDD4();
    v77 = sub_23B50D4A4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_23B38D000, v76, v77, "Next Hour data has no relevant condition. Returning isRelevant=false", v78, 2u);
      OUTLINED_FUNCTION_38();
    }

    sub_23B3CF54C(v133);
    return 0;
  }

  v25 = 0;
  v123 = v130 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
  *&v49 = 136446210;
  v120 = v49;
  *&v49 = 136446722;
  v119 = v49;
  v122 = v21;
  v124 = v3;
  while (1)
  {
    if (v25 >= *(v130 + 16))
    {
      __break(1u);
      goto LABEL_58;
    }

    sub_23B3E889C(v123 + *(v131 + 72) * v25, v21);
    sub_23B3E889C(v21, v14);
    v50 = sub_23B50CDD4();
    v51 = sub_23B50D4A4();
    if (OUTLINED_FUNCTION_4_10(v51))
    {
      v32 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v136[0] = v52;
      *v32 = v120;
      sub_23B3E889C(v14, v129);
      v53 = sub_23B50D184();
      v21 = v54;
      sub_23B3E8900(v14);
      sub_23B391F1C(v53, v21, v136);
      OUTLINED_FUNCTION_7_6();
      *(v32 + 4) = v53;
      v3 = v124;
      _os_log_impl(&dword_23B38D000, v50, v1, "Checking Next Hour data condition=%{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_0_5();
    }

    else
    {

      sub_23B3E8900(v14);
    }

    v55 = v127;
    v56 = v21[v3[6]];
    v134 = v25 + 1;
    switch(v56)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        v57 = sub_23B50D834();

        v58 = 0;
        if (v57)
        {
          goto LABEL_15;
        }

        break;
      default:

LABEL_15:
        v59 = &v21[v3[9]];
        v60 = *v59;
        v61 = v59[8];
        v58 = v60 == 0.0 || v61 == 3;
        break;
    }

    v63 = v3[5];
    v64 = v126;
    sub_23B3C7DF4(&v21[v63], v126);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v32);
    sub_23B3CF54C(v64);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    v22 = v128;
    if (!v58)
    {
      goto LABEL_46;
    }

    v11 = 1;
LABEL_33:
    sub_23B3E889C(v21, v22);
    v71 = sub_23B50CDD4();
    v72 = sub_23B50D4A4();
    if (OUTLINED_FUNCTION_4_10(v72))
    {
      v32 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v136[0] = v73;
      *v32 = v119;
      sub_23B3E889C(v22, v129);
      v74 = sub_23B50D184();
      v21 = v75;
      sub_23B3E8900(v22);
      sub_23B391F1C(v74, v21, v136);
      OUTLINED_FUNCTION_7_6();
      *(v32 + 4) = v74;
      v3 = v124;
      *(v32 + 12) = 1026;
      *(v32 + 14) = !v58;
      *(v32 + 18) = 1026;
      *(v32 + 20) = v11;
      _os_log_impl(&dword_23B38D000, v71, v1, "%{public}s does not have a valid condition precipitation, skipping...isConditionPrecipitation=%{BOOL,public}d, isConditionUnexpired=%{BOOL,public}d", v32, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v14 = v121;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_0_5();
    }

    else
    {

      sub_23B3E8900(v22);
    }

    sub_23B3E895C(&v21[v63], v133);
    sub_23B3E8900(v21);
    v25 = v134;
    if (v125 == v134)
    {
      goto LABEL_37;
    }
  }

  sub_23B3C7DF4(&v21[v63], v55);
  v66 = __swift_getEnumTagSinglePayload(v55, 1, v32);
  v22 = v128;
  if (v66 == 1)
  {
    sub_23B3CF54C(v55);
    v11 = 0;
    goto LABEL_33;
  }

  sub_23B50ACC4();
  v68 = v67;
  OUTLINED_FUNCTION_3_5();
  v69();
  v70 = v68 <= 0.0 || v58;
  v11 = v68 > 0.0 && v58;
  if (v70)
  {
    goto LABEL_33;
  }

LABEL_46:

  v84 = v113;
  sub_23B3E889C(v21, v113);
  v85 = sub_23B50CDD4();
  v86 = sub_23B50D4A4();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v136[0] = v88;
    *v87 = v120;
    sub_23B3E889C(v84, v129);
    v89 = sub_23B50D184();
    v91 = v90;
    sub_23B3E8900(v84);
    v92 = sub_23B391F1C(v89, v91, v136);
    v32 = v132;

    *(v87 + 4) = v92;
    _os_log_impl(&dword_23B38D000, v85, v86, "%{public}s is valid (it's a precipitation and it's not expired). Now checking if it's relevant", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_23B3E8900(v84);
  }

  v93 = v112;
  v94 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v133, 1, v32))
  {
    (*(v115 + 16))(v114, v133, v32);
    sub_23B50ACC4();
    v94 = v95;
    OUTLINED_FUNCTION_3_5();
    v96();
  }

  if (v116)
  {
    v38 = 3000.0;
  }

  v82 = v94 <= v38;
  sub_23B3E889C(v21, v93);
  v97 = sub_23B50CDD4();
  v98 = sub_23B50D4A4();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *v99 = 136446978;
    sub_23B3E889C(v93, v129);
    v100 = sub_23B50D184();
    v102 = v101;
    sub_23B3E8900(v93);
    v103 = sub_23B391F1C(v100, v102, &v137);

    *(v99 + 4) = v103;
    *(v99 + 12) = 2050;
    *(v99 + 14) = v38 / 60.0;
    *(v99 + 22) = 1026;
    *(v99 + 24) = v94 <= v38;
    *(v99 + 28) = 2082;
    v104 = v133;
    swift_beginAccess();
    sub_23B3C7DF4(v104, v110);
    v105 = sub_23B50D184();
    v107 = sub_23B391F1C(v105, v106, &v137);

    *(v99 + 30) = v107;
    _os_log_impl(&dword_23B38D000, v97, v98, "%{public}s is relevant only if its preceding condition expires within the next %{public}f minutes. isRelevant=%{BOOL,public}d, previousConditionValidUntil=%{public}s", v99, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    sub_23B3E8900(v21);
    v108 = v104;
  }

  else
  {

    sub_23B3E8900(v93);
    sub_23B3E8900(v21);
    v108 = v133;
  }

  sub_23B3CF54C(v108);
  return v82;
}

uint64_t sub_23B3E873C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23B391F1C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_23B3E8798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FE0, &qword_23B50F758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_23B3E888C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23B3E889C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MinuteSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3E8900(uint64_t a1)
{
  v2 = type metadata accessor for MinuteSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3E895C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationRelevancyWindow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrecipitationRelevancyWindow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23B3E8A30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B3E8A4C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t MinuteWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t MinuteWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t MinuteWeather.precipitation.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteWeather();
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t MinuteWeather.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MinuteWeather();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t MinuteWeather.precipitation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteWeather() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteWeather.precipitationChance.setter(double a1)
{
  result = type metadata accessor for MinuteWeather();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MinuteWeather.precipitationChance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteWeather() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteWeather.precipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(type metadata accessor for MinuteWeather() + 28);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t MinuteWeather.precipitationIntensity.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for MinuteWeather() + 28);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t MinuteWeather.precipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteWeather() + 28);
  return OUTLINED_FUNCTION_44();
}

double MinuteWeather.apparentPrecipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for MinuteWeather() + 32);
  result = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t MinuteWeather.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MinuteWeather();
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t MinuteWeather.apparentPrecipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for MinuteWeather() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteWeather.init(date:precipitation:precipitationChance:precipitationIntensity:apparentPrecipitationIntensity:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v13);
  (*(v14 + 32))(a5, a1);
  v15 = type metadata accessor for MinuteWeather();
  *(a5 + v15[5]) = v10;
  *(a5 + v15[6]) = a6;
  v16 = v15[7];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v17);
  result = (*(v18 + 32))(a5 + v16, a3);
  v20 = a5 + v15[8];
  *v20 = v11;
  *(v20 + 8) = v12;
  return result;
}

uint64_t sub_23B3E8F74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2)
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

unint64_t sub_23B3E912C(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3E91E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3E8F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3E9210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E9124();
  *a1 = result;
  return result;
}

uint64_t sub_23B3E9238(uint64_t a1)
{
  v2 = sub_23B3E9D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3E9274(uint64_t a1)
{
  v2 = sub_23B3E9D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MinuteWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MinuteWeather();
  if ((sub_23B3CFF58(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) == *(a2 + v4[6]) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0), v5 = v4[7], sub_23B3E9FE0(&qword_280B42F10), (sub_23B50D134() & 1) != 0) && (v6 = v4[8], v7 = a1 + v6, v8 = *(a1 + v6), v9 = a2 + v6, v8 == *v9) && (sub_23B3E71A0(*(v7 + 8), *(v9 + 8)) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MinuteWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FE8, &qword_23B50F760);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E9D7C();
  sub_23B50D974();
  v29 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_6();
  sub_23B3EA078(v14, v15);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for MinuteWeather();
    v28 = *(v3 + v16[5]);
    v27 = 1;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v17 = *(v3 + v16[6]);
    v26 = 2;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v18 = v16[7];
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    sub_23B3E9FE0(&qword_280B42BE8);
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v19 = (v3 + v16[8]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v23 = v20;
    v24 = v19;
    v22[15] = 4;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t MinuteWeather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v3 = OUTLINED_FUNCTION_5(v45);
  v43 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v41 - v7;
  v9 = sub_23B50AD24();
  v10 = OUTLINED_FUNCTION_5(v9);
  v44 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132000, &qword_23B50F768);
  v15 = OUTLINED_FUNCTION_5(v49);
  v46 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v21 = type metadata accessor for MinuteWeather();
  v22 = OUTLINED_FUNCTION_6(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3E9D7C();
  v48 = v20;
  v28 = v50;
  sub_23B50D964();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v8;
  v30 = v44;
  v31 = v45;
  v58 = 0;
  OUTLINED_FUNCTION_0_6();
  sub_23B3EA078(v32, v33);
  sub_23B50D734();
  v34 = *(v30 + 32);
  v50 = v9;
  v34(v26, v47, v9);
  v56 = 1;
  sub_23B3E9E78();
  sub_23B50D734();
  v26[v21[5]] = v57;
  v55 = 2;
  sub_23B50D704();
  *&v26[v21[6]] = v35;
  v54 = 3;
  sub_23B3E9FE0(&qword_27E132018);
  sub_23B50D734();
  (*(v43 + 32))(&v26[v21[7]], v29, v31);
  v53 = 4;
  sub_23B3E9ECC();
  sub_23B50D734();
  v36 = OUTLINED_FUNCTION_3_6();
  v37(v36);
  v38 = v52;
  v39 = &v26[v21[8]];
  *v39 = v51;
  v39[8] = v38;
  sub_23B3E9F20(v26, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B3E9F84(v26);
}

uint64_t MinuteWeather.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_6();
  sub_23B3EA078(v2, v3);
  sub_23B50D0E4();
  v4 = type metadata accessor for MinuteWeather();
  v5 = *(v0 + v4[5]);
  sub_23B3CFAAC();
  v6 = *(v0 + v4[6]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v6);
  v7 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  sub_23B3E9FE0(&qword_280B42BE0);
  sub_23B50D0E4();
  v8 = v1 + v4[8];
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*v8 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v9);
  sub_23B50D1C4();
}

uint64_t MinuteWeather.hashValue.getter()
{
  sub_23B50D8C4();
  MinuteWeather.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B3E9D40()
{
  sub_23B50D8C4();
  MinuteWeather.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B3E9D7C()
{
  result = qword_27E131FF0;
  if (!qword_27E131FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FF0);
  }

  return result;
}

unint64_t sub_23B3E9DD0()
{
  result = qword_280B42580;
  if (!qword_280B42580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42580);
  }

  return result;
}

unint64_t sub_23B3E9E24()
{
  result = qword_27E131FF8;
  if (!qword_27E131FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E131FF8);
  }

  return result;
}

unint64_t sub_23B3E9E78()
{
  result = qword_27E132010;
  if (!qword_27E132010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132010);
  }

  return result;
}

unint64_t sub_23B3E9ECC()
{
  result = qword_27E132020;
  if (!qword_27E132020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132020);
  }

  return result;
}

uint64_t sub_23B3E9F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MinuteWeather();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3E9F84(uint64_t a1)
{
  v2 = type metadata accessor for MinuteWeather();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3E9FE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E10, &unk_23B5100F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B3EA078(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B3EA0E8()
{
  result = qword_280B433A8;
  if (!qword_280B433A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B433A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MinuteWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MinuteWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3EA294()
{
  result = qword_27E132030;
  if (!qword_27E132030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132030);
  }

  return result;
}

unint64_t sub_23B3EA2EC()
{
  result = qword_27E132038;
  if (!qword_27E132038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132038);
  }

  return result;
}

unint64_t sub_23B3EA344()
{
  result = qword_27E132040;
  if (!qword_27E132040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132040);
  }

  return result;
}

uint64_t DayWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t DayWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayWeather();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t DayWeather.condition.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.symbolName.getter()
{
  v1 = (v0 + *(type metadata accessor for DayWeather() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t DayWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DayWeather() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DayWeather.symbolName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.highTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.highTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.highTemperatureTime.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayWeather();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 32));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t DayWeather.highTemperatureTime.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 32);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t DayWeather.highTemperatureTime.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.lowTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.lowTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.lowTemperatureTime.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayWeather();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 40));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t DayWeather.lowTemperatureTime.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 40);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t DayWeather.lowTemperatureTime.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 44)) = v1;
  return result;
}

uint64_t DayWeather.humidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.humidityMax.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t DayWeather.humidityMax.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.humidityMin.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t DayWeather.humidityMin.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.maximumHumidity.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 56)) = v1;
  return result;
}

uint64_t DayWeather.maximumHumidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 56);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.minimumHumidity.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 60)) = v1;
  return result;
}

uint64_t DayWeather.minimumHumidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayWeather();
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t DayWeather.precipitation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 64);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 68)) = v1;
  return result;
}

uint64_t DayWeather.precipitationChance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 68);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.rainfallAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 72);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.rainfallAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 72);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.snowfallAmount.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 76);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayWeather.snowfallAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 76);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.snowfallAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 76);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.precipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 80);
  OUTLINED_FUNCTION_57();
  return sub_23B3EB798();
}

uint64_t DayWeather.precipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 80);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.sun.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 84);
  OUTLINED_FUNCTION_57();
  return sub_23B3EB798();
}

uint64_t DayWeather.sun.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 84);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.moon.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 88);
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_54_0(v1);
  return sub_23B3BAB5C();
}

uint64_t DayWeather.moon.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 88);
  OUTLINED_FUNCTION_57();
  return sub_23B3EB798();
}

uint64_t DayWeather.moon.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 88);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.uvIndex.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayWeather();
  v3 = (v1 + *(result + 92));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t DayWeather.uvIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayWeather();
  v5 = v1 + *(result + 92);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayWeather.uvIndex.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 92);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.visibilityMax.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 96)) = v1;
  return result;
}

uint64_t DayWeather.visibilityMax.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 96);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.visibilityMin.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 100)) = v1;
  return result;
}

uint64_t DayWeather.visibilityMin.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 100);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.maximumVisibility.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 104)) = v1;
  return result;
}

uint64_t DayWeather.maximumVisibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 104);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.minimumVisibility.setter()
{
  result = OUTLINED_FUNCTION_66_0();
  *(v0 + *(result + 108)) = v1;
  return result;
}

uint64_t DayWeather.minimumVisibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 108);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.wind.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 112);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_54_0(v1);
  return sub_23B3BAB5C();
}

uint64_t DayWeather.wind.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 112);
  OUTLINED_FUNCTION_57();
  return sub_23B3EB798();
}

uint64_t DayWeather.wind.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 112);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.highWindSpeed.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayWeather();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 116));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t DayWeather.highWindSpeed.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 116);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t DayWeather.highWindSpeed.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 116);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.windGustSpeedMax.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 120);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayWeather.windGustSpeedMax.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 120);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.windGustSpeedMax.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 120);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.windSpeedAvg.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 124);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayWeather.windSpeedAvg.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 124);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.windSpeedAvg.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 124);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.windSpeedMax.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 128);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayWeather.windSpeedMax.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 128);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayWeather.windSpeedMax.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 128);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.daytimeForecast.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 132);
  return OUTLINED_FUNCTION_53_0();
}

uint64_t DayWeather.daytimeForecast.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 132);
  return OUTLINED_FUNCTION_52_1();
}

uint64_t sub_23B3EB798()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t DayWeather.daytimeForecast.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 132);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.overnightForecast.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayWeather() + 136);
  return OUTLINED_FUNCTION_53_0();
}

uint64_t DayWeather.overnightForecast.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 136);
  return OUTLINED_FUNCTION_52_1();
}

uint64_t DayWeather.overnightForecast.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 136);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.restOfDayForecast.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayWeather();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 140));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t sub_23B3EB900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return v4;
}

uint64_t DayWeather.restOfDayForecast.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 140);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t sub_23B3EB988(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return v4;
}

uint64_t DayWeather.restOfDayForecast.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayWeather() + 140);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayWeather.init(date:condition:symbolName:highTemperature:highTemperatureTime:lowTemperature:lowTemperatureTime:humidity:humidityMax:humidityMin:maximumHumidity:minimumHumidity:precipitation:precipitationChance:rainfallAmount:snowfallAmount:precipitationAmountByType:sun:moon:uvIndex:visibilityMax:visibilityMin:maximumVisibility:minimumVisibility:wind:highWindSpeed:windGustSpeedMax:windSpeedAvg:windSpeedMax:daytimeForecast:overnightForecast:restOfDayForecast:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v43 = *a2;
  v82 = *a18;
  v89 = *a24;
  v88 = *(a24 + 8);
  v44 = type metadata accessor for DayWeather();
  v45 = v44[8];
  v46 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  v50 = v44[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v46);
  v86 = v44[29];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  v87 = v44[35];
  type metadata accessor for DayPartForecast();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  (*(*(v46 - 8) + 32))(a9, a1, v46);
  *(a9 + v44[5]) = v43;
  v62 = (a9 + v44[6]);
  *v62 = a3;
  v62[1] = a4;
  v63 = v44[7];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v64);
  v66 = *(v65 + 32);
  v66(a9 + v63, a5, v64);
  sub_23B3EB988(a6, a9 + v45, &qword_27E131E18, &unk_23B50F710);
  v66(a9 + v44[9], a7, v64);
  sub_23B3EB988(a8, a9 + v50, &qword_27E131E18, &unk_23B50F710);
  *(a9 + v44[11]) = a10;
  *(a9 + v44[12]) = a11;
  *(a9 + v44[13]) = a12;
  *(a9 + v44[14]) = a13;
  *(a9 + v44[15]) = a14;
  v67 = v44[22];
  OUTLINED_FUNCTION_44_1();
  sub_23B3EBEE4();
  *(a9 + v44[16]) = v82;
  *(a9 + v44[17]) = a15;
  v68 = v44[18];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v69);
  v71 = *(v70 + 32);
  v71(a9 + v68, a19, v69);
  v71(a9 + v44[19], a20, v69);
  v72 = v44[20];
  OUTLINED_FUNCTION_42_1();
  sub_23B3EBEE4();
  v73 = v44[21];
  OUTLINED_FUNCTION_41_1();
  sub_23B3EBEE4();
  v74 = a9 + v44[23];
  *v74 = v89;
  *(v74 + 8) = v88;
  v75 = v44[28];
  OUTLINED_FUNCTION_40_1();
  sub_23B3EBEE4();
  sub_23B3EB988(a28, a9 + v86, &qword_27E132048, &qword_23B510110);
  v76 = v44[33];
  sub_23B3EBEE4();
  v77 = v44[34];
  sub_23B3EBEE4();
  sub_23B3EB988(a34, a9 + v87, &qword_27E132050, &qword_23B510140);
  *(a9 + v44[24]) = a16;
  *(a9 + v44[25]) = a17;
  *(a9 + v44[26]) = a25;
  *(a9 + v44[27]) = a26;
  v92 = *(*(v54 - 8) + 32);
  v92(a9 + v44[30], a29, v54);
  v92(a9 + v44[31], a30, v54);
  v78 = a9 + v44[32];

  return (v92)(v78, a31, v54);
}

uint64_t sub_23B3EBEE4()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t sub_23B3EBF34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000023B528C60 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000023B528C80 == a2;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79746964696D7568 && a2 == 0xEB0000000078614DLL;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79746964696D7568 && a2 == 0xEB000000006E694DLL;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x486D756D6978616DLL && a2 == 0xEF79746964696D75;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x486D756D696E696DLL && a2 == 0xEF79746964696D75;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C6C61666E696172 && a2 == 0xEE00746E756F6D41;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000019 && 0x800000023B528CA0 == a2;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 7239027 && a2 == 0xE300000000000000;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 1852796781 && a2 == 0xE400000000000000;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x696C696269736976 && a2 == 0xED000078614D7974;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x696C696269736976 && a2 == 0xED00006E694D7974;
                                            if (v26 || (sub_23B50D834() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000011 && 0x800000023B528CC0 == a2;
                                              if (v27 || (sub_23B50D834() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000011 && 0x800000023B528CE0 == a2;
                                                if (v28 || (sub_23B50D834() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                                  if (v29 || (sub_23B50D834() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x646E695768676968 && a2 == 0xED00006465657053;
                                                    if (v30 || (sub_23B50D834() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000010 && 0x800000023B528D00 == a2;
                                                      if (v31 || (sub_23B50D834() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x65657053646E6977 && a2 == 0xEC00000067764164;
                                                        if (v32 || (sub_23B50D834() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x65657053646E6977 && a2 == 0xEC00000078614D64;
                                                          if (v33 || (sub_23B50D834() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x46656D6974796164 && a2 == 0xEF7473616365726FLL;
                                                            if (v34 || (sub_23B50D834() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000011 && 0x800000023B528D20 == a2;
                                                              if (v35 || (sub_23B50D834() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else if (a1 == 0xD000000000000011 && 0x800000023B528D40 == a2)
                                                              {

                                                                return 31;
                                                              }

                                                              else
                                                              {
                                                                v37 = sub_23B50D834();

                                                                if (v37)
                                                                {
                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  return 32;
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

uint64_t sub_23B3EC900(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      return 0x6F697469646E6F63;
    case 2:
      return 0x614E6C6F626D7973;
    case 3:
      return 0x706D655468676968;
    case 4:
    case 13:
      return 0xD000000000000013;
    case 5:
      return 0x65706D6554776F6CLL;
    case 6:
      return 0xD000000000000012;
    case 7:
    case 8:
    case 9:
      return 0x79746964696D7568;
    case 10:
      v4 = 1769496941;
      return v4 | 0x486D756D00000000;
    case 11:
      v4 = 1768843629;
      return v4 | 0x486D756D00000000;
    case 12:
      return 0x7469706963657270;
    case 14:
      v3 = 1852399986;
      goto LABEL_11;
    case 15:
      v3 = 2003791475;
LABEL_11:
      result = v3 | 0x6C6C616600000000;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 17:
      result = 7239027;
      break;
    case 18:
      result = 1852796781;
      break;
    case 19:
      result = 0x7865646E497675;
      break;
    case 20:
    case 21:
      result = 0x696C696269736976;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 1684957559;
      break;
    case 25:
      result = 0x646E695768676968;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
    case 28:
      result = 0x65657053646E6977;
      break;
    case 29:
      result = 0x46656D6974796164;
      break;
    case 30:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B3ECC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3EBF34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B3ECC68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3EC8F8();
  *a1 = result;
  return result;
}

uint64_t sub_23B3ECC90(uint64_t a1)
{
  v2 = sub_23B3F0354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3ECCCC(uint64_t a1)
{
  v2 = sub_23B3F0354();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static DayWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v191 = type metadata accessor for DayPartForecast();
  v4 = OUTLINED_FUNCTION_6(v191);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = v180 - v14;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132058, &qword_23B50F990);
  OUTLINED_FUNCTION_6(v190);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v20 = v180 - v19;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v194);
  v189 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  v188 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_3(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  v192 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132060, &qword_23B50F998);
  OUTLINED_FUNCTION_6(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  v193 = v35;
  v36 = sub_23B50AD24();
  v37 = OUTLINED_FUNCTION_5(v36);
  v198 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  v197 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v43 = OUTLINED_FUNCTION_3(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12();
  v195 = v46;
  MEMORY[0x28223BE20](v47);
  v49 = v180 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  v51 = OUTLINED_FUNCTION_6(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12();
  v196 = v54;
  MEMORY[0x28223BE20](v55);
  v57 = v180 - v56;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v186 = v31;
  v58 = type metadata accessor for DayWeather();
  if ((sub_23B3CAE4C(*(a1 + *(v58 + 20)), *(a2 + *(v58 + 20))) & 1) == 0)
  {
    return 0;
  }

  v184 = v58;
  v185 = a1;
  v59 = *(v58 + 24);
  v60 = *(a1 + v59);
  v61 = *(a1 + v59 + 8);
  v187 = a2;
  v62 = (a2 + v59);
  v63 = v60 == *v62 && v61 == v62[1];
  if (!v63 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v181 = v15;
  v182 = v20;
  v183 = v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v65 = v184;
  v66 = v184[7];
  OUTLINED_FUNCTION_4_1();
  v68 = sub_23B3F054C(v67, &qword_27E131E30, &qword_23B511AC0);
  v69 = v185;
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v180[2] = v68;
  v70 = v65[8];
  v71 = *(v50 + 48);
  sub_23B3EB900(v69 + v70, v57, &qword_27E131E18, &unk_23B50F710);
  v72 = v187 + v70;
  v73 = v187;
  v74 = v71;
  sub_23B3EB900(v72, &v57[v71], &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_21_0(v57);
  if (v63)
  {
    OUTLINED_FUNCTION_21_0(&v57[v71]);
    if (v63)
    {
      sub_23B398890(v57, &qword_27E131E18, &unk_23B50F710);
      v75 = v73;
      goto LABEL_20;
    }

LABEL_17:
    v77 = &qword_27E131E20;
    v78 = &qword_23B51E340;
    v79 = v57;
    goto LABEL_18;
  }

  sub_23B3EB900(v57, v49, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_21_0(&v57[v71]);
  if (v76)
  {
    (*(v198 + 8))(v49, v36);
    goto LABEL_17;
  }

  v80 = v198;
  v81 = *(v198 + 32);
  v180[1] = v64;
  v82 = v197;
  v81(v197, &v57[v74], v36);
  OUTLINED_FUNCTION_0_7();
  sub_23B3F05D8(v83, v84);
  v85 = sub_23B50D134();
  v86 = *(v80 + 8);
  v86(v82, v36);
  v86(v49, v36);
  v75 = v187;
  sub_23B398890(v57, &qword_27E131E18, &unk_23B50F710);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v87 = v184;
  v88 = v185;
  v89 = v184[9];
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v90 = v87[10];
  v91 = *(v50 + 48);
  v92 = v196;
  OUTLINED_FUNCTION_59();
  sub_23B3EB900(v93, v94, v95, v96);
  OUTLINED_FUNCTION_59();
  sub_23B3EB900(v97, v98, v99, v100);
  OUTLINED_FUNCTION_21_0(v92);
  if (!v63)
  {
    v101 = v195;
    sub_23B3EB900(v92, v195, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_21_0(v92 + v91);
    if (!v102)
    {
      v103 = v198;
      v104 = v92 + v91;
      v105 = v197;
      (*(v198 + 32))(v197, v104, v36);
      OUTLINED_FUNCTION_0_7();
      sub_23B3F05D8(v106, v107);
      v108 = sub_23B50D134();
      v109 = *(v103 + 8);
      v109(v105, v36);
      v109(v101, v36);
      sub_23B398890(v92, &qword_27E131E18, &unk_23B50F710);
      if ((v108 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    (*(v198 + 8))(v101, v36);
LABEL_29:
    v77 = &qword_27E131E20;
    v78 = &qword_23B51E340;
    v79 = v92;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_0(v92 + v91);
  if (!v63)
  {
    goto LABEL_29;
  }

  sub_23B398890(v92, &qword_27E131E18, &unk_23B50F710);
LABEL_31:
  OUTLINED_FUNCTION_28_3(v87[11]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_3(v87[12]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_3(v87[13]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_3(v87[14]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_3(v87[15]);
  if (!v63)
  {
    return 0;
  }

  if ((sub_23B3CFF58(*(v88 + v87[16]), *(v75 + v87[16])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_3(v87[17]);
  if (!v63)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v110 = v87[18];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F054C(v111, &qword_27E131E28, &qword_23B50EFB0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v112 = v87[19];
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v113 = v87[20];
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v114 = OUTLINED_FUNCTION_23_2(v184[21]);
  if (!static SunEvents.== infix(_:_:)(v114, v115))
  {
    return 0;
  }

  v116 = OUTLINED_FUNCTION_23_2(v184[22]);
  if (!static MoonEvents.== infix(_:_:)(v116, v117))
  {
    return 0;
  }

  v118 = v184[23];
  v119 = v185 + v118;
  v120 = *(v185 + v118);
  v121 = v187 + v118;
  if (*v119 != *v121)
  {
    return 0;
  }

  v122 = *(v121 + 8);
  v123 = UVIndex.ExposureCategory.rawValue.getter(*(v119 + 8));
  v125 = v124;
  if (v123 == UVIndex.ExposureCategory.rawValue.getter(v122) && v125 == v126)
  {
  }

  else
  {
    v128 = sub_23B50D834();

    if ((v128 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29_3(v184[24]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_3(v184[25]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_3(v184[26]);
  if (!v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_3(v184[27]);
  if (!v63)
  {
    return 0;
  }

  v129 = OUTLINED_FUNCTION_23_2(v184[28]);
  if (!static Wind.== infix(_:_:)(v129, v130))
  {
    return 0;
  }

  v131 = v184[29];
  v132 = *(v186 + 48);
  v133 = v193;
  OUTLINED_FUNCTION_59();
  sub_23B3EB900(v134, v135, v136, v137);
  OUTLINED_FUNCTION_59();
  sub_23B3EB900(v138, v139, v140, v141);
  OUTLINED_FUNCTION_51(v133, 1, v194);
  if (v63)
  {
    OUTLINED_FUNCTION_51(v193 + v132, 1, v194);
    if (v63)
    {
      sub_23B398890(v193, &qword_27E132048, &qword_23B510110);
LABEL_76:
      v155 = v184[30];
      OUTLINED_FUNCTION_4_1();
      sub_23B3F054C(v156, v157, v158);
      if ((OUTLINED_FUNCTION_70_0() & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_23_2(v184[31]);
      if ((OUTLINED_FUNCTION_70_0() & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_23_2(v184[32]);
      if ((OUTLINED_FUNCTION_70_0() & 1) == 0)
      {
        return 0;
      }

      v159 = OUTLINED_FUNCTION_23_2(v184[33]);
      if (!static DayPartForecast.== infix(_:_:)(v159, v160))
      {
        return 0;
      }

      v161 = OUTLINED_FUNCTION_23_2(v184[34]);
      if (!static DayPartForecast.== infix(_:_:)(v161, v162))
      {
        return 0;
      }

      v163 = v184[35];
      v164 = *(v190 + 48);
      v165 = v182;
      OUTLINED_FUNCTION_59();
      sub_23B3EB900(v166, v167, v168, v169);
      OUTLINED_FUNCTION_59();
      sub_23B3EB900(v170, v171, v172, v173);
      OUTLINED_FUNCTION_51(v165, 1, v191);
      if (v63)
      {
        OUTLINED_FUNCTION_51(&v182[v164], 1, v191);
        if (v63)
        {
          sub_23B398890(v182, &qword_27E132050, &qword_23B510140);
          return 1;
        }
      }

      else
      {
        v174 = v182;
        sub_23B3EB900(v182, v181, &qword_27E132050, &qword_23B510140);
        OUTLINED_FUNCTION_51(v174 + v164, 1, v191);
        if (!v175)
        {
          OUTLINED_FUNCTION_3_7();
          v176 = v182;
          v177 = v183;
          sub_23B3EBEE4();
          v178 = static DayPartForecast.== infix(_:_:)(v181, v177);
          sub_23B3F04F8();
          sub_23B3F04F8();
          sub_23B398890(v176, &qword_27E132050, &qword_23B510140);
          return v178;
        }

        OUTLINED_FUNCTION_7_7();
        sub_23B3F04F8();
      }

      v77 = &qword_27E132058;
      v78 = &qword_23B50F990;
      v79 = v182;
      goto LABEL_18;
    }
  }

  else
  {
    v142 = v193;
    sub_23B3EB900(v193, v192, &qword_27E132048, &qword_23B510110);
    OUTLINED_FUNCTION_51(v142 + v132, 1, v194);
    if (!v143)
    {
      v145 = v188;
      v144 = v189;
      v146 = v193;
      v147 = v193 + v132;
      v148 = v194;
      (*(v189 + 32))(v188, v147, v194);
      OUTLINED_FUNCTION_4_1();
      sub_23B3F054C(v149, v150, v151);
      v152 = v192;
      v153 = sub_23B50D134();
      v154 = *(v144 + 8);
      v154(v145, v148);
      v154(v152, v148);
      sub_23B398890(v146, &qword_27E132048, &qword_23B510110);
      if ((v153 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_76;
    }

    (*(v189 + 8))(v192, v194);
  }

  v77 = &qword_27E132060;
  v78 = &qword_23B50F998;
  v79 = v193;
LABEL_18:
  sub_23B398890(v79, v77, v78);
  return 0;
}

uint64_t DayWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132068, &qword_23B50F9A0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = v57 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3F0354();
  sub_23B50D974();
  LOBYTE(v60) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_7();
  sub_23B3F05D8(v14, v15);
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for DayWeather();
    LOBYTE(v60) = *(v3 + v16[5]);
    v62 = 1;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v17 = (v3 + v16[6]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v60) = 2;
    OUTLINED_FUNCTION_26();
    sub_23B50D7A4();
    v20 = v16[7];
    v58 = v16;
    v59 = v20;
    LOBYTE(v60) = 3;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    v23 = sub_23B3F054C(v22, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_33();
    v59 = v21;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v57[1] = v23;
    OUTLINED_FUNCTION_1_4(v58[8]);
    sub_23B50D794();
    OUTLINED_FUNCTION_10_3(v58[9]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v24 = v58;
    OUTLINED_FUNCTION_1_4(v58[10]);
    sub_23B50D794();
    v25 = *(v3 + v24[11]);
    OUTLINED_FUNCTION_14_4(7);
    v26 = *(v3 + v24[12]);
    OUTLINED_FUNCTION_14_4(8);
    v27 = *(v3 + v24[13]);
    OUTLINED_FUNCTION_14_4(9);
    v28 = *(v3 + v24[14]);
    OUTLINED_FUNCTION_14_4(10);
    v29 = *(v3 + v58[15]);
    OUTLINED_FUNCTION_14_4(11);
    LOBYTE(v60) = *(v3 + v58[16]);
    v62 = 12;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v30 = *(v3 + v58[17]);
    OUTLINED_FUNCTION_14_4(13);
    v31 = v58[18];
    LOBYTE(v60) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F054C(v32, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_10_3(v58[19]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v33 = v58[20];
    OUTLINED_FUNCTION_68_0(16);
    type metadata accessor for PrecipitationAmountByType();
    OUTLINED_FUNCTION_50_0();
    sub_23B3F05D8(v34, v35);
    OUTLINED_FUNCTION_20_3();
    v36 = v58[21];
    OUTLINED_FUNCTION_68_0(17);
    type metadata accessor for SunEvents();
    OUTLINED_FUNCTION_49_1();
    sub_23B3F05D8(v37, v38);
    OUTLINED_FUNCTION_20_3();
    v39 = v58[22];
    OUTLINED_FUNCTION_68_0(18);
    type metadata accessor for MoonEvents();
    OUTLINED_FUNCTION_48_1();
    sub_23B3F05D8(v40, v41);
    OUTLINED_FUNCTION_20_3();
    v42 = (v3 + v58[23]);
    v43 = *v42;
    LOBYTE(v42) = *(v42 + 8);
    v60 = v43;
    v61 = v42;
    v62 = 19;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v44 = *(v3 + v58[24]);
    OUTLINED_FUNCTION_14_4(20);
    v45 = *(v3 + v58[25]);
    OUTLINED_FUNCTION_14_4(21);
    v46 = *(v3 + v58[26]);
    OUTLINED_FUNCTION_14_4(22);
    v47 = *(v3 + v58[27]);
    OUTLINED_FUNCTION_14_4(23);
    v48 = v58[28];
    OUTLINED_FUNCTION_68_0(24);
    type metadata accessor for Wind();
    OUTLINED_FUNCTION_46_1();
    sub_23B3F05D8(v49, v50);
    OUTLINED_FUNCTION_20_3();
    v51 = v58[29];
    LOBYTE(v60) = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F054C(v52, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D794();
    OUTLINED_FUNCTION_1_4(v58[30]);
    sub_23B50D7F4();
    OUTLINED_FUNCTION_1_4(v58[31]);
    sub_23B50D7F4();
    OUTLINED_FUNCTION_1_4(v58[32]);
    sub_23B50D7F4();
    v53 = v58[33];
    OUTLINED_FUNCTION_68_0(29);
    type metadata accessor for DayPartForecast();
    OUTLINED_FUNCTION_45_3();
    sub_23B3F05D8(v54, v55);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_9_3(v58[34]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_9_3(v58[35]);
    OUTLINED_FUNCTION_26();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t DayWeather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v7);
  v196 = type metadata accessor for DayPartForecast();
  v8 = OUTLINED_FUNCTION_6(v196);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v14 = OUTLINED_FUNCTION_5(v13);
  v204 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_3(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v25);
  v180 = type metadata accessor for Wind();
  v26 = OUTLINED_FUNCTION_6(v180);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v29);
  v179 = type metadata accessor for MoonEvents();
  v30 = OUTLINED_FUNCTION_6(v179);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v33);
  v178 = type metadata accessor for SunEvents();
  v34 = OUTLINED_FUNCTION_6(v178);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v37);
  v177 = type metadata accessor for PrecipitationAmountByType();
  v38 = OUTLINED_FUNCTION_6(v177);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v41);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v42 = OUTLINED_FUNCTION_5(v202);
  v199 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v49 = OUTLINED_FUNCTION_3(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v55 = OUTLINED_FUNCTION_5(v54);
  v208 = v56;
  v209 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v60 = v176 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = v176 - v62;
  v64 = sub_23B50AD24();
  v65 = OUTLINED_FUNCTION_5(v64);
  v194 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_27();
  v71 = v70 - v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132080, &qword_23B50F9A8);
  v73 = OUTLINED_FUNCTION_5(v72);
  v191 = v74;
  v192 = v73;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  v79 = v176 - v78;
  v80 = type metadata accessor for DayWeather();
  v81 = OUTLINED_FUNCTION_6(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_27();
  v86 = v85 - v84;
  v207 = *(v87 + 32);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v64);
  v203 = v80[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v64);
  v197 = v80[29];
  OUTLINED_FUNCTION_1();
  v201 = v13;
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v13);
  v205 = v86;
  v206 = v80;
  v198 = v80[35];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  v101 = a1[3];
  v102 = a1[4];
  v200 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v101);
  sub_23B3F0354();
  v193 = v79;
  v103 = v195;
  sub_23B50D964();
  if (!v103)
  {
    v195 = v63;
    v176[3] = v60;
    LOBYTE(v210) = 0;
    OUTLINED_FUNCTION_0_7();
    sub_23B3F05D8(v104, v105);
    OUTLINED_FUNCTION_81();
    sub_23B50D734();
    v130 = v205;
    (*(v194 + 32))(v205, v71, v64);
    v214 = 1;
    sub_23B3F0450();
    sub_23B50D734();
    v131 = v206;
    v176[2] = v64;
    *(v130 + v206[5]) = v210;
    OUTLINED_FUNCTION_75(2);
    v132 = sub_23B50D6E4();
    v133 = (v130 + v131[6]);
    *v133 = v132;
    v133[1] = v134;
    LOBYTE(v210) = 3;
    v135 = OUTLINED_FUNCTION_19_3(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    sub_23B50D734();
    v176[1] = v135;
    v137 = *(v208 + 32);
    v136 = v208 + 32;
    v138 = OUTLINED_FUNCTION_79(v131[7]);
    v195 = v139;
    v139(v138);
    OUTLINED_FUNCTION_60(4);
    v140 = v190;
    sub_23B50D6D4();
    v176[0] = v136;
    sub_23B3EB988(v140, v130 + v207, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_60(5);
    sub_23B50D734();
    v141 = OUTLINED_FUNCTION_79(v131[9]);
    v195(v141);
    OUTLINED_FUNCTION_60(6);
    v142 = v189;
    sub_23B50D6D4();
    sub_23B3EB988(v142, v130 + v203, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_75(7);
    sub_23B50D704();
    *(v130 + v131[11]) = v143;
    OUTLINED_FUNCTION_22_1(8);
    *(v130 + v131[12]) = v144;
    OUTLINED_FUNCTION_22_1(9);
    *(v205 + v206[13]) = v145;
    OUTLINED_FUNCTION_22_1(10);
    *(v205 + v206[14]) = v146;
    OUTLINED_FUNCTION_22_1(11);
    *(v205 + v206[15]) = v147;
    v214 = 12;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_38_1();
    sub_23B50D734();
    *(v205 + v206[16]) = v210;
    OUTLINED_FUNCTION_22_1(13);
    *(v205 + v206[17]) = v148;
    LOBYTE(v210) = 14;
    OUTLINED_FUNCTION_19_3(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_18_3();
    sub_23B50D734();
    v149 = *(v199 + 32);
    v149(v205 + v206[18], v188, v202);
    OUTLINED_FUNCTION_60(15);
    OUTLINED_FUNCTION_37_1(&v215);
    v149(v205 + v206[19], v187, v202);
    LOBYTE(v210) = 16;
    OUTLINED_FUNCTION_50_0();
    sub_23B3F05D8(v150, v151);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_38_1();
    sub_23B50D734();
    v152 = v206[20];
    OUTLINED_FUNCTION_42_1();
    sub_23B3EBEE4();
    LOBYTE(v210) = 17;
    OUTLINED_FUNCTION_49_1();
    sub_23B3F05D8(v153, v154);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_38_1();
    sub_23B50D734();
    v155 = v206[21];
    OUTLINED_FUNCTION_41_1();
    sub_23B3EBEE4();
    LOBYTE(v210) = 18;
    OUTLINED_FUNCTION_48_1();
    sub_23B3F05D8(v156, v157);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_38_1();
    sub_23B50D734();
    v158 = v206[22];
    OUTLINED_FUNCTION_44_1();
    sub_23B3EBEE4();
    v214 = 19;
    sub_23B3F04A4();
    OUTLINED_FUNCTION_38_1();
    sub_23B50D734();
    v159 = v211;
    v160 = v205 + v206[23];
    *v160 = v210;
    *(v160 + 8) = v159;
    OUTLINED_FUNCTION_22_1(20);
    *(v205 + v206[24]) = v161;
    OUTLINED_FUNCTION_22_1(21);
    *(v205 + v206[25]) = v162;
    OUTLINED_FUNCTION_22_1(22);
    *(v205 + v206[26]) = v163;
    OUTLINED_FUNCTION_22_1(23);
    *(v205 + v206[27]) = v164;
    LOBYTE(v210) = 24;
    OUTLINED_FUNCTION_46_1();
    sub_23B3F05D8(v165, v166);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_38_1();
    sub_23B50D734();
    v167 = v206[28];
    OUTLINED_FUNCTION_40_1();
    sub_23B3EBEE4();
    LOBYTE(v210) = 25;
    OUTLINED_FUNCTION_19_3(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_18_3();
    sub_23B50D6D4();
    sub_23B3EB988(v181, v205 + v197, &qword_27E132048, &qword_23B510110);
    OUTLINED_FUNCTION_60(26);
    OUTLINED_FUNCTION_18_3();
    sub_23B50D734();
    v168 = *(v204 + 32);
    v168(v205 + v206[30], v182, v201);
    OUTLINED_FUNCTION_60(27);
    OUTLINED_FUNCTION_37_1(&v212);
    v168(v205 + v206[31], v183, v201);
    OUTLINED_FUNCTION_60(28);
    OUTLINED_FUNCTION_37_1(v213);
    v168(v205 + v206[32], v184, v201);
    LOBYTE(v210) = 29;
    OUTLINED_FUNCTION_45_3();
    sub_23B3F05D8(v169, v170);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_18_3();
    sub_23B50D734();
    v171 = v206[33];
    OUTLINED_FUNCTION_3_7();
    sub_23B3EBEE4();
    OUTLINED_FUNCTION_60(30);
    OUTLINED_FUNCTION_18_3();
    sub_23B50D734();
    v172 = v206[34];
    OUTLINED_FUNCTION_3_7();
    sub_23B3EBEE4();
    OUTLINED_FUNCTION_60(31);
    OUTLINED_FUNCTION_18_3();
    sub_23B50D6D4();
    v173 = OUTLINED_FUNCTION_17_1();
    v174(v173);
    sub_23B3EB988(v185, v205 + v198, &qword_27E132050, &qword_23B510140);
    OUTLINED_FUNCTION_43_1();
    sub_23B3BAB5C();
    __swift_destroy_boxed_opaque_existential_1(v200);
    return sub_23B3F04F8();
  }

  OUTLINED_FUNCTION_69_0();
  v107 = v106 - 45;
  v108 = v201;
  v109 = v204;
  v110 = v203;
  v111 = v205;
  v112 = v206;
  __swift_destroy_boxed_opaque_existential_1(v200);
  if (v107)
  {
    (*(v194 + 8))(v111, v64);
  }

  if ((v107 & 4) != 0)
  {
    v113 = *(v111 + v112[6] + 8);
  }

  if ((v107 & 8) != 0)
  {
    v114 = *(v208 + 8);
    v115 = OUTLINED_FUNCTION_79(v112[7]);
    v116(v115);
  }

  sub_23B398890(v111 + v207, &qword_27E131E18, &unk_23B50F710);
  if ((v107 & 0x20) != 0)
  {
    v117 = *(v208 + 8);
    v118 = OUTLINED_FUNCTION_79(v112[9]);
    v119(v118);
  }

  sub_23B398890(v111 + v110, &qword_27E131E18, &unk_23B50F710);
  if ((v107 & 0x4000) != 0)
  {
    (*(v199 + 8))(v111 + v112[18], v202);
    if ((v107 & 0x8000) == 0)
    {
LABEL_13:
      if ((v107 & 0x10000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }
  }

  else if ((v107 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  (*(v199 + 8))(v111 + v112[19], v202);
  if ((v107 & 0x10000) == 0)
  {
LABEL_14:
    if ((v107 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v122 = v112[20];
  OUTLINED_FUNCTION_71_1();
  if ((v107 & 0x20000) == 0)
  {
LABEL_15:
    if ((v107 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v123 = v112[21];
  OUTLINED_FUNCTION_71_1();
  if ((v107 & 0x40000) == 0)
  {
LABEL_16:
    if ((v107 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  v124 = v112[22];
  OUTLINED_FUNCTION_71_1();
  if ((v107 & 0x1000000) != 0)
  {
LABEL_17:
    v120 = v112[28];
    OUTLINED_FUNCTION_71_1();
  }

LABEL_18:
  sub_23B398890(v111 + v197, &qword_27E132048, &qword_23B510110);
  if ((v107 & 0x4000000) != 0)
  {
    v125 = OUTLINED_FUNCTION_78(v112[30]);
    v126(v125);
    if ((v107 & 0x8000000) == 0)
    {
LABEL_20:
      if ((v107 & 0x10000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  else if ((v107 & 0x8000000) == 0)
  {
    goto LABEL_20;
  }

  v127 = OUTLINED_FUNCTION_78(v112[31]);
  v128(v127);
  if ((v107 & 0x10000000) == 0)
  {
LABEL_21:
    if ((v107 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_34:
    v129 = v112[33];
    OUTLINED_FUNCTION_7_7();
    sub_23B3F04F8();
    if ((v107 & 0x40000000) == 0)
    {
      return sub_23B398890(v111 + v198, &qword_27E132050, &qword_23B510140);
    }

    goto LABEL_23;
  }

LABEL_33:
  (*(v109 + 8))(v111 + v112[32], v108);
  if ((v107 & 0x20000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  if ((v107 & 0x40000000) != 0)
  {
LABEL_23:
    v121 = v112[34];
    OUTLINED_FUNCTION_7_7();
    sub_23B3F04F8();
  }

  return sub_23B398890(v111 + v198, &qword_27E132050, &qword_23B510140);
}

uint64_t DayWeather.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_23B50D934();
  v4 = OUTLINED_FUNCTION_5(v3);
  v50 = v5;
  v51 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v49 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320C8, &qword_23B50F9B0);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for DayWeather();
  v16 = OUTLINED_FUNCTION_6(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_43_1();
  sub_23B3BAB5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320D0, &qword_23B50F9B8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23B50F980;
  *(v19 + 32) = 1702125924;
  *(v19 + 40) = 0xE400000000000000;
  v20 = sub_23B50AD24();
  *(v19 + 72) = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v19 + 48));
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v1, v20);
  *(v19 + 80) = 0x6F697469646E6F63;
  *(v19 + 88) = 0xE90000000000006ELL;
  *(v19 + 96) = *(v1 + v15[5]);
  *(v19 + 120) = &type metadata for WeatherCondition;
  *(v19 + 128) = 0x614E6C6F626D7973;
  *(v19 + 136) = 0xEA0000000000656DLL;
  v22 = (v1 + v15[6]);
  v23 = *v22;
  v24 = v22[1];
  v25 = MEMORY[0x277D837D0];
  *(v19 + 144) = v23;
  *(v19 + 152) = v24;
  *(v19 + 168) = v25;
  *(v19 + 176) = 0x706D655468676968;
  *(v19 + 184) = 0xEF65727574617265;
  v26 = v15[7];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  *(v19 + 216) = v27;
  v28 = __swift_allocate_boxed_opaque_existential_0((v19 + 192));
  v29 = *(*(v27 - 8) + 16);
  v29(v28, v2 + v26, v27);
  strcpy((v19 + 224), "lowTemperature");
  *(v19 + 239) = -18;
  v30 = v15[9];
  *(v19 + 264) = v27;
  v31 = __swift_allocate_boxed_opaque_existential_0((v19 + 240));
  v29(v31, v2 + v30, v27);
  strcpy((v19 + 272), "precipitation");
  *(v19 + 286) = -4864;
  *(v19 + 288) = *(v2 + v15[16]);
  *(v19 + 312) = &type metadata for Precipitation;
  *(v19 + 320) = 0xD000000000000013;
  *(v19 + 328) = 0x800000023B528C00;
  v32 = MEMORY[0x277D839F8];
  *(v19 + 336) = *(v2 + v15[17]);
  *(v19 + 360) = v32;
  *(v19 + 368) = 0xD000000000000013;
  *(v19 + 376) = 0x800000023B5282C0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  *(v19 + 408) = v33;
  v34 = __swift_allocate_boxed_opaque_existential_0((v19 + 384));
  v35 = *(*(v33 - 8) + 16);
  v35(v34, v2 + v15[18], v33);
  strcpy((v19 + 416), "snowfallAmount");
  *(v19 + 431) = -18;
  v36 = v15[19];
  *(v19 + 456) = v33;
  v37 = __swift_allocate_boxed_opaque_existential_0((v19 + 432));
  v35(v37, v2 + v36, v33);
  *(v19 + 464) = 7239027;
  *(v19 + 472) = 0xE300000000000000;
  v38 = v15[21];
  *(v19 + 504) = type metadata accessor for SunEvents();
  __swift_allocate_boxed_opaque_existential_0((v19 + 480));
  OUTLINED_FUNCTION_39_1();
  sub_23B3BAB5C();
  *(v19 + 512) = 1852796781;
  *(v19 + 520) = 0xE400000000000000;
  v39 = v15[22];
  *(v19 + 552) = type metadata accessor for MoonEvents();
  __swift_allocate_boxed_opaque_existential_0((v19 + 528));
  OUTLINED_FUNCTION_51_0();
  sub_23B3BAB5C();
  *(v19 + 560) = 0x7865646E497675;
  *(v19 + 568) = 0xE700000000000000;
  v40 = (v2 + v15[23]);
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  *(v19 + 600) = &type metadata for UVIndex;
  *(v19 + 576) = v41;
  *(v19 + 584) = v40;
  *(v19 + 608) = 1684957559;
  *(v19 + 616) = 0xE400000000000000;
  v42 = v15[28];
  *(v19 + 648) = type metadata accessor for Wind();
  __swift_allocate_boxed_opaque_existential_0((v19 + 624));
  OUTLINED_FUNCTION_47_0();
  sub_23B3BAB5C();
  strcpy((v19 + 656), "highWindSpeed");
  *(v19 + 670) = -4864;
  v43 = v15[29];
  *(v19 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v44 = __swift_allocate_boxed_opaque_existential_0((v19 + 672));
  sub_23B3EB900(v2 + v43, v44, &qword_27E132048, &qword_23B510110);
  v45 = *MEMORY[0x277D84C10];
  v46 = sub_23B50D924();
  OUTLINED_FUNCTION_6(v46);
  (*(v47 + 104))(v14, v45, v46);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v46);
  (*(v50 + 104))(v49, *MEMORY[0x277D84C38], v51);

  return sub_23B50D944();
}

uint64_t DayWeather.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v96 = type metadata accessor for DayPartForecast();
  v2 = OUTLINED_FUNCTION_6(v96);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v89 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v95 = v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v94);
  v88 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v87 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52();
  v93 = v20;
  v21 = sub_23B50AD24();
  v22 = OUTLINED_FUNCTION_5(v21);
  v91 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_27();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v30 = OUTLINED_FUNCTION_3(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12();
  v92 = v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  OUTLINED_FUNCTION_0_7();
  v90 = sub_23B3F05D8(v37, v38);
  sub_23B50D0E4();
  v39 = type metadata accessor for DayWeather();
  v97 = *(v0 + v39[5]);
  WeatherCondition.rawValue.getter();
  OUTLINED_FUNCTION_14_0();

  v40 = (v0 + v39[6]);
  v41 = *v40;
  v42 = v40[1];
  sub_23B50D1C4();
  v43 = v39[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6_2();
  sub_23B3F054C(v44, &qword_27E131E30, &qword_23B511AC0);
  sub_23B50D0E4();
  sub_23B3EB900(v0 + v39[8], v36, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_21_0(v36);
  if (v45)
  {
    OUTLINED_FUNCTION_83();
    v46 = v91;
  }

  else
  {
    v46 = v91;
    (*(v91 + 32))(v28, v36, v21);
    OUTLINED_FUNCTION_84();
    sub_23B50D0E4();
    (*(v46 + 8))(v28, v21);
  }

  v47 = v39[9];
  OUTLINED_FUNCTION_56_0();
  sub_23B50D0E4();
  v48 = v92;
  sub_23B3EB900(v1 + v39[10], v92, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_21_0(v48);
  if (v45)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v46 + 32))(v28, v48, v21);
    OUTLINED_FUNCTION_84();
    sub_23B50D0E4();
    (*(v46 + 8))(v28, v21);
  }

  v49 = *(v1 + v39[11]);
  if (v49 == 0.0)
  {
    v49 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v49);
  v50 = OUTLINED_FUNCTION_11_3(v39[12]);
  MEMORY[0x23EE9DB70](v50);
  v51 = OUTLINED_FUNCTION_11_3(v39[13]);
  MEMORY[0x23EE9DB70](v51);
  v52 = OUTLINED_FUNCTION_11_3(v39[14]);
  MEMORY[0x23EE9DB70](v52);
  v53 = OUTLINED_FUNCTION_11_3(v39[15]);
  MEMORY[0x23EE9DB70](v53);
  v54 = *(v1 + v39[16]);
  sub_23B3CFAAC();
  v55 = OUTLINED_FUNCTION_11_3(v39[17]);
  MEMORY[0x23EE9DB70](v55);
  v56 = v39[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6_2();
  sub_23B3F054C(v57, &qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_73_0();
  v58 = v39[19];
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_73_0();
  v59 = v39[20];
  OUTLINED_FUNCTION_56_0();
  PrecipitationAmountByType.hash(into:)();
  v60 = v39[21];
  OUTLINED_FUNCTION_56_0();
  SunEvents.hash(into:)();
  v61 = v39[22];
  OUTLINED_FUNCTION_56_0();
  MoonEvents.hash(into:)();
  v62 = v1 + v39[23];
  v63 = *(v62 + 8);
  MEMORY[0x23EE9DB40](*v62);
  UVIndex.ExposureCategory.rawValue.getter(v63);
  OUTLINED_FUNCTION_14_0();

  v64 = OUTLINED_FUNCTION_11_3(v39[24]);
  MEMORY[0x23EE9DB70](v64);
  v65 = OUTLINED_FUNCTION_11_3(v39[25]);
  MEMORY[0x23EE9DB70](v65);
  v66 = OUTLINED_FUNCTION_11_3(v39[26]);
  MEMORY[0x23EE9DB70](v66);
  v67 = OUTLINED_FUNCTION_11_3(v39[27]);
  MEMORY[0x23EE9DB70](v67);
  v68 = v39[28];
  OUTLINED_FUNCTION_56_0();
  Wind.hash(into:)();
  v69 = v93;
  sub_23B3EB900(v1 + v39[29], v93, &qword_27E132048, &qword_23B510110);
  v70 = v94;
  OUTLINED_FUNCTION_51(v69, 1, v94);
  if (v45)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v72 = v87;
    v71 = v88;
    (*(v88 + 32))(v87, v69, v70);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_6_2();
    sub_23B3F054C(v73, v74, v75);
    sub_23B50D0E4();
    (*(v71 + 8))(v72, v70);
  }

  v76 = v39[30];
  OUTLINED_FUNCTION_6_2();
  sub_23B3F054C(v77, v78, v79);
  OUTLINED_FUNCTION_73_0();
  v80 = v39[31];
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_73_0();
  v81 = v39[32];
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_73_0();
  v82 = v39[33];
  OUTLINED_FUNCTION_56_0();
  DayPartForecast.hash(into:)();
  v83 = v39[34];
  OUTLINED_FUNCTION_56_0();
  DayPartForecast.hash(into:)();
  v84 = v95;
  sub_23B3EB900(v1 + v39[35], v95, &qword_27E132050, &qword_23B510140);
  OUTLINED_FUNCTION_51(v84, 1, v96);
  if (v45)
  {
    return OUTLINED_FUNCTION_83();
  }

  OUTLINED_FUNCTION_3_7();
  sub_23B3EBEE4();
  OUTLINED_FUNCTION_84();
  DayPartForecast.hash(into:)();
  OUTLINED_FUNCTION_7_7();
  return sub_23B3F04F8();
}

uint64_t DayWeather.hashValue.getter()
{
  sub_23B50D8C4();
  DayWeather.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B3F0318()
{
  sub_23B50D8C4();
  DayWeather.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B3F0354()
{
  result = qword_280B42B30;
  if (!qword_280B42B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B30);
  }

  return result;
}

unint64_t sub_23B3F03A8()
{
  result = qword_280B42698;
  if (!qword_280B42698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42698);
  }

  return result;
}

unint64_t sub_23B3F03FC()
{
  result = qword_280B41B20;
  if (!qword_280B41B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B20);
  }

  return result;
}

unint64_t sub_23B3F0450()
{
  result = qword_27E132088;
  if (!qword_27E132088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132088);
  }

  return result;
}

unint64_t sub_23B3F04A4()
{
  result = qword_27E1320B0;
  if (!qword_27E1320B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1320B0);
  }

  return result;
}

uint64_t sub_23B3F04F8()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_23B3F054C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_77();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B3F05D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_77();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DayWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DayWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B3F0784()
{
  result = qword_27E1320D8;
  if (!qword_27E1320D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1320D8);
  }

  return result;
}

unint64_t sub_23B3F07DC()
{
  result = qword_280B42B20;
  if (!qword_280B42B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B20);
  }

  return result;
}

unint64_t sub_23B3F0834()
{
  result = qword_280B42B28;
  if (!qword_280B42B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B28);
  }

  return result;
}

uint64_t static AirPollutantMeasurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  OUTLINED_FUNCTION_5(v4);
  v43 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v42 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  OUTLINED_FUNCTION_5(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_8();
  v16 = type metadata accessor for AirPollutantMeasurement();
  v17 = OUTLINED_FUNCTION_6(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320F0, &qword_23B50FCE0) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v41 - v27;
  v30 = *(v29 + 56);
  sub_23B3F0C54(a1, &v41 - v27);
  sub_23B3F0C54(v44, &v28[v30]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B3F0C54(v28, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v42;
      v31 = v43;
      v33 = OUTLINED_FUNCTION_10_4();
      v34(v33);
      OUTLINED_FUNCTION_4_4(&qword_27E1320F8, &qword_27E1320E0, &qword_23B50FCD0);
      v35 = sub_23B50D134();
      v36 = *(v31 + 8);
      v36(v32, v4);
      v36(v21, v4);
LABEL_9:
      sub_23B3F0D20(v28);
      return v35 & 1;
    }

    (*(v43 + 8))(v21, v4);
  }

  else
  {
    sub_23B3F0C54(v28, v24);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = OUTLINED_FUNCTION_10_4();
      v38(v37);
      OUTLINED_FUNCTION_4_4(&qword_280B42B90, &qword_27E1320E8, &qword_23B50FCD8);
      v35 = sub_23B50D134();
      v39 = *(v12 + 8);
      v39(v2, v10);
      v39(v24, v10);
      goto LABEL_9;
    }

    (*(v12 + 8))(v24, v10);
  }

  sub_23B3F0CB8(v28);
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_23B3F0C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPollutantMeasurement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3F0CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320F0, &qword_23B50FCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3F0D20(uint64_t a1)
{
  v2 = type metadata accessor for AirPollutantMeasurement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AirPollutantMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  OUTLINED_FUNCTION_5(v48);
  v43 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  OUTLINED_FUNCTION_5(v8);
  v44 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132100, &qword_23B50FCE8);
  OUTLINED_FUNCTION_5(v15);
  v46 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_8();
  v20 = type metadata accessor for AirPollutantMeasurement();
  v21 = OUTLINED_FUNCTION_6(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27();
  v26 = v25 - v24;
  v28 = a1[3];
  v27 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_23B3F1158();
  v29 = v49;
  sub_23B50D964();
  if (!v29)
  {
    v41 = v26;
    v42 = v8;
    v30 = v47;
    v49 = v20;
    v31 = v48;
    v53 = 0;
    sub_23B3F11AC();
    sub_23B50D734();
    if (v54)
    {
      v52 = 1;
      OUTLINED_FUNCTION_3_8(&qword_27E132110, &qword_27E1320E0, &qword_23B50FCD0);
      sub_23B50D734();
      v33 = OUTLINED_FUNCTION_9_4();
      v34(v33);
      v35 = v45;
      v36 = v41;
      (*(v43 + 32))(v41, v30, v31);
    }

    else
    {
      v51 = 1;
      OUTLINED_FUNCTION_3_8(&qword_27E132118, &qword_27E1320E8, &qword_23B50FCD8);
      v37 = v14;
      v38 = v42;
      sub_23B50D734();
      v39 = OUTLINED_FUNCTION_9_4();
      v40(v39);
      v35 = v45;
      v36 = v41;
      (*(v44 + 32))(v41, v37, v38);
    }

    swift_storeEnumTagMultiPayload();
    sub_23B3F1200(v36, v35);
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

unint64_t sub_23B3F1158()
{
  result = qword_280B42358;
  if (!qword_280B42358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42358);
  }

  return result;
}

unint64_t sub_23B3F11AC()
{
  result = qword_27E132108;
  if (!qword_27E132108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132108);
  }

  return result;
}

uint64_t sub_23B3F1200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPollutantMeasurement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AirPollutantMeasurement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  v3 = OUTLINED_FUNCTION_5(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v40 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  OUTLINED_FUNCTION_5(v9);
  v39 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for AirPollutantMeasurement();
  v17 = OUTLINED_FUNCTION_6(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132120, &qword_23B50FCF0);
  OUTLINED_FUNCTION_5(v23);
  v45 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v38 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B3F1158();
  sub_23B50D974();
  sub_23B3F0C54(v43, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v40;
    v31 = v41;
    v33 = v42;
    (*(v41 + 32))(v40, v22, v42);
    v50 = 1;
    v49 = 0;
    sub_23B3F1630();
    v34 = v44;
    sub_23B50D7F4();
    if (!v34)
    {
      v48 = 1;
      OUTLINED_FUNCTION_2_10(&qword_27E132128, &qword_27E1320E0, &qword_23B50FCD0);
      sub_23B50D7F4();
    }

    (*(v31 + 8))(v32, v33);
  }

  else
  {
    v35 = v39;
    (*(v39 + 32))(v15, v22, v9);
    v47 = 0;
    sub_23B3F1630();
    v36 = v44;
    sub_23B50D7F4();
    if (!v36)
    {
      v46 = 1;
      OUTLINED_FUNCTION_2_10(&qword_280B42BA0, &qword_27E1320E8, &qword_23B50FCD8);
      sub_23B50D7F4();
    }

    (*(v35 + 8))(v15, v9);
  }

  return (*(v45 + 8))(v29, v23);
}

unint64_t sub_23B3F1630()
{
  result = qword_280B42340;
  if (!qword_280B42340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42340);
  }

  return result;
}

uint64_t sub_23B3F168C()
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

uint64_t sub_23B3F16DC(char a1)
{
  if (a1)
  {
    return 0x72746E65636E6F63;
  }

  else
  {
    return 0x7073694474696E75;
  }
}

uint64_t sub_23B3F1750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B3F168C();
  *a2 = result;
  return result;
}

uint64_t sub_23B3F1788@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D1E38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B3F17BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3F168C();
  *a1 = result;
  return result;
}

uint64_t sub_23B3F17EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3F1684();
  *a1 = result;
  return result;
}

uint64_t sub_23B3F1814(uint64_t a1)
{
  v2 = sub_23B3F1158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B3F1850(uint64_t a1)
{
  v2 = sub_23B3F1158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B3F18B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23B3F168C();
  *a2 = result;
  return result;
}

uint64_t sub_23B3F18E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3F16DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AirPollutantMeasurement.hash(into:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  OUTLINED_FUNCTION_5(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  OUTLINED_FUNCTION_5(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_8();
  v16 = type metadata accessor for AirPollutantMeasurement();
  v17 = OUTLINED_FUNCTION_6(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  sub_23B3F0C54(v0, v21 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v9, v22, v2);
    MEMORY[0x23EE9DB40](1);
    OUTLINED_FUNCTION_5_5(&qword_27E132130, &qword_27E1320E0, &qword_23B50FCD0);
    sub_23B50D0E4();
    return (*(v4 + 8))(v9, v2);
  }

  else
  {
    (*(v12 + 32))(v1, v22, v10);
    MEMORY[0x23EE9DB40](0);
    OUTLINED_FUNCTION_5_5(&qword_280B42B98, &qword_27E1320E8, &qword_23B50FCD8);
    sub_23B50D0E4();
    return (*(v12 + 8))(v1, v10);
  }
}

uint64_t sub_23B3F1C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t AirPollutantMeasurement.hashValue.getter()
{
  sub_23B50D8C4();
  AirPollutantMeasurement.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B3F1CE0()
{
  sub_23B50D8C4();
  AirPollutantMeasurement.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B3F1D20()
{
  result = qword_27E132138;
  if (!qword_27E132138)
  {
    type metadata accessor for AirPollutantMeasurement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132138);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceHourlyRelativeRange.RelativeTo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_23B3F1E18(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B3F1EF8()
{
  result = qword_27E132140;
  if (!qword_27E132140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132140);
  }

  return result;
}

unint64_t sub_23B3F1F50()
{
  result = qword_27E132148;
  if (!qword_27E132148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132148);
  }

  return result;
}

unint64_t sub_23B3F1FA8()
{
  result = qword_280B42348;
  if (!qword_280B42348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42348);
  }

  return result;
}

unint64_t sub_23B3F2000()
{
  result = qword_280B42350;
  if (!qword_280B42350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42350);
  }

  return result;
}

unint64_t sub_23B3F2054()
{
  result = qword_280B42338;
  if (!qword_280B42338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42338);
  }

  return result;
}

void sub_23B3F20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107();
  v13 = v12;
  v14 = sub_23B50C6C4();
  v15 = OUTLINED_FUNCTION_5(v14);
  v66 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v65 = v19;
  OUTLINED_FUNCTION_24_0();
  v20 = sub_23B50CCA4();
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_120();
  v26 = type metadata accessor for WeatherMetadata();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_174();
  sub_23B50C774();
  sub_23B3AFEEC(v11, v30, v31, v32, v33, v34, v35, v36, v58, v60, v62, v63);
  if (v10)
  {
    v37 = *(v23 + 8);
    v38 = OUTLINED_FUNCTION_175();
    v39(v38);
LABEL_12:
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_105();
    return;
  }

  v40 = *(v23 + 8);
  v41 = OUTLINED_FUNCTION_175();
  v42(v41);
  v43 = sub_23B50C784();
  if (!*(v43 + 16))
  {

    v47 = MEMORY[0x277D84F90];
LABEL_11:
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    *(v13 + *(type metadata accessor for PeriodicForecasts() + 20)) = v47;
    goto LABEL_12;
  }

  v44 = OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
  v59 = v45;
  sub_23B41ADE4(v44, v45, 0);
  v46 = 0;
  v47 = a10;
  OUTLINED_FUNCTION_23_3();
  v64 = v43 + v49;
  v61 = v13;
  while (v46 < *(v43 + 16))
  {
    (*(v48 + 16))(v65, v64 + *(v48 + 72) * v46, v14);
    sub_23B3FCE28(v65, v67);
    OUTLINED_FUNCTION_208();
    v50 = v14;
    v51(v65, v14);
    v53 = v67[0];
    v52 = v67[1];
    v55 = *(a10 + 16);
    v54 = *(a10 + 24);
    if (v55 >= v54 >> 1)
    {
      v57 = OUTLINED_FUNCTION_30_3(v54);
      sub_23B41ADE4(v57, v55 + 1, 1);
    }

    ++v46;
    *(a10 + 16) = v55 + 1;
    v56 = a10 + 16 * v55;
    *(v56 + 32) = v53;
    *(v56 + 40) = v52;
    v13 = v61;
    v14 = v50;
    v48 = v66;
    if (v59 == v46)
    {

      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_23B3F23E4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_201();
  v4 = sub_23B50CCA4();
  v5 = OUTLINED_FUNCTION_5(v4);
  v53 = v6;
  v55 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_123();
  v10 = OUTLINED_FUNCTION_243();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_117();
  v16 = sub_23B50C054();
  v17 = OUTLINED_FUNCTION_5(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_229();
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v16) == 1)
  {
    sub_23B398890(v3, &qword_27E131E98, &unk_23B5101B0);
    type metadata accessor for LocationInfo();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    (*(v19 + 32))(v2, v3, v16);
    sub_23B50C034();
    sub_23B50CC84();
    v26 = *(v53 + 8);
    v27 = OUTLINED_FUNCTION_211();
    v26(v27);
    sub_23B50C034();
    v28 = type metadata accessor for LocationInfo();
    v29 = v0 + v28[5];
    sub_23B50CC14();
    (v26)(v1, v55);
    v30 = sub_23B50C014();
    v54 = v31;
    v56 = v30;
    v32 = sub_23B50C024();
    v51 = v33;
    v52 = v32;
    v34 = sub_23B50C004();
    v50 = v35;
    v36 = sub_23B50BFF4();
    v38 = v37;
    v39 = sub_23B50C044();
    v41 = v40;
    v42 = *(v19 + 8);
    v43 = OUTLINED_FUNCTION_68_1();
    v44(v43);
    v45 = (v0 + v28[7]);
    v46 = (v0 + v28[8]);
    v47 = (v0 + v28[9]);
    v48 = (v0 + v28[6]);
    *v48 = v56;
    v48[1] = v54;
    *v45 = v52;
    v45[1] = v51;
    *v46 = v34;
    v46[1] = v50;
    *v47 = v36;
    v47[1] = v38;
    v49 = (v0 + v28[10]);
    *v49 = v39;
    v49[1] = v41;
    OUTLINED_FUNCTION_73();
    v25 = v28;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_20();
}

void sub_23B3F26B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_159();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_200();
  v27 = sub_23B50BB14();
  v28 = OUTLINED_FUNCTION_5(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v31);
  v108 = sub_23B50CB44();
  v32 = OUTLINED_FUNCTION_5(v108);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v107 = v37;
  OUTLINED_FUNCTION_24_0();
  v109 = sub_23B50C814();
  v38 = OUTLINED_FUNCTION_5(v109);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_0();
  v106 = v43;
  OUTLINED_FUNCTION_24_0();
  v44 = type metadata accessor for HourMarineWeather();
  v105 = OUTLINED_FUNCTION_5(v44);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  v47 = sub_23B50CCA4();
  v48 = OUTLINED_FUNCTION_2_0(v47, &a19);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v51);
  v52 = type metadata accessor for WeatherMetadata();
  v53 = OUTLINED_FUNCTION_3(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v56);
  v57 = sub_23B50C2A4();
  v58 = *(v57 + 16);
  if (v58)
  {
    v95 = v27;
    v96 = v23;
    v59 = OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
    sub_23B41AE78(v59, v58, 0);
    v60 = a12;
    v61 = *(v40 + 80);
    OUTLINED_FUNCTION_52_0();
    v101 = v57 + v62;
    v100 = objc_opt_self();
    v99 = objc_opt_self();
    v63 = 0;
    v98 = objc_opt_self();
    v103 = v57;
    v104 = v40;
    v102 = v58;
    while (v63 < *(v57 + 16))
    {
      (*(v40 + 16))(v106, v101 + *(v40 + 72) * v63, v109);
      sub_23B50C7E4();
      sub_23B50C804();
      sub_23B50CB24();
      v64 = [v100 meters];
      v65 = v24 + *(v105 + 20);
      sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
      OUTLINED_FUNCTION_256();
      sub_23B50CB34();
      v66 = [v99 degrees];
      v67 = type metadata accessor for Swell();
      v68 = *(v67 + 20);
      sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
      OUTLINED_FUNCTION_256();
      sub_23B50CB14();
      *(v65 + *(v67 + 24)) = v69;
      sub_23B50C7F4();
      [v98 celsius];
      v70 = *(v105 + 24);
      sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
      v40 = v104;
      OUTLINED_FUNCTION_256();
      (*(v34 + 8))(v107, v108);
      (*(v104 + 8))(v106, v109);
      v72 = *(a12 + 16);
      v71 = *(a12 + 24);
      if (v72 >= v71 >> 1)
      {
        v75 = OUTLINED_FUNCTION_30_3(v71);
        sub_23B41AE78(v75, v72 + 1, 1);
      }

      ++v63;
      *(a12 + 16) = v72 + 1;
      OUTLINED_FUNCTION_23_3();
      v74 = *(v73 + 72);
      sub_23B3B0608();
      v57 = v103;
      if (v102 == v63)
      {

        v23 = v96;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
LABEL_9:
    OUTLINED_FUNCTION_144(&a16);
    sub_23B50C2B4();
    OUTLINED_FUNCTION_163(&a18);
    sub_23B3AFEEC(v57, v76, v77, v78, v79, v80, v81, v82, v94, v95, v96, v97);
    OUTLINED_FUNCTION_56_1(&a17);
    OUTLINED_FUNCTION_245();
    v83();
    if (v22)
    {
    }

    else
    {
      OUTLINED_FUNCTION_144(&a14);
      sub_23B50C294();
      sub_23B50BAF4();
      v85 = v84;
      sub_23B50BB04();
      v87 = v86;
      OUTLINED_FUNCTION_56_1(&a15);
      v88 = OUTLINED_FUNCTION_195();
      v89(v88);
      *v23 = v60;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
      v91 = v90[13];
      OUTLINED_FUNCTION_1_5();
      sub_23B3B0608();
      v92 = (v23 + v90[14]);
      *v92 = 0;
      v92[1] = 0;
      *(v23 + v90[15]) = 0;
      *(v23 + v90[16]) = 0;
      v93 = v23 + v90[17];
      *v93 = v85;
      *(v93 + 1) = v87;
      v93[16] = 0;
    }

    OUTLINED_FUNCTION_158();
  }
}

void sub_23B3F2D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_107();
  a19 = v21;
  a20 = v22;
  v174 = v23;
  v217 = *MEMORY[0x277D85DE8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v28);
  v29 = sub_23B50C7A4();
  v30 = OUTLINED_FUNCTION_5(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_248();
  v201 = sub_23B50ADC4();
  v34 = OUTLINED_FUNCTION_5(v201);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v39);
  v40 = sub_23B50CBC4();
  v41 = OUTLINED_FUNCTION_2_0(v40, &a17);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v46);
  v47 = type metadata accessor for Article();
  v48 = OUTLINED_FUNCTION_5(v47);
  v199 = v49;
  v200 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_1();
  v206 = v53;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v55);
  v56 = sub_23B50CD04();
  v57 = OUTLINED_FUNCTION_2_0(v56, &a9);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v62);
  v63 = sub_23B50CAF4();
  v64 = *(v63 + 16);
  if (v64)
  {
    v184 = v29;
    v216 = MEMORY[0x277D84F90];
    v186 = v63;
    v181 = v64;
    sub_23B41AED0(0, v64, 0);
    v65 = v186;
    v66 = 0;
    v180 = v186 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v179 = *MEMORY[0x277D7B010];
    v193 = v43 + 16;
    v192 = v43 + 8;
    v177 = *MEMORY[0x277D7B008];
    v191 = (v36 + 32);
    v176 = *MEMORY[0x277D7AFF8];
    v175 = *MEMORY[0x277D7AFE0];
    v173 = *MEMORY[0x277D7B028];
    v172 = *MEMORY[0x277D7B040];
    v171 = *MEMORY[0x277D7B000];
    v170 = *MEMORY[0x277D7B050];
    v169 = *MEMORY[0x277D7B030];
    v168 = *MEMORY[0x277D7B020];
    v167 = *MEMORY[0x277D7B048];
    v190 = (v36 + 16);
    v166 = *MEMORY[0x277D7B038];
    v165 = *MEMORY[0x277D7AFF0];
    v164 = *MEMORY[0x277D7B018];
    v163 = *MEMORY[0x277D7AFE8];
    v67 = v216;
    v183 = v43;
    v208 = v20;
    v182 = v59;
    do
    {
      if (v66 >= *(v65 + 16))
      {
        __break(1u);
      }

      v187 = v67;
      v188 = v66;
      (*(v59 + 16))(v189, v180 + *(v59 + 72) * v66);
      v68 = sub_23B50CCE4();
      v69 = *(v68 + 16);
      if (v69)
      {
        v213 = MEMORY[0x277D84F90];
        sub_23B41AF1C(0, v69, 0);
        v70 = v213;
        v71 = *(v43 + 80);
        OUTLINED_FUNCTION_52_0();
        v73 = v68 + v72;
        v74 = *(v43 + 72);
        v197 = *(v43 + 16);
        v198 = v74;
        do
        {
          v205 = v69;
          v207 = v70;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_247();
          v197();
          v75 = sub_23B50CB84();
          v203 = v76;
          v204 = v75;
          v202 = sub_23B50CB74();
          sub_23B50CB94();
          v77 = v196;
          sub_23B50AD74();
          v78 = sub_23B50CB64();
          v80 = v79;
          v81 = sub_23B50CBB4();
          v82 = sub_23B50CBA4();
          OUTLINED_FUNCTION_168_0(&a14);
          v83 = OUTLINED_FUNCTION_230();
          v84(v83);
          v86 = v200;
          v85 = v201;
          v87 = v200[6];
          v88 = (v178 + v200[7]);
          v89 = v203;
          *v178 = v204;
          v178[1] = v89;
          v178[2] = v202;
          (*v191)(v178 + v87, v77, v85);
          *v88 = v78;
          v88[1] = v80;
          v70 = v207;
          *(v178 + v86[8]) = v81;
          *(v178 + v86[9]) = v82;
          v213 = v70;
          v91 = *(v70 + 16);
          v90 = *(v70 + 24);
          if (v91 >= v90 >> 1)
          {
            v94 = OUTLINED_FUNCTION_70_1(v90);
            sub_23B41AF1C(v94, v91 + 1, 1);
            v70 = v213;
          }

          *(v70 + 16) = v91 + 1;
          OUTLINED_FUNCTION_23_3();
          v93 = *(v92 + 72);
          OUTLINED_FUNCTION_91();
          sub_23B3B0608();
          v73 += v198;
          v69 = v205 - 1;
        }

        while (v205 != 1);

        v20 = v208;
      }

      else
      {

        v70 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_239(&v212);
      sub_23B50CCF4();
      OUTLINED_FUNCTION_168_0(&v205);
      v95(v185, 0, v184);
      OUTLINED_FUNCTION_168_0(&v204);
      v96 = OUTLINED_FUNCTION_146();
      v97(v96);
      OUTLINED_FUNCTION_75_0(&v207 + 4);
      if (v99)
      {
        v98 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_75_0(&v200 + 4);
        if (v99)
        {
          v98 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_75_0(&v200);
          if (v100)
          {
            v98 = 2;
          }

          else
          {
            OUTLINED_FUNCTION_75_0(&v199 + 4);
            if (v101)
            {
              v98 = 3;
            }

            else
            {
              OUTLINED_FUNCTION_75_0(&v196 + 4);
              if (v102)
              {
                v98 = 4;
              }

              else
              {
                OUTLINED_FUNCTION_75_0(&v196);
                if (v103)
                {
                  v98 = 5;
                }

                else
                {
                  OUTLINED_FUNCTION_75_0(&v195 + 4);
                  if (v104)
                  {
                    v98 = 6;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_75_0(&v195);
                    if (v105)
                    {
                      v98 = 7;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_75_0(&v194 + 4);
                      if (v106)
                      {
                        v98 = 8;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_75_0(&v194);
                        if (v107)
                        {
                          v98 = 9;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_75_0(&v193 + 4);
                          if (v108)
                          {
                            v98 = 10;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_75_0(&v193);
                            if (v109)
                            {
                              v98 = 11;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_75_0(&v192 + 4);
                              if (v110)
                              {
                                v98 = 12;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_75_0(&v192);
                                if (v111)
                                {
                                  v98 = 13;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_75_0(&v191 + 4);
                                  if (!v112)
                                  {
                                    sub_23B50D644();
                                    __break(1u);
                                    return;
                                  }

                                  v98 = 14;
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

      OUTLINED_FUNCTION_168_0(&v203);
      v113 = OUTLINED_FUNCTION_18_0();
      v114(v113);
      v115 = v70;
      v116 = *(v70 + 16);
      if (v116)
      {
        LODWORD(v202) = v98;
        v215 = MEMORY[0x277D84F90];
        sub_23B41AF1C(0, v116, 0);
        v117 = v215;
        OUTLINED_FUNCTION_23_3();
        v207 = v115;
        v204 = v118;
        v119 = v115 + v118;
        v203 = *(v120 + 72);
        do
        {
          OUTLINED_FUNCTION_90();
          sub_23B3BABAC();
          v121 = *v20;
          v122 = v20[1];
          if (sub_23B50D1D4() == 23 && (sub_23B50D214() & 1) != 0)
          {
            OUTLINED_FUNCTION_90();
            sub_23B3BABAC();
          }

          else
          {
            OUTLINED_FUNCTION_163(&a12);
            sub_23B50AD34();
            v123 = sub_23B50AA84();
            v124 = *(v123 + 48);
            v125 = *(v123 + 52);
            swift_allocObject();
            sub_23B50AA74();
            v126 = sub_23B50AB44();
            v128 = v127;

            v213 = v126;
            v214 = v128;
            v211 = 47;
            v212 = 0xE100000000000000;
            v209 = 95;
            v210 = 0xE100000000000000;
            sub_23B3B6C10();
            v129 = OUTLINED_FUNCTION_193();
            v205 = v117;
            v131 = v130;

            v213 = v129;
            v214 = v131;
            v211 = 43;
            v212 = 0xE100000000000000;
            v209 = 45;
            v210 = 0xE100000000000000;
            OUTLINED_FUNCTION_193();

            v213 = 65;
            v214 = 0xE100000000000000;
            OUTLINED_FUNCTION_81_0();
            v133 = sub_23B40EB40(v132);
            MEMORY[0x23EE9D420](v133);

            v134 = OUTLINED_FUNCTION_206();
            MEMORY[0x23EE9D460](v134);

            v135 = v213;
            v136 = v214;
            sub_23B398890(v20, &qword_27E1321E8, &qword_23B5101C0);
            v137 = v208[2];
            v138 = v200;
            v139 = v206;
            (*v190)(v206 + v200[6], v208 + v200[6], v201);
            v140 = v138[7];
            v142 = *(v208 + v140);
            v141 = *(v208 + v140 + 8);
            v143 = *(v208 + v138[8]);
            v144 = *(v208 + v138[9]);
            v145 = (v139 + v140);
            *v139 = v135;
            v139[1] = v136;
            v117 = v205;
            v139[2] = v137;
            *v145 = v142;
            v145[1] = v141;
            *(v139 + v138[8]) = v143;
            v146 = v138[9];
            v20 = v208;
            *(v139 + v146) = v144;
          }

          sub_23B3C7314(v20, type metadata accessor for Article);
          v215 = v117;
          v148 = *(v117 + 16);
          v147 = *(v117 + 24);
          if (v148 >= v147 >> 1)
          {
            v150 = OUTLINED_FUNCTION_70_1(v147);
            sub_23B41AF1C(v150, v148 + 1, 1);
            v117 = v215;
          }

          *(v117 + 16) = v148 + 1;
          v149 = v203;
          OUTLINED_FUNCTION_91();
          sub_23B3B0608();
          v119 += v149;
          --v116;
        }

        while (v116);
        v151 = OUTLINED_FUNCTION_141();
        v152(v151);

        LOBYTE(v98) = v202;
      }

      else
      {

        v153 = OUTLINED_FUNCTION_141();
        v154(v153);
        v117 = MEMORY[0x277D84F90];
      }

      v67 = v187;
      v216 = v187;
      v156 = *(v187 + 16);
      v155 = *(v187 + 24);
      v65 = v186;
      v157 = v188;
      if (v156 >= v155 >> 1)
      {
        v159 = OUTLINED_FUNCTION_70_1(v155);
        sub_23B41AED0(v159, v156 + 1, 1);
        v157 = v188;
        v65 = v186;
        v67 = v216;
      }

      v66 = v157 + 1;
      *(v67 + 16) = v156 + 1;
      v158 = v67 + 16 * v156;
      *(v158 + 32) = v117;
      *(v158 + 40) = v98;
      v43 = v183;
      v59 = v182;
    }

    while (v66 != v181);
    v160 = v67;

    v161 = v160;
  }

  else
  {

    v161 = MEMORY[0x277D84F90];
  }

  *v174 = v161;
  v162 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_105();
}

void sub_23B3F3A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_159();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_155(v26);
  v148 = sub_23B50CC04();
  v27 = OUTLINED_FUNCTION_5(v148);
  v133 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_39_2(v31);
  v32 = type metadata accessor for HourTide();
  v147 = OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40_2(v35);
  v36 = type metadata accessor for WeatherMetadata();
  v37 = OUTLINED_FUNCTION_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v40);
  v41 = sub_23B50BB14();
  v42 = OUTLINED_FUNCTION_2_0(v41, &a12);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v45);
  v46 = sub_23B50CCA4();
  v47 = OUTLINED_FUNCTION_5(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_185();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v53);
  v149 = sub_23B50AD24();
  v54 = OUTLINED_FUNCTION_5(v149);
  v135 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_76();
  v145 = v59;
  OUTLINED_FUNCTION_24_0();
  v143 = sub_23B50CDC4();
  v60 = OUTLINED_FUNCTION_5(v143);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  v141 = v65;
  OUTLINED_FUNCTION_24_0();
  v142 = type metadata accessor for TideEvent();
  v66 = OUTLINED_FUNCTION_5(v142);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_27();
  v71 = v70 - v69;
  v72 = sub_23B50BBB4();
  v73 = 0x277CCA000uLL;
  if (*(v72 + 16))
  {
    v74 = OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
    v152 = v75;
    sub_23B41AFCC(v74, v75, 0);
    v49 = a12;
    v76 = objc_opt_self();
    v78 = *(v62 + 16);
    v77 = v62 + 16;
    v139 = v78;
    v140 = v76;
    v79 = *(v77 + 64);
    OUTLINED_FUNCTION_52_0();
    v130 = v72;
    v81 = v72 + v80;
    v137 = (v77 - 8);
    v138 = *(v77 + 56);
    OUTLINED_FUNCTION_204();
    v136 = (v82 + 32);
    do
    {
      v83 = v143;
      v139(v141, v81, v143);
      sub_23B50CD94();
      v150 = sub_23B50CDB4();
      sub_23B50CDA4();
      v84 = [v140 meters];
      v85 = *(v142 + 24);
      sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
      sub_23B50A9B4();
      (*v137)(v141, v143);
      (*v136)(v71, v145, v149);
      *(v71 + *(v142 + 20)) = v150 & 1;
      a12 = v49;
      v87 = v49[2];
      v86 = v49[3];
      v23 = v87 + 1;
      if (v87 >= v86 >> 1)
      {
        v90 = OUTLINED_FUNCTION_30_3(v86);
        sub_23B41AFCC(v90, v87 + 1, 1);
        v49 = a12;
      }

      v49[2] = v23;
      OUTLINED_FUNCTION_23_3();
      v89 = *(v88 + 72);
      sub_23B3B0608();
      v81 += v138;
      --v152;
    }

    while (v152);
    v144 = v49;

    OUTLINED_FUNCTION_133();
    v73 = 0x277CCA000;
  }

  else
  {

    v144 = MEMORY[0x277D84F90];
    v83 = v46;
  }

  v91 = sub_23B50BBA4();
  v92 = *(v91 + 16);
  if (v92)
  {
    v93 = OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
    sub_23B41AF74(v93, v92, 0);
    v94 = a12;
    v95 = *(v73 + 3616);
    v153 = objc_opt_self();
    v151 = *(v133 + 16);
    v96 = *(v133 + 80);
    OUTLINED_FUNCTION_52_0();
    v73 = v91 + v97;
    v146 = v98[7];
    v49 = v98;
    v83 = v98 - 1;
    do
    {
      v99 = OUTLINED_FUNCTION_229();
      v151(v99);
      sub_23B50CBE4();
      sub_23B50CBF4();
      v100 = [v153 meters];
      v101 = *(v147 + 20);
      sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
      v23 = v154;
      sub_23B50A9B4();
      v102 = *v83;
      v103 = OUTLINED_FUNCTION_230();
      v104(v103);
      a12 = v94;
      v106 = v94[2];
      v105 = v94[3];
      v91 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        v109 = OUTLINED_FUNCTION_30_3(v105);
        sub_23B41AF74(v109, v106 + 1, 1);
        v94 = a12;
      }

      v94[2] = v91;
      OUTLINED_FUNCTION_23_3();
      v108 = *(v107 + 72);
      sub_23B3B0608();
      v73 += v146;
      --v92;
    }

    while (v92);

    OUTLINED_FUNCTION_133();
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_196(&v155);
  sub_23B50BBC4();
  OUTLINED_FUNCTION_163(&a9);
  sub_23B50CC84();
  v110 = v49[1];
  v110(v91, v83);
  OUTLINED_FUNCTION_196(&a10);
  sub_23B50BB94();
  sub_23B50BAF4();
  v112 = v111;
  sub_23B50BB04();
  v114 = v113;
  OUTLINED_FUNCTION_56_1(&a11);
  v115(v91);
  sub_23B50BBC4();
  OUTLINED_FUNCTION_114(&a13);
  sub_23B3AFEEC(v23, v116, v117, v118, v119, v120, v121, v122, v130, v131, v133, v134);
  if (v22)
  {

    v110(v23, v83);
    OUTLINED_FUNCTION_56_1(&a20);
    v123(v73, v149);
  }

  else
  {
    v110(v23, v83);
    v124 = *(v135 + 32);
    v125 = OUTLINED_FUNCTION_229();
    v126(v125);
    v127 = type metadata accessor for TideEvents();
    *(v132 + v127[5]) = v144;
    *(v132 + v127[6]) = v94;
    v128 = (v132 + v127[7]);
    *v128 = v112;
    v128[1] = v114;
    v129 = v127[8];
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
  }

  OUTLINED_FUNCTION_158();
}

uint64_t sub_23B3F42E0()
{
  sub_23B50B9F4();
  sub_23B3B3908();
  v1 = v0;

  return v1;
}

void sub_23B3F43B0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132238, &qword_23B510218);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v9 = OUTLINED_FUNCTION_39_2(v8);
  v10 = type metadata accessor for HistoricalFact(v9);
  v11 = OUTLINED_FUNCTION_5(v10);
  v76 = v12;
  v77 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v79 = v15;
  OUTLINED_FUNCTION_24_0();
  v16 = sub_23B50C254();
  v17 = OUTLINED_FUNCTION_5(v16);
  v84 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12();
  v83 = v21;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E80, &unk_23B510220);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v28 = v73 - v27;
  v29 = sub_23B50C614();
  v30 = OUTLINED_FUNCTION_5(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_65();
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_23B398890(v28, &qword_27E131E80, &unk_23B510220);
    v35 = 0;
  }

  else
  {
    v75 = v32;
    v36 = *(v32 + 32);
    v37 = OUTLINED_FUNCTION_138();
    v38(v37);
    v39 = *(sub_23B50C604() + 16);
    if (v39)
    {
      v73[1] = v0;
      v73[2] = v29;
      v74 = v3;
      v40 = *(v84 + 16);
      v41 = *(v84 + 80);
      OUTLINED_FUNCTION_52_0();
      v73[0] = v42;
      v44 = v42 + v43;
      v81 = *(v45 + 56);
      v82 = v46;
      v84 = v45;
      v80 = v45 - 8;
      v85 = MEMORY[0x277D84F90];
      v48 = v77;
      v47 = v78;
      do
      {
        v49 = v16;
        v50 = v16;
        v51 = v82;
        v82(v1, v44, v49);
        v52 = v83;
        v51(v83, v1, v50);
        sub_23B4DD28C(v52, v47);
        OUTLINED_FUNCTION_208();
        v53 = OUTLINED_FUNCTION_175();
        v54(v53);
        OUTLINED_FUNCTION_73();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v48);
        OUTLINED_FUNCTION_92();
        sub_23B3B0608();
        v58 = v85;
        v16 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = *(v58 + 16);
          v64 = OUTLINED_FUNCTION_126();
          sub_23B4F594C(v64, v65, v66, v58);
          v58 = v67;
        }

        v60 = *(v58 + 16);
        v59 = *(v58 + 24);
        v85 = v58;
        if (v60 >= v59 >> 1)
        {
          v68 = OUTLINED_FUNCTION_70_1(v59);
          sub_23B4F594C(v68, v60 + 1, 1, v85);
          v85 = v69;
        }

        *(v85 + 16) = v60 + 1;
        OUTLINED_FUNCTION_23_3();
        v62 = *(v61 + 72);
        OUTLINED_FUNCTION_92();
        sub_23B3B0608();
        v48 = v77;
        v47 = v78;
        v44 += v81;
        --v39;
      }

      while (v39);

      v3 = v74;
      v35 = v85;
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v70 = *(v75 + 8);
    v71 = OUTLINED_FUNCTION_211();
    v72(v71);
  }

  *v3 = v35;
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3F4818()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for MinuteForecastStringBuilder();
    v1 = swift_allocObject();
    *(v0 + 16) = v1;
  }

  return v1;
}

void sub_23B3F486C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_107();
  a19 = v21;
  a20 = v22;
  v102 = v23;
  v25 = v24;
  v26 = sub_23B50CBD4();
  v27 = OUTLINED_FUNCTION_5(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v31 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_1();
  v109 = v32;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_49();
  v37 = *(v25 + 16);
  if (v37)
  {
    v96 = v36;
    v94 = v35;
    v38 = 0;
    v39 = *(v34 + 16);
    v40 = *(v34 + 80);
    OUTLINED_FUNCTION_52_0();
    v42 = v25 + v41;
    v107 = (v43 + 72);
    v108 = *(v43 + 56);
    v106 = *MEMORY[0x277D7B110];
    v105 = *MEMORY[0x277D7B108];
    v104 = *MEMORY[0x277D7B118];
    v103 = *MEMORY[0x277D7B130];
    v101 = *MEMORY[0x277D7B148];
    v100 = *MEMORY[0x277D7B140];
    v99 = *MEMORY[0x277D7B150];
    v98 = *MEMORY[0x277D7B120];
    v44 = (v43 - 8);
    v97 = *MEMORY[0x277D7B128];
    v95 = *MEMORY[0x277D7B138];
    v45 = v43;
    do
    {
      v46 = OUTLINED_FUNCTION_243();
      v39(v46);
      v47 = OUTLINED_FUNCTION_211();
      v49 = v48;
      v48(v47);
      v50 = *v107;
      v51 = OUTLINED_FUNCTION_210();
      v53 = v52(v51);
      if (v53 == v106)
      {
        v54 = OUTLINED_FUNCTION_37_2();
        v55(v54);
        v38 |= 1uLL;
        v39 = v49;
      }

      else
      {
        v39 = v49;
        if (v53 == v105)
        {
          v56 = OUTLINED_FUNCTION_37_2();
          v57(v56);
          v38 |= 2uLL;
        }

        else if (v53 == v104)
        {
          v58 = OUTLINED_FUNCTION_37_2();
          v59(v58);
          v38 |= 4uLL;
        }

        else if (v53 == v103)
        {
          v60 = OUTLINED_FUNCTION_37_2();
          v61(v60);
          v38 |= 8uLL;
        }

        else if (v53 == v101)
        {
          v62 = OUTLINED_FUNCTION_37_2();
          v63(v62);
          v38 |= 0x10uLL;
        }

        else if (v53 == v100)
        {
          v64 = OUTLINED_FUNCTION_37_2();
          v65(v64);
          v38 |= 0x200uLL;
        }

        else if (v53 == v99)
        {
          v66 = OUTLINED_FUNCTION_37_2();
          v67(v66);
          v38 |= 0x100uLL;
        }

        else if (v53 == v98)
        {
          v68 = OUTLINED_FUNCTION_37_2();
          v69(v68);
          v38 |= 0x40uLL;
        }

        else if (v53 == v97)
        {
          v70 = OUTLINED_FUNCTION_37_2();
          v71(v70);
          v38 |= 0x80uLL;
        }

        else if (v53 == v95)
        {
          v72 = OUTLINED_FUNCTION_37_2();
          v73(v72);
          v38 |= 0x20uLL;
        }

        else
        {
          v93 = v45;
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v74 = sub_23B50CDF4();
          OUTLINED_FUNCTION_88(v74, qword_280B4E9D8);
          (v49)(v96, v20, v26);
          v75 = sub_23B50CDD4();
          v92 = sub_23B50D4B4();
          if (os_log_type_enabled(v75, v92))
          {
            OUTLINED_FUNCTION_173();
            v90 = swift_slowAlloc();
            OUTLINED_FUNCTION_135();
            v110 = swift_slowAlloc();
            *v90 = 136446210;
            v91 = v75;
            (v49)(v94, v96, v26);
            v76 = sub_23B50D184();
            OUTLINED_FUNCTION_205(v76);
            v77 = *v44;
            v78 = OUTLINED_FUNCTION_206();
            v77(v78);
            OUTLINED_FUNCTION_236();
            OUTLINED_FUNCTION_169(&a17);
            v82 = sub_23B391F1C(v79, v80, v81);
            OUTLINED_FUNCTION_205(v82);

            OUTLINED_FUNCTION_204();
            *(v83 + 4) = v84;
            _os_log_impl(&dword_23B38D000, v85, v92, "Unknown default; availableDataSets=%{public}s", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v110);
            OUTLINED_FUNCTION_57_1();
            MEMORY[0x23EE9E260](v86);
            OUTLINED_FUNCTION_57_1();
            MEMORY[0x23EE9E260](v87);
          }

          else
          {

            v77 = *v44;
            v89 = OUTLINED_FUNCTION_249();
            v77(v89);
          }

          v88 = OUTLINED_FUNCTION_89();
          v77(v88);
          (v77)(v109, v26);
          v45 = v93;
        }
      }

      v42 += v108;
      --v37;
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  *v102 = v38;
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3F4DF0()
{
  v0 = sub_23B50C064();
  v1 = OUTLINED_FUNCTION_5(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_86();
  v6();
  return sub_23B50D184();
}

void sub_23B3F4EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_159();
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_201();
  v20 = sub_23B50AD24();
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_49();
  sub_23B50CC84();
  sub_23B50CC14();
  sub_23B50CC74();
  sub_23B50CC94();
  OUTLINED_FUNCTION_230();
  sub_23B3B00E4(v19, v17, v27);
  if (v13)
  {
    v28 = *(v23 + 8);
    v28(v14, v20);
    v28(v15, v20);
  }

  else
  {
    v29 = *(type metadata accessor for WeatherMetadata() + 32);
    *(v12 + v29) = 0;
    v30 = *(v23 + 32);
    v30(v12, v15, v20);
    v31 = OUTLINED_FUNCTION_224();
    (v30)(v31);
    OUTLINED_FUNCTION_223();
    v32 = *(v12 + v29);

    *(v12 + v29) = a12;
  }

  OUTLINED_FUNCTION_158();
}

uint64_t sub_23B3F5030()
{
  OUTLINED_FUNCTION_201();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_232();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_127();
  v13 = sub_23B50AD24();
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  sub_23B50C5E4();
  sub_23B50C5C4();
  sub_23B50C5D4();
  sub_23B50C7C4();
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_23B3BC884();
  if (v1)
  {
    sub_23B398890(v4, &qword_27E132190, &qword_23B510148);
    sub_23B398890(v2, &qword_27E131E18, &unk_23B50F710);
    return (*(v16 + 8))(v3, v13);
  }

  else
  {
    sub_23B398890(v4, &qword_27E132190, &qword_23B510148);
    v38 = v41;
    v24 = COERCE_DOUBLE(sub_23B50C5A4());
    v26 = v25;
    v27 = v24 / 100.0;
    v28 = sub_23B50C5B4();
    sub_23B3C3CA0(*&v28, v29 & 1, &v39);
    v37 = v39;
    v36 = v40;
    if (v26)
    {
      v27 = 0.0;
    }

    v30 = type metadata accessor for MinuteSummary();
    v31 = v30[5];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v13);
    v35 = v0 + v30[9];
    *v35 = 0;
    *(v35 + 8) = 3;
    (*(v16 + 32))(v0, v3, v13);
    result = sub_23B3B7EA8();
    *(v0 + v30[6]) = v38;
    *(v0 + v30[7]) = v38;
    *(v0 + v30[8]) = v27;
    *v35 = v37;
    *(v35 + 8) = v36;
  }

  return result;
}

uint64_t sub_23B3F530C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_23B50AD24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_23B50C5E4();
  sub_23B3FD404(&qword_280B43110, MEMORY[0x277CC9578]);
  v27 = a2;
  v18 = sub_23B50D124();
  v19 = *(v11 + 8);
  v19(v17, v10);
  if (v18)
  {
    sub_23B50C5C4();
    v20 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    sub_23B398890(v9, &qword_27E131E18, &unk_23B50F710);
    if (EnumTagSinglePayload != 1)
    {
      v22 = v26;
      sub_23B50C5C4();
      if (__swift_getEnumTagSinglePayload(v22, 1, v10) == 1)
      {
        (*(v11 + 16))(v14, v25, v10);
        if (__swift_getEnumTagSinglePayload(v22, 1, v10) != 1)
        {
          sub_23B398890(v22, &qword_27E131E18, &unk_23B50F710);
        }
      }

      else
      {
        (*(v11 + 32))(v14, v22, v10);
      }

      v20 = sub_23B50ACA4();
      v19(v14, v10);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_23B3F55F8(uint64_t a1)
{
  v2 = sub_23B50C104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  (*(v3 + 16))(&v25 - v9, a1, v2, v8);
  v11 = (*(v3 + 88))(v10, v2);
  if (v11 != *MEMORY[0x277D7AF58] && v11 != *MEMORY[0x277D7AF40] && v11 != *MEMORY[0x277D7AF20] && v11 != *MEMORY[0x277D7AF60] && v11 != *MEMORY[0x277D7AF28])
  {
    if (v11 == *MEMORY[0x277D7AF78])
    {
      v18 = *(v3 + 104);
      v18(v6, *MEMORY[0x277D7AF48], v2);
      v19 = sub_23B3E6304();
      v20 = *(v3 + 8);
      v20(v6, v2);
      if (v19)
      {
LABEL_19:
        v16 = 1;
        return v16 & 1;
      }

      v22 = MEMORY[0x277D7AF68];
LABEL_27:
      v18(v6, *v22, v2);
      v16 = sub_23B3E6304();
      v20(v6, v2);
      return v16 & 1;
    }

    if (v11 == *MEMORY[0x277D7AF48] || v11 == *MEMORY[0x277D7AF68])
    {
      goto LABEL_25;
    }

    if (v11 != *MEMORY[0x277D7AF30])
    {
      if (v11 == *MEMORY[0x277D7AF80])
      {
        v18 = *(v3 + 104);
        v18(v6, *MEMORY[0x277D7AF50], v2);
        v23 = sub_23B3E6304();
        v20 = *(v3 + 8);
        v20(v6, v2);
        if (v23)
        {
          goto LABEL_19;
        }

        v22 = MEMORY[0x277D7AF70];
        goto LABEL_27;
      }

      if (v11 != *MEMORY[0x277D7AF50] && v11 != *MEMORY[0x277D7AF70])
      {
        if (v11 != *MEMORY[0x277D7AF38])
        {
          (*(v3 + 8))(v10, v2);
        }

        goto LABEL_15;
      }

LABEL_25:
      (*(v3 + 104))(v6);
      v16 = sub_23B3E6304();
      (*(v3 + 8))(v6, v2);
      return v16 & 1;
    }
  }

LABEL_15:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_23B3F598C@<X0>(uint64_t a1@<X0>, void *a2@<X3>, char *a3@<X8>)
{
  v14 = a2;
  v6 = sub_23B50CCA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50BA04();
  sub_23B50B9E4();
  sub_23B3F5AE8(a1, v10, v11, a3);
  (*(v7 + 8))(v10, v6);

  if (v3)
  {
    *v14 = v3;
  }

  return result;
}

uint64_t sub_23B3F5AE8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v118 = a2;
  v116 = a4;
  v6 = type metadata accessor for WeatherMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321F0, &qword_23B5101C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v104 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321F8, &qword_23B5101D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v104 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v129 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = &v104 - v20;
  v21 = sub_23B50AD24();
  v123 = *(v21 - 8);
  v22 = v123[8];
  MEMORY[0x28223BE20](v21);
  v127 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v128 = &v104 - v25;
  v26 = sub_23B50AB34();
  v124 = *(v26 - 8);
  v27 = v124[8];
  MEMORY[0x28223BE20](v26);
  v126 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v125 = &v104 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v117 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v104 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v104 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v104 - v41;
  __swift_storeEnumTagSinglePayload(&v104 - v41, 1, 1, v26);
  if (a3)
  {
    sub_23B50AB04();
    v43 = v130;
  }

  else
  {
    sub_23B50B8B4();
    v43 = v130;
    if (!v44)
    {
      goto LABEL_6;
    }

    sub_23B50AB04();
  }

  sub_23B398890(v42, &qword_27E131FC0, &qword_23B515170);
  sub_23B3C4E78(v39, v42);
LABEL_6:
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v36, 1, v26) == 1)
  {
    sub_23B398890(v36, &qword_27E131FC0, &qword_23B515170);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v45 = sub_23B50CDF4();
    __swift_project_value_buffer(v45, qword_280B4E9D8);
    v46 = sub_23B50CDD4();
    v47 = sub_23B50D4B4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_23B38D000, v46, v47, "Missing required field; field=WeatherAlert.detailsURL", v48, 2u);
      MEMORY[0x23EE9E260](v48, -1, -1);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    v50 = v42;
    return sub_23B398890(v50, &qword_27E131FC0, &qword_23B515170);
  }

  v113 = v42;
  v114 = v21;
  v53 = v124;
  v52 = v125;
  v54 = (v124 + 4);
  v108 = v124[4];
  v108(v125, v36, v26);
  v110 = v53[2];
  v110(v126, v52, v26);
  v106 = sub_23B50B934();
  v112 = v55;
  v115 = v26;
  sub_23B50B8C4();
  sub_23B50B8E4();
  sub_23B50B914();
  sub_23B50B904();
  v109 = sub_23B50B8F4();
  v57 = v56;
  v107 = sub_23B50B944();
  v59 = v58;
  v111 = a1;
  sub_23B50B954();
  v60 = sub_23B50CCB4();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v60);
  v61 = v121;
  sub_23B3F677C(&v133);
  v121 = v61;
  if (v61)
  {

    sub_23B398890(v15, &qword_27E1321F8, &qword_23B5101D0);
    sub_23B398890(v129, &qword_27E131E18, &unk_23B50F710);
    sub_23B398890(v43, &qword_27E131E18, &unk_23B50F710);
    v62 = v123[1];
    v63 = v114;
    v62(v127, v114);
    v62(v128, v63);
    v64 = v53[1];
    v65 = v115;
    v64(v126, v115);
    v64(v125, v65);
    return sub_23B398890(v113, &qword_27E131FC0, &qword_23B515170);
  }

  else
  {
    v66 = v110;
    v104 = v54;
    v67 = v59;
    v105 = v57;
    sub_23B398890(v15, &qword_27E1321F8, &qword_23B5101D0);
    v68 = v133;
    v69 = v120;
    sub_23B50B8D4();
    v70 = v121;
    sub_23B3F6934(&v132);
    if (v70)
    {

      sub_23B398890(v69, &qword_27E1321F0, &qword_23B5101C8);
      sub_23B398890(v129, &qword_27E131E18, &unk_23B50F710);
      sub_23B398890(v130, &qword_27E131E18, &unk_23B50F710);
      v71 = v123[1];
      v72 = v114;
      v71(v127, v114);
      v71(v128, v72);
      v73 = v124[1];
      v74 = v115;
      v73(v126, v115);
      v73(v125, v74);
      v50 = v113;
      return sub_23B398890(v50, &qword_27E131FC0, &qword_23B515170);
    }

    v131 = v68;
    sub_23B398890(v69, &qword_27E1321F0, &qword_23B5101C8);
    LODWORD(v120) = v132;
    v75 = v117;
    v76 = v125;
    v77 = v115;
    v66(v117, v125, v115);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v77);
    v78 = sub_23B50B934();
    v79 = v119;
    sub_23B3F4EA4(v118, v75, v78, v80, v81, v82, v83, v84, v104, v105, v106, v107);
    v85 = v127;
    v121 = 0;
    sub_23B398890(v75, &qword_27E131FC0, &qword_23B515170);

    v86 = type metadata accessor for WeatherAlert();
    v87 = v116;
    v88 = &v116[v86[18]];
    sub_23B50B924();
    (v124[1])(v76, v77);
    sub_23B398890(v113, &qword_27E131FC0, &qword_23B515170);
    v122 = v86[9];
    v124 = v67;
    v89 = v77;
    v90 = v114;
    __swift_storeEnumTagSinglePayload(&v87[v122], 1, 1, v114);
    __swift_storeEnumTagSinglePayload(&v87[v86[10]], 1, 1, v90);
    v125 = v86[13];
    __swift_storeEnumTagSinglePayload(&v125[v87], 1, 1, v89);
    v118 = &v87[v86[14]];
    v108(v87, v126, v89);
    v91 = &v87[v86[5]];
    v92 = v112;
    *v91 = v106;
    *(v91 + 1) = v92;
    v93 = v85;
    v94 = v123;
    v95 = v123[4];
    v95(&v87[v86[7]], v128, v90);
    v95(&v87[v86[8]], v93, v90);
    sub_23B3B7EA8();
    sub_23B3B7EA8();
    v96 = &v87[v86[11]];
    v97 = v109;
    v98 = v105;
    *v96 = v109;
    v96[1] = v98;
    v99 = v118;
    v100 = v124;
    *v118 = v107;
    *(v99 + 1) = v100;
    v87[v86[15]] = v131;
    v87[v86[16]] = v120;
    v101 = v86[17];
    sub_23B3BABAC();
    (v94[2])(&v87[v86[6]], v79, v90);

    sub_23B3C7314(v79, type metadata accessor for WeatherMetadata);
    v102 = &v87[v86[12]];
    *v102 = v97;
    v102[1] = v98;
    v103 = v125;
    sub_23B398890(&v125[v87], &qword_27E131FC0, &qword_23B515170);
    return __swift_storeEnumTagSinglePayload(&v103[v87], 1, 1, v115);
  }
}

uint64_t sub_23B3F677C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321F8, &qword_23B5101D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v12 - v4;
  v6 = sub_23B50CCB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_23B398890(v5, &qword_27E1321F8, &qword_23B5101D0);
    *a1 = 4;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_23B3F6AEC(v10, a1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_23B3F6934@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321F0, &qword_23B5101C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v12 - v4;
  v6 = sub_23B50BB74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_23B398890(v5, &qword_27E1321F0, &qword_23B5101C8);
    *a1 = 2;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_23B3F6EB8(v10, a1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_23B3F6AEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23B50CCB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v38 = &v34[-v10];
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34[-v13];
  v15 = *(v5 + 16);
  v15(&v34[-v13], a1, v4, v12);
  result = (*(v5 + 88))(v14, v4);
  if (result == *MEMORY[0x277D7B168])
  {
    v17 = 3;
LABEL_11:
    *a2 = v17;
    return result;
  }

  if (result == *MEMORY[0x277D7B160])
  {
    v17 = 2;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D7B178])
  {
    v17 = 1;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D7B158])
  {
    v17 = 0;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D7B170])
  {
    v17 = 4;
    goto LABEL_11;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v18 = sub_23B50CDF4();
  __swift_project_value_buffer(v18, qword_280B4E9D8);
  v19 = v38;
  (v15)(v38, a1, v4);
  v20 = sub_23B50CDD4();
  v21 = sub_23B50D4B4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v22;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v22 = 136446210;
    v23 = v38;
    (v15)(v8, v38, v4);
    v24 = sub_23B50D184();
    v26 = v25;
    v35 = v21;
    v27 = *(v5 + 8);
    v27(v23, v4);
    v28 = sub_23B391F1C(v24, v26, &v39);

    v29 = v36;
    *(v36 + 1) = v28;
    v30 = v27;
    v31 = v29;
    _os_log_impl(&dword_23B38D000, v20, v35, "Invalid weather severity; severity=%{public}s", v29, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x23EE9E260](v32, -1, -1);
    MEMORY[0x23EE9E260](v31, -1, -1);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v19, v4);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v33 = 1;
  swift_willThrow();
  return (v30)(v14, v4);
}

uint64_t sub_23B3F6EB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23B50BB74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v36 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = *(v5 + 16);
  v15(&v36 - v13, a1, v4, v12);
  result = (*(v5 + 88))(v14, v4);
  if (result == *MEMORY[0x277D7AD98])
  {
    v17 = 0;
LABEL_11:
    *a2 = v17;
    return result;
  }

  if (result == *MEMORY[0x277D7AD90])
  {
    v17 = 1;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277D7ADA0] || result == *MEMORY[0x277D7ADA8])
  {
    v17 = 2;
    goto LABEL_11;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v19 = sub_23B50CDF4();
  __swift_project_value_buffer(v19, qword_280B4E9D8);
  v20 = v39;
  (v15)(v39, a1, v4);
  v21 = sub_23B50CDD4();
  v22 = sub_23B50D4B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v22;
    v24 = v20;
    v25 = v23;
    v36 = v23;
    v38 = swift_slowAlloc();
    v40 = v38;
    *v25 = 136446210;
    (v15)(v8, v24, v4);
    v26 = sub_23B50D184();
    v28 = v27;
    v29 = *(v5 + 8);
    v29(v24, v4);
    v30 = sub_23B391F1C(v26, v28, &v40);

    v31 = v36;
    *(v36 + 4) = v30;
    v32 = v31;
    _os_log_impl(&dword_23B38D000, v21, v37, "Invalid weather importance; importance=%{public}s", v31, 0xCu);
    v33 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x23EE9E260](v33, -1, -1);
    MEMORY[0x23EE9E260](v32, -1, -1);

    v34 = v29;
  }

  else
  {

    v34 = *(v5 + 8);
    v34(v20, v4);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v35 = 1;
  swift_willThrow();
  return (v34)(v14, v4);
}

void sub_23B3F7260()
{
  OUTLINED_FUNCTION_107();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132200, &qword_23B5101D8);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v54 = v12;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  v55 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_190();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_124();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_153();
  v21 = sub_23B50AD24();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_62_0();
  sub_23B50C304();
  OUTLINED_FUNCTION_21_0(v2);
  if (v28)
  {
    sub_23B398890(v2, &qword_27E131E18, &unk_23B50F710);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v29 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v29, qword_280B4E9D8);
    v30 = sub_23B50CDD4();
    sub_23B50D4B4();
    v31 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_66_1();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v33);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v34, v35, v36, v37, v38, v39);
      v40 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v40);
    }

    sub_23B3E3D54();
    v41 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_69_1(v41, v42);
  }

  else
  {
    v53 = v7;
    v43 = v24;
    v44 = *(v24 + 32);
    v44(v5, v2, v21);
    (*(v43 + 16))(v3, v5, v21);
    sub_23B50C314();
    v45 = sub_23B3F7734();
    if (v1)
    {
      sub_23B398890(v0, &qword_27E132200, &qword_23B5101D8);
      v46 = *(v43 + 8);
      v46(v3, v21);
      v46(v5, v21);
    }

    else
    {
      v51 = v45;
      v52 = v5;
      sub_23B398890(v0, &qword_27E132200, &qword_23B5101D8);
      sub_23B50C324();
      v47 = sub_23B3F7734();
      sub_23B398890(v4, &qword_27E132200, &qword_23B5101D8);
      sub_23B50C334();
      v48 = sub_23B3F7734();
      sub_23B398890(v55, &qword_27E132200, &qword_23B5101D8);
      sub_23B50C344();
      v49 = sub_23B3F7734();
      sub_23B398890(v54, &qword_27E132200, &qword_23B5101D8);
      (*(v43 + 8))(v52, v21);
      v44(v53, v3, v21);
      v50 = type metadata accessor for WeatherChange();
      *(v53 + v50[5]) = v51;
      *(v53 + v50[6]) = v47;
      *(v53 + v50[7]) = v48;
      *(v53 + v50[8]) = v49;
    }
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3F7734()
{
  v2 = OUTLINED_FUNCTION_195();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_180();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_119();
  sub_23B3B81F8();
  v9 = sub_23B50C3D4();
  v10 = OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_51(v10, v11, v9);
  if (v12)
  {
    goto LABEL_3;
  }

  sub_23B3B81F8();
  v13 = *(v9 - 8);
  v14 = *(v13 + 88);
  v15 = OUTLINED_FUNCTION_206();
  v17 = v16(v15);
  if (v17 == *MEMORY[0x277D7AFC8])
  {
    v1 = 0;
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x277D7AFC0])
  {
    v1 = 1;
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x277D7AFD0])
  {
LABEL_3:
    v1 = 2;
LABEL_8:
    sub_23B398890(v0, &qword_27E132200, &qword_23B5101D8);
    return v1;
  }

  v19 = *(v13 + 8);
  v20 = OUTLINED_FUNCTION_206();
  v21(v20);
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v22 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v22, qword_280B4E9D8);
  v23 = sub_23B50CDD4();
  v24 = sub_23B50D4B4();
  if (OUTLINED_FUNCTION_113(v24))
  {
    OUTLINED_FUNCTION_66_1();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v25);
    OUTLINED_FUNCTION_254(&dword_23B38D000, v26, v27, "Invalid data; invalid WeatherChange.changeDirection.tendencyPhrase");
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
  }

  sub_23B3E3D54();
  v28 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_69_1(v28, v29);
  sub_23B398890(v0, &qword_27E132200, &qword_23B5101D8);
  return v1;
}

uint64_t sub_23B3F7984@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_155(a1);
  v4 = type metadata accessor for WeatherMetadata();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v8);
  v9 = type metadata accessor for Wind();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2_0(v14, &v249);
  v220 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132150, &qword_23B5100E0);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v24);
  v25 = sub_23B50C0E4();
  v26 = OUTLINED_FUNCTION_5(v25);
  v232 = v27;
  v234 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v30);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_5(v229);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_52();
  v231 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2_0(v35, &v255);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52();
  v238 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v46 = OUTLINED_FUNCTION_5(v45);
  v239 = v47;
  v240 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_1();
  v237 = v54;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_1();
  v242 = v56;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_76();
  v243 = v58;
  OUTLINED_FUNCTION_24_0();
  v59 = sub_23B50CCA4();
  v60 = OUTLINED_FUNCTION_5(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_123();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v67 = OUTLINED_FUNCTION_3(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_43_2(v71, v72, v73, v74, v75, v76, v77, v78, v200);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_124();
  v80 = sub_23B50AD24();
  v81 = OUTLINED_FUNCTION_5(v80);
  v83 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_12();
  v236 = v86;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_125();
  sub_23B50B414();
  v88 = OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_51(v88, v89, v80);
  v217 = v62;
  if (v90)
  {
    sub_23B50B474();
    sub_23B50CC84();
    v91 = *(v62 + 8);
    v62 += 8;
    v91(v3, v59);
    v92 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_51(v92, v93, v80);
    v97 = v2;
    if (!v90)
    {
      sub_23B398890(v1, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    v94 = *(v83 + 32);
    v95 = OUTLINED_FUNCTION_18_0();
    v96(v95);
    v97 = v2;
  }

  OUTLINED_FUNCTION_98();
  sub_23B3F8AA0(v98, v99, v243);
  if (v241)
  {
    return (*(v83 + 8))(v97, v80);
  }

  OUTLINED_FUNCTION_97();
  sub_23B3F8AA0(v100, v101, v102);
  (*(v83 + 16))(v236, v97, v80);
  sub_23B50B224();
  v105 = v104;
  sub_23B50B2B4();
  v107 = v106;
  sub_23B50B2C4();
  v109 = v108;
  sub_23B50B2F4();
  v111 = v110;
  OUTLINED_FUNCTION_144(&v254);
  sub_23B50B254();
  sub_23B50C064();
  OUTLINED_FUNCTION_60_1();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  sub_23B3B8890(&v247);
  v116 = OUTLINED_FUNCTION_195();
  sub_23B398890(v116, v117, &qword_23B510100);
  HIDWORD(v205) = v247;
  sub_23B50B254();
  OUTLINED_FUNCTION_60_1();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  v122 = sub_23B50B454();
  sub_23B3B99FC(v62, v122 & 1, v123, v124, v125, v126, v127, v128, v201, v205, v59, v210, v213, v215, v217, v218, v219, v220, v221, v223);
  v202 = v129;
  v211 = v130;
  v131 = OUTLINED_FUNCTION_195();
  sub_23B398890(v131, v132, &qword_23B510100);
  v133 = sub_23B50B2E4();
  OUTLINED_FUNCTION_72(v133);
  v225 = objc_opt_self();
  v134 = [v225 celsius];
  v135 = OUTLINED_FUNCTION_154();
  sub_23B3924C0(v135, v136, v137);
  OUTLINED_FUNCTION_230();
  sub_23B50A9B4();
  sub_23B50B464();
  v139 = v138;
  sub_23B50B364();
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  static NSUnitSpeed.wk_millimetersPerHour.getter();
  sub_23B50A9B4();
  v140 = sub_23B50B484();
  OUTLINED_FUNCTION_72(v140);
  v141 = [objc_opt_self() millibars];
  v142 = OUTLINED_FUNCTION_154();
  sub_23B3924C0(v142, v143, v144);
  sub_23B50A9B4();
  sub_23B50B264();
  v145 = OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_51(v145, v146, v234);
  if (v90)
  {
    v149 = v228;
    (*(v232 + 104))(v228, *MEMORY[0x277D7AF08], v234);
    v147 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_51(v147, v148, v234);
    if (!v90)
    {
      sub_23B398890(v226, &qword_27E132150, &qword_23B5100E0);
    }
  }

  else
  {
    v149 = v228;
    (*(v232 + 32))(v228, v226, v234);
  }

  sub_23B3CC508(v149, &v246);
  (*(v232 + 8))(v149, v234);
  v235 = v246;
  sub_23B50B434();
  sub_23B50B424();
  v233 = sub_23B50B454();
  sub_23B50B244();
  v150 = [v225 celsius];
  sub_23B50A9B4();
  v151 = sub_23B50B2D4();
  v152 = [v225 celsius];
  sub_23B50A9B4();
  v153 = v239[2];
  v154 = OUTLINED_FUNCTION_167();
  v153(v154, v243, v240);
  v155 = OUTLINED_FUNCTION_143();
  v153(v155, v242, v240);
  v156 = sub_23B50B444();
  sub_23B3C1284(v156, 0, &v244);
  v227 = v244;
  sub_23B50B234();
  v157 = [objc_opt_self() meters];
  v158 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v158, v159, v160);
  sub_23B50A9B4();
  sub_23B50B4A4();
  sub_23B50B274();
  sub_23B50B494();
  sub_23B3B32C4();
  sub_23B50B474();
  OUTLINED_FUNCTION_144(v248);
  sub_23B3AFEEC(v216, v161, v162, v163, v164, v165, v166, v167, v203, v206, v208, v211);
  v168 = OUTLINED_FUNCTION_161();
  v169 = v105 / v168;
  v170 = v107 / v168;
  v171 = v109 / v168;
  v172 = v111 / v168;
  OUTLINED_FUNCTION_56_1(v245);
  v174 = v139 / v173;
  v175(v216, v209);
  v176 = OUTLINED_FUNCTION_145();
  sub_23B398890(v176, &qword_27E131E18, &unk_23B50F710);
  sub_23B398890(v230, &qword_27E131E18, &unk_23B50F710);
  v177 = v239[1];
  v177(v242, v240);
  v177(v243, v240);
  v178 = *(v83 + 8);
  v179 = OUTLINED_FUNCTION_249();
  v180(v179);
  (*(v83 + 32))(v214, v236, v80);
  v181 = type metadata accessor for InstantWeather();
  *(v214 + v181[5]) = v169;
  *(v214 + v181[6]) = v170;
  *(v214 + v181[7]) = v171;
  *(v214 + v181[8]) = v172;
  *(v214 + v181[9]) = v207;
  v182 = (v214 + v181[10]);
  *v182 = v204;
  v182[1] = v212;
  v183 = v239[4];
  (v183)(v214 + v181[11], v237, v240);
  *(v214 + v181[12]) = v174;
  v184 = v181[13];
  OUTLINED_FUNCTION_157();
  v186(v214 + v185, v238);
  v187 = v181[14];
  OUTLINED_FUNCTION_157();
  v189(v214 + v188, v231, v229);
  *(v214 + v181[15]) = v235;
  *(v214 + v181[16]) = v233 & 1;
  v190 = v214 + v181[17];
  OUTLINED_FUNCTION_156(&v253);
  v183();
  v191 = v214 + v181[18];
  OUTLINED_FUNCTION_156(&v252);
  v183();
  v192 = v214 + v181[19];
  OUTLINED_FUNCTION_156(&v251);
  v183();
  v193 = v214 + v181[20];
  OUTLINED_FUNCTION_156(&v250);
  v183();
  v194 = (v214 + v181[21]);
  *v194 = v227;
  OUTLINED_FUNCTION_179(v194);
  v195 = v181[22];
  OUTLINED_FUNCTION_157();
  v197(v214 + v196, v224, v222);
  v198 = v181[23];
  OUTLINED_FUNCTION_15_3();
  sub_23B3B0608();
  v199 = v181[24];
  OUTLINED_FUNCTION_1_5();
  return sub_23B3B0608();
}

uint64_t sub_23B3F8AA0@<X0>(void (*a1)(void)@<X1>, const char *a2@<X2>, uint8_t *a3@<X8>)
{
  a1();
  if (v6)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v7 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v7, qword_280B4E9D8);
    v8 = sub_23B50CDD4();
    v9 = sub_23B50D4B4();
    if (OUTLINED_FUNCTION_113(v9))
    {
      OUTLINED_FUNCTION_66_1();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_162(v10);
      _os_log_impl(&dword_23B38D000, v8, v3, a2, a3, 2u);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
    }

    sub_23B3E3D54();
    v11 = OUTLINED_FUNCTION_48_0();
    return OUTLINED_FUNCTION_55_1(v11, v12);
  }

  else
  {
    v14 = [objc_opt_self() celsius];
    v15 = OUTLINED_FUNCTION_154();
    sub_23B3924C0(v15, v16, v17);
    return OUTLINED_FUNCTION_256();
  }
}

void sub_23B3F8BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_32_1();
  v12 = sub_23B50B134();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40_2(v16);
  v17 = type metadata accessor for HourTemperatureStatistics();
  v18 = OUTLINED_FUNCTION_28_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v21 = sub_23B50CCA4();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_39_2(v25);
  v26 = type metadata accessor for WeatherMetadata();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_87();
  if (*(sub_23B50B1F4() + 16))
  {
    OUTLINED_FUNCTION_78_0();
    v31 = OUTLINED_FUNCTION_19_4(v30, MEMORY[0x277D84F90]);
    sub_23B41B07C(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_8_3();
    while (1)
    {
      OUTLINED_FUNCTION_176(v34);
      if (v35)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_17_2();
      v37(v36);
      v38 = OUTLINED_FUNCTION_85_0();
      sub_23B3F8EA0(v38, v39);
      if (v10)
      {
        v47 = OUTLINED_FUNCTION_84_1();
        v48(v47);

        goto LABEL_14;
      }

      v40 = OUTLINED_FUNCTION_38_2();
      v41(v40);
      OUTLINED_FUNCTION_42_2();
      if (v35)
      {
        v44 = OUTLINED_FUNCTION_24_2(v42);
        sub_23B41B07C(v44, v45, v46);
        v11 = a10;
      }

      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_82();
      v34 = v67;
      if (v43)
      {

        OUTLINED_FUNCTION_77_0();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v11;

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    OUTLINED_FUNCTION_76_0();
    v49 = sub_23B50B204();
    OUTLINED_FUNCTION_83_0(v49, v50, v51, v52, v53, v54, v55, v56, v63, v64, v65, v66);
    if (v10)
    {
      v57 = OUTLINED_FUNCTION_36_1();
      v58(v57);
LABEL_14:
    }

    else
    {
      v59 = OUTLINED_FUNCTION_36_1();
      v60(v59);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
      OUTLINED_FUNCTION_41_2(v61);
      sub_23B50B1D4();
      v62 = *(v21 + 56);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_215();
      *v12 = v11;
    }

    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_23B3F8EA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_23B50B134();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132248, &qword_23B510238);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_23B50CD84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B124();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B398890(v12, &qword_27E132248, &qword_23B510238);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v18 = sub_23B50CDF4();
    __swift_project_value_buffer(v18, qword_280B4E9D8);
    v19 = v36;
    v20 = *(v36 + 16);
    v20(v8, a1, v3);
    v21 = sub_23B50CDD4();
    v22 = sub_23B50D4B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v23 = 136315138;
      v20(v34, v8, v3);
      v24 = sub_23B50D184();
      v26 = v25;
      (*(v19 + 8))(v8, v3);
      v27 = sub_23B391F1C(v24, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_23B38D000, v21, v22, "Missing hour statistics' temperature quantiles; hourStatistics=%s", v23, 0xCu);
      v28 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x23EE9E260](v28, -1, -1);
      MEMORY[0x23EE9E260](v23, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v8, v3);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v33 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v29 = type metadata accessor for HourTemperatureStatistics();
    v30 = v35;
    sub_23B3F92C0(v35 + *(v29 + 20));
    v31 = sub_23B50B114();
    result = (*(v14 + 8))(v17, v13);
    *v30 = v31;
  }

  return result;
}

uint64_t sub_23B3F92C0@<X0>(uint64_t a1@<X8>)
{
  sub_23B50CD54();
  v2 = objc_opt_self();
  v3 = [v2 celsius];
  sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  sub_23B50A9B4();
  sub_23B50CD64();
  v4 = [v2 celsius];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  v6 = a1 + *(v5 + 28);
  sub_23B50A9B4();
  sub_23B50CD74();
  v7 = [v2 celsius];
  v8 = a1 + *(v5 + 32);
  return sub_23B50A9B4();
}

void sub_23B3F93E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_32_1();
  v12 = sub_23B50B104();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40_2(v16);
  v17 = type metadata accessor for DayTemperatureStatistics();
  v18 = OUTLINED_FUNCTION_28_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v21 = sub_23B50CCA4();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_39_2(v25);
  v26 = type metadata accessor for WeatherMetadata();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_87();
  if (*(sub_23B50B164() + 16))
  {
    OUTLINED_FUNCTION_78_0();
    v31 = OUTLINED_FUNCTION_19_4(v30, MEMORY[0x277D84F90]);
    sub_23B41B0D4(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_8_3();
    while (1)
    {
      OUTLINED_FUNCTION_176(v34);
      if (v35)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_17_2();
      v37(v36);
      v38 = OUTLINED_FUNCTION_85_0();
      sub_23B3F96A8(v38, v39);
      if (v10)
      {
        v47 = OUTLINED_FUNCTION_84_1();
        v48(v47);

        goto LABEL_14;
      }

      v40 = OUTLINED_FUNCTION_38_2();
      v41(v40);
      OUTLINED_FUNCTION_42_2();
      if (v35)
      {
        v44 = OUTLINED_FUNCTION_24_2(v42);
        sub_23B41B0D4(v44, v45, v46);
        v11 = a10;
      }

      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_82();
      v34 = v67;
      if (v43)
      {

        OUTLINED_FUNCTION_77_0();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v11;

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    OUTLINED_FUNCTION_76_0();
    v49 = sub_23B50B174();
    OUTLINED_FUNCTION_83_0(v49, v50, v51, v52, v53, v54, v55, v56, v63, v64, v65, v66);
    if (v10)
    {
      v57 = OUTLINED_FUNCTION_36_1();
      v58(v57);
LABEL_14:
    }

    else
    {
      v59 = OUTLINED_FUNCTION_36_1();
      v60(v59);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132288, &unk_23B510280);
      OUTLINED_FUNCTION_41_2(v61);
      sub_23B50B144();
      v62 = *(v21 + 56);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_215();
      *v12 = v11;
    }

    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_23B3F96A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_23B50B104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132278, &qword_23B510270);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = sub_23B50C6F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B0E4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B398890(v14, &qword_27E132278, &qword_23B510270);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v20 = sub_23B50CDF4();
    __swift_project_value_buffer(v20, qword_280B4E9D8);
    v21 = *(v4 + 16);
    v21(v10, a1, v3);
    v22 = sub_23B50CDD4();
    v23 = sub_23B50D4B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v24 = 136315138;
      v21(v7, v10, v3);
      v25 = sub_23B50D184();
      v27 = v26;
      (*(v4 + 8))(v10, v3);
      v28 = sub_23B391F1C(v25, v27, &v43);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23B38D000, v22, v23, "Missing day statistics' temperatureRange; dayStatistics=%s", v24, 0xCu);
      v29 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x23EE9E260](v29, -1, -1);
      MEMORY[0x23EE9E260](v24, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v37 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v40 = sub_23B50B0F4();
    sub_23B50C6E4();
    v39 = objc_opt_self();
    v30 = [v39 celsius];
    v31 = type metadata accessor for DayTemperatureStatistics();
    v32 = *(v31 + 20);
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    v33 = v41;
    sub_23B50A9B4();
    sub_23B50C6D4();
    v34 = [v39 celsius];
    v35 = v33 + *(v31 + 24);
    sub_23B50A9B4();
    result = (*(v16 + 8))(v19, v15);
    *v33 = v40;
  }

  return result;
}

void sub_23B3F9B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_32_1();
  v12 = sub_23B50B104();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40_2(v16);
  v17 = type metadata accessor for DayPrecipitationStatistics();
  v18 = OUTLINED_FUNCTION_28_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v21 = sub_23B50CCA4();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_39_2(v25);
  v26 = type metadata accessor for WeatherMetadata();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_87();
  if (*(sub_23B50B164() + 16))
  {
    OUTLINED_FUNCTION_78_0();
    v31 = OUTLINED_FUNCTION_19_4(v30, MEMORY[0x277D84F90]);
    sub_23B41B12C(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_8_3();
    while (1)
    {
      OUTLINED_FUNCTION_176(v34);
      if (v35)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_17_2();
      v37(v36);
      v38 = OUTLINED_FUNCTION_85_0();
      sub_23B3F9E18(v38, v39);
      if (v10)
      {
        v47 = OUTLINED_FUNCTION_84_1();
        v48(v47);

        goto LABEL_14;
      }

      v40 = OUTLINED_FUNCTION_38_2();
      v41(v40);
      OUTLINED_FUNCTION_42_2();
      if (v35)
      {
        v44 = OUTLINED_FUNCTION_24_2(v42);
        sub_23B41B12C(v44, v45, v46);
        v11 = a10;
      }

      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_82();
      v34 = v67;
      if (v43)
      {

        OUTLINED_FUNCTION_77_0();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v11;

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    OUTLINED_FUNCTION_76_0();
    v49 = sub_23B50B174();
    OUTLINED_FUNCTION_83_0(v49, v50, v51, v52, v53, v54, v55, v56, v63, v64, v65, v66);
    if (v10)
    {
      v57 = OUTLINED_FUNCTION_36_1();
      v58(v57);
LABEL_14:
    }

    else
    {
      v59 = OUTLINED_FUNCTION_36_1();
      v60(v59);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
      OUTLINED_FUNCTION_41_2(v61);
      sub_23B50B144();
      v62 = *(v21 + 56);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_215();
      *v12 = v11;
    }

    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_23B3F9E18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23B50B104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132268, &unk_23B510260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_23B50C874();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B0D4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B398890(v14, &qword_27E132268, &unk_23B510260);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v20 = sub_23B50CDF4();
    __swift_project_value_buffer(v20, qword_280B4E9D8);
    v21 = *(v5 + 16);
    v21(v10, a1, v4);
    v22 = sub_23B50CDD4();
    v23 = sub_23B50D4B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v24 = 136315138;
      v21(v40, v10, v4);
      v25 = sub_23B50D184();
      v27 = v26;
      (*(v5 + 8))(v10, v4);
      v28 = sub_23B391F1C(v25, v27, &v42);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23B38D000, v22, v23, "Missing day statistics' precipitation; dayStatistics=%s", v24, 0xCu);
      v29 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x23EE9E260](v29, -1, -1);
      MEMORY[0x23EE9E260](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v39 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v40 = sub_23B50B0F4();
    sub_23B50C864();
    v31 = v30;
    sub_23B50C854();
    v32 = objc_opt_self();
    v33 = [v32 millimeters];
    v34 = type metadata accessor for DayPrecipitationStatistics();
    v35 = *(v34 + 24);
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    sub_23B50C844();
    v36 = [v32 millimeters];
    v37 = a2 + *(v34 + 28);
    sub_23B50A9B4();
    result = (*(v16 + 8))(v19, v15);
    *a2 = v40;
    a2[1] = v31;
  }

  return result;
}

void sub_23B3FA2D8()
{
  OUTLINED_FUNCTION_107();
  v4 = OUTLINED_FUNCTION_172(v3);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v42 = v8;
  OUTLINED_FUNCTION_24_0();
  v9 = type metadata accessor for WeatherMetadata();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v45 = sub_23B50AE84();
  v13 = OUTLINED_FUNCTION_5(v45);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_117();
  v18 = sub_23B50AD24();
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  v25 = OUTLINED_FUNCTION_149(v24);
  v26(v25);
  sub_23B50ADF4();
  sub_23B50BE44();
  OUTLINED_FUNCTION_241();
  sub_23B3B3908();
  if (v43)
  {
  }

  else
  {
    v44 = v27;

    v28 = sub_23B50BE54();
    OUTLINED_FUNCTION_255(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v42, v2);
    v36 = OUTLINED_FUNCTION_110();
    v37(v36);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0) + 52);
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    *v41 = v44;
  }

  (*(v15 + 8))(v1, v45);
  (*(v21 + 8))(v0, v18);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3FA5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23B50BB64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  sub_23B50BB54();
  if (v14 & 1) != 0 || (sub_23B50BB24(), (v15))
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v16 = sub_23B50CDF4();
    __swift_project_value_buffer(v16, qword_280B4E9D8);
    v17 = *(v7 + 16);
    v17(v13, a1, v6);
    v18 = sub_23B50CDD4();
    v19 = sub_23B50D4B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v20 = 136315138;
      v17(v10, v13, v6);
      v21 = sub_23B50D184();
      v23 = v22;
      (*(v7 + 8))(v13, v6);
      v24 = sub_23B391F1C(v21, v23, &v37);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23B38D000, v18, v19, "Missing data for day precipitation summary; daySummary=%s", v20, 0xCu);
      v25 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x23EE9E260](v25, -1, -1);
      MEMORY[0x23EE9E260](v20, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v26 = 1;
    return swift_willThrow();
  }

  else
  {
    v28 = sub_23B50AD24();
    (*(*(v28 - 8) + 16))(a3, a2, v28);
    v29 = objc_opt_self();
    v30 = [v29 millimeters];
    v31 = type metadata accessor for DayPrecipitationSummary();
    v32 = *(v31 + 20);
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    v33 = [v29 millimeters];
    v34 = a3 + *(v31 + 24);
    return sub_23B50A9B4();
  }
}

void sub_23B3FA95C()
{
  OUTLINED_FUNCTION_107();
  v4 = OUTLINED_FUNCTION_172(v3);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v42 = v8;
  OUTLINED_FUNCTION_24_0();
  v9 = type metadata accessor for WeatherMetadata();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v45 = sub_23B50AE84();
  v13 = OUTLINED_FUNCTION_5(v45);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_117();
  v18 = sub_23B50AD24();
  v19 = OUTLINED_FUNCTION_5(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  v25 = OUTLINED_FUNCTION_149(v24);
  v26(v25);
  sub_23B50ADF4();
  sub_23B50BE44();
  OUTLINED_FUNCTION_241();
  sub_23B3B3908();
  if (v43)
  {
  }

  else
  {
    v44 = v27;

    v28 = sub_23B50BE54();
    OUTLINED_FUNCTION_255(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v42, v2);
    v36 = OUTLINED_FUNCTION_110();
    v37(v36);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132258, &qword_23B510250) + 52);
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    *v41 = v44;
  }

  (*(v15 + 8))(v1, v45);
  (*(v21 + 8))(v0, v18);
  OUTLINED_FUNCTION_105();
}

void sub_23B3FAC38()
{
  OUTLINED_FUNCTION_107();
  v44 = v4;
  v39 = v5;
  v7 = v6;
  v42 = v8;
  v40 = sub_23B50AE64();
  v9 = OUTLINED_FUNCTION_5(v40);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_177(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_2(v18);
  v19 = sub_23B50AD24();
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_185();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_123();
  v38 = *(v22 + 16);
  (v38)(v2, v7, v19);
  v44(v42, v2);
  if (v0)
  {
    v27 = *(v22 + 8);
    v28 = OUTLINED_FUNCTION_209();
    v29(v28);
    *v39 = v0;
  }

  else
  {
    v43 = *(v22 + 8);
    v30 = OUTLINED_FUNCTION_209();
    v31(v30);
    (*(v37 + 104))(v36, *MEMORY[0x277CC9968], v40);
    OUTLINED_FUNCTION_81_0();
    v38();
    sub_23B50AE24();
    v32 = OUTLINED_FUNCTION_68_1();
    v43(v32);
    (*(v37 + 8))(v36, v40);
    OUTLINED_FUNCTION_21_0(v41);
    if (v33)
    {
      (v38)(v1, v7, v19);
      sub_23B50AC94();
      (v43)(v1, v19);
      OUTLINED_FUNCTION_21_0(v41);
      if (!v33)
      {
        sub_23B398890(v41, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      (*(v22 + 32))(v3, v41, v19);
    }

    v34 = *(v22 + 40);
    OUTLINED_FUNCTION_151();
    v35();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3FAFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23B50BB64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  sub_23B50BB34();
  if (v14 & 1) != 0 || (sub_23B50BB44(), (v15))
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v16 = sub_23B50CDF4();
    __swift_project_value_buffer(v16, qword_280B4E9D8);
    v17 = *(v7 + 16);
    v17(v13, a1, v6);
    v18 = sub_23B50CDD4();
    v19 = sub_23B50D4B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v20 = 136315138;
      v17(v10, v13, v6);
      v21 = sub_23B50D184();
      v23 = v22;
      (*(v7 + 8))(v13, v6);
      v24 = sub_23B391F1C(v21, v23, &v37);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23B38D000, v18, v19, "Missing data for day temperature summary; daySummary=%s", v20, 0xCu);
      v25 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x23EE9E260](v25, -1, -1);
      MEMORY[0x23EE9E260](v20, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v26 = 1;
    return swift_willThrow();
  }

  else
  {
    v28 = sub_23B50AD24();
    (*(*(v28 - 8) + 16))(a3, a2, v28);
    v29 = objc_opt_self();
    v30 = [v29 celsius];
    v31 = type metadata accessor for DayTemperatureSummary();
    v32 = *(v31 + 20);
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    sub_23B50A9B4();
    v33 = [v29 celsius];
    v34 = a3 + *(v31 + 24);
    return sub_23B50A9B4();
  }
}

void sub_23B3FB354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_32_1();
  v12 = sub_23B50B1C4();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40_2(v16);
  v17 = type metadata accessor for MonthTemperatureStatistics();
  v18 = OUTLINED_FUNCTION_28_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v21 = sub_23B50CCA4();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_39_2(v25);
  v26 = type metadata accessor for WeatherMetadata();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_87();
  if (*(sub_23B50B4D4() + 16))
  {
    OUTLINED_FUNCTION_78_0();
    v31 = OUTLINED_FUNCTION_19_4(v30, MEMORY[0x277D84F90]);
    sub_23B41B234(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_8_3();
    while (1)
    {
      OUTLINED_FUNCTION_176(v34);
      if (v35)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_17_2();
      v37(v36);
      v38 = OUTLINED_FUNCTION_85_0();
      sub_23B3FB618(v38, v39);
      if (v10)
      {
        v47 = OUTLINED_FUNCTION_84_1();
        v48(v47);

        goto LABEL_14;
      }

      v40 = OUTLINED_FUNCTION_38_2();
      v41(v40);
      OUTLINED_FUNCTION_42_2();
      if (v35)
      {
        v44 = OUTLINED_FUNCTION_24_2(v42);
        sub_23B41B234(v44, v45, v46);
        v11 = a10;
      }

      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_82();
      v34 = v67;
      if (v43)
      {

        OUTLINED_FUNCTION_77_0();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v11;

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    OUTLINED_FUNCTION_76_0();
    v49 = sub_23B50B4E4();
    OUTLINED_FUNCTION_83_0(v49, v50, v51, v52, v53, v54, v55, v56, v63, v64, v65, v66);
    if (v10)
    {
      v57 = OUTLINED_FUNCTION_36_1();
      v58(v57);
LABEL_14:
    }

    else
    {
      v59 = OUTLINED_FUNCTION_36_1();
      v60(v59);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
      OUTLINED_FUNCTION_41_2(v61);
      sub_23B50B4C4();
      v62 = *(v21 + 56);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_215();
      *v12 = v11;
    }

    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_23B3FB618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_23B50B1C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132278, &qword_23B510270);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = sub_23B50C6F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B194();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B398890(v14, &qword_27E132278, &qword_23B510270);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v20 = sub_23B50CDF4();
    __swift_project_value_buffer(v20, qword_280B4E9D8);
    v21 = *(v4 + 16);
    v21(v10, a1, v3);
    v22 = sub_23B50CDD4();
    v23 = sub_23B50D4B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v24 = 136315138;
      v21(v7, v10, v3);
      v25 = sub_23B50D184();
      v27 = v26;
      (*(v4 + 8))(v10, v3);
      v28 = sub_23B391F1C(v25, v27, &v43);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23B38D000, v22, v23, "Missing month statistics' temperatureRange; monthStatistics=%s", v24, 0xCu);
      v29 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x23EE9E260](v29, -1, -1);
      MEMORY[0x23EE9E260](v24, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v37 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v40 = sub_23B50B1B4();
    sub_23B50C6E4();
    v39 = objc_opt_self();
    v30 = [v39 celsius];
    v31 = type metadata accessor for MonthTemperatureStatistics();
    v32 = *(v31 + 20);
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    v33 = v41;
    sub_23B50A9B4();
    sub_23B50C6D4();
    v34 = [v39 celsius];
    v35 = v33 + *(v31 + 24);
    sub_23B50A9B4();
    result = (*(v16 + 8))(v19, v15);
    *v33 = v40;
  }

  return result;
}