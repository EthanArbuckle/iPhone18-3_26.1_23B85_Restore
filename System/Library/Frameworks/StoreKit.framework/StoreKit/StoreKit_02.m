void BackingValue.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      MEMORY[0x1B274AFC0](1);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v2 = v1;
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_13;
    case 2:
      MEMORY[0x1B274AFC0](2);
      v2 = v1;
LABEL_13:
      MEMORY[0x1B274AFE0](v2);
      break;
    case 3:
      MEMORY[0x1B274AFC0](3);
      sub_1B256ED5C();
      break;
    case 4:
      MEMORY[0x1B274AFC0](4);
      OUTLINED_FUNCTION_24();

      sub_1B2457170();
      break;
    case 5:
      MEMORY[0x1B274AFC0](5);
      OUTLINED_FUNCTION_24();

      sub_1B2457918();
      break;
    case 6:
      MEMORY[0x1B274AFC0](6);
      break;
    default:
      MEMORY[0x1B274AFC0](0);
      OUTLINED_FUNCTION_24();

      sub_1B256DA7C();
      break;
  }
}

uint64_t BackingValue.hashValue.getter()
{
  sub_1B256ED3C();
  BackingValue.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B245494C()
{
  sub_1B256ED3C();
  BackingValue.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t BackingValue.description.getter()
{
  v1 = *v0;
  result = 7104878;
  switch(*(v0 + 16))
  {
    case 1:
      result = sub_1B256DF7C();
      break;
    case 2:
      sub_1B24554E4();
      result = sub_1B256E3AC();
      break;
    case 3:
      if (v1)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
    case 4:
      result = MEMORY[0x1B2749EE0](*v0, &type metadata for BackingValue);
      break;
    case 5:
      result = sub_1B256D88C();
      break;
    case 6:
      return result;
    default:

      result = v1;
      break;
  }

  return result;
}

uint64_t BackingValue.debugDescription.getter()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = sub_1B256D9EC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_13();
  v4 = v3 - v2;
  v5 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      sub_1B256DF8C();
      goto LABEL_10;
    case 2:
      *&v22 = *v0;
      goto LABEL_8;
    case 3:
      LOBYTE(v22) = v5 & 1;
LABEL_8:
      sub_1B256DA1C();
      goto LABEL_10;
    case 4:
      objc_opt_self();
      BackingValue.foundation.getter(&v22);
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      sub_1B256EB3C();
      v6 = __swift_destroy_boxed_opaque_existential_1(&v22);
      *&v22 = 0;
      v7 = OUTLINED_FUNCTION_107(v6, sel_dataWithJSONObject_options_error_);
      swift_unknownObjectRelease();
      v8 = v22;
      if (v7)
      {
        sub_1B256D22C();

        sub_1B256D9DC();
        OUTLINED_FUNCTION_89();
        sub_1B256D9CC();
        OUTLINED_FUNCTION_70();
        v9 = OUTLINED_FUNCTION_89();
        sub_1B2443AE4(v9, v10);
        if (v4)
        {
          return OUTLINED_FUNCTION_18_1();
        }
      }

      else
      {
        v17 = v8;
        v18 = sub_1B256D0DC();

        swift_willThrow();
      }

      MEMORY[0x1B2749F00](v5, &type metadata for BackingValue);
      goto LABEL_19;
    case 5:
      objc_opt_self();
      BackingValue.foundation.getter(&v22);
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      sub_1B256EB3C();
      v11 = __swift_destroy_boxed_opaque_existential_1(&v22);
      *&v22 = 0;
      v12 = OUTLINED_FUNCTION_107(v11, sel_dataWithJSONObject_options_error_);
      swift_unknownObjectRelease();
      v13 = v22;
      if (v12)
      {
        sub_1B256D22C();

        sub_1B256D9DC();
        OUTLINED_FUNCTION_89();
        sub_1B256D9CC();
        OUTLINED_FUNCTION_70();
        v14 = OUTLINED_FUNCTION_89();
        sub_1B2443AE4(v14, v15);
        if (v4)
        {
          return OUTLINED_FUNCTION_18_1();
        }
      }

      else
      {
        v19 = v13;
        v20 = sub_1B256D0DC();

        swift_willThrow();
      }

      sub_1B256D89C();
LABEL_19:
      OUTLINED_FUNCTION_70();

      return OUTLINED_FUNCTION_18_1();
    case 6:
      v22 = 0u;
      v23 = 0u;
      v16 = OUTLINED_FUNCTION_31_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v16);
      sub_1B256E2DC();
      OUTLINED_FUNCTION_70();
      sub_1B243E88C(&v22, &qword_1EB7D05F0);
      return OUTLINED_FUNCTION_18_1();
    default:
      OUTLINED_FUNCTION_31_0();
      sub_1B256DA5C();
LABEL_10:
      OUTLINED_FUNCTION_70();
      return OUTLINED_FUNCTION_18_1();
  }
}

