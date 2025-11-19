uint64_t sub_237DB6C84()
{
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6CF4()
{
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6D84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_237EFA120();
  a3(a2);
  OUTLINED_FUNCTION_7_50();

  return sub_237EFA170();
}

uint64_t sub_237DB6DD8()
{
  OUTLINED_FUNCTION_6_51();
  if (!v0)
  {
    OUTLINED_FUNCTION_3_72();
  }

  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6E50()
{
  OUTLINED_FUNCTION_6_51();
  if (v0)
  {
    OUTLINED_FUNCTION_2_70();
  }

  else
  {
    OUTLINED_FUNCTION_9_43();
  }

  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6EAC(uint64_t a1, char a2)
{
  sub_237EFA120();
  if (!a2)
  {
    OUTLINED_FUNCTION_14_40();
  }

  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6F40()
{
  OUTLINED_FUNCTION_6_51();
  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB6FC4()
{
  OUTLINED_FUNCTION_6_51();
  if (!v0)
  {
    OUTLINED_FUNCTION_8_56();
  }

  OUTLINED_FUNCTION_5_64();

  return sub_237EFA170();
}

uint64_t sub_237DB7044()
{
  sub_237EFA120();
  sub_237EF8610();

  return sub_237EFA170();
}

uint64_t sub_237DB70FC()
{
  sub_237EFA120();
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t BaseLogisticRegressionClassifierModel.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v21 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3360);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *v1;
  memcpy(__dst, v1 + 2, 0x49uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB7534();
  sub_237EFA1B0();
  LOBYTE(__src[0]) = 0;
  v13 = v23;
  sub_237EF9A50();
  if (v13)
  {
    return (*(v8 + 8))(v11, v6);
  }

  v15 = v8;
  __src[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  *(v16 + 32) = *(v12 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8);
  v17 = v20;
  sub_237EF7E40();
  LOBYTE(__src[0]) = 1;
  sub_237D0A15C(&qword_280C8CD70);
  v18 = v22;
  sub_237EF9A70();
  (*(v21 + 8))(v17, v18);
  memcpy(__src, __dst, 0x49uLL);
  __dst[103] = 2;
  sub_237D914E8(__dst, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
  sub_237D91558(&qword_27DEB2A10);
  sub_237EF9A00();
  memcpy(v24, __src, 0x49uLL);
  sub_237D09E34(v24);
  return (*(v15 + 8))(v11, v6);
}

unint64_t sub_237DB7534()
{
  result = qword_27DEB3368;
  if (!qword_27DEB3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3368);
  }

  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3370);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB7534();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = 0u;
    memset(v32, 0, 25);
    v29 = 0u;
    v30 = 0u;
    return sub_237D09E34(&v29);
  }

  else
  {
    *(&v22 + 1) = sub_237EF9950();
    LOBYTE(v29) = 1;
    sub_237D0A15C(&qword_280C8CD68);
    sub_237EF9970();
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60);
    v6 = sub_237EF7F50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
    v45 = 2;
    sub_237D91558(&qword_27DEB2A20);
    sub_237EF9900();
    v7 = OUTLINED_FUNCTION_11_41();
    v8(v7);
    v9 = OUTLINED_FUNCTION_4_66();
    v10(v9);
    v12 = v34;
    v11 = v35;
    v14 = v36;
    v13 = v37;
    v24 = v37;
    v25 = v35;
    v16 = v38;
    v15 = v39;
    v21 = v39;
    *&v22 = v6;
    v19 = v41;
    v20 = v40;
    v18 = v42;
    v44 = v43;
    memset(v27, 0, 73);
    sub_237D09E34(v27);
    v28[0] = __PAIR128__(*(&v22 + 1), v6);
    *&v28[1] = v12;
    *(&v28[1] + 1) = v11;
    *&v28[2] = v14;
    *(&v28[2] + 1) = v13;
    *&v28[3] = v16;
    *(&v28[3] + 1) = v15;
    *&v28[4] = v20;
    *(&v28[4] + 1) = v19;
    *&v28[5] = v18;
    LOBYTE(v6) = v44;
    BYTE8(v28[5]) = v44;
    memcpy(a2, v28, 0x59uLL);
    sub_237D4D938(v28, &v29);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v29 = v22;
    *&v30 = v12;
    *(&v30 + 1) = v25;
    *&v31 = v14;
    *(&v31 + 1) = v24;
    v32[0] = v16;
    v32[1] = v21;
    v32[2] = v20;
    v32[3] = v19;
    v32[4] = v18;
    v33 = v6;
    return sub_237CC9A9C(&v29);
  }
}

uint64_t sub_237DB79A0()
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

uint64_t sub_237DB79EC(char a1)
{
  if (!a1)
  {
    return 0x756F437373616C63;
  }

  if (a1 == 1)
  {
    return 0x6963696666656F63;
  }

  return 0x657A696D6974706FLL;
}

uint64_t sub_237DB7A80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237DB79A0();
  *a1 = result;
  return result;
}

uint64_t sub_237DB7AB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237DB79EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237DB7AE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237DB79A0();
  *a1 = result;
  return result;
}

uint64_t sub_237DB7B0C(uint64_t a1)
{
  v2 = sub_237DB7534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB7B48(uint64_t a1)
{
  v2 = sub_237DB7534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BaseLogisticRegressionClassifierModel.export(to:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_3_60();

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  __src[2] = 0;
  __src[3] = 0xE000000000000000;
  __src[4] = 0;
  __src[5] = 0xE000000000000000;
  __src[6] = 0;
  __src[7] = 0xE000000000000000;
  __src[8] = v2;
  BaseLogisticRegressionClassifierModel.export(to:metadata:)(a1, __src);
  memcpy(v4, __src, sizeof(v4));
  return sub_237D91628(v4);
}

uint64_t BaseLogisticRegressionClassifierModel.export(to:metadata:)(uint64_t a1, void *a2)
{
  v16 = a1;
  v5 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v14[0] = *a2;
  v14[1] = v8;
  v9 = a2[6];
  v14[2] = a2[4];
  v14[3] = v9;
  v10 = a2[8];
  memcpy(__dst, v2, 0x59uLL);
  result = sub_237E6BCA8(v7);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v12 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v13);
    v12(__dst, 0);
    sub_237E33BC0(v16);
    return sub_237D0F8BC(v7);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DB7F00()
{
  result = qword_27DEB3378;
  if (!qword_27DEB3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3378);
  }

  return result;
}

unint64_t sub_237DB7F58()
{
  result = qword_27DEB3380;
  if (!qword_27DEB3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3380);
  }

  return result;
}

unint64_t sub_237DB7FB0()
{
  result = qword_27DEB3388[0];
  if (!qword_27DEB3388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_64()
{

  return sub_237EF8610();
}

uint64_t OUTLINED_FUNCTION_6_51()
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_7_50()
{

  return sub_237EF8610();
}

uint64_t OUTLINED_FUNCTION_16_36()
{

  return sub_237EFA120();
}

uint64_t TimeSeriesForecasterBatches.features.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237EF7E90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimeSeriesForecasterBatches.annotations.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_237EF7E90();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *TimeSeriesForecasterBatches.init(features:annotations:batchSize:inputWindowSize:forecastWindowSize:shufflesBatches:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for TimeSeriesForecasterBatches();
  v41 = v12[13];
  OUTLINED_FUNCTION_4_67();
  v13 = sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  v40 = v14;
  v15 = *(v14 + 16);
  v15(a7, a1, v13);
  v39 = v12[9];
  v15(a7 + v39, a2, v13);
  v16 = a5;
  *(a7 + v12[10]) = a3;
  *(a7 + v12[11]) = a4;
  *(a7 + v12[12]) = a5;
  v44 = a7;
  *(a7 + v41) = a6;
  if (a3 < 1 || a4 < 1 || a5 < 1)
  {
    v19 = 0xD00000000000001BLL;
    v20 = 0x8000000237F14F60;
    v21 = 0x8000000237EFFB50;
    v16 = 0xD000000000000031;
    v22 = 5;
LABEL_24:
    sub_237C84150();
    swift_allocError();
    *v37 = v19;
    *(v37 + 8) = v20;
    *(v37 + 16) = v16;
    *(v37 + 24) = v21;
    *(v37 + 32) = v22;
    swift_willThrow();
    v38 = *(v40 + 8);
    v38(a2, v13);
    v38(a1, v13);
    v38(v44, v13);
    return (v38)(v44 + v39, v13);
  }

  v23 = *(sub_237EF7E20() + 16);

  result = sub_237EF7E20();
  v19 = result;
  if (v23 != 2)
  {
    v21 = 0;
    OUTLINED_FUNCTION_9_44();
    v20 = v35 + 24;
LABEL_23:
    v22 = 6;
    goto LABEL_24;
  }

  if (!result[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v25 = result[4];

  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = result[4];

  if (v25 != v26)
  {
    v19 = sub_237EF7E20();
    v21 = 0;
    OUTLINED_FUNCTION_9_44();
    v20 = v36 + 91;
    goto LABEL_23;
  }

  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = result[5];

  *(a7 + v12[14]) = v27;
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v28 = result[5];

  *(a7 + v12[15]) = v28;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = result[4];

  v30 = *(v40 + 8);
  v30(a2, v13);
  result = (v30)(a1, v13);
  v31 = a4 + a5;
  if (__OFADD__(a4, a5))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = __OFSUB__(v29, v31);
  v33 = v29 - v31;
  if (!v32)
  {
    v32 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v32)
    {
      *(a7 + v12[16]) = v34 & ~(v34 >> 63);
      return result;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t TimeSeriesForecasterBatches.underestimatedCount.getter(uint64_t result)
{
  v2 = *(v1 + *(result + 64));
  v3 = *(v1 + *(result + 40));
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(v5, 1);
  v6 = v5 - 1;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != 0x8000000000000000 || v3 != -1)
  {
    return v6 / v3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t TimeSeriesForecasterBatches.makeIterator()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  v16 = *(v8 + 16);
  v16(&v18 - v14, v2, v6, v13);
  (v16)(v11, v2 + *(a1 + 36), v6);
  return sub_237DB87F4(v15, v11, *(v2 + *(a1 + 40)), *(v2 + *(a1 + 44)), *(v2 + *(a1 + 48)), *(v2 + *(a1 + 52)), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 60)), *(v2 + *(a1 + 64)), v4, v5);
}

uint64_t sub_237DB8A70(uint64_t a1)
{
  TimeSeriesForecasterBatches.makeIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

void sub_237DB8AD8()
{
  OUTLINED_FUNCTION_12_37();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_237F04760;
  *(v10 + 32) = v9;
  if ((v7 * v3) >> 64 == (v7 * v3) >> 63)
  {
    *(v10 + 40) = v7 * v3;
    sub_237D14E78();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_237F04760;
    *(v11 + 32) = v9;
    if ((v5 * v1) >> 64 == (v5 * v1) >> 63)
    {
      *(v11 + 40) = v5 * v1;
      type metadata accessor for AnnotatedBatch();
      sub_237D14E78();
      OUTLINED_FUNCTION_8_6();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void TimeSeriesForecasterBatches.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  OUTLINED_FUNCTION_4_67();
  v8 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = *(a1 + 68);
  v15 = *(v3 + v14);
  v16 = *(v3 + *(a1 + 72));
  if (v15 < *(v16 + 16))
  {
    if (v15 < 0)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v15 + 32);
      *(v3 + v14) = v15 + 1;
      v18 = *(v3 + *(a1 + 64));
      v19 = __OFSUB__(v18, v17);
      v20 = v18 - v17;
      if (!v19)
      {
        v53 = v17;
        v54 = v13;
        v55 = a2;
        v21 = *(v3 + *(a1 + 40));
        v52 = v6;
        if (v20 >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        v23 = v3 + *(a1 + 76);
        v24 = sub_237EF7E20();
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        inited = swift_initStackObject();
        v59 = xmmword_237F08A50;
        *(inited + 16) = xmmword_237F08A50;
        *(inited + 32) = v22;
        v58 = *(v3 + *(a1 + 44));
        *(inited + 40) = v58;
        v56 = *(v3 + *(a1 + 56));
        *(inited + 48) = v56;
        v26 = sub_237C60C7C(v24, inited);

        swift_setDeallocating();
        if ((v26 & 1) == 0)
        {
          v27 = swift_allocObject();
          *(v27 + 16) = v59;
          v28 = v58;
          *(v27 + 32) = v22;
          *(v27 + 40) = v28;
          *(v27 + 48) = v56;
          v29 = v54;
          sub_237D14E78();
          (*(v10 + 40))(v23, v29, v8);
        }

        v51 = v10;
        v30 = type metadata accessor for AnnotatedBatch();
        v31 = *(v30 + 36);
        v58 = v23;
        v50 = v31;
        v32 = sub_237EF7E20();
        v33 = swift_initStackObject();
        *(v33 + 16) = v59;
        v57 = v22;
        *(v33 + 32) = v22;
        v34 = *(a1 + 48);
        v49 = v7;
        v35 = *(v3 + v34);
        *(v33 + 40) = v35;
        v36 = *(v3 + *(a1 + 60));
        *(v33 + 48) = v36;
        v37 = sub_237C60C7C(v32, v33);

        swift_setDeallocating();
        if ((v37 & 1) == 0)
        {
          v38 = swift_allocObject();
          *(v38 + 16) = v59;
          *(v38 + 32) = v57;
          *(v38 + 40) = v35;
          *(v38 + 48) = v36;
          v39 = v54;
          sub_237D14E78();
          (*(v51 + 40))(v58 + v50, v39, v8);
        }

        if (v56 == 1 && v36 == 1)
        {
          v45 = OUTLINED_FUNCTION_10_43(&v61);
          sub_237DB8FF8(v45, v46, v47);
        }

        else
        {
          v41 = OUTLINED_FUNCTION_10_43(&v61);
          sub_237DB9088(v41, v42, v43);
        }

        v48 = v55;
        (*(*(v30 - 8) + 16))(v55, v58, v30);
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v30);
        return;
      }
    }

    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_4_67();
  v44 = type metadata accessor for AnnotatedBatch();

  __swift_storeEnumTagSinglePayload(a2, 1, 1, v44);
}

uint64_t sub_237DB8FF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(result, *(v3 + *(a3 + 44))))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v10[1] = *(v4 + 16);
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    return OUTLINED_FUNCTION_13_32(v4, v10);
  }

  return result;
}

uint64_t sub_237DB9088(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(result, *(v3 + *(a3 + 44))))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v12[1] = *(v4 + 16);
    v13 = v5;
    v14 = v6;
    v15 = v8;
    v16 = v7;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    return OUTLINED_FUNCTION_13_32(v4, v12);
  }

  return result;
}

void sub_237DB9128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v49 = a8;
  v48 = a7;
  v47 = a6;
  v46 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v52 = a1;
  v23 = *(a22 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v24 < 0)
  {
    goto LABEL_21;
  }

  if (v24)
  {
    v56 = a20;
    v57 = a18;
    if ((a20 | a18) < 0)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v27 = 0;
    v60 = a23;
    v41 = a21;
    v42 = a19;
    v45 = a16;
    v44 = a13;
    v51 = a12;
    v59 = xmmword_237F08A50;
    v58 = xmmword_237F04760;
    v50 = a9;
    v43 = v24;
    while (!v57)
    {
LABEL_10:
      if (v56)
      {
        v34 = v41 + v27;
        if (__OFADD__(v41, v27))
        {
          goto LABEL_20;
        }

        v35 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
          inited = swift_initStackObject();
          *(inited + 16) = v59;
          *(inited + 32) = v27;
          *(inited + 40) = v35;
          *(inited + 48) = 0;
          v37 = swift_initStackObject();
          *(v37 + 16) = v58;
          v38 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_18;
          }

          ++v35;
          *(v37 + 32) = v38;
          *(v37 + 40) = 0;
          sub_237D16AC4();
          swift_setDeallocating();
          v39 = sub_237D166DC(inited, v45);
          swift_setDeallocating();
          (*(v23 + 40))(v44 + *(v23 + 72) * v39, v26, a22);
        }

        while (v56 != v35);
      }

      if (++v27 == v43)
      {
        return;
      }
    }

    v28 = v42 + v27;
    if (__OFADD__(v42, v27))
    {
      goto LABEL_19;
    }

    v29 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v30 = swift_initStackObject();
      *(v30 + 16) = v59;
      *(v30 + 32) = v27;
      *(v30 + 40) = v29;
      *(v30 + 48) = 0;
      v31 = swift_initStackObject();
      *(v31 + 16) = v58;
      v32 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      ++v29;
      *(v31 + 32) = v32;
      *(v31 + 40) = 0;
      sub_237D16AC4();
      swift_setDeallocating();
      v33 = sub_237D166DC(v30, v51);
      swift_setDeallocating();
      (*(v23 + 40))(v50 + *(v23 + 72) * v33, v26, a22);
      if (v57 == v29)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_237DB9524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v20[1] = a5;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v20 - v17;
  (*(v14 + 16))(v20 - v17, v6, v12, v16);
  v20[4] = v11;
  v20[5] = a4;
  v20[6] = v10;
  v20[7] = v6;
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  sub_237D14E4C();
  return (*(v14 + 8))(v18, v12);
}

void sub_237DB9690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v25 = *(a24 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v34 < 0)
  {
    goto LABEL_41;
  }

  v74 = v26;
  v75 = v27;
  v76 = v28;
  v77 = v29;
  v67 = v30;
  v68 = v31;
  v69 = v32;
  v70 = v33;
  if (v34)
  {
    v37 = a18;
    if ((a21 | a18) < 0)
    {
LABEL_42:
      __break(1u);
      return;
    }

    v38 = 0;
    v56 = a23;
    v71 = a22;
    v57 = a20;
    v39 = a19;
    v81 = v25 + 40;
    v62 = a18 & ~(a18 >> 63);
    v65 = a13;
    v63 = a21;
    v61 = a21 & ~(a21 >> 63);
    v72 = a9;
    v82 = a25;
    v78 = a19;
    v66 = a16;
    v80 = xmmword_237F08A50;
    v79 = xmmword_237F04760;
    v58 = v34;
    v64 = a18;
    v73 = a12;
    while (1)
    {
      v83 = v38;
      if (v37)
      {
        break;
      }

LABEL_18:
      v47 = v71;
      if (v63)
      {
        if (v71 < 0)
        {
          goto LABEL_40;
        }

        v48 = 0;
        v59 = v56 + v83;
        v49 = __OFADD__(v56, v83);
        v60 = v49;
        while (v48 != v61)
        {
          if (v47)
          {
            if (v60)
            {
              goto LABEL_37;
            }

            v50 = v59 + v48;
            if (__OFADD__(v59, v48))
            {
              goto LABEL_38;
            }

            v51 = 0;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
              inited = swift_initStackObject();
              *(inited + 16) = v80;
              *(inited + 32) = v83;
              *(inited + 40) = v48;
              *(inited + 48) = v51;
              v53 = swift_initStackObject();
              *(v53 + 16) = v79;
              *(v53 + 32) = v50;
              *(v53 + 40) = v51;
              sub_237D16AC4();
              swift_setDeallocating();
              v54 = sub_237D166DC(inited, v66);
              swift_setDeallocating();
              (*(v25 + 40))(v65 + *(v25 + 72) * v54, v36, a24);
              v47 = v71;
              ++v51;
            }

            while (v71 != v51);
          }

          ++v48;
          v39 = v78;
          if (v48 == v63)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_34;
      }

LABEL_31:
      v38 = v83 + 1;
      v37 = v64;
      if (v83 + 1 == v58)
      {
        return;
      }
    }

    if (v39 < 0)
    {
      goto LABEL_39;
    }

    v40 = 0;
    v59 = v57 + v83;
    v41 = __OFADD__(v57, v83);
    v60 = v41;
    while (v40 != v62)
    {
      if (v39)
      {
        if (v60)
        {
          goto LABEL_35;
        }

        v42 = v59 + v40;
        if (__OFADD__(v59, v40))
        {
          goto LABEL_36;
        }

        v43 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
          v44 = swift_initStackObject();
          *(v44 + 16) = v80;
          *(v44 + 32) = v83;
          *(v44 + 40) = v40;
          *(v44 + 48) = v43;
          v45 = swift_initStackObject();
          *(v45 + 16) = v79;
          *(v45 + 32) = v42;
          *(v45 + 40) = v43;
          sub_237D16AC4();
          swift_setDeallocating();
          v46 = sub_237D166DC(v44, v73);
          swift_setDeallocating();
          (*(v25 + 40))(v72 + *(v25 + 72) * v46, v36, a24);
          v39 = v78;
          ++v43;
        }

        while (v78 != v43);
      }

      if (++v40 == v64)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }
}

