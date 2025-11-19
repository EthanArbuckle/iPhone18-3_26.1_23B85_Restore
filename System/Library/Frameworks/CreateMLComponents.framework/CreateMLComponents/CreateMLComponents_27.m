uint64_t RobustScaler.init(quantileRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t RobustScaler.fitted<A>(to:eventHandler:)@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = a1[2];
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v31 = v9;
  v32 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  OUTLINED_FUNCTION_1_1();
  v35 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v36 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  v39 = v7;
  v40 = a2;
  v23 = a1[4];
  v41 = a1[3];
  v42 = v23;
  v34 = v23;
  v33 = a1[5];
  v43 = v33;
  v44 = a3;
  v24 = v38;
  v25 = sub_237EF8760();
  v38 = v24;
  v45 = v25;
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237D10984();

  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    (*(v31 + 8))(v12, v32);
    sub_237C84150();
    swift_allocError();
    *v26 = 0xD000000000000013;
    *(v26 + 8) = 0x8000000237F01970;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 2;
    return swift_willThrow();
  }

  else
  {
    v28 = *(v35 + 32);
    v28(v22, v12, v7);
    sub_237EF84E0();
    OUTLINED_FUNCTION_11_11();
    sub_237EF9760();
    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0x6353747375626F52, 0xEC00000072656C61);
    }

    v29 = v36;
    v28(v36, v22, v7);
    return RobustScaler.Transformer.init(median:interQuartileRange:)(v29, v19, v7, v37);
  }
}

uint64_t RobustScaler.Transformer.init(median:interQuartileRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*(a3 - 8) + 32);
  v7(a4, a1);
  v8 = type metadata accessor for RobustScaler.Transformer();
  return (v7)(a4 + *(v8 + 52), a2, a3);
}

uint64_t sub_237EB60AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  RobustScaler.fitted<A>(to:eventHandler:)(a7, a5, a6, a1);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t RobustScaler.Transformer.applied(to:eventHandler:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  (*(v6 + 16))(a2, v12);
  RobustScaler.Transformer.median.getter(a1, v14);
  v15 = sub_237EF8380();
  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_23_12();
  v16(v17);
  if (v15)
  {
    v18 = OUTLINED_FUNCTION_9_67();
    RobustScaler.Transformer.median.getter(v18, v19);
    OUTLINED_FUNCTION_11_11();
    sub_237EF9780();
    v20 = OUTLINED_FUNCTION_23_12();
    v16(v20);
  }

  RobustScaler.Transformer.interQuartileRange.getter(a1, v10);
  v21 = sub_237EF8380();
  result = (v16)(v10, v4);
  if (v21)
  {
    v23 = OUTLINED_FUNCTION_9_67();
    RobustScaler.Transformer.interQuartileRange.getter(v23, v24);
    v25 = sub_237EF8370();
    v26 = OUTLINED_FUNCTION_23_12();
    result = (v16)(v26);
    if ((v25 & 1) == 0)
    {
      v27 = OUTLINED_FUNCTION_9_67();
      RobustScaler.Transformer.interQuartileRange.getter(v27, v28);
      OUTLINED_FUNCTION_11_11();
      sub_237EF8340();
      v29 = OUTLINED_FUNCTION_23_12();
      return (v16)(v29);
    }
  }

  return result;
}

uint64_t static RobustScaler.Transformer.== infix(_:_:)()
{
  if (sub_237EF8520())
  {
    type metadata accessor for RobustScaler.Transformer();
    v0 = sub_237EF8520();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_237EB64C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E616964656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000237F019E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237EB658C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E616964656DLL;
  }
}

uint64_t sub_237EB65D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237EB64C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EB660C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237EB6660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RobustScaler.Transformer.hashValue.getter()
{
  sub_237EFA120();
  RobustScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237EB6760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  RobustScaler.Transformer.applied(to:eventHandler:)(a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237EB67D4()
{
  sub_237EFA120();
  RobustScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t RobustScaler.Transformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000021, 0x8000000237F01990);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0xD000000000000016, 0x8000000237F019C0);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t RobustScaler.Transformer.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 16);
  v14 = v13;
  v15 = v3;
  v16 = v12;
  type metadata accessor for RobustScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_2_119();
  OUTLINED_FUNCTION_8_8();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  sub_237EFA1B0();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_9_3();
  v10 = v17;
  sub_237EF9A70();
  if (!v10)
  {
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_9_3();
    sub_237EF9A70();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t RobustScaler.Transformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  OUTLINED_FUNCTION_1_1();
  v46 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v44 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v41 - v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  type metadata accessor for RobustScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_2_119();
  OUTLINED_FUNCTION_8_8();
  v50 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v45 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v47 = a2;
  v51 = a2;
  v52 = a3;
  v49 = a4;
  v53 = a4;
  v54 = a5;
  v23 = type metadata accessor for RobustScaler.Transformer();
  OUTLINED_FUNCTION_1();
  v42 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  v28 = v55;
  sub_237EFA190();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v27;
  v55 = v23;
  v30 = v46;
  LOBYTE(v51) = 0;
  v31 = v47;
  OUTLINED_FUNCTION_7_9();
  v32 = *(v30 + 32);
  v41 = v29;
  v33 = v48;
  v48 = v32;
  (v32)(v29, v33, v31);
  LOBYTE(v51) = 1;
  v34 = v44;
  OUTLINED_FUNCTION_7_9();
  v35 = OUTLINED_FUNCTION_6_8();
  v36(v35);
  v37 = v55;
  v38 = v41;
  (v48)(&v41[*(v55 + 52)], v34, v31);
  v39 = v42;
  (*(v42 + 16))(v43, v38, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v39 + 8))(v38, v37);
}

uint64_t sub_237EB6E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v43 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v42 = v5;
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v40 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v44 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v46 = &v40 - v14;
  v15 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(a1 + 52), v15, v17);
  sub_237C65348();
  OUTLINED_FUNCTION_17_16();
  v20 = 1.0 / __dst[0];
  OUTLINED_FUNCTION_11_11();
  sub_237EF8330();
  OUTLINED_FUNCTION_17_16();
  v21 = v46;
  sub_237CFA100(v20, -__dst[0]);
  v22 = *(v9 + 16);
  v24 = v44;
  v23 = v45;
  v22(v44, v21, v45);
  v25 = v47;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage();
  v27 = v41;
  v28 = v41 + *(v26 + 24);
  *(v28 + 80) = 0;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v22(v27, v24, v23);
  memcpy(__dst, v28, 0x58uLL);
  sub_237C9BD20(__dst);
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0;
  v29 = v42;
  v30 = v43;
  (*(v42 + 16))(v27 + *(v26 + 20), v25, v43);
  v31 = sub_237E34060();
  v33 = v32;
  v34 = sub_237EF7780();
  v36 = v35;
  swift_isUniquelyReferenced_nonNull_native();
  v48 = *v36;
  sub_237C91098(v31, v33, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v36 = v48;
  v34(v49, 0);
  (*(v29 + 8))(v47, v30);
  v37 = *(v40 + 8);
  v38 = v45;
  v37(v44, v45);
  return (v37)(v46, v38);
}

uint64_t sub_237EB7274(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
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

void sub_237EB73C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
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

_BYTE *sub_237EB75DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_119()
{

  return swift_getWitnessTable();
}

void *sub_237EB7750@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for BoostedTreeRegressor();
  BoostedTreeRegressor.configuration.getter(v2, __src);
  return memcpy(a1, __src, 0x58uLL);
}

void (*BoostedTreeRegressor.configuration.modify(void *a1, uint64_t a2))(const void **a1)
{
  v5 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v5;
  v5[11] = a2;
  v5[12] = v2;
  OUTLINED_FUNCTION_8_87(v5, *(a2 + 32));
  return sub_237EB7860;
}

void sub_237EB7860(const void **a1)
{
  v1 = *a1;
  memcpy((*(*a1 + 12) + *(*(*a1 + 11) + 32)), *a1, 0x58uLL);

  free(v1);
}

uint64_t BoostedTreeRegressor.annotationColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BoostedTreeRegressor.annotationColumnID.setter(uint64_t a1)
{
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BoostedTreeRegressor.featureColumnNames.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

void *BoostedTreeRegressor.init(annotationColumnName:featureColumnNames:configuration:)@<X0>(uint64_t a1@<X2>, const void *a2@<X3>, uint64_t a3@<X8>)
{
  sub_237EF62D0();
  v6 = type metadata accessor for BoostedTreeRegressor();
  *(a3 + *(v6 + 28)) = a1;
  v7 = (a3 + *(v6 + 32));

  return memcpy(v7, a2, 0x58uLL);
}

uint64_t BoostedTreeRegressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  v7[9] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF61A0();
  v7[10] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v7[11] = v9;
  v7[12] = OUTLINED_FUNCTION_27_0();
  v10 = sub_237EF6310();
  v7[13] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v7[14] = v11;
  v7[15] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237EB7BD0, 0, 0);
}

uint64_t sub_237EB7BD0()
{
  v89 = v0;
  v1 = v0[3];
  v2 = *(v0[8] + *(v0[7] + 28));
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  sub_237CD1854(sub_237EB9050, v3, v2, v4, v5, v6, v7, v8, v41, v43, v45, v47, v49, v50, v52, v54, v57, v58, v61, v64, v67, v69, v71, v73, v76, v77, v78, v79, __dst[0], __dst[1]);
  v10 = v9;

  OUTLINED_FUNCTION_4_94();
  sub_237DDE9AC(v11, v12, 0x8000000237F1E130, v13);
  if (__dst[1])
  {
    v72 = __dst[0];
    v74 = __dst[2];
    v14 = *(v0[7] + 16);
    sub_237EF62C0();
    v15 = sub_237EF62B0();
    sub_237E87894(v15, v16, 0xD000000000000014, 0x8000000237F1E130);
    v55 = v14;
    v68 = __dst[1];
    v70 = __dst[3];
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[9];
    v62 = v0[13];
    v65 = v0[10];
    v59 = v0[4];

    sub_237EF62B0();
    sub_237EF61D0();

    sub_237DE15C0();
    v24 = *(v22 + 8);
    v24(v21, v62);
    sub_237C89E7C(v59, v23);
    if (__swift_getEnumTagSinglePayload(v23, 1, v65) == 1)
    {
      v25 = v0[6];
      v26 = v0[7];
      v27 = v0[5];
      sub_237C89EEC(v0[9]);
      OUTLINED_FUNCTION_8_87(__dst, *(v26 + 32));
      v85 = v72;
      v86 = v68;
      v87 = v74;
      v88 = v70;
      BaseTreeRegressor.fitted(features:annotations:eventHandler:)(&v85, v27, v25, &v81);

      v28 = v82;
      v75 = v81;
      v29 = v83;
    }

    else
    {
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      OUTLINED_FUNCTION_4_94();
      sub_237DDE9AC(v34, v35, 0x8000000237F1E130, v36);
      v37 = __dst[1];
      v66 = __dst[3];
      v60 = __dst[0];
      v63 = __dst[2];
      OUTLINED_FUNCTION_4_94();
      sub_237E871F4(v38, v39, 0x8000000237F1E130, v55);
      v40 = v0[15];
      v53 = v0[10];
      v56 = v0[12];
      v44 = v0[8];
      v46 = v0[13];
      v42 = v0[7];
      v51 = v0[11];
      v48 = v0[5];
      sub_237EF62B0();
      sub_237EF61D0();

      sub_237DE15C0();
      v24(v40, v46);
      memcpy(__dst, (v44 + *(v42 + 32)), sizeof(__dst));
      v81 = v72;
      v82 = v68;
      LOBYTE(v83) = v74;
      v84 = v70;
      v85 = v60;
      v86 = v37;
      v87 = v63;
      v88 = v66;
      BaseTreeRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(&v81, &v85, v48, &v77);
      (*(v51 + 8))(v56, v53);

      v28 = v78;
      v75 = v77;
      v29 = v79;
    }

    v30 = sub_237EF62B0();
    v32 = v31;
    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0xD000000000000012, 0x8000000237F00840);
    }

    v33 = v0[2];

    *v33 = v30;
    v33[1] = v32;
    v33[2] = v10;
    v33[3] = v75;
    v33[4] = v28;
    v33[5] = v29;

    OUTLINED_FUNCTION_3_0();
  }

  else
  {

    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v19 = swift_allocError();
    *v20 = 0xD000000000000014;
    v20[1] = 0x8000000237F1E130;
    v20[2] = 0xD000000000000064;
    v20[3] = 0x8000000237EFCB10;
    OUTLINED_FUNCTION_5_21(v19, v20);
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();
  }

  return v17();
}

void *BoostedTreeRegressor.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  result = sub_237E50E6C(a1, __dst);
  if (!v4)
  {
    v9 = __dst[1];
    v15 = __dst[0];
    v11 = __dst[2];
    v10 = __dst[3];
    v13 = __dst[4];
    v12 = __dst[5];

    sub_237E87DE0();
    sub_237E87DE0();

    memcpy(__dst, (v5 + *(a2 + 32)), sizeof(__dst));
    result = sub_237CCA49C(v13, v10, 0);
    *a3 = v15;
    a3[1] = v9;
    a3[2] = v11;
    a3[3] = v10;
    a3[4] = v13;
    a3[5] = v12;
  }

  return result;
}

void (*sub_237EB83D8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BoostedTreeRegressor.annotationColumnID.modify();
  return sub_237C803C0;
}

uint64_t sub_237EB8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C90C10;

  return BoostedTreeRegressor.fitted(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t BoostedTreeRegressor.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_8_87(__src, *(a1 + 32));
  type metadata accessor for XGBooster();
  swift_allocObject();
  v3 = sub_237E88668(0, 0);
  memcpy(__dst, __src, sizeof(__dst));
  sub_237CCA49C(v3, 0, 1);
  sub_237EF62C0();
  result = sub_237EF62B0();
  a2[4] = v3;
  a2[5] = 0;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = 0;
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t BoostedTreeRegressor.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_237EF6310();
  v6[10] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v6[11] = v8;
  v6[12] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237EB86EC, 0, 0);
}

uint64_t sub_237EB86EC()
{
  v41 = v0;
  v1 = v0[4];
  v4 = *(v1 + 24);
  v2 = (v1 + 24);
  v3 = v4;
  if (!v4)
  {
    v14 = sub_237EB8AB4(v0[5], v0[8]);
    v15 = v0[4];

    v3 = 0;
    *(v15 + 16) = v14;
    v16 = (v14 + 56);
    v17 = *(v14 + 16) + 1;
    while (--v17)
    {
      v18 = *v16;
      v19 = *(v16 - 1);
      v16 += 32;
      if (v18 >= 4)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      v21 = __OFADD__(v3, v20);
      v3 += v20;
      if (v21)
      {
        __break(1u);
        break;
      }
    }

    *v2 = v3;
  }

  OUTLINED_FUNCTION_4_94();
  sub_237DDE9AC(v5, v6, 0x8000000237F1E130, v7);
  v8 = v35;
  v9 = v37;
  if (!v35)
  {

    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v22 = 0xD000000000000014;
    *(v22 + 8) = 0x8000000237F1E130;
    *(v22 + 16) = 0xD000000000000064;
    *(v22 + 24) = 0x8000000237EFCB10;
    v23 = 4;
LABEL_17:
    *(v22 + 32) = v23;
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_18;
  }

  v10 = v34;
  if (v35 != v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    result = swift_allocObject();
    *(result + 16) = xmmword_237F04760;
    *(result + 32) = v10;
    if ((v10 * v8) >> 64 != (v10 * v8) >> 63)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    *(result + 40) = v10 * v8;

    sub_237EF9330();

    v34 = 0x6465746365707845;
    v35 = 0xE900000000000020;
    v0[2] = v3;
    v26 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v26);

    MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
    v0[3] = v8;
    v27 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v27);

    v28 = v34;
    v29 = v35;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v22 = v25;
    *(v22 + 8) = v28;
    *(v22 + 16) = v29;
    *(v22 + 24) = 0;
    v23 = 6;
    goto LABEL_17;
  }

  v31 = v36;
  v11 = v0[11];
  v12 = v0[12];
  v32 = v0[10];
  v33 = v0[6];
  OUTLINED_FUNCTION_8_87(&v34, *(v0[8] + 32));
  v38[0] = v10;
  v38[1] = v3;
  v39 = v31;
  v40 = v9;
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF61D0();

  v13 = sub_237DE15C0();
  (*(v11 + 8))(v12, v32);
  BaseTreeRegressor.update(_:features:annotations:eventHandler:)(v2, v38, v13, v33);

  OUTLINED_FUNCTION_3_0();
LABEL_18:

  return v30();
}

void sub_237EB8AF8(uint64_t *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v32 = a3;
  v6 = sub_237EF6310();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = *a1;
  v10 = a1[1];
  OUTLINED_FUNCTION_28_6();
  sub_237EF60D0();
  if (v12)
  {
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v13 = swift_allocError();
    *v14 = 0xD000000000000014;
    *(v14 + 8) = 0x8000000237F1E130;
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    v15 = v31;
    *(v14 + 32) = v30;
    *(v14 + 48) = v15;
    *(v14 + 64) = 0;
    swift_willThrow();
    *a2 = v13;
    sub_237EF8260();
  }

  else
  {
    v28 = v6;
    OUTLINED_FUNCTION_28_6();
    sub_237EF61D0();
    OUTLINED_FUNCTION_4_94();
    sub_237E0BB50(v16, v17, 0x8000000237F1E130);
    if (v3)
    {
      *a2 = v3;
    }

    else if (v19)
    {
      v22 = v32;
      *v32 = v18;
      v22[1] = v19;
      v22[2] = v20;
      *(v22 + 24) = v21;
    }

    else
    {
      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000030, 0x8000000237EFCE60);
      OUTLINED_FUNCTION_28_6();
      sub_237EF61D0();
      sub_237EF62F0();
      (*(v29 + 8))(v8, v28);
      v23 = sub_237EFA220();
      MEMORY[0x2383E0710](v23);

      MEMORY[0x2383E0710](0x756C6F63206E6920, 0xEB00000000206E6DLL);
      v24 = OUTLINED_FUNCTION_28_6();
      MEMORY[0x2383E0710](v24);
      v25 = v30;
      sub_237C84150();
      OUTLINED_FUNCTION_3_23();
      v26 = swift_allocError();
      *v27 = 0xD000000000000014;
      *(v27 + 8) = 0x8000000237F1E130;
      *(v27 + 16) = v25;
      OUTLINED_FUNCTION_5_21(v26, v27);
      swift_willThrow();
      *a2 = v26;
    }
  }
}