void BackingValue.value<A>(atKeyPath:sentinel:transform:)()
{
  OUTLINED_FUNCTION_67();
  v57 = v2;
  v58 = v1;
  v60 = v4;
  v61 = v3;
  v6 = v5;
  v62 = v7;
  v59 = v8;
  sub_1B256E2EC();
  OUTLINED_FUNCTION_1_1();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = *v0;
  v15 = *(v0 + 8);
  LOBYTE(v16) = *(v0 + 16);
  v17 = *(v6 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_84();
    sub_1B24472B8(v18, v19, v20);
    v21 = v6 + 40;
    while (v16 == 5)
    {
      if (!*(v14 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_99();
      v22 = sub_1B2455488();
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(v14 + 56) + 24 * v22;
      v27 = *v25;
      v26 = *(v25 + 8);
      v16 = *(v25 + 16);
      v28 = OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_52_0(v28, v29, v30);
      OUTLINED_FUNCTION_98();
      v34 = sub_1B24472E0(v31, v32, v33);
      if (v16 == 6 && (v26 | v27) == 0)
      {
        goto LABEL_17;
      }

      v21 += 16;
      v14 = v27;
      if (!--v17)
      {
        goto LABEL_13;
      }
    }

    v48 = OUTLINED_FUNCTION_84();
    v34 = sub_1B24472E0(v48, v49, v50);
LABEL_17:
    (v61)(v34);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_84();
    sub_1B24472B8(v36, v37, v38);
    v27 = v14;
    v26 = v15;
LABEL_13:
    v63 = v27;
    v64 = v26;
    v65 = v16;
    v39 = OUTLINED_FUNCTION_55_0();
    sub_1B24472B8(v39, v40, v41);
    v58(&v63);
    v42 = OUTLINED_FUNCTION_65(v63, v64, v65);
    v43 = v59;
    if (__swift_getEnumTagSinglePayload(v42, 1, v59) == 1)
    {
      v61();
      v44 = OUTLINED_FUNCTION_55_0();
      v47 = OUTLINED_FUNCTION_65(v44, v45, v46);
      if (__swift_getEnumTagSinglePayload(v47, 1, v43) != 1)
      {
        (*(v55 + 8))(v13, v56);
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_55_0();
      sub_1B24472E0(v51, v52, v53);
      (*(*(v43 - 8) + 32))(v62, v13, v43);
    }
  }

  OUTLINED_FUNCTION_45();
}

BOOL sub_1B2455044(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1B2455090()
{
  sub_1B256D9BC();
  OUTLINED_FUNCTION_70();
  sub_1B256ED3C();
  sub_1B256DA7C();
  v0 = sub_1B256ED7C();

  return v0;
}

char *sub_1B2455104(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

void sub_1B2455124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_80();
  if (v9 < v8 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4), OUTLINED_FUNCTION_7_0(), v5 + *(v10 + 72) * v4 <= v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = OUTLINED_FUNCTION_3_6();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (v6 != v5)
  {
    v11 = OUTLINED_FUNCTION_3_6();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

char *sub_1B2455208(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_1B2455240(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_1B2455260(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_1B2455288(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_1B24552E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

void sub_1B2455308()
{
  OUTLINED_FUNCTION_80();
  if (v4 >= v2 && v2 + 8 * v3 > v4)
  {
    if (v1 != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0460);
      v7 = OUTLINED_FUNCTION_3_6();

      MEMORY[0x1EEE6BCF8](v7);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0460);
    v6 = OUTLINED_FUNCTION_3_6();

    MEMORY[0x1EEE6BD00](v6);
  }
}

void sub_1B24553D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_80();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_7_0(), v5 + *(v10 + 72) * v4 <= v6))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_3_6();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (v6 != v5)
  {
    v11 = OUTLINED_FUNCTION_3_6();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

unint64_t sub_1B2455488()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_71();
  sub_1B256DA7C();
  sub_1B256ED7C();
  v0 = OUTLINED_FUNCTION_41_0();

  return sub_1B24557A0(v0, v1, v2);
}

unint64_t sub_1B24554E4()
{
  result = qword_1EB7D05C8;
  if (!qword_1EB7D05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D05C8);
  }

  return result;
}

unint64_t sub_1B2455538()
{
  result = qword_1EB7D05D0;
  if (!qword_1EB7D05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D05D0);
  }

  return result;
}

unint64_t sub_1B245558C()
{
  result = qword_1EB7D05D8;
  if (!qword_1EB7D05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D05D8);
  }

  return result;
}

unint64_t sub_1B24555E0(uint64_t a1)
{
  sub_1B256D3CC();
  sub_1B2458794(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  OUTLINED_FUNCTION_27_0();
  v2 = sub_1B256D8EC();

  return sub_1B2455854(a1, v2);
}

unint64_t sub_1B2455674(uint64_t a1)
{
  v2 = sub_1B256E45C();

  return sub_1B2455A10(a1, v2);
}

void sub_1B24556B8()
{
  sub_1B256D9BC();
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256ED7C();

  sub_1B2455AD4();
}

unint64_t sub_1B2455748()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_71();
  sub_1B256DA7C();
  sub_1B256ED7C();
  v0 = OUTLINED_FUNCTION_41_0();
  return sub_1B24557A0(v0, v1, v2);
}

unint64_t sub_1B24557A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B256EB5C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B2455854(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1B256D3CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1B2458794(&qword_1EB7D0630, MEMORY[0x1E69695A8]);
    v9 = sub_1B256D96C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B2455A10(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1B244AA1C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1B274A6E0](v8, a1);
    sub_1B245856C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_1B2455AD4()
{
  OUTLINED_FUNCTION_67();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_1B256D9BC();
    v6 = v5;
    if (v4 == sub_1B256D9BC() && v6 == v7)
    {

      break;
    }

    OUTLINED_FUNCTION_35_0();
    v9 = sub_1B256EB5C();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_45();
}

char *sub_1B2455BB8(char *a1, int64_t a2, char a3)
{
  result = sub_1B2455F30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2455BD8(char *a1, int64_t a2, char a3)
{
  result = sub_1B2456038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2455BF8(char *a1, int64_t a2, char a3)
{
  result = sub_1B2456140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B2455C18(void *a1, int64_t a2, char a3)
{
  result = sub_1B2456254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B2455E18(void *a1, int64_t a2, char a3)
{
  result = sub_1B24566A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2455E38(char *a1, int64_t a2, char a3)
{
  result = sub_1B24567D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B2455E58(void *a1, int64_t a2, char a3)
{
  result = sub_1B24568E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2455E78(char *a1, int64_t a2, char a3)
{
  result = sub_1B2456A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B2455E98(void *a1, int64_t a2, char a3)
{
  result = sub_1B2456B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2455EB8(char *a1, int64_t a2, char a3)
{
  result = sub_1B2456C50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2455F30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2456038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2456140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[136 * v8] <= v12)
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B2456254(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[17 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B2456388()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v10 = v9;
  if (v11)
  {
    v12 = *(v2 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v1)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v1)
      {
        v13 = v1;
      }
    }
  }

  else
  {
    v13 = v1;
  }

  v14 = *(v2 + 16);
  if (v13 <= v14)
  {
    v15 = *(v2 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  v16 = *(*(v7(0) - 8) + 72);
  v17 = OUTLINED_FUNCTION_85();
  v18 = _swift_stdlib_malloc_size(v17);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v18 - v0 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v17[2] = v14;
  v17[3] = 2 * ((v18 - v0) / v16);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_42();
  if (v10)
  {
    sub_1B24553D0(v8 + v20, v14, v17 + v20, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_45();
}

void sub_1B2456514()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v6 = v2;
  v8 = v7;
  if (v9)
  {
    v10 = *(v2 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < v1)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= v1)
      {
        v11 = v1;
      }
    }
  }

  else
  {
    v11 = v1;
  }

  v12 = *(v2 + 16);
  if (v11 <= v12)
  {
    v13 = *(v2 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v5) - 8) + 72);
  v15 = OUTLINED_FUNCTION_85();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 - v0 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_24;
  }

  v15[2] = v12;
  v15[3] = 2 * ((v16 - v0) / v14);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_42();
  if (v8)
  {
    sub_1B2455124(v6 + v18, v12, v15 + v18, v5);
    *(v6 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_45();
}

void *sub_1B24566A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B24567D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B24568E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2456A18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B2456B20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B2456C50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B2456DAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B2456E08()
{
  result = qword_1EB7D05E8;
  if (!qword_1EB7D05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D05E8);
  }

  return result;
}

void sub_1B2456EAC()
{
  OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_18_1();
      sub_1B256DA7C();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1B2456F10()
{
  OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      memcpy(__dst, v2, 0x70uLL);
      if (__dst[1])
      {
        sub_1B256ED5C();
        sub_1B2447BEC(__dst, v6);
        sub_1B256DA7C();
      }

      else
      {
        sub_1B256ED5C();
        sub_1B2447BEC(__dst, v6);
      }

      v3 = LOBYTE(__dst[9]);
      v4 = __dst[10];
      v5 = __dst[11];
      sub_1B256DA7C();
      OUTLINED_FUNCTION_34();
      sub_1B256E28C();
      OUTLINED_FUNCTION_99();
      sub_1B256DA7C();
      MEMORY[0x1B274AFC0](v3);
      MEMORY[0x1B274AFC0](v4);
      MEMORY[0x1B274AFC0](v5);
      sub_1B256DA7C();
      sub_1B2447308(__dst);
      v2 += 112;
      --v0;
    }

    while (v0);
  }
}

void sub_1B2457038()
{
  OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      memcpy(__dst, v2, 0x84uLL);
      sub_1B24587DC(__dst, v6);
      sub_1B256DA7C();
      sub_1B256DA7C();
      sub_1B256DA7C();
      if (__dst[13])
      {
        v3 = LOBYTE(__dst[9]);
        v4 = __dst[10];
        v5 = __dst[11];
        sub_1B256ED5C();
        OUTLINED_FUNCTION_99();
        sub_1B256E28C();
        MEMORY[0x1B274AFC0](v3);
        MEMORY[0x1B274AFC0](v4);
        MEMORY[0x1B274AFC0](v5);
        sub_1B256DA7C();
      }

      else
      {
        sub_1B256ED5C();
      }

      sub_1B256E28C();
      sub_1B2458838(__dst);
      v2 += 136;
      --v0;
    }

    while (v0);
  }
}

void sub_1B2457170()
{
  OUTLINED_FUNCTION_54_0();
  if (v0)
  {
    v2 = (v1 + 48);
    while (2)
    {
      v3 = *(v2 - 2);
      v4 = *v2;
      v2 += 24;
      switch(v4)
      {
        case 1:
          MEMORY[0x1B274AFC0](1);
          if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v9 = v3;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_11;
        case 2:
          MEMORY[0x1B274AFC0](2);
          v9 = v3;
LABEL_11:
          MEMORY[0x1B274AFE0](v9);
          goto LABEL_15;
        case 3:
          MEMORY[0x1B274AFC0](3);
          sub_1B256ED5C();
          goto LABEL_15;
        case 4:
          MEMORY[0x1B274AFC0](4);

          v8 = OUTLINED_FUNCTION_18_1();
          sub_1B2457170(v8);
          v5 = OUTLINED_FUNCTION_27_0();
          v7 = 4;
          goto LABEL_13;
        case 5:
          MEMORY[0x1B274AFC0](5);

          OUTLINED_FUNCTION_18_1();
          sub_1B2457918();
          v5 = OUTLINED_FUNCTION_27_0();
          v7 = 5;
          goto LABEL_13;
        case 6:
          MEMORY[0x1B274AFC0](6);
          goto LABEL_15;
        default:
          MEMORY[0x1B274AFC0](0);

          OUTLINED_FUNCTION_18_1();
          sub_1B256DA7C();
          v5 = OUTLINED_FUNCTION_27_0();
          v7 = 0;
LABEL_13:
          sub_1B24472E0(v5, v6, v7);
LABEL_15:
          if (!--v0)
          {
            return;
          }

          continue;
      }
    }
  }
}

void sub_1B2457290()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v2 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v66 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v46 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v44 - v8;
  v44[1] = type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  OUTLINED_FUNCTION_1_1();
  v44[0] = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  type metadata accessor for Transaction.AdvancedCommerceInfo.Item(0);
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  v21 = *(v1 + 16);
  MEMORY[0x1B274AFC0](v21);
  v52 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_42();
    v49 = v1 + v23;
    v50 = v24;
    v48 = *(v16 + 72);
    v45 = (v66 + 32);
    v44[2] = v66 + 8;
    v51 = v9;
    v47 = v20;
    do
    {
      v66 = v22;
      sub_1B24585C0(v49 + v48 * v22, v20, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
      v54 = *(v20 + 48);
      v53 = *(v20 + 54);
      v25 = *(v20 + 56);
      v55 = *(v20 + 64);
      v26 = *(v20 + 72);
      v56 = v25;
      v57 = v26;
      v27 = *(v20 + 88);
      v58 = *(v20 + 80);
      v59 = v27;
      v28 = *(v20 + 96);
      v29 = *(v20 + 104);
      v63 = *(v20 + 112);
      v62 = *(v20 + 116);
      v30 = *(v20 + 118);
      v60 = v28;
      v61 = v30;
      v65 = *(v20 + 120);
      v64 = *(v20 + 128);
      sub_1B256DA7C();
      OUTLINED_FUNCTION_22_1();
      sub_1B256DA7C();
      sub_1B256DA7C();
      sub_1B256ED5C();
      if (v29)
      {
        sub_1B256E28C();
        MEMORY[0x1B274AFC0](v57);
        MEMORY[0x1B274AFC0](v58);
        MEMORY[0x1B274AFC0](v59);
        sub_1B256DA7C();
      }

      sub_1B256E28C();
      v31 = *(v20 + 136);
      if (v31)
      {
        sub_1B256ED5C();
        MEMORY[0x1B274AFC0](*(v31 + 16));
        v32 = *(v31 + 16);
        if (v32)
        {
          OUTLINED_FUNCTION_42();
          v34 = v31 + v33;
          v36 = *(v35 + 72);
          do
          {
            OUTLINED_FUNCTION_48_0();
            sub_1B24585C0(v34, v14, v37);
            sub_1B256DA7C();
            sub_1B256DA7C();
            OUTLINED_FUNCTION_1_8();
            sub_1B2458794(&qword_1EB7D0678, v38);
            OUTLINED_FUNCTION_41_1();
            sub_1B256D8FC();
            sub_1B256E28C();
            OUTLINED_FUNCTION_51_0();
            sub_1B245868C(v14, v39);
            v34 += v36;
            --v32;
          }

          while (v32);
        }
      }

      else
      {
        sub_1B256ED5C();
      }

      v40 = v51;
      v20 = v47;
      sub_1B245861C(v47 + v50, v51);
      if (__swift_getEnumTagSinglePayload(v40, 1, v2) == 1)
      {
        sub_1B256ED5C();
      }

      else
      {
        (*v45)(v46, v40, v2);
        sub_1B256ED5C();
        OUTLINED_FUNCTION_1_8();
        sub_1B2458794(&qword_1EB7D0678, v41);
        sub_1B256D8FC();
        v42 = OUTLINED_FUNCTION_41_0();
        v43(v42);
      }

      sub_1B245868C(v20, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
      v22 = v66 + 1;
    }

    while (v66 + 1 != v52);
  }

  OUTLINED_FUNCTION_45();
}

void sub_1B24577B8()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  v8 = *(v1 + 16);
  MEMORY[0x1B274AFC0](v8);
  if (v8)
  {
    OUTLINED_FUNCTION_42();
    v10 = v1 + v9;
    v11 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_48_0();
      sub_1B24585C0(v10, v7, v12);
      sub_1B256DA7C();
      sub_1B256DA7C();
      sub_1B256D36C();
      OUTLINED_FUNCTION_1_8();
      sub_1B2458794(&qword_1EB7D0678, v13);
      sub_1B256D8FC();
      sub_1B256E28C();
      OUTLINED_FUNCTION_51_0();
      sub_1B245868C(v7, v14);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_45();
}

void sub_1B2457918()
{
  OUTLINED_FUNCTION_67();
  __src = v0;
  v111 = v1;
  v107 = v1 + 64;
  OUTLINED_FUNCTION_5_4();
  v4 = v3 & v2;
  v106 = (v5 + 63) >> 6;

  v116 = 0;
  v6 = 0;
  if (v4)
  {
LABEL_6:
    while (2)
    {
      v115 = v6;
      v8 = __clz(__rbit64(v4)) | (v6 << 6);
      v9 = (*(v111 + 48) + 16 * v8);
      v11 = *v9;
      v10 = v9[1];
      v12 = v4;
      v13 = *(v111 + 56) + 24 * v8;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);

      v113 = v14;
      v108 = v15;
      sub_1B24472B8(v14, v15, v16);
      if (v10)
      {
        v114 = (v12 - 1) & v12;
        memcpy(v143, __src, 0x48uLL);
        OUTLINED_FUNCTION_69();
        sub_1B256DA7C();

        switch(v16)
        {
          case 1:
            OUTLINED_FUNCTION_74();
            if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v103 = v14;
            }

            else
            {
              v103 = 0;
            }

            goto LABEL_150;
          case 2:
            OUTLINED_FUNCTION_77();
            v103 = v14;
LABEL_150:
            MEMORY[0x1B274AFE0](v103);
            goto LABEL_154;
          case 3:
            OUTLINED_FUNCTION_79();
            sub_1B256ED5C();
            goto LABEL_154;
          case 4:
            OUTLINED_FUNCTION_93();
            v20 = v14;
            MEMORY[0x1B274AFC0](*(v14 + 16));
            v17 = v14;
            v117 = *(v14 + 16);
            if (v117)
            {
              while (2)
              {
                OUTLINED_FUNCTION_81();
                v120 = v21;
                switch(v22)
                {
                  case 1:
                    OUTLINED_FUNCTION_74();
                    if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v100 = v20;
                    }

                    else
                    {
                      v100 = 0;
                    }

                    goto LABEL_138;
                  case 2:
                    OUTLINED_FUNCTION_77();
                    v100 = v20;
LABEL_138:
                    MEMORY[0x1B274AFE0](v100);
                    goto LABEL_142;
                  case 3:
                    OUTLINED_FUNCTION_79();
                    sub_1B256ED5C();
                    goto LABEL_142;
                  case 4:
                    v105 = v11;
                    v109 = v20;
                    MEMORY[0x1B274AFC0](4);
                    MEMORY[0x1B274AFC0](*(v20 + 16));
                    v121 = *(v20 + 16);
                    if (!v121)
                    {
                      goto LABEL_142;
                    }

                    while (2)
                    {
                      OUTLINED_FUNCTION_81();
                      v125 = v26;
                      switch(v27)
                      {
                        case 1:
                          OUTLINED_FUNCTION_74();
                          if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                          {
                            v97 = v20;
                          }

                          else
                          {
                            v97 = 0;
                          }

                          goto LABEL_127;
                        case 2:
                          OUTLINED_FUNCTION_77();
                          v97 = v20;
LABEL_127:
                          MEMORY[0x1B274AFE0](v97);
                          goto LABEL_131;
                        case 3:
                          OUTLINED_FUNCTION_79();
                          sub_1B256ED5C();
                          goto LABEL_131;
                        case 4:
                          v112 = v11;
                          v118 = v20;
                          MEMORY[0x1B274AFC0](4);
                          MEMORY[0x1B274AFC0](*(v20 + 16));
                          v126 = *(v20 + 16);
                          if (!v126)
                          {
                            goto LABEL_131;
                          }

                          while (2)
                          {
                            OUTLINED_FUNCTION_81();
                            v128 = v31;
                            switch(v32)
                            {
                              case 1:
                                OUTLINED_FUNCTION_74();
                                if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                {
                                  v94 = v20;
                                }

                                else
                                {
                                  v94 = 0;
                                }

                                goto LABEL_116;
                              case 2:
                                OUTLINED_FUNCTION_77();
                                v94 = v20;
LABEL_116:
                                MEMORY[0x1B274AFE0](v94);
                                goto LABEL_120;
                              case 3:
                                OUTLINED_FUNCTION_79();
                                sub_1B256ED5C();
                                goto LABEL_120;
                              case 4:
                                v119 = v11;
                                v123 = v20;
                                MEMORY[0x1B274AFC0](4);
                                MEMORY[0x1B274AFC0](*(v20 + 16));
                                v134 = *(v20 + 16);
                                if (!v134)
                                {
                                  goto LABEL_120;
                                }

                                v133 = v20 + 32;

                                v20 = 0;
                                while (2)
                                {
                                  v36 = v133 + 24 * v20;
                                  v11 = *v36;
                                  switch(*(v36 + 16))
                                  {
                                    case 1:
                                      OUTLINED_FUNCTION_74();
                                      if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                      {
                                        v91 = v11;
                                      }

                                      else
                                      {
                                        v91 = 0;
                                      }

                                      goto LABEL_105;
                                    case 2:
                                      OUTLINED_FUNCTION_77();
                                      v91 = v11;
LABEL_105:
                                      MEMORY[0x1B274AFE0](v91);
                                      goto LABEL_109;
                                    case 3:
                                      OUTLINED_FUNCTION_79();
                                      sub_1B256ED5C();
                                      goto LABEL_109;
                                    case 4:
                                      v124 = *(v36 + 8);
                                      OUTLINED_FUNCTION_93();
                                      MEMORY[0x1B274AFC0](*(v11 + 16));
                                      v40 = *(v11 + 16);
                                      if (!v40)
                                      {
                                        goto LABEL_109;
                                      }

                                      v41 = v11 + 32;
                                      v122 = v11;

                                      v42 = 0;
                                      v130 = v40;
                                      v131 = v20;
                                      v129 = v11 + 32;
                                      while (2)
                                      {
                                        v43 = v41 + 24 * v42;
                                        v45 = *v43;
                                        v44 = *(v43 + 8);
                                        switch(*(v43 + 16))
                                        {
                                          case 1:
                                            OUTLINED_FUNCTION_74();
                                            if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                            {
                                              v90 = v45;
                                            }

                                            else
                                            {
                                              v90 = 0;
                                            }

                                            goto LABEL_94;
                                          case 2:
                                            OUTLINED_FUNCTION_77();
                                            v90 = v45;
LABEL_94:
                                            MEMORY[0x1B274AFE0](v90);
                                            goto LABEL_98;
                                          case 3:
                                            OUTLINED_FUNCTION_79();
                                            sub_1B256ED5C();
                                            goto LABEL_98;
                                          case 4:
                                            v127 = *(v43 + 8);
                                            OUTLINED_FUNCTION_93();
                                            MEMORY[0x1B274AFC0](*(v45 + 16));
                                            v49 = *(v45 + 16);
                                            if (!v49)
                                            {
                                              goto LABEL_98;
                                            }

                                            v141 = v45 + 32;

                                            v50 = 0;
                                            v132 = v42;
                                            v136 = v49;
                                            v137 = v45;
                                            while (2)
                                            {
                                              v51 = v141 + 24 * v50;
                                              v52 = *v51;
                                              v11 = *(v51 + 8);
                                              v142 = v50;
                                              switch(*(v51 + 16))
                                              {
                                                case 1:
                                                  OUTLINED_FUNCTION_74();
                                                  if ((v52 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                                  {
                                                    v89 = v52;
                                                  }

                                                  else
                                                  {
                                                    v89 = 0;
                                                  }

                                                  goto LABEL_83;
                                                case 2:
                                                  OUTLINED_FUNCTION_77();
                                                  v89 = v52;
LABEL_83:
                                                  MEMORY[0x1B274AFE0](v89);
                                                  goto LABEL_87;
                                                case 3:
                                                  OUTLINED_FUNCTION_79();
                                                  sub_1B256ED5C();
                                                  goto LABEL_87;
                                                case 4:
                                                  v135 = *(v51 + 8);
                                                  v140 = *v51;
                                                  MEMORY[0x1B274AFC0](4);
                                                  MEMORY[0x1B274AFC0](*(v52 + 16));
                                                  v139 = *(v52 + 16);
                                                  if (v139)
                                                  {
                                                    v11 = v52 + 32;

                                                    v56 = 0;
                                                    v57 = v139;
                                                    v138 = v52 + 32;
                                                    while (2)
                                                    {
                                                      v58 = v11 + 24 * v56;
                                                      v59 = *v58;
                                                      v60 = *(v58 + 8);
                                                      switch(*(v58 + 16))
                                                      {
                                                        case 1:
                                                          OUTLINED_FUNCTION_74();
                                                          if ((v59 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                                          {
                                                            v88 = v59;
                                                          }

                                                          else
                                                          {
                                                            v88 = 0;
                                                          }

                                                          goto LABEL_72;
                                                        case 2:
                                                          OUTLINED_FUNCTION_77();
                                                          v88 = v59;
LABEL_72:
                                                          MEMORY[0x1B274AFE0](v88);
                                                          goto LABEL_76;
                                                        case 3:
                                                          OUTLINED_FUNCTION_79();
                                                          sub_1B256ED5C();
                                                          goto LABEL_76;
                                                        case 4:
                                                          OUTLINED_FUNCTION_93();
                                                          MEMORY[0x1B274AFC0](*(v59 + 16));
                                                          v64 = *(v59 + 16);
                                                          if (v64)
                                                          {

                                                            v65 = 0;
                                                            while (2)
                                                            {
                                                              v66 = v59 + 32 + 24 * v65;
                                                              v67 = *v66;
                                                              switch(*(v66 + 16))
                                                              {
                                                                case 1:
                                                                  OUTLINED_FUNCTION_74();
                                                                  if ((v67 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                                                  {
                                                                    v85 = v67;
                                                                  }

                                                                  else
                                                                  {
                                                                    v85 = 0;
                                                                  }

                                                                  goto LABEL_61;
                                                                case 2:
                                                                  OUTLINED_FUNCTION_77();
                                                                  v85 = v67;
LABEL_61:
                                                                  MEMORY[0x1B274AFE0](v85);
                                                                  goto LABEL_65;
                                                                case 3:
                                                                  OUTLINED_FUNCTION_79();
                                                                  sub_1B256ED5C();
                                                                  goto LABEL_65;
                                                                case 4:
                                                                  OUTLINED_FUNCTION_93();
                                                                  MEMORY[0x1B274AFC0](*(v67 + 16));
                                                                  v71 = *(v67 + 16);
                                                                  if (v71)
                                                                  {

                                                                    v72 = (v67 + 48);
                                                                    while (2)
                                                                    {
                                                                      v73 = *(v72 - 2);
                                                                      v74 = *v72;
                                                                      v72 += 24;
                                                                      switch(v74)
                                                                      {
                                                                        case 1:
                                                                          OUTLINED_FUNCTION_74();
                                                                          if ((v73 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                                                                          {
                                                                            v79 = v73;
                                                                          }

                                                                          else
                                                                          {
                                                                            v79 = 0;
                                                                          }

                                                                          goto LABEL_50;
                                                                        case 2:
                                                                          OUTLINED_FUNCTION_77();
                                                                          v79 = v73;
LABEL_50:
                                                                          MEMORY[0x1B274AFE0](v79);
                                                                          goto LABEL_54;
                                                                        case 3:
                                                                          OUTLINED_FUNCTION_79();
                                                                          sub_1B256ED5C();
                                                                          goto LABEL_54;
                                                                        case 4:
                                                                          OUTLINED_FUNCTION_93();

                                                                          v78 = OUTLINED_FUNCTION_69();
                                                                          sub_1B2457170(v78);
                                                                          v75 = OUTLINED_FUNCTION_14_3();
                                                                          v77 = 4;
                                                                          goto LABEL_52;
                                                                        case 5:
                                                                          OUTLINED_FUNCTION_76();

                                                                          v80 = OUTLINED_FUNCTION_69();
                                                                          sub_1B2457918(v80, v81);
                                                                          v75 = OUTLINED_FUNCTION_14_3();
                                                                          v77 = 5;
                                                                          goto LABEL_52;
                                                                        case 6:
                                                                          OUTLINED_FUNCTION_75();
                                                                          goto LABEL_54;
                                                                        default:
                                                                          OUTLINED_FUNCTION_78();

                                                                          OUTLINED_FUNCTION_69();
                                                                          sub_1B256DA7C();
                                                                          v75 = OUTLINED_FUNCTION_14_3();
                                                                          v77 = 0;
LABEL_52:
                                                                          sub_1B24472E0(v75, v76, v77);
LABEL_54:
                                                                          if (--v71)
                                                                          {
                                                                            continue;
                                                                          }

                                                                          OUTLINED_FUNCTION_15_3();
                                                                          sub_1B24472E0(v82, v83, v84);
                                                                          break;
                                                                      }

                                                                      break;
                                                                    }
                                                                  }

                                                                  goto LABEL_65;
                                                                case 5:
                                                                  OUTLINED_FUNCTION_76();

                                                                  v86 = OUTLINED_FUNCTION_61();
                                                                  sub_1B2457918(v86, v87);
                                                                  OUTLINED_FUNCTION_87();
                                                                  goto LABEL_63;
                                                                case 6:
                                                                  OUTLINED_FUNCTION_75();
                                                                  goto LABEL_65;
                                                                default:
                                                                  OUTLINED_FUNCTION_78();

                                                                  OUTLINED_FUNCTION_61();
                                                                  sub_1B256DA7C();
                                                                  OUTLINED_FUNCTION_43();
LABEL_63:
                                                                  sub_1B24472E0(v68, v69, v70);
LABEL_65:
                                                                  if (++v65 != v64)
                                                                  {
                                                                    continue;
                                                                  }

                                                                  sub_1B24472E0(v59, v60, 4);
                                                                  v49 = v136;
                                                                  v45 = v137;
                                                                  v11 = v138;
                                                                  v57 = v139;
                                                                  break;
                                                              }

                                                              break;
                                                            }
                                                          }

                                                          goto LABEL_76;
                                                        case 5:
                                                          OUTLINED_FUNCTION_76();

                                                          sub_1B2457918(v143, v59);
                                                          OUTLINED_FUNCTION_87();
                                                          goto LABEL_74;
                                                        case 6:
                                                          OUTLINED_FUNCTION_75();
                                                          goto LABEL_76;
                                                        default:
                                                          OUTLINED_FUNCTION_78();

                                                          sub_1B256DA7C();
                                                          v61 = OUTLINED_FUNCTION_21_1();
LABEL_74:
                                                          sub_1B24472E0(v61, v62, v63);
LABEL_76:
                                                          if (++v56 != v57)
                                                          {
                                                            continue;
                                                          }

                                                          sub_1B24472E0(v140, v135, 4);
                                                          v40 = v130;
                                                          v20 = v131;
                                                          v41 = v129;
                                                          v42 = v132;
                                                          break;
                                                      }

                                                      break;
                                                    }
                                                  }

                                                  goto LABEL_87;
                                                case 5:
                                                  OUTLINED_FUNCTION_76();

                                                  sub_1B2457918(v143, v52);
                                                  v53 = OUTLINED_FUNCTION_88();
                                                  v55 = 5;
                                                  goto LABEL_85;
                                                case 6:
                                                  OUTLINED_FUNCTION_75();
                                                  goto LABEL_87;
                                                default:
                                                  OUTLINED_FUNCTION_78();

                                                  sub_1B256DA7C();
                                                  v53 = OUTLINED_FUNCTION_88();
                                                  v55 = 0;
LABEL_85:
                                                  sub_1B24472E0(v53, v54, v55);
LABEL_87:
                                                  v50 = v142 + 1;
                                                  if (v142 + 1 != v49)
                                                  {
                                                    continue;
                                                  }

                                                  v46 = v45;
                                                  v47 = v127;
                                                  v48 = 4;
                                                  break;
                                              }

                                              break;
                                            }

LABEL_96:
                                            sub_1B24472E0(v46, v47, v48);
LABEL_98:
                                            if (++v42 != v40)
                                            {
                                              continue;
                                            }

                                            v37 = v122;
                                            v38 = v124;
                                            v39 = 4;
                                            break;
                                          case 5:
                                            OUTLINED_FUNCTION_76();

                                            sub_1B2457918(v143, v45);
                                            OUTLINED_FUNCTION_98();
                                            goto LABEL_96;
                                          case 6:
                                            OUTLINED_FUNCTION_75();
                                            goto LABEL_98;
                                          default:
                                            OUTLINED_FUNCTION_78();

                                            sub_1B256DA7C();
                                            v46 = v45;
                                            v47 = v44;
                                            v48 = 0;
                                            goto LABEL_96;
                                        }

                                        break;
                                      }

LABEL_107:
                                      sub_1B24472E0(v37, v38, v39);
LABEL_109:
                                      if (++v20 != v134)
                                      {
                                        continue;
                                      }

                                      v33 = v123;
                                      v34 = v119;
                                      v35 = 4;
                                      break;
                                    case 5:
                                      OUTLINED_FUNCTION_76();

                                      v92 = OUTLINED_FUNCTION_69();
                                      sub_1B2457918(v92, v93);
                                      v37 = OUTLINED_FUNCTION_14_3();
                                      v39 = 5;
                                      goto LABEL_107;
                                    case 6:
                                      OUTLINED_FUNCTION_75();
                                      goto LABEL_109;
                                    default:
                                      OUTLINED_FUNCTION_78();

                                      OUTLINED_FUNCTION_69();
                                      sub_1B256DA7C();
                                      v37 = OUTLINED_FUNCTION_14_3();
                                      v39 = 0;
                                      goto LABEL_107;
                                  }

                                  break;
                                }

LABEL_118:
                                sub_1B24472E0(v33, v34, v35);
LABEL_120:
                                if (v128 + 1 != v126)
                                {
                                  continue;
                                }

                                v28 = v118;
                                v29 = v112;
                                v30 = 4;
                                break;
                              case 5:
                                OUTLINED_FUNCTION_76();

                                v95 = OUTLINED_FUNCTION_61();
                                sub_1B2457918(v95, v96);
                                v33 = OUTLINED_FUNCTION_41_1();
                                v35 = 5;
                                goto LABEL_118;
                              case 6:
                                OUTLINED_FUNCTION_75();
                                goto LABEL_120;
                              default:
                                OUTLINED_FUNCTION_78();

                                OUTLINED_FUNCTION_61();
                                sub_1B256DA7C();
                                v33 = OUTLINED_FUNCTION_41_1();
                                v35 = 0;
                                goto LABEL_118;
                            }

                            break;
                          }

LABEL_129:
                          sub_1B24472E0(v28, v29, v30);
LABEL_131:
                          if (v125 + 1 != v121)
                          {
                            continue;
                          }

                          v23 = v109;
                          v24 = v105;
                          v25 = 4;
                          break;
                        case 5:
                          OUTLINED_FUNCTION_76();

                          v98 = OUTLINED_FUNCTION_61();
                          sub_1B2457918(v98, v99);
                          v28 = OUTLINED_FUNCTION_41_1();
                          v30 = 5;
                          goto LABEL_129;
                        case 6:
                          OUTLINED_FUNCTION_75();
                          goto LABEL_131;
                        default:
                          OUTLINED_FUNCTION_78();

                          OUTLINED_FUNCTION_61();
                          sub_1B256DA7C();
                          v28 = OUTLINED_FUNCTION_41_1();
                          v30 = 0;
                          goto LABEL_129;
                      }

                      break;
                    }

LABEL_140:
                    sub_1B24472E0(v23, v24, v25);
LABEL_142:
                    if (v120 + 1 != v117)
                    {
                      continue;
                    }

                    v17 = v113;
                    break;
                  case 5:
                    OUTLINED_FUNCTION_76();

                    v101 = OUTLINED_FUNCTION_61();
                    sub_1B2457918(v101, v102);
                    v23 = OUTLINED_FUNCTION_41_1();
                    v25 = 5;
                    goto LABEL_140;
                  case 6:
                    OUTLINED_FUNCTION_75();
                    goto LABEL_142;
                  default:
                    OUTLINED_FUNCTION_78();

                    OUTLINED_FUNCTION_61();
                    sub_1B256DA7C();
                    v23 = OUTLINED_FUNCTION_41_1();
                    v25 = 0;
                    goto LABEL_140;
                }

                break;
              }
            }

            v18 = v108;
            v19 = 4;
            goto LABEL_152;
          case 5:
            OUTLINED_FUNCTION_76();
            sub_1B2457918(v143, v14);
            v17 = v14;
            v18 = v15;
            v19 = 5;
            goto LABEL_152;
          case 6:
            OUTLINED_FUNCTION_75();
            goto LABEL_154;
          default:
            OUTLINED_FUNCTION_78();
            sub_1B256DA7C();
            v17 = OUTLINED_FUNCTION_22_1();
            v19 = 0;
LABEL_152:
            sub_1B24472E0(v17, v18, v19);
LABEL_154:
            v104 = sub_1B256ED7C();
            v6 = v115;
            v116 ^= v104;
            v4 = v114;
            if (!v114)
            {
              goto LABEL_2;
            }

            continue;
        }
      }

      break;
    }

LABEL_156:

    MEMORY[0x1B274AFC0](v116);
    OUTLINED_FUNCTION_45();
  }

  else
  {
LABEL_2:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v106)
      {
        goto LABEL_156;
      }

      v4 = *(v107 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1B2458464()
{
  result = qword_1EB7D0608;
  if (!qword_1EB7D0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0608);
  }

  return result;
}

uint64_t sub_1B24584B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BackingValue.ParseError(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BackingValue.ParseError(uint64_t result, int a2, int a3)
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

uint64_t sub_1B24585C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B245861C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B245868C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B2458794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_54_0()
{

  JUMPOUT(0x1B274AFC0);
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return sub_1B256E36C();
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2)
{
  sub_1B24472B8(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_72@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 32);
  v8 = v5 + 24 * a1;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v11 = *(v8 + 48);
  *(v8 + 48) = v2;
  result = sub_1B24472E0(v9, v10, v11);
  *v7 = v5;
  *(v6 + 8) = 0;
  *(v7 + 16) = 4;
  return result;
}

void OUTLINED_FUNCTION_74()
{

  JUMPOUT(0x1B274AFC0);
}

void OUTLINED_FUNCTION_75()
{

  JUMPOUT(0x1B274AFC0);
}

void OUTLINED_FUNCTION_76()
{

  JUMPOUT(0x1B274AFC0);
}

void OUTLINED_FUNCTION_77()
{

  JUMPOUT(0x1B274AFC0);
}

void OUTLINED_FUNCTION_78()
{

  JUMPOUT(0x1B274AFC0);
}

void OUTLINED_FUNCTION_79()
{

  JUMPOUT(0x1B274AFC0);
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_92()
{

  return sub_1B256ED3C();
}

void OUTLINED_FUNCTION_93()
{

  JUMPOUT(0x1B274AFC0);
}

id OUTLINED_FUNCTION_107(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return sub_1B256EB5C();
}

uint64_t sub_1B2459084(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B245910C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06F0);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2459558();
  sub_1B256EDFC();
  sub_1B256EA2C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1B2459240(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06E0);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2459558();
  sub_1B256EDBC();
  if (!v1)
  {
    v9 = sub_1B256E97C();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1B2459394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2459084(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B24593C0(uint64_t a1)
{
  v2 = sub_1B2459558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24593FC(uint64_t a1)
{
  v2 = sub_1B2459558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2459438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B2459240(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1B2459480(uint64_t a1)
{
  *(a1 + 16) = sub_1B24594B0();
  result = sub_1B2459504();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1B24594B0()
{
  result = qword_1EB7D06D0;
  if (!qword_1EB7D06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D06D0);
  }

  return result;
}

unint64_t sub_1B2459504()
{
  result = qword_1EB7D06D8;
  if (!qword_1EB7D06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D06D8);
  }

  return result;
}

unint64_t sub_1B2459558()
{
  result = qword_1EB7D06E8;
  if (!qword_1EB7D06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D06E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountTypeQueryTask.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B245965C()
{
  result = qword_1EB7D06F8;
  if (!qword_1EB7D06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D06F8);
  }

  return result;
}

unint64_t sub_1B24596B4()
{
  result = qword_1EB7D0700;
  if (!qword_1EB7D0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0700);
  }

  return result;
}

unint64_t sub_1B245970C()
{
  result = qword_1EB7D0708;
  if (!qword_1EB7D0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0708);
  }

  return result;
}

uint64_t sub_1B2459760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1B24597B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v40 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0718);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  v37[1] = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v39 = swift_slowAlloc();
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v14, qword_1ED69A108);
  aBlock = 0;
  v45 = 0xE000000000000000;
  sub_1B256E4FC();

  aBlock = 0xD000000000000011;
  v45 = 0x80000001B258E880;
  v41 = a4;
  v15 = a5;
  MEMORY[0x1B2749D50](a4, a5);
  MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B258E8A0);
  v17 = aBlock;
  v16 = v45;
  v18 = sub_1B256E0CC();

  v19 = sub_1B256D5CC();

  v20 = os_log_type_enabled(v19, v18);
  v43 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
    *(v21 + 12) = 2082;
    v23 = sub_1B2519814(v17, v16, &aBlock);

    *(v21 + 14) = v23;
    _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v22, -1, -1);
    a1 = v43;
    MEMORY[0x1B274BFF0](v21, -1, -1);
  }

  else
  {
  }

  sub_1B245A1E4();
  v24 = sub_1B256E0EC();
  v25 = v13;
  v26 = v42;
  (*(v9 + 16))(v13, a1, v42);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = swift_allocObject();
  v30 = v40;
  v29 = v41;
  v31 = v38;
  *(v28 + 2) = v40;
  *(v28 + 3) = v31;
  *(v28 + 4) = v29;
  *(v28 + 5) = v15;
  (*(v9 + 32))(&v28[v27], v25, v26);
  v48 = sub_1B245A228;
  v49 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1B2459760;
  v47 = &block_descriptor_5;
  v32 = _Block_copy(&aBlock);

  v33 = sub_1B256DA3C();
  v34 = v39;
  notify_register_dispatch((v33 + 32), v39, v24, v32);

  _Block_release(v32);

  LODWORD(v24) = *v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  *(v35 + 24) = v30;
  *(v35 + 32) = v31;
  *(v35 + 40) = v29;
  *(v35 + 48) = v15;

  sub_1B256DDBC();
  return MEMORY[0x1B274BFF0](v34, -1, -1);
}

uint64_t sub_1B2459C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0720);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v11, qword_1ED69A108);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1B256E4FC();

  v20 = 0x6465766965636552;
  v21 = 0xEA00000000002720;
  MEMORY[0x1B2749D50](a4, a5);
  MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B258E8A0);
  v13 = v20;
  v12 = v21;
  v14 = sub_1B256E0CC();

  v15 = sub_1B256D5CC();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_1B2519814(0, 0xE000000000000000, &v20);
    *(v16 + 12) = 2082;
    v18 = sub_1B2519814(v13, v12, &v20);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v17, -1, -1);
    MEMORY[0x1B274BFF0](v16, -1, -1);
  }

  else
  {
  }

  sub_1B256DDDC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B2459EC8(int a1, int val, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = notify_is_valid_token(val);
  if (result)
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v10, qword_1ED69A108);
    sub_1B256E4FC();

    v16[0] = 0x7473696765726E55;
    v16[1] = 0xEF2720676E697265;
    MEMORY[0x1B2749D50](a5, a6);
    MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258E8C0);
    v11 = sub_1B256E0CC();

    v12 = sub_1B256D5CC();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B2519814(0, 0xE000000000000000, v16);
      *(v13 + 12) = 2082;
      v15 = sub_1B2519814(0x7473696765726E55, 0xEF2720676E697265, v16);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1B23EF000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v14, -1, -1);
      MEMORY[0x1B274BFF0](v13, -1, -1);
    }

    else
    {
    }

    return notify_cancel(val);
  }

  return result;
}

uint64_t sub_1B245A118()
{
  type metadata accessor for DaemonNotificationListener();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0710);
  return sub_1B256DE1C();
}

uint64_t type metadata accessor for DaemonNotificationListener()
{
  result = qword_1EB7CD960;
  if (!qword_1EB7CD960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B245A1B8()
{
  sub_1B245A118();

  return sub_1B245A434(v0);
}

unint64_t sub_1B245A1E4()
{
  result = qword_1EB7CDC60;
  if (!qword_1EB7CDC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7CDC60);
  }

  return result;
}

uint64_t sub_1B245A228(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0718);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_1B2459C18(a1, v3, v4, v5, v6);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B245A2FC()
{
  sub_1B245A378();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B245A378()
{
  if (!qword_1EB7CD950)
  {
    v0 = sub_1B256DE4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7CD950);
    }
  }
}

unint64_t sub_1B245A3D0()
{
  result = qword_1EB7D0728;
  if (!qword_1EB7D0728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB7D0730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0728);
  }

  return result;
}

uint64_t sub_1B245A434(uint64_t a1)
{
  v2 = type metadata accessor for DaemonNotificationListener();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B245A4B8(uint64_t a1)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B245A508()
{
  sub_1B256ED3C();
  sub_1B23F2354(v2, *v0);
  return sub_1B256ED7C();
}

uint64_t sub_1B245A554()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for StorefrontInternal()
{
  result = qword_1EB7CDC70;
  if (!qword_1EB7CDC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B245A61C()
{
  result = sub_1B256D47C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B245A698(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1B256EB5C() & 1) != 0)
    {
      type metadata accessor for StorefrontInternal();

      JUMPOUT(0x1B2749690);
    }
  }

  return 0;
}

uint64_t sub_1B245A734(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B256EB5C();

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

uint64_t sub_1B245A83C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x437972746E756F63;
  }

  return 0x656C61636F6CLL;
}

uint64_t sub_1B245A88C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D07C0);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B245AE74();
  sub_1B256EDFC();
  v10[15] = 0;
  sub_1B256EA2C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1B256EA2C();
    type metadata accessor for StorefrontInternal();
    v10[13] = 2;
    sub_1B256D47C();
    sub_1B245AF88(&qword_1EB7D00A0);
    sub_1B256EA5C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B245AA4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1B256D47C();
  OUTLINED_FUNCTION_1_1();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D07B8);
  OUTLINED_FUNCTION_1_1();
  v23 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for StorefrontInternal();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B245AE74();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v13 = v24;
  v28 = 0;
  *v12 = sub_1B256E97C();
  v12[1] = v14;
  v27 = 1;
  v12[2] = sub_1B256E97C();
  v12[3] = v15;
  v26 = 2;
  sub_1B245AF88(&qword_1EB7CDCF8);
  v19[1] = 0;
  sub_1B256E9AC();
  v16 = OUTLINED_FUNCTION_0_14();
  v17(v16);
  (*(v21 + 32))(v12 + *(v10 + 24), v7, v13);
  sub_1B245AEC8(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1B245AF2C(v12);
}

uint64_t sub_1B245AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B245A734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B245ADBC(uint64_t a1)
{
  v2 = sub_1B245AE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245ADF8(uint64_t a1)
{
  v2 = sub_1B245AE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245AE68@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_1B245AE74()
{
  result = qword_1EB7CDC98;
  if (!qword_1EB7CDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDC98);
  }

  return result;
}

uint64_t sub_1B245AEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorefrontInternal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B245AF2C(uint64_t a1)
{
  v2 = type metadata accessor for StorefrontInternal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B245AF88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B256D47C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorefrontInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B245B0AC()
{
  result = qword_1EB7D07C8;
  if (!qword_1EB7D07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D07C8);
  }

  return result;
}

unint64_t sub_1B245B104()
{
  result = qword_1EB7CDC88;
  if (!qword_1EB7CDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDC88);
  }

  return result;
}

unint64_t sub_1B245B15C()
{
  result = qword_1EB7CDC90;
  if (!qword_1EB7CDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDC90);
  }

  return result;
}

