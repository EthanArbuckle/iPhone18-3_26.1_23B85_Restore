uint64_t sub_237D3374C(uint64_t a1)
{
  v2 = sub_237EF7320();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237ED81A4(a1);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = 2 * v8 - 1;
  if (v8 == v10 >> 1)
  {
  }

  else
  {
    sub_237C62B2C(a1, a1 + 32, 0, v10);
    a1 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0438);
  v12 = swift_allocObject();
  v14 = xmmword_237F03530;
  *(v12 + 16) = xmmword_237F03530;
  *(v12 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
  v13 = swift_allocObject();
  *(v13 + 16) = v14;
  *(v13 + 32) = v9;
  (*(v3 + 104))(v5, *MEMORY[0x277D25208], v2);
  return sub_237EF7330();
}

__n128 OUTLINED_FUNCTION_3_44(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t sub_237D33948(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D3395C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D33970(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D33984(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = sub_237E982C4(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440) - 8);
  v5 = sub_237ECA65C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_237EF8260();

  if (v5 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t AnnotatedFiles.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *v2;
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;

  return sub_237D33B50(v7, a2);
}

uint64_t sub_237D33B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int __swiftcall AnnotatedFiles.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D33BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D33C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D33BD0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D33C94(uint64_t a1)
{
  v2 = sub_237D34484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D33CD0(uint64_t a1)
{
  v2 = sub_237D34484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D33D0C@<X0>(uint64_t *a1@<X8>)
{
  result = AnnotatedFiles.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_237D33D34(void *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  v5 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  *a1 = v5;
  AnnotatedFiles.subscript.getter(*a2, v5);
  return sub_237D33DC0;
}

void sub_237D33DC0(uint64_t *a1)
{
  v1 = *a1;
  sub_237D34C70(*a1);

  free(v1);
}

uint64_t sub_237D33E0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237D33E38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = *(a1 + 16);
  return sub_237EF8260();
}

uint64_t sub_237D33E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237D33E80(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D33E80(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_237D33EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_237D33EE4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_237D33EE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237D33F40(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

Swift::Int sub_237D33FBC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = AnnotatedFiles.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_237D33FE8(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t AnnotatedFiles.init(labeledByNamesAt:separator:index:type:continueOnFailure:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_237D9C390(a1, a2, a3, a4, a5, a6);
  if (v7)
  {

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v17 + 8))(a5);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    return (*(v18 + 8))(a1);
  }

  else
  {
    v20 = v16;

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v21 + 8))(a5);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    result = (*(v22 + 8))(a1);
    *a7 = v20;
  }

  return result;
}

uint64_t AnnotatedFiles.init(labeledBySubdirectoryNamesAt:type:continueOnFailure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_237DAE914(a1, a2, a3);
  if (v4)
  {

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v11 + 8))(a2);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    return (*(v12 + 8))(a1);
  }

  else
  {
    v14 = v10;

    sub_237EF7D80();
    OUTLINED_FUNCTION_3_11();
    (*(v15 + 8))(a2);
    sub_237EF5EF0();
    OUTLINED_FUNCTION_3_11();
    result = (*(v16 + 8))(a1);
    *a4 = v14;
  }

  return result;
}

uint64_t AnnotatedFiles.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F80);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D34484();
  sub_237EF8260();
  sub_237EFA1B0();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F90);
  sub_237D3473C(&qword_27DEB0F98, sub_237D344D8);
  sub_237EF9A70();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237D34484()
{
  result = qword_27DEB0F88;
  if (!qword_27DEB0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F88);
  }

  return result;
}

unint64_t sub_237D344D8()
{
  result = qword_27DEB0FA0;
  if (!qword_27DEB0FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD440);
    sub_237D34C2C(&qword_27DEB0FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0FA0);
  }

  return result;
}

uint64_t AnnotatedFiles.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0FB0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D34484();
  sub_237EFA190();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F90);
    sub_237D3473C(&qword_27DEB0FB8, sub_237D347B4);
    sub_237EF9970();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D3473C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB0F90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237D347B4()
{
  result = qword_27DEB0FC0;
  if (!qword_27DEB0FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD440);
    sub_237D34C2C(&qword_27DEB0FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0FC0);
  }

  return result;
}

uint64_t AnnotatedFiles.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *v0;
  v8 = *(*v0 + 16);
  result = MEMORY[0x2383E2210](v8, v4);
  if (v8)
  {
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_237D33B50(v10, v6);
      sub_237EF5EF0();
      sub_237D34C2C(&qword_27DEB0FD0);
      sub_237EF83E0();
      sub_237EF8610();
      result = sub_237D34C70(v6);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t AnnotatedFiles.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  sub_237D34AC4(v3, v1);
  return sub_237EFA170();
}

uint64_t sub_237D34A30()
{
  v1 = *v0;
  sub_237EFA120();
  sub_237D34AC4(v3, v1);
  return sub_237EFA170();
}

uint64_t sub_237D34A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2383E2210](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x2383E2210](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_237D34AC4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *(a2 + 16);
  result = MEMORY[0x2383E2210](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_237D33B50(v10, v7);
      sub_237EF5EF0();
      sub_237D34C2C(&qword_27DEB0FD0);
      sub_237EF83E0();
      sub_237EF8610();
      result = sub_237D34C70(v7);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_237D34C2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_237EF5EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D34C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D34CDC()
{
  result = qword_27DEB0FD8;
  if (!qword_27DEB0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0FD8);
  }

  return result;
}

unint64_t sub_237D34E00()
{
  result = qword_27DEB1010;
  if (!qword_27DEB1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnotatedFiles.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_237D34F14()
{
  result = qword_27DEB1018;
  if (!qword_27DEB1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1018);
  }

  return result;
}

unint64_t sub_237D34F6C()
{
  result = qword_27DEB1020;
  if (!qword_27DEB1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1020);
  }

  return result;
}

unint64_t sub_237D34FC4()
{
  result = qword_27DEB1028[0];
  if (!qword_27DEB1028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB1028);
  }

  return result;
}

void sub_237D3501C()
{
  OUTLINED_FUNCTION_13_4();
  v44 = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v2;
  v35 = v2;
  v6 = v3;
  sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v39 = v7;
  v40 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v37 = v12;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v32 = v31 - v15;
  v16 = *(v5 + 32);
  OUTLINED_FUNCTION_9_24();
  v31[0] = v6;
  v34 = _s7StorageVMa_1();
  OUTLINED_FUNCTION_1();
  v38 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v33 = v19;
  OUTLINED_FUNCTION_9_24();
  v31[1] = v4;
  v20 = type metadata accessor for MultivariateLinearRegressor.Model();
  MultivariateLinearRegressor.Model.weight.getter(v20);
  sub_237C651A0();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7F30();
  v21 = v36;
  MultivariateLinearRegressor.Model.bias.getter(v20);
  v41 = v4;
  v42 = v31[0];
  v43 = v16;
  v22 = v37;
  v23 = v39;
  sub_237CA0A1C();
  (*(v40 + 8))(v21, v23);
  v24 = v34;
  v25 = v22;
  v26 = v33;
  sub_237D359A4(v32, v25, *(v0 + v35[11]), *(v0 + v35[12]), *(v0 + v35[13]), 0, v33);
  v27 = *(v44 + 24);
  v28 = *(v44 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v27);
  v29 = *(v28 + 8);
  WitnessTable = swift_getWitnessTable();
  v29(v26, v24, WitnessTable, v27, v28);
  (*(v38 + 8))(v26, v24);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D353C8()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v52 = v9;
  sub_237EF7E90();
  OUTLINED_FUNCTION_9_24();
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v44 = v13;
  v45 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v53 = v18;
  type metadata accessor for MultivariateLinearRegressor.Model();
  OUTLINED_FUNCTION_1();
  v48 = v20;
  v49 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v46 = &v43 - v23;
  v54 = v6;
  v55 = v4;
  v56 = v2;
  v24 = _s7StorageVMa_1();
  OUTLINED_FUNCTION_1();
  v47 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  v30 = *(v8 + 24);
  v29 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v30);
  v31 = *(v29 + 8);
  WitnessTable = swift_getWitnessTable();
  v31(v24, v24, WitnessTable, v30, v29);
  if (!v0)
  {
    (*(v44 + 16))(v16, v28, v45);
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237C651A0();
    v33 = sub_237EF7F30();
    MEMORY[0x28223BE20](v33);
    v34 = v55;
    *(&v43 - 4) = v54;
    *(&v43 - 3) = v34;
    *(&v43 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
    v35 = v51;
    sub_237CA0A1C();
    v36 = v46;
    MultivariateLinearRegressor.Model.init(weight:bias:)(v53, v35, v46);
    v37 = v50;
    (*(v48 + 32))(v50, v36, v49);
    v38 = *&v28[v24[12]];
    v39 = *&v28[v24[13]];
    v40 = &v28[v24[14]];
    v41 = *v40;
    LODWORD(v35) = v40[8];
    (*(v47 + 8))(v28, v24);
    if (v35)
    {
      v42 = 1;
    }

    else
    {
      v42 = v41;
    }

    sub_237DBAF34(v37, v38, v39, v42, v52);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D35870(uint64_t a1)
{
  v2 = sub_237EF7E90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  (*(v3 + 16))(v5, a1, v2);
  sub_237C651A0();
  swift_getWitnessTable();
  return sub_237EF7F30();
}

uint64_t sub_237D359A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_22_3();
  (*(v14 + 32))(a7, a1);
  v15 = _s7StorageVMa_1();
  result = sub_237D35C38(a2, a7 + v15[11]);
  *(a7 + v15[12]) = a3;
  *(a7 + v15[13]) = a4;
  v17 = a7 + v15[14];
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  return result;
}

uint64_t sub_237D35A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_237EF7E90();
  (*(v3 + 16))(v5, a1, v2);
  swift_getWitnessTable();
  sub_237C651A0();
  return sub_237EF7F30();
}

uint64_t sub_237D35C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_237D35CA8()
{
  sub_237C86290();
  if (v0 <= 0x3F)
  {
    sub_237C862E8();
    if (v1 <= 0x3F)
    {
      sub_237D130D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237D35D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1935763810 && a2 == 0xE400000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5365727574616566 && a2 == 0xEB00000000657A69;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x697461746F6E6E61 && a2 == 0xEE00657A69536E6FLL;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656469727473 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

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

uint64_t sub_237D35F28(char a1)
{
  result = 0x746867696577;
  switch(a1)
  {
    case 1:
      result = 1935763810;
      break;
    case 2:
      result = 0x5365727574616566;
      break;
    case 3:
      result = 0x697461746F6E6E61;
      break;
    case 4:
      result = 0x656469727473;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D35FC4()
{
  OUTLINED_FUNCTION_13_4();
  v11 = v0;
  v12 = v1;
  v3 = v2;
  _s7StorageV10CodingKeysOMa();
  OUTLINED_FUNCTION_2_43();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237EFA1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  sub_237C86400(&qword_27DEADE78);
  v10 = v12;
  sub_237EF9A70();
  if (!v10)
  {
    OUTLINED_FUNCTION_8_36();
    sub_237EF9A00();
    OUTLINED_FUNCTION_8_36();
    sub_237EF9A50();
    OUTLINED_FUNCTION_8_36();
    sub_237EF9A50();
    OUTLINED_FUNCTION_8_36();
    sub_237EF99F0();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D36204()
{
  OUTLINED_FUNCTION_13_4();
  v43 = v0;
  v2 = v1;
  v36 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v39 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v40 = v9;
  _s7StorageV10CodingKeysOMa();
  OUTLINED_FUNCTION_2_43();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_24();
  v42 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v37 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = _s7StorageVMa_1();
  OUTLINED_FUNCTION_1();
  v35 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v20 = *(v19 + 44);
  v44 = v18;
  v45 = v20;
  __swift_storeEnumTagSinglePayload(&v18[v20], 1, 1, v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v41 = v13;
  v21 = v43;
  sub_237EFA190();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_237D367F8(&v44[v45]);
  }

  else
  {
    v23 = v38;
    v22 = v39;
    v43 = v14;
    sub_237C86400(&qword_27DEADE88);
    sub_237EF9970();
    v24 = v44;
    (*(v23 + 32))(v44, v40, v6);
    sub_237EF9900();
    sub_237C6FC94(v22, &v24[v45]);
    v25 = sub_237EF9950();
    v26 = v43;
    *&v24[*(v43 + 48)] = v25;
    *&v24[*(v26 + 52)] = sub_237EF9950();
    v27 = sub_237EF98F0();
    v29 = v28;
    v30 = &v24[*(v26 + 56)];
    v31 = OUTLINED_FUNCTION_7_31();
    v32(v31);
    *v30 = v27;
    v30[8] = v29 & 1;
    v33 = v35;
    (*(v35 + 16))(v36, v24, v26);
    __swift_destroy_boxed_opaque_existential_1(v2);
    (*(v33 + 8))(v24, v26);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D36694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D35D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D366C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D35F20();
  *a1 = result;
  return result;
}

uint64_t sub_237D366FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D36750(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D367F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PoseSelectionStrategy(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_237D368E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_33()
{

  return type metadata accessor for MultivariateLinearRegressor.Model();
}

uint64_t PreprocessingUpdatableTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 32))(a3);
  v7 = type metadata accessor for PreprocessingUpdatableTabularEstimator();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
}

uint64_t PreprocessingUpdatableTabularEstimator.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v11 = *(v10 + 40);
  v22 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = *(a1 + 16);
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableTabularEstimator.preprocessor.getter(a1, v19 - v18);
  PreprocessingUpdatableTabularEstimator.estimator.getter(a1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  swift_getAssociatedConformanceWitness();
  return ComposedTabularTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v23);
}

uint64_t PreprocessingUpdatableTabularEstimator.preprocessed(from:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237D36EC8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingUpdatableTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  OUTLINED_FUNCTION_15_0();
  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_237D36FF4;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v6, v2);
}

uint64_t sub_237D36FF4()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[9];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t PreprocessingUpdatableTabularEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v4;
  v1[5] = v5;
  v1[2] = v6;
  v1[3] = v7;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[9] = OUTLINED_FUNCTION_27_0();
  v1[10] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(*(v3 + 40) + 8);
  v1[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237D372D8()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingUpdatableTabularEstimator.estimator.getter(v0[6], v0[12]);
  OUTLINED_FUNCTION_15_0();
  v11 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_237D373F4;
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v4, v9, v7, v8, v6, v5);
}

uint64_t sub_237D373F4()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[10];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 152) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237D3754C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[9];
  v9 = v0[8];
  v8 = v0[2];
  PreprocessingUpdatableTabularEstimator.preprocessor.getter(v0[6], v5);
  (*(v4 + 32))(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v9, v3, v8);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237D37670()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableTabularEstimator.fitted(to:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_20_16();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[10] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_9_25(v7);

  return PreprocessingUpdatableTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237D377EC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D378E8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[11];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_237D379E8;

    return PreprocessingUpdatableTabularEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237D379E8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D37AE4()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D37B5C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D37BB8()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t PreprocessingUpdatableTabularEstimator.update(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v1[12] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237D37CD8()
{
  v1 = v0[10];
  v2 = v0[6];
  PreprocessingUpdatableTabularEstimator.estimator.getter(v1, v0[14]);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_23_17();
  v4 = OUTLINED_FUNCTION_24_11();
  v5 = *(OUTLINED_FUNCTION_16_22(v4) + 52);
  OUTLINED_FUNCTION_15_0();
  v14 = (v6 + *v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[15] = v7;
  *v7 = v8;
  v7[1] = sub_237D37E60;
  v9 = v0[12];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];

  return v14(v2 + v5, v12, v10, v11, v9, v3);
}

uint64_t sub_237D37E60()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 128) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t sub_237D37FEC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableTabularEstimator.update(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_20_16();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v1[11] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v1[17] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_9_25(v8);

  return PreprocessingUpdatableTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237D38188()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D38284()
{
  v1 = v0[18];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[9];
    v5 = v0[6];
    PreprocessingUpdatableTabularEstimator.estimator.getter(v4, v0[13]);
    v6 = *(v4 + 40);
    OUTLINED_FUNCTION_23_17();
    v7 = OUTLINED_FUNCTION_24_11();
    v8 = *(OUTLINED_FUNCTION_16_22(v7) + 52);
    OUTLINED_FUNCTION_15_0();
    v16 = (v9 + *v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[19] = v10;
    *v10 = v11;
    v10[1] = sub_237D38484;
    v12 = v0[16];
    v13 = v0[11];
    v14 = v0[7];
    v15 = v0[8];

    return v16(v5 + v8, v12, v14, v15, v13, v6);
  }
}

uint64_t sub_237D38484()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237D385E0()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D38660()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D386C8()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t PreprocessingUpdatableTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 40) + 8);
  v4 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ComposedTabularTransformer();
  v6 = OUTLINED_FUNCTION_27_12(v5);
  return v7(v6, a2, v4, v3);
}

uint64_t PreprocessingUpdatableTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v21 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v24 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v20 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v18(a1, v13, v12);
  if (!v25)
  {
    (*(v21 + 16))(v24, v4, v23);
    (*(v20 + 32))(v5, v3, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_25_13(v24, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableTabularEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ComposedTabularTransformer();
  v6 = OUTLINED_FUNCTION_27_12(v5);
  return v7(v6, a2, v4, v3);
}

uint64_t PreprocessingUpdatableTabularEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v21 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v24 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v19(a1, v13, v12);
  if (!v26)
  {
    (*(v21 + 16))(v24, v4, v23);
    (*(v16 + 32))(v5, v3, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_25_13(v24, a3);
  }

  return result;
}

uint64_t sub_237D38CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableTabularEstimator.update(_:with:eventHandler:)();
}

uint64_t sub_237D38DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableTabularEstimator.fitted(to:eventHandler:)();
}

uint64_t TabularTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingUpdatableTabularEstimator.init(_:_:)(v13, a3, a4);
}

{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingUpdatableSupervisedTabularEstimator.init(_:_:)(v13, a3, a4);
}

{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return ComposedTabularTransformer.init(_:_:)(v17, v13, a2, a3, a4);
}

{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingSupervisedTabularEstimator.init(_:_:)(v17, v13, a2, a3, a4);
}

{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingTabularEstimator.init(_:_:)(v17, v13, a2, a3, a4);
}

uint64_t sub_237D39040(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D3907C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237D39244(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_16_22(uint64_t a1)
{
  v1[2] = v4;
  v1[3] = v3;
  v1[4] = v2;
  v1[5] = a1;

  return type metadata accessor for ComposedTabularTransformer();
}

uint64_t OUTLINED_FUNCTION_23_17()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return ComposedTabularTransformer.init(_:_:)(a1, v3, v2, v4, a2);
}

void __swiftcall Event.init(origin:itemCount:totalItemCount:metrics:)(CreateMLComponents::Event *__return_ptr retstr, Swift::String origin, Swift::Int itemCount, Swift::Int_optional totalItemCount, Swift::OpaquePointer metrics)
{
  retstr->origin = origin;
  retstr->itemCount = itemCount;
  retstr->totalItemCount.value = totalItemCount.value;
  retstr->totalItemCount.is_nil = totalItemCount.is_nil;
  retstr->metrics = metrics;
}

uint64_t Event.origin.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t Event.origin.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Event.totalItemCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t Event.metrics.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Event.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  sub_237EF9330();

  MEMORY[0x2383E0710](v1, v2);
  MEMORY[0x2383E0710](8236, 0xE200000000000000);
  v4 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v4);

  MEMORY[0x2383E0710](543584032, 0xE400000000000000);
  if (v3)
  {
    v5 = 0xE100000000000000;
    v6 = 63;
  }

  else
  {
    sub_237CF446C();
    v6 = sub_237EF9220();
    v5 = v7;
  }

  MEMORY[0x2383E0710](v6, v5);

  MEMORY[0x2383E0710](0x63697274656D202CLL, 0xEB00000000203A73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
  sub_237C758C4();
  v8 = sub_237EF8220();
  MEMORY[0x2383E0710](v8);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0x3C746E657645;
}

uint64_t MetricsKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_237D39A18@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = MetricsKey.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_237D39A58@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsKey.debugDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MetricsKey.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

unint64_t sub_237D39AB4()
{
  result = qword_280C8DE68[0];
  if (!qword_280C8DE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8DE68);
  }

  return result;
}

