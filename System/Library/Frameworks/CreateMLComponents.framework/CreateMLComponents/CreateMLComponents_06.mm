_BYTE *storeEnumTagSinglePayload for LSTMFCN.SqueezeExciteBlock.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LSTMFCN.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LSTMFCN.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LSTMFCN.Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237CDB850()
{
  result = qword_27DEAF798;
  if (!qword_27DEAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF798);
  }

  return result;
}

unint64_t sub_237CDB8A8()
{
  result = qword_27DEAF7A0;
  if (!qword_27DEAF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7A0);
  }

  return result;
}

unint64_t sub_237CDB900()
{
  result = qword_27DEAF7A8;
  if (!qword_27DEAF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7A8);
  }

  return result;
}

unint64_t sub_237CDB958()
{
  result = qword_27DEAF7B0;
  if (!qword_27DEAF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7B0);
  }

  return result;
}

unint64_t sub_237CDB9B0()
{
  result = qword_27DEAF7B8;
  if (!qword_27DEAF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7B8);
  }

  return result;
}

unint64_t sub_237CDBA08()
{
  result = qword_27DEAF7C0;
  if (!qword_27DEAF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7C0);
  }

  return result;
}

unint64_t sub_237CDBA60()
{
  result = qword_27DEAF7C8;
  if (!qword_27DEAF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7C8);
  }

  return result;
}

unint64_t sub_237CDBAB8()
{
  result = qword_27DEAF7D0;
  if (!qword_27DEAF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7D0);
  }

  return result;
}

unint64_t sub_237CDBB10()
{
  result = qword_27DEAF7D8;
  if (!qword_27DEAF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7D8);
  }

  return result;
}

unint64_t sub_237CDBB68()
{
  result = qword_27DEAF7E0;
  if (!qword_27DEAF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7E0);
  }

  return result;
}

unint64_t sub_237CDBBC0()
{
  result = qword_27DEAF7E8;
  if (!qword_27DEAF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7E8);
  }

  return result;
}

unint64_t sub_237CDBC18()
{
  result = qword_27DEAF7F0;
  if (!qword_27DEAF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF7F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return sub_237EF6800();
}

void sub_237CDBF9C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    *(sub_237EF89B0() + 16) = a2;
    do
    {
      OUTLINED_FUNCTION_59_2();
      if (v7)
      {
        *(v5 + 32) = a1;
      }

      if (v6)
      {
        *(v5 + 40) = a1;
      }
    }

    while (v4 != v3 + 2);
  }
}

void sub_237CDC02C(uint64_t a1, double a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(sub_237EF89B0() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_59_2();
      if (v7)
      {
        *(v5 + 32) = a2;
      }

      if (v6)
      {
        *(v5 + 40) = a2;
      }
    }

    while (v4 != v3 + 2);
  }
}

uint64_t sub_237CDC0C4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_237EF78E0();
      v4 = sub_237EF89B0();
      *(v4 + 16) = v2;
      OUTLINED_FUNCTION_1_1();
      v6 = v5;
      v8 = v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v10 = *(v9 + 16);
      while (1)
      {
        --v2;
        OUTLINED_FUNCTION_12_13();
        v10();
        if (!v2)
        {
          break;
        }

        v8 += *(v6 + 72);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v11 = sub_237EF78E0();
    (*(*(v11 - 8) + 8))(v3, v11);
    return v4;
  }

  return result;
}

void sub_237CDC1E8(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(sub_237EF89B0() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_54_1();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_69_1();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_237CDC2B0(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_237EF89B0();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

void sub_237CDC320(int a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    *(sub_237EF89B0() + 16) = a2;
    do
    {
      OUTLINED_FUNCTION_54_1();
      if (v6)
      {
        *(v3 - 12) = a1;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a1;
      }

      OUTLINED_FUNCTION_69_1();
      if (v12)
      {
        *(v8 - 1) = a1;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a1;
      }
    }

    while (v9 != v7 + 4);
  }
}

float LinearTimeSeriesForecaster.init(configuration:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v12 = xmmword_237F09360;
  v13 = 1008981770;
  v14 = 5;
  v15 = 1000593162;
  v16 = 0;
  v17 = 1;
  MultivariateLinearRegressor.init(configuration:)(&v12, &v18);
  result = v19;
  v9 = v20;
  v10 = v18;
  v18.n128_u8[0] = v7 & 1;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 52) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v10;
  *(a2 + 88) = result;
  *(a2 + 96) = v9;
  *(a2 + 104) = v4;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7 & 1;
  return result;
}

uint64_t LinearTimeSeriesForecaster.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 536) = a7;
  *(v7 + 528) = a6;
  *(v7 + 520) = a5;
  *(v7 + 504) = a3;
  *(v7 + 512) = a4;
  *(v7 + 488) = a1;
  *(v7 + 496) = a2;
  *(v7 + 544) = *(a5 + 16);
  *(v7 + 552) = *(a5 + 24);
  OUTLINED_FUNCTION_43_3();
  v9 = type metadata accessor for TimeSeriesForecasterAnnotatedWindows();
  *(v7 + 560) = v9;
  OUTLINED_FUNCTION_6_1(v9);
  *(v7 + 568) = v10;
  *(v7 + 576) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_3();
  v11 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v11);
  *(v7 + 584) = OUTLINED_FUNCTION_27_0();
  *(v7 + 592) = sub_237EF7E90();
  OUTLINED_FUNCTION_32_4();
  v12 = type metadata accessor for AnnotatedFeature();
  *(v7 + 600) = v12;
  *(v7 + 608) = OUTLINED_FUNCTION_100_0();
  v13 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v13);
  *(v7 + 616) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_38_3();
  *(v7 + 624) = v14;
  *(v7 + 632) = OUTLINED_FUNCTION_80_1();
  *(v7 + 640) = swift_task_alloc();
  *(v7 + 648) = swift_task_alloc();
  *(v7 + 656) = swift_task_alloc();
  OUTLINED_FUNCTION_43_3();
  v15 = sub_237EF90F0();
  *(v7 + 664) = v15;
  OUTLINED_FUNCTION_6_1(v15);
  *(v7 + 672) = v16;
  *(v7 + 680) = OUTLINED_FUNCTION_27_0();
  *(v7 + 688) = *(v12 - 8);
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_task_alloc();
  *(v7 + 712) = *(a6 - 8);
  *(v7 + 720) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_79_1((v7 + 728));
  v17 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237CDC79C()
{
  v1 = v0[75];
  v2 = OUTLINED_FUNCTION_73_1();
  v3(v2);
  OUTLINED_FUNCTION_47_1();
  v4 = sub_237EF8A90();
  v0[58] = v4;
  OUTLINED_FUNCTION_23_8();
  v5 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237EF8E80();
  v6 = OUTLINED_FUNCTION_95_0();
  if (__swift_getEnumTagSinglePayload(v6, v7, v1) == 1)
  {
    (*(v0[84] + 8))(v0[85], v0[83]);

    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_92_0(v8, v9);
    swift_willThrow();
LABEL_13:
    OUTLINED_FUNCTION_30_10();

    OUTLINED_FUNCTION_3_0();

    return v56();
  }

  v10 = v0[86];
  v72 = *(v10 + 32);
  v74 = v10 + 32;
  v72(v0[88], v0[85], v0[75]);
  v11 = *(sub_237EF7E20() + 16);

  v12 = v0[88];
  if (v11 != 1)
  {
    v38 = v0[86];
    v39 = v0[75];

    sub_237EF7E20();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_3_26(v41, v40 + 6);
    swift_willThrow();
    (*(v38 + 8))(v12, v39);
    goto LABEL_13;
  }

  v71 = v0[75];
  v13 = *(sub_237EF7E20() + 16);

  if (v13 != 1)
  {

    sub_237EF7E20();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_3_26(v43, v42 + 9);
    swift_willThrow();
    v44 = OUTLINED_FUNCTION_42_2();
    v45(v44);
    goto LABEL_13;
  }

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v78 = *(result + 32);

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v76 = v0[86];
  v65 = v0[76];
  v15 = *(result + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v16 = OUTLINED_FUNCTION_36_1();
  *(v16 + 16) = xmmword_237F04760;
  OUTLINED_FUNCTION_9_9();
  v17 = sub_237EF8A00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v78;
  OUTLINED_FUNCTION_89_0();
  sub_237D14E78();
  v18 = OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_87_0(v18, v19, v20, v21, v22, v23, v24, v25, v65, v67, v68, v69, v71, v72, v74, v5, v26);
  *(v27 + 32) = v17;
  *(v27 + 40) = v15;
  OUTLINED_FUNCTION_89_0();
  sub_237D14E78();
  v0[59] = 0;
  v0[60] = v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
  v29 = sub_237CE32D8();
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  v31 = v0[55];
  v0[56] = v0[54];
  v0[57] = v31;
  v0[42] = v28;
  v0[43] = v75;
  v70 = v29;
  v0[44] = v29;
  v0[45] = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  while (1)
  {
    v32 = v0[76];
    v0[46] = v28;
    v0[47] = v75;
    v0[48] = v70;
    v0[49] = WitnessTable;
    sub_237EF9370();
    sub_237EF9360();
    v33 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v33, v34, v32) == 1)
    {
      break;
    }

    v35 = v0[87];
    v36 = v0[75];
    v73(v35, v0[77] + *(v66 + 48), v36);
    v0[35] = v28;
    v37 = sub_237CE3364();
    v0[36] = v37;
    v0[32] = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237EF7F90();
    OUTLINED_FUNCTION_42_2();
    sub_237EF7EA0();
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
    v0[40] = v28;
    v0[41] = v37;
    v0[37] = 0;
    sub_237EF7F90();
    OUTLINED_FUNCTION_42_2();
    sub_237EF7EA0();
    (*(v76 + 8))(v35, v36);
    __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  }

  v77 = v0[91];
  v79 = v0[92];
  v46 = v0[82];
  v47 = v0[81];
  v48 = v0[80];
  v49 = v0[79];
  v50 = v0[78];
  v51 = v0[74];

  v52 = *(v50 + 16);
  v52(v48, v46, v51);
  v52(v49, v47, v51);
  v53 = OUTLINED_FUNCTION_55_1();
  TimeSeriesForecasterAnnotatedWindows.init(features:annotations:inputWindowSize:forecastWindowSize:stride:shufflesElements:)(v53, v54, v77, v79, 1, 1, v55);
  OUTLINED_FUNCTION_62_1(v0 + 91);
  v57 = swift_task_alloc();
  v0[93] = v57;
  v58 = OUTLINED_FUNCTION_36_6();
  *v57 = v0;
  v57[1] = sub_237CDCF0C;
  v59 = v0[72];
  v60 = v0[70];
  v61 = v0[65];
  v62 = v0[63];
  v63 = v0[64];
  v64 = v0[61];

  return LinearTimeSeriesForecaster.fitted<A>(toWindows:eventHandler:)(v64, v59, v62, v63, v61, v60, v58);
}

uint64_t sub_237CDCF0C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CDD008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_83();
  v19 = v18[88];
  v35 = v18[90];
  v36 = v18[87];
  v20 = v18[86];
  v37 = v18[85];
  v38 = v18[80];
  v21 = v18[78];
  v39 = v18[79];
  v40 = v18[77];
  v22 = v18[75];
  v41 = v18[73];
  (*(v18[71] + 8))(v18[72], v18[70]);
  v23 = *(v21 + 8);
  v24 = OUTLINED_FUNCTION_90_0();
  v23(v24);
  v25 = OUTLINED_FUNCTION_42_2();
  v23(v25);
  (*(v20 + 8))(v19, v22);

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_58();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_237CDD160()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = v0[78];
  v4 = v0[75];
  (*(v0[71] + 8))(v0[72], v0[70]);
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_90_0();
  v5(v6);
  v7 = OUTLINED_FUNCTION_42_2();
  v5(v7);
  (*(v2 + 8))(v1, v4);
  OUTLINED_FUNCTION_30_10();

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t LinearTimeSeriesForecaster.fitted<A>(toWindows:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 416) = a6;
  *(v8 + 424) = a7;
  *(v8 + 400) = a4;
  *(v8 + 408) = a5;
  *(v8 + 384) = a2;
  *(v8 + 392) = a3;
  *(v8 + 376) = a1;
  *(v8 + 432) = a5[2];
  OUTLINED_FUNCTION_1_1();
  *(v8 + 440) = v10;
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = a5[3];
  *(v8 + 472) = a5[4];
  OUTLINED_FUNCTION_23_8();
  v11 = type metadata accessor for MultivariateLinearRegressor.Model();
  OUTLINED_FUNCTION_18(v11);
  *(v8 + 480) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v12 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  *(v8 + 488) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v8 + 496) = v13;
  *(v8 + 504) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_4();
  *(v8 + 512) = sub_237EF7E90();
  *(v8 + 520) = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_23_8();
  v14 = sub_237EF90F0();
  *(v8 + 528) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v8 + 536) = v15;
  *(v8 + 544) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_38_3();
  *(v8 + 552) = v16;
  *(v8 + 560) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  *(v8 + 568) = v17;
  *(v8 + 576) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_41_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 584) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  *(v8 + 592) = v19;
  v20 = OUTLINED_FUNCTION_27_0();
  v21 = *(v7 + 16);
  *(v8 + 328) = *v7;
  *(v8 + 600) = v20;
  *(v8 + 608) = v21;
  *(v8 + 344) = *(v7 + 32);
  *(v8 + 732) = *(v7 + 48);
  *(v8 + 740) = *(v7 + 52);
  *(v8 + 624) = *(v7 + 56);
  v22 = *(v7 + 64);
  *(v8 + 273) = v22;
  *(v8 + 728) = v22;
  v23 = *(v7 + 65);
  *(v8 + 140) = *(v7 + 68);
  *(v8 + 137) = v23;
  *(v8 + 632) = *(v7 + 72);
  *(v8 + 744) = *(v7 + 88);
  *(v8 + 748) = *(v7 + 92);
  *(v8 + 648) = *(v7 + 96);
  *(v8 + 752) = *(v7 + 104);
  *(v8 + 756) = *(v7 + 108);
  *(v8 + 656) = *(v7 + 112);
  LOBYTE(v23) = *(v7 + 120);
  *(v8 + 274) = v23;
  *(v8 + 736) = v23;
  v24 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_237CDD610()
{
  v1 = *(v0 + 273);
  v2 = *(v0 + 544);
  v3 = OUTLINED_FUNCTION_73_1();
  v4(v3);
  OUTLINED_FUNCTION_88_1();
  sub_237EF86F0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_57_2(v2);
  if (v28)
  {
    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_11_15(v5, v6);
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_44_2();
    v8(v7);
    OUTLINED_FUNCTION_56_2();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_4;
  }

  v60 = v1;
  (*(*(v0 + 552) + 32))(*(v0 + 560), *(v0 + 544), *(v0 + 520));
  sub_237CE1A50();
  sub_237EF7E20();
  OUTLINED_FUNCTION_91_0();
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v70 = *(v12 + 40);
  *(v0 + 664) = v70;

  sub_237EF7E20();
  OUTLINED_FUNCTION_91_0();
  if (!v11)
  {
    goto LABEL_24;
  }

  v14 = *(v0 + 648);
  v15 = *(v0 + 744);
  v16 = *(v0 + 640);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v19 = *(v0 + 732);
  v62 = *(v0 + 504);
  v64 = *(v0 + 616);
  v21 = *(v0 + 472);
  v20 = *(v0 + 480);
  v69 = *(v0 + 608);
  v22 = *(v13 + 40);
  *(v0 + 672) = v22;

  *(v0 + 224) = v17;
  *(v0 + 232) = v16;
  *(v0 + 240) = v15;
  *(v0 + 248) = v14;
  *(v0 + 264) = v18;
  *(v0 + 272) = v60 & 1;
  *(v0 + 256) = v19;
  type metadata accessor for MultivariateLinearRegressor();
  MultivariateLinearRegressor.makeTransformer()(v20);
  sub_237DBAF34(v20, v70, v22, 1, v62);
  *(v0 + 760) = powf(0.00001 / v19, 1.0 / v64);
  *(v0 + 360) = sub_237EF8110();
  v23 = sub_237EF8710();
  v24 = v23 + v69;
  if (__OFADD__(v23, v69))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = *(v0 + 608);
  if (!v27)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v26 == 0x8000000000000000 && v27 == -1;
  if (v28)
  {
    goto LABEL_29;
  }

  v29 = *(v0 + 616);
  *(v0 + 680) = sub_237EF8A60();
  sub_237EF8970();
  if (v29 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v30 = *(v0 + 472);
  *(v0 + 688) = 0;
  v31 = *(v0 + 616);
  if (!v31)
  {
    v53 = OUTLINED_FUNCTION_17_12();
    v54(v53);
    v55 = OUTLINED_FUNCTION_81_1();
    v56(v55);
    v57 = OUTLINED_FUNCTION_67_0();
    v58(v57);

    (*(v20 + 8))(v21, v0 + 360);

    OUTLINED_FUNCTION_10_3();
LABEL_4:
    OUTLINED_FUNCTION_110();

    __asm { BRAA            X1, X16 }
  }

  v71 = v30;
  *(v0 + 696) = 1;
  v63 = *(v0 + 756);
  v32 = *(v0 + 752);
  v33 = *(v0 + 648);
  v34 = *(v0 + 748);
  v35 = *(v0 + 744);
  v36 = *(v0 + 640);
  v37 = *(v0 + 632);
  v38 = *(v0 + 624);
  v39 = *(v0 + 740);
  v40 = *(v0 + 732);
  v41 = *(v0 + 608);
  v68 = *(v0 + 504);
  v66 = *(v0 + 464);
  v67 = *(v0 + 656);
  v61 = *(v0 + 432);
  v65 = *(v0 + 424);
  v59 = *(v0 + 416);
  sub_237EF8A50();
  *(v0 + 16) = *(v0 + 328);
  *(v0 + 32) = v41;
  *(v0 + 40) = v31;
  *(v0 + 48) = *(v0 + 344);
  *(v0 + 64) = v40;
  *(v0 + 68) = v39;
  *(v0 + 72) = v38;
  OUTLINED_FUNCTION_6_19(*(v0 + 728));
  *(v0 + 88) = v37;
  *(v0 + 96) = v36;
  *(v0 + 104) = v35;
  *(v0 + 108) = v34;
  *(v0 + 112) = v33;
  *(v0 + 120) = v32;
  *(v0 + 124) = v63;
  v42 = OUTLINED_FUNCTION_102(v67);
  *(v0 + 704) = v42;
  v42[2] = v61;
  v42[3] = v59;
  v42[4] = v66;
  v42[5] = v71;
  v42[6] = v65;
  v42[7] = v0 + 224;
  v42[8] = v68;
  v42[9] = v0 + 360;
  v43 = swift_task_alloc();
  *(v0 + 712) = v43;
  *v43 = v0;
  OUTLINED_FUNCTION_9_14(v43);
  OUTLINED_FUNCTION_110();

  sub_237CE1E1C(v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_237CDDCAC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 720) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CDDDB8()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 760);
  v3 = *(v0 + 732);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 432);
  v7 = *(v0 + 440);
  inited = *(v0 + 392);
  *(v0 + 368) = *(v0 + 360);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v9 = v0 + 368;
  Collection<>.mean()();
  v12 = *(v7 + 16);
  v11 = v7 + 16;
  v10 = v12;
  v12(v5, v4, v6);
  sub_237CE3484();
  OUTLINED_FUNCTION_105();
  *(v0 + 256) = v3 * powf(v2, v1);
  if (inited)
  {
    v60 = *(v0 + 616);
    v62 = *(v0 + 688);
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);
    v57 = v13;
    v15 = *(v0 + 432);
    v16 = *(v0 + 440);
    v18 = *(v0 + 392);
    v17 = *(v0 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
    v10(v14, v13, v15);
    v11 = MEMORY[0x277D839F8];
    *(inited + 72) = MEMORY[0x277D839F8];
    sub_237C70604(v18);
    sub_237C65348();
    OUTLINED_FUNCTION_84_1();
    sub_237EF8190();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    sub_237EF8230();
    OUTLINED_FUNCTION_22_10();
    *(v0 + 280) = v19;
    *(v0 + 288) = 0x8000000237F09360;
    *(v0 + 296) = v62;
    *(v0 + 304) = v60;
    *(v0 + 312) = 0;
    *(v0 + 320) = v20;
    v9 = v17;
    v18(v0 + 280);
    sub_237C5EE40(v18);
    (*(v16 + 8))(v57, v15);
  }

  else
  {
    result = (*(*(v0 + 440) + 8))(*(v0 + 456), *(v0 + 432));
  }

  v22 = *(v0 + 696);
  *(v0 + 688) = v22;
  v23 = *(v0 + 616);
  if (v22 == v23)
  {
    v24 = OUTLINED_FUNCTION_17_12();
    v25(v24);
    v26 = OUTLINED_FUNCTION_81_1();
    v27(v26);
    v28 = OUTLINED_FUNCTION_67_0();
    v29(v28);

    (*(inited + 8))(v11, v9);

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_109();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 696) = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    v56 = *(v0 + 756);
    v32 = *(v0 + 752);
    v52 = *(v0 + 648);
    v51 = *(v0 + 748);
    v33 = *(v0 + 744);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);
    v37 = *(v0 + 740);
    v38 = *(v0 + 732);
    v39 = *(v0 + 608);
    v59 = *(v0 + 656);
    v61 = *(v0 + 504);
    v58 = *(v0 + 424);
    v54 = *(v0 + 416);
    v55 = *(v0 + 432);
    v53 = *(v0 + 464);
    sub_237EF8A50();
    *(v0 + 16) = *(v0 + 328);
    *(v0 + 32) = v39;
    *(v0 + 40) = v23;
    *(v0 + 48) = *(v0 + 344);
    *(v0 + 64) = v38;
    *(v0 + 68) = v37;
    *(v0 + 72) = v36;
    OUTLINED_FUNCTION_6_19(*(v0 + 728));
    *(v0 + 88) = v35;
    *(v0 + 96) = v34;
    *(v0 + 104) = v33;
    *(v0 + 108) = v51;
    *(v0 + 112) = v52;
    *(v0 + 120) = v32;
    *(v0 + 124) = v56;
    v40 = OUTLINED_FUNCTION_102(v59);
    *(v0 + 704) = v40;
    *(v40 + 16) = v55;
    *(v40 + 24) = v54;
    *(v40 + 32) = v53;
    *(v40 + 48) = v58;
    *(v40 + 56) = v0 + 224;
    *(v40 + 64) = v61;
    *(v40 + 72) = v0 + 360;
    v41 = swift_task_alloc();
    *(v0 + 712) = v41;
    *v41 = v0;
    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_109();

    return sub_237CE1E1C(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  return result;
}

