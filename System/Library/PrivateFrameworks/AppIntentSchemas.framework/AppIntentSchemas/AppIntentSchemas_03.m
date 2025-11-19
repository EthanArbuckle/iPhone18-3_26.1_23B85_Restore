uint64_t sub_1DF7991EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF799198();
  *a2 = result;
  return result;
}

uint64_t sub_1DF79921C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF799198();
  *a1 = result;
  return result;
}

uint64_t sub_1DF799244(uint64_t a1)
{
  v2 = sub_1DF7662B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF799280(uint64_t a1)
{
  v2 = sub_1DF7662B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF79930C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE544D0, &qword_1DF7B6B28);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7662B0();
  sub_1DF7ADA64();
  sub_1DF766CC8(v3, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
  if (OUTLINED_FUNCTION_2_11())
  {
    memcpy(v27, v28, 0x48uLL);
    v26[0] = 0;
    v31 = 0;
    sub_1DF799828();
    OUTLINED_FUNCTION_0_14();
    if (!v2)
    {
      memcpy(v26, v27, 0x48uLL);
      OUTLINED_FUNCTION_60();
      sub_1DF78E4D0();
      OUTLINED_FUNCTION_0_14();
    }

    v10 = OUTLINED_FUNCTION_5_6();
    v11(v10);
    sub_1DF795934(v27);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  if (OUTLINED_FUNCTION_2_11())
  {
    memcpy(v27, v28, 0x58uLL);
    v26[0] = 1;
    v31 = 0;
    sub_1DF799828();
    OUTLINED_FUNCTION_0_14();
    if (!v2)
    {
      memcpy(v26, v27, sizeof(v26));
      v31 = 1;
      sub_1DF78E47C();
      OUTLINED_FUNCTION_0_14();
    }

    v12 = OUTLINED_FUNCTION_5_6();
    v13(v12);
    sub_1DF78E0A4(v27);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  if (OUTLINED_FUNCTION_2_11())
  {
    memcpy(v27, v28, sizeof(v27));
    v26[0] = 2;
    v31 = 0;
    sub_1DF799828();
    OUTLINED_FUNCTION_0_14();
    if (!v2)
    {
      v26[0] = 1;
      sub_1DF7998D0();
      OUTLINED_FUNCTION_1_11();
    }

    sub_1DF76A0C0(v27);
    goto LABEL_18;
  }

  if (!OUTLINED_FUNCTION_2_11())
  {
    v16 = sub_1DF7AD714();
    swift_allocError();
    v18 = v17;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53DC0, &qword_1DF7B2458) + 48);
    v19 = v3[3];
    v20 = __swift_project_boxed_opaque_existential_1(v3, v19);
    v18[3] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v20, v19);
    sub_1DF7AD6E4();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
    swift_willThrow();
LABEL_18:
    v22 = OUTLINED_FUNCTION_5_6();
    v23(v22);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v30 = LOBYTE(v28[2]);
  LOBYTE(v27[0]) = 3;
  v26[0] = 0;
  sub_1DF799828();
  OUTLINED_FUNCTION_1_11();
  if (!v2)
  {
    v27[0] = v28[0];
    v27[1] = v28[1];
    LOBYTE(v27[2]) = v30;
    v27[3] = v28[3];
    LOWORD(v27[4]) = v28[4];
    v26[0] = 1;
    sub_1DF79987C();
    OUTLINED_FUNCTION_1_11();
  }

  v14 = OUTLINED_FUNCTION_5_6();
  v15(v14);

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_1DF7997D4()
{
  result = qword_1ECE544C8;
  if (!qword_1ECE544C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544C8);
  }

  return result;
}

unint64_t sub_1DF799828()
{
  result = qword_1ECE544D8;
  if (!qword_1ECE544D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544D8);
  }

  return result;
}

unint64_t sub_1DF79987C()
{
  result = qword_1ECE544E0;
  if (!qword_1ECE544E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544E0);
  }

  return result;
}

unint64_t sub_1DF7998D0()
{
  result = qword_1ECE544E8;
  if (!qword_1ECE544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544E8);
  }

  return result;
}

uint64_t sub_1DF799924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE544F0, &qword_1DF7B6B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SchemaWrapper.Base(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF799A7C()
{
  result = qword_1ECE544F8;
  if (!qword_1ECE544F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544F8);
  }

  return result;
}

unint64_t sub_1DF799AD4()
{
  result = qword_1ECE54500;
  if (!qword_1ECE54500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54500);
  }

  return result;
}

unint64_t sub_1DF799B2C()
{
  result = qword_1EE173960;
  if (!qword_1EE173960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173960);
  }

  return result;
}

unint64_t sub_1DF799B84()
{
  result = qword_1EE173968;
  if (!qword_1EE173968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173968);
  }

  return result;
}

uint64_t sub_1DF799BD8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t static When.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1DF789E48(*a1, *a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = a1[23];
  v5 = a1[24];
  OUTLINED_FUNCTION_12_3(a1 + 20);
  OUTLINED_FUNCTION_6_8(v15);
  v6 = a2[23];
  v7 = a2[24];
  OUTLINED_FUNCTION_12_3(a2 + 20);
  OUTLINED_FUNCTION_6_8(v14);
  LOBYTE(v6) = sub_1DF786A9C(v15, v14);
  sub_1DF766F98(v14);
  sub_1DF766F98(v15);
  if (v6)
  {
    v8 = a1[28];
    v9 = a1[29];
    OUTLINED_FUNCTION_12_3(a1 + 25);
    OUTLINED_FUNCTION_6_8(v15);
    v10 = a2[28];
    v11 = a2[29];
    OUTLINED_FUNCTION_12_3(a2 + 25);
    sub_1DF7863C4(v10, v11, v14);
    v12 = sub_1DF786A9C(v15, v14);
    sub_1DF766F98(v14);
    sub_1DF766F98(v15);
  }

  else
  {
LABEL_4:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1DF799F3C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for Value;
  a3[4] = sub_1DF772BAC();
  a3[5] = sub_1DF78E278();
  v6 = swift_allocObject();
  *a3 = v6;
  sub_1DF7727D4(a1, v6 + 16);
  memcpy(a3 + 6, a2, 0x59uLL);
  memcpy(__dst, a2, 0x59uLL);
  v7 = sub_1DF770608(a2, v25);
  ValueType.codableType.getter(v7, v8, v9, v10, v11, v12, v13, v14);
  if (swift_dynamicCastMetatype())
  {
    sub_1DF77A414(a2);
    return sub_1DF772884(a1);
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1DF7AD6B4();

    v25[0] = 0x6574656D61726150;
    v25[1] = 0xEF20657079742072;
    v16 = memcpy(__dst, a2, 0x59uLL);
    ValueType.codableType.getter(v16, v17, v18, v19, v20, v21, v22, v23);
    v24 = sub_1DF7ADA94();
    MEMORY[0x1E12DE6C0](v24);

    MEMORY[0x1E12DE6C0](0xD000000000000016, 0x80000001DF7BA1F0);
    MEMORY[0x1E12DE6C0](0x65756C6156, 0xE500000000000000);
    result = sub_1DF7AD784();
    __break(1u);
  }

  return result;
}

void sub_1DF79A0F0(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v7 = MEMORY[0x1E69E6190];
  a4[3] = MEMORY[0x1E69E6158];
  a4[4] = v7;
  a4[5] = MEMORY[0x1E69E6160];
  *a4 = a2;
  a4[1] = a3;
  memcpy(a4 + 6, __src, 0x59uLL);
  memcpy(__dst, __src, 0x59uLL);

  v8 = sub_1DF770608(__src, v25);
  ValueType.codableType.getter(v8, v9, v10, v11, v12, v13, v14, v15);
  if (swift_dynamicCastMetatype())
  {
    sub_1DF77A414(__src);
  }

  else
  {
    __dst[0] = a2;
    __dst[1] = a3;
    sub_1DF790C38();
    if (swift_dynamicCast())
    {
      sub_1DF77A414(__src);
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1DF7AD6B4();

      v25[0] = 0x6574656D61726150;
      v25[1] = 0xEF20657079742072;
      v16 = memcpy(__dst, __src, 0x59uLL);
      ValueType.codableType.getter(v16, v17, v18, v19, v20, v21, v22, v23);
      v24 = sub_1DF7ADA94();
      MEMORY[0x1E12DE6C0](v24);

      MEMORY[0x1E12DE6C0](0xD000000000000016, 0x80000001DF7BA1F0);
      MEMORY[0x1E12DE6C0](0x676E69727453, 0xE600000000000000);
      sub_1DF7AD784();
      __break(1u);
    }
  }
}

void When.init(_:_:_:otherwise:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v8, 0xB8uLL);
  if (*v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 8;
  }

  bzero(v30, 0x89uLL);
  v10 = v3(v28);
  (v1)(v25, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DF7AE850;
  memcpy((v11 + 32), __dst, 0xB8uLL);
  sub_1DF767124(__dst, __src);
  sub_1DF79B5FC();
  __src[0] = v12;
  v13 = v28[3];
  v14 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  OUTLINED_FUNCTION_2_12(v14);
  v16 = v15(v13, v14);
  sub_1DF79B26C(v16);
  v17 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  OUTLINED_FUNCTION_2_12(v18);
  v20 = v19(v17, v18);
  sub_1DF79B26C(v20);
  v21 = sub_1DF79B31C(__src[0]);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  *v7 = v21;
  v7[1] = v9;
  sub_1DF779038(v30, __src);
  if (__src[3])
  {
    memcpy(v28, __src, 0x89uLL);
    sub_1DF7727D4(v28, v25);
    memcpy(v31, &__dst[16], 0x59uLL);
    sub_1DF770608(&__dst[16], v24);
    sub_1DF799F3C(v25, v31, v7 + 2);
    sub_1DF767908(__dst);
    v22 = sub_1DF772884(v28);
  }

  else
  {
    sub_1DF767908(__dst);
    bzero(v7 + 2, 0x89uLL);
  }

  v23 = v3(v22);
  v1(v23);
  sub_1DF79B7D8(v30);
  OUTLINED_FUNCTION_14();
}

uint64_t HasValueComparisonOperator.rawValue.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_1DF79A518@<X0>(void *__src@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X5>, uint64_t a6@<X7>, char **a7@<X8>, __int128 a8, uint64_t a9)
{
  v14 = memcpy(__dst, __src, 0xB8uLL);
  v15 = (a4)(v40, v14);
  (a5)(v37, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF7AE850;
  memcpy((inited + 32), __dst, 0xB8uLL);
  sub_1DF767124(__dst, v36);
  sub_1DF79B5FC();
  v36[0] = v17;
  v18 = v41;
  v19 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v20 = (*(v19 + 24))(v18, v19);
  sub_1DF79B26C(v20);
  v21 = v38;
  v22 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v23 = (*(v22 + 24))(v21, v22);
  sub_1DF79B26C(v23);
  v24 = sub_1DF79B31C(v36[0]);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v40);
  *a7 = v24;
  a7[1] = a2;
  v32 = a6;
  v33 = a8;
  v34 = a9;
  v35 = __dst;
  v25 = sub_1DF7AD624();
  sub_1DF799BD8(sub_1DF79BF30, v31, MEMORY[0x1E69E73E0], &type metadata for Value, v26, (a7 + 2));
  v27 = sub_1DF767908(__dst);
  v28 = a4(v27);
  a5(v28);
  return (*(*(v25 - 8) + 8))(a3, v25);
}

void When.init<A>(_:_:_:_:otherwise:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_6(__src);
  v10 = swift_allocObject();
  memcpy((v10 + 16), (v7 + 16), 0x59uLL);
  *(v10 + 112) = 0;
  v11 = sub_1DF770608(&__src[16], v28);
  v12 = (v3)(v33, v11);
  (v1)(v30, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF7AE850;
  memcpy((inited + 32), __src, 0xB8uLL);
  sub_1DF767124(__src, v28);
  sub_1DF79B5FC();
  v28[0] = v14;
  v16 = v34;
  v15 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  OUTLINED_FUNCTION_2_12(v15);
  v18 = v17(v16, v15);
  sub_1DF79B26C(v18);
  v19 = v31;
  v20 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  OUTLINED_FUNCTION_2_12(v20);
  v22 = v21(v19, v20);
  sub_1DF79B26C(v22);
  v23 = sub_1DF79B31C(v28[0]);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_1DF767908(__src);
  *v9 = v23;
  v9[1] = 7;
  v33[0] = v5;
  v28[0] = v10;
  v29 = 10;
  v24 = sub_1DF7AD5B4();

  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  swift_getWitnessTable();
  Value.init<A>(_:type:)(v33, v28, v24, WitnessTable, v26, v9 + 2);
  v27 = v3();
  v1(v27);

  OUTLINED_FUNCTION_14();
}

void When.init<A>(_:_:_:_:otherwise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15();
  v23 = v22;
  v44 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v43 = a21;
  v37 = sub_1DF7AD624();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v43 - v39;
  memcpy(v45, v34, 0xB8uLL);
  v41 = *v32;
  v42 = *(v23 - 8);
  (*(v42 + 16))(v40, v30, v23);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v23);
  sub_1DF79A518(v45, (v41 + 1), v40, v28, v26, v23, v36, v43, a22);
  (*(v42 + 8))(v30, v23);
  OUTLINED_FUNCTION_14();
}

void sub_1DF79AB84()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v28 = v6;
  v8 = v7;
  v10 = v9;
  v12 = memcpy(__dst, v11, 0xB8uLL);
  v13 = *v8 + 9;
  v14 = (v3)(v29, v12);
  (v1)(v33, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF7AE850;
  memcpy((inited + 32), __dst, 0xB8uLL);
  sub_1DF767124(__dst, __src);
  sub_1DF79B5FC();
  __src[0] = v16;
  v17 = v30;
  v18 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  OUTLINED_FUNCTION_2_12(v18);
  v20 = v19(v17, v18);
  sub_1DF79B26C(v20);
  v21 = v34;
  v22 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  OUTLINED_FUNCTION_2_12(v22);
  v24 = v23(v21, v22);
  sub_1DF79B26C(v24);
  v25 = sub_1DF79B31C(__src[0]);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v29);
  *v10 = v25;
  v10[1] = v13;
  memcpy(__src, &__dst[16], 0x59uLL);
  swift_bridgeObjectRetain_n();
  sub_1DF770608(&__dst[16], v29);
  sub_1DF79A0F0(__src, v28, v5, v10 + 2);
  sub_1DF767908(__dst);
  v26 = swift_bridgeObjectRelease_n();
  v27 = v3(v26);
  v1(v27);
  OUTLINED_FUNCTION_14();
}

uint64_t When.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54518, &qword_1DF7B6DA0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF772A50();
  sub_1DF7ADA64();
  v20[0] = *v3;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B30, &qword_1DF7AE900);
  sub_1DF7677BC(&qword_1ECE53B38, sub_1DF77CAD4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_4_8();
  sub_1DF7AD904();
  if (!v2)
  {
    v14 = v3[1];
    LOBYTE(v20[0]) = 3;
    OUTLINED_FUNCTION_4_8();
    sub_1DF7AD8F4();
    v15 = v3[23];
    v16 = v3[24];
    __swift_project_boxed_opaque_existential_1(v3 + 20, v15);
    sub_1DF7863C4(v15, v16, v20);
    v21 = 1;
    sub_1DF79B840();
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_4_8();
    sub_1DF7AD904();
    sub_1DF766F98(v20);
    v17 = v3[28];
    v18 = v3[29];
    __swift_project_boxed_opaque_existential_1(v3 + 25, v17);
    sub_1DF7863C4(v17, v18, v20);
    v21 = 2;
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_4_8();
    sub_1DF7AD904();
    sub_1DF766F98(v20);
    LOBYTE(v20[0]) = 4;
    sub_1DF78E278();
    OUTLINED_FUNCTION_4_8();
    sub_1DF7AD8C4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DF79B018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF779970();
  *a2 = result;
  return result;
}

unint64_t sub_1DF79B048@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DF772724(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF79B074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF779970();
  *a1 = result;
  return result;
}

uint64_t sub_1DF79B09C(uint64_t a1)
{
  v2 = sub_1DF772A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79B0D8(uint64_t a1)
{
  v2 = sub_1DF772A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DF79B134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  memcpy(__dst, (a2 + 16), 0x59uLL);
  memcpy(v17, (a2 + 16), 0x59uLL);
  sub_1DF770608(__dst, &v16);
  Value.init<A>(_:type:)(v13, v17, a3, a4, a5, a6);
}

uint64_t sub_1DF79B26C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  for (i = 32; ; i += 184)
  {
    if (v3 == v2)
    {
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    memcpy(__dst, (v1 + i), sizeof(__dst));
    ++v2;
    sub_1DF767124(__dst, v6);
    sub_1DF79BF58(__src, __dst);
    memcpy(v6, __src, sizeof(v6));
    result = sub_1DF767908(v6);
  }

  __break(1u);
  return result;
}

char *sub_1DF79B31C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DF79B514(*(a1 + 16), 0);
  v4 = sub_1DF79CDC8(&v6, v3 + 32, v2, a1);
  sub_1DF79CF5C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DF79B3F0@<X0>(uint64_t *a1@<X8>)
{
  result = HasValueComparisonOperator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DF79B48C@<X0>(uint64_t *a1@<X8>)
{
  result = ComparableComparisonOperator.rawValue.getter();
  *a1 = result;
  return result;
}

AppIntentSchemas::StringComparisonOperator_optional __swiftcall StringComparisonOperator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 9;
  if ((rawValue - 9) >= 4)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DF79B4EC@<X0>(uint64_t *a1@<X8>)
{
  result = StringComparisonOperator.rawValue.getter();
  *a1 = result;
  return result;
}

void *sub_1DF79B514(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 184);
  return v4;
}

uint64_t sub_1DF79B598(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DF7B65C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1DF79B5FC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54550, &qword_1DF7B74E8), v2 = sub_1DF7AD6A4(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    for (i = *(v1 + 16); v5 < i; i = *(v1 + 16))
    {
      OUTLINED_FUNCTION_6(v25);
      ++v5;
      OUTLINED_FUNCTION_6(v24);
      v8 = *(v3 + 40);
      OUTLINED_FUNCTION_6(__dst);
      sub_1DF7AD9E4();
      sub_1DF767124(v25, v22);
      ParameterSchema.hash(into:)(__src);
      v9 = sub_1DF7ADA24();
      v10 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = *(v6 + 8 * v12);
        v14 = 1 << (v9 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v15 = *(v3 + 48) + 184 * v11;
        OUTLINED_FUNCTION_6(v22);
        OUTLINED_FUNCTION_6(__src);
        sub_1DF767124(v22, v20);
        static ParameterSchema.== infix(_:_:)();
        LOBYTE(v15) = v16;
        memcpy(__dst, __src, sizeof(__dst));
        sub_1DF767908(__dst);
        if (v15)
        {
          memcpy(__src, v24, sizeof(__src));
          sub_1DF767908(__src);
          goto LABEL_12;
        }

        v9 = v11 + 1;
      }

      *(v6 + 8 * v12) = v14 | v13;
      memcpy((*(v3 + 48) + 184 * v11), v24, 0xB8uLL);
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_16;
      }

      *(v3 + 16) = v19;
LABEL_12:
      if (v5 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_14();
  }
}

uint64_t sub_1DF79B7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54508, &unk_1DF7B6D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF79B840()
{
  result = qword_1ECE54520;
  if (!qword_1ECE54520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54520);
  }

  return result;
}

unint64_t sub_1DF79B894(uint64_t a1)
{
  *(a1 + 8) = sub_1DF772FF0();
  result = sub_1DF786D70();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF79B8C8()
{
  result = qword_1ECE54528;
  if (!qword_1ECE54528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54528);
  }

  return result;
}

unint64_t sub_1DF79B920()
{
  result = qword_1ECE54530;
  if (!qword_1ECE54530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54530);
  }

  return result;
}