uint64_t sub_237D39B0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_237D39B4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t MultivariateLinearRegressorConfiguration.randomSeed.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void __swiftcall MultivariateLinearRegressorConfiguration.init()(CreateMLComponents::MultivariateLinearRegressorConfiguration *__return_ptr retstr)
{
  *&retstr->batchSize = xmmword_237F09360;
  retstr->earlyStoppingTolerance = 0.01;
  retstr->earlyStoppingIterationCount = 5;
  retstr->learningRate = 0.005;
  *(&retstr->randomSeed.value + 4) = 0;
  LOBYTE(retstr[1].batchSize) = 1;
}

uint64_t static MultivariateLinearRegressorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_237D39DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000237EFDE80 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000237EFDEA0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            v11 = sub_237EF9D40();

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

unint64_t sub_237D39FB4(char a1)
{
  result = 0x7A69536863746162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x676E696E7261656CLL;
      break;
    case 5:
      result = 0x65536D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D3A094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D39DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D3A0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D39FAC();
  *a1 = result;
  return result;
}

uint64_t sub_237D3A0E4(uint64_t a1)
{
  v2 = sub_237D3A37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D3A120(uint64_t a1)
{
  v2 = sub_237D3A37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultivariateLinearRegressorConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB11B0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v14 = *(v1 + 24);
  v15 = v10;
  v13 = *(v1 + 40);
  v12[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D3A37C();
  sub_237EFA1B0();
  v21 = 0;
  OUTLINED_FUNCTION_24_5();
  sub_237EF9A50();
  if (!v2)
  {
    v20 = 1;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    v19 = 2;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A40();
    v18 = 3;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    v17 = 4;
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A40();
    v16 = 5;
    OUTLINED_FUNCTION_24_5();
    sub_237EF99F0();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_237D3A37C()
{
  result = qword_27DEB11B8;
  if (!qword_27DEB11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11B8);
  }

  return result;
}

uint64_t MultivariateLinearRegressorConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  MEMORY[0x2383E2210](*v0);
  MEMORY[0x2383E2210](v1);
  sub_237EFA150();
  MEMORY[0x2383E2210](v2);
  sub_237EFA150();
  if (v4 == 1)
  {
    return sub_237EFA140();
  }

  sub_237EFA140();
  return MEMORY[0x2383E2210](v3);
}

uint64_t MultivariateLinearRegressorConfiguration.hashValue.getter()
{
  sub_237EFA120();
  MultivariateLinearRegressorConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t MultivariateLinearRegressorConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB11C0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D3A37C();
  sub_237EFA190();
  if (!v2)
  {
    v29 = 0;
    OUTLINED_FUNCTION_0_36();
    v11 = sub_237EF9950();
    v28 = 1;
    OUTLINED_FUNCTION_0_36();
    v12 = sub_237EF9950();
    v27 = 2;
    OUTLINED_FUNCTION_0_36();
    sub_237EF9940();
    v14 = v13;
    v26 = 3;
    OUTLINED_FUNCTION_0_36();
    v23 = sub_237EF9950();
    v25 = 4;
    OUTLINED_FUNCTION_0_36();
    sub_237EF9940();
    v16 = v15;
    v24 = 5;
    OUTLINED_FUNCTION_0_36();
    v18 = sub_237EF98F0();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v23;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    *(a2 + 48) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D3A734()
{
  sub_237EFA120();
  MultivariateLinearRegressorConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237D3A7A8()
{
  result = qword_27DEB11C8;
  if (!qword_27DEB11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11C8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237D3A84C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D3A86C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MultivariateLinearRegressorConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MultivariateLinearRegressorConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D3AA20()
{
  result = qword_27DEB11D0;
  if (!qword_27DEB11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11D0);
  }

  return result;
}

unint64_t sub_237D3AA78()
{
  result = qword_27DEB11D8;
  if (!qword_27DEB11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11D8);
  }

  return result;
}

unint64_t sub_237D3AAD0()
{
  result = qword_27DEB11E0;
  if (!qword_27DEB11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11E0);
  }

  return result;
}

uint64_t PoseSelectionStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

CreateMLComponents::PoseSelector __swiftcall PoseSelector.init(strategy:confidenceThreshold:)(CreateMLComponents::PoseSelectionStrategy strategy, Swift::Float confidenceThreshold)
{
  *v2 = *strategy;
  *(v2 + 4) = confidenceThreshold;
  result.confidenceThreshold = confidenceThreshold;
  result.strategy = strategy;
  return result;
}

CreateMLComponents::PoseSelector __swiftcall PoseSelector.init(strategy:)(CreateMLComponents::PoseSelectionStrategy strategy)
{
  *v1 = *strategy;
  OUTLINED_FUNCTION_17_23(v1);
  result.confidenceThreshold = v3;
  result.strategy = v2;
  return result;
}

CreateMLComponents::PoseSelector __swiftcall PoseSelector.init()()
{
  *v0 = 0;
  OUTLINED_FUNCTION_17_23(v0);
  result.confidenceThreshold = v2;
  result.strategy = v1;
  return result;
}

void PoseSelector.applied(to:eventHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v312 = *(a1 + 16);
  switch(*v10)
  {
    case 1:
      if (!v312)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26(a1, a2, a3, a4, a5, a6, a7, a8, v218, v226, v234, v242, a9, v255, v263, v271, v279, v287, v295, v300, a1);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_23_18();
      if (v25)
      {
        goto LABEL_170;
      }

      OUTLINED_FUNCTION_13_20(v197, v198, v199, v200, v201, v202, v203, v204, v224, v232, v240, v248, v252, v261, v269, v277, v285, v293, v297, v302, v310);
      if (!__OFADD__(1, 1))
      {
        OUTLINED_FUNCTION_1_43();
        sub_237EF8260();
        OUTLINED_FUNCTION_32_9();
        sub_237EF8260();
        while (1)
        {
          do
          {
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_20_17();
          }

          while (!v25 & v105);
          OUTLINED_FUNCTION_30_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_45();
          }

          OUTLINED_FUNCTION_12_26();
          if (v105)
          {
            v213 = OUTLINED_FUNCTION_11_26();
            v313 = v214;
            v205 = sub_237C62D70(v213, v214, 1);
          }

          OUTLINED_FUNCTION_14_26(v205, v206, v207, v208, v209, v210, v211, v212, v225, v233, v241, v249, v254, v262, v270, v278, v286, v294, v299, v304, v311, v312, v313, v317);
        }
      }

      goto LABEL_196;
    case 2:
      if (!v312)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26(a1, a2, a3, a4, a5, a6, a7, a8, v218, v226, v234, v242, a9, v255, v263, v271, v279, v287, v295, v300, a1);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      v116 = 1;
LABEL_67:
      OUTLINED_FUNCTION_23_18();
      if (v25)
      {
        goto LABEL_170;
      }

      OUTLINED_FUNCTION_13_20(v117, v118, v119, v120, v121, v122, v123, v124, v222, v230, v238, v246, v252, v259, v267, v275, v283, v291, v297, v302, v308);
      if (__OFADD__(v116, 1))
      {
        goto LABEL_194;
      }

      v125 = *(v324 + 24 * v116);
      v330 = v116 + 1;
      OUTLINED_FUNCTION_0_37();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_32_9();
      v126 = 0;
      v127 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v11)
        {
          goto LABEL_75;
        }

LABEL_71:
        v128 = v126 + 1;
        if (!__OFADD__(v126, 1))
        {
          if (v128 < v116)
          {
            v11 = *(v125 + 64 + 8 * v128);
            ++v126;
            if (v11)
            {
              v126 = v128;
LABEL_75:
              OUTLINED_FUNCTION_5_34();
              OUTLINED_FUNCTION_21_19();
              if (!(!v25 & v105))
              {
                v315 = *v129;
                v319 = v129[1];
                sub_237EF8260();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_3_45();
                }

                v138 = *(v127 + 24);
                if (*(v127 + 16) >= v138 >> 1)
                {
                  OUTLINED_FUNCTION_2_44(v138);
                  OUTLINED_FUNCTION_16_23();
                }

                OUTLINED_FUNCTION_15_25(isUniquelyReferenced_nonNull_native, v131, v132, v133, v134, v135, v136, v137, v222, v230, v238, v246, v252, v259, v267, v275, v283, v291, v297, v302, v308, v312, v315, v319);
              }

              continue;
            }

            goto LABEL_71;
          }

          v139 = *(v127 + 16);
          if (v139)
          {
            v140 = OUTLINED_FUNCTION_10_1();
            sub_237C85534(v140, v141, v127);
            v116 = *(v127 + 40);
            v142 = *(v127 + 56);
            sub_237EF8260();
            while (v139 != 1)
            {
              OUTLINED_FUNCTION_28_13();
              if (v105)
              {
                goto LABEL_177;
              }

              OUTLINED_FUNCTION_24_12();
              if (*(v143 + 56) < v142)
              {
                OUTLINED_FUNCTION_18_21();

                OUTLINED_FUNCTION_26_12();
              }
            }
          }

          else
          {
            v142 = 0.0;
          }

          OUTLINED_FUNCTION_1_43();
          v145 = v144 >> 6;
          sub_237EF8260();
          v146 = 0;
          v147 = MEMORY[0x277D84F90];
          while (v116)
          {
LABEL_95:
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_22_17();
            if (!(!v25 & v105))
            {
              OUTLINED_FUNCTION_31_8();
              v320 = v11;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_3_45();
              }

              v11 = *(v147 + 16);
              v149 = *(v147 + 24);
              v150 = v11 + 1;
              if (v11 >= v149 >> 1)
              {
                OUTLINED_FUNCTION_2_44(v149);
                OUTLINED_FUNCTION_16_23();
              }

              *(v147 + 16) = v150;
              OUTLINED_FUNCTION_4_38(v147 + 40 * v11, v222, v230, v238, v246, v252, v259, v267, v275, v283, v291, v297, v302, v308, v312, v313, v320);
            }
          }

          while (1)
          {
            v148 = v146 + 1;
            if (__OFADD__(v146, 1))
            {
              goto LABEL_175;
            }

            if (v148 >= v145)
            {
              break;
            }

            v116 = *(v12 + 64 + 8 * v148);
            ++v146;
            if (v116)
            {
              v146 = v148;
              goto LABEL_95;
            }
          }

          v151 = *(v147 + 16);
          if (v151)
          {
            v152 = OUTLINED_FUNCTION_10_1();
            sub_237C85534(v152, v153, v147);
            v116 = *(v147 + 40);
            v154 = *(v147 + 56);
            sub_237EF8260();
            while (v151 != 1)
            {
              OUTLINED_FUNCTION_28_13();
              if (v105)
              {
                goto LABEL_179;
              }

              OUTLINED_FUNCTION_24_12();
              if (*(v155 + 56) < v154)
              {
                OUTLINED_FUNCTION_18_21();

                OUTLINED_FUNCTION_25_14();
              }
            }

            if (v142 < v154)
            {
LABEL_111:

              OUTLINED_FUNCTION_7_32();
              goto LABEL_67;
            }
          }

          else
          {

            if (v142 < 0.0)
            {
              goto LABEL_111;
            }
          }

          v116 = v330;
          goto LABEL_67;
        }

        break;
      }

      __break(1u);
LABEL_174:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    case 3:
      if (!v312)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26(a1, a2, a3, a4, a5, a6, a7, a8, v218, v226, v234, v242, a9, v255, v263, v271, v279, v287, v295, v300, a1);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      v156 = 1;
      while (2)
      {
        OUTLINED_FUNCTION_23_18();
        if (v25)
        {
LABEL_170:
          v216 = v252;
          v217 = v302;
          *v252 = v12;
          v252[1] = v297;
LABEL_171:
          v216[2] = v217;
        }

        else
        {
          OUTLINED_FUNCTION_13_20(v157, v158, v159, v160, v161, v162, v163, v164, v223, v231, v239, v247, v252, v260, v268, v276, v284, v292, v297, v302, v309);
          if (!__OFADD__(v156, 1))
          {
            v165 = *(v324 + 24 * v156);
            v331 = v156 + 1;
            OUTLINED_FUNCTION_0_37();
            swift_bridgeObjectRetain_n();
            OUTLINED_FUNCTION_32_9();
            v166 = 0;
            v167 = MEMORY[0x277D84F90];
            while (v11)
            {
LABEL_122:
              OUTLINED_FUNCTION_5_34();
              OUTLINED_FUNCTION_21_19();
              if (!(!v25 & v105))
              {
                v170 = v169[1];
                v316 = *v169;
                sub_237EF8260();
                v171 = swift_isUniquelyReferenced_nonNull_native();
                if ((v171 & 1) == 0)
                {
                  v171 = OUTLINED_FUNCTION_3_45();
                }

                v179 = *(v167 + 24);
                if (*(v167 + 16) >= v179 >> 1)
                {
                  OUTLINED_FUNCTION_2_44(v179);
                  OUTLINED_FUNCTION_16_23();
                }

                OUTLINED_FUNCTION_15_25(v171, v172, v173, v174, v175, v176, v177, v178, v223, v231, v239, v247, v252, v260, v268, v276, v284, v292, v297, v302, v309, v312, v316, v170);
              }
            }

            while (1)
            {
              v168 = v166 + 1;
              if (__OFADD__(v166, 1))
              {
                goto LABEL_174;
              }

              if (v168 >= v156)
              {
                break;
              }

              v11 = *(v165 + 64 + 8 * v168);
              ++v166;
              if (v11)
              {
                v166 = v168;
                goto LABEL_122;
              }
            }

            v180 = *(v167 + 16);
            if (v180)
            {
              v181 = OUTLINED_FUNCTION_10_1();
              sub_237C85534(v181, v182, v167);
              v156 = *(v167 + 40);
              v183 = *(v167 + 48);
              sub_237EF8260();
              while (v180 != 1)
              {
                OUTLINED_FUNCTION_28_13();
                if (v105)
                {
                  goto LABEL_178;
                }

                OUTLINED_FUNCTION_24_12();
                if (*(v184 + 48) < v183)
                {
                  OUTLINED_FUNCTION_18_21();

                  OUTLINED_FUNCTION_26_12();
                }
              }
            }

            else
            {
              v183 = 0.0;
            }

            OUTLINED_FUNCTION_1_43();
            v186 = v185 >> 6;
            sub_237EF8260();
            v187 = 0;
            v188 = MEMORY[0x277D84F90];
            while (v156)
            {
LABEL_142:
              OUTLINED_FUNCTION_6_28();
              OUTLINED_FUNCTION_22_17();
              if (!(!v25 & v105))
              {
                OUTLINED_FUNCTION_31_8();
                v321 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_45();
                }

                v11 = *(v188 + 16);
                v190 = *(v188 + 24);
                v191 = v11 + 1;
                if (v11 >= v190 >> 1)
                {
                  OUTLINED_FUNCTION_2_44(v190);
                  OUTLINED_FUNCTION_16_23();
                }

                *(v188 + 16) = v191;
                OUTLINED_FUNCTION_4_38(v188 + 40 * v11, v223, v231, v239, v247, v252, v260, v268, v276, v284, v292, v297, v302, v309, v312, v313, v321);
              }
            }

            while (1)
            {
              v189 = v187 + 1;
              if (__OFADD__(v187, 1))
              {
                goto LABEL_176;
              }

              if (v189 >= v186)
              {
                break;
              }

              v156 = *(v12 + 64 + 8 * v189);
              ++v187;
              if (v156)
              {
                v187 = v189;
                goto LABEL_142;
              }
            }

            v192 = *(v188 + 16);
            if (v192)
            {
              v193 = OUTLINED_FUNCTION_10_1();
              sub_237C85534(v193, v194, v188);
              v156 = *(v188 + 40);
              v195 = *(v188 + 48);
              sub_237EF8260();
              while (v192 != 1)
              {
                OUTLINED_FUNCTION_28_13();
                if (v105)
                {
                  goto LABEL_180;
                }

                OUTLINED_FUNCTION_24_12();
                if (*(v196 + 48) < v195)
                {
                  OUTLINED_FUNCTION_18_21();

                  OUTLINED_FUNCTION_25_14();
                }
              }

              if (v183 < v195)
              {
LABEL_158:

                OUTLINED_FUNCTION_7_32();
                continue;
              }
            }

            else
            {

              if (v183 < 0.0)
              {
                goto LABEL_158;
              }
            }

            v156 = v331;
            continue;
          }

LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
        }

        return;
      }

    case 4:
      if (!v312)
      {
        goto LABEL_169;
      }

      OUTLINED_FUNCTION_9_26(a1, a2, a3, a4, a5, a6, a7, a8, v218, v226, v234, v242, a9, v255, v263, v271, v279, v287, v295, v300, a1);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_23_18();
      if (v25)
      {
        goto LABEL_170;
      }

      OUTLINED_FUNCTION_13_20(v97, v98, v99, v100, v101, v102, v103, v104, v220, v228, v236, v244, v252, v257, v265, v273, v281, v289, v297, v302, v306);
      if (!__OFADD__(1, 1))
      {
        OUTLINED_FUNCTION_1_43();
        sub_237EF8260();
        OUTLINED_FUNCTION_32_9();
        sub_237EF8260();
        while (1)
        {
          do
          {
            OUTLINED_FUNCTION_6_28();
            OUTLINED_FUNCTION_20_17();
          }

          while (!v25 & v105);
          OUTLINED_FUNCTION_30_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_45();
          }

          OUTLINED_FUNCTION_12_26();
          if (v105)
          {
            v114 = OUTLINED_FUNCTION_11_26();
            v313 = v115;
            v106 = sub_237C62D70(v114, v115, 1);
          }

          OUTLINED_FUNCTION_14_26(v106, v107, v108, v109, v110, v111, v112, v113, v221, v229, v237, v245, v253, v258, v266, v274, v282, v290, v298, v303, v307, v312, v313, v317);
        }
      }

      goto LABEL_193;
    default:
      if (!v312)
      {
LABEL_169:
        sub_237CC6D04();
        v215 = sub_237EF8230();
        a9[1] = 0x6C6C414F50494E56;
        a9[2] = 0xE800000000000000;
        *a9 = v215;
        return;
      }

      OUTLINED_FUNCTION_9_26(a1, a2, a3, a4, a5, a6, a7, a8, v218, v226, v234, v242, a9, v255, v263, v271, v279, v287, v295, v300, a1);
      v13 = v9[4];
      v227 = (v9 + 4);
      v235 = v9[5];
      v14 = v9[6];
      sub_237EF8260();
      v243 = v14;
      sub_237EF8260();
      v15 = 1;
      while (2)
      {
        v329 = v13 + 64;
        v296 = v13;
        v280 = v13 + 72;
        v16 = v15;
LABEL_5:
        OUTLINED_FUNCTION_23_18();
        if (!v25)
        {
          OUTLINED_FUNCTION_13_20(v17, v18, v19, v20, v21, v22, v23, v24, v219, v227, v235, v243, v251, v256, v264, v272, v280, v288, v296, v301, v305);
          v26 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_197;
          }

          v27 = (v227 + 24 * v16);
          v28 = v27[1];
          v29 = v27[2];
          v30 = v296;
          v31 = *(v296 + 16);
          v301 = *v27;
          v256 = v26;
          v264 = v28;
          v272 = v29;
          if (v31)
          {
            v332 = MEMORY[0x277D84F90];
            sub_237EF8260();
            sub_237EF8260();
            sub_237C62D70(0, v31, 0);
            v34 = sub_237D299E0(v296);
            v35 = v332;
            v36 = 0;
            v318 = v31;
            if (v34 < 0)
            {
              goto LABEL_181;
            }

            while (1)
            {
              if (v34 >= 1 << *(v30 + 32))
              {
                goto LABEL_181;
              }

              v37 = v34 >> 6;
              if ((*(v329 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
              {
                goto LABEL_182;
              }

              if (*(v30 + 36) != v32)
              {
                goto LABEL_183;
              }

              v322 = v33;
              v38 = *(v30 + 56) + 40 * v34;
              v39 = *(v38 + 8);
              v325 = v32;
              v327 = *v38;
              v40 = *(v38 + 16);
              v41 = *(v38 + 24);
              v42 = *(v38 + 32);
              v333 = v35;
              v43 = v30;
              v44 = *(v35 + 16);
              v45 = *(v35 + 24);
              v46 = v35;
              sub_237EF8260();
              v35 = v46;
              if (v44 >= v45 >> 1)
              {
                v58 = OUTLINED_FUNCTION_11_26();
                sub_237C62D70(v58, v44 + 1, 1);
                v35 = v333;
              }

              *(v35 + 16) = v44 + 1;
              v47 = v35 + 40 * v44;
              *(v47 + 32) = v327;
              *(v47 + 40) = v39;
              *(v47 + 48) = v40;
              *(v47 + 56) = v41;
              *(v47 + 64) = v42;
              v48 = 1 << *(v43 + 32);
              if (v34 >= v48)
              {
                goto LABEL_184;
              }

              v49 = *(v329 + 8 * v37);
              if ((v49 & (1 << v34)) == 0)
              {
                goto LABEL_185;
              }

              v30 = v43;
              if (*(v43 + 36) != v325)
              {
                goto LABEL_186;
              }

              v50 = v49 & (-2 << (v34 & 0x3F));
              if (v50)
              {
                v48 = __clz(__rbit64(v50)) | v34 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v51 = v37 << 6;
                v52 = v37 + 1;
                v53 = (v280 + 8 * v37);
                while (v52 < (v48 + 63) >> 6)
                {
                  v55 = *v53++;
                  v54 = v55;
                  v51 += 64;
                  ++v52;
                  if (v55)
                  {
                    v56 = v35;
                    sub_237CB231C(v34, v325, v322 & 1);
                    v35 = v56;
                    v48 = __clz(__rbit64(v54)) + v51;
                    goto LABEL_24;
                  }
                }

                v57 = v35;
                sub_237CB231C(v34, v325, v322 & 1);
                v35 = v57;
LABEL_24:
                v30 = v296;
              }

              if (++v36 == v318)
              {
                break;
              }

              v33 = 0;
              v32 = *(v30 + 36);
              v34 = v48;
              if (v48 < 0)
              {
                goto LABEL_181;
              }
            }

            v59 = v301;
            v28 = v264;
          }

          else
          {
            v59 = *v27;
            sub_237EF8260();
            sub_237EF8260();
            v35 = MEMORY[0x277D84F90];
          }

          sub_237D27DD8(v35);
          v61 = v60;

          v62 = *(v59 + 16);
          if (v62)
          {
            v334 = MEMORY[0x277D84F90];
            sub_237C62D70(0, v62, 0);
            v65 = sub_237D299E0(v301);
            v66 = v334;
            v67 = v301;
            v68 = 0;
            v69 = v301 + 64;
            v288 = v301 + 72;
            v314 = v62;
            if (v65 < 0)
            {
              goto LABEL_187;
            }

            while (1)
            {
              if (v65 >= 1 << *(v67 + 32))
              {
                goto LABEL_187;
              }

              v70 = v65 >> 6;
              if ((*(v69 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
              {
                goto LABEL_188;
              }

              if (*(v67 + 36) != v63)
              {
                goto LABEL_189;
              }

              v326 = v68;
              v328 = v63;
              v323 = v64;
              v71 = *(v67 + 56) + 40 * v65;
              v73 = *v71;
              v72 = *(v71 + 8);
              v74 = *(v71 + 16);
              v75 = *(v71 + 24);
              v76 = *(v71 + 32);
              v335 = v66;
              v78 = *(v66 + 16);
              v77 = *(v66 + 24);
              v79 = v67;
              v80 = v66;
              sub_237EF8260();
              v66 = v80;
              if (v78 >= v77 >> 1)
              {
                v94 = OUTLINED_FUNCTION_11_26();
                sub_237C62D70(v94, v78 + 1, 1);
                v66 = v335;
              }

              *(v66 + 16) = v78 + 1;
              v81 = v66 + 40 * v78;
              *(v81 + 32) = v73;
              *(v81 + 40) = v72;
              *(v81 + 48) = v74;
              *(v81 + 56) = v75;
              *(v81 + 64) = v76;
              v82 = 1 << *(v79 + 32);
              if (v65 >= v82)
              {
                goto LABEL_190;
              }

              v69 = v301 + 64;
              v83 = *(v301 + 64 + 8 * v70);
              if ((v83 & (1 << v65)) == 0)
              {
                goto LABEL_191;
              }

              v67 = v79;
              if (*(v79 + 36) != v328)
              {
                goto LABEL_192;
              }

              v84 = v83 & (-2 << (v65 & 0x3F));
              if (v84)
              {
                v82 = __clz(__rbit64(v84)) | v65 & 0x7FFFFFFFFFFFFFC0;
                v85 = v314;
                v86 = v326;
              }

              else
              {
                v87 = v70 << 6;
                v88 = v70 + 1;
                v89 = (v288 + 8 * v70);
                v85 = v314;
                v86 = v326;
                while (v88 < (v82 + 63) >> 6)
                {
                  v91 = *v89++;
                  v90 = v91;
                  v87 += 64;
                  ++v88;
                  if (v91)
                  {
                    v92 = v66;
                    sub_237CB231C(v65, v328, v323 & 1);
                    v66 = v92;
                    v67 = v301;
                    v82 = __clz(__rbit64(v90)) + v87;
                    goto LABEL_47;
                  }
                }

                v93 = v66;
                sub_237CB231C(v65, v328, v323 & 1);
                v66 = v93;
                v67 = v301;
              }

LABEL_47:
              v68 = v86 + 1;
              if (v68 == v85)
              {
                break;
              }

              v64 = 0;
              v63 = *(v67 + 36);
              v65 = v82;
              if (v82 < 0)
              {
                goto LABEL_187;
              }
            }

            v28 = v264;
            v29 = v272;
          }

          else
          {
            v67 = v59;
            v66 = MEMORY[0x277D84F90];
          }

          v13 = v67;
          sub_237D27DD8(v66);
          v96 = v95;

          if (v61 < v96)
          {

            v235 = v28;
            v243 = v29;
            v15 = v256;
            continue;
          }

          v16 = v256;
          goto LABEL_5;
        }

        break;
      }

      v216 = v251;
      v217 = v243;
      *v251 = v296;
      v251[1] = v235;
      goto LABEL_171;
  }
}

uint64_t sub_237D3BEF8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PoseSelector.applied(to:eventHandler:)(*a2, a2, a3, a4, a5, a6, a7, a8, a1);
  v9 = *(v8 + 8);

  return v9();
}

uint64_t PoseSelector.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDEE0);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_237D3C00C()
{
  result = qword_27DEB11E8;
  if (!qword_27DEB11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB11E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PoseSelectionStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PoseSelector(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[8])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
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

uint64_t storeEnumTagSinglePayload for PoseSelector(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_44@<X0>(unint64_t a1@<X8>)
{

  return sub_237C62D70(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_3_45()
{
  v2 = *(v0 + 16) + 1;

  return sub_237C62D70(0, v2, 1);
}

void OUTLINED_FUNCTION_4_38(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 32) = a16;
  *(a1 + 40) = a17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v17;
}

uint64_t OUTLINED_FUNCTION_8_37()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_9_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return sub_237C85534(0, 1, a21);
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return sub_237C85534(v21, 1, a21);
}

void OUTLINED_FUNCTION_14_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 16) = v24;
  v32 = v25 + v28 * v27;
  *(v32 + 32) = a24;
  *(v32 + 40) = v26;
  *(v32 + 48) = v30;
  *(v32 + 56) = v31;
  *(v32 + 64) = v29;
}

void OUTLINED_FUNCTION_15_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 16) = v24;
  v31 = v25 + v26 * v27;
  *(v31 + 32) = a23;
  *(v31 + 40) = a24;
  *(v31 + 48) = v29;
  *(v31 + 56) = v30;
  *(v31 + 64) = v28;
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_30_15()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return sub_237EF8260();
}

