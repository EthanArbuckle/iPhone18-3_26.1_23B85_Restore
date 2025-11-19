void *sub_237E8958C(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4, a1);
  if (!v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_237E895D8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237EF9320();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void *sub_237E896D0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = v7;
      return sub_237E89788(0x69746164696C6176, 0xEA00000000006E6FLL, a3, a4, v5);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return sub_237E89788(0x69746164696C6176, 0xEA00000000006E6FLL, a3, a4, v5);
    }
  }

  result = sub_237EF9320();
  if (!v4)
  {
    return v7[2];
  }

  return result;
}

void *sub_237E89788(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_10:
    result = sub_237EF9320();
    if (!v5)
    {
      return v8[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = a3(v8, a5, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (!v5)
      {
        return v8[0];
      }

      return result;
    }

    goto LABEL_10;
  }

  v8[0] = a1;
  v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  result = a3(&v7, a5, v8);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_237E89858()
{
  ModelFromBuffer = XGBoosterLoadModelFromBuffer();

  return ModelFromBuffer;
}

uint64_t sub_237E898EC(uint64_t a1, uint64_t a2)
{
  result = sub_237EF5CA0();
  v5 = result;
  if (result)
  {
    result = sub_237EF5CC0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_15;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    result = sub_237EF5CB0();
    if (result >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = result;
    }

    if (v5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      ModelFromBuffer = XGBoosterLoadModelFromBuffer();

      return ModelFromBuffer;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

_BYTE *sub_237E899B0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

void *sub_237E89A38@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_237E89550(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

void *sub_237E89A80@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_237E8958C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_109(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_96()
{
  *(v0 + 16) = v1;
  *(v0 + 8 * v3 + 32) = v2;
  *(v4 - 72) = v0;
}

unint64_t OUTLINED_FUNCTION_6_75()
{

  return sub_237D5206C();
}

uint64_t PreprocessingTabularEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PreprocessingTabularEstimator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PreprocessingTabularEstimator.preprocessed(from:eventHandler:)()
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

uint64_t sub_237E89DC8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  PreprocessingTabularEstimator.preprocessor.getter(v1, v0[10]);
  v2 = *(*(v1 + 32) + 8);
  OUTLINED_FUNCTION_15_0();
  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_237E89EF4;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v6, v2);
}

uint64_t sub_237E89EF4()
{
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

uint64_t PreprocessingTabularEstimator.fitted(toPreprocessed:eventHandler:)()
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
  v1[9] = OUTLINED_FUNCTION_27_0();
  v1[10] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(v3 + 40);
  v1[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E8A1DC()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingTabularEstimator.estimator.getter(v0[6], v0[12]);
  OUTLINED_FUNCTION_15_0();
  v11 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_237E8A2F8;
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v4, v9, v7, v8, v6, v5);
}

uint64_t sub_237E8A2F8()
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

uint64_t sub_237E8A450()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[9];
  v9 = v0[8];
  v8 = v0[2];
  PreprocessingTabularEstimator.preprocessor.getter(v0[6], v5);
  (*(v4 + 32))(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v5, v2, v9, v3, v8);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t PreprocessingTabularEstimator.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  v6[7] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v6[8] = v7;
  v6[9] = OUTLINED_FUNCTION_27_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v6[10] = v8;
  *v8 = v9;
  v8[1] = sub_237E8A694;

  return PreprocessingTabularEstimator.preprocessed(from:eventHandler:)();
}

uint64_t sub_237E8A694()
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

uint64_t sub_237E8A790()
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

    return PreprocessingTabularEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t PreprocessingTabularEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTabularTransformer();
  return (*(v4 + 32))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingTabularEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v29 = a3;
  v30 = v5;
  OUTLINED_FUNCTION_1_1();
  v28 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v31 = v9 - v8;
  v11 = *(v10 + 40);
  v12 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v27 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v26 - v20;
  v22 = v3;
  v23 = v32;
  result = (*(v11 + 40))(a1, v12, v11, v19);
  if (!v23)
  {
    v25 = v30;
    (*(v28 + 16))(v31, v22, v30);
    (*(v27 + 32))(v17, v21, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v31, v17, v25, AssociatedTypeWitness, v29);
  }

  return result;
}

uint64_t sub_237E8ABA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return PreprocessingTabularEstimator.fitted(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237E8AE04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237E8AFCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_237E8B258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  sub_237EF6450();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v6 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_237C6FDA0(a1, &v17 - v12, &qword_27DEAD2C0);
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v8 + 32))(v3, v13, v6);
    sub_237EF6A30();
    sub_237E8C320();
    sub_237EF8720();
    sub_237EF6AB0();
    sub_237CF3C98();

    (*(v8 + 8))(v3, v6);
    v14 = 0;
  }

  v15 = sub_237EF79F0();
  return __swift_storeEnumTagSinglePayload(v18, v14, 1, v15);
}

uint64_t sub_237E8B484@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_237EF6B10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  sub_237C6FDA0(v5, v18 - v12, &qword_27DEAD2C0);
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = sub_237EF79F0();
    return __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

void sub_237E8B680()
{
  OUTLINED_FUNCTION_37_0();
  v76 = v2;
  v77 = v3;
  v80 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v74 = v7;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_1();
  v73 = v9;
  OUTLINED_FUNCTION_12_1();
  v75 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v70 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v79 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_56_11();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v71 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v69 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v82 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_1();
  v81 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  OUTLINED_FUNCTION_18(v25);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v72 = v27;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6450();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5();
  v29 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  v83 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v68 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5();
  v78 = v41 - v40;
  if (sub_237EF66C0())
  {
    sub_237EF9740();
    __break(1u);
  }

  else
  {
    sub_237EF66D0();
    sub_237EF6A30();
    v42 = *(v31 + 8);
    v42(v37, v29);
    sub_237E8C320();
    sub_237EF8720();
    sub_237EF66D0();
    v84 = sub_237EF6A40();
    sub_237E8CFE0(2uLL, 3uLL);
    v43 = sub_237EF6430();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v43);
    sub_237EF6970();
    v42(v35, v29);
    sub_237EF6AB0();
    v42(v37, v29);
    v44 = v78;
    v45 = v80;
    sub_237CF3C98();

    v46 = sub_237EF66B0();
    MEMORY[0x28223BE20](v46);
    v65 = v45;
    v66 = v0;
    v47 = v81;
    sub_237E8B484(sub_237E8D3F8, (&v67 - 4), v81);
    sub_237C65484(v1, &qword_27DEAD2C0);
    v72 = v0;
    sub_237EF66E0();
    sub_237E8B258(v1, v45, v82);
    sub_237C65484(v1, &qword_27DEAD2C0);
    v48 = v68;
    v49 = v79;
    v50 = v83;
    (*(v68 + 16))(v79, v44, v83);
    v51 = *MEMORY[0x277D252B8];
    v52 = v70;
    v53 = *(v70 + 104);
    v54 = v75;
    v53(v49, v51, v75);
    v55 = v69;
    sub_237C6FDA0(v47, v69, &qword_27DEB4618);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v50);
    v57 = 1;
    v58 = v73;
    v59 = v48;
    if (EnumTagSinglePayload != 1)
    {
      (*(v48 + 32))(v73, v55, v83);
      v53(v58, v51, v54);
      v57 = 0;
    }

    v60 = 1;
    __swift_storeEnumTagSinglePayload(v58, v57, 1, v54);
    v61 = v71;
    sub_237C6FDA0(v82, v71, &qword_27DEB4618);
    v62 = __swift_getEnumTagSinglePayload(v61, 1, v83);
    v63 = v74;
    if (v62 != 1)
    {
      (*(v59 + 32))(v74, v61, v83);
      v53(v63, v51, v54);
      v60 = 0;
    }

    __swift_storeEnumTagSinglePayload(v63, v60, 1, v54);
    sub_237EF6740();
    v64 = v79;
    sub_237EC68DC();
    OUTLINED_FUNCTION_17_53(v63);
    OUTLINED_FUNCTION_17_53(v58);
    (*(v52 + 8))(v64, v54);
    OUTLINED_FUNCTION_17_53(v82);
    OUTLINED_FUNCTION_17_53(v81);
    (*(v59 + 8))(v78, v83);
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237E8BE28()
{
  OUTLINED_FUNCTION_37_0();
  v40 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v37 = v3;
  OUTLINED_FUNCTION_12_1();
  v38 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v41 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618);
  v13 = OUTLINED_FUNCTION_18(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v36 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v42 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6450();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v18 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v34 = v26;
  v35 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  sub_237EF67E0();
  sub_237EF6A30();
  v30 = *(v20 + 8);
  v30(v24, v18);
  sub_237E8C320();
  sub_237EF8720();
  sub_237EF67E0();
  sub_237EF6AB0();
  v30(v24, v18);
  sub_237CF3C98();

  sub_237EF67B0();
  sub_237E8B258(v11, v40, v42);
  sub_237C65484(v11, &qword_27DEAD2C0);
  v39 = v29;
  (*(v34 + 16))(v41, v29, v35);
  v31 = *MEMORY[0x277D252B8];
  v32 = *(v43 + 104);
  v32(v41, v31, v38);
  sub_237C6FDA0(v42, v36, &qword_27DEB4618);
  v33 = 1;
  if (__swift_getEnumTagSinglePayload(v36, 1, v35) != 1)
  {
    (*(v34 + 32))(v37, v36, v35);
    v32(v37, v31, v38);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v37, v33, 1, v38);
  sub_237EF6810();
  sub_237EC4744();
  sub_237C65484(v37, &qword_27DEB4610);
  (*(v43 + 8))(v41, v38);
  sub_237C65484(v42, &qword_27DEB4618);
  (*(v34 + 8))(v39, v35);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_237E8C320()
{
  result = qword_27DEB5D48[0];
  if (!qword_27DEB5D48[0])
  {
    sub_237EF6450();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5D48);
  }

  return result;
}

void sub_237E8C378()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v49 = v3;
  OUTLINED_FUNCTION_12_1();
  v47 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v45 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v48 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v46 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v51 = v15;
  OUTLINED_FUNCTION_12_1();
  v44 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v52 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v43 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F105F0;
  *(inited + 32) = MEMORY[0x2383DE9E0]();
  MEMORY[0x2383DEA00]();
  sub_237EF6A30();
  v32 = *(v24 + 8);
  v32(v28, v22);
  v33 = sub_237EF6470();
  (*(v17 + 8))(v21, v44);
  *(inited + 40) = v33;
  *(inited + 48) = 1;
  *(inited + 56) = sub_237EF68E0();
  MEMORY[0x2383DEA00]();
  sub_237EF6AB0();
  v32(v28, v22);
  sub_237CF3C98();

  v34 = swift_setDeallocating();
  MEMORY[0x2383DE9F0](v34);
  v35 = OUTLINED_FUNCTION_13_6();
  sub_237E8B258(v35, v36, v37);
  sub_237C65484(v48, &qword_27DEAD2C0);
  (*(v43 + 16))(v45, v0, v52);
  v38 = *MEMORY[0x277D252B8];
  v39 = *(v50 + 104);
  v39(v45, v38, v47);
  sub_237C6FDA0(v51, v46, &qword_27DEB4618);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v52);
  v41 = 1;
  if (EnumTagSinglePayload != 1)
  {
    (*(v43 + 32))(v49, v46, v52);
    v39(v49, v38, v47);
    v41 = 0;
  }

  v42 = __swift_storeEnumTagSinglePayload(v49, v41, 1, v47);
  MEMORY[0x2383DE9E0](v42);
  sub_237EF68E0();
  sub_237EC5338();
  sub_237C65484(v49, &qword_27DEB4610);
  (*(v50 + 8))(v45, v47);
  sub_237C65484(v51, &qword_27DEB4618);
  (*(v43 + 8))(v0, v52);
  OUTLINED_FUNCTION_38_0();
}

void sub_237E8C924()
{
  OUTLINED_FUNCTION_37_0();
  v58 = v1;
  v59 = v2;
  v69 = v3;
  v56 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v67 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v57 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_16();
  v55 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_16();
  v65 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_1();
  v64 = v12;
  OUTLINED_FUNCTION_12_1();
  v53 = sub_237EF6450();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  v54 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v66 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v62 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v71 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v70 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  v63 = &v53 - v27;
  sub_237EF6C10();
  v60 = v15;
  sub_237EF6A30();
  v28 = *(v17 + 8);
  v29 = OUTLINED_FUNCTION_88_1();
  v28(v29);
  v61 = sub_237E8C320();
  sub_237EF8720();
  sub_237EF6C10();
  sub_237EF6AB0();
  v30 = OUTLINED_FUNCTION_88_1();
  v28(v30);
  sub_237CF3C98();

  v68 = v0;
  sub_237EF6C00();
  sub_237EF6A30();
  v31 = OUTLINED_FUNCTION_88_1();
  v28(v31);
  sub_237EF8720();
  OUTLINED_FUNCTION_10_64();
  sub_237EF6C00();
  sub_237EF6AB0();
  v32 = OUTLINED_FUNCTION_88_1();
  v28(v32);
  OUTLINED_FUNCTION_13_6();
  sub_237CF3C98();

  sub_237EF6BD0();
  sub_237EF6A30();
  v33 = OUTLINED_FUNCTION_88_1();
  v28(v33);
  sub_237EF8720();
  OUTLINED_FUNCTION_10_64();
  sub_237EF6BD0();
  sub_237EF6AB0();
  v34 = OUTLINED_FUNCTION_88_1();
  v28(v34);
  OUTLINED_FUNCTION_13_6();
  sub_237CF3C98();

  sub_237EF6BE0();
  sub_237EF6A30();
  v35 = OUTLINED_FUNCTION_88_1();
  v28(v35);
  sub_237EF8720();
  OUTLINED_FUNCTION_10_64();
  sub_237EF6BE0();
  sub_237EF6AB0();
  v36 = OUTLINED_FUNCTION_88_1();
  v28(v36);
  v37 = v62;
  OUTLINED_FUNCTION_13_6();
  sub_237CF3C98();

  v38 = *(v66 + 16);
  v39 = v64;
  v40 = v54;
  v38(v64, v63, v54);
  v41 = *MEMORY[0x277D252B8];
  v42 = *(v67 + 104);
  v43 = v39;
  v44 = v56;
  v42(v43, v41, v56);
  v45 = v65;
  v38(v65, v70, v40);
  v42(v45, v41, v44);
  v46 = v55;
  v38(v55, v71, v40);
  v42(v46, v41, v44);
  v47 = v57;
  v38(v57, v37, v40);
  v42(v47, v41, v44);
  sub_237EF6C20();
  v49 = v64;
  v48 = v65;
  v69 = sub_237EC605C(v58, v59, v64, v65, v46, v47);
  v50 = *(v67 + 8);
  v50(v47, v44);
  v51 = OUTLINED_FUNCTION_88_1();
  (v50)(v51);
  v50(v48, v44);
  v50(v49, v44);
  v52 = *(v66 + 8);
  v52(v62, v40);
  v52(v71, v40);
  v52(v70, v40);
  v52(v63, v40);
  OUTLINED_FUNCTION_38_0();
}

char *sub_237E8CFE0(unint64_t a1, unint64_t a2)
{
  v6 = sub_237EF6B10();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  result = &v22 - v11;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *v2;
      v3 = *(*v2 + 16);
      if (v3 > a1)
      {
        v22 = &v22 - v11;
        v23 = v2;
        v25 = v7;
        v16 = *(v7 + 16);
        v15 = v7 + 16;
        v14 = v16;
        v24 = (*(v15 + 64) + 32) & ~*(v15 + 64);
        v17 = v13 + v24;
        v18 = *(v15 + 56);
        a1 *= v18;
        v16();
        if (v3 > a2)
        {
          v3 = v18 * a2;
          (v14)(v10, v17 + v18 * a2, v6);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_237E64230();
        v13 = v21;
LABEL_6:
        v19 = v13 + v24;
        v20 = *(v25 + 40);
        result = v20(v13 + v24 + a1, v10, v6);
        if (*(v13 + 16) <= a2)
        {
          __break(1u);
        }

        else
        {
          result = v20(v19 + v3, v22, v6);
          *v23 = v13;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_237E8D1BC(uint64_t a1, uint64_t a2)
{
  v12[0] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_237EF6B10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237EF6450();
  MEMORY[0x28223BE20](v9);
  sub_237EF6A30();
  sub_237E8C320();
  sub_237EF8720();
  v12[3] = sub_237EF6A40();
  sub_237E8CFE0(2uLL, 3uLL);
  v10 = sub_237EF6430();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_237EF6970();
  sub_237EF6AB0();
  (*(v6 + 8))(v8, v5);
  sub_237CF3C98();
}

uint64_t OUTLINED_FUNCTION_17_53(uint64_t a1)
{

  return sub_237C65484(a1, v1);
}

uint64_t MultivariateLinearRegressor.makeTransformer()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_237EF7E90();
  OUTLINED_FUNCTION_23_8();
  v3 = sub_237EF90F0();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[1] = sub_237EF89A0();
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF7E40();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v2);
  return MultivariateLinearRegressor.Model.init(weight:bias:)(v8, v6, a1);
}

uint64_t MultivariateLinearRegressor.update(_:with:)()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;
  *(v1 + 48) = v12;
  *(v1 + 56) = v13;
  *(v1 + 64) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v1 + 72) = v15;
  *v15 = v16;
  v15[1] = sub_237E8D6B0;

  return sub_237CBDD00(v9, v7, v5, v3);
}