uint64_t sub_237DB9BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v24 = a7;
  v25 = a4;
  v22 = a6;
  v23 = a3;
  v26 = a9;
  v15 = sub_237EF7E90();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - v17;
  v19 = type metadata accessor for TimeSeriesForecasterBatches.Iterator();
  (*(v16 + 16))(v18, a5 + *(v19 + 36), v15);
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a5;
  v31 = v22;
  v32 = v24;
  v33 = a1;
  v34 = a2;
  v35 = v23;
  v36 = v25;
  swift_getWitnessTable();
  sub_237D14E4C();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_237DB9D70()
{
  type metadata accessor for TimeSeriesForecasterBatches.Iterator();
  sub_237EF7E90();
  swift_getWitnessTable();
  return sub_237D14EC8();
}

uint64_t sub_237DB9E5C()
{
  type metadata accessor for TimeSeriesForecasterBatches.Iterator();
  type metadata accessor for AnnotatedBatch();
  sub_237EF7E90();
  swift_getWitnessTable();
  return sub_237D14EC8();
}

void sub_237DB9FAC()
{
  sub_237EF7E90();
  if (v0 <= 0x3F)
  {
    sub_237CFF010();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AnnotatedBatch();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237DBA264()
{
  OUTLINED_FUNCTION_12_37();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237EF8260();
  sub_237EF8260();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  if (v1)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v9 = *(v3 + 16);
    sub_237EF8260();
    v10 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E641B8();
      v10 = v28;
    }

    while (1)
    {
      v11 = v9 < 1;
      if (v9 <= 0)
      {
        goto LABEL_11;
      }

      if (v9 > *(v10 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v9 > *(v5 + 16))
      {
        goto LABEL_32;
      }

      v12 = *(v5 + 24 + 8 * v9);
      v13 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_33;
      }

      v14 = v10 + 8 * v9;
      v15 = *(v14 + 24);
      if (v15 < v13)
      {
        break;
      }

      *(v14 + 24) = 0;
      --v9;
    }

    *(v14 + 24) = v15 + 1;
LABEL_11:
    if (!v6)
    {
      v16 = v7[3];
      if (((v16 >> 1) + 0x4000000000000000) >= 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD348);
        v19 = OUTLINED_FUNCTION_30();
        v20 = (_swift_stdlib_malloc_size(v19) - 32) / 8;
        v19[2] = v18;
        v19[3] = 2 * v20;
        v21 = (v19 + 4);
        v22 = v7[3];
        v23 = v22 >> 1;
        if (v7[2])
        {
          v24 = v7 + 4;
          v32 = v7;
          if (v19 != v7 || v21 >= &v7[v23 + 4])
          {
            v26 = v20;
            memmove(v19 + 4, v24, 8 * v23);
            v20 = v26;
          }

          v32[2] = 0;
        }

        v8 = (v21 + 8 * v23);
        v6 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - (v22 >> 1);

        v7 = v19;
        goto LABEL_25;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_25:
    v27 = __OFSUB__(v6--, 1);
    if (v27)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *v8++ = v3;
    v3 = v10;
    if (!v11)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v29 = v7[3];
  if (v29 < 2)
  {
LABEL_30:
    OUTLINED_FUNCTION_8_6();
  }

  else
  {
    v30 = v29 >> 1;
    v27 = __OFSUB__(v30, v6);
    v31 = v30 - v6;
    if (!v27)
    {
      v7[2] = v31;
      goto LABEL_30;
    }

LABEL_36:
    __break(1u);
  }
}

void sub_237DBA454()
{
  OUTLINED_FUNCTION_12_37();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_237DBA8D8(v4, v2, v0);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v8 = OUTLINED_FUNCTION_30();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = v8[3];

  if (v7 < 0)
  {
    goto LABEL_48;
  }

  v11 = v8 + 4;
  v12 = v10 >> 1;
  if (!v7)
  {
    goto LABEL_17;
  }

  v12 -= v7;
  do
  {
    v13 = v5 <= v3;
    if (v1 > 0)
    {
      v13 = v5 >= v3;
    }

    if (v13)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v14 = v5 + v1;
    if (__OFADD__(v5, v1))
    {
      v14 = ((v5 + v1) >> 63) ^ 0x8000000000000000;
    }

    *v11++ = v5;
    v5 = v14;
    --v7;
  }

  while (v7);
  v5 = v14;
LABEL_17:
  v15 = (v1 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v32 = v3;
  while (2)
  {
    v16 = v5 <= v3;
    if (v1 > 0)
    {
      v16 = v5 >= v3;
    }

    if (!v16)
    {
      v17 = v5 + v1;
      if (__OFADD__(v5, v1))
      {
        v17 = v15;
        if (!v12)
        {
          goto LABEL_26;
        }

        v17 = v15;
      }

      else if (!v12)
      {
LABEL_26:
        v18 = v8[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v19 = v15;
        v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        v22 = OUTLINED_FUNCTION_30();
        v23 = (_swift_stdlib_malloc_size(v22) - 32) / 8;
        v22[2] = v21;
        v22[3] = 2 * v23;
        v24 = (v22 + 4);
        v25 = v8[3];
        v26 = v25 >> 1;
        if (v8[2])
        {
          if (v22 != v8 || v24 >= &v8[v26 + 4])
          {
            memmove(v22 + 4, v8 + 4, 8 * v26);
          }

          v8[2] = 0;
        }

        v11 = (v24 + 8 * v26);
        v12 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - (v25 >> 1);

        v8 = v22;
        v15 = v19;
        v3 = v32;
      }

      v28 = __OFSUB__(v12--, 1);
      if (v28)
      {
        __break(1u);
        goto LABEL_46;
      }

      *v11++ = v5;
      v5 = v17;
      continue;
    }

    break;
  }

  v29 = v8[3];
  if (v29 >= 2)
  {
    v30 = v29 >> 1;
    v28 = __OFSUB__(v30, v12);
    v31 = v30 - v12;
    if (v28)
    {
      goto LABEL_49;
    }

    v8[2] = v31;
  }

  OUTLINED_FUNCTION_8_6();
}

uint64_t sub_237DBA688(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD418);
    v7 = OUTLINED_FUNCTION_30();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 16);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
  }

  v10 = v7 + 4;
  v11 = v8 >> 1;
  if (v6)
  {
    v12 = 0;
    while (v4 != v12)
    {
      if (v5 == v12)
      {
        goto LABEL_40;
      }

      v13 = *(a2 + 32 + 8 * v12);
      v14 = v12 + 1;
      *v10 = *(a1 + 32 + 4 * v12);
      v10[1] = v13;
      v10 += 2;
      v12 = v14;
      if (v6 == v14)
      {
        v11 -= v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_13:
  v15 = a1 + 32;
  v16 = a2 + 32;
  v32 = a2 + 32;
  v33 = a1 + 32;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_42;
    }

    if (v5 == v6)
    {
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_43;
    }

    v17 = *(v15 + 4 * v6);
    v18 = *(v16 + 8 * v6);
    if (!v11)
    {
      v19 = v7[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_45;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD418);
      v22 = OUTLINED_FUNCTION_30();
      v23 = (_swift_stdlib_malloc_size(v22) - 32) / 16;
      v22[2] = v21;
      v22[3] = 2 * v23;
      v24 = (v22 + 4);
      v25 = v7[3];
      v26 = v25 >> 1;
      if (v7[2])
      {
        if (v22 != v7 || v24 >= &v7[2 * v26 + 4])
        {
          memmove(v22 + 4, v7 + 4, 16 * v26);
        }

        v7[2] = 0;
      }

      v10 = (v24 + 16 * v26);
      v11 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - (v25 >> 1);

      v7 = v22;
      v16 = v32;
      v15 = v33;
    }

    v28 = __OFSUB__(v11--, 1);
    if (v28)
    {
      goto LABEL_44;
    }

    *v10 = v17;
    v10[1] = v18;
    v10 += 2;
    ++v6;
  }

  v29 = v7[3];
  if (v29 < 2)
  {
    return v7;
  }

  v30 = v29 >> 1;
  v28 = __OFSUB__(v30, v11);
  v31 = v30 - v11;
  if (!v28)
  {
    v7[2] = v31;
    return v7;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_237DBA8D8(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_32@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  return sub_237DB9524(v3, a2, a1, v2 + 8, a2);
}

uint64_t TemporalTransformer.export(to:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v2, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v20, &v22);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    (*(v15 + 8))(v14, v15);
    if (!v3)
    {
      sub_237E33BC0(a1);
      sub_237D0F8BC(v9);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_237D0F854(v20);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v18 = v17;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_237EF9CF0();
    v19 = v23;
    *v18 = v22;
    v18[1] = v19;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t TemporalTransformer.export(to:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v31 = a1;
  v8 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = *(a2 + 64);
  (*(v16 + 16))(v14 - v13, v5, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v25, &v27);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    (*(v18 + 8))(v17, v18);
    if (!v4)
    {
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF7770();
      sub_237EF7800();
      sub_237EF77C0();
      sub_237EF77E0();
      v19 = sub_237EF7780();
      sub_237C9FB0C(v15, sub_237C9FE58, 0, v20);
      v19(v25, 0);
      sub_237E33BC0(v31);
      sub_237D0F8BC(v11);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_237D0F854(v25);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v23 = v22;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_237EF9CF0();
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

int *sub_237DBAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MultivariateLinearRegressor.Model();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for LinearTimeSeriesForecaster.Model();
  *(a5 + result[11]) = a2;
  *(a5 + result[12]) = a3;
  *(a5 + result[13]) = a4;
  return result;
}

uint64_t sub_237DBAFFC()
{
  OUTLINED_FUNCTION_2_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = *(v2 + 16);
  v1[8] = *(v2 + 24);
  v6 = sub_237EF7E90();
  v1[9] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void *sub_237DBB0CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v1 = OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = xmmword_237F04760;
  result = sub_237EF7E20();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result[4];

  *(v1 + 32) = v3;
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result[5];

  result = sub_237EF7E20();
  if (result[2] < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result[6];

  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = v0[5];
  *(v1 + 40) = v4 * v5;
  sub_237EF7E60();

  v7 = swift_task_alloc();
  v0[13] = v7;
  v0[14] = *(v6 + 32);
  type metadata accessor for MultivariateLinearRegressor.Model();
  *v7 = v0;
  v7[1] = sub_237DBB278;

  return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
}

uint64_t sub_237DBB278()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[15] = v0;

  v3[16] = *(v6 + 8);
  v3[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = OUTLINED_FUNCTION_9_9();
  v10(v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237DBB3E4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 56);
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237D14E4C();

  v1(v3, v4);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237DBB4F4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t LinearTimeSeriesForecaster.Model.inputWindowSize.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_24_23();
  result = MultivariateLinearRegressor.Model.inputSize.getter(v3);
  v5 = *(v1 + *(a1 + 44));
  if (v5)
  {
    if (result != 0x8000000000000000 || v5 != -1)
    {
      result /= v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_24_23();
  result = MultivariateLinearRegressor.Model.outputSize.getter(v3);
  v5 = *(v1 + *(a1 + 48));
  if (v5)
  {
    if (result != 0x8000000000000000 || v5 != -1)
    {
      result /= v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237DBB670(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_24_23();

  return a2(v2);
}

uint64_t LinearTimeSeriesForecaster.Model.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[31] = a6;
  v7[32] = v6;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  v7[33] = *(a4 + 16);
  v7[34] = *(a4 + 24);
  v7[35] = type metadata accessor for SlidingWindows();
  OUTLINED_FUNCTION_5_66();
  v7[36] = swift_getWitnessTable();
  v9 = sub_237EF9680();
  v7[37] = v9;
  OUTLINED_FUNCTION_6_1(v9);
  v7[38] = v10;
  v7[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_37();
  v7[40] = v11;
  v7[41] = OUTLINED_FUNCTION_27_0();
  v12 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v12);
  v7[42] = OUTLINED_FUNCTION_27_0();
  v7[43] = sub_237EF7E90();
  v7[44] = swift_getTupleTypeMetadata2();
  v13 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v13);
  v7[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_37();
  v7[46] = v14;
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = *(a5 - 8);
  v7[53] = OUTLINED_FUNCTION_27_0();
  v15 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_237DBB940()
{
  v48 = *(v0 + 352);
  v49 = *(v0 + 368);
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  (*(*(v0 + 416) + 16))(*(v0 + 424), *(v0 + 208), *(v0 + 240));
  v3 = sub_237EF8A90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v4 = OUTLINED_FUNCTION_36_1();
  *(v4 + 16) = xmmword_237F04760;
  *(v4 + 32) = sub_237EF8A00();
  v47 = *(v1 + *(v2 + 44));
  *(v4 + 40) = v47;
  sub_237D14E78();
  *(v0 + 184) = 0;
  *(v0 + 192) = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
  v6 = sub_237EF8A60();
  *(v0 + 432) = v6;
  v7 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  *(v0 + 168) = *(v0 + 152);
  *(v0 + 176) = *(v0 + 160);
  *(v0 + 56) = v5;
  v51 = v7;
  v52 = v6;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  *(v0 + 80) = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  v9 = (v49 + 32);
  v50 = (v49 + 8);
  while (1)
  {
    v10 = *(v0 + 352);
    v11 = *(v0 + 360);
    *(v0 + 88) = v5;
    *(v0 + 96) = v52;
    *(v0 + 104) = v51;
    *(v0 + 112) = WitnessTable;
    sub_237EF9370();
    sub_237EF9360();
    if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
    {
      break;
    }

    (*v9)(*(v0 + 400), *(v0 + 360) + *(v48 + 48), *(v0 + 344));
    v12 = sub_237EF7E20();
    if (*(v12 + 16) != 1 || *(v12 + 32) != v47)
    {
      v16 = *(v0 + 400);
      v15 = *(v0 + 408);
      v17 = *(v0 + 344);

      v18 = sub_237EF7E20();
      sub_237C84150();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = 0xD000000000000030;
      *(v19 + 16) = 0x8000000237EFFB90;
      *(v19 + 24) = 0;
      *(v19 + 32) = 6;
      swift_willThrow();
      v20 = *v50;
      (*v50)(v16, v17);
      v20(v15, v17);
      OUTLINED_FUNCTION_14_41();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_30_24();

      __asm { BRAA            X1, X16 }
    }

    v13 = *(v0 + 400);
    v14 = *(v0 + 344);

    *(v0 + 40) = v5;
    *(v0 + 48) = sub_237CE3364();
    *(v0 + 16) = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237EF7F90();
    sub_237EF7EA0();
    (*v50)(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v21 = *(v0 + 328);
  v22 = *(v0 + 256);
  v23 = *(v0 + 232);

  v24 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v23);
  sub_237C83E40(v24, *(v22 + *(v23 + 52)), v21);
  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  v29 = *(v0 + 312);
  v30 = *(v0 + 296);
  v31 = *(v0 + 280);
  *(v0 + 200) = sub_237EF8110();
  sub_237EF8E20();
  sub_237EF8970();
  (*(v28 + 16))(v29, v27, v31);
  *(v0 + 148) = *(v30 + 36);
  v32 = SlidingWindows.startIndex.getter();
  if (v32 == SlidingWindows.endIndex.getter(*(v0 + 280)))
  {
    OUTLINED_FUNCTION_26_20();
    v33 = *(v0 + 368);
    v34 = *(v0 + 344);
    v36 = OUTLINED_FUNCTION_13_33(v35);
    v37(v36);
    (*(v0 + 24))(v27, v9);
    (*(v33 + 8))(v30, v34);

    OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_30_24();

    __asm { BRAA            X2, X16 }
  }

  v40 = OUTLINED_FUNCTION_21_30();
  SlidingWindows.subscript.getter(v40, v41);
  v42 = OUTLINED_FUNCTION_21_30();
  *(v0 + 440) = SlidingWindows.index(after:)(v42);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 448) = v43;
  *v43 = v44;
  OUTLINED_FUNCTION_1_79(v43);
  OUTLINED_FUNCTION_30_24();

  return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
}

uint64_t sub_237DBBF94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 456) = v0;

  v7 = *(v3 + 392);
  if (v0)
  {
    v8 = *(v3 + 368);
    v9 = *(v3 + 344);
    *(*(v3 + 312) + *(v3 + 148)) = *(v3 + 440);
    v10 = *(v8 + 8);
    *(v3 + 480) = v10;
    *(v3 + 488) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
  }

  else
  {
    v11 = *(v3 + 368);
    v12 = *(v3 + 344);
    v13 = *(v11 + 8);
    *(v3 + 464) = v13;
    *(v3 + 472) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7, v12);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_237DBC0F8()
{
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[54];
  v5 = v0[48];
  v6 = v0[43];
  (*(v0[46] + 16))(v0[47], v5, v6);
  OUTLINED_FUNCTION_21_30();
  sub_237EF8A20();
  (v3)(v5, v6);
  v7 = v0[55];
  if (v7 == SlidingWindows.endIndex.getter(v0[35]))
  {
    OUTLINED_FUNCTION_26_20();
    v8 = v0[46];
    v9 = v0[43];
    v11 = OUTLINED_FUNCTION_13_33(v10);
    v12(v11);
    (*(v3 + 8))(v4, v1);
    (*(v8 + 8))(v2, v9);

    OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X2, X16 }
  }

  v15 = OUTLINED_FUNCTION_21_30();
  SlidingWindows.subscript.getter(v15, v16);
  v17 = OUTLINED_FUNCTION_21_30();
  v0[55] = SlidingWindows.index(after:)(v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[56] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_1_79();
  OUTLINED_FUNCTION_58();

  return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
}

uint64_t sub_237DBC2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v13 = v12[60];
  v14 = v12[51];
  v15 = v12[43];
  (*(v12[38] + 8))(v12[39], v12[37]);
  v16 = OUTLINED_FUNCTION_9_9();
  v17(v16);
  v13(v14, v15);
  v27 = v12[57];
  OUTLINED_FUNCTION_14_41();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[14] = *(v2 + 16);
  v1[15] = *(v2 + 24);
  v7 = sub_237EF7E90();
  v1[16] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[17] = v8;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DBC4B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = type metadata accessor for MultivariateLinearRegressor.Model();
  v4 = MultivariateLinearRegressor.Model.inputSize.getter(v3);
  v5 = *(v1 + *(v2 + 44));
  result = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v2);
  if ((v5 * result) >> 64 != (v5 * result) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 != v5 * result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(sub_237EF7E20() + 16);

  if (v7 == 2)
  {
    v8 = v0[12];
    v9 = sub_237EF7E20();
    v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F04760;
    *(inited + 32) = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v8);
    *(inited + 40) = v5;
    v11 = sub_237C60C7C(v9, inited);

    swift_setDeallocating();
    if (v11)
    {
      v12 = v0[12];
      v13 = OUTLINED_FUNCTION_36_1();
      *(v13 + 16) = xmmword_237F04760;
      *(v13 + 32) = 1;
      result = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v12);
      if ((v5 * result) >> 64 == (v5 * result) >> 63)
      {
        *(v13 + 40) = v5 * result;
        sub_237EF7E60();

        swift_task_alloc();
        OUTLINED_FUNCTION_30_0();
        v0[21] = v14;
        *v14 = v15;
        v14[1] = sub_237DBC758;

        return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  v16 = sub_237EF7E20();
  sub_237C84150();
  v17 = swift_allocError();
  *v18 = v16;
  v18[1] = 0xD000000000000033;
  OUTLINED_FUNCTION_31_16(v17, v18);

  OUTLINED_FUNCTION_3_0();

  return v19();
}

uint64_t sub_237DBC758()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DBC854()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = OUTLINED_FUNCTION_36_1();
  *(v6 + 16) = xmmword_237F04760;
  *(v6 + 32) = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v5);
  *(v6 + 40) = *(v4 + *(v5 + 48));
  sub_237EF7E60();

  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_9_9();
  v7(v8);
  (v7)(v1, v3);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237DBC958()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[17] + 8))(v0[19], v0[16]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t LinearTimeSeriesForecaster.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v6[17] = *(a5 + 16);
  v6[18] = *(a5 + 24);
  v7 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v7);
  v6[19] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF7E90();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_getTupleTypeMetadata2();
  v9 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v9);
  v6[25] = OUTLINED_FUNCTION_27_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
  v6[26] = v10;
  v11 = type metadata accessor for SlidingWindows();
  v6[27] = v11;
  v12 = sub_237CE32D8();
  v6[28] = v12;
  WitnessTable = swift_getWitnessTable();
  v6[29] = WitnessTable;
  v6[2] = v10;
  v6[3] = v11;
  v6[4] = v12;
  v6[5] = WitnessTable;
  v14 = sub_237EF9380();
  v6[30] = v14;
  OUTLINED_FUNCTION_18(v14);
  v6[31] = OUTLINED_FUNCTION_27_0();
  v6[6] = v10;
  v6[7] = v11;
  v6[8] = v12;
  v6[9] = WitnessTable;
  v15 = sub_237EF9370();
  v6[32] = v15;
  OUTLINED_FUNCTION_6_1(v15);
  v6[33] = v16;
  v6[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_37();
  v6[35] = v17;
  v6[36] = OUTLINED_FUNCTION_27_0();
  v18 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_237DBCC68()
{
  v1 = *(sub_237EF7E20() + 16);

  if (v1 != 2)
  {
    goto LABEL_6;
  }

  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
    return result;
  }

  v3 = v0[15];
  v4 = v0[16];
  v5 = *(result + 40);

  if (v5 != *(v4 + *(v3 + 44)))
  {
LABEL_6:
    v18 = sub_237EF7E20();
    sub_237C84150();
    v19 = swift_allocError();
    *v20 = v18;
    v20[1] = 0xD000000000000025;
    OUTLINED_FUNCTION_31_16(v19, v20);
    OUTLINED_FUNCTION_17_35();

    OUTLINED_FUNCTION_3_0();
LABEL_7:
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[36];
  v8 = v0[15];
  v7 = v0[16];
  v9 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v8);
  sub_237C83E40(v9, *(v7 + *(v8 + 52)), v6);
  v10 = v0[31];
  v11 = v0[17];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_237F08A50;
  OUTLINED_FUNCTION_5_66();
  swift_getWitnessTable();
  *(v15 + 32) = sub_237EF8E20();
  *(v15 + 40) = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v13);
  *(v15 + 48) = *(v12 + *(v13 + 48));
  OUTLINED_FUNCTION_9_9();
  sub_237D14E78();
  v0[10] = 0;
  sub_237EFA000();
  sub_237EF9350();
  OUTLINED_FUNCTION_32_16();
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    v16 = OUTLINED_FUNCTION_6_53();
    v17(v16);
    (*(v14 + 8))(v10, v11);

    OUTLINED_FUNCTION_3_0();
    goto LABEL_7;
  }

  v23 = OUTLINED_FUNCTION_10_44();
  v24(v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[38] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_2_71(v25);
  OUTLINED_FUNCTION_58();

  return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
}

uint64_t sub_237DBCF9C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DBD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v13 = v12[26];
  v15 = v12[22];
  v14 = v12[23];
  v16 = v12[20];
  v17 = v12[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_237F04760;
  *(v18 + 56) = v13;
  v19 = sub_237CE3364();
  *(v18 + 32) = 0;
  *(v18 + 96) = v13;
  *(v18 + 104) = v19;
  *(v18 + 64) = v19;
  *(v18 + 72) = 0;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7FA0();

  sub_237EF7EA0();
  v22 = *(v17 + 8);
  v21 = v17 + 8;
  v20 = v22;
  v22(v15, v16);
  v22(v14, v16);
  OUTLINED_FUNCTION_32_16();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    v23 = OUTLINED_FUNCTION_6_53();
    v24(v23);
    (*(v21 + 8))(v20, v15);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_10_44();
    v35(v34);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v12[38] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_2_71();
    OUTLINED_FUNCTION_45();

    return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
  }
}

uint64_t sub_237DBD298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v13 = v12[35];
  v30 = v12[36];
  v15 = v12[33];
  v14 = v12[34];
  v16 = v12[32];
  v17 = v12[27];
  v18 = v12[20];
  v19 = v12[11];
  v20 = *(v12[21] + 8);
  v20(v12[23], v18);
  (*(v15 + 8))(v14, v16);
  v20(v19, v18);
  (*(v13 + 8))(v30, v17);
  OUTLINED_FUNCTION_17_35();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_237DBD3A4()
{
  sub_237EF7E90();
  swift_getWitnessTable();
  return sub_237D14E4C();
}

void sub_237DBD45C()
{
  sub_237EF8550();
  swift_getWitnessTable();
  meanSquaredError<A, B, C>(_:_:)();
}

uint64_t sub_237DBD504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return LinearTimeSeriesForecaster.Model.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237DBD5CC()
{
  result = type metadata accessor for MultivariateLinearRegressor.Model();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_44()
{
  result = *(v0 + 184);
  *(v0 + 296) = **(v0 + 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_33@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 312);
  *(v3 + a1) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_14_41()
{
}

uint64_t OUTLINED_FUNCTION_17_35()
{
}

uint64_t OUTLINED_FUNCTION_24_23()
{

  return type metadata accessor for MultivariateLinearRegressor.Model();
}

uint64_t OUTLINED_FUNCTION_31_16(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return sub_237EF9360();
}

uint64_t sub_237DBD8DC(uint64_t result, void *__dst, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return v3;
  }

  if (v3 <= a3)
  {
    memcpy(__dst, (result + 32), 8 * v3);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t LogisticRegressionClassifierModel.featureCount.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == 2)
  {
    return v2 - 1;
  }

  v3 = __OFSUB__(v1, 1);
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if (v4)
  {
    v2 /= v4;
    return v2 - 1;
  }

  __break(1u);
  return result;
}

uint64_t LogisticRegressionClassifierModel.coefficients.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  sub_237C96710(&qword_280C8CCD8, &qword_27DEB02F8);
  sub_237C9339C();
  v1 = v0;

  return v1;
}

void *sub_237DBDA84@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x59uLL);
  a4[12] = a2;
  a4[13] = a3;
  return result;
}

void LogisticRegressionClassifierModel.init<A>(coefficients:labels:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = sub_237E5E16C(a2, a4, a8, a12);
  v20 = v19;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a13;
  sub_237EF8260();
  sub_237EF8260();
  v22 = sub_237C8FFEC(sub_237DBDD24, v27, a5, MEMORY[0x277D839F8], MEMORY[0x277D84A98], a13, MEMORY[0x277D84AC0], v21);
  v23 = sub_237E5E170(v18, v20, a4, a8, a12);

  (*(*(a5 - 8) + 8))(a1, a5);
  *a9 = v22;
  a9[1] = v23;
  OUTLINED_FUNCTION_5_67();
  a9[12] = v18;
  a9[13] = v20;
}

uint64_t sub_237DBDC30(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  return sub_237EF8190();
}

double sub_237DBDD68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a4;
  v15 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](a1);
  a6[12] = v18;
  a6[13] = v19;
  (*(v15 + 16))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v16);
  sub_237EF8260();
  sub_237EF8260();
  v21 = sub_237EF8A90();
  v22 = sub_237E5E170(a2, a3, v25, a7, a10);

  (*(v15 + 8))(a1, a5);
  *a6 = v21;
  a6[1] = v22;
  return OUTLINED_FUNCTION_5_67();
}