unint64_t sub_1DF79B978()
{
  result = qword_1ECE54538;
  if (!qword_1ECE54538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54538);
  }

  return result;
}

unint64_t sub_1DF79B9D0()
{
  result = qword_1ECE54540;
  if (!qword_1ECE54540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54540);
  }

  return result;
}

uint64_t sub_1DF79BA2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1DF79BA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HasValueComparisonOperator(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OneOfComparisonOperator(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ComparableComparisonOperator(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StringComparisonOperator(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF79BE2C()
{
  result = qword_1ECE54548;
  if (!qword_1ECE54548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54548);
  }

  return result;
}

unint64_t sub_1DF79BE84()
{
  result = qword_1EE1737A8;
  if (!qword_1EE1737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1737A8);
  }

  return result;
}

unint64_t sub_1DF79BEDC()
{
  result = qword_1EE1737B0;
  if (!qword_1EE1737B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1737B0);
  }

  return result;
}

BOOL sub_1DF79BF58(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, sizeof(__dst));
  v6 = *v3;
  v7 = *(*v3 + 40);
  memcpy(v23, a2, 0xB8uLL);
  sub_1DF7AD9E4();
  ParameterSchema.hash(into:)(v21);
  v8 = sub_1DF7ADA24();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v14 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      memcpy(v23, __dst, 0xB8uLL);
      __src[0] = *v3;
      sub_1DF767124(v23, v21);
      sub_1DF79C630(v23, v10, isUniquelyReferenced_nonNull_native);
      *v3 = __src[0];
      memcpy(a1, __dst, 0xB8uLL);
      return v11 == 0;
    }

    v12 = *(v6 + 48) + 184 * v10;
    memcpy(v21, v12, sizeof(v21));
    memcpy(__src, v12, sizeof(__src));
    sub_1DF767124(v21, v19);
    static ParameterSchema.== infix(_:_:)();
    LOBYTE(v12) = v13;
    memcpy(v23, __src, 0xB8uLL);
    sub_1DF767908(v23);
    if (v12)
    {
      break;
    }

    v8 = v10 + 1;
  }

  memcpy(v19, __dst, sizeof(v19));
  sub_1DF767908(v19);
  v16 = (*(v6 + 48) + 184 * v10);
  memcpy(__src, v16, sizeof(__src));
  memcpy(a1, v16, 0xB8uLL);
  sub_1DF767124(__src, v18);
  return v11 == 0;
}

uint64_t sub_1DF79C144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DF7AD354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54550, &qword_1DF7B74E8);
  result = sub_1DF7AD694();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_38:

    *v2 = v12;
    return result;
  }

  v60 = v8;
  v61 = v4;
  v57 = v2;
  v58 = v5;
  v13 = 0;
  v14 = *(v9 + 56);
  v59 = (v9 + 56);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v62 = (v5 + 8);
  v63 = v5 + 16;
  v64 = v18;
  v65 = result + 56;
  v66 = result;
  v67 = v9;
  if (!v17)
  {
LABEL_9:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v13 >= v18)
      {
        break;
      }

      v21 = v59[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v70 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v56 = 1 << *(v9 + 32);
    if (v56 >= 64)
    {
      sub_1DF79B598(0, (v56 + 63) >> 6, v59);
    }

    else
    {
      *v59 = -1 << v56;
    }

    v2 = v57;
    *(v9 + 16) = 0;
    goto LABEL_38;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v17));
    v70 = (v17 - 1) & v17;
LABEL_14:
    v22 = *(v9 + 48) + 184 * (v19 | (v13 << 6));
    v23 = *v22;
    v24 = *(v22 + 8);
    memcpy(__dst, (v22 + 16), sizeof(__dst));
    v82[0] = *(v22 + 105);
    *(v82 + 3) = *(v22 + 108);
    v26 = *(v22 + 112);
    v25 = *(v22 + 120);
    v27 = *(v22 + 136);
    v71 = *(v22 + 128);
    v72 = v25;
    v28 = *(v22 + 144);
    v75 = *(v22 + 152);
    v76 = v27;
    v29 = *(v22 + 168);
    v74 = *(v22 + 160);
    v78 = v29;
    v79 = v28;
    v77 = *(v22 + 176);
    v30 = *(v12 + 40);
    sub_1DF7AD9E4();
    v68 = v24;
    v69 = v23;
    sub_1DF7AD404();
    memcpy(v80, __dst, sizeof(v80));
    ValueType.hash(into:)(&v81);
    v73 = v26;
    if (v26)
    {
      sub_1DF7ADA04();
      MEMORY[0x1E12DEC80](*(v26 + 16));
      v31 = *(v26 + 16);
      v32 = v62;
      v33 = v60;
      v34 = v61;
      if (v31)
      {
        v35 = v73 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v36 = *(v58 + 72);
        v37 = *(v58 + 16);
        do
        {
          v37(v33, v35, v34);
          sub_1DF79CF64();
          sub_1DF7AD394();
          (*v32)(v33, v34);
          v35 += v36;
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      sub_1DF7ADA04();
    }

    v39 = v71;
    v38 = v72;
    sub_1DF7AD404();
    if (v79)
    {
      sub_1DF7ADA04();
      MEMORY[0x1E12DEC80](0);
      sub_1DF7AD404();
      sub_1DF7AD404();
    }

    else
    {
      sub_1DF7ADA04();
    }

    v40 = v65;
    v12 = v66;
    sub_1DF7AD404();
    result = sub_1DF7ADA24();
    v41 = -1 << *(v12 + 32);
    v42 = result & ~v41;
    v43 = v42 >> 6;
    v9 = v67;
    if (((-1 << v42) & ~*(v40 + 8 * (v42 >> 6))) == 0)
    {
      break;
    }

    v44 = __clz(__rbit64((-1 << v42) & ~*(v40 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v49 = *(v12 + 48) + 184 * v44;
    v50 = v68;
    *v49 = v69;
    *(v49 + 8) = v50;
    result = memcpy((v49 + 16), __dst, 0x59uLL);
    *(v49 + 105) = v82[0];
    *(v49 + 108) = *(v82 + 3);
    *(v49 + 112) = v73;
    *(v49 + 120) = v38;
    v51 = v76;
    *(v49 + 128) = v39;
    *(v49 + 136) = v51;
    v53 = v74;
    v52 = v75;
    *(v49 + 144) = v79;
    *(v49 + 152) = v52;
    v54 = v77;
    v55 = v78;
    *(v49 + 160) = v53;
    *(v49 + 168) = v55;
    *(v49 + 176) = v54;
    ++*(v12 + 16);
    v18 = v64;
    v17 = v70;
    if (!v70)
    {
      goto LABEL_9;
    }
  }

  v45 = 0;
  v46 = (63 - v41) >> 6;
  while (++v43 != v46 || (v45 & 1) == 0)
  {
    v47 = v43 == v46;
    if (v43 == v46)
    {
      v43 = 0;
    }

    v45 |= v47;
    v48 = *(v40 + 8 * v43);
    if (v48 != -1)
    {
      v44 = __clz(__rbit64(~v48)) + (v43 << 6);
      goto LABEL_32;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DF79C630(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DF79C144(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DF79C984(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      memcpy(v23, __src, sizeof(v23));
      sub_1DF7AD9E4();
      ParameterSchema.hash(into:)(v22);
      v17 = sub_1DF7ADA24();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = *(v15 + 48) + 184 * a2;
        memcpy(v22, v19, sizeof(v22));
        memcpy(v21, v19, sizeof(v21));
        sub_1DF767124(v22, v23);
        static ParameterSchema.== infix(_:_:)();
        LOBYTE(v19) = v20;
        memcpy(v23, v21, sizeof(v23));
        sub_1DF767908(v23);
        if (v19)
        {
          goto LABEL_15;
        }

        v17 = a2 + 1;
      }
    }

    sub_1DF79C7FC();
  }

LABEL_7:
  v10 = *v4;
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v10 + 48) + 184 * a2), __dst, 0xB8uLL);
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_1DF7AD974();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1DF79C7FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54550, &qword_1DF7B74E8);
  v2 = *v0;
  v3 = sub_1DF7AD684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DF767124(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 184 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0xB8uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0xB8uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF79C984(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DF7AD354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54550, &qword_1DF7B74E8);
  result = sub_1DF7AD694();
  v12 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v4;
    v39 = v2;
    v40 = v5;
    v13 = 0;
    v14 = *(v9 + 56);
    v42 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v41 = (v15 + 63) >> 6;
    v45 = (v5 + 8);
    v46 = v5 + 16;
    v48 = result;
    v49 = v9;
    v47 = result + 56;
    if (v17)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v17));
        v50 = (v17 - 1) & v17;
LABEL_14:
        memcpy(v53, (*(v9 + 48) + 184 * (v18 | (v13 << 6))), 0xB8uLL);
        v21 = v12[5];
        sub_1DF7AD9E4();
        v22 = v53[14];
        sub_1DF767124(v53, v51);
        sub_1DF7AD404();
        memcpy(v51, &v53[2], 0x59uLL);
        ValueType.hash(into:)(&v52);
        if (v22)
        {
          sub_1DF7ADA04();
          MEMORY[0x1E12DEC80](*(v22 + 16));
          v23 = *(v22 + 16);
          v25 = v44;
          v24 = v45;
          v26 = v43;
          if (v23)
          {
            v27 = v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
            v28 = *(v40 + 72);
            v29 = *(v40 + 16);
            do
            {
              v29(v26, v27, v25);
              sub_1DF79CF64();
              sub_1DF7AD394();
              (*v24)(v26, v25);
              v27 += v28;
              --v23;
            }

            while (v23);
          }
        }

        else
        {
          sub_1DF7ADA04();
        }

        v30 = v53[18];
        sub_1DF7AD404();
        sub_1DF7ADA04();
        if (v30)
        {
          MEMORY[0x1E12DEC80](0);
          sub_1DF7AD404();
          sub_1DF7AD404();
        }

        sub_1DF7AD404();
        result = sub_1DF7ADA24();
        v12 = v48;
        v31 = -1 << *(v48 + 32);
        v32 = result & ~v31;
        v33 = v32 >> 6;
        v9 = v49;
        if (((-1 << v32) & ~*(v47 + 8 * (v32 >> 6))) == 0)
        {
          break;
        }

        v34 = __clz(__rbit64((-1 << v32) & ~*(v47 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
        *(v47 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        result = memcpy((v12[6] + 184 * v34), v53, 0xB8uLL);
        ++v12[2];
        v17 = v50;
        if (!v50)
        {
          goto LABEL_9;
        }
      }

      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v47 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v13;
      while (1)
      {
        v13 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v13 >= v41)
        {

          v2 = v39;
          goto LABEL_35;
        }

        v20 = *(v42 + 8 * v13);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v50 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1DF79CDC8(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v19 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 184 * (v17 | (v16 << 6)));
      memcpy(__dst, v18, 0xB8uLL);
      memmove(v11, v18, 0xB8uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 184;
      result = sub_1DF767124(__dst, v20);
      v12 = v15;
      v13 = v16;
    }

    sub_1DF767124(__dst, v20);
    v13 = v16;
LABEL_19:
    v7 = v19;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1DF79CF64()
{
  result = qword_1ECE53D88;
  if (!qword_1ECE53D88)
  {
    sub_1DF7AD354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53D88);
  }

  return result;
}

uint64_t UtteranceSchema.phrase.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static UtteranceSchema.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_1DF79D02C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657361726870 && a2 == 0xE600000000000000)
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

uint64_t sub_1DF79D0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF79D02C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF79D0E4(uint64_t a1)
{
  v2 = sub_1DF79D288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79D120(uint64_t a1)
{
  v2 = sub_1DF79D288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UtteranceSchema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54558, &qword_1DF7B74F0);
  v5 = OUTLINED_FUNCTION_0_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF79D288();
  sub_1DF7ADA64();
  sub_1DF7AD8D4();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1DF79D288()
{
  result = qword_1EE173328;
  if (!qword_1EE173328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173328);
  }

  return result;
}

uint64_t UtteranceSchema.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DF7AD404();
}

uint64_t UtteranceSchema.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF7AD9E4();
  sub_1DF7AD404();
  return sub_1DF7ADA24();
}

uint64_t UtteranceSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54560, &qword_1DF7B74F8);
  v7 = OUTLINED_FUNCTION_0_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF79D288();
  sub_1DF7ADA44();
  if (!v2)
  {
    v15 = sub_1DF7AD814();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DF79D4E0()
{
  result = qword_1ECE54568;
  if (!qword_1ECE54568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54568);
  }

  return result;
}

unint64_t sub_1DF79D538()
{
  result = qword_1ECE54570;
  if (!qword_1ECE54570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54570);
  }

  return result;
}

unint64_t sub_1DF79D590()
{
  result = qword_1ECE54578;
  if (!qword_1ECE54578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54578);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UtteranceSchema.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DF79D6A4()
{
  result = qword_1ECE54580[0];
  if (!qword_1ECE54580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE54580);
  }

  return result;
}

unint64_t sub_1DF79D6FC()
{
  result = qword_1EE173318;
  if (!qword_1EE173318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173318);
  }

  return result;
}

unint64_t sub_1DF79D754()
{
  result = qword_1EE173320;
  if (!qword_1EE173320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173320);
  }

  return result;
}

void static UtteranceBuilder.buildBlock(_:)(uint64_t a1)
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

        sub_1DF77B940(isUniquelyReferenced_nonNull_native, v10, 1, v3);
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

uint64_t static UtteranceBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static UtteranceBuilder.buildExpression(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B08, &unk_1DF7AE8D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DF7AE850;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

_BYTE *storeEnumTagSinglePayload for UtteranceBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DF79DA14(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF79DAA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1835365481 && a2 == 0xE400000000000000)
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

uint64_t sub_1DF79DB48(uint64_t a1, uint64_t a2)
{
  sub_1DF7AD9E4();
  v3 = *(a2 + 16);
  sub_1DF77A020();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF79DB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1DF79DAA8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DF79DBE4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DF7871A8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DF79DC14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF79DC68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DF79DCBC()
{
  OUTLINED_FUNCTION_2_13();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 88));
  return v0;
}

uint64_t sub_1DF79DD24()
{
  sub_1DF79DCBC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF79DDDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = a3;
  v17[0] = *(*v4 + 80);
  type metadata accessor for ClassBox.CodingKeys();
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  v6 = sub_1DF7AD914();
  OUTLINED_FUNCTION_0_11();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7ADA64();
  v15 = *(*v4 + 88);
  sub_1DF7AD904();
  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1DF79DF54(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1DF79DFAC(a1, a2);
  return v7;
}

uint64_t sub_1DF79DFAC(uint64_t *a1, uint64_t a2)
{
  v29 = a2;
  OUTLINED_FUNCTION_2_13();
  v31 = v4;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_11();
  v27 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v26 - v11;
  type metadata accessor for ClassBox.CodingKeys();
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  v12 = sub_1DF7AD864();
  OUTLINED_FUNCTION_0_11();
  v28 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v32;
  sub_1DF7ADA44();
  if (v20)
  {
    v23 = *(*v2 + 48);
    v24 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v28;
    v22 = v30;
    sub_1DF7AD844();
    (*(v21 + 8))(v18, v12);
    (*(v27 + 32))(v2 + *(*v2 + 88), v22, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1DF79E24C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = a2 - 16;
  v5 = *(a2 - 16);
  result = sub_1DF79DF54(a1, *(v6 + 8));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DF79E2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 88);
  v4 = a2 + *(*a2 + 88);
  v5 = *(v2 + 80);
  return sub_1DF7AD3A4() & 1;
}

uint64_t sub_1DF79E314()
{
  OUTLINED_FUNCTION_2_13();
  v3 = *(v2 + 80);
  v4 = v0 + *(v1 + 88);
  return sub_1DF7AD394();
}

uint64_t sub_1DF79E360()
{
  sub_1DF7AD9E4();
  sub_1DF79E314();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF79E3A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  return sub_1DF79E360();
}

uint64_t sub_1DF79E3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  return sub_1DF79E314();
}

uint64_t sub_1DF79E3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DF7AD9E4();
  v5 = *v3;
  sub_1DF79E314();
  return sub_1DF7ADA24();
}