uint64_t AnnotatedFeatureProvider.annotationColumnID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  sub_237EF62C0();
  OUTLINED_FUNCTION_22_3();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t AnnotatedFeatureProvider.annotationColumnID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  sub_237EF62C0();
  OUTLINED_FUNCTION_22_3();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t AnnotatedFeatureProvider.featuresColumnName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  sub_237EF8260();
  return v2;
}

uint64_t AnnotatedFeatureProvider.featuresColumnName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AnnotatedFeatureProvider.resultsColumnName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_237EF8260();
  return v2;
}

uint64_t AnnotatedFeatureProvider.resultsColumnName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AnnotatedFeatureProvider.init(_:annotationsColumnName:featuresColumnName:resultsColumnName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  (*(v13 + 16))(a7, a1, v14);
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for AnnotatedFeatureProvider();
  sub_237EF62D0();
  result = (*(v12 + 8))(a1, a6);
  v17 = (a7 + *(v15 + 48));
  *v17 = a2;
  v17[1] = a3;
  v18 = (a7 + *(v15 + 52));
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t AnnotatedFeatureProvider.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v7[29] = a6[3];
  v9 = sub_237EF6290();
  v7[30] = v9;
  v7[31] = a6[4];
  v7[32] = a6[2];
  v7[33] = OUTLINED_FUNCTION_18_22();
  v10 = sub_237EF8A60();
  v7[34] = v10;
  v11 = OUTLINED_FUNCTION_9_27();
  v7[35] = v11;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v7[36] = WitnessTable;
  v7[10] = v9;
  v7[11] = v10;
  v7[12] = v11;
  v7[13] = WitnessTable;
  v13 = sub_237EF9380();
  v7[37] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v7[38] = v14;
  v7[39] = OUTLINED_FUNCTION_27_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  OUTLINED_FUNCTION_18(v15);
  v7[40] = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF61A0();
  v7[41] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v7[42] = v17;
  v7[43] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[44] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v7[45] = v19;
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  OUTLINED_FUNCTION_43_0();
  v20 = sub_237EF6290();
  v7[49] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v7[50] = v21;
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = *(v9 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_237D3CC5C()
{
  v59 = v0[32];
  v60 = v0[31];
  v1 = v0[29];
  v2 = (v0[28] + *(v0[27] + 48));
  v0[56] = *v2;
  v0[57] = v2[1];
  sub_237EF61C0();
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF61C0();

  v3 = swift_task_alloc();
  v3[2] = v59;
  v3[3] = v1;
  v3[4] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_22();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_14();
  sub_237C9339C();
  v63 = v4;
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[24];
  v61 = *(v0[50] + 8);
  v61(v0[52], v0[49]);

  sub_237C89E7C(v7, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v53 = v0[32];
    v54 = v0[31];
    v30 = v0[29];
    (*(v0[42] + 32))(v0[43], v0[40], v0[41]);
    sub_237EF61C0();
    sub_237EF62B0();
    sub_237EF61C0();

    v31 = swift_task_alloc();
    v31[2] = v53;
    v31[3] = v30;
    v31[4] = v54;
    OUTLINED_FUNCTION_29_14();
    sub_237C9339C();
    v56 = v32;
    v58 = v0[38];
    v52 = v0[37];
    v33 = v0[32];
    v68 = v0[31];
    v51 = v0[29];
    v61(v0[51], v0[49]);

    v0[18] = v63;
    sub_237EFA000();

    v34 = OUTLINED_FUNCTION_107();
    v34[2] = v33;
    v34[3] = v51;
    v34[4] = v68;
    v35 = swift_task_alloc();
    v35[2] = v33;
    v35[3] = v51;
    v35[4] = v68;
    v35[5] = sub_237D3FFFC;
    v35[6] = v34;
    OUTLINED_FUNCTION_43_4();
    sub_237EF90F0();
    OUTLINED_FUNCTION_31_2();
    v62 = type metadata accessor for AnnotatedFeature();
    OUTLINED_FUNCTION_20_8();
    WitnessTable = swift_getWitnessTable();
    v36 = OUTLINED_FUNCTION_29_14();
    v42 = sub_237C8FFEC(v36, v37, v52, v62, v38, v39, v40, v41);
    v0[58] = v42;

    v43 = *(v58 + 8);
    v44 = OUTLINED_FUNCTION_31_0();
    v43(v44);

    v0[19] = v42;
    v0[20] = v56;
    sub_237EFA000();

    v45 = OUTLINED_FUNCTION_107();
    v45[2] = v33;
    v45[3] = v51;
    v45[4] = v68;
    v46 = swift_task_alloc();
    v46[2] = v33;
    v46[3] = v51;
    v46[4] = v68;
    v46[5] = sub_237D3FDEC;
    v46[6] = v45;
    v48 = sub_237C8FFEC(sub_237D3FFCC, v46, v52, v62, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v47);
    v0[59] = v48;

    v49 = OUTLINED_FUNCTION_31_0();
    v43(v49);

    v0[21] = v48;
    v66 = *(v68 + 48) + **(v68 + 48);
    v50 = swift_task_alloc();
    v0[60] = v50;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    *v50 = v0;
    v50[1] = sub_237D3D658;

    __asm { BRAA            X8, X16 }
  }

  v57 = v0[37];
  v55 = v0[32];
  v67 = v0[31];
  v8 = v0[29];
  sub_237C89EEC(v0[40]);
  v0[15] = v63;
  sub_237EFA000();

  v9 = OUTLINED_FUNCTION_107();
  v9[2] = v55;
  v9[3] = v8;
  v9[4] = v67;
  v10 = swift_task_alloc();
  v10[2] = v55;
  v10[3] = v8;
  v10[4] = v67;
  v10[5] = sub_237D3FFFC;
  v10[6] = v9;
  sub_237EF90F0();
  OUTLINED_FUNCTION_31_2();
  v11 = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_20_8();
  swift_getWitnessTable();
  v12 = OUTLINED_FUNCTION_29_14();
  v18 = sub_237C8FFEC(v12, v13, v57, v11, v14, v15, v16, v17);
  v0[62] = v18;

  v19 = OUTLINED_FUNCTION_31_0();
  v20(v19);

  v0[16] = v18;
  v64 = (*(v67 + 40) + **(v67 + 40));
  v21 = swift_task_alloc();
  v0[63] = v21;
  v22 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  v23 = swift_getWitnessTable();
  *v21 = v0;
  v21[1] = sub_237D3D9C8;
  v24 = v0[46];
  v26 = v0[31];
  v25 = v0[32];
  v27 = v0[25];
  v28 = v0[26];

  return v64(v24, v0 + 16, v27, v28, v22, v23, v25, v26);
}

uint64_t sub_237D3D658()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D3D770()
{
  (*(v0[53] + 8))(v0[54], v0[30]);
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  (*(v0[45] + 32))(v0[48], v0[47], v0[44]);
  if ((sub_237D0510C() & 1) == 0)
  {
    OUTLINED_FUNCTION_44_5("AnnotatedFeatureProvider");
  }

  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_21_20();
  sub_237EF9AC0();
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v3 = sub_237EF8940();
  v5 = OUTLINED_FUNCTION_14_27(v3, v4);
  v6(v5);
  sub_237D3C4BC();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_42_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_22(inited, xmmword_237F03530, v8, v9, v10, v11, v12, v13, v14, v37, v40, v43);
  sub_237EF8230();
  v15 = OUTLINED_FUNCTION_36_9();
  v17 = v16(v15);
  v25 = OUTLINED_FUNCTION_32_10(v17, v18, v19, v20, v21, v22, v23, v24, v38, v41, v44, v46, v48, v50, v52, v54);
  v26(v25);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_19(AssociatedConformanceWitness, v28, v29, v30, v31, v32, v33, v34, v39, v42, v45, v47, v49, v51, v53);

  OUTLINED_FUNCTION_3_0();

  return v35();
}

uint64_t sub_237D3D9C8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 512) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D3DAD0()
{
  (*(v0[45] + 32))(v0[48], v0[46], v0[44]);
  if ((sub_237D0510C() & 1) == 0)
  {
    OUTLINED_FUNCTION_44_5("AnnotatedFeatureProvider");
  }

  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_21_20();
  sub_237EF9AC0();
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v1 = sub_237EF8940();
  v3 = OUTLINED_FUNCTION_14_27(v1, v2);
  v4(v3);
  sub_237D3C4BC();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_42_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_22(inited, xmmword_237F03530, v6, v7, v8, v9, v10, v11, v12, v35, v38, v41);
  sub_237EF8230();
  v13 = OUTLINED_FUNCTION_36_9();
  v15 = v14(v13);
  v23 = OUTLINED_FUNCTION_32_10(v15, v16, v17, v18, v19, v20, v21, v22, v36, v39, v42, v44, v46, v48, v50, v52);
  v24(v23);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_19(AssociatedConformanceWitness, v26, v27, v28, v29, v30, v31, v32, v37, v40, v43, v45, v47, v49, v51);

  OUTLINED_FUNCTION_3_0();

  return v33();
}

uint64_t sub_237D3DCF8()
{
  v1 = v0[55];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[30];
  v6 = *(v0[53] + 8);
  v6(v0[54], v5);
  (*(v3 + 8))(v2, v4);
  v6(v1, v5);
  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237D3DE18()
{
  (*(v0[53] + 8))(v0[55], v0[30]);
  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D3DF00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_20();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  (*(v9 + 16))(&v18 - v12, a1, v7, v11);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    (*(v9 + 8))(v13, v7);
    sub_237C84150();
    v14 = swift_allocError();
    *v15 = 0xD000000000000018;
    *(v15 + 8) = 0x8000000237F0DE00;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 1;
    result = swift_willThrow();
    *a2 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    return (*(v17 + 32))(a3, v13, v3);
  }

  return result;
}

uint64_t sub_237D3E0B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_237EF90F0();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237D3E16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v12, v14);
  (*(v8 + 16))(v11, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v16, v11, v12, AssociatedTypeWitness, a3);
}