uint64_t sub_1B245B1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727245707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F727245637078 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69646F636E65 && a2 == 0xED0000726F727245;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x676E69646F636564 && a2 == 0xED0000726F727245)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

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

uint64_t sub_1B245B32C(char a1)
{
  result = 0x726F727245707061;
  switch(a1)
  {
    case 1:
      result = 0x726F727245637078;
      break;
    case 2:
      result = 0x676E69646F636E65;
      break;
    case 3:
      result = 0x676E69646F636564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B245B3B8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B23F2E74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B245B3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B245B1C0(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1B245B434@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B23F2E74(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B245B45C(uint64_t a1)
{
  v2 = sub_1B245EFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245B498(uint64_t a1)
{
  v2 = sub_1B245EFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245B4D4(void *a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v75 = sub_1B256E58C();
  OUTLINED_FUNCTION_1_1();
  v74 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_5();
  v66 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_5(v63 - v10);
  v72 = sub_1B256E5EC();
  OUTLINED_FUNCTION_1_1();
  v71 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_5();
  v65 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_5(v63 - v16);
  v64 = *(a2 + 24);
  v70 = sub_1B256E2EC();
  OUTLINED_FUNCTION_1_1();
  v68 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_5(v63 - v19);
  v20 = *(a2 + 16);
  OUTLINED_FUNCTION_1_9();
  v63[1] = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_1_9();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D07D0);
  OUTLINED_FUNCTION_1_1();
  v79 = v33;
  v80 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v63 - v34;
  v36 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1B245EFF0();
  v78 = v35;
  sub_1B256EDFC();
  (*(v27 + 16))(v31, v77, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = v68;
      v55 = v67;
      v56 = v31;
      v57 = v70;
      v58 = (*(v68 + 32))(v67, v56, v70);
      MEMORY[0x1EEE9AC00](v58);
      v63[-6] = v20;
      v59 = v76;
      v63[-5] = v64;
      v63[-4] = v59;
      *&v63[-3] = *(a2 + 32);
      sub_1B24E64B4(sub_1B245F0C8, &type metadata for CodableNSError, v60, v82);
      v61 = *&v82[0];
      *&v81[0] = *&v82[0];
      v83 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D07E8);
      sub_1B245F0F0();
      v38 = v80;
      v62 = v78;
      sub_1B256EA5C();

      (*(v54 + 8))(v55, v57);
      v40 = *(v79 + 8);
      v41 = v62;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_4_4();
      v42 = v69;
      v43 = v72;
      v44(v69, v31, v72);
      v45 = OUTLINED_FUNCTION_7_5();
      v46(v45);
      sub_1B245BCF0(v25, v82);
      v47 = 2;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_4_4();
      v42 = v73;
      v43 = v75;
      v48(v73, v31, v75);
      v49 = OUTLINED_FUNCTION_7_5();
      v50(v49);
      sub_1B245C20C(v25, v82);
      v47 = 3;
LABEL_5:
      v83 = v47;
      sub_1B245F044();
      v51 = v80;
      v52 = v78;
      sub_1B256EA5C();
      v81[0] = v82[0];
      v81[1] = v82[1];
      v81[2] = v82[2];
      v81[3] = v82[3];
      sub_1B245F098(v81);
      (*(v36 + 8))(v42, v43);
      result = (*(v79 + 8))(v52, v51);
      break;
    default:
      OUTLINED_FUNCTION_4_4();
      v37(v25, v31, v20);
      LOBYTE(v82[0]) = 0;
      v38 = v80;
      v39 = v78;
      sub_1B256EA5C();
      (*(v36 + 8))(v25, v20);
      v40 = *(v79 + 8);
      v41 = v39;
LABEL_7:
      result = v40(v41, v38);
      break;
  }

  return result;
}

uint64_t sub_1B245BBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = sub_1B256EAEC();
  if (v8)
  {
    v9 = v8;
    result = (*(v5 + 8))(v7, a2);
  }

  else
  {
    v9 = swift_allocError();
    result = (*(v5 + 32))(v11, v7, a2);
  }

  *a3 = v9;
  return result;
}

double sub_1B245BCF0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = a2;
  v3 = sub_1B256E5DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B256E5EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = *(v8 + 16);
  v14(&v45 - v12, a1, v7);
  if ((*(v8 + 88))(v13, v7) == *MEMORY[0x1E69E6B30])
  {
    v51 = a1;
    (*(v8 + 96))(v13, v7);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0800) + 48);
    sub_1B244AA0C(v13, &v54);
    v49 = v4;
    v16 = *(v4 + 32);
    v50 = v3;
    v16(v6, &v13[v15], v3);
    sub_1B2456DAC(&v54, v58);
    v47 = sub_1B256D9FC();
    v48 = v17;
    v18 = sub_1B256E55C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v46 = v6;
      v53[0] = MEMORY[0x1E69E7CC0];
      sub_1B2455BD8(0, v19, 0);
      v20 = v53[0];
      v45 = v18;
      v21 = v18 + 32;
      do
      {
        sub_1B2460470(v21, v58);
        __swift_project_boxed_opaque_existential_1(v58, v61);
        v22 = sub_1B256EE1C();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_1(v58);
        v53[0] = v20;
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B2455BD8((v25 > 1), v26 + 1, 1);
          v20 = v53[0];
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v21 += 40;
        --v19;
      }

      while (v19);

      v37 = v52;
      v6 = v46;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
      v37 = v52;
    }

    v28 = sub_1B256E56C();
    v30 = v38;
    v39 = sub_1B256E53C();
    if (v39)
    {
      v40 = v39;
      swift_getErrorValue();
      v33 = sub_1B256ECDC();
      v32 = v41;
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    (*(v8 + 8))(v51, v7);
    (*(v49 + 8))(v6, v50);
    __swift_destroy_boxed_opaque_existential_1(&v54);
    v36 = 0;
    v34 = v48;
    v35 = v47;
  }

  else
  {
    v14(v11, a1, v7);
    v28 = sub_1B256D9FC();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(a1, v7);
    v31(v13, v7);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 2;
    v20 = MEMORY[0x1E69E7CC0];
    v37 = v52;
  }

  *&v54 = v35;
  *(&v54 + 1) = v34;
  LOBYTE(v55) = v36;
  *(&v55 + 1) = *v66;
  DWORD1(v55) = *&v66[3];
  *(&v55 + 1) = v20;
  *&v56 = v28;
  *(&v56 + 1) = v30;
  *&v57 = v33;
  *(&v57 + 1) = v32;
  v58[0] = v35;
  v58[1] = v34;
  v59 = v36;
  *v60 = *v66;
  *&v60[3] = *&v66[3];
  v61 = v20;
  v62 = v28;
  v63 = v30;
  v64 = v33;
  v65 = v32;
  sub_1B245F1C8(&v54, v53);
  sub_1B245F098(v58);
  v42 = v55;
  *v37 = v54;
  v37[1] = v42;
  result = *&v56;
  v44 = v57;
  v37[2] = v56;
  v37[3] = v44;
  return result;
}