_BYTE *sub_1DF79E490(_BYTE *result, int a2, int a3)
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

uint64_t static SchemaConstraint.Behavior.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1DF7AD934();
}

uint64_t sub_1DF79E5F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_1DF79E670(uint64_t a1)
{
  v2 = sub_1DF7700D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79E6AC(uint64_t a1)
{
  v2 = sub_1DF7700D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF79E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF79E5F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF79E714(uint64_t a1)
{
  v2 = sub_1DF770070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79E750(uint64_t a1)
{
  v2 = sub_1DF770070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF79E78C(uint64_t a1)
{
  v2 = sub_1DF79EABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79E7C8(uint64_t a1)
{
  v2 = sub_1DF79EABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SchemaConstraint.Behavior.encode(to:)()
{
  OUTLINED_FUNCTION_14_0();
  v38 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54688, &qword_1DF7B7A50);
  v5 = OUTLINED_FUNCTION_4(v4);
  v36 = v6;
  v37 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54690, &qword_1DF7B7A58);
  v13 = OUTLINED_FUNCTION_4(v12);
  v33 = v14;
  v34 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v32 = &v31 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54698, &qword_1DF7B7A60);
  OUTLINED_FUNCTION_4(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v31 - v25;
  v27 = v0[1];
  v35 = *v0;
  v28 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DF7700D8();
  sub_1DF7ADA64();
  if (v27)
  {
    sub_1DF770070();
    sub_1DF7AD874();
    v29 = v37;
    sub_1DF7AD8D4();
    (*(v36 + 8))(v11, v29);
  }

  else
  {
    sub_1DF79EABC();
    v30 = v32;
    sub_1DF7AD874();
    (*(v33 + 8))(v30, v34);
  }

  (*(v21 + 8))(v26, v19);
  OUTLINED_FUNCTION_13_2();
}

unint64_t sub_1DF79EABC()
{
  result = qword_1ECE546A0;
  if (!qword_1ECE546A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546A0);
  }

  return result;
}

uint64_t SchemaConstraint.requirement.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SchemaConstraint.requirement.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SchemaConstraint.condition.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SchemaConstraint.condition.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SchemaConstraint.otherwise.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t SchemaConstraint.otherwise.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

__n128 SchemaConstraint.init(_:if:otherwise:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  return result;
}

void SchemaConstraint.init(_:if:otherwise:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = [a1 predicateFormat];
  v10 = sub_1DF7AD3C4();
  v12 = v11;

  if (a2)
  {
    v13 = [a2 predicateFormat];
    v14 = sub_1DF7AD3C4();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  *a4 = v10;
  a4[1] = v12;
  a4[2] = v14;
  a4[3] = v16;
  a4[4] = v7;
  a4[5] = v8;
}

uint64_t static SchemaConstraint.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1DF7AD934() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v3)
  {
    if (v6)
    {
      v11 = v2 == v7 && v3 == v6;
      if (v11 || (sub_1DF7AD934() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v12 = 0;
    return v12 & 1;
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_13:
  v15[0] = v4;
  v15[1] = v5;
  v14[0] = v9;
  v14[1] = v8;

  v12 = static SchemaConstraint.Behavior.== infix(_:_:)(v15, v14);

  return v12 & 1;
}

uint64_t sub_1DF79EE64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65726975716572 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1DF7AD934() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736977726568746FLL && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DF7AD934();

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

uint64_t sub_1DF79EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF79EE64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF79EFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF79EF84();
  *a1 = result;
  return result;
}

uint64_t sub_1DF79EFDC(uint64_t a1)
{
  v2 = sub_1DF76D570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79F018(uint64_t a1)
{
  v2 = sub_1DF76D570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SchemaConstraint.encode(to:)()
{
  OUTLINED_FUNCTION_14_0();
  v25 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE546C0, &qword_1DF7B7A88);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  v23 = v0[3];
  v24 = v14;
  v15 = v0[4];
  v21 = v0[5];
  v22 = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DF76D570();
  sub_1DF7ADA64();
  LOBYTE(v26) = 0;
  v17 = v25;
  sub_1DF7AD8D4();
  if (!v17)
  {
    v18 = v21;
    v19 = v22;
    LOBYTE(v26) = 1;
    sub_1DF7AD884();
    v26 = v19;
    v27 = v18;
    sub_1DF79F7E4();

    sub_1DF7AD904();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_13_2();
}

uint64_t SchemaConstraint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DF7AD404();
  if (!v4)
  {
    sub_1DF7ADA04();
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E12DEC80](1);
  }

  sub_1DF7ADA04();
  sub_1DF7AD404();
  if (!v6)
  {
    return MEMORY[0x1E12DEC80](1);
  }

LABEL_3:

  return sub_1DF7AD404();
}

uint64_t SchemaConstraint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DF7AD9E4();
  sub_1DF7AD404();
  if (!v4)
  {
    sub_1DF7ADA04();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1E12DEC80](1);
    return sub_1DF7ADA24();
  }

  sub_1DF7ADA04();
  sub_1DF7AD404();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DF7AD404();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF79F398()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  sub_1DF7AD9E4();
  SchemaConstraint.hash(into:)();
  return sub_1DF7ADA24();
}

uint64_t static SchemaConstraintBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1DF766CC8(v2, v19);
    v4 = v20;
    v5 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v5 + 8))(v16, v4, v5);
    v6 = v16[0];
    v7 = v16[1];
    v14 = v18;
    v15 = v17;
    __swift_destroy_boxed_opaque_existential_1(v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v3 + 16);
      sub_1DF77BA50();
      v3 = v11;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1DF77BA50();
      v3 = v12;
    }

    *(v3 + 16) = v8 + 1;
    v9 = v3 + 48 * v8;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    *(v9 + 48) = v15;
    *(v9 + 64) = v14;
    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1DF79F524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v4;
}

double Discoverable.init(if:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

double Discoverable.init(if:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 predicateFormat];
  v5 = sub_1DF7AD3C4();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t _s16AppIntentSchemas12DiscoverableV10constraintAA16SchemaConstraintVvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

__n128 _s16AppIntentSchemas12DiscoverableV10constraintAA16SchemaConstraintVvs_0(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];
  v5 = v1->n128_i64[1];
  v6 = v1[1].n128_i64[1];
  v7 = v1[2].n128_i64[1];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v9 = a1[2];
  v1[1] = result;
  v1[2] = v9;
  return result;
}

uint64_t Enabled.init(if:when:otherwise:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void Enabled.init(if:when:otherwise:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = [a1 predicateFormat];
  v11 = sub_1DF7AD3C4();
  v13 = v12;

  if (a2)
  {
    v14 = [a2 predicateFormat];
    v15 = sub_1DF7AD3C4();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  *a5 = v11;
  a5[1] = v13;
  a5[2] = v15;
  a5[3] = v17;
  a5[4] = a3;
  a5[5] = a4;
}

unint64_t sub_1DF79F7E4()
{
  result = qword_1ECE546C8;
  if (!qword_1ECE546C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546C8);
  }

  return result;
}

unint64_t sub_1DF79F83C()
{
  result = qword_1ECE546D8;
  if (!qword_1ECE546D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546D8);
  }

  return result;
}

uint64_t sub_1DF79F890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF79F8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1DF79F934(void *result, int a2)
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

uint64_t sub_1DF79F980(uint64_t a1, int a2)
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

uint64_t sub_1DF79F9C0(uint64_t result, int a2, int a3)
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

_BYTE *_s16AppIntentSchemas23SchemaConstraintBuilderOwst_0_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DF79FAF8()
{
  result = qword_1ECE546E0;
  if (!qword_1ECE546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546E0);
  }

  return result;
}

unint64_t sub_1DF79FB50()
{
  result = qword_1ECE546E8;
  if (!qword_1ECE546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546E8);
  }

  return result;
}

unint64_t sub_1DF79FBA8()
{
  result = qword_1ECE546F0;
  if (!qword_1ECE546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546F0);
  }

  return result;
}

unint64_t sub_1DF79FC00()
{
  result = qword_1EE1738A0;
  if (!qword_1EE1738A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1738A0);
  }

  return result;
}

unint64_t sub_1DF79FC58()
{
  result = qword_1EE1738A8;
  if (!qword_1EE1738A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1738A8);
  }

  return result;
}

unint64_t sub_1DF79FCB0()
{
  result = qword_1EE173860;
  if (!qword_1EE173860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173860);
  }

  return result;
}

unint64_t sub_1DF79FD08()
{
  result = qword_1EE173868;
  if (!qword_1EE173868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173868);
  }

  return result;
}

unint64_t sub_1DF79FD60()
{
  result = qword_1EE173870;
  if (!qword_1EE173870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173870);
  }

  return result;
}

unint64_t sub_1DF79FDB8()
{
  result = qword_1EE173878;
  if (!qword_1EE173878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173878);
  }

  return result;
}

unint64_t sub_1DF79FE10()
{
  result = qword_1EE173888;
  if (!qword_1EE173888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173888);
  }

  return result;
}

unint64_t sub_1DF79FE68()
{
  result = qword_1EE173890;
  if (!qword_1EE173890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173890);
  }

  return result;
}

unint64_t EnumerationType.rawValue.getter()
{
  result = 0x704F65676E616863;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0x7265704F6F646E75;
      break;
    case 6:
      result = 0x6542657A69736572;
      break;
    case 7:
      result = 0x616865426D6F6F7ALL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DF7A0018()
{
  result = qword_1ECE546F8;
  if (!qword_1ECE546F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE546F8);
  }

  return result;
}

unint64_t sub_1DF7A0084@<X0>(unint64_t *a1@<X8>)
{
  result = EnumerationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DF7A00B0()
{
  result = qword_1ECE54700;
  if (!qword_1ECE54700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE54708, &qword_1DF7B8188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54700);
  }

  return result;
}

uint64_t sub_1DF7A0174(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DF787C50();
}

_BYTE *storeEnumTagSinglePayload for EnumerationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DF7A025C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v53 = a1;
  v54 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_4_10();
  v55 = v13;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v57 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_21();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v23 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_10();
  v51 = v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = OUTLINED_FUNCTION_4(v25);
  v45 = v27;
  v46 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v42 - v31;
  v33 = sub_1DF7AD5F4();
  if (!v33)
  {
    return sub_1DF7AD564();
  }

  v56 = v33;
  v60 = sub_1DF7AD744();
  v47 = sub_1DF7AD754();
  sub_1DF7AD724();
  result = sub_1DF7AD5E4();
  if ((v56 & 0x8000000000000000) == 0)
  {
    v42 = v11;
    v43 = a5;
    v35 = 0;
    v48 = (v57 + 16);
    v49 = v57 + 8;
    v50 = v8;
    while (!__OFADD__(v35, 1))
    {
      v57 = v35 + 1;
      v36 = sub_1DF7AD614();
      (*v48)(v22);
      v36(v59, 0);
      v37 = v58;
      v53(v22, v55);
      if (v37)
      {
        v40 = OUTLINED_FUNCTION_2_14();
        v41(v40);
        (*(v45 + 8))(v32, v46);

        return (*(v42 + 32))(v44, v55, v43);
      }

      v58 = 0;
      v38 = OUTLINED_FUNCTION_2_14();
      v39(v38);
      sub_1DF7AD734();
      result = sub_1DF7AD604();
      ++v35;
      if (v57 == v56)
      {
        (*(v45 + 8))(v32, v46);
        return v60;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SwitchCase.unsafeBitCast(to:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, __src, 0x59uLL);
  v15 = *v4;
  v7 = *(a2 + 32);
  v13[1] = *(a2 + 16);
  v13[2] = v7;
  v14 = __dst;
  v8 = sub_1DF7AD5B4();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_1DF7A025C(sub_1DF7A087C, v13, v8, &type metadata for Value, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  *a3 = v11;
  return sub_1DF766CC8((v4 + 1), (a3 + 1));
}

void sub_1DF7A0758(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13);
  memcpy(__dst, a2, 0x59uLL);
  sub_1DF770608(a2, v15);
  Value.init<A>(_:type:)(v13, __dst, a3, a4, a5, a6);
}

uint64_t SwitchCase.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v19 = *(a2 + 16);
  v20 = v5;
  v22[0] = v19;
  v22[1] = v5;
  type metadata accessor for SwitchCase.CodingKeys();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v6 = sub_1DF7AD914();
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7ADA64();
  *&v22[0] = *v3;
  v24 = 0;
  sub_1DF7AD5B4();
  v23 = v20;
  swift_getWitnessTable();
  v15 = v21;
  sub_1DF7AD904();
  if (!v15)
  {
    v16 = v3[4];
    v17 = v3[5];
    __swift_project_boxed_opaque_existential_1(v3 + 1, v16);
    sub_1DF7863C4(v16, v17, v22);
    v24 = 1;
    sub_1DF79B840();
    sub_1DF7AD904();
    sub_1DF766F98(v22);
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1DF7A0AB0()
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

uint64_t sub_1DF7A0B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DF7A0B7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DF7A0BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DF7A0C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DF7A0CC8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  result = sub_1DF7A0AB0();
  *a3 = result;
  return result;
}

uint64_t sub_1DF7A0D04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  result = sub_1DF77143C(*v2);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1DF7A0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1DF7A0B04(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a4 = result;
  return result;
}

uint64_t sub_1DF7A0D70(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_1DF77AAFC();
}

uint64_t sub_1DF7A0D9C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1DF77C5A0();
  *a2 = result;
  return result;
}

uint64_t sub_1DF7A0DD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF7A0E24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static SwitchCase.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (sub_1DF7AD5C4())
  {
    v6 = a1[4];
    v7 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v6);
    sub_1DF7863C4(v6, v7, v13);
    v8 = a2[4];
    v9 = a2[5];
    __swift_project_boxed_opaque_existential_1(a2 + 1, v8);
    sub_1DF7863C4(v8, v9, v12);
    v10 = sub_1DF786A9C(v13, v12);
    sub_1DF766F98(v12);
    sub_1DF766F98(v13);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1DF7A0F50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 40);
  return static SwitchCase.== infix(_:_:)(a1, a2);
}

uint64_t Case.init(_:summary:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_1DF7A1190(a3, a3);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v17 = *(a3 - 8);
  v11 = *(v17 + 72);
  v12 = *(v17 + 80);
  swift_allocObject();
  v13 = sub_1DF7AD544();
  (*(v17 + 16))(v14, a1, a3);
  *a4 = sub_1DF7840B4(v13);
  a2();
  v15 = *(v17 + 8);

  return v15(a1, a3);
}

uint64_t sub_1DF7A10D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v4 = type metadata accessor for SwitchCase();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t sub_1DF7A1190(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54810, &unk_1DF7B8558);
  }

  else
  {

    return sub_1DF7AD924();
  }
}