uint64_t sub_237CDE220()
{
  (*(v0[69] + 8))(v0[70], v0[65]);
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);

  v3 = OUTLINED_FUNCTION_9_9();
  v4(v3);
  OUTLINED_FUNCTION_56_2();

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t LinearTimeSeriesForecaster.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_0();
  v12 = v11;
  v14 = v13;
  *(v10 + 808) = a10;
  *(v10 + 800) = a9;
  *(v10 + 792) = v15;
  *(v10 + 784) = v11;
  *(v10 + 776) = v13;
  *(v10 + 768) = v16;
  *(v10 + 760) = v17;
  *(v10 + 752) = v18;
  *(v10 + 744) = v19;
  *(v10 + 736) = v20;
  *(v10 + 816) = *(v15 - 8);
  *(v10 + 824) = OUTLINED_FUNCTION_27_0();
  *(v10 + 832) = *(v14 + 16);
  *(v10 + 840) = *(v14 + 24);
  OUTLINED_FUNCTION_23_8();
  v21 = type metadata accessor for TimeSeriesForecasterAnnotatedWindows();
  *(v10 + 848) = v21;
  OUTLINED_FUNCTION_6_1(v21);
  *(v10 + 856) = v22;
  *(v10 + 864) = swift_task_alloc();
  *(v10 + 872) = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v23 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v23);
  *(v10 + 880) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_4();
  *(v10 + 888) = sub_237EF7E90();
  OUTLINED_FUNCTION_32_4();
  v24 = type metadata accessor for AnnotatedFeature();
  *(v10 + 896) = v24;
  *(v10 + 904) = OUTLINED_FUNCTION_100_0();
  v25 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v25);
  *(v10 + 912) = swift_task_alloc();
  *(v10 + 920) = swift_task_alloc();
  OUTLINED_FUNCTION_38_3();
  *(v10 + 928) = v26;
  *(v10 + 936) = OUTLINED_FUNCTION_80_1();
  *(v10 + 944) = swift_task_alloc();
  *(v10 + 952) = swift_task_alloc();
  *(v10 + 960) = swift_task_alloc();
  *(v10 + 968) = swift_task_alloc();
  *(v10 + 976) = swift_task_alloc();
  *(v10 + 984) = swift_task_alloc();
  *(v10 + 992) = swift_task_alloc();
  OUTLINED_FUNCTION_43_3();
  v27 = sub_237EF90F0();
  *(v10 + 1000) = v27;
  OUTLINED_FUNCTION_6_1(v27);
  *(v10 + 1008) = v28;
  *(v10 + 1016) = OUTLINED_FUNCTION_80_1();
  *(v10 + 1024) = swift_task_alloc();
  *(v10 + 1032) = *(v24 - 8);
  *(v10 + 1040) = swift_task_alloc();
  *(v10 + 1048) = swift_task_alloc();
  *(v10 + 1056) = swift_task_alloc();
  *(v10 + 1064) = *(v12 - 8);
  *(v10 + 1072) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_79_1((v10 + 1080));
  v29 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v29, v30, v31);
}

uint64_t sub_237CDE6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10[128];
  v12 = OUTLINED_FUNCTION_73_1();
  v13(v12);
  v14 = sub_237EF8A90();
  v10[86] = v14;
  v15 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v194 = v15;
  sub_237EF8E80();
  OUTLINED_FUNCTION_57_2(v11);
  if (v17)
  {
    (*(v10[126] + 8))(v10[128], v10[125]);

    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_92_0(v18, v19);
    OUTLINED_FUNCTION_77_1(v20);
LABEL_15:
    OUTLINED_FUNCTION_53_1();

    OUTLINED_FUNCTION_3_0();

    return v89();
  }

  v190 = *(v10[129] + 32);
  (v190)(v10[132], v10[128], v10[112]);
  v21 = *(sub_237EF7E20() + 16);

  v22 = v10[132];
  if (v21 != 1)
  {
    v50 = v10[129];
    v51 = v10[112];

    sub_237EF7E20();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_3_26(v53, v52 + 10);
    OUTLINED_FUNCTION_77_1(v54);
    (*(v50 + 8))(v22, v51);
    goto LABEL_15;
  }

  v23 = *(sub_237EF7E20() + 16);

  v24 = v10[132];
  if (v23 != 1)
  {
    v55 = v10[129];
    v56 = v10[112];

    sub_237EF7E20();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_3_26(v58, v57 + 13);
    OUTLINED_FUNCTION_77_1(v59);
    (*(v55 + 8))(v24, v56);
    goto LABEL_15;
  }

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v174 = WitnessTable;
  v26 = *(result + 32);

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v203 = v10[129];
  v27 = *(result + 32);

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v29 = OUTLINED_FUNCTION_36_1();
  *(v29 + 16) = xmmword_237F04760;
  v30 = sub_237EF8A00();
  *(v29 + 32) = v30;
  *(v29 + 40) = v26;
  sub_237D14E78();
  v31 = OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_87_0(v31, v32, v33, v34, v35, v36, v37, v38, v164, v167, v28, v26, v174, v177, v180, v183, v39);
  *(v40 + 32) = v30;
  *(v40 + 40) = v27;
  v168 = v27;
  sub_237D14E78();
  v10[87] = 0;
  v10[88] = v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
  v42 = sub_237CE32D8();
  OUTLINED_FUNCTION_1_2();
  v43 = swift_getWitnessTable();
  sub_237EFA000();

  v44 = v10[79];
  v10[80] = v10[78];
  v10[81] = v44;
  v10[62] = v41;
  v10[63] = v194;
  v10[64] = v42;
  v10[65] = v43;
  v165 = sub_237EF9380();
  sub_237EF9350();
  v188 = (v203 + 8);
  v204 = v41;
  while (1)
  {
    v45 = v10[115];
    v10[66] = v41;
    v10[67] = v194;
    v10[68] = v42;
    v10[69] = v43;
    sub_237EF9370();
    sub_237EF9360();
    OUTLINED_FUNCTION_57_2(v45);
    if (v17)
    {
      break;
    }

    v46 = v10[131];
    v47 = v10[112];
    OUTLINED_FUNCTION_58_2();
    v190(v46);
    v10[55] = v41;
    v48 = sub_237CE3364();
    v10[56] = v48;
    v10[52] = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_89_0();
    sub_237EF7F90();
    OUTLINED_FUNCTION_40_4();
    sub_237EF7EA0();
    __swift_destroy_boxed_opaque_existential_1((v10 + 52));
    v10[60] = v204;
    v10[61] = v48;
    v41 = v204;
    v10[57] = 0;
    OUTLINED_FUNCTION_89_0();
    sub_237EF7F90();
    OUTLINED_FUNCTION_40_4();
    sub_237EF7EA0();
    OUTLINED_FUNCTION_93_0();
    v49(v46, v47);
    __swift_destroy_boxed_opaque_existential_1((v10 + 57));
  }

  v198 = v10[136];
  v60 = v10[124];
  v61 = v10[123];
  v62 = v10[122];
  v63 = v10[121];
  v64 = v10[116];
  v65 = v10[111];
  v184 = v10[135];

  v67 = *(v64 + 16);
  v66 = v64 + 16;
  v67(v62, v60, v65);
  v67(v63, v61, v65);
  v68 = OUTLINED_FUNCTION_55_1();
  TimeSeriesForecasterAnnotatedWindows.init(features:annotations:inputWindowSize:forecastWindowSize:stride:shufflesElements:)(v68, v69, v184, v198, 1, 1, v70);
  v185 = v67;
  v71 = v10[112];
  v72 = OUTLINED_FUNCTION_73_1();
  v73(v72);
  OUTLINED_FUNCTION_47_1();
  v74 = sub_237EF8A90();
  v10[89] = v74;
  sub_237EF8E80();
  v75 = OUTLINED_FUNCTION_95_0();
  if (__swift_getEnumTagSinglePayload(v75, v76, v71) == 1)
  {
    v199 = v10[132];
    v77 = v10[116];
    v78 = v10[112];
    v79 = v10[109];
    v80 = v10[107];
    v81 = v10[106];
    (*(v10[126] + 8))(v10[127], v10[125]);

    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v82 = swift_allocError();
    OUTLINED_FUNCTION_11_15(v82, v83);
    OUTLINED_FUNCTION_77_1(v84);
    (*(v80 + 8))(v79, v81);
    v85 = *(v77 + 8);
    v86 = OUTLINED_FUNCTION_88_1();
    v85(v86);
    v87 = OUTLINED_FUNCTION_55_1();
    v85(v87);
    OUTLINED_FUNCTION_93_0();
    v88(v199, v78);
    goto LABEL_15;
  }

  (v190)(v10[130], v10[127], v10[112]);
  sub_237EF7E20();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = v172;
  v91 = OUTLINED_FUNCTION_31_0();
  v93 = sub_237C60C7C(v91, v92);

  swift_setDeallocating();
  if ((v93 & 1) == 0)
  {
    v126 = v10[130];
    v196 = v10[124];
    v200 = v10[132];
    v192 = v10[123];
    v127 = v10[116];
    v128 = v10[112];
    v129 = v10[111];
    v130 = v10[109];
    v131 = v10[107];
    v132 = v10[106];

    sub_237EF7E20();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_3_26(v134, v133 + 41);
    OUTLINED_FUNCTION_77_1(v135);
    v136 = *v188;
    (*v188)(v126, v128);
    (*(v131 + 8))(v130, v132);
    v137 = *(v127 + 8);
    v137(v192, v129);
    v137(v196, v129);
    v136(v200, v128);
    goto LABEL_15;
  }

  v181 = v66;
  sub_237EF7E20();
  v94 = swift_initStackObject();
  *(v94 + 16) = xmmword_237F03530;
  *(v94 + 32) = v168;
  v95 = OUTLINED_FUNCTION_31_0();
  v97 = sub_237C60C7C(v95, v96);

  swift_setDeallocating();
  if ((v97 & 1) == 0)
  {
    v138 = v10[130];
    v197 = v10[124];
    v201 = v10[132];
    v139 = v10[116];
    v140 = v10[112];
    v141 = v10[111];
    v191 = v10[109];
    v193 = v10[123];
    v142 = v10[107];
    v189 = v10[106];

    sub_237EF7E20();
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_3_26(v144, v143 + 47);
    OUTLINED_FUNCTION_77_1(v145);
    v146 = *v188;
    (*v188)(v138, v140);
    (*(v142 + 8))(v191, v189);
    v147 = *(v139 + 8);
    v147(v193, v141);
    v147(v197, v141);
    v146(v201, v140);
    goto LABEL_15;
  }

  v98 = v168;
  v99 = OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_87_0(v99, v100, v101, v102, v103, v104, v105, v106, v165, v168, v170, v172, v175, (v10 + 135), v181, v185, v107);
  OUTLINED_FUNCTION_9_9();
  v108 = sub_237EF8A00();
  v99[2].n128_u64[0] = v108;
  v99[2].n128_u64[1] = v173;
  OUTLINED_FUNCTION_88_1();
  sub_237D14E78();
  v109 = OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_87_0(v109, v110, v111, v112, v113, v114, v115, v116, v166, v169, v171, v173, v176, v178, v182, v186, v117);
  *(v118 + 32) = v108;
  *(v118 + 40) = v98;
  sub_237D14E78();
  v10[90] = 0;
  v10[91] = v74;
  sub_237EFA000();

  v119 = v10[83];
  v10[84] = v10[82];
  v10[85] = v119;
  sub_237EF9350();
  while (1)
  {
    v120 = v10[113];
    sub_237EF9360();
    v121 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v121, v122, v120) == 1)
    {
      break;
    }

    v123 = v10[131];
    v195 = v10[112];
    OUTLINED_FUNCTION_58_2();
    v190(v123);
    v10[45] = v204;
    v124 = sub_237CE3364();
    v10[46] = v124;
    v10[42] = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237EF7F90();
    OUTLINED_FUNCTION_40_4();
    sub_237EF7EA0();
    __swift_destroy_boxed_opaque_existential_1((v10 + 42));
    v10[50] = v204;
    v10[51] = v124;
    v10[47] = 0;
    sub_237EF7F90();
    OUTLINED_FUNCTION_40_4();
    sub_237EF7EA0();
    OUTLINED_FUNCTION_93_0();
    v125(v123, v195);
    __swift_destroy_boxed_opaque_existential_1((v10 + 47));
  }

  v205 = v10[136];
  v202 = v10[135];
  v148 = v10[120];
  v149 = v10[119];
  v150 = v10[118];
  v151 = v10[117];
  v152 = v10[111];

  v187(v150, v148, v152);
  v187(v151, v149, v152);
  v153 = OUTLINED_FUNCTION_55_1();
  TimeSeriesForecasterAnnotatedWindows.init(features:annotations:inputWindowSize:forecastWindowSize:stride:shufflesElements:)(v153, v154, v202, v205, 1, 1, v155);
  OUTLINED_FUNCTION_62_1(v179);
  v156 = swift_task_alloc();
  v10[137] = v156;
  OUTLINED_FUNCTION_36_6();
  *v156 = v10;
  v156[1] = sub_237CDF5F8;
  v157 = v10[109];
  v158 = v10[108];
  v159 = v10[106];
  v160 = v10[97];
  v161 = v10[96];
  v162 = v10[95];
  v163 = v10[92];

  return LinearTimeSeriesForecaster.fitted<A, B>(toWindows:validateOn:eventHandler:)(v163, v157, v158, v162, v161, v160, v159, v159, a9, a10);
}

uint64_t sub_237CDF5F8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 1104) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CDF6F4()
{
  v15 = v0[130];
  v1 = v0[129];
  v13 = v0[123];
  v14 = v0[124];
  v17 = v0[120];
  v2 = v0[119];
  v3 = v0[116];
  v4 = v0[112];
  v5 = v0[111];
  v16 = v0[109];
  v6 = v0[106];
  v7 = *(v0[107] + 8);
  v7();
  v8 = *(v3 + 8);
  v8(v2, v5);
  v8(v17, v5);
  v9 = *(v1 + 8);
  v9(v15, v4);
  (v7)(v16, v6);
  v8(v13, v5);
  v8(v14, v5);
  v10 = OUTLINED_FUNCTION_31_0();
  (v9)(v10);

  OUTLINED_FUNCTION_10_3();

  return v11();
}