uint64_t sub_237E8D6B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

float MultivariateLinearRegressor.configuration.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *v1 = *a1;
  *(v1 + 16) = result;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  return result;
}

uint64_t MultivariateLinearRegressor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 104) = v8;
  *(v1 + 160) = *(v5 + 16);
  *(v1 + 168) = *(v5 + 24);
  v9 = type metadata accessor for AnnotatedBatch();
  *(v1 + 176) = v9;
  v10 = sub_237EF90F0();
  *(v1 + 184) = v10;
  OUTLINED_FUNCTION_6_1(v10);
  *(v1 + 192) = v11;
  *(v1 + 200) = OUTLINED_FUNCTION_27_0();
  *(v1 + 208) = *(v9 - 8);
  *(v1 + 216) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_0();
  v12 = sub_237EF7E90();
  *(v1 + 224) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v1 + 232) = v13;
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  OUTLINED_FUNCTION_12_57();
  *(v1 + 272) = v14;
  *(v1 + 280) = OUTLINED_FUNCTION_27_0();
  *(v1 + 288) = *v0;
  *(v1 + 336) = OUTLINED_FUNCTION_16_52();
  v15 = *(v0 + 40);
  *(v1 + 304) = v16;
  *(v1 + 312) = v15;
  *(v1 + 65) = *(v0 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237E8DA70()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v50 = v2;
  v52 = *(v0 + 264);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 112), v4);
  OUTLINED_FUNCTION_9_24();
  type metadata accessor for AnnotatedFeature();
  v55 = OUTLINED_FUNCTION_17_54();
  *(v0 + 72) = v55;
  v6 = swift_task_alloc();
  *v6 = v1;
  v6[1] = v4;
  v6[2] = v2;
  v7 = *(v5 + 32);
  v6[3] = v7;
  v6[4] = v3;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v7;
  v9[4] = v3;
  v9[5] = KeyPath;
  sub_237EF8A60();
  OUTLINED_FUNCTION_4_91();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_38();
  sub_237C9339C();
  v11 = v10;

  *(v0 + 80) = v11;
  OUTLINED_FUNCTION_9_24();
  v12 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237D155D0((v0 + 80), v1, v12, v50, WitnessTable, v52);
  v51 = WitnessTable;
  v53 = *(v0 + 256);
  v14 = *(v0 + 168);
  v43 = v7;
  v15 = *(v0 + 160);
  v42 = *(v0 + 152);
  v16 = *(v0 + 144);
  v45 = v16;

  *(v0 + 88) = v55;
  v17 = swift_task_alloc();
  *v17 = v15;
  v17[1] = v16;
  v17[2] = v14;
  v17[3] = v43;
  v17[4] = v42;
  v18 = swift_getKeyPath();

  v19 = swift_task_alloc();
  v19[2] = v45;
  v19[3] = v43;
  v19[4] = v42;
  v19[5] = v18;
  OUTLINED_FUNCTION_24_38();
  sub_237C9339C();
  v21 = v20;

  *(v0 + 96) = v21;
  sub_237D155D0((v0 + 96), v15, v12, v14, v51, v53);
  v47 = *(v0 + 65);
  v22 = *(v0 + 336);
  v23 = *(v0 + 304);
  v24 = *(v0 + 68);
  v25 = *(v0 + 288);
  v26 = *(v0 + 296);
  v44 = *(v0 + 312);
  v46 = *(v0 + 264);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  v48 = *(v0 + 216);
  v49 = *(v0 + 256);
  v54 = *(v0 + 200);
  v56 = *(v0 + 176);

  *(v0 + 16) = v25;
  *(v0 + 24) = v26;
  *(v0 + 32) = v24;
  *(v0 + 40) = v23;
  *(v0 + 48) = v22;
  *(v0 + 56) = v44;
  *(v0 + 64) = v47;
  v31 = *(v30 + 16);
  v31(v27, v46, v29);
  v31(v28, v49, v29);
  AnnotatedBatch.init(features:annotations:)(v27, v28, v48);
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v56);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 320) = v32;
  *v32 = v33;
  v32[1] = sub_237E8DEFC;
  OUTLINED_FUNCTION_7_74();

  return MultivariateLinearRegressor.fitted(to:validateOn:eventHandler:)(v34, v35, v36, v37, v38, v39);
}

uint64_t sub_237E8DEFC()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  v7 = OUTLINED_FUNCTION_22_39();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  v10(v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E8E044()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = *(v0[29] + 8);
  v3(v0[32], v2);
  v3(v1, v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237E8E13C()
{
  v1 = *(v0[29] + 8);
  (v1)(v0[32], v0[28]);
  v2 = OUTLINED_FUNCTION_31_0();
  v1(v2);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t MultivariateLinearRegressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  *(v7 + 120) = *v6;
  *(v7 + 168) = OUTLINED_FUNCTION_16_52();
  v8 = *(v6 + 40);
  *(v7 + 136) = v9;
  *(v7 + 144) = v8;
  *(v7 + 65) = *(v6 + 48);
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E8E284()
{
  sub_237E8F35C();
  v1 = *(v0 + 65);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 68);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 152) = v6;
  *v6 = v7;
  v6[1] = sub_237E8E39C;
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return sub_237CBB4C0(v12, v13, v10, v11, v8, v9);
}

uint64_t sub_237E8E39C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t MultivariateLinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  *(v1 + 200) = v24;
  *(v1 + 208) = v25;
  *(v1 + 184) = v4;
  *(v1 + 192) = v2;
  *(v1 + 168) = v5;
  *(v1 + 176) = v6;
  *(v1 + 152) = v7;
  *(v1 + 160) = v8;
  *(v1 + 136) = v9;
  *(v1 + 144) = v10;
  *(v1 + 216) = *(v6 + 16);
  *(v1 + 224) = *(v6 + 24);
  v11 = type metadata accessor for AnnotatedBatch();
  *(v1 + 232) = v11;
  OUTLINED_FUNCTION_9_24();
  v12 = sub_237EF90F0();
  *(v1 + 240) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v1 + 248) = v13;
  *(v1 + 256) = OUTLINED_FUNCTION_27_0();
  *(v1 + 264) = *(v11 - 8);
  *(v1 + 272) = OUTLINED_FUNCTION_27_0();
  *(v1 + 280) = *(v3 - 8);
  *(v1 + 288) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v14 = sub_237EF7E90();
  *(v1 + 296) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v1 + 304) = v15;
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  OUTLINED_FUNCTION_12_57();
  *(v1 + 360) = v16;
  *(v1 + 368) = OUTLINED_FUNCTION_27_0();
  *(v1 + 376) = *v0;
  *(v1 + 424) = OUTLINED_FUNCTION_16_52();
  v17 = *(v0 + 40);
  *(v1 + 392) = v18;
  *(v1 + 400) = v17;
  *(v1 + 65) = *(v0 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_237E8E760()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v80 = v1;
  v82 = v2;
  v84 = *(v0 + 352);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v76 = *(v0 + 176);
  (*(*(v0 + 360) + 16))(*(v0 + 368), *(v0 + 144), v6);
  type metadata accessor for AnnotatedFeature();
  v89 = sub_237EF8A90();
  *(v0 + 72) = v89;
  v7 = swift_task_alloc();
  *v7 = v2;
  v7[1] = v6;
  v7[2] = v5;
  v7[3] = v1;
  v8 = *(v76 + 32);
  v7[4] = v8;
  v7[5] = v3;
  v7[6] = v4;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v6;
  v10[3] = v5;
  v77 = v8;
  v10[4] = v8;
  v10[5] = v3;
  v10[6] = v4;
  v10[7] = KeyPath;
  sub_237EF8A60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_38();
  sub_237C9339C();
  v12 = v11;

  *(v0 + 80) = v12;
  OUTLINED_FUNCTION_9_24();
  v13 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237D155D0((v0 + 80), v82, v13, v80, WitnessTable, v84);
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v85 = *(v0 + 344);
  v17 = *(v0 + 200);
  v67 = *(v0 + 208);
  v71 = WitnessTable;
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);

  *(v0 + 88) = v89;
  v20 = swift_task_alloc();
  *v20 = v16;
  v20[1] = v18;
  v20[2] = v19;
  v20[3] = v15;
  v20[4] = v77;
  v20[5] = v17;
  v20[6] = v67;
  v78 = v13;
  v21 = swift_getKeyPath();

  v22 = swift_task_alloc();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v77;
  v22[5] = v17;
  v22[6] = v67;
  v22[7] = v21;
  sub_237C9339C();
  v24 = v23;

  *(v0 + 96) = v24;
  sub_237D155D0((v0 + 96), v16, v78, v15, WitnessTable, v85);
  v25 = *(v0 + 288);
  v86 = *(v0 + 336);
  v26 = *(v0 + 280);
  v27 = *(v0 + 216);
  v28 = *(v0 + 208);
  v68 = *(v0 + 200);
  v69 = *(v0 + 224);
  v29 = *(v0 + 192);
  v66 = *(v0 + 184);
  v30 = *(v0 + 152);

  (*(v26 + 16))(v25, v30, v29);
  v90 = sub_237EF8A90();
  *(v0 + 104) = v90;
  v31 = swift_task_alloc();
  *v31 = v27;
  v31[1] = v66;
  v31[2] = v29;
  v31[3] = v69;
  v31[4] = v77;
  v31[5] = v68;
  v31[6] = v28;
  v32 = swift_getKeyPath();

  v33 = swift_task_alloc();
  v33[2] = v66;
  v33[3] = v29;
  v33[4] = v77;
  v33[5] = v68;
  v33[6] = v28;
  v33[7] = v32;
  sub_237C9339C();
  v35 = v34;

  *(v0 + 112) = v35;
  sub_237D155D0((v0 + 112), v27, v78, v69, v71, v86);
  v37 = *(v0 + 216);
  v36 = *(v0 + 224);
  v87 = *(v0 + 328);
  v70 = v37;
  v39 = *(v0 + 200);
  v38 = *(v0 + 208);
  v41 = *(v0 + 184);
  v40 = *(v0 + 192);

  *(v0 + 120) = v90;
  v42 = swift_task_alloc();
  *v42 = v37;
  v42[1] = v41;
  v42[2] = v40;
  v42[3] = v36;
  v42[4] = v77;
  v42[5] = v39;
  v42[6] = v38;
  v43 = swift_getKeyPath();

  v44 = swift_task_alloc();
  v44[2] = v41;
  v44[3] = v40;
  v44[4] = v77;
  v44[5] = v39;
  v44[6] = v38;
  v44[7] = v43;
  sub_237C9339C();
  v46 = v45;

  *(v0 + 128) = v46;
  sub_237D155D0((v0 + 128), v70, v78, v36, v71, v87);
  v75 = *(v0 + 65);
  v47 = *(v0 + 424);
  v48 = *(v0 + 392);
  v49 = *(v0 + 68);
  v51 = *(v0 + 376);
  v50 = *(v0 + 384);
  v72 = *(v0 + 400);
  v73 = *(v0 + 352);
  v79 = *(v0 + 344);
  v81 = *(v0 + 336);
  v53 = *(v0 + 312);
  v52 = *(v0 + 320);
  v54 = *(v0 + 296);
  v55 = *(v0 + 304);
  v74 = *(v0 + 272);
  v83 = *(v0 + 256);
  v88 = *(v0 + 328);
  v91 = *(v0 + 232);

  *(v0 + 16) = v51;
  *(v0 + 24) = v50;
  *(v0 + 32) = v49;
  *(v0 + 40) = v48;
  *(v0 + 48) = v47;
  *(v0 + 56) = v72;
  *(v0 + 64) = v75;
  v56 = *(v55 + 16);
  v56(v52, v73, v54);
  v56(v53, v79, v54);
  AnnotatedBatch.init(features:annotations:)(v52, v53, v74);
  v56(v52, v81, v54);
  v56(v53, v88, v54);
  AnnotatedBatch.init(features:annotations:)(v52, v53, v83);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v91);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 408) = v57;
  *v57 = v58;
  v57[1] = sub_237E8EF98;
  v59 = *(v0 + 272);
  v60 = *(v0 + 256);
  v61 = *(v0 + 168);
  v62 = *(v0 + 176);
  v63 = *(v0 + 160);
  v64 = *(v0 + 136);

  return MultivariateLinearRegressor.fitted(to:validateOn:eventHandler:)(v64, v59, v60, v63, v61, v62);
}

uint64_t sub_237E8EF98()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 416) = v0;

  v7 = OUTLINED_FUNCTION_21_49();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_35();
  v10(v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E8F0E0()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v5 = *(v0[38] + 8);
  v5(v0[41], v4);
  v5(v3, v4);
  v5(v2, v4);
  v5(v1, v4);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237E8F224()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v5 = *(v0[38] + 8);
  v5(v0[41], v4);
  v5(v3, v4);
  v5(v1, v4);
  v5(v2, v4);
  OUTLINED_FUNCTION_20_45();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237E8F35C()
{
  v0 = 0xD00000000000002DLL;
  OUTLINED_FUNCTION_23_8();
  sub_237EF7E90();
  v1 = *(sub_237EF7E20() + 16);

  if (v1 < 2)
  {
    v2 = "st 2 dimensions.";
LABEL_3:
    v3 = sub_237EF7E20();
LABEL_6:
    sub_237C84150();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = v0;
    *(v5 + 16) = v2 | 0x8000000000000000;
    *(v5 + 24) = 0;
    *(v5 + 32) = 6;
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_23_8();
  type metadata accessor for AnnotatedBatch();
  v4 = *(sub_237EF7E20() + 16);

  v3 = sub_237EF7E20();
  if (v4 < 2)
  {
    v2 = "the last dimension.";
    v0 = 0xD000000000000030;
    goto LABEL_6;
  }

  v7 = sub_237C6C5F4(1, v3);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_237EF7E20();
  v15 = sub_237C6C5F4(1, v14);
  LOBYTE(v9) = sub_237E8F500(v15, v16, v17, v18, v7, v9, v11, v13);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if ((v9 & 1) == 0)
  {
    v2 = "port is not implemented";
    v0 = 0xD000000000000053;
    goto LABEL_3;
  }

  return result;
}

BOOL sub_237E8F500(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a8 >> 1;
  v9 = a4 >> 1;
  v10 = a3;
  v11 = a7;
  while (1)
  {
    if (v11 == v8)
    {
      v12 = 0;
      v13 = a8 >> 1;
      goto LABEL_10;
    }

    if (v11 >= a7)
    {
      v15 = __OFSUB__(v11, v8);
      v14 = (v11 - v8) < 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (v14 == v15)
    {
      break;
    }

    v12 = *(a6 + 8 * v11);
    v13 = v11 + 1;
LABEL_10:
    result = v10 == v9;
    if (v10 == v9)
    {
      v17 = 0;
      v18 = a4 >> 1;
    }

    else
    {
      if (v10 >= a3)
      {
        v20 = __OFSUB__(v10, v9);
        v19 = (v10 - v9) < 0;
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      if (v19 == v20)
      {
        goto LABEL_25;
      }

      v17 = *(a2 + 8 * v10);
      v18 = v10 + 1;
    }

    if (v11 == v8)
    {
      return result;
    }

    v21 = v10 != v9 && v12 == v17;
    v10 = v18;
    v11 = v13;
    if (!v21)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_237E8F5FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return MultivariateLinearRegressor.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E8F6DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return MultivariateLinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)();
}

uint64_t MultivariateLinearRegressor.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_39_0();
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = v7;
  *(v1 + 160) = v8;
  v9 = *(v5 + 16);
  *(v1 + 216) = v9;
  *(v1 + 224) = *(v5 + 24);
  OUTLINED_FUNCTION_18_0();
  v10 = type metadata accessor for AnnotatedBatch();
  *(v1 + 232) = v10;
  OUTLINED_FUNCTION_6_1(v10);
  *(v1 + 240) = v11;
  *(v1 + 248) = OUTLINED_FUNCTION_27_0();
  *(v1 + 256) = *(v9 - 8);
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v12 = sub_237EF7E90();
  *(v1 + 280) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v1 + 288) = v13;
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  OUTLINED_FUNCTION_12_57();
  *(v1 + 328) = v14;
  *(v1 + 336) = OUTLINED_FUNCTION_27_0();
  *(v1 + 344) = *v0;
  *(v1 + 124) = *(v0 + 16);
  v15 = *(v0 + 24);
  *(v1 + 400) = *(v0 + 32);
  v16 = *(v0 + 40);
  *(v1 + 360) = v15;
  *(v1 + 368) = v16;
  *(v1 + 121) = *(v0 + 48);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237E8FA28()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v44 = v1;
  v47 = *(v0 + 320);
  v41 = v2;
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 168), v4);
  type metadata accessor for AnnotatedFeature();
  v49 = OUTLINED_FUNCTION_17_54();
  *(v0 + 128) = v49;
  v6 = swift_task_alloc();
  *v6 = v2;
  v6[1] = v4;
  v6[2] = v1;
  v7 = *(v5 + 32);
  *(v0 + 376) = v7;
  v6[3] = v7;
  v6[4] = v3;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v7;
  v9[4] = v3;
  v9[5] = KeyPath;
  sub_237EF8A60();
  OUTLINED_FUNCTION_4_91();
  swift_getWitnessTable();
  sub_237C9339C();
  v11 = v10;

  *(v0 + 136) = v11;
  v12 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237D155D0((v0 + 136), v41, v12, v44, WitnessTable, v47);
  v45 = WitnessTable;
  v48 = *(v0 + 312);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v42 = v14;
  v38 = v15;
  v16 = *(v0 + 200);
  v36 = *(v0 + 208);

  *(v0 + 144) = v49;
  v17 = swift_task_alloc();
  *v17 = v15;
  v17[1] = v16;
  v17[2] = v14;
  v17[3] = v7;
  v17[4] = v36;
  v18 = swift_getKeyPath();

  v19 = swift_task_alloc();
  v19[2] = v16;
  v19[3] = v7;
  v19[4] = v36;
  v19[5] = v18;
  OUTLINED_FUNCTION_24_38();
  sub_237C9339C();
  v21 = v20;

  *(v0 + 152) = v21;
  sub_237D155D0((v0 + 152), v38, v12, v42, v45, v48);
  v40 = *(v0 + 121);
  v22 = *(v0 + 400);
  v23 = *(v0 + 360);
  v24 = *(v0 + 124);
  v25 = *(v0 + 344);
  v26 = *(v0 + 352);
  v37 = *(v0 + 368);
  v39 = *(v0 + 320);
  v28 = *(v0 + 296);
  v27 = *(v0 + 304);
  v30 = *(v0 + 280);
  v29 = *(v0 + 288);
  v43 = *(v0 + 248);
  v46 = *(v0 + 312);

  *(v0 + 72) = v25;
  *(v0 + 80) = v26;
  *(v0 + 88) = v24;
  *(v0 + 96) = v23;
  *(v0 + 104) = v22;
  *(v0 + 112) = v37;
  *(v0 + 120) = v40;
  v31 = *(v29 + 16);
  v31(v27, v39, v30);
  v31(v28, v46, v30);
  AnnotatedBatch.init(features:annotations:)(v27, v28, v43);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 384) = v32;
  *v32 = v33;
  v32[1] = sub_237E8FE98;
  OUTLINED_FUNCTION_7_74();

  return MultivariateLinearRegressor.update(_:with:)();
}