uint64_t sub_1DF7A11FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF7A1300@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  v6 = __dst[4];
  v78 = __dst[4];
  v7 = __dst[2];
  v8 = __dst[3];
  sub_1DF783BD0(__dst, v76);
  sub_1DF783BD0(__dst, v76);
  sub_1DF766BF0(&v78, v76, &qword_1ECE54450, &unk_1DF7B8BE0);

  sub_1DF7AD6B4();

  v76[0] = 543516756;
  v76[1] = 0xE400000000000000;
  v9 = sub_1DF7AD3E4();
  MEMORY[0x1E12DE6C0](v9);

  MEMORY[0x1E12DE6C0](0x61647075206F7420, 0xEA00000000006574);
  v80[0] = 0x746567726174;
  v80[1] = 0xE600000000000000;
  memcpy(&v80[2], __srca, 0x58uLL);
  LOBYTE(v80[13]) = 6;
  *(&v80[13] + 1) = v76[0];
  HIDWORD(v80[13]) = *(v76 + 3);
  v80[14] = 0;
  v80[15] = v7;
  memset(&v80[17], 0, 32);
  v80[16] = v8;
  v80[21] = v76[0];
  v80[22] = v76[1];
  *&v75[16] = 0xE000000000000000;
  MEMORY[0x1E12DE680](9);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DF77B5B0();
  *v75 = v11;
  v76[0] = 0x20657461647055;
  v76[1] = 0xE700000000000000;
  v12 = sub_1DF77C990();
  v13 = MEMORY[0x1E69E6158];
  v14 = OUTLINED_FUNCTION_16_3();
  MEMORY[0x1E12DE6C0](v14);

  v76[0] = 31524;
  v76[1] = 0xE200000000000000;
  MEMORY[0x1E12DE6C0](v80[0], v80[1]);
  MEMORY[0x1E12DE6C0](125, 0xE100000000000000);
  MEMORY[0x1E12DE6C0](v76[0], v76[1]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DF7AE850;
  memcpy((v15 + 32), v80, 0xB8uLL);
  sub_1DF767124(v80, v76);
  sub_1DF77C9E4(v15);
  v76[0] = 0;
  v76[1] = 0xE000000000000000;
  *v73 = 37;
  *&v73[8] = 0xE100000000000000;
  v74[0] = 9509;
  v74[1] = 0xE200000000000000;
  v59 = v12;
  v60 = v12;
  v57 = v13;
  v58 = v12;
  v16 = OUTLINED_FUNCTION_16_3();
  MEMORY[0x1E12DE6C0](v16);

  v17 = *v75;
  v69 = *&v75[16];
  v71 = *&v75[8];
  v18 = *(v6 + 16);

  v20 = 0;
  v21 = 0;
  v22 = (v10 + 4);
  v23 = v6 + 32;
  v67 = v23;
LABEL_2:
  v24 = (v23 + 328 * v21);
  while (v18 != v21)
  {
    if (v21 >= v18)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    result = memcpy(v76, v24, sizeof(v76));
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_39;
    }

    if (v76[17])
    {
      memcpy(v73, v76, sizeof(v73));
      sub_1DF77B7A0(v76, v75);
      sub_1DF7A44DC(v73, __dst, v74);
      memcpy(v75, v73, sizeof(v75));
      result = sub_1DF7862E4(v75);
      if (!v20)
      {
        v26 = v10[3];
        if (((v26 >> 1) + 0x4000000000000000) >= 0)
        {
          v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
          if (v27 <= 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = v27;
          }

          v29 = swift_allocObject();
          v30 = (_swift_stdlib_malloc_size(v29) - 32) / 184;
          v29[2] = v28;
          v29[3] = 2 * v30;
          v31 = (v29 + 4);
          v32 = v10[3];
          v33 = v32 >> 1;
          if (v10[2])
          {
            if (v29 != v10 || v31 >= &v10[23 * v33 + 4])
            {
              v64 = v30;
              memmove(v29 + 4, v10 + 4, 184 * v33);
              v30 = v64;
            }

            v10[2] = 0;
          }

          v22 = (v31 + 184 * v33);
          v20 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - (v32 >> 1);

          v10 = v29;
          goto LABEL_22;
        }

LABEL_43:
        __break(1u);
        return result;
      }

LABEL_22:
      v23 = v67;
      v35 = __OFSUB__(v20--, 1);
      if (!v35)
      {
        result = memcpy(v22, v74, 0xB8uLL);
        v22 += 184;
        v21 = v25;
        goto LABEL_2;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    ++v21;
    v24 += 328;
  }

  v36 = v10[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v35 = __OFSUB__(v37, v20);
    v38 = v37 - v20;
    if (v35)
    {
      goto LABEL_42;
    }

    v10[2] = v38;
  }

  sub_1DF767834(&v78, &qword_1ECE54450, &unk_1DF7B8BE0);
  v40 = *v3;
  v39 = v3[1];
  v41 = v3[2];
  v42 = v3[3];
  v43 = v3[5];
  v66 = v3[4];
  v65 = sub_1DF76A5A8();
  v44 = swift_allocObject();
  v44[2] = v17;
  v44[3] = v71;
  v44[4] = v69;
  v44[5] = v10;
  v68 = v41;
  if (v17)
  {
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v76[0] = v17;

  sub_1DF77C9E4(v45);
  v72 = v76[0];
  v62 = v3[7];
  *v61 = *(v3 + 48);
  v61[4] = *(v3 + 64);
  v46 = v3[29];
  v47 = v3[15];
  memcpy(v76, v3 + 16, 0x59uLL);
  v48 = v3[28];
  v70 = __dst[7];
  v49 = v3[33];
  v63 = v3[32];
  v50 = v3[30];
  *a2 = v40;
  *(a2 + 8) = v39;
  *(a2 + 16) = v68;
  *(a2 + 24) = v42;
  v51 = v48;
  *(a2 + 32) = v66;
  *(a2 + 40) = v43;
  v52 = *(v47 + 16);

  sub_1DF766BF0(v76, v75, &qword_1ECE54828, &qword_1DF7B8578);
  v53 = v47 + 32;

  for (i = 0; v52 != i; ++i)
  {
    if (i >= *(v47 + 16))
    {
      goto LABEL_40;
    }

    sub_1DF7729F4(v53, v75);
    *v73 = *v75;
    *&v73[16] = *&v75[16];
    OUTLINED_FUNCTION_10_6();
    if (v55)
    {
      sub_1DF767908(v80);
      sub_1DF767834(&v78, &qword_1ECE54450, &unk_1DF7B8BE0);
      sub_1DF78E0A4(__dst);
      v56 = 1;
      goto LABEL_37;
    }

    result = sub_1DF773158(v73);
    v53 += 40;
  }

  sub_1DF767908(v80);
  sub_1DF767834(&v78, &qword_1ECE54450, &unk_1DF7B8BE0);
  sub_1DF78E0A4(__dst);
  v56 = v61[0];
LABEL_37:
  OUTLINED_FUNCTION_18_1(v56, v57, v58, v59, v60, *v61, v61[4], v62);
  *(a2 + 72) = v44;
  *(a2 + 80) = *v75;
  *(a2 + 96) = &type metadata for Summary;
  *(a2 + 104) = v65;
  *(a2 + 232) = v46;
  *(a2 + 112) = v72;
  *(a2 + 120) = v47;
  result = memcpy((a2 + 128), v76, 0x59uLL);
  *(a2 + 224) = v51;
  *(a2 + 248) = v70;
  *(a2 + 256) = v63;
  *(a2 + 264) = v49;
  *(a2 + 240) = v50;
  return result;
}

uint64_t static IntentSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1DF7AD934() & 1) == 0)
  {
    goto LABEL_42;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1DF7AD934() & 1) == 0)
  {
    goto LABEL_42;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (sub_1DF7AD934() & 1) == 0 || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    goto LABEL_42;
  }

  v7 = *(a1 + 64);
  v8 = *(a2 + 64);
  if (v7 == 3)
  {
    if (v8 != 3)
    {
      goto LABEL_42;
    }
  }

  else if (v7 != v8)
  {
    goto LABEL_42;
  }

  sub_1DF766BF0(a1 + 72, __src, &qword_1ECE53BA8, &qword_1DF7B1710);
  v9 = *&__src[24];
  if (*&__src[24])
  {
    v10 = *&__src[32];
    __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
    sub_1DF7863C4(v9, v10, v54);
    __swift_destroy_boxed_opaque_existential_1(__src);
  }

  else
  {
    sub_1DF767834(__src, &qword_1ECE53BA8, &qword_1DF7B1710);
    memset(v54, 0, 40);
  }

  sub_1DF766BF0(a2 + 72, __src, &qword_1ECE53BA8, &qword_1DF7B1710);
  v11 = *&__src[24];
  if (*&__src[24])
  {
    v12 = *&__src[32];
    __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
    sub_1DF7863C4(v11, v12, v57);
    __swift_destroy_boxed_opaque_existential_1(__src);
  }

  else
  {
    sub_1DF767834(__src, &qword_1ECE53BA8, &qword_1DF7B1710);
    memset(v57, 0, 40);
  }

  OUTLINED_FUNCTION_20_1(v54, __src);
  OUTLINED_FUNCTION_20_1(v57, &__src[40]);
  if (*&__src[24])
  {
    sub_1DF766BF0(__src, __dst, &qword_1ECE54818, &qword_1DF7B8568);
    if (*&__src[64])
    {
      v51[0] = *&__src[40];
      v51[1] = *&__src[56];
      *&v51[2] = *&__src[72];
      v13 = sub_1DF786A9C(__dst, v51);
      sub_1DF766F98(v51);
      sub_1DF767834(v57, &qword_1ECE54818, &qword_1DF7B8568);
      sub_1DF767834(v54, &qword_1ECE54818, &qword_1DF7B8568);
      sub_1DF766F98(__dst);
      sub_1DF767834(__src, &qword_1ECE54818, &qword_1DF7B8568);
      if ((v13 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    sub_1DF767834(v57, &qword_1ECE54818, &qword_1DF7B8568);
    sub_1DF767834(v54, &qword_1ECE54818, &qword_1DF7B8568);
    sub_1DF766F98(__dst);
LABEL_40:
    v37 = &unk_1ECE54820;
    v38 = &unk_1DF7B8570;
LABEL_41:
    sub_1DF767834(__src, v37, v38);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_28_1(v57);
  OUTLINED_FUNCTION_28_1(v54);
  if (*&__src[64])
  {
    goto LABEL_40;
  }

  sub_1DF767834(__src, &qword_1ECE54818, &qword_1DF7B8568);
LABEL_34:
  if ((sub_1DF789E48(*(a1 + 112), *(a2 + 112)) & 1) == 0 || (sub_1DF78A340(*(a1 + 120), *(a2 + 120)) & 1) == 0)
  {
    goto LABEL_42;
  }

  memcpy(__dst, (a1 + 128), 0x59uLL);
  memcpy(v57, (a2 + 128), 0x59uLL);
  OUTLINED_FUNCTION_22_1(v55);
  v14 = __dst[88];
  memcpy(v54 + 7, (a2 + 128), 0x58uLL);
  v15 = BYTE8(v57[5]);
  if (__dst[88] == 255)
  {
    if (BYTE8(v57[5]) != 255)
    {
      sub_1DF766BF0(__dst, __src, &qword_1ECE54828, &qword_1DF7B8578);
      sub_1DF766BF0(v57, __src, &qword_1ECE54828, &qword_1DF7B8578);
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_22_1(__src);
    __src[88] = -1;
    OUTLINED_FUNCTION_20_1(__dst, v51);
    OUTLINED_FUNCTION_20_1(v57, v51);
    OUTLINED_FUNCTION_28_1(__src);
  }

  else
  {
    OUTLINED_FUNCTION_22_1(__src);
    __src[88] = v14;
    memcpy(v51, __src, 0x59uLL);
    if (v15 == 255)
    {
      memcpy(v50, __src, 0x59uLL);
      OUTLINED_FUNCTION_21_1(__dst, v16, v17, v18, v19, v20, v21, v22, v48[0], v48[1], v48[2], v48[3], v48[4]);
      OUTLINED_FUNCTION_21_1(v57, v23, v24, v25, v26, v27, v28, v29, v48[0], v48[1], v48[2], v48[3], v48[4]);
      OUTLINED_FUNCTION_21_1(__src, v30, v31, v32, v33, v34, v35, v36, v48[0], v48[1], v48[2], v48[3], v48[4]);
      sub_1DF77A414(v50);
LABEL_53:
      memcpy(__src, v55, 0x58uLL);
      __src[88] = v14;
      memcpy(v53, v54, 0x5FuLL);
      v53[95] = v15;
      v37 = &unk_1ECE54830;
      v38 = &unk_1DF7B8580;
      goto LABEL_41;
    }

    memcpy(v50, (a2 + 128), 0x58uLL);
    v50[88] = v15;
    OUTLINED_FUNCTION_20_1(__dst, v49);
    OUTLINED_FUNCTION_20_1(v57, v49);
    OUTLINED_FUNCTION_20_1(__src, v49);
    v41 = static ValueType.== infix(_:_:)(v51, v50);
    memcpy(v48, v50, 0x59uLL);
    sub_1DF77A414(v48);
    memcpy(v49, v51, 0x59uLL);
    sub_1DF77A414(v49);
    memcpy(v50, v55, 0x58uLL);
    v50[88] = v14;
    OUTLINED_FUNCTION_28_1(v50);
    if (!v41)
    {
      goto LABEL_42;
    }
  }

  v42 = *(a1 + 248);
  if (v42 == 3)
  {
    v42 = 1;
  }

  v43 = *(a2 + 248);
  if (v43 == 3)
  {
    if (v42 != 1)
    {
      goto LABEL_42;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_42;
  }

  if (sub_1DF78A554(*(a1 + 232), *(a2 + 232)))
  {
    v44 = *(a1 + 256) == *(a2 + 256) && *(a1 + 264) == *(a2 + 264);
    if (v44 || (sub_1DF7AD934() & 1) != 0)
    {
      v45 = *(a1 + 240);
      v46 = *(a2 + 240);
      if (v45)
      {
        if (v46)
        {
          v47 = *(a2 + 240);

          v39 = sub_1DF78DB44(v45, v46);

          return v39 & 1;
        }
      }

      else if (!v46)
      {
        v39 = 1;
        return v39 & 1;
      }
    }
  }

LABEL_42:
  v39 = 0;
  return v39 & 1;
}

uint64_t IntentSchema._title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntentSchema._description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

void IntentSchema._visibility.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 248);
  if (v2 == 3)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

uint64_t IntentSchema.domainIdentifier.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_1DF7A2168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W7>, uint64_t a7@<X8>, uint64_t *a8, char *a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, unsigned __int8 *a15, uint64_t (*a16)(void), uint64_t a17, uint64_t a18, uint64_t a19)
{
  HIDWORD(v40) = a6;
  v48 = *a8;
  v47 = *a9;
  v21 = OUTLINED_FUNCTION_25_1(a15);
  v44 = v22(v21);
  v23 = *(a19 + 16);
  v41 = a1;
  sub_1DF7AD474();
  v25 = v58;
  v24 = v59;
  v26 = sub_1DF766BF0(v60, v56, &qword_1ECE53BA8, &qword_1DF7B1710);
  v42 = a10(v26);
  v27 = a16();
  result = (*(a19 + 24))(a18, a19);
  v29 = result;
  v31 = v30;
  v32 = 0;
  *a7 = v25;
  *(a7 + 8) = v24;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  v33 = a12 + 32;
  v34 = *(a12 + 16);
  while (1)
  {
    if (v34 == v32)
    {
      OUTLINED_FUNCTION_13_4(a18);
      (*(v38 + 8))(v41, a18);
      sub_1DF767834(v60, &qword_1ECE53BA8, &qword_1DF7B1710);
      v37 = BYTE4(v40);
      goto LABEL_8;
    }

    if (v32 >= *(a12 + 16))
    {
      break;
    }

    sub_1DF7729F4(v33, v55);
    v54[0] = v55[0];
    v54[1] = v55[1];
    OUTLINED_FUNCTION_23_1();
    if (v35)
    {
      OUTLINED_FUNCTION_13_4(a18);
      (*(v36 + 8))(v41, a18);
      sub_1DF767834(v60, &qword_1ECE53BA8, &qword_1DF7B1710);
      v37 = 1;
LABEL_8:
      OUTLINED_FUNCTION_18_1(v37 & 1, v40, v41, v42, v44, v46, v47, v48);
      v39 = v56[1];
      *(a7 + 72) = v56[0];
      *(a7 + 88) = v39;
      *(a7 + 104) = v57;
      *(a7 + 112) = v45;
      *(a7 + 232) = v43;
      *(a7 + 120) = a12;
      result = memcpy((a7 + 128), a13, 0x59uLL);
      *(a7 + 224) = v27;
      *(a7 + 248) = v49;
      *(a7 + 256) = v29;
      *(a7 + 264) = v31;
      *(a7 + 240) = a14;
      return result;
    }

    ++v32;
    result = sub_1DF773158(v54);
    v33 += 40;
  }

  __break(1u);
  return result;
}

uint64_t IntentSchema.parameters(parameters:)@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1(v44);
  v5 = *v2;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  sub_1DF766BF0(v44, v42, &qword_1ECE53BA8, &qword_1DF7B1710);
  v35 = v3[7];
  LODWORD(v34) = *(v3 + 48);
  HIDWORD(v34) = *(v3 + 64);
  v11 = v3[29];
  v12 = v3[15];
  memcpy(__dst, v3 + 16, 0x59uLL);
  v13 = v3[28];
  HIDWORD(v37) = *(v3 + 248);
  v14 = v3[33];
  v36 = v3[32];
  v15 = v3[30];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v16 = v14;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  v17 = v13;
  v18 = *(v12 + 16);

  sub_1DF766BF0(__dst, v40, &qword_1ECE54828, &qword_1DF7B8578);
  v19 = v12 + 32;

  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {
      sub_1DF767834(v44, &qword_1ECE53BA8, &qword_1DF7B1710);
      v31 = v34;
      goto LABEL_8;
    }

    if (i >= *(v12 + 16))
    {
      break;
    }

    v22 = sub_1DF7729F4(v19, v40);
    OUTLINED_FUNCTION_0_17(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v40[0], v40[1], v41);
    if (v30)
    {
      sub_1DF767834(v44, &qword_1ECE53BA8, &qword_1DF7B1710);
      v31 = 1;
LABEL_8:
      *(a2 + 48) = v31;
      *(a2 + 56) = v35;
      *(a2 + 64) = BYTE4(v34);
      v32 = v42[1];
      *(a2 + 72) = v42[0];
      *(a2 + 88) = v32;
      *(a2 + 104) = v43;
      *(a2 + 112) = v38;
      *(a2 + 232) = v11;
      *(a2 + 120) = v12;
      result = memcpy((a2 + 128), __dst, 0x59uLL);
      *(a2 + 224) = v17;
      *(a2 + 248) = BYTE4(v37);
      *(a2 + 256) = v36;
      *(a2 + 264) = v16;
      *(a2 + 240) = v15;
      return result;
    }

    result = sub_1DF773158(v39);
    v19 += 40;
  }

  __break(1u);
  return result;
}

uint64_t IntentSchema.result(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x59uLL);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v38 = v2[4];
  sub_1DF766BF0((v2 + 9), v57, &qword_1ECE53BA8, &qword_1DF7B1710);
  LODWORD(v31) = *(v2 + 48);
  HIDWORD(v31) = *(v2 + 64);
  v9 = v2[15];
  v37 = v2[14];
  v10 = v2[28];
  v11 = v2[29];
  HIDWORD(v35) = *(v2 + 248);
  v12 = v2[33];
  v32 = v2[7];
  v33 = v2[32];
  v13 = v2[30];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v14 = v12;
  *(a2 + 32) = v38;
  *(a2 + 40) = v8;
  v15 = v13;
  v16 = *(v9 + 16);

  v17 = v37;

  sub_1DF766BF0(__dst, &v46, &qword_1ECE54828, &qword_1DF7B8578);
  v18 = v9 + 32;
  v39 = v10;

  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {
      v30 = v31;
      goto LABEL_8;
    }

    if (i >= *(v9 + 16))
    {
      break;
    }

    v21 = sub_1DF7729F4(v18, &v46);
    OUTLINED_FUNCTION_0_17(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32, v33, v35, v37, v39, v41, v42, v43, v44, v45, v46, v47, v48);
    if (v29)
    {
      v30 = 1;
LABEL_8:
      OUTLINED_FUNCTION_9_5(v30, v31, SBYTE4(v31), v32, v33, v35, v37, v39, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57[0], *&v57[1]);
      *(a2 + 104) = v58;
      *(a2 + 112) = v17;
      *(a2 + 232) = v11;
      *(a2 + 120) = v9;
      result = memcpy((a2 + 128), __dst, 0x59uLL);
      *(a2 + 224) = v40;
      *(a2 + 248) = v36;
      *(a2 + 256) = v34;
      *(a2 + 264) = v14;
      *(a2 + 240) = v15;
      return result;
    }

    result = sub_1DF773158(&v41);
    v18 += 40;
  }

  __break(1u);
  return result;
}