void AnnotatedFeatureProvider.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_40_7(v2, v3);
  v5 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_27();
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_15();
  v13 = OUTLINED_FUNCTION_34_5();
  v14(v13);
  OUTLINED_FUNCTION_31_9();
  sub_237EF82F0();

  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v11 + 8))(v1, v5);
    OUTLINED_FUNCTION_22_3();
    (*(v17 + 8))(v9, v0);
    OUTLINED_FUNCTION_12_6();
  }
}

void AnnotatedFeatureProvider.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v2 + 32);
  v9 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v32 = v11;
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  (*(v8 + 64))(v5, v9, v8, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_26_13();
    v31 = 0;
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_11_27();
    sub_237EF9AC0();
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_1_44();
    swift_allocObject();
    sub_237EF8940();
    v29 = v0;
    v30 = v7;
    v16 = MEMORY[0x30];
    v17 = (v0 + *(v3 + 48));
    v18 = v17[1];
    v28 = *v17;
    *v19 = v28;
    v19[1] = v18;
    v20 = OUTLINED_FUNCTION_33_9(v19, v16);
    v21(v20);
    sub_237D3C4BC();
    swift_bridgeObjectRetain_n();
    v22 = sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    v24 = v29;
    *(inited + 32) = v28;
    *(inited + 40) = v18;
    v25 = (v24 + *(v3 + 52));
    v26 = v25[1];
    *(inited + 48) = *v25;
    *(inited + 56) = v26;
    sub_237EF8260();
    v27 = sub_237EF8230();
    (*(v32 + 8))(v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v22, v27, v30);
  }

  OUTLINED_FUNCTION_12_6();
}

void (*sub_237D3E784(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = AnnotatedFeatureProvider.annotationColumnID.modify();
  return sub_237C803C0;
}

uint64_t sub_237D3E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C6A904;

  return AnnotatedFeatureProvider.fitted(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t AnnotatedFeatureProvider<>.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  sub_237EF9AC0();
  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  sub_237EF8940();
  v6 = (v3 + *(a1 + 48));
  v7 = *v6;
  v8 = v6[1];
  *v9 = *v6;
  v9[1] = v8;
  v10 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  v10(v19, a2);
  sub_237D3C4BC();
  v11 = sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v13 = (v3 + *(a1 + 52));
  v14 = v13[1];
  *(inited + 48) = *v13;
  *(inited + 56) = v14;
  sub_237EF8260();
  v15 = sub_237EF8230();
  swift_getAssociatedConformanceWitness();
  return ColumnSelectorTransformer.init(transformers:columnMapping:)(v11, v15, a3);
}

uint64_t AnnotatedFeatureProvider<>.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = *(a5 + 24);
  v10 = sub_237EF6290();
  v7[19] = v10;
  v7[20] = *(a6 + 8);
  v7[21] = *(a5 + 16);
  v7[22] = OUTLINED_FUNCTION_18_22();
  v11 = sub_237EF8A60();
  v7[23] = v11;
  v12 = OUTLINED_FUNCTION_9_27();
  v7[24] = v12;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v7[25] = WitnessTable;
  v7[2] = v10;
  v7[3] = v11;
  v7[4] = v12;
  v7[5] = WitnessTable;
  v14 = sub_237EF9380();
  v7[26] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v7[27] = v15;
  v7[28] = OUTLINED_FUNCTION_27_0();
  v7[29] = OUTLINED_FUNCTION_18_22();
  v16 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v16);
  v7[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v17 = sub_237EF6290();
  v7[31] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v7[32] = v18;
  v7[33] = OUTLINED_FUNCTION_27_0();
  v7[34] = *(v10 - 8);
  v7[35] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_237D3ED20()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[16];
  v4 = (v0[17] + *(v0[15] + 48));
  v0[36] = *v4;
  v0[37] = v4[1];
  v34 = v1;
  sub_237EF61C0();
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF61C0();

  v5 = swift_task_alloc();
  v5[2] = v34;
  v5[3] = v2;
  v5[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_22();
  swift_getWitnessTable();
  sub_237C9339C();
  v7 = v6;
  v32 = v0[27];
  v30 = v0[28];
  v31 = v0[26];
  v8 = v0[21];
  v35 = v0[20];
  v9 = v0[18];
  v10 = v0[16];
  (*(v0[32] + 8))(v0[33], v0[31]);

  v0[9] = v7;
  sub_237EF8260();
  sub_237EFA000();

  v11 = OUTLINED_FUNCTION_107();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  v12 = swift_task_alloc();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = sub_237D3FE30;
  v12[6] = v11;
  OUTLINED_FUNCTION_43_4();
  sub_237EF90F0();
  OUTLINED_FUNCTION_31_2();
  v13 = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_20_8();
  swift_getWitnessTable();
  v14 = OUTLINED_FUNCTION_29_14();
  v20 = sub_237C8FFEC(v14, v15, v31, v13, v16, v17, v18, v19);
  v0[38] = v20;

  (*(v32 + 8))(v30, v31);

  v0[10] = v20;
  v33 = (*(v35 + 40) + **(v35 + 40));
  v21 = swift_task_alloc();
  v0[39] = v21;
  OUTLINED_FUNCTION_43_0();
  v22 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  *v21 = v0;
  v21[1] = sub_237D3F174;
  v24 = v0[30];
  v26 = v0[20];
  v25 = v0[21];
  v27 = v0[13];
  v28 = v0[14];

  return v33(v24, v0 + 10, v27, v28, v22, WitnessTable, v25, v26);
}

uint64_t sub_237D3F174()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D3F284()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[19];
  __swift_storeEnumTagSinglePayload(v0[30], 0, 1, v0[29]);
  v0[6] = v1;
  v0[7] = v2;
  sub_237EF82B0();
  sub_237EF8300();
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237D3F3A0()
{
  (*(v0[34] + 8))(v0[35], v0[19]);
  OUTLINED_FUNCTION_43_7();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D3F434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v11, AssociatedTypeWitness);
  }

  (*(v8 + 8))(v11, v7);
  sub_237C84150();
  v12 = swift_allocError();
  *v13 = 0xD000000000000018;
  *(v13 + 8) = 0x8000000237F0DE00;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 1;
  result = swift_willThrow();
  *a2 = v12;
  return result;
}