uint64_t sub_237CDF95C()
{
  v1 = v0[129];
  v16 = v0[124];
  v17 = v0[132];
  v14 = v0[130];
  v15 = v0[123];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[116];
  v5 = v0[111];
  v12 = v0[112];
  v13 = v0[109];
  v6 = v0[106];
  v7 = *(v0[107] + 8);
  v7(v0[108], v6);
  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v2, v5);
  v9 = *(v1 + 8);
  v9(v14, v12);
  v7(v13, v6);
  v8(v15, v5);
  v8(v16, v5);
  v9(v17, v12);
  OUTLINED_FUNCTION_53_1();

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t LinearTimeSeriesForecaster.fitted<A, B>(toWindows:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 352) = a9;
  *(v11 + 360) = a10;
  *(v11 + 336) = a7;
  *(v11 + 344) = a8;
  *(v11 + 320) = a5;
  *(v11 + 328) = a6;
  *(v11 + 304) = a3;
  *(v11 + 312) = a4;
  *(v11 + 288) = a1;
  *(v11 + 296) = a2;
  *(v11 + 368) = a6[2];
  OUTLINED_FUNCTION_1_1();
  *(v11 + 376) = v14;
  *(v11 + 384) = swift_task_alloc();
  *(v11 + 392) = swift_task_alloc();
  *(v11 + 400) = swift_task_alloc();
  *(v11 + 408) = a6[3];
  OUTLINED_FUNCTION_18_12();
  v15 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v15);
  *(v11 + 416) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_12();
  *(v11 + 424) = sub_237EF7E90();
  OUTLINED_FUNCTION_1_1();
  *(v11 + 432) = v16;
  *(v11 + 440) = swift_task_alloc();
  *(v11 + 448) = swift_task_alloc();
  OUTLINED_FUNCTION_18_12();
  v17 = type metadata accessor for AnnotatedBatch();
  *(v11 + 456) = v17;
  OUTLINED_FUNCTION_6_1(v17);
  *(v11 + 464) = v18;
  *(v11 + 472) = OUTLINED_FUNCTION_27_0();
  *(v11 + 480) = *(a8 - 8);
  *(v11 + 488) = OUTLINED_FUNCTION_27_0();
  *(v11 + 496) = a6[4];
  OUTLINED_FUNCTION_18_12();
  v19 = type metadata accessor for MultivariateLinearRegressor.Model();
  OUTLINED_FUNCTION_18(v19);
  *(v11 + 504) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_12();
  v20 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  *(v11 + 512) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v11 + 520) = v21;
  *(v11 + 528) = OUTLINED_FUNCTION_27_0();
  *(v11 + 536) = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_23_8();
  v22 = sub_237EF90F0();
  *(v11 + 544) = v22;
  OUTLINED_FUNCTION_6_1(v22);
  *(v11 + 552) = v23;
  *(v11 + 560) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_38_3();
  *(v11 + 568) = v24;
  *(v11 + 576) = OUTLINED_FUNCTION_80_1();
  *(v11 + 584) = swift_task_alloc();
  *(v11 + 592) = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  *(v11 + 600) = v25;
  *(v11 + 608) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_41_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v11 + 616) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  *(v11 + 624) = v27;
  *(v11 + 632) = OUTLINED_FUNCTION_27_0();
  v28 = *(v10 + 16);
  *(v11 + 640) = *v10;
  *(v11 + 656) = v28;
  *(v11 + 828) = *(v10 + 32);
  *(v11 + 836) = *(v10 + 36);
  *(v11 + 672) = *(v10 + 40);
  *(v11 + 840) = *(v10 + 48);
  *(v11 + 844) = *(v10 + 52);
  *(v11 + 680) = *(v10 + 56);
  v29 = *(v10 + 64);
  *(v11 + 193) = v29;
  *(v11 + 824) = v29;
  *(v11 + 137) = *(v10 + 65);
  *(v11 + 140) = *(v10 + 68);
  *(v11 + 688) = *(v10 + 72);
  *(v11 + 848) = *(v10 + 88);
  *(v11 + 852) = *(v10 + 92);
  *(v11 + 704) = *(v10 + 96);
  *(v11 + 856) = *(v10 + 104);
  *(v11 + 860) = *(v10 + 108);
  *(v11 + 712) = *(v10 + 112);
  v30 = *(v10 + 120);
  *(v11 + 194) = v30;
  *(v11 + 832) = v30;
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_45();
  return OUTLINED_FUNCTION_23_2(v31, v32, v33);
}

void sub_237CE003C()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 560);
  v3 = OUTLINED_FUNCTION_73_1();
  v4(v3);
  OUTLINED_FUNCTION_88_1();
  sub_237EF86F0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_57_2(v2);
  if (v49)
  {
    (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_11_15(v5, v6);
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_44_2();
    v8(v7);
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_94_0();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_25;
  }

  v103 = v1;
  (*(*(v0 + 568) + 32))(*(v0 + 592), *(v0 + 560), *(v0 + 536));
  OUTLINED_FUNCTION_13_6();
  sub_237CE1A50();
  sub_237EF7E20();
  OUTLINED_FUNCTION_91_0();
  if (!v9)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = *(v0 + 536);
  v120 = *(v10 + 40);
  *(v0 + 720) = v120;

  v91 = v11;
  sub_237EF7E20();
  OUTLINED_FUNCTION_91_0();
  if (!v9)
  {
    goto LABEL_31;
  }

  v13 = *(v0 + 704);
  v14 = *(v0 + 848);
  v15 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 840);
  v109 = *(v0 + 640);
  v94 = *(v0 + 528);
  v19 = *(v0 + 504);
  v20 = *(v0 + 480);
  v101 = *(v0 + 488);
  v106 = *(v0 + 448);
  v111 = *(v0 + 440);
  v114 = *(v0 + 648);
  v118 = *(v0 + 472);
  v96 = *(v0 + 304);
  v98 = *(v0 + 344);
  v93 = *(v12 + 40);
  *(v0 + 728) = v93;

  *(v0 + 144) = v16;
  *(v0 + 152) = v15;
  *(v0 + 160) = v14;
  *(v0 + 168) = v13;
  *(v0 + 184) = v17;
  *(v0 + 192) = v103 & 1;
  *(v0 + 176) = v18;
  OUTLINED_FUNCTION_84_1();
  type metadata accessor for MultivariateLinearRegressor();
  MultivariateLinearRegressor.makeTransformer()(v19);
  sub_237DBAF34(v19, v120, v93, 1, v94);
  (*(v20 + 16))(v101, v96, v98);
  sub_237EF8A90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237F08A50;
  OUTLINED_FUNCTION_81_1();
  v22 = sub_237EF8A00();
  *(v21 + 32) = v22;
  *(v21 + 40) = v109;
  *(v21 + 48) = v120;
  OUTLINED_FUNCTION_84_1();
  sub_237D14E78();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_237F08A50;
  *(v23 + 32) = v22;
  *(v23 + 40) = v114;
  *(v23 + 48) = v93;
  OUTLINED_FUNCTION_84_1();
  sub_237D14E78();
  AnnotatedBatch.init(features:annotations:)(v106, v111, v118);
  v99 = v22;
  if (v22 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v24 = 0;
  v85 = v0 + 144;
  v86 = v0 + 264;
  v25 = *(v0 + 432);
  v97 = v0;
  v112 = (v25 + 16);
  v115 = (*(v0 + 568) + 8);
  v88 = (v25 + 8);
  while (v99 != v24)
  {
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    sub_237EF8AC0();
    OUTLINED_FUNCTION_13_6();
    sub_237CE1A50();
    v26 = *(v97 + 576);
    v27 = *(v97 + 448);
    v28 = *(v97 + 424);
    v29 = *v115;
    (*v115)(*(v97 + 584), *(v97 + 536));
    v107 = v29;
    OUTLINED_FUNCTION_47_1();
    sub_237EF8AC0();
    v104 = *v112;
    OUTLINED_FUNCTION_12_13();
    v30();
    v31 = OUTLINED_FUNCTION_42_2();
    v29(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
    v121 = v24;
    v32 = OUTLINED_FUNCTION_28_5();
    *(v32 + 16) = xmmword_237F04760;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
    *(v32 + 56) = v33;
    v34 = sub_237CE3364();
    *(v32 + 32) = 0;
    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 64) = v34;
    *(v32 + 72) = 0;
    OUTLINED_FUNCTION_0_18();
    LODWORD(v101) = swift_getWitnessTable();
    sub_237EF7FA0();

    v35 = *v88;
    (*v88)(v27, v28);
    sub_237EF7EA0();
    sub_237EF8AC0();
    v104(v27, v26 + *(v91 + 36), v28);
    v36 = OUTLINED_FUNCTION_42_2();
    v107(v36);
    v37 = OUTLINED_FUNCTION_28_5();
    *(v37 + 16) = xmmword_237F04760;
    *(v37 + 56) = v33;
    *(v37 + 64) = v34;
    *(v37 + 32) = 0;
    *(v37 + 96) = v33;
    *(v37 + 104) = v34;
    *(v37 + 72) = 0;
    sub_237EF7FA0();

    v35(v27, v28);
    sub_237EF7EA0();
    v24 = v121 + 1;
  }

  v38 = *(v97 + 840);
  v39 = *(v97 + 672);
  v40 = *(v97 + 828);
  v41 = *(v97 + 664);
  v42 = *(v97 + 656);

  *(v97 + 864) = powf(0.00001 / v38, 1.0 / v41);
  sub_237CDC02C(v39, 0.0);
  *(v97 + 248) = v40;
  *(v97 + 256) = v43;
  *(v97 + 264) = sub_237EF8110();
  v44 = sub_237EF8710();
  v45 = v44 + v42;
  if (__OFADD__(v44, v42))
  {
    goto LABEL_33;
  }

  v46 = __OFSUB__(v45, 1);
  v47 = v45 - 1;
  if (v46)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v48 = *(v97 + 656);
  if (!v48)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v49 = v47 == 0x8000000000000000 && v48 == -1;
  if (v49)
  {
    goto LABEL_37;
  }

  v50 = *(v97 + 664);
  *(v97 + 736) = sub_237EF8A60();
  sub_237EF8970();
  if (v50 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v51 = *(v97 + 496);
  *(v97 + 744) = 0;
  v52 = *(v97 + 664);
  if (!v52)
  {
    v76 = *(v97 + 624);
    v90 = *(v97 + 616);
    v92 = *(v97 + 632);
    v77 = *(v97 + 568);
    v87 = *(v97 + 536);
    v89 = *(v97 + 592);
    v78 = *(v97 + 528);
    v79 = *(v97 + 520);
    v80 = *(v97 + 512);
    OUTLINED_FUNCTION_94_0();

    v81 = OUTLINED_FUNCTION_44_2();
    v82(v81);
    (*(v77 + 8))(v89, v87);
    (*(v76 + 8))(v92, v90);
    v83 = OUTLINED_FUNCTION_72_1();
    v84(v83);

    (*(v79 + 8))(v78, v80);

    OUTLINED_FUNCTION_10_3();
LABEL_25:
    OUTLINED_FUNCTION_111();

    __asm { BRAA            X1, X16 }
  }

  v122 = v51;
  *(v97 + 752) = 1;
  v117 = *(v97 + 712);
  v116 = *(v97 + 860);
  v53 = *(v97 + 856);
  v108 = *(v97 + 704);
  OUTLINED_FUNCTION_83_1();
  v100 = v54;
  v55 = *(v97 + 688);
  v56 = *(v97 + 680);
  v57 = *(v97 + 844);
  v58 = *(v97 + 840);
  v59 = *(v97 + 672);
  v60 = *(v97 + 836);
  v61 = *(v97 + 828);
  v62 = *(v97 + 656);
  v95 = *(v97 + 640);
  v119 = *(v97 + 528);
  v113 = *(v97 + 408);
  v105 = *(v97 + 368);
  v102 = *(v97 + 336);
  v110 = *(v97 + 352);
  sub_237EF8A50();
  *(v97 + 16) = v95;
  *(v97 + 32) = v62;
  *(v97 + 40) = v52;
  *(v97 + 48) = v61;
  *(v97 + 52) = v60;
  *(v97 + 56) = v59;
  *(v97 + 64) = v58;
  *(v97 + 68) = v57;
  *(v97 + 72) = v56;
  OUTLINED_FUNCTION_6_19(*(v97 + 824));
  *(v97 + 88) = v55;
  *(v97 + 96) = v100;
  *(v97 + 104) = v40;
  *(v97 + 108) = v101;
  *(v97 + 112) = v108;
  *(v97 + 120) = v53;
  *(v97 + 124) = v116;
  v63 = OUTLINED_FUNCTION_101_0(v117);
  *(v97 + 760) = v63;
  *(v63 + 16) = v105;
  *(v63 + 24) = v102;
  *(v63 + 40) = v113;
  *(v63 + 48) = v122;
  *(v63 + 56) = v110;
  *(v63 + 72) = v85;
  *(v63 + 80) = v119;
  *(v63 + 88) = v86;
  v64 = swift_task_alloc();
  *(v97 + 768) = v64;
  *v64 = v97;
  OUTLINED_FUNCTION_10_19(v64);
  OUTLINED_FUNCTION_111();

  sub_237CE1E1C(v65, v66, v67, v68, v69, v70, v71, v72);
}

uint64_t sub_237CE0DA8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 776) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE0EC0()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 864);
  v3 = *(v0 + 840);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v8 = *(v0 + 264);
  *(v0 + 784) = v8;
  *(v0 + 272) = v8;
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  Collection<>.mean()();
  v9 = *(v7 + 16);
  *(v0 + 792) = v9;
  *(v0 + 800) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v4, v6);
  sub_237CE3484();
  OUTLINED_FUNCTION_105();
  *(v0 + 176) = v3 * powf(v2, v1);
  v10 = swift_task_alloc();
  *(v0 + 808) = v10;
  *v10 = v0;
  v10[1] = sub_237CE1044;

  return sub_237DBAFFC();
}

uint64_t sub_237CE1044()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 816) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE1148()
{
  v2 = *(v0 + 744);
  v3 = *(v0 + 312);
  (*(v0 + 792))(*(v0 + 392), *(v0 + 384), *(v0 + 368));
  sub_237C65348();
  v4 = MEMORY[0x277D839F8];
  sub_237EF8190();
  sub_237D0FC4C(v2, *(v0 + 280));
  v6 = v5;
  if (v3)
  {
    v7 = *(v0 + 792);
    v70 = *(v0 + 744);
    v68 = *(v0 + 664);
    v9 = *(v0 + 392);
    v8 = *(v0 + 400);
    v63 = v8;
    v74 = *(v0 + 384);
    v10 = *(v0 + 368);
    v66 = *(v0 + 376);
    v11 = *(v0 + 312);
    v61 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
    v72 = v6;
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_32_6(v12, xmmword_237F04760);
    v7(v9, v8, v10);
    v12[4].n128_u64[1] = v4;
    sub_237C70604(v11);
    sub_237EF8190();
    v12[5].n128_u64[0] = 0x69746164696C6176;
    v12[5].n128_u64[1] = 0xEF73736F6C5F6E6FLL;
    v7(v9, v74, v10);
    v12[7].n128_u64[1] = v4;
    sub_237EF8190();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    v13 = sub_237EF8230();
    OUTLINED_FUNCTION_22_10();
    *(v0 + 200) = v14;
    *(v0 + 208) = 0x8000000237F09360;
    *(v0 + 216) = v70;
    *(v0 + 224) = v68;
    *(v0 + 232) = 0;
    *(v0 + 240) = v13;
    v11();
    sub_237C5EE40(v11);
    v15 = *(v66 + 8);
    v15(v74, v10);
    v15(v63, v10);

    if (v72)
    {
LABEL_6:
      v21 = *(v0 + 624);
      v55 = *(v0 + 616);
      v56 = *(v0 + 632);
      v22 = *(v0 + 568);
      v53 = *(v0 + 536);
      v54 = *(v0 + 592);
      v23 = *(v0 + 528);
      v24 = *(v0 + 520);
      v25 = *(v0 + 512);

      v26 = OUTLINED_FUNCTION_44_2();
      v27(v26);
      (*(v22 + 8))(v54, v53);
      (*(v21 + 8))(v56, v55);
      v28 = OUTLINED_FUNCTION_72_1();
      v29(v28);

      (*(v24 + 8))(v23, v25);

      OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_108();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {
    v17 = *(*(v0 + 376) + 8);
    (v17)(*(v0 + 384), *(v0 + 368));
    v18 = OUTLINED_FUNCTION_31_0();
    result = v17(v18);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v19 = *(v0 + 752);
  *(v0 + 744) = v19;
  v20 = *(v0 + 664);
  if (v19 == v20)
  {
    goto LABEL_6;
  }

  *(v0 + 752) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    v71 = *(v0 + 712);
    v69 = *(v0 + 860);
    v32 = *(v0 + 856);
    v64 = *(v0 + 704);
    OUTLINED_FUNCTION_83_1();
    v58 = v33;
    v34 = *(v0 + 688);
    v35 = *(v0 + 680);
    v36 = *(v0 + 844);
    v37 = *(v0 + 840);
    v38 = *(v0 + 672);
    v39 = *(v0 + 836);
    v40 = *(v0 + 828);
    v41 = *(v0 + 656);
    v57 = *(v0 + 640);
    v73 = *(v0 + 528);
    v65 = *(v0 + 408);
    v67 = *(v0 + 496);
    v60 = *(v0 + 368);
    v59 = *(v0 + 336);
    v62 = *(v0 + 352);
    sub_237EF8A50();
    *(v0 + 16) = v57;
    *(v0 + 32) = v41;
    *(v0 + 40) = v20;
    *(v0 + 48) = v40;
    *(v0 + 52) = v39;
    *(v0 + 56) = v38;
    *(v0 + 64) = v37;
    *(v0 + 68) = v36;
    *(v0 + 72) = v35;
    OUTLINED_FUNCTION_6_19(*(v0 + 824));
    *(v0 + 88) = v34;
    *(v0 + 96) = v58;
    *(v0 + 104) = v1;
    *(v0 + 108) = v61;
    *(v0 + 112) = v64;
    *(v0 + 120) = v32;
    *(v0 + 124) = v69;
    v42 = OUTLINED_FUNCTION_101_0(v71);
    *(v0 + 760) = v42;
    *(v42 + 16) = v60;
    *(v42 + 24) = v59;
    *(v42 + 40) = v65;
    *(v42 + 48) = v67;
    *(v42 + 56) = v62;
    *(v42 + 72) = v0 + 144;
    *(v42 + 80) = v73;
    *(v42 + 88) = v0 + 264;
    v43 = swift_task_alloc();
    *(v0 + 768) = v43;
    *v43 = v0;
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_108();

    return sub_237CE1E1C(v44, v45, v46, v47, v48, v49, v50, v51);
  }

  return result;
}

uint64_t sub_237CE1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_83();
  (*(v18[58] + 8))(v18[59], v18[57]);
  v19 = OUTLINED_FUNCTION_9_9();
  v20(v19);
  v21 = OUTLINED_FUNCTION_31_0();
  v22(v21);

  v23 = OUTLINED_FUNCTION_55_1();
  v24(v23);
  v34 = v18[97];
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_45_2();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_58();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, v34, a16, a17, a18);
}

uint64_t sub_237CE18B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_83();
  v19 = v18[78];
  v20 = v18[77];
  v38 = v18[66];
  v21 = v18[65];
  v36 = v18[79];
  v37 = v18[64];
  v22 = v18[58];
  v23 = v18[59];
  v24 = v18[57];
  (*(v18[47] + 8))(v18[50], v18[46]);
  (*(v22 + 8))(v23, v24);
  v25 = OUTLINED_FUNCTION_81_1();
  v26(v25);
  (*(v19 + 8))(v36, v20);

  (*(v21 + 8))(v38, v37);
  v39 = v18[102];
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_45_2();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_58();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, v36, v37, v38, v39, a16, a17, a18);
}

uint64_t sub_237CE1A50()
{
  v1 = 0xD000000000000040;
  v3 = *v0;
  v2 = v0[1];
  sub_237EF7E90();
  v4 = *(sub_237EF7E20() + 16);

  v5 = " input annotations' shape";
  if (v4 != 2)
  {
    goto LABEL_8;
  }

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(result + 32);

  if (v7 == v3)
  {
    type metadata accessor for AnnotatedFeature();
    v8 = *(sub_237EF7E20() + 16);

    v5 = "ze, featureSize]";
    if (v8 != 2)
    {
LABEL_7:
      v1 = 0xD000000000000049;
      goto LABEL_8;
    }

    result = sub_237EF7E20();
    if (*(result + 16))
    {
      v9 = *(result + 32);

      if (v9 == v2)
      {
        return result;
      }

      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_8:
  v10 = sub_237EF7E20();
  sub_237C84150();
  OUTLINED_FUNCTION_3_23();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = v1;
  *(v11 + 16) = v5 | 0x8000000000000000;
  *(v11 + 24) = 0;
  *(v11 + 32) = 6;
  return swift_willThrow();
}

uint64_t sub_237CE1BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  v8[16] = *(a5 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237CE1C70, 0, 0);
}

uint64_t sub_237CE1C70()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_16_13();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  OUTLINED_FUNCTION_41_3();
  type metadata accessor for MultivariateLinearRegressor();
  *v1 = v0;
  OUTLINED_FUNCTION_70_1();

  return MultivariateLinearRegressor.update(_:with:)();
}