uint64_t IntentSchema.systemProtocols(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v28 = *v2;
  v6 = v2[3];
  v26 = v2[2];
  v25 = v2[4];
  v20 = v2[5];
  sub_1DF766BF0((v2 + 9), v31, &qword_1ECE53BA8, &qword_1DF7B1710);
  v7 = v2[14];
  v19 = *(v2 + 48);
  v22 = v2[7];
  v21 = *(v2 + 64);
  v8 = v2[29];
  memcpy(__dst, v2 + 16, 0x59uLL);
  v9 = v2[28];
  v24 = *(v2 + 248);
  v10 = v2[33];
  v23 = v2[32];
  v11 = v2[30];
  v12 = *(a1 + 16);
  v27 = v5;

  sub_1DF766BF0(__dst, v30, &qword_1ECE54828, &qword_1DF7B8578);
  v13 = a1 + 32;

  if (v12)
  {
    while (1)
    {
      sub_1DF7729F4(v13, v30);
      v29[0] = *v30;
      v29[1] = *&v30[16];
      OUTLINED_FUNCTION_10_6();
      if (v14)
      {
        break;
      }

      sub_1DF773158(v29);
      v13 += 40;
      if (!--v12)
      {
        goto LABEL_4;
      }
    }

    v15 = 1;
  }

  else
  {
LABEL_4:
    v15 = v19;
  }

  *&v30[7] = v31[0];
  *&v30[23] = v31[1];
  *&v30[39] = v32;
  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v6;
  *(a2 + 32) = v25;
  *(a2 + 40) = v20;
  *(a2 + 48) = v15;
  *(a2 + 56) = v22;
  *(a2 + 64) = v21;
  v16 = *v30;
  v17 = *&v30[16];
  *(a2 + 96) = *&v30[31];
  *(a2 + 81) = v17;
  *(a2 + 65) = v16;
  *(a2 + 112) = v7;
  *(a2 + 120) = a1;
  memcpy((a2 + 128), __dst, 0x59uLL);
  *(a2 + 224) = v9;
  *(a2 + 232) = v8;
  *(a2 + 240) = v11;
  *(a2 + 248) = v24;
  *(a2 + 256) = v23;
  *(a2 + 264) = v10;
}

uint64_t IntentSchema.visibility(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  HIDWORD(v36) = *a1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v7 = v2[5];
  v38 = v2[4];
  v39 = v2[2];
  sub_1DF766BF0((v2 + 9), v58, &qword_1ECE53BA8, &qword_1DF7B1710);
  v33 = v2[7];
  LODWORD(v32) = *(v2 + 48);
  HIDWORD(v32) = *(v2 + 64);
  v8 = v2[29];
  v10 = v2[14];
  v9 = v2[15];
  memcpy(__dst, v2 + 16, 0x59uLL);
  v11 = v2[28];
  v12 = v2[33];
  v34 = v2[32];
  v13 = v2[30];
  *a2 = v4;
  *(a2 + 8) = v5;
  v14 = v12;
  *(a2 + 16) = v39;
  *(a2 + 24) = v6;
  *(a2 + 32) = v38;
  *(a2 + 40) = v7;
  v15 = v11;
  v16 = *(v9 + 16);

  v40 = v10;

  v17 = v8;

  sub_1DF766BF0(__dst, &v47, &qword_1ECE54828, &qword_1DF7B8578);
  v18 = v9 + 32;
  v19 = v15;

  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {
      v31 = v32;
      goto LABEL_8;
    }

    if (i >= *(v9 + 16))
    {
      break;
    }

    v22 = sub_1DF7729F4(v18, &v47);
    OUTLINED_FUNCTION_0_17(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34, v36, v38, v40, v42, v43, v44, v45, v46, v47, v48, v49);
    if (v30)
    {
      v31 = 1;
LABEL_8:
      OUTLINED_FUNCTION_9_5(v31, v32, SBYTE4(v32), v33, v34, v36, v38, v40, v42, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, v51, v52, v53, v54, v55, v56, v57, v58[0], *&v58[1]);
      *(a2 + 104) = v59;
      *(a2 + 112) = v41;
      *(a2 + 232) = v17;
      *(a2 + 120) = v9;
      result = memcpy((a2 + 128), __dst, 0x59uLL);
      *(a2 + 224) = v19;
      *(a2 + 248) = v37;
      *(a2 + 256) = v35;
      *(a2 + 264) = v14;
      *(a2 + 240) = v13;
      return result;
    }

    result = sub_1DF773158(&v42);
    v18 += 40;
  }

  __break(1u);
  return result;
}

uint64_t IntentSchema.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1DF7AD404();
  v5 = v1[2];
  v6 = v1[3];
  sub_1DF7AD404();
  v7 = v1[4];
  v8 = v1[5];
  sub_1DF7AD404();
  v9 = *(v1 + 48);
  sub_1DF7ADA04();
  MEMORY[0x1E12DEC80](v1[7]);
  v10 = *(v1 + 64);
  if (v10 == 3)
  {
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x1E12DEC80](v10);
  }

  sub_1DF766BF0((v1 + 9), v23, &qword_1ECE53BA8, &qword_1DF7B1710);
  v11 = v23[3];
  if (v23[3])
  {
    v12 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    (*(v12 + 24))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_29_1();
    sub_1DF786018();
  }

  else
  {
    sub_1DF767834(v23, &qword_1ECE53BA8, &qword_1DF7B1710);
    OUTLINED_FUNCTION_27_1();
  }

  v13 = v1[14];
  sub_1DF786018();
  sub_1DF785EDC(a1, v1[15]);
  OUTLINED_FUNCTION_22_1(__src);
  v14 = *(v1 + 216);
  if (v14 == 255)
  {
    OUTLINED_FUNCTION_27_1();
  }

  else
  {
    OUTLINED_FUNCTION_22_1(v21);
    v21[88] = v14;
    OUTLINED_FUNCTION_29_1();
    memcpy(__dst, __src, 0x58uLL);
    __dst[88] = v14;
    sub_1DF770608(__dst, v23);
    ValueType.hash(into:)(a1);
    memcpy(v23, v21, 0x59uLL);
    sub_1DF77A414(v23);
  }

  if (*(v1 + 248) == 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v1 + 248);
  }

  MEMORY[0x1E12DEC80](v15);
  v16 = v1[29];
  sub_1DF785E04();
  v17 = v1[32];
  v18 = v1[33];
  sub_1DF7AD404();
  v19 = v1[30];
  if (!v19)
  {
    return OUTLINED_FUNCTION_27_1();
  }

  OUTLINED_FUNCTION_29_1();
  return sub_1DF78E894(a1, v19);
}

uint64_t IntentSchema.hashValue.getter()
{
  sub_1DF7AD9E4();
  IntentSchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A2E28()
{
  sub_1DF7AD9E4();
  IntentSchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t IntentSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54850, &qword_1DF7B85B0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF769340();
  sub_1DF7ADA64();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(__dst[0]) = 0;
  OUTLINED_FUNCTION_7_8();
  sub_1DF7AD8D4();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(__dst[0]) = 1;
    OUTLINED_FUNCTION_7_8();
    sub_1DF7AD8D4();
    v18 = v3[4];
    v19 = v3[5];
    LOBYTE(__dst[0]) = 2;
    OUTLINED_FUNCTION_7_8();
    sub_1DF7AD8D4();
    v20 = *(v3 + 48);
    LOBYTE(__dst[0]) = 3;
    OUTLINED_FUNCTION_7_8();
    sub_1DF7AD8E4();
    *&__dst[0] = v3[7];
    LOBYTE(v30[0]) = 4;
    sub_1DF7A49E4();
    OUTLINED_FUNCTION_6_9();
    sub_1DF7AD904();
    LOBYTE(__dst[0]) = *(v3 + 64);
    LOBYTE(v30[0]) = 5;
    sub_1DF7A4A38();
    OUTLINED_FUNCTION_6_9();
    sub_1DF7AD8C4();
    sub_1DF766BF0((v3 + 9), v30, &qword_1ECE53BA8, &qword_1DF7B1710);
    v21 = v30[3];
    if (v30[3])
    {
      v22 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      sub_1DF7863C4(v21, v22, __dst);
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      sub_1DF767834(v30, &qword_1ECE53BA8, &qword_1DF7B1710);
      memset(__dst, 0, 40);
    }

    LOBYTE(v30[0]) = 6;
    sub_1DF79B840();
    OUTLINED_FUNCTION_6_9();
    sub_1DF7AD8C4();
    sub_1DF767834(__dst, &qword_1ECE54818, &qword_1DF7B8568);
    *&__dst[0] = v3[14];
    LOBYTE(v30[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B30, &qword_1DF7AE900);
    sub_1DF7A4A8C();
    OUTLINED_FUNCTION_1_14();
    sub_1DF7AD904();
    v33 = v3[15];
    v32 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54840, &qword_1DF7B8598);
    sub_1DF7A4B10();
    OUTLINED_FUNCTION_1_14();
    sub_1DF7AD904();
    memcpy(__dst, v3 + 16, 0x59uLL);
    memcpy(v30, v3 + 16, 0x59uLL);
    v29[95] = 9;
    sub_1DF766BF0(__dst, v29, &qword_1ECE54828, &qword_1DF7B8578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54828, &qword_1DF7B8578);
    sub_1DF7A4BE8();
    OUTLINED_FUNCTION_1_14();
    sub_1DF7AD904();
    memcpy(v29, v30, 0x59uLL);
    sub_1DF767834(v29, &qword_1ECE54828, &qword_1DF7B8578);
    v24 = *(v3 + 248);
    if (v24 == 3)
    {
      LOBYTE(v24) = 1;
    }

    LOBYTE(v27) = v24;
    v28 = 10;
    sub_1DF795A48();
    OUTLINED_FUNCTION_7_8();
    sub_1DF7AD904();
    v27 = v3[29];
    v28 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54848, &unk_1DF7B85A0);
    sub_1DF7A4C6C();
    OUTLINED_FUNCTION_1_14();
    sub_1DF7AD904();
    v27 = v3[30];
    v28 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE543C0, &qword_1DF7B6190);
    sub_1DF7959DC(&qword_1ECE543D8);
    OUTLINED_FUNCTION_1_14();
    sub_1DF7AD8C4();
    v25 = v3[32];
    v26 = v3[33];
    LOBYTE(v27) = 12;
    OUTLINED_FUNCTION_7_8();
    sub_1DF7AD8D4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DF7A339C()
{
  v0 = sub_1DF7AD794();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF7A341C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF7A339C();
  *a2 = result;
  return result;
}

unint64_t sub_1DF7A344C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DF76906C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF7A3478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF7A33E8();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7A34A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF7A33EC();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7A34C8(uint64_t a1)
{
  v2 = sub_1DF769340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7A3504(uint64_t a1)
{
  v2 = sub_1DF769340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF7A3558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7693E8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1DF7A35BC()
{
  sub_1DF7A5044();

  return sub_1DF7AD224();
}

uint64_t sub_1DF7A36B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7998D0();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1DF7A3704()
{
  v0 = sub_1DF7ACFD4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DF795E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54418, &unk_1DF7B65A0);
  sub_1DF795EE0();
  sub_1DF7AD664();
  sub_1DF7AD334();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_1DF7A3864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54428, &unk_1DF7B6A50);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54430, &unk_1DF7B65B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54438, &qword_1DF7B6A60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1DF7AD2C4();
  v13 = sub_1DF7AD2F4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  v14 = *MEMORY[0x1E69A00C0];
  v15 = sub_1DF7AD324();
  v16 = *(*(v15 - 8) + 104);
  v17 = v14;
  v18 = v15;
  v25 = v15;
  v16(v8, v17);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
  sub_1DF7AD174();
  sub_1DF767834(v8, &qword_1ECE54430, &unk_1DF7B65B0);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2D4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();

  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1DF7AD184();
  sub_1DF767834(v12, &qword_1ECE54438, &qword_1DF7B6A60);
  v19 = *MEMORY[0x1E69A00B8];
  v20 = sub_1DF7AD304();
  v21 = v26;
  (*(*(v20 - 8) + 104))(v26, v19, v20);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v20);
  v22 = v27;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v20);
  sub_1DF7AD194();

  sub_1DF767834(v22, &qword_1ECE54428, &unk_1DF7B6A50);
  sub_1DF767834(v21, &qword_1ECE54428, &unk_1DF7B6A50);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v25);
  sub_1DF7AD1A4();

  return sub_1DF767834(v8, &qword_1ECE54430, &unk_1DF7B65B0);
}

void IntentSchema.init<A>(_:title:description:parameters:openApp:supportedModes:authenticationPolicy:constraints:systemProtocols:result:utterances:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(_BYTE *)@<X5>, char a7@<W7>, uint64_t a8@<X8>, uint64_t *a9, char *a10, uint64_t (*a11)(uint64_t), unint64_t a12, uint64_t a13, const void *a14, uint64_t (*a15)(void), uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = a15;
  v37 = *a9;
  v36 = *a10;
  v35 = a6(v48);
  v22 = *(a18 + 16);
  sub_1DF7AD474();
  v32 = v47;
  v33 = v46;
  v23 = sub_1DF766BF0(v48, v44, &qword_1ECE53BA8, &qword_1DF7B1710);
  v24 = a11(v23);
  v34 = a15();
  DynamicType = swift_getDynamicType();
  (*(a18 + 24))(a17, a18);
  OUTLINED_FUNCTION_19_1();
  while (1)
  {
    if (a16 == a12)
    {
      sub_1DF767834(v48, &qword_1ECE53BA8, &qword_1DF7B1710);
      v27 = a7;
      goto LABEL_8;
    }

    if (a12 >= *(a13 + 16))
    {
      break;
    }

    sub_1DF7729F4(v21, v43);
    v42[0] = *v43;
    v42[1] = *&v43[16];
    OUTLINED_FUNCTION_10_6();
    if (v26)
    {
      sub_1DF767834(v48, &qword_1ECE53BA8, &qword_1DF7B1710);
      v27 = 1;
LABEL_8:
      *&v43[7] = v44[0];
      *&v43[23] = v44[1];
      *&v43[39] = v45;
      *a8 = v33;
      *(a8 + 8) = v32;
      *(a8 + 16) = a2;
      *(a8 + 24) = a3;
      *(a8 + 32) = a4;
      *(a8 + 40) = a5;
      *(a8 + 48) = v27 & 1;
      *(a8 + 56) = v37;
      *(a8 + 64) = v36;
      v28 = *v43;
      v29 = *&v43[16];
      *(a8 + 96) = *&v43[31];
      *(a8 + 81) = v29;
      *(a8 + 65) = v28;
      *(a8 + 112) = v35;
      *(a8 + 120) = a13;
      memcpy((a8 + 128), a14, 0x59uLL);
      *(a8 + 224) = v34;
      *(a8 + 232) = v24;
      *(a8 + 240) = 0;
      *(a8 + 248) = 1;
      *(a8 + 256) = DynamicType;
      *(a8 + 264) = a18;
      OUTLINED_FUNCTION_13_4(a17);
      (*(v30 + 8))(a1, a17);
      return;
    }

    ++a12;
    sub_1DF773158(v42);
    v21 += 40;
  }

  __break(1u);
}

void IntentSchema.init<A>(_:title:description:parameters:openApp:supportedModes:authenticationPolicy:constraints:systemProtocols:result:requiredEntitlements:utterances:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W7>, uint64_t a7@<X8>, uint64_t *a8, unsigned __int8 *a9, uint64_t (*a10)(uint64_t), unint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t (*a15)(void), uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a15;
  v39 = *a8;
  v22 = OUTLINED_FUNCTION_25_1(a9);
  v37 = v23(v22);
  v24 = *(a18 + 16);
  sub_1DF7AD474();
  v34 = v49;
  v35 = v48;
  v25 = sub_1DF766BF0(v50, v46, &qword_1ECE53BA8, &qword_1DF7B1710);
  v26 = a10(v25);
  v36 = a15();
  DynamicType = swift_getDynamicType();
  (*(a18 + 24))(a17, a18);
  OUTLINED_FUNCTION_19_1();
  while (1)
  {
    if (a16 == a11)
    {
      sub_1DF767834(v50, &qword_1ECE53BA8, &qword_1DF7B1710);
      v29 = a6;
      goto LABEL_8;
    }

    if (a11 >= *(a12 + 16))
    {
      break;
    }

    sub_1DF7729F4(v20, v45);
    v44[0] = *v45;
    v44[1] = *&v45[16];
    OUTLINED_FUNCTION_23_1();
    if (v28)
    {
      sub_1DF767834(v50, &qword_1ECE53BA8, &qword_1DF7B1710);
      v29 = 1;
LABEL_8:
      *&v45[7] = v46[0];
      *&v45[23] = v46[1];
      *&v45[39] = v47;
      *a7 = v35;
      *(a7 + 8) = v34;
      *(a7 + 16) = a2;
      *(a7 + 24) = a3;
      *(a7 + 32) = a4;
      *(a7 + 40) = a5;
      *(a7 + 48) = v29 & 1;
      *(a7 + 56) = v39;
      *(a7 + 64) = v38;
      v30 = *v45;
      v31 = *&v45[16];
      *(a7 + 96) = *&v45[31];
      *(a7 + 81) = v31;
      *(a7 + 65) = v30;
      *(a7 + 112) = v37;
      *(a7 + 120) = a12;
      memcpy((a7 + 128), a13, 0x59uLL);
      *(a7 + 224) = v36;
      *(a7 + 232) = v26;
      *(a7 + 240) = a14;
      *(a7 + 248) = 1;
      *(a7 + 256) = DynamicType;
      *(a7 + 264) = a18;
      OUTLINED_FUNCTION_13_4(a17);
      (*(v32 + 8))(a1, a17);
      return;
    }

    ++a11;
    sub_1DF773158(v44);
    v20 += 40;
  }

  __break(1u);
}