uint64_t sub_237EB8E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237CD5B14;

  return BoostedTreeRegressor.update(_:with:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237EB8F0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237EB8F48()
{
  sub_237EF62C0();
  if (v0 <= 0x3F)
  {
    sub_237CD4FCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *OUTLINED_FUNCTION_8_87@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (v2 + a2), 0x58uLL);
}

uint64_t type metadata accessor for SpatialConvolution()
{
  result = qword_27DEB6798;
  if (!qword_27DEB6798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237EB9100()
{
  result = sub_237EF6940();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237EB917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  type metadata accessor for SpatialConvolution();
  sub_237EF6940();
  v22 = v2;
  sub_237EF6850();
  sub_237EF6A40();
  v10 = sub_237EF6430();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  sub_237EF6970();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_12_11();
  v11(v12);
  v13 = *(v7 + 32);
  v14 = OUTLINED_FUNCTION_3_101();
  v13(v14);
  sub_237EF6960();
  v15 = OUTLINED_FUNCTION_12_11();
  v11(v15);
  v16 = OUTLINED_FUNCTION_3_101();
  v13(v16);
  sub_237EF6850();
  v17 = OUTLINED_FUNCTION_12_11();
  v11(v17);
  v18 = OUTLINED_FUNCTION_3_101();
  v13(v18);
  sub_237EF6960();
  v19 = OUTLINED_FUNCTION_12_11();
  return (v11)(v19);
}

uint64_t sub_237EB93E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74756C6F766E6F63 && a2 == 0xEC000000316E6F69;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74756C6F766E6F63 && a2 == 0xEC000000326E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237EB94F8(char a1)
{
  if (a1)
  {
    return 0x74756C6F766E6F63;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_237EB955C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB67D0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EB9D88();
  sub_237EFA1B0();
  v15 = 0;
  sub_237EF9A50();
  if (!v1)
  {
    type metadata accessor for SpatialConvolution();
    v14 = 1;
    sub_237EF6940();
    OUTLINED_FUNCTION_1_118();
    sub_237EB9E9C(v9, v10);
    OUTLINED_FUNCTION_4_95();
    v13 = 2;
    OUTLINED_FUNCTION_4_95();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237EB9710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v39 = sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB67C0);
  OUTLINED_FUNCTION_1();
  v35 = v12;
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v38 = type metadata accessor for SpatialConvolution();
  MEMORY[0x28223BE20](v38);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EB9D88();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v7;
  v42 = 0;
  *v16 = sub_237EF9950();
  v41 = 1;
  OUTLINED_FUNCTION_1_118();
  v19 = sub_237EB9E9C(v17, v18);
  v20 = v10;
  v21 = v39;
  v32 = v19;
  sub_237EF9970();
  v22 = v38;
  v23 = *(v38 + 20);
  v24 = *(v37 + 32);
  v31 = v16;
  v25 = v20;
  v26 = v24;
  v24(v16 + v23, v25, v21);
  v40 = 2;
  v27 = v33;
  sub_237EF9970();
  (*(v35 + 8))(v14, v36);
  v28 = v31;
  v26(v31 + *(v22 + 24), v27, v21);
  sub_237EB9DDC(v28, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237EB9E40(v28);
}

uint64_t sub_237EB9ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237EB93E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EB9B04(uint64_t a1)
{
  v2 = sub_237EB9D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EB9B40(uint64_t a1)
{
  v2 = sub_237EB9D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237EB9BB0()
{
  sub_237EB9E9C(&qword_27DEB2630, type metadata accessor for SpatialConvolution);

  return sub_237EF6890();
}

uint64_t sub_237EB9C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EB9E9C(&qword_27DEB2630, type metadata accessor for SpatialConvolution);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237EB9D88()
{
  result = qword_27DEB67C8;
  if (!qword_27DEB67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67C8);
  }

  return result;
}

uint64_t sub_237EB9DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialConvolution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237EB9E40(uint64_t a1)
{
  v2 = type metadata accessor for SpatialConvolution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237EB9E9C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SpatialConvolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237EB9FC4()
{
  result = qword_27DEB67D8;
  if (!qword_27DEB67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67D8);
  }

  return result;
}

unint64_t sub_237EBA01C()
{
  result = qword_27DEB67E0;
  if (!qword_27DEB67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67E0);
  }

  return result;
}

unint64_t sub_237EBA074()
{
  result = qword_27DEB67E8;
  if (!qword_27DEB67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_95()
{

  return sub_237EF9A70();
}

CVPixelBufferRef sub_237EBA114()
{
  v21[9] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v2 = [v1 imageByApplyingCGOrientation_];
  [v2 extent];
  Width = CGRectGetWidth(v22);
  [v2 extent];
  Height = CGRectGetHeight(v23);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB67F0);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277CC4D70];
  *(inited + 16) = xmmword_237F04760;
  v8 = *v7;
  v9 = *MEMORY[0x277CBED28];
  *(inited + 32) = *v7;
  *(inited + 40) = v9;
  v10 = *MEMORY[0x277CC4D68];
  *(inited + 48) = *MEMORY[0x277CC4D68];
  *(inited + 56) = v9;
  type metadata accessor for CFString(0);
  v11 = v9;
  v12 = v8;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB67F8);
  sub_237EBA408();
  sub_237EF8230();
  v14 = sub_237EF8200();

  v21[0] = 0;
  if (Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x20u, v14, v21))
  {

    v15 = 0;
    v16 = v21[0];
LABEL_11:

    return v15;
  }

  result = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  if (v21[0])
  {
    v18 = result;
    v19 = v21[0];
    v20 = DeviceRGB;
    [(__CVBuffer *)v18 render:v2 toCVPixelBuffer:v19 bounds:v20 colorSpace:0.0, 0.0, Width, Height];

    v15 = v21[0];
    v16 = v21[0];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_237EBA408()
{
  result = qword_27DEAD1E8;
  if (!qword_27DEAD1E8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD1E8);
  }

  return result;
}

void sub_237EBA4A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a3[2];
  if (v10)
  {
    sub_237EF8260();
    v11 = sub_237EF89B0();
    *(v11 + 16) = v10;
    bzero((v11 + 32), 8 * v10);
    v12 = a3;
  }

  else
  {
    v11 = sub_237EF89B0();
    *(v11 + 16) = 1;
    *(v11 + 32) = 0;
    v12 = &unk_284ACE3D0;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v12;
  *(a5 + 40) = v11;
  *(a5 + 48) = 0;
}

uint64_t sub_237EBA560(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BYTE *))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_237EF8260();
  sub_237EF8260();
  sub_237EBA4A4(a1, a2, a3, a4, v12);
  a5(v12);
  v9 = type metadata accessor for ScalarSequence();
  return (*(*(v9 - 8) + 8))(v12, v9);
}

uint64_t sub_237EBA6E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    result = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = result;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237EBA724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 48) == 1)
  {
    v5 = OUTLINED_FUNCTION_0_98();
    goto LABEL_10;
  }

  v9 = v2;
  v10 = *(v2 + 40);
  sub_237EF8260();
  sub_237E98F20();
  v11 = *(v2 + 16);
  if (!sub_237D22324(0, v11))
  {
    if (*(v11 + 16))
    {
      v17 = *v9;
      v18 = v9[1];
      v19 = v9[3];
      v20 = *(a1 + 16);
      sub_237D16740(v10, v17, v18, v11, v19, v20, *(a1 + 24));

      v5 = a2;
      v6 = 0;
      v7 = 1;
      v8 = v20;
    }

    else
    {

      v21 = *(a1 + 16);
      (*(*(v21 - 8) + 16))(a2, *v9, v21);
      v5 = a2;
      v6 = 0;
      v7 = 1;
      v8 = v21;
    }

LABEL_10:

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  v12 = OUTLINED_FUNCTION_0_98();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_237EBA87C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EBA8B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237EBA8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double LinearRegressor.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_237F15C20;
  *(a1 + 16) = 25;
  result = 1.0;
  *(a1 + 24) = xmmword_237F15C30;
  *(a1 + 40) = 10;
  *(a1 + 48) = 1;
  return result;
}

void LinearRegressor.configuration.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  v7 = *(v1 + 49);
  sub_237C65348();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  OUTLINED_FUNCTION_28_33(v6 & 1);
  *(a1 + 49) = v7;
}

double sub_237EBAA1C@<D0>(uint64_t a1@<X8>)
{
  LinearRegressor.configuration.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

unint64_t LinearRegressor.configuration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  result = sub_237C65348();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = 10;
  *(v1 + 48) = v7 & 1;
  *(v1 + 49) = v8;
  return result;
}

void (*LinearRegressor.configuration.modify(void *a1, uint64_t a2))(uint64_t **a1)
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  v5[7] = a2;
  v5[8] = v2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + 48);
  v12 = *(v2 + 49);
  sub_237C65348();
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[5] = 10;
  *(v5 + 48) = v11 & 1;
  *(v5 + 49) = v12;
  return sub_237EBABAC;
}

void sub_237EBABAC(uint64_t **a1)
{
  v1 = *a1;
  LinearRegressor.configuration.setter(*a1);

  free(v1);
}

void LinearRegressor.init(configuration:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  sub_237C65348();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  OUTLINED_FUNCTION_28_33(v6 & 1);
  *(a2 + 49) = v7;
}

uint64_t LinearRegressor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBAC84()
{
  v2 = OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_16_57(v2);
  swift_getKeyPath();

  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_43(v3);
  v4 = OUTLINED_FUNCTION_18_48();
  OUTLINED_FUNCTION_34_19(v4, v5, v6, v7, v8, v9, v10, v11);

  OUTLINED_FUNCTION_32_32();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_65(WitnessTable, v13, v14, v15, v16, v17, v18, v19, v74);
  if (v0)
  {

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  v22 = OUTLINED_FUNCTION_21_52();
  v30 = OUTLINED_FUNCTION_14_67(v22, v23, v24, v25, v26, v27, v28, v29, v75, v79, v82, v85, v87, v89, v91, v94, v96, v97, v98, v99);
  OUTLINED_FUNCTION_13_55(v30, v31, v32, v33, v34, v35, v36, v37, v76);
  swift_getKeyPath();

  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_30_42(v38);
  v39 = OUTLINED_FUNCTION_15_52();
  v47 = OUTLINED_FUNCTION_33_26(v39, v40, v41, v42, v43, v44, v45, v46);

  v1[21] = v47;
  v48 = swift_task_alloc();
  OUTLINED_FUNCTION_19_50(v48, v49, v50, v51, v52, v53, v54, v55, v77, v80, v83);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_52();
  sub_237C9339C();
  v1[30] = v56;

  OUTLINED_FUNCTION_3_102(v57, v58, v59, v60, v61, v62, v63, v64, v78, v81, v84, v86, v88, v90, v92, v93, v95);
  v65 = swift_task_alloc();
  v1[31] = v65;
  *v65 = v1;
  v65[1] = sub_237EBAEEC;
  OUTLINED_FUNCTION_68_2();

  return sub_237EBB088(v66, v67, v68, v69, v70, v71);
}

uint64_t sub_237EBAEEC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237EBB014()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EBB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 72) = a1;
  *(v6 + 112) = *a2;
  *(v6 + 66) = *(a2 + 16);
  *(v6 + 128) = *(a2 + 24);
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBB0D0()
{
  v11 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 66);
  v6 = *(v0 + 112);
  v7 = v2;
  v8 = v1;
  BaseLinearRegressor.fitted(features:annotations:eventHandler:)();
  memcpy(v10, __src, 0x51uLL);
  sub_237D5E9F4(v10, v9);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x65527261656E694CLL, 0xEF726F7373657267);
  }

  memcpy(*(v0 + 72), v9, 0x51uLL);
  OUTLINED_FUNCTION_10_3();

  return v3();
}

uint64_t LinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = v13;
  v8[37] = v14;
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[30] = a3;
  v8[31] = a4;
  v8[28] = a1;
  v8[29] = a2;
  OUTLINED_FUNCTION_17_58();
  v9 = OUTLINED_FUNCTION_6_2();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237EBB224()
{
  v81 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = swift_task_alloc();
  v7 = v5[2];
  *v6 = v7;
  v6[1] = v3;
  v6[2] = v4;
  v8 = v5[3];
  v6[3] = v8;
  v9 = v5[4];
  v6[4] = v9;
  v6[5] = v2;
  v76 = v8;
  v6[6] = v1;
  KeyPath = swift_getKeyPath();

  v11 = swift_task_alloc();
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = v2;
  v11[6] = v1;
  v11[7] = KeyPath;
  v12 = sub_237EF7E90();
  v13 = OUTLINED_FUNCTION_18_48();
  v18 = sub_237C8FFEC(v13, v14, v3, v12, v15, v2, v16, v17);

  *(v0 + 192) = v18;
  v19 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v74 = v7;
  sub_237EDB96C(v0 + 192, v19, v7, WitnessTable, v76, v9, &v77);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v71 = WitnessTable;
  v24 = *(v0 + 272);
  v23 = *(v0 + 280);

  v62 = v77;
  v64 = v78;
  v63 = v79;
  v75 = v80;
  *(v0 + 304) = v80;
  v25 = swift_task_alloc();
  *v25 = v74;
  v25[1] = v24;
  v25[2] = v23;
  v25[3] = v76;
  v25[4] = v9;
  v25[5] = v22;
  v25[6] = v21;
  v67 = v12;
  v26 = swift_getKeyPath();

  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v23;
  v27[4] = v9;
  v27[5] = v22;
  v27[6] = v21;
  v27[7] = v26;
  v65 = sub_237C8FFEC(sub_237E86944, v27, v24, v74, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v28);

  *(v0 + 200) = v65;
  v29 = swift_task_alloc();
  v29[2] = v74;
  v29[3] = v24;
  v29[4] = v23;
  v29[5] = v76;
  v29[6] = v9;
  v29[7] = v22;
  v29[8] = v21;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_52();
  sub_237C9339C();
  v73 = v30;
  *(v0 + 312) = v30;

  v31 = swift_task_alloc();
  *v31 = v74;
  v31[1] = v24;
  v31[2] = v23;
  v31[3] = v76;
  v31[4] = v9;
  v31[5] = v22;
  v31[6] = v21;
  v32 = swift_getKeyPath();

  v33 = swift_task_alloc();
  v33[2] = v24;
  v33[3] = v23;
  v33[4] = v9;
  v33[5] = v22;
  v33[6] = v21;
  v33[7] = v32;
  v34 = OUTLINED_FUNCTION_18_48();
  v38 = sub_237C8FFEC(v34, v35, v36, v67, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v37);

  *(v0 + 208) = v38;
  sub_237EDB96C(v0 + 208, v19, v74, v71, v76, v9, &v77);
  v40 = *(v0 + 288);
  v39 = *(v0 + 296);
  v41 = *(v0 + 272);
  v42 = *(v0 + 280);

  v72 = v78;
  v70 = v79;
  v68 = v80;
  v69 = v77;
  *(v0 + 320) = v80;
  v43 = swift_task_alloc();
  *v43 = v74;
  v43[1] = v41;
  v43[2] = v42;
  v43[3] = v76;
  v43[4] = v9;
  v43[5] = v40;
  v66 = v40;
  v43[6] = v39;
  v44 = swift_getKeyPath();

  v45 = swift_task_alloc();
  v45[2] = v41;
  v45[3] = v42;
  v45[4] = v9;
  v45[5] = v40;
  v45[6] = v39;
  v45[7] = v44;
  v46 = OUTLINED_FUNCTION_15_52();
  v51 = sub_237C8FFEC(v46, v47, v42, v74, v48, v39, v49, v50);

  *(v0 + 216) = v51;
  v52 = swift_task_alloc();
  v52[2] = v74;
  v52[3] = v41;
  v52[4] = v42;
  v52[5] = v76;
  v52[6] = v9;
  v52[7] = v66;
  v52[8] = v39;
  OUTLINED_FUNCTION_15_52();
  sub_237C9339C();
  v54 = v53;
  *(v0 + 328) = v53;

  v55 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 128) = v62;
  *(v0 + 88) = v55;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  *(v0 + 136) = v64;
  *(v0 + 144) = v63;
  *(v0 + 160) = v69;
  *(v0 + 152) = v75;
  *(v0 + 168) = v72;
  *(v0 + 176) = v70;
  *(v0 + 184) = v68;
  v56 = swift_task_alloc();
  *(v0 + 336) = v56;
  *v56 = v0;
  v56[1] = sub_237EBB8C4;
  v57 = *(v0 + 256);
  v58 = *(v0 + 264);
  v59 = *(v0 + 248);
  v60 = *(v0 + 224);

  return sub_237EBBB90(v60, v0 + 128, v73, v0 + 160, v54, v59, v57, v58);
}

uint64_t sub_237EBB8C4()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237EBBA1C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EBBA9C()
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_12_59(v1, v5);
  v3(v2);
  sub_237C65348();
  return OUTLINED_FUNCTION_25_40();
}

uint64_t sub_237EBBB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 72) = a1;
  *(v9 + 80) = a3;
  *(v9 + 120) = *a2;
  *(v9 + 66) = *(a2 + 16);
  *(v9 + 136) = *(a2 + 24);
  *(v9 + 144) = *a4;
  *(v9 + 67) = *(a4 + 16);
  *(v9 + 160) = *(a4 + 24);
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  *(v9 + 64) = *(v8 + 24);
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  *(v9 + 16) = v10;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = v8;
  v9 = *(v8 + 160);
  v10 = *(v8 + 67);
  v11 = *(v8 + 136);
  v12 = *(v8 + 66);
  v13 = *(v8 + 96);
  v14 = *(v8 + 104);
  v15 = *(v8 + 80);
  v16 = *(v8 + 88);
  v22 = *(v8 + 120);
  LOBYTE(v23) = v12;
  v24 = v11;
  v25 = *(v8 + 144);
  v26 = v10;
  v27 = v9;
  BaseLinearRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(&v22, v15, &v25, v16, v13, v14, a7, a8, v20, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v22, *(&v22 + 1), v23, v11);
  v17 = *(v8 + 72);
  memcpy(v28, __src, 0x51uLL);
  sub_237D5E9F4(v28, v17);
  OUTLINED_FUNCTION_10_3();

  return v18();
}

void LinearRegressor.encode(_:to:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for LinearRegressorModel();
  sub_237D5F49C();
}

uint64_t sub_237EBBD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return LinearRegressor.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237EBBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C6A904;

  return LinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v18, a6, a7);
}

double LinearRegressor.makeTransformer()@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v11 = sub_237EF89A0();
  v5 = sub_237EF8A60();
  v7 = a1[3];
  v6 = a1[4];
  WitnessTable = swift_getWitnessTable();
  return LinearRegressorModel.init<A>(coefficients:)(&v11, v4, v5, v7, v6, WitnessTable, v9, a2);
}

uint64_t LinearRegressor.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBC050()
{
  v2 = OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_16_57(v2);
  swift_getKeyPath();

  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_43(v3);
  v4 = OUTLINED_FUNCTION_18_48();
  OUTLINED_FUNCTION_34_19(v4, v5, v6, v7, v8, v9, v10, v11);

  OUTLINED_FUNCTION_32_32();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_65(WitnessTable, v13, v14, v15, v16, v17, v18, v19, v73);
  if (v0)
  {

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  v22 = OUTLINED_FUNCTION_21_52();
  v30 = OUTLINED_FUNCTION_14_67(v22, v23, v24, v25, v26, v27, v28, v29, v74, v78, v81, v84, v86, v88, v90, v93, v95, v96, v97, v98);
  OUTLINED_FUNCTION_13_55(v30, v31, v32, v33, v34, v35, v36, v37, v75);
  swift_getKeyPath();

  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_30_42(v38);
  v39 = OUTLINED_FUNCTION_15_52();
  v47 = OUTLINED_FUNCTION_33_26(v39, v40, v41, v42, v43, v44, v45, v46);

  v1[21] = v47;
  v48 = swift_task_alloc();
  OUTLINED_FUNCTION_19_50(v48, v49, v50, v51, v52, v53, v54, v55, v76, v79, v82);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_52();
  sub_237C9339C();
  v1[30] = v56;

  OUTLINED_FUNCTION_3_102(v57, v58, v59, v60, v61, v62, v63, v64, v77, v80, v83, v85, v87, v89, v91, v92, v94);
  v65 = swift_task_alloc();
  v1[31] = v65;
  *v65 = v1;
  v65[1] = sub_237EBC2B4;
  OUTLINED_FUNCTION_68_2();

  return sub_237EBC498(v66, v67, v68, v69, v70);
}

uint64_t sub_237EBC2B4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237EBC3DC()
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_12_59(v1, v5);
  v3(v2);
  sub_237C65348();
  return OUTLINED_FUNCTION_25_40();
}

uint64_t sub_237EBC498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  *(v5 + 72) = a1;
  *(v5 + 80) = a3;
  *(v5 + 104) = *a2;
  *(v5 + 66) = *(a2 + 16);
  *(v5 + 120) = *(a2 + 24);
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

void LinearRegressor.encodeWithOptimizer(_:to:)(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  if (v5)
  {
    v12 = v6;
    v13[0] = v5;
    memcpy(&v13[1], a1 + 2, 0x41uLL);
    type metadata accessor for LinearRegressorModel();
    sub_237D5F49C();
    if (!v2)
    {
      v12 = v5;
      memcpy(v13, __dst, 0x41uLL);
      v7 = *(a2 + 24);
      v8 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
      v9 = *(v8 + 16);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
      v11 = sub_237D91558(&qword_27DEB2A10);
      v9(&v12, v10, v11, v7, v8);
    }
  }

  else
  {
    sub_237EF9740();
    __break(1u);
  }
}

void LinearRegressor.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  sub_237D5F804(a1, a2[2], a2[3], a2[4], a3, a4, a5, a6, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], __dst[0]);
  if (!v7)
  {
    v15 = a7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v20 = *(v11 + 16);
    v13 = sub_237D91558(&qword_27DEB2A20);
    v20(v18, v10, v10, v13, v12, v11);
    memcpy(v16, v18, 0x49uLL);
    memcpy(__dst, &__src[8], 0x49uLL);
    sub_237D09E34(__dst);
    memcpy(&__src[8], v16, 0x49uLL);
    memcpy(v15, __src, 0x51uLL);
  }
}

uint64_t sub_237EBC8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return LinearRegressor.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

_BYTE *(*LinearRegressor.Configuration.optimizationStrategy.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 49);
  return sub_237DDD4C8;
}

BOOL static LinearRegressor.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24)))))) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 40) == *(a2 + 40) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    return *(a1 + 49) == *(a2 + 49);
  }

  return result;
}