uint64_t sub_237D3F5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = sub_237EF90F0();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1, v10, v11);
  (*(v7 + 16))(v9, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v13, v9, v10, AssociatedTypeWitness, a3);
}

uint64_t sub_237D3F794(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_237EF90F0();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void AnnotatedFeatureProvider<>.encodeWithOptimizer(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_40_7(v2, v3);
  v5 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_27();
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_15();
  v13 = OUTLINED_FUNCTION_34_5();
  v14(v13);
  OUTLINED_FUNCTION_31_9();
  sub_237EF82F0();

  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v11 + 8))(v1, v5);
    OUTLINED_FUNCTION_22_3();
    (*(v17 + 8))(v9, v0);
    OUTLINED_FUNCTION_12_6();
  }
}

void AnnotatedFeatureProvider<>.decodeWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v33 = v7;
  v8 = *(v7 + 16);
  v32 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  (*(v3 + 40))(v5, v8, v3, v13);
  if (!v1)
  {
    OUTLINED_FUNCTION_26_13();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_11_27();
    sub_237EF9AC0();
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_1_44();
    swift_allocObject();
    sub_237EF8940();
    v16 = MEMORY[0x30];
    v17 = *(v33 + 48);
    v30 = v0;
    v18 = (v0 + v17);
    v19 = *v18;
    v20 = v18[1];
    *v21 = *v18;
    v21[1] = v20;
    v22 = OUTLINED_FUNCTION_33_9(v21, v16);
    v23(v22);
    sub_237D3C4BC();
    swift_bridgeObjectRetain_n();
    v24 = sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB11F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    *(inited + 32) = v19;
    *(inited + 40) = v20;
    v26 = (v30 + *(v33 + 52));
    v27 = v26[1];
    *(inited + 48) = *v26;
    *(inited + 56) = v27;
    sub_237EF8260();
    v28 = sub_237EF8230();
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v24, v28, v31);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D3FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C6B728;

  return AnnotatedFeatureProvider<>.update(_:with:eventHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_237D3FEA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D3FEE0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = sub_237EF62C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void OUTLINED_FUNCTION_5_35()
{
  v2 = v0[39];
  v3 = v0[40];
  *(v1 - 96) = v0[43];
  *(v1 - 88) = v3;
  *(v1 - 80) = v2;
}

uint64_t OUTLINED_FUNCTION_7_33()
{
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return swift_getWitnessTable();
}

char *OUTLINED_FUNCTION_14_27(uint64_t a1, void *a2)
{
  v5 = *(v3 + 48);
  *a2 = v2;
  a2[1] = v4;
  return a2 + v5;
}

uint64_t OUTLINED_FUNCTION_18_22()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_19_22(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u64[1] = v14;
  v16 = (a12 + *(a11 + 52));
  v17 = v16[1];
  *(v13 + 48) = *v16;
  *(v13 + 56) = v17;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_23_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{

  return ColumnSelectorTransformer.init(transformers:columnMapping:)(v16, v15, a15);
}

uint64_t OUTLINED_FUNCTION_31_9()
{
  v4 = (v0 + *(v1 + 48));
  v5 = v4[1];
  *(v2 - 96) = *v4;
  *(v2 - 88) = v5;

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return sub_237EF8230();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
}

uint64_t OUTLINED_FUNCTION_44_5@<X0>(uint64_t a1@<X8>)
{

  return sub_237D05198(0xD000000000000018, (a1 - 32) | 0x8000000000000000);
}

uint64_t FullyConnectedNetworkRegressor.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v50 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v47 = *v2;
  v11 = type metadata accessor for FullyConnectedNetworkRegressorModel();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 8);
  WitnessTable = swift_getWitnessTable();
  result = v14(v11, v11, WitnessTable, v12, v13);
  if (!v52)
  {
    v17 = v50;
    v53 = v5;
    v45 = a2;
    v46 = v11;
    sub_237C6BDB8();
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v54 = MEMORY[0x277D84F90];
      sub_237C62DB0();
      v21 = v54;
      v22 = v50 + 16;
      v23 = v19 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v49 = *(v50 + 72);
      v51 = *(v50 + 16);
      v48 = (v17 + 8);
      v24 = v53;
      do
      {
        v25 = v22;
        v51(v10, v23, v24);
        v24 = v53;
        v26 = sub_237EF6810();
        (*v48)(v10, v53);
        v27 = *(v54 + 16);
        if (v27 >= *(v54 + 24) >> 1)
        {
          sub_237C62DB0();
          v24 = v53;
        }

        *(v54 + 16) = v27 + 1;
        *(v54 + 8 * v27 + 32) = v26;
        v23 += v49;
        --v20;
        v22 = v25;
      }

      while (v20);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v28 = sub_237C60B7C(1, v21);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    if (v33)
    {
      sub_237EF9DE0();
      swift_unknownObjectRetain_n();
      v39 = swift_dynamicCastClass();
      if (!v39)
      {
        swift_unknownObjectRelease();
        v39 = MEMORY[0x277D84F90];
      }

      v40 = *(v39 + 16);

      if (__OFSUB__(v34 >> 1, v32))
      {
        __break(1u);
      }

      else if (v40 == (v34 >> 1) - v32)
      {
        v36 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v37 = v45;
        v38 = v47;
        if (v36)
        {
          goto LABEL_18;
        }

        v36 = MEMORY[0x277D84F90];
LABEL_17:
        swift_unknownObjectRelease();
LABEL_18:
        v41 = sub_237C60C7C(v36, v38);

        if ((v41 & 1) == 0)
        {
          v42 = sub_237EF93E0();
          swift_allocError();
          v44 = v43;
          sub_237EF93D0();
          (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84168], v42);
          swift_willThrow();
          return (*(*(v46 - 8) + 8))(v37, v46);
        }

        return result;
      }

      swift_unknownObjectRelease();
    }

    sub_237C62A88(v28, v30, v32, v34);
    v36 = v35;
    v37 = v45;
    v38 = v47;
    goto LABEL_17;
  }

  return result;
}

uint64_t FullyConnectedNetworkRegressor.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullyConnectedNetwork();
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v39 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v40 = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v37 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(v17 + 8);
  v19 = type metadata accessor for FullyConnectedNetworkRegressorModel();
  WitnessTable = swift_getWitnessTable();
  v21 = v41;
  result = v18(a1, v19, WitnessTable, v16, v17);
  if (!v21)
  {
    v23 = v37;
    v41 = v15;
    v25 = v39;
    v24 = v40;
    v26 = a1;
    sub_237C6FDA0(a1 + *(v19 + 44), v40, &qword_27DEB1278);
    if (__swift_getEnumTagSinglePayload(v24, 1, v38) == 1)
    {
      return sub_237C65484(v24, &qword_27DEB1278);
    }

    else
    {
      v27 = v41;
      sub_237D41948(v24, v41);
      sub_237C6FDA0(v27, v23, &qword_27DEAE5E8);
      sub_237D41A80(v26, v25, type metadata accessor for FullyConnectedNetwork);
      v28 = *v23;
      if (*(v23 + 4) <= 0.0)
      {
        v32 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_237C6BDB8();
        v40 = &v37;
        MEMORY[0x28223BE20](v29);
        OUTLINED_FUNCTION_27();
        *(v30 - 16) = v23;
        *(v30 - 8) = v25;
        sub_237CD1620();
        v32 = v31;
      }

      OUTLINED_FUNCTION_5_36();
      sub_237C65484(v23, &qword_27DEAE5E8);
      v42 = 0;
      v43 = v28;
      v44 = v32;
      v33 = *(a2 + 24);
      v34 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v33);
      v35 = *(v34 + 16);
      v36 = sub_237D419B8();
      v35(&v42, &type metadata for SGDStorage, v36, v33, v34);
      sub_237C65484(v41, &qword_27DEAE5E8);
    }
  }

  return result;
}

void FullyConnectedNetworkRegressor.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B0);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v136 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v149 = v8;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v142 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v158 = v11;
  MEMORY[0x28223BE20](v12);
  v157 = &v124 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v148 = v16;
  v162 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v145 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v155 = v20 - v19;
  v147 = type metadata accessor for SGDDenseLayer();
  OUTLINED_FUNCTION_1();
  v154 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v161 = v24 - v23;
  v156 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v153 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v163 = v27;
  MEMORY[0x28223BE20](v28);
  v152 = &v124 - v29;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1288);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  v150 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v32);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  v141 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v124 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v42 = &v124 - v41;
  v43 = type metadata accessor for FullyConnectedNetworkRegressorModel();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  v48 = &v124 - v47;
  v49 = v165;
  FullyConnectedNetworkRegressor.decode(from:)(a1, &v124 - v47);
  if (v49)
  {
    return;
  }

  v165 = v38;
  v138 = v39;
  v146 = v42;
  v159 = v48;
  v144 = v45;
  v143 = v43;
  v50 = *(a1 + 24);
  v51 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v50);
  v52 = *(v51 + 16);
  v53 = sub_237D41A2C();
  v52(v166, &type metadata for SGDStorage, &type metadata for SGDStorage, v53, v50, v51);
  v164 = 0;
  v54 = v166[2];
  v55 = sub_237EF6580();
  __swift_storeEnumTagSinglePayload(v165, 1, 1, v55);
  v56 = sub_237EF6530();
  __swift_storeEnumTagSinglePayload(v141, 1, 1, v56);
  v57 = type metadata accessor for FullyConnectedNetwork();
  v58 = sub_237C77B74();
  v141 = v57;
  v140 = v58;
  sub_237EF6660();
  sub_237C6BDB8();
  v60 = v59;
  v61 = 0;
  v135 = *(v59 + 16);
  v62 = v153;
  v134 = v153 + 16;
  v126 = (v153 + 32);
  v139 = (v145 + 1);
  v137 = (v142 + 16);
  v145 = (v142 + 8);
  v124 = (v142 + 32);
  v133 = (v153 + 8);
  v63 = v155;
  v64 = v156;
  v65 = v163;
  v66 = v154;
  v67 = v144;
  v68 = v152;
  v127 = v54;
  v132 = v59;
  while (1)
  {
    if (v135 == v61)
    {

      v72 = v143;
LABEL_20:
      v120 = *(v72 + 44);
      v121 = v159;
      sub_237C65484(&v159[v120], &qword_27DEB1278);
      sub_237D41948(v146, &v121[v120]);
      __swift_storeEnumTagSinglePayload(&v121[v120], 0, 1, v138);
      (*(v67 + 16))(v125, v121, v72);
      (*(v67 + 8))(v121, v72);
      return;
    }

    if (v61 >= *(v60 + 16))
    {
      break;
    }

    v69 = v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v61;
    v70 = *(v62 + 16);
    v165 = v61;
    v70(v68, v69, v64);
    v71 = *(v54 + 16);
    v72 = v143;
    if (v165 == v71)
    {

      (*v133)(v68, v64);
      goto LABEL_20;
    }

    if (v165 >= v71)
    {
      goto LABEL_24;
    }

    v73 = v54 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v165;
    v74 = v150;
    v75 = *(v151 + 48);
    v76 = *v126;
    (*v126)(v150, v68, v64);
    sub_237D41A80(v73, &v74[v75], type metadata accessor for SGDDenseLayer);
    v76(v65, v74, v64);
    v77 = v161;
    sub_237D41AE0(&v74[v75], v161);
    sub_237EF67F0();
    LODWORD(v73) = sub_237EF6C40();
    v78 = *v139;
    (*v139)(v63, v162);
    v79 = OUTLINED_FUNCTION_12_27();
    MEMORY[0x28223BE20](v79);
    OUTLINED_FUNCTION_27();
    *(v80 - 16) = v63;
    *(v80 - 8) = v73;
    v81 = v164;
    sub_237C62804(sub_237C77BCC, v82, v79);
    v84 = v83;
    v65 = v85;

    if (!v84)
    {

      sub_237C6514C();
      swift_allocError();
      *v122 = 0xD000000000000025;
      v122[1] = 0x8000000237EFB480;
      swift_willThrow();
      OUTLINED_FUNCTION_0_38();
      sub_237D41B44(v77, v123);
      (*v133)(v163, v64);
      sub_237C65484(v146, &qword_27DEAE5E8);
      (*(v144 + 8))(v159, v143);
      return;
    }

    v86 = v157;
    v87 = v160;
    v129 = *v137;
    v129(v157, v77, v160);
    v88 = sub_237C651A0();
    v89 = sub_237EF6B10();

    OUTLINED_FUNCTION_10();
    v90 = v148;
    v130 = v88;
    sub_237EF7F00();
    v164 = v81;
    v91 = v90;
    v142 = *v145;
    (v142)(v86, v87);
    v131 = v89;
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v89);
    v92 = *(v138 + 56);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300);
    v128 = v92;
    sub_237EF6650();
    v93 = v149;
    sub_237C6FDA0(v77 + *(v147 + 20), v149, &qword_27DEAD600);
    if (__swift_getEnumTagSinglePayload(v93, 1, v87) == 1)
    {

      OUTLINED_FUNCTION_0_38();
      sub_237D41B44(v77, v94);
      v95 = OUTLINED_FUNCTION_2_45();
      v96(v95);
      sub_237C65484(v93, &qword_27DEAD600);
LABEL_14:
      v66 = v154;
      v63 = v155;
      v67 = v144;
      v68 = v152;
      v62 = v153;
      goto LABEL_17;
    }

    (*v124)(v158, v93, v87);
    v97 = v136;
    sub_237EF67C0();
    v98 = v162;
    if (__swift_getEnumTagSinglePayload(v97, 1, v162) == 1)
    {

      sub_237C65484(v97, &qword_27DEAD2B0);
    }

    else
    {
      v99 = sub_237EF6C40();
      v78(v97, v98);
      v100 = OUTLINED_FUNCTION_12_27();
      MEMORY[0x28223BE20](v100);
      OUTLINED_FUNCTION_27();
      *(v101 - 16) = v97;
      *(v101 - 8) = v99;
      v102 = v164;
      sub_237C62804(sub_237C77BCC, v103, v100);
      v105 = v104;
      v107 = v106;

      if (v105)
      {

        v108 = v91;
        v109 = v157;
        v110 = v160;
        v129(v157, v158, v160);
        OUTLINED_FUNCTION_10();
        v111 = v131;
        sub_237EF7F00();
        v164 = v102;
        v130 = v107;
        v112 = v142;
        (v142)(v109, v110);
        __swift_storeEnumTagSinglePayload(v108, 0, 1, v111);
        sub_237EF6650();

        v112(v158, v110);
        OUTLINED_FUNCTION_0_38();
        sub_237D41B44(v161, v113);
        v114 = OUTLINED_FUNCTION_2_45();
        v115(v114);
        goto LABEL_14;
      }

      v164 = v102;
    }

    v116 = v161;
    v66 = v154;
    v68 = v152;
    (v142)(v158, v160);
    OUTLINED_FUNCTION_0_38();
    sub_237D41B44(v116, v117);
    v118 = OUTLINED_FUNCTION_2_45();
    v119(v118);
    v63 = v155;
    v67 = v144;
    v62 = v153;