void *sub_1DF7A44DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  memcpy(__dst, a1 + 2, 0x59uLL);
  v8 = a1[14];
  v9 = a1[15];
  memcpy(__src, a1 + 18, 0xB8uLL);
  if (sub_1DF7981B8(__src) == 1 || (memcpy(v37, __src, sizeof(v37)), get_enum_tag_for_layout_string_16AppIntentSchemas16ValueDisplayNameOSg_0(v37)))
  {
    v10 = sub_1DF780538(v8, v9);
    v12 = v11;
    if (LOBYTE(__dst[11]) == 12)
    {
      v13 = __dst[0];
      v14 = v35;
      v15 = &__dst[1];
      v16 = 80;
    }

    else
    {
      v13 = swift_allocObject();
      v14 = (v13 + 16);
      v15 = __dst;
      v16 = 89;
    }

    memcpy(v14, v15, v16);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;

    sub_1DF770608(__dst, v37);
    sub_1DF7AD6B4();

    strcpy(v37, "The new ");
    v37[9] = 0;
    *&v37[10] = 0;
    *&v37[12] = -402653184;
    v17 = sub_1DF7AD3E4();
    MEMORY[0x1E12DE6C0](v17);

    MEMORY[0x1E12DE6C0](0x65687420726F6620, 0xE900000000000020);
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v20 = sub_1DF7AD3E4();
    MEMORY[0x1E12DE6C0](v20);

    v21 = *v37;
    v22 = *&v37[8];
    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = v13;
    result = memcpy((a3 + 24), v35, 0x50uLL);
    *(a3 + 104) = 12;
    *(a3 + 112) = 0;
    *(a3 + 120) = v10;
    *(a3 + 128) = v12;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0u;
    *(a3 + 168) = v21;
    *(a3 + 176) = v22;
  }

  else
  {
    if (v37[104] == 12)
    {
      v24 = *&v37[16];
      v25 = v36;
      v26 = &v37[24];
      v27 = 80;
    }

    else
    {
      v24 = swift_allocObject();
      v25 = (v24 + 16);
      v26 = &v37[16];
      v27 = 89;
    }

    memcpy(v25, v26, v27);
    v28 = *&v37[8];
    v29 = *&v37[128];
    v30 = *&v37[136];
    v31 = *&v37[144];
    v32 = *&v37[152];
    v33 = *&v37[176];
    *a3 = *v37;
    *(a3 + 8) = v28;
    *(a3 + 16) = v24;
    memcpy((a3 + 24), v36, 0x50uLL);
    *(a3 + 104) = 12;
    v34 = *&v37[160];
    *(a3 + 112) = *&v37[112];
    *(a3 + 128) = v29;
    *(a3 + 136) = v30;
    *(a3 + 144) = v31;
    *(a3 + 152) = v32;
    *(a3 + 160) = v34;
    *(a3 + 176) = v33;

    sub_1DF771354(v30, v31);

    return sub_1DF770608(&v37[16], v35);
  }

  return result;
}

unint64_t sub_1DF7A47B0()
{
  result = qword_1EE173420;
  if (!qword_1EE173420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53B30, &qword_1DF7AE900);
    sub_1DF77CB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173420);
  }

  return result;
}

unint64_t sub_1DF7A4834()
{
  result = qword_1EE173448;
  if (!qword_1EE173448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54840, &qword_1DF7B8598);
    sub_1DF7A48B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173448);
  }

  return result;
}

unint64_t sub_1DF7A48B8()
{
  result = qword_1EE173B18;
  if (!qword_1EE173B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B18);
  }

  return result;
}

unint64_t sub_1DF7A490C()
{
  result = qword_1EE173418;
  if (!qword_1EE173418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54848, &unk_1DF7B85A0);
    sub_1DF7A4990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173418);
  }

  return result;
}

unint64_t sub_1DF7A4990()
{
  result = qword_1EE173850;
  if (!qword_1EE173850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173850);
  }

  return result;
}

unint64_t sub_1DF7A49E4()
{
  result = qword_1ECE54858;
  if (!qword_1ECE54858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54858);
  }

  return result;
}

unint64_t sub_1DF7A4A38()
{
  result = qword_1ECE54860;
  if (!qword_1ECE54860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54860);
  }

  return result;
}

unint64_t sub_1DF7A4A8C()
{
  result = qword_1ECE53B38;
  if (!qword_1ECE53B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53B30, &qword_1DF7AE900);
    sub_1DF77CAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53B38);
  }

  return result;
}

unint64_t sub_1DF7A4B10()
{
  result = qword_1ECE54868;
  if (!qword_1ECE54868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54840, &qword_1DF7B8598);
    sub_1DF7A4B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54868);
  }

  return result;
}

unint64_t sub_1DF7A4B94()
{
  result = qword_1ECE54870;
  if (!qword_1ECE54870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54870);
  }

  return result;
}

unint64_t sub_1DF7A4BE8()
{
  result = qword_1ECE54878;
  if (!qword_1ECE54878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54828, &qword_1DF7B8578);
    sub_1DF77AF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54878);
  }

  return result;
}

unint64_t sub_1DF7A4C6C()
{
  result = qword_1ECE54880;
  if (!qword_1ECE54880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54848, &unk_1DF7B85A0);
    sub_1DF7A4CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54880);
  }

  return result;
}

unint64_t sub_1DF7A4CF0()
{
  result = qword_1ECE54888;
  if (!qword_1ECE54888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54888);
  }

  return result;
}

unint64_t sub_1DF7A4D48()
{
  result = qword_1ECE54890;
  if (!qword_1ECE54890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54890);
  }

  return result;
}

unint64_t sub_1DF7A4DA0()
{
  result = qword_1ECE54898;
  if (!qword_1ECE54898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54898);
  }

  return result;
}

unint64_t sub_1DF7A4DF8()
{
  result = qword_1ECE548A0;
  if (!qword_1ECE548A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548A0);
  }

  return result;
}

uint64_t sub_1DF7A4E58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1DF7A4E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF7A4F40()
{
  result = qword_1ECE548A8;
  if (!qword_1ECE548A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548A8);
  }

  return result;
}

unint64_t sub_1DF7A4F98()
{
  result = qword_1EE173AF0;
  if (!qword_1EE173AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173AF0);
  }

  return result;
}

unint64_t sub_1DF7A4FF0()
{
  result = qword_1EE173AF8;
  if (!qword_1EE173AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173AF8);
  }

  return result;
}

unint64_t sub_1DF7A5044()
{
  result = qword_1ECE548B0;
  if (!qword_1ECE548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_1DF7ADA04();
}

void static SchemaBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = v2[2];
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v8 = *v3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > v2[3] >> 1)
      {
        if (v6 <= v7)
        {
          v10 = v6 + v5;
        }

        else
        {
          v10 = v6;
        }

        sub_1DF77B91C(isUniquelyReferenced_nonNull_native, v10, 1, v2);
        v2 = v11;
      }

      if (*(v4 + 16))
      {
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v5);
          v14 = v12 + v5;
          if (v13)
          {
            goto LABEL_20;
          }

          v2[2] = v14;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v3;
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

uint64_t static SchemaBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static SchemaBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF0, &qword_1DF7AE8B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DF7AE850;
  sub_1DF766CC8(a1, v2 + 32);
  return v2;
}

uint64_t sub_1DF7A530C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SchemaBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DF7A5440(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DF7B9E60 == a2;
  if (v3 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E616D65686373 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1DF7AD934() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001DF7B9C40 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DF7AD934();

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

uint64_t sub_1DF7A5568(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x614E616D65686373;
  }

  return 0xD000000000000010;
}

uint64_t sub_1DF7A55CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE548E0, &qword_1DF7B8E08);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7A6028();
  sub_1DF7ADA64();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_2_16();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_2_16();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_2_16();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DF7A5728@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE548D8, &qword_1DF7B8E00);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7A6028();
  sub_1DF7ADA44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v14 = sub_1DF7AD814();
  v27 = v15;
  v29 = 1;
  v25 = sub_1DF7AD814();
  v26 = v16;
  v28 = 2;
  v17 = sub_1DF7AD814();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_1DF7A5958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF7A5440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF7A5980(uint64_t a1)
{
  v2 = sub_1DF7A6028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7A59BC(uint64_t a1)
{
  v2 = sub_1DF7A6028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DF7A59F8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DF7A5728(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DF7A5A54()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = v0[1];
  v33 = *v0;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1DF7981F0(0, v2, 0);
  v3 = v40;
  result = sub_1DF7A660C(v1);
  v8 = result;
  v9 = 0;
  v10 = v1 + 64;
  v30 = v1 + 72;
  v31 = v2;
  v32 = v1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v8 < 1 << *(v1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_24;
      }

      v34 = v7;
      v35 = v9;
      v36 = v6;
      v12 = *(v1 + 56);
      v13 = (*(v1 + 48) + 16 * v8);
      v14 = *v13;
      v15 = v1;
      v16 = v13[1];
      v17 = (v12 + 16 * v8);
      v18 = v17[1];
      v37 = *v17;
      v38 = v14;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      v39 = v20 + 1;

      if (v20 >= v19 >> 1)
      {
        result = sub_1DF7981F0(v19 > 1, v39, 1);
      }

      *(v40 + 16) = v39;
      v21 = (v40 + 48 * v20);
      v21[4] = v37;
      v21[5] = v18;
      v21[6] = v38;
      v21[7] = v16;
      v21[8] = v33;
      v21[9] = v4;
      v22 = 1 << *(v15 + 32);
      if (v8 >= v22)
      {
        goto LABEL_25;
      }

      v10 = v32;
      v23 = *(v32 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v1 = v15;
      if (*(v15 + 36) != v36)
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v30 + 8 * v11);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1DF7A664C(v8, v36, v34 & 1);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_18;
          }
        }

        result = sub_1DF7A664C(v8, v36, v34 & 1);
      }

LABEL_18:
      v9 = v35 + 1;
      if (v35 + 1 == v31)
      {
        return v3;
      }

      v7 = 0;
      v6 = *(v1 + 36);
      v8 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DF7A5CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7A5F2C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1DF7A5D30()
{
  sub_1DF7A5F80();

  return sub_1DF7AD224();
}

uint64_t sub_1DF7A5E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7A5FD4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1DF7A5E7C()
{
  result = qword_1ECE548B8;
  if (!qword_1ECE548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548B8);
  }

  return result;
}

unint64_t sub_1DF7A5ED8()
{
  result = qword_1ECE548C0;
  if (!qword_1ECE548C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548C0);
  }

  return result;
}

unint64_t sub_1DF7A5F2C()
{
  result = qword_1EE173330;
  if (!qword_1EE173330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173330);
  }

  return result;
}

unint64_t sub_1DF7A5F80()
{
  result = qword_1ECE548C8;
  if (!qword_1ECE548C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548C8);
  }

  return result;
}

unint64_t sub_1DF7A5FD4()
{
  result = qword_1ECE548D0;
  if (!qword_1ECE548D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548D0);
  }

  return result;
}

unint64_t sub_1DF7A6028()
{
  result = qword_1EE173358;
  if (!qword_1EE173358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173358);
  }

  return result;
}

uint64_t sub_1DF7A607C()
{
  v0 = sub_1DF7ACFD4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DF795E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54418, &unk_1DF7B65A0);
  sub_1DF795EE0();
  sub_1DF7AD664();
  sub_1DF7AD334();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_1DF7A61DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54428, &unk_1DF7B6A50);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54430, &unk_1DF7B65B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54438, &qword_1DF7B6A60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  sub_1DF7AD2C4();
  v14 = sub_1DF7AD2F4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  v15 = *MEMORY[0x1E69A00C0];
  v16 = sub_1DF7AD324();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1DF7AD174();
  sub_1DF773CFC(v9, &qword_1ECE54430, &unk_1DF7B65B0);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();
  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  v17 = *MEMORY[0x1E69A00B8];
  v18 = sub_1DF7AD304();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  v19 = v22;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v18);
  sub_1DF7AD194();

  sub_1DF773CFC(v19, &qword_1ECE54428, &unk_1DF7B6A50);
  sub_1DF773CFC(v5, &qword_1ECE54428, &unk_1DF7B6A50);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  sub_1DF7AD1A4();

  return sub_1DF773CFC(v9, &qword_1ECE54430, &unk_1DF7B65B0);
}

uint64_t sub_1DF7A660C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DF7AD674();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DF7A664C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SchemaRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF7A6738()
{
  result = qword_1ECE548E8;
  if (!qword_1ECE548E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548E8);
  }

  return result;
}

unint64_t sub_1DF7A6790()
{
  result = qword_1EE173348;
  if (!qword_1EE173348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173348);
  }

  return result;
}

unint64_t sub_1DF7A67E8()
{
  result = qword_1EE173350;
  if (!qword_1EE173350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173350);
  }

  return result;
}

uint64_t static DomainTable.schemaNameToID.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12[-v8];
  sub_1DF7AD6C4();
  v15 = MEMORY[0x1E69E7CC8];
  v13 = a1;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C08, &qword_1DF7B8F30);
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1DF7AD454();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1DF7A69C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DF7AD3D4();
  v11 = v10;
  v12 = *(a4 + 16);
  sub_1DF7AD474();
  v13 = v17[0];
  v14 = v17[1];
  v15 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *a1;
  sub_1DF7A6B40(v13, v14, v9, v11);

  *a1 = v18;
  return result;
}

uint64_t sub_1DF7A6B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF7ABE7C(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C60, &qword_1DF7B1B20);
  if ((sub_1DF7AD774() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_1DF7ABE7C(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1DF7AD984();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1DF7A6C94(v13, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_1DF7A6C94(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t static VersionedSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8)
  {
    if (v4 != v7)
    {
LABEL_17:
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
    v9 = 0;
    if ((sub_1DF7AD934() & 1) == 0 || v4 != v7)
    {
      return v9 & 1;
    }
  }

  if ((sub_1DF787AC4(v2, v5) & 1) == 0)
  {
    goto LABEL_17;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    v21 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8_7();
    v10 = v21;
    v11 = v3 + 32;
    do
    {
      sub_1DF766CC8(v11, &v18);
      v21 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_6_10(v12);
        v10 = v21;
      }

      *(v10 + 16) = v13 + 1;
      OUTLINED_FUNCTION_0_18(v10 + 40 * v13, v18, v19, v20);
    }

    while (!v8);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (*(v6 + 16))
  {
    v21 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8_7();
    v14 = v21;
    do
    {
      sub_1DF766CC8(v6 + 32, &v18);
      v21 = v14;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_6_10(v15);
        v14 = v21;
      }

      *(v14 + 16) = v16 + 1;
      OUTLINED_FUNCTION_0_18(v14 + 40 * v16, v18, v19, v20);
    }

    while (!v8);
  }

  v9 = sub_1DF788C70(v10, v14);

  return v9 & 1;
}

AppIntentSchemas::VersionedSchema::Version_optional __swiftcall VersionedSchema.Version.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF7AD794();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF7A6F20@<X0>(uint64_t *a1@<X8>)
{
  result = VersionedSchema.Version.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t VersionedSchema.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VersionedSchema.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VersionedSchema.id.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1DF766CC8(v1 + 32, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t VersionedSchema.init(_:schemas:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *(a3 + 33) = 3;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = v4;
  result = a2();
  *(a3 + 24) = result;
  *(a3 + 32) = 1;
  return result;
}

uint64_t VersionedSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE548F0, &qword_1DF7B8F50);
  OUTLINED_FUNCTION_0_11();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7A7AF0();
  sub_1DF7ADA44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54900, &qword_1DF7B8F58);
  sub_1DF765C18(&qword_1EE173430, sub_1DF76CC20);
  sub_1DF7AD844();
  v11 = v42[0];
  LOBYTE(v42[0]) = 0;
  v12 = sub_1DF7AD814();
  v15 = v14;
  v38 = v12;
  sub_1DF7A7B44();
  OUTLINED_FUNCTION_4_12();
  v37 = 0;
  v41[0] = 3;
  sub_1DF7667FC();
  OUTLINED_FUNCTION_4_12();
  v36 = v6;
  v35 = LOBYTE(v42[0]);
  v16 = *(v11 + 16);
  if (v16)
  {
    v33 = v15;
    v34 = a2;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1DF76CB04(0, v16, 0);
    v17 = v45;
    v32[1] = v11;
    v18 = v11 + 32;
    do
    {
      sub_1DF76CAA8(v18, v41);
      sub_1DF766CC8(v41, v42);
      sub_1DF76CA4C(v41);
      v45 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DF76CB04(v19 > 1, v20 + 1, 1);
      }

      v21 = v43;
      v40 = v44;
      __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
      v39 = v32;
      OUTLINED_FUNCTION_0_11();
      v23 = *(v22 + 64);
      MEMORY[0x1EEE9AC00](v24);
      v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26);
      sub_1DF7A7B98(v20, v26, &v45, v21, v40);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v17 = v45;
      v18 += 40;
      --v16;
    }

    while (v16);
    v28 = OUTLINED_FUNCTION_7_9();
    v29(v28);

    v15 = v33;
    a2 = v34;
  }

  else
  {

    v30 = OUTLINED_FUNCTION_7_9();
    v31(v30);
    v17 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v38;
  *(a2 + 8) = v15;
  *(a2 + 16) = v37;
  *(a2 + 24) = v17;
  *(a2 + 32) = v35;
  *(a2 + 33) = 3;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VersionedSchema.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54910, &qword_1DF7B8F60);
  OUTLINED_FUNCTION_0_11();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v12 = *v1;
  v11 = v1[1];
  LODWORD(v31) = *(v1 + 16);
  v30 = v1[3];
  v29 = *(v1 + 32);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7A7AF0();
  sub_1DF7ADA64();
  LOBYTE(v33[0]) = 0;
  v14 = v32;
  sub_1DF7AD8D4();
  if (v14)
  {
    return (*(v5 + 8))(v10, v3);
  }

  v15 = v29;
  v16 = v30;
  LOBYTE(v33[0]) = v31;
  LOBYTE(v35) = 1;
  sub_1DF7A7C30();
  OUTLINED_FUNCTION_1_16();
  sub_1DF7AD904();
  LOBYTE(v33[0]) = v15;
  LOBYTE(v35) = 3;
  sub_1DF795A48();
  OUTLINED_FUNCTION_1_16();
  sub_1DF7AD904();
  v18 = v5;
  v19 = v16;
  v20 = *(v16 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v31 = v10;
    v32 = v3;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1DF798178(0, v20, 0);
    v21 = v35;
    v22 = v19 + 32;
    do
    {
      sub_1DF766CC8(v22, v33);
      v35 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DF798178(v23 > 1, v24 + 1, 1);
        v21 = v35;
      }

      *(v21 + 16) = v24 + 1;
      v25 = v21 + 40 * v24;
      v26 = v33[0];
      v27 = v33[1];
      *(v25 + 64) = v34;
      *(v25 + 32) = v26;
      *(v25 + 48) = v27;
      v22 += 40;
      --v20;
    }

    while (v20);
    v10 = v31;
    v3 = v32;
    v18 = v5;
  }

  *&v33[0] = v21;
  LOBYTE(v35) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54900, &qword_1DF7B8F58);
  sub_1DF765C18(&qword_1ECE54920, sub_1DF793A00);
  OUTLINED_FUNCTION_1_16();
  sub_1DF7AD904();

  return (*(v18 + 8))(v10, v3);
}