uint64_t LogisticRegressionClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a4;
  v6[21] = a5;
  v6[18] = a2;
  v6[19] = a3;
  v6[17] = a1;
  memcpy(v6 + 2, v5, 0x70uLL);

  return MEMORY[0x2822009F8](sub_237DBDF7C, 0, 0);
}

void sub_237DBDF7C()
{
  v28 = v0;
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = sub_237EF7E90();
  v5 = *(sub_237EF7E20() + 16);

  v6 = sub_237EF7E20();
  v7 = v6;
  if (v5 == 1)
  {
    if (!*(v6 + 16))
    {

      __break(1u);
      JUMPOUT(0x2383E2DF0);
    }

    v8 = *(v6 + 32);

    if (v8 == LogisticRegressionClassifierModel.featureCount.getter())
    {
      isStackAllocationSafe = LogisticRegressionClassifierModel.featureCount.getter();
      if (isStackAllocationSafe < -1)
      {
        __break(1u);
      }

      else if (!((isStackAllocationSafe + 0x1000000000000001) >> 61))
      {
        v10 = isStackAllocationSafe + 1;
        if (8 * (isStackAllocationSafe + 1) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
        {
          MEMORY[0x28223BE20](isStackAllocationSafe);
          sub_237DBE404(&v24 - v11, v10, (v0 + 16), v2, v12[3], &v25, v3, v12[5], v12[6], v12[7], v12[8], v12[9]);
          **(v0 + 136) = v25;
          goto LABEL_11;
        }

        v22 = *(v0 + 168);
        v24 = *(v0 + 160);
        v23 = *(v0 + 136);
        v4 = swift_slowAlloc();
        sub_237DBE404(v4, v10, (v0 + 16), v2, v22[3], v23, v3, v22[5], v22[6], v22[7], v22[8], v22[9]);
        goto LABEL_18;
      }

      __break(1u);
LABEL_18:
      MEMORY[0x2383E2DF0](v4, -1, -1);
LABEL_11:
      OUTLINED_FUNCTION_45();

      __asm { BRAA            X1, X16 }
    }

    v7 = sub_237EF7E20();
    sub_237EF9330();

    v25 = 0xD00000000000001ELL;
    v26 = 0x8000000237EFD610;
    *(v0 + 128) = LogisticRegressionClassifierModel.featureCount.getter();
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](0x6F6720747562205DLL, 0xEA00000000002074);
    sub_237EF7E20();
    v16 = MEMORY[0x2383E0A10]();
    v18 = v17;

    MEMORY[0x2383E0710](v16, v18);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v14 = v25;
    v13 = v26;
  }

  else
  {
    v13 = 0x8000000237EFD5E0;
    v14 = 0xD000000000000024;
  }

  sub_237C84150();
  swift_allocError();
  *v19 = v7;
  *(v19 + 8) = v14;
  *(v19 + 16) = v13;
  *(v19 + 24) = 0;
  *(v19 + 32) = 6;
  swift_willThrow();
  goto LABEL_11;
}

uint64_t sub_237DBE404@<X0>(void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  sub_237EF7E90();
  swift_getWitnessTable();
  __dst[0] = sub_237EF7F50();
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237C9339C();
  v14 = v13;

  sub_237DBD8DC(v14, a1, a2);

  memcpy(__dst, a3, 0x70uLL);
  v23[0] = a4;
  v23[1] = v25;
  v23[2] = a7;
  v23[3] = a8;
  v23[4] = a9;
  v23[5] = a10;
  v23[6] = a11;
  v23[7] = a12;
  type metadata accessor for LogisticRegressionClassifierModel();
  result = LogisticRegressionClassifierModel.featureCount.getter();
  *(a1 + result) = 0x3FF0000000000000;
  if (a1)
  {
    memcpy(__dst, a3, 0x59uLL);
    v16 = __dst[0];
    v17 = *(__dst[0] + 16);
    if (__dst[1] == 2)
    {
      sub_237D4D938(__dst, v23);
      sub_237D4DDAC(a1, a2, 1, v16 + 32, v17, 1, v23);
    }

    else
    {
      sub_237D4D938(__dst, v23);
      sub_237D4E168(v17, __dst, a1, 1, v23);
    }

    v18 = sub_237CC9A9C(__dst);
    MEMORY[0x28223BE20](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD428);
    ClassificationDistribution.map<A>(_:)(a6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237DBE728(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  return sub_237EF8190();
}

uint64_t sub_237DBE81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_237EF90F0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v11 - v7;
  v9 = *(a1 + 8);
  sub_237E5E174(*a1, a2, v11 - v7);
  result = __swift_getEnumTagSinglePayload(v8, 1, a2);
  if (result != 1)
  {
    return Classification.init(label:probability:)(v8, a2, a3, v9);
  }

  __break(1u);
  return result;
}

void sub_237DBE914()
{
  OUTLINED_FUNCTION_13_4();
  v49 = v1;
  v47 = v2;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[5];
  v44 = v3[4];
  v45 = v5;
  v43 = v6;
  v7 = v3[7];
  v52 = v3[6];
  v53 = v4;
  v42 = v7;
  v8 = v3[9];
  v54 = v3[8];
  *&v55 = v5;
  *(&v55 + 1) = v4;
  v56 = v44;
  v57 = v6;
  v58 = v52;
  v59 = v7;
  v60 = v54;
  v61 = v8;
  v46 = type metadata accessor for LogisticRegressionClassifierModel.Storage();
  OUTLINED_FUNCTION_1();
  v48 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = *v0;
  v39 = *(v0 + 6);
  *&v55 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_237F03530;
  *(v22 + 32) = *(v21 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8);
  sub_237EF7E40();
  v50 = v14;
  v51 = v12;
  (*(v14 + 16))(v17, v20, v12);
  v40 = v8;
  v23 = v47;
  v24 = v41;
  sub_237DBED00(v17, v41);
  v25 = *(v23 + 24);
  v26 = *(v23 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v25);
  v27 = *(v26 + 8);
  v28 = v46;
  WitnessTable = swift_getWitnessTable();
  v30 = v49;
  v27(v24, v28, WitnessTable, v25, v26);
  v31 = OUTLINED_FUNCTION_7_24();
  v32(v31);
  if (v30)
  {
    (*(v50 + 8))(v20, v51);
  }

  else
  {
    v55 = v39;
    v33 = *(v23 + 24);
    v34 = *(v23 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v23, v33);
    v35 = v20;
    v36 = *(v34 + 8);
    v37 = type metadata accessor for LabelEncoder();
    v38 = swift_getWitnessTable();
    v36(&v55, v37, v38, v33, v34);
    (*(v50 + 8))(v35, v51);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DBED00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(type metadata accessor for LogisticRegressionClassifierModel.Storage() + 84);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  return (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
}

void sub_237DBEDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v72 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v64[0] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v70 = v40;
  v71 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  v68 = v33;
  v69 = v64 - v42;
  v73 = v35;
  v74 = v33;
  v75 = v31;
  v76 = v29;
  v66 = a21;
  v67 = v27;
  v77 = v27;
  v78 = v25;
  v64[1] = v25;
  v79 = v23;
  v80 = a21;
  v43 = type metadata accessor for LogisticRegressionClassifierModel.Storage();
  OUTLINED_FUNCTION_1();
  v65 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  v47 = v64 - v46;
  v49 = *(v37 + 24);
  v48 = *(v37 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v49);
  v50 = *(v48 + 8);
  WitnessTable = swift_getWitnessTable();
  v52 = v72;
  v50(v43, v43, WitnessTable, v49, v48);
  if (!v52)
  {
    (*(v70 + 16))(v69, &v47[*(v43 + 84)], v71);
    v53 = type metadata accessor for LabelEncoder();
    v54 = *(v37 + 24);
    v55 = *(v37 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v37, v54);
    v56 = *(v55 + 8);
    v57 = swift_getWitnessTable();
    v56(&v73, v53, v53, v57, v54, v55);
    v58 = v74;
    v72 = v73;
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60);
    v59 = v71;
    v60 = v69;
    v73 = sub_237EF7F50();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
    sub_237C96710(&qword_280C8CD38, &qword_27DEAECA8);
    sub_237DBDD68(&v73, v72, v58, v68, v61, v64[0], v67, v62, v63, v66);
    (*(v70 + 8))(v60, v59);
    (*(v65 + 8))(0, v43);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DBF124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return LogisticRegressionClassifierModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

void sub_237DBF1EC()
{
  OUTLINED_FUNCTION_13_4();
  v14 = v0;
  v3 = v2;
  v5 = v4[2];
  v15 = v4[1];
  v16 = v5;
  v6 = v4[4];
  v17 = v4[3];
  v18 = v6;
  type metadata accessor for LogisticRegressionClassifierModel.Storage.CodingKeys();
  OUTLINED_FUNCTION_1_80();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237EFA1B0();
  LOBYTE(v15) = 0;
  sub_237EF99D0();
  if (!v1)
  {
    LOBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    sub_237D0A15C(&qword_280C8CD70);
    sub_237EF9A70();
  }

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_12_6();
}

void sub_237DBF3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v66 = v22;
  v67 = v21;
  v24 = v23;
  v76 = v23;
  v25 = v22;
  v27 = v26;
  v65 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v60 = v38;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v59 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v62 = &v58 - v41;
  v68 = v35;
  v69 = v33;
  v70 = v31;
  v71 = v29;
  v72 = v27;
  v73 = v25;
  v74 = v24;
  v75 = a21;
  type metadata accessor for LogisticRegressionClassifierModel.Storage.CodingKeys();
  OUTLINED_FUNCTION_1_80();
  swift_getWitnessTable();
  v64 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v61 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  v68 = v35;
  v69 = v33;
  v70 = v31;
  v71 = v29;
  v72 = v65;
  v73 = v66;
  v74 = v76;
  v75 = a21;
  v44 = type metadata accessor for LogisticRegressionClassifierModel.Storage();
  OUTLINED_FUNCTION_1();
  v66 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  v48 = (&v58 - v47);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v49 = v67;
  sub_237EFA190();
  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v50 = v48;
    v67 = v44;
    v51 = v62;
    v52 = v63;
    LOBYTE(v68) = 0;
    *v50 = sub_237EF98D0();
    v50[1] = v53;
    LOBYTE(v68) = 1;
    sub_237D0A15C(&qword_280C8CD68);
    sub_237EF9970();
    v54 = OUTLINED_FUNCTION_3_35();
    v55(v54);
    v56 = v67;
    (*(v59 + 32))(v50 + *(v67 + 84), v51, v52);
    v57 = v66;
    (*(v66 + 16))(v60, v50, v56);
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v57 + 8))(v50, v56);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DBF73C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DBF790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237DBF834(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DBF870()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237DBF98C(_BYTE *result, unsigned int a2, unsigned int a3)
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

double OUTLINED_FUNCTION_5_67()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  *(v0 + 73) = 0u;
  return result;
}

uint64_t sub_237DBFAD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237DBFCA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_237DBFF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return sub_237DC00D0(v14, v10, a2, a3, a4);
}

uint64_t sub_237DC00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedRandomTransformer();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

void sub_237DC0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a4;
  v9[5] = a5;
  v9[2] = a1;
  v9[3] = a3;
  v11 = *(a6 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[10] = AssociatedTypeWitness;
  v10[11] = *(AssociatedTypeWitness - 8);
  v10[12] = swift_task_alloc();
  v14 = *(v11 + 24) + **(v11 + 24);
  v13 = swift_task_alloc();
  v10[13] = v13;
  *v13 = v10;
  v13[1] = sub_237DC0390;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DC0390()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 112) = v0;

  if (v0)
  {
    v5 = sub_237DC07C4;
  }

  else
  {
    v5 = sub_237DC0498;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237DC0498()
{
  v1 = v0[14];
  sub_237EF8B90();
  if (!v1)
  {
    v5 = (*(v0[6] + 40) + 24);
    v6 = *v5 + **v5;
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_237DC0644;

    __asm { BRAA            X8, X16 }
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237DC0644()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_237DC0820;
  }

  else
  {
    v5 = sub_237DC074C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237DC074C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DC07C4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DC0820()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

void sub_237DC0894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_237CEF6D4;

  sub_237DC0198(a1, a2, a3, a4, a5, a8, a6, a7);
}

uint64_t sub_237DC09F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237DC0A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v8 = *(a3 - 8);
  v41 = a2;
  v42 = v8;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2_2();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v40 = *(v19 + 16);
  v39 = *(v40 + 16);
  v34 = *(v39 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  result = DenseVector.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = a5;
    v22 = v34;
    if (result)
    {
      v23 = v12;
      v24 = 0;
      v25 = (v42 + 8);
      v35 = result;
      do
      {
        v42 = v24 + 1;
        v26 = a4;
        DenseVector.subscript.getter(v24, v38, a3, a4);
        sub_237EF9FD0();
        v27 = *v25;
        (*v25)(v15, a3);
        v28 = v15;
        v29 = v22;
        v30 = v23;
        v31 = v37;
        DenseVector.subscript.getter(v24, v41, a3, v26);
        sub_237EF8D30();
        v32 = v31;
        v23 = v30;
        v22 = v29;
        v15 = v28;
        v27(v32, a3);
        sub_237EF8D30();
        v27(v23, a3);
        sub_237EF9770();
        v27(v28, a3);
        v27(v18, a3);
        a4 = v26;
        result = v35;
        v24 = v42;
      }

      while (v35 != v42);
    }
  }

  return result;
}

uint64_t sub_237DC0DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v43 = a1;
  v7 = *(*(*(a4 + 16) + 16) + 8);
  v42 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v33 - v9;
  v44 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v33 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v33 - v21;
  result = DenseVector.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = v7;
    v41 = AssociatedTypeWitness;
    v38 = v13;
    v39 = v10;
    v37 = v22;
    if (result)
    {
      v24 = result;
      v34 = *v43++;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = 0;
      v33[0] = v44 + 8;
      v33[1] = AssociatedConformanceWitness;
      v35 = v24;
      v36 = a2;
      v45 = v4;
      do
      {
        v44 = v26 + 1;
        sub_237EF9FB0();
        sub_237EF9D20();
        v27 = v38;
        DenseVector.subscript.getter(v26, a2, a3, v4);
        sub_237EF8D30();
        v28 = *v33[0];
        (*v33[0])(v27, a3);
        v28(v16, a3);
        DenseVector.subscript.getter(v26, v34, a3, v45);
        v29 = v16;
        v30 = v37;
        sub_237EF8D30();
        v28(v29, a3);
        v28(v19, a3);
        DenseVector.subscript.getter(v26, *v43, a3, v45);
        sub_237EF9770();
        v31 = v30;
        v16 = v29;
        v28(v31, a3);
        a2 = v36;
        v4 = v45;
        v32 = type metadata accessor for DenseVector();
        result = DenseVector.subscript.setter(v19, v26, v32);
        v26 = v44;
      }

      while (v35 != v44);
    }
  }

  return result;
}