LABEL_17:
    v54 = v127;
    v60 = v132;
    v61 = v165 + 1;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_237D41948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237D419B8()
{
  result = qword_27DEB1280;
  if (!qword_27DEB1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB1280);
  }

  return result;
}

unint64_t sub_237D41A2C()
{
  result = qword_27DEB1290[0];
  if (!qword_27DEB1290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB1290);
  }

  return result;
}

uint64_t sub_237D41A80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237D41AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SGDDenseLayer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D41B44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_36()
{

  return sub_237D41B44(v0, type metadata accessor for FullyConnectedNetwork);
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return sub_237EF6870();
}

uint64_t SlidingWindowTransformer.init(stride:length:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double SlidingWindowTransformer.applied<A>(to:eventHandler:)@<D0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v13 = v4[1];
  (*(v15 + 16))(v12, v10);
  AnyTemporalSequence.init<A>(_:)(v12, *(a1 + 16), a2, a3, v19);
  *a4 = v14;
  *(a4 + 8) = v13;
  v16 = v19[1];
  *(a4 + 16) = v19[0];
  *(a4 + 32) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 48) = v20;
  *(a4 + 64) = v18;
  return result;
}

uint64_t sub_237D41D40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
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

uint64_t sub_237D41E08(char a1)
{
  if (a1)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x656469727473;
  }
}

uint64_t sub_237D41E60()
{
  sub_237EFA120();
  sub_237C5ED64(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237D41EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D41D40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D41F0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237D41F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D41F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SlidingWindowTransformer.encode(to:)(void *a1)
{
  type metadata accessor for SlidingWindowTransformer.CodingKeys();
  OUTLINED_FUNCTION_6_30();
  swift_getWitnessTable();
  v3 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v12 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  v11[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v15 = 0;
  v8 = v13;
  sub_237EF9A50();
  if (v8)
  {
    return (*(v12 + 8))(v7, v3);
  }

  v10 = v12;
  v14 = 1;
  sub_237EF9A50();
  return (*(v10 + 8))(v7, v3);
}

uint64_t SlidingWindowTransformer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  type metadata accessor for SlidingWindowTransformer.CodingKeys();
  OUTLINED_FUNCTION_6_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_34_0();
  v4 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v2)
  {
    v10 = v15;
    v17 = 0;
    v11 = sub_237EF9950();
    v16 = 1;
    v13 = sub_237EF9950();
    (*(v6 + 8))(v9, v4);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D42344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8.n128_f64[0] = SlidingWindowTransformer.applied<A>(to:eventHandler:)(a7, a5, a6, a1);
  v9 = *(v7 + 8);

  return v9(v8);
}

uint64_t SlidingWindowTransformer.WindowSequence.count.getter()
{
  result = *(v0 + 48);
  if ((*(v0 + 56) & 1) == 0)
  {
    v2 = *v0;
    if (*v0)
    {
      if (result != 0x8000000000000000 || v2 != -1)
      {
        result /= v2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t SlidingWindowTransformer.WindowSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = type metadata accessor for AnyTemporalSequence();
  (*(*(v5 - 8) + 16))(v7, v1 + 2, v5);
  return sub_237D424B8(v3, v4, v7, a1);
}

uint64_t sub_237D424B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 96) = 0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  v7 = type metadata accessor for AnyTemporalSequence();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a4 + 16, a3, v7);
  AnyTemporalSequence.makeAsyncIterator()();
  *(a4 + 80) = v11;
  type metadata accessor for SlidingWindowTransformer.WindowSequence.Iterator.SlidingWindowBuffer();
  v9 = sub_237D4263C(a2);
  result = (*(v8 + 8))(a3, v7);
  *(a4 + 104) = v9;
  return result;
}

uint64_t sub_237D425DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  SlidingWindowTransformer.WindowSequence.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_237D4263C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_237D43C7C(a1);
  return v2;
}

uint64_t sub_237D42698()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237D426B8, v1);
}

uint64_t sub_237D426B8()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D43CF8();
  v0 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_237D42714()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 16);
  *(v1 + 96) = 0;

  *(v1 + 144) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237D42780(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_3(sub_237D427A0, 0);
}

uint64_t sub_237D427A0()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(*(v0 + 32) + 104);
  *(v0 + 40) = v1;
  *(v0 + 48) = *(type metadata accessor for TemporalFeature() + 28);

  return MEMORY[0x2822009F8](sub_237D4281C, v1, 0);
}

uint64_t sub_237D4281C()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D43D98(*(v0 + 16) + *(v0 + 48));
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237D42884()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 16);
    *(v1 + 96) = v4;
    v7 = *v5;
    v6 = v5[1];
    v11 = *(v5 + 1);
    v8 = v5[4];
    sub_237EF8260();

    *(v1 + 112) = v7;
    *(v1 + 120) = v6;
    *(v1 + 128) = v11;
    *(v1 + 144) = v8;
    OUTLINED_FUNCTION_3_0();

    return v9();
  }

  return result;
}

uint64_t SlidingWindowTransformer.WindowSequence.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[39] = v2;
  v1[40] = v0;
  v1[38] = v3;
  v1[41] = *(v2 + 16);
  v4 = type metadata accessor for TemporalFeature();
  v1[42] = v4;
  OUTLINED_FUNCTION_34_0();
  v5 = sub_237EF90F0();
  v1[43] = v5;
  v1[44] = *(v5 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = *(v4 - 8);
  v1[47] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237D42A58()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[40];
  v2 = *(v1 + 88);
  v0[35] = *(v1 + 80);
  v0[36] = v2;

  v3 = swift_task_alloc();
  v0[48] = v3;
  OUTLINED_FUNCTION_34_0();
  type metadata accessor for AnyTemporalIterator();
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_3_46();

  return AnyTemporalIterator.next()(v4);
}

uint64_t sub_237D42AF0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 392) = v0;

  if (v0)
  {
    v6 = sub_237D439B0;
  }

  else
  {
    v6 = sub_237D42C04;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_237D42C04()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 320);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 352) + 8))(v1, *(v0 + 344));
    v5 = *(v4 + 120);
    if (v5)
    {
      v6 = *(v0 + 320);
      v7 = *(v6 + 144);
      v8 = *(v6 + 128);
      *(v0 + 160) = *(v6 + 112);
      *(v0 + 168) = v5;
      *(v0 + 176) = v8;
      *(v0 + 192) = v7;
      v9 = swift_task_alloc();
      *(v0 + 512) = v9;
      *v9 = v0;
      v9[1] = sub_237D436D0;
      v10 = *(v0 + 312);
      v11 = v0 + 16;
      v12 = v0 + 160;
LABEL_4:

      return sub_237D43A10(v11, v12, v10);
    }

    v22 = *(v0 + 304);
    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
    OUTLINED_FUNCTION_12_28();

    OUTLINED_FUNCTION_3_0();

    return v23();
  }

  else
  {
    (*(*(v0 + 368) + 32))(*(v0 + 376), v1, v2);
    v14 = *(v4 + 120);
    if (v14)
    {
      v15 = *(v4 + 112);
      v16 = *(v0 + 376);
      if (*v16 != v15 || v14 != v16[1])
      {
        v25 = *(v4 + 128);
        v18 = *(v4 + 144);
        if ((sub_237EF9D40() & 1) == 0)
        {
          *(v0 + 240) = v15;
          *(v0 + 248) = v14;
          *(v0 + 256) = v25;
          *(v0 + 272) = v18;
          v24 = swift_task_alloc();
          *(v0 + 400) = v24;
          *v24 = v0;
          v24[1] = sub_237D42EB0;
          v10 = *(v0 + 312);
          v11 = v0 + 112;
          v12 = v0 + 240;
          goto LABEL_4;
        }
      }
    }

    v19 = swift_task_alloc();
    *(v0 + 472) = v19;
    *v19 = v0;
    v19[1] = sub_237D43320;
    v20 = *(v0 + 376);
    v21 = *(v0 + 312);

    return sub_237D42780(v20, v21);
  }
}

uint64_t sub_237D42EB0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D42F94()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 128);
  *(v0 + 408) = *(v0 + 112);
  *(v0 + 424) = v1;
  *(v0 + 440) = *(v0 + 144);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_237D43034;

  return sub_237D4267C();
}

uint64_t sub_237D43034()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 464) = v5;
  *v5 = v4;
  v5[1] = sub_237D43198;
  v6 = *(v1 + 312);
  v7 = *(v1 + 376);

  return sub_237D42780(v7, v6);
}

uint64_t sub_237D43198()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D4327C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 304);
  v6 = *(v0 + 424);
  v7 = *(v0 + 408);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 336));
  *v3 = v7;
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237D43320()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D43404()
{
  v1 = *(*(v0 + 320) + 104);
  *(v0 + 480) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237D43424, v1);
}

uint64_t sub_237D43424()
{
  v1 = v0[60];
  v0[61] = *(v1 + 144);
  v0[62] = *(v1 + 128);
  return OUTLINED_FUNCTION_0_3(sub_237D43450, 0);
}

uint64_t sub_237D43450()
{
  OUTLINED_FUNCTION_2_0();
  if (v0[61] == v0[62])
  {
    v4 = v0[40];
    v5 = v4[12];
    v6 = v4[1];
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *v4;
      if (v9 != -1)
      {
        v10 = v8;
        if (v9)
        {
          v10 = v8 % v9;
        }

        if (v10)
        {
          goto LABEL_7;
        }
      }

      if (v5 >= v8)
      {
        v17 = v0[60];
        v18 = v0[47];
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[4];
        v0[25] = v20;
        v0[26] = v19;
        v0[27] = v8;
        v0[28] = v5;
        v0[29] = v21;
        sub_237EF8260();
        v1 = sub_237D435AC;
        v2 = v17;
        v3 = 0;

        return MEMORY[0x2822009F8](v1, v2, v3);
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

LABEL_7:
  (*(v0[46] + 8))(v0[47], v0[42]);
  v11 = v0[40];
  v12 = *(v11 + 88);
  v0[35] = *(v11 + 80);
  v0[36] = v12;

  v13 = swift_task_alloc();
  v0[48] = v13;
  OUTLINED_FUNCTION_34_0();
  v14 = type metadata accessor for AnyTemporalIterator();
  *v13 = v0;
  v15 = OUTLINED_FUNCTION_3_46(v14, v14);

  return AnyTemporalIterator.next()(v15);
}

uint64_t sub_237D435AC()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D44010();
  *(v0 + 504) = v1;
  v2 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_237D4360C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 336));
  *(v0 + 296) = v1;
  OUTLINED_FUNCTION_34_0();
  v3 = sub_237EF8A60();
  TemporalFeature.init(id:feature:)(v0 + 200, v0 + 296, v3, v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  *v2 = *(v0 + 64);
  *(v2 + 8) = v4;
  *(v2 + 16) = v7;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_237D436D0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D437B4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 32);
  *(v0 + 520) = *(v0 + 16);
  *(v0 + 536) = v1;
  *(v0 + 552) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_237D43854;

  return sub_237D4267C();
}

uint64_t sub_237D43854()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237D43938()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 304);
  v2 = *(v0 + 536);
  v3 = *(v0 + 552);
  *v1 = *(v0 + 520);
  v1[1] = v2;
  v1[2] = v3;
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237D439B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_28();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D43A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a3;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  *(v4 + 136) = *a2;
  *(v4 + 152) = *(a2 + 32);
  return OUTLINED_FUNCTION_0_3(sub_237D43A40, 0);
}

uint64_t sub_237D43A40()
{
  OUTLINED_FUNCTION_2_0();
  v4 = v0[16];
  v5 = v4[12];
  v6 = v4[1];
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v8 < 0 != v7)
  {
    if (v5 > 0)
    {
      v9 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = *v4;
    if (!*v4)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v8 == 0x8000000000000000 && v10 == -1)
    {
      goto LABEL_26;
    }

    v12 = v8 / v10;
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_24;
    }

    v9 = v13 * v10;
    if ((v13 * v10) >> 64 != (v13 * v10) >> 63)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    if (v9 < v5)
    {
LABEL_14:
      v1 = v0[18];
      v14 = v0[19];
      v0[8] = v0[17];
      v0[9] = v1;
      v0[10] = v9;
      v0[11] = v5;
      v0[12] = v14;
      v7 = __OFSUB__(v5, v9);
      v15 = v5 - v9;
      if (!v7)
      {
        v0[20] = v15;
        v16 = v4[13];
        v0[21] = v16;
        sub_237EF8260();
        v1 = sub_237D43B84;
        v2 = v16;
        v3 = 0;

        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  v17 = v0[14];
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  OUTLINED_FUNCTION_3_0();

  return v18();
}

uint64_t sub_237D43B84()
{
  OUTLINED_FUNCTION_2_0();
  sub_237D442A0(*(v0 + 160));
  *(v0 + 176) = v1;
  v2 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_237D43BE4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 112);
  *(v0 + 104) = *(v0 + 176);
  v2 = sub_237EF8A60();
  TemporalFeature.init(id:feature:)(v0 + 64, v0 + 104, v2, v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v3;
  *(v1 + 16) = v6;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_3_0();

  return v7();
}

void *sub_237D43C7C(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = sub_237EF8110();
  v3 = sub_237EF8110();
  v1[17] = 0;
  v1[18] = 0;
  v1[15] = v3;
  v1[16] = a1;
  return v1;
}

uint64_t sub_237D43CF8()
{
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  OUTLINED_FUNCTION_11_28();
  sub_237EF8A60();
  sub_237EF8A50();
  swift_endAccess();
  OUTLINED_FUNCTION_11_28();
  sub_237EF8A50();
  return swift_endAccess();
}

uint64_t sub_237D43D98(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  v9 = MEMORY[0x28223BE20](v7);
  if (v1[18] == v1[16])
  {
    v10 = v1[17];
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_43_3();
    sub_237EF8A60();
    sub_237EF8990();
    v11 = v1[14];
    sub_237D44944(v10, v2[14]);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v13 = v11;
    }

    (*(v6 + 24))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, a1, v4);
    result = swift_endAccess();
    v15 = v2[17];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      v18 = v2[16];
      if (v18)
      {
        if (v17 != 0x8000000000000000 || v18 != -1)
        {
          v2[17] = v17 % v18;
          return result;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(v6 + 16))(&v26 - v8, a1, v4, v9);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_43_3();
  sub_237EF8A60();
  sub_237EF8A20();
  result = swift_endAccess();
  v20 = v1[18];
  v16 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v16)
  {
    goto LABEL_23;
  }

  v1[18] = v21;
  v22 = v1[17];
  v16 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v1[16];
  if (!v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v23 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_28;
  }

  v1[17] = v23 % v24;
  if (v21 == v24)
  {
    swift_beginAccess();
    v26 = v1[15];
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    result = sub_237EF8EC0();
    if (result)
    {
      v1[15] = v1[14];
      sub_237EF8260();
    }
  }

  return result;
}