uint64_t sub_1DF7A7994@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF779D78();
  *a2 = result;
  return result;
}

uint64_t sub_1DF7A79C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF779DC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF7A79F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF779D78();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7A7A20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF7A7968();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7A7A48(uint64_t a1)
{
  v2 = sub_1DF7A7AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7A7A84(uint64_t a1)
{
  v2 = sub_1DF7A7AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF7A7AF0()
{
  result = qword_1ECE548F8;
  if (!qword_1ECE548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE548F8);
  }

  return result;
}

unint64_t sub_1DF7A7B44()
{
  result = qword_1ECE54908;
  if (!qword_1ECE54908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54908);
  }

  return result;
}

uint64_t sub_1DF7A7B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DF7663E4(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_1DF7A7C30()
{
  result = qword_1ECE54918;
  if (!qword_1ECE54918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54918);
  }

  return result;
}

unint64_t sub_1DF7A7C88()
{
  result = qword_1ECE54928;
  if (!qword_1ECE54928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54928);
  }

  return result;
}

uint64_t sub_1DF7A7CDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1DF7A7D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1DF7A7D80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF7A7E60()
{
  result = qword_1ECE54930;
  if (!qword_1ECE54930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54930);
  }

  return result;
}

unint64_t sub_1DF7A7EB8()
{
  result = qword_1ECE54938;
  if (!qword_1ECE54938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54938);
  }

  return result;
}

unint64_t sub_1DF7A7F10()
{
  result = qword_1ECE54940;
  if (!qword_1ECE54940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54940);
  }

  return result;
}

unint64_t sub_1DF7A7F64()
{
  result = qword_1ECE54948;
  if (!qword_1ECE54948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54948);
  }

  return result;
}

uint64_t static Database.connection()()
{
  v0 = sub_1DF7ACED4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_13();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1DF7AD014();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_13();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  sub_1DF7AD004();
  sub_1DF7ACFF4();
  type metadata accessor for AppIntentDomains();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_1DF765450(0xD000000000000010, 0x80000001DF7B92A0, 0x6574696C7173, 0xE600000000000000, v25);
  if (v26)
  {
    v27 = v26;
    sub_1DF7ACEB4();

    (*(v3 + 32))(v11, v8, v0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1DF7AD6B4();

    v36 = 0x2F2F3A656C6966;
    v37 = 0xE700000000000000;
    v28 = sub_1DF7ACEC4();
    MEMORY[0x1E12DE6C0](v28);

    MEMORY[0x1E12DE6C0](0x626174756D6D693FLL, 0xEC000000313D656CLL);
    (*(v15 + 16))(v20, v23, v12);
    v29 = sub_1DF7AD064();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_1DF7AD044();

    (*(v3 + 8))(v11, v0);
    (*(v15 + 8))(v23, v12);
    return v32;
  }

  else
  {
    sub_1DF7A92BC();
    v34 = swift_allocError();
    swift_willThrow();

    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1DF7AD6B4();
    MEMORY[0x1E12DE6C0](0xD000000000000024, 0x80000001DF7BA280);
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54958, "~*");
    sub_1DF7AD764();
    result = sub_1DF7AD784();
    __break(1u);
  }

  return result;
}

uint64_t Database.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Database.init(url:)(a1);
  return v2;
}

void *Database.init(url:)(uint64_t a1)
{
  v2 = v1;
  v63 = *v1;
  v4 = sub_1DF7AD1B4();
  v58 = OUTLINED_FUNCTION_4(v4);
  v59 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF7AD1F4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v61 = v12;
  v62 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DF7AD014();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_13();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - v26;
  sub_1DF7AD004();
  sub_1DF7ACFE4();
  sub_1DF7ACEC4();
  (*(v19 + 16))(v24, v27, v16);
  v28 = sub_1DF7ACFA4();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v64;
  v32 = sub_1DF7ACF94();
  if (v31)
  {
    v33 = sub_1DF7ACED4();
    OUTLINED_FUNCTION_2_17(v33);
    (*(v34 + 8))(a1);
    (*(v19 + 8))(v27, v16);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v55 = v27;
    v56 = v19;
    v57 = v16;
    v63 = a1;
    v1[2] = v32;
    v35 = v60;
    sub_1DF7AD1E4();
    v64 = v2;
    v36 = *MEMORY[0x1E699FE90];
    v37 = v59;
    v54 = 0;
    v38 = *(v59 + 104);
    v38(v9, v36, v58);
    OUTLINED_FUNCTION_3_12();
    v39 = *(v37 + 8);
    v40 = OUTLINED_FUNCTION_4_9();
    v39(v40);
    v41 = OUTLINED_FUNCTION_1_17();
    (v38)(v41);
    sub_1DF7AD1C4();
    v42 = OUTLINED_FUNCTION_4_9();
    v39(v42);
    v43 = OUTLINED_FUNCTION_1_17();
    (v38)(v43);
    OUTLINED_FUNCTION_3_12();
    v44 = OUTLINED_FUNCTION_4_9();
    v39(v44);
    v45 = OUTLINED_FUNCTION_1_17();
    (v38)(v45);
    OUTLINED_FUNCTION_3_12();
    v46 = OUTLINED_FUNCTION_4_9();
    v39(v46);
    v47 = OUTLINED_FUNCTION_1_17();
    (v38)(v47);
    sub_1DF7AD1C4();
    v48 = OUTLINED_FUNCTION_4_9();
    v39(v48);
    v2 = v64;
    v49 = v64[2];

    v50 = v54;
    sub_1DF7AD1D4();

    v51 = sub_1DF7ACED4();
    OUTLINED_FUNCTION_2_17(v51);
    (*(v52 + 8))(v63);
    (*(v61 + 8))(v35, v62);
    (*(v56 + 8))(v55, v57);
    if (v50)
    {
    }
  }

  return v2;
}