double sub_1B245C20C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a2;
  v3 = sub_1B256E58C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v54 - v8);
  v10 = sub_1B256E57C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v62 = a1;
  v14(v9, a1, v3);
  v15 = (*(v4 + 88))(v9, v3);
  v16 = v15 == *MEMORY[0x1E69E6AF8];
  v61 = v3;
  v60 = v4;
  if (v16)
  {
    (*(v4 + 96))(v9, v3);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    (*(v11 + 32))(v13, v9 + *(v17 + 48), v10);
    v57 = 0;
    v56 = 2;
    v18 = 2;
  }

  else if (v15 == *MEMORY[0x1E69E6B08])
  {
    (*(v4 + 96))(v9, v3);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    (*(v11 + 32))(v13, v9 + *(v19 + 48), v10);
    v57 = 0;
    v56 = 2;
    v18 = 3;
  }

  else
  {
    if (v15 == *MEMORY[0x1E69E6AF0])
    {
      (*(v4 + 96))(v9, v3);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0808) + 48);
      sub_1B23F22D0(v9, v69);
      (*(v11 + 32))(v13, v9 + v47, v10);
      __swift_project_boxed_opaque_existential_1(v69, v72);
      v55 = sub_1B256EE1C();
      v57 = v48;
      __swift_destroy_boxed_opaque_existential_1(v69);
      v18 = 1;
      v20 = v73;
      goto LABEL_7;
    }

    if (v15 != *MEMORY[0x1E69E6B00])
    {
      v49 = v62;
      v14(v7, v62, v3);
      v50 = v3;
      v33 = sub_1B256D9FC();
      v51 = v4;
      v35 = v52;
      v53 = *(v51 + 8);
      v53(v49, v50);
      v53(v9, v50);
      v40 = 0;
      v38 = 0;
      v41 = 0;
      v42 = 2;
      v23 = MEMORY[0x1E69E7CC0];
      v43 = 4;
      v31 = v63;
      goto LABEL_18;
    }

    (*(v4 + 96))(v9, v3);
    (*(v11 + 32))(v13, v9, v10);
    v57 = 0;
    v56 = 2;
    v18 = 1;
  }

  v20 = &v72;