unint64_t sub_237EBCC5C(char a1)
{
  result = 0x746C616E6550326CLL;
  switch(a1)
  {
    case 1:
      result = 0x746C616E6550316CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x657A695370657473;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x616546656C616373;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237EBCD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DDD55C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EBCDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237EBCDD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237EBCE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LinearRegressor.Configuration.encode(to:)(void *a1)
{
  type metadata accessor for LinearRegressor.Configuration.CodingKeys();
  OUTLINED_FUNCTION_7_79();
  swift_getWitnessTable();
  v3 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = *(v1 + 16);
  v16 = *(v1 + 40);
  v17 = v7;
  v15[3] = *(v1 + 48);
  v8 = *(v1 + 49);
  v9 = a1[3];
  v10 = a1;
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_237EFA1B0();
  v27 = 0;
  v13 = v18;
  sub_237EF9A30();
  if (!v13)
  {
    v26 = 1;
    OUTLINED_FUNCTION_8_59();
    v25 = 2;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    v24 = 3;
    OUTLINED_FUNCTION_8_59();
    v23 = 4;
    OUTLINED_FUNCTION_8_59();
    v22 = 5;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    v21 = 6;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A20();
    v20 = v8;
    v19 = 7;
    sub_237DDDE38();
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A70();
  }

  return (*(v5 + 8))(v12, v3);
}

uint64_t LinearRegressor.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 49);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x2383E2240](*&v8);
  MEMORY[0x2383E2210](v3);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2383E2240](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x2383E2240](*&v10);
  MEMORY[0x2383E2210](v6);
  sub_237EFA140();
  return MEMORY[0x2383E2210](v7);
}