uint64_t sub_1DF7A89B0()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54978, &unk_1DF7B93C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_1DF7ACF34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  HIDWORD(v10) = 0;
  v6 = sub_1DF7AD314();
  result = sqlite3_file_control(v6, 0, 10, &v10 + 4);
  if (result)
  {
    sub_1DF7ACF24();
    v8 = sub_1DF7AD234();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
    sub_1DF7AD034();
    sub_1DF7A9598();
    swift_allocError();
    sub_1DF7AD024();
    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Database.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Database.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.insert(domains:)(Swift::OpaquePointer domains)
{
  v2 = *(v1 + 16);
  sub_1DF7ACFA4();
  sub_1DF7AD084();
}

uint64_t sub_1DF7A8C00(uint64_t a1, uint64_t a2)
{
  sub_1DF783D70();
  result = sub_1DF7ACF84();
  if (!v2)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    v8 = a2 + 32;
    while (v6 != v7)
    {
      v9 = (v8 + (v6 << 6));
      v10 = v9[1];
      v42 = *v9;
      v43 = v10;
      v11 = v9[3];
      v13 = *v9;
      v12 = v9[1];
      v44 = v9[2];
      v45 = v11;
      __dst[0] = v13;
      __dst[1] = v12;
      v14 = v9[3];
      __dst[2] = v9[2];
      __dst[3] = v14;
      sub_1DF7A9494(&v42, v40);
      sub_1DF7A94F0();
      sub_1DF7AD214();
      v35 = v8;
      v36 = v7;
      v37 = v6 + 1;
      v38 = a1;
      __dst[0] = v42;
      __dst[1] = v43;
      __dst[2] = v44;
      __dst[3] = v45;
      result = sub_1DF7A5A54();
      v15 = result;
      v16 = 0;
      v46 = *(result + 16);
      v17 = (result + 72);
      while (v46 != v16)
      {
        if (v16 >= *(v15 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        v18 = *(v17 - 4);
        v19 = *(v17 - 1);
        v20 = *v17;
        v21 = *(v17 - 3);
        v22 = *(v17 - 2);
        v40[0] = *(v17 - 5);
        v40[1] = v18;
        v40[2] = v21;
        v40[3] = v22;
        v40[4] = v19;
        v40[5] = v20;
        sub_1DF7A5F80();

        sub_1DF7AD214();

        ++v16;
        v17 += 6;
      }

      v23 = 0;
      v24 = v44;
      v25 = *(v44 + 16);
      v26 = v44 + 32;
      a1 = v38;
      while (v25 != v23)
      {
        if (v23 >= *(v24 + 16))
        {
          goto LABEL_23;
        }

        sub_1DF76A114(v26, __dst);
        sub_1DF7A5044();
        sub_1DF7AD214();
        ++v23;
        result = sub_1DF76A0C0(__dst);
        v26 += 272;
      }

      v27 = 0;
      v28 = *(&v44 + 1);
      v29 = *(*(&v44 + 1) + 16);
      v30 = (*(&v44 + 1) + 32);
      while (v29 != v27)
      {
        if (v27 >= *(v28 + 16))
        {
          goto LABEL_24;
        }

        memcpy(__dst, v30, 0x58uLL);
        memcpy(v40, __dst, sizeof(v40));
        sub_1DF783BD0(__dst, v39);
        sub_1DF798E1C();
        sub_1DF7AD214();
        ++v27;
        result = sub_1DF78E0A4(__dst);
        v30 += 88;
      }

      v31 = 0;
      v32 = v45;
      v33 = *(v45 + 16);
      v34 = (v45 + 32);
      while (v33 != v31)
      {
        if (v31 >= *(v32 + 16))
        {
          goto LABEL_25;
        }

        memcpy(__dst, v34, 0x48uLL);
        memcpy(v40, __dst, 0x48uLL);
        sub_1DF783914(__dst, v39);
        sub_1DF795E34();
        sub_1DF7AD214();
        ++v31;
        result = sub_1DF795934(__dst);
        v34 += 72;
      }

      result = sub_1DF7A9544(&v42);
      v7 = v36;
      v6 = v37;
      v8 = v35;
    }
  }

  return result;
}

unint64_t sub_1DF7A92BC()
{
  result = qword_1ECE54950;
  if (!qword_1ECE54950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Database.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DF7A9440()
{
  result = qword_1ECE54960;
  if (!qword_1ECE54960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54960);
  }

  return result;
}

unint64_t sub_1DF7A94F0()
{
  result = qword_1ECE54968;
  if (!qword_1ECE54968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54968);
  }

  return result;
}

unint64_t sub_1DF7A9598()
{
  result = qword_1ECE54980;
  if (!qword_1ECE54980)
  {
    sub_1DF7AD034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54980);
  }

  return result;
}

uint64_t sub_1DF7A9608(uint64_t a1)
{
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1E12DEC80](a1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A969C(char a1)
{
  OUTLINED_FUNCTION_3_13();
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8;
  }

  MEMORY[0x1E12DEC80](v2);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A96E4()
{
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1E12DEC80](7);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9720()
{
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1E12DEC80](v0 + 1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9760()
{
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1E12DEC80](v0 + 9);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A97D0(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_3_13();
  a2(a1);
  OUTLINED_FUNCTION_7_10();

  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9850(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_3_13();
  a2(v5, a1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A98A4()
{
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1E12DEC80](v0 & 1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A98E0()
{
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1E12DEC80](v0);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A991C()
{
  sub_1DF7AD9E4();
  sub_1DF7AD404();

  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A99A8()
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12DEC80](v0 + 1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A99E8(uint64_t a1, char a2)
{
  sub_1DF7AD9E4();
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 8;
  }

  MEMORY[0x1E12DEC80](v3);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9A34()
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12DEC80](v0 + 9);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9A74()
{
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](7);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9AB4()
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12DEC80](v0 & 1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9B50()
{
  sub_1DF7AD9E4();
  sub_1DF7AD404();

  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9BE0()
{
  sub_1DF7AD9E4();
  sub_1DF7AD404();

  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9C8C()
{
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1E12DEC80](v0);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9CE0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1DF7AD9E4();
  a3(v6, a2);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9D44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1DF7AD9E4();
  a3(a2);
  OUTLINED_FUNCTION_7_10();

  return sub_1DF7ADA24();
}

uint64_t sub_1DF7A9D98(uint64_t a1, uint64_t a2)
{
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](a2);
  return sub_1DF7ADA24();
}

uint64_t DomainSchema.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DomainSchema.schemas.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = sub_1DF782AB4(v0[4]);
  v5 = sub_1DF782BB0(v1);
  sub_1DF77CECC(v5);
  v6 = sub_1DF782CA4(v2);
  sub_1DF77CECC(v6);
  v7 = sub_1DF782D98(v3);
  sub_1DF77CECC(v7);
  return v4;
}

uint64_t DomainSchema.init(_:ofType:visibility:schemas:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v61 = *a3;
  v68 = *a4;
  v9 = (*(a2 + 24))();
  v59 = v10;
  v60 = v9;
  v58 = (*(a2 + 32))(a1, a2);
  v11 = a5();
  v12 = sub_1DF7AA310(v11);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1DF798250(0, v13, 0);
    v15 = v73;
    v16 = v13 - 1;
    for (i = (v12 + 89); ; i = (i + 88))
    {
      v18 = *(i - 41);
      v71[0] = *(i - 57);
      v71[1] = v18;
      v71[2] = *(i - 25);
      *&v71[3] = *(i - 9);
      BYTE8(v71[3]) = *(i - 1);
      v19 = BYTE8(v71[3]);
      *(&v71[3] + 9) = *i;
      *(&v71[4] + 8) = *(i + 15);
      if (BYTE8(v71[3]) == 3)
      {
        v19 = v68;
      }

      v72 = v19;
      EntitySchema.visibility(_:)(&v72, __src);
      v20 = v15;
      v73 = v15;
      v21 = *(v15 + 16);
      v22 = *(v20 + 24);
      if (v21 >= v22 >> 1)
      {
        v23 = OUTLINED_FUNCTION_6_11(v22);
        sub_1DF798250(v23, v24, v25);
        v20 = v73;
      }

      *(v20 + 16) = v21 + 1;
      memcpy((v20 + 88 * v21 + 32), __src, 0x58uLL);
      if (!v16)
      {
        break;
      }

      v15 = v20;
      --v16;
    }
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v26 = v20;
  v27 = sub_1DF7AA4D0(v11);
  v28 = sub_1DF7AA9B4(v26);
  v57 = v26;

  *&v71[0] = v27;
  sub_1DF77CF8C(v28);
  v29 = *&v71[0];
  v30 = *(*&v71[0] + 16);
  if (v30)
  {
    v73 = v14;
    sub_1DF798230(0, v30, 0);
    v31 = v73;
    v32 = v29 + 32;
    do
    {
      sub_1DF76A114(v32, __src);
      v33 = v70;
      if (v70 == 3)
      {
        v33 = v68;
      }

      v72 = v33;
      IntentSchema.visibility(_:)(&v72, v71);
      sub_1DF76A0C0(__src);
      v73 = v31;
      v35 = *(v31 + 16);
      v34 = *(v31 + 24);
      if (v35 >= v34 >> 1)
      {
        v36 = OUTLINED_FUNCTION_6_11(v34);
        sub_1DF798230(v36, v37, v38);
        v31 = v73;
      }

      *(v31 + 16) = v35 + 1;
      memcpy((v31 + 272 * v35 + 32), v71, 0x110uLL);
      v32 += 272;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v39 = sub_1DF7AA65C(v11);
  v40 = *(v39 + 16);
  if (v40)
  {
    v55 = v31;
    v56 = v11;
    *&v71[0] = v14;
    sub_1DF798210(0, v40, 0);
    v41 = *&v71[0];
    v67 = v40 - 1;
    for (j = v39 + 48; ; j += 72)
    {
      v43 = *(j - 8);
      v44 = *(j + 8);
      v64 = *j;
      v65 = *(j - 16);
      v45 = *(j + 16);
      v46 = *(j + 24);
      v47 = *(j + 32);
      v48 = *(j + 48);
      v66 = *(j + 40);
      if (v47 == 3)
      {
        LOBYTE(v47) = v68;
      }

      v63 = v47;
      *&v71[0] = v41;
      v49 = *(v41 + 16);
      v50 = *(v41 + 24);

      if (v49 >= v50 >> 1)
      {
        sub_1DF798210(v50 > 1, v49 + 1, 1);
        v41 = *&v71[0];
      }

      *(v41 + 16) = v49 + 1;
      v51 = v41 + 72 * v49;
      *(v51 + 32) = v65;
      *(v51 + 40) = v43;
      *(v51 + 48) = v64;
      *(v51 + 56) = v44;
      *(v51 + 64) = v45;
      *(v51 + 72) = v46;
      *(v51 + 80) = v63;
      v52 = *(__src + 3);
      *(v51 + 81) = __src[0];
      *(v51 + 84) = v52;
      *(v51 + 88) = v66;
      *(v51 + 96) = v48;
      if (!v67)
      {
        break;
      }

      --v67;
    }

    v31 = v55;
    v11 = v56;
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  v53 = sub_1DF7AA818(v11);

  *a6 = v60;
  *(a6 + 8) = v59;
  *(a6 + 16) = v58;
  *(a6 + 24) = v61;
  *(a6 + 25) = v68;
  *(a6 + 32) = v31;
  *(a6 + 40) = v57;
  *(a6 + 48) = v41;
  *(a6 + 56) = v53;
  return result;
}

uint64_t sub_1DF7AA310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DF766CC8(v2, v13);
      sub_1DF7663E4(v13, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
      if (swift_dynamicCast())
      {
        if (__src[1])
        {
          memcpy(__dst, __src, sizeof(__dst));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = *(v3 + 16);
            sub_1DF77BDD4();
            v3 = v6;
          }

          v4 = *(v3 + 16);
          if (v4 >= *(v3 + 24) >> 1)
          {
            sub_1DF77BDD4();
            v3 = v7;
          }

          memcpy(v9, __dst, sizeof(v9));
          *(v3 + 16) = v4 + 1;
          memcpy((v3 + 88 * v4 + 32), v9, 0x58uLL);
          goto LABEL_12;
        }
      }

      else
      {
        memset(__src, 0, sizeof(__src));
      }

      memcpy(__dst, __src, sizeof(__dst));
      sub_1DF773CFC(__dst, &qword_1ECE53BF8, &qword_1DF7B1A88);
LABEL_12:
      v2 += 40;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DF7AA4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    for (i = a1 + 32; ; i += 40)
    {
      sub_1DF766CC8(i, v11);
      sub_1DF7663E4(v11, __dst);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
      if (swift_dynamicCast())
      {
        if (v9[1])
        {
          memcpy(__dst, v9, sizeof(__dst));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = *(v2 + 16);
            sub_1DF77BB28();
            v2 = v6;
          }

          v4 = *(v2 + 16);
          if (v4 >= *(v2 + 24) >> 1)
          {
            sub_1DF77BB28();
            v2 = v7;
          }

          *(v2 + 16) = v4 + 1;
          memcpy((v2 + 272 * v4 + 32), __dst, 0x110uLL);
          goto LABEL_12;
        }
      }

      else
      {
        bzero(v9, 0x110uLL);
      }

      sub_1DF773CFC(v9, &qword_1ECE53C00, &unk_1DF7B1A90);
LABEL_12:
      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DF7AA65C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DF766CC8(v2, v13);
      sub_1DF7663E4(v13, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
      if (swift_dynamicCast())
      {
        if (__src[1])
        {
          memcpy(__dst, __src, sizeof(__dst));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = *(v3 + 16);
            sub_1DF77BCFC();
            v3 = v6;
          }

          v4 = *(v3 + 16);
          if (v4 >= *(v3 + 24) >> 1)
          {
            sub_1DF77BCFC();
            v3 = v7;
          }

          memcpy(v9, __dst, sizeof(v9));
          *(v3 + 16) = v4 + 1;
          memcpy((v3 + 72 * v4 + 32), v9, 0x48uLL);
          goto LABEL_12;
        }
      }

      else
      {
        memset(__src, 0, sizeof(__src));
      }

      memcpy(__dst, __src, sizeof(__dst));
      sub_1DF773CFC(__dst, &qword_1ECE53BF0, &qword_1DF7B1A80);
LABEL_12:
      v2 += 40;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DF7AA818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DF766CC8(v2, v18);
      sub_1DF7663E4(v18, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
      if (swift_dynamicCast())
      {
        v4 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v5 = v15;
          v6 = v16;
          v7 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = *(v3 + 16);
            sub_1DF77BC00();
            v3 = v11;
          }

          v8 = *(v3 + 16);
          if (v8 >= *(v3 + 24) >> 1)
          {
            sub_1DF77BC00();
            v3 = v12;
          }

          *(v3 + 16) = v8 + 1;
          v9 = v3 + 40 * v8;
          *(v9 + 32) = v5;
          *(v9 + 40) = v4;
          *(v9 + 48) = v6;
          *(v9 + 56) = *(&v6 + 1);
          *(v9 + 64) = v7;
          goto LABEL_12;
        }
      }

      else
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
      }

      sub_1DF785700(v15, 0);
LABEL_12:
      v2 += 40;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DF7AA9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 112); v1; --v1)
  {
    v4 = *(i - 24);
    if (*i)
    {
      sub_1DF76A114(*i + 16, v15);
    }

    else
    {
      bzero(v15, 0x110uLL);
    }

    sub_1DF7ABA30(v15, __src);
    if (__src[1])
    {
      memcpy(__dst, __src, sizeof(__dst));
      if (v4 == 3)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v11 = v5;
      IntentSchema.visibility(_:)(&v11, v14);
      sub_1DF76A0C0(__dst);
      sub_1DF773CFC(v15, &qword_1ECE53C00, &unk_1DF7B1A90);
      if (v14[1])
      {
        memcpy(v15, v14, sizeof(v15));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = *(v2 + 16);
          sub_1DF77BB28();
          v2 = v8;
        }

        v6 = *(v2 + 16);
        if (v6 >= *(v2 + 24) >> 1)
        {
          sub_1DF77BB28();
          v2 = v9;
        }

        *(v2 + 16) = v6 + 1;
        memcpy((v2 + 272 * v6 + 32), v15, 0x110uLL);
        goto LABEL_17;
      }
    }

    else
    {
      sub_1DF773CFC(v15, &qword_1ECE53C00, &unk_1DF7B1A90);
      bzero(v14, 0x110uLL);
    }

    sub_1DF773CFC(v14, &qword_1ECE53C00, &unk_1DF7B1A90);
LABEL_17:
    i += 11;
  }

  return v2;
}

uint64_t static DomainSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v17 = *(a2 + 48);
  v18 = *(a1 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);
  if (!v12 && (sub_1DF7AD934() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DF7AAC94(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3 != v8)
  {
    return 0;
  }

  if (v4 != v9)
  {
    return 0;
  }

  if ((sub_1DF788F18(v6, v11) & 1) == 0)
  {
    return 0;
  }

  sub_1DF788FD4();
  if ((v13 & 1) == 0 || (sub_1DF78948C(v18, v17) & 1) == 0)
  {
    return 0;
  }

  return sub_1DF78964C(v16, v15);
}

uint64_t sub_1DF7AAC94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1DF7ABE7C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1DF7AD934();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DomainSchema.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54990, &qword_1DF7B93D8);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 24);
  v23 = *(v1 + 25);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DF765BC4();
  sub_1DF7ADA64();
  v29 = 0;
  sub_1DF7AD8D4();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DF7AB6B4();
    sub_1DF7AD904();
    v26 = v20;
    v25 = 2;
    sub_1DF795A48();
    sub_1DF7AD8C4();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t sub_1DF7AB024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF779EE0();
  *a2 = result;
  return result;
}

uint64_t sub_1DF7AB054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF765C98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF7AB080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF779EE0();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7AB0A8(uint64_t a1)
{
  v2 = sub_1DF765BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7AB0E4(uint64_t a1)
{
  v2 = sub_1DF765BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF7AB138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7AB9DC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1DF7AB19C()
{
  sub_1DF7A94F0();

  return sub_1DF7AD224();
}

uint64_t sub_1DF7AB290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7AB988();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1DF7AB2E4()
{
  v0 = sub_1DF7ACFD4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DF795E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54418, &unk_1DF7B65A0);
  sub_1DF795EE0();
  sub_1DF7AD664();
  sub_1DF7AD334();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_1DF7AB444()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54430, &unk_1DF7B65B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54438, &qword_1DF7B6A60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1DF7AD2C4();
  v8 = sub_1DF7AD2F4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DF7AD184();

  sub_1DF773CFC(v7, &qword_1ECE54438, &qword_1DF7B6A60);
  v9 = *MEMORY[0x1E69A00C0];
  v10 = sub_1DF7AD324();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  sub_1DF7AD174();
  sub_1DF773CFC(v3, &qword_1ECE54430, &unk_1DF7B65B0);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DF7AD184();

  sub_1DF773CFC(v7, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DF7AD184();

  return sub_1DF773CFC(v7, &qword_1ECE54438, &qword_1DF7B6A60);
}

unint64_t sub_1DF7AB6B4()
{
  result = qword_1ECE54998;
  if (!qword_1ECE54998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54998);
  }

  return result;
}

unint64_t sub_1DF7AB70C()
{
  result = qword_1ECE549A0;
  if (!qword_1ECE549A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549A0);
  }

  return result;
}

unint64_t sub_1DF7AB764()
{
  result = qword_1ECE549A8;
  if (!qword_1ECE549A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549A8);
  }

  return result;
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

uint64_t sub_1DF7AB7D0(uint64_t a1, int a2)
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

uint64_t sub_1DF7AB810(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF7AB884()
{
  result = qword_1ECE549B0;
  if (!qword_1ECE549B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549B0);
  }

  return result;
}

unint64_t sub_1DF7AB8DC()
{
  result = qword_1EE173988;
  if (!qword_1EE173988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173988);
  }

  return result;
}

unint64_t sub_1DF7AB934()
{
  result = qword_1EE173990;
  if (!qword_1EE173990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173990);
  }

  return result;
}

unint64_t sub_1DF7AB988()
{
  result = qword_1ECE549B8;
  if (!qword_1ECE549B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549B8);
  }

  return result;
}

unint64_t sub_1DF7AB9DC()
{
  result = qword_1EE173980;
  if (!qword_1EE173980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173980);
  }

  return result;
}

uint64_t sub_1DF7ABA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53C00, &unk_1DF7B1A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF7ABABC()
{
  result = qword_1ECE549C0;
  if (!qword_1ECE549C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549C0);
  }

  return result;
}

uint64_t sub_1DF7ABB28@<X0>(uint64_t *a1@<X8>)
{
  result = DomainConformanceType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DomainConformanceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Domain.intents.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_20(a1, a2);
  v2();
  v3 = v5[4];

  sub_1DF7A9544(v5);
  return v3;
}

uint64_t Domain.entities.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_20(a1, a2);
  v2();
  v3 = v5[5];

  sub_1DF7A9544(v5);
  return v3;
}

uint64_t Domain.enums.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_20(a1, a2);
  v2();
  v3 = v5[6];

  sub_1DF7A9544(v5);
  return v3;
}

Swift::String_optional __swiftcall Domain.getSchemaID(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  (*(v1 + 8))(v11);
  v4 = v11[2];

  sub_1DF7A9544(v11);
  v5 = sub_1DF7ABE10(countAndFlagsBits, object, v4);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1DF7ABE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DF7ABE7C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

unint64_t sub_1DF7ABE7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DF7AD9E4();
  sub_1DF7AD404();
  v6 = sub_1DF7ADA24();

  return sub_1DF7ABEF4(a1, a2, v6);
}

unint64_t sub_1DF7ABEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DF7AD934() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void static DomainBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = v2[2];
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v8 = *v3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > v2[3] >> 1)
      {
        if (v6 <= v7)
        {
          v10 = v6 + v5;
        }

        else
        {
          v10 = v6;
        }

        sub_1DF77BEAC(isUniquelyReferenced_nonNull_native, v10, 1, v2);
        v2 = v11;
      }

      if (*(v4 + 16))
      {
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AC8, &qword_1DF7AE890);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v5);
          v14 = v12 + v5;
          if (v13)
          {
            goto LABEL_20;
          }

          v2[2] = v14;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v3;
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

uint64_t static DomainBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AC0, &qword_1DF7AE888);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DF7AE850;
  sub_1DF766CC8(a1, v2 + 32);
  return v2;
}

_BYTE *storeEnumTagSinglePayload for DomainBuilder(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DF7AC1FC()
{
  result = qword_1ECE549C8;
  if (!qword_1ECE549C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549C8);
  }

  return result;
}

uint64_t sub_1DF7AC250@<X0>(uint64_t *a1@<X8>)
{
  result = DomainVisibility.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DomainVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static Switch.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1DF789E48(*a1, *a2))
  {

    sub_1DF789F4C();
  }
}

uint64_t Switch.init<A>(_:cases:)@<X0>(void *__src@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char **a7@<X8>)
{
  v14 = memcpy(__dst, __src, sizeof(__dst));
  v15 = a2(v14);
  memcpy(__srca, __src, sizeof(__srca));
  v16 = sub_1DF7AC584(__srca, v15, a3, a4, a5, a6);
  v23[9] = v15;
  __srca[0] = a3;
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = __dst;
  __srca[1] = a4;
  __srca[2] = a5;
  __srca[3] = a6;
  type metadata accessor for SwitchCase();
  v17 = sub_1DF7AD5B4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54178, &unk_1DF7B4AA0);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1DF7A025C(sub_1DF7AC890, v23, v17, v18, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);
  sub_1DF767908(__dst);

  *a7 = v16;
  a7[1] = v21;
  return result;
}

char *sub_1DF7AC584(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B10, &qword_1DF7AE8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF7AE850;
  memcpy((inited + 32), __dst, 0xB8uLL);
  sub_1DF767124(__dst, &v27);
  sub_1DF79B5FC();
  v29 = v12;
  v27 = a3;
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v13 = type metadata accessor for SwitchCase();
  v14 = sub_1DF7AD534();
  v26 = v14;
  if (v14 == sub_1DF7AD594())
  {
    return sub_1DF79B31C(v29);
  }

  while (1)
  {
    v15 = sub_1DF7AD584();
    sub_1DF7AD554();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = a2 + 32 + 48 * v14;
    v17 = *(v13 - 8);
    (*(v17 + 16))(&v27, v16, v13);
    sub_1DF7AD5A4();
    sub_1DF766CC8(v28, v23);
    (*(v17 + 8))(&v27, v13);
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v20 = (*(v19 + 24))(v18, v19);
    sub_1DF79B26C(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v21 = sub_1DF7AD594();
    v14 = v26;
    if (v26 == v21)
    {
      return sub_1DF79B31C(v29);
    }
  }

  result = sub_1DF7AD6D4();
  __break(1u);
  return result;
}

uint64_t sub_1DF7AC7BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  memcpy(__dst, (a1 + 16), 0x59uLL);
  memcpy(v14, (a1 + 16), 0x59uLL);
  sub_1DF770608(__dst, v16);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v12 = type metadata accessor for SwitchCase();
  SwitchCase.unsafeBitCast(to:)(v14, v12, a6);
  memcpy(v16, v14, 0x59uLL);
  return sub_1DF77A414(v16);
}

uint64_t sub_1DF7AC8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v4 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365736163 && a2 == 0xE500000000000000)
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

uint64_t sub_1DF7AC984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF7AC8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF7AC9AC(uint64_t a1)
{
  v2 = sub_1DF770A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7AC9E8(uint64_t a1)
{
  v2 = sub_1DF770A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Switch.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE549D0, &unk_1DF7B9A18);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v15 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1DF770A20();

  sub_1DF7ADA64();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53B30, &qword_1DF7AE900);
  sub_1DF76A3E0(&qword_1ECE53B38, sub_1DF77CAD4);
  OUTLINED_FUNCTION_1_18();

  if (!v13)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE549D8, &qword_1DF7B9A28);
    sub_1DF770F08(&qword_1ECE549E0, &qword_1ECE549E8);
    OUTLINED_FUNCTION_1_18();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_1DF7ACC20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54178, &unk_1DF7B4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF7ACC74(uint64_t a1)
{
  *(a1 + 8) = sub_1DF770560();
  result = sub_1DF786DC4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF7ACCC0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF7ACD00(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DF7ACD60()
{
  result = qword_1ECE549F8;
  if (!qword_1ECE549F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE549F8);
  }

  return result;
}

unint64_t sub_1DF7ACDB8()
{
  result = qword_1EE173750;
  if (!qword_1EE173750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173750);
  }

  return result;
}

unint64_t sub_1DF7ACE10()
{
  result = qword_1EE173758;
  if (!qword_1EE173758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173758);
  }

  return result;
}