uint64_t sub_237DC1148()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = v3;
    swift_getAssociatedConformanceWitness();
    v0 = type metadata accessor for L2NormRegularizer();
    if (v5 <= 0x3F)
    {
      v0 = type metadata accessor for OptimizerState();
      if (v6 <= 0x3F)
      {
        v0 = type metadata accessor for OptimizerStatistics();
        if (v7 <= 0x3F)
        {
          if (v4 > 0x3F)
          {
            return AssociatedTypeWitness;
          }

          else
          {
            v0 = type metadata accessor for DenseMatrix();
            if (v8 <= 0x3F)
            {
              v0 = type metadata accessor for DenseVector();
              if (v9 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_237DC130C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = result;
  v16 = v13 | 7;
  if (v11 >= a2)
  {
LABEL_28:
    if (v7 == v11)
    {
      v24 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v25 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) == 0)
      {
        v26 = *v25;
        if (*v25 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      v24 = (v13 + ((((((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v13;
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v15);
  }

  v14 = *(*(result - 8) + 64);
  v17 = ((((((((((((((v14 + ((v14 + v13 + ((v13 + ((6 - (((-17 - ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) - v13) | v16) - v14) - ((((((-49 - v13) | v13) - (v14 + v13)) | v13) - (v14 + v13)) | v13)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v13)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = a1[v17];
      if (!a1[v17])
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    case 2:
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_24:
      v22 = (v21 - 1) << (8 * v17);
      if (v17 <= 3)
      {
        v23 = *a1;
      }

      else
      {
        v22 = 0;
        v23 = *a1;
      }

      result = v11 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_237DC1600(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= v12)
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = v16 | 7;
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = v18 + ((v18 + v16 + ((v18 + v16 + ((v16 + 48) & ~v16)) & ~v16)) & ~v16) + 1;
  v20 = ((((((((((((((v18 + ((v18 + v16 + ((v16 + ((v19 + ((v16 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~(v16 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v16)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v14 < a2)
  {
    v24 = ~v14 + a2;
    bzero(a1, v20);
    if (v20 <= 3)
    {
      v25 = (v24 >> 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v20 > 3)
    {
      *a1 = v24;
    }

    else
    {
      *a1 = v24;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_65;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }

    return;
  }

  switch(v23)
  {
    case 1:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_65:
      __break(1u);
      return;
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v26 = a1;
        v27 = a2;
        v12 = v9;
        AssociatedTypeWitness = v7;
LABEL_38:

        __swift_storeEnumTagSinglePayload(v26, v27, v12, AssociatedTypeWitness);
        return;
      }

      v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v29 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v29 = (a2 - 1);
        }

        *v28 = v29;
        return;
      }

      v30 = (((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17;
      if (v13 >= a2)
      {
        v26 = (v16 + ((((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16;
        v27 = a2;
        goto LABEL_38;
      }

      if (v19 <= 3)
      {
        v31 = ~(-1 << (8 * v19));
      }

      else
      {
        v31 = -1;
      }

      if (v19)
      {
        v32 = v31 & (~v13 + a2);
        if (v19 <= 3)
        {
          v33 = v19;
        }

        else
        {
          v33 = 4;
        }

        bzero(((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17), v19);
        switch(v33)
        {
          case 2:
            *v30 = v32;
            break;
          case 3:
            *v30 = v32;
            *(v30 + 2) = BYTE2(v32);
            break;
          case 4:
            *v30 = v32;
            break;
          default:
            *v30 = v32;
            break;
        }
      }

      return;
  }
}

void sub_237DC1A1C()
{
  OUTLINED_FUNCTION_13_4();
  v61 = v2;
  v62 = v1;
  v67 = v0;
  v4 = v3;
  v60 = v5;
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v64 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v54 = (v11 - v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  v53 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  v55 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v56 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v63 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  v23 = v52 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 8);
  v25 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26();
  v52[2] = v27 - v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v31 = v52 - v30;
  OUTLINED_FUNCTION_12_7();
  v59 = sub_237EFA1D0();
  OUTLINED_FUNCTION_4();
  v33 = MEMORY[0x28223BE20](v32);
  v58 = v52 - v34;
  v57 = (*(v6 + 32))(v7, v6, v33);
  v65 = v4;
  sub_237DC1FCC(v4);
  v35 = (v0 + *(v4 + 44));
  OUTLINED_FUNCTION_12_7();
  v52[0] = type metadata accessor for OptimizerState();
  v36 = v64;
  (*(v64 + 24))(v35 + *(v52[0] + 52), v60, AssociatedTypeWitness);
  v37 = OUTLINED_FUNCTION_28_6();
  v38 = DenseVector.init(scalars:)(v37);

  *v35 = v38;
  swift_getAssociatedConformanceWitness();
  v52[3] = v25;
  sub_237EF9FA0();
  v52[1] = v31;
  v60 = v24;
  sub_237EF9CE0();
  sub_237EF9430();
  v39 = v36 + 8;
  v40 = *(v36 + 8);
  v61 = v23;
  v40(v23, AssociatedTypeWitness);
  swift_getWitnessTable();
  v41 = AssociatedConformanceWitness;
  v42 = DenseVector.init<A>(scalars:)();

  v35[1] = v42;
  v43 = v62;
  sub_237DC26A8(v65);
  if (!v43)
  {
    DenseVector.maximumAbsoluteValue.getter(v35[1], AssociatedTypeWitness, v41);
    v62 = v40;
    OUTLINED_FUNCTION_7_51();
    sub_237EF9FA0();
    v59 = v39;
    sub_237EF9CE0();
    OUTLINED_FUNCTION_7_51();
    sub_237EF9FA0();
    v44 = v54;
    sub_237EF9CE0();
    v45 = *(*(v41 + 16) + 16);
    AssociatedConformanceWitness = *(v41 + 16);
    v60 = *(*(v45 + 8) + 8);
    v46 = v53;
    sub_237EF9750();
    v62(v44, AssociatedTypeWitness);
    sub_237EF9FD0();
    sub_237EF9750();
    v47 = v62;
    v62(v44, AssociatedTypeWitness);
    v47(v46, AssociatedTypeWitness);
    v48 = v61;
    v49 = v56;
    sub_237EF8330();
    v50 = OUTLINED_FUNCTION_28_6();
    (v47)(v50);
    v47(v49, AssociatedTypeWitness);
    v51 = v65;
    (*(v64 + 40))(v67 + *(v65 + 56), v48, AssociatedTypeWitness);
    sub_237DC27D8(v51);
    sub_237DC2AD8(v51);
    v47(v63, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DC1FCC(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = *(AssociatedConformanceWitness + 8);
  v63 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v63);
  v56 = &v49 - v7;
  v61 = sub_237EFA1D0();
  MEMORY[0x28223BE20](v61);
  v58 = &v49 - v8;
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - v10;
  v51 = AssociatedConformanceWitness;
  v11 = *(*(*(*(AssociatedConformanceWitness + 16) + 16) + 8) + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = *(v3 + 32);
  v62 = v1;
  v15 = v14(v4, v3, v13);
  v55 = v15;
  v16 = *(a1 + 40);
  v49 = a1;
  v17 = *(v1 + v16);
  v57 = v11;
  v53 = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v18 = v50;
  sub_237EF9D20();
  v19 = v15;
  v20 = v17;
  v54 = v17;
  DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v19, v17, v18, AssociatedTypeWitness, &v64);
  v21 = v64;
  v22 = v65;
  LOBYTE(v18) = v66;
  v23 = v67;
  v24 = v62;
  v25 = v62 + *(a1 + 60);

  *v25 = v21;
  *(v25 + 8) = v22;
  *(v25 + 16) = v18;
  *(v25 + 24) = v23;
  sub_237EF9FB0();
  v26 = v50;
  sub_237EF9D20();
  v27 = v26;
  DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v55, v20, v26, AssociatedTypeWitness, &v64);
  v28 = v64;
  v29 = v65;
  LOBYTE(v25) = v66;
  v30 = v67;
  v31 = v49;
  v32 = v24 + v49[16];

  *v32 = v28;
  *(v32 + 8) = v29;
  *(v32 + 16) = v25;
  *(v32 + 24) = v30;
  v53 = swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v33 = v59 + 8;
  v57 = *(v59 + 8);
  v57(v27, AssociatedTypeWitness);
  v59 = v33;
  WitnessTable = swift_getWitnessTable();
  v34 = DenseVector.init<A>(scalars:)();
  v35 = v31[17];
  v36 = v62;

  *(v36 + v35) = v34;
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v57(v27, AssociatedTypeWitness);
  v37 = DenseVector.init<A>(scalars:)();
  v38 = v31[18];
  v39 = v62;

  *(v39 + v38) = v37;
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v57(v27, AssociatedTypeWitness);
  v40 = DenseVector.init<A>(scalars:)();
  v41 = v49;
  v42 = v49[19];
  v43 = v62;

  *(v43 + v42) = v40;
  v64 = sub_237EF89A0();
  sub_237EF8A60();
  swift_getWitnessTable();
  v44 = DenseVector.init<A>(scalars:)();
  v45 = v41[20];

  *(v43 + v45) = v44;
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v57(v27, AssociatedTypeWitness);
  v46 = DenseVector.init<A>(scalars:)();
  v47 = v41[21];

  *(v43 + v47) = v46;
  *(v43 + v41[22]) = 0;
  return result;
}

uint64_t sub_237DC26A8(uint64_t a1)
{
  result = (*(*(a1 + 24) + 48))(v1 + *(a1 + 44), *(a1 + 16), *(a1 + 24));
  v4 = v1 + *(a1 + 48);
  v5 = *(v4 + 8);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 8) = v7;
  v8 = *(v4 + 16);
  v6 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v4 + 16) = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OptimizerState();
  result = sub_237EF8380();
  if ((result & 1) == 0)
  {
    sub_237DC6AD0();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DC27D8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v22 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v1 + *(a1 + 36));
  v28 = a1;
  v12 = (v1 + *(a1 + 44));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_237DC0DA8(v12, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v29 = v12;
  result = DenseVector.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v24 = v11;
    v25 = v4;
    if (result)
    {
      v16 = 0;
      do
      {
        DenseVector.subscript.getter(v16, v12[1], AssociatedTypeWitness, AssociatedConformanceWitness);
        sub_237EF8D40();
        v17 = type metadata accessor for DenseVector();
        DenseVector.subscript.setter(v10, v16++, v17);
      }

      while (v15 != v16);
    }

    v28 = *(v28 + 56);
    v23 = *(type metadata accessor for OptimizerState() + 48);
    v18 = v26;
    sub_237DC0A48(*v29, v24, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
    v19 = v27;
    sub_237EF9750();
    v20 = v25;
    v21 = *(v25 + 8);
    v21(v18, AssociatedTypeWitness);
    sub_237EF8D30();
    v21(v19, AssociatedTypeWitness);
    return (*(v20 + 40))(v29 + v23, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_237DC2AD8(uint64_t a1)
{
  v16[1] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = v1 + *(a1 + 44);
  v11 = *(v10 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.maximumAbsoluteValue.getter(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_237EF8330();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v13 = type metadata accessor for OptimizerState();
  (*(v4 + 40))(v10 + *(v13 + 44), v9, AssociatedTypeWitness);
  result = sub_237EF8380();
  if ((result & 1) == 0)
  {
    sub_237DC6AD0();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_237DC2CD8()
{
  OUTLINED_FUNCTION_13_4();
  v49 = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v46 = v7 - v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  v41 = v39 - v10;
  OUTLINED_FUNCTION_12_7();
  v11 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v42 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v47 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_16();
  v50 = v19;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v48 = v21;
  OUTLINED_FUNCTION_11_1();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v39 - v24;
  v26 = *(v3 + 32);
  v45 = v0;
  v26(v4, v3, v23);
  v44 = v5;
  v27 = *(v5 + 44);
  v28 = AssociatedConformanceWitness;
  v39[1] = type metadata accessor for OptimizerState();
  OUTLINED_FUNCTION_4();
  v30 = v49;
  (*(v29 + 24))(v0 + v27, v49);
  sub_237DC1FCC(v5);
  v31 = *(v30 + 8);
  v39[0] = v25;
  DenseVector.maximumAbsoluteValue.getter(v31, v11, v28);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_12_38();
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_12_38();
  v32 = v42;
  OUTLINED_FUNCTION_22_13();
  sub_237EF9750();
  v33 = *(v51 + 8);
  v34 = OUTLINED_FUNCTION_38();
  v33(v34);
  sub_237EF9FD0();
  v35 = v47;
  sub_237EF9750();
  v36 = OUTLINED_FUNCTION_38();
  v33(v36);
  (v33)(v32, v11);
  v37 = v48;
  sub_237EF8330();
  (v33)(v35, v11);
  v38 = OUTLINED_FUNCTION_38();
  v33(v38);
  (v33)(v39[0], v11);
  (*(v51 + 40))(v45 + *(v44 + 56), v37, v11);
  OUTLINED_FUNCTION_12_6();
}

void sub_237DC30FC(int *a1)
{
  v4 = a1[12];
  if (*(v1 + v4))
  {
    sub_237DC33AC(a1);
    if (v2)
    {
      return;
    }
  }

  else
  {
    sub_237DC3164(a1);
    if (v2)
    {
      return;
    }
  }

  sub_237DC2AD8(a1);
  v5 = *(v1 + v4);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v4) = v7;
  }
}

uint64_t sub_237DC3164(int *a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v17 - v5;
  v7 = v1 + a1[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = static DenseVector.- prefix(_:)();
  v10 = v19;
  sub_237DC351C(v9, a1);

  if (!v10)
  {
    v19 = type metadata accessor for OptimizerState();
    sub_237EF9410();
    v17 = *(v7 + 8);
    v12 = static DenseVector.* infix(_:_:)(v6, v17);
    v13 = v18;
    (*(v18 + 8))(v6, AssociatedTypeWitness);
    v14 = a1[20];

    *(v2 + v14) = v12;
    static DenseVector.+= infix(_:_:)(v7, v12, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v13 + 24))(v2 + a1[13], v7 + *(v19 + 48), AssociatedTypeWitness);
    v15 = a1[21];
    v16 = v17;

    *(v2 + v15) = v16;
    sub_237DC26A8(a1);
    return sub_237DC27D8(a1);
  }

  return result;
}

void sub_237DC33AC(int *a1)
{
  sub_237DC39B8();
  if (!v2)
  {
    sub_237DC41BC(a1, v4, v5, v6, v7, v8, v9, v10, v19, v20, SWORD2(v20), SBYTE6(v20), SHIBYTE(v20));
    v11 = v1 + a1[11];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v13 = type metadata accessor for OptimizerState();
    (*(*(AssociatedTypeWitness - 8) + 24))(v1 + a1[13], v11 + *(v13 + 48), AssociatedTypeWitness);
    v14 = *(v11 + 8);
    v15 = a1[21];

    v16 = 0;
    *(v1 + v15) = v14;
    *(v1 + a1[22]) = 0;
    v17 = 1;
    while ((v17 & 1) != 0)
    {
      sub_237DC26A8(a1);
      sub_237DC27D8(a1);
      v17 = sub_237DC4480(v16, a1);
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_237DC351C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v71 = a2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = v5;
  v68 = AssociatedTypeWitness;
  v69 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v4;
  v65 = type metadata accessor for LineSearch.LineSearchResult();
  v54 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v51 - v7;
  v56 = *(AssociatedTypeWitness - 8);
  v8 = v56;
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v51 - v12;
  v13 = *(v5 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v16;
  v61 = type metadata accessor for LineSearch();
  v53 = *(v61 - 8);
  v17 = MEMORY[0x28223BE20](v61);
  v19 = &v51 - v18;
  (*(v13 + 16))(v16, v3, v5, v17);
  v20 = v71[9];
  v59 = v3;
  v21 = *(v3 + v20);
  v22 = (v3 + v71[11]);
  v23 = type metadata accessor for OptimizerState();
  v58 = *(v23 + 52);
  v24 = *(v8 + 16);
  v25 = v60;
  v24(v60, v22 + v58, AssociatedTypeWitness);
  v52 = v23;
  v26 = v22 + *(v23 + 48);
  v27 = v63;
  v24(v63, v26, AssociatedTypeWitness);
  v28 = *v22;
  v29 = v22[1];

  v30 = v66;

  v31 = v21;
  v32 = v61;
  v33 = v25;
  v34 = v19;
  sub_237DC7B00(v57, v31, v33, v27, v28, v29, v30, v5, v62, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v35 = v71;
  v36 = *(v56 + 24);
  v37 = v59;
  v36(&v19[*(v32 + 48)], v59 + v71[14], AssociatedTypeWitness);
  v38 = v64;
  sub_237DC860C();
  result = (v36)(v22 + v58, v38, AssociatedTypeWitness);
  v40 = v65;
  v41 = *&v38[*(v65 + 56)];
  v42 = v37 + v35[12];
  v43 = *(v42 + 8);
  v44 = __OFADD__(v43, v41);
  v45 = v43 + v41;
  if (v44)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v42 + 8) = v45;
  v46 = *&v38[*(v40 + 60)];
  v47 = *(v42 + 16);
  v44 = __OFADD__(v47, v46);
  v48 = v47 + v46;
  if (v44)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v42 + 16) = v48;
  v49 = v38[*(v40 + 52)];
  (*(v54 + 8))(v38);
  if ((v49 & 1) == 0)
  {
    *(v22 + *(v52 + 56)) = 1;
  }

  return (*(v53 + 8))(v34, v32);
}

void sub_237DC39B8()
{
  OUTLINED_FUNCTION_13_4();
  v79 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  swift_getAssociatedTypeWitness();
  v85 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v81 = v69 - v15;
  OUTLINED_FUNCTION_12_7();
  v16 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v78 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v80 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v86 = v69 - v28;
  v29 = *(v2 + v4[12]);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = *(v2 + v4[10]);
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 != 0x8000000000000000 || v32 != -1)
  {
    v69[2] = v27;
    v70 = v26;
    v71 = v13;
    v87 = v25;
    v83 = AssociatedTypeWitness;
    v84 = AssociatedConformanceWitness;
    v88 = v4;
    v34 = v31 % v32;
    MEMORY[0x28223BE20](v24);
    v35 = v85;
    v69[-4] = v85;
    v69[-3] = v6;
    v69[-2] = v2;
    OUTLINED_FUNCTION_23_8();
    v36 = type metadata accessor for DenseMatrix();
    v82 = v8;
    v37 = v36;
    v38 = v79;
    v39 = sub_237CC86F0(v34, sub_237DC6B74, &v69[-6], v36, MEMORY[0x277D84F78] + 8);
    MEMORY[0x28223BE20](v39);
    v69[-4] = v35;
    v69[-3] = v6;
    v75 = v6;
    v69[-2] = v2;
    v40 = sub_237CC86F0(v34, sub_237DC6B94, &v69[-6], v37, MEMORY[0x277D84F78] + 8);
    v72 = v88[20];
    v41 = *(v2 + v72);
    MEMORY[0x28223BE20](v40);
    v69[-4] = v35;
    v69[-3] = v6;
    v69[-2] = v2;
    v69[-1] = v34;

    v42 = v84;
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237DC6BB4, &v69[-6], v41, v16, v16, v84);
    v74 = v38;

    v73 = swift_getAssociatedConformanceWitness();
    sub_237EF9FA0();
    v43 = v80;
    OUTLINED_FUNCTION_5_68();
    sub_237EF9CE0();
    v44 = *(v42 + 16);
    v45 = v87;
    v79 = v44;
    sub_237EF8330();
    v46 = v78 + 8;
    v76 = *(v78 + 8);
    v76(v43, v16);
    OUTLINED_FUNCTION_23_8();
    v47 = type metadata accessor for DenseVector();
    DenseVector.subscript.setter(v45, v34, v47);
    v77 = v2 + v88[11];
    v48 = *(v77 + 8);
    v49 = v88[17];

    *(v2 + v49) = v48;
    MEMORY[0x28223BE20](v50);
    v52 = v74;
    v51 = v75;
    v69[-4] = v85;
    v69[-3] = v51;
    v69[-2] = v2;
    v69[-1] = v34;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237DC6BD4, &v69[-6], v47, MEMORY[0x277D84F78] + 8);
    if (sub_237DC63C8(v88))
    {
      v53 = v84;
      v54 = v49;
      v55 = static DenseVector.- prefix(_:)();
      sub_237DC351C(v55, v88);
      if (v52)
      {
        v76(v86, v16);

LABEL_16:
        OUTLINED_FUNCTION_12_6();
        return;
      }

      v85 = v54;

      v64 = v87;
      v60 = v76;
    }

    else
    {
      v85 = v49;
      OUTLINED_FUNCTION_23_8();
      v53 = v84;
      v56 = *(type metadata accessor for OptimizerState() + 52);
      sub_237EF9FA0();
      OUTLINED_FUNCTION_5_68();
      sub_237EF9CE0();
      v57 = *(*(v79 + 24) + 8);
      v74 = v56;
      v69[1] = v57;
      v58 = sub_237EF8410();
      v59 = OUTLINED_FUNCTION_22_13();
      v60 = v76;
      (v76)(v59);
      if (v58)
      {
        sub_237EF9FA0();
        v75 = v46;
        OUTLINED_FUNCTION_5_68();
        sub_237EF9CE0();
        OUTLINED_FUNCTION_38();
        sub_237EF9FA0();
        OUTLINED_FUNCTION_5_68();
        sub_237EF9CE0();
        v61 = v77;
        v62 = v70;
        sub_237EF8D30();
        v63 = OUTLINED_FUNCTION_22_13();
        v60(v63);
        v64 = v87;
        v65 = v80;
        sub_237EF9FF0();
        (v60)(v62, v16);
        (v60)(v65, v16);
        (*(v78 + 40))(v61 + v74, v64, v16);
LABEL_15:
        OUTLINED_FUNCTION_23_8();
        type metadata accessor for OptimizerState();
        sub_237EF9410();
        v66 = static DenseVector.* infix(_:_:)(v64, *(v2 + v85));
        v67 = OUTLINED_FUNCTION_22_13();
        v60(v67);
        v68 = v72;

        *(v2 + v68) = v66;
        static DenseVector.+= infix(_:_:)(v61, v66, v16, v53);
        (v60)(v86, v16);
        goto LABEL_16;
      }

      v64 = v87;
    }

    v61 = v77;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_237DC41BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_13_4();
  v47 = v14;
  v16 = v15;
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  OUTLINED_FUNCTION_12_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v48 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v43 - v32;
  v34 = *(v13 + *(v16 + 80));
  v45 = v18;
  v46 = v17;
  v35 = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v35;
  DenseVector.squaredMagnitude.getter(v35, AssociatedTypeWitness, AssociatedConformanceWitness);
  v44 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_28_6();
  sub_237EF8390();
  OUTLINED_FUNCTION_28_6();
  sub_237EF8390();
  v37 = v48;
  sub_237EF8D30();
  v38 = *(v21 + 8);
  v38(v25, AssociatedTypeWitness);
  v38(v28, AssociatedTypeWitness);
  LOBYTE(v28) = sub_237EF8430();
  v38(v37, AssociatedTypeWitness);
  v39 = (v38)(v33, AssociatedTypeWitness);
  if (v28)
  {
    v40 = 0;
LABEL_5:
    sub_237DC6AD0();
    swift_allocError();
    *v42 = v40;
    swift_willThrow();
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v39);
  v41 = v46;
  *(&v43 - 2) = v45;
  *(&v43 - 1) = v41;
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237DC6B24, (&v43 - 4), v43, AssociatedTypeWitness, MEMORY[0x277D839B0], v44);
  if ((a13 & 1) == 0)
  {
    v40 = 1;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DC4480(uint64_t a1, int *a2)
{
  v3 = v2;
  v66 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = &v44 - v6;
  v7 = *(AssociatedConformanceWitness + 16);
  v50 = *(*(v7 + 16) + 8);
  v58 = *(v50 + 16);
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v8);
  v57 = &v44 - v9;
  v10 = swift_checkMetadataState();
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v60 = &v44 - v15;
  MEMORY[0x28223BE20](v16);
  v59 = &v44 - v17;
  MEMORY[0x28223BE20](v18);
  v64 = &v44 - v19;
  v65 = a2;
  v20 = a2[13];
  v21 = v3 + a2[11];
  v22 = AssociatedConformanceWitness;
  v48 = type metadata accessor for OptimizerState();
  v23 = *(v48 + 48);
  v51 = v7;
  v24 = *(*(v7 + 24) + 8);
  v53 = v23;
  v54 = v20;
  v62 = v24;
  v25 = 0;
  if ((v66 < 1) | ((sub_237EF8430() & 1) == 0) && v66 <= 2)
  {
    v26 = *(v21 + 8);
    v47 = v21;
    v45 = v65[20];
    v46 = v3;
    v27 = *(v3 + v45);
    v28 = v22;
    v29 = v64;
    dot<A>(_:_:)(v26, v27, v10, v28);
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    v30 = v59;
    sub_237EF9D20();
    v31 = sub_237EF8400();
    v32 = *(v61 + 8);
    v32(v30, v10);
    if (v31)
    {
      v33 = *(v46 + v65[21]);
      v44 = v27;
      dot<A>(_:_:)(v33, v27, v10, v28);
      v57 = v28;
      sub_237DC6DAC();
      v61 = swift_getAssociatedConformanceWitness();
      sub_237EF9FA0();
      sub_237EF9CE0();
      v34 = sub_237EF8520();
      v32(v30, v10);
      v35 = v32;
      if (v34)
      {
        v25 = 0;
        v36 = v63;
      }

      else
      {
        sub_237EF9FA0();
        sub_237EF9CE0();
        v37 = sub_237EF8410();
        v58 = v32;
        v32(v30, v10);
        if ((v37 & 1) != 0 || v66 == 2)
        {
          *(v46 + v65[22]) = 1;
        }

        sub_237EF9FA0();
        sub_237EF9CE0();
        v36 = v63;
        v38 = sub_237EF8420();
        v58(v30, v10);
        if (v38 & 1) != 0 && (sub_237EF8430())
        {
          v25 = 0;
          v35 = v58;
          v58(v36, v10);
LABEL_15:
          v35(v60, v10);
          v35(v64, v10);
          return v25;
        }

        sub_237EF8D40();
        sub_237EF9FA0();
        v39 = v49;
        sub_237EF9CE0();
        sub_237EF9760();
        v40 = v39;
        v35 = v58;
        v58(v40, v10);
        v41 = v57;
        v42 = static DenseVector.* infix(_:_:)(v30, v44);
        v35(v30, v10);
        static DenseVector.-= infix(_:_:)(v47, v42, v10, v41);

        static DenseVector.*= infix(_:_:)();
        v25 = 1;
      }

      v35(v36, v10);
      goto LABEL_15;
    }

    v25 = 0;
    v32(v29, v10);
  }

  return v25;
}

void sub_237DC4BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14 - v8;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a2)
  {
    v10 = *(type metadata accessor for LBFGSOptimizer() + 80);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = 0;
    while (1)
    {
      DenseVector.subscript.getter(v12, *(v16 + v10), AssociatedTypeWitness, AssociatedConformanceWitness);
      v13 = v12 * a3;
      if ((v12 * a3) >> 64 != (v12 * a3) >> 63)
      {
        break;
      }

      ++v12;
      (*(v7 + 40))(v15 + *(v7 + 72) * v13, v9, AssociatedTypeWitness);
      if (a2 == v12)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

void sub_237DC4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v23 = a1;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a2)
  {
    v14 = type metadata accessor for LBFGSOptimizer();
    v22 = v26 + *(v14 + 44);
    v21 = *(v14 + 84);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = 0;
    v17 = (v25 + 8);
    v20[2] = v25 + 40;
    while (1)
    {
      DenseVector.subscript.getter(v16, *(v22 + 8), AssociatedTypeWitness, AssociatedConformanceWitness);
      DenseVector.subscript.getter(v16, *(v26 + v21), AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_237EF9760();
      v18 = *v17;
      (*v17)(v7, AssociatedTypeWitness);
      v18(v10, AssociatedTypeWitness);
      v19 = v16 * v24;
      if ((v16 * v24) >> 64 != (v16 * v24) >> 63)
      {
        break;
      }

      ++v16;
      (*(v25 + 40))(v23 + *(v25 + 72) * v19, v13, AssociatedTypeWitness);
      if (a2 == v16)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_237DC5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *(type metadata accessor for LBFGSOptimizer() + 60));
  v14 = *(v13 + 16);
  v15 = *(v13 + 3);
  v20 = *v13;
  v21 = v14;
  v22 = v15;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for DenseMatrix();

  sub_237CC8544(a5, sub_237DC6D18, v19, v17, AssociatedTypeWitness);
}

void sub_237DC5150()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dot<A>(_:_:)();
}

uint64_t sub_237DC521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v86 = a5;
  v92 = a3;
  v93 = a2;
  v91 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v82 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v80 = &v74 - v17;
  result = type metadata accessor for LBFGSOptimizer();
  v75 = *(result + 48);
  v19 = *(v75 + a4);
  v76 = result;
  v85 = *(result + 40);
  if (*(a4 + v85) >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(a4 + v85);
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v84 = a7;
  v90 = a6;
  v87 = a4;
  v97 = AssociatedTypeWitness;
  if (v20)
  {
    v21 = 0;
    v22 = *(v76 + 60);
    v78 = (a4 + *(v76 + 64));
    v77 = a4 + v22;
    v79 = v20;
    while (1)
    {
      v23 = *(a4 + v85);
      v24 = v86 + v23;
      if (__OFADD__(v86, v23))
      {
        goto LABEL_38;
      }

      v25 = __OFSUB__(v24, v21);
      v26 = v24 - v21;
      if (v25)
      {
        goto LABEL_39;
      }

      if (!v23)
      {
        goto LABEL_40;
      }

      if (v26 == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_41;
      }

      v89 = &v74;
      v21 = (v21 + 1);
      v28 = *(v78 + 16);
      v29 = *(v78 + 3);
      v94 = *v78;
      v30 = v26 % v23;
      v95 = v28;
      v96 = v29;
      MEMORY[0x28223BE20](result);
      v31 = v90;
      v32 = v84;
      *(&v74 - 8) = v90;
      *(&v74 - 7) = v32;
      *(&v74 - 6) = v87;
      *(&v74 - 5) = v30;
      v88 = v8;
      v34 = v91;
      v33 = v92;
      v35 = v93;
      *(&v74 - 4) = v91;
      *(&v74 - 3) = v35;
      *(&v74 - 2) = v33;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = type metadata accessor for DenseMatrix();

      v37 = v88;
      sub_237CC8544(v30, sub_237DC6BF4, (&v74 - 10), v36, MEMORY[0x277D84F78] + 8);
      v88 = v37;

      v38 = *(v77 + 16);
      v39 = *(v77 + 24);
      v94 = *v77;
      v95 = v38;
      v96 = v39;
      MEMORY[0x28223BE20](v39);
      *(&v74 - 8) = v31;
      *(&v74 - 7) = v32;
      a4 = v87;
      v40 = v93;
      *(&v74 - 6) = v34;
      *(&v74 - 5) = v40;
      *(&v74 - 4) = v33;
      *(&v74 - 3) = a4;
      *(&v74 - 2) = v30;

      v41 = v88;
      sub_237CC8544(v30, sub_237DC6C20, (&v74 - 10), v36, MEMORY[0x277D84F78] + 8);
      v8 = v41;

      if (v79 == v21)
      {
        v42 = AssociatedConformanceWitness;
        a7 = v84;
        a6 = v90;
        AssociatedTypeWitness = v97;
        goto LABEL_17;
      }
    }
  }

  result = swift_getAssociatedConformanceWitness();
  v42 = result;
LABEL_17:
  v88 = &v74;
  v43 = (a4 + *(v76 + 60));
  v44 = *(v43 + 16);
  v45 = *(v43 + 3);
  v79 = v43;
  v94 = *v43;
  v95 = v44;
  v96 = v45;
  MEMORY[0x28223BE20](result);
  *(&v74 - 8) = a6;
  *(&v74 - 7) = a7;
  v46 = v92;
  v47 = v93;
  *(&v74 - 6) = v91;
  *(&v74 - 5) = v47;
  *(&v74 - 4) = v46;
  *(&v74 - 3) = a4;
  v48 = v86;
  *(&v74 - 2) = v86;
  v49 = type metadata accessor for DenseMatrix();

  v89 = v49;
  sub_237CC8544(v48, sub_237DC6C4C, (&v74 - 10), v49, MEMORY[0x277D84F78] + 8);
  v50 = v8;

  if (*(a4 + v85) >= *(v75 + a4))
  {
    v51 = *(v75 + a4);
  }

  else
  {
    v51 = *(a4 + v85);
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (v51)
  {
    AssociatedConformanceWitness = v42;
    v77 = *(v76 + 72);
    v76 = a4 + *(v76 + 64);
    v75 = (v74 + 8);
    v52 = v51;
    v78 = v51;
    while (v51 >= v52)
    {
      v53 = *(a4 + v85);
      v54 = v86 + v53;
      if (__OFADD__(v86, v53))
      {
        goto LABEL_34;
      }

      v52 = (v52 - 1);
      v25 = __OFSUB__(v54, v52);
      v55 = v54 - v52;
      if (v25)
      {
        goto LABEL_35;
      }

      if (!v53)
      {
        goto LABEL_36;
      }

      if (v55 == 0x8000000000000000 && v53 == -1)
      {
        goto LABEL_37;
      }

      v57 = v55 % v53;
      v58 = v81;
      DenseVector.subscript.getter(v55 % v53, *(a4 + v77), AssociatedTypeWitness, AssociatedConformanceWitness);
      v59 = *(v79 + 16);
      v60 = *(v79 + 3);
      v94 = *v79;
      v95 = v59;
      v96 = v60;
      MEMORY[0x28223BE20](v60);
      v61 = v91;
      v62 = v84;
      *(&v74 - 6) = v90;
      *(&v74 - 5) = v62;
      v63 = v92;
      v64 = v93;
      *(&v74 - 4) = v61;
      *(&v74 - 3) = v64;
      *(&v74 - 2) = v63;

      v65 = v82;
      sub_237CC8544(v57, sub_237DC6CB4, (&v74 - 8), v89, v97);
      v88 = v50;

      v66 = v80;
      sub_237EF8D30();
      v67 = *v75;
      (*v75)(v65, v97);
      v67(v58, v97);
      v68 = *(v76 + 16);
      v69 = *(v76 + 24);
      v94 = *v76;
      v95 = v68;
      v96 = v69;
      MEMORY[0x28223BE20](v69);
      v70 = v91;
      *(&v74 - 8) = v90;
      *(&v74 - 7) = v62;
      a4 = v87;
      v71 = v92;
      v72 = v93;
      *(&v74 - 6) = v70;
      *(&v74 - 5) = v72;
      *(&v74 - 4) = v71;
      *(&v74 - 3) = a4;
      AssociatedTypeWitness = v97;
      *(&v74 - 2) = v57;
      *(&v74 - 1) = v66;

      v73 = v88;
      sub_237CC8544(v57, sub_237DC6CE0, (&v74 - 10), v89, MEMORY[0x277D84F78] + 8);
      v50 = v73;

      result = (v67)(v66, AssociatedTypeWitness);
      v51 = v78;
      if (!v52)
      {
        return result;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_237DC5994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a3;
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v31 = a5;
  v28 = a1;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v24 = type metadata accessor for LBFGSOptimizer();
  v19 = *(a4 + *(v24 + 72));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.subscript.getter(v31, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  UnsafeVectorPointer.init(_:)(v25, v26, v27, AssociatedTypeWitness);
  dot<A>(_:_:)();
  sub_237EF8D30();
  v21 = *(v10 + 8);
  v21(v12, AssociatedTypeWitness);
  v21(v15, AssociatedTypeWitness);
  v22 = type metadata accessor for DenseVector();
  return DenseVector.subscript.setter(v18, v31, v22);
}

uint64_t sub_237DC5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = *(a7 + *(type metadata accessor for LBFGSOptimizer() + 76));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.subscript.getter(a8, v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_237EF9410();
  v19 = *(v11 + 8);
  v19(v13, AssociatedTypeWitness);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v22, v23, v24, v16, v25, v26, v27, AssociatedTypeWitness, AssociatedConformanceWitness, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return (v19)(v16, AssociatedTypeWitness);
}

uint64_t sub_237DC5D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a4;
  v35 = a5;
  v31[4] = a2;
  v31[5] = a3;
  v31[2] = a10;
  v31[3] = a1;
  v31[1] = a9;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v31 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v31 - v22;
  MEMORY[0x28223BE20](v24);
  v31[0] = v31 - v25;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v26 = AssociatedConformanceWitness;
  UnsafeVectorPointer<A>.squaredMagnitude.getter();
  v27 = type metadata accessor for LBFGSOptimizer();
  DenseVector.subscript.getter(v33, *(v32 + *(v27 + 72)), v11, v26);
  sub_237EF8D30();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v28(v17, v11);
  v29 = v31[0];
  sub_237EF8330();
  v28(v20, v11);
  v28(v23, v11);
  UnsafeMutableVectorPointer<A>.multiply(by:)(v29, v34, v35, v36);
  return (v28)(v29, v11);
}

void sub_237DC60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  UnsafeVectorPointer.init(_:)(a4, a5, a6, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dot<A>(_:_:)();
}

uint64_t sub_237DC61EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = *(a7 + *(type metadata accessor for LBFGSOptimizer() + 76));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.subscript.getter(a8, v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_237EF9760();
  v19 = *(v11 + 8);
  v19(v13, AssociatedTypeWitness);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v22, v23, v24, v16, v25, v26, v27, AssociatedTypeWitness, AssociatedConformanceWitness, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return (v19)(v16, AssociatedTypeWitness);
}

uint64_t sub_237DC63C8(int *a1)
{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](&v30 - v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v22 = &v30 - v21;
  if (*(v2 + a1[22]) & 1) != 0 || !*(v2 + a1[12]) || (v35 = v17, v36 = v19, v38 = v18, v39 = v20, v37 = v5, v23 = v2 + a1[11], type metadata accessor for OptimizerState(), v32 = *(AssociatedConformanceWitness + 16), v33 = v23, v34 = *(*(v32 + 24) + 8), (sub_237EF8400()))
  {
    v24 = 1;
  }

  else
  {
    v31 = *(v33 + 8);
    v33 = *(v2 + a1[21]);
    dot<A>(_:_:)(v31, v33, v7, AssociatedConformanceWitness);
    sub_237EF8D30();
    swift_getAssociatedConformanceWitness();
    sub_237EF9FA0();
    sub_237EF9CE0();
    DenseVector.squaredMagnitude.getter(v31, v7, AssociatedConformanceWitness);
    v26 = v35;
    sub_237EF8D30();
    v27 = *(v38 + 8);
    v27(v9, v7);
    v27(v12, v7);
    DenseVector.squaredMagnitude.getter(v33, v7, AssociatedConformanceWitness);
    v28 = v36;
    sub_237EF8D30();
    v27(v12, v7);
    v27(v26, v7);
    v29 = v39;
    v24 = sub_237EF8400();
    v27(v28, v7);
    v27(v29, v7);
    v27(v22, v7);
  }

  return v24 & 1;
}

uint64_t sub_237DC6814@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeVectorPointer();
  swift_getWitnessTable();
  v2 = sub_237EF8750();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_237DC6910@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_12_7();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_237EF8380();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237DC69A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for OptimizerState();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_237DC6AD0()
{
  result = qword_27DEB3590[0];
  if (!qword_27DEB3590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3590);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_237EF9CE0();
}

void sub_237DC6DAC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v140 = v4;
  v123 = v5;
  v110 = v6;
  v133 = v7;
  v109 = v8;
  v118 = *(v0 + 16);
  OUTLINED_FUNCTION_40_10(v118);
  v135 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v109 - v11;
  v13 = *(v1 + 8);
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v109 - v16;
  OUTLINED_FUNCTION_1_1();
  v132 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v131 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v142 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v122 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v129 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v128 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_16();
  v127 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_16();
  v126 = v34;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v109 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v109 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  v125 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  v51 = &v109 - v50;
  OUTLINED_FUNCTION_14_19();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115 = v14;
  v113 = AssociatedConformanceWitness;
  sub_237EF9FA0();
  v117 = v51;
  v114 = v17;
  OUTLINED_FUNCTION_18_16();
  v116 = v13;
  sub_237EF9CE0();
  OUTLINED_FUNCTION_34_9();
  v134 = swift_getAssociatedConformanceWitness();
  v130 = v12;
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  v53 = *(v137 + 8);
  OUTLINED_FUNCTION_20_30();
  sub_237EF9760();
  OUTLINED_FUNCTION_46_11();
  sub_237EF8D30();
  v55 = (v132 + 8);
  v54 = *(v132 + 1);
  v56 = OUTLINED_FUNCTION_11_19();
  v54(v56);
  (v54)(v40, v3);
  v136 = v46;
  OUTLINED_FUNCTION_20_30();
  sub_237EF9750();
  v57 = OUTLINED_FUNCTION_23_12();
  v54(v57);
  OUTLINED_FUNCTION_20_30();
  sub_237EF9750();
  (v54)(v46, v3);
  OUTLINED_FUNCTION_24_24();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  OUTLINED_FUNCTION_20_30();
  sub_237EF9760();
  OUTLINED_FUNCTION_46_11();
  sub_237EF8D30();
  v112 = v37;
  v58 = OUTLINED_FUNCTION_11_19();
  v54(v58);
  (v54)(v40, v3);
  OUTLINED_FUNCTION_20_30();
  sub_237EF9760();
  v59 = OUTLINED_FUNCTION_23_12();
  v54(v59);
  OUTLINED_FUNCTION_24_24();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  v60 = v123;
  sub_237EF8D30();
  v111 = v40;
  (v54)(v40, v3);
  v141 = v53;
  sub_237EF9760();
  v124 = v43;
  v61 = OUTLINED_FUNCTION_23_12();
  v54(v61);
  v62 = OUTLINED_FUNCTION_11_19();
  v139 = v54;
  v140 = v55;
  v54(v62);
  v63 = v132 + 16;
  v64 = *(v132 + 2);
  (v64)(v127, v60, v3);
  v121 = v63;
  v120 = v64;
  (v64)(v119);
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_7_52();
  sub_237EF9D20();
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_7_52();
  sub_237EF9D20();
  v65 = *(*(v118 + 24) + 8);
  sub_237EF9FF0();
  OUTLINED_FUNCTION_42_10();
  v133 = v65;
  sub_237EF8410();
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_7_52();
  sub_237EF9D20();
  v66 = (v132 + 32);
  v67 = 32;
  v110 = (v132 + 32);
  while (1)
  {
    v123 = v67;
    v68 = v136;
    OUTLINED_FUNCTION_42_10();
    sub_237EF9750();
    sub_237EF9FA0();
    v69 = v124;
    OUTLINED_FUNCTION_7_52();
    sub_237EF9CE0();
    sub_237EF8330();
    v70 = OUTLINED_FUNCTION_34_9();
    v71 = v139;
    v72 = v140;
    v139(v70);
    v71(v68, v3);
    OUTLINED_FUNCTION_47_8();
    v120();
    OUTLINED_FUNCTION_14_42();
    sub_237EF8D30();
    sub_237EF9750();
    v73 = OUTLINED_FUNCTION_34_9();
    (v71)(v73);
    v74 = OUTLINED_FUNCTION_14_19();
    (v71)(v74);
    v75 = *v66;
    v76 = OUTLINED_FUNCTION_41_10();
    v75(v76);
    OUTLINED_FUNCTION_14_42();
    sub_237EF8D30();
    sub_237EF9750();
    v77 = OUTLINED_FUNCTION_34_9();
    (v71)(v77);
    v78 = OUTLINED_FUNCTION_14_19();
    (v71)(v78);
    v79 = OUTLINED_FUNCTION_41_10();
    v75(v79);
    OUTLINED_FUNCTION_14_42();
    sub_237EF8D30();
    sub_237EF9750();
    v80 = v69;
    v81 = v142;
    v71(v80, v3);
    v82 = OUTLINED_FUNCTION_14_19();
    (v71)(v82);
    v83 = OUTLINED_FUNCTION_41_10();
    v132 = v75;
    v75(v83);
    if (sub_237EF8410())
    {
      v84 = v109;
      v85 = OUTLINED_FUNCTION_31_0();
      v86 = v139;
      v139(v85);
      v87 = v122;
      v88 = OUTLINED_FUNCTION_11_19();
      v86(v88);
      v72 = v120;
      (v120)(v87, v131, v3);
      (v72)(v84, v81, v3);
    }

    sub_237EF9760();
    v89 = sub_237EF8410();
    v90 = OUTLINED_FUNCTION_11_19();
    v139(v90);
    if (v89)
    {
      break;
    }

    sub_237EF9FB0();
    v91 = v136;
    OUTLINED_FUNCTION_18_16();
    sub_237EF9D20();
    OUTLINED_FUNCTION_44_10();
    sub_237EF8D30();
    v92 = v139;
    (v139)(v91, v3);
    OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_24_24();
    sub_237EF9FB0();
    OUTLINED_FUNCTION_7_52();
    sub_237EF9D20();
    v93 = v111;
    sub_237EF8D30();
    v94 = OUTLINED_FUNCTION_14_19();
    v92(v94);
    sub_237EF9750();
    (v92)(v93, v3);
    v95 = OUTLINED_FUNCTION_23_12();
    v92(v95);
    (v92)(v72, v3);
    v96 = OUTLINED_FUNCTION_26_21();
    v66 = v110;
    v132(v96);
    OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_20_30();
    sub_237EF9750();
    v97 = OUTLINED_FUNCTION_23_12();
    v92(v97);
    (v92)(v72, v3);
    v98 = OUTLINED_FUNCTION_26_21();
    v99 = v132;
    v132(v98);
    sub_237EF9FB0();
    v100 = v142;
    OUTLINED_FUNCTION_18_16();
    v101 = v129;
    sub_237EF9D20();
    OUTLINED_FUNCTION_26_21();
    v102 = sub_237EF8400();
    (v92)(v91, v3);
    (v92)(v72, v3);
    (v92)(v131, v3);
    if (v102)
    {
      v103 = v101;
    }

    else
    {
      v103 = v128;
    }

    v104 = OUTLINED_FUNCTION_31_0();
    v92(v104);
    v99(v103, v100, v3);
    v67 = v123 - 1;
    if (v123 == 1)
    {
      goto LABEL_11;
    }
  }

  v105 = v139;
  (v139)(v131, v3);
  v105(v81, v3);
LABEL_11:
  v106 = v139;
  (v139)(v122, v3);
  v107 = OUTLINED_FUNCTION_23_12();
  v106(v107);
  v108 = OUTLINED_FUNCTION_31_0();
  v106(v108);
  (v106)(v119, v3);
  (v106)(v127, v3);
  (v106)(v126, v3);
  (v106)(v125, v3);
  (v106)(v117, v3);
  OUTLINED_FUNCTION_38_0();
}

void sub_237DC7B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v144 = v23;
  v133 = v24;
  v140 = v26;
  v141 = v25;
  v149 = v27;
  v150 = v28;
  v142 = v29;
  v31 = v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_1();
  v126 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v36);
  v143 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v145 = *(AssociatedConformanceWitness + 16);
  OUTLINED_FUNCTION_40_10(v145);
  v138 = v38;
  v137 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  v136 = &v113 - v40;
  OUTLINED_FUNCTION_1_1();
  v151 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  v135 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v134 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  v139 = v47;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_1();
  v152 = v49;
  v147 = AssociatedConformanceWitness;
  v50 = *(AssociatedConformanceWitness + 8);
  v51 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  v54 = &v113 - v53;
  v55 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_34();
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v146 = a21;
  v56 = type metadata accessor for LineSearch();
  v57 = v31 + v56[9];
  OUTLINED_FUNCTION_13_34();
  v119 = v57;
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v58 = v56[10];
  OUTLINED_FUNCTION_13_34();
  v148 = v58;
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v59 = v56[11];
  OUTLINED_FUNCTION_13_34();
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v122 = v51;
  v120 = v55;
  sub_237EF9FA0();
  v121 = v54;
  OUTLINED_FUNCTION_6_54();
  v124 = v50;
  v60 = v59;
  sub_237EF9CE0();
  *(v31 + v56[13]) = 20;
  v61 = v56[27];
  v117 = v56[26];
  v118 = v61;
  *(v31 + v56[28]) = 1;
  v62 = *(v143 - 8);
  (*(v62 + 16))(v31 + v56[14], v142);
  *(v31 + v56[15]) = v149;
  v63 = v31 + v56[17];
  v64 = v31;
  v65 = v151 + 16;
  v66 = *(v151 + 16);
  v66(v63, v141, AssociatedTypeWitness);
  *(v64 + v56[16]) = v140;
  *(v64 + v56[18]) = v144;
  v67 = *(*(v145 + 24) + 8);

  v149 = v64;
  OUTLINED_FUNCTION_36_13();
  if ((sub_237EF8420() & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_13();
  if ((sub_237EF8430() & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v131 = v66;
  v128 = v63;
  v129 = v65;
  v116 = v62;
  sub_237EF9760();
  v148 = v56;
  v115 = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v132 = v67;
  v68 = v134;
  OUTLINED_FUNCTION_23_29();
  sub_237EF9D20();
  v69 = v135;
  sub_237EF9760();
  v70 = v139;
  OUTLINED_FUNCTION_14_19();
  sub_237EF8D30();
  v71 = v151 + 8;
  v72 = *(v151 + 8);
  v72(v69, AssociatedTypeWitness);
  v72(v68, AssociatedTypeWitness);
  sub_237EF9750();
  v145 = v71;
  v130 = v72;
  v72(v70, AssociatedTypeWitness);
  if ((sub_237EF8430() & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v73 = v149;
  v74 = v123;
  v131(v123, v149 + v60, AssociatedTypeWitness);
  v75 = TupleTypeMetadata2;
  v76 = *(v151 + 32);
  v76(v74 + *(TupleTypeMetadata2 + 48), v152, AssociatedTypeWitness);
  v114 = v60;
  OUTLINED_FUNCTION_44_10();
  v78 = v127;
  (*(v77 + 16))(v127, v74, v75);
  v79 = *(v75 + 48);
  v80 = v73 + v148[24];
  v81 = OUTLINED_FUNCTION_31_0();
  (v76)(v81);
  v82 = v130;
  v130(v78 + v79, AssociatedTypeWitness);
  v83 = v74;
  v84 = v139;
  (*(v60 + 32))(v78, v83, v75);
  v85 = *(v75 + 48);
  v86 = sub_237EF84E0();
  v76(v80 + *(v86 + 36), v78 + v85, AssociatedTypeWitness);
  v82(v78, AssociatedTypeWitness);
  v87 = v152;
  dot<A>(_:_:)(v133, v144, AssociatedTypeWitness, v147);

  OUTLINED_FUNCTION_29_18();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_23_29();
  sub_237EF9CE0();
  LOBYTE(v78) = sub_237EF8410();
  v82(v84, AssociatedTypeWitness);
  if (v78)
  {
    v88 = v87;
    v89 = v149;
    v90 = v114;
    v91 = v131;
    v131(v84, v149 + v114, AssociatedTypeWitness);
    v92 = v84;
    v93 = v134;
    v91(v134, v128, AssociatedTypeWitness);
    v94 = v135;
    v91(v135, v88, AssociatedTypeWitness);
    v95 = v143;
    sub_237DC9CA0(v92, v93, v94, AssociatedTypeWitness, v89 + v148[21]);
    v91(v92, v89 + v90, AssociatedTypeWitness);
    v91(v93, v128, AssociatedTypeWitness);
    v91(v94, v152, AssociatedTypeWitness);
    OUTLINED_FUNCTION_35_11();
    sub_237DC9CA0(v96, v97, v98, v99, v100);
    v91(v92, v150, AssociatedTypeWitness);
    v101 = OUTLINED_FUNCTION_41_10();
    (v91)(v101);
    sub_237EF9FB0();
    OUTLINED_FUNCTION_23_29();
    sub_237EF9D20();
    v102 = v148;
    OUTLINED_FUNCTION_35_11();
    sub_237DC9CA0(v103, v104, v105, v106, v107);
    v108 = v102;
    v109 = (v89 + v102[29]);
    sub_237E5BC30(v109);

    *v109 = v140;

    v109[1] = v133;
    *(v89 + v117) = 0;
    *(v89 + v118) = 1;
    v110 = v152;
    sub_237EF8D30();
    sub_237EF8D30();
    v111 = v108[30];
    sub_237DC9D84();
    v112 = v130;
    v130(v141, AssociatedTypeWitness);
    (*(v116 + 8))(v142, v95);
    v112(v110, AssociatedTypeWitness);
    (*(v151 + 40))(v89 + v111, v150, AssociatedTypeWitness);
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_237DC860C()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v146 = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_7();
  v173[0] = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v193 = *(AssociatedConformanceWitness + 16);
  v174 = *(v193 + 16);
  v194 = *(v174 + 8);
  v155 = *(v194 + 16);
  v154 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17(v144 - v14);
  OUTLINED_FUNCTION_12_7();
  v152 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v19);
  v186 = *(AssociatedConformanceWitness + 8);
  v185 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v22);
  OUTLINED_FUNCTION_1_1();
  v147 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v191 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_16();
  v195 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_1();
  v189 = v34;
  v35 = v0 + v2[30];
  v175 = v5;
  v205 = v5;
  v206 = AssociatedTypeWitness;
  v36 = v35;
  v176 = v4;
  v207 = v4;
  v208 = AssociatedConformanceWitness;
  v196 = AssociatedConformanceWitness;
  v148 = type metadata accessor for LineSearch.LineSearchResult();
  v37 = v148[14];
  v203 = v2;
  v38 = *(v36 + v37);
  v169 = v2[13];
  v204 = v0;
  if (v38 >= *(v0 + v169))
  {
LABEL_32:
    if (qword_27DEAD0C8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v39 = v203;
  v168 = v203[16];
  v40 = v204 + v203[23];
  v167 = v203[18];
  v166 = (v204 + v203[29]);
  OUTLINED_FUNCTION_32_12();
  v164 = *(v41 + 48);
  v165 = v41 + 48;
  v163 = v148[15];
  v42 = v39[15];
  v162 = v39[14];
  v161 = v42;
  OUTLINED_FUNCTION_12_7();
  v170 = v43;
  v44 = v196;
  v160 = *(type metadata accessor for OptimizerState() + 48);
  v205 = v175;
  v206 = AssociatedTypeWitness;
  v207 = v4;
  v208 = v44;
  v45 = v170;
  v46 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v184 = v39[12];
  v190 = *(v46 + 52);
  v149 = v46;
  v179 = *(v46 + 56);
  v159 = v39[17];
  v199 = (v147 + 8);
  v197 = v147 + 40;
  v183 = (v147 + 16);
  v182 = (v147 + 32);
  v150 = v16 + 8;
  v153 = (v147 + 24);
  v157 = v8 + 16;
  v156 = v8 + 32;
  v180 = v39[19];
  v158 = v36;
  v201 = v40;
  while (1)
  {
    v47 = *(v204 + v168);
    v48 = *(v204 + v167);
    v49 = OUTLINED_FUNCTION_14_19();
    v50 = v196;
    v52 = static DenseVector.* infix(_:_:)(v49, v51);
    v53 = static DenseVector.+ infix(_:_:)(v47, v52, AssociatedTypeWitness, v50);

    v54 = v166;

    *v54 = v53;
    v164(v54, v175, v176);
    *(v36 + v45) = v38 + 1;
    v55 = *(v36 + v163);
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      break;
    }

    v192 = v48;
    *(v36 + v163) = v57;
    v58 = v204;
    v59 = *(v204 + v161);
    v60 = OUTLINED_FUNCTION_25_23();
    v61 = v196;
    sub_237DC0DA8(v60, v62, v63, v196);
    sub_237DC0A48(*v54, v59, AssociatedTypeWitness, v61, v195);
    OUTLINED_FUNCTION_43_12(&v190);
    v64 = v189;
    OUTLINED_FUNCTION_10_45();
    v200 = v65;
    sub_237EF9750();
    v66 = *v199;
    v67 = OUTLINED_FUNCTION_16_38();
    v66(v67);
    OUTLINED_FUNCTION_3_48();
    v198 = v68;
    v68();
    v181 = *v183;
    v181(v64, v58 + v184, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_44_10();
    v187 = v69;
    sub_237EF9FA0();
    OUTLINED_FUNCTION_30_25();
    sub_237EF9CE0();
    LOBYTE(v59) = sub_237EF8520();
    v70 = OUTLINED_FUNCTION_16_38();
    v66(v70);
    v71 = OUTLINED_FUNCTION_12_11();
    v202 = v66;
    v66(v71);
    if ((v59 & 1) == 0)
    {
      OUTLINED_FUNCTION_37_12(v190);
      OUTLINED_FUNCTION_10_45();
      sub_237EF8D40();
      static DenseVector.*= infix(_:_:)();
    }

    dot<A>(_:_:)(v54[1], v192, AssociatedTypeWitness, v196);
    OUTLINED_FUNCTION_3_48();
    v198();
    OUTLINED_FUNCTION_10_45();
    sub_237EF8D30();
    v72 = v191;
    OUTLINED_FUNCTION_3_48();
    sub_237EF9750();
    v73 = OUTLINED_FUNCTION_12_11();
    v74 = v202;
    v202(v73);
    if (sub_237DC9EA0(v72, v203))
    {
      v74(v191, AssociatedTypeWitness);
      OUTLINED_FUNCTION_19_1();
      v36 = v158;
      v143(v158, v201, AssociatedTypeWitness);
      v142 = v146;
      v141 = v148;
      goto LABEL_37;
    }

    v75 = v203[27];
    if (*(v204 + v75) != 1)
    {
      goto LABEL_15;
    }

    v72 = *(*(v193 + 24) + 8);
    OUTLINED_FUNCTION_37_12(v190);
    OUTLINED_FUNCTION_10_45();
    if (sub_237EF8430())
    {
      OUTLINED_FUNCTION_10_45();
      if (sub_237EF8420())
      {
        *(v204 + v75) = 0;
LABEL_15:
        OUTLINED_FUNCTION_29_18();
        sub_237DCA4E8(v203, v88);
        if (__swift_getEnumTagSinglePayload(v72, 1, AssociatedTypeWitness) == 1)
        {
          OUTLINED_FUNCTION_19_1();
          v89(v72, v152);
          v90 = v203;
          v91 = v204;
          (*v153)(v201, v204 + v203[21], AssociatedTypeWitness);
          *(v91 + v90[28]) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_19_1();
          v92 = v151;
          v93 = OUTLINED_FUNCTION_31_0();
          v94(v93);
          (v198)(v201, v92, AssociatedTypeWitness);
        }

        goto LABEL_18;
      }
    }

    v76 = v204 + v203[21];
    v77 = *(v149 + 52);
    OUTLINED_FUNCTION_37_12(v190);
    OUTLINED_FUNCTION_10_45();
    if ((sub_237EF8430() & 1) == 0)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_37_12(v190);
    OUTLINED_FUNCTION_10_45();
    if ((sub_237EF8400() & 1) == 0)
    {
      goto LABEL_15;
    }

    v78 = v204;
    OUTLINED_FUNCTION_10_45();
    sub_237EF8D30();
    v192 = v77;
    OUTLINED_FUNCTION_3_48();
    sub_237EF9780();
    v79 = OUTLINED_FUNCTION_12_11();
    (v74)(v79);
    v80 = v149;
    v144[3] = *(v149 + 56);
    sub_237EF9780();
    v81 = v78 + v203[22];
    sub_237EF8D30();
    v144[2] = *(v80 + 52);
    OUTLINED_FUNCTION_3_48();
    sub_237EF9780();
    v82 = OUTLINED_FUNCTION_12_11();
    v202(v82);
    v83 = *(v80 + 56);
    v188 = v81;
    v144[1] = v83;
    sub_237EF9780();
    sub_237EF8D30();
    OUTLINED_FUNCTION_3_48();
    sub_237EF9780();
    v84 = OUTLINED_FUNCTION_12_11();
    v202(v84);
    sub_237EF9780();
    v85 = v145;
    sub_237DCA4E8(v203, v145);
    if (__swift_getEnumTagSinglePayload(v85, 1, AssociatedTypeWitness) == 1)
    {
      OUTLINED_FUNCTION_19_1();
      v86(v85, v152);
      OUTLINED_FUNCTION_19_1();
      v87(v201, v76, AssociatedTypeWitness);
      *(v204 + v203[28]) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      v131 = v144[0];
      v132(v144[0], v85, AssociatedTypeWitness);
      v133 = v131;
      v64 = v189;
      (v198)(v201, v133, AssociatedTypeWitness);
    }

    OUTLINED_FUNCTION_10_45();
    sub_237EF8D30();
    OUTLINED_FUNCTION_3_48();
    sub_237EF9770();
    v134 = OUTLINED_FUNCTION_12_11();
    v135 = v202;
    v202(v134);
    OUTLINED_FUNCTION_43_12(v173);
    OUTLINED_FUNCTION_11_42();
    sub_237EF9770();
    sub_237EF8D30();
    OUTLINED_FUNCTION_43_12(&v172);
    OUTLINED_FUNCTION_3_48();
    sub_237EF9770();
    v136 = OUTLINED_FUNCTION_12_11();
    v135(v136);
    OUTLINED_FUNCTION_43_12(&v171);
    v74 = v135;
    OUTLINED_FUNCTION_11_42();
    sub_237EF9770();
LABEL_18:
    LODWORD(v188) = *(v204 + v203[26]);
    if (v188 == 1)
    {
      v95 = v203[21];
      v192 = v203[22];
      v181 = v95;
      OUTLINED_FUNCTION_10_45();
      sub_237EF9760();
      v96 = *(*(v193 + 24) + 8);
      OUTLINED_FUNCTION_16_38();
      sub_237EF9FD0();
      v97 = OUTLINED_FUNCTION_16_38();
      (v74)(v97);
      OUTLINED_FUNCTION_29_18();
      sub_237EF9FA0();
      v98 = v178;
      OUTLINED_FUNCTION_30_25();
      sub_237EF9CE0();
      OUTLINED_FUNCTION_32_12();
      sub_237EF9FA0();
      v99 = v173[1];
      OUTLINED_FUNCTION_30_25();
      sub_237EF9CE0();
      OUTLINED_FUNCTION_29_18();
      sub_237EF8330();
      (v202)(v99, AssociatedTypeWitness);
      v100 = OUTLINED_FUNCTION_33_14();
      v98(v100);
      v187 = v203[25];
      sub_237EF8D30();
      v101 = OUTLINED_FUNCTION_16_38();
      v98(v101);
      OUTLINED_FUNCTION_3_48();
      v102 = sub_237EF8420();
      v103 = OUTLINED_FUNCTION_12_11();
      v98(v103);
      (v98)(v64, AssociatedTypeWitness);
      if (v102)
      {
        v98 = v177;
        OUTLINED_FUNCTION_10_45();
        sub_237EF9760();
        OUTLINED_FUNCTION_16_38();
        swift_getAssociatedConformanceWitness();
        sub_237EF9FB0();
        OUTLINED_FUNCTION_32_12();
        OUTLINED_FUNCTION_30_25();
        sub_237EF9D20();
        OUTLINED_FUNCTION_3_48();
        sub_237EF8330();
        v104 = OUTLINED_FUNCTION_12_11();
        v202(v104);
        v105 = OUTLINED_FUNCTION_33_14();
        v98(v105);
        OUTLINED_FUNCTION_3_48();
        sub_237EF9750();
        v106 = OUTLINED_FUNCTION_12_11();
        v98(v106);
        OUTLINED_FUNCTION_45_9();
        v198();
      }

      v36 = v192;
      OUTLINED_FUNCTION_10_45();
      sub_237EF9760();
      OUTLINED_FUNCTION_12_11();
      sub_237EF9FD0();
      v107 = OUTLINED_FUNCTION_12_11();
      v98(v107);
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_45_9();
      v198();
      OUTLINED_FUNCTION_11_42();
      sub_237EF9FF0();
      OUTLINED_FUNCTION_11_42();
      sub_237EF9FE0();
      OUTLINED_FUNCTION_3_48();
      if ((sub_237EF8430() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v181(v64, v204 + v203[21], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_44_10();
      sub_237EF9FB0();
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_30_25();
      sub_237EF9D20();
      OUTLINED_FUNCTION_29_18();
      v36 = v201;
      sub_237EF9760();
      v108 = v177;
      sub_237EF8D30();
      v109 = OUTLINED_FUNCTION_16_38();
      v202(v109);
      v110 = OUTLINED_FUNCTION_12_11();
      v202(v110);
      sub_237EF9750();
      (v202)(v108, AssociatedTypeWitness);
      v96 = *(*(v193 + 24) + 8);
      OUTLINED_FUNCTION_3_48();
      if ((sub_237EF8430() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v192 = v96;
    v111 = *v182;
    OUTLINED_FUNCTION_45_9();
    v111();
    v112 = v173[0];
    OUTLINED_FUNCTION_3_48();
    v111();
    OUTLINED_FUNCTION_19_1();
    v113 = v172;
    v114 = OUTLINED_FUNCTION_11_19();
    v115(v114);
    v116 = v203;
    v187 = *(v112 + 48);
    v117 = v204 + v203[24];
    OUTLINED_FUNCTION_12_7();
    v118 = sub_237EF84E0();
    OUTLINED_FUNCTION_4();
    (*(v119 + 8))(v117, v118);
    OUTLINED_FUNCTION_45_9();
    v111();
    OUTLINED_FUNCTION_47_8();
    (v202)(v113 + v120, AssociatedTypeWitness);
    OUTLINED_FUNCTION_19_1();
    v121 = OUTLINED_FUNCTION_11_19();
    v122(v121);
    v123 = *(v112 + 48);
    v124 = v201;
    v187 = v118;
    (v111)(v117 + *(v118 + 36), v113 + v123, AssociatedTypeWitness);
    v125 = v202;
    (v202)(v113, AssociatedTypeWitness);
    v181 = v116[11];
    OUTLINED_FUNCTION_11_42();
    sub_237EF9FE0();
    v126 = OUTLINED_FUNCTION_25_23();
    v127 = v198;
    (v198)(v126);
    OUTLINED_FUNCTION_11_42();
    sub_237EF9FF0();
    v128 = OUTLINED_FUNCTION_25_23();
    (v127)(v128);
    if (v188)
    {
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_10_45();
      sub_237EF9760();
      OUTLINED_FUNCTION_11_42();
      v129 = sub_237EF8430();
      v130 = OUTLINED_FUNCTION_12_11();
      v125(v130);
      (v125)(v191, AssociatedTypeWitness);
      v45 = v170;
      if (v129)
      {
        (*v153)(v124, v204 + v203[21], AssociatedTypeWitness);
      }
    }

    else
    {
      (v125)(v191, AssociatedTypeWitness);
      v45 = v170;
    }

    v36 = v158;
    v38 = *(v158 + v45);
    if (v38 >= *(v204 + v169))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_33:
  v137 = sub_237EF7DB0();
  __swift_project_value_buffer(v137, qword_27DEE2458);
  v138 = sub_237EF7D90();
  v139 = sub_237EF8F80();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_237C51000, v138, v139, "The optimizer reached the function evaluation limit when adjusting the step size.", v140, 2u);
    MEMORY[0x2383E2DF0](v140, -1, -1);
  }

  (*(v147 + 24))(v36, v204 + v203[21], AssociatedTypeWitness);
  v141 = v148;
  *(v36 + v148[13]) = 1;
  v142 = v146;
LABEL_37:
  (*(*(v141 - 1) + 16))(v142, v36);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DC9CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 - 8) + 32);
  v9(a5, a1, a4);
  v10 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v9(a5 + *(v10 + 52), a2, a4);
  return (v9)(a5 + *(v10 + 56), a3, a4);
}

void sub_237DC9D84()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v3 = type metadata accessor for LineSearch.LineSearchResult();
  *(v1 + v3[13]) = 0;
  *(v1 + v3[14]) = 0;
  *(v1 + v3[15]) = 0;
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DC9EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = *(a2 + 16);
  v36 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = *(v2 + *(a2 + 104));
  if (v11 == 1 && ((swift_getAssociatedConformanceWitness(), (sub_237EF8430() & 1) != 0) || (sub_237EF84E0(), (sub_237EF8420() & 1) != 0)) || (*(v2 + *(a2 + 112)) & 1) == 0)
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v19 = sub_237EF7DB0();
    __swift_project_value_buffer(v19, qword_27DEE2458);
    v20 = sub_237EF7D90();
    v21 = sub_237EF8F80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_237C51000, v20, v21, "Failed to find a suitable step size. Tolerances may be too small or dataset may be poorly scaled. This typically happens when the number of features is much larger than the number of training examples. Consider pruning features manually or increasing the regularization value.", v22, 2u);
      MEMORY[0x2383E2DF0](v22, -1, -1);
    }

    v18 = v3 + *(a2 + 120);
    v23 = v36;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = v5;
    v38 = AssociatedTypeWitness;
    v39 = v23;
    v40 = AssociatedConformanceWitness;
    goto LABEL_23;
  }

  v12 = swift_getAssociatedConformanceWitness();
  v31[2] = *(v12 + 16);
  v32 = v12;
  if (sub_237EF8420())
  {
    v37 = v5;
    v38 = AssociatedTypeWitness;
    v39 = v36;
    v40 = v32;
    type metadata accessor for LineSearch.LineSearchEvaluation();
    if (sub_237EF8430() & 1) != 0 && (sub_237EF8430())
    {
      goto LABEL_27;
    }
  }

  v31[1] = *(a2 + 44);
  if (sub_237EF8430() & 1) != 0 && ((v37 = v5, v38 = AssociatedTypeWitness, v39 = v36, v40 = v32, type metadata accessor for LineSearch.LineSearchEvaluation(), (sub_237EF8400()) || (sub_237EF8420()) || v11 && (sub_237EF84E0(), sub_237EF9760(), v13 = sub_237EF8430(), (*(v34 + 8))(v10, AssociatedTypeWitness), (v13))
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v14 = sub_237EF7DB0();
    __swift_project_value_buffer(v14, qword_27DEE2458);
    v15 = sub_237EF7D90();
    v16 = sub_237EF8F80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_237C51000, v15, v16, "Reached the minimum allowed step size.", v17, 2u);
      MEMORY[0x2383E2DF0](v17, -1, -1);
    }

    v18 = v3 + *(a2 + 120);
    v37 = v5;
    v38 = AssociatedTypeWitness;
    v39 = v36;
    v40 = v32;
LABEL_23:
    v25 = type metadata accessor for LineSearch.LineSearchResult();
    v26 = 0;
LABEL_24:
    *(v18 + *(v25 + 52)) = v26;
    return 1;
  }

  v37 = v5;
  v38 = AssociatedTypeWitness;
  v39 = v36;
  v40 = v32;
  type metadata accessor for LineSearch.LineSearchEvaluation();
  if (sub_237EF8430())
  {
    sub_237EF9FD0();
    v28 = v33;
    sub_237EF9410();
    v29 = sub_237EF8430();
    v30 = *(v34 + 8);
    v30(v28, AssociatedTypeWitness);
    v30(v10, AssociatedTypeWitness);
    if (v29)
    {
LABEL_27:
      v18 = v3 + *(a2 + 120);
      v37 = v5;
      v38 = AssociatedTypeWitness;
      v39 = v36;
      v40 = v32;
      v25 = type metadata accessor for LineSearch.LineSearchResult();
      v26 = 1;
      goto LABEL_24;
    }
  }

  return 0;
}

uint64_t sub_237DCA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v4 = *(a1 + 24);
  v108 = *(a1 + 16);
  v109 = v4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v110 = *(AssociatedConformanceWitness + 16);
  v92 = *(v110 + 16);
  v6 = *(v92 + 8);
  v91 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v89 = &v80 - v7;
  v104 = *(AssociatedConformanceWitness + 8);
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v8);
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  v13 = swift_checkMetadataState();
  v111 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v80 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v95 = &v80 - v20;
  MEMORY[0x28223BE20](v21);
  v102 = &v80 - v22;
  MEMORY[0x28223BE20](v23);
  v94 = &v80 - v24;
  MEMORY[0x28223BE20](v25);
  v107 = &v80 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v80 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - v33;
  v35 = v2 + *(a1 + 84);
  v113 = v108;
  v114 = v36;
  v115 = v109;
  v116 = AssociatedConformanceWitness;
  v97 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v98 = a1;
  v37 = *(v97 + 56);
  v38 = *(a1 + 92);
  v93 = v2;
  v39 = *(v6 + 8);
  v109 = (v2 + v38);
  v103 = v39;
  sub_237EF9760();
  v112 = v35;
  v106 = v37;
  v96 = v6;
  sub_237EF8D30();
  v40 = v111 + 8;
  v41 = *(v111 + 8);
  v41(v31, v13);
  v42 = swift_getAssociatedConformanceWitness();
  v87 = v8;
  v83 = v42;
  sub_237EF9FA0();
  v84 = v12;
  v43 = v40;
  sub_237EF9CE0();
  v44 = *(*(v110 + 24) + 8);
  v45 = sub_237EF8420();
  v41(v31, v13);
  v108 = v41;
  v41(v34, v13);
  if (v45)
  {
    v46 = 1;
    v47 = v100;
    return __swift_storeEnumTagSinglePayload(v47, v46, 1, v13);
  }

  v82 = *(v97 + 52);
  sub_237EF9760();
  sub_237EF9760();
  sub_237EF8330();
  v48 = v108;
  v108(v31, v13);
  v48(v34, v13);
  swift_getAssociatedConformanceWitness();
  v101 = v44;
  sub_237EF9FB0();
  v49 = v94;
  sub_237EF9D20();
  sub_237EF8D30();
  v50 = v48;
  v48(v49, v13);
  sub_237EF9750();
  v48(v31, v13);
  v91 = *(v97 + 56);
  sub_237EF9750();
  v48(v34, v13);
  sub_237EF9FD0();
  sub_237EF9FD0();
  v51 = v95;
  sub_237EF9FD0();
  sub_237EF9FE0();
  v50(v51, v13);
  v50(v49, v13);
  v52 = v102;
  sub_237EF9FE0();
  v50(v31, v13);
  AssociatedTypeWitness = v43;
  v50(v34, v13);
  v53 = sub_237EF8400();
  v54 = v107;
  v97 = v34;
  v81 = v31;
  if (v53)
  {
    v55 = v98;
    v56 = v99;
    v57 = *(v98 + 104);
    v58 = v93;
    LODWORD(v109) = 1;
    *(v93 + v57) = 1;
    sub_237DCB254(v54, v52, v105, v55, v56);
LABEL_9:
    v62 = v111;
    goto LABEL_12;
  }

  v59 = sub_237EF8360();
  if ((sub_237EF8360() ^ v59))
  {
    v55 = v98;
    v56 = v99;
    v58 = v93;
    *(v93 + *(v98 + 104)) = 1;
    sub_237DCBED8(v107, v102, v55, v56);
    LODWORD(v109) = 0;
    goto LABEL_9;
  }

  sub_237EF9FD0();
  sub_237EF9FD0();
  v60 = sub_237EF8410();
  v61 = v108;
  v108(v31, v13);
  v61(v34, v13);
  v56 = v99;
  v55 = v98;
  v58 = v93;
  if (v60)
  {
    sub_237DCC7DC(v107, v102, v98, v99);
    LODWORD(v109) = 1;
  }

  else
  {
    sub_237DCD554(v98, v99);
    LODWORD(v109) = 0;
  }

  v62 = v111;
LABEL_12:
  sub_237DCDFB8(v55);
  sub_237EF84E0();
  v63 = v97;
  sub_237EF9FF0();
  v64 = v108;
  v108(v56, v13);
  v67 = *(v62 + 32);
  v66 = v62 + 32;
  v65 = v67;
  v67(v56, v63, v13);
  sub_237EF9FE0();
  v64(v56, v13);
  v67(v56, v63, v13);
  if (v109 && *(v58 + *(v98 + 104)))
  {
    v109 = v65;
    v111 = v66;
    v98 = *(v98 + 88);
    LODWORD(v106) = sub_237EF8400();
    sub_237EF9FA0();
    v68 = v88;
    sub_237EF9CE0();
    sub_237EF9FA0();
    v69 = v85;
    sub_237EF9CE0();
    v70 = v95;
    sub_237EF8330();
    v71 = v108;
    v108(v69, v13);
    v71(v68, v13);
    sub_237EF9760();
    v72 = v94;
    sub_237EF8D30();
    v71(v68, v13);
    v71(v70, v13);
    v73 = v81;
    sub_237EF9750();
    v71(v72, v13);
    v74 = v97;
    v75 = v99;
    if (v106)
    {
      sub_237EF9FF0();
    }

    else
    {
      sub_237EF9FE0();
    }

    v77 = v73;
    v78 = v108;
    v108(v77, v13);
    v78(v75, v13);
    v78(v102, v13);
    v78(v107, v13);
    v78(v105, v13);
    v65 = v109;
    v109(v75, v74, v13);
  }

  else
  {
    v76 = v108;
    v108(v102, v13);
    v76(v107, v13);
    v76(v105, v13);
    v75 = v99;
  }

  v47 = v100;
  v65(v100, v75, v13);
  v46 = 0;
  return __swift_storeEnumTagSinglePayload(v47, v46, 1, v13);
}

uint64_t sub_237DCB254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  v86 = a2;
  v75 = a5;
  v88 = a4;
  v6 = *(a4 + 16);
  v77 = *(a4 + 24);
  v73 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 16);
  v76 = *(v8 + 16);
  v9 = *(*(v76 + 8) + 16);
  v90 = *(v76 + 8);
  v64 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = &v62 - v10;
  v71 = *(AssociatedConformanceWitness + 8);
  v70 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v70);
  v69 = &v62 - v11;
  v12 = swift_checkMetadataState();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v82 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v62 - v15;
  MEMORY[0x28223BE20](v16);
  v92 = &v62 - v17;
  MEMORY[0x28223BE20](v18);
  v83 = &v62 - v19;
  MEMORY[0x28223BE20](v20);
  v85 = &v62 - v21;
  MEMORY[0x28223BE20](v22);
  v91 = &v62 - v23;
  MEMORY[0x28223BE20](v24);
  v67 = &v62 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  MEMORY[0x28223BE20](v29);
  v79 = &v62 - v30;
  MEMORY[0x28223BE20](v31);
  v78 = &v62 - v32;
  MEMORY[0x28223BE20](v33);
  v65 = &v62 - v34;
  MEMORY[0x28223BE20](v35);
  v80 = &v62 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v62 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v62 - v41;
  v68 = a1;
  sub_237EF8330();
  v74 = v42;
  sub_237EF8D30();
  v44 = v88;
  v43 = v89;
  v87 = v89 + *(v88 + 84);
  v93 = v73;
  v94 = v12;
  v95 = v77;
  v96 = AssociatedConformanceWitness;
  v45 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v77 = *(v45 + 56);
  sub_237EF8330();
  v46 = *(v44 + 92);
  v47 = v65;
  v88 = v43 + v46;
  v66 = *(v45 + 56);
  v48 = v67;
  sub_237EF8330();
  v49 = v28;
  v50 = v48;
  v51 = v90;
  sub_237EF8D30();
  v52 = *(v81 + 8);
  v52(v50, v12);
  v52(v49, v12);
  v53 = *(v51 + 8);
  v54 = v78;
  v73 = v39;
  v55 = v79;
  v56 = v80;
  v89 = v53;
  sub_237EF9760();
  v52(v55, v12);
  sub_237EF8320();
  v52(v54, v12);
  sub_237EF8D30();
  v52(v47, v12);
  v86 = v8;
  v67 = *(*(v8 + 24) + 8);
  if (sub_237EF8410())
  {
    sub_237EF9410();
    v52(v56, v12);
    (*(v81 + 32))(v56, v47, v12);
  }

  sub_237EF9760();
  sub_237EF9750();
  v52(v47, v12);
  v57 = v78;
  sub_237EF9760();
  sub_237EF9750();
  v52(v57, v12);
  sub_237EF9750();
  v52(v47, v12);
  sub_237EF8330();
  sub_237EF9760();
  sub_237EF8D30();
  v52(v57, v12);
  sub_237EF9750();
  v52(v47, v12);
  sub_237EF9750();
  sub_237EF8330();
  v52(v57, v12);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF8330();
  v52(v57, v12);
  v52(v47, v12);
  sub_237EF9760();
  sub_237EF8D30();
  v52(v57, v12);
  sub_237EF9750();
  v52(v47, v12);
  sub_237EF9760();
  sub_237EF9FD0();
  v52(v57, v12);
  v58 = v79;
  sub_237EF9760();
  sub_237EF9FD0();
  v52(v58, v12);
  v59 = sub_237EF8410();
  v52(v57, v12);
  v52(v47, v12);
  if (v59)
  {
    v52(v82, v12);
    v52(v84, v12);
    v52(v83, v12);
    v52(v85, v12);
    v52(v91, v12);
    v52(v80, v12);
    v52(v73, v12);
    v52(v74, v12);
    return (*(v81 + 32))(v75, v92, v12);
  }

  else
  {
    v61 = v82;
    sub_237EF9750();
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    sub_237EF8330();
    v52(v57, v12);
    v52(v47, v12);
    v52(v61, v12);
    v52(v84, v12);
    v52(v92, v12);
    v52(v83, v12);
    v52(v85, v12);
    v52(v91, v12);
    v52(v80, v12);
    v52(v73, v12);
    return (v52)(v74, v12);
  }
}

uint64_t sub_237DCBED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v6 = *(a3 + 24);
  v67 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v80 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = v59 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = v59 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = v59 - v15;
  MEMORY[0x28223BE20](v16);
  v72 = v59 - v17;
  MEMORY[0x28223BE20](v18);
  v71 = v59 - v19;
  MEMORY[0x28223BE20](v20);
  v65 = v59 - v21;
  MEMORY[0x28223BE20](v22);
  v60 = v59 - v23;
  MEMORY[0x28223BE20](v24);
  v69 = v59 - v25;
  MEMORY[0x28223BE20](v26);
  v68 = v59 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v59 - v29;
  MEMORY[0x28223BE20](v31);
  v81 = v59 - v32;
  MEMORY[0x28223BE20](v33);
  v70 = v59 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = v59 - v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = *(AssociatedConformanceWitness + 16);
  v61 = a1;
  v59[1] = a2;
  sub_237EF8330();
  v64 = *(v39 + 2);
  v78 = *(v64 + 8);
  v62 = v37;
  sub_237EF8D30();
  v40 = a3;
  v41 = *(a3 + 84);
  v42 = v77;
  v43 = v77 + v41;
  v76 = v77 + v41;
  v82 = v67;
  v83 = AssociatedTypeWitness;
  v84 = v6;
  v85 = AssociatedConformanceWitness;
  v44 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v45 = v60;
  v67 = v43 + *(v44 + 56);
  sub_237EF8330();
  v77 = v42 + *(v40 + 92);
  v46 = v65;
  v66 = v77 + *(v44 + 56);
  sub_237EF8330();
  v47 = v69;
  v48 = v46;
  v49 = v78;
  sub_237EF8D30();
  v50 = *(v75 + 8);
  v50(v48, AssociatedTypeWitness);
  v50(v45, AssociatedTypeWitness);
  v51 = v68;
  v59[2] = *(v49 + 8);
  sub_237EF9760();
  v50(v47, AssociatedTypeWitness);
  sub_237EF8320();
  v50(v51, AssociatedTypeWitness);
  sub_237EF8D30();
  v50(v30, AssociatedTypeWitness);
  v65 = v39;
  v60 = *(*(v39 + 3) + 8);
  if (sub_237EF8400())
  {
    v52 = v81;
    sub_237EF9410();
    v50(v52, AssociatedTypeWitness);
    (*(v75 + 32))(v52, v30, AssociatedTypeWitness);
  }

  sub_237EF9760();
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  v53 = v68;
  sub_237EF9760();
  sub_237EF9750();
  v50(v53, AssociatedTypeWitness);
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  sub_237EF8330();
  sub_237EF9760();
  sub_237EF8D30();
  v50(v53, AssociatedTypeWitness);
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  sub_237EF9760();
  sub_237EF8330();
  v50(v30, AssociatedTypeWitness);
  sub_237EF9760();
  sub_237EF8D30();
  v50(v53, AssociatedTypeWitness);
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  sub_237EF9760();
  sub_237EF9FD0();
  v50(v53, AssociatedTypeWitness);
  v54 = v69;
  sub_237EF9760();
  sub_237EF9FD0();
  v50(v54, AssociatedTypeWitness);
  v55 = sub_237EF8400();
  v50(v53, AssociatedTypeWitness);
  v50(v30, AssociatedTypeWitness);
  v50(v74, AssociatedTypeWitness);
  v50(v73, AssociatedTypeWitness);
  v50(v72, AssociatedTypeWitness);
  v50(v71, AssociatedTypeWitness);
  v50(v81, AssociatedTypeWitness);
  v50(v70, AssociatedTypeWitness);
  v50(v62, AssociatedTypeWitness);
  if (v55)
  {
    v56 = v80;
  }

  else
  {
    v56 = v79;
  }

  if (v55)
  {
    v57 = v79;
  }

  else
  {
    v57 = v80;
  }

  v50(v56, AssociatedTypeWitness);
  return (*(v75 + 32))(v63, v57, AssociatedTypeWitness);
}

uint64_t sub_237DCC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v109 = a3;
  v6 = *(a3 + 16);
  v119 = *(a3 + 24);
  v114 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  v9 = AssociatedConformanceWitness;
  v100 = AssociatedConformanceWitness;
  v94 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v92 = v86 - v10;
  v111 = *(v9 + 16);
  v106 = *(v111 + 16);
  v11 = *(v106 + 8);
  v118 = *(v11 + 16);
  v115 = v11;
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v12);
  v99 = (v86 - v13);
  v14 = swift_checkMetadataState();
  v116 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v113 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = v86 - v17;
  MEMORY[0x28223BE20](v18);
  v112 = v86 - v19;
  MEMORY[0x28223BE20](v20);
  v107 = v86 - v21;
  MEMORY[0x28223BE20](v22);
  v104 = v86 - v23;
  MEMORY[0x28223BE20](v24);
  v103 = v86 - v25;
  MEMORY[0x28223BE20](v26);
  v89 = v86 - v27;
  MEMORY[0x28223BE20](v28);
  v87 = v86 - v29;
  MEMORY[0x28223BE20](v30);
  v88 = v86 - v31;
  MEMORY[0x28223BE20](v32);
  v90 = v86 - v33;
  MEMORY[0x28223BE20](v34);
  v101 = v86 - v35;
  MEMORY[0x28223BE20](v36);
  v117 = v86 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = v86 - v39;
  MEMORY[0x28223BE20](v41);
  v108 = v86 - v42;
  MEMORY[0x28223BE20](v43);
  v102 = v86 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v86 - v46;
  v91 = a1;
  v48 = a2;
  v49 = v111;
  sub_237EF8330();
  v95 = v47;
  sub_237EF8D30();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v50 = v109;
  v51 = v110;
  v118 = v110 + v109[21];
  v120 = v114;
  v121 = v14;
  v122 = v119;
  v123 = v100;
  v52 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v98 = *(v52 + 56);
  v53 = v87;
  v86[0] = v48;
  v54 = v49;
  sub_237EF8330();
  v119 = v51 + v50[23];
  v97 = *(v52 + 56);
  v55 = v89;
  v56 = v54;
  sub_237EF8330();
  v57 = v88;
  v58 = v115;
  sub_237EF8D30();
  v60 = v116 + 8;
  v59 = *(v116 + 8);
  v59(v55, v14);
  v59(v53, v14);
  v61 = v90;
  v114 = *(v58 + 8);
  sub_237EF9760();
  v62 = v108;
  v59(v57, v14);
  v63 = *(*(v56 + 24) + 8);
  v64 = v117;
  v65 = v101;
  sub_237EF9FE0();
  v59(v61, v14);
  v59(v65, v14);
  sub_237EF8320();
  v59(v64, v14);
  sub_237EF8D30();
  v99 = v59;
  v59(v40, v14);
  v66 = v60;
  v100 = v63;
  if (sub_237EF8400())
  {
    sub_237EF9410();
    (*(v116 + 40))(v62, v40, v14);
  }

  sub_237EF9760();
  sub_237EF9750();
  v67 = v99;
  v99(v40, v14);
  v68 = v117;
  sub_237EF9760();
  sub_237EF9750();
  v67(v68, v14);
  sub_237EF9750();
  v67(v40, v14);
  sub_237EF8330();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v69 = sub_237EF8410();
  v67(v40, v14);
  v86[1] = v66;
  if (v69 & 1) != 0 && (sub_237EF9FD0(), sub_237EF9FA0(), v70 = v117, sub_237EF9CE0(), v71 = sub_237EF8430(), v67(v70, v14), v67(v40, v14), (v71))
  {
    v72 = v117;
    sub_237EF9760();
    sub_237EF8D30();
    v67(v72, v14);
    sub_237EF9750();
    v73 = v40;
    v67(v40, v14);
  }

  else
  {
    v74 = sub_237EF8400();
    v75 = v110 + v109[24];
    v76 = v112;
    v73 = v40;
    if (v74)
    {
      v77 = sub_237EF84E0();
      (*(v116 + 16))(v76, v75 + *(v77 + 36), v14);
    }

    else
    {
      (*(v116 + 16))(v112, v75, v14);
    }

    v72 = v117;
  }

  sub_237EF9760();
  sub_237EF8330();
  v78 = v99;
  v99(v73, v14);
  sub_237EF9760();
  sub_237EF8D30();
  v78(v72, v14);
  sub_237EF9750();
  v78(v73, v14);
  LODWORD(v118) = *(v110 + v109[26]);
  sub_237EF9760();
  sub_237EF9FD0();
  v78(v72, v14);
  v79 = v101;
  sub_237EF9760();
  sub_237EF9FD0();
  v78(v79, v14);
  if (v118 == 1)
  {
    v80 = sub_237EF8410();
  }

  else
  {
    v80 = sub_237EF8400();
  }

  v81 = v80;
  v82 = v108;
  v78(v72, v14);
  v78(v73, v14);
  v78(v105, v14);
  v78(v107, v14);
  v78(v104, v14);
  v78(v103, v14);
  v78(v82, v14);
  v78(v102, v14);
  v78(v95, v14);
  if (v81)
  {
    v83 = v113;
  }

  else
  {
    v83 = v112;
  }

  if (v81)
  {
    v84 = v112;
  }

  else
  {
    v84 = v113;
  }

  v78(v83, v14);
  return (*(v116 + 32))(v96, v84, v14);
}

uint64_t sub_237DCD554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v77 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = *(AssociatedConformanceWitness + 16);
  v68 = *(v82 + 16);
  v79 = *(v68 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v8);
  v80 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](&v63 - v14);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v81 = &v63 - v21;
  MEMORY[0x28223BE20](v22);
  v83 = &v63 - v23;
  MEMORY[0x28223BE20](v24);
  v30 = *(v3 + *(a1 + 104));
  v75 = v31;
  if (v30 == 1)
  {
    v72 = v25;
    v73 = v27;
    v67 = v28;
    v78 = &v63 - v26;
    v66 = v29;
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    v32 = v3 + *(a1 + 92);
    v84 = v77;
    v85 = v8;
    v86 = v6;
    v87 = AssociatedConformanceWitness;
    v33 = type metadata accessor for LineSearch.LineSearchEvaluation();
    v34 = v3 + *(a1 + 88);
    v35 = *(v79 + 8);
    v76 = v32;
    v77 = v34;
    v36 = v72;
    sub_237EF9760();
    v71 = v19;
    v37 = v36;
    sub_237EF8D30();
    v38 = *(v75 + 8);
    v38(v37, v8);
    v38(v16, v8);
    sub_237EF9760();
    v39 = v81;
    v40 = v71;
    sub_237EF8330();
    v38(v16, v8);
    v38(v40, v8);
    AssociatedConformanceWitness = *(v33 + 56);
    v41 = v83;
    v65 = v35;
    sub_237EF9750();
    v38(v39, v8);
    v69 = *(v33 + 56);
    sub_237EF9750();
    v38(v41, v8);
    v42 = *(*(v82 + 24) + 8);
    sub_237EF9FD0();
    v43 = v71;
    sub_237EF9FD0();
    sub_237EF9FD0();
    v44 = v81;
    v63 = v42;
    sub_237EF9FE0();
    v38(v16, v8);
    v38(v43, v8);
    sub_237EF9FE0();
    v38(v44, v8);
    v38(v41, v8);
    sub_237EF8330();
    sub_237EF8D30();
    sub_237EF8330();
    v45 = v72;
    sub_237EF8330();
    sub_237EF8D30();
    v38(v45, v8);
    v64 = v16;
    v38(v16, v8);
    v46 = v81;
    sub_237EF9760();
    v47 = v46;
    v38(v43, v8);
    v48 = v83;
    sub_237EF8320();
    v38(v47, v8);
    sub_237EF8D30();
    v38(v48, v8);
    if (sub_237EF8400())
    {
      v49 = v83;
      v50 = v80;
      sub_237EF9410();
      v38(v50, v8);
      (*(v75 + 32))(v50, v49, v8);
    }

    v51 = v81;
    sub_237EF9760();
    sub_237EF9750();
    v38(v51, v8);
    v52 = v64;
    sub_237EF9760();
    v53 = v71;
    sub_237EF9750();
    v38(v52, v8);
    sub_237EF9750();
    v38(v53, v8);
    sub_237EF8330();
    v54 = v72;
    sub_237EF9760();
    sub_237EF8D30();
    v38(v54, v8);
    sub_237EF9750();
    v38(v52, v8);
    v38(v53, v8);
    v38(v51, v8);
    v38(v83, v8);
    v38(v80, v8);
    v38(v73, v8);
    v38(v67, v8);
    v38(v66, v8);
    return (v38)(v78, v8);
  }

  else
  {
    v56 = sub_237EF8400();
    v57 = *(a1 + 96);
    v58 = v3 + v57;
    if (v56)
    {
      v59 = *(sub_237EF84E0() + 36);
      v60 = v74;
      v61 = *(v75 + 16);
      v62 = v58 + v59;
    }

    else
    {
      v60 = v74;
      v61 = *(v75 + 16);
      v62 = v3 + v57;
    }

    return v61(v60, v62, v8);
  }
}

uint64_t sub_237DCDFB8(int *a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v1 + a1[23];
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for LineSearch.LineSearchEvaluation();
  v7 = *(v6 + 52);
  v8 = v1 + a1[21];
  if (sub_237EF8400())
  {
    v9 = v1 + a1[22];
    v10 = *(*(AssociatedTypeWitness - 8) + 24);
    v10(v9, v5, AssociatedTypeWitness);
    v10(v9 + *(v6 + 52), v5 + v7, AssociatedTypeWitness);
    return (v10)(v9 + *(v6 + 56), v5 + *(v6 + 56), AssociatedTypeWitness);
  }

  else
  {
    v20 = *(v6 + 56);
    v12 = sub_237EF8360();
    v19 = *(v6 + 56);
    if ((sub_237EF8360() ^ v12))
    {
      v13 = *(AssociatedTypeWitness - 8);
      v15 = v2 + a1[22];
      v16 = *(v13 + 24);
      v16(v15, v8, AssociatedTypeWitness);
      v16(v15 + *(v6 + 52), v8 + v7, AssociatedTypeWitness);
      v17 = v15 + *(v6 + 56);
      v14 = v19;
      v16(v17, v8 + v19, AssociatedTypeWitness);
    }

    else
    {
      v13 = *(AssociatedTypeWitness - 8);
      v14 = v19;
    }

    v18 = *(v13 + 24);
    v18(v8, v5, AssociatedTypeWitness);
    v18(v8 + v7, v5 + v7, AssociatedTypeWitness);
    return (v18)(v8 + v14, v5 + v20, AssociatedTypeWitness);
  }
}

uint64_t sub_237DCE274()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237DCE2EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80) + ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
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

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237DCE444(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80) + ((v9 + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DCE66C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    v2 = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      v4 = type metadata accessor for L2NormRegularizer();
      if (v5 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for DenseVector();
      if (v6 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for LineSearch.LineSearchEvaluation();
      if (v7 > 0x3F)
      {
        return v4;
      }

      v4 = sub_237EF84E0();
      if (v8 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for OptimizerState();
      if (v9 > 0x3F)
      {
        return v4;
      }

      else
      {
        AssociatedTypeWitness = type metadata accessor for LineSearch.LineSearchResult();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_237DCE878(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    result = 0x7FFFFFFFLL;
  }

  else
  {
    result = v11;
  }

  if (v8 <= result)
  {
    v13 = result;
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = *(v7 + 80);
  v16 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v15;
  v18 = v14 + v15 + ((v14 + v15) & ~v15);
  v19 = v14 + v15 + (v18 & ~v15);
  v20 = v14 + 7;
  v21 = v16 + 8;
  v22 = *(*(v5 - 8) + 64) + 7;
  v23 = v15 + 8;
  v24 = v15 | 7;
  v25 = (v15 | 7) + v14;
  v26 = v25 + 3;
  if (v13 >= a2)
  {
LABEL_31:
    if (v8 >= result)
    {
      v35 = a1;
    }

    else
    {
      v35 = (v21 + ((v20 + ((v17 + ((v17 + ((v17 + ((a1 + v17) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
      if (v10 == v13)
      {
        v8 = v10;
        AssociatedTypeWitness = v5;
      }

      else
      {
        v36 = ((v22 + v35) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) == 0)
        {
          v37 = *v36;
          if (v37 >= 0xFFFFFFFF)
          {
            LODWORD(v37) = -1;
          }

          return (v37 + 1);
        }

        v34 = ~v15;
        v35 = (v15 + ((((((v26 + ((v18 + ((v19 + ((v19 + ((v19 + ((v17 + ((v17 + ((v23 + ((v20 + ((v23 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) & v34)) & 0xFFFFFFFFFFFFFFF8)) & v34)) & v34)) & v34)) & v34)) & v34)) & v34)) & v34)) & ~v24) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & v34;
      }
    }

    return __swift_getEnumTagSinglePayload(v35, v8, AssociatedTypeWitness);
  }

  v27 = (((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((v17 + ((v17 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v26 + ((v18 + ((v19 + ((v19 + ((v19 + ((v17 + ((v17 + ((v23 + ((v20 + ((v23 + ((((v22 + ((v21 + ((v20 + ((v17 + (v19 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v24) + 1) & ~v24) + 8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v28 = 2;
  }

  else
  {
    v28 = a2 - v13 + 1;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  switch(v30)
  {
    case 1:
      v31 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v31 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v31 = *(a1 + v27);
      if (!v31)
      {
        goto LABEL_31;
      }

LABEL_28:
      v32 = v31 - 1;
      if ((v27 & 0xFFFFFFF8) != 0)
      {
        v32 = 0;
        v33 = *a1;
      }

      else
      {
        v33 = 0;
      }

      result = v13 + (v33 | v32) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_237DCEC30(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = *(v9 + 80);
  v16 = v14 + v15 + ((v14 + v15) & ~v15);
  v17 = v14 + v15 + (v16 & ~v15);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64) + 7;
  v20 = v14 + (v15 | 7);
  v21 = (((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) + 8;
  if (v13 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if ((((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFF8)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) == -8)
    {
      v22 = a3 - v13 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (a2 <= v13)
  {
    switch(v24)
    {
      case 1:
        *(a1 + v21) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v21) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v21) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v10 == v13)
        {
          v27 = a1;
          v28 = a2;
          v12 = v10;
        }

        else
        {
          v27 = (v18 + 8 + ((v14 + 7 + ((v14 + v15 + ((v14 + v15 + ((v14 + v15 + ((a1 + v14 + v15) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
          if (v12 != v13)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *((v19 + v27) & 0xFFFFFFFFFFFFFFF8) = v29;
            return;
          }

          v28 = a2;
          AssociatedTypeWitness = v7;
        }

        __swift_storeEnumTagSinglePayload(v27, v28, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if ((((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFF8)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) == -8)
    {
      v25 = a2 - v13;
    }

    else
    {
      v25 = 1;
    }

    if ((((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFF8)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) != -8)
    {
      v26 = ~v13 + a2;
      bzero(a1, v21);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v21) = v25;
        break;
      case 2:
        *(a1 + v21) = v25;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v21) = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DCEFAC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_237DCF030(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

LABEL_21:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_25;
    }

    return (v16 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v17 = *(result + v6);
  if (v17 < 2)
  {
    return 0;
  }

  v16 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_237DCF164(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if ((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if ((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if ((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_34()
{

  return sub_237EF9FA0();
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_237EF8D30();
}

uint64_t OUTLINED_FUNCTION_32_17()
{

  return sub_237EF9FB0();
}

uint64_t sub_237DCF510()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  (*(*(v4 - 8) + 32))(v2, v5);
  v6 = type metadata accessor for ComposedEstimator();
  return (*(*(v0 - 8) + 32))(v3 + *(v6 + 52), v1, v0);
}

uint64_t sub_237DCF5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v9 = type metadata accessor for TransformerToEstimatorAdaptor();
  v10 = MEMORY[0x28223BE20](v9);
  TransformerToEstimatorAdaptor.init(_:)(v7, v6, a6, v10);
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  return sub_237DCF510();
}

uint64_t sub_237DCF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[11] = a5[5];
  v8[12] = a5[3];
  v8[13] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v8[14] = v15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v16 = a5[4];
  v8[17] = v16;
  v17 = a5[2];
  v8[18] = v17;
  v8[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v8[20] = v18;
  v8[21] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[22] = v19;
  OUTLINED_FUNCTION_15_0();
  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  v8[23] = v21;
  *v21 = v8;
  v21[1] = sub_237DCF930;

  return v23(v19, a2, a3, a4, a6, a7, v17, v16);
}

uint64_t sub_237DCF930()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_237C821C0;
  }

  else
  {
    v7 = sub_237DCFA34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237DCFA34()
{
  v1 = v0[24];
  sub_237EF8B90();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_7_4();
    v3(v2);

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[25] = v6;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[26] = AssociatedConformanceWitness;
    *v6 = v0;
    v6[1] = sub_237DCFB94;
    v8 = v0[19];
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[4];

    return Transformer.applied<A>(to:eventHandler:)(v13, v11, v12, v8, v9, AssociatedConformanceWitness, v10);
  }
}

uint64_t sub_237DCFB94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  if (v0)
  {
    v5 = sub_237C82244;
  }

  else
  {
    v5 = sub_237DCFC9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237DCFC9C()
{
  v1 = v0[28];
  sub_237EF8B90();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_7_4();
    v3(v2);

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  else
  {
    v0[2] = v0[27];
    OUTLINED_FUNCTION_15_0();
    v15 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[29] = v7;
    swift_getAssociatedTypeWitness();
    v8 = sub_237EF8A60();
    WitnessTable = swift_getWitnessTable();
    *v7 = v0;
    v7[1] = sub_237DCFEBC;
    v10 = v0[16];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[5];
    v14 = v0[6];

    return (v15)(v10, v0 + 2, v13, v14, v8, WitnessTable, v11, v12);
  }
}