uint64_t sub_237E8FE98()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[49] = v0;

  (*(v3[30] + 8))(v3[31], v3[29]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E8FFC4()
{
  v24 = v0;
  v1 = v0[22];
  if (v1)
  {
    v19 = v0[39];
    v20 = v0[40];
    v2 = v0[36];
    v4 = v0[33];
    v3 = v0[34];
    v18 = v0[35];
    v5 = v0[32];
    v6 = v0[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    strcpy((inited + 32), "training_loss");
    *(inited + 46) = -4864;
    (*(v5 + 16))(v4, v3, v6);
    sub_237C70604(v1);
    sub_237C65348();
    sub_237EF8190();
    sub_237C758C4();
    v8 = sub_237EF8230();
    v9 = sub_237C908A4(v8);

    v21[0] = 0xD00000000000001BLL;
    v21[1] = 0x8000000237F1CA90;
    v21[2] = 0;
    v21[3] = 0;
    v22 = 1;
    v23 = v9;
    v1(v21);
    sub_237C5EE40(v1);

    (*(v5 + 8))(v3, v6);
    v10 = *(v2 + 8);
    v10(v19, v18);
    v10(v20, v18);
  }

  else
  {
    v11 = v0[39];
    v12 = v0[40];
    v13 = v0[35];
    v14 = v0[36];
    (*(v0[32] + 8))(v0[34], v0[27]);
    v15 = *(v14 + 8);
    v15(v11, v13);
    v15(v12, v13);
  }

  OUTLINED_FUNCTION_3_0();

  return v16();
}

uint64_t sub_237E90280()
{
  v1 = *(v0[36] + 8);
  (v1)(v0[39], v0[35]);
  v2 = OUTLINED_FUNCTION_31_0();
  v1(v2);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

void MultivariateLinearRegressor.decodeWithOptimizer(from:)()
{
  sub_237D8A030();
  if (!v0)
  {
    OUTLINED_FUNCTION_23_8();
    type metadata accessor for MultivariateLinearRegressor.Model();
    sub_237D895BC();
  }
}

uint64_t sub_237E90490()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return MultivariateLinearRegressor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E905B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E905F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void OUTLINED_FUNCTION_5_90(__n128 *a1@<X8>, float a2@<S0>, float a3@<S1>, __n128 a4@<Q2>)
{
  *a1 = a4;
  a1[1].n128_f32[0] = a2;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_f32[0] = a3;
  a1[2].n128_u64[1] = v5;
  a1[3].n128_u8[0] = v6;
}

uint64_t OUTLINED_FUNCTION_17_54()
{

  return sub_237EF8A90();
}

uint64_t OUTLINED_FUNCTION_25_37()
{

  return type metadata accessor for MultivariateLinearRegressor.Model();
}

void sub_237E9074C()
{
  OUTLINED_FUNCTION_13_4();
  v46 = v0;
  v47 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v49 = v8;
  OUTLINED_FUNCTION_29_17();
  memcpy(v9, v10, v11);
  OUTLINED_FUNCTION_29_17();
  memcpy(v12, v13, v14);
  v15 = v7[3];
  v58 = v7[2];
  v59 = v15;
  v43 = v15;
  v16 = v7[5];
  v44 = v7[4];
  v45 = v58;
  v60 = v5;
  v61 = v44;
  v17 = v7[6];
  v18 = v7[7];
  v62 = v16;
  v63 = v17;
  v48 = v16;
  v20 = v7[8];
  v19 = v7[9];
  v64 = v18;
  v65 = v20;
  v66 = v19;
  v67 = v3;
  v50 = v5;
  v51 = v16;
  v39 = v18;
  v40 = v17;
  v52 = v17;
  v53 = v18;
  v37 = v19;
  v38 = v20;
  v54 = v20;
  v55 = v19;
  v21 = v58;
  v56 = v3;
  KeyPath = swift_getKeyPath();
  sub_237EF7E90();
  v41 = v5;
  v42 = v3;
  sub_237C9339C();
  v46 = v0;

  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v34 = v16;
  v47 = v7;
  v22 = v44;
  sub_237D13CC4();

  if (!v0)
  {
    v23 = memcpy(v68, v69, sizeof(v68));
    v46 = &v36;
    MEMORY[0x28223BE20](v23);
    v24 = v42;
    v33[0] = v21;
    v33[1] = v43;
    v25 = v40;
    v26 = v41;
    v33[2] = v41;
    v33[3] = v22;
    v27 = v48;
    v33[4] = v48;
    v33[5] = v40;
    v28 = v38;
    v29 = v39;
    v33[6] = v39;
    v33[7] = v38;
    v30 = v37;
    v34 = v37;
    v35 = v42;
    v31 = swift_getKeyPath();
    v46 = v33;
    v32 = MEMORY[0x28223BE20](v31);
    v33[-8] = v26;
    v33[-7] = v27;
    v33[-6] = v25;
    v33[-5] = v29;
    v33[-4] = v28;
    v33[-3] = v30;
    v33[-2] = v24;
    v33[-1] = v32;
    sub_237C9339C();

    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237E951A0();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E90A60()
{
  OUTLINED_FUNCTION_13_4();
  v55 = v0;
  v56 = v1;
  v3 = v2;
  v57 = v4;
  v6 = v5;
  v54 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v52 = v10;
  v11 = v3[2];
  v59 = v3[4];
  v60 = v11;
  v12 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v63 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v51 = (v21 - v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v49 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v49 - v30;
  (*(v14 + 16))(v17, v6, v12);
  sub_237D4A7B4(v17, v60, v26);
  sub_237EF69B0();
  v32 = *(v63 + 8);
  v50 = v26;
  v33 = OUTLINED_FUNCTION_43_21();
  v32(v33);
  v60 = v31;
  sub_237EF6AE0();
  v58 = v18;
  v59 = v32;
  (v32)(v29, v18);
  v34 = v3[3];
  type metadata accessor for AnnotatedFeature();
  v35 = v3[6];
  v36 = v3[9];
  v53 = v6;
  v37 = v56;
  v38 = v57;
  sub_237E5E354();
  if (v39)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x697461746F6E6E41, 0xEB00000000206E6FLL);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFEA90);
    v40 = v61;
    v41 = v62;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v42 = swift_allocError();
    *v43 = 0xD000000000000026;
    v43[1] = 0x8000000237F01710;
    v43[2] = v40;
    v43[3] = v41;
    OUTLINED_FUNCTION_47_5(v42, v43);
    v59(v60, v58);
  }

  else
  {
    sub_237E5E170(v37, v38, v34, v35, v36);
    v44 = sub_237EF64B0();
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v44);
    sub_237EF6980();
    v45 = *(v63 + 16);
    v46 = v60;
    v47 = v58;
    v45(v50, v60, v58);
    v45(v51, v29, v47);
    sub_237EF6410();
    v48 = v59;
    v59(v29, v47);
    v48(v46, v47);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E90EAC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v24 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v23 = (v8 - v9);
  v11 = MEMORY[0x28223BE20](v10);
  v22 = v21 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  sub_237C9339C();
  sub_237EF6430();
  OUTLINED_FUNCTION_52_14();
  sub_237EF6970();
  sub_237C9339C();
  OUTLINED_FUNCTION_52_14();
  sub_237EF6970();
  v18 = *(v6 + 16);
  v18(v22, v17, v4);
  v18(v23, v15, v4);
  sub_237EF6410();
  v19 = *(v6 + 8);
  v19(v15, v4);
  return (v19)(v17, v4);
}

uint64_t sub_237E91150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  OUTLINED_FUNCTION_23();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237E91184()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v25 = v2;
  v3 = *(v0 + 136);
  v4 = swift_task_alloc();
  v5 = v3[2];
  *(v0 + 160) = v5;
  *v4 = v5;
  v6 = v3[3];
  *(v0 + 168) = v6;
  v4[1] = v6;
  v4[2] = v2;
  v29 = v6;
  v7 = v3[4];
  *(v0 + 176) = v7;
  v4[3] = v7;
  v8 = v3[5];
  *(v0 + 184) = v8;
  v4[4] = v8;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v27 = v9;
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v28 = v9;
  v30 = v3[6];
  *(v0 + 192) = v30;
  v4[5] = v30;
  v10 = v3[7];
  *(v0 + 200) = v10;
  v4[6] = v10;
  v24 = v3[8];
  *(v0 + 208) = v24;
  v4[7] = v24;
  v11 = v3[9];
  *(v0 + 216) = v11;
  v4[8] = v11;
  v4[9] = v1;
  v26 = v11;
  KeyPath = swift_getKeyPath();

  v13 = swift_task_alloc();
  v13[2] = v25;
  v13[3] = v8;
  v13[4] = v30;
  v13[5] = v10;
  v13[6] = v24;
  v13[7] = v11;
  v13[8] = v1;
  v13[9] = KeyPath;
  sub_237EF7E90();
  sub_237C9339C();
  v15 = v14;
  *(v0 + 224) = v14;

  *(v0 + 80) = v15;
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *(v0 + 16) = v27;
  *&v17 = v30;
  *(&v17 + 1) = v10;
  *&v18 = v24;
  *(&v18 + 1) = v26;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  *(v0 + 32) = v28;
  v19 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  v20 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *v16 = v0;
  v16[1] = sub_237E91438;

  return Transformer.prediction<A, B>(from:)(v0 + 80, v19, v20, v29, WitnessTable, v22);
}

uint64_t sub_237E91438(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 240) = v1;

  if (!v1)
  {
    *(v5 + 248) = a1;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E91558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_36_22();
  v71 = v38[30];
  v40 = v38[24];
  v39 = v38[25];
  v42 = v38[22];
  v41 = v38[23];
  v44 = v38[20];
  v43 = v38[21];
  v74 = v38[27];
  v75 = v43;
  v77 = v38[26];
  v45 = v38[18];
  v46 = v38[19];
  v76 = v45;
  v73 = v38[16];
  v38[11] = v38[31];
  v47 = swift_task_alloc();
  *v47 = v44;
  v47[1] = v43;
  v47[2] = v45;
  v47[3] = v42;
  v47[4] = v41;
  v47[5] = v40;
  v68 = v39;
  v47[6] = v39;
  v47[7] = v77;
  v47[8] = v74;
  v47[9] = v46;
  KeyPath = swift_getKeyPath();

  v48 = swift_task_alloc();
  v48[2] = v44;
  v48[3] = v45;
  v48[4] = v42;
  v48[5] = v41;
  v48[6] = v40;
  v48[7] = v39;
  v48[8] = v77;
  v48[9] = v46;
  v48[10] = KeyPath;
  type metadata accessor for ClassificationDistribution();
  sub_237EF8A60();
  OUTLINED_FUNCTION_23_8();
  v69 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_24();
  v72 = v49;
  swift_getWitnessTable();
  sub_237C9339C();
  v51 = v50;

  v38[12] = v51;
  v52 = swift_task_alloc();
  *v52 = v44;
  v52[1] = v75;
  v52[2] = v45;
  v52[3] = v42;
  v52[4] = v41;
  v52[5] = v40;
  v53 = v39;
  v52[6] = v39;
  v52[7] = v77;
  v52[8] = v74;
  v52[9] = v46;
  v70 = swift_getKeyPath();

  v54 = swift_allocObject();
  v54[2] = v76;
  v54[3] = v41;
  v54[4] = v40;
  v54[5] = v53;
  v54[6] = v77;
  v54[7] = v74;
  v54[8] = v46;
  v54[9] = v70;
  v55 = swift_task_alloc();
  v55[2] = v44;
  v55[3] = v75;
  v55[4] = v76;
  v55[5] = v42;
  v55[6] = v41;
  v55[7] = v40;
  v55[8] = v53;
  v55[9] = v77;
  v55[10] = v74;
  v55[11] = v46;
  v55[12] = sub_237C7BB40;
  v55[13] = v54;

  sub_237C9339C();
  v57 = v56;

  v38[13] = v57;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  v38[14] = v74;
  swift_getWitnessTable();
  swift_getWitnessTable();
  ClassificationMetrics.init<A, B>(_:_:)();
  OUTLINED_FUNCTION_23_8();
  type metadata accessor for ClassificationMetrics();
  ClassificationMetrics.accuracy.getter();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_11_62();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, KeyPath, v42, v41, v40, v68, v46, v71, v69, v70, v38 + 12, v72, v73, v74, v75, v76, v44, v77, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_237E9194C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2CEC0];
  sub_237EF6B50();
  OUTLINED_FUNCTION_4();
  return (*(v3 + 104))(a1, v2);
}

uint64_t FullyConnectedNetworkClassifier.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_237C8F200(v7, &v6);
}

double FullyConnectedNetworkClassifier.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_38_18(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12);
  *&result = OUTLINED_FUNCTION_45_20().n128_u64[0];
  return result;
}

uint64_t FullyConnectedNetworkClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

double FullyConnectedNetworkClassifier.init(labels:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = &unk_284ACECD0;
  *(a9 + 8) = 981668463;
  *(a9 + 16) = 1000;
  *(a9 + 24) = 1045220557;
  *(a9 + 32) = 16;
  *(a9 + 40) = 0x3F847AE147AE147BLL;
  *(a9 + 48) = xmmword_237F11780;
  *(a9 + 64) = a1;
  OUTLINED_FUNCTION_38_18(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11, v12, v13);
  *&result = OUTLINED_FUNCTION_45_20().n128_u64[0];
  return result;
}

uint64_t FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v0[13] = v7;
  v0[20] = *(v1 - 8);
  v0[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v8, v9, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E91BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_0();
  (*(v10[20] + 16))(v10[21], v10[14], v10[18]);
  sub_237EF7E90();
  type metadata accessor for AnnotatedFeature();
  v11 = sub_237EF8A90();
  v10[22] = v11;
  v10[11] = v11;
  OUTLINED_FUNCTION_23_8();
  v12 = sub_237EF89A0();
  v10[23] = v12;
  v10[12] = v12;
  v13 = swift_task_alloc();
  v10[24] = v13;
  OUTLINED_FUNCTION_23_8();
  v14 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v13 = v10;
  v13[1] = sub_237E91D4C;
  v16 = OUTLINED_FUNCTION_52_9(WitnessTable);

  return sub_237E91EB0(v16, (v10 + 11), (v10 + 12), v17, v18, v19, v14, v14, a9, a10);
}