uint64_t sub_237CE1D20()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE1E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 296) = a7;
  *(v9 + 304) = a8;
  *(v9 + 280) = a5;
  *(v9 + 288) = a6;
  *(v9 + 264) = a3;
  *(v9 + 272) = a4;
  *(v9 + 248) = a1;
  *(v9 + 256) = a2;
  *(v9 + 312) = *(a6 + 16);
  *(v9 + 320) = *(a6 + 24);
  OUTLINED_FUNCTION_12_13();
  v10 = sub_237EF7EE0();
  *(v9 + 328) = v10;
  OUTLINED_FUNCTION_6_1(v10);
  *(v9 + 336) = v11;
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  OUTLINED_FUNCTION_12_13();
  v12 = sub_237EF7E90();
  *(v9 + 360) = v12;
  v13 = type metadata accessor for AnnotatedFeature();
  *(v9 + 368) = v13;
  v14 = sub_237EF90F0();
  *(v9 + 376) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v9 + 384) = v15;
  *(v9 + 392) = OUTLINED_FUNCTION_27_0();
  *(v9 + 400) = *(v13 - 8);
  *(v9 + 408) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  *(v9 + 416) = v16;
  *(v9 + 424) = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 432) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  *(v9 + 440) = v18;
  *(v9 + 448) = OUTLINED_FUNCTION_27_0();
  *(v9 + 456) = *(v12 - 8);
  *(v9 + 464) = OUTLINED_FUNCTION_80_1();
  *(v9 + 472) = swift_task_alloc();
  OUTLINED_FUNCTION_12_13();
  v19 = type metadata accessor for AnnotatedBatch();
  *(v9 + 480) = v19;
  OUTLINED_FUNCTION_6_1(v19);
  *(v9 + 488) = v20;
  *(v9 + 496) = OUTLINED_FUNCTION_27_0();
  *(v9 + 504) = *v8;
  *(v9 + 520) = *(v8 + 16);
  memcpy((v9 + 144), (v8 + 24), 0x61uLL);
  v21 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_237CE214C()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[32];
  v0[66] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v4 = OUTLINED_FUNCTION_36_1();
  *(v4 + 16) = xmmword_237F04760;
  *(v4 + 32) = v1;
  v5 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    goto LABEL_22;
  }

  v6 = v0[64];
  v7 = v0[33];
  v0[67] = v5;
  *(v4 + 40) = v5;
  v133 = xmmword_237F04760;
  sub_237D14E78();
  v8 = OUTLINED_FUNCTION_36_1();
  *(v8 + 16) = xmmword_237F04760;
  *(v8 + 32) = v1;
  v9 = v6 * v7;
  if ((v6 * v7) >> 64 == (v6 * v7) >> 63)
  {
    v131 = v0[65];
    v11 = v0[52];
    v10 = v0[53];
    v12 = v0[37];
    v120 = v0[38];
    *&v124 = v0[56];
    v13 = v0[31];
    v0[68] = v9;
    *(v8 + 40) = v9;
    sub_237D14E78();
    v14 = OUTLINED_FUNCTION_13_6();
    AnnotatedBatch.init(features:annotations:)(v14, v15, v16);
    (*(v11 + 16))(v10, v13, v12);
    sub_237EF86F0();
    v17 = 0;
    v18 = v131 & ~(v131 >> 63);
    v0[69] = v18;
    v132 = xmmword_237F03530;
    while (1)
    {
      v0[70] = v17;
      if (v17 == v18)
      {
        break;
      }

      v19 = v0[49];
      v20 = v0[46];
      swift_getAssociatedConformanceWitness();
      sub_237EF91A0();
      if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
      {
        (*(v0[48] + 8))(v0[49], v0[47]);
        if (v17)
        {
          v80 = v0[57];
          OUTLINED_FUNCTION_0_18();
          swift_getWitnessTable();
          OUTLINED_FUNCTION_60_2();
          OUTLINED_FUNCTION_31_5();
          OUTLINED_FUNCTION_37_5();
          sub_237EF7F30();
          v81 = *(v80 + 40);
          OUTLINED_FUNCTION_47_1();
          v81();
          OUTLINED_FUNCTION_52_2();
          OUTLINED_FUNCTION_37_5();
          OUTLINED_FUNCTION_106();
          OUTLINED_FUNCTION_47_1();
          v81();
LABEL_15:
          OUTLINED_FUNCTION_13_10();
          v82 = swift_task_alloc();
          v0[71] = v82;
          *v82 = v0;
          OUTLINED_FUNCTION_15_14(v82);
          OUTLINED_FUNCTION_65_1();

          __asm { BRAA            X1, X16 }
        }

LABEL_18:
        v85 = OUTLINED_FUNCTION_25_7();
        v86(v85);
        v87 = OUTLINED_FUNCTION_31_0();
        v88(v87);

        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_65_1();

        __asm { BRAA            X1, X16 }
      }

      v21 = OUTLINED_FUNCTION_85_1();
      v22 = (*(v0[50] + 32))(v0[51], v0[49], v0[46], v21);
      OUTLINED_FUNCTION_61_2(v22, v23, v24, v25, v26, v27, v28, v29, v91, v96, v100, v104, v108, v112, v116, v120, v124);
      OUTLINED_FUNCTION_9_9();
      sub_237CE1A50();
      OUTLINED_FUNCTION_51_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
      v30 = OUTLINED_FUNCTION_28_5();
      *(v30 + 16) = v133;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
      *(v30 + 56) = v31;
      v32 = sub_237CE3364();
      *(v30 + 32) = 0;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 64) = v32;
      *(v30 + 72) = 0;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_2();
      v117 = v33;
      sub_237EF7FA0();

      v34 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_68_1(v34, v35, v36, v37, v38, v39, v40, v41, v92, v97, v101, v105, v109, v113, v117, v121, v125, v128, v42);
      if (!v51)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_21_9(v43, v44, v45, v46, v47, v48, v49, v50);

      v52 = *(v17 + 8);
      v53 = OUTLINED_FUNCTION_42_2();
      v52(v53);
      OUTLINED_FUNCTION_63_1();
      v54 = *(v98 + 36);
      v55 = OUTLINED_FUNCTION_28_5();
      OUTLINED_FUNCTION_35_5(v55, v56, v57, v58, v59, v60, v61, v62, v93, v98, v102, v106, v110, v114, v118, v122, v126, v129, v132, *(&v132 + 1), v133);

      v63 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_49_3(v63, v64, v65, v66, v67, v68, v69, v70, v94, v99, v103, v107, v111, v115, v119, v123, v127, v130, v71);
      if (!v51)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_27_7(v72, v73, v74, v75, v76, v77, v78, v79, v95);

      (v52)(v54, v32);
      OUTLINED_FUNCTION_76_1();
      (*(v30 + 8))(v124, v116);
      v17 = v10 + 1;
      v18 = v0[69];
    }

    if (v0[65] >= 1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_237CE26D8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237CE27D4()
{
  if (v0[70] < v0[65])
  {
    goto LABEL_2;
  }

  v6 = 0;
  v7 = v0[72];
  v122 = xmmword_237F03530;
  v123 = xmmword_237F04760;
  while (1)
  {
    v0[70] = v6;
    if (v6 == v0[69])
    {
      if (v0[65] >= 1)
      {
        goto LABEL_16;
      }

      goto LABEL_2;
    }

    v8 = v0[49];
    v9 = v0[46];
    swift_getAssociatedConformanceWitness();
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      (*(v0[48] + 8))(v0[49], v0[47]);
      if (v6)
      {
        v69 = v0[57];
        OUTLINED_FUNCTION_0_18();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_60_2();
        OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_37_5();
        sub_237EF7F30();
        v70 = *(v69 + 40);
        OUTLINED_FUNCTION_47_1();
        v70();
        OUTLINED_FUNCTION_52_2();
        OUTLINED_FUNCTION_37_5();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_47_1();
        v70();
LABEL_16:
        OUTLINED_FUNCTION_13_10();
        v71 = swift_task_alloc();
        v0[71] = v71;
        *v71 = v0;
        OUTLINED_FUNCTION_15_14();
        OUTLINED_FUNCTION_65_1();

        __asm { BRAA            X1, X16 }
      }

LABEL_2:
      v2 = OUTLINED_FUNCTION_25_7();
      v3(v2);
      v4 = OUTLINED_FUNCTION_31_0();
      v5(v4);

      OUTLINED_FUNCTION_10_3();
      goto LABEL_20;
    }

    v10 = OUTLINED_FUNCTION_85_1();
    v11 = (*(v0[50] + 32))(v0[51], v0[49], v0[46], v10);
    OUTLINED_FUNCTION_61_2(v11, v12, v13, v14, v15, v16, v17, v18, v82, v87, v91, v95, v99, v103, v107, v111, v115);
    sub_237CE1A50();
    if (v7)
    {
      v74 = OUTLINED_FUNCTION_75_1();
      v75(v74);
      v76 = OUTLINED_FUNCTION_31_0();
      v77(v76);
      OUTLINED_FUNCTION_19_11();
      v78 = OUTLINED_FUNCTION_96_0();
      v79(v78);

      OUTLINED_FUNCTION_3_0();
LABEL_20:
      OUTLINED_FUNCTION_65_1();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_51_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
    v19 = OUTLINED_FUNCTION_28_5();
    *(v19 + 16) = v123;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
    *(v19 + 56) = v20;
    v21 = sub_237CE3364();
    *(v19 + 32) = 0;
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 64) = v21;
    *(v19 + 72) = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_2();
    v108 = v22;
    sub_237EF7FA0();

    v23 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_68_1(v23, v24, v25, v26, v27, v28, v29, v30, v83, v88, v92, v96, v100, v104, v108, v112, v116, v119, v31);
    if (!v40)
    {
      break;
    }

    OUTLINED_FUNCTION_21_9(v32, v33, v34, v35, v36, v37, v38, v39);

    v41 = *(v6 + 8);
    v42 = OUTLINED_FUNCTION_42_2();
    v41(v42);
    OUTLINED_FUNCTION_63_1();
    v43 = *(v89 + 36);
    v44 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_35_5(v44, v45, v46, v47, v48, v49, v50, v51, v84, v89, v93, v97, v101, v105, v109, v113, v117, v120, v122, *(&v122 + 1), v123);

    v52 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_49_3(v52, v53, v54, v55, v56, v57, v58, v59, v85, v90, v94, v98, v102, v106, v110, v114, v118, v121, v60);
    if (!v40)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_27_7(v61, v62, v63, v64, v65, v66, v67, v68, v86);

    (v41)(v43, v21);
    OUTLINED_FUNCTION_76_1();
    (*(v19 + 8))(v115, v107);
    v7 = 0;
    v6 = v1 + 1;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_237CE2C5C()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  v1 = v0[62];
  OUTLINED_FUNCTION_19_11();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_237CE2D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v11;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  v8[16] = *(a5 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237CE2E28, 0, 0);
}

uint64_t sub_237CE2E28()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_16_13();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  OUTLINED_FUNCTION_41_3();
  type metadata accessor for MultivariateLinearRegressor();
  *v1 = v0;
  OUTLINED_FUNCTION_70_1();

  return MultivariateLinearRegressor.update(_:with:)();
}

uint64_t sub_237CE2ED8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE2FD4()
{
  OUTLINED_FUNCTION_39_0();
  (*(v0[16] + 16))(v0[17], v0[18], v0[13]);
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  sub_237EF8A20();
  v1 = OUTLINED_FUNCTION_44_2();
  v2(v1);

  OUTLINED_FUNCTION_10_3();

  return v3();
}

uint64_t sub_237CE3098()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CE30FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return LinearTimeSeriesForecaster.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237CE31DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return LinearTimeSeriesForecaster.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

unint64_t sub_237CE32D8()
{
  result = qword_27DEAF800;
  if (!qword_27DEAF800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
    sub_237C85170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF800);
  }

  return result;
}

unint64_t sub_237CE3364()
{
  result = qword_27DEAF808;
  if (!qword_27DEAF808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF808);
  }

  return result;
}

uint64_t sub_237CE33C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;
  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_45();

  return sub_237CE1BA0(v2, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_237CE3484()
{
  result = qword_27DEAF810[0];
  if (!qword_27DEAF810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAF810);
  }

  return result;
}

uint64_t sub_237CE34D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;
  v2 = OUTLINED_FUNCTION_39_4();

  return sub_237CE2D54(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_237CE3620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CE3664(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CE3684(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
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

  *(result + 121) = v3;
  return result;
}

void OUTLINED_FUNCTION_3_26(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = a2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 6;
}

void OUTLINED_FUNCTION_6_19(char a1@<W8>)
{
  *(v1 + 80) = a1;
  *(v1 + 81) = *(v1 + 137);
  *(v1 + 84) = *(v1 + 140);
}

void OUTLINED_FUNCTION_11_15(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001ALL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
}

float OUTLINED_FUNCTION_16_13()
{
  v1 = *(v0 + 80);
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v0 + 16) = *v1;
  *(v0 + 32) = result;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v8[62];
  v10 = v8[41];
  *(a1 + 32) = v8[67];

  return MEMORY[0x282111820](a1, v10, a3, a4, a5, a6, a7, a8, v12);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 328);
  *(a1 + 32) = *(v9 + 544);

  return MEMORY[0x282111820](a1, v11, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_getWitnessTable();
}

__n128 *OUTLINED_FUNCTION_32_6(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "training_loss");
  result[2].n128_u16[7] = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(a1 + 16) = a21;
  *(a1 + 56) = v21;
  *(a1 + 64) = v22;
  *(a1 + 32) = 0;
  *(a1 + 96) = v21;
  *(a1 + 104) = v22;
  *(a1 + 72) = 0;

  return sub_237EF7FA0();
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_45_2()
{
}

__n128 OUTLINED_FUNCTION_49_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_237EF7FC0();
}

uint64_t OUTLINED_FUNCTION_56_2()
{
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return sub_237EF7FC0();
}

void *OUTLINED_FUNCTION_61_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *(v18 + 16) = a17;
  *(v18 + 32) = v17;

  return memcpy((v18 + 40), (v18 + 144), 0x61uLL);
}

void *OUTLINED_FUNCTION_62_1@<X0>(_OWORD *a1@<X8>)
{
  v1[1] = *a1;

  return memcpy(v1 + 2, v1 + 9, 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_237EF7EA0();
}

unint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_237C84150();
}

__n128 OUTLINED_FUNCTION_68_1(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return sub_237EF7EA0();
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{
  *(v1 - 96) = a1;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_79_1@<X0>(_OWORD *a1@<X8>)
{
  *a1 = *v1;

  return memcpy((v2 + 144), v1 + 1, 0x69uLL);
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_87_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  a1[1] = a17;
  return result;
}

void OUTLINED_FUNCTION_92_0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_101_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 128) = a1;
  *(v1 + 136) = *(v1 + 832);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_102@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 128) = a1;
  *(v1 + 136) = *(v1 + 736);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_237EF8190();
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_237EF7F30();
}

uint64_t OUTLINED_FUNCTION_107()
{

  return swift_allocObject();
}

uint64_t sub_237CE419C()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

uint64_t VideoReader.CameraConfiguration.Resolution.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

void VideoReader.CameraConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 2;
  *(a1 + 8) = 0x403E000000000000;
}

_BYTE *VideoReader.CameraConfiguration.init(position:pixelFormat:resolution:frameRate:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *a2;
  v6 = *a3;
  *a4 = *result;
  *(a4 + 1) = v5;
  *(a4 + 2) = v6;
  *(a4 + 8) = a5;
  return result;
}

unint64_t sub_237CE4380()
{
  result = qword_27DEAF898;
  if (!qword_27DEAF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF898);
  }

  return result;
}

unint64_t sub_237CE43D8()
{
  result = qword_27DEAF8A0;
  if (!qword_27DEAF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8A0);
  }

  return result;
}

unint64_t sub_237CE4430()
{
  result = qword_27DEAF8A8;
  if (!qword_27DEAF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8A8);
  }

  return result;
}

uint64_t _s19CameraConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
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

uint64_t _s19CameraConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_237CE4518(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s19CameraConfigurationV10ResolutionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t EstimatorEncodingError.errorDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t EstimatorEncodingError.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t static EstimatorEncodingError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_237EF9D40();
  }
}

unint64_t sub_237CE478C()
{
  result = qword_27DEAF8B0;
  if (!qword_27DEAF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8B0);
  }

  return result;
}

uint64_t TemporalSegmentIdentifier.init(source:range:timescale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TemporalSegmentIdentifier.source.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t TemporalSegmentIdentifier.source.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TemporalSegmentIdentifier.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

void TemporalSegmentIdentifier.rangeInSeconds.getter()
{
  OUTLINED_FUNCTION_3_27();
  if (!v1 & v0)
  {
    __break(1u);
  }
}

void TemporalSegmentIdentifier.durationInSeconds.getter()
{
  OUTLINED_FUNCTION_3_27();
  if (!v1 & v0)
  {
    __break(1u);
  }
}

BOOL static TemporalSegmentIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6 || v4 != v5)
    {
      return 0;
    }

    return v3 == v7;
  }

  v9 = sub_237EF9D40();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v4 == v5)
  {
    return v3 == v7;
  }

  return result;
}

uint64_t TemporalSegmentIdentifier.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_237EF8610();
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  return MEMORY[0x2383E2210](v3);
}

uint64_t TemporalSegmentIdentifier.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_237EFA120();
  sub_237EF8610();
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  return sub_237EFA170();
}

uint64_t sub_237CE4ABC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_237EFA120();
  sub_237EF8610();
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  return sub_237EFA170();
}

uint64_t TemporalSegmentIdentifier.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF8B8);
  OUTLINED_FUNCTION_1_26();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = v1[2];
  v13 = v1[3];
  v14 = v9;
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CE4D34();
  sub_237EFA1B0();
  LOBYTE(v16) = 0;
  v10 = v15;
  sub_237EF9A10();
  if (!v10)
  {
    v16 = v14;
    v17 = v13;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
    sub_237CE4FAC(&qword_27DEAF8C8);
    sub_237EF9A70();
    LOBYTE(v16) = 2;
    sub_237EF9A50();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_237CE4D34()
{
  result = qword_27DEAF8C0;
  if (!qword_27DEAF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8C0);
  }

  return result;
}

uint64_t TemporalSegmentIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF8D0);
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CE4D34();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_2_27();
  v6 = sub_237EF9910();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  sub_237CE4FAC(&qword_27DEAF8D8);
  sub_237EF9970();
  OUTLINED_FUNCTION_2_27();
  v10 = sub_237EF9950();
  v11 = OUTLINED_FUNCTION_0_20();
  v12(v11);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v10;
  sub_237EF8260();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237CE4FAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEADDA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237CE501C()
{
  result = qword_27DEAF8E0;
  if (!qword_27DEAF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8E0);
  }

  return result;
}

uint64_t sub_237CE5070()
{
  v0 = sub_237EF9890();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_237CE50BC(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 0x6C616373656D6974;
}

uint64_t sub_237CE5134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237CE5070();
  *a1 = result;
  return result;
}

uint64_t sub_237CE5164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237CE50BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237CE5198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237CE5070();
  *a1 = result;
  return result;
}

uint64_t sub_237CE51CC(uint64_t a1)
{
  v2 = sub_237CE4D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CE5208(uint64_t a1)
{
  v2 = sub_237CE4D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CE5274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_237CE52B4(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TemporalSegmentIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237CE53EC()
{
  result = qword_27DEAF8E8;
  if (!qword_27DEAF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8E8);
  }

  return result;
}

unint64_t sub_237CE5444()
{
  result = qword_27DEAF8F0;
  if (!qword_27DEAF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8F0);
  }

  return result;
}

unint64_t sub_237CE549C()
{
  result = qword_27DEAF8F8;
  if (!qword_27DEAF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF8F8);
  }

  return result;
}