void sub_237D44010()
{
  v1 = v0[18];
  if (v1 != v0[16])
  {
    swift_beginAccess();
    goto LABEL_8;
  }

  v2 = v0[17];
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 - v2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_beginAccess();
  sub_237EF8A60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
  swift_getWitnessTable();
  sub_237D44998();
  sub_237EF8490();
  OUTLINED_FUNCTION_11_28();
  sub_237EF8AB0();
  swift_endAccess();
  v3 = v0[17];
  if (__OFSUB__(v0[16], v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_237EF8260();
    sub_237EF8AA0();

    OUTLINED_FUNCTION_11_28();
    sub_237EF84A0();
    swift_endAccess();
LABEL_8:
    sub_237EF8260();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_237D44248(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237D442A0(uint64_t a1)
{
  sub_237D44010();
  v3 = *(v1 + 144);
  if (v3 == *(v1 + 128))
  {
    if (__OFSUB__(v3, a1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_43_3();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      swift_getWitnessTable();
      sub_237EF8EE0();
      OUTLINED_FUNCTION_43_3();
      sub_237EF9240();
      swift_getWitnessTable();
      sub_237EF8A90();
    }
  }
}

uint64_t sub_237D44394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return SlidingWindowTransformer.WindowSequence.Iterator.next()();
}

uint64_t sub_237D4443C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D44510;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D44510()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237D44608()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D4465C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D446A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_237D446E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D4474C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237D44824(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237D44944(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_237D44998()
{
  result = qword_27DEB1518[0];
  if (!qword_27DEB1518[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB1518);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_28()
{
}

void sub_237D44A70()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  OUTLINED_FUNCTION_22_3();
  (*(v4 + 32))(v3);
  v5 = type metadata accessor for ComposedSupervisedTemporalEstimator();
  (*(*(v0 - 8) + 32))(v3 + *(v5 + 52), v1, v0);
  OUTLINED_FUNCTION_75_2();
}

void sub_237D44B20()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  OUTLINED_FUNCTION_22_3();
  (*(v20 + 32))(v13, v11, v7);
  TemporalTransformer.adaptedAsEstimator()(v5, v1);
  OUTLINED_FUNCTION_22_3();
  (*(v21 + 8))(v9, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_37();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v14;
  v30 = AssociatedTypeWitness;
  v31 = WitnessTable;
  v32 = AssociatedConformanceWitness;
  v25 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  v26 = swift_getWitnessTable();
  v29 = v7;
  v30 = v25;
  v31 = v3;
  v32 = v26;
  OUTLINED_FUNCTION_30_4();
  type metadata accessor for ComposedSupervisedTemporalEstimator();
  OUTLINED_FUNCTION_31_0();
  TemporalEstimator.adaptedAsSupervised<A>(annotationType:)(v27, v28);
  (*(v16 + 8))(v19, v14);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D44D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  TemporalEstimatorToSupervisedAdaptor.init(_:)(a1, a4, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v14 = type metadata accessor for ComposedSupervisedTemporalEstimator();
  return (*(*(a3 - 8) + 32))(a6 + *(v14 + 52), a2, a3);
}

uint64_t sub_237D44E40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v8 + 32))(a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  type metadata accessor for ComposedSupervisedTemporalEstimator();
  return TemporalEstimatorToSupervisedAdaptor.init(_:)(a1, a2, AssociatedTypeWitness, a3, AssociatedConformanceWitness);
}

uint64_t sub_237D44F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[12] = a9;
  v10[13] = v9;
  v10[10] = a7;
  v10[11] = a8;
  v10[8] = a5;
  v10[9] = a6;
  v10[6] = a3;
  v10[7] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v10[14] = a5[5];
  v10[15] = a5[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v10[17] = v17;
  v10[18] = swift_task_alloc();
  v10[19] = swift_task_alloc();
  v18 = a5[4];
  v19 = a5[2];
  OUTLINED_FUNCTION_65_2();
  v10[20] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v10[21] = v20;
  v10[22] = OUTLINED_FUNCTION_27_0();
  swift_getAssociatedTypeWitness();
  v10[23] = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  v10[24] = v21;
  OUTLINED_FUNCTION_42();
  v22 = type metadata accessor for AnnotatedFeature();
  v10[25] = v22;
  OUTLINED_FUNCTION_18(v22);
  v10[26] = OUTLINED_FUNCTION_27_0();
  v10[27] = *(v21 - 8);
  v10[28] = swift_task_alloc();
  v10[29] = swift_task_alloc();
  v10[30] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v10[31] = v23;
  v10[32] = OUTLINED_FUNCTION_27_0();
  v24 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v24);
  v10[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v10[34] = v25;
  v10[35] = OUTLINED_FUNCTION_27_0();
  v26 = swift_getAssociatedTypeWitness();
  v10[36] = v26;
  OUTLINED_FUNCTION_6_1(v26);
  v10[37] = v27;
  v10[38] = OUTLINED_FUNCTION_27_0();
  v28 = swift_checkMetadataState();
  v10[39] = v28;
  OUTLINED_FUNCTION_6_1(v28);
  v10[40] = v29;
  v10[41] = swift_task_alloc();
  v30 = swift_task_alloc();
  v10[42] = v30;
  OUTLINED_FUNCTION_15_0();
  v35 = (v31 + *v31);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v10[43] = v32;
  *v32 = v33;
  v32[1] = sub_237D45440;

  return v35(v30, a2, a3, a4, a6, a7, a8, a9, v19, v18);
}

uint64_t sub_237D45440()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 352) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237D45540()
{
  v1 = v0[44];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[40] + 8))(v0[42], v0[39]);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_74_1();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  v4 = sub_237EF8110();
  v5 = OUTLINED_FUNCTION_59_4(v4);
  v6(v5);
  OUTLINED_FUNCTION_48();
  v7 = v0[33];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v7);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_56_6();
    v10(v9);
    OUTLINED_FUNCTION_15_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[45] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_21_21(v11);
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X8, X16 }
  }

  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_237EF8B90();
  v15 = v0[2];
  v0[3] = v15;
  v0[47] = v15;
  OUTLINED_FUNCTION_15_0();
  v16 = swift_task_alloc();
  v0[48] = v16;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  *v16 = v0;
  OUTLINED_FUNCTION_20_18();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D458F8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237D459F8()
{
  v1 = v0[27];
  v23 = v0[29];
  v2 = v0[24];
  (*(v1 + 16))(v0[28]);
  v3 = OUTLINED_FUNCTION_27_16();
  v4(v3);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v23, v2);
  v5 = OUTLINED_FUNCTION_81_1();
  v6(v5);
  v7 = v0[46];
  v8 = v0[33];
  v9 = v0[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v0[37] + 8))(v0[38], v0[36]);
    sub_237EF8B90();
    if (v7)
    {

      v10 = OUTLINED_FUNCTION_31_0();
      v11(v10);
      OUTLINED_FUNCTION_14_28();
      OUTLINED_FUNCTION_74_1();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_54_3();

      __asm { BRAA            X1, X16 }
    }

    v20 = v0[2];
    v0[3] = v20;
    v0[47] = v20;
    OUTLINED_FUNCTION_15_0();
    v21 = swift_task_alloc();
    v0[48] = v21;
    OUTLINED_FUNCTION_23_8();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    *v21 = v0;
    OUTLINED_FUNCTION_20_18();

    __asm { BRAA            X8, X16 }
  }

  v14 = OUTLINED_FUNCTION_56_6();
  v15(v14);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[45] = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_54_3();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D45E04()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 392) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D45F0C()
{
  v1 = v0[39];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  (*(v0[40] + 32))(v0[41]);
  (*(v4 + 32))(v3, v2, v5);
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_81_1();
  ComposedTemporalTransformer.init(_:_:)(v6, v7, v1, v5, v8);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237D46098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_45_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D46164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  (*(v14[31] + 8))(v14[32], v14[30]);
  v15 = OUTLINED_FUNCTION_52_6();
  v16(v15);
  v17 = OUTLINED_FUNCTION_31_0();
  v18(v17);
  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_45_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D4627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  (*(v14[40] + 8))(v14[42], v14[39]);
  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_45_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D46360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[17] = a10;
  v11[18] = v10;
  v11[15] = v42;
  v11[16] = a9;
  v11[13] = a8;
  v11[14] = v41;
  v11[11] = a6;
  v11[12] = a7;
  v11[9] = a4;
  v11[10] = a5;
  v11[7] = a2;
  v11[8] = a3;
  v11[6] = a1;
  v11[19] = a6[5];
  v11[20] = a6[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[21] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[22] = v15;
  v11[23] = swift_task_alloc();
  v11[24] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[25] = v16;
  v11[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_65_2();
  v17 = swift_getAssociatedTypeWitness();
  v11[27] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v11[28] = v18;
  v11[29] = OUTLINED_FUNCTION_27_0();
  v19 = a6[4];
  v20 = a6[2];
  OUTLINED_FUNCTION_65_2();
  v11[30] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v11[31] = v21;
  v11[32] = OUTLINED_FUNCTION_27_0();
  swift_getAssociatedTypeWitness();
  v11[33] = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v11[34] = v22;
  OUTLINED_FUNCTION_23_8();
  v23 = type metadata accessor for AnnotatedFeature();
  v11[35] = v23;
  OUTLINED_FUNCTION_18(v23);
  v11[36] = OUTLINED_FUNCTION_27_0();
  v11[37] = *(v22 - 8);
  v11[38] = swift_task_alloc();
  v11[39] = swift_task_alloc();
  v11[40] = swift_task_alloc();
  v11[41] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v11[42] = v24;
  v11[43] = swift_task_alloc();
  v11[44] = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v25 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v25);
  v11[45] = swift_task_alloc();
  v11[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[47] = v26;
  v11[48] = OUTLINED_FUNCTION_27_0();
  v27 = swift_getAssociatedTypeWitness();
  v11[49] = v27;
  OUTLINED_FUNCTION_6_1(v27);
  v11[50] = v28;
  v11[51] = OUTLINED_FUNCTION_27_0();
  v29 = swift_checkMetadataState();
  v11[52] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v11[53] = v30;
  v11[54] = swift_task_alloc();
  v31 = swift_task_alloc();
  v11[55] = v31;
  OUTLINED_FUNCTION_15_0();
  v36 = (v32 + *v32);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v11[56] = v33;
  *v33 = v34;
  v33[1] = sub_237D46920;

  return v36(v31, a2, a4, a5, a7, v41, v42, a10, v20, v19);
}

uint64_t sub_237D46920()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 456) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237D46A20()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[57];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[53] + 8))(v0[55], v0[52]);
    OUTLINED_FUNCTION_11_29();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_39_7();

    return v2();
  }

  else
  {
    v5 = sub_237EF8110();
    v6 = OUTLINED_FUNCTION_59_4(v5);
    v7(v6);
    OUTLINED_FUNCTION_48();
    v8 = v0[46];
    swift_getAssociatedConformanceWitness();
    sub_237EF91A0();
    OUTLINED_FUNCTION_46_5(v8);
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_69_3();
      (*(v11 + 8))(v10);
      v0[3] = sub_237EF8110();
      OUTLINED_FUNCTION_89_0();
      v12();
      sub_237EF86F0();
      v13 = v0[45];
      v14 = v0[41];
      v15 = v0[27];
      swift_getAssociatedConformanceWitness();
      sub_237EF91A0();
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {
        v16 = OUTLINED_FUNCTION_53_5();
        v17(v16);
        sub_237EF8B90();
        OUTLINED_FUNCTION_8_38();
        v44 = swift_task_alloc();
        OUTLINED_FUNCTION_44_6(v44);
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        v45 = OUTLINED_FUNCTION_60_5();
        *v15 = v0;
        OUTLINED_FUNCTION_6_31(v45);
        OUTLINED_FUNCTION_81();

        __asm { BRAA            X8, X16 }
      }

      v30 = OUTLINED_FUNCTION_19_23();
      v32 = v31(v30);
      OUTLINED_FUNCTION_12_29(v32, v33, v34, v35, v36, v37, v38, v39, v48, v49, v50, v51, v52, v53, v54, v55, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[60] = v40;
      *v40 = v41;
      OUTLINED_FUNCTION_9_28(v40);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_48_6();
      v20 = v19(v18);
      OUTLINED_FUNCTION_12_29(v20, v21, v22, v23, v24, v25, v26, v27, v48, v49, v50, v51, v52, v53, v54, v55, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[58] = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_25_15(v28);
    }

    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v42();
  }
}

uint64_t sub_237D46F10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D47010()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v3 = OUTLINED_FUNCTION_32_11();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v0 + 8))(v63, v2);
  v7 = OUTLINED_FUNCTION_81_1();
  v8(v7);
  v9 = v1[59];
  v10 = v1[49];
  v11 = v1[46];
  v12 = v1[41];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    v25 = OUTLINED_FUNCTION_48_6();
    v27 = v26(v25);
    OUTLINED_FUNCTION_12_29(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[58] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_25_15();
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_69_3();
  v14 = v1[26];
  (*(v15 + 8))(v13);
  v1[3] = sub_237EF8110();
  OUTLINED_FUNCTION_42();
  v16();
  sub_237EF86F0();
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v10);
  if (!v17)
  {
    v37 = OUTLINED_FUNCTION_19_23();
    v39 = v38(v37);
    OUTLINED_FUNCTION_12_29(v39, v40, v41, v42, v43, v44, v45, v46, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[60] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_9_28(v47);
LABEL_9:
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v49();
  }

  v18 = OUTLINED_FUNCTION_53_5();
  v19(v18);
  sub_237EF8B90();
  if (!v9)
  {
    OUTLINED_FUNCTION_8_38();
    v51 = swift_task_alloc();
    OUTLINED_FUNCTION_44_6(v51);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v52 = OUTLINED_FUNCTION_60_5();
    *v14 = v1;
    OUTLINED_FUNCTION_6_31(v52);
    OUTLINED_FUNCTION_81();

    __asm { BRAA            X8, X16 }
  }

  v20 = OUTLINED_FUNCTION_31_0();
  v21(v20);
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_33_10();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_39_7();

  return v22();
}

uint64_t sub_237D474D8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D475E0()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v3 = v1[43];
  v4 = OUTLINED_FUNCTION_32_11();
  v5(v4);
  v6 = OUTLINED_FUNCTION_27_16();
  v7(v6);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v0 + 8))(v45, v2);
  v8 = OUTLINED_FUNCTION_81_1();
  v9(v8);
  v10 = v1[61];
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v0 + 8);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_53_5();
    v13(v12);
    sub_237EF8B90();
    if (!v10)
    {
      OUTLINED_FUNCTION_8_38();
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_44_6(v33);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      v34 = OUTLINED_FUNCTION_60_5();
      *v3 = v1;
      OUTLINED_FUNCTION_6_31(v34);
      OUTLINED_FUNCTION_81();

      __asm { BRAA            X8, X16 }
    }

    v14 = OUTLINED_FUNCTION_31_0();
    v15(v14);
    OUTLINED_FUNCTION_11_29();
    OUTLINED_FUNCTION_33_10();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_39_7();

    return v16();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_19_23();
    v21 = v20(v19);
    OUTLINED_FUNCTION_12_29(v21, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[60] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_9_28();
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v31();
  }
}