uint64_t sub_237E91D4C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237E91EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_0();
  v12 = v11;
  *(v10 + 640) = a10;
  *(v10 + 632) = a9;
  *(v10 + 624) = v13;
  *(v10 + 616) = v14;
  *(v10 + 608) = v11;
  *(v10 + 600) = v15;
  *(v10 + 592) = v16;
  *(v10 + 584) = v17;
  *(v10 + 576) = v18;
  *(v10 + 568) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  *(v10 + 648) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v10 + 656) = v21;
  *(v10 + 664) = OUTLINED_FUNCTION_27_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A0);
  OUTLINED_FUNCTION_18(v22);
  *(v10 + 672) = OUTLINED_FUNCTION_27_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8);
  *(v10 + 680) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v10 + 688) = OUTLINED_FUNCTION_27_0();
  v24 = sub_237EF6B10();
  *(v10 + 696) = v24;
  OUTLINED_FUNCTION_6_1(v24);
  *(v10 + 704) = v25;
  *(v10 + 712) = swift_task_alloc();
  *(v10 + 720) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B0);
  *(v10 + 728) = v26;
  OUTLINED_FUNCTION_6_1(v26);
  *(v10 + 736) = v27;
  *(v10 + 744) = OUTLINED_FUNCTION_27_0();
  v28 = sub_237EF64C0();
  *(v10 + 752) = v28;
  OUTLINED_FUNCTION_6_1(v28);
  *(v10 + 760) = v29;
  *(v10 + 768) = OUTLINED_FUNCTION_27_0();
  v30 = v12[2];
  *(v10 + 776) = v30;
  v31 = v12[3];
  *(v10 + 784) = v31;
  v32 = v12[4];
  *(v10 + 792) = v32;
  v33 = v12[5];
  *(v10 + 800) = v33;
  *&v34 = v30;
  *(&v34 + 1) = v31;
  *&v35 = v32;
  *(&v35 + 1) = v33;
  v36 = v12[6];
  *(v10 + 808) = v36;
  v37 = v12[7];
  *(v10 + 816) = v37;
  v38 = v12[8];
  *(v10 + 824) = v38;
  v39 = v12[9];
  *(v10 + 832) = v39;
  *&v40 = v36;
  *(&v40 + 1) = v37;
  *(v10 + 304) = v34;
  *(v10 + 320) = v35;
  *&v34 = v38;
  *(&v34 + 1) = v39;
  *(v10 + 336) = v40;
  *(v10 + 352) = v34;
  v41 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  *(v10 + 840) = v41;
  OUTLINED_FUNCTION_6_1(v41);
  *(v10 + 848) = v42;
  *(v10 + 856) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  *(v10 + 864) = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  *(v10 + 872) = v43;
  *(v10 + 880) = OUTLINED_FUNCTION_27_0();
  *(v10 + 888) = type metadata accessor for AnnotatedFeature();
  v44 = sub_237EF90F0();
  *(v10 + 896) = v44;
  OUTLINED_FUNCTION_6_1(v44);
  *(v10 + 904) = v45;
  *(v10 + 912) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v46, v47, v48);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v49, v50, v51);
}

void sub_237E92270()
{
  v100 = v0;
  if ((sub_237EF8DD0() & 1) == 0)
  {
    v1 = *(v0 + 912);
    v2 = *(v0 + 888);
    sub_237EF8E80();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
    v4 = *(v0 + 912);
    if (EnumTagSinglePayload != 1)
    {
      v6 = *(v0 + 888);
      (*(*(v0 + 872) + 16))(*(v0 + 880), *(v0 + 912), *(v0 + 864));
      (*(*(v6 - 8) + 8))(v4, v6);
      v7 = sub_237EF7E20();
      v8 = OUTLINED_FUNCTION_55_1();
      v9(v8);
      v10 = v7;
      OUTLINED_FUNCTION_37_24(v99);
      sub_237E9074C();
      v12 = sub_237EF8DD0();
      if ((v12 & 1) == 0)
      {
        OUTLINED_FUNCTION_37_24(v99);
        sub_237E9074C();
      }

      v13 = *(v0 + 832);
      v14 = *(v0 + 824);
      v15 = *(v0 + 808);
      v85 = *(v0 + 800);
      v87 = *(v0 + 816);
      v90 = *(v0 + 856);
      v91 = *(v0 + 792);
      v16 = *(v0 + 784);
      v88 = *(v0 + 776);
      v17 = *(v0 + 768);
      v18 = *(v0 + 760);
      v92 = *(v0 + 752);
      v19 = sub_237EF8260();
      v20 = sub_237E5E16C(v19, v16, v15, v13);
      v22 = v21;
      *(v0 + 920) = v20;
      *(v0 + 928) = v21;
      v23 = *(v0 + 32);
      v99[0] = *(v0 + 16);
      v99[1] = v23;
      v24 = *(v0 + 64);
      v99[2] = *(v0 + 48);
      v99[3] = v24;
      sub_237C8F200(v0 + 16, v0 + 368);
      sub_237EF8260();
      sub_237EF8260();
      sub_237DE5E24(v99, v20, v22, v10, 0, v88, v16, v91, v90, v85, v15, v87, v14, v13);
      v25 = *(v0 + 56);
      sub_237CDC02C(*(v0 + 64), 0.0);
      v27 = v26;
      *(v0 + 536) = v25;
      *(v0 + 544) = v26;
      (*(v18 + 104))(v17, *MEMORY[0x277D2CD40], v92);
      v28 = type metadata accessor for FullyConnectedNetwork();
      sub_237C77B74();
      sub_237EF68C0();
      (*(v18 + 8))(v17, v92);
      OUTLINED_FUNCTION_37_24(v99);
      sub_237E947C0();
      v29 = *(v0 + 32);
      *(v0 + 936) = v29;
      if (v29 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v29)
        {
LABEL_27:

LABEL_28:
          if ((sub_237D0510C() & 1) == 0)
          {
            v69 = FullyConnectedNetworkClassifierModel.debugDescription.getter();
            sub_237D05198(v69, v70);
          }

          OUTLINED_FUNCTION_9_62();
          (*(v71 + 8))(v28);
          v72 = OUTLINED_FUNCTION_25_38();
          v73(v72, v27, v22);
          v74 = OUTLINED_FUNCTION_28_32();
          v75(v74);

          OUTLINED_FUNCTION_3_0();
          goto LABEL_6;
        }

        for (i = 0; ; i = *(v0 + 944) + 1)
        {
          v86 = i;
          *(v0 + 944) = i;
          v31 = *(v0 + 688);
          v32 = *(v0 + 680);
          sub_237EF6A10();
          sub_237EF6B60();
          v89 = *(v31 + *(v32 + 44));
          OUTLINED_FUNCTION_6_38();
          sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
          while (1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
            sub_237EF91A0();
            if (*(v0 + 552))
            {
              *&v99[0] = *(v0 + 552);
              v89(v99);
            }

            OUTLINED_FUNCTION_33_24();
            __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
            v37 = *(v0 + 672);
            v38 = *(v0 + 648);
            v39 = OUTLINED_FUNCTION_38_7();
            v41 = __swift_getEnumTagSinglePayload(v39, v40, v38);
            v42 = *(v0 + 856);
            if (v41 == 1)
            {
              break;
            }

            v93 = *(v0 + 800);
            v94 = *(v0 + 816);
            v97 = *(v0 + 784);
            v98 = *(v0 + 792);
            v95 = *(v0 + 832);
            v96 = *(v0 + 776);
            v43 = *(v0 + 720);
            v44 = *(v0 + 664);
            v45 = *(v0 + 640);
            v46 = *(v0 + 632);
            v47 = *(v0 + 624);
            v48 = *(v0 + 616);
            v49 = (*(*(v0 + 656) + 32))(v44, v37, v38);
            v50 = MEMORY[0x2383E24F0](v49);
            sub_237E94A30(v43, v42, v44, v96, v97, v48, v47, v98, v93, *(&v93 + 1), v94, *(&v94 + 1), v95, v46, v45, (v0 + 560));
            v51 = *(v0 + 648);
            objc_autoreleasePoolPop(v50);
            v52 = OUTLINED_FUNCTION_35_21();
            v53(v52, v51);
          }

          v54 = *(v0 + 840);
          sub_237C65484(*(v0 + 688), &qword_27DEB24A8);
          v55 = *(v54 + 96);
          v56 = *(v42 + v55);
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          *(v0 + 952) = v58;
          if (v57)
          {
            break;
          }

          *(v42 + v55) = v58;
          if (sub_237EF8DD0())
          {
            v59 = 0;
            v60 = 0.0;
          }

          else
          {
            OUTLINED_FUNCTION_37_24((v0 + 88));
            OUTLINED_FUNCTION_15_47();
            sub_237E94B88();
            v61 = *(v0 + 696);
            sub_237EF6A90();
            v62 = OUTLINED_FUNCTION_35_21();
            v63(v62, v61);
            v60 = *(v0 + 1032);
            sub_237D0FC4C(v86, v60);
          }

          *(v0 + 960) = v60;
          *(v0 + 1040) = v59 & 1;
          v64 = *(v0 + 592);
          v28 = &qword_27DEB24C0;
          if (v64)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
            inited = swift_initStackObject();
            OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
            sub_237C70604(v64);
            sub_237EF6A90();
            inited[3].n128_f64[0] = *(v0 + 1036);
            sub_237C758C4();
            *(v0 + 968) = sub_237EF8230();
            OUTLINED_FUNCTION_37_24((v0 + 160));
            v77 = swift_task_alloc();
            *(v0 + 976) = v77;
            *v77 = v0;
            OUTLINED_FUNCTION_2_110(v77);
            v78 = OUTLINED_FUNCTION_16_53();

            sub_237E91150(v78, v79, v80, v81, v82);
            return;
          }

          v65 = *(v0 + 704);
          if (v59)
          {
            v27 = *(v0 + 920);

            v22 = v65 + 8;
            v83 = OUTLINED_FUNCTION_43_21();
            v84(v83);
            goto LABEL_28;
          }

          v66 = *(v0 + 936);
          v27 = *(v0 + 944) + 1;
          v22 = v65 + 8;
          v67 = OUTLINED_FUNCTION_43_21();
          v68(v67);
          if (v27 == v66)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
      return;
    }

    (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
  }

  sub_237C84150();
  OUTLINED_FUNCTION_3_23();
  swift_allocError();
  *v5 = 0xD000000000000026;
  *(v5 + 8) = 0x8000000237F01710;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_4_92();

  OUTLINED_FUNCTION_3_0();
LABEL_6:

  v11();
}

uint64_t sub_237E92DD4()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 984) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 992) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E93858()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 1016) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1024) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237E941A0()
{
  v0 = OUTLINED_FUNCTION_14_64();
  v1(v0);
  v2 = OUTLINED_FUNCTION_55_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_31_0();
  v5(v4);
  OUTLINED_FUNCTION_4_92();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X1, X16 }
}

void sub_237E942AC()
{
  v0 = OUTLINED_FUNCTION_14_64();
  v1(v0);
  v2 = OUTLINED_FUNCTION_55_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_31_0();
  v5(v4);
  OUTLINED_FUNCTION_4_92();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X1, X16 }
}