uint64_t sub_237CE5550()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  (*(*(v4 - 8) + 32))(v2, v5);
  v6 = type metadata accessor for ComposedUpdatableSupervisedEstimator();
  return (*(*(v0 - 8) + 32))(v3 + *(v6 + 52), v1, v0);
}

uint64_t sub_237CE560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  UpdatableEstimatorToSupervisedAdaptor.init(_:)(a1, a4, AssociatedTypeWitness, a6, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableSupervisedEstimator();
  OUTLINED_FUNCTION_61_3();
  return v15(v11, v12, v13, v14);
}

uint64_t sub_237CE5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v9 = OUTLINED_FUNCTION_39_5();
  v10 = OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for UpdatableEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  type metadata accessor for ComposedUpdatableSupervisedEstimator();
  return UpdatableEstimatorToSupervisedAdaptor.init(_:)(a2, a4, v9, a5, v10);
}

void sub_237CE5844()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = *(v0 + 40);
  v16 = *(v2 + 8);
  v17 = v3;
  v15 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v14 - v12;
  (*(v8 + 16))(v9, v8);
  (*(v2 + 16))(v15, v2);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v13, v7, v10, AssociatedTypeWitness, v17);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CE59EC()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v2;
  v1[12] = v5;
  v1[9] = v6;
  v1[10] = v7;
  v1[7] = v8;
  v1[8] = v9;
  v10 = *(v2 + 32);
  v1[15] = v10;
  v1[16] = *(v10 + 8);
  v1[17] = *(v2 + 16);
  OUTLINED_FUNCTION_43_4();
  swift_getAssociatedTypeWitness();
  v1[18] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_32_4();
  v11 = sub_237EF8A60();
  v1[19] = v11;
  OUTLINED_FUNCTION_43_4();
  v1[20] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52_3();
  v12 = sub_237EF9640();
  v1[21] = v12;
  v13 = OUTLINED_FUNCTION_10_20();
  v1[22] = v13;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  v1[23] = WitnessTable;
  v1[2] = v11;
  v1[3] = v12;
  v1[4] = v13;
  v1[5] = WitnessTable;
  v1[24] = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  v1[25] = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_3();
  v15 = sub_237EF9340();
  v1[26] = v15;
  OUTLINED_FUNCTION_6_1(v15);
  v1[27] = v16;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[29] = v17;
  v1[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_4();
  v1[31] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_56_3();
  v18 = sub_237EF9640();
  v1[32] = v18;
  OUTLINED_FUNCTION_6_1(v18);
  v1[33] = v19;
  v1[34] = OUTLINED_FUNCTION_27_0();
  v20 = *(v3 + 40);
  v1[35] = v20;
  v1[36] = *(v20 + 8);
  v1[37] = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[38] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[39] = v22;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v1[43] = v23;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = *(v12 - 8);
  v1[47] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v24 = sub_237EF9340();
  v1[48] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v1[49] = v25;
  v1[50] = OUTLINED_FUNCTION_27_0();
  v1[51] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_0();
  v26 = sub_237EF9640();
  v1[52] = v26;
  OUTLINED_FUNCTION_6_1(v26);
  v1[53] = v27;
  v1[54] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

void sub_237CE5E7C()
{
  v27 = v0[49];
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[17];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  MEMORY[0x2383E08A0](v6, v5);
  v7 = swift_task_alloc();
  *v7 = v3;
  v7[1] = v1;
  v25 = v1;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v2;
  v7[5] = v5;
  v8 = v2;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v1;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v8;
  v10[7] = v5;
  v11 = v8;
  v12 = v5;
  v10[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v26 = *(v27 + 8);
  v13 = OUTLINED_FUNCTION_31_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_64_1();
  MEMORY[0x2383E08A0](v15);
  v16 = swift_task_alloc();
  v17 = v4;
  *v16 = v3;
  v16[1] = v25;
  v16[2] = v6;
  v16[3] = v4;
  v16[4] = v11;
  v16[5] = v12;
  v18 = v12;
  v19 = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = v25;
  v20[4] = v6;
  v20[5] = v17;
  v20[6] = v11;
  v20[7] = v18;
  v20[8] = v19;
  sub_237EF9860();

  v21 = OUTLINED_FUNCTION_31_0();
  v26(v21);
  OUTLINED_FUNCTION_15_0();
  v22 = swift_task_alloc();
  v0[55] = v22;
  *v22 = v0;
  v22[1] = sub_237CE6190;
  OUTLINED_FUNCTION_68_2();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CE6190()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v18 = v16[56];
  sub_237EF8B90();
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_48_3();
    v20(v19);
    OUTLINED_FUNCTION_38_4();
    v45 = v22;
    v46 = v21;
    v47 = v16[30];
    v48 = v16[28];
    (*(v23 + 8))(v17, v16[21]);
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v45, v46, v47, v48, a13, a14, a15, a16);
  }

  else
  {
    v35 = swift_task_alloc();
    v16[57] = v35;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_46_2();
    *v35 = v36;
    v35[1] = sub_237CE6428;
    OUTLINED_FUNCTION_49_0();

    return Transformer.applied<A>(to:eventHandler:)(v37, v38, v39, v40, v41, v42, v43);
  }
}

uint64_t sub_237CE6428()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 464) = v4;
  *(v2 + 472) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237CE6528()
{
  v2 = v0[59];
  sub_237EF8B90();
  if (v2)
  {

    v3 = OUTLINED_FUNCTION_31_0();
    v4(v3);
    OUTLINED_FUNCTION_38_4();
    (*(v5 + 8))(v1, v0[21]);
    v6 = OUTLINED_FUNCTION_31_0();
    v7(v6);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  v25 = v0[37];
  v26 = v0[35];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[25];
  v13 = v0[24];
  v14 = v0[17];
  v24 = v0[15];
  v15 = v0[12];
  v16 = v0[13];
  v0[6] = v0[58];
  sub_237EFA000();

  MEMORY[0x2383E08A0](v13, v12);
  (*(v10 + 8))(v11, v13);
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v25;
  v17[4] = v15;
  v17[5] = v24;
  v17[6] = v26;
  v17[7] = v16;
  OUTLINED_FUNCTION_70();
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v25;
  v18[4] = v15;
  v18[5] = v24;
  v18[6] = v26;
  v18[7] = v16;
  v18[8] = sub_237CEC018;
  v18[9] = v17;
  swift_getWitnessTable();
  sub_237EF9860();

  v19 = OUTLINED_FUNCTION_31_0();
  v20(v19);
  OUTLINED_FUNCTION_15_0();
  v21 = swift_task_alloc();
  v0[60] = v21;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  *v21 = v0;
  v21[1] = sub_237CE68CC;
  OUTLINED_FUNCTION_68_2();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CE68CC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 488) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237CE6A2C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[43];
  v5 = v0[44];
  v6 = v0[42];
  v12 = v0[45];
  v13 = v0[41];
  v7 = v0[39];
  v8 = v0[40];
  v9 = v0[38];
  v14 = v0[7];
  (*(v0[46] + 8))();
  (*(v2 + 8))(v1, v3);
  (*(v4 + 32))(v5, v12, v6);
  (*(v7 + 32))(v8, v13, v9);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v5, v8, v6, v9, v14);

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_237CE6BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_8_21();
  v17(v16);
  v18 = OUTLINED_FUNCTION_13_6();
  v19(v18);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237CE6CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_48_3();
  v17(v16);
  v18 = OUTLINED_FUNCTION_8_21();
  v19(v18);
  v20 = OUTLINED_FUNCTION_13_6();
  v21(v20);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237CE6DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_48_3();
  v17(v16);
  v18 = OUTLINED_FUNCTION_8_21();
  v19(v18);
  v20 = OUTLINED_FUNCTION_13_6();
  v21(v20);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237CE6E88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237CE6F88()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[11] = v7;
  v1[12] = v8;
  v1[19] = *(v3 + 32);
  v1[20] = *(v3 + 16);
  v1[21] = OUTLINED_FUNCTION_69_2();
  v1[22] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_32_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_4();
  v9 = sub_237EF8A60();
  v1[23] = v9;
  v1[24] = OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_52_3();
  v10 = sub_237EF9640();
  v1[25] = v10;
  v11 = OUTLINED_FUNCTION_10_20();
  v1[26] = v11;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  v1[27] = WitnessTable;
  v1[2] = v9;
  v1[3] = v10;
  v1[4] = v11;
  v1[5] = WitnessTable;
  v1[28] = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  v1[29] = swift_getWitnessTable();
  v13 = sub_237EF9340();
  v1[30] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v1[31] = v14;
  v1[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[33] = v15;
  v1[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_4();
  v1[35] = type metadata accessor for AnnotatedFeature();
  v16 = sub_237EF9640();
  v1[36] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v1[37] = v17;
  v1[38] = OUTLINED_FUNCTION_27_0();
  v1[39] = *(v10 - 8);
  v1[40] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v18 = sub_237EF9340();
  v1[41] = v18;
  OUTLINED_FUNCTION_6_1(v18);
  v1[42] = v19;
  v1[43] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_4();
  v1[44] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_0();
  v20 = sub_237EF9640();
  v1[45] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v1[46] = v21;
  v1[47] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_237CE730C()
{
  v1 = v0[43];
  v26 = v0[41];
  v28 = v0[42];
  v2 = v0[20];
  v30 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  MEMORY[0x2383E08A0](v4, v3);
  v6 = swift_task_alloc();
  *v6 = v2;
  v7 = *(v5 + 24);
  v0[48] = v7;
  v6[1] = v7;
  v6[2] = v4;
  v6[3] = v30;
  v8 = *(v5 + 40);
  v0[49] = v8;
  v6[4] = v8;
  v6[5] = v3;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v7;
  v10[4] = v4;
  v10[5] = v30;
  v10[6] = v8;
  v10[7] = v3;
  v10[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v27 = *(v28 + 8);
  v25 = v1;
  v27(v1, v26);
  MEMORY[0x2383E08A0](v4, v3);
  v11 = swift_task_alloc();
  *v11 = v2;
  v11[1] = v7;
  v11[2] = v4;
  v11[3] = v30;
  v11[4] = v8;
  v11[5] = v3;
  v12 = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = v7;
  v13[4] = v4;
  v13[5] = v30;
  v13[6] = v8;
  v13[7] = v3;
  v13[8] = v12;
  sub_237EF9860();

  v27(v25, v26);
  OUTLINED_FUNCTION_15_0();
  v29 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[50] = v15;
  *v15 = v0;
  v15[1] = sub_237CE7634;
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v23 = v0[11];

  return v29(v23, v22, v20, v21, v19, v18, v16, v17);
}

uint64_t sub_237CE7634()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[51];
  sub_237EF8B90();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_3_28();
    v15(v14);
    v16 = OUTLINED_FUNCTION_31_0();
    v17(v16);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = swift_task_alloc();
    v12[52] = v27;
    OUTLINED_FUNCTION_43_0();
    v12[53] = swift_checkMetadataState();
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    *v27 = v12;
    v27[1] = sub_237CE78A4;
    OUTLINED_FUNCTION_45();

    return Transformer.applied<A>(to:eventHandler:)(v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_237CE78A4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v4;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237CE79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = v26[55];
  sub_237EF8B90();
  if (v27)
  {

    v28 = OUTLINED_FUNCTION_3_28();
    v29(v28);
    v30 = OUTLINED_FUNCTION_31_0();
    v31(v30);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_65_1();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v72 = v26[53];
    v78 = v26[49];
    v74 = v26[36];
    v68 = v26[38];
    v69 = v26[35];
    v41 = v26[33];
    v42 = v26[34];
    v43 = v26[32];
    v44 = v26[29];
    v66 = v26[48];
    v67 = v26[30];
    v45 = v26[28];
    v70 = v26[31];
    v71 = v26[22];
    v47 = v26[19];
    v46 = v26[20];
    v77 = v26[18];
    v65 = v26[17];
    v48 = v26[16];
    v75 = v26[11];
    v76 = *(v26[15] + 52);
    v26[10] = v26[54];
    sub_237EFA000();

    MEMORY[0x2383E08A0](v45, v44);
    (*(v41 + 8))(v42, v45);
    v49 = swift_allocObject();
    v49[2] = v46;
    v49[3] = v66;
    v49[4] = v48;
    v49[5] = v47;
    v49[6] = v78;
    v49[7] = v65;
    OUTLINED_FUNCTION_70();
    v50 = swift_allocObject();
    v50[2] = v46;
    v50[3] = v66;
    v50[4] = v48;
    v50[5] = v47;
    v50[6] = v78;
    v50[7] = v65;
    v50[8] = sub_237CEC07C;
    v50[9] = v49;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v70 + 8))(v43, v67);
    OUTLINED_FUNCTION_62_2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26[6] = v72;
    v26[7] = AssociatedTypeWitness;
    v26[8] = v71;
    v26[9] = AssociatedConformanceWitness;
    type metadata accessor for ComposedTransformer();
    v79 = v78 + 24;
    OUTLINED_FUNCTION_15_0();
    v73 = v53 + *v53;
    v54 = swift_task_alloc();
    v26[56] = v54;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    *v54 = v26;
    v54[1] = sub_237CE7D64;
    OUTLINED_FUNCTION_65_1();

    return v63(v55, v56, v57, v58, v59, v60, v61, v62, a9, v65, v66, v67, v68, v69, v70, v71, v73, v74, v75, v76, v77, v79, a23, a24, a25, a26);
  }
}

uint64_t sub_237CE7D64()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237CE7EC4()
{
  (*(v0[39] + 8))(v0[40], v0[25]);
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237CE7FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_3_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_11_16();
  v15(v14);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_237CE8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_3_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_11_16();
  v15(v14);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_237CE8114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v12 = OUTLINED_FUNCTION_3_28();
  v13(v12);
  v14 = OUTLINED_FUNCTION_11_16();
  v15(v14);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

void sub_237CE81C8()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_60_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_40_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = OUTLINED_FUNCTION_25_8(v4);
  v6(v5, v0, AssociatedTypeWitness);
  OUTLINED_FUNCTION_62_2();
  v7();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CE8340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v46;
  v9[22] = v8;
  v9[19] = a8;
  v9[20] = v45;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v10 = a6[4];
  v9[23] = v10;
  v9[24] = *(v10 + 8);
  v9[25] = a6[2];
  OUTLINED_FUNCTION_52_3();
  swift_getAssociatedTypeWitness();
  v9[26] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_237EF8A60();
  v9[27] = v11;
  OUTLINED_FUNCTION_52_3();
  v9[28] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_4();
  v12 = sub_237EF9640();
  v9[29] = v12;
  v13 = OUTLINED_FUNCTION_10_20();
  v9[30] = v13;
  WitnessTable = swift_getWitnessTable();
  v9[31] = WitnessTable;
  v9[2] = v11;
  v9[3] = v12;
  v9[4] = v13;
  v9[5] = WitnessTable;
  v9[32] = sub_237EF9380();
  v9[33] = swift_getWitnessTable();
  v15 = sub_237EF9340();
  v9[34] = v15;
  OUTLINED_FUNCTION_6_1(v15);
  v9[35] = v16;
  v9[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[37] = v17;
  v9[38] = OUTLINED_FUNCTION_27_0();
  v9[39] = type metadata accessor for AnnotatedFeature();
  v18 = sub_237EF9640();
  v9[40] = v18;
  OUTLINED_FUNCTION_6_1(v18);
  v9[41] = v19;
  v9[42] = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF9640();
  v9[43] = v20;
  v21 = swift_getWitnessTable();
  v9[44] = v21;
  v9[6] = v11;
  v9[7] = v20;
  v9[8] = v13;
  v9[9] = v21;
  v9[45] = sub_237EF9380();
  v9[46] = swift_getWitnessTable();
  OUTLINED_FUNCTION_61_3();
  v22 = sub_237EF9340();
  v9[47] = v22;
  OUTLINED_FUNCTION_6_1(v22);
  v9[48] = v23;
  v9[49] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[50] = v24;
  v9[51] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_62_2();
  v25 = sub_237EF9640();
  v9[52] = v25;
  OUTLINED_FUNCTION_6_1(v25);
  v9[53] = v26;
  v9[54] = OUTLINED_FUNCTION_27_0();
  v27 = a6[5];
  v9[55] = v27;
  v9[56] = *(v27 + 8);
  v9[57] = a6[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[58] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v9[59] = v29;
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  v9[62] = swift_task_alloc();
  v9[63] = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v9[64] = v30;
  v9[65] = swift_task_alloc();
  v9[66] = swift_task_alloc();
  v9[67] = *(v12 - 8);
  v9[68] = OUTLINED_FUNCTION_27_0();
  v31 = sub_237EF9340();
  v9[69] = v31;
  OUTLINED_FUNCTION_6_1(v31);
  v9[70] = v32;
  v9[71] = OUTLINED_FUNCTION_27_0();
  v9[72] = swift_getAssociatedTypeWitness();
  v33 = sub_237EF9640();
  v9[73] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v9[74] = v34;
  v9[75] = OUTLINED_FUNCTION_27_0();
  v9[76] = *(v20 - 8);
  v9[77] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_56_3();
  v35 = sub_237EF9340();
  v9[78] = v35;
  OUTLINED_FUNCTION_6_1(v35);
  v9[79] = v36;
  v9[80] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_56_3();
  v37 = sub_237EF9640();
  v9[81] = v37;
  OUTLINED_FUNCTION_6_1(v37);
  v9[82] = v38;
  v9[83] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

void sub_237CE8AA0()
{
  v28 = v0[80];
  v34 = v0[79];
  v29 = v0[78];
  v35 = v0[71];
  v36 = v0[70];
  v30 = v0[69];
  v1 = v0[57];
  v39 = v1;
  v2 = v0[55];
  v3 = v0[25];
  v37 = v3;
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[18];
  v8 = v0[20];
  MEMORY[0x2383E08A0]();
  v9 = swift_task_alloc();
  *v9 = v3;
  v9[1] = v1;
  v9[2] = v7;
  v9[3] = v6;
  v10 = v7;
  v11 = v6;
  v32 = v6;
  v33 = v2;
  v9[4] = v4;
  v9[5] = v2;
  v12 = v2;
  v9[6] = v8;
  v9[7] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v14 = swift_allocObject();
  v14[2] = v37;
  v14[3] = v1;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v4;
  v14[7] = v12;
  v14[8] = v8;
  v14[9] = v5;
  v14[10] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v27 = *(v34 + 8);
  v27(v28, v29);
  MEMORY[0x2383E08A0](v10, v8);
  v15 = swift_task_alloc();
  *v15 = v37;
  v15[1] = v1;
  v15[2] = v10;
  v15[3] = v32;
  v15[4] = v4;
  v15[5] = v33;
  v15[6] = v8;
  v15[7] = v5;
  v26 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v16 = swift_allocObject();
  v16[2] = v37;
  v16[3] = v1;
  v16[4] = v10;
  v16[5] = v32;
  v16[6] = v4;
  v16[7] = v33;
  v16[8] = v8;
  v16[9] = v5;
  v16[10] = v26;
  sub_237EF9860();

  v27(v28, v29);
  MEMORY[0x2383E08A0](v32, v5);
  v17 = swift_task_alloc();
  *v17 = v37;
  v17[1] = v1;
  v17[2] = v10;
  v17[3] = v32;
  v17[4] = v4;
  v17[5] = v33;
  v17[6] = v8;
  v17[7] = v5;
  v18 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v19 = swift_allocObject();
  v19[2] = v37;
  v19[3] = v1;
  v19[4] = v10;
  v19[5] = v32;
  v19[6] = v4;
  v19[7] = v33;
  v19[8] = v8;
  v19[9] = v5;
  v19[10] = v18;
  swift_getWitnessTable();
  sub_237EF9860();

  v31 = *(v36 + 8);
  v31(v35, v30);
  MEMORY[0x2383E08A0](v32, v5);
  v20 = swift_task_alloc();
  *v20 = v37;
  v20[1] = v1;
  v20[2] = v10;
  v20[3] = v32;
  v20[4] = v4;
  v20[5] = v33;
  v20[6] = v8;
  v20[7] = v5;
  v21 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v22 = swift_allocObject();
  v22[2] = v37;
  v22[3] = v39;
  v22[4] = v10;
  v22[5] = v32;
  v22[6] = v4;
  v22[7] = v33;
  v22[8] = v8;
  v22[9] = v5;
  v22[10] = v21;
  sub_237EF9860();

  v23 = OUTLINED_FUNCTION_31_0();
  (v31)(v23);
  OUTLINED_FUNCTION_15_0();
  v40 = v24 + *v24;
  v25 = swift_task_alloc();
  v0[84] = v25;
  *v25 = v0;
  v25[1] = sub_237CE905C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CE905C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 680) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CE9158()
{
  v4 = v1[85];
  sub_237EF8B90();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_26_8();
    v6(v5);
    OUTLINED_FUNCTION_23_9();
    v27 = v7;
    v8 = v1[77];
    v9 = v1[76];
    v10 = OUTLINED_FUNCTION_14_16();
    v11(v10);
    v12 = OUTLINED_FUNCTION_64_1();
    v13(v12);
    (*(v9 + 8))(v8, v2);
    (*(v0 + 8))(v3, v27);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    __asm { BRAA            X1, X16 }
  }

  v16 = swift_task_alloc();
  v1[86] = v16;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v16 = v17;
  v16[1] = sub_237CE935C;
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_50_3();

  return Transformer.applied<A>(to:eventHandler:)(v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_237CE935C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 696) = v4;
  *(v2 + 704) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237CE9460()
{
  v3 = v0[88];
  sub_237EF8B90();
  if (v3)
  {
    v4 = v0[66];

    v5 = OUTLINED_FUNCTION_31_0();
    v6(v5);
    OUTLINED_FUNCTION_23_9();
    v27 = v7;
    v8 = v0[77];
    v9 = v0[76];
    v10 = OUTLINED_FUNCTION_14_16();
    v11(v10);
    v12 = OUTLINED_FUNCTION_64_1();
    v13(v12);
    (*(v9 + 8))(v8, v1);
    (*(v4 + 8))(v2, v27);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    __asm { BRAA            X1, X16 }
  }

  v16 = swift_task_alloc();
  v0[89] = v16;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v16 = v17;
  v16[1] = sub_237CE9678;
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_50_3();

  return Transformer.applied<A>(to:eventHandler:)(v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_237CE9678()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 720) = v5;
  *(v3 + 728) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237CE9788()
{
  v2 = v0[91];
  sub_237EF8B90();
  if (!v2)
  {
    v35 = v0[90];
    v42 = v0[57];
    v43 = v0[55];
    v15 = v0[51];
    v16 = v0[50];
    v28 = v0[49];
    v33 = v0[48];
    v30 = v0[47];
    v17 = v0[45];
    v29 = v0[46];
    v34 = v0[38];
    v36 = v0[37];
    v44 = v0[36];
    v39 = v0[35];
    v41 = v0[18];
    v0[10] = v0[87];
    v38 = v0[34];
    v32 = v0[33];
    v31 = v0[32];
    v18 = v0[25];
    v19 = v0[23];
    v20 = v0[20];
    v40 = v0[21];
    v21 = v0[19];
    sub_237EFA000();

    MEMORY[0x2383E08A0](v17, v29);
    (*(v16 + 8))(v15, v17);
    OUTLINED_FUNCTION_70();
    v22 = swift_allocObject();
    v22[2] = v18;
    v22[3] = v42;
    v22[4] = v41;
    v22[5] = v21;
    v22[6] = v19;
    v22[7] = v43;
    v22[8] = v20;
    v22[9] = v40;
    v23 = swift_allocObject();
    v23[2] = v18;
    v23[3] = v42;
    v23[4] = v41;
    v23[5] = v21;
    v23[6] = v19;
    v23[7] = v43;
    v23[8] = v20;
    v23[9] = v40;
    v23[10] = sub_237CEBF9C;
    v23[11] = v22;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v33 + 8))(v28, v30);
    v0[11] = v35;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v31, v32);
    (*(v36 + 8))(v34, v31);
    OUTLINED_FUNCTION_70();
    v24 = swift_allocObject();
    v24[2] = v18;
    v24[3] = v42;
    v24[4] = v41;
    v24[5] = v21;
    v24[6] = v19;
    v24[7] = v43;
    v24[8] = v20;
    v24[9] = v40;
    v25 = swift_allocObject();
    v25[2] = v18;
    v25[3] = v42;
    v25[4] = v41;
    v25[5] = v21;
    v25[6] = v19;
    v25[7] = v43;
    v25[8] = v20;
    v25[9] = v40;
    v25[10] = sub_237CEC078;
    v25[11] = v24;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v39 + 8))(v44, v38);
    OUTLINED_FUNCTION_15_0();
    v45 = v26 + *v26;
    v27 = swift_task_alloc();
    v0[92] = v27;
    swift_getWitnessTable();
    swift_getWitnessTable();
    *v27 = v0;
    v27[1] = sub_237CE9E24;

    __asm { BRAA            X8, X16 }
  }

  v3 = v0[90];
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[64];

  (*(v6 + 8))(v4, v5);
  OUTLINED_FUNCTION_23_9();
  v37 = v7;
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[43];
  (*(v0[67] + 8))(v0[68], v0[29]);
  v11 = OUTLINED_FUNCTION_64_1();
  v12(v11);
  (*(v9 + 8))(v8, v10);
  (*(v3 + 8))(v1, v37);

  OUTLINED_FUNCTION_3_0();

  return v13();
}