LABEL_7:
  *(v20 - 32) = v18;
  v58 = v11;
  v59 = v10;
  v21 = sub_1B256E55C();
  v22 = *(v21 + 16);
  if (v22)
  {
    *&v65 = MEMORY[0x1E69E7CC0];
    sub_1B2455BD8(0, v22, 0);
    v23 = v65;
    v24 = v21 + 32;
    do
    {
      sub_1B2460470(v24, v69);
      __swift_project_boxed_opaque_existential_1(v69, v72);
      v25 = sub_1B256EE1C();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(v69);
      *&v65 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B2455BD8((v28 > 1), v29 + 1, 1);
        v23 = v65;
      }

      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v24 += 40;
      --v22;
    }

    while (v22);

    v31 = v63;
    v32 = v62;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
    v32 = v62;
    v31 = v63;
  }

  v33 = sub_1B256E56C();
  v35 = v34;
  v36 = sub_1B256E53C();
  if (v36)
  {
    v37 = v36;
    swift_getErrorValue();
    v38 = sub_1B256ECDC();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  (*(v60 + 8))(v32, v61);
  (*(v58 + 8))(v13, v59);
  v41 = v57;
  v42 = v56;
  v43 = v55;
LABEL_18:
  *&v65 = v43;
  *(&v65 + 1) = v41;
  LOBYTE(v66) = v42;
  *(&v66 + 1) = *v74;
  DWORD1(v66) = *&v74[3];
  *(&v66 + 1) = v23;
  *&v67 = v33;
  *(&v67 + 1) = v35;
  *&v68 = v38;
  *(&v68 + 1) = v40;
  v69[0] = v43;
  v69[1] = v41;
  v70 = v42;
  *v71 = *v74;
  *&v71[3] = *&v74[3];
  v72 = v23;
  v73[0] = v33;
  v73[1] = v35;
  v73[2] = v38;
  v73[3] = v40;
  sub_1B245F1C8(&v65, v64);
  sub_1B245F098(v69);
  v44 = v66;
  *v31 = v65;
  v31[1] = v44;
  result = *&v67;
  v46 = v68;
  v31[2] = v67;
  v31[3] = v46;
  return result;
}

uint64_t sub_1B245C8E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v72 = a4;
  v73 = a7;
  OUTLINED_FUNCTION_1_9();
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_5(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0810);
  OUTLINED_FUNCTION_1_1();
  v74 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v76 = a2;
  v70 = a3;
  v77 = a3;
  v67 = a5;
  v78 = a5;
  v68 = a6;
  v79 = a6;
  v21 = type metadata accessor for SwiftXPCError();
  OUTLINED_FUNCTION_1_1();
  v71 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_0_5();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v63 - v28);
  v30 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1B245EFF0();
  v31 = v75;
  sub_1B256EDBC();
  if (v31)
  {
    v32 = v85;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v64 = v26;
  v75 = a2;
  v65 = v29;
  v33 = v73;
  v34 = sub_1B256E9CC();
  v35 = v16;
  if (!*(v34 + 16))
  {

    v32 = v85;
    goto LABEL_8;
  }

  v36 = *(v34 + 32);

  v37 = *(sub_1B256E9CC() + 16);

  v32 = v85;
  if (v37 != 1)
  {
LABEL_8:
    v47 = sub_1B256E58C();
    swift_allocError();
    v49 = v48;
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_1B256ED8C();
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD00000000000003BLL, 0x80000001B258E8E0);
    v50 = *(sub_1B256E9CC() + 16);

    v82 = v50;
    v51 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v51);

    MEMORY[0x1B2749D50](0x2E7379656B20, 0xE600000000000000);
    sub_1B256E54C();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6B00], v47);
    swift_willThrow();
    (*(v74 + 8))(v20, v35);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v38 = v33;
  switch(v36)
  {
    case 1:
      LOBYTE(v82) = 1;
      sub_1B2460540();
      OUTLINED_FUNCTION_2_8();
      sub_1B256E95C();
      v55 = OUTLINED_FUNCTION_3_7();
      v56(v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D07E8);
      v57 = v64;
      v58 = v70;
      v59 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v57, v59 ^ 1u, 1, v58);
      v45 = v21;
      swift_storeEnumTagMultiPayload();
      v46 = v71;
      v44 = v65;
      (*(v71 + 32))(v65, v57, v45);
      break;
    case 2:
      LOBYTE(v82) = 2;
      sub_1B24604EC();
      OUTLINED_FUNCTION_2_8();
      sub_1B256E9AC();
      v84[0] = OUTLINED_FUNCTION_9_6();
      v84[1] = v53;
      v84[2] = v80;
      v84[3] = v81;
      v54 = v84;
      goto LABEL_13;
    case 3:
      LOBYTE(v82) = 3;
      sub_1B24604EC();
      OUTLINED_FUNCTION_2_8();
      sub_1B256E9AC();
      v83[0] = OUTLINED_FUNCTION_9_6();
      v83[1] = v60;
      v83[2] = v80;
      v83[3] = v81;
      v54 = v83;
LABEL_13:
      v44 = v65;
      sub_1B245D01C(v54, v65);
      v61 = OUTLINED_FUNCTION_3_7();
      v62(v61);
      v45 = v21;
      v46 = v71;
      break;
    default:
      LOBYTE(v76) = 0;
      v39 = v69;
      v40 = v75;
      sub_1B256E9AC();
      v41 = OUTLINED_FUNCTION_3_7();
      v42(v41);
      v43 = v39;
      v44 = v65;
      (*(v66 + 32))(v65, v43, v40);
      v45 = v21;
      swift_storeEnumTagMultiPayload();
      v46 = v71;
      break;
  }

  (*(v46 + 32))(v38, v44, v45);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1B245D01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B245D064(a2);

  return sub_1B245F098(a1);
}

uint64_t sub_1B245D064@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      switch(v4)
      {
        case 1:
        case 4:
          sub_1B245F668(MEMORY[0x1E69E6B10]);
          v5 = MEMORY[0x1E69E6B00];
          goto LABEL_11;
        case 2:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
          *a1 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_1B245F668(MEMORY[0x1E69E6B10]);
          v5 = MEMORY[0x1E69E6AF8];
          goto LABEL_11;
        case 3:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
          *a1 = &type metadata for CodableCodingError.RemoteDecodableType;
          sub_1B245F668(MEMORY[0x1E69E6B10]);
          v5 = MEMORY[0x1E69E6B08];
          goto LABEL_11;
        default:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0800);
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05F0);
          v9 = swift_allocObject();
          *a1 = v9;
          *(v9 + 16) = 0u;
          *(v9 + 32) = 0u;
          v6 = MEMORY[0x1E69E6B38];
          goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0808);
    a1[3] = &type metadata for CodableCodingError.RemoteCodingKey;
    a1[4] = sub_1B2460594();
    *a1 = v4;
    a1[1] = v3;

    sub_1B245F668(MEMORY[0x1E69E6B10]);
    v5 = MEMORY[0x1E69E6AF0];
LABEL_11:
    v10 = *v5;
    v11 = sub_1B256E58C();
    (*(*(v11 - 8) + 104))(a1, v10, v11);
    type metadata accessor for SwiftXPCError();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0800);
    a1[3] = &type metadata for CodableCodingError.RemoteEncodableValue;
    *a1 = v4;
    a1[1] = v3;

    v6 = MEMORY[0x1E69E6B38];
LABEL_5:
    sub_1B245F668(v6);
    v7 = *MEMORY[0x1E69E6B30];
    v8 = sub_1B256E5EC();
    (*(*(v8 - 8) + 104))(a1, v7, v8);
    type metadata accessor for SwiftXPCError();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1B245D3C0(void *a1)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1B256D0CC();
  v17[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v17];

  v5 = v17[0];
  if (v4)
  {
    v6 = sub_1B256D22C();
    v8 = v7;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B256EDEC();
    __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1B244784C(v6, v8);
    sub_1B2443C2C();
    sub_1B256EC0C();
    sub_1B2443AE4(v6, v8);
    sub_1B2443AE4(v6, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v9 = v5;
    v10 = sub_1B256D0DC();

    swift_willThrow();
    v11 = sub_1B256E5EC();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0800);
    swift_getErrorValue();
    v13[3] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B256EDCC();
    v15 = v10;
    sub_1B256E54C();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
    swift_willThrow();
  }
}

void *sub_1B245D6A0(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDAC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_1B24439BC();
    sub_1B256EBAC();
    sub_1B246063C(0, qword_1EB7D0838);
    v4 = sub_1B246063C(0, &qword_1EB7D0050);
    v5 = sub_1B256E0DC();
    v3 = v5;
    if (v5)
    {
      sub_1B2443AE4(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v3;
    }

    v7 = sub_1B256E58C();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    v13 = v10;
    *v9 = v4;
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B256ED8C();
    sub_1B256E54C();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
    swift_willThrow();
    sub_1B2443AE4(v13, v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1B245D9D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B258E9A0 == a2;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646F636E65 && a2 == 0xEF6E776F6E6B6E55;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001B258E9C0 == a2;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001B258E9E0 == a2;
        if (v8 || (sub_1B256EB5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001B258EA00 == a2;
          if (v9 || (sub_1B256EB5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001B258EA20 == a2;
            if (v10 || (sub_1B256EB5C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x676E69646F636564 && a2 == 0xEF6E776F6E6B6E55)
            {

              return 6;
            }

            else
            {
              v12 = sub_1B256EB5C();

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

unint64_t sub_1B245DC10(char a1)
{
  result = 0x676E69646F636E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 4:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E69646F636564;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B245DCE0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a4;
  v51 = a3;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0930);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0938);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0940);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0948);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0950);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0958);
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0960);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0968);
  v54 = *(v22 - 8);
  v55 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2461258();
  sub_1B256EDFC();
  if (v52)
  {
    if (v52 == 1)
    {
      v61 = 5;
      sub_1B2461300();
      v25 = v48;
      v26 = v55;
      sub_1B256E9EC();
      v27 = v50;
      sub_1B256EA2C();
      (*(v49 + 8))(v25, v27);
      return (*(v54 + 8))(v24, v26);
    }

    else
    {
      switch(v53)
      {
        case 1:
          v58 = 2;
          sub_1B24613FC();
          v31 = v36;
          v30 = v55;
          sub_1B256E9EC();
          v33 = v37;
          v32 = v38;
          goto LABEL_12;
        case 2:
          v59 = 3;
          sub_1B24613A8();
          v31 = v39;
          v30 = v55;
          sub_1B256E9EC();
          v33 = v40;
          v32 = v41;
          goto LABEL_12;
        case 3:
          v60 = 4;
          sub_1B2461354();
          v31 = v42;
          v30 = v55;
          sub_1B256E9EC();
          v33 = v43;
          v32 = v44;
          goto LABEL_12;
        case 4:
          v62 = 6;
          sub_1B24612AC();
          v31 = v45;
          v30 = v55;
          sub_1B256E9EC();
          v33 = v46;
          v32 = v47;
LABEL_12:
          (*(v33 + 8))(v31, v32);
          break;
        default:
          v57 = 1;
          sub_1B2461450();
          v30 = v55;
          sub_1B256E9EC();
          (*(v35 + 8))(v17, v15);
          break;
      }

      return (*(v54 + 8))(v24, v30);
    }
  }

  else
  {
    v56 = 0;
    sub_1B24614A4();
    v29 = v55;
    sub_1B256E9EC();
    sub_1B256EA2C();
    (*(v19 + 8))(v21, v18);
    return (*(v54 + 8))(v24, v29);
  }
}

uint64_t sub_1B245E430(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09B0);
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v54 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09B8);
  v72 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v74 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09C0);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09C8);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09D0);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09D8);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09E0);
  v75 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D09E8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  v22 = a1[3];
  v79 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B2461258();
  v24 = v80;
  sub_1B256EDBC();
  if (v24)
  {
    goto LABEL_10;
  }

  v59 = v14;
  v60 = v17;
  v58 = v15;
  v26 = v76;
  v25 = v77;
  v27 = v78;
  v80 = v19;
  v28 = sub_1B256E9CC();
  result = sub_1B24AAC2C(v28, 0);
  if (v31 == v32 >> 1)
  {
LABEL_9:
    v43 = sub_1B256E58C();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v45 = &type metadata for CodableCodingError.Code;
    v23 = v21;
    sub_1B256E93C();
    sub_1B256E54C();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v21, v18);