uint64_t FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v10[21] = a9;
  v10[22] = a10;
  v10[19] = v11;
  v10[20] = v13;
  v10[17] = v14;
  v10[18] = v15;
  v10[15] = v16;
  v10[16] = v17;
  v10[13] = v18;
  v10[14] = v19;
  v10[23] = *(v13 - 8);
  v10[24] = OUTLINED_FUNCTION_27_0();
  v10[25] = *(v12 - 8);
  v10[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v20, v21, v22);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237E944BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[23];
  v11 = v10[24];
  v13 = v10[20];
  v14 = v10[15];
  (*(v10[25] + 16))(v10[26], v10[14], v10[19]);
  sub_237EF7E90();
  type metadata accessor for AnnotatedFeature();
  v15 = sub_237EF8A90();
  v10[27] = v15;
  v10[11] = v15;
  (*(v12 + 16))(v11, v14, v13);
  v16 = sub_237EF8A90();
  v10[28] = v16;
  v10[12] = v16;
  v17 = swift_task_alloc();
  v10[29] = v17;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v17 = v10;
  v17[1] = sub_237E9464C;
  OUTLINED_FUNCTION_52_9(WitnessTable);
  OUTLINED_FUNCTION_45();

  return sub_237E91EB0(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_237E9464C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

void sub_237E947C0()
{
  OUTLINED_FUNCTION_13_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24D0);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19();
  v5 = v4;
  memcpy(v6, v0, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  sub_237C9339C();
  if (!v1)
  {
    sub_237EF64F0();
    sub_237EF64E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
    sub_237C96710(&qword_27DEB24D8, &qword_27DEAE2B8);
    sub_237D7E5CC();
    sub_237C96710(&qword_27DEB24E8, &qword_27DEAE2B0);
    sub_237E9194C(v5);
    sub_237EF6B70();
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E94A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v27[9] = a1;
  v21 = sub_237EF6B10();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237EF8B90();
  if (v16)
  {
    *a16 = v16;
  }

  else
  {
    v27[0] = a4;
    v27[1] = a5;
    v27[2] = a8;
    v27[3] = a9;
    v27[4] = a10;
    v27[5] = a11;
    v27[6] = a12;
    v27[7] = a13;
    v26 = type metadata accessor for FullyConnectedNetworkClassifierModel();
    sub_237DE6104(a3, v26);
    sub_237EF69F0();
    return (*(v22 + 8))(v24, v21);
  }

  return result;
}

void sub_237E94B88()
{
  OUTLINED_FUNCTION_13_4();
  v50 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v49 = v13;
  v41 = v14;
  v46 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v44 = v18;
  v45 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v43 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v48 = &v41 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  OUTLINED_FUNCTION_1();
  v42 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v47 = v29;
  memcpy(v60, v2, 0x48uLL);
  v30 = v8[2];
  v51 = v8[1];
  v52 = v6;
  v53 = v30;
  v31 = v8[4];
  v54 = v8[3];
  v55 = v31;
  v56 = v4;
  v57 = v60;
  v58 = v12;
  v59 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v32 = v50;
  sub_237C9339C();
  if (!v32)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
    sub_237C96710(&qword_27DEAE2C0, &qword_27DEAE2B8);
    sub_237E90EAC(v33, v47);

    sub_237EF6420();
    type metadata accessor for FullyConnectedNetwork();
    sub_237C77B74();
    sub_237EF6830();
    v34 = *(v43 + 8);
    v34(v23, v45);
    sub_237EF6400();
    v35 = *MEMORY[0x277D2CD58];
    v36 = sub_237EF64D0();
    OUTLINED_FUNCTION_4();
    v38 = v44;
    (*(v37 + 104))(v44, v35, v36);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v36);
    sub_237EF6570();
    sub_237C65484(v38, &qword_27DEB24C8);
    v39 = OUTLINED_FUNCTION_55_1();
    (v34)(v39);
    v40 = OUTLINED_FUNCTION_43_21();
    (v34)(v40);
    (*(v42 + 8))(v47, v26);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E94FC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E950A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

void sub_237E951A0()
{
  OUTLINED_FUNCTION_13_4();
  v55 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 24);
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v70 = v10 - v9;
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = *(v0 + 64);
  v21 = *(v5 + 72);
  v62 = v20;
  if (sub_237EF8C70() < 2)
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v28 = swift_allocError();
    *v29 = 0xD000000000000026;
    v29[1] = 0x8000000237F01710;
    v29[2] = 0xD000000000000027;
    v29[3] = 0x8000000237EFBED0;
    OUTLINED_FUNCTION_47_5(v28, v29);
LABEL_22:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  (*(v16 + 16))(v19, v7, v3);
  v22 = sub_237EF8D00();
  v23 = v22;
  v60 = v21;
  if ((v22 & 0xC000000000000001) != 0)
  {
    sub_237EF92A0();
    sub_237EF8CC0();
    v23 = v65;
    v24 = v66;
    v25 = v67;
    v26 = v68;
    v27 = v69;
  }

  else
  {
    v26 = 0;
    v30 = -1 << *(v22 + 32);
    v24 = v22 + 56;
    v25 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v27 = v32 & *(v22 + 56);
  }

  v54 = v25;
  v33 = (v25 + 64) >> 6;
  v56 = v58 + 16;
  v34 = (v58 + 32);
  v59 = v58 + 8;
  v61 = v23;
  if (v23 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v35 = v27;
  v36 = v26;
  if (v27)
  {
LABEL_15:
    v57 = v27;
    v27 = (v35 - 1) & v35;
    (*(v58 + 16))(v15, *(v23 + 48) + *(v58 + 72) * (__clz(__rbit64(v35)) | (v36 << 6)), v8);
    while (1)
    {
      OUTLINED_FUNCTION_33_24();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      (*v34)(v70, v15, v8);
      if ((sub_237EF8CD0() & 1) == 0)
      {
        break;
      }

      v42 = OUTLINED_FUNCTION_48_15();
      v43(v42);
      v26 = v36;
      v23 = v61;
      if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      if (!sub_237EF92B0())
      {
        goto LABEL_21;
      }

      sub_237EF9D10();
      swift_unknownObjectRelease();
      v36 = v26;
      v57 = v27;
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
    v48 = v63;
    v49 = v64;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v50 = swift_allocError();
    *v51 = 0xD000000000000026;
    v51[1] = 0x8000000237F01710;
    v51[2] = v48;
    v51[3] = v49;
    OUTLINED_FUNCTION_47_5(v50, v51);
    sub_237C9FE9C();
    v52 = OUTLINED_FUNCTION_48_15();
    v53(v52);
    goto LABEL_22;
  }

  v37 = v26;
  while (1)
  {
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
LABEL_21:
      OUTLINED_FUNCTION_33_24();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
      sub_237C9FE9C();
      goto LABEL_22;
    }

    v35 = *(v24 + 8 * v36);
    ++v37;
    if (v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_237E956A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  a3(v11);
  sub_237EF6950();
  return (*(v6 + 8))(v10, v4);
}

void sub_237E95794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  type metadata accessor for FullyConnectedNetworkClassifier();
  sub_237E90A60();
  if (v15)
  {
    *a15 = v15;
  }
}

uint64_t sub_237E9589C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E95990@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  (*(v1 + 96))();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

__n128 OUTLINED_FUNCTION_10_65()
{
  result = v0[50];
  v3 = v0[49].n128_u64[1];
  *(v1 - 128) = v0[49].n128_u64[0];
  *(v1 - 120) = v3;
  *(v1 - 136) = v0[48].n128_u64[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_64()
{
  v1 = *(v0 + 744);
  sub_237C5EE40(*(v0 + 592));
  return v1;
}

void OUTLINED_FUNCTION_20_46()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v0;
  v4 = *(v2 + 664);
  *(v3 - 120) = *(v2 + 672);
  *(v3 - 112) = v4;
}

void *OUTLINED_FUNCTION_37_24(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_38_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v14 = v12[1];
  a9 = *v12;
  a10 = v14;
  v15 = v12[3];
  a11 = v12[2];
  a12 = v15;

  return sub_237D78264(&a9);
}

__n128 OUTLINED_FUNCTION_45_20()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_14()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

void sub_237E95C6C(double **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v29 = a1[3];
  v30 = *a1;
  v4 = a1[4];
  v3 = a1[5];
  if (v4 >= v1)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a1[4];
  }

  v31 = MEMORY[0x277D84F90];
  sub_237C62FA0();
  v6 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v8 = v31;
  v9 = 8 * v3;
  v10 = 8 * v2;
  if (v5)
  {
    v11 = 8 * v7;
    v12 = 8 * v6;
    v14 = v29;
    v13 = v30;
    v15 = v30;
    v16 = v29;
    while (v12)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v17 = *v15;
      v18 = *v16;
      v32 = v8;
      v19 = *(v8 + 16);
      if (v19 >= *(v8 + 24) >> 1)
      {
        v27 = v6;
        v28 = v9;
        v26 = v7;
        sub_237C62FA0();
        v7 = v26;
        v6 = v27;
        v14 = v29;
        v13 = v30;
        v9 = v28;
        v8 = v32;
      }

      v16 = (v16 + v9);
      *(v8 + 16) = v19 + 1;
      *(v8 + 8 * v19 + 32) = (v17 - v18) * (v17 - v18);
      v11 -= v9;
      v15 = (v15 + v10);
      v12 -= v10;
      v5 = (v5 - 1);
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v29;
  v13 = v30;
  v16 = v29;
  v15 = v30;
LABEL_16:
  v20 = &v13[v6];
  v21 = &v14[v7];
  while (v15 != v20 && v16 != v21)
  {
    v22 = *v15;
    v23 = *v16;
    v33 = v8;
    v24 = *(v8 + 16);
    if (v24 >= *(v8 + 24) >> 1)
    {
      v25 = v9;
      sub_237C62FA0();
      v9 = v25;
      v8 = v33;
    }

    *(v8 + 16) = v24 + 1;
    *(v8 + 8 * v24 + 32) = (v22 - v23) * (v22 - v23);
    v16 = (v16 + v9);
    v15 = (v15 + v10);
  }
}

void sub_237E95E68(double **a1)
{
  v1 = a1[1];
  v30 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v1)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a1[4];
  }

  v31 = MEMORY[0x277D84F90];
  sub_237C62FA0();
  v7 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = v5 * v4;
  if ((v5 * v4) >> 64 != (v5 * v4) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v29 = v3;
  v9 = v31;
  v10 = 8 * v4;
  v11 = 8 * v2;
  if (v6)
  {
    v12 = 8 * v8;
    v13 = 8 * v7;
    v14 = v30;
    v15 = v30;
    while (v13)
    {
      if (!v12)
      {
        goto LABEL_26;
      }

      v16 = *v15;
      v17 = *v3;
      v32 = v9;
      v18 = *(v9 + 16);
      if (v18 >= *(v9 + 24) >> 1)
      {
        v27 = v7;
        v28 = v10;
        v26 = v8;
        sub_237C62FA0();
        v8 = v26;
        v7 = v27;
        v14 = v30;
        v10 = v28;
        v9 = v32;
      }

      v3 = (v3 + v10);
      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = vabdd_f64(v16, v17);
      v12 -= v10;
      v15 = (v15 + v11);
      v13 -= v11;
      v6 = (v6 - 1);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v30;
  v15 = v30;
LABEL_16:
  v19 = &v14[v7];
  v20 = &v29[v8];
  while (v15 != v19 && v3 != v20)
  {
    v22 = *v15;
    v23 = *v3;
    v33 = v9;
    v24 = *(v9 + 16);
    if (v24 >= *(v9 + 24) >> 1)
    {
      v25 = v10;
      sub_237C62FA0();
      v10 = v25;
      v9 = v33;
    }

    *(v9 + 16) = v24 + 1;
    *(v9 + 8 * v24 + 32) = vabdd_f64(v22, v23);
    v3 = (v3 + v10);
    v15 = (v15 + v11);
  }
}

double sub_237E96054(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  if (a2)
  {
    v11[0] = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    v11[5] = a6;
    sub_237E95C6C(v11);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = sub_237E96190(v6);

      v9 = v8 / v7;
    }

    else
    {

      v9 = 0.0;
    }
  }

  else
  {
    v9 = NAN;
  }

  return sqrt(v9);
}

double sub_237E960F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  v3 = 0.0;
  v4 = 0.0;
  do
  {
    v5 = *v2++;
    v6 = v5 - v3;
    *&result = v4 + v6;
    v3 = ((v4 + v6) - v4) - v6;
    v4 = *&result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_237E96130(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if (a2 * a3)
    {
      v3 = 0;
      v4 = 0.0;
      v5 = 0.0;
      do
      {
        v6 = *(result + v3) - v4;
        v7 = v5 + v6;
        v4 = v5 + v6 - v5 - v6;
        v3 += 8 * a3;
        v5 = v7;
      }

      while (8 * a3 * a2 != v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_237E96190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  v3 = 0.0;
  v4 = 0.0;
  do
  {
    v5 = *v2++;
    v6 = v5 - v3;
    result = v4 + v6;
    v3 = v4 + v6 - v4 - v6;
    v4 = result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 BaseLinearRegressor.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 48);
  return result;
}

__n128 BaseLinearRegressor.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

__n128 BaseLinearRegressor.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void BaseLinearRegressor.fitted(features:annotations:eventHandler:)()
{
  OUTLINED_FUNCTION_19_44();
  isUniquelyReferenced_nonNull_native = v1;
  v126 = v4;
  v127 = v3;
  v139 = v5;
  v7 = v6;
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v133 = *(v0 + 16);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = *(v0 + 49);
  v16 = *(v0 + 48);
  v135 = v9;
  v151[0] = v9;
  v151[1] = v10;
  v134 = v11;
  LOBYTE(v151[2]) = v11;
  v151[3] = v12;

  v132 = v7;
  sub_237ECE960(v151, v7, v16 & 1, &v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237F03530;
  if (__OFSUB__(v158, 1))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    sub_237EFA020();
    __break(1u);
  }

  else
  {
    v18 = v17;
    *(v17 + 32) = v158 - 1;
    v19 = OUTLINED_FUNCTION_14_65();
    sub_237E61498(v20, v18, v15, v21, v19, v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v23 = sub_237E613EC(v10, 0.0);
    v151[0] = v14;
    v24 = v153;
    v25 = v154;
    __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    (*(v25 + 40))(v23, v151, v24, v25);
    v26 = isUniquelyReferenced_nonNull_native;

    if (!isUniquelyReferenced_nonNull_native)
    {
      if (v134)
      {
        v27 = v135;
      }

      else
      {
        v27 = v10;
      }

      v130 = v12 + 32;
      v131 = v27;
      v128 = v10;
      v129 = "ts/BaseTreeRegressor.swift";
      v28 = v133;
      while (1)
      {
        v29 = OUTLINED_FUNCTION_6_76();
        __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
        (*(isUniquelyReferenced_nonNull_native + 56))(v12, isUniquelyReferenced_nonNull_native);
        if (v26)
        {
          break;
        }

        v31 = OUTLINED_FUNCTION_6_76();
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v33 = OUTLINED_FUNCTION_9_63();
        v34(v33);
        memcpy(v151, v150, 0x49uLL);
        v35 = v151[0];

        sub_237C863A0(v151, &qword_27DEB2A08);
        v36 = v159;
        v140 = 0;
        v136 = v159;
        if (v159)
        {
          v37 = *(v35 + 16);
          if (v37)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237E643FC();
              v35 = v38;
            }

            v39 = 0;
            v40 = *(v36 + 16);
            while (v40 != v39)
            {
              if (v39 >= *(v35 + 16))
              {
                goto LABEL_52;
              }

              *(v35 + 8 * v39 + 32) = *(v36 + 32 + 8 * v39) * *(v35 + 8 * v39 + 32);
              if (v37 == ++v39)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

LABEL_18:
        v41 = v153;
        v12 = v154;
        __swift_project_boxed_opaque_existential_1(v152, v153);
        v150[0] = v13;
        v42 = sub_237E6A4FC(v28, v150, v41, v12);
        if ((v42 & 1) != 0 || (v43 = OUTLINED_FUNCTION_6_76(), __swift_project_boxed_opaque_existential_1(v43, v44), v45 = OUTLINED_FUNCTION_9_63(), v46(v45) < 5) || ((OUTLINED_FUNCTION_24_35(), !v48) ? (v48 = v47 == v28) : (v48 = 1), v48))
        {
          v138 = v42;
          v155[0] = v130;
          v155[1] = v135;
          v49 = v132;
          v155[2] = v10;
          v155[3] = v131;
          v156 = v134;
          v50 = *(v132 + 16);
          v51 = OUTLINED_FUNCTION_2_111();
          __swift_project_boxed_opaque_existential_1(v51, v52);
          OUTLINED_FUNCTION_18_45();
          v53 = OUTLINED_FUNCTION_81_1();
          v54(v53);
          memcpy(v150, v149, 0x49uLL);
          v55 = v150[0];

          sub_237C863A0(v150, &qword_27DEB2A08);
          v56 = sub_237E97834(v55, v155, (v49 + 32), v50, 1);
          v58 = v57;

          v59 = MEMORY[0x277D839F8];
          *(&v149[1] + 1) = MEMORY[0x277D839F8];
          *v149 = v56;
          sub_237C91804(v149, v141);
          __swift_mutable_project_boxed_opaque_existential_1(v141, *(&v141[1] + 1));
          OUTLINED_FUNCTION_1_1();
          MEMORY[0x28223BE20](v60);
          OUTLINED_FUNCTION_5();
          v63 = (v62 - v61);
          (*(v64 + 16))(v62 - v61);
          v65 = *v63;
          v66 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          *&v145 = v66;
          v148 = v59;
          *&v147 = v65;
          v67 = OUTLINED_FUNCTION_1_114();
          v69 = sub_237D30F88(v67, v68);
          if (__OFADD__(*(v66 + 16), (v70 & 1) == 0))
          {
            goto LABEL_53;
          }

          v71 = v69;
          v72 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0);
          if (sub_237EF96B0())
          {
            v73 = OUTLINED_FUNCTION_1_114();
            v75 = sub_237D30F88(v73, v74);
            if ((v72 & 1) != (v76 & 1))
            {
              goto LABEL_57;
            }

            v71 = v75;
          }

          v77 = v145;
          if (v72)
          {
            v78 = (*(v145 + 56) + 32 * v71);
            __swift_destroy_boxed_opaque_existential_1(v78);
            sub_237C91804(&v147, v78);
          }

          else
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v147, v148);
            OUTLINED_FUNCTION_1_1();
            MEMORY[0x28223BE20](v79);
            v81 = OUTLINED_FUNCTION_3_97(v80, v125);
            v82(v81);
            OUTLINED_FUNCTION_10_66();
            sub_237E98BD4(v83, v84, v85, v77, v86);
            __swift_destroy_boxed_opaque_existential_1(&v147);
          }

          v87 = v129;
          __swift_destroy_boxed_opaque_existential_1(v141);
          v88 = MEMORY[0x277D839F8];
          v148 = MEMORY[0x277D839F8];
          *&v147 = v58;
          sub_237C91804(&v147, &v145);
          __swift_mutable_project_boxed_opaque_existential_1(&v145, v146);
          v137 = &v125;
          OUTLINED_FUNCTION_1_1();
          MEMORY[0x28223BE20](v89);
          v91 = OUTLINED_FUNCTION_3_97(v90, v125);
          v92(v91);
          v93 = *v72;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = v77;
          v144 = v88;
          *&v143 = v93;
          v94 = sub_237D30F88(0xD000000000000012, v87 | 0x8000000000000000);
          v96 = v95;
          if (__OFADD__(v77[2], (v95 & 1) == 0))
          {
            goto LABEL_54;
          }

          v97 = v94;
          if (sub_237EF96B0())
          {
            v98 = sub_237D30F88(0xD000000000000012, v87 | 0x8000000000000000);
            if ((v96 & 1) != (v99 & 1))
            {
              goto LABEL_57;
            }

            v97 = v98;
          }

          v12 = v77;
          if (v96)
          {
            v100 = (v77[7] + 32 * v97);
            __swift_destroy_boxed_opaque_existential_1(v160[7] + 32 * v97);
            sub_237C91804(&v143, v100);
          }

          else
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v143, v144);
            OUTLINED_FUNCTION_1_1();
            MEMORY[0x28223BE20](v101);
            OUTLINED_FUNCTION_5();
            isUniquelyReferenced_nonNull_native = v103 - v102;
            (*(v104 + 16))(v103 - v102);
            sub_237E98BD4(v97, 0xD000000000000012, v87 | 0x8000000000000000, v77, *isUniquelyReferenced_nonNull_native);
            __swift_destroy_boxed_opaque_existential_1(&v143);
          }

          __swift_destroy_boxed_opaque_existential_1(&v145);
          v105 = *(v35 + 16);
          if (v105)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
            OUTLINED_FUNCTION_15_48();
            v106 = swift_allocObject();
            _swift_stdlib_malloc_size(v106);
            OUTLINED_FUNCTION_3();
            v106[2] = v105;
            v106[3] = v107;
            MEMORY[0x28223BE20](v108);
            *(&v125 - 4) = v109;
            *(&v125 - 3) = v35;
            *(&v125 - 2) = v109;
            *(&v125 - 1) = v105;
            isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C8);
            v110 = sub_237C65348();
            v111 = v140;
            DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237C65328, (&v125 - 6), v35, MEMORY[0x277D839F8], isUniquelyReferenced_nonNull_native, v110);
            v140 = v111;

            if (*&v149[1] != v105)
            {
              goto LABEL_55;
            }
          }

          else
          {
          }

          if (v139)
          {
            v112 = OUTLINED_FUNCTION_2_111();
            __swift_project_boxed_opaque_existential_1(v112, v113);
            v114 = *(v105 + 32);
            sub_237C70604(v139);
            v115 = OUTLINED_FUNCTION_81_1();
            v114(v115);
            OUTLINED_FUNCTION_8_83();
            OUTLINED_FUNCTION_21_50();
            *&v149[0] = v116;
            *(&v149[0] + 1) = isUniquelyReferenced_nonNull_native;
            v28 = v133;
            *&v149[1] = v117;
            *(&v149[1] + 1) = v133;
            LOBYTE(v149[2]) = 0;
            *(&v149[2] + 1) = v160;
            v139(v149);

            OUTLINED_FUNCTION_0_94();
            sub_237C5EE40(v139);

            v26 = v140;
            v10 = v128;
          }

          else
          {

            OUTLINED_FUNCTION_0_94();
            v26 = v140;
            v10 = v128;
            v28 = v133;
          }

          if (v138)
          {
            v118 = OUTLINED_FUNCTION_6_76();
            __swift_project_boxed_opaque_existential_1(v118, v119);
            v120 = OUTLINED_FUNCTION_9_63();
            v121(v120);
            memcpy(v149, v141, 0x49uLL);
            v122 = *&v149[0];

            sub_237C863A0(v149, &qword_27DEB2A08);
            v142 = v122;
            if (v136)
            {
              sub_237E6F7F0(&v142, v136);
              sub_237CC99F4(&v157);
              v122 = v142;
            }

            else
            {
              sub_237CC99F4(&v157);
            }

            v123 = v126;
            *(v126 + 65) = 0u;
            *(v123 + 56) = 0u;
            *(v123 + 40) = 0u;
            *(v123 + 24) = 0u;
            *(v123 + 8) = 0u;
            v124 = sub_237C62BD0(v122);

            *v123 = v124;
            __swift_destroy_boxed_opaque_existential_1(v152);
            goto LABEL_4;
          }
        }

        else
        {

          v26 = v140;
        }
      }
    }

    sub_237CC99F4(&v157);
    __swift_destroy_boxed_opaque_existential_1(v152);
LABEL_4:
    OUTLINED_FUNCTION_20_41();
  }
}

void BaseLinearRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_44();
  a23 = v26;
  a24 = v27;
  v28 = v25;
  v150 = v29;
  v161 = v30;
  v32 = v31;
  v148 = v33;
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = v34[3];
  v164 = *v39;
  v163 = v39[1];
  v162 = *(v39 + 16);
  v170 = v39[3];
  v40 = *(v24 + 16);
  v168 = v41;
  v169 = v40;
  v43 = *(v24 + 24);
  v42 = *(v24 + 32);
  v44 = *(v24 + 40);
  v45 = *(v24 + 49);
  v46 = *(v24 + 48);
  v47 = v36;
  v166 = v35;
  v178[0] = v35;
  v178[1] = v36;
  v165 = v37;
  LOBYTE(v178[2]) = v37;
  v178[3] = v38;

  v160 = v32;
  sub_237ECE960(v178, v32, v46 & 1, &v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_237F03530;
  if (__OFSUB__(v187, 1))
  {
LABEL_53:
    __break(1u);
    return;
  }

  v49 = v48;
  *(v48 + 32) = v187 - 1;
  v50 = OUTLINED_FUNCTION_14_65();
  sub_237E61498(v51, v49, v45, v52, v50, v53);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_237CDC02C(v44, 0.0);
  v55 = v54;
  v56 = sub_237E613EC(v47, 0.0);
  v178[0] = v43;
  v57 = v180;
  v58 = v181;
  __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
  (*(v58 + 40))(v56, v178, v57, v58);
  v171 = v28;
  if (v28)
  {

    sub_237CC99F4(&v186);

    goto LABEL_49;
  }

  v149 = v55;

  v59 = v166;
  if (!v165)
  {
    v59 = v47;
  }

  v158 = v59;
  v159 = v47;
  v156 = "ts/BaseTreeRegressor.swift";
  v157 = v38 + 32;
  if (v162)
  {
    v60 = v164;
  }

  else
  {
    v60 = v163;
  }

  v154 = v170 + 32;
  v155 = v60;
  v152 = "validation_accuracy";
  v153 = "validation_max_error";
  do
  {
    while (1)
    {
      v61 = v180;
      v62 = OUTLINED_FUNCTION_22_40();
      __swift_mutable_project_boxed_opaque_existential_1(v62, v61);
      v63 = v171;
      (*(v56 + 56))(v61, v56);
      v171 = v63;
      if (v63)
      {

        sub_237CC99F4(&v186);
        goto LABEL_49;
      }

      v64 = v180;
      v65 = OUTLINED_FUNCTION_22_40();
      __swift_project_boxed_opaque_existential_1(v65, v64);
      OUTLINED_FUNCTION_18_45();
      v66(v177, v64, v56);
      memcpy(v178, v177, 0x49uLL);
      v67 = v178[0];

      sub_237C863A0(v178, &qword_27DEB2A08);
      a14 = v67;
      v68 = v188;
      if (v188)
      {
        sub_237E6F7F0(&a14, v188);
      }

      v151 = v68;
      v184[0] = v157;
      v184[1] = v166;
      v184[2] = v159;
      v184[3] = v158;
      v185 = v165;
      v69 = v160;
      v70 = *(v160 + 16);
      v71 = v180;
      v72 = OUTLINED_FUNCTION_19_47();
      __swift_project_boxed_opaque_existential_1(v72, v71);
      v73 = v55[3];
      v74 = v161;

      v73(v175, v71, v55);
      memcpy(v177, v175, 0x49uLL);
      v75 = v177[0];

      sub_237C863A0(v177, &qword_27DEB2A08);
      v76 = sub_237E97834(v75, v184, (v69 + 32), v70, 1);
      v78 = v77;

      v79 = MEMORY[0x277D839F8];
      *(&v175[1] + 1) = MEMORY[0x277D839F8];
      *v175 = v76;
      sub_237C91804(v175, v174);
      __swift_mutable_project_boxed_opaque_existential_1(v174, *(&v174[1] + 1));
      OUTLINED_FUNCTION_1_1();
      MEMORY[0x28223BE20](v80);
      v82 = OUTLINED_FUNCTION_3_97(v81, v148);
      v83(v82);
      v84 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v172[0] = v84;
      v85 = OUTLINED_FUNCTION_1_114();
      sub_237E98A04(v85, v86, v89, v87, v88);
      v90 = v172[0];
      __swift_destroy_boxed_opaque_existential_1(v174);
      *(&v175[1] + 1) = v79;
      *&v175[0] = v78;
      sub_237C91804(v175, v174);
      __swift_mutable_project_boxed_opaque_existential_1(v174, *(&v174[1] + 1));
      OUTLINED_FUNCTION_1_1();
      MEMORY[0x28223BE20](v91);
      OUTLINED_FUNCTION_5();
      v94 = (v93 - v92);
      (*(v95 + 16))(v93 - v92);
      v96 = *v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v172[0] = v90;
      sub_237E98A04(0xD000000000000012, v156 | 0x8000000000000000, v96, isUniquelyReferenced_nonNull_native, v172);
      v176 = v172[0];
      __swift_destroy_boxed_opaque_existential_1(v174);
      v182[0] = v154;
      v182[1] = v164;
      v182[2] = v163;
      v182[3] = v155;
      v183 = v162;
      v98 = *(v74 + 16);
      v99 = v180;
      v100 = OUTLINED_FUNCTION_19_47();
      __swift_project_boxed_opaque_existential_1(v100, v99);
      (v55[3])(v174, v99, v55);
      memcpy(v175, v174, 0x49uLL);
      v101 = *&v175[0];

      sub_237C863A0(v175, &qword_27DEB2A08);
      v102 = sub_237E97834(v101, v182, (v74 + 32), v98, 1);
      v104 = v103;

      *(&v174[1] + 1) = v79;
      *v174 = v102;
      v105 = v153;
      sub_237E60F7C(v174, 0xD000000000000010, v153 | 0x8000000000000000);
      *(&v174[1] + 1) = v79;
      *&v174[0] = v104;
      sub_237E60F7C(v174, 0xD000000000000014, v152 | 0x8000000000000000);

      v106 = v176;
      v107 = v180;
      v108 = OUTLINED_FUNCTION_22_40();
      __swift_project_boxed_opaque_existential_1(v108, v107);
      *v174 = v42;
      v109 = sub_237E6A4FC(v169, v174, v107, v98);
      if (*(v106 + 16))
      {
        v110 = sub_237D30F88(0xD000000000000010, v105 | 0x8000000000000000);
        if (v111)
        {
          sub_237CBA478(*(v106 + 56) + 32 * v110, v174);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
          if (swift_dynamicCast())
          {
            v112 = *v172;
            v113 = v180;
            v114 = OUTLINED_FUNCTION_19_47();
            __swift_project_boxed_opaque_existential_1(v114, v113);
            v115 = j__OUTLINED_FUNCTION_0_86(v113, v55);
            v116 = v149[2];
            if (!v116)
            {
              goto LABEL_50;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v117 = v149;
            }

            else
            {
              sub_237E642C0();
            }

            v118 = v115 % v116;
            if (v115 % v116 < 0)
            {
              goto LABEL_51;
            }

            v119 = v117[2];
            if (v118 >= v119)
            {
              goto LABEL_52;
            }

            *&v117[v118 + 4] = v112;
            v149 = v117;
            if (v115 >= v119)
            {
              v120 = 4;
              while (v119)
              {
                v121 = *&v117[v120++];
                --v119;
                if (v121 > v42 + v112)
                {
                  goto LABEL_25;
                }
              }

LABEL_26:
              v167 = 1;
              goto LABEL_34;
            }
          }
        }
      }

LABEL_25:
      if (v109)
      {
        goto LABEL_26;
      }

      v56 = v180;
      v122 = OUTLINED_FUNCTION_19_47();
      __swift_project_boxed_opaque_existential_1(v122, v56);
      v123 = (v55[4])(v56, v55);
      v124 = 0;
      if (v123 < 5)
      {
        break;
      }

      OUTLINED_FUNCTION_24_35();
      v126 = v126 || v125 == v169;
      if (v126)
      {
        break;
      }
    }

    v167 = v124;
LABEL_34:
    v127 = a14;
    v128 = *(a14 + 16);
    if (v128)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
      OUTLINED_FUNCTION_15_48();
      v56 = swift_allocObject();
      _swift_stdlib_malloc_size(v56);
      OUTLINED_FUNCTION_3();
      *(v56 + 16) = v128;
      *(v56 + 24) = v129;
      MEMORY[0x28223BE20](v130);
      v55 = &v148 - 6;
      *(&v148 - 4) = v131;
      *(&v148 - 3) = v127;
      *(&v148 - 2) = v131;
      *(&v148 - 1) = v128;
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C8);
      v133 = sub_237C65348();
      v134 = v171;
      DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E98CF8, (&v148 - 6), v127, MEMORY[0x277D839F8], v132, v133);
      v171 = v134;

      if (*&v174[1] != v128)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    if (v168)
    {
      v135 = v180;
      v136 = v181;
      __swift_project_boxed_opaque_existential_1(v179, v180);
      v137 = *(v136 + 32);
      sub_237C70604(v168);
      v138 = v135;
      v55 = v168;
      v137(v138, v136);
      OUTLINED_FUNCTION_8_83();
      *&v174[0] = v139;
      *(&v174[0] + 1) = 0xEF726F7373657267;
      *&v174[1] = v140;
      *(&v174[1] + 1) = v169;
      LOBYTE(v174[2]) = 0;
      *(&v174[2] + 1) = v106;
      (v55)(v174);

      OUTLINED_FUNCTION_0_94();
      sub_237C5EE40(v55);
    }

    else
    {

      OUTLINED_FUNCTION_0_94();
    }
  }

  while ((v167 & 1) == 0);

  v141 = v180;
  v142 = OUTLINED_FUNCTION_22_40();
  __swift_project_boxed_opaque_existential_1(v142, v141);
  *v174 = v42;
  sub_237E6A888(v174, v141, v56);
  v143 = v180;
  v144 = v181;
  __swift_project_boxed_opaque_existential_1(v179, v180);
  (*(v144 + 24))(v172, v143, v144);
  memcpy(v174, v172, 0x49uLL);
  v145 = *&v174[0];

  sub_237C863A0(v174, &qword_27DEB2A08);
  v173 = v145;
  if (v151)
  {
    sub_237E6F7F0(&v173, v151);
    sub_237CC99F4(&v186);
    v145 = v173;
  }

  else
  {
    sub_237CC99F4(&v186);
  }

  v146 = v148;
  *(v148 + 65) = 0u;
  *(v146 + 56) = 0u;
  *(v146 + 40) = 0u;
  *(v146 + 24) = 0u;
  *(v146 + 8) = 0u;
  v147 = sub_237C62BD0(v145);

  *v146 = v147;