uint64_t sub_237D47960()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 520) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D47A78()
{
  v1 = v0[54];
  v2 = v0[52];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[6];
  (*(v0[53] + 32))(v1);
  (*(v5 + 32))(v4, v3, v6);
  OUTLINED_FUNCTION_42();
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v4, v2, v6, v7);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_237D47C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D47D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  (*(v20[42] + 8))(v20[44], v20[41]);
  v21 = OUTLINED_FUNCTION_52_6();
  v22(v21);
  v23 = OUTLINED_FUNCTION_31_0();
  v24(v23);
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D47E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  (*(v20[42] + 8))(v20[43], v20[41]);
  v21 = OUTLINED_FUNCTION_52_6();
  v22(v21);
  v23 = OUTLINED_FUNCTION_31_0();
  v24(v23);
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D47F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  (*(v20[53] + 8))(v20[55], v20[52]);
  OUTLINED_FUNCTION_4_39();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_81();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_237D4808C(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 56))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = a3[5];
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTemporalTransformer();
    return (*(v8 + 56))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237D481F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = a2[3];
  v36 = a2[5];
  v38 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v29 - v11;
  v12 = a2[4];
  v13 = a2[2];
  OUTLINED_FUNCTION_65_2();
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v34 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = *(v12 + 64);
  v35 = a1;
  v24 = v39;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v29 = v13;
    v30 = v18;
    v39 = v14;
    v26 = AssociatedTypeWitness;
    (*(v36 + 64))(v35, v38, v36);
    v27 = v30;
    v28 = v39;
    (*(v34 + 32))(v30, v22, v39);
    (*(v31 + 32))(v9, v37, v26);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v27, v9, v28, v26, v32);
  }

  return result;
}

uint64_t sub_237D484F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return sub_237D44F60(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237D485F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  v16[1] = sub_237C6A904;

  return sub_237D46360(a1, a2, a3, a4, a5, a10, a6, a7, a8, v22);
}

void Estimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v28 = v4;
  v6 = v5;
  v8 = v7;
  v32 = v9;
  v33 = v10;
  OUTLINED_FUNCTION_1_1();
  v30 = v0;
  v31 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v29 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_51_5();
  v18 = type metadata accessor for EstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  v27[0] = v6;
  v27[1] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_30_16();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v18;
  v35 = AssociatedTypeWitness;
  v36 = WitnessTable;
  v37 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_30_4();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v26 = MEMORY[0x28223BE20](v25);
  (*(v16 + 16))(v1, v30, v8, v26);
  EstimatorToTemporalAdaptor.init(_:)(v1, v8, v28);
  TemporalEstimatorToSupervisedAdaptor.init(_:)(v21, v18, AssociatedTypeWitness, WitnessTable, AssociatedConformanceWitness);
  (*(v31 + 16))(v29, v32, v27[0]);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_237D44A70();
  OUTLINED_FUNCTION_38_0();
}

{
  sub_237D937D8();
}

{
  sub_237D937D8();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  (*(v15 + 16))(v14 - v13, v16, v3);
  (*(v7 + 16))(v11, v5, v1);
  v17 = OUTLINED_FUNCTION_88_1();
  sub_237E069C4(v17, v18, v1, v3, v19);
  OUTLINED_FUNCTION_38_0();
}

void SupervisedEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v29 = v0;
  v30 = v1;
  v31 = v2;
  v4 = v3;
  v33 = v5;
  v34 = v6;
  v7 = type metadata accessor for TemporalTransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_1_1();
  v32 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_37();
  WitnessTable = swift_getWitnessTable();
  v27 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v7;
  v36 = AssociatedTypeWitness;
  v37 = WitnessTable;
  v38 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_30_4();
  v28 = type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  OUTLINED_FUNCTION_1_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_89_0();
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  v24 = MEMORY[0x28223BE20](v23);
  (*(v18 + 16))(v22, v29, v4, v24);
  OUTLINED_FUNCTION_89_0();
  SupervisedEstimatorToTemporalAdaptor.init(_:)();
  TemporalTransformer.adaptedAsEstimator()(v30, v31);
  TemporalEstimator.adaptedAsSupervised<A>(annotationType:)(v7, v16);
  (*(v32 + 8))(v11, v7);
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_237D44A70();
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v25 = v0;
  v26 = v1;
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_1();
  v24 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v23 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_81_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_4();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_67_1();
  (*(v16 + 16))(v20, v25, v8);
  SupervisedEstimatorToTemporalAdaptor.init(_:)(&protocol requirements base descriptor for SupervisedEstimator, v20, v8, v4);
  (*(v24 + 16))(v23, v26, v6);
  TemporalEstimatorToSupervisedAdaptor.init(_:)(v23, v6, AssociatedTypeWitness, v22, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_237D44A70();
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v16 = v2;
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_51_5();
  type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_42();
  v11();
  OUTLINED_FUNCTION_89_0();
  SupervisedEstimatorToTemporalAdaptor.init(_:)(v15, v12, v13, v14);
  (*(v4 + 16))(v8, v16, v1);
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  sub_237D44A70();
  OUTLINED_FUNCTION_38_0();
}

{
  sub_237E0B268();
}

{
  sub_237E0B268();
}

{
  sub_237E0B268();
}

void TemporalEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v1;
  v5 = v4;
  v23 = v7;
  v24 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_51_5();
  v17 = type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = (&v23 - v19);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67_1();
  (*(v22 + 16))(v0, v3, v11);
  (*(v15 + 16))(v2, v13, v9);
  SupervisedEstimatorToTemporalAdaptor.init(_:)(v20, v2, v9, v5);
  OUTLINED_FUNCTION_1_45();
  swift_getWitnessTable();
  sub_237D44D14(v0, v20, v17, v11, v24, v23);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, v5);
  (*(v9 + 16))(v13, v7, v3);
  OUTLINED_FUNCTION_63_2();
  sub_237D44D14(v19, v20, v21, v22, v1, v23);
  OUTLINED_FUNCTION_38_0();
}

{
  sub_237D93C90();
}

{
  sub_237D93C90();
}

void sub_237D494B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_37_0();
  v48 = v23;
  v49 = v22;
  v46 = v24;
  v47 = v25;
  v26 = v21;
  v28 = v27;
  OUTLINED_FUNCTION_1_1();
  v45 = a21;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67_1();
  v33 = v32(0, v30, v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v44 - v35;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  (*(v41 + 16))(v39 - v38, v26, v28);
  OUTLINED_FUNCTION_42();
  v42();
  OUTLINED_FUNCTION_89_0();
  v46();
  WitnessTable = swift_getWitnessTable();
  v45(v40, v36, v28, v33, v49, WitnessTable);
  OUTLINED_FUNCTION_38_0();
}

void SupervisedTemporalEstimator.appending<A>(_:)()
{
  sub_237D496D0();
}

{
  sub_237D496D0();
}

{
  sub_237D496D0();
}

void sub_237D496D0()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  OUTLINED_FUNCTION_19_0();
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  (*(v15 + 16))(v14 - v13, v16, v1);
  (*(v7 + 16))(v11, v5, v0);
  OUTLINED_FUNCTION_64_2();
  v3();
  OUTLINED_FUNCTION_38_0();
}

void get_witness_table_18CreateMLComponents27SupervisedTemporalEstimatorRzAA0E0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcdE0VyxAA0de2ToC7AdaptorVyAA0ejdK0Vyqd__G10AnnotationQzGGAaBHPyHCTm()
{
  OUTLINED_FUNCTION_76_2();
  v1(255, *(v0 + 8), *(v0 + 24));
  OUTLINED_FUNCTION_16_24();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for TemporalEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_75_2();
}

uint64_t sub_237D49900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237D49AC8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_2_46()
{
  type metadata accessor for ComposedSupervisedTemporalEstimator();

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_39()
{
}

uint64_t OUTLINED_FUNCTION_6_31(uint64_t a1)
{
  *(v2 + 8) = sub_237D47960;
  v5 = v1[24];
  v6 = v1[19];
  v4[5] = v1[20];
  v4[6] = v6;
  v4[3] = v3;
  v4[4] = a1;
  v4[2] = v3;
  return v5;
}

uint64_t OUTLINED_FUNCTION_8_38()
{
  v1 = v0[19];
  v2 = v0[2];
  v3 = v0[3];
  v0[4] = v2;
  v0[5] = v3;
  v0[62] = v2;
  v0[63] = v3;
  return v1 + 48;
}

uint64_t OUTLINED_FUNCTION_20_18()
{
  *(v0 + 8) = sub_237D45E04;
  result = v1[19];
  v4 = v1[14];
  *(v2 + 16) = v1[15];
  *(v2 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_10()
{
}

uint64_t OUTLINED_FUNCTION_35_7()
{

  return AnnotatedFeature.init(feature:annotation:)(v0, v3, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{
  *(v1 + 512) = a1;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_45_4()
{
}

uint64_t OUTLINED_FUNCTION_60_5()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_74_1()
{
}

unint64_t ConcatenationError.errorDescription.getter()
{
  v2 = 0xD000000000000038;
  v3 = *(v0 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_25_9();
    }

    else
    {
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_0_40();
      MEMORY[0x2383E0710](v1, v3);
      OUTLINED_FUNCTION_5_38();
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_9();
    return 0xD00000000000004ELL;
  }

  return v2;
}

unint64_t ConcatenationError.debugDescription.getter()
{
  v2 = 0xD000000000000038;
  v3 = *(v0 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_25_9();
    }

    else
    {
      OUTLINED_FUNCTION_2_47();
      OUTLINED_FUNCTION_0_40();
      MEMORY[0x2383E0710](v1, v3);
      OUTLINED_FUNCTION_5_38();
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_9();
    return 0xD00000000000004ELL;
  }

  return v2;
}

uint64_t static ConcatenationError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_237D4A584(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_237D4A584(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v13 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v15 = sub_237EF9D40();
      v16 = OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_1_46(v16, v17);
      v18 = OUTLINED_FUNCTION_3_47();
      sub_237D4A584(v18, v19);
      return v15 & 1;
    }

    OUTLINED_FUNCTION_1_46(v13, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_3_47();
    OUTLINED_FUNCTION_1_46(v9, v10);
    v11 = OUTLINED_FUNCTION_3_47();
    sub_237D4A584(v11, v12);
    return 0;
  }

  v6 = 1;
  sub_237D4A584(*a1, 1uLL);
  sub_237D4A584(v4, 1uLL);
  return v6;
}

uint64_t sub_237D4A570(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237D4A584(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_237D4A59C()
{
  result = qword_27DEB15A0;
  if (!qword_27DEB15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB15A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents18ConcatenationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237D4A614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
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

uint64_t sub_237D4A668(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_237D4A6C4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void OUTLINED_FUNCTION_0_40()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, unint64_t a2)
{
  sub_237D4A570(a1, a2);
  sub_237D4A570(v2, v3);

  return sub_237D4A584(v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_47()
{

  return sub_237EF9330();
}

void OUTLINED_FUNCTION_5_38()
{

  JUMPOUT(0x2383E0710);
}

uint64_t sub_237D4A7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v56 = v6;
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  v55 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v51 = v50 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v54 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v53 = v13 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v52 = v50 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_26();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v50 - v28;
  v50[1] = a2;
  OUTLINED_FUNCTION_3_48();
  v30 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  v35 = v50 - v34;
  v36 = a1;
  (*(v32 + 16))(v50 - v34, a1, v30);
  OUTLINED_FUNCTION_3_48();
  if (swift_dynamicCast())
  {
    (*(v22 + 32))(v26, v29, v20);
    sub_237EF6B10();
    sub_237EF7DF0();
    OUTLINED_FUNCTION_1_47();
    MEMORY[0](a1, v30);
    (*(v22 + 8))(v26, v20);
    return MEMORY[0](v35, v30);
  }

  v37 = v58;
  v50[0] = v36;
  OUTLINED_FUNCTION_3_48();
  if (swift_dynamicCast())
  {
    v38 = v54;
    v39 = v52;
    (*(v54 + 32))(v52, v19, v37);
    v40 = v53;
    (*(v38 + 16))(v53, v39, v37);
    sub_237C651A0();
    sub_237EF6B10();
    sub_237EF7F00();
    OUTLINED_FUNCTION_1_47();
    MEMORY[0](v50[0], v30);
    v41 = *(v38 + 8);
    v41(v40, v37);
    v41(v39, v37);
    return MEMORY[0](v35, v30);
  }

  v42 = v51;
  OUTLINED_FUNCTION_3_48();
  v43 = v57;
  v44 = swift_dynamicCast();
  v45 = v50[0];
  if (v44)
  {
    v47 = v55;
    v46 = v56;
    (*(v56 + 32))(v55, v42, v43);
    sub_237EF6B10();
    sub_237EF7DF0();
    OUTLINED_FUNCTION_1_47();
    MEMORY[0](v45, v30);
    (*(v46 + 8))(v47, v43);
    return MEMORY[0](v35, v30);
  }

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_237EF9330();

  strcpy(v60, "Scalar type ");
  BYTE5(v60[1]) = 0;
  HIWORD(v60[1]) = -5120;
  v49 = sub_237EFA220();
  MEMORY[0x2383E0710](v49);

  MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFE040);
  result = sub_237EF9740();
  __break(1u);
  return result;
}

void *sub_237D4ADB0(void *result, uint64_t a2, void *__src, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 - result < -3)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if ((v4 + 3) >= 7)
  {
    v5 = v4 / 4;
    if (v5 >= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = v5;
    }

    if (a4 < 0)
    {
      v6 = v5;
    }

    if (!__src)
    {
      return result;
    }
  }

  else
  {
LABEL_4:
    v5 = 0;
    v6 = 0;
    if (!__src)
    {
      return result;
    }
  }

  if (v6)
  {
    if (v5 >= v6)
    {
      return memcpy(result, __src, 4 * v6);
    }

    goto LABEL_17;
  }

  return result;
}

void *sub_237D4AE54(void *result, uint64_t a2, void *__src, uint64_t a4)
{
  if (result)
  {
    v4 = (a2 - result) / 2;
    if (!__src)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
    if (!__src)
    {
      return result;
    }
  }

  if (a4)
  {
    if (v4 < a4)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, __src, 2 * a4);
    }
  }

  return result;
}

uint64_t sub_237D4AECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v20[7] = a4;
  v20[0] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_237EF6430();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_237EF6450();
  MEMORY[0x28223BE20](v17 - 8);
  sub_237EF8260();
  sub_237EF6460();
  (*(v13 + 104))(v16, *a3, v11);
  v18 = sub_237EF64B0();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  v20[4] = a1;
  v20[5] = a2;
  return sub_237EF69E0();
}

void sub_237D4B0A8(void *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = a4;
  if (!a1)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
LABEL_13:

      return;
    }

    goto LABEL_11;
  }

  v7 = (a2 - a1) / 4;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  sub_237C63670();
  if (v4 < 0)
  {
    goto LABEL_15;
  }

  v8 = v13;
  v9 = *(v13 + 16);
  do
  {
    v10 = *a3;
    v11 = v9 + 1;
    if (v9 >= *(v13 + 24) >> 1)
    {
      sub_237C63670();
    }

    v12 = v10;
    *(v13 + 16) = v11;
    *(v13 + 4 * v9 + 32) = v12;
    ++a3;
    ++v9;
    --v4;
  }

  while (v4);
LABEL_11:
  if (v7 >= v11)
  {
    memcpy(a1, (v8 + 32), 4 * v11);
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t SerializationError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SerializationError();
  OUTLINED_FUNCTION_4_40();
  MEMORY[0x28223BE20](v8);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_237D4B4D4(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v21 = *v10;
      v22 = v10[1];
      OUTLINED_FUNCTION_0_41();
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000038, 0x8000000237EFE060);
      MEMORY[0x2383E0710](v21, v22);

      MEMORY[0x2383E0710](11817, 0xE200000000000000);
      return v24[0];
    }

    v12 = OUTLINED_FUNCTION_1_48();
    v13(v12);
    OUTLINED_FUNCTION_0_41();
    sub_237EF9330();

    OUTLINED_FUNCTION_10_23();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_1_48();
    v17(v16);
    OUTLINED_FUNCTION_0_41();
    sub_237EF9330();

    OUTLINED_FUNCTION_10_23();
    v15 = v18 + 6;
  }

  v24[0] = v15;
  v24[1] = v14;
  sub_237D4B9FC(&qword_280C8E568, MEMORY[0x277CC9260]);
  v19 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v19);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  v20 = v24[0];
  (*(v4 + 8))(v7, v2);
  return v20;
}