LABEL_10:
    v46 = v79;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v46);
    return v23;
  }

  v56 = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = v18;
    v55 = *(v30 + v31);
    v34 = sub_1B24AAC20(v31 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    v57 = v34;
    v39 = v75;
    if (v36 == v38 >> 1)
    {
      v40 = v33;
      v41 = v56;
      switch(v55)
      {
        case 1:
          v82 = 1;
          sub_1B2461450();
          v48 = v59;
          v23 = v21;
          sub_1B256E92C();
          v46 = v79;
          if (v41)
          {
            goto LABEL_23;
          }

          swift_unknownObjectRelease();
          (*(v61 + 8))(v48, v62);
          (*(v80 + 8))(v21, v40);
          v23 = 0;
          break;
        case 2:
          v83 = 2;
          sub_1B24613FC();
          v47 = v73;
          v23 = v21;
          sub_1B256E92C();
          v46 = v79;
          if (v41)
          {
            goto LABEL_23;
          }

          swift_unknownObjectRelease();
          (*(v63 + 8))(v47, v64);
          (*(v80 + 8))(v21, v40);
          v23 = 1;
          break;
        case 3:
          v84 = 3;
          sub_1B24613A8();
          v23 = v21;
          sub_1B256E92C();
          v46 = v79;
          if (v41)
          {
            goto LABEL_23;
          }

          swift_unknownObjectRelease();
          (*(v65 + 8))(v26, v66);
          (*(v80 + 8))(v21, v40);
          v23 = 2;
          break;
        case 4:
          v85 = 4;
          sub_1B2461354();
          v23 = v21;
          sub_1B256E92C();
          v46 = v79;
          if (v41)
          {
            goto LABEL_23;
          }

          swift_unknownObjectRelease();
          (*(v68 + 8))(v25, v69);
          (*(v80 + 8))(v21, v40);
          v23 = 3;
          break;
        case 5:
          v86 = 5;
          sub_1B2461300();
          v49 = v74;
          v23 = v21;
          sub_1B256E92C();
          v46 = v79;
          if (v41)
          {
            goto LABEL_23;
          }

          v50 = v67;
          v51 = sub_1B256E97C();
          v52 = v80;
          v23 = v51;
          swift_unknownObjectRelease();
          (*(v72 + 8))(v49, v50);
          (*(v52 + 8))(v21, v40);
          break;
        case 6:
          v87 = 6;
          sub_1B24612AC();
          v23 = v21;
          sub_1B256E92C();
          v46 = v79;
          if (v41)
          {
LABEL_23:
            (*(v80 + 8))(v21, v40);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
            (*(v71 + 8))(v27, v70);
            (*(v80 + 8))(v21, v40);
            v23 = 4;
          }

          break;
        default:
          v81 = 0;
          sub_1B24614A4();
          v42 = v60;
          v23 = v21;
          sub_1B256E92C();
          if (v41)
          {
            (*(v80 + 8))(v21, v40);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          v53 = v58;
          v23 = sub_1B256E97C();
          swift_unknownObjectRelease();
          (*(v39 + 8))(v42, v53);
          (*(v80 + 8))(v21, v40);
          v46 = v79;
          break;
      }

      goto LABEL_11;
    }

    v18 = v33;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *sub_1B245EFC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B245D6A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B245EFF0()
{
  result = qword_1EB7D07D8;
  if (!qword_1EB7D07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D07D8);
  }

  return result;
}

unint64_t sub_1B245F044()
{
  result = qword_1EB7D07E0;
  if (!qword_1EB7D07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D07E0);
  }

  return result;
}

unint64_t sub_1B245F0F0()
{
  result = qword_1EB7D07F0;
  if (!qword_1EB7D07F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D07E8);
    sub_1B245F174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D07F0);
  }

  return result;
}

unint64_t sub_1B245F174()
{
  result = qword_1EB7D07F8;
  if (!qword_1EB7D07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D07F8);
  }

  return result;
}

uint64_t sub_1B245F208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B245D9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B245F230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24434EC();
  *a1 = result;
  return result;
}

uint64_t sub_1B245F258(uint64_t a1)
{
  v2 = sub_1B2461258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F294(uint64_t a1)
{
  v2 = sub_1B2461258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F2D0(uint64_t a1)
{
  v2 = sub_1B24613FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F30C(uint64_t a1)
{
  v2 = sub_1B24613FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F348(uint64_t a1)
{
  v2 = sub_1B2461300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F384(uint64_t a1)
{
  v2 = sub_1B2461300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F3C0(uint64_t a1)
{
  v2 = sub_1B24613A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F3FC(uint64_t a1)
{
  v2 = sub_1B24613A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F438(uint64_t a1)
{
  v2 = sub_1B24612AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F474(uint64_t a1)
{
  v2 = sub_1B24612AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F4B0(uint64_t a1)
{
  v2 = sub_1B2461354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F4EC(uint64_t a1)
{
  v2 = sub_1B2461354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F528(uint64_t a1)
{
  v2 = sub_1B24614A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F564(uint64_t a1)
{
  v2 = sub_1B24614A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F5A0(uint64_t a1)
{
  v2 = sub_1B2461450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B245F5DC(uint64_t a1)
{
  v2 = sub_1B2461450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B245F618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B245E430(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1B245F668(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = v1[3];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B2455E58(0, v4, 0);
    v5 = v23;
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v23 = v5;
      v9 = *(v5 + 16);
      v10 = *(v5 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1B2455E58((v10 > 1), v9 + 1, 1);
        v5 = v23;
      }

      v21 = &type metadata for CodableCodingError.RemoteCodingKey;
      v22 = sub_1B2460594();
      *&v20 = v7;
      *(&v20 + 1) = v8;
      *(v5 + 16) = v9 + 1;
      sub_1B23F22D0(&v20, v5 + 40 * v9 + 32);
      v6 += 2;
      --v4;
    }

    while (v4);
    v2 = a1;
    v1 = v18;
  }

  v11 = v1[7];
  if (v11)
  {
    v12 = v1[6];
    sub_1B24605E8();
    v13 = swift_allocError();
    *v14 = v12;
    v14[1] = v11;
  }

  else
  {
    v13 = 0;
  }

  v16 = v1[4];
  v15 = v1[5];

  return v2(v5, v16, v15, v13);
}

uint64_t sub_1B245F7E8(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v18 = v28 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v8 = 0;
          v23 = v28;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v8 = 0;
          v12 = v28 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B256E5FC();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_61;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_61;
                }

                ++v15;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v8 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v26 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = sub_1B243FC04(v6, a2, 10);
  v26 = v27;

LABEL_63:
  if (v26)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1B245FAEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6150676E69646F63 && a2 == 0xEA00000000006874;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001B258E960 == a2;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001B258E980 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

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

unint64_t sub_1B245FC60(char a1)
{
  result = 1701080931;
  switch(a1)
  {
    case 1:
      result = 0x6150676E69646F63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B245FCF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D08E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2460E48();
  sub_1B256EDFC();
  v12 = *v3;
  v13 = *(v3 + 16);
  v11 = 0;
  sub_1B2460E9C();
  sub_1B256EA5C();
  if (!v2)
  {
    *&v12 = *(v3 + 3);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
    sub_1B2460F44(&qword_1EB7CD5E8);
    sub_1B256EA5C();
    LOBYTE(v12) = 2;
    sub_1B256EA2C();
    LOBYTE(v12) = 3;
    sub_1B256E9FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B245FF14@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0900);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2460E48();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_1B2460EF0();
  sub_1B256E9AC();
  v9 = v29;
  v24 = v30;
  v37 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
  LOBYTE(v25) = 1;
  sub_1B2460F44(&qword_1EB7D0910);
  sub_1B256E9AC();
  v23 = v29;
  LOBYTE(v29) = 2;
  *&v22 = sub_1B256E97C();
  *(&v22 + 1) = v10;
  v38 = 3;
  v11 = sub_1B256E94C();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  v21 = v9;
  v16 = v23;
  v15 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  LOBYTE(v9) = v37;
  LOBYTE(v26) = v37;
  v17 = *(&v22 + 1);
  *(&v26 + 1) = v23;
  v27 = v22;
  *&v28 = v11;
  *(&v28 + 1) = v14;
  sub_1B245F1C8(&v25, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v21;
  v30 = v15;
  v31 = v9;
  v32 = v16;
  v33 = v22;
  v34 = v17;
  v35 = v11;
  v36 = v14;
  result = sub_1B245F098(&v29);
  v19 = v26;
  *a2 = v25;
  a2[1] = v19;
  v20 = v28;
  a2[2] = v27;
  a2[3] = v20;
  return result;
}

uint64_t sub_1B24602A8(uint64_t a1)
{
  v2 = sub_1B2460594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24602E4(uint64_t a1)
{
  v2 = sub_1B2460594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2460328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B245FAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2460350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B245FC58();
  *a1 = result;
  return result;
}

uint64_t sub_1B2460378(uint64_t a1)
{
  v2 = sub_1B2460E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24603B4(uint64_t a1)
{
  v2 = sub_1B2460E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1B24603F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B245FF14(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1B2460470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B24604EC()
{
  result = qword_1EB7D0818;
  if (!qword_1EB7D0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0818);
  }

  return result;
}

unint64_t sub_1B2460540()
{
  result = qword_1EB7D0820;
  if (!qword_1EB7D0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0820);
  }

  return result;
}

unint64_t sub_1B2460594()
{
  result = qword_1EB7D0828;
  if (!qword_1EB7D0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0828);
  }

  return result;
}

unint64_t sub_1B24605E8()
{
  result = qword_1EB7D0830;
  if (!qword_1EB7D0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0830);
  }

  return result;
}

uint64_t sub_1B246063C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8StoreKit18CodableCodingError33_1074F3E5B02FA311A1B53C68198742FALLV4CodeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
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

uint64_t sub_1B24606EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B246072C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B246079C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B256E2EC();
    if (v2 <= 0x3F)
    {
      result = sub_1B256E5EC();
      if (v3 <= 0x3F)
      {
        result = sub_1B256E58C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B2460840(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(*(a3 + 24) - 8) + 84);
  v7 = *(*(*(a3 + 24) - 8) + 64);
  v8 = *(*(sub_1B256E5EC() - 8) + 64);
  v9 = *(*(sub_1B256E58C() - 8) + 64);
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 + 1;
  }

  if (v10 <= v5)
  {
    v10 = v5;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v9 > v10)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 252) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_29:
      v17 = *(a1 + v10);
      if (v17 >= 4)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    switch(v11)
    {
      case 2:
        LODWORD(v11) = *a1;
        break;
      case 3:
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v11) = *a1;
        break;
      default:
        LODWORD(v11) = *a1;
        break;
    }
  }

  return (v11 | v16) + 253;
}

void sub_1B2460A20(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(*(a4 + 24) - 8) + 84);
  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = *(*(sub_1B256E5EC() - 8) + 64);
  v11 = *(*(sub_1B256E58C() - 8) + 64);
  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  if (v12 <= v7)
  {
    v12 = v7;
  }

  if (v10 > v12)
  {
    v12 = v10;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if (a3 < 0xFD)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 + ~(-1 << v14) - 252) >> v14) + 1;
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

  if (a2 > 0xFC)
  {
    v16 = a2 - 253;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
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
      bzero(a1, v11 + 1);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      case 2:
        *&a1[v13] = 0;
        goto LABEL_32;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1B2460C94()
{
  result = qword_1EB7D08C0;
  if (!qword_1EB7D08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08C0);
  }

  return result;
}

unint64_t sub_1B2460CEC()
{
  result = qword_1EB7D08C8;
  if (!qword_1EB7D08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08C8);
  }

  return result;
}

unint64_t sub_1B2460D44()
{
  result = qword_1EB7D08D0;
  if (!qword_1EB7D08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08D0);
  }

  return result;
}

unint64_t sub_1B2460D9C()
{
  result = qword_1EB7D08D8;
  if (!qword_1EB7D08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08D8);
  }

  return result;
}

unint64_t sub_1B2460DF4()
{
  result = qword_1EB7D08E0;
  if (!qword_1EB7D08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08E0);
  }

  return result;
}

unint64_t sub_1B2460E48()
{
  result = qword_1EB7D08F0;
  if (!qword_1EB7D08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08F0);
  }

  return result;
}

unint64_t sub_1B2460E9C()
{
  result = qword_1EB7D08F8;
  if (!qword_1EB7D08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D08F8);
  }

  return result;
}

unint64_t sub_1B2460EF0()
{
  result = qword_1EB7D0908;
  if (!qword_1EB7D0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0908);
  }

  return result;
}

uint64_t sub_1B2460F44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B2460FB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_BYTE *sub_1B2460FC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B24610A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1B24610E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B2461128(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B2461154()
{
  result = qword_1EB7D0918;
  if (!qword_1EB7D0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0918);
  }

  return result;
}

unint64_t sub_1B24611AC()
{
  result = qword_1EB7D0920;
  if (!qword_1EB7D0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0920);
  }

  return result;
}

unint64_t sub_1B2461204()
{
  result = qword_1EB7D0928;
  if (!qword_1EB7D0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0928);
  }

  return result;
}

unint64_t sub_1B2461258()
{
  result = qword_1EB7D0970;
  if (!qword_1EB7D0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0970);
  }

  return result;
}

unint64_t sub_1B24612AC()
{
  result = qword_1EB7D0978;
  if (!qword_1EB7D0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0978);
  }

  return result;
}

unint64_t sub_1B2461300()
{
  result = qword_1EB7D0980;
  if (!qword_1EB7D0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0980);
  }

  return result;
}

unint64_t sub_1B2461354()
{
  result = qword_1EB7D0988;
  if (!qword_1EB7D0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0988);
  }

  return result;
}

unint64_t sub_1B24613A8()
{
  result = qword_1EB7D0990;
  if (!qword_1EB7D0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0990);
  }

  return result;
}

unint64_t sub_1B24613FC()
{
  result = qword_1EB7D0998;
  if (!qword_1EB7D0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0998);
  }

  return result;
}

unint64_t sub_1B2461450()
{
  result = qword_1EB7D09A0;
  if (!qword_1EB7D09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D09A0);
  }

  return result;
}

unint64_t sub_1B24614A4()
{
  result = qword_1EB7D09A8;
  if (!qword_1EB7D09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D09A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableCodingError.Code.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B2461624(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B24616E4()
{
  result = qword_1EB7D09F0;
  if (!qword_1EB7D09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D09F0);
  }

  return result;
}

unint64_t sub_1B246173C()
{
  result = qword_1EB7D09F8;
  if (!qword_1EB7D09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D09F8);
  }

  return result;
}

unint64_t sub_1B2461794()
{
  result = qword_1EB7D0A00;
  if (!qword_1EB7D0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A00);
  }

  return result;
}

unint64_t sub_1B24617EC()
{
  result = qword_1EB7D0A08;
  if (!qword_1EB7D0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A08);
  }

  return result;
}

unint64_t sub_1B2461844()
{
  result = qword_1EB7D0A10;
  if (!qword_1EB7D0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A10);
  }

  return result;
}

unint64_t sub_1B246189C()
{
  result = qword_1EB7D0A18;
  if (!qword_1EB7D0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A18);
  }

  return result;
}

unint64_t sub_1B24618F4()
{
  result = qword_1EB7D0A20;
  if (!qword_1EB7D0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A20);
  }

  return result;
}

unint64_t sub_1B246194C()
{
  result = qword_1EB7D0A28;
  if (!qword_1EB7D0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A28);
  }

  return result;
}

unint64_t sub_1B24619A4()
{
  result = qword_1EB7D0A30;
  if (!qword_1EB7D0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A30);
  }

  return result;
}

unint64_t sub_1B24619FC()
{
  result = qword_1EB7D0A38;
  if (!qword_1EB7D0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A38);
  }

  return result;
}

unint64_t sub_1B2461A54()
{
  result = qword_1EB7D0A40;
  if (!qword_1EB7D0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A40);
  }

  return result;
}

unint64_t sub_1B2461AAC()
{
  result = qword_1EB7D0A48;
  if (!qword_1EB7D0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A48);
  }

  return result;
}

unint64_t sub_1B2461B04()
{
  result = qword_1EB7D0A50;
  if (!qword_1EB7D0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A50);
  }

  return result;
}

unint64_t sub_1B2461B5C()
{
  result = qword_1EB7D0A58;
  if (!qword_1EB7D0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A58);
  }

  return result;
}

unint64_t sub_1B2461BB4()
{
  result = qword_1EB7D0A60;
  if (!qword_1EB7D0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A60);
  }

  return result;
}

unint64_t sub_1B2461C0C()
{
  result = qword_1EB7D0A68;
  if (!qword_1EB7D0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A68);
  }

  return result;
}

unint64_t sub_1B2461C64()
{
  result = qword_1EB7D0A70;
  if (!qword_1EB7D0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A70);
  }

  return result;
}

unint64_t sub_1B2461CBC()
{
  result = qword_1EB7D0A78;
  if (!qword_1EB7D0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A78);
  }

  return result;
}

unint64_t sub_1B2461D14()
{
  result = qword_1EB7D0A80;
  if (!qword_1EB7D0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A80);
  }

  return result;
}

uint64_t VerificationResult<A>.jwsRepresentation.getter()
{
  OUTLINED_FUNCTION_4_5();
  return sub_1B2462250();
}

{
  OUTLINED_FUNCTION_3_8();
  return sub_1B2462250();
}

{
  OUTLINED_FUNCTION_2_9();
  return sub_1B2462250();
}

void VerificationResult<A>.headerData.getter()
{
  OUTLINED_FUNCTION_4_5();
  sub_1B2462358();
}

{
  OUTLINED_FUNCTION_3_8();
  sub_1B2462358();
}

{
  OUTLINED_FUNCTION_2_9();
  sub_1B2462358();
}

void VerificationResult<A>.payloadData.getter()
{
  OUTLINED_FUNCTION_4_5();
  sub_1B24624B4();
}

{
  OUTLINED_FUNCTION_3_8();
  sub_1B24624B4();
}

{
  OUTLINED_FUNCTION_2_9();
  sub_1B24624B4();
}

void VerificationResult<A>.signatureData.getter()
{
  OUTLINED_FUNCTION_4_5();
  sub_1B2462614();
}

{
  OUTLINED_FUNCTION_3_8();
  sub_1B2462614();
}

{
  OUTLINED_FUNCTION_2_9();
  sub_1B2462614();
}

void VerificationResult<A>.signature.getter()
{
  OUTLINED_FUNCTION_4_5();
  sub_1B2462774();
}

{
  OUTLINED_FUNCTION_3_8();
  sub_1B2462774();
}

{
  OUTLINED_FUNCTION_2_9();
  sub_1B2462774();
}

uint64_t VerificationResult<A>.signedData.getter()
{
  OUTLINED_FUNCTION_4_5();
  return sub_1B2462990();
}

{
  OUTLINED_FUNCTION_3_8();
  return sub_1B2462990();
}

{
  OUTLINED_FUNCTION_2_9();
  return sub_1B2462990();
}

void VerificationResult<A>.signedDate.getter()
{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_5();
  type metadata accessor for AppTransaction();
  OUTLINED_FUNCTION_9_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_17_3();
  sub_1B24635D8(v0, v1, v6);
  sub_1B256D36C();
  OUTLINED_FUNCTION_1_10();
  v7 = OUTLINED_FUNCTION_23_2();
  v8(v7);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51();
}

{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_5_5();
  type metadata accessor for Transaction(v5);
  OUTLINED_FUNCTION_9_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_16_4();
  sub_1B24635D8(v0, v1, v7);
  sub_1B256D36C();
  OUTLINED_FUNCTION_1_10();
  v8 = OUTLINED_FUNCTION_23_2();
  v9(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51();
}

{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_5_5();
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v5);
  OUTLINED_FUNCTION_9_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_15_4();
  sub_1B24635D8(v0, v1, v7);
  sub_1B256D36C();
  OUTLINED_FUNCTION_1_10();
  v8 = OUTLINED_FUNCTION_23_2();
  v9(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51();
}

uint64_t VerificationResult<A>.deviceVerification.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21F0);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_2();
  type metadata accessor for AppTransaction();
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_4();
  sub_1B24635D8(v0, v2, type metadata accessor for AppTransaction);
  OUTLINED_FUNCTION_21_2(*(v1 + 72));
  sub_1B2463630(v2, type metadata accessor for AppTransaction);
  return OUTLINED_FUNCTION_26_1();
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Transaction(v5);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_4();
  sub_1B24635D8(v0, v2, type metadata accessor for Transaction);
  OUTLINED_FUNCTION_21_2(*(v1 + 120));
  sub_1B2463630(v2, type metadata accessor for Transaction);
  return OUTLINED_FUNCTION_26_1();
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v5);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_4();
  sub_1B24635D8(v0, v2, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
  OUTLINED_FUNCTION_21_2(*(v1 + 92));
  sub_1B2463630(v2, type metadata accessor for Product.SubscriptionInfo.RenewalInfo);
  return OUTLINED_FUNCTION_26_1();
}

void VerificationResult<A>.deviceVerificationNonce.getter()
{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_5();
  type metadata accessor for AppTransaction();
  OUTLINED_FUNCTION_9_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_17_3();
  sub_1B24635D8(v0, v1, v6);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_10();
  v7 = OUTLINED_FUNCTION_23_2();
  v8(v7);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51();
}

{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_5_5();
  type metadata accessor for Transaction(v5);
  OUTLINED_FUNCTION_9_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_16_4();
  sub_1B24635D8(v0, v1, v7);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_10();
  v8 = OUTLINED_FUNCTION_23_2();
  v9(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51();
}

{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_27_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_5_5();
  type metadata accessor for Product.SubscriptionInfo.RenewalInfo(v5);
  OUTLINED_FUNCTION_9_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_15_4();
  sub_1B24635D8(v0, v1, v7);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_1_10();
  v8 = OUTLINED_FUNCTION_23_2();
  v9(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_51();
}

uint64_t sub_1B2462250()
{
  OUTLINED_FUNCTION_19_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_6();
  v7 = v1(v6);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - v9);
  OUTLINED_FUNCTION_12_5();
  sub_1B24635D8(v2, v10, v0);
  v11 = *v10;

  sub_1B2463630(v10, v0);
  return v11;
}

void sub_1B2462358()
{
  OUTLINED_FUNCTION_58();
  v4 = OUTLINED_FUNCTION_22_2(v3);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_6();
  v7 = v0(v6);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_20_2(v9);
  OUTLINED_FUNCTION_31_1();
  v10 = *(v2 + 16);

  sub_1B2463630(v2, v1);
  if (*(v10 + 16))
  {

    v11 = OUTLINED_FUNCTION_27_0();
    MEMORY[0x1B2749CC0](v11);
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_27_0();
    sub_1B246314C();
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_28_1();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v13 & v12))
    {
      OUTLINED_FUNCTION_33_1();

      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_51();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B24624B4()
{
  OUTLINED_FUNCTION_58();
  v4 = OUTLINED_FUNCTION_22_2(v3);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_6();
  v7 = v0(v6);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_20_2(v9);
  OUTLINED_FUNCTION_31_1();
  v10 = *(v2 + 16);

  sub_1B2463630(v2, v1);
  if (*(v10 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    v11 = OUTLINED_FUNCTION_27_0();
    MEMORY[0x1B2749CC0](v11);
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_27_0();
    sub_1B246314C();
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_28_1();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v13 & v12))
    {
      OUTLINED_FUNCTION_33_1();

      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_51();
      return;
    }
  }

  __break(1u);
}

void sub_1B2462614()
{
  OUTLINED_FUNCTION_58();
  v4 = OUTLINED_FUNCTION_22_2(v3);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_6();
  v7 = v0(v6);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_20_2(v9);
  OUTLINED_FUNCTION_31_1();
  v10 = *(v2 + 16);

  sub_1B2463630(v2, v1);
  if (*(v10 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {

    v11 = OUTLINED_FUNCTION_27_0();
    MEMORY[0x1B2749CC0](v11);
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_27_0();
    sub_1B246314C();
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_28_1();
    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v13 & v12))
    {
      OUTLINED_FUNCTION_33_1();

      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_51();
      return;
    }
  }

  __break(1u);
}

void sub_1B2462774()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = v4(0);
  OUTLINED_FUNCTION_2_2(v11);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  sub_1B2463580(v0, v10, v6);
  sub_1B24635D8(v10, v14, v2);
  v15 = *(v14 + 2);

  sub_1B2463630(v14, v2);
  if (v15[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = v15[12];
    v17 = v15[13];
    v18 = v15[14];
    v19 = v15[15];

    MEMORY[0x1B2749CC0](v16, v17, v18, v19);

    sub_1B246314C();

    sub_1B256D1AC();
    OUTLINED_FUNCTION_35_1();
    if (!(!v23 & v22))
    {
      v24 = v20;
      v25 = v21;

      v26[2] = v24;
      v26[3] = v25;
      sub_1B246352C();
      sub_1B256D74C();

      OUTLINED_FUNCTION_51();
      return;
    }
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1B2462990()
{
  OUTLINED_FUNCTION_19_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_6();
  v7 = v1(v6);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - v9);
  OUTLINED_FUNCTION_12_5();
  sub_1B24635D8(v2, v10, v0);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];

  sub_1B2463630(v10, v0);
  sub_1B25317F0(v11, v12, v13);

  return OUTLINED_FUNCTION_22_1();
}

char *sub_1B246314C()
{
  v0 = sub_1B256DA8C();
  if (v0)
  {
    v1 = v0;
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1B2455BB8(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      OUTLINED_FUNCTION_28_1();
      v3 = sub_1B256DB7C();
      v5 = v4;
      v6 = v3 == 45 && v4 == 0xE100000000000000;
      if (v6 || (v7 = v3, (OUTLINED_FUNCTION_39_1() & 1) != 0))
      {

        v5 = 0xE100000000000000;
        v7 = 43;
      }

      else
      {
        v11 = v7 == 95 && v5 == 0xE100000000000000;
        if (v11 || (OUTLINED_FUNCTION_39_1() & 1) != 0)
        {

          v5 = 0xE100000000000000;
          v7 = 47;
        }
      }

      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B2455BB8((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v5;
      OUTLINED_FUNCTION_28_1();
      sub_1B256DA9C();
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A90);
  sub_1B24636B4();
  v15 = sub_1B256DB8C();

  OUTLINED_FUNCTION_22_1();
  v12 = sub_1B256DA8C();

  if (v12 % 4)
  {
    v13 = OUTLINED_FUNCTION_38_1(v12 % 4);
    MEMORY[0x1B2749D50](v13);
  }

  return v15;
}

char *sub_1B2463320()
{
  OUTLINED_FUNCTION_19_3();
  v0 = sub_1B256E31C();
  if (v0)
  {
    v1 = v0;
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1B2455BB8(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      OUTLINED_FUNCTION_34_0();
      v3 = sub_1B256E32C();
      v5 = v4;
      v6 = v3 == 45 && v4 == 0xE100000000000000;
      if (v6 || (v7 = v3, (OUTLINED_FUNCTION_40_1() & 1) != 0))
      {

        v5 = 0xE100000000000000;
        v7 = 43;
      }

      else
      {
        v11 = v7 == 95 && v5 == 0xE100000000000000;
        if (v11 || (OUTLINED_FUNCTION_40_1() & 1) != 0)
        {

          v5 = 0xE100000000000000;
          v7 = 47;
        }
      }

      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B2455BB8((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v5;
      OUTLINED_FUNCTION_34_0();
      sub_1B256E2FC();
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A90);
  sub_1B24636B4();
  v15 = sub_1B256DB8C();

  OUTLINED_FUNCTION_22_1();
  v12 = sub_1B256DA8C();

  if (v12 % 4)
  {
    v13 = OUTLINED_FUNCTION_38_1(v12 % 4);
    MEMORY[0x1B2749D50](v13);
  }

  return v15;
}

unint64_t sub_1B246350C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B246352C()
{
  result = qword_1EB7D1790;
  if (!qword_1EB7D1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1790);
  }

  return result;
}

uint64_t sub_1B2463580(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_1_10();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B24635D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_10();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B2463630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B2463690(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B24636B4()
{
  result = qword_1EB7D0A98;
  if (!qword_1EB7D0A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0A98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return sub_1B2463580(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_1B2463580(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_1B2463580(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{

  return sub_1B2463580(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_21_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1B244784C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t *a1)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a1);
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_1B2463630(v1, v0);
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_1B24635D8(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_32_1()
{
}

uint64_t OUTLINED_FUNCTION_33_1()
{
}

uint64_t OUTLINED_FUNCTION_38_1@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x1EEE690A0](61, 0xE100000000000000, 4 - a1);
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_1B256EB5C();
}

uint64_t sub_1B2463A58()
{
  type metadata accessor for LocalPurchasesManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1B256D3CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  sub_1B244FB34();
  result = sub_1B256D8AC();
  *(v0 + 112) = result;
  qword_1EB7EDFA8 = v0;
  return result;
}

uint64_t sub_1B2463AE0(uint64_t a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v30 = v27 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AA0);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v28 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  swift_beginAccess();
  v15 = *(v1 + 112);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v27[0] = v11 + 8;
  v27[1] = v11 + 16;
  v21 = (v6 + 8);
  v32 = v15;

  v23 = 0;
  for (i = v28; v19; result = (*v21)(i, v29))
  {
    v25 = v23;
LABEL_9:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v11 + 16))(v14, *(v32 + 56) + *(v11 + 72) * (v26 | (v25 << 6)), v9);
    sub_1B2464920(v31, v30);
    sub_1B256DDEC();
    (*(v11 + 8))(v14, v9);
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
    }

    v19 = *(v16 + 8 * v25);
    ++v23;
    if (v19)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2463D90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AA8);
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v0);
  return sub_1B256DE5C();
}

uint64_t sub_1B2463E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1B247DAA8();
}

uint64_t sub_1B2464064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B2464084, a4, 0);
}

uint64_t sub_1B2464084()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24640E0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B24640E0(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1B256D3CC();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  sub_1B256D3BC();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
  swift_beginAccess();
  sub_1B253F254();
  swift_endAccess();
  v16 = v21;
  v14(v11, v13, v21);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v8 + 32))(v18 + v17, v11, v16);

  sub_1B256DDBC();
  return (*(v8 + 8))(v13, v16);
}

uint64_t sub_1B2464374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B256D3CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v11;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1B247DCE8();
}

uint64_t sub_1B246454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B2464570, 0, 0);
}

uint64_t sub_1B2464570()
{
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B2464630, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1B2464630()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24646C4(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1B246469C, 0, 0);
}

uint64_t sub_1B24646C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  swift_beginAccess();
  v7 = sub_1B24555E0(a1);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04A8);
    sub_1B256E80C();
    v10 = v19;
    v11 = *(v19 + 48);
    v12 = sub_1B256D3CC();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v9, v12);
    v13 = *(v10 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
    (*(*(v14 - 8) + 32))(v6, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_1B244FB34();
    sub_1B256E82C();
    *(v2 + 112) = v10;
    v15 = v6;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
    v15 = v6;
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  swift_endAccess();
  return sub_1B2464CA4(v6);
}

uint64_t sub_1B24648C4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B2464920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2464998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_7_7();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_1_11(v2);

  return sub_1B2464064(v3, v4, v5, v6, v7);
}

uint64_t sub_1B2464A74()
{
  OUTLINED_FUNCTION_4_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B2464B64(uint64_t a1)
{
  v3 = sub_1B256D3CC();
  OUTLINED_FUNCTION_2_2(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1B2464374(a1, v5, v6);
}

uint64_t sub_1B2464BD4()
{
  v1 = sub_1B256D3CC();
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_7_7();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_1_11(v2);

  return sub_1B246454C(v3, v4, v5, v6, v7);
}

uint64_t sub_1B2464CA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2464D70()
{
  v0 = sub_1B256EC4C();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B2464DC4(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x79636E6572727563;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x746E756F63736964;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x726F466563697270;
      break;
    case 7:
      result = 0x6F43646574736F68;
      break;
    case 8:
      result = 0x6E6F6973726576;
      break;
    case 9:
      result = 1702521203;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 25705;
      break;
    case 12:
      result = 1684957547;
      break;
    case 13:
      result = 0x6449726566666FLL;
      break;
    case 14:
      result = 0x73726566666FLL;
      break;
    case 15:
      result = 0x6570795465646F6DLL;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x726550664F6D756ELL;
      break;
    case 18:
      result = 0x6563697270;
      break;
    case 19:
      result = 0x7274536563697270;
      break;
    case 20:
      result = 0x6C61636F4C756369;
      break;
    case 21:
      result = 0x6D614E726566666FLL;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0x647261646E617473;
      break;
    case 24:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD000000000000016;
      break;
    case 28:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B24650E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2464D70();
  *a1 = result;
  return result;
}

unint64_t sub_1B2465118@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B2464DC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_1B2465144(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = sub_1B256E57C();
  OUTLINED_FUNCTION_1_1();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AB8);
  OUTLINED_FUNCTION_1_1();
  v40 = v7;
  MEMORY[0x1EEE9AC00](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1B2465BBC();
  v10 = v41;
  sub_1B256EDBC();
  if (v10)
  {
    v12 = a1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v6;
  }

  v37 = v9;
  v38 = v2;
  v41 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0670);
  LOBYTE(v42) = 0;
  sub_1B2465C10(&unk_1EB7CD5F0);
  sub_1B256E9AC();
  v6 = v43;
  v11 = v44;
  LOBYTE(v42) = 1;
  sub_1B24439BC();
  sub_1B256E9AC();
  v36 = a1;
  v15 = v43;
  v14 = v44;
  v16 = objc_opt_self();
  v35 = v15;
  v17 = sub_1B256D1FC();
  v43 = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:&v43];

  if (!v18)
  {
    v22 = v43;

    sub_1B256D0DC();

    swift_willThrow();
    sub_1B2443AE4(v35, v14);
    v23 = OUTLINED_FUNCTION_1_12();
    v24(v23);
    v12 = v36;
    goto LABEL_4;
  }

  v34 = v14;
  v19 = v43;
  sub_1B256E3DC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AC0);
  if (swift_dynamicCast())
  {
    v20 = OUTLINED_FUNCTION_1_12();
    v21(v20);
    sub_1B2443AE4(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1980);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B2578530;
    v26 = v37;
    *(v25 + 56) = &unk_1F29B3330;
    *(v25 + 64) = v26;
    *(v25 + 32) = 1;
    v27 = v41;
    sub_1B256E54C();
    v28 = sub_1B256E58C();
    swift_allocError();
    v6 = v29;
    v37 = v11;
    v30 = v38;
    v31 = v39;
    (*(v39 + 16))(v29, v27, v38);
    (*(*(v28 - 8) + 104))(v6, *MEMORY[0x1E69E6B00], v28);
    swift_willThrow();
    sub_1B2443AE4(v35, v34);
    (*(v31 + 8))(v27, v30);
    v32 = OUTLINED_FUNCTION_1_12();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v6;
}

uint64_t sub_1B2465660(void *a1, void *a2, unint64_t a3)
{
  v23 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AC8);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
  v13 = sub_1B256DC4C();
  v25 = 0;
  v14 = [v12 dataWithJSONObject:v13 options:0 error:&v25];

  v15 = v25;
  if (v14)
  {
    v16 = sub_1B256D22C();
    v22 = v17;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B2465BBC();
    sub_1B256EDFC();
    v25 = v23;
    v26 = a3;
    v24 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0670);
    sub_1B2465C10(&qword_1EB7D0AD0);
    sub_1B256EA5C();
    if (v3)
    {
      sub_1B2443AE4(v16, v22);

      return (*(v8 + 8))(v11, v6);
    }

    else
    {

      v20 = v16;
      v25 = v16;
      v21 = v22;
      v26 = v22;
      v24 = 1;
      sub_1B2443C2C();
      sub_1B256EA5C();
      (*(v8 + 8))(v11, v6);
      return sub_1B2443AE4(v20, v21);
    }
  }

  else
  {
    v19 = v15;
    sub_1B256D0DC();

    return swift_willThrow();
  }
}

uint64_t sub_1B2465954(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B258EAF0 == a2;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746375646F7270 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

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

uint64_t sub_1B2465A2C(char a1)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a1 & 1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2465A74(char a1)
{
  if (a1)
  {
    return 0x73746375646F7270;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B2465AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2465954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2465AF4(uint64_t a1)
{
  v2 = sub_1B2465BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2465B30(uint64_t a1)
{
  v2 = sub_1B2465BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1B2465B6C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_1B2465144(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1B2465BBC()
{
  result = qword_1EB7CD6C8;
  if (!qword_1EB7CD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD6C8);
  }

  return result;
}

uint64_t sub_1B2465C10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0670);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B2465C7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B2465D04(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionGroupStatusInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B2465E64(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B2465F40()
{
  result = qword_1EB7D0AD8;
  if (!qword_1EB7D0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0AD8);
  }

  return result;
}

unint64_t sub_1B2465F98()
{
  result = qword_1EB7CD6B0;
  if (!qword_1EB7CD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD6B0);
  }

  return result;
}

unint64_t sub_1B2465FF0()
{
  result = qword_1EB7CD6B8;
  if (!qword_1EB7CD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD6B8);
  }

  return result;
}

unint64_t sub_1B2466048()
{
  result = qword_1EB7CD6C0;
  if (!qword_1EB7CD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD6C0);
  }

  return result;
}

uint64_t type metadata accessor for AcknowledgeMessageRequest()
{
  result = qword_1EB7D0AE0;
  if (!qword_1EB7D0AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2466128()
{
  sub_1B243C1F8();
  if (v0 <= 0x3F)
  {
    sub_1B2441224();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B24661BC(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_1B246620C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4449726566666FLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
        if (v8 || (sub_1B256EB5C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B256EB5C();

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

uint64_t sub_1B24663BC(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x4449656C646E7562;
      break;
    case 2:
      result = 0x4449726566666FLL;
      break;
    case 3:
      result = 0x764F746E65696C63;
      break;
    case 4:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2466468(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B00);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2466C48();
  sub_1B256EDFC();
  v12[15] = 0;
  OUTLINED_FUNCTION_1_13();
  sub_1B256EA2C();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_1_13();
    sub_1B256E9FC();
    v12[13] = 2;
    OUTLINED_FUNCTION_1_13();
    sub_1B256EA2C();
    type metadata accessor for AcknowledgeMessageRequest();
    v12[12] = 3;
    type metadata accessor for ClientOverride(0);
    OUTLINED_FUNCTION_0_16();
    sub_1B2466C9C(v9, v10);
    sub_1B256EA0C();
    v12[11] = 4;
    OUTLINED_FUNCTION_1_13();
    sub_1B256EA2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B2466668@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B10);
  OUTLINED_FUNCTION_1_1();
  v34 = v7;
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - v8;
  v10 = type metadata accessor for AcknowledgeMessageRequest();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = type metadata accessor for ClientOverride(0);
  v38 = v14;
  v16 = v13;
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2466C48();
  v36 = v9;
  v17 = v37;
  sub_1B256EDBC();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B2443818(v13 + v38);
  }

  else
  {
    v37 = v5;
    v18 = v34;
    v43 = 0;
    *v13 = sub_1B256E97C();
    v13[1] = v19;
    v42 = 1;
    v13[2] = sub_1B256E94C();
    v13[3] = v20;
    v41 = 2;
    v32[1] = 0;
    v21 = sub_1B256E97C();
    v22 = v38;
    *(v16 + 32) = v21;
    *(v16 + 40) = v23;
    v40 = 3;
    OUTLINED_FUNCTION_0_16();
    sub_1B2466C9C(v24, v25);
    sub_1B256E95C();
    sub_1B2466CE4(v37, v16 + v22);
    v39 = 4;
    v26 = sub_1B256E97C();
    v37 = v27;
    v28 = v26;
    (*(v18 + 8))(v36, v35);
    v29 = (v16 + *(v10 + 32));
    v30 = v37;
    *v29 = v28;
    v29[1] = v30;
    sub_1B2466D54(v16, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B244EDCC(v16);
  }
}

uint64_t sub_1B2466A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B246620C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2466A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24663B4();
  *a1 = result;
  return result;
}

uint64_t sub_1B2466AC4(uint64_t a1)
{
  v2 = sub_1B2466C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2466B00(uint64_t a1)
{
  v2 = sub_1B2466C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2466B54(uint64_t a1)
{
  *(a1 + 16) = sub_1B2466C9C(&qword_1EB7D0AF0, type metadata accessor for AcknowledgeMessageRequest);
  result = sub_1B2466C9C(&qword_1EB7D0560, type metadata accessor for AcknowledgeMessageRequest);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2466BD8(uint64_t a1)
{
  result = sub_1B2466C9C(&qword_1EB7D0AF8, type metadata accessor for AcknowledgeMessageRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B2466C48()
{
  result = qword_1EB7D0B08;
  if (!qword_1EB7D0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B08);
  }

  return result;
}

uint64_t sub_1B2466C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B2466CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2466D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcknowledgeMessageRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AcknowledgeMessageRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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