LABEL_49:
  __swift_destroy_boxed_opaque_existential_1(v179);
  OUTLINED_FUNCTION_20_41();
}

double sub_237E97834(uint64_t isStackAllocationSafe, uint64_t a2, double *a3, double *a4, double *a5)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 8);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v5 >> 60)
  {
    goto LABEL_12;
  }

  v10 = isStackAllocationSafe;
  if ((8 * v5) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v13 = (&v20[-1] - v12);
    if (v5)
    {
      bzero(&v20[-1] - v12, 8 * v5);
    }

    MEMORY[0x28223BE20](v11);
    *(&v19 - 4) = v13;
    *(&v19 - 3) = v5;
    *(&v19 - 2) = 1;
    *(&v19 - 1) = a2;
    v14 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E98CB4, (&v19 - 6), v10, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v14);
    v15 = sub_237E96054(v13, v5, 1, a3, a4, a5);
    if (v5)
    {
      v20[0] = v13;
      v20[1] = v5;
      v20[2] = 1;
      v20[3] = a3;
      v20[4] = a4;
      v20[5] = a5;
      sub_237E95E68(v20);
      sub_237CB8680(v16);
    }
  }

  else
  {
    v18 = swift_slowAlloc();
    sub_237E97A90(v18, v5, v10, a2, a3, a4, a5, v20);
    MEMORY[0x2383E2DF0](v18, -1, -1);
    return *v20;
  }

  return v15;
}

void sub_237E97A90(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, double *a6@<X5>, double *a7@<X6>, double *a8@<X8>)
{
  if (a1)
  {
    v24 = a7;
    v25 = a8;
    if (a2 >= 1)
    {
      bzero(a1, 8 * a2);
    }

    MEMORY[0x28223BE20](a1);
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = 1;
    v23[5] = a4;
    v14 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E98D10, v23, a3, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v14);
    v15 = v24;
    v16 = sub_237E96054(a1, a2, 1, a5, a6, v24);
    if (a2)
    {
      v26[0] = a1;
      v26[1] = a2;
      v26[2] = 1;
      v26[3] = a5;
      v26[4] = a6;
      v26[5] = v15;
      sub_237E95E68(v26);
      v18 = sub_237CB8680(v17);
      v20 = v19;

      v21 = 0x7FF8000000000000;
      if ((v20 & 1) == 0)
      {
        v21 = v18;
      }
    }

    else
    {
      v21 = 0x7FF8000000000000;
    }

    v22 = v25;
    *v25 = v16;
    *(v22 + 1) = v21;
  }

  else
  {
    __break(1u);
  }
}

double BaseLinearRegressor.makeTransformer()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 65) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

void BaseLinearRegressor.update(_:features:annotations:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_44();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v36 = *v34;
  v35 = v34[1];
  v37 = *(v34 + 16);
  v38 = v34[3];
  v39 = *(v24 + 16);
  v41 = *(v24 + 24);
  v40 = *(v24 + 32);
  v109 = *(v24 + 48);
  v42 = *(v24 + 49);
  sub_237EF8B90();
  if (v25)
  {
    goto LABEL_12;
  }

  v108 = v36;
  v107 = v39;
  v106 = v29;
  __dst[0] = v36;
  __dst[1] = v35;
  v43 = v35;
  LOBYTE(__dst[2]) = v37;
  __dst[3] = v38;

  v105 = v38;

  v44 = v109 & 1;
  v110 = v31;
  sub_237ECE960(__dst, v31, v44, &v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_237F03530;
  v46 = v123;
  if (!__OFSUB__(v123, 1))
  {
    v47 = v45;
    v48 = v37;
    *(v45 + 32) = v123 - 1;
    v49 = OUTLINED_FUNCTION_14_65();
    sub_237E61498(v50, v47, v42, v51, v49, v52);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v54 = v33 + 1;
    v53 = v33[1];
    if (v53)
    {
      v55 = *(v53 + 16);
      v56 = v43;
      if (v55 != v46)
      {
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_237F04760;
        *(v69 + 32) = v108;
        *(v69 + 40) = v43;
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_237EF9330();

        __dst[0] = 0xD000000000000017;
        __dst[1] = 0x8000000237F00E30;
        v70 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v70);

        MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237F01740);
        sub_237CC99F4(&v122);
        __src[0] = v46;
        v71 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v71);

        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v72 = __dst[0];
        v73 = __dst[1];
        sub_237C84150();
        swift_allocError();
        *v74 = v69;
        *(v74 + 8) = v72;
        *(v74 + 16) = v73;
        *(v74 + 24) = 0;
        *(v74 + 32) = 6;
        swift_willThrow();
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(v117);
LABEL_12:
        OUTLINED_FUNCTION_20_41();
        return;
      }

      __dst[0] = v33[1];
      memcpy(&__dst[1], v33 + 2, 0x41uLL);
      v57 = OUTLINED_FUNCTION_2_111();
      __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
      (*(v55 + 48))(__dst, v37, v55);
      v59 = v108;
    }

    else
    {
      v56 = v43;
      v60 = sub_237E613EC(v43, 0.0);
      __dst[0] = v41;
      v61 = v118;
      v62 = v119;
      __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
      (*(v62 + 40))(v60, __dst, v61, v62);

      v59 = v108;
    }

    v63 = v118;
    v64 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    __dst[0] = v40;
    if (sub_237E6A4FC(v107, __dst, v63, v64))
    {
      sub_237CC99F4(&v122);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_2_111();
      __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
      v67 = OUTLINED_FUNCTION_81_1();
      v68(v67);
      v75 = OUTLINED_FUNCTION_2_111();
      __swift_project_boxed_opaque_existential_1(v75, v76);
      OUTLINED_FUNCTION_18_45();
      v77 = OUTLINED_FUNCTION_81_1();
      v78(v77);
      memcpy(__dst, __src, 0x49uLL);
      v79 = __dst[0];

      sub_237C863A0(__dst, &qword_27DEB2A08);
      a14 = v79;
      if (v124)
      {
        sub_237E6F7F0(&a14, v124);
        sub_237CC99F4(&v122);
        v79 = a14;
      }

      else
      {
        sub_237CC99F4(&v122);
      }

      v80 = sub_237C62BD0(v79);

      *v33 = v80;
      v81 = OUTLINED_FUNCTION_6_76();
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v83 = OUTLINED_FUNCTION_9_63();
      v84(v83);
      memcpy(v114, v113, sizeof(v114));
      memcpy(__src, v54, 0x49uLL);
      sub_237C863A0(__src, qword_27DEB0300);
      memcpy(v54, v114, 0x49uLL);
      v112 = MEMORY[0x277D84F98];
      if (v48)
      {
        v85 = v59;
      }

      else
      {
        v85 = v56;
      }

      v120[0] = v105 + 32;
      v120[1] = v59;
      v120[2] = v56;
      v120[3] = v85;
      v121 = v48;
      v86 = *(v110 + 16);
      v87 = OUTLINED_FUNCTION_2_111();
      __swift_project_boxed_opaque_existential_1(v87, v88);
      OUTLINED_FUNCTION_18_45();
      v89 = OUTLINED_FUNCTION_81_1();
      v90(v89);
      memcpy(v113, v111, 0x49uLL);
      v91 = v113[0];

      sub_237C863A0(v113, &qword_27DEB2A08);
      v92 = sub_237E97834(v91, v120, (v110 + 32), v86, 1);
      v94 = v93;

      v95 = MEMORY[0x277D839F8];
      v111[3] = MEMORY[0x277D839F8];
      *v111 = v92;
      OUTLINED_FUNCTION_10_66();
      sub_237E60F7C(v111, v96, v97);
      v111[3] = v95;
      v111[0] = v94;
      sub_237E60F7C(v111, 0xD000000000000012, 0x8000000237EFCC20);
      v98 = v112;
      if (v106)
      {
        v99 = OUTLINED_FUNCTION_2_111();
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v101 = *(v110 + 32);
        sub_237C70604(v106);
        v102 = OUTLINED_FUNCTION_81_1();
        v101(v102);
        OUTLINED_FUNCTION_8_83();
        OUTLINED_FUNCTION_21_50();
        v111[0] = v103;
        v111[1] = v80;
        v111[2] = v104;
        v111[3] = v107;
        LOBYTE(v111[4]) = 0;
        v111[5] = v98;
        v106(v111);
        sub_237C5EE40(v106);
      }
    }

    goto LABEL_11;
  }

  __break(1u);
}