uint64_t LinearRegressor.Configuration.hashValue.getter()
{
  sub_237EFA120();
  LinearRegressor.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearRegressor.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinearRegressor.Configuration.CodingKeys();
  OUTLINED_FUNCTION_7_79();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v2)
  {
    sub_237EF9930();
    v6 = v5;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v8 = v7;
    OUTLINED_FUNCTION_0_90();
    v9 = sub_237EF9950();
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v11 = v10;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v13 = v12;
    OUTLINED_FUNCTION_0_90();
    v15 = sub_237EF9950();
    OUTLINED_FUNCTION_0_90();
    v16 = sub_237EF9920();
    sub_237DDE2A4();
    sub_237EF9970();
    v17 = OUTLINED_FUNCTION_12_41();
    v18(v17);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16 & 1;
    *(a2 + 49) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237EBD4F4()
{
  sub_237EFA120();
  LinearRegressor.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237EBD5E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237EBD638()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EBD68C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237EBD6E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 OUTLINED_FUNCTION_3_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17)
{
  v18 = *(a13 + 16);
  *(v17 + 72) = *a13;
  *(v17 + 128) = a12;
  *(v17 + 88) = v18;
  result = *(a13 + 32);
  *(v17 + 104) = result;
  *(v17 + 120) = *(a13 + 48);
  *(v17 + 136) = a17;
  *(v17 + 144) = a16;
  *(v17 + 152) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_237EDB96C(v11, v12, v13, a1, v10, v9, va);
}

void *OUTLINED_FUNCTION_13_55(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = v10;
  result[1] = v9;
  result[2] = v11;
  result[3] = v12;
  result[4] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 232) = a20;

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_16_57(void *result)
{
  *result = v2[2];
  result[1] = v1;
  result[2] = v2[3];
  result[3] = v2[4];
  result[4] = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_17_58()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  result = *(v0 + 32);
  *(v1 + 48) = result;
  *(v1 + 64) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = a11;
  a1[5] = v11;
  a1[6] = v14;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_21_52()
{
}

uint64_t OUTLINED_FUNCTION_22_43(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v4;
  a1[5] = v3;

  return sub_237EF7E90();
}

uint64_t OUTLINED_FUNCTION_25_40()
{

  return sub_237EF8190();
}

void OUTLINED_FUNCTION_28_33(char a1@<W8>)
{
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 10;
  *(v1 + 48) = a1;
}

void *OUTLINED_FUNCTION_30_42(void *result)
{
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_32()
{
  *(v1 + 160) = v0;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_33_26(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_237C8FFEC(a1, a2, v8, v9, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_34_19(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_237C8FFEC(a1, a2, v8, v10, a5, v9, a7, a8);
}

uint64_t OUTLINED_FUNCTION_35_23()
{

  return swift_task_alloc();
}

uint64_t TabularEstimator<>.fitted(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_99(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_1(v4);
  *v5 = v6;
  v5[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_120();

  return v7();
}

uint64_t TabularEstimator<>.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a1, AssociatedTypeWitness, a5, v7, v8);
}

uint64_t TabularEstimator.fitted(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_99(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_1(v4);
  *v5 = v6;
  v5[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_2_120();

  return v7();
}

uint64_t TabularEstimator<>.decode(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(AssociatedTypeWitness, AssociatedTypeWitness, a4, v7, v8);
}

uint64_t UpdatableTabularEstimator.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_99(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_120();

  return v6();
}

uint64_t dispatch thunk of TabularEstimator.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_1(v6);
  *v7 = v8;
  v7[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_3_103();

  return v9();
}

uint64_t dispatch thunk of UpdatableTabularEstimator.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_237C606BC;
  OUTLINED_FUNCTION_3_103();

  return v8();
}

BOOL sub_237EBE2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32) == 1 && v4 == a3;
  if (!v6 || v4 < v5)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v57 = a3;
  if (v5 < 0xFFFFFFFF80000000)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = a1;
  v55 = 1;
  v56 = v5;
  v53 = a3;
  v54 = a3;
  OUTLINED_FUNCTION_1_119();
  sub_237D0BEC0();
  v51 = 0xBFF0000000000000;
  v50 = 0;
  v48 = 0;
  v47 = 0xFFFFFFFF00000000;
  log2(v5 / 26.0);
  OUTLINED_FUNCTION_36_2();
  if (!(v9 ^ v10 | v6))
  {
    goto LABEL_43;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (__OFADD__(v8, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = (v8 + 1) & ~((v8 + 1) >> 63);
  v12 = 3 * v5 * v11;
  if ((3 * v5 * v11) >> 64 != v12 >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = __OFADD__(v12, 11 * v5);
  v13 = v12 + 11 * v5;
  if (v10)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  sub_237CDC320(0, v14);
  v16 = v15;
  sub_237EF8260();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BFC0();
    v16 = isUniquelyReferenced_nonNull_native;
  }

  v3 = *v3;
  OUTLINED_FUNCTION_0_100(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v43, v45, &v48, &v47 + 4, v16 + 32, &v47, v47, v48, v49, v50, SHIWORD(v50), v51, SHIDWORD(v51), v52, v53, SHIWORD(v53), v54);

  OUTLINED_FUNCTION_36_2();
  if (!(v9 ^ v10 | v6))
  {
    goto LABEL_49;
  }

  if (v25 <= -2147483650.0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v25 >= 2147483650.0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  HIDWORD(v47) = v25;
  sub_237CDC02C(v25, 0.0);
  v27 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BEC0();
  }

  sub_237EF8260();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BEC0();
    v27 = v28;
  }

  sub_237EF8260();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BFC0();
    v16 = v29;
  }

  v30 = sub_237EF8260();
  OUTLINED_FUNCTION_0_100(v30, v31, v32, v33, v34, v35, v36, v37, v44, v46, v27 + 32, &v47 + 4, v16 + 32, &v47, v47, v48, v49, v50, SHIWORD(v50), v51, SHIDWORD(v51), v52, v53, SHIWORD(v53), v54);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  LODWORD(v3) = v47;
  if (v47 >= 1)
  {
    if (qword_27DEAD0C8 == -1)
    {
LABEL_35:
      v38 = sub_237EF7DB0();
      __swift_project_value_buffer(v38, qword_27DEE2458);
      v39 = sub_237EF7D90();
      v40 = sub_237EF8F80();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_237C51000, v39, v40, "The optimization process failed to find a solution.", v41, 2u);
        MEMORY[0x2383E2DF0](v41, -1, -1);
      }

      return v3 > 0;
    }

LABEL_52:
    swift_once();
    goto LABEL_35;
  }

  return v3 > 0;
}

uint64_t OUTLINED_FUNCTION_0_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, int a21, int a22, char a23, __int16 a24, char a25)
{

  return MEMORY[0x2821098B8](v28 - 76, v28 - 80, v28 - 84, v27, &a25, v25, &a23, v26 + 32, &a20, &a18);
}

uint64_t sub_237EBE6BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v24 = a4;
  v23 = a1;
  v22 = sub_237EF7B10();
  v9 = *(v22 - 8);
  result = MEMORY[0x28223BE20](v22);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a6 >> 1;
  v21[1] = v9 + 16;
  v14 = (v9 + 8);
  while (1)
  {
    v15 = a5;
    if (v13 == a5)
    {
      return v13 == v15;
    }

    if (a5 >= v13)
    {
      break;
    }

    v16 = v24 + *(v9 + 72) * a5;
    v17 = v22;
    (*(v9 + 16))(v12, v16, v22);
    v18 = v23(v12);
    if (v6)
    {
      (*v14)(v12, v17);
      return v13 == v15;
    }

    v19 = v18;
    v20 = v17;
    a5 = v15 + 1;
    result = (*v14)(v12, v20);
    if ((v19 & 1) == 0)
    {
      return v13 == v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237EBE848(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    return sub_237EF8260();
  }

  __break(1u);
  return result;
}

void sub_237EBE8A8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v71 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v78 = v14;
  v79 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v76 = v15;
  OUTLINED_FUNCTION_12_1();
  v77 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v75 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v72 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v73 = v23;
  v74 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v85 = v24;
  OUTLINED_FUNCTION_22_44();
  v80 = v6;
  v81 = v4;
  OUTLINED_FUNCTION_20_10();
  sub_237CF1674();
  v25 = *(v2 + 16);
  v83 = v25;
  v84 = v0;
  v82 = v21;
  v70 = v2;
  if (v25)
  {
    v92[0] = MEMORY[0x277D84F90];
    sub_237C63364(0, v25, 0);
    v26 = v92[0];
    v27 = (v2 + 32);
    v89 = *(v8 + 104);
    LODWORD(v87) = *MEMORY[0x277D25270];
    LODWORD(v86) = *MEMORY[0x277D25278];
    v88 = v8 + 32;
    v28 = v25;
    v29 = v71;
    do
    {
      v31 = *v27++;
      v30 = v31;
      if ((v31 + 1) > 1)
      {
        *v12 = v30;
        v32 = v86;
      }

      else
      {
        *v12 = 0;
        v32 = v87;
      }

      v89(v12, v32, v29);
      v92[0] = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v33);
        OUTLINED_FUNCTION_95_2();
        sub_237C63364(v36, v37, v38);
        v29 = v71;
        v26 = v92[0];
      }

      *(v26 + 16) = v34 + 1;
      OUTLINED_FUNCTION_28();
      (*(v8 + 32))(v26 + v35 + *(v8 + 72) * v34, v12, v29);
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_77_4(v92);
  v39 = sub_237CF196C(0x65706168736572);
  v41 = v40;
  OUTLINED_FUNCTION_77_4(&v91);
  OUTLINED_FUNCTION_44_16();
  sub_237CF12A0(v42);
  OUTLINED_FUNCTION_20_10();
  sub_237EF7CC0();

  v88 = v41;
  v89 = v39;
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_7_80();
  v45 = *(v44 + 72);
  OUTLINED_FUNCTION_17_59();
  v48 = v47 & ~v46;
  v49 = OUTLINED_FUNCTION_55_11();
  *(v49 + 16) = xmmword_237F04760;
  v50 = (v49 + v48);
  *&v87 = v43;
  OUTLINED_FUNCTION_23_40();
  *v50 = v51;
  v50[1] = v52;
  sub_237EF8260();
  OUTLINED_FUNCTION_44_16();
  sub_237EF7A20();
  v53 = (v49 + v48 + v45);
  *v53 = 0x6570616873;
  v53[1] = 0xE500000000000000;
  v54 = v83;
  if (v83)
  {
    v86 = v49;
    v90 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_34_20();
    sub_237C63320();
    v55 = v90;
    v56 = (v70 + 32);
    while (1)
    {
      v58 = *v56++;
      v57 = v58;
      if (v58 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v57 > 0x7FFFFFFF)
      {
        goto LABEL_19;
      }

      v90 = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v59);
        sub_237C63320();
        v55 = v90;
      }

      *(v55 + 16) = v60 + 1;
      *(v55 + 4 * v60 + 32) = v57;
      if (!--v54)
      {
        v54 = v83;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v61 = OUTLINED_FUNCTION_107();
    v87 = xmmword_237F03530;
    *(v61 + 16) = xmmword_237F03530;
    *(v61 + 32) = v54;
    sub_237EF7A50();
    sub_237EF7B00();
    sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
    OUTLINED_FUNCTION_40_18();
    v62 = sub_237EF78C0();
    OUTLINED_FUNCTION_6_1(v62);
    *(OUTLINED_FUNCTION_8_88() + 16) = v87;
    v63 = OUTLINED_FUNCTION_41_10();
    v64(v63);
    sub_237EF8260();
    sub_237EF7880();
    OUTLINED_FUNCTION_74_4();
    sub_237CF33F8();
    v65 = OUTLINED_FUNCTION_37_26();
    v66(v65);
    v67 = OUTLINED_FUNCTION_6_73();
    v68(v67);
    (*(v73 + 8))(v85, v74);
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237EBEF48()
{
  OUTLINED_FUNCTION_37_0();
  v81 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_102_2();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v77 = v7;
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v75 = v8;
  OUTLINED_FUNCTION_12_1();
  v76 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v74 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v73 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_1();
  v83 = v13;
  OUTLINED_FUNCTION_12_1();
  v14 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v88 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36_24();
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v71 = v24;
  v72 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_81_1();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v95);
  v82 = v27;
  OUTLINED_FUNCTION_81_1();
  sub_237CF12A0(v28);
  v84 = v0;
  OUTLINED_FUNCTION_48_16(&v94);
  v79 = v1;
  v80 = v5;
  OUTLINED_FUNCTION_81_1();
  sub_237CF11B8();
  v30 = v29;
  *v22 = 0;
  v31 = *(v16 + 104);
  LODWORD(v87) = *MEMORY[0x277D25270];
  v32 = v14;
  v85 = v31;
  v86 = v16 + 104;
  v31(v22);
  v91 = v30;
  v33 = *(v30 + 16);
  v34 = OUTLINED_FUNCTION_69_8();
  v36 = sub_237CDC0C4(v34, v35);
  if (v33)
  {
    if (v33 > *(v81 + 16))
    {
LABEL_28:
      __break(1u);
      return;
    }

    v37 = 0;
    v89 = v91 + 32;
    *&v90 = v81 + 32;
    while (1)
    {
      v38 = *(v90 + 8 * v37);
      if ((v38 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v38 >= *(v91 + 16))
      {
        goto LABEL_24;
      }

      if (*(v89 + 16 * v38 + 8))
      {
        *v2 = 0;
        v85(v2, v87, v32);
      }

      else
      {
        v39 = v88;
        sub_237EF78D0();
        (*(v16 + 32))(v2, v39, v32);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E64218();
        v36 = v41;
      }

      if (v37 >= *(v36 + 16))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_28();
      (*(v16 + 40))(v36 + v40 + *(v16 + 72) * v37++, v2, v32);
      if (v33 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_13:

  sub_237EF7CC0();
  OUTLINED_FUNCTION_48_16(&v93);
  v42 = sub_237CF196C(0x736F70736E617274);
  v91 = v43;
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_7_80();
  v46 = *(v45 + 72);
  OUTLINED_FUNCTION_17_59();
  v49 = v48 & ~v47;
  v50 = OUTLINED_FUNCTION_55_11();
  *(v50 + 16) = xmmword_237F04760;
  v51 = (v50 + v49);
  OUTLINED_FUNCTION_23_40();
  *v51 = v52;
  v51[1] = v53;
  sub_237EF8260();
  sub_237EF7A20();
  v54 = (v50 + v49 + v46);
  *v54 = 1836213616;
  v54[1] = 0xE400000000000000;
  v55 = v81;
  v56 = *(v81 + 16);
  if (v56)
  {
    v87 = v54;
    v88 = v44;
    v89 = v50;
    *&v90 = v42;
    v92 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_34_20();
    sub_237C63320();
    v57 = v92;
    v58 = (v55 + 32);
    v59 = v56;
    v86 = v56;
    while (1)
    {
      v61 = *v58++;
      v60 = v61;
      if (v61 < 0xFFFFFFFF80000000)
      {
        goto LABEL_26;
      }

      if (v60 > 0x7FFFFFFF)
      {
        goto LABEL_27;
      }

      v92 = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      if (v63 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v62);
        sub_237C63320();
        v57 = v92;
      }

      *(v57 + 16) = v63 + 1;
      *(v57 + 4 * v63 + 32) = v60;
      if (!--v59)
      {

        v56 = v86;
        goto LABEL_22;
      }
    }
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v64 = OUTLINED_FUNCTION_107();
  v90 = xmmword_237F03530;
  *(v64 + 16) = xmmword_237F03530;
  *(v64 + 32) = v56;
  sub_237EF7A50();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_40_18();
  v65 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v65);
  *(OUTLINED_FUNCTION_8_88() + 16) = v90;
  (*(v74 + 16))(v73, v83, v76);
  sub_237EF8260();
  OUTLINED_FUNCTION_30_43();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4();
  sub_237CF33F8();
  v66 = OUTLINED_FUNCTION_37_26();
  v67(v66);
  v68 = OUTLINED_FUNCTION_57_10();
  v69(v68);
  (*(v71 + 8))(v82, v72);
  OUTLINED_FUNCTION_30_43();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EBF68C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v100 = v3;
  v101 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v98 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_1();
  v105 = v10;
  OUTLINED_FUNCTION_12_1();
  v102 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v114 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v111 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  v112 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v96 = v19;
  v97 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_22_44();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v119);
  OUTLINED_FUNCTION_55_1();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v118);
  v104 = v22;
  sub_237CF12A0(v22);
  OUTLINED_FUNCTION_48_16(&v117);
  sub_237CF11B8();
  v24 = v23;
  OUTLINED_FUNCTION_48_16(&v116);
  OUTLINED_FUNCTION_55_1();
  sub_237CF11B8();
  v26 = v25;
  v27 = sub_237ED8388(v25);
  if ((v28 & 0x100) != 0)
  {
    goto LABEL_54;
  }

  if (v28)
  {
    OUTLINED_FUNCTION_17_15();
    OUTLINED_FUNCTION_19_51();
    goto LABEL_56;
  }

  v29 = *(v26 + 16);
  v30 = *(v24 + 16);
  v31 = __OFADD__(v29 - 1, v30);
  v32 = v29 - 1 + v30;
  v33 = v102;
  if (v31)
  {
    goto LABEL_43;
  }

  v31 = __OFSUB__(v32, v27);
  v34 = v32 - v27;
  if (v31)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v31 = __OFSUB__(v34, v1);
  v35 = v34 - v1;
  if (v31)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v103 = v1;
  v95 = v6;
  if (!v35)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370);
    OUTLINED_FUNCTION_18_49();
    *(swift_allocObject() + 16) = xmmword_237F03530;
    sub_237EF78D0();
    goto LABEL_37;
  }

  v94 = v27;
  sub_237D0BDB8(0, v35 & ~(v35 >> 63), 0, MEMORY[0x277D84F90]);
  if (!v29)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_237D6A768(0, v29 - 1, v26);
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = v41 >> 1;
  v43 = v42 - v39;
  if (__OFSUB__(v42, v39))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v43)
  {
    v115[0] = MEMORY[0x277D84F90];
    sub_237C63364(0, v43 & ~(v43 >> 63), 0);
    if (v43 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v44 = v115[0];
    v107 = *MEMORY[0x277D25278];
    v106 = *MEMORY[0x277D25270];
    v45 = (v37 + 16 * v39 + 8);
    v109 = v42;
    while (v39 < v42)
    {
      if (*v45)
      {
        *v112 = 0;
        v46 = v106;
      }

      else
      {
        *v112 = *(v45 - 1);
        v46 = v107;
      }

      (*(v114 + 104))(v112, v46, v33);
      v47 = *(v114 + 32);
      v48 = OUTLINED_FUNCTION_18_14();
      v47(v48);
      v49 = v44;
      v115[0] = v44;
      v50 = v33;
      v52 = v44[2];
      v51 = v44[3];
      if (v52 >= v51 >> 1)
      {
        v55 = OUTLINED_FUNCTION_17_0(v51);
        v44 = v115;
        sub_237C63364(v55, v52 + 1, 1);
        v49 = v115[0];
      }

      v49[2] = v52 + 1;
      OUTLINED_FUNCTION_28();
      v54 = OUTLINED_FUNCTION_70_7(v53);
      v47(v54);
      ++v39;
      v45 += 16;
      v42 = v109;
      v33 = v50;
      if (v109 == v39)
      {
        swift_unknownObjectRelease();
        v1 = v103;
        v56 = v44;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  swift_unknownObjectRelease();
  v56 = MEMORY[0x277D84F90];
LABEL_22:
  sub_237E48660(v56);
  if (__OFADD__(v94, v1))
  {
    goto LABEL_50;
  }

  sub_237EBE848(v94 + v1, v24);
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = v62 >> 1;
  v64 = (v62 >> 1) - v60;
  if (__OFSUB__(v62 >> 1, v60))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v64)
  {
    swift_unknownObjectRelease();
    v77 = MEMORY[0x277D84F90];
LABEL_36:
    sub_237E48660(v77);
LABEL_37:
    sub_237EF7CC0();

    OUTLINED_FUNCTION_77_4(v115);
    sub_237CF196C(0x726568746167);
    sub_237CF0C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
    v78 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08) - 8) + 72);
    OUTLINED_FUNCTION_17_59();
    v81 = v80 & ~v79;
    v82 = OUTLINED_FUNCTION_55_11();
    *(v82 + 16) = xmmword_237F08A50;
    v83 = (v82 + v81);
    OUTLINED_FUNCTION_23_40();
    *v83 = v84;
    v83[1] = v85;
    sub_237EF8260();
    sub_237EF7A20();
    v86 = (v83 + v78);
    *v86 = 0x73656369646E69;
    v86[1] = 0xE700000000000000;
    sub_237EF8260();
    sub_237EF7A20();
    v87 = (v83 + 2 * v78);
    *v87 = 0x69645F6863746162;
    v87[1] = 0xEA0000000000736DLL;
    if (v103 >= 0xFFFFFFFF80000000)
    {
      OUTLINED_FUNCTION_94_4();
      if (v89 ^ v31 | v88)
      {
        sub_237EF7A90();
        sub_237EF7B00();
        sub_237EF8230();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
        OUTLINED_FUNCTION_102_2();
        v90 = sub_237EF78C0();
        OUTLINED_FUNCTION_6_1(v90);
        OUTLINED_FUNCTION_18_49();
        *(swift_allocObject() + 16) = xmmword_237F03530;
        OUTLINED_FUNCTION_91_2();
        v91(v98, v105, v99);
        sub_237EF8260();
        OUTLINED_FUNCTION_5_12();
        sub_237EF7880();
        sub_237EF7BF0();
        sub_237CF33F8();
        (*(v100 + 8))(v95, v101);
        v92 = OUTLINED_FUNCTION_97_4();
        v93(v92);
        (*(v96 + 8))(v104, v97);
        OUTLINED_FUNCTION_5_12();
        OUTLINED_FUNCTION_38_0();
        return;
      }

      goto LABEL_47;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v115[0] = MEMORY[0x277D84F90];
  sub_237C63364(0, v64 & ~(v64 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v65 = v115[0];
    v110 = *MEMORY[0x277D25278];
    v108 = *MEMORY[0x277D25270];
    v66 = (v58 + 16 * v60 + 8);
    v113 = v63;
    while (v60 < v63)
    {
      if (*v66)
      {
        *v111 = 0;
        v67 = v108;
      }

      else
      {
        *v111 = *(v66 - 1);
        v67 = v110;
      }

      (*(v114 + 104))(v111, v67, v33);
      v68 = *(v114 + 32);
      v69 = OUTLINED_FUNCTION_18_14();
      v68(v69);
      v70 = v65;
      v115[0] = v65;
      v71 = v33;
      v73 = v65[2];
      v72 = v65[3];
      if (v73 >= v72 >> 1)
      {
        v76 = OUTLINED_FUNCTION_17_0(v72);
        v65 = v115;
        sub_237C63364(v76, v73 + 1, 1);
        v70 = v115[0];
      }

      v70[2] = v73 + 1;
      OUTLINED_FUNCTION_28();
      v75 = OUTLINED_FUNCTION_70_7(v74);
      v68(v75);
      ++v60;
      v66 += 16;
      v63 = v113;
      v33 = v71;
      if (v113 == v60)
      {
        swift_unknownObjectRelease();
        v77 = v65;
        goto LABEL_36;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_9_68();
  OUTLINED_FUNCTION_19_51();
LABEL_56:
  sub_237EF9740();
  __break(1u);
}

void sub_237EC0120()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v104 = v3;
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  v103 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v102 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v101 = v7;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_1();
  v106 = v9;
  OUTLINED_FUNCTION_12_1();
  v111 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v121 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v113 = v12;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  v15 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v117 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v114 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v99 = v22;
  v100 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_6_73();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v126);
  OUTLINED_FUNCTION_6_73();
  sub_237CF11B8();
  v27 = v26;
  OUTLINED_FUNCTION_48_16(&v125);
  v105 = v25;
  OUTLINED_FUNCTION_6_73();
  sub_237CF12A0(v28);
  v29 = *(v27 + 16);
  if (v2)
  {
    if (v29)
    {
      v98 = v0;
      v124[0] = MEMORY[0x277D84F90];
      sub_237C63364(0, v29, 0);
      v30 = v124[0];
      v112 = *(v121 + 104);
      v109 = *MEMORY[0x277D25278];
      v107 = *MEMORY[0x277D25270];
      v31 = (v27 + 40);
      v32 = v111;
      do
      {
        if (*v31)
        {
          *v117 = 0;
          v33 = v107;
        }

        else
        {
          *v117 = *(v31 - 1);
          v33 = v109;
        }

        v112(v117, v33, v32);
        v34 = *(v121 + 32);
        v35 = OUTLINED_FUNCTION_42_20();
        v34(v35);
        v36 = v30;
        v124[0] = v30;
        v37 = v32;
        v39 = *(v30 + 16);
        v38 = *(v30 + 24);
        if (v39 >= v38 >> 1)
        {
          v43 = OUTLINED_FUNCTION_17_0(v38);
          sub_237C63364(v43, v39 + 1, 1);
          v36 = v124[0];
        }

        *(v36 + 16) = v39 + 1;
        OUTLINED_FUNCTION_10_2();
        v30 = v40;
        (v34)(v40 + v41 + *(v42 + 72) * v39, v114, v37);
        v31 += 16;
        --v29;
        v32 = v37;
      }

      while (v29);

      v0 = v98;
      v68 = v30;
    }

    else
    {

      v68 = MEMORY[0x277D84F90];
      v32 = v111;
    }

    v69 = *(v104 + 16);
    if (v69)
    {
      v70 = (v104 + 32);
      v119 = *MEMORY[0x277D25278];
      v115 = *(v121 + 104);
      do
      {
        v72 = *v70++;
        v71 = v72;
        *v0 = 1;
        v115(v0, v119, v32);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_237E64218();
          v68 = v75;
          if ((v71 & 0x8000000000000000) != 0)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        if (v71 >= *(v68 + 16))
        {
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_10_2();
        (*(v74 + 40))(v68 + v73 + *(v74 + 72) * v71, v0, v32);
        --v69;
      }

      while (v69);
    }
  }

  else
  {
    if (!v29)
    {
      goto LABEL_37;
    }

    v44 = 0;
    v45 = *(v104 + 16);
    v46 = (v104 + 32);
    v110 = *MEMORY[0x277D25278];
    v108 = *MEMORY[0x277D25270];
    v47 = MEMORY[0x277D84F90];
    v48 = v111;
    v49 = v113;
    v118 = v45;
    do
    {
      v50 = v44++;
      v51 = v45;
      v52 = v46;
      while (v51)
      {
        v53 = *v52++;
        --v51;
        if (v53 == v50)
        {
          goto LABEL_25;
        }
      }

      v54 = v27 + 32 + 16 * v50;
      if (*(v54 + 8))
      {
        *v49 = 0;
        v55 = v108;
      }

      else
      {
        *v49 = *v54;
        v55 = v110;
      }

      (*(v121 + 104))(v49, v55, v48);
      v56 = *(v121 + 32);
      v57 = OUTLINED_FUNCTION_44_16();
      v56(v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = OUTLINED_FUNCTION_8_1();
        sub_237D0BDB8(v62, v63, v64, v47);
        v47 = v65;
      }

      v59 = *(v47 + 16);
      v58 = *(v47 + 24);
      if (v59 >= v58 >> 1)
      {
        v66 = OUTLINED_FUNCTION_17_0(v58);
        sub_237D0BDB8(v66, v59 + 1, 1, v47);
        v47 = v67;
      }

      *(v47 + 16) = v59 + 1;
      OUTLINED_FUNCTION_10_2();
      v48 = v111;
      (v56)(v47 + v60 + *(v61 + 72) * v59, v15, v111);
      v49 = v113;
      v46 = (v104 + 32);
      v45 = v118;
LABEL_25:
      ;
    }

    while (v44 != v29);
LABEL_37:
  }

  sub_237EF7CC0();
  OUTLINED_FUNCTION_48_16(v124);
  sub_237CF196C(0x656375646572);
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_7_80();
  v77 = *(v76 + 72);
  OUTLINED_FUNCTION_17_59();
  v80 = v79 & ~v78;
  v81 = OUTLINED_FUNCTION_55_11();
  *(v81 + 16) = xmmword_237F08A50;
  v82 = (v81 + v80);
  OUTLINED_FUNCTION_23_40();
  *v82 = v83;
  v82[1] = v84;
  sub_237EF8260();
  sub_237EF7A20();
  v116 = v81 + v80;
  v120 = v77;
  v85 = (v81 + v80 + v77);
  *v85 = 1936029793;
  v85[1] = 0xE400000000000000;
  v122 = *(v104 + 16);
  if (v122)
  {
    v123 = MEMORY[0x277D84F90];
    sub_237C63320();
    v86 = v122;
    v87 = (v104 + 32);
    while (1)
    {
      v89 = *v87++;
      v88 = v89;
      if (v89 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v88 > 0x7FFFFFFF)
      {
        goto LABEL_47;
      }

      v91 = *(v123 + 16);
      v90 = *(v123 + 24);
      if (v91 >= v90 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v90);
        sub_237C63320();
      }

      *(v123 + 16) = v91 + 1;
      *(v123 + 4 * v91 + 32) = v88;
      if (!--v86)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
LABEL_45:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v92 = OUTLINED_FUNCTION_107();
    *(v92 + 16) = xmmword_237F03530;
    *(v92 + 32) = v122;
    sub_237EF7A50();
    OUTLINED_FUNCTION_53_14((v116 + 2 * v120));
    sub_237EF7A70();
    sub_237EF7B00();
    sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
    OUTLINED_FUNCTION_40_18();
    v93 = sub_237EF78C0();
    OUTLINED_FUNCTION_6_1(v93);
    *(OUTLINED_FUNCTION_8_88() + 16) = xmmword_237F03530;
    (*(v102 + 16))(v101, v106, v103);
    sub_237EF8260();
    OUTLINED_FUNCTION_30_43();
    sub_237EF7880();
    OUTLINED_FUNCTION_74_4();
    sub_237CF33F8();
    v94 = OUTLINED_FUNCTION_37_26();
    v95(v94);
    v96 = OUTLINED_FUNCTION_57_10();
    v97(v96);
    (*(v99 + 8))(v105, v100);
    OUTLINED_FUNCTION_30_43();
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237EC0B40()
{
  OUTLINED_FUNCTION_37_0();
  v239 = v1;
  v237 = v2;
  OUTLINED_FUNCTION_25_6();
  v233 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v232 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A20);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2(&v227 - v8);
  v288 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_1();
  v291 = v19;
  OUTLINED_FUNCTION_12_1();
  v20 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v26);
  v274 = sub_237EF7CB0();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v30);
  v273 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v34);
  v35 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v41);
  v264 = type metadata accessor for TensorDescription();
  OUTLINED_FUNCTION_1();
  v255 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  v46 = OUTLINED_FUNCTION_18(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_2(&v227 - v47);
  v48 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v52);
  v234 = v0;
  v53 = sub_237EF7AE0();
  v278 = *(v53 + 16);
  v269 = v50 + 16;
  v268 = v50 + 88;
  v267 = *MEMORY[0x277D252B0];
  v253 = *MEMORY[0x277D252B8];
  v271 = v50;
  v266 = v50 + 96;
  v252 = v32 + 32;
  v251 = v22 + 88;
  v250 = *MEMORY[0x277D25310];
  v230 = v22;
  v249 = v22 + 96;
  v248 = v28 + 16;
  v287 = v10 + 16;
  v286 = v10 + 88;
  v289 = *MEMORY[0x277D25278];
  v283 = v10 + 96;
  v279 = v10;
  v54 = (v10 + 8);
  v55 = 0;
  v56 = v28 + 8;
  v57 = v35;
  v247 = v56;
  v246 = v32 + 8;
  v277 = v37 + 32;
  v275 = v37;
  v245 = (v37 + 16);
  v58 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v243 = v20;
  v276 = v35;
  v290 = v54;
  v260 = v48;
  for (i = v53; ; v53 = i)
  {
    v282 = v58;
    if (v55 == v278)
    {
      break;
    }

    if (v55 >= *(v53 + 16))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v32 = v271;
    OUTLINED_FUNCTION_28();
    v62 = v270;
    (*(v32 + 16))(v270, v60 + v61 + *(v32 + 72) * v55, v48);
    v63 = OUTLINED_FUNCTION_42_20();
    v65 = v64(v63);
    if (v65 == v267)
    {
      v66 = v20;
      v67 = v55;
      OUTLINED_FUNCTION_19_1();
      v68 = OUTLINED_FUNCTION_42_20();
      v69(v68);
      v70 = *(v258 + 8);
      if (!*(v70 + 16))
      {
        goto LABEL_107;
      }

      OUTLINED_FUNCTION_89_5();
      v71 = sub_237D2FC30();
      if ((v72 & 1) == 0)
      {
        goto LABEL_107;
      }

      v73 = *(v255 + 72);
      v74 = v254;
      sub_237CF43B4(*(v70 + 56) + v73 * v71, v254);
      __swift_storeEnumTagSinglePayload(v74, 0, 1, v264);
      sub_237C65484(v74, &qword_27DEAFB20);
      if (!*(v70 + 16))
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_89_5();
      v75 = sub_237D2FC30();
      if ((v76 & 1) == 0)
      {
        goto LABEL_90;
      }

      v281 = v59;
      v77 = v263;
      sub_237CF43B4(*(v70 + 56) + v75 * v73, v263);
      v78 = *v77;
      sub_237EF8260();
      sub_237CF42E8(v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = OUTLINED_FUNCTION_8_1();
        sub_237D0BE38(v140, v141, v142, v58);
        v58 = v143;
      }

      v80 = v58[2];
      v79 = v58[3];
      if (v80 >= v79 >> 1)
      {
        v144 = OUTLINED_FUNCTION_17_0(v79);
        sub_237D0BE38(v144, v80 + 1, 1, v58);
        v58 = v145;
      }

      v58[2] = v80 + 1;
      v58[v80 + 4] = v78;
      if (!*(v70 + 16))
      {
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_89_5();
      v81 = sub_237D2FC30();
      v83 = v82;

      if ((v83 & 1) == 0)
      {
        goto LABEL_92;
      }

      v84 = *(v70 + 56) + v81 * v73;
      v85 = v263;
      sub_237CF43B4(v84, v263);
      v57 = v276;
      (*v245)(v262, v85 + *(v264 + 20), v276);
      sub_237CF42E8(v85);
      v59 = v281;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v146 = OUTLINED_FUNCTION_8_1();
        sub_237D0BDF8(v146, v147, v148, v59);
        v59 = v149;
      }

      v54 = v290;
      v48 = v260;
      v86 = v67;
      v32 = *(v59 + 16);
      v87 = *(v59 + 24);
      v88 = v32 + 1;
      v20 = v66;
      if (v32 >= v87 >> 1)
      {
        v150 = OUTLINED_FUNCTION_17_0(v87);
        sub_237D0BDF8(v150, v32 + 1, 1, v59);
        v59 = v151;
      }
    }

    else
    {
      if (v65 != v253)
      {
        OUTLINED_FUNCTION_17_15();
        v227 = 304;
        OUTLINED_FUNCTION_85_4();
        goto LABEL_111;
      }

      v261 = v55;
      OUTLINED_FUNCTION_19_1();
      v89 = OUTLINED_FUNCTION_42_20();
      v90(v89);
      OUTLINED_FUNCTION_19_1();
      v91(v272, v62, v273);
      v32 = v256;
      sub_237EF79E0();
      OUTLINED_FUNCTION_19_1();
      v93 = v92(v32, v20);
      if (v93 != v250)
      {
        v224 = OUTLINED_FUNCTION_56_17();
        v225(v224, v20);
        OUTLINED_FUNCTION_9_68();
        v227 = 299;
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_19_1();
      v94(v32, v20);
      swift_projectBox();
      OUTLINED_FUNCTION_19_1();
      v95(v280);

      v96 = sub_237EF7CA0();
      v97 = *(v96 + 16);
      if (v97)
      {
        v281 = v59;
        v292 = MEMORY[0x277D84F90];
        sub_237C632DC();
        v98 = v292;
        OUTLINED_FUNCTION_10_2();
        v259 = v96;
        v100 = v96 + v99;
        v285 = *(v101 + 72);
        v102 = *(v101 + 16);
        v103 = v289;
        do
        {
          v104 = v291;
          v105 = v288;
          v102(v291, v100, v288);
          v106 = v284;
          v102(v284, v104, v105);
          v107 = OUTLINED_FUNCTION_17_51();
          v109 = v108(v107);
          if (v109 == v103)
          {
            OUTLINED_FUNCTION_19_1();
            v114 = OUTLINED_FUNCTION_17_51();
            v115(v114);
            v112 = v105;
            v113 = *v106;
            v110 = *v54;
          }

          else
          {
            v110 = *v54;
            v111 = OUTLINED_FUNCTION_17_51();
            v110(v111);
            v112 = v105;
            v113 = 0;
          }

          (v110)(v291, v112);
          v292 = v98;
          v117 = *(v98 + 16);
          v116 = *(v98 + 24);
          if (v117 >= v116 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v116);
            sub_237C632DC();
            v98 = v292;
          }

          v103 = v289;
          v118 = v109 != v289;
          *(v98 + 16) = v117 + 1;
          v119 = v98 + 16 * v117;
          *(v119 + 32) = v113;
          *(v119 + 40) = v118;
          v100 += v285;
          --v97;
          v54 = v290;
        }

        while (v97);

        v20 = v243;
        v59 = v281;
        v48 = v260;
      }

      else
      {

        v98 = MEMORY[0x277D84F90];
      }

      v58 = v282;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v261;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v128 = OUTLINED_FUNCTION_8_1();
        sub_237D0BE38(v128, v129, v130, v58);
        v58 = v131;
      }

      v57 = v276;
      v122 = v58[2];
      v121 = v58[3];
      if (v122 >= v121 >> 1)
      {
        v132 = OUTLINED_FUNCTION_17_0(v121);
        sub_237D0BE38(v132, v122 + 1, 1, v58);
        v58 = v133;
      }

      v58[2] = v122 + 1;
      v58[v122 + 4] = v98;
      sub_237EF7C90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = OUTLINED_FUNCTION_8_1();
        sub_237D0BDF8(v134, v135, v136, v59);
        v59 = v137;
      }

      v54 = v290;
      v32 = *(v59 + 16);
      v123 = *(v59 + 24);
      v88 = v32 + 1;
      if (v32 >= v123 >> 1)
      {
        v138 = OUTLINED_FUNCTION_17_0(v123);
        sub_237D0BDF8(v138, v32 + 1, 1, v59);
        v59 = v139;
      }

      OUTLINED_FUNCTION_19_1();
      v124(v280, v274);
      OUTLINED_FUNCTION_19_1();
      v125(v272, v273);
    }

    v55 = v86 + 1;
    *(v59 + 16) = v88;
    OUTLINED_FUNCTION_10_2();
    (*(v127 + 32))(v59 + v126 + *(v127 + 72) * v32);
  }

  v152 = v236;
  if (!v58[2])
  {
    goto LABEL_113;
  }

  v153 = v58[4];
  v32 = v235;
  sub_237CA343C(v59);
  OUTLINED_FUNCTION_28_1(v32, 1, v57);
  v154 = v288;
  if (v155)
  {
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_19_1();
  v156 = v240;
  v157(v240, v32, v57);
  sub_237EF8260();
  sub_237EF8260();
  v32 = sub_237C60BA8(1, v59);
  MEMORY[0x28223BE20](v32);
  v226[2] = v156;
  LOBYTE(v156) = sub_237EBE6BC(sub_237EC8CCC, v226, v32, v158, v159, v160);
  swift_unknownObjectRelease();
  if ((v156 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_68();
    v227 = 312;
    goto LABEL_110;
  }

  v161 = *(v153 + 16);
  v162 = MEMORY[0x277D25270];
  if (v161)
  {
    v281 = v59;
    v292 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_7();
    v163 = v292;
    v285 = *(v279 + 104);
    LODWORD(v284) = *v162;
    v291 = (v279 + 104);
    v164 = (v279 + 32);
    v280 = v153;
    v165 = (v153 + 40);
    v166 = v228;
    do
    {
      if (*v165)
      {
        *v166 = 0;
        v167 = v284;
      }

      else
      {
        *v166 = *(v165 - 1);
        v167 = v289;
      }

      (v285)(v166, v167, v154);
      v168 = *v164;
      (*v164)(v152, v166, v154);
      v292 = v163;
      v169 = v152;
      v171 = *(v163 + 16);
      v170 = *(v163 + 24);
      if (v171 >= v170 >> 1)
      {
        v174 = OUTLINED_FUNCTION_17_0(v170);
        sub_237C63364(v174, v171 + 1, 1);
        v166 = v228;
        v163 = v292;
      }

      *(v163 + 16) = v171 + 1;
      OUTLINED_FUNCTION_10_2();
      v168(v163 + v172 + *(v173 + 72) * v171, v169, v154);
      v165 += 16;
      --v161;
      v58 = v282;
      v152 = v169;
    }

    while (v161);

    v162 = MEMORY[0x277D25270];
  }

  else
  {

    v163 = MEMORY[0x277D84F90];
  }

  v175 = v237;
  v176 = v257;
  if (v237 < 0)
  {
    v175 = *(v163 + 16) + v237;
  }

  v177 = v58[2];
  if ((v239 & 1) != 0 && !v177)
  {
    goto LABEL_105;
  }

  if (v177 != 1)
  {
    if (!v177)
    {
      goto LABEL_102;
    }

    if ((v175 & 0x8000000000000000) == 0)
    {
      v291 = (v279 + 104);
      LODWORD(v284) = *v162;
      v285 = v279 + 40;
      v281 = 16 * v175;
      v178 = v58 + 5;
      v179 = 1;
      while (1)
      {
        if (v175 >= *(v163 + 16))
        {
          goto LABEL_93;
        }

        v180 = (*(v279 + 80) + 32) & ~*(v279 + 80);
        v181 = *(v279 + 72) * v175;
        (*(v279 + 16))(v176, v163 + v180 + v181, v288);
        v182 = v289;
        v183 = OUTLINED_FUNCTION_6_68();
        if (v184(v183) == v182)
        {
          OUTLINED_FUNCTION_19_1();
          v185 = OUTLINED_FUNCTION_6_68();
          v186(v185);
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if (v179 >= v282[2])
          {
            goto LABEL_96;
          }

          v176 = v257;
          v187 = *v257;
          v188 = *(*v178 + 16);
          if (v188)
          {
            if (v175 >= v188)
            {
              goto LABEL_97;
            }

            v189 = *v178 + v281;
            if (*(v189 + 40))
            {
              goto LABEL_84;
            }

            v190 = *(v189 + 32);
            v191 = __OFADD__(v187, v190);
            v192 = v187 + v190;
            if (v191)
            {
              goto LABEL_100;
            }

            v193 = OUTLINED_FUNCTION_50_17(v192);
            v194(v193);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237E64218();
              v163 = v203;
            }

            v195 = v241;
            if (v175 >= *(v163 + 16))
            {
              goto LABEL_101;
            }
          }

          else
          {
            v191 = __OFADD__(v187, 1);
            v198 = v187 + 1;
            if (v191)
            {
              goto LABEL_98;
            }

            v199 = OUTLINED_FUNCTION_50_17(v198);
            v200(v199);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237E64218();
              v163 = v202;
            }

            v195 = v242;
            if (v175 >= *(v163 + 16))
            {
              goto LABEL_99;
            }
          }
        }

        else
        {
          v196 = OUTLINED_FUNCTION_6_68();
          v197(v196);
          *v244 = 0;
          (*v291)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E64218();
            v163 = v201;
          }

          v195 = v244;
          v176 = v257;
          if (v175 >= *(v163 + 16))
          {
            goto LABEL_95;
          }
        }

        (*v285)(v163 + v180 + v181, v195, v288);
LABEL_84:
        ++v179;
        ++v178;
        if (v177 == v179)
        {
          goto LABEL_85;
        }
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    v222 = v254;
    __swift_storeEnumTagSinglePayload(v254, 1, 1, v264);
    sub_237C65484(v222, &qword_27DEAFB20);
    v292 = 0;
    v293 = 0xE000000000000000;
    v32 = 35;
    sub_237EF9330();

    v292 = 0x20726F736E6554;
    v293 = 0xE700000000000000;
    v223 = OUTLINED_FUNCTION_89_5();
    MEMORY[0x2383E0710](v223);
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFD230);
    OUTLINED_FUNCTION_17_15();
    v227 = 35;
    while (1)
    {
LABEL_111:
      sub_237EF9740();
      __break(1u);
LABEL_112:
      sub_237C65484(v32, &qword_27DEB6A20);
LABEL_113:
      OUTLINED_FUNCTION_9_68();
      v227 = 309;
LABEL_110:
      OUTLINED_FUNCTION_19_51();
    }
  }

LABEL_85:
  sub_237EF7CC0();
  OUTLINED_FUNCTION_108_2(&v292);
  sub_237CF196C(0x7461636E6F63);
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_7_80();
  v206 = *(v205 + 72);
  OUTLINED_FUNCTION_17_59();
  v209 = v208 & ~v207;
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_237F08A50;
  v211 = (v210 + v209);
  v212 = *(v204 + 48);
  *v211 = 0x7365756C6176;
  *(v211 + 1) = 0xE600000000000000;
  v213 = sub_237EF7B00();
  OUTLINED_FUNCTION_4();
  (*(v214 + 16))(&v211[v212], v234, v213);
  OUTLINED_FUNCTION_71_5(&v211[v206]);
  if (v175 < v215)
  {
    goto LABEL_103;
  }

  if (v175 > 0x7FFFFFFF)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_237EF7A90();
  OUTLINED_FUNCTION_53_14(&v211[2 * v206]);
  sub_237EF7A70();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  v216 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v216);
  OUTLINED_FUNCTION_18_49();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  v217 = v230;
  OUTLINED_FUNCTION_91_2();
  v218 = v238;
  v219 = v243;
  v220(v229, v238, v243);
  sub_237EF8260();
  OUTLINED_FUNCTION_5_12();
  sub_237EF7880();
  v221 = v231;
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v232 + 8))(v221, v233);
  (*(v217 + 8))(v218, v219);

  (*(v275 + 8))(v240, v276);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC2368()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_98_4();
  v43 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v53 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v52 = v3;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_1();
  v42 = v5;
  OUTLINED_FUNCTION_12_1();
  v6 = sub_237EF7CD0();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v46 = v9;
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v44 = v10;
  OUTLINED_FUNCTION_12_1();
  v45 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_90_2();
  sub_237CF1674();
  OUTLINED_FUNCTION_73_5(&v57);
  OUTLINED_FUNCTION_90_2();
  sub_237CF11B8();
  v13 = v12;
  OUTLINED_FUNCTION_73_5(&v56);
  OUTLINED_FUNCTION_90_2();
  sub_237CF12A0(v14);
  OUTLINED_FUNCTION_73_5(&v55);
  sub_237CF196C(v0);
  v48 = v13;
  OUTLINED_FUNCTION_110_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_82_3();
  v16 = *(v15 + 72);
  OUTLINED_FUNCTION_17_59();
  v19 = v18 & ~v17;
  v20 = OUTLINED_FUNCTION_55_11();
  *(v20 + 16) = xmmword_237F04760;
  v21 = (v20 + v19);
  OUTLINED_FUNCTION_23_40();
  *v21 = v22;
  v21[1] = v23;
  sub_237EF8260();
  OUTLINED_FUNCTION_90_2();
  sub_237EF7A20();
  OUTLINED_FUNCTION_71_5((v21 + v16));
  if (v24 < v25)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_94_4();
  if (!(v27 ^ v28 | v26))
  {
    goto LABEL_16;
  }

  sub_237EF7A90();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_25_6();
  v29 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v29);
  OUTLINED_FUNCTION_18_49();
  *(OUTLINED_FUNCTION_75_5() + 16) = xmmword_237F03530;
  v30 = *(v48 + 16);
  if (v30)
  {
    v54 = MEMORY[0x277D84F90];
    sub_237C63364(0, v30, 0);
    v51 = *(v53 + 104);
    v50 = *MEMORY[0x277D25278];
    v49 = *MEMORY[0x277D25270];
    v31 = (v48 + 40);
    do
    {
      if (*v31)
      {
        *v52 = 0;
        v32 = v49;
      }

      else
      {
        *v52 = *(v31 - 1);
        v32 = v50;
      }

      v51(v52, v32, v43);
      v33 = *(v53 + 32);
      v34 = OUTLINED_FUNCTION_42_20();
      v33(v34);
      v36 = *(v54 + 16);
      v35 = *(v54 + 24);
      if (v36 >= v35 >> 1)
      {
        v39 = OUTLINED_FUNCTION_17_0(v35);
        sub_237C63364(v39, v36 + 1, 1);
      }

      *(v54 + 16) = v36 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      (v33)(v37 + v38 * v36, v42, v43);
      v31 += 16;
      --v30;
    }

    while (v30);

    OUTLINED_FUNCTION_98_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_68_7();
  sub_237EF7CC0();

  sub_237EF8260();
  OUTLINED_FUNCTION_81_1();
  sub_237EF7880();
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v46 + 8))(v44, v47);
  v40 = OUTLINED_FUNCTION_37_26();
  v41(v40, v45);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC28F8()
{
  OUTLINED_FUNCTION_37_0();
  v89 = v2;
  v88 = v3;
  v105 = v4;
  v106 = v5;
  v80 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_40_18();
  v91 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v90 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v11);
  *&v96 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v95 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v14);
  v84 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v104 = v22;
  OUTLINED_FUNCTION_12_1();
  v23 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v107 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v100 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_61_9();
  v99 = v1;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v35);
  OUTLINED_FUNCTION_22_44();
  v86 = v0;
  v87 = v8;
  sub_237CF1674();
  v94 = *MEMORY[0x277D252D8];
  v36 = *(v25 + 104);
  v36(v29);
  v93 = v36;
  v37 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_33_27();
  sub_237EF7CC0();
  v38 = *(v25 + 8);
  v39 = OUTLINED_FUNCTION_86_3();
  v38(v39);
  v102 = v25 + 8;
  v40 = *MEMORY[0x277D252E8];
  v103 = v23;
  (v36)(v29, v40, v23);
  v41 = v98;
  OUTLINED_FUNCTION_33_27();
  sub_237EF7CC0();
  v42 = OUTLINED_FUNCTION_86_3();
  v38(v42);
  OUTLINED_FUNCTION_18_47();
  v43 = v41;
  sub_237EF7C80();
  v44 = v100 + 8;
  v45 = *(v100 + 8);
  v45(v43, v107);
  v46 = OUTLINED_FUNCTION_12_11();
  v98 = v44;
  v97 = v45;
  (v45)(v46);
  v47 = v94;
  v48 = v103;
  v49 = v93;
  (v93)(v29, v94, v103);
  sub_237CF1A18();
  (v38)(v29, v48);
  v82 = v25 + 104;
  v49(v29, v47, v48);
  OUTLINED_FUNCTION_33_27();
  sub_237EF7CC0();
  v85 = v29;
  v81 = v38;
  (v38)(v29, v48);
  v50 = v80;
  v51 = *(v80 + 16);
  *v92 = v51;
  (*(v95 + 104))();
  if (v51)
  {
    v108 = v37;
    sub_237C633BC(0, v51, 0);
    v37 = v108;
    v52 = v50 + 40;
    v53 = v84;
    do
    {
      sub_237EF8260();
      sub_237EF7A10();
      v108 = v37;
      v55 = *(v37 + 16);
      v54 = *(v37 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v54);
        OUTLINED_FUNCTION_95_2();
        sub_237C633BC(v57, v58, v59);
        v37 = v108;
      }

      *(v37 + 16) = v55 + 1;
      OUTLINED_FUNCTION_28();
      (*(v16 + 32))(v37 + v56 + *(v16 + 72) * v55, v21, v53);
      v52 += 16;
      --v51;
    }

    while (v51);
  }

  else
  {
    v53 = v84;
  }

  v108 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A10);
  sub_237EC8C68();
  v60 = v104;
  sub_237EF7990();

  v61 = OUTLINED_FUNCTION_56_17();
  v62(v61, v96);
  OUTLINED_FUNCTION_19_32();
  v63();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_78_3();
  v65 = *(v64 + 72);
  OUTLINED_FUNCTION_17_59();
  v68 = v67 & ~v66;
  v69 = OUTLINED_FUNCTION_55_11();
  v96 = xmmword_237F04760;
  *(v69 + 16) = xmmword_237F04760;
  v70 = v69 + v68;
  strcpy(v70, "probabilities");
  *(v70 + 14) = -4864;
  sub_237EF8260();
  sub_237EF7A20();
  v71 = (v70 + v65);
  *v71 = 0x73657373616C63;
  v71[1] = 0xE700000000000000;
  (*(v16 + 16))(v83, v60, v53);
  sub_237EF7AA0();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_40_18();
  v72 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v72);
  OUTLINED_FUNCTION_17_59();
  *(OUTLINED_FUNCTION_107_3() + 16) = v96;
  v73 = v85;
  v74 = v103;
  (v93)(v85, v94, v103);
  sub_237EF8260();
  v75 = v53;
  v76 = v99;
  sub_237EF7CC0();
  v81(v73, v74);
  sub_237EF7880();
  (*(v100 + 16))(v76, v101, v107);
  sub_237EF8260();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4();
  sub_237CF33F8();
  v77 = OUTLINED_FUNCTION_56_17();
  v78(v77, v91);
  (*(v16 + 8))(v104, v75);
  OUTLINED_FUNCTION_6_73();
  OUTLINED_FUNCTION_19_32();
  v79();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC32C8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v36 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v41 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v40 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_1();
  v35 = v6;
  OUTLINED_FUNCTION_12_1();
  v7 = sub_237EF7CD0();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_33_27();
  sub_237CF1674();
  OUTLINED_FUNCTION_108_2(&v45);
  OUTLINED_FUNCTION_33_27();
  sub_237CF11B8();
  v12 = v11;
  OUTLINED_FUNCTION_108_2(&v44);
  OUTLINED_FUNCTION_33_27();
  sub_237CF12A0(v13);
  OUTLINED_FUNCTION_108_2(&v43);
  sub_237CF196C(v1);
  sub_237CF1A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_18_49();
  v16 = v15 & ~v14;
  v17 = OUTLINED_FUNCTION_75_5();
  *(v17 + 16) = xmmword_237F03530;
  v18 = (v17 + v16);
  OUTLINED_FUNCTION_23_40();
  *v18 = v19;
  v18[1] = v20;
  sub_237EF8260();
  OUTLINED_FUNCTION_33_27();
  sub_237EF7A20();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_25_6();
  v21 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v21);
  OUTLINED_FUNCTION_18_49();
  *(OUTLINED_FUNCTION_75_5() + 16) = xmmword_237F03530;
  v22 = *(v12 + 16);
  if (v22)
  {
    v42 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_7();
    v39 = *(v41 + 104);
    v38 = *MEMORY[0x277D25278];
    v37 = *MEMORY[0x277D25270];
    v23 = (v41 + 32);
    v24 = (v12 + 40);
    do
    {
      if (*v24)
      {
        *v40 = 0;
        v25 = v37;
      }

      else
      {
        *v40 = *(v24 - 1);
        v25 = v38;
      }

      v39(v40, v25, v36);
      v26 = *v23;
      (*v23)(v35, v40, v36);
      v28 = *(v42 + 16);
      v27 = *(v42 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_237C63364(v27 > 1, v28 + 1, 1);
      }

      *(v42 + 16) = v28 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      v26(v29 + v30 * v28, v35, v36);
      v24 += 16;
      --v22;
    }

    while (v22);
  }

  OUTLINED_FUNCTION_68_7();
  sub_237EF7CC0();

  sub_237EF8260();
  OUTLINED_FUNCTION_26_33();
  sub_237EF7880();
  sub_237EF7BF0();
  sub_237CF33F8();
  v31 = OUTLINED_FUNCTION_88_5();
  v32(v31);
  v33 = OUTLINED_FUNCTION_37_26();
  v34(v33);
  OUTLINED_FUNCTION_26_33();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC3844()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  OUTLINED_FUNCTION_101_4();
  v38 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v46 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v45 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_1();
  v37 = v6;
  OUTLINED_FUNCTION_12_1();
  v7 = sub_237EF7CD0();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v40 = v10;
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v39 = v11;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_67_4();
  sub_237CF1674();
  OUTLINED_FUNCTION_63_8(&v50);
  OUTLINED_FUNCTION_18_14();
  sub_237CF1674();
  OUTLINED_FUNCTION_63_8(&v49);
  OUTLINED_FUNCTION_67_4();
  sub_237CF12A0(v13);
  OUTLINED_FUNCTION_63_8(&v48);
  sub_237CF196C(1701603700);
  sub_237CF1A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_82_3();
  v15 = *(v14 + 72);
  OUTLINED_FUNCTION_17_59();
  v18 = v17 & ~v16;
  v19 = OUTLINED_FUNCTION_55_11();
  *(v19 + 16) = xmmword_237F04760;
  v20 = (v19 + v18);
  OUTLINED_FUNCTION_23_40();
  *v20 = v21;
  v20[1] = v22;
  sub_237EF8260();
  OUTLINED_FUNCTION_67_4();
  sub_237EF7A20();
  v23 = (v20 + v15);
  *v23 = 1936745842;
  v23[1] = 0xE400000000000000;
  sub_237EF8260();
  sub_237EF7A20();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_25_6();
  v24 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v24);
  OUTLINED_FUNCTION_18_49();
  *(OUTLINED_FUNCTION_75_5() + 16) = xmmword_237F03530;
  v25 = *(v1 + 16);
  if (v25)
  {
    v47 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_7();
    v44 = *(v46 + 104);
    v43 = *MEMORY[0x277D25278];
    v42 = *MEMORY[0x277D25270];
    v26 = (v1 + 40);
    do
    {
      if (*v26)
      {
        *v45 = 0;
        v27 = v42;
      }

      else
      {
        *v45 = *(v26 - 1);
        v27 = v43;
      }

      v44(v45, v27, v38);
      v28 = *(v46 + 32);
      v29 = OUTLINED_FUNCTION_55_1();
      v28(v29);
      v31 = *(v47 + 16);
      v30 = *(v47 + 24);
      if (v31 >= v30 >> 1)
      {
        v34 = OUTLINED_FUNCTION_17_0(v30);
        sub_237C63364(v34, v31 + 1, 1);
      }

      *(v47 + 16) = v31 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      (v28)(v32 + v33 * v31, v37, v38);
      v26 += 16;
      --v25;
    }

    while (v25);
  }

  OUTLINED_FUNCTION_68_7();
  sub_237EF7CC0();

  sub_237EF8260();
  OUTLINED_FUNCTION_81_1();
  sub_237EF7880();
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v40 + 8))(v39, v41);
  v35 = OUTLINED_FUNCTION_37_26();
  v36(v35);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC3DB0()
{
  OUTLINED_FUNCTION_37_0();
  v97 = v4;
  v102 = v5;
  v112 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_101_4();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v93 = v10;
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v91 = v11;
  OUTLINED_FUNCTION_12_1();
  v92 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v90 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v87 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v99 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v88 = v18;
  v89 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v98 = v19;
  OUTLINED_FUNCTION_12_1();
  v20 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v101 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36_24();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v103 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v108 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58_10();
  MEMORY[0x28223BE20](v31);
  v33 = (&v85 - v32);
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_44_16();
  sub_237CF1674();
  v100 = v0;
  OUTLINED_FUNCTION_48_16(&v116);
  v95 = v2;
  v96 = v8;
  OUTLINED_FUNCTION_44_16();
  sub_237CF11B8();
  v35 = v34;
  *v33 = 0;
  v36 = v22;
  v37 = (v22 + 104);
  v38 = *(v22 + 104);
  v106 = *MEMORY[0x277D25270];
  v38(v33);
  v39 = *(v35 + 16) + 1;
  v109 = v33;
  v40 = sub_237CDC0C4(v33, v39);
  v107 = v112 + 1;
  if (__OFADD__(v112, 1))
  {
    goto LABEL_47;
  }

  v41 = v40;
  *v3 = v102;
  LODWORD(v105) = *MEMORY[0x277D25278];
  v38(v3);
  v33 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    sub_237E64218();
    v41 = v84;
  }

  v42 = v108;
  if ((v107 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v107 >= *(v41 + 16))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_28();
  v43 = v33;
  v33 = (v41 + v44);
  v113 = *(v45 + 32);
  v110 = v47;
  v111 = v45;
  v47((v41 + v44 + v113 * v46), v43, v20);
  if ((v112 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(v35 + 16) <= v112)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v86 = v36;
  v48 = v35 + 16 * v112;
  if (*(v48 + 40))
  {
    v49 = v109;
    *v109 = 0;
    (v38)(v49, v106, v20);
    v50 = v112;
    v48 = *(v41 + 16);
    if (v48 > v112)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v51 = *(v48 + 32);
  v52 = __OFSUB__(v51, v102);
  v53 = v51 - v102;
  v49 = v109;
  if (v52)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v97)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v54 = v53 == 0x8000000000000000 && v97 == -1;
  if (v54)
  {
    goto LABEL_62;
  }

  v55 = v53 / v97;
  v52 = __OFADD__(v55, 1);
  v56 = v55 + 1;
  if (v52)
  {
    goto LABEL_60;
  }

  *v109 = v56;
  (v38)(v49, v105, v20);
  v50 = v112;
  if (*(v41 + 16) > v112)
  {
LABEL_18:
    v105 = v38;
    v110(v33 + v113 * v50, v49, v20);
    v109 = v41;
    v38 = *(v41 + 16);
    if (v38)
    {
      v104 = v37;
      v36 = v20;
      v57 = 0;
      v37 = (v86 + 32);
      v20 = v35;
      v35 += 24;
      v58 = v112;
      while (v57 >= v58)
      {
        if (v107 < v57)
        {
          if (v57 > *(v20 + 16))
          {
            goto LABEL_45;
          }

          if (*v35)
          {
            *v1 = 0;
            (v105)(v1, v106, v36);
          }

          else
          {
            v62 = v1;
            v63 = v101;
            sub_237EF78D0();
            v64 = v62;
            v65 = v63;
            v1 = v62;
            v42 = v108;
            (*v37)(v64, v65, v36);
          }

          v61 = v1;
          if (v57 >= *(v109 + 2))
          {
            goto LABEL_46;
          }

LABEL_33:
          v110(v33, v61, v36);
          v58 = v112;
        }

        v57 = (v57 + 1);
        v33 = (v33 + v113);
        v35 += 16;
        if (v38 == v57)
        {
          goto LABEL_35;
        }
      }

      if (v57 >= *(v20 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (*(v35 + 16))
      {
        *v42 = 0;
        (v105)(v42, v106, v36);
      }

      else
      {
        v59 = v103;
        sub_237EF78D0();
        v60 = v59;
        v42 = v108;
        (*v37)(v108, v60, v36);
      }

      v61 = v42;
      if (v57 >= *(v109 + 2))
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

LABEL_35:

    OUTLINED_FUNCTION_77_4(&v115);
    sub_237CF12A0(v98);
    sub_237EF7CC0();

    OUTLINED_FUNCTION_77_4(&v114);
    v66 = OUTLINED_FUNCTION_97_4();
    sub_237CF196C(v66);
    sub_237CF0C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
    OUTLINED_FUNCTION_7_80();
    v68 = *(v67 + 72);
    OUTLINED_FUNCTION_17_59();
    v71 = v70 & ~v69;
    v72 = OUTLINED_FUNCTION_55_11();
    *(v72 + 16) = xmmword_237F105F0;
    v73 = (v72 + v71);
    OUTLINED_FUNCTION_23_40();
    *v73 = v74;
    v73[1] = v75;
    sub_237EF8260();
    sub_237EF7A20();
    v76 = (v73 + v68);
    *v76 = 1936291937;
    v76[1] = 0xE400000000000000;
    if (v112 <= 0x7FFFFFFF)
    {
      sub_237EF7A90();
      v77 = (v73 + 2 * v68);
      *v77 = 1702521203;
      v77[1] = 0xE400000000000000;
      if (v102 >= 0xFFFFFFFF80000000)
      {
        OUTLINED_FUNCTION_94_4();
        if (v78 ^ v52 | v54)
        {
          sub_237EF7A90();
          v79 = (v73 + 3 * v68);
          *v79 = 0x656469727473;
          v79[1] = 0xE600000000000000;
          if (v97 >= 0xFFFFFFFF80000000)
          {
            OUTLINED_FUNCTION_94_4();
            if (v78 ^ v52 | v54)
            {
              sub_237EF7A90();
              sub_237EF7B00();
              sub_237EF8230();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
              OUTLINED_FUNCTION_102_2();
              v80 = sub_237EF78C0();
              OUTLINED_FUNCTION_6_1(v80);
              OUTLINED_FUNCTION_18_49();
              *(swift_allocObject() + 16) = xmmword_237F03530;
              (*(v90 + 16))(v87, v99, v92);
              sub_237EF8260();
              OUTLINED_FUNCTION_65_7();
              sub_237EF7880();
              v81 = v91;
              sub_237EF7BF0();
              sub_237CF33F8();
              (*(v93 + 8))(v81, v94);
              v82 = OUTLINED_FUNCTION_69_8();
              v83(v82);
              (*(v88 + 8))(v98, v89);
              OUTLINED_FUNCTION_65_7();
              OUTLINED_FUNCTION_38_0();
              return;
            }

            goto LABEL_57;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

void sub_237EC4744()
{
  OUTLINED_FUNCTION_37_0();
  v153 = v4;
  v160 = v5;
  v161 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_101_4();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v150 = v10;
  v151 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v149 = v11;
  OUTLINED_FUNCTION_12_1();
  v143 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v137 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v138 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v136 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v147 = v18;
  v148 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v144 = v19;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_1();
  v156 = v21;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v145 = v23;
  v146 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v155 = v24;
  OUTLINED_FUNCTION_12_1();
  v163 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v168 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v166 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v139 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  v152 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  v141 = v34;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_35_24();
  v36 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_58_10();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_16();
  v140 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  v165 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v167 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  v48 = &v133 - v47;
  OUTLINED_FUNCTION_49_16(&v175);
  v158 = v2;
  v159 = v8;
  OUTLINED_FUNCTION_44_16();
  sub_237CF1674();
  v49 = *(v38 + 16);
  v154 = v38 + 16;
  v157 = v49;
  v49(v48, v160, v36);
  v50 = *(v38 + 88);
  v51 = OUTLINED_FUNCTION_39_9();
  v52 = v50(v51);
  v53 = *MEMORY[0x277D252B0];
  v162 = v0;
  v134 = v3;
  v164 = v50;
  if (v52 == v53)
  {
    v54 = OUTLINED_FUNCTION_39_9();
    v55(v54);
    memcpy(v174, v0, sizeof(v174));
    OUTLINED_FUNCTION_55_1();
    sub_237CF1674();
  }

  else
  {
    v56 = OUTLINED_FUNCTION_39_9();
    v57(v56);
  }

  sub_237EC52C8(v161, v1);
  v58 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v58, v59, v36);
  v60 = v157;
  v61 = v167;
  v142 = v36;
  v135 = v38;
  if (v62)
  {
    sub_237C65484(v1, &qword_27DEB4610);
  }

  else
  {
    (*(v38 + 32))(v167, v1, v36);
    v63 = v165;
    v60(v165, v61, v36);
    v64 = v164(v63, v36);
    if (v64 == v53)
    {
      (*(v38 + 96))(v63, v36);
      OUTLINED_FUNCTION_63_8(&v173);
      OUTLINED_FUNCTION_5_12();
      sub_237CF1674();

      v65 = OUTLINED_FUNCTION_39_9();
      v66(v65);
    }

    else
    {
      v67 = *(v38 + 8);
      v68 = OUTLINED_FUNCTION_39_9();
      v67(v68);
      (v67)(v63, v36);
    }
  }

  OUTLINED_FUNCTION_63_8(&v172);
  sub_237CF11B8();
  v70 = v69;
  v71 = *(v69 + 16);
  if (v71)
  {
    v171[0] = MEMORY[0x277D84F90];
    sub_237C63364(0, v71, 0);
    v72 = v171[0];
    v73 = v168 + 104;
    v167 = *(v168 + 104);
    LODWORD(v165) = *MEMORY[0x277D25278];
    LODWORD(v164) = *MEMORY[0x277D25270];
    v74 = (v168 + 32);
    v133 = v70;
    v75 = (v70 + 40);
    v76 = v163;
    v77 = v139;
    do
    {
      v78 = v167;
      v79 = v166;
      if (*v75)
      {
        *v166 = 0;
        v80 = v164;
      }

      else
      {
        *v166 = *(v75 - 1);
        v80 = v165;
      }

      v81 = v73;
      v78(v79, v80, v76);
      v82 = *v74;
      v83 = OUTLINED_FUNCTION_9_9();
      v82(v83);
      v84 = v72;
      v171[0] = v72;
      v86 = *(v72 + 16);
      v85 = *(v72 + 24);
      if (v86 >= v85 >> 1)
      {
        v90 = OUTLINED_FUNCTION_17_0(v85);
        sub_237C63364(v90, v86 + 1, 1);
        v76 = v163;
        v84 = v171[0];
      }

      *(v84 + 16) = v86 + 1;
      OUTLINED_FUNCTION_10_2();
      v72 = v87;
      (v82)(v87 + v88 + *(v89 + 72) * v86, v77, v76);
      v75 += 16;
      --v71;
      v73 = v81;
    }

    while (v71);

    v91 = v72;
    v92 = v167;
    v93 = v165;
  }

  else
  {

    v93 = *MEMORY[0x277D25278];
    v92 = *(v168 + 104);
    v91 = MEMORY[0x277D84F90];
  }

  v94 = *(v91 + 16);
  v95 = v152;
  *v152 = v153;
  v92(v95, v93, v163);
  v96 = v91;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v94)
    {
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_237E64218();
  v96 = v132;
  if (!v94)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v94 > *(v96 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  (*(v168 + 40))(v96 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * (v94 - 1), v95, v163);
  OUTLINED_FUNCTION_63_8(v171);
  sub_237CF12A0(v155);
  OUTLINED_FUNCTION_12_11();
  sub_237EF7CC0();

  OUTLINED_FUNCTION_63_8(&v170);
  v97 = sub_237CF196C(0x7261656E696CLL);
  v167 = v98;
  v168 = v97;
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_78_3();
  v100 = *(v99 + 72);
  OUTLINED_FUNCTION_17_59();
  v103 = v102 & ~v101;
  v104 = OUTLINED_FUNCTION_55_11();
  *(v104 + 16) = xmmword_237F04760;
  v105 = (v104 + v103);
  OUTLINED_FUNCTION_23_40();
  *v105 = v106;
  v105[1] = v107;
  sub_237EF8260();
  sub_237EF7A20();
  v108 = (v105 + v100);
  OUTLINED_FUNCTION_60_11();
  *v108 = v109;
  v108[1] = 0xE600000000000000;
  v110 = v140;
  v111 = v142;
  v112 = v157;
  v157(v140, v160, v142);
  sub_237EF7AC0();
  v113 = sub_237EF8230();
  v114 = v141;
  sub_237EC52C8(v161, v141);
  v115 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v115, v116, v111);
  if (v62)
  {
    sub_237C65484(v114, &qword_27DEB4610);
  }

  else
  {
    v117 = v134;
    v118 = OUTLINED_FUNCTION_42_20();
    v119(v118);
    v112(v110, v117, v111);
    sub_237EF7AC0();
    v120 = OUTLINED_FUNCTION_9_9();
    v121(v120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v169 = v113;
    OUTLINED_FUNCTION_47_17(isUniquelyReferenced_nonNull_native, v123, v124, isUniquelyReferenced_nonNull_native);
    v125 = OUTLINED_FUNCTION_6_73();
    v126(v125);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_40_18();
  v127 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v127);
  *(OUTLINED_FUNCTION_8_88() + 16) = xmmword_237F03530;
  (*(v147 + 16))(v144, v156, v148);
  sub_237EF8260();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4();
  sub_237CF33F8();
  v128 = OUTLINED_FUNCTION_37_26();
  v129(v128);
  v130 = OUTLINED_FUNCTION_6_73();
  v131(v130);
  (*(v145 + 8))(v155, v146);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237EC52C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237EC5338()
{
  OUTLINED_FUNCTION_37_0();
  v135 = v2;
  v120 = v3;
  v132 = v4;
  v141 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_101_4();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v128 = v9;
  v129 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v127 = v10;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v126 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v123 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v139 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v124 = v18;
  v125 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v138 = v19;
  OUTLINED_FUNCTION_12_1();
  v136 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v142 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v119 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_16();
  v133 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  v144 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  v122 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_35_24();
  v31 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  v118 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v130 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_16();
  v137 = v39;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  v42 = OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_49_16(v42);
  OUTLINED_FUNCTION_97_4();
  sub_237CF1674();
  OUTLINED_FUNCTION_91_2();
  v131 = v7;
  v140 = v43;
  (v43)(v1, v7, v31);
  v44 = *(v33 + 88);
  v45 = OUTLINED_FUNCTION_12_11();
  v46 = v44(v45);
  v121 = *MEMORY[0x277D252B0];
  if (v46 == *MEMORY[0x277D252B0])
  {
    v47 = OUTLINED_FUNCTION_12_11();
    v48(v47);
    OUTLINED_FUNCTION_63_8(&v150);
    sub_237CF1674();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_12_11();
    v50(v49);
  }

  v51 = OUTLINED_FUNCTION_67_4();
  sub_237EC52C8(v51, v52);
  v53 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v53, v54, v31);
  if (v82)
  {
    sub_237C65484(v0, &qword_27DEB4610);
  }

  else
  {
    v55 = OUTLINED_FUNCTION_33_27();
    v56(v55);
    v57 = OUTLINED_FUNCTION_26_33();
    v140(v57);
    v58 = OUTLINED_FUNCTION_12_11();
    v59 = v44(v58);
    if (v59 == v121)
    {
      v60 = OUTLINED_FUNCTION_12_11();
      v61(v60);
      OUTLINED_FUNCTION_59_11(&v149);
      OUTLINED_FUNCTION_9_9();
      sub_237CF1674();

      v62 = OUTLINED_FUNCTION_86_3();
      v63(v62);
    }

    else
    {
      v64 = *(v33 + 8);
      v65 = OUTLINED_FUNCTION_86_3();
      v64(v65);
      v66 = OUTLINED_FUNCTION_12_11();
      v64(v66);
    }
  }

  OUTLINED_FUNCTION_59_11(&v148);
  sub_237CF11B8();
  v68 = v67;
  *v144 = 0;
  v69 = *MEMORY[0x277D25270];
  v145 = *(v142 + 104);
  (v145)(v144, v69, v136);
  v70 = sub_237CDC0C4(v144, *(v68 + 16));
  if (!*(v68 + 16))
  {
    __break(1u);
LABEL_39:
    sub_237E64218();
    v71 = v117;
    goto LABEL_15;
  }

  v71 = v70;
  v137 = v31;
  v72 = MEMORY[0x277D25278];
  if (*(v68 + 40))
  {
    *v133 = 0;
  }

  else
  {
    *v133 = *(v68 + 32);
    v69 = *v72;
  }

  (v145)(v133, v69, v136);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v73 = v142;
  if (!*(v71 + 16))
  {
    __break(1u);
    goto LABEL_41;
  }

  v134 = v33;
  v74 = *(v142 + 40);
  OUTLINED_FUNCTION_28();
  v76 = v71 + v75;
  v74(v71 + v75);
  *v144 = v132;
  v143 = *MEMORY[0x277D25278];
  v145(v144);
  if (*(v71 + 16) < 2uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v77 = *(v73 + 72);
  (v74)(v76 + v77, v144, v136);
  v78 = *(v68 + 16);
  if (v78 < 3)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((*(v68 + 72) & 1) == 0)
  {
    *v144 = *(v68 + 64);
    (v145)(v144, v143, v136);
    if (*(v71 + 16) < 3uLL)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    (v74)(v76 + 2 * v77, v144, v136);
    v78 = *(v68 + 16);
  }

  if (v78 < 4)
  {
    goto LABEL_43;
  }

  v79 = *(v68 + 80);
  v80 = *(v68 + 88);

  if ((v80 & 1) == 0)
  {
    v81 = v79 - v120;
    if (__OFSUB__(v79, v120))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!v135)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v82 = v81 == 0x8000000000000000 && v135 == -1;
    if (v82)
    {
      goto LABEL_51;
    }

    v83 = v81 / v135;
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
      goto LABEL_49;
    }

    *v119 = v85 & ~(v85 >> 63);
    (v145)(v119, v143, v136);
    if (*(v71 + 16) < 4uLL)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    (v74)(v76 + 3 * v77, v119, v136);
  }

  OUTLINED_FUNCTION_48_16(&v147);
  sub_237CF12A0(v138);
  OUTLINED_FUNCTION_99_3();
  sub_237EF7CC0();

  OUTLINED_FUNCTION_48_16(&v146);
  sub_237CF196C(1986948963);
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_7_80();
  v87 = *(v86 + 72);
  OUTLINED_FUNCTION_17_59();
  v90 = v89 & ~v88;
  v91 = OUTLINED_FUNCTION_107_3();
  *(v91 + 16) = xmmword_237F1E9D0;
  v92 = (v91 + v90);
  OUTLINED_FUNCTION_23_40();
  *v92 = v93;
  v92[1] = v94;
  sub_237EF8260();
  sub_237EF7A20();
  v95 = (v91 + v90 + v87);
  OUTLINED_FUNCTION_60_11();
  *v95 = v96;
  v95[1] = 0xE600000000000000;
  (v140)(v130, v131, v137);
  sub_237EF7AC0();
  v97 = (v92 + 2 * v87);
  *v97 = 0x73656469727473;
  v97[1] = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398);
  v98 = OUTLINED_FUNCTION_107();
  *(v98 + 16) = xmmword_237F04760;
  *(v98 + 32) = 1;
  if (v135 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v135 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v98 + 36) = v135;
  sub_237EF7A50();
  v99 = (v92 + 3 * v87);
  *v99 = 0x6E6F6974616C6964;
  v99[1] = 0xE900000000000073;
  sub_237EF7A50();
  v100 = (v92 + 4 * v87);
  *v100 = 6578544;
  v100[1] = 0xE300000000000000;
  sub_237EF7A50();
  v101 = (v92 + 5 * v87);
  *v101 = 0x657079745F646170;
  v101[1] = 0xE800000000000000;
  sub_237EF7A60();
  v102 = (v92 + 6 * v87);
  *v102 = 0x7370756F7267;
  v102[1] = 0xE600000000000000;
  sub_237EF7A90();
  sub_237EF8230();
  sub_237EC52C8(v141, v122);
  v103 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v103, v104, v137);
  if (v82)
  {
    sub_237C65484(v122, &qword_27DEB4610);
  }

  else
  {
    v105 = OUTLINED_FUNCTION_33_27();
    v106(v105);
    v107 = OUTLINED_FUNCTION_26_33();
    v140(v107);
    sub_237EF7AC0();
    v108 = OUTLINED_FUNCTION_65_7();
    v109(v108);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_17(isUniquelyReferenced_nonNull_native, v111, v112, isUniquelyReferenced_nonNull_native);
    (*(v134 + 8))(v118, v137);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_40_18();
  v113 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v113);
  OUTLINED_FUNCTION_18_49();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  OUTLINED_FUNCTION_91_2();
  v114(v123, v139, v126);
  sub_237EF8260();
  OUTLINED_FUNCTION_12_11();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4();
  sub_237CF33F8();
  (*(v128 + 8))(v127, v129);
  v115 = OUTLINED_FUNCTION_97_4();
  v116(v115);
  (*(v124 + 8))(v138, v125);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237EC605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a5;
  v95 = a6;
  v92 = a3;
  v93 = a4;
  OUTLINED_FUNCTION_102_2();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v84 = v12;
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v83 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  v15 = OUTLINED_FUNCTION_18(v14);
  MEMORY[0x28223BE20](v15);
  v88 = &v79 - v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v81 = v18;
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v80 = v19;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_1();
  v91 = v21;
  OUTLINED_FUNCTION_12_1();
  v22 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v79 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  v87 = v28;
  OUTLINED_FUNCTION_11_1();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v79 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36_24();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_35_24();
  OUTLINED_FUNCTION_49_16(v105);
  v89 = v8;
  v90 = a2;
  OUTLINED_FUNCTION_81_1();
  sub_237CF1674();
  v98 = *(v24 + 16);
  v99 = v24 + 16;
  v98(v7, v92, v22);
  v34 = OUTLINED_FUNCTION_88_5();
  v97 = v35;
  v36 = (v35)(v34);
  v37 = *MEMORY[0x277D252B0];
  v96 = v6;
  if (v36 == v37)
  {
    v38 = OUTLINED_FUNCTION_88_5();
    v39(v38);
    memcpy(v104, v6, sizeof(v104));
    v86 = v104[1];
    OUTLINED_FUNCTION_42_20();
    sub_237CF1674();
  }

  else
  {
    v86 = v106;
    v40 = OUTLINED_FUNCTION_88_5();
    v41(v40);
  }

  v98(v9, v93, v22);
  if (v97(v9, v22) == v37)
  {
    (*(v24 + 96))(v9, v22);
    OUTLINED_FUNCTION_73_5(v103);
    v86 = v103[1];
    OUTLINED_FUNCTION_65_7();
    sub_237CF1674();
  }

  else
  {
    (*(v24 + 8))(v9, v22);
  }

  v98(v32, v94, v22);
  v42 = OUTLINED_FUNCTION_69_8();
  if ((v97)(v42) == v37)
  {
    v43 = OUTLINED_FUNCTION_69_8();
    v44(v43);
    OUTLINED_FUNCTION_73_5(v102);
    v45 = v102[1];
    OUTLINED_FUNCTION_5_12();
    sub_237CF1674();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_69_8();
    v48(v47);
    v45 = v86;
  }

  v46 = v87;
  v98(v87, v95, v22);
  if (v97(v46, v22) == v37)
  {
    (*(v24 + 96))(v46, v22);
    OUTLINED_FUNCTION_73_5(v101);
    v45 = v101[1];
    OUTLINED_FUNCTION_5_12();
    sub_237CF1674();
  }

  else
  {
    (*(v24 + 8))(v46, v22);
  }

  v49 = v88;
  OUTLINED_FUNCTION_17_51();
  sub_237DD7298(v45, v50);
  type metadata accessor for TensorDescription();
  v51 = OUTLINED_FUNCTION_23_0();
  result = OUTLINED_FUNCTION_28_1(v51, v52, v53);
  if (v55)
  {
    __break(1u);
  }

  else
  {
    sub_237CF13C0();
    sub_237CF42E8(v49);
    OUTLINED_FUNCTION_73_5(&v100);
    v56 = OUTLINED_FUNCTION_93_4();
    v97 = sub_237CF196C(v56);
    v90 = v57;
    sub_237CF0C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
    OUTLINED_FUNCTION_32_33();
    v59 = *(v58 + 72);
    OUTLINED_FUNCTION_17_59();
    v62 = v61 & ~v60;
    v63 = OUTLINED_FUNCTION_107_3();
    v88 = v63;
    *(v63 + 16) = xmmword_237F105E0;
    v64 = (v63 + v62);
    OUTLINED_FUNCTION_23_40();
    *v64 = v65;
    v64[1] = v66;
    sub_237EF8260();
    OUTLINED_FUNCTION_17_51();
    sub_237EF7A20();
    v67 = (v64 + v59);
    *v67 = 1635018082;
    v67[1] = 0xE400000000000000;
    v68 = v79;
    v69 = v98;
    v98(v79, v92, v22);
    sub_237EF7AC0();
    v70 = (v64 + 2 * v59);
    *v70 = 0x616D6D6167;
    v70[1] = 0xE500000000000000;
    v69(v68, v93, v22);
    sub_237EF7AC0();
    v71 = (v64 + 3 * v59);
    *v71 = 1851876717;
    v71[1] = 0xE400000000000000;
    v69(v68, v94, v22);
    sub_237EF7AC0();
    v72 = (v64 + 4 * v59);
    *v72 = 0x65636E6169726176;
    v72[1] = 0xE800000000000000;
    v69(v68, v95, v22);
    sub_237EF7AC0();
    OUTLINED_FUNCTION_53_14((v64 + 5 * v59));
    sub_237EF7A80();
    sub_237EF7B00();
    sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
    OUTLINED_FUNCTION_40_18();
    v73 = sub_237EF78C0();
    OUTLINED_FUNCTION_6_1(v73);
    *(OUTLINED_FUNCTION_8_88() + 16) = xmmword_237F03530;
    v74 = v81;
    v75 = v91;
    v76 = v82;
    (*(v81 + 16))(v80, v91, v82);
    sub_237EF8260();
    OUTLINED_FUNCTION_41_10();
    sub_237EF7880();
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_74_4();
    sub_237CF33F8();
    v77 = OUTLINED_FUNCTION_37_26();
    v78(v77);
    (*(v74 + 8))(v75, v76);
    return OUTLINED_FUNCTION_41_10();
  }

  return result;
}

void sub_237EC68DC()
{
  OUTLINED_FUNCTION_37_0();
  v200 = v3;
  v192 = v4;
  v193 = v5;
  v189 = v6;
  v195 = v7;
  v9 = v8;
  v10 = sub_237EF7CD0();
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v181 = v12;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v182 = v14;
  v183 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v180 = v15;
  OUTLINED_FUNCTION_12_1();
  v185 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v176 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v177 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v175 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v178 = v22;
  v179 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  v199 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v174 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  v173 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v197 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_35_24();
  v32 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  v171 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8_16();
  v170 = v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  v191 = v40;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  v172 = v42;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  v201.n128_u64[0] = v44;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_61_9();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v169 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_49_16(v50);
  v188 = v9;
  sub_237CF1674();
  v51 = *(v34 + 16);
  v196 = v34 + 16;
  v198 = v51;
  (v51)(v2, v189, v32);
  v52 = OUTLINED_FUNCTION_26_33();
  v190 = v53;
  v54 = v53(v52);
  LODWORD(v187) = *MEMORY[0x277D252B0];
  v184 = v34;
  v194 = v0;
  if (v54 == v187)
  {
    v55 = OUTLINED_FUNCTION_26_33();
    v56(v55);
    memcpy(v208, v0, sizeof(v208));
    v34 = v184;
    sub_237CF1674();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_26_33();
    v58(v57);
  }

  sub_237EC52C8(v192, v1);
  v59 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v59, v60, v32);
  if (v61)
  {
    sub_237C65484(v1, &qword_27DEB4610);
  }

  else
  {
    v62 = OUTLINED_FUNCTION_42_20();
    v63(v62);
    v64 = OUTLINED_FUNCTION_41_10();
    v198(v64);
    v65 = OUTLINED_FUNCTION_30_43();
    v66 = v190(v65);
    if (v66 == v187)
    {
      v67 = OUTLINED_FUNCTION_30_43();
      v68(v67);
      OUTLINED_FUNCTION_109_0(&v207);
      OUTLINED_FUNCTION_9_9();
      sub_237CF1674();

      (*(v34 + 8))(v49, v32);
    }

    else
    {
      v69 = *(v34 + 8);
      v69(v49, v32);
      v70 = OUTLINED_FUNCTION_30_43();
      (v69)(v70);
    }
  }

  v71 = v197;
  sub_237EC52C8(v193, v197);
  v72 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_1(v72, v73, v32);
  v74 = v201.n128_u64[0];
  v186 = v32;
  if (v61)
  {
    sub_237C65484(v71, &qword_27DEB4610);
  }

  else
  {
    v75 = OUTLINED_FUNCTION_18_47();
    v76(v75);
    (v198)(v172, v74, v32);
    v77 = OUTLINED_FUNCTION_99_3();
    v78 = v190(v77);
    if (v78 == v187)
    {
      v79 = OUTLINED_FUNCTION_99_3();
      v80(v79);
      OUTLINED_FUNCTION_109_0(&v206);
      OUTLINED_FUNCTION_5_12();
      sub_237CF1674();

      v81 = OUTLINED_FUNCTION_26_33();
      v82(v81);
    }

    else
    {
      v83 = *(v34 + 8);
      v84 = OUTLINED_FUNCTION_26_33();
      v83(v84);
      v85 = OUTLINED_FUNCTION_99_3();
      v83(v85);
    }
  }

  OUTLINED_FUNCTION_109_0(&v205);
  sub_237CF12A0(v199);
  OUTLINED_FUNCTION_109_0(&v204);
  v86 = sub_237CF196C(1836348268);
  v88 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD498);
  v89 = swift_allocObject();
  v187 = xmmword_237F08A50;
  *(v89 + 16) = xmmword_237F08A50;
  *(v89 + 32) = 0;
  *(v89 + 40) = 1;
  *(v89 + 48) = 1;
  *(v89 + 56) = 0;
  v90 = v200;
  *(v89 + 64) = v200;
  *(v89 + 72) = 0;
  OUTLINED_FUNCTION_30_43();
  OUTLINED_FUNCTION_110_2();

  v202 = v86;
  v203 = v88;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x74735F6C6C65635FLL, 0xEB00000000657461);
  v91 = OUTLINED_FUNCTION_105_3();
  v201 = xmmword_237F04760;
  OUTLINED_FUNCTION_41_16(v91, xmmword_237F04760);
  OUTLINED_FUNCTION_110_2();

  v197 = v86;
  v202 = v86;
  v203 = v88;
  v190 = v88;
  sub_237EF8260();
  OUTLINED_FUNCTION_43_23();
  v92 = OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_41_16(v92, v201);
  OUTLINED_FUNCTION_110_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_32_33();
  v94 = *(v93 + 72);
  OUTLINED_FUNCTION_17_59();
  v97 = v96 & ~v95;
  v98 = OUTLINED_FUNCTION_107_3();
  v172 = v98;
  *(v98 + 16) = xmmword_237F15930;
  v99 = (v98 + v97);
  OUTLINED_FUNCTION_23_40();
  *v99 = v100;
  v99[1] = v101;
  sub_237EF8260();
  sub_237EF7A20();
  v102 = (v99 + v94);
  OUTLINED_FUNCTION_60_11();
  *v102 = v103 & 0xFFFFFFFFFFFFLL | 0x685F000000000000;
  v102[1] = 0xE900000000000068;
  (v198)(v191, v189, v186);
  sub_237EF7AC0();
  v104 = (v99 + 2 * v94);
  *v104 = 0x5F6C616974696E69;
  v104[1] = 0xE900000000000063;
  sub_237CDC1E8(v90, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_72_6(v105);
  *(v106 + 32) = 1;
  *(v106 + 40) = v90;
  sub_237EF7A40();
  v107 = (v99 + 3 * v94);
  *v107 = 0x5F6C616974696E69;
  v107[1] = 0xE900000000000068;
  sub_237CDC1E8(v90, 0.0);
  v108 = swift_allocObject();
  OUTLINED_FUNCTION_72_6(v108);
  *(v109 + 32) = 1;
  *(v109 + 40) = v90;
  sub_237EF7A40();
  OUTLINED_FUNCTION_53_14((v99 + 4 * v94));
  sub_237EF7A60();
  OUTLINED_FUNCTION_53_14((v99 + 5 * v94));
  sub_237EF7A60();
  v110 = (v99 + 6 * v94);
  *v110 = 0xD000000000000014;
  v110[1] = 0x8000000237F01BD0;
  sub_237EF7A60();
  v111 = (v99 + 7 * v94);
  *v111 = 0x6F69746365726964;
  v111[1] = 0xE90000000000006ELL;
  sub_237EF7A60();
  OUTLINED_FUNCTION_53_14(&v99[v94]);
  sub_237EF7A70();
  v112 = v185;
  v113 = sub_237EF8230();
  v114 = v173;
  sub_237EC52C8(v192, v173);
  v115 = OUTLINED_FUNCTION_23_0();
  v116 = v186;
  OUTLINED_FUNCTION_28_1(v115, v117, v186);
  if (v61)
  {
    sub_237C65484(v114, &qword_27DEB4610);
  }

  else
  {
    v118 = v184;
    v119 = v170;
    v120 = OUTLINED_FUNCTION_26_4();
    v121(v120);
    (v198)(v191, v119, v116);
    v122 = v175;
    sub_237EF7AC0();
    v123 = v177;
    (*(v176 + 32))(v177, v122, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202 = v113;
    sub_237C913E0(v123, 0x695F746867696577, 0xE900000000000068, isUniquelyReferenced_nonNull_native);
    v113 = v202;
    (*(v118 + 8))(v119, v116);
  }

  v125 = v174;
  v126 = v198;
  sub_237EC52C8(v193, v174);
  v127 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_1(v127, v128, v116);
  if (v61)
  {
    sub_237C65484(v125, &qword_27DEB4610);
    v193 = v113;
  }

  else
  {
    v129 = OUTLINED_FUNCTION_26_4();
    v130(v129);
    v131 = OUTLINED_FUNCTION_65_7();
    v126(v131);
    v132 = v175;
    sub_237EF7AC0();
    (*(v176 + 32))(v177, v132, v185);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v113;
    OUTLINED_FUNCTION_47_17(v133, v134, v135, v133);
    v193 = v202;
    v136 = OUTLINED_FUNCTION_57_10();
    v137(v136);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_25_6();
  v138 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v138);
  v191 = *(v139 + 72);
  OUTLINED_FUNCTION_17_59();
  v142 = v141 & ~v140;
  v143 = OUTLINED_FUNCTION_55_11();
  v192 = v143;
  *(v143 + 16) = v187;
  v189 = v143 + v142;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370);
  v144 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v146 = v145;
  v148 = *(v147 + 72);
  v196 = *(v145 + 80);
  v149 = (v196 + 32) & ~v196;
  v150 = OUTLINED_FUNCTION_75_5();
  *(v150 + 16) = v187;
  v151 = v150 + v149;
  *(v150 + v149) = 0;
  v152 = *(v146 + 104);
  (v152)(v150 + v149, *MEMORY[0x277D25270], v144);
  *(v151 + v148) = 1;
  LODWORD(v195) = *MEMORY[0x277D25278];
  (v152)(v151 + v148, v195, v144);
  *(v151 + 2 * v148) = v200;
  v152();
  v153 = v190;
  sub_237EF8260();
  sub_237EF7CC0();

  v154 = v197;
  sub_237EF7880();
  v202 = v154;
  v203 = v153;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x74735F6C6C65635FLL, 0xEB00000000657461);
  v185 = v203;
  v186 = v202;
  v188 = v149;
  *&v187 = v149 + 2 * v148;
  v155 = swift_allocObject();
  v156 = OUTLINED_FUNCTION_72_6(v155);
  *(v157 + v149) = 1;
  v158 = v157 + v149;
  v159 = v195;
  (v152)(v158, v195, v144, v156);
  *(v158 + v148) = v200;
  (v152)(v158 + v148, v159, v144);
  sub_237EF7CC0();

  v160 = v191;
  v161 = v189;
  sub_237EF7880();
  v191 = v161 + 2 * v160;
  v202 = v197;
  v203 = v153;
  sub_237EF8260();
  OUTLINED_FUNCTION_43_23();
  v189 = v202;
  v162 = swift_allocObject();
  v163 = OUTLINED_FUNCTION_72_6(v162);
  v165 = (v164 + v188);
  *v165 = 1;
  v166 = v195;
  (v152)(v165, v195, v144, v163);
  *(v165 + v148) = v200;
  (v152)(v165 + v148, v166, v144);
  v167 = v199;
  OUTLINED_FUNCTION_6_68();
  sub_237EF7CC0();

  sub_237EF7880();
  v168 = v180;
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v182 + 8))(v168, v183);
  (*(v178 + 8))(v167, v179);
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC79A4()
{
  OUTLINED_FUNCTION_37_0();
  v219 = v2;
  v220 = v0;
  v4 = v3;
  v205 = v5;
  v206 = v6;
  v7 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v207 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v204 = v10;
  OUTLINED_FUNCTION_12_1();
  v11 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v236 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v193 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_61_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v232 = v20;
  OUTLINED_FUNCTION_11_1();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v190 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_1();
  v234 = v25;
  OUTLINED_FUNCTION_12_1();
  v208 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v213 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v203 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v212 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v190 - v32;
  sub_237EF7CB0();
  OUTLINED_FUNCTION_1();
  v217 = v35;
  v218 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  v201 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_1();
  v210 = v38;
  OUTLINED_FUNCTION_12_1();
  sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v215 = v40;
  v216 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  v199 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_1();
  v209 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  v45 = OUTLINED_FUNCTION_18(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_2();
  v211 = v46;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  v49 = &v190 - v48;
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v221 = v51;
  v222 = v50;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_2();
  v214 = v52;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_16();
  v200 = v54;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_22_1();
  v224 = v56;
  v202 = v4;
  v57 = sub_237EF7AE0();
  sub_237CA3424(v57);

  v58 = sub_237EF7AB0();
  OUTLINED_FUNCTION_28_1(v49, 1, v58);
  if (v59)
  {
    __break(1u);
    goto LABEL_47;
  }

  v60 = *(v58 - 8);
  v61 = *(v60 + 88);
  v196 = v60 + 88;
  v197 = v61;
  v62 = (v61)(v49, v58);
  v194 = *MEMORY[0x277D252B0];
  v235 = v11;
  v231 = v1;
  v198 = v7;
  v233 = v16;
  if (v62 == v194)
  {
    v195 = *(v60 + 96);
    v195(v49, v58);
    v63 = v220;
    OUTLINED_FUNCTION_59_11(v245);
    v64 = v58;
    OUTLINED_FUNCTION_5_12();
    sub_237CF1674();
    OUTLINED_FUNCTION_59_11(&v244);
    OUTLINED_FUNCTION_5_12();
    sub_237CF11B8();
    v237 = v65;
    OUTLINED_FUNCTION_59_11(&v243);
    OUTLINED_FUNCTION_5_12();
    sub_237CF12A0(v66);

    v68 = v212;
    v67 = v213;
    v69 = v211;
  }

  else
  {
    v192 = v60;
    v230 = v24;
    if (v62 != *MEMORY[0x277D252B8])
    {
LABEL_48:
      OUTLINED_FUNCTION_17_15();
      v182 = 105;
      goto LABEL_53;
    }

    v70 = *(v192 + 96);
    v191 = v58;
    v70(v49, v58);
    (*(v215 + 32))(v209, v49, v216);
    sub_237EF79E0();
    if ((*(v213 + 88))(v33, v208) != *MEMORY[0x277D25310])
    {
      v183 = OUTLINED_FUNCTION_26_4();
      v184(v183);
      OUTLINED_FUNCTION_9_68();
      v185 = 100;
      goto LABEL_55;
    }

    v195 = v70;
    v71 = OUTLINED_FUNCTION_26_4();
    v72(v71);
    v73 = swift_projectBox();
    (*(v217 + 16))(v210, v73, v218);

    v74 = sub_237EF7CA0();
    v75 = *(v74 + 16);
    if (v75)
    {
      v245[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_34_20();
      sub_237C632DC();
      v76 = v236 + 16;
      v237 = v245[0];
      OUTLINED_FUNCTION_28();
      v190 = v74;
      v78 = v74 + v77;
      v228 = *(v76 + 56);
      v229 = v79;
      v227 = v76 + 72;
      v80 = *MEMORY[0x277D25278];
      v223 = v76 + 80;
      v226 = v76 - 8;
      v225 = (v76 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      do
      {
        v81 = v229;
        (v229)(v234, v78, v11);
        v82 = v230;
        v83 = OUTLINED_FUNCTION_18_47();
        v81(v83);
        v84 = OUTLINED_FUNCTION_26_33();
        v86 = v85(v84);
        if (v86 == v80)
        {
          v90 = OUTLINED_FUNCTION_26_33();
          v91(v90);
          v89 = *v82;
          v87 = *v226;
        }

        else
        {
          v87 = *v226;
          v88 = OUTLINED_FUNCTION_26_33();
          v87(v88);
          v89 = 0;
        }

        (v87)(v234, v11);
        v92 = v237;
        v245[0] = v237;
        v94 = *(v237 + 16);
        v93 = *(v237 + 24);
        if (v94 >= v93 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v93);
          OUTLINED_FUNCTION_95_2();
          sub_237C632DC();
          v92 = v245[0];
        }

        *(v92 + 16) = v94 + 1;
        v237 = v92;
        v95 = v92 + 16 * v94;
        *(v95 + 32) = v89;
        *(v95 + 40) = v86 != v80;
        v78 += v228;
        --v75;
        v11 = v235;
      }

      while (v75);

      v63 = v220;
      v1 = v231;
    }

    else
    {

      v237 = MEMORY[0x277D84F90];
      v63 = v220;
    }

    v96 = v210;
    sub_237EF7C90();
    (*(v217 + 8))(v96, v218);
    (*(v215 + 8))(v209, v216);
    v68 = v212;
    v67 = v213;
    v69 = v211;
    v64 = v191;
  }

  v97 = sub_237EF7AE0();
  sub_237CA3424(v97);

  OUTLINED_FUNCTION_28_1(v69, 1, v64);
  if (v59)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v98 = OUTLINED_FUNCTION_81_1();
  v99 = v197(v98);
  if (v99 != v194)
  {
    if (v99 == *MEMORY[0x277D252B8])
    {
      v106 = OUTLINED_FUNCTION_81_1();
      (v195)(v106);
      (*(v215 + 32))(v199, v69, v216);
      sub_237EF79E0();
      if ((*(v67 + 88))(v68, v208) == *MEMORY[0x277D25310])
      {
        v107 = OUTLINED_FUNCTION_68_7();
        v108(v107);
        v109 = swift_projectBox();
        (*(v217 + 16))(v201, v109, v218);

        v110 = sub_237EF7CA0();
        v111 = *(v110 + 16);
        if (v111)
        {
          v242[0] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_34_20();
          sub_237C632DC();
          v112 = v236 + 16;
          v113 = v242[0];
          OUTLINED_FUNCTION_28();
          v225 = v110;
          v115 = v110 + v114;
          v229 = *(v112 + 56);
          v230 = v116;
          v228 = v112 + 72;
          v117 = *MEMORY[0x277D25278];
          v234 = (v112 - 8);
          v226 = v112 + 80;
          v227 = (v112 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          do
          {
            v118 = OUTLINED_FUNCTION_5_12();
            v119 = v230;
            (v230)(v118);
            v120 = OUTLINED_FUNCTION_67_4();
            (v119)(v120);
            v121 = OUTLINED_FUNCTION_30_43();
            v123 = v122(v121);
            if (v123 == v117)
            {
              v128 = OUTLINED_FUNCTION_30_43();
              v129(v128);
              v126 = v11;
              v127 = *v1;
              v124 = *v234;
            }

            else
            {
              v124 = *v234;
              v125 = OUTLINED_FUNCTION_30_43();
              v124(v125);
              v126 = v11;
              v127 = 0;
            }

            (v124)(v232, v126);
            v242[0] = v113;
            v131 = *(v113 + 16);
            v130 = *(v113 + 24);
            if (v131 >= v130 >> 1)
            {
              OUTLINED_FUNCTION_17_0(v130);
              sub_237C632DC();
              v113 = v242[0];
            }

            *(v113 + 16) = v131 + 1;
            v132 = v113 + 16 * v131;
            *(v132 + 32) = v127;
            *(v132 + 40) = v123 != v117;
            v115 += v229;
            --v111;
            v11 = v235;
            v1 = v231;
          }

          while (v111);

          v63 = v220;
        }

        else
        {

          v113 = MEMORY[0x277D84F90];
        }

        v133 = sub_237C61164(v237, v113);

        v134 = v201;
        if (v133)
        {
          v135 = v200;
          sub_237EF7C90();
          sub_237EC8CEC();
          v136 = v222;
          OUTLINED_FUNCTION_20_10();
          sub_237EF8870();
          OUTLINED_FUNCTION_20_10();
          sub_237EF8870();
          v137 = *(v221 + 8);
          v137(v135, v136);
          if (v242[0] == v241[0])
          {
            v229 = v137;
            (*(v217 + 8))(v134, v218);
            (*(v215 + 8))(v199, v216);
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_9_68();
          v187 = 125;
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_17_15();
        v186 = 122;
        goto LABEL_57;
      }

      v188 = OUTLINED_FUNCTION_68_7();
      v189(v188);
      OUTLINED_FUNCTION_9_68();
      v185 = 119;
LABEL_55:
      v190 = v185;
LABEL_60:
      OUTLINED_FUNCTION_19_51();
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_17_15();
    v182 = 128;
LABEL_53:
    v190 = v182;
    OUTLINED_FUNCTION_85_4();
LABEL_61:
    sub_237EF9740();
    __break(1u);
    return;
  }

  v100 = OUTLINED_FUNCTION_81_1();
  (v195)(v100);
  OUTLINED_FUNCTION_59_11(v242);
  OUTLINED_FUNCTION_20_10();
  sub_237CF1674();
  OUTLINED_FUNCTION_59_11(v241);
  OUTLINED_FUNCTION_20_10();
  sub_237CF11B8();
  v102 = sub_237C61164(v237, v101);

  if ((v102 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_15();
    v186 = 112;
LABEL_57:
    v190 = v186;
    OUTLINED_FUNCTION_19_51();
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_59_11(&v240);
  OUTLINED_FUNCTION_20_10();
  sub_237CF12A0(v103);
  sub_237EC8CEC();
  OUTLINED_FUNCTION_12_11();
  sub_237EF8870();
  OUTLINED_FUNCTION_12_11();
  sub_237EF8870();
  v104 = *(v221 + 8);
  v105 = OUTLINED_FUNCTION_18_14();
  v104(v105);
  if (v239[0] != v238)
  {
    OUTLINED_FUNCTION_9_68();
    v187 = 115;
LABEL_59:
    v190 = v187;
    goto LABEL_60;
  }

  v229 = v104;

LABEL_37:
  OUTLINED_FUNCTION_59_11(v239);
  v138 = sub_237CF196C(0x5F746E656D656C65);
  v227 = v139;
  v228 = v138;
  v140 = v63;
  sub_237CF1A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08);
  OUTLINED_FUNCTION_32_33();
  v142 = *(v141 + 72);
  OUTLINED_FUNCTION_17_59();
  v145 = v144 & ~v143;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_237F04760;
  v147 = (v146 + v145);
  v148 = *(v63 + 56);
  *v147 = 120;
  v147[1] = 0xE100000000000000;
  v149 = sub_237EF7B00();
  OUTLINED_FUNCTION_4();
  v151 = *(v150 + 16);
  v151(v147 + v148, v202, v149);
  v152 = (v147 + v142);
  v153 = *(v140 + 56);
  *v152 = 121;
  v152[1] = 0xE100000000000000;
  v151(v147 + v142 + v153, v219, v149);
  v154 = sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  OUTLINED_FUNCTION_25_6();
  v155 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v155);
  OUTLINED_FUNCTION_18_49();
  v158 = v157 & ~v156;
  v226 = OUTLINED_FUNCTION_75_5();
  *(v226 + 16) = xmmword_237F03530;
  (*(v221 + 16))(v214, v224, v222);
  v159 = *(v237 + 16);
  if (v159)
  {
    v223 = v158;
    v225 = v154;
    v238 = MEMORY[0x277D84F90];
    v160 = v237;
    sub_237C63364(0, v159, 0);
    v161 = v238;
    v162 = v235;
    v232 = *(v236 + 104);
    LODWORD(v231) = *MEMORY[0x277D25278];
    LODWORD(v230) = *MEMORY[0x277D25270];
    v234 = (v236 + 104);
    v163 = (v236 + 32);
    v164 = (v160 + 40);
    v165 = v193;
    do
    {
      v166 = v233;
      if (*v164)
      {
        *v233 = 0;
        v167 = v230;
      }

      else
      {
        *v233 = *(v164 - 1);
        v167 = v231;
      }

      v232(v166, v167, v162);
      v168 = *v163;
      (*v163)(v165, v166, v162);
      v238 = v161;
      v170 = *(v161 + 16);
      v169 = *(v161 + 24);
      if (v170 >= v169 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v169);
        OUTLINED_FUNCTION_95_2();
        sub_237C63364(v173, v174, v175);
        v161 = v238;
      }

      *(v161 + 16) = v170 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      v168(v171 + v172 * v170, v165, v162);
      v164 += 16;
      --v159;
    }

    while (v159);
  }

  v176 = v214;
  OUTLINED_FUNCTION_18_47();
  sub_237EF7CC0();

  v177 = v176;
  v178 = v222;
  v179 = v229;
  (v229)(v177, v222);
  sub_237EF8260();
  OUTLINED_FUNCTION_39_9();
  sub_237EF7880();
  sub_237EF8260();
  sub_237EF7BF0();
  sub_237CF33F8();
  v180 = OUTLINED_FUNCTION_37_26();
  v181(v180, v198);
  v179(v224, v178);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_38_0();
}

BOOL sub_237EC8BE0()
{
  sub_237EF7B10();
  sub_237EC8CEC();
  sub_237EF8870();
  sub_237EF8870();
  return v2 == v1;
}

unint64_t sub_237EC8C68()
{
  result = qword_27DEB6A18;
  if (!qword_27DEB6A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB6A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB6A18);
  }

  return result;
}

unint64_t sub_237EC8CEC()
{
  result = qword_27DEB6A28[0];
  if (!qword_27DEB6A28[0])
  {
    sub_237EF7B10();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB6A28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_88()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_22_44()
{

  return memcpy((v1 - 200), v0, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_41_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 1;
  a1[2].n128_u8[8] = 0;
  a1[3].n128_u64[0] = v3;
  a1[3].n128_u8[8] = 0;
  return v2;
}

void OUTLINED_FUNCTION_43_23()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_47_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237C913E0(v4, 1935763810, 0xE400000000000000, a4);
}

void *OUTLINED_FUNCTION_48_16(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_49_16(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_50_17@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 - 256);
  *result = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_11()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_59_11(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_63_8(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

__n128 OUTLINED_FUNCTION_72_6(__n128 *a1)
{
  result = v1[17];
  a1[1] = result;
  return result;
}

void *OUTLINED_FUNCTION_73_5(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return sub_237EF7BF0();
}

uint64_t OUTLINED_FUNCTION_75_5()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_76_7()
{

  sub_237C63364(0, v0, 0);
}

void *OUTLINED_FUNCTION_77_4(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_105_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_107_3()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_108_2(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_109_0(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void OUTLINED_FUNCTION_110_2()
{

  sub_237CF1A18();
}

void *sub_237EC9280(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_237E982B0();
      if (sub_237ECA8D8(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_237EC9330(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_237C9FE9C();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_237EC93D0(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_237E982B0();
        if (sub_237ECAABC(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237EC9460@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v90 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v89 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v6);
  v87 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v86 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v9);
  v93 = sub_237EF7350();
  OUTLINED_FUNCTION_1();
  v92 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v12);
  v95 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v94 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v96 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_22_2(&v84 - v17);
  v114 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v100 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v20);
  sub_237EF73D0();
  OUTLINED_FUNCTION_1();
  v110 = v22;
  v111 = v21;
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v108 = v25;
  MEMORY[0x28223BE20](v26);
  v97 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = *v2;
  v29 = v2[1];
  v107 = v2[2];
  v113 = &v84 - v31;
  sub_237EF7720();
  __dst[0] = v30;
  v32 = a1[2];
  v105 = a1[3];

  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8);
  v33 = a1;
  v34 = a1[4];
  v103 = a1[5];
  v36 = a1[6];
  v35 = a1[7];
  v37 = a1[8];
  v106 = v33[9];
  v83 = v106;
  sub_237ECA4A8();
  v82 = v35;
  v38 = v105;
  v39 = v107;
  *&v101 = v32;
  sub_237ECA104(__dst, v29, v107, v32, v105, v104, v34, v103, v36, v82, v37, v83);

  sub_237EF73C0();
  sub_237EF73B0();
  v112 = v24;
  sub_237EF7390();
  v40 = *(v30 + 16);
  v104 = v29;
  v103 = v36;
  result = sub_237E5E170(v29, v39, v38, v36, v106);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v42 = result;
  v43 = sub_237EF7EF0();
  v44 = v102;
  sub_237E5E9F0(v43, v102);
  v45 = v114;
  if (__swift_getEnumTagSinglePayload(v44, 1, v114) == 1)
  {
    sub_237C863A0(v44, &qword_27DEB0E78);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v47 = v46;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v115 = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v48 = __dst[1];
    *v47 = __dst[0];
    v47[1] = v48;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v110 + 8))(v112, v111);
    return (*(v108 + 8))(v113, v109);
  }

  (*(v100 + 32))(v99, v44, v45);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  sub_237EF70E0();
  v102 = v49;
  v50 = swift_allocObject();
  v101 = xmmword_237F03530;
  *(v50 + 16) = xmmword_237F03530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v51 = swift_allocObject();
  *(v51 + 16) = v101;
  *(v51 + 32) = v40 / v42;
  sub_237EF6CF0();

  OUTLINED_FUNCTION_4_96();
  sub_237EF76B0();
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      v57 = sub_237EF9660();
LABEL_10:
      *v91 = v57;
      v58 = OUTLINED_FUNCTION_5_95();
      v59(v58);
      v54 = v112;
      sub_237EF7360();
      *(swift_allocObject() + 16) = xmmword_237F04760;
      OUTLINED_FUNCTION_6_81();
      sub_237EF6D00();
      v60 = OUTLINED_FUNCTION_3_104();
      v61(v60);
      OUTLINED_FUNCTION_4_96();
      OUTLINED_FUNCTION_6_81();
      sub_237EF6E40();
      goto LABEL_11;
    }

    result = sub_237E5E170(v104, v107, v38, v103, v106);
    if ((result & 0x8000000000000000) == 0)
    {
      v57 = sub_237EC9280(0, result);
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  *v91 = sub_237EF9660();
  v52 = OUTLINED_FUNCTION_5_95();
  v53(v52);
  v54 = v112;
  sub_237EF7360();
  *(swift_allocObject() + 16) = xmmword_237F04760;
  OUTLINED_FUNCTION_6_81();
  sub_237EF6DB0();
  v55 = OUTLINED_FUNCTION_3_104();
  v56(v55);
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_6_81();
  sub_237EF6E50();
LABEL_11:
  OUTLINED_FUNCTION_4_96();
  v62 = v113;
  sub_237EF7700();
  sub_237EF7620();
  sub_237EF75E0();
  sub_237EF76A0();
  sub_237EF76B0();
  sub_237EF76F0();
  sub_237EF7700();
  sub_237EF7600();
  sub_237EF7640();
  v63 = v85;
  (*(v110 + 16))(v85, v54, v111);
  (*(v86 + 104))(v63, *MEMORY[0x277D25338], v87);
  sub_237EF7660();
  v64 = *(v108 + 16);
  v65 = v97;
  v66 = v109;
  v64(v97, v62, v109);
  v67 = v98;
  sub_237EF7810();
  v68 = type metadata accessor for CoreMLPackage();
  v69 = v88;
  v70 = &v88[*(v68 + 24)];
  *(v70 + 10) = 0;
  *(v70 + 3) = 0u;
  *(v70 + 4) = 0u;
  *(v70 + 1) = 0u;
  *(v70 + 2) = 0u;
  *v70 = 0u;
  v64(v69, v65, v66);
  memcpy(__dst, v70, sizeof(__dst));
  sub_237C863A0(__dst, &unk_27DEAD7B0);
  *v70 = 0u;
  *(v70 + 1) = 0u;
  *(v70 + 2) = 0u;
  *(v70 + 3) = 0u;
  *(v70 + 4) = 0u;
  *(v70 + 10) = 0;
  v71 = v89;
  v72 = v67;
  v73 = v90;
  (*(v89 + 16))(&v69[*(v68 + 20)], v72, v90);
  v74 = sub_237E34060();
  v76 = v75;
  v77 = sub_237EF7780();
  v79 = v78;
  swift_isUniquelyReferenced_nonNull_native();
  v117 = *v79;
  sub_237C91098(v74, v76, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v79 = v117;
  v77(&v115, 0);
  (*(v71 + 8))(v98, v73);
  v80 = *(v108 + 8);
  v81 = v109;
  v80(v97, v109);
  (*(v100 + 8))(v99, v114);
  (*(v110 + 8))(v112, v111);
  return (v80)(v62, v81);
}

void sub_237ECA104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sub_237EF8DA0();
  v16 = sub_237E5E170(a2, a3, a5, a9, a12);
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v16 == 1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v15 == 0x8000000000000000 && v16 == 0)
  {
    goto LABEL_46;
  }

  v19 = sub_237E5E170(a2, a3, a5, a9, a12);
  if (__OFSUB__(v19, 1))
  {
    goto LABEL_44;
  }

  if (v19 - 1 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  if (v19 != 1)
  {
    v20 = 0;
    v21 = v15 / v17;
    v45 = v15 / v17 - 1;
    v22 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
    v46 = v15 / v17;
    v47 = v19 - 1;
    while (!__OFADD__(v20, 1))
    {
      sub_237EF8D90();
      v51[4] = v52;
      if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
      {
        goto LABEL_37;
      }

      sub_237EF8DB0();
      v23 = v51[0];
      v24 = v51[0] + v21;
      if (__OFADD__(v51[0], v21))
      {
        goto LABEL_38;
      }

      v48 = v20 + 1;
      v49 = v22;
      v25 = v24 - 1;
      if (__OFSUB__(v24, 1))
      {
        goto LABEL_39;
      }

      if (v25 < v51[0])
      {
        goto LABEL_40;
      }

      v26 = MEMORY[0x277D84F90];
      if (v51[0] != v25)
      {
        if (v51[0] >= v25)
        {
          goto LABEL_41;
        }

        v34 = v45;
        do
        {
          v52 = v23;
          v35 = sub_237EF8F00();
          v37 = *v36;
          v35(v51, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237D0BEC0();
            v26 = v39;
          }

          v38 = *(v26 + 16);
          if (v38 >= *(v26 + 24) >> 1)
          {
            sub_237D0BEC0();
            v26 = v40;
          }

          *(v26 + 16) = v38 + 1;
          *(v26 + 8 * v38 + 32) = v37;
          ++v23;
          --v34;
        }

        while (v34);
      }

      v27 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BE9C(0, v50[2] + 1, 1, v50);
        v27 = v41;
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        sub_237D0BE9C(v28 > 1, v29 + 1, 1, v27);
        v27 = v42;
      }

      v27[2] = v29 + 1;
      v27[v29 + 4] = v26;
      v52 = v25;
      v30 = sub_237EF8F00();
      v32 = *v31;
      v30(v51, 0);
      v22 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BEC0();
        v22 = v43;
      }

      v21 = v46;
      v33 = *(v22 + 16);
      v50 = v27;
      if (v33 >= *(v22 + 24) >> 1)
      {
        sub_237D0BEC0();
        v22 = v44;
      }

      *(v22 + 16) = v33 + 1;
      *(v22 + 8 * v33 + 32) = v32;
      v20 = v48;
      if (v48 == v47)
      {
        return;
      }
    }

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

unint64_t sub_237ECA4A8()
{
  result = qword_280C8CCD8;
  if (!qword_280C8CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB02F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CCD8);
  }

  return result;
}

void sub_237ECA50C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if (!a2 || !a3)
  {
LABEL_22:
    *a1 = a4;
    *(a1 + 8) = a5;
    *(a1 + 16) = a6;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v11 = 0;
    while (2)
    {
      if (v11 >= a3)
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        v12 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          if (a6)
          {
            *a1 = a4;
            *(a1 + 8) = a5;
            *(a1 + 16) = 1;
            return;
          }

          v13 = *(a5 + 16);
          sub_237EF8260();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v15 = a5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_237E641B8();
          }

          while (1)
          {
            a6 = v13 < 1;
            if (v13 < 1)
            {
              break;
            }

            if (v13 > *(v15 + 16))
            {
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (v13 > *(a4 + 16))
            {
              goto LABEL_24;
            }

            v16 = *(a4 + 24 + 8 * v13);
            v17 = v16 - 1;
            if (__OFSUB__(v16, 1))
            {
              goto LABEL_25;
            }

            v18 = v15 + 8 * v13;
            v19 = *(v18 + 24);
            if (v19 < v17)
            {
              *(v18 + 24) = v19 + 1;
              break;
            }

            *(v18 + 24) = 0;
            --v13;
          }

          *v10 = a5;
          if (v12 != a3)
          {
            ++v10;
            v11 = v12;
            a5 = v15;
            continue;
          }

          a5 = v15;
          goto LABEL_22;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237ECA65C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = *(a4 + 16);
    v10 = a3 - 1;
    while (1)
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_11;
      }

      if (v8 >= *(a4 + 16))
      {
        break;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440) - 8);
      v12 = *(v11 + 72);
      result = sub_237D33B50(a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * v8, v7);
      if (v10 == v8)
      {
        goto LABEL_11;
      }

      v7 += v12;
      ++v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ECA77C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_237EF8260();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_237EF8260();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237ECA8D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ECA960(uint64_t result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v15 << 10) | (16 * v16)));
      if (v14 == v10)
      {
        sub_237EF8260();
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = sub_237EF8260();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ECAABC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_96()
{

  return sub_237EF7090();
}

void MLModelRegressorAdaptor.init(contentsOf:configuration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_237C75918(0, &qword_27DEAF200);
  (*(v9 + 16))(v13, a1, v7);
  v14 = a2;
  v15 = sub_237CCB8EC(v13, v14);
  if (v3)
  {
    (*(v9 + 8))(a1, v7);
  }

  else
  {
    MLModelRegressorAdaptor.init(model:)(v15, &v17);
    (*(v9 + 8))(a1, v7);

    v16 = v18;
    *a3 = v17;
    *(a3 + 16) = v16;
  }
}

void MLModelRegressorAdaptor.init(model:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5 = [v4 modelDescription];
  v6 = [v5 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298);
  v7 = sub_237EF8210();

  if (*(v7 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_237CA35B4(v7);
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
LABEL_12:
    v19 = [v4 modelDescription];

    v20 = [v19 inputDescriptionsByName];
    v21 = sub_237EF8210();

    v22 = *(v21 + 16);

    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v23 = 1;
    *(v23 + 8) = v22;
    *(v23 + 16) = 3;
    swift_willThrow();
    goto LABEL_13;
  }

  v12 = [v11 type];
  if (v12 != 5 && v12 != 2)
  {

    v26 = [v11 type];
    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v27 = 5;
    *(v27 + 8) = v26;
    *(v27 + 16) = 0;
    swift_willThrow();

    return;
  }

  v14 = v11;
  v15 = [v4 modelDescription];
  v16 = [v15 outputDescriptionsByName];

  v17 = sub_237EF8210();
  if (*(v17 + 16) == 1)
  {

    v18 = sub_237E1B75C();

    if (!v2)
    {
      *a2 = v4;
      a2[1] = v14;
      a2[2] = v18;
      return;
    }
  }

  else
  {

    v24 = *(v17 + 16);

    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v25 = 1;
    *(v25 + 8) = v24;
    *(v25 + 16) = 4;
    swift_willThrow();
  }

LABEL_13:
}

uint64_t MLModelRegressorAdaptor.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a1;
  *(v5 + 104) = a4;
  v6 = sub_237EF7E90();
  *(v5 + 112) = v6;
  *(v5 + 120) = *(v6 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = *v4;
  *(v5 + 152) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_237ECB108, 0, 0);
}