uint64_t sub_237CE9E24()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 744) = v0;

  v5 = v2[54];
  v6 = v2[53];
  v7 = v2[52];
  (*(v2[41] + 8))(v2[42], v2[40]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237CE9FE0()
{
  v1 = v0[82];
  v15 = v0[81];
  v16 = v0[83];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v13 = v0[73];
  v21 = v0[66];
  v6 = v0[64];
  v17 = v0[63];
  v18 = v0[65];
  v14 = v0[62];
  v22 = v0[61];
  v7 = v0[59];
  v19 = v0[60];
  v8 = v0[58];
  v9 = v0[43];
  v20 = v0[12];
  (*(v0[67] + 8))();
  (*(v5 + 8))(v4, v13);
  (*(v3 + 8))(v2, v9);
  (*(v1 + 8))(v16, v15);
  v10 = *(v7 + 32);
  v10(v14, v22, v8);
  (*(v6 + 32))(v18, v21, v17);
  v10(v19, v14, v8);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v18, v19, v17, v8, v20);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237CEA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_2_28(*(v26 + 680));
  v28(v27);
  v29 = OUTLINED_FUNCTION_24_6();
  v30(v29);
  v31 = OUTLINED_FUNCTION_11_16();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_8();
  v34(v33);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237CEA3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_26_8();
  v28(v27);
  v29 = OUTLINED_FUNCTION_2_28(*(v26 + 704));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237CEA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_26_8();
  v28(v27);
  v29 = OUTLINED_FUNCTION_2_28(*(v26 + 728));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237CEA61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_26_8();
  v28(v27);
  v29 = OUTLINED_FUNCTION_2_28(*(v26 + 744));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237CEA754(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void sub_237CEA854()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_60_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_40_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = OUTLINED_FUNCTION_25_8(v4);
  v6(v5, v0, AssociatedTypeWitness);
  OUTLINED_FUNCTION_62_2();
  v7();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CEA9CC(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*(a3[4] + 8) + 56))(a1, a2, a3[2], *(a3[4] + 8));
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = *(a3[5] + 8);
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTransformer();
    return (*(v8 + 56))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237CEAB3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = a2[3];
  v37 = *(a2[5] + 8);
  v39 = v5;
  OUTLINED_FUNCTION_40_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v32 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v38 = &v30 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_40_0();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v35 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  v24 = *(v13 + 64);
  v36 = a1;
  v25 = v40;
  result = v24(a1, v14, v13);
  if (!v25)
  {
    v30 = v14;
    v31 = v20;
    v40 = v15;
    v27 = AssociatedTypeWitness;
    (*(v37 + 64))(v36, v39, v37);
    v28 = v31;
    v29 = v40;
    (*(v35 + 32))(v31, v23, v40);
    (*(v32 + 32))(v10, v38, v27);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v28, v10, v29, v27, v33);
  }

  return result;
}

uint64_t sub_237CEAE20(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    OUTLINED_FUNCTION_43_4();
    swift_getAssociatedTypeWitness();
    v10 = a3[5];
    v8 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTransformer();
    return (*(v10 + 32))(a1 + *(v9 + 52), a2, v8);
  }

  return result;
}

uint64_t sub_237CEAF90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a3;
  v47 = a2[5];
  v7 = a2[3];
  v39 = *(v47 + 8);
  v48 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v42 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v45 = &v35 - v13;
  v14 = a2[4];
  v15 = *(v14 + 8);
  v16 = a2[2];
  OUTLINED_FUNCTION_56_3();
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v41 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v26 = *(v14 + 40);
  v46 = a1;
  v44 = v4;
  v27 = v49;
  result = v26(a1, v16, v14);
  if (!v27)
  {
    v36 = v22;
    v37 = v16;
    v35 = v15;
    v49 = v17;
    v29 = v41;
    v30 = v42;
    v31 = AssociatedTypeWitness;
    v32 = v45;
    (*(v47 + 40))(v46, v48);
    v33 = v36;
    v34 = v49;
    (*(v29 + 32))(v36, v25, v49);
    (*(v38 + 32))(v30, v32, v31);
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v33, v30, v34, v31, v40);
  }

  return result;
}

uint64_t sub_237CEB298()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C92CC8;

  return sub_237CE6F88();
}

uint64_t sub_237CEB3A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEC074;

  return sub_237CE59EC();
}

uint64_t sub_237CEB484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237CEC074;

  return sub_237CE8340(a1, a2, a3, a4, a5, v18, a6, a7);
}

void UpdatableSupervisedEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v22 = v1;
  v23 = v0;
  v25 = v2;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  v9 = type metadata accessor for TransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_1();
  v24 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  OUTLINED_FUNCTION_52_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_4();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v9;
  v29 = AssociatedTypeWitness;
  v30 = WitnessTable;
  v31 = AssociatedConformanceWitness;
  type metadata accessor for UpdatableEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v20 = OUTLINED_FUNCTION_25_8(v19);
  v21(v20, v23, v7);
  Transformer.adaptedAsUpdatableEstimator()(v5, v22);
  UpdatableEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v9, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
  (*(v24 + 8))(v13, v9);
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  sub_237CE5550();
  OUTLINED_FUNCTION_38_0();
}

{
  sub_237CEB974();
}

{
  sub_237CEB974();
}

{
  OUTLINED_FUNCTION_37_0();
  v26 = v2;
  v27 = v0;
  v4 = v3;
  v25 = v5;
  v29 = v6;
  v30 = v7;
  OUTLINED_FUNCTION_37_15();
  v8 = type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_1();
  v28 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_3();
  v11 = *(v4 + 8);
  OUTLINED_FUNCTION_97_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v8;
  v32 = AssociatedTypeWitness;
  v33 = WitnessTable;
  v34 = AssociatedConformanceWitness;
  v14 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_45_1();
  v16 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  v20 = OUTLINED_FUNCTION_71_2();
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v20, v21);
  TemporalTransformer.adaptedAsUpdatableEstimator()(v25, v26);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v8, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
  (*(v28 + 8))(v1, v8);
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  sub_237DF2A08(v19, v11, v16, v14, v22);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v19 = v1;
  v20 = v3;
  v5 = v4;
  v21 = v6;
  OUTLINED_FUNCTION_52_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v5;
  v23 = AssociatedTypeWitness;
  v24 = v2;
  v25 = AssociatedConformanceWitness;
  v9 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_9_24();
  v11 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v15 = OUTLINED_FUNCTION_56_0();
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v15, v16);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)(AssociatedTypeWitness, v5, AssociatedTypeWitness, v19, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  sub_237DF2A08(v14, v0, v11, v9, v17);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v12 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_18();
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v6, v2);
  (*(v10 + 16))(v0, v8, v4);
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  v14 = OUTLINED_FUNCTION_98_1();
  sub_237DF2A08(v14, v0, v12, v4, v15);
  OUTLINED_FUNCTION_38_0();
}

void sub_237CEB974()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, v3);
  (*(v9 + 16))(v13, v7, v2);
  v5(v17, v13, v3, v2, v1, v0);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CEBAE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237CEBCAC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237CEBF5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_28@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = *(v1 + 544);
  *(v2 - 88) = *(v1 + 288);
  return v3;
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_16()
{
  v2 = *(v0 + 544);
  *(v1 - 96) = *(v0 + 288);
  return v2;
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return AnnotatedFeature.init(feature:annotation:)(v4, v2, v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t ChooseRandomly.init<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11[0] = a2;
  v11[1] = a2;
  OUTLINED_FUNCTION_1_0();
  swift_getExtendedExistentialTypeMetadata();
  *a5 = sub_237EF89A0();
  v11[3] = a3;
  v11[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v11);
  a1();
  v9 = type metadata accessor for ChooseRandomly();
  sub_237CEC520(v11, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_237CEC520(uint64_t a1, uint64_t a2)
{
  sub_237C66728(a1, v12);
  swift_getExtendedExistentialTypeMetadata();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    sub_237C531B8(&v11, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = *(v5 + 64);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v6(v4, v5);
    sub_237CEC520(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v8 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v9(v7, v8);
    sub_237CEC520(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_237C66728(a1, v15);
    sub_237EF8A60();
    return sub_237EF8A20();
  }
}

uint64_t ChooseRandomly.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[21] = v2;
  v1[22] = v3;
  v1[19] = v4;
  v1[20] = v5;
  v1[17] = v6;
  v1[18] = v7;
  v1[15] = v8;
  v1[16] = v9;
  v1[23] = *v0;
  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237CEC7C4, 0, 0);
}

uint64_t sub_237CEC7C4()
{
  v1 = *(*(v0 + 160) + 16);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 184);
  *(v0 + 104) = v1;
  OUTLINED_FUNCTION_1_0();
  swift_getExtendedExistentialTypeMetadata();
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF8E10();

  if (*(v0 + 80))
  {
    sub_237C531B8((v0 + 56), v0 + 16);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v7 = *(v2 + 24) + **(v2 + 24);
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_237CECA2C;

    __asm { BRAA            X8, X16 }
  }

  (*(*(v1 - 8) + 16))(*(v0 + 120), *(v0 + 128), v1);
  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237CECA2C()
{
  OUTLINED_FUNCTION_2_0();
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_237CECB98;
  }

  else
  {
    v2 = sub_237CECB3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237CECB3C()
{
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237CECB98()
{
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237CECBF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return ChooseRandomly.applied<A>(to:generator:eventHandler:)();
}

uint64_t sub_237CECD00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CECD3C()
{
  v0 = sub_237EF8590();
  v2 = v1;
  if (v0 == sub_237EF8590() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_4_24();
  }

  return v5 & 1;
}

uint64_t sub_237CECDB4(unsigned __int8 a1, char a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x756F437373616C63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6963696666656F63;
    }

    else
    {
      v5 = 0x657A696D6974706FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000073746E65;
    }

    else
    {
      v6 = 0xEE00657461745372;
    }
  }

  else
  {
    v5 = 0x756F437373616C63;
    v6 = 0xEA0000000000746ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6963696666656F63;
    }

    else
    {
      v3 = 0x657A696D6974706FLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEC00000073746E65;
    }

    else
    {
      v2 = 0xEE00657461745372;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_237EF9D40();
  }

  return v8 & 1;
}

uint64_t sub_237CECEDC(unsigned __int8 a1, char a2)
{
  v2 = 0x656372756F73;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65676E6172;
    }

    else
    {
      v4 = 0x6C616373656D6974;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656372756F73;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65676E6172;
    }

    else
    {
      v2 = 0x6C616373656D6974;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_24();
  }

  return v8 & 1;
}

uint64_t sub_237CECFC8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657A696D6974706FLL;
  }

  else
  {
    v3 = 0x6963696666656F63;
  }

  if (v2)
  {
    v4 = 0xEC00000073746E65;
  }

  else
  {
    v4 = 0xEE00657461745372;
  }

  if (a2)
  {
    v5 = 0x657A696D6974706FLL;
  }

  else
  {
    v5 = 0x6963696666656F63;
  }

  if (a2)
  {
    v6 = 0xEE00657461745372;
  }

  else
  {
    v6 = 0xEC00000073746E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_24();
  }

  return v8 & 1;
}

uint64_t sub_237CED070(char a1, char a2)
{
  v2 = 0x79614C65736E6564;
  v3 = 0xEA00000000007265;
  if (a1)
  {
    OUTLINED_FUNCTION_16_14();
    if (v6 == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x65536D6F646E6172;
    }

    if (v6 == 1)
    {
      v9 = (v5 - 32) | 0x8000000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  else
  {
    v8 = 0x79614C65736E6564;
    v9 = 0xEA00000000007265;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_14_17();
    if (v12 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v12 == 1)
    {
      v3 = v11;
    }

    else
    {
      v3 = v10;
    }
  }

  if (v8 == v2 && v9 == v3)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_237EF9D40();
  }

  return v16 & 1;
}

uint64_t sub_237CED154(char a1, char a2)
{
  v2 = 0x73726579616CLL;
  v3 = "dropoutProbability";
  if (a1)
  {
    OUTLINED_FUNCTION_14_17();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEA00000000006465;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x73726579616CLL;
  }

  if (a2)
  {
    v10 = (v3 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0x65536D6F646E6172;
    }

    if (a2 == 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xEA00000000006465;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_24();
  }

  return v13 & 1;
}

uint64_t sub_237CED23C(unsigned __int8 a1, char a2)
{
  v2 = 0x74616F6C66;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656C62756F64;
    }

    else
    {
      v4 = 0x3233746E69;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x74616F6C66;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C62756F64;
    }

    else
    {
      v2 = 0x3233746E69;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_24();
  }

  return v8 & 1;
}

uint64_t sub_237CED318(unsigned __int8 a1, char a2)
{
  v2 = 0x6C65646F6DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = "resultColumnName";
  v6 = 0x6C65646F6DLL;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_17_13();
      v8 = v7 - 32;
      goto LABEL_6;
    case 2:
      v3 = 0x8000000237EFB330;
      OUTLINED_FUNCTION_16_14();
      v6 = v9 - 2;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_17_13();
      v8 = v10 - 32;
LABEL_6:
      v3 = v8 | 0x8000000000000000;
      break;
    case 4:
      v6 = 0x636E456C6562616CLL;
      v3 = 0xEC0000007265646FLL;
      break;
    case 5:
      v6 = 0x6F69746172657469;
      v3 = 0xEE00746E756F436ELL;
      break;
    case 6:
      v6 = 0x65646F4D65657274;
      v3 = 0xE90000000000006CLL;
      break;
    default:
      break;
  }

  v11 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_13_11();
      v13 = v12 - 32;
      goto LABEL_14;
    case 2:
      v11 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000010;
      break;
    case 3:
      OUTLINED_FUNCTION_13_11();
      v13 = v14 - 32;
LABEL_14:
      v11 = v13 | 0x8000000000000000;
      break;
    case 4:
      v2 = 0x636E456C6562616CLL;
      v11 = 0xEC0000007265646FLL;
      break;
    case 5:
      v2 = 0x6F69746172657469;
      v11 = 0xEE00746E756F436ELL;
      break;
    case 6:
      v2 = 0x65646F4D65657274;
      v11 = 0xE90000000000006CLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_4_24();
  }

  return v16 & 1;
}

uint64_t sub_237CED500(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E6F697369766572;
  }

  else
  {
    v3 = 0x53646E41706F7263;
  }

  if (v2)
  {
    v4 = 0xEC000000656C6163;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6E6F697369766572;
  }

  else
  {
    v5 = 0x53646E41706F7263;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC000000656C6163;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_24();
  }

  return v8 & 1;
}

uint64_t sub_237CED59C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702521203;
  }

  else
  {
    v3 = 0x54746E656D656C65;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1702521203;
  }

  else
  {
    v5 = 0x54746E656D656C65;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_24();
  }

  return v8 & 1;
}

uint64_t sub_237CED630(unsigned __int8 a1, char a2)
{
  v2 = 7630441;
  v3 = 0xE300000000000000;
  v4 = "doubleShapedArray";
  v5 = a1;
  v6 = 7630441;
  switch(v5)
  {
    case 1:
      v3 = 0xE700000000000000;
      v6 = 0x363174616F6C66;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v6 = 0x74616F6C66;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 0x656C62756F64;
      break;
    case 4:
      v6 = 0x6570616853746E69;
      v3 = 0xEE00796172724164;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_17_13();
      v9 = v8 - 32;
      goto LABEL_9;
    case 6:
      v6 = OUTLINED_FUNCTION_17_13();
      v9 = v10 - 32;
LABEL_9:
      v3 = v9 | 0x8000000000000000;
      break;
    case 7:
      v3 = 0x8000000237EFB410;
      OUTLINED_FUNCTION_16_14();
      v6 = v7 - 1;
      break;
    default:
      break;
  }

  v11 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v11 = 0xE700000000000000;
      v2 = 0x363174616F6C66;
      break;
    case 2:
      v11 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 3:
      v11 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 4:
      v2 = 0x6570616853746E69;
      v11 = 0xEE00796172724164;
      break;
    case 5:
      OUTLINED_FUNCTION_13_11();
      v13 = v12 - 32;
      goto LABEL_18;
    case 6:
      OUTLINED_FUNCTION_13_11();
      v13 = v14 - 32;
LABEL_18:
      v11 = v13 | 0x8000000000000000;
      break;
    case 7:
      v11 = (v4 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_4_24();
  }

  return v16 & 1;
}

uint64_t sub_237CED820(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746567726174;
  }

  else
  {
    v3 = 0x6953746567726174;
  }

  if (v2)
  {
    v4 = 0xEA0000000000657ALL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x746567726174;
  }

  else
  {
    v5 = 0x6953746567726174;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000657ALL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_24();
  }

  return v8 & 1;
}

uint64_t VideoReader.AsyncFrames.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237EF5EF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_237CED9E4()
{
  OUTLINED_FUNCTION_2_0();
  v0[40] = v1;
  v0[41] = v2;
  v3 = sub_237EF5EF0();
  v0[42] = v3;
  v0[43] = *(v3 - 8);
  v0[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237CEDAA0, 0, 0);
}

uint64_t sub_237CEDAA0()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = *(v2 + 16);
  v0[45] = v6;
  v0[46] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5, v4, v3);
  sub_237C75918(0, &qword_27DEAFA60);
  v6(v1, v4, v3);
  v7 = sub_237CEEED0(v1);
  v0[47] = v7;
  v8 = type metadata accessor for VideoReader.AsyncFrames(0);
  v0[48] = v8;
  *(v5 + *(v8 + 20)) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA68);
  v7;
  v0[49] = sub_237EF6360();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[50] = v9;
  *v9 = v10;
  v9[1] = sub_237CEDC10;
  OUTLINED_FUNCTION_15_15();

  return MEMORY[0x2821FAF00]();
}

uint64_t sub_237CEDC10()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5_1();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 408) = v1;

  OUTLINED_FUNCTION_11_17();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_2_29();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237CEDD3C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 39;
  v7 = v0 + 47;
  v6 = v0[47];
  v8 = (v1[40] + *(v7[1] + 48));
  v9 = v1[68];
  v10 = v1[67];
  *v8 = v1[66];
  v8[1] = v10;
  v8[2] = v9;
  v11 = *MEMORY[0x277CE5EA8];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_237CEDE98;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA70);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_237CEEF70;
  v1[13] = &block_descriptor_0;
  v1[14] = v12;
  [v6 loadTracksWithMediaType:v11 completionHandler:v4];

  return MEMORY[0x282200938](v3);
}

uint64_t sub_237CEDE98()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_237CEEBEC;
  }

  else
  {
    v2 = sub_237CEDFA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237CEDFA4()
{
  v1 = v0[39];
  if (sub_237D6DA5C(v1))
  {
    sub_237C85538(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x2383E1490](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }

    v3 = v2;
    v0[53] = v2;
    v4 = v0[48];
    v5 = v0[40];

    *(v5 + *(v4 + 28)) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA78);
    v3;
    v0[54] = sub_237EF6340();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[55] = v6;
    *v6 = v7;
    v6[1] = sub_237CEE1FC;
    OUTLINED_FUNCTION_15_15();

    return MEMORY[0x2821FAF00]();
  }

  else
  {
    v8 = v0[45];
    v9 = v0[42];
    v10 = v0[43];
    v11 = v0[41];

    type metadata accessor for VideoReaderError();
    sub_237CEFB48(qword_27DEAFA98, type metadata accessor for VideoReaderError);
    swift_allocError();
    v8(v12, v11, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v13 = *(v10 + 8);
    v13(v11, v9);
    v14 = v0[47];
    v13(v0[40], v0[42]);

    OUTLINED_FUNCTION_3_0();

    return v15();
  }
}

uint64_t sub_237CEE1FC()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5_1();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 448) = v1;

  OUTLINED_FUNCTION_11_17();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_2_29();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237CEE328()
{
  OUTLINED_FUNCTION_2_0();
  *(*(v0 + 320) + *(*(v0 + 384) + 36)) = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA80);
  *(v0 + 456) = sub_237EF6320();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 464) = v1;
  *v1 = v2;
  v1[1] = sub_237CEE3F4;
  OUTLINED_FUNCTION_8_22();

  return MEMORY[0x2821FAF00]();
}

uint64_t sub_237CEE3F4()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5_1();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 472) = v1;

  OUTLINED_FUNCTION_11_17();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_2_29();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237CEE520()
{
  OUTLINED_FUNCTION_2_0();
  *(*(v0 + 320) + *(*(v0 + 384) + 40)) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA88);
  *(v0 + 480) = sub_237EF6350();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 488) = v1;
  *v1 = v2;
  v1[1] = sub_237CEE5F0;
  OUTLINED_FUNCTION_8_22();

  return MEMORY[0x2821FAF00]();
}

uint64_t sub_237CEE5F0()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5_1();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 496) = v1;

  OUTLINED_FUNCTION_11_17();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_2_29();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237CEE71C()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = *(v0 + 216);
  v4 = *(v0 + 232);
  *(v0 + 248) = *(v0 + 200);
  *(v0 + 264) = v3;
  *(v0 + 280) = v4;
  *(v2 + *(v1 + 52)) = !CGAffineTransformIsIdentity((v0 + 248));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA90);
  *(v0 + 504) = sub_237EF6330();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 512) = v5;
  *v5 = v6;
  v5[1] = sub_237CEE808;
  OUTLINED_FUNCTION_8_22();

  return MEMORY[0x2821FAF00]();
}

uint64_t sub_237CEE808()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_5_1();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 520) = v1;

  OUTLINED_FUNCTION_11_17();
  if (v1)
  {
  }

  OUTLINED_FUNCTION_2_29();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237CEE934()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 424);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 320);
  *(v5 + *(v4 + 32)) = *(v0 + 556);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = sub_237EF8590();
  *(inited + 40) = v7;
  *(inited + 48) = 1111970369;
  v8 = sub_237EF8230();
  v9 = sub_237C90668(v8);

  v10 = objc_allocWithZone(MEMORY[0x277CE6430]);
  v11 = sub_237CEF998(v2, v9);
  *(v5 + *(v4 + 44)) = v11;
  v12 = v11;
  [v12 setSupportsRandomAccess_];
  [v12 setAlwaysCopiesSampleData_];
  [v12 markConfigurationAsFinal];

  v13 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v14 = sub_237CEFA28(v3);
  if (v1)
  {
    v15 = *(*(v0 + 344) + 8);
    (v15)(*(v0 + 328), *(v0 + 336));
    v16 = OUTLINED_FUNCTION_1_28();
    v15(v16);

    OUTLINED_FUNCTION_3_29();
  }

  else
  {
    v18 = *(v0 + 344);
    v20 = *(v0 + 328);
    v19 = *(v0 + 336);
    *(*(v0 + 320) + *(*(v0 + 384) + 24)) = v14;
    [v14 addOutput_];
    (*(v18 + 8))(v20, v19);
  }

  OUTLINED_FUNCTION_3_0();

  return v17();
}

uint64_t sub_237CEEB64()
{
  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_5_22();
  v0(v2);
  v3 = OUTLINED_FUNCTION_1_28();
  v0(v3);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237CEEBEC()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  swift_willThrow();
  v4 = *(v2 + 8);
  v4(v3, v1);
  v5 = v0[47];
  v4(v0[40], v0[42]);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237CEECA0()
{
  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_5_22();
  v0(v2);
  v3 = OUTLINED_FUNCTION_1_28();
  v0(v3);

  OUTLINED_FUNCTION_3_29();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237CEED2C()
{
  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_5_22();
  v0(v2);
  v3 = OUTLINED_FUNCTION_1_28();
  v0(v3);

  OUTLINED_FUNCTION_3_29();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237CEEDB8()
{
  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_5_22();
  v0(v2);
  v3 = OUTLINED_FUNCTION_1_28();
  v0(v3);

  OUTLINED_FUNCTION_3_29();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237CEEE44()
{
  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_5_22();
  v0(v2);
  v3 = OUTLINED_FUNCTION_1_28();
  v0(v3);

  OUTLINED_FUNCTION_3_29();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

id sub_237CEEED0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_237EF5E50();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = sub_237EF5EF0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_237CEEF70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_237CEF018(v4, v5);
  }

  else
  {
    sub_237C75918(0, &qword_27DEAFA40);
    v7 = sub_237EF8910();

    return sub_237CEF084(v4, v7);
  }
}

uint64_t sub_237CEF018(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t VideoReader.AsyncFrames.makeAsyncIterator()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_237EF5EF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7, v2, v4);
  v9 = type metadata accessor for VideoReader.AsyncFrames(0);
  v10 = *(v2 + v9[6]);
  v11 = *(v2 + v9[11]);
  v12 = *(v2 + v9[8]);
  v18 = *(v2 + v9[13]);
  v13 = type metadata accessor for VideoReader.AsyncFrames.Iterator(0);
  *&a1[v13[9]] = 0;
  v8(a1, v7, v4);
  *&a1[v13[5]] = v10;
  *&a1[v13[6]] = v11;
  *&a1[v13[7]] = v12;
  a1[v13[8]] = v18;
  v14 = v10;
  v15 = v11;
  [v14 startReading];
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_237CEF258@<X0>(char *a1@<X8>)
{
  VideoReader.AsyncFrames.makeAsyncIterator()(a1);

  return sub_237CEFFB0(v1);
}

uint64_t VideoReader.AsyncFrames.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_237EF5EF0();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237CEF340, 0, 0);
}

uint64_t sub_237CEF340()
{
  v1 = v0[3];
  v2 = type metadata accessor for VideoReader.AsyncFrames.Iterator(0);
  if ([*(v1 + v2[5]) status] != 1)
  {
    goto LABEL_10;
  }

  v3 = [*(v0[3] + v2[6]) copyNextSampleBuffer];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = CMSampleBufferGetImageBuffer(v3);
  if (!v5)
  {

LABEL_10:
    v25 = v0[2];
    v25[1] = 0u;
    v25[2] = 0u;
    *v25 = 0u;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  sub_237EF5DF0();
  v11 = sub_237EF5EC0();
  v13 = v12;
  result = (*(v7 + 8))(v8, v10);
  v15 = v2[9];
  v16 = *(v9 + v15);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v35 = v13;
  if (v17 < v16)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v18 = v11;
  v19 = v0[3];
  v20 = *(v19 + v2[7]);
  *(v9 + v15) = v17;
  if (*(v19 + v2[8]) == 1)
  {
    v21 = sub_237EBA114();
    if (!v21)
    {
      v29 = v0[5];
      v31 = v0[3];
      v30 = v0[4];

      type metadata accessor for DatasetError();
      sub_237CEFB48(&qword_27DEAFA00, type metadata accessor for DatasetError);
      swift_allocError();
      v33 = v32;
      v34 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08) + 48));
      (*(v29 + 16))(v33, v31, v30);
      *v34 = 0xD00000000000001DLL;
      v34[1] = 0x8000000237EFD180;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      OUTLINED_FUNCTION_3_0();
      goto LABEL_12;
    }

    v22 = v21;
    v23 = v0[2];
    v24 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

    *v23 = v18;
    v23[1] = v35;
    v23[2] = v16;
    v23[3] = v17;
    v23[4] = v20;
    v23[5] = v24;
  }

  else
  {
    v27 = v0[2];
    v28 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

    *v27 = v18;
    v27[1] = v35;
    v27[2] = v16;
    v27[3] = v17;
    v27[4] = v20;
    v27[5] = v28;
  }

LABEL_11:

  OUTLINED_FUNCTION_3_0();
LABEL_12:

  return v26();
}

uint64_t sub_237CEF644()
{
  OUTLINED_FUNCTION_2_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_237CEF6D4;

  return VideoReader.AsyncFrames.Iterator.next()();
}

uint64_t sub_237CEF6D4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237CEF7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237CEF884;

  return (sub_237DB4FD0)(a1, a2, a3);
}

uint64_t sub_237CEF884()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v3 + 8);

  return v5();
}

id sub_237CEF998(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_237EF8200();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithTrack:a1 outputSettings:v4];

  return v5;
}

id sub_237CEFA28(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithAsset:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_237EF5DC0();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_237CEFAF0(uint64_t a1)
{
  result = sub_237CEFB48(&qword_27DEAFA10, type metadata accessor for VideoReader.AsyncFrames);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237CEFB48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_237CEFC00()
{
  sub_237EF5EF0();
  if (v0 <= 0x3F)
  {
    sub_237C75918(319, &qword_27DEAFA30);
    if (v1 <= 0x3F)
    {
      sub_237C75918(319, &qword_27DEAFA38);
      if (v2 <= 0x3F)
      {
        sub_237C75918(319, &qword_27DEAFA40);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            sub_237C75918(319, &qword_27DEAFA48);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CMTime(319);
              if (v6 <= 0x3F)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF5EF0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237EF5EF0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_237CEFED8()
{
  result = sub_237EF5EF0();
  if (v1 <= 0x3F)
  {
    result = sub_237C75918(319, &qword_27DEAFA38);
    if (v2 <= 0x3F)
    {
      result = sub_237C75918(319, &qword_27DEAFA48);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237CEFFB0(uint64_t a1)
{
  v2 = type metadata accessor for VideoReader.AsyncFrames(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_3_29()
{
  v2 = *(*(v0 + 320) + *(*(v0 + 384) + 28));
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return sub_237EF9D40();
}

uint64_t sub_237CF0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v49 = a7;
  v42 = a3;
  v43 = a6;
  OUTLINED_FUNCTION_1_1();
  v40[8] = v10;
  v41 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v46 = v12;
  v47 = v13;
  v44 = *(v13 + 16);
  OUTLINED_FUNCTION_1_1();
  v40[7] = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v45 = v16;
  v19 = OUTLINED_FUNCTION_19_12(v17, MEMORY[0x277D83B88], v18);
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = (v40 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
  v24 = sub_237CE32D8();
  v25 = OUTLINED_FUNCTION_12_18(v24);
  OUTLINED_FUNCTION_14_18(v25);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v50 = OUTLINED_FUNCTION_3_30(v27, v40[0]);
  OUTLINED_FUNCTION_1_1();
  v40[0] = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  if (OUTLINED_FUNCTION_10_21() == v43)
  {
    OUTLINED_FUNCTION_4_25();
    sub_237EF9350();
    OUTLINED_FUNCTION_16_15();
    while (1)
    {
      sub_237EF9360();
      result = __swift_getEnumTagSinglePayload(v22, 1, v19);
      if (result == 1)
      {
        return (*(v40[0] + 8))(v23, v50);
      }

      if (__OFADD__(v48, *v22))
      {
        break;
      }

      v31 = OUTLINED_FUNCTION_5_23();
      v32(v31);
      OUTLINED_FUNCTION_6_21();
      sub_237EF83B0();
      type metadata accessor for DenseMatrix();
      v33 = OUTLINED_FUNCTION_17_14();
      v35 = OUTLINED_FUNCTION_15_16(v33, v34);
      v36(v35);
      v23(&v51, 0);
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_20();
    sub_237EF9330();
    OUTLINED_FUNCTION_13_12();
    v52 = v8;
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_21_10();

    OUTLINED_FUNCTION_8_23();
    MEMORY[0x2383E0710](v41, v42);
    OUTLINED_FUNCTION_20_9();
    v52 = sub_237EF8DA0();
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_21_10();

    OUTLINED_FUNCTION_18_13();
    v52 = v49;
    v37 = OUTLINED_FUNCTION_2_30();
    MEMORY[0x2383E0710](v37);

    sub_237C84150();
    v38 = swift_allocError();
    return OUTLINED_FUNCTION_11_18(v38, v39);
  }

  return result;
}

uint64_t sub_237CF04F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v49 = a7;
  v42 = a3;
  v43 = a6;
  OUTLINED_FUNCTION_1_1();
  v40[8] = v10;
  v41 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v46 = v12;
  v47 = v13;
  v44 = *(v13 + 16);
  OUTLINED_FUNCTION_1_1();
  v40[7] = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v45 = v16;
  v19 = OUTLINED_FUNCTION_19_12(v17, MEMORY[0x277D83B88], v18);
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = (v40 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
  v24 = sub_237CE32D8();
  v25 = OUTLINED_FUNCTION_12_18(v24);
  OUTLINED_FUNCTION_14_18(v25);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v50 = OUTLINED_FUNCTION_3_30(v27, v40[0]);
  OUTLINED_FUNCTION_1_1();
  v40[0] = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  if (OUTLINED_FUNCTION_10_21() == v43)
  {
    OUTLINED_FUNCTION_4_25();
    sub_237EF9350();
    OUTLINED_FUNCTION_16_15();
    while (1)
    {
      sub_237EF9360();
      result = __swift_getEnumTagSinglePayload(v22, 1, v19);
      if (result == 1)
      {
        return (*(v40[0] + 8))(v23, v50);
      }

      if (__OFADD__(v48, *v22))
      {
        break;
      }

      v31 = OUTLINED_FUNCTION_5_23();
      v32(v31);
      OUTLINED_FUNCTION_6_21();
      sub_237EF81F0();
      type metadata accessor for DenseMatrix();
      v33 = OUTLINED_FUNCTION_17_14();
      v35 = OUTLINED_FUNCTION_15_16(v33, v34);
      v36(v35);
      v23(&v51, 0);
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_20();
    sub_237EF9330();
    OUTLINED_FUNCTION_13_12();
    v52 = v8;
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_21_10();

    OUTLINED_FUNCTION_8_23();
    MEMORY[0x2383E0710](v41, v42);
    OUTLINED_FUNCTION_20_9();
    v52 = sub_237EF8DA0();
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_21_10();

    OUTLINED_FUNCTION_18_13();
    v52 = v49;
    v37 = OUTLINED_FUNCTION_2_30();
    MEMORY[0x2383E0710](v37);

    sub_237C84150();
    v38 = swift_allocError();
    return OUTLINED_FUNCTION_11_18(v38, v39);
  }

  return result;
}

uint64_t sub_237CF08D8()
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

uint64_t sub_237CF0928(uint64_t a1, int a2)
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

uint64_t sub_237CF0968(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_30()
{

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_3_30@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v6 - 272) = &a2 - a1;
  *(v6 - 256) = v4;
  *(v6 - 248) = v3;
  *(v6 - 120) = v3;
  *(v6 - 112) = v5;
  *(v6 - 104) = v4;
  *(v6 - 96) = v2;
  *(v6 - 240) = v2;

  return sub_237EF9370();
}

uint64_t OUTLINED_FUNCTION_4_25()
{
  *(v0 - 200) = *(v0 + 48);
  *(v0 - 120) = 0;

  return sub_237EFA000();
}

uint64_t OUTLINED_FUNCTION_7_20()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_237EF8260();
}

void OUTLINED_FUNCTION_8_23()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_10_21()
{

  return sub_237EF8DA0();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2)
{
  *a2 = v5;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1)
{
  v6 = *(v3 + 8);
  *(v4 - 120) = v1;
  *(v4 - 112) = v2;
  *(v4 - 104) = a1;
  *(v4 - 96) = v6;

  return sub_237EF9380();
}

void OUTLINED_FUNCTION_13_12()
{

  JUMPOUT(0x2383E0710);
}

void (*OUTLINED_FUNCTION_17_14())(uint64_t a1)
{
  v3 = *(v1 - 136);

  return DenseMatrix.subscript.modify((v1 - 120), v3, v0);
}

void OUTLINED_FUNCTION_18_13()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 160) = a3;

  return swift_getTupleTypeMetadata2();
}

void OUTLINED_FUNCTION_20_9()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_21_10()
{

  JUMPOUT(0x2383E0710);
}

void sub_237CF0C9C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  v57 = (v5 - v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_1();
  v58 = v8;
  OUTLINED_FUNCTION_12_1();
  v9 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v53 = v14 - v13;
  OUTLINED_FUNCTION_12_1();
  v15 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_237EF7CB0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();
  (*(v17 + 16))(v21, v2, v15);
  v26 = OUTLINED_FUNCTION_20_10();
  if (v27(v26) == *MEMORY[0x277D25310])
  {
    v28 = OUTLINED_FUNCTION_20_10();
    v29(v28);
    v30 = swift_projectBox();
    (*(v24 + 16))(v0, v30, v22);

    v31 = sub_237EF7CA0();
    v32 = *(v31 + 16);
    if (v32)
    {
      v49 = v0;
      v50 = v24;
      v51 = v22;
      v52 = v9;
      v59 = MEMORY[0x277D84F90];
      sub_237C632DC();
      OUTLINED_FUNCTION_28();
      v34 = v31 + v33;
      v55 = *(v35 + 56);
      v56 = v36;
      v37 = *MEMORY[0x277D25278];
      v54 = (v35 - 8);
      do
      {
        v56(v58, v34, v3);
        v56(v57, v58, v3);
        v38 = OUTLINED_FUNCTION_23_10();
        v40 = v39(v38, v3);
        if (v40 == v37)
        {
          v43 = OUTLINED_FUNCTION_23_10();
          v44(v43, v3);
          v42 = *v57;
          v41 = *v54;
        }

        else
        {
          v41 = *v54;
          (*v54)(v57, v3);
          v42 = 0;
        }

        v41(v58, v3);
        v45 = *(v59 + 16);
        if (v45 >= *(v59 + 24) >> 1)
        {
          sub_237C632DC();
        }

        *(v59 + 16) = v45 + 1;
        v46 = v59 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v40 != v37;
        v34 += v55;
        --v32;
      }

      while (v32);

      v22 = v51;
      v9 = v52;
      v0 = v49;
      v24 = v50;
    }

    else
    {
    }

    sub_237EF7C90();
    sub_237CF1A18();

    (*(v11 + 8))(v53, v9);
    (*(v24 + 8))(v0, v22);
    OUTLINED_FUNCTION_38_0();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_20_10();
    v48(v47);
    OUTLINED_FUNCTION_17_15();
    sub_237EF9740();
    __break(1u);
  }
}

void sub_237CF11B8()
{
  v1 = type metadata accessor for TensorDescription();
  v2 = OUTLINED_FUNCTION_6_1(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = *(v0 + 8);
  if (*(v8 + 16))
  {
    v9 = sub_237D2FC30();
    if (v10)
    {
      sub_237CF43B4(*(v8 + 56) + *(v4 + 72) * v9, v7);
      sub_237EF8260();
      sub_237CF42E8(v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_237CF12A0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TensorDescription();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(v1 + 8);
  if (*(v10 + 16))
  {
    v11 = sub_237D2FC30();
    if (v12)
    {
      sub_237CF43B4(*(v10 + 56) + *(v5 + 72) * v11, v9);
      v13 = *(v3 + 20);
      sub_237EF7B10();
      OUTLINED_FUNCTION_4();
      (*(v14 + 16))(a1, v9 + v13);
      sub_237CF42E8(v9);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_237CF13C0()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();
  v18 = *(type metadata accessor for TensorDescription() + 20);
  v35 = v1;
  v36 = v16;
  (*(v16 + 16))(v1, v0 + v18, v14);
  v19 = *v0;
  v20 = *(*v0 + 16);
  if (v20)
  {
    v33 = v14;
    v34 = v3;
    v42 = MEMORY[0x277D84F90];
    sub_237C63364(0, v20, 0);
    v21 = v42;
    v39 = *(v6 + 104);
    v38 = *MEMORY[0x277D25278];
    v37 = *MEMORY[0x277D25270];
    v40 = v6 + 104;
    v41 = v6;
    v22 = (v6 + 32);
    v23 = (v19 + 40);
    do
    {
      if (*v23)
      {
        *v10 = 0;
        v24 = v37;
      }

      else
      {
        *v10 = *(v23 - 1);
        v24 = v38;
      }

      v39(v10, v24, v4);
      v25 = *v22;
      (*v22)(v13, v10, v4);
      v42 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        v30 = OUTLINED_FUNCTION_16_16(v26);
        sub_237C63364(v30, v27 + 1, 1);
        v21 = v42;
      }

      *(v21 + 16) = v27 + 1;
      OUTLINED_FUNCTION_28();
      v25(v21 + v28 + *(v29 + 72) * v27, v13, v4);
      v23 += 16;
      --v20;
    }

    while (v20);
    v14 = v33;
  }

  v31 = v35;
  sub_237EF7CC0();

  (*(v36 + 8))(v31, v14);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CF1674()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_13();
  if (v4 && (OUTLINED_FUNCTION_11_19(), v5 = sub_237D2FC30(), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v0 + 56);
    v9 = type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_4();
    sub_237CF43B4(v8 + *(v10 + 72) * v7, v1);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
    return sub_237C65484(v1, &qword_27DEAFB20);
  }

  else
  {
    v15 = type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_22_11(v1, v16, v17, v15);
    sub_237C65484(v1, &qword_27DEAFB20);
    sub_237EF9330();

    OUTLINED_FUNCTION_3_31();
    v18 = OUTLINED_FUNCTION_11_19();
    MEMORY[0x2383E0710](v18);
    OUTLINED_FUNCTION_25_9();
    MEMORY[0x2383E0710](0xD00000000000001ALL);
    OUTLINED_FUNCTION_17_15();
    result = OUTLINED_FUNCTION_9_15();
    __break(1u);
  }

  return result;
}

uint64_t sub_237CF17F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_13();
  if (v4 && (OUTLINED_FUNCTION_11_19(), v5 = sub_237D2FC30(), (v6 & 1) != 0))
  {
    v11 = *(v0 + 56);
    v12 = v5;
    v13 = type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_4();
    sub_237CF43B4(v11 + *(v14 + 72) * v12, v1);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_237C65484(v1, &qword_27DEAFB20);
    sub_237EF9330();

    OUTLINED_FUNCTION_3_31();
    v18 = OUTLINED_FUNCTION_11_19();
    MEMORY[0x2383E0710](v18);
    OUTLINED_FUNCTION_25_9();
    MEMORY[0x2383E0710](0xD000000000000011);
    OUTLINED_FUNCTION_17_15();
    result = OUTLINED_FUNCTION_9_15();
    __break(1u);
  }

  else
  {
    v7 = type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_22_11(v1, v8, v9, v7);
    return sub_237C65484(v1, &qword_27DEAFB20);
  }

  return result;
}

uint64_t sub_237CF196C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_11_19();
    sub_237D2FC30();
  }

  sub_237EF8260();
  MEMORY[0x2383E0710](95, 0xE100000000000000);
  v3 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v3);

  return a1;
}

void sub_237CF1A18()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  memcpy(v24, v0, sizeof(v24));
  sub_237CF17F0();
  sub_237CF1BA8();
  v12 = v11;
  if (v13)
  {

LABEL_5:
    v16 = type metadata accessor for TensorDescription();
    v17 = *(v16 + 20);
    sub_237EF7B10();
    OUTLINED_FUNCTION_4();
    (*(v18 + 16))(&v8[v17], v2);
    *v8 = v4;
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
    sub_237EF8260();
    sub_237EF8260();
    sub_237E60CDC();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v14 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    v15 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v0;
    sub_237C911D0(v14, v15, v12);

    *v0 = v23;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_237CF1BA8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v21 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB38);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB40);
  OUTLINED_FUNCTION_1();
  v20 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB48);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB50);
  sub_237C96710(&qword_27DEAFB58, &qword_27DEAFB48);
  sub_237EF6CB0();
  v22 = v2;
  sub_237EF6CC0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v15 + 8))(v0, v13);
    sub_237C65484(v7, &qword_27DEAFB38);
    sub_237EF8260();
  }

  else
  {
    v17 = v20;
    (*(v20 + 32))(v12, v7, v8);
    sub_237EF6CD0();
    v18 = sub_237EF86E0();
    MEMORY[0x2383E06D0](v18);

    sub_237EF6CE0();
    (*(v17 + 8))(v12, v8);
    (*(v15 + 8))(v0, v13);
  }

  OUTLINED_FUNCTION_38_0();
}

void sub_237CF1ED8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26();
  v46 = v4 - v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for TensorDescription();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  memcpy(v49, v0, sizeof(v49));
  OUTLINED_FUNCTION_18_14();
  sub_237CF1674();
  memcpy(v48, v0, sizeof(v48));
  v14 = v48[1];
  OUTLINED_FUNCTION_20_10();
  sub_237CF17F0();
  OUTLINED_FUNCTION_18_14();
  sub_237DD7298(v14, v15);
  v45 = v9;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_29;
  }

  sub_237CF231C(v8, v13);
  v16 = v46;
  OUTLINED_FUNCTION_18_14();
  sub_237E63E4C(v17);
  sub_237C65484(v16, &qword_27DEAFB20);
  OUTLINED_FUNCTION_18_14();
  sub_237CF1BA8();
  v21 = v13;
  if (v22)
  {
    goto LABEL_5;
  }

  v23 = v20;
  v24 = sub_237DD734C(v18, v19, v48[0]);
  if (__OFADD__(v23, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v25)
  {
LABEL_5:

    v26 = v1;
LABEL_6:
    OUTLINED_FUNCTION_20_10();
    sub_237CF1A18();
    v27 = v26[2];
    v28 = *(v27 + 16);
    if (!v28)
    {
LABEL_13:
      sub_237CF42E8(v21);
      OUTLINED_FUNCTION_38_0();
      return;
    }

    v29 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E64260();
        v27 = v31;
      }

      if (v29 >= *(v27 + 16))
      {
        break;
      }

      v30 = sub_237EF7C70();
      OUTLINED_FUNCTION_6_1(v30);
      OUTLINED_FUNCTION_18_14();
      sub_237CF2380();
      if (v28 == ++v29)
      {
        v26[2] = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v26 = v1;
  if (v24 != v23 + 1)
  {

    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v1;
  v32 = v47;
  v33 = sub_237D2FC30();
  v34 = *(v32 + 16);
  LODWORD(v46) = v35;
  v36 = (v35 & 1) == 0;
  v43 = v34 + v36;
  if (__OFADD__(v34, v36))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8);
  if ((sub_237EF96B0() & 1) == 0)
  {
    v40 = v46;
    goto LABEL_21;
  }

  v38 = sub_237D2FC30();
  v40 = v46;
  if ((v46 & 1) == (v39 & 1))
  {
    v37 = v38;
LABEL_21:
    if ((v40 & 1) == 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v41 = *(*(v47 + 56) + 8 * v37);

    if (__OFSUB__(v41, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v42 = v47;
    *(*(v47 + 56) + 8 * v37) = v41 - 1;
    *v1 = v42;
    goto LABEL_6;
  }

LABEL_30:
  sub_237EFA020();
  __break(1u);
}

uint64_t type metadata accessor for TensorDescription()
{
  result = qword_27DEAFBA8;
  if (!qword_27DEAFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237CF231C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TensorDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_237CF2380()
{
  OUTLINED_FUNCTION_37_0();
  v109 = v1;
  v98 = v2;
  v121 = v3;
  v122 = v4;
  v100 = sub_237EF78C0();
  OUTLINED_FUNCTION_1();
  v101 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v99 = v8 - v7;
  OUTLINED_FUNCTION_12_1();
  v120 = sub_237EF7AB0();
  v9 = OUTLINED_FUNCTION_6_1(v120);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_1();
  v103 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB28);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26();
  v110 = (v26 - v27);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v30 = (&v96 - v29);
  v112 = v0;
  v31 = sub_237EF7C30();
  v32 = 0;
  v34 = v31 + 64;
  v33 = *(v31 + 64);
  v105 = v31;
  v35 = 1 << *(v31 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  v102 = v17 + 16;
  v115 = (v17 + 32);
  v124 = v11 + 88;
  v125 = v11 + 16;
  v123 = *MEMORY[0x277D252B0];
  v126 = v11;
  v118 = v11 + 96;
  v119 = v11 + 8;
  v104 = v17;
  v106 = (v17 + 8);
  v113 = v30;
  v108 = v31 + 64;
  v107 = v38;
  v117 = v15;
  v114 = v21;
  if ((v36 & v33) == 0)
  {
    goto LABEL_5;
  }

  do
  {
    v39 = v32;
LABEL_10:
    v116 = (v37 - 1) & v37;
    v41 = __clz(__rbit64(v37)) | (v39 << 6);
    v42 = (*(v105 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    v45 = v104;
    v46 = v103;
    v47 = v117;
    (*(v104 + 16))(v103, *(v105 + 56) + *(v104 + 72) * v41, v117);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB30);
    v49 = *(v48 + 48);
    v50 = v110;
    *v110 = v44;
    *(v50 + 1) = v43;
    v40 = v50;
    (*(v45 + 32))(&v50[v49], v46, v47);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v48);
    sub_237EF8260();
    v30 = v113;
    v21 = v114;
LABEL_11:
    sub_237CF4344(v40, v30);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB30);
    if (__swift_getEnumTagSinglePayload(v30, 1, v54) == 1)
    {

      OUTLINED_FUNCTION_28_8();
      v79 = *(sub_237EF7C60() + 16);

      if (!v79)
      {
LABEL_48:
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v80 = 0;
      v126 = v101 + 16;
      v81 = v101;
      while (1)
      {
        OUTLINED_FUNCTION_28_8();
        v82 = sub_237EF7C60();
        if (v80 >= *(v82 + 16))
        {
          goto LABEL_51;
        }

        v83 = v99;
        v84 = v100;
        (*(v81 + 16))(v99, v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80, v100);

        v85 = sub_237EF7890();
        v87 = v86;
        (*(v81 + 8))(v83, v84);
        if (v85 == v121 && v87 == v122)
        {
          break;
        }

        v89 = sub_237EF9D40();

        if (v89)
        {
          goto LABEL_43;
        }

LABEL_47:
        if (v79 == ++v80)
        {
          goto LABEL_48;
        }
      }

LABEL_43:
      sub_237EF8260();
      OUTLINED_FUNCTION_28_8();
      v90 = sub_237EF7C50();
      v92 = v91;
      v93 = *v91;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v92 = v93;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237E64248();
        v93 = v95;
        *v92 = v95;
      }

      if (v80 >= *(v93 + 16))
      {
        goto LABEL_52;
      }

      sub_237EF78A0();
      v90(v128, 0);
      goto LABEL_47;
    }

    v55 = v30[1];
    v111 = *v30;
    v56 = v117;
    (*v115)(v21, v30 + *(v54 + 48), v117);
    v57 = sub_237EF7AE0();
    v58 = v21;
    v59 = *(v57 + 16);
    if (!v59)
    {

      v21 = v58;
      goto LABEL_31;
    }

    v60 = 0;
    OUTLINED_FUNCTION_28();
    v62 = v57 + v61;
    v63 = v120;
    while (1)
    {
      if (v60 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      v64 = v55;
      v65 = v126;
      (*(v126 + 16))(v14, v62 + *(v126 + 72) * v60, v63);
      v66 = (*(v65 + 88))(v14, v63);
      if (v66 != v123)
      {
        v71 = OUTLINED_FUNCTION_23_10();
        v72(v71, v63);
        goto LABEL_23;
      }

      v67 = OUTLINED_FUNCTION_23_10();
      v68(v67, v63);
      if (*v14 == v121 && v14[1] == v122)
      {
        break;
      }

      v70 = sub_237EF9D40();

      v63 = v120;
      if (v70)
      {

        v64 = v55;
        goto LABEL_28;
      }

LABEL_23:
      if (v59 == ++v60)
      {

        v56 = v117;
        v21 = v114;
        v30 = v113;
        goto LABEL_31;
      }
    }

LABEL_28:
    OUTLINED_FUNCTION_28_8();
    v97 = sub_237EF7C20();
    v76 = sub_237D820B8(v127, v111, v64);
    v56 = v117;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v117);
    v21 = v114;
    if (!EnumTagSinglePayload)
    {
      sub_237CF3FC0();
    }

    (v76)(v127, 0);

    v97(v128, 0);
    v30 = v113;
LABEL_31:
    (*v106)(v21, v56);
    v34 = v108;
    v38 = v107;
    v37 = v116;
  }

  while (v116);
LABEL_5:
  v40 = v110;
  while (1)
  {
    v39 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB30);
      OUTLINED_FUNCTION_22_11(v40, v74, v75, v73);
      v116 = 0;
      goto LABEL_11;
    }

    v37 = *(v34 + 8 * v39);
    ++v32;
    if (v37)
    {
      v32 = v39;
      goto LABEL_10;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}