const void *sub_237E982FC()
{
  OUTLINED_FUNCTION_23_38();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD360);
  OUTLINED_FUNCTION_15_48();
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  OUTLINED_FUNCTION_13_53((v2 - 32) / 4);
  return v1;
}

void *sub_237E983A8()
{
  OUTLINED_FUNCTION_23_38();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(v2, v3, v4);
  OUTLINED_FUNCTION_15_48();
  v5 = swift_allocObject();
  _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_3();
  v5[2] = v0;
  v5[3] = v6;
  return v5;
}

const void *sub_237E98424()
{
  OUTLINED_FUNCTION_23_38();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0430);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  OUTLINED_FUNCTION_13_53((v2 - 32) / 40);
  return v1;
}

const void *sub_237E98644()
{
  OUTLINED_FUNCTION_23_38();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(v1, v2, v3);
  OUTLINED_FUNCTION_15_48();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13_53((v5 - 32) / 16);
  return v4;
}

size_t sub_237E98754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(a1, a2, a3);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_13_53((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_237E98894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_12_58(a1, a2, a3);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_13_53((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E989D4@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_237E98980(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_237E98A04(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24[0] = a3;
  v8 = MEMORY[0x277D839F8];
  v25 = MEMORY[0x277D839F8];
  v9 = *a5;
  v10 = sub_237D30F88(a1, a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0);
  if ((sub_237EF96B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_237D30F88(a1, a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *a5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return sub_237C91804(v24, v17);
  }

  else
  {
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v24, v8);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    sub_237E98BD4(v12, a1, a2, v16, *v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return sub_237EF8260();
  }
}

_OWORD *sub_237E98BD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11[0] = a5;
  v12 = MEMORY[0x277D839F8];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_237C91804(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_237E98C58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_94()
{

  return sub_237E98C58(0);
}

uint64_t OUTLINED_FUNCTION_12_58(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t sub_237E98E98()
{
  sub_237DBA264();
  v1 = v0;

  return v1;
}

uint64_t sub_237E98EE0()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 8);
  sub_237EF8260();
  sub_237E98F20();
  return v1;
}

void sub_237E98F20()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    sub_237E641B8();
    v1 = v8;
  }

  for (i = v2 + 3; ; --i)
  {
    v4 = i - 3;
    if (i - 3 < 1)
    {
      *(v0 + 8) = v1;
      *(v0 + 16) = 1;
      return;
    }

    if (v4 > *(v1 + 16))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 > *(*v0 + 16))
    {
      goto LABEL_12;
    }

    v5 = *(*v0 + 8 * i);
    v6 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      goto LABEL_13;
    }

    v7 = *(v1 + 8 * i);
    if (v7 < v6)
    {
      break;
    }

    *(v1 + 8 * i) = 0;
  }

  *(v1 + 8 * i) = v7 + 1;
  *(v0 + 8) = v1;
}

void sub_237E98FE0(uint64_t a1@<X8>)
{
  sub_237E99018();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
}

uint64_t sub_237E9904C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E98EE0();
  *a1 = result;
  return result;
}

uint64_t sub_237E99074(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_237E990B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237E99108()
{
  result = qword_27DEB5EA8[0];
  if (!qword_27DEB5EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5EA8);
  }

  return result;
}

uint64_t sub_237E9915C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E991B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
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

uint64_t sub_237E99278(char a1)
{
  if (a1)
  {
    return 0x70756F7267;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

void sub_237E992A0()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  type metadata accessor for Tree.CodingKeys();
  OUTLINED_FUNCTION_6_77();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v7 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237EFA1B0();
  type metadata accessor for TreeNode();
  sub_237EF8A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();
  if (!v0)
  {
    sub_237EF9A50();
  }

  (*(v7 + 8))(v1, v4);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E994AC()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  type metadata accessor for Tree.CodingKeys();
  OUTLINED_FUNCTION_6_77();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA190();
  if (!v0)
  {
    type metadata accessor for TreeNode();
    sub_237EF8A60();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();
    sub_237EF9950();
    v4 = OUTLINED_FUNCTION_16_54();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E996FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E991B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E9972C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E99780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void sub_237E997D4(void *a1@<X8>)
{
  sub_237E994AC();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_237E99834()
{
  OUTLINED_FUNCTION_13_4();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_237EF93E0();
  OUTLINED_FUNCTION_1();
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_10_67();
  type metadata accessor for TreeLeaf();
  OUTLINED_FUNCTION_1();
  v25 = v12;
  v26 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v27 = v14;
  OUTLINED_FUNCTION_10_67();
  v15 = type metadata accessor for TreeInnerNode();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  sub_237C66728(v5, v32);
  v28 = v3;
  v21 = v30;
  sub_237E99B14();
  if (v21)
  {
    v22 = v31;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    if (swift_dynamicCast())
    {

      sub_237C66728(v5, v32);
      v24 = v27;
      sub_237E9A120();
      __swift_destroy_boxed_opaque_existential_1(v5);
      (*(v25 + 32))(v22, v24, v26);
      OUTLINED_FUNCTION_10_67();
      type metadata accessor for TreeNode();
      swift_storeEnumTagMultiPayload();
      (*(v29 + 8))(v10, v6);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    (*(v17 + 32))(v31, v20, v15);
    OUTLINED_FUNCTION_10_67();
    type metadata accessor for TreeNode();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E99B14()
{
  OUTLINED_FUNCTION_13_4();
  v50 = v0;
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v40 = v6;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v55 = v8;
  v56 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v41 = v10;
  OUTLINED_FUNCTION_1_1();
  v48 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v42 = v13;
  MEMORY[0x28223BE20](v14);
  v43 = &v39 - v15;
  MEMORY[0x28223BE20](v16);
  v45 = &v39 - v17;
  OUTLINED_FUNCTION_20_47();
  type metadata accessor for TreeInnerNode.CodingKeys();
  OUTLINED_FUNCTION_7_75();
  swift_getWitnessTable();
  v47 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v44 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  type metadata accessor for TreeInnerNode();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  v27 = v26;
  v52 = v25[15];
  v53 = v25;
  v51 = v3;
  __swift_storeEnumTagSinglePayload(v26 + v52, 1, 1, v3);
  v28 = v5[3];
  v54 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v28);
  v49 = v21;
  v29 = v50;
  sub_237EFA190();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    (*(v55 + 8))(v27 + v52, v56);
  }

  else
  {
    v30 = v45;
    v50 = v23;
    OUTLINED_FUNCTION_11_63();
    v31 = v27;
    *v27 = sub_237EF9950();
    v32 = v51;
    OUTLINED_FUNCTION_11_63();
    sub_237EF9970();
    v33 = v53;
    v34 = *(v48 + 32);
    v34(v31 + v53[9], v30, v32);
    OUTLINED_FUNCTION_11_63();
    *(v31 + v33[10]) = sub_237EF9950();
    OUTLINED_FUNCTION_11_63();
    *(v31 + v33[11]) = sub_237EF9950();
    OUTLINED_FUNCTION_11_63();
    *(v31 + v33[12]) = sub_237EF9950();
    OUTLINED_FUNCTION_2_112();
    sub_237EF9970();
    v34(v31 + v33[13], v43, v32);
    OUTLINED_FUNCTION_2_112();
    sub_237EF9970();
    v34(v31 + v33[14], v42, v32);
    v35 = v41;
    OUTLINED_FUNCTION_2_112();
    sub_237EF9900();
    v36 = OUTLINED_FUNCTION_8_84();
    v37(v36);
    (*(v55 + 40))(v31 + v52, v35, v56);
    v38 = v50;
    (*(v50 + 16))(v40, v31, v33);
    __swift_destroy_boxed_opaque_existential_1(v54);
    (*(v38 + 8))(v31, v33);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E9A120()
{
  OUTLINED_FUNCTION_13_4();
  v44 = v1;
  v45 = v0;
  v3 = v2;
  v5 = v4;
  v37 = v6;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v48 = v8;
  v49 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v38 = v10;
  OUTLINED_FUNCTION_1_1();
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v41 = v13;
  MEMORY[0x28223BE20](v14);
  v42 = &v35 - v15;
  OUTLINED_FUNCTION_20_47();
  type metadata accessor for TreeLeaf.CodingKeys();
  OUTLINED_FUNCTION_5_91();
  swift_getWitnessTable();
  v43 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v40 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v18 = type metadata accessor for TreeLeaf();
  OUTLINED_FUNCTION_1();
  v36 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v22 = *(v21 + 40);
  v50 = v23;
  v46 = v22;
  __swift_storeEnumTagSinglePayload(v23 + v22, 1, 1, v3);
  v24 = v5[3];
  v47 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v24);
  v25 = v45;
  sub_237EFA190();
  if (v25)
  {
    v27 = v50;
    __swift_destroy_boxed_opaque_existential_1(v47);
    (*(v48 + 8))(v27 + v46, v49);
  }

  else
  {
    v26 = v41;
    v45 = v18;
    OUTLINED_FUNCTION_17_55();
    v28 = *(v39 + 32);
    v28(v50, v42, v3);
    OUTLINED_FUNCTION_17_55();
    v28(v50 + *(v45 + 36), v26, v3);
    v29 = v38;
    sub_237EF9900();
    v30 = OUTLINED_FUNCTION_15_49();
    v31(v30);
    v32 = v50;
    (*(v48 + 40))(v50 + v46, v29, v49);
    v33 = v36;
    v34 = v45;
    (*(v36 + 16))(v37, v32, v45);
    __swift_destroy_boxed_opaque_existential_1(v47);
    (*(v33 + 8))(v32, v34);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E9A57C()
{
  OUTLINED_FUNCTION_13_4();
  v21[0] = v2;
  v21[1] = v3;
  v5 = v4;
  v6 = type metadata accessor for TreeLeaf();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v10 = type metadata accessor for TreeInnerNode();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  OUTLINED_FUNCTION_1_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v0, v5, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v1, v19, v6);
    sub_237E9AA34();
    (*(v8 + 8))(v1, v6);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v10);
    sub_237E9A7CC();
    (*(v12 + 8))(v15, v10);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E9A7CC()
{
  OUTLINED_FUNCTION_13_4();
  v12[2] = v1;
  v13 = v0;
  v12[1] = v2;
  v4 = v3;
  v12[0] = *(v1 + 16);
  type metadata accessor for TreeInnerNode.CodingKeys();
  OUTLINED_FUNCTION_7_75();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_237EFA1B0();
  v11 = v13;
  sub_237EF9A50();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A70();
    OUTLINED_FUNCTION_19_48();
    OUTLINED_FUNCTION_19_48();
    OUTLINED_FUNCTION_19_48();
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A70();
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A70();
    OUTLINED_FUNCTION_3_98();
    sub_237EF9A00();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E9AA34()
{
  OUTLINED_FUNCTION_13_4();
  v14 = v0;
  v15 = v1;
  v13[0] = v2;
  v13[1] = v3;
  v5 = v4;
  type metadata accessor for TreeLeaf.CodingKeys();
  OUTLINED_FUNCTION_5_91();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_237EFA1B0();
  OUTLINED_FUNCTION_9_64();
  v12 = v15;
  sub_237EF9A70();
  if (!v12)
  {
    OUTLINED_FUNCTION_9_64();
    sub_237EF9A70();
    OUTLINED_FUNCTION_9_64();
    sub_237EF9A00();
  }

  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E9AC04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237F01760 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F4374696C7073 && a2 == 0xEE006E6F69746964;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6968437373656CLL && a2 == 0xEE007865646E4964;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000237F01780 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000237F017A0 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1852399975 && a2 == 0xE400000000000000;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6769655765736162 && a2 == 0xEA00000000007468;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7265766F63 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_237EF9D40();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237E9AEA0(char a1)
{
  result = 0x6E6F4374696C7073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C6968437373656CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1852399975;
      break;
    case 6:
      result = 0x6769655765736162;
      break;
    case 7:
      result = 0x7265766F63;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_237E9AFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E9AC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E9AFFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237E9B02C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E9B080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237E9B114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769655765736162 && a2 == 0xEA00000000007468;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265766F63 && a2 == 0xE500000000000000)
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

uint64_t sub_237E9B224(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6769655765736162;
  }

  return 0x7265766F63;
}

uint64_t sub_237E9B278(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_237EFA120();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_237EFA170();
}

uint64_t sub_237E9B2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E9B114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E9B338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E9B38C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

_BYTE *sub_237E9B4B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237E9B57C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237E9B648(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E9B714()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_237EF90F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_237E9B7C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
  }

  v11 = v9 + ((v8 + v7 + ((v8 + v7 + ((v7 + 8 + ((((((v8 + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & ~v7)) & ~v7);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
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

  return v6 + (v11 | v15) + 1;
}

void sub_237E9B968(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = (v10 + v9 + ((v10 + v9 + ((v9 + 8 + ((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & ~v9)) & ~v9;
  if (!v8)
  {
    ++v10;
  }

  v12 = v10 + v11;
  v13 = 8 * (v10 + v11);
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          v22 = &a1[v9 + 8] & ~v9;

          __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v12)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v12 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        break;
      case 2:
        *&a1[v12] = v18;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v12] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E9BBCC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_237EF90F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_237E9BC64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 64);
  if (v7)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    return __swift_getEnumTagSinglePayload(a1, v7, v4);
  }

  v11 = v9 + ((v8 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80));
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      if (v7)
      {
        return __swift_getEnumTagSinglePayload(a1, v7, v4);
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
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

  return v7 + (v11 | v15) + 1;
}

void sub_237E9BDC4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80) + ((v9 + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v7 + 80);
  if (!v8)
  {
    ++v9;
  }

  v11 = v9 + v10;
  v12 = 8 * (v9 + v10);
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
          goto LABEL_26;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_26;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_25;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:

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
        goto LABEL_39;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E9BFEC()
{
  result = type metadata accessor for TreeInnerNode();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TreeLeaf();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E9C07C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (v5 + v4 + ((v5 + v4 + ((v4 + 8 + ((((((v5 + ((v4 + 8) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v4)) & ~v4)) & ~v4;
  v7 = (v5 + v4 + ((v5 + v4) & ~v4)) & ~v4;
  if (*(v3 + 84))
  {
    v8 = *(v3 + 64);
  }

  else
  {
    v8 = v5 + 1;
  }

  v9 = v7 + v8;
  if (v9 <= v6 + v8)
  {
    v10 = v6 + v8;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = *(a1 + v10);
      if (v17 >= 2)
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
    goto LABEL_26;
  }

LABEL_18:
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

  return (v11 | v16) + 255;
}

void sub_237E9C22C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v7 + v6 + ((v7 + v6 + ((v6 + 8 + ((((((v7 + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & ~v6)) & ~v6;
  v9 = (v7 + v6 + ((v7 + v6) & ~v6)) & ~v6;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v7 + 1;
  }

  v11 = v9 + v10;
  if (v11 <= v8 + v10)
  {
    v11 = v8 + v10;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v11 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v12] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t OUTLINED_FUNCTION_17_55()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_19_48()
{

  return sub_237EF9A50();
}

void sub_237E9C6A8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_237E9CB40(319, &qword_27DEB62B0, type metadata accessor for L2NormRegularizer);
    if (v1 <= 0x3F)
    {
      sub_237E9CB40(319, &qword_27DEB62B8, type metadata accessor for OptimizerState);
      if (v2 <= 0x3F)
      {
        sub_237E9CB40(319, &qword_27DEB62C0, type metadata accessor for OptimizerStatistics);
        if (v3 <= 0x3F)
        {
          sub_237E9CB40(319, &qword_27DEB62C8, type metadata accessor for DenseVector);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_237E9C7E8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_237E9C93C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((v9 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
LABEL_43:
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
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
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
    if (((((((((v9 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((v9 + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_237E9CB40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_237C65348();
    v7 = a3(a1, MEMORY[0x277D839F8], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_237E9CBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = v4 + 1;
      v7 = *(v5 + 8 * v4) + *(v5 + 8 * v4);
      v8 = sub_237E9CC48(v11, v4, v4);
      *v9 = v7 + *v9;
      result = (v8)(v11, 0);
      v4 = v6;
    }

    while (v2 != v6);
  }

  return result;
}

uint64_t **sub_237E9CC48(uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  result = __swift_coroFrameAllocStub(0x30uLL);
  v8 = result;
  *a1 = result;
  if (v3[2])
  {
    v9 = a3 * *v3;
    if ((a3 * *v3) >> 64 == v9 >> 63)
    {
      if (!__OFADD__(v9, a2))
      {
        sub_237DDE918(result, v9 + a2);
        v8[5] = v10;
        return sub_237E9CD34;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v3[1];
  v13 = a2 * v12;
  if ((a2 * v12) >> 64 != (a2 * v12) >> 63)
  {
    goto LABEL_10;
  }

  if (!__OFADD__(v13, a3))
  {
    sub_237DDE918(result, v13 + a3);
    v8[4] = v14;
    return sub_237D8212C;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237E9CD34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void sub_237E9CD80(uint64_t a1, int *a2, double a3)
{
  v8 = OUTLINED_FUNCTION_1_115();
  v10 = v9(v8);
  v11 = sub_237E613EC(v10, 0.0);
  v12 = a2[13];

  *(v3 + v12) = v11;
  v13 = sub_237E613EC(v10, 0.0);
  v14 = a2[12];

  *(v3 + v14) = v13;
  v15 = v3 + a2[10];
  *(v15 + 64) = a3;
  *(v15 + 56) = 0;

  *v15 = a1;

  *(v15 + 8) = v13;
  if ((v10 * v10) >> 64 == (v10 * v10) >> 63)
  {
    v16 = sub_237E613EC(v10 * v10, 0.0);

    *(v15 + 16) = v10;
    *(v15 + 24) = v10;
    *(v15 + 32) = 1;
    *(v15 + 40) = v16;
    sub_237E9CF28(a2);
    if (!v4)
    {
      v17 = *(v15 + 8);
      v18 = sub_237C65348();
      DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9DA74, 0, v17, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v18);
      *(v15 + 48) = v23;
      OUTLINED_FUNCTION_0_96();
      if (v19 == v20)
      {
        sub_237DC6AD0();
        v21 = swift_allocError();
        OUTLINED_FUNCTION_2_113(v21, v22);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237E9CF28(uint64_t a1)
{
  v3 = (v1 + *(a1 + 40));
  result = (*(*(a1 + 24) + 56))(v3, *(a1 + 16));
  v5 = v1 + *(a1 + 44);
  v6 = *(v5 + 8);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v5 + 8) = v8;
  v9 = *(v5 + 16);
  v7 = __OFADD__(v9, 1);
  v10 = v9 + 1;
  if (v7)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v5 + 16) = v10;
  if ((~v3[7] & 0x7FF0000000000000) != 0)
  {
    v12 = *(v1 + *(a1 + 36));
    sub_237EA229C(v3, v12);
    return sub_237E9CBA4(v3, v12);
  }

  else
  {
    sub_237DC6AD0();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_237E9D00C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = UnsafeVectorPointer<A>.maximumAbsoluteValue.getter(*a1, a1[1], a1[2]);
  *a2 = v4;
  return result;
}

uint64_t sub_237E9D040(const void *a1, int *a2)
{
  v5 = OUTLINED_FUNCTION_1_115();
  v7 = v6(v5);
  v8 = (v2 + a2[10]);
  sub_237E9DA04(a1, &v14);

  memcpy(v8, a1, 0x49uLL);
  v9 = sub_237E613EC(v7, 0.0);
  v10 = a2[13];

  *(v2 + v10) = v9;
  v11 = sub_237E613EC(v7, 0.0);
  v12 = a2[12];

  *(v2 + v12) = v11;
  return result;
}

void sub_237E9D124(uint64_t a1)
{
  sub_237E9D224(a1);
  if (!v2)
  {
    sub_237E9D434(a1);
    sub_237E9CF28(a1);
    v4 = v1 + *(a1 + 40);
    v5 = *(v4 + 8);
    v6 = sub_237C65348();
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9DA74, 0, v5, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v6);
    *(v4 + 48) = v14;
    OUTLINED_FUNCTION_0_96();
    if (v7 != v8)
    {
      v11 = *(a1 + 44);
      v12 = *(v1 + v11);
      v8 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        *(v1 + v11) = v13;
      }
    }

    else
    {
      sub_237DC6AD0();
      v9 = swift_allocError();
      OUTLINED_FUNCTION_2_113(v9, v10);
    }
  }
}

uint64_t sub_237E9D224(uint64_t a1)
{
  v3 = v1;
  v5 = v1 + *(a1 + 40);
  v6 = *(v5 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_237E9D898(v6);
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  result = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  cblas_dscal_NEWLAPACK();
  *(v5 + 40) = v6;
  v22 = v2;
  v10 = *(v5 + 8);
  v11 = *(a1 + 48);

  *(v3 + v11) = v10;
  v13 = *(v5 + 32);
  v24 = v8;
  v25 = v7;
  v26 = v13;
  v27 = v6;
  MEMORY[0x28223BE20](v12);
  v20[1] = *(a1 + 16);
  v21 = v3;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB62D8);
  v15 = v22;
  DenseMatrix.withUnsafeMutableMatrixPointer<A>(_:)(sub_237E9D8AC, v20, v14, MEMORY[0x277D839B0]);

  if (!v15)
  {
    *(v5 + 72) = v23;
    v16 = *(v3 + v11);
    v17 = *(a1 + 52);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E9D8CC, v16, v18, MEMORY[0x277D84F78] + 8);
    v19 = *(v3 + v17);

    *v5 = v19;
  }

  return result;
}

uint64_t sub_237E9D434(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9D658, 0, v2, MEMORY[0x277D839F8], MEMORY[0x277D839F8], v3);
  if (v8 <= 4.93038066e-32)
  {
    v5 = 0;
LABEL_6:
    sub_237DC6AD0();
    swift_allocError();
    *v6 = v5;
    return swift_willThrow();
  }

  result = DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237E9D6F0, 0, v2, MEMORY[0x277D839F8], MEMORY[0x277D839B0], v3);
  if (v7 != 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return result;
}

void *sub_237E9D548(uint64_t a1)
{
  v3[2] = a1;
  type metadata accessor for NewtonOptimizer();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E9D8E8, v3, v1, MEMORY[0x277D839B0]);
}

BOOL sub_237E9D5E0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  result = sub_237EBE2B8(a3, a1, a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_237E9D624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_237EA37E4(*a1, a1[1], a1[2]);
  *a2 = v4;
  return result;
}

uint64_t sub_237E9D678()
{
  swift_getKeyPath();
  swift_getAtKeyPath();
}

uint64_t sub_237E9D6F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    v4 = 0;
    v5 = 8 * a3 * a2;
    while (v5 != v4 && (~*(result + v4) & 0x7FF0000000000000) != 0)
    {
      v4 += 8 * a3;
    }

    *a4 = v5 == v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237E9D744@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  memcpy(__dst, (v2 + v4), 0x49uLL);
  memcpy(a2, (v2 + v4), 0x49uLL);
  return sub_237E9DA04(__dst, &v6);
}

unint64_t sub_237E9D844()
{
  result = qword_27DEB62D0;
  if (!qword_27DEB62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB62D0);
  }

  return result;
}

char *sub_237E9D904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_237E9DA04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_113(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.init(_:_:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v2 + 32))(a1);
  type metadata accessor for PreprocessingUpdatableSupervisedEstimator();
  OUTLINED_FUNCTION_27_32();
  return v7(v3, v4, v5, v6);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.makeTransformer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  PreprocessingUpdatableSupervisedEstimator.preprocessor.getter(a1, v19 - v18);
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(a1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  swift_getAssociatedConformanceWitness();
  return ComposedTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v23);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v7[14] = a4[4];
  v7[15] = a4[2];
  swift_getAssociatedTypeWitness();
  v9 = sub_237EF8A60();
  v7[16] = v9;
  v7[17] = a4[5];
  v7[18] = a4[3];
  v7[19] = swift_getAssociatedTypeWitness();
  v10 = sub_237EF9640();
  v7[20] = v10;
  WitnessTable = swift_getWitnessTable();
  v7[21] = WitnessTable;
  OUTLINED_FUNCTION_1_5();
  v12 = swift_getWitnessTable();
  v7[22] = v12;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = WitnessTable;
  v7[5] = v12;
  v7[23] = sub_237EF9380();
  v7[24] = swift_getWitnessTable();
  v13 = sub_237EF9340();
  v7[25] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v7[26] = v14;
  v7[27] = OUTLINED_FUNCTION_27_0();
  v7[28] = *(v10 - 8);
  v7[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[30] = v15;
  v7[31] = OUTLINED_FUNCTION_27_0();
  v7[32] = type metadata accessor for AnnotatedFeature();
  v7[33] = sub_237EF9640();
  v7[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[35] = v16;
  v7[36] = OUTLINED_FUNCTION_27_0();
  v17 = sub_237EF9340();
  v7[37] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v7[38] = v18;
  v7[39] = OUTLINED_FUNCTION_27_0();
  v7[40] = swift_getAssociatedTypeWitness();
  v19 = sub_237EF9640();
  v7[41] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v7[42] = v20;
  v7[43] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237E9E264()
{
  v1 = v0[38];
  v22 = v0[37];
  v23 = v0[39];
  v25 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  v21 = v2;
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[11];
  v24 = v0[10];
  MEMORY[0x2383E08A0](v7, v6);
  v8 = swift_task_alloc();
  *v8 = v5;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v6;
  KeyPath = swift_getKeyPath();

  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v7;
  v10[5] = v4;
  v10[6] = v21;
  v10[7] = v6;
  v10[8] = KeyPath;
  v0[44] = swift_getWitnessTable();
  sub_237EF9860();

  v11 = *(v1 + 8);
  v0[45] = v11;
  v0[46] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v23, v22);
  PreprocessingUpdatableSupervisedEstimator.preprocessor.getter(v24, v25);
  v12 = swift_task_alloc();
  v0[47] = v12;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_237E9E46C;
  v14 = v0[43];
  v15 = v0[41];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[8];
  v19 = v0[9];

  return Transformer.applied<A>(to:eventHandler:)(v14, v18, v19, v16, v15, v17, WitnessTable);
}

uint64_t sub_237E9E46C()
{
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *v6 = *v1;
  v5[48] = v0;

  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[15];
  if (!v0)
  {
    v5[49] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E9E5E4()
{
  v18 = v0[45];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[43];
  v30 = v0[39];
  v15 = v0[37];
  v28 = v0[31];
  v22 = v0[30];
  v29 = v0[29];
  v17 = v0[28];
  v21 = v0[27];
  v24 = v0[26];
  v23 = v0[25];
  v19 = v0[23];
  v20 = v0[24];
  v16 = v0[20];
  v1 = v0[17];
  v2 = v0[18];
  v0[6] = v0[49];
  v3 = v0[15];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  MEMORY[0x2383E08A0](v6, v5);
  v7 = swift_task_alloc();
  *v7 = v3;
  v7[1] = v2;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v5;
  KeyPath = swift_getKeyPath();

  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v1;
  v9[7] = v5;
  v9[8] = KeyPath;
  sub_237EF9860();

  v18(v30, v15);
  sub_237EFA000();
  (*(v17 + 8))(v29, v16);

  MEMORY[0x2383E08A0](v19, v20);
  (*(v22 + 8))(v28, v19);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v1;
  v10[7] = v5;
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v2;
  v11[4] = v6;
  v11[5] = v4;
  v11[6] = v1;
  v11[7] = v5;
  v11[8] = sub_237E9EF1C;
  v11[9] = v10;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v24 + 8))(v21, v23);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v12 = sub_237EF92D0();
  (*(v25 + 8))(v27, v26);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_237E9E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  (*(v10[42] + 8))(v10[43], v10[41]);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_19();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_237E9EA84(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, AssociatedTypeWitness, v3);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnnotatedFeature();
  return AnnotatedFeature.feature.setter(v5, v7);
}

uint64_t sub_237E9EBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for AnnotatedFeature();
  return a4(v5);
}

uint64_t sub_237E9EC40(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, AssociatedTypeWitness, v3);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnnotatedFeature();
  return AnnotatedFeature.annotation.setter(v5, v7);
}

uint64_t sub_237E9ED64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1, v10, v11);
  (*(v7 + 16))(v9, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v13, v9, v10, AssociatedTypeWitness, a3);
}

uint64_t sub_237E9EF2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A>(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v2;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[11] = OUTLINED_FUNCTION_27_0();
  v1[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(*(v3 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[17] = v12;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237E9F180()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(v0[6], v0[14]);
  OUTLINED_FUNCTION_15_0();
  v12 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_237E9F2A8;
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return v12(v3, v10, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237E9F2A8()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E9F3FC()
{
  v14 = *(v0 + 80);
  v1 = OUTLINED_FUNCTION_22_41();
  v2(v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_18(AssociatedConformanceWitness, v4, v5, v6, v7, v8, v9, v10, v13, v14);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v20;
  v1[12] = v0;
  v1[9] = v4;
  v1[10] = v19;
  v1[7] = v2;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = v10;
  v1[13] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_27_0();
  v1[18] = *(*(v3 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[20] = v13;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_237E9F650()
{
  OUTLINED_FUNCTION_2_0();
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(v0[7], v0[17]);
  OUTLINED_FUNCTION_15_0();
  v3 = v1 + *v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_237E9F78C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E9F78C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 192) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E9F8E0()
{
  v14 = *(v0 + 104);
  v1 = OUTLINED_FUNCTION_22_41();
  v2(v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_18(AssociatedConformanceWitness, v4, v5, v6, v7, v8, v9, v10, v13, v14);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_14_66();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_10_53(v6);
  OUTLINED_FUNCTION_15_19();

  return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_237E9FA70()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237E9FB8C()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[10];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v0[2] = v0[9];
    v4 = swift_task_alloc();
    v0[11] = v4;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature();
    sub_237EF92C0();
    OUTLINED_FUNCTION_2_114();
    swift_getWitnessTable();
    *v4 = v0;
    v4[1] = sub_237E9FD10;

    return PreprocessingUpdatableSupervisedEstimator.fitted<A>(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237E9FD10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E9FE08()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237E9FE64()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_14_66();
  v19[10] = a18;
  v19[11] = v18;
  v19[8] = v20;
  v19[9] = v21;
  v19[6] = v22;
  v19[7] = v23;
  v19[4] = v24;
  v19[5] = v25;
  v26 = swift_task_alloc();
  v19[12] = v26;
  *v26 = v19;
  v26[1] = sub_237E9FF88;
  OUTLINED_FUNCTION_15_19();

  return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v27, v28, v29, v30, v31, v32);
}

uint64_t sub_237E9FF88()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237EA00A4()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[14];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_237EA0190;
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[5];

    return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v10, v8, v9, v6, v7, v5);
  }
}

uint64_t sub_237EA0190()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237EA0290()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[17];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[16];
    v0[2] = v0[13];
    v0[3] = v4;
    v5 = swift_task_alloc();
    v0[18] = v5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature();
    sub_237EF92C0();
    OUTLINED_FUNCTION_2_114();
    swift_getWitnessTable();
    *v5 = v0;
    v5[1] = sub_237EA0440;

    return PreprocessingUpdatableSupervisedEstimator.fitted<A, B>(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t sub_237EA0440()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237EA0538()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EA05A0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EA05FC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.update<A>(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[14] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237EA0714()
{
  v1 = v0[10];
  v2 = v0[6];
  PreprocessingUpdatableSupervisedEstimator.estimator.getter(v1, v0[16]);
  v3 = v1[2];
  v4 = v1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[2] = v3;
  v0[3] = AssociatedTypeWitness;
  v0[4] = v6;
  v0[5] = AssociatedConformanceWitness;
  v8 = *(type metadata accessor for ComposedTransformer() + 52);
  OUTLINED_FUNCTION_15_0();
  v18 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_237EA08D8;
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[7];

  return v18(v2 + v8, v16, v14, v15, v12, v13, v11, v4);
}

uint64_t sub_237EA08D8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 144) = v0;

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

uint64_t PreprocessingUpdatableSupervisedEstimator.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_30_40();
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_14_66();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_10_53(v7);
  OUTLINED_FUNCTION_15_19();

  return PreprocessingUpdatableSupervisedEstimator.preprocessed<A>(from:eventHandler:)(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_237EA0B4C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 128) = v6;
  *(v3 + 136) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237EA0C88()
{
  v1 = v0[17];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[16];
    v5 = v0[10];
    v20 = v0[7];
    PreprocessingUpdatableSupervisedEstimator.estimator.getter(v5, v0[14]);
    v0[6] = v4;
    v6 = v5[2];
    v7 = v5[5];
    OUTLINED_FUNCTION_27_32();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = v5[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[2] = v6;
    v0[3] = AssociatedTypeWitness;
    v0[4] = v9;
    v0[5] = AssociatedConformanceWitness;
    v11 = *(type metadata accessor for ComposedTransformer() + 52);
    OUTLINED_FUNCTION_15_0();
    v19 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[18] = v13;
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_27_32();
    swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature();
    v14 = sub_237EF92C0();
    OUTLINED_FUNCTION_2_114();
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_237EA0F24;
    v16 = v0[12];
    v17 = v0[8];
    v18 = v0[9];

    return (v19)(v20 + v11, v0 + 6, v17, v18, v14, WitnessTable, v16, v7);
  }
}

uint64_t sub_237EA0F24()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[19] = v0;

  (*(v3[13] + 8))(v3[14], v3[12]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237EA104C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EA10B4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) + 8);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTransformer();
  return (*(v4 + 56))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingUpdatableSupervisedEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v23 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v19 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 64))(a1, v13, v12);
  if (!v24)
  {
    (*(v20 + 16))(v23, v3, v22);
    (*(v19 + 32))(v5, v4, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_21_38(v23, a3);
  }

